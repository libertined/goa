<? if (!defined("B_PROLOG_INCLUDED") || B_PROLOG_INCLUDED !== true) die();
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
<div class="advices-detailed">
    <article class="advices-detailed__content">
        <div class="advices-detailed__header"><?= $arResult["NAME"] ?></div>
        <p class="advices-detailed__text"><?= $arResult['DETAIL_TEXT'] ?></p>
        <a href="<?= $arResult['IBLOCK']['LIST_PAGE_URL'] ?>" class="advices-detailed__back">Назад к списку</a>
    </article>
    <aside class="advices-detailed__links">
        <p class="advices-detailed__links-header">Разделы</p>
        <p class="advices-item__labels">
            <?$counter = 0;?>
            <? foreach ($arResult["TAGS"] as $tag): ?>
                <?$counter++;?>
                <?$URL = $APPLICATION->GetCurPageParam("tags=".$tag["NAME"]."", array("tags","CODE"));?>
                <?$URL = str_replace($arResult["CODE"].'/','',$URL)?>
                <a class="advices-item__label" href="<?=$URL?>">
                    <?= $tag["NAME"]?></a><?=($counter < count($arResult["TAGS"]))?',':'';?>
            <? endforeach; ?>
        </p>
        <div class="right-side__share">
            <div class="right-side__share-title">Поделиться:</div>
            <div class="right-side__share-body">
                <script async="async" src="//yastatic.net/share2/share.js"></script>
                <div class="ya-share2"
                     data-services="vkontakte,facebook,odnoklassniki,gplus,twitter,viber,whatsapp,telegram"
                     data-counter=""></div>
            </div>
        </div>
    </aside>

</div>
