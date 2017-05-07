<?php require($_SERVER["DOCUMENT_ROOT"]."/bitrix/header.php");
$APPLICATION->SetPageProperty("MAIN_TITLE", "Услуги");
$APPLICATION->SetPageProperty("PAGE_IMAGE", "/upload/images/bg_services.jpg");
$APPLICATION->SetTitle("Услуги");?>

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
