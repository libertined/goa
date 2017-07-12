<?php require($_SERVER["DOCUMENT_ROOT"] . "/bitrix/header.php");
$APPLICATION->SetPageProperty("PAGE_IMAGE", "/upload/images/bg_exs.jpg");
$APPLICATION->SetPageProperty("MAIN_TITLE", "Советы туристам в Гоа");
$APPLICATION->SetTitle("Советы туристам в Гоа");
?>
    <div class="advices stick-border">
        <section class="advices-list">
            <? if (!isset($_REQUEST["tags"])): ?>
                <? $APPLICATION->IncludeComponent(
                    "bitrix:news.list",
                    "advices",
                    array(
                        "ACTIVE_DATE_FORMAT" => "d.m.Y",
                        "ADD_SECTIONS_CHAIN" => "Y",
                        "AJAX_MODE" => "N",
                        "AJAX_OPTION_ADDITIONAL" => "",
                        "AJAX_OPTION_HISTORY" => "N",
                        "AJAX_OPTION_JUMP" => "N",
                        "AJAX_OPTION_STYLE" => "Y",
                        "CACHE_FILTER" => "N",
                        "CACHE_GROUPS" => "Y",
                        "CACHE_TIME" => "36000000",
                        "CACHE_TYPE" => "A",
                        "CHECK_DATES" => "Y",
                        "DETAIL_URL" => "",
                        "DISPLAY_BOTTOM_PAGER" => "Y",
                        "DISPLAY_DATE" => "Y",
                        "DISPLAY_NAME" => "Y",
                        "DISPLAY_PICTURE" => "Y",
                        "DISPLAY_PREVIEW_TEXT" => "Y",
                        "DISPLAY_TOP_PAGER" => "N",
                        "FIELD_CODE" => array(
                            0 => "TAGS",
                            1 => "",
                        ),
                        "FILTER_NAME" => "",
                        "HIDE_LINK_WHEN_NO_DETAIL" => "N",
                        "IBLOCK_ID" => "15",
                        "IBLOCK_TYPE" => "info",
                        "INCLUDE_IBLOCK_INTO_CHAIN" => "N",
                        "INCLUDE_SUBSECTIONS" => "Y",
                        "MESSAGE_404" => "",
                        "NEWS_COUNT" => "20",
                        "PAGER_BASE_LINK_ENABLE" => "N",
                        "PAGER_DESC_NUMBERING" => "N",
                        "PAGER_DESC_NUMBERING_CACHE_TIME" => "36000",
                        "PAGER_SHOW_ALL" => "N",
                        "PAGER_SHOW_ALWAYS" => "N",
                        "PAGER_TEMPLATE" => ".default",
                        "PAGER_TITLE" => "Новости",
                        "PARENT_SECTION" => "",
                        "PARENT_SECTION_CODE" => "",
                        "PREVIEW_TRUNCATE_LEN" => "",
                        "PROPERTY_CODE" => array(
                            0 => "",
                            1 => "",
                        ),
                        "SET_BROWSER_TITLE" => "N",
                        "SET_LAST_MODIFIED" => "N",
                        "SET_META_DESCRIPTION" => "Y",
                        "SET_META_KEYWORDS" => "Y",
                        "SET_STATUS_404" => "N",
                        "SET_TITLE" => "Y",
                        "SHOW_404" => "N",
                        "SORT_BY1" => "ACTIVE_FROM",
                        "SORT_BY2" => "SORT",
                        "SORT_ORDER1" => "DESC",
                        "SORT_ORDER2" => "ASC",
                        "COMPONENT_TEMPLATE" => "advices",
                        "PAGE_LIST" => '/advices'
                    ),
                    false
                ); ?>
            <? else: ?>
                <? $APPLICATION->IncludeComponent("bitrix:search.page", "advices", Array(
                    "AJAX_MODE" => "N",    // Включить режим AJAX
                    "AJAX_OPTION_ADDITIONAL" => "",    // Дополнительный идентификатор
                    "AJAX_OPTION_HISTORY" => "N",    // Включить эмуляцию навигации браузера
                    "AJAX_OPTION_JUMP" => "N",    // Включить прокрутку к началу компонента
                    "AJAX_OPTION_STYLE" => "Y",    // Включить подгрузку стилей
                    "CACHE_TIME" => "3600",    // Время кеширования (сек.)
                    "CACHE_TYPE" => "A",    // Тип кеширования
                    "CHECK_DATES" => "N",    // Искать только в активных по дате документах
                    "COLOR_NEW" => "0",    // Цвет позднего тега (пример: "C0C0C0")
                    "COLOR_OLD" => "C8C8C8",    // Цвет раннего тега (пример: "FEFEFE")
                    "COLOR_TYPE" => "Y",    // Плавное изменение цвета
                    "DEFAULT_SORT" => "rank",    // Сортировка по умолчанию
                    "DISPLAY_BOTTOM_PAGER" => "Y",    // Выводить под результатами
                    "DISPLAY_TOP_PAGER" => "Y",    // Выводить над результатами
                    "FILTER_NAME" => "",    // Дополнительный фильтр
                    "FONT_MAX" => "50",    // Максимальный размер шрифта (px)
                    "FONT_MIN" => "10",    // Минимальный размер шрифта (px)
                    "NO_WORD_LOGIC" => "N",    // Отключить обработку слов как логических операторов
                    "PAGER_SHOW_ALWAYS" => "Y",    // Выводить всегда
                    "PAGER_TEMPLATE" => "",    // Название шаблона
                    "PAGER_TITLE" => "Результаты поиска",    // Название результатов поиска
                    "PAGE_RESULT_COUNT" => "50",    // Количество результатов на странице
                    "PATH_TO_USER_PROFILE" => "",    // Шаблон пути к профилю пользователя
                    "PERIOD_NEW_TAGS" => "",    // Период, в течение которого считать тег новым (дней)
                    "RATING_TYPE" => "",    // Вид кнопок рейтинга
                    "RESTART" => "N",    // Искать без учета морфологии (при отсутствии результата поиска)
                    "SHOW_CHAIN" => "Y",    // Показывать цепочку навигации
                    "SHOW_RATING" => "",    // Включить рейтинг
                    "SHOW_WHEN" => "N",    // Показывать фильтр по датам
                    "SHOW_WHERE" => "N",    // Показывать выпадающий список "Где искать"
                    "TAGS_INHERIT" => "Y",    // Сужать область поиска
                    "TAGS_PAGE_ELEMENTS" => "150",    // Количество тегов
                    "TAGS_PERIOD" => "",    // Период выборки тегов (дней)
                    "TAGS_SORT" => "NAME",    // Сортировка тегов
                    "TAGS_URL_SEARCH" => "",    // Путь к странице поиска (от корня сайта)
                    "USE_LANGUAGE_GUESS" => "Y",    // Включить автоопределение раскладки клавиатуры
                    "USE_SUGGEST" => "N",    // Показывать подсказку с поисковыми фразами
                    "USE_TITLE_RANK" => "N",    // При ранжировании результата учитывать заголовки
                    "WIDTH" => "100%",    // Ширина облака тегов (пример: "100%" или "100px", "100pt", "100in")
                    "arrFILTER" => array(    // Ограничение области поиска
                        0 => "iblock_info",
                    ),
                    "arrFILTER_iblock_info" => array(    // Искать в информационных блоках типа "iblock_info"
                        0 => "15",
                    ),
                    "arrWHERE" => ""
                ),
                    false
                ); ?>
            <? endif; ?>
        </section>
        <aside class="advices-labels" id="sticker">
            <? $APPLICATION->IncludeComponent("bitrix:search.tags.cloud", "advices", Array(
                "CACHE_TIME" => "3600",    // Время кеширования (сек.)
                "CACHE_TYPE" => "A",    // Тип кеширования
                "CHECK_DATES" => "N",    // Искать только в активных по дате документах
                "COLOR_NEW" => "3E74E6",    // Цвет более позднего тега (пример: "C0C0C0")
                "COLOR_OLD" => "C0C0C0",    // Цвет более раннего тега (пример: "FEFEFE")
                "COLOR_TYPE" => "N",    // Плавное изменение цвета
                "FILTER_NAME" => "",    // Дополнительный фильтр
                "FONT_MAX" => "50",    // Максимальный размер шрифта (px)
                "FONT_MIN" => "10",    // Минимальный  размер шрифта (px)
                "PAGE_ELEMENTS" => "150",    // Количество тегов
                "PERIOD" => "",    // Период выборки тегов (дней)
                "PERIOD_NEW_TAGS" => "",    // Период,  в течение которого считать тег новым (дней)
                "SHOW_CHAIN" => "N",    // Показывать цепочку навигации
                "SORT" => "NAME",    // Сортировка тегов
                "TAGS_INHERIT" => "Y",    // Сужать область поиска
                "URL_SEARCH" => "",    // Путь к странице поиска (от корня сайта)
                "WIDTH" => "100%",    // Ширина облака тегов (пример: "100%" или "100px", "100pt", "100in")
                "arrFILTER" => array(    // Ограничение области поиска
                    0 => "iblock_info",
                ),
                "arrFILTER_iblock_info" => array(    // Искать в информационных блоках типа "iblock_info"
                    0 => "15",
                )
            ),
                false
            ); ?>
        </aside>

    </div>
<?php require($_SERVER["DOCUMENT_ROOT"] . "/bitrix/footer.php"); ?>