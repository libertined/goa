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

<article class="news-detailed">
    <div class="news-detailed__text">
        <h4 class="news-detailed__title" href="#"><?= $arResult["NAME"] ?></h4>
        <p class="news__description"><?=$arResult['DETAIL_TEXT'] ?></p>
    </div>
    <div class="news-detailed__info">
        <img class="news-detailed__pic" src="<?=$arResult['DETAIL_PICTURE']['SRC']?>" alt="" />
        <a class="news-detailed__back" href="<?=$arResult['IBLOCK']['LIST_PAGE_URL']?>">
            <?= GetMessage('CS_RETURN_BACK')?>
        </a>
        <p class="news-detailed__dates"><?= GetMessage('CS_PUBLISHED')?>
            <time class="news-detailed__date" pubdate datetime="<?= $arResult['DISPLAY_ACTIVE_FROM'] ?>">
                <?if(!empty($arResult['DISPLAY_ACTIVE_FROM'])):?>
                    <?=makeDate($arResult['DISPLAY_ACTIVE_FROM']); ?>
                <?endif;?>
            </time>
        </p>
        <div class="right-side__share">
            <div class="right-side__share-title"><?= GetMessage('CS_SHARE') ?></div>
            <div class="right-side__share-body">
                <script async="async" src="//yastatic.net/share2/share.js"></script>
                <div class="ya-share2"
                     data-services="vkontakte,facebook,odnoklassniki,gplus,twitter,viber,whatsapp,telegram"
                     data-counter=""></div>
            </div>
        </div>
    </div>
</article>