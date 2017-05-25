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

<div class="row row--padd30">
    <div class="row__inner">
        <?foreach($arResult["ITEMS"] as $arElement):?>
            <div class="col-12-3 col-adaptive-768">
                <a href="#" class="gallery-open-block marg-b-40 openmodal" data-id="modal-gallery" data-slide="2">
                    <div class="gallery-open-block__img">
                        <?if(!empty($arElement['PREVIEW_PICTURE'])):?>
                            <img src="<?=$arElement['PREVIEW_PICTURE']['SRC']?>" alt="<?=$arElement['PREVIEW_PICTURE']['ALT']?>" title="<?=$arElement['PREVIEW_PICTURE']['TITLE']?>" />
                        <?endif;?>
                    </div>
                    <div class="gallery-open-block__title"><?=$arElement['NAME']?></div>
                </a>
            </div>
        <?endforeach;?>
    </div>
</div>

<div class="modal-window" id="modal-gallery">
    <div class="modal-window__body">
        <div class="gallery">
            <div class="gallery__wrap">
                <div class="bxslider_gallery">
                    <div class="gallery__slide">
                        <div class="gallery__slide-img">
                            <img src="<?=SITE_TEMPLATE_PATH?>/img/files/img_9.jpg" alt="" />
                        </div>
                        <div class="gallery__slide-text">Вид на долину в Махабалешваре</div>
                    </div>
                    <div class="gallery__slide">
                        <div class="gallery__slide-img">
                            <img src="<?=SITE_TEMPLATE_PATH?>/img/files/img_10.jpg" alt="" />
                        </div>
                        <div class="gallery__slide-text">Новый дворец махараджи в Колхапуре</div>
                    </div>
                    <div class="gallery__slide">
                        <div class="gallery__slide-img">
                            <img src="<?=SITE_TEMPLATE_PATH?>/img/files/img_11.jpg" alt="" />
                        </div>
                        <div class="gallery__slide-text">Смотровая площадка Wilson</div>
                    </div>
                </div>
            </div>

            <div class="gallery__pager" id="js-gallery-pager">
                <a data-slide-index="0" href="" class="gallery__pager-item"><img src="<?=SITE_TEMPLATE_PATH?>/img/files/img_9.jpg" /></a>
                <a data-slide-index="1" href="" class="gallery__pager-item"><img src="<?=SITE_TEMPLATE_PATH?>/img/files/img_10.jpg" /></a>
                <a data-slide-index="2" href="" class="gallery__pager-item"><img src="<?=SITE_TEMPLATE_PATH?>/img/files/img_11.jpg" /></a>
            </div>
        </div>
    </div>
</div>

