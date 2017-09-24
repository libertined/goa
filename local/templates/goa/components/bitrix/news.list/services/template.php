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

<? if ($arParams["DISPLAY_TOP_PAGER"]): ?>
    <?= $arResult["NAV_STRING"] ?><br/>
<? endif; ?>
<div class="row row--padd40">
    <div class="row__inner">
        <?for ($i = 0; $i <= count($arResult["ITEMS"])-2; ($i++)): ?>
            <?
            if ($i%2 != 0) $i++;
            $arItem = $arResult["ITEMS"][$i];
            $arItem2 = $arResult["ITEMS"][$i+1];

            ?>
            <div class="service-block" id="<?=$arItem['CODE']?>">
                <? if (is_array($arItem["PREVIEW_PICTURE"])): ?>
                    <?$imgResize = CFile::ResizeImageGet($arItem["PREVIEW_PICTURE"]['ID'],array('width'=>392, 'height'=>262), BX_RESIZE_IMAGE_EXACT, true, array());
                    if(!empty($imgResize)){
                        $URL = $imgResize['src'];}
                    else{
                        $URL = $arItem["PREVIEW_PICTURE"]["SRC"];}?>
                    <img class="service-block__img"
                        src="<?=$URL ?>"
                        alt="<?= $arItem["PREVIEW_PICTURE"]["ALT"] ?>"
                        title="<?= $arItem["PREVIEW_PICTURE"]["TITLE"] ?>" />
                <?endif;?>
                <div class="service-block__title"><?=$arItem['NAME']?></div>
            </div>
            <div class="service-block" id="<?=$arItem2['CODE']?>">
                <? if (is_array($arItem2["PREVIEW_PICTURE"])): ?>
                    <?$imgResize2 = CFile::ResizeImageGet($arItem2["PREVIEW_PICTURE"]['ID'],array('width'=>392, 'height'=>262), BX_RESIZE_IMAGE_EXACT, true, array());
                    if(!empty($imgResize2)){
                        $URL2 = $imgResize2['src'];}
                    else{
                        $URL2 = $arItem2["PREVIEW_PICTURE"]["SRC"];}?>
                    <img class="service-block__img"
                         src="<?=$URL2 ?>"
                         alt="<?= $arItem2["PREVIEW_PICTURE"]["ALT"] ?>"
                         title="<?= $arItem2["PREVIEW_PICTURE"]["TITLE"] ?>" />
                <?endif;?>
                <div class="service-block__title"><?=$arItem2['NAME']?></div>
            </div>


            <section class="service-item" id="content-<?=$arItem['CODE']?>">
                <div class="service-item__close"></div>
                <h2 class="service-item__header"><?=$arItem['NAME']?></h2>
                <p class="service-item__description"><?=$arItem["DETAIL_TEXT"]?></p>
                <div class="service-item__price"><?=$arItem['DISPLAY_PROPERTIES']['TABLE_PRICES']['~VALUE']['TEXT']?></div>
                <a class="service-item__order btn" href="/order/#<?=$arItem['CODE']?>">Заказать</a>
            </section>
            <section class="service-item" id="content-<?=$arItem2['CODE']?>">
                <div class="service-item__close"></div>
                <h2 class="service-item__header"><?=$arItem2['NAME']?></h2>
                <p class="service-item__description"><?=$arItem2["DETAIL_TEXT"]?></p>
                <div class="service-item__price"><?=$arItem2['DISPLAY_PROPERTIES']['TABLE_PRICES']['~VALUE']['TEXT']?></div>
                <a class="service-item__order btn" href="/order/#<?=$arItem2['CODE']?>">Заказать</a>
            </section>
        <? endfor; ?>
    </div>
</div>
<? if ($arParams["DISPLAY_BOTTOM_PAGER"]): ?>
    <br/><?= $arResult["NAV_STRING"] ?>
<? endif; ?>

