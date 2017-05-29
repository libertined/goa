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
?>

<section class="photos">
    <?foreach($arResult["ITEMS"] as $index=>$arElement):?>
    <div class="photo">
        <div class="photo__item openmodal" data-id="modal-gallery-<?=$arResult["ID"]?>" data-slide="<?=$index?>">
            <?if(!empty($arElement['PREVIEW_PICTURE'])):?>
                <img class="photo__img" src="<?=$arElement['PREVIEW_PICTURE']['SRC']?>" alt="<?=$arElement['PREVIEW_PICTURE']['ALT']?>" title="<?=$arElement['PREVIEW_PICTURE']['TITLE']?>" />
            <?endif;?>
            <div class="photo__shadow"></div>
        </div>
        <p class="photo__title"><?=$arElement['NAME']?></p>
    </div>
    <? endforeach;?>
</section>

<div class="modal-window js-window" id="modal-gallery-<?=$arResult["ID"]?>">
    <a class="closemodal" href=""></a>
    <div class="modal-window__body">
        <div class="gallery">
            <div class="gallery__wrap">
                <div class="bxslider_gallery">
                    <?foreach ($arResult["ITEMS"]  as $index => $arElement ){?>
                        <div class="gallery__slide">
                            <div class="gallery__slide-img">
                                <?if(!empty($arElement['DETAIL_PICTURE'])):?>
                                    <img src="<?=$arElement['DETAIL_PICTURE']['SRC']?>" alt="<?=$arElement['DETAIL_PICTURE']['ALT']?>" title="<?=$arElement['DETAIL_PICTURE']['TITLE']?>" />
                                <?endif;?>
                            </div>
                            <div class="gallery__slide-text"><?=$arElement["NAME"] ? $arElement["NAME"] : "Описание отсутствует"?></div>
                        </div>
                    <?}?>
                </div>
            </div>

            <div class="gallery__pager" id="js-gallery-pager">
                <?foreach ($arResult["ITEMS"]  as $index => $arElement ){?>
                    <a data-slide-index="<?=$index?>" href="" class="gallery__pager-item">
                        <?if(!empty($arElement['PREVIEW_PICTURE'])):?>
                            <img src="<?=getResizedImgOrPlaceholder($arElement['PREVIEW_PICTURE'], 70, 70, true)?>" alt="<?=$arElement["NAME"]?>" />
                        <?endif;?>
                    </a>
                <?}?>
            </div>
        </div>
    </div>
</div>

