<?if(!defined("B_PROLOG_INCLUDED") || B_PROLOG_INCLUDED!==true)die();
/** @var array $arParams */
/** @var array $arResult */
/** @global CMain $APPLICATION */
/** @global CUser $USER */
/** @global CDatabase $DB */
/** @var CBitrixComponentTemplate $this */
/** @var string $templateName */
/** @var string $templateFile */
/** @var string $templateFolder */
/** @var string $componentPath */
/** @var CBitrixComponent $component */
$this->setFrameMode(true);
$strSectionEdit = CIBlock::GetArrayByID($arParams["IBLOCK_ID"], "SECTION_EDIT");
$strSectionDelete = CIBlock::GetArrayByID($arParams["IBLOCK_ID"], "SECTION_DELETE");
$arSectionDeleteParams = array("CONFIRM" => GetMessage('CT_BCSL_ELEMENT_DELETE_CONFIRM'));
$arViewModeList = $arResult['VIEW_MODE_LIST'];?>

<div class="row row--padd30">
    <div class="row__inner">
        <?foreach($arResult['SECTIONS'] as $arSection):?>
            <div class="col-12-4 col-adaptive-768">
                <a href="<?=$arSection['SECTION_PAGE_URL']?>" class="gallery-block marg-b-30">
                    <div class="gallery-block__img">
                        <?if(!empty($arSection['PICTURE'])):?>
                            <img src="<?=$arSection['PICTURE']["SRC"]?>" alt="<?=$arSection['PICTURE']["ALT"]?>" title="<?=$arSection['PICTURE']["TITLE"]?>"/>
                        <?endif;?>
                        </div>
                    <div class="gallery-block__title"><?=$arSection['NAME']?></div>
                </a>
            </div>
        <?endforeach;?>
    </div>
</div>

