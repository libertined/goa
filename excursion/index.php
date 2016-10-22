<?php require($_SERVER["DOCUMENT_ROOT"]."/bitrix/header.php");
$APPLICATION->SetPageProperty("MAIN_TITLE", "Экскурсии");
$APPLICATION->SetPageProperty("PAGE_IMAGE", "/upload/images/bg_exs.jpg");
$APPLICATION->SetTitle("Экскурсии");?>
<?if(!isset($_REQUEST["tags"])):?>
	<?$APPLICATION->IncludeComponent("bitrix:search.tags.cloud", "excursion", Array(
	"CACHE_TIME" => "3600",	// Время кеширования (сек.)
		"CACHE_TYPE" => "A",	// Тип кеширования
		"CHECK_DATES" => "N",	// Искать только в активных по дате документах
		"COLOR_NEW" => "3E74E6",	// Цвет более позднего тега (пример: "C0C0C0")
		"COLOR_OLD" => "C0C0C0",	// Цвет более раннего тега (пример: "FEFEFE")
		"COLOR_TYPE" => "N",	// Плавное изменение цвета
		"FILTER_NAME" => "",	// Дополнительный фильтр
		"FONT_MAX" => "50",	// Максимальный размер шрифта (px)
		"FONT_MIN" => "10",	// Минимальный  размер шрифта (px)
		"PAGE_ELEMENTS" => "150",	// Количество тегов
		"PERIOD" => "",	// Период выборки тегов (дней)
		"PERIOD_NEW_TAGS" => "",	// Период,  в течение которого считать тег новым (дней)
		"SHOW_CHAIN" => "N",	// Показывать цепочку навигации
		"SORT" => "NAME",	// Сортировка тегов
		"TAGS_INHERIT" => "Y",	// Сужать область поиска
		"URL_SEARCH" => "",	// Путь к странице поиска (от корня сайта)
		"WIDTH" => "100%",	// Ширина облака тегов (пример: "100%" или "100px", "100pt", "100in")
		"arrFILTER" => array(	// Ограничение области поиска
			0 => "iblock_info",
		),
		"arrFILTER_iblock_info" => array(	// Искать в информационных блоках типа "iblock_info"
			0 => "5",
		)
	),
	false
);?><?$APPLICATION->IncludeComponent(
	"bitrix:news.list", 
	"excursion", 
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
		"IBLOCK_ID" => "5",
		"IBLOCK_TYPE" => "info",
		"INCLUDE_IBLOCK_INTO_CHAIN" => "Y",
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
		"SET_BROWSER_TITLE" => "Y",
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
		"COMPONENT_TEMPLATE" => "excursion",
		"PAGE_LIST" => '/excursion'
	),
	false
);?>
<?else:?>
	<?$APPLICATION->IncludeComponent(
		"bitrix:search.page",
		"tags",
		Array(
			"AJAX_MODE" => "N",
			"AJAX_OPTION_ADDITIONAL" => "",
			"AJAX_OPTION_HISTORY" => "N",
			"AJAX_OPTION_JUMP" => "N",
			"AJAX_OPTION_STYLE" => "Y",
			"CACHE_TIME" => "3600",
			"CACHE_TYPE" => "A",
			"CHECK_DATES" => "N",
			"COLOR_NEW" => "0",
			"COLOR_OLD" => "C8C8C8",
			"COLOR_TYPE" => "Y",
			"DEFAULT_SORT" => "rank",
			"DISPLAY_BOTTOM_PAGER" => "Y",
			"DISPLAY_TOP_PAGER" => "Y",
			"FILTER_NAME" => "",
			"FONT_MAX" => "50",
			"FONT_MIN" => "10",
			"NO_WORD_LOGIC" => "N",
			"PAGER_SHOW_ALWAYS" => "Y",
			"PAGER_TEMPLATE" => "",
			"PAGER_TITLE" => "Результаты поиска",
			"PAGE_RESULT_COUNT" => "50",
			"PATH_TO_USER_PROFILE" => "",
			"PERIOD_NEW_TAGS" => "",
			"RATING_TYPE" => "",
			"RESTART" => "N",
			"SHOW_CHAIN" => "Y",
			"SHOW_RATING" => "",
			"SHOW_WHEN" => "N",
			"SHOW_WHERE" => "N",
			"TAGS_INHERIT" => "Y",
			"TAGS_PAGE_ELEMENTS" => "150",
			"TAGS_PERIOD" => "",
			"TAGS_SORT" => "NAME",
			"TAGS_URL_SEARCH" => "",
			"USE_LANGUAGE_GUESS" => "Y",
			"USE_SUGGEST" => "N",
			"USE_TITLE_RANK" => "N",
			"WIDTH" => "100%",
			"arrFILTER" => array("iblock_info"),
			"arrFILTER_iblock_info" => array("5"),
			"arrWHERE" => array()
		)
	);?>
<?endif;?>
<?php require($_SERVER["DOCUMENT_ROOT"]."/bitrix/footer.php");?>