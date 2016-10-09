<?php require($_SERVER["DOCUMENT_ROOT"]."/bitrix/header.php");
$APPLICATION->SetPageProperty("MAIN_TITLE", "Экскурсии");
$APPLICATION->SetPageProperty("PAGE_IMAGE", "/upload/images/bg_exs.jpg");
$APPLICATION->SetTitle("Экскурсии");?>

<div class="filter">
	<div class="filter__categories">
		<div class="filter__category-item filter--category-active">
			2 дня (5)
			<div class="filter__category-close"><object type="image/svg+xml" data="<?=SITE_TEMPLATE_PATH?>/svg/cross-13x13.svg">Your browser does not support SVGs</object></div>
		</div>
		<div class="filter__category-item">4 дня (8)</div>
		<div class="filter__category-item">6 дней (3)</div>
		<div class="filter__category-item">Исторические (7)</div>
		<div class="filter__category-item">Развлекательные (8)</div>
		<div class="filter__category-item">Древняя архитектура (5)</div>
		<div class="filter__category-item">7 дней (3)</div>
	</div>
	<div class="filter__clear marg-t-20">
		<div class="filter__clear-text">Сбросить все фильтры</div>
	</div>
	<div class="filter__result marg-t-40 marg-b-20">Найдено <span>5 экскурсий</span></div>
</div>

<a href="" class="exs-block marg-b-40">
	<div class="row row--padd30">
		<div class="row__inner">
			<div class="col-12-4 col-adaptive-768">
				<div class="exs-block__title visible-adaptive-show-768">Колхапур и Махабалешвар</div>
				<div class="exs-block__img"><img src="<?=SITE_TEMPLATE_PATH?>/img/files/img_6.jpg" alt="" /></div>
			</div>
			<div class="col-12-8 col-adaptive-768">
				<div class="exs-block__title visible-adaptive-768">Колхапур и Махабалешвар</div>
				<div class="exs-block__text">
					<p>Мы сделаем для вас это путешествие незабываемым.<br />За два дня вы увидите удивительные памятники, услышите древние легенды, отдохнете в горах, почувствуете себя махараджей.</p>
					<p>Мы побываем в священном храме Махалакшми (7в), во Дворце махараджей, где и по сей день живет королевская семья, насладимся чистым горным воздухом и спелой клубникой, окунемся в облака на рассвете.</p>
				</div>
				<div class="exs-block__categories visible-adaptive-768">
					<div class="exs-block__categories-item">Развлекательные</div>
					<div class="exs-block__categories-item">2 дня</div>
					<div class="exs-block__categories-item">Историческая</div>
				</div>
				<div class="visible-adaptive-show-768 pos-right marg-t-20">
					<div class="exs-block__btn btn btn--red btn--small">Подробно</div>
				</div>
			</div>
		</div>
	</div>
</a>

<a href="" class="exs-block">
	<div class="row row--padd30">
		<div class="row__inner">
			<div class="col-12-4 col-adaptive-768">
				<div class="exs-block__title visible-adaptive-show-768">Колхапур и Махабалешвар</div>
				<div class="exs-block__img"><img src="<?=SITE_TEMPLATE_PATH?>/img/files/img_6.jpg" alt="" /></div>
			</div>
			<div class="col-12-8 col-adaptive-768">
				<div class="exs-block__title visible-adaptive-768">Колхапур и Махабалешвар</div>
				<div class="exs-block__text">
					<p>Мы сделаем для вас это путешествие незабываемым.<br />За два дня вы увидите удивительные памятники, услышите древние легенды, отдохнете в горах, почувствуете себя махараджей.</p>
					<p>Мы побываем в священном храме Махалакшми (7в), во Дворце махараджей, где и по сей день живет королевская семья, насладимся чистым горным воздухом и спелой клубникой, окунемся в облака на рассвете.</p>
				</div>
				<div class="exs-block__categories visible-adaptive-768">
					<div class="exs-block__categories-item">Развлекательные</div>
					<div class="exs-block__categories-item">2 дня</div>
					<div class="exs-block__categories-item">Историческая</div>
				</div>
				<div class="visible-adaptive-show-768 pos-right marg-t-20">
					<div class="exs-block__btn btn btn--red btn--small">Подробно</div>
				</div>
			</div>
		</div>
	</div>
</a>

<?if(!isset($_REQUEST["tags"])):?>

	<?$APPLICATION->IncludeComponent(
		"bitrix:search.tags.cloud",
		"",
		Array(
			"CACHE_TIME" => "3600",
			"CACHE_TYPE" => "A",
			"CHECK_DATES" => "N",
			"COLOR_NEW" => "3E74E6",
			"COLOR_OLD" => "C0C0C0",
			"COLOR_TYPE" => "N",
			"FILTER_NAME" => "",
			"FONT_MAX" => "50",
			"FONT_MIN" => "10",
			"PAGE_ELEMENTS" => "150",
			"PERIOD" => "",
			"PERIOD_NEW_TAGS" => "",
			"SHOW_CHAIN" => "N",
			"SORT" => "NAME",
			"TAGS_INHERIT" => "Y",
			"URL_SEARCH" => "",
			"WIDTH" => "100%",
			"arrFILTER" => array("iblock_info"),
			"arrFILTER_iblock_info" => array("5")
		)
	);?><?$APPLICATION->IncludeComponent(
		"bitrix:news.list",
		"",
		Array(
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
			"FIELD_CODE" => array("",""),
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
			"PROPERTY_CODE" => array("",""),
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
			"SORT_ORDER2" => "ASC"
		)
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