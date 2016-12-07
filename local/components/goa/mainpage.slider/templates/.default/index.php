<? if ( !defined( "B_PROLOG_INCLUDED" ) || B_PROLOG_INCLUDED !== true )
    die();
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

//$this->setFrameMode( true );
?>

<div class="slider-main">
    <div class="bxslider_main">
        <? foreach ( $arResult["ITEMS"] as $item ){ ?>
            <div class="slider-main__item">
                <a href="" class="slider-main__img"><img src="<?=getResizedImgOrPlaceholder($item["PREVIEW_PICTURE"], 870, 490)?>" alt="Слайд <?=$item["NAME"]?>" /></a>

                <div class="slider-main__slider">
                    <div class="slider-main__body">
                        <div class="vert-middle">
                            <div class="vert-middle__inner">
                                <div class="slider-main__header"><?=$item["NAME"]?></div>
                                <div class="slider-main__text"><?=$item["PREVIEW_TEXT"]?></div>
                                <div class="visible-adaptive-1024"><a href="<?=$item["PROP_URL"]?>" class="btn">Подробнее</a></div>
                                <div class="visible-adaptive-show-1024"><a href="<?=$item["PROP_URL"]?>" class="btn btn--small">Подробнее</a></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        <? } ?>

    </div>
</div>