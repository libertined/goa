<? if (!defined("B_PROLOG_INCLUDED") || B_PROLOG_INCLUDED !== true) {
    die();
}
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
<?foreach ($arResult['ITEMS'] as $arItem):?>
<a href="<?=$arItem["DETAIL_PAGE_URL"]?>" class="news-block marg-b-10">
    <div class="row row--padd30">
        <div class="row__inner">
            <div class="col-12-9 col-adaptive-768">
                <div class="news-block__date"><?=makeDate($arItem['DISPLAY_ACTIVE_FROM'])?></div>
                <div class="news-block__title"><?=$arItem["NAME"]?></div>
                <div class="news-block__text"><?=$arItem["PREVIEW_TEXT"]?></div>
            </div>
            <div class="col-12-3 col-adaptive-768 top-adaptive-768">
                <div class="news-block__img">
                    <?if($arParams["DISPLAY_PICTURE"]!="N"):?>
                        <?if (is_array($arItem["PREVIEW_PICTURE"])):?>
                            <?$imgResize = CFile::ResizeImageGet($arItem["PREVIEW_PICTURE"]['ID'],array('width'=>650, 'height'=>650), BX_RESIZE_IMAGE_EXACT, true, array());
                            if(!empty($imgResize)){
                                $URL2 = $imgResize['src'];}
                            else{
                                $URL2 = $arItem["PREVIEW_PICTURE"]["SRC"];}?>
                            <img class="promo__photo"
                                 src="<?=$URL2 ?>"
                                 alt="<?= $arItem["PREVIEW_PICTURE"]["ALT"] ?>"
                                 title="<?= $arItem["PREVIEW_PICTURE"]["TITLE"] ?>" />
                        <?endif;?>
                    <?endif;?>
                 </div>
            </div>
        </div>
    </div>
</a>
<?endforeach;?>
<? if ($arParams["DISPLAY_BOTTOM_PAGER"]): ?>
    <br/><?= $arResult["NAV_STRING"] ?>
<? endif; ?>

