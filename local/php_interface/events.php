<?
$eventManager = \Bitrix\Main\EventManager::getInstance();

/*
 * Clear goa:reviews component cache
 * */
$eventManager->addEventHandler('', HLReviewModel::ENTITY_NAME . 'OnAfterUpdate', 'clearReviewsComponentCache');
$eventManager->addEventHandler('', HLReviewModel::ENTITY_NAME . 'OnAfterAdd', 'clearReviewsComponentCache');
$eventManager->addEventHandler('', HLReviewModel::ENTITY_NAME . 'OnAfterDelete', 'clearReviewsComponentCache');

function clearReviewsComponentCache()
{
    global $CACHE_MANAGER;

    $CACHE_MANAGER->ClearByTag("reviews_component");
}

/*
 * Clear goa:mainpage.slider component cache
 * */
$eventManager->addEventHandler('iblock', 'OnIBlockElementUpdate', 'clearMainPageSliderComponentCache');
$eventManager->addEventHandler('iblock', 'OnIBlockElementAdd', 'clearMainPageSliderComponentCache');
$eventManager->addEventHandler('iblock', 'OnIBlockElementDelete', 'clearMainPageSliderComponentCache');

function clearMainPageSliderComponentCache()
{
    global $CACHE_MANAGER;

    $CACHE_MANAGER->ClearByTag("mainpage_slider_component");
}

/*
 * Clear goa:faq.list component cache
 * */
$eventManager->addEventHandler('', HLFaqModel::ENTITY_NAME . 'OnAfterUpdate', 'clearFaqListComponentCache');
$eventManager->addEventHandler('', HLFaqModel::ENTITY_NAME . 'OnAfterAdd', 'clearFaqListComponentCache');
$eventManager->addEventHandler('', HLFaqModel::ENTITY_NAME . 'OnAfterDelete', 'clearFaqListComponentCache');

function clearFaqListComponentCache()
{
    global $CACHE_MANAGER;

    $CACHE_MANAGER->ClearByTag("faq_list_component");
}


/** ------------------------------------------------------------
 * 23/05/2017 события и класс для массовой загрузки фото
 * в альбомы и ресайза "налету" при добавлении элементов
 * и обложки альбома (картинка секции)
 *  * -----------------------------------------------------------*/

/**
 * событие для массовой загрузки фото
 */
AddEventHandler("main", "OnProlog", array("CMainHandlers", "OnEndBufferContentHandler"));

/**
 * события для ресайза превью при создании альбомов и массовой загрузке фото
 */
AddEventHandler("iblock", "OnAfterIBlockElementAdd", Array("CMainHandlers", "ResizePreviewOnAddElement"));
AddEventHandler("iblock", "OnBeforeIBlockSectionAdd", Array("CMainHandlers", "ResizePreviewForSection"));
AddEventHandler("iblock", "OnBeforeIBlockSectionUpdate", Array("CMainHandlers", "ResizePreviewForSection"));


class CMainHandlers
{
    /***
     * массовая загрузка фото
     * работает только для Инфоблока фотографий (подключается в админке)
     * весь функционал в скриптах /bitrix/js/main/add_photo.js и /ajax/add_photo.php
     */

    function OnEndBufferContentHandler()
    {
        if (defined("ADMIN_SECTION")) {
            global $APPLICATION;
            $APPLICATION->AddHeadScript('/bitrix/js/main/add_photo.js');
        }
    }

    /***
     * ресайз фото общий метод
     * @param $arFields
     */
    function ResizeImage($arImage, $imgMaxWidth, $imgMaxHeight)
    {
        if (!empty($arImage) && !empty($imgMaxWidth) && !empty($imgMaxHeight)) {
            $filePath = CFile::GetPath($arImage); // Получаем путь к файлу
            if ($filePath) {
                $imgSize = getimagesize($_SERVER["DOCUMENT_ROOT"] . $filePath); //Узнаём размер файла

                // Если размер больше установленного максимума
                if ($imgSize[0] > $imgMaxWidth || $imgSize[1] > $imgMaxHeight) {
                    // Уменьшаем размер картинки
                    $file = CFile::ResizeImageGet($arImage, array(
                        'width'  => $imgMaxWidth,
                        'height' => $imgMaxHeight
                    ), BX_RESIZE_IMAGE_EXACT, true);
                    AddMessage2log($file);

                    // добавляем в массив VALUES новую уменьшенную картинку
                    return $VALUE = CFile::MakeFileArray($_SERVER["DOCUMENT_ROOT"] . $file["src"]);
                } else {
                    // добавляем в массив VALUES старую картинку
                    return $VALUE = CFile::MakeFileArray($_SERVER["DOCUMENT_ROOT"] . $filePath);
                }
            }
        } else {
            return false;
        }

    }

    /**
     * изменение размера PREVIEW_PICTURE для фотоальбома (инфоблок 6)
     * пропорции 350 на 350
     * @param $arFields
     */
    function ResizePreviewOnAddElement(&$arFields)
    {
        CModule::IncludeModule('iblock');
        $IBLOCK_ID = 6; // ID инфоблока
        $PRODUCT_ID = $arFields["ID"];
        $imgMaxWidth = 350; // Максимальная ширина картинки
        $imgMaxHeight = 350; // Максимальная высота картинки

        if ($arFields["IBLOCK_ID"] == $IBLOCK_ID) {
            $VALUE = $VALUE_OLD = null;
            $dbRes = CIBlockElement::GetByID($PRODUCT_ID);

            while ($ar = $dbRes->GetNext()) {
                // Собираем старые ID для удаления файлов (чтобы не занимали место)
                $VALUE = self::ResizeImage($ar['PREVIEW_PICTURE'], $imgMaxWidth, $imgMaxHeight);
                $VALUE_OLD = $ar['PREVIEW_PICTURE'];
            }
        }
        // Если в массиве есть информация о новых файлах
        if (!empty($VALUE) && is_array($VALUE)) {
            $el = new CIBlockElement;
            $res = $el->Update($PRODUCT_ID, array('PREVIEW_PICTURE' => $VALUE));
            if ($res) {
                // Удаляем большое изображение
                CFile::Delete($VALUE_OLD);
            }
        }
        unset($VALUE);
        unset($VALUE_OLD);

    }

    /** --------------------------------------------------------------------
     * изменение размера PICTURE для раздела (обложка альбома) (инфоблок 6)
     * пропорции 665 на 445
     * @param $arFields
     * ---------------------------------------------------------------------
     */
    function ResizePreviewForSection(&$arFields)
    {
        CModule::IncludeModule('iblock');
        $IBLOCK_ID = 6; // ID инфоблока
        $imgMaxWidth = 665; // Максимальная ширина картинки
        $imgMaxHeight = 445; // Максимальная высота картинки
        if ($arFields["IBLOCK_ID"] == $IBLOCK_ID) {
            $SECTION_ID = $arFields['ID'];
            $VALUE = null;

            //так как файл еще не записан в БД - сохраняем его, получаем его ID и передаем в ресайз
            $fid = CFile::SaveFile($arFields['PICTURE']);
            $VALUE = self::ResizeImage($fid, $imgMaxWidth, $imgMaxHeight);

            $arFields['PICTURE'] = $VALUE;
            //если метод вызывает на апдейте - удаляем старый физический файл
            if (!empty($SECTION_ID) && !empty($VALUE)) {
                $dbRes = CIBlockSection::GetByID($SECTION_ID);
                if ($ar = $dbRes->GetNext()) {
                    $VALUE_OLD = $ar['PICTURE'];
                    CFile::Delete($VALUE_OLD);
                }
            }
            unset($VALUE);
            unset($VALUE_OLD);
        }
    }
}





