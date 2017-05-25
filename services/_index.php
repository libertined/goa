<?php require($_SERVER["DOCUMENT_ROOT"]."/bitrix/header.php");
$APPLICATION->SetPageProperty("MAIN_TITLE", "Услуги");
$APPLICATION->SetPageProperty("PAGE_IMAGE", "/upload/images/bg_services.jpg");
$APPLICATION->SetTitle("Услуги");?>
<?$APPLICATION->IncludeComponent(
	"bitrix:news.list", 
	"services", 
	array(
		"COMPONENT_TEMPLATE" => "services",
		"IBLOCK_TYPE" => "info",
		"IBLOCK_ID" => "11",
		"NEWS_COUNT" => "20",
		"SORT_BY1" => "SORT",
		"SORT_ORDER1" => "ASC",
		"SORT_BY2" => "SORT",
		"SORT_ORDER2" => "ASC",
		"FILTER_NAME" => "",
		"FIELD_CODE" => array(
			0 => "",
			1 => "",
		),
		"PROPERTY_CODE" => array(
			0 => "TABLE_PRICES",
			1 => "",
		),
		"CHECK_DATES" => "Y",
		"DETAIL_URL" => "",
		"AJAX_MODE" => "N",
		"AJAX_OPTION_JUMP" => "N",
		"AJAX_OPTION_STYLE" => "Y",
		"AJAX_OPTION_HISTORY" => "N",
		"AJAX_OPTION_ADDITIONAL" => "",
		"CACHE_TYPE" => "A",
		"CACHE_TIME" => "36000000",
		"CACHE_FILTER" => "N",
		"CACHE_GROUPS" => "Y",
		"PREVIEW_TRUNCATE_LEN" => "",
		"ACTIVE_DATE_FORMAT" => "d.m.Y",
		"SET_TITLE" => "Y",
		"SET_BROWSER_TITLE" => "Y",
		"SET_META_KEYWORDS" => "Y",
		"SET_META_DESCRIPTION" => "Y",
		"SET_LAST_MODIFIED" => "N",
		"INCLUDE_IBLOCK_INTO_CHAIN" => "N",
		"ADD_SECTIONS_CHAIN" => "Y",
		"HIDE_LINK_WHEN_NO_DETAIL" => "N",
		"PARENT_SECTION" => "",
		"PARENT_SECTION_CODE" => "",
		"INCLUDE_SUBSECTIONS" => "Y",
		"STRICT_SECTION_CHECK" => "N",
		"DISPLAY_DATE" => "Y",
		"DISPLAY_NAME" => "Y",
		"DISPLAY_PICTURE" => "Y",
		"DISPLAY_PREVIEW_TEXT" => "Y",
		"COMPOSITE_FRAME_MODE" => "A",
		"COMPOSITE_FRAME_TYPE" => "AUTO",
		"PAGER_TEMPLATE" => "round",
		"DISPLAY_TOP_PAGER" => "N",
		"DISPLAY_BOTTOM_PAGER" => "Y",
		"PAGER_TITLE" => "Новости",
		"PAGER_SHOW_ALWAYS" => "N",
		"PAGER_DESC_NUMBERING" => "N",
		"PAGER_DESC_NUMBERING_CACHE_TIME" => "36000",
		"PAGER_SHOW_ALL" => "N",
		"PAGER_BASE_LINK_ENABLE" => "N",
		"SET_STATUS_404" => "N",
		"SHOW_404" => "N",
		"MESSAGE_404" => ""
	),
	false
);?>
<div class="row row--padd40">
    <div class="row__inner">
		<div class="service-block" id="rent">
			<img class="service-block__img" src="<?=SITE_TEMPLATE_PATH?>/img/files/img_7.jpg" alt="">
			<div class="service-block__title">Аренда жилья</div>
		</div>
		<div class="service-block" id="tickets">
			<img class="service-block__img" src="<?=SITE_TEMPLATE_PATH?>/img/files/img_7.jpg" alt="">
			<div class="service-block__title">Авиабилеты длинный заголовок</div>
		</div>
		<section class="service-item" id="content-rent">
			<div class="service-item__close"></div>
			<h2 class="service-item__header">Аренда жилья</h2>
			<p class="service-item__description">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt earum possimus, expedita mollitia quibusdam dolor suscipit id voluptate soluta a. Officia quos maxime sapiente, iste quasi harum quaerat, non ipsa!</p>
			<table class="service-item__price">
				<thead>
					<tr class="price-table__row price-table__row--header">
						<th class="price-table__cell price-table__cell--header">6 - 12 человек<br><span class="smaller">за 1 человека</span></th>
						<th class="price-table__cell price-table__cell--header">5 человек<br><span class="smaller">за 1 человека</span></th>
					</tr>
				</thead>
				<tbody>
					<tr class="price-table__row">
						<td class="price-table__cell">45$</td>
						<td class="price-table__cell">50$</td>
					</tr>
					<tr class="price-table__row price-table__row--promo">
						<td class="price-table__cell">40$<br><span class="smaller">При заказе с сайта</span></td>
						<td class="price-table__cell">45$<br><span class="smaller">При заказе с сайта</span></td>
					</tr>
					<tr class="price-table__row">
						<td class="price-table__cell">20$<br><span class="smaller">Для детей от 12 лет</span></td>
						<td class="price-table__cell">20$<br><span class="smaller">Для детей от 12 лет</span></td>
					</tr>
				</tbody>
			</table>
			<a class="service-item__order btn" href="/order/#rent">Заказать</a>
		</section>
		<section class="service-item" id="content-tickets">
			<div class="service-item__close"></div>
			<h2 class="service-item__header">Авиабилеты длинный заголовок</h2>
			<p class="service-item__description">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt earum possimus, expedita mollitia quibusdam dolor suscipit id voluptate soluta a. Officia quos maxime sapiente, iste quasi harum quaerat, non ipsa!</p>
			<table class="service-item__price">
				<thead>
					<tr class="price-table__row price-table__row--header">
						<th class="price-table__cell price-table__cell--header">6 - 12 человек<br><span class="smaller">за 1 человека</span></th>
						<th class="price-table__cell price-table__cell--header">5 человек<br><span class="smaller">за 1 человека</span></th>
					</tr>
				</thead>
				<tbody>
					<tr class="price-table__row">
						<td class="price-table__cell">45$</td>
						<td class="price-table__cell">50$</td>
					</tr>
					<tr class="price-table__row price-table__row--promo">
						<td class="price-table__cell">40$<br><span class="smaller">При заказе с сайта</span></td>
						<td class="price-table__cell">45$<br><span class="smaller">При заказе с сайта</span></td>
					</tr>
					<tr class="price-table__row">
						<td class="price-table__cell">20$<br><span class="smaller">Для детей от 12 лет</span></td>
						<td class="price-table__cell">20$<br><span class="smaller">Для детей от 12 лет</span></td>
					</tr>
				</tbody>
			</table>
			<a class="service-item__order btn" href="/order/#tickets">Заказать</a>
		</section>

		<div class="service-block" id="wedding">
			<img class="service-block__img" src="<?=SITE_TEMPLATE_PATH?>/img/files/img_7.jpg" alt="">
			<div class="service-block__title">Организация свадеб</div>
		</div>
		<div class="service-block" id="ayurveda">
			<img class="service-block__img" src="<?=SITE_TEMPLATE_PATH?>/img/files/img_7.jpg" alt="">
			<div class="service-block__title">Аюрведа</div>
		</div>
		<section class="service-item" id="content-wedding">
			<div class="service-item__close"></div>
			<h2 class="service-item__header">Организация свадеб</h2>
			<p class="service-item__description">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt earum possimus, expedita mollitia quibusdam dolor suscipit id voluptate soluta a. Officia quos maxime sapiente, iste quasi harum quaerat, non ipsa!</p>
			<table class="service-item__price">
				<thead>
					<tr class="price-table__row price-table__row--header">
						<th class="price-table__cell price-table__cell--header">6 - 12 человек<br><span class="smaller">за 1 человека</span></th>
						<th class="price-table__cell price-table__cell--header">5 человек<br><span class="smaller">за 1 человека</span></th>
					</tr>
				</thead>
				<tbody>
					<tr class="price-table__row">
						<td class="price-table__cell">45$</td>
						<td class="price-table__cell">50$</td>
					</tr>
					<tr class="price-table__row price-table__row--promo">
						<td class="price-table__cell">40$<br><span class="smaller">При заказе с сайта</span></td>
						<td class="price-table__cell">45$<br><span class="smaller">При заказе с сайта</span></td>
					</tr>
					<tr class="price-table__row">
						<td class="price-table__cell">20$<br><span class="smaller">Для детей от 12 лет</span></td>
						<td class="price-table__cell">20$<br><span class="smaller">Для детей от 12 лет</span></td>
					</tr>
				</tbody>
			</table>
			<a class="service-item__order btn" href="/order/#wedding">Заказать</a>
		</section>
		<section class="service-item" id="content-ayurveda">
			<div class="service-item__close"></div>
			<h2 class="service-item__header">Аюрведа</h2>
			<p class="service-item__description">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt earum possimus, expedita mollitia quibusdam dolor suscipit id voluptate soluta a. Officia quos maxime sapiente, iste quasi harum quaerat, non ipsa!</p>
			<table class="service-item__price">
				<thead>
					<tr class="price-table__row price-table__row--header">
						<th class="price-table__cell price-table__cell--header">6 - 12 человек<br><span class="smaller">за 1 человека</span></th>
						<th class="price-table__cell price-table__cell--header">5 человек<br><span class="smaller">за 1 человека</span></th>
					</tr>
				</thead>
				<tbody>
					<tr class="price-table__row">
						<td class="price-table__cell">45$</td>
						<td class="price-table__cell">50$</td>
					</tr>
					<tr class="price-table__row price-table__row--promo">
						<td class="price-table__cell">40$<br><span class="smaller">При заказе с сайта</span></td>
						<td class="price-table__cell">45$<br><span class="smaller">При заказе с сайта</span></td>
					</tr>
					<tr class="price-table__row">
						<td class="price-table__cell">20$<br><span class="smaller">Для детей от 12 лет</span></td>
						<td class="price-table__cell">20$<br><span class="smaller">Для детей от 12 лет</span></td>
					</tr>
				</tbody>
			</table>
			<a class="service-item__order btn" href="/order/#ayurveda">Заказать</a>
		</section>

		<div class="service-block" id="celebration">
			<img class="service-block__img" src="<?=SITE_TEMPLATE_PATH?>/img/files/img_7.jpg" alt="">
			<div class="service-block__title">Проведение праздников</div>
		</div>
		<div class="service-block" id="taxi">
			<img class="service-block__img" src="<?=SITE_TEMPLATE_PATH?>/img/files/img_7.jpg" alt="">
			<div class="service-block__title">Услуги такси</div>
		</div>
		<section class="service-item" id="content-celebration">
			<div class="service-item__close"></div>
			<h2 class="service-item__header">Проведение праздников</h2>
			<p class="service-item__description">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt earum possimus, expedita mollitia quibusdam dolor suscipit id voluptate soluta a. Officia quos maxime sapiente, iste quasi harum quaerat, non ipsa!</p>
			<table class="service-item__price">
				<thead>
					<tr class="price-table__row price-table__row--header">
						<th class="price-table__cell price-table__cell--header">6 - 12 человек<br><span class="smaller">за 1 человека</span></th>
						<th class="price-table__cell price-table__cell--header">5 человек<br><span class="smaller">за 1 человека</span></th>
					</tr>
				</thead>
				<tbody>
					<tr class="price-table__row">
						<td class="price-table__cell">45$</td>
						<td class="price-table__cell">50$</td>
					</tr>
					<tr class="price-table__row price-table__row--promo">
						<td class="price-table__cell">40$<br><span class="smaller">При заказе с сайта</span></td>
						<td class="price-table__cell">45$<br><span class="smaller">При заказе с сайта</span></td>
					</tr>
					<tr class="price-table__row">
						<td class="price-table__cell">20$<br><span class="smaller">Для детей от 12 лет</span></td>
						<td class="price-table__cell">20$<br><span class="smaller">Для детей от 12 лет</span></td>
					</tr>
				</tbody>
			</table>
			<a class="service-item__order btn" href="/order/#celebration">Заказать</a>
		</section>
		<section class="service-item" id="content-taxi">
			<div class="service-item__close"></div>
			<h2 class="service-item__header">Услуги такси</h2>
			<p class="service-item__description">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt earum possimus, expedita mollitia quibusdam dolor suscipit id voluptate soluta a. Officia quos maxime sapiente, iste quasi harum quaerat, non ipsa!</p>
			<table class="service-item__price">
				<thead>
					<tr class="price-table__row price-table__row--header">
						<th class="price-table__cell price-table__cell--header">6 - 12 человек<br><span class="smaller">за 1 человека</span></th>
						<th class="price-table__cell price-table__cell--header">5 человек<br><span class="smaller">за 1 человека</span></th>
					</tr>
				</thead>
				<tbody>
					<tr class="price-table__row">
						<td class="price-table__cell">45$</td>
						<td class="price-table__cell">50$</td>
					</tr>
					<tr class="price-table__row price-table__row--promo">
						<td class="price-table__cell">40$<br><span class="smaller">При заказе с сайта</span></td>
						<td class="price-table__cell">45$<br><span class="smaller">При заказе с сайта</span></td>
					</tr>
					<tr class="price-table__row">
						<td class="price-table__cell">20$<br><span class="smaller">Для детей от 12 лет</span></td>
						<td class="price-table__cell">20$<br><span class="smaller">Для детей от 12 лет</span></td>
					</tr>
				</tbody>
			</table>
			<a class="service-item__order btn" href="/order/#taxi">Заказать</a>
		</section>
    </div>
</div>
<script src='matches.js'></script>
<script src='service.js'></script>
<?php require($_SERVER["DOCUMENT_ROOT"]."/bitrix/footer.php");?>
