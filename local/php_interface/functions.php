<?

/**
 * Масштабирует фото, сохраняет копию файла и возвращает путь к нему
 * либо возвращает ссылку на картинку-заглушку
 * TODO использовать эту функцию ! :)
 *
 * @param $imgId
 * @param $width int
 * @param $height int Если не задано, будет равно ширине
 *
 * @throws Exception File dimensions can not be a null
 *
 *
 * @return string Путь к измененному файлу
 *
 *
 * @author dev@dermanov.ru
 */
function getResizedImgOrPlaceholder( $imgId, $width, $height = 0, $proportional = false){
    if (!$width)
        throw new Exception ( "File dimensions can not be a null" );

    $resizeParam = BX_RESIZE_IMAGE_EXACT;

    //
    if ($height == "auto") {
        $height = 9999;
        $resizeParam = BX_RESIZE_IMAGE_PROPORTIONAL;
    }
    if (!$height) $height = $width;

    if ($proportional)
        $resizeParam = BX_RESIZE_IMAGE_PROPORTIONAL;

    // if img is null - returns dummy img
    //you can insert here custom img
    //or even save on disk on first call each dummy img
    if (!$imgId) {
        $customNoImg = SITE_TEMPLATE_PATH . "/images/img_placeholder.jpg";

        // dummy can't be very big
        $height = $height == 9999 ? $width : $height;

        return file_exists($_SERVER["DOCUMENT_ROOT"] . $customNoImg) ? $customNoImg : "http://dummyimage.com/{$width}x{$height}/5C7BA4/fff";
    }


    $resizedImg = CFile::ResizeImageGet($imgId, array("width"=>$width, "height"=>$height), $resizeParam, true, false, false, 100);

    /* если файл по каким-то причинам не создался */
//    if (!file_exists($_SERVER["DOCUMENT_ROOT"] . $resizedImg['src'])) {
//        return getResizedImgOrPlaceholder(false, $width, $height, $proportional);
//    }

    return $resizedImg['src'];
}

/**
 * Форматирует дату
 *
 * @param $date string Дата (наример, начало активности элемента)
 *
 * @param $format string Формат даты (в рамках Bitrix API)
 *
 * @return string Пример 05.11.2015 15:37:00 => 5 Ноября 2015
 *
 *
 * @author dev@dermanov.ru
 */
function formatDateCustom ($date, $format = "j F Y") {
    return strtolower( CIBlockFormatProperties::DateFormat($format, strtotime($date)) );
}

/**
 * Функция возвращает окончание для множественного числа слова на основании числа и массива окончаний
 * @param  $number Integer Число на основе которого нужно сформировать окончание
 * @param  $endingArray Array  Array Массив слов или окончаний для чисел (1, 4, 5),
 *         например array('яблоко', 'яблока', 'яблок')
 * @return String
 */
function getNumEnding($number, $endingArray) {
    $number = $number % 100;
    if ($number>=11 && $number<=19) {
        $ending=$endingArray[2];
    }
    else {
        $i = $number % 10;
        switch ($i)
        {
            case (1): $ending = $endingArray[0]; break;
            case (2):
            case (3):
            case (4): $ending = $endingArray[1]; break;
            default: $ending=$endingArray[2];
        }
    }

    return $ending;
}

function makeDate($date){
    if(!empty($date)){
        return FormatDate('j F Y', MakeTimeStamp($date), time());
    }
}

/**
 * Получает значения спискового св-ва по его коду и ИД иблока.
 * */
function getEnumValues( $IBLOCK_ID, $ENUM_CODE )
{
    if (!$IBLOCK_ID)
        throw new Exception ( '$IBLOCK_ID can not be void' );
    
    if (!$ENUM_CODE)
        throw new Exception ( '$ENUM_CODE can not be void' );
    
    CModule::IncludeModule("iblock");
    
    $result = array();
    
    $res = CIBlockPropertyEnum::GetList(array(
        "SORT" => "ASC",
        "NAME" => "ASC",
    ), array(
        "IBLOCK_ID" => $IBLOCK_ID,
        "CODE"      => $ENUM_CODE,
    ));
    
    while ($ob = $res->Fetch())
        $result[ $ob["ID"] ] = [
            "NAME"   => $ob["VALUE"],
            "XML_ID" => $ob["XML_ID"],
        ];
    
    return $result;
}

function vdump($a)
{
    global $USER;
    $bt = debug_backtrace();
    $bt = $bt[0];
    $context = \Bitrix\Main\Application::getInstance()->getContext();
    $server = $context->getServer();
    $dRoot = $server->getDocumentRoot() ;
    $dRoot = str_replace("/", "\\", $dRoot);
    $bt["file"] = str_replace($dRoot, "", $bt["file"]);
    $dRoot = str_replace("\\", "/", $dRoot);
    $bt["file"] = str_replace($dRoot, "", $bt["file"]);
    if ($USER->isAdmin()) {
        echo '<div style="padding:3px 5px; background:#99CCFF; font-weight:bold;">File: '.$bt["file"].' ['.$bt["line"].']</div>';
        echo '<pre style="text-align: left;">';
        print_r($a);
        echo '</pre>';
    }
}