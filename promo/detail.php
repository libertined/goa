<?php require($_SERVER["DOCUMENT_ROOT"]."/bitrix/header.php");
$APPLICATION->SetPageProperty("MAIN_TITLE", "Спецпредложения");
$APPLICATION->SetPageProperty("PAGE_IMAGE", "/upload/images/bg_exs.jpg");
$APPLICATION->SetTitle("Экскурсии");
$APPLICATION->SetAdditionalCSS("/promo/style.css");?>
<?$APPLICATION->IncludeComponent("bitrix:news.detail","promo",Array(
        "DISPLAY_DATE" => "Y",
        "DISPLAY_NAME" => "Y",
        "DISPLAY_PICTURE" => "Y",
        "DISPLAY_PREVIEW_TEXT" => "Y",
        "USE_SHARE" => "Y",
        "SHARE_HIDE" => "N",
        "SHARE_TEMPLATE" => "",
        "SHARE_HANDLERS" => array("delicious"),
        "SHARE_SHORTEN_URL_LOGIN" => "",
        "SHARE_SHORTEN_URL_KEY" => "",
        "AJAX_MODE" => "Y",
        "IBLOCK_TYPE" => "news",
        "IBLOCK_ID" => "3",
        "ELEMENT_ID" => $_REQUEST["ELEMENT_ID"],
        "ELEMENT_CODE" => "",
        "CHECK_DATES" => "Y",
        "FIELD_CODE" => Array("ID"),
        "PROPERTY_CODE" => Array("DESCRIPTION"),
        "IBLOCK_URL" => "news.php?ID=#IBLOCK_ID#\"",
        "DETAIL_URL" => "",
        "SET_TITLE" => "Y",
        "SET_CANONICAL_URL" => "Y",
        "SET_BROWSER_TITLE" => "Y",
        "BROWSER_TITLE" => "-",
        "SET_META_KEYWORDS" => "Y",
        "META_KEYWORDS" => "-",
        "SET_META_DESCRIPTION" => "Y",
        "META_DESCRIPTION" => "-",
        "SET_STATUS_404" => "Y",
        "SET_LAST_MODIFIED" => "Y",
        "INCLUDE_IBLOCK_INTO_CHAIN" => "Y",
        "ADD_SECTIONS_CHAIN" => "Y",
        "ADD_ELEMENT_CHAIN" => "N",
        "ACTIVE_DATE_FORMAT" => "d.m.Y",
        "USE_PERMISSIONS" => "Y",
        "GROUP_PERMISSIONS" => Array("1"),
        "CACHE_TYPE" => "A",
        "CACHE_TIME" => "3600",
        "CACHE_GROUPS" => "Y",
        "DISPLAY_TOP_PAGER" => "Y",
        "DISPLAY_BOTTOM_PAGER" => "Y",
        "PAGER_TITLE" => "Страница",
        "PAGER_TEMPLATE" => "",
        "PAGER_SHOW_ALL" => "Y",
        "PAGER_BASE_LINK_ENABLE" => "Y",
        "SHOW_404" => "Y",
        "MESSAGE_404" => "",
        "STRICT_SECTION_CHECK" => "Y",
        "PAGER_BASE_LINK" => "",
        "PAGER_PARAMS_NAME" => "arrPager",
        "AJAX_OPTION_JUMP" => "N",
        "AJAX_OPTION_STYLE" => "Y",
        "AJAX_OPTION_HISTORY" => "N"
    )
);?>
    <article class="promo-detailed">
        <div class="promo-detailed__text">
            <h4 class="promo-detailed__title" href="#">Заголовок спецпредложения</h4>
            <p class="promo__description">Текст спецпредложения здесь Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facere dolorum aut amet quos inventore, quas ex, quae fuga et reprehenderit quia iure eum tempore eius perferendis deserunt maxime quo. Dolore? Текст спецпредложения здесь Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facere dolorum aut amet quos inventore, quas ex, quae fuga et reprehenderit quia iure eum tempore eius perferendis deserunt maxime quo. Dolore? Текст спецпредложения здесь Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facere dolorum aut amet quos inventore, quas ex, quae fuga et reprehenderit quia iure eum tempore eius perferendis deserunt maxime quo. Dolore? Текст спецпредложения здесь Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facere dolorum aut amet quos inventore, quas ex, quae fuga et reprehenderit quia iure eum tempore eius perferendis deserunt maxime quo. Dolore? Текст спецпредложения здесь Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facere dolorum aut amet quos inventore, quas ex, quae fuga et reprehenderit quia iure eum tempore eius perferendis deserunt maxime quo. Dolore? Текст спецпредложения здесь Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facere dolorum aut amet quos inventore, quas ex, quae fuga et reprehenderit quia iure eum tempore eius perferendis deserunt maxime quo. Dolore? Завершающий текст здесь</p>
        </div>
        <div class="promo-detailed__info">
            <a href="/promo" class="promo-detailed__back">Назад к списку</a>
            <p class="promo-detailed__dates">Опубликовано: <time class="promo-detailed__date" pubdate datetime="2017-05-01">1 мая 2017</time></p>
            <p class="promo-detailed__dates">Акция продлится до: <time class="promo-detailed__date" datetime="2017-08-01">1 августа 2017</time></p>
            <div class="right-side__share">
                <div class="right-side__share-title">Поделиться:</div>
                <div class="right-side__share-body">
                    <script async="async" src="//yastatic.net/share2/share.js"></script>
                    <div class="ya-share2" data-services="vkontakte,facebook,odnoklassniki,gplus,twitter,viber,whatsapp,telegram" data-counter=""></div>
                </div>
            </div>
        </div>

    </article>
<?php require($_SERVER["DOCUMENT_ROOT"]."/bitrix/footer.php");?>