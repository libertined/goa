<? require($_SERVER["DOCUMENT_ROOT"]."/bitrix/header.php");
$APPLICATION->SetPageProperty("keywords_inner", "Твой Гоа, экскурсии в Гоа, Surya Travels, экскурсии гоа");
$APPLICATION->SetPageProperty("keywords", "Твой Гоа, экскурсии в Гоа, Surya Travels, экскурсии гоа");
$APPLICATION->SetPageProperty("description", "Твой Гоа предлагает разнообразные экскурсии в Гоа и увлекательные туры по Индии. Мы проводим несколько уникальных экскурсий из Гоа, которые больше не проводит ни одна компания. Мы имеем лицензию на туристическую и транспортную деятельность, а все наши водители - лицензию для работы с туристами. Нам доверяют и нас рекомендуют уже более 10 лет.");
$APPLICATION->SetTitle("Экскурсии от компании Твой Гоа");
?>
<h2>Экскурсии по Гоа - удивительные путешествия по привлекательным ценам</h2>
<p>Сколько бы ни писали об Индии и о Гоа - все будет мало.<br />Бесконечные пляжи Гоа, самое теплое море, потрясающие краски природы и музыка, завораживающие закаты и рассветы, древние индуистские храмы и колоритные восточные базары - все это, без преувеличения, о Гоа. Откройте для себя Индию - наши экскурсии по Гоа помогут вам в этом.</p>
<p>Экскурсионная компания "Твой Гоа" предлагает разнообразные экскурсии в Гоа и увлекательные экскурсии из Гоа по Индии. Мы предоставим вам возможность посетить на наших экскурсиях по Гоа самые известные исторические комплексы Гоа и соседних штатов, храмовые святыни и столицы древних княжеств, многие из которых охраняются Юнеско. На нашем сайте вы можете найти разнообразную информацию по отдыху в Индии: цены в Гоа, советы туристам, список достопримечательностей, интересные факты и пр.</p>

<h3>Топ 5 наших экскурсий</h3>
<?
global $filterExcursion;
$filterExcursion = [
	"!PROPERTY_IN_TOP" => false
];
$APPLICATION->IncludeComponent(
	"bitrix:news.list", 
	"top_main", 
	array(
		"ACTIVE_DATE_FORMAT" => "d.m.Y",
		"ADD_SECTIONS_CHAIN" => "N",
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
		"DETAIL_URL" => "#CODE#",
		"DISPLAY_BOTTOM_PAGER" => "N",
		"DISPLAY_DATE" => "N",
		"DISPLAY_NAME" => "N",
		"DISPLAY_PICTURE" => "Y",
		"DISPLAY_PREVIEW_TEXT" => "Y",
		"DISPLAY_TOP_PAGER" => "N",
		"FIELD_CODE" => array(
			0 => "CODE",
			1 => "PREVIEW_PICTURE",
			2 => "DETAIL_PICTURE",
			3 => "",
		),
		"FILTER_NAME" => "filterExcursion",
		"HIDE_LINK_WHEN_NO_DETAIL" => "N",
		"IBLOCK_ID" => "5",
		"IBLOCK_TYPE" => "info",
		"INCLUDE_IBLOCK_INTO_CHAIN" => "N",
		"INCLUDE_SUBSECTIONS" => "Y",
		"MESSAGE_404" => "",
		"NEWS_COUNT" => "5",
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
			0 => "IN_TOP",
			1 => "MAIN_SORT",
			2 => "",
		),
		"SET_BROWSER_TITLE" => "N",
		"SET_LAST_MODIFIED" => "N",
		"SET_META_DESCRIPTION" => "N",
		"SET_META_KEYWORDS" => "N",
		"SET_STATUS_404" => "N",
		"SET_TITLE" => "N",
		"SHOW_404" => "N",
		"SORT_BY1" => "PROPERTY_MAIN_SORT",
		"SORT_BY2" => "ID",
		"SORT_ORDER1" => "ASC",
		"SORT_ORDER2" => "ASC",
		"COMPONENT_TEMPLATE" => "top_main"
	),
	false
);?>

<p>Мы покажем вам заповедники, джунгли и пляжи, водопады и плантации специй, вы пообщаетесь со слонами и обезьянками, увидите тигров, крокодилов и дельфинов, а также съездите на знаменитые экскурсии в Хампи, Гокарна и Биджапур. Разработанные нами экскурсии в Гоа - это не просто  путешествия с гидом - это погружение в магию и тайну Индии, очарование её дворцов и храмов, рынков и уникальной, ни с чем не сравнимой энергетикой.<br />К Вашим услугам трансфер и услуги такси, размещение в гостиницах и гестхаусах, коттеджах и бунгало. Все, что может Вам понадобиться для активного отдыха в Индии: рестораны и рынки, вечеринки и клубы, рыбалка.<br />На странице <a href="/excursion/">Экскурсии</a> представлен полный перечень экскурсий и путешествий по Гоа и Индии, которые мы проводим.</p>

<h2 class="visible-adaptive-768">Наши туристы говорят о нас...</h2>
<p class="visible-adaptive-768">Мы живём и работаем в Индии уже более десяти лет. Мы любим эту страну, её культуру, историю, уважаем её традиции. Мы постараемся показать Индию так, как её видим мы. Ну а лучшим доказательством нашей отличной работы служат отзывы наших туристов. Со всеми отзывами Вы можете ознакомиться в <a href="/responses/">соответствующем разделе сайта</a>, или же на <a href="https://vk.com/topic-5779993_26250201" target="_blank">странице ВКонтакте</a></p>

<div class="visible-adaptive-768">
	<?$APPLICATION->IncludeComponent("goa:element.random", "reviews", Array(
			"CACHE_GROUPS" => "Y",	// Учитывать права доступа
			"CACHE_TIME" => "180",	// Время кеширования (сек.)
			"CACHE_TYPE" => "A",	// Тип кеширования
			"DETAIL_URL" => "",	// URL, ведущий на страницу с содержимым элемента раздела
			"IBLOCKS" => array(	// Инфоблок
				0 => "4",
			),
			"FIELDS" => array("PREVIEW_TEXT", "DATE_ACTIVE_FROM", "PROPERTY_FIO", "PREVIEW_PICTURE"),
			"COUNT" => 3,
			"IBLOCK_TYPE" => "info",	// Тип инфоблока
			"PARENT_SECTION" => "",	// ID раздела
		),
		false
	);?>
</div>

<h2>Больше, чем экскурсии Гоа</h2>
<div class="row row--padd30 marg-b-70 marg-t-40 marg-b-adaptive-none">
	<div class="row__inner col-adaptive-row">
		<div class="col-12-4 col-adaptive-768">
			<a href="/services/#wedding" class="goa-more">
				<div class="goa-more__img">
					<svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
						width="166.8px" height="141.1px" viewBox="22 -10.1 166.8 141.1" enable-background="new 22 -10.1 166.8 141.1"
						xml:space="preserve" class="goa-more__svg">
						<path class="goa-more__svg-path" d="M164.7-4.4l0.7,4.9l11-2.5L161.5,13c-8.9-8.1-20.7-13-33.6-13c-10.3,0-19.9,3.1-27.9,8.5c0,0,0,0,0,0
						C91.9,3.1,82.3,0,72,0C44.4,0,22,22.4,22,50c0,26.6,20.8,48.3,47,49.9V113H57v6h12v12h6v-12h12v-6H75V99.9
						c9.2-0.5,17.7-3.6,24.9-8.4c0,0,0,0,0,0c8,5.4,17.6,8.5,27.9,8.5c27.6,0,50-22.4,50-50c0-12.5-4.6-23.9-12.2-32.7l15-15l-2.5,11
						l5,0.7l5.6-24L164.7-4.4z M27,50C27,25.2,47.2,5,72,5c8.7,0,16.8,2.5,23.7,6.7c-1.8,1.5-3.4,3.1-5,4.8c-5.5-3.1-11.9-4.9-18.7-4.9
						c-21.1,0-38.3,17.2-38.3,38.3S50.9,88.3,72,88.3s38.3-17.2,38.3-38.3c0-8.3-2.7-16.1-7.2-22.4c-0.6,0.6-1.1,1.3-1.6,1.9
						c2.4-3.1,5.3-5.7,8.6-7.8c-0.7,0.4-1.4,0.9-2,1.4c5.6,7.5,8.9,16.8,8.9,26.9c0,24.8-20.2,45-45,45C47.2,95,27,74.8,27,50z M89,18.5
						C89,18.5,89,18.5,89,18.5C89,18.5,89,18.5,89,18.5z M87.5,20.5C81.4,28.8,77.8,39,77.8,50s3.6,21.2,9.7,29.5
						c0.7-0.4,1.5-0.8,2.2-1.2c-5.1,3.2-11.2,5.1-17.6,5.1c-18.4,0-33.3-14.9-33.3-33.3S53.6,16.7,72,16.7C77.6,16.7,82.9,18,87.5,20.5z
						 M99.9,31.8c3.4,5.2,5.4,11.5,5.4,18.2s-2,13-5.4,18.2C96.5,63,94.5,56.7,94.5,50S96.5,37,99.9,31.8z M98.4,70.3
						c0.5-0.7,1-1.4,1.5-2.1C99.4,68.9,99,69.6,98.4,70.3z M99.9,31.8c0.5-0.7,1-1.4,1.5-2.1C100.9,30.4,100.4,31.1,99.9,31.8z
						 M110.2,21.7c5.1-3.2,11.2-5.1,17.6-5.1c18.4,0,33.3,14.9,33.3,33.3s-14.9,33.3-33.3,33.3c-5.6,0-10.9-1.4-15.5-3.8
						C118.4,71.2,122,61,122,50s-3.6-21.2-9.7-29.5C111.6,20.9,110.9,21.3,110.2,21.7z M110.8,81.5C110.8,81.5,110.8,81.5,110.8,81.5
						C110.8,81.5,110.8,81.5,110.8,81.5z M127.8,95c-8.7,0-16.8-2.5-23.7-6.7c1.8-1.5,3.4-3.1,5-4.8c5.5,3.1,11.9,4.9,18.7,4.9
						c21.1,0,38.3-17.2,38.3-38.3S149,11.7,127.8,11.7S89.5,28.9,89.5,50c0,8.3,2.7,16.1,7.2,22.4c0.6-0.6,1.1-1.3,1.6-1.9
						c-2.4,3.1-5.3,5.7-8.6,7.8c0.7-0.4,1.4-0.9,2-1.4c-5.6-7.5-8.9-16.8-8.9-26.9c0-24.8,20.2-45,45-45c24.8,0,45,20.2,45,45
						S152.6,95,127.8,95z"/>
					</svg>
				</div>
				<div class="goa-more__text">Организация и проведение свадебных церемоний</div>
			</a>
		</div>

		<div class="col-12-4 col-adaptive-768 top-adaptive-768">
			<a href="/services/#rent" class="goa-more">
				<div class="goa-more__img">
					<svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
						 width="185px" height="175.8px" viewBox="-67.6 -29.2 185 175.8" enable-background="new -67.6 -29.2 185 175.8"
						 xml:space="preserve" class="goa-more__svg">
															<path class="goa-more__svg-stroke" stroke-width="5" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10" d="
																M-28.8,63l52-34.2l67.3,44.9V144l-9.5-3.1l-17.5-3.1H-45v-25.4 M-0.6,137.9V98.3h23.9v39.3"/>
						<path class="goa-more__svg-stroke" stroke-width="5" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10" d="
																M63.9,137.9H-65.1 M90.6,144h24.4"/>
						<g>
							<circle class="goa-more__svg-stroke" stroke-width="5" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10" cx="76.4" cy="2.3" r="11"/>
							<path class="goa-more__svg-stroke" stroke-width="5" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10" d="
																	M76.4-21.3v-5.4 M93.1-14.4l3.9-3.9 M100.1,2.3h5.6 M93.1,19l3.9,3.9 M76.4,25.9v5.4 M59.7,19l-3.9,3.9 M52.8,2.3h-5.4 M59.7-14.4
																	l-3.9-3.9"/>
						</g>
						<line class="goa-more__svg-stroke" stroke-width="5" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10" x1="-25.4" y1="73.7" x2="90.6" y2="73.7"/>
						<rect x="47.6" y="88.3" class="goa-more__svg-stroke" stroke-width="5" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10" width="20" height="20"/>
						<g>
							<g>
								<path class="goa-more__svg-stroke" stroke-width="5" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10" d="
																		M-35.6,137.9v-25.4 M-35.6,41.2l22.3,71.3h-44.8L-35.6,41.2z"/>
							</g>
						</g>
					</svg>
				</div>
				<div class="goa-more__text">Аренда жилья</div>
			</a>
		</div>

		<div class="col-12-4 col-adaptive-768 top-adaptive-768">
			<a href="/services/#celebration" class="goa-more">
				<div class="goa-more__img">
					<svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
						 width="140px" height="147.5px" viewBox="14.5 -56 140 147.5" enable-background="new 14.5 -56 140 147.5" xml:space="preserve" class="goa-more__svg">
						<g>
							<path class="goa-more__svg-path" d="M90.5,35.9c3-2.3,5.5-2.3,8.4,0c4.6,3.6,8.8,3.6,13.4,0c1.7-1.3,2.9-1.9,4.1-1.7v-4.6
								c-2.2-0.1-4.4,0.8-6.8,2.7c-3.1,2.4-4.9,2.4-8,0c-4.6-3.5-9.2-3.5-13.8,0c-3.3,2.5-4.9,2.2-7.7,0c-2.3-1.7-4.5-2.6-6.7-2.6v4.6
								c1.2,0,2.5,0.6,4,1.7C82.1,39.4,85.9,39.4,90.5,35.9z"/>
							<path class="goa-more__svg-path" d="M152,68.5h-11.2l0,0l0,0h-11.3V38.1c1.3-0.4,2.6-1.2,4-2.3c1.2-0.9,5-1.3,5-1.3V31v-1.5V24
								c0-8.8-7.2-16-16-16h-29v-23h-18V8h-29c-8.8,0-16,7.2-16,16v7h0v3.1c1.2,0,2.5,0.6,4,1.7c1.4,1.1,2.7,1.8,4,2.3v30.4H28.2l0,0l0,0
								H17c-1.4,0-2.5,1.1-2.5,2.5c0,1.4,1.1,2.5,2.5,2.5h7.6l4.9,17v1h0.3l0,0l0,0h109.4l0,0l0,0h0.3v-1l4.9-17h7.6
								c1.4,0,2.5-1.1,2.5-2.5C154.5,69.6,153.4,68.5,152,68.5z M80.5-10h8V8h-8V-10z M37.2,32.2c-0.6-0.4-1.1-0.8-1.7-1.2h0v-7
								c0-6.1,4.9-11,11-11h29h18h29c6.1,0,11,4.9,11,11v6.9c-1,0.4-2,0.8-2.7,1.3c-3.3,2.5-4.9,2.2-7.7,0c-2.3-1.7-4.5-2.6-6.7-2.6v4.6
								c1.2,0,2.5,0.6,4,1.7c1.4,1.1,2.7,1.8,4,2.3v30.4h-81V38.1c1.3-0.4,2.6-1.2,4-2.3c3-2.3,5.5-2.3,8.4,0c4.6,3.6,8.8,3.6,13.4,0
								c1.7-1.3,2.9-1.9,4.1-1.7v-4.6c-2.2-0.1-4.4,0.8-6.8,2.7c-3.1,2.4-4.9,2.4-8,0c-4.6-3.5-9.2-3.5-13.8,0
								C41.6,34.7,40,34.4,37.2,32.2z M135.6,86.5H33.4l-3.8-13h109.7L135.6,86.5z"/>
							<path class="goa-more__svg-path" d="M84.5-20c6.1,0,11-5,11-11.2c0-6.2-11-24.8-11-24.8s-11,18.7-11,24.8C73.5-25,78.4-20,84.5-20z M84.5-45.7
								c3.7,7.1,6,12.8,6,14.5c0,3.4-2.7,6.2-6,6.2s-6-2.8-6-6.2C78.5-32.9,80.8-38.6,84.5-45.7z"/>
						</g>
					</svg>
				</div>
				<div class="goa-more__text">Организация праздников</div>
			</a>
		</div>
	</div>
</div>

<div class="row row--padd30 marg-b-70 marg-b-adaptive-none">
	<div class="row__inner col-adaptive-row">
		<div class="col-12-4 col-adaptive-768 top-adaptive-768">
			<a href="/services/#taxi" class="goa-more">
				<div class="goa-more__img">
					<svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
						 width="215px" height="87.9px" viewBox="-36.7 56.6 215 87.9" enable-background="new -36.7 56.6 215 87.9" xml:space="preserve" class="goa-more__svg">
															<circle class="goa-more__svg-stroke" stroke-width="5" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10" cx="133.3" cy="124.9" r="17.1"/>
						<path class="goa-more__svg-stroke" stroke-width="5" stroke-miterlimit="10" d="M133.3,117.2c-4.1,0-7.7,3.5-7.7,7.7
																s3.5,7.7,7.7,7.7c4.1,0,7.7-3.5,7.7-7.7S137.7,117.2,133.3,117.2z"/>
						<path class="goa-more__svg-stroke" stroke-width="5" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10" d="
																M114.8,126.1H15.3 M-19.2,123.4l-15-2.7c0,0,2.9-21.2,2.7-25.9c-0.3-4.7,2.7-16.8,25-32.1 M121.5,83.7C102.4,66.6,80,61,80,61
																c-28-4.1-69.5-0.6-86.6,1.5 M152.2,124.9h20.9c0,0,2.4-6.8,2.7-11.2c0.3-4.7-2.1-15.3-5.3-18.8c-17.7-8.5-36.8-10.9-48.6-11.2"/>
						<path class="goa-more__svg-stroke" stroke-width="5" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10" d="
																M121.5,83.7l-5.3,5.3c0,0-73.9-4.1-80.7-4.4S6.6,81.7,3.4,80.8 M16.7,61.6L3.2,80.7L3,108.6"/>
						<path class="goa-more__svg-stroke" stroke-width="5" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10" d="
																M55.3,59.2l6.2,26.5l4.4,40.6 M-29.2,86c3.5-0.3,13.3-1.5,16.2,0s-4,8.8-8.8,11.2l-9.9,2.8 M170.4,94.9c0,0-3.2,7.7-4.7,8
																s-12.4-2.4-13.3-3.5l1-10.3"/>
						<circle class="goa-more__svg-stroke" stroke-width="5" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10" cx="-2.1" cy="124.9" r="17.1"/>
						<path class="goa-more__svg-stroke" stroke-width="5" stroke-miterlimit="10" d="M-2.1,117.2c-4.1,0-7.7,3.5-7.7,7.7s3.5,7.7,7.7,7.7
																s7.7-3.5,7.7-7.7S2.3,117.2-2.1,117.2z"/>
														</svg>
				</div>
				<div class="goa-more__text">Услуги такси</div>
			</a>
		</div>

		<div class="col-12-4 col-adaptive-768 top-adaptive-768">
			<a href="/services/#tickets" class="goa-more">
				<div class="goa-more__img">
					<svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
						 width="195px" height="120px" viewBox="41.5 0.5 195 120" enable-background="new 41.5 0.5 195 120" xml:space="preserve" class="goa-more__svg">
						<g>
							<path class="goa-more__svg-path" d="M236.5,17.2V0.5h-195v17.2c7.1,3.5,12,10.8,12,19.3s-4.9,15.8-12,19.3v10.4c7.1,3.5,12,10.8,12,19.3
								s-4.9,15.8-12,19.3v15.2h195v-14.7c-7.6-3.3-13-10.9-13-19.8s5.4-16.5,13-19.8v-9.5c-7.6-3.3-13-10.9-13-19.8
								S228.9,20.5,236.5,17.2z M218.5,37c0,9.5,5,18.1,13,22.8v3.4c-8,4.7-13,13.4-13,22.8s5,18.1,13,22.8v6.7h-185v-7.3
								c7.5-4.9,12-13.1,12-22.2s-4.5-17.3-12-22.2v-4.6c7.5-4.9,12-13.1,12-22.2s-4.5-17.3-12-22.2V5.5h185v8.7
								C223.5,18.9,218.5,27.5,218.5,37z"/>
							<path class="goa-more__svg-path" d="M102,63h4v-3h3v-6v-3V39v-3v-6H81v6v3v12v3v6h3v3h4v-3h14V63z M106,57h-4v-3h4V57z M84,33h22v3H84V33z
								 M88,57h-4v-3h4V57z M99,57h-8v-3h8V57z M84,51V39h22v12H84z"/>
							<path class="goa-more__svg-path" d="M66,105h144V15H66V105z M71,20h134v80H71V20z"/>
							<polygon class="goa-more__svg-path" points="181,33 94,82.6 96,86 183,36.4 	"/>
							<path class="goa-more__svg-path" d="M194.8,75.9l-15.3-12.3v-10l-2-3c-0.6-0.9-1.3-1.3-2-1.3c-0.7,0-1.4,0.4-2,1.3l-2,3v10l-15.4,12.3
								c-0.2,0.2-0.6,0.5-0.6,0.7v2c0,0.5,0.7,1.2,1.3,1.2c0.1,0,0.1,0,0.2,0l13.5-4.2l-3.2,12c0,0.5,0.5,1.1,1,1.1c0.1,0,0.2,0,0.2,0l7-5
								l7,5c0.1,0,0.2,0,0.3,0c0.5,0,1-0.5,1-1.1l-3.2-12l13.5,4.2c0.1,0,0.1,0,0.2,0c0.6,0,1.3-0.7,1.3-1.2v-2
								C195.5,76.4,195.1,76.1,194.8,75.9z M174.5,54.5l1-1.5l1,1.5V63h-2V54.5z M177.2,81.2c-0.5-0.4-1.1-0.6-1.7-0.6s-1.2,0.2-1.7,0.6
								l-2,1.5l1.7-6.2c0.1-0.3,0.1-0.6,0.1-0.9h4c0,0.3,0,0.6,0.1,0.9l1.7,6.2L177.2,81.2z M180.6,72.5h-10.1l-8.6,2.6l11.5-9.2h4.3
								l11.5,9.2L180.6,72.5z"/>
						</g>
					</svg>
				</div>
				<div class="goa-more__text">Бронирование авиа- и автобусных билетов</div>
			</a>
		</div>

		<div class="col-12-4 col-adaptive-768 top-adaptive-768">
			<a href="/services/#ayurveda" class="goa-more">
				<div class="goa-more__img">
					<svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
						 width="120.479px" height="155.34px" viewBox="0 0 120.479 155.34" enable-background="new 0 0 120.479 155.34"
						 xml:space="preserve" class="goa-more__svg">
						<g>
							<path class="goa-more__svg-path" d="M95.625,115.107l10.097,5.903h0.155l3.884,2.485c2.485,1.554,4.374,3.573,5.67,6.059
								c1.293,2.485,1.864,5.177,1.708,8.077c-0.155,2.898-1.036,5.488-2.641,7.768c-1.607,2.276-3.755,4.039-6.447,5.281
								c-2.383,1.034-4.531,1.889-6.446,2.563c-1.917,0.672-4.326,1.216-7.224,1.631c-2.485,0.311-4.815,0.466-6.99,0.466
								c-3.315,0-6.292-0.286-8.932-0.854c-2.641-0.57-4.792-1.165-6.447-1.786c0,0.621-0.208,1.165-0.621,1.631
								c-0.415,0.467-0.932,0.699-1.554,0.699H50.576c-0.621,0-1.141-0.232-1.553-0.699c-0.415-0.466-0.622-1.01-0.622-1.631
								c-1.658,0.621-3.806,1.216-6.446,1.786c-2.641,0.568-5.619,0.854-8.932,0.854c-2.175,0-4.505-0.155-6.99-0.466
								c-2.901-0.415-5.282-0.959-7.146-1.631c-1.864-0.675-4.039-1.529-6.524-2.563c-2.694-1.242-4.842-3.005-6.446-5.281
								c-1.607-2.279-2.485-4.869-2.641-7.768c-0.155-2.9,0.413-5.592,1.709-8.077c1.293-2.485,3.185-4.505,5.67-6.059l3.883-2.485h0.156
								l10.097-5.903c-1.762-0.517-3.211-1.449-4.349-2.796c-3.937-3.418-7.639-7.818-11.107-13.204
								C5.862,93.724,3.144,89.01,1.178,84.971c-1.243-2.485-1.502-5.073-0.777-7.767c0.828-3.208,1.708-6.575,2.641-10.097l2.485-8.543
								c0.311-0.622,0.724-1.034,1.243-1.243c2.486-1.034,4.816-1.578,6.991-1.631c2.175-0.051,4.09,0.131,5.748,0.544
								c0.311-1.554,0.335-2.976,0.078-4.272c-0.26-1.293,0.233-2.148,1.476-2.563c0.517-0.102,1.034-0.024,1.554,0.233
								c0.517,0.26,0.878,0.699,1.087,1.32c0.724,4.35-0.053,9.01-2.33,13.98c-2.279,4.971-4.454,9.01-6.524,12.117l-0.777,1.243
								c1.138,2.694,2.485,4.92,4.039,6.68c1.553,1.762,2.898,3.056,4.039,3.884c1.449-3.107,2.641-5.384,3.573-6.835
								c-1.864-2.277-3.315-4.039-4.35-5.282c-0.621-0.932-0.674-1.811-0.155-2.641c4.867-6.109,9.915-10.666,15.146-13.67
								c5.228-3.002,9.398-4.918,12.505-5.748c-2.384-3.313-3.573-7.352-3.573-12.116c0-0.932,0.051-1.811,0.155-2.641l-0.466-1.087
								c-1.141-1.243-2.694-4.039-4.66-8.388c-1.968-4.35-1.864-9.01,0.311-13.98c1.966-3.624,5.021-6.161,9.165-7.612
								c0.723-1.966,2.019-3.908,3.883-5.825C55.547,1.114,57.722,0.104,60.207,0c2.587,0.104,4.815,1.063,6.68,2.874
								c1.864,1.813,3.107,3.806,3.728,5.981c4.245,1.451,7.352,3.988,9.32,7.612c2.175,5.179,2.199,10.019,0.078,14.524
								c-2.124,4.505-3.704,7.172-4.738,8c0,0.311-0.104,0.621-0.311,0.932c0.102,0.83,0.155,1.709,0.155,2.641
								c0,4.765-1.192,8.803-3.573,12.116c3.107,0.83,7.274,2.746,12.505,5.748c5.228,3.004,10.277,7.561,15.146,13.67
								c0.517,0.83,0.466,1.708-0.155,2.641c-0.932,1.243-2.383,3.005-4.35,5.282c1.034,1.451,2.226,3.728,3.573,6.835
								c1.243-0.828,2.614-2.122,4.116-3.884c1.5-1.76,2.82-3.985,3.961-6.68l-0.777-1.243c-2.073-3.107-4.248-7.146-6.524-12.117
								c-2.279-4.971-3.005-9.631-2.175-13.98c0.102-0.621,0.413-1.061,0.932-1.32c0.517-0.257,1.034-0.335,1.554-0.233
								c1.344,0.415,1.864,1.27,1.553,2.563c-0.311,1.296-0.311,2.718,0,4.272c1.655-0.413,3.597-0.595,5.825-0.544
								c2.226,0.054,4.529,0.597,6.913,1.631c0.622,0.208,1.034,0.621,1.243,1.243l5.282,18.641c0.622,2.694,0.311,5.282-0.932,7.767
								c-1.968,4.039-4.66,8.752-8.078,14.136c-3.417,5.386-7.146,9.786-11.185,13.204C98.833,113.658,97.384,114.59,95.625,115.107z
								 M10.265,92.583c2.33,3.937,4.944,7.665,7.845,11.185c0-1.76,0.233-3.573,0.699-5.437c0.466-1.864,1.01-3.675,1.631-5.437
								c-1.452-0.932-3.211-2.536-5.282-4.815c-2.073-2.277-3.884-5.383-5.437-9.32c-0.208-0.622-0.155-1.216,0.155-1.787
								c0.311-0.568,0.777-1.267,1.398-2.097c1.034-1.655,2.252-3.779,3.651-6.369c1.398-2.587,2.614-5.282,3.65-8.078
								c-1.347-0.311-2.796-0.466-4.35-0.466s-3.16,0.311-4.815,0.932c-1.141,3.522-2.796,9.32-4.971,17.398
								c-0.415,1.554-0.259,3.16,0.466,4.816C6.148,85.491,7.935,88.648,10.265,92.583z M41.333,150.137c3.985-0.986,6.653-1.84,8-2.563
								l1.864-9.786c-2.175-0.415-5.437-0.986-9.787-1.709l-13.204-2.175c-4.764-0.622-8.543-0.104-11.34,1.553
								c-2.796,1.656-4.349,2.692-4.66,3.107c-0.311,0.412-0.752,0.621-1.32,0.621c-0.57,0-1.087-0.209-1.553-0.621
								c-0.466-0.415-0.699-0.908-0.699-1.476c0-0.57,0.155-1.087,0.466-1.554c0.311-0.466,2.226-1.762,5.748-3.883
								c3.519-2.122,8.233-2.821,14.136-2.097c4.452,0.83,8.854,1.607,13.204,2.33l9.787,1.553l0.466-1.864
								c-4.869,0.723-9.58,0.155-14.136-1.709c-3.315-1.449-6.213-2.537-8.699-3.262c-2.485-0.723-4.559-1.243-6.214-1.553
								c-3.728-0.622-7.199,0.053-10.408,2.02h-0.155c-1.762,1.141-3.107,2.616-4.039,4.427c-0.932,1.811-1.32,3.806-1.165,5.98
								c0.155,2.175,0.828,4.063,2.02,5.67c1.189,1.604,2.77,2.821,4.738,3.651c2.277,1.033,4.245,1.837,5.903,2.407
								c1.656,0.568,3.831,1.01,6.524,1.32C32.503,151.249,37.345,151.12,41.333,150.137z M26.964,111.224
								c2.381,0.311,4.789-0.284,7.224-1.787c2.432-1.5,4.451-3.364,6.058-5.592c1.604-2.226,2.252-4.633,1.942-7.223
								c-0.52-4.141-0.675-7.403-0.466-9.787c0.102-1.553,0.102-2.796,0-3.728c-0.104-0.932-0.364-1.709-0.776-2.33
								c-0.415-0.622-0.932-1.01-1.554-1.165c-0.621-0.156-1.191,0.026-1.708,0.543l-0.932,0.622c-0.83,0.621-1.192,1.451-1.087,2.485
								l1.243,16.777c0,1.347-0.675,2.073-2.02,2.175c-1.347,0.104-2.124-0.517-2.33-1.864l-0.155-1.243l-5.592,1.087h-0.466
								c-0.52,0-0.959-0.155-1.32-0.466c-0.364-0.311-0.597-0.723-0.699-1.243c-0.208-1.345,0.362-2.226,1.709-2.641l6.058-1.087
								l-0.311-5.903c-1.141-1.139-2.175-2.277-3.107-3.417c-1.762,3.005-3.367,6.628-4.815,10.874c-1.452,4.248-1.762,8.027-0.932,11.34
								C23.546,109.724,24.891,110.913,26.964,111.224z M23.702,120.7c1.554,0.311,3.262,0.675,5.126,1.087
								c0.932,0.104,2.641-0.233,5.126-1.01c2.485-0.777,4.66-2.354,6.524-4.738c0.517-0.724,0.932-1.787,1.243-3.185
								c0.311-1.398,0.517-2.925,0.622-4.583c-1.347,1.452-3.262,3.029-5.748,4.738c-2.485,1.709-4.143,2.772-4.971,3.185L23.702,120.7z
								 M25.721,75.34c1.139,1.347,2.537,3.005,4.194,4.971l1.398,1.709c0.207-1.139,0.622-2.175,1.243-3.107l-4.971-5.903L25.721,75.34z
								 M40.168,75.496h0.311c0-2.796,0.284-5.384,0.854-7.767c0.568-2.381,1.216-4.452,1.942-6.214c-1.969,0.932-4.039,2.097-6.214,3.496
								c-2.175,1.398-4.298,3.083-6.369,5.048l5.126,6.214C37.163,75.444,38.615,75.185,40.168,75.496z M36.285,124.428l3.728,1.398
								c2.796,1.243,5.694,1.84,8.699,1.787c3.002-0.051,5.903-0.75,8.699-2.097l1.398-0.621c-1.762-0.622-3.185-1.993-4.272-4.117
								c-1.087-2.122-1.685-4.738-1.787-7.845l-6.369-1.708c-0.311,3.005-1.087,5.437-2.33,7.301
								C41.772,121.425,39.183,123.394,36.285,124.428z M46.925,21.67c1.294-2.121,2.874-3.908,4.738-5.359
								c-0.932-0.828-1.606-1.76-2.019-2.796c-2.279,1.141-4.039,2.796-5.282,4.971c-0.83,1.762-1.192,3.522-1.087,5.282
								c0.102,1.762,0.466,3.471,1.087,5.126C44.775,26.202,45.629,23.794,46.925,21.67z M74.499,82.796
								c0.102-1.345,0.466-2.641,1.087-3.883c0.311-2.485,0.257-4.815-0.155-6.99c-1.036,1.451-2.124,3.444-3.262,5.98
								c-1.141,2.539-2.019,5.515-2.641,8.932c-0.726,4.558-2.539,8.544-5.437,11.961l-2.33,2.641c-0.311,0.415-0.803,0.621-1.476,0.621
								c-0.675,0-1.218-0.206-1.631-0.621l-2.33-2.641c-2.9-3.417-4.713-7.403-5.437-11.961c-0.622-3.52-1.476-6.524-2.563-9.01
								s-2.201-4.452-3.34-5.903c-0.311,2.175-0.364,4.505-0.155,6.99c0.622,1.243,0.983,2.539,1.087,3.883
								c0.102,1.347,0.155,2.745,0.155,4.194c-0.104,1.243-0.155,2.59-0.155,4.039c0,1.451,0.155,3.106,0.466,4.971
								c0.102,0.622,0.155,1.347,0.155,2.175l0.155,3.107c0.102,1.553,0.102,3.417,0,5.592l9.942,2.641c2.381,0.622,4.762,0.622,7.146,0
								l9.942-2.641c-0.104-2.07-0.104-3.935,0-5.592l0.155-3.107c0-0.723,0.051-1.449,0.155-2.175c0.311-1.864,0.466-3.52,0.466-4.971
								c0-1.449-0.054-2.796-0.156-4.039C74.343,85.542,74.394,84.144,74.499,82.796z M51.896,65.554
								c-1.502-1.449-2.616-3.208-3.339-5.282c-0.726,1.452-1.502,3.522-2.331,6.214c1.139,1.141,2.641,3.367,4.505,6.68
								c1.864,3.315,3.313,7.665,4.35,13.048c0.622,3.626,2.122,6.939,4.505,9.942c0.311,0.104,0.517,0.311,0.622,0.622
								c0.102-0.311,0.311-0.517,0.621-0.622c2.381-3.002,3.884-6.315,4.505-9.942c1.034-5.383,2.486-9.733,4.35-13.048
								c1.864-3.313,3.417-5.539,4.66-6.68c-0.83-2.796-1.606-4.867-2.33-6.214c-1.658,4.144-4.609,6.991-8.854,8.544
								c-0.208,0.104-0.466,0.155-0.776,0.155v7.767c-0.104,1.347-0.83,2.02-2.175,2.02c-1.347,0-2.073-0.672-2.175-2.02v-7.767
								c-0.209,0-0.466-0.051-0.777-0.155C55.183,68.093,53.396,67.005,51.896,65.554z M48.401,33.243c1.864-1.76,3.935-2.847,6.214-3.262
								c2.277-0.413,4.141-0.622,5.592-0.622c1.449,0,3.313,0.208,5.592,0.622c2.277,0.415,4.35,1.502,6.213,3.262l0.155-0.932
								c-0.104-4.141-1.296-7.585-3.573-10.331c-2.279-2.743-5.075-4.116-8.388-4.116c-3.315,0-6.085,1.374-8.311,4.116
								c-2.228,2.746-3.393,6.189-3.495,10.331V33.243z M58.653,37.825c-0.415-0.466-0.621-0.956-0.621-1.476v-2.485
								c-3.107,0.208-5.308,0.985-6.602,2.33c-1.296,1.347-1.942,3.471-1.942,6.369c0.102,4.039,1.165,7.432,3.185,10.175
								c2.02,2.745,4.529,4.116,7.534,4.116c3.002,0,5.515-1.371,7.534-4.116c2.019-2.743,3.08-6.136,3.184-10.175
								c0-2.898-0.648-5.022-1.941-6.369c-1.296-1.345-3.495-2.122-6.602-2.33v2.485c0,0.52-0.209,1.01-0.622,1.476
								c-0.415,0.466-0.932,0.699-1.553,0.699C59.585,38.524,59.066,38.292,58.653,37.825z M65.566,62.447
								c1.087-1.034,1.888-2.276,2.408-3.728c-2.384,1.762-4.971,2.641-7.767,2.641c-2.796,0-5.386-0.878-7.767-2.641
								c0.517,1.452,1.32,2.694,2.408,3.728c1.087,1.037,2.354,1.813,3.806,2.33c1.034,0.311,2.071,0.311,3.107,0
								C63.209,64.26,64.479,63.483,65.566,62.447z M67.197,150.835l-0.777-4.66H53.993l-0.776,4.66H67.197z M53.527,11.34
								c0.102,1.141,0.932,2.02,2.485,2.641c1.449-0.413,2.874-0.621,4.272-0.621s2.77,0.208,4.117,0.621
								c1.655-0.621,2.485-1.5,2.485-2.641c0-0.413-0.182-1.034-0.544-1.864c-0.364-0.828-0.908-1.655-1.631-2.485
								C63.26,5.23,61.76,4.35,60.207,4.35c-0.83,0-1.607,0.286-2.33,0.854c-0.726,0.57-1.296,1.063-1.709,1.476
								c-0.726,0.83-1.296,1.631-1.708,2.408c-0.415,0.777-0.675,1.425-0.777,1.942L53.527,11.34z M54.925,141.826h3.107V130.02
								c-0.311,0-0.675,0.104-1.087,0.311L54.925,141.826z M61.916,118.991c0.622-1.243,1.087-2.898,1.398-4.971
								c-1.037,0.209-2.073,0.311-3.107,0.311c-1.037,0-2.073-0.102-3.107-0.311c0.311,2.073,0.777,3.728,1.398,4.971
								c0.622,1.243,1.189,1.864,1.709,1.864C60.724,120.855,61.294,120.234,61.916,118.991z M71.702,127.612
								c3.002,0.053,5.903-0.543,8.699-1.787l3.728-1.398c-2.9-1.034-5.49-3.002-7.767-5.903c-1.141-1.864-1.917-4.296-2.33-7.301
								l-6.369,1.708c-0.104,3.107-0.699,5.723-1.786,7.845c-1.087,2.124-2.461,3.495-4.117,4.117c0.311,0.208,0.724,0.415,1.243,0.621
								C65.799,126.862,68.697,127.562,71.702,127.612z M63.469,130.331c-0.415-0.206-0.777-0.311-1.087-0.311v11.806h3.262
								L63.469,130.331z M97.023,125.049c-1.658,0.311-3.729,0.83-6.214,1.553c-2.485,0.726-5.335,1.787-8.544,3.185
								c-3.211,1.398-6.628,2.097-10.252,2.097c-1.243,0-2.59-0.102-4.039-0.311l0.466,1.864l9.787-1.553c4.35-0.723,8.75-1.5,13.204-2.33
								c6.005-0.724,10.743-0.024,14.213,2.097c3.469,2.121,5.359,3.417,5.67,3.883c0.311,0.466,0.466,0.983,0.466,1.554
								c0,0.567-0.209,1.061-0.622,1.476c-0.415,0.412-0.932,0.621-1.553,0.621c-0.622,0-1.087-0.209-1.398-0.621
								c-0.311-0.415-1.864-1.451-4.66-3.107c-2.796-1.658-6.578-2.175-11.34-1.553l-13.204,2.175c-4.35,0.723-7.612,1.294-9.787,1.709
								l1.864,9.786c1.345,0.724,4.012,1.577,8,2.563c3.985,0.982,8.878,1.111,14.68,0.388c2.691-0.311,4.866-0.752,6.524-1.32
								c1.656-0.57,3.675-1.374,6.059-2.407c1.966-0.83,3.52-2.098,4.66-3.807c1.138-1.708,1.76-3.65,1.864-5.825
								c0.102-2.174-0.337-4.143-1.321-5.903c-0.985-1.76-2.356-3.158-4.116-4.194C104.219,125.103,100.751,124.428,97.023,125.049z
								 M68.75,16.311c1.966,1.452,3.597,3.262,4.894,5.437c1.293,2.175,2.148,4.609,2.563,7.301c0.622-1.655,0.983-3.391,1.087-5.204
								c0.102-1.811-0.311-3.597-1.243-5.359c-1.141-2.175-2.9-3.83-5.282-4.971C70.355,14.551,69.683,15.483,68.75,16.311z
								 M80.246,75.496c1.553-0.311,3.002-0.051,4.349,0.777l5.126-6.214c-2.073-1.966-4.194-3.65-6.369-5.048
								c-2.175-1.398-4.248-2.563-6.213-3.496c0.723,1.762,1.371,3.833,1.942,6.214c0.568,2.383,0.905,4.971,1.009,7.767H80.246z
								 M96.712,120.7l-7.922-4.505l-4.815-3.262c-2.485-1.655-4.454-3.208-5.903-4.66c0.102,1.658,0.311,3.185,0.621,4.583
								c0.311,1.398,0.724,2.461,1.243,3.185c1.864,2.383,4.039,3.961,6.524,4.738s4.194,1.165,5.126,1.165
								C93.45,121.321,95.159,120.908,96.712,120.7z M97.644,107.651c0.723-3.313,0.362-7.092-1.087-11.34
								c-1.452-4.245-3.056-7.869-4.815-10.874l-2.952,3.417l-0.466,5.903l6.058,1.087c1.345,0.415,1.915,1.296,1.709,2.641
								c-0.104,0.52-0.337,0.932-0.699,1.243c-0.364,0.311-0.803,0.466-1.32,0.466h-0.466l-5.592-1.087l-0.156,1.243
								c-0.208,1.347-0.985,2.02-2.33,2.02c-1.243-0.207-1.917-0.983-2.019-2.33l1.243-16.777c0.102-1.034-0.26-1.864-1.087-2.485
								l-0.932-0.622c-0.52-0.517-1.087-0.699-1.709-0.543c-0.621,0.155-1.141,0.543-1.553,1.165c-0.415,0.621-0.675,1.398-0.777,2.33
								c-0.104,0.932-0.104,2.175,0,3.728c0.207,2.383,0.051,5.646-0.466,9.787c-0.311,2.59,0.335,4.998,1.942,7.223
								c1.604,2.228,3.624,4.092,6.058,5.592c2.432,1.502,4.84,2.097,7.223,1.787C95.521,110.913,96.918,109.724,97.644,107.651z
								 M94.692,75.34l-1.864-2.33l-4.971,5.903c0.622,0.932,1.034,1.968,1.243,3.107c0.517-0.622,0.983-1.189,1.398-1.709
								C92.258,78.345,93.656,76.688,94.692,75.34z M105.333,88.078c-2.124,2.279-3.91,3.883-5.359,4.815
								c0.622,1.762,1.165,3.573,1.631,5.437c0.466,1.864,0.699,3.677,0.699,5.437c2.898-3.52,5.515-7.248,7.845-11.185
								c2.33-3.935,4.117-7.092,5.359-9.476c0.828-1.656,0.983-3.262,0.466-4.816c-2.175-8.078-3.833-13.876-4.971-17.398
								c-1.658-0.622-3.262-0.932-4.815-0.932c-1.554,0-2.952,0.155-4.194,0.466c1.034,2.796,2.252,5.49,3.65,8.078
								c1.398,2.59,2.614,4.713,3.65,6.369l1.243,2.02c0.311,0.622,0.361,1.243,0.155,1.864C109.241,82.695,107.455,85.801,105.333,88.078
								z"/>
						</g>
					</svg>
				</div>
				<div class="goa-more__text">Аюрведа и лечение</div>
			</a>
		</div>
	</div>
</div>

<h2 class="visible-adaptive-768">Почему Твой Гоа - лучшие</h2>
<p class="visible-adaptive-768">Мы работаем в Индии, Гоа уже на протяжении более 10-ти лет. Мы работаем официально, имея все необходимые лицензии (лицензия на туристическую деятельность, лицензия на транспортную деятельность). Наши сотрудники получают 100% официальную зарплату и имеют все необходимые разрешения на работу в Индии. Почему это может быть важно для Вас? Всё это означает, что мы дорожим своей репутацией. В отличие от многих других компаний, которые работают полулегально или же вообще нелегально, и могут свернуть деятельность на следующий месяц, а то и завтра, мы выстраиваем долговременные отношения - как с нашими сотрудниками, так и с нашими туристами. И это даёт свои плоды - многие туристы, побывавшие на наших экскурсиях, возвращаются к нам снова и рекомендуют нас своим друзьям.<br />После наших путешествий и экскурсии по Индии и Гоа вы вернётесь домой счастливее. Для этого мы здесь работаем.</p>

<div class="see marg-t-40">
	<div class="see__icon"><object type="image/svg+xml" data="<?=SITE_TEMPLATE_PATH?>/svg/trip.svg">Your browser does not support SVGs</object></div>
	<a href="/excursion/" class="see__text">Посмотрите наши экскурсии</a>
	<a href="/excursion/" class="btn visible-adaptive-768">Перейти</a>
</div>

<?require($_SERVER["DOCUMENT_ROOT"]."/bitrix/footer.php");?>