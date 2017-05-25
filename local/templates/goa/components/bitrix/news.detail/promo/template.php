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
<article class="promo-detailed">
    <div class="promo-detailed__text">
        <h4 class="promo-detailed__title" href="#"><?=$arResult["NAME"]?></h4>
        <p class="promo__description"><?=$arResult['DETAIL_TEXT']?></p>
    </div>
    <div class="promo-detailed__info">
        <a href="<?=$arResult['IBLOCK']['LIST_PAGE_URL']?>" class="promo-detailed__back">
            <?= GetMessage('CS_RETURN_BACK')?>
        </a>
        <p class="promo-detailed__dates">
            <?= GetMessage('CS_PUBLISHED')?>
            <time class="promo-detailed__date" pubdate datetime="<?=$arResult['DISPLAY_ACTIVE_FROM']?>">
                <?=makeDate($arResult["DISPLAY_ACTIVE_FROM"])?>
            </time>
        </p>
        <p class="promo-detailed__dates">Акция продлится до:
            <time class="promo-detailed__date" datetime="<?=$arResult['FIELDS']['DATE_ACTIVE_TO']?>">
                <?=makeDate($arResult['FIELDS']['DATE_ACTIVE_TO'])?>
            </time>
        </p>
        <div class="right-side__share">
            <div class="right-side__share-title"><?=GetMessage('CS_SHARE')?></div>
            <div class="right-side__share-body">
                <script async="async" src="//yastatic.net/share2/share.js"></script>
                <div class="ya-share2" data-services="vkontakte,facebook,odnoklassniki,gplus,twitter,viber,whatsapp,telegram" data-counter=""></div>
            </div>
        </div>
    </div>
</article>
