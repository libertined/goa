<?php require($_SERVER["DOCUMENT_ROOT"]."/bitrix/header.php");
$APPLICATION->SetTitle("Контакты");
use Bitrix\Main\Page\Asset;
Asset::getInstance()->addJs("https://maps.googleapis.com/maps/api/js?key=AIzaSyDNswLgwKsudVFTfPWIPWjQkoNDbmieGac");
Asset::getInstance()->addJs(SITE_TEMPLATE_PATH . "/js/google-map.js");
?>
<div class="contacts">
	<div class="contacts__phones">
		<p class="contacts__title">Телефоны в Гоа:</p>
		<p class="contacts__text"><a href="tel:+918888717922">+91 8888 71 79 22</a> <a class="contacts__messenger contacts__messenger--whatsapp" href="https://api.whatsapp.com/send?phone=918888717922"></a>
		<a class="contacts__messenger contacts__messenger--viber" href="viber://chat?number=918888717922"></a>
		<a class="contacts__messenger contacts__messenger--tg" href="tg://resolve?domain=tvoygoasuryatravels"></a></p>		
		<p class="contacts__text"><a href="tel:+918888704005">+91 8888 70 40 05</a> <a class="contacts__messenger contacts__messenger--whatsapp" href="https://api.whatsapp.com/send?phone=918888704005"></a>
		<a class="contacts__messenger contacts__messenger--viber" href="viber://chat?number=918888704005"></a>
		<a class="contacts__messenger contacts__messenger--tg" href="#"></a></p>
		<p class="contacts__title">Телефоны в Санкт-Петербурге:</p>
		<p class="contacts__text"><a href="tel:+79817717922">+7 981 771 79 22</a> <a class="contacts__messenger contacts__messenger--whatsapp" href="https://api.whatsapp.com/send?phone=79817717922"></a>
		<a class="contacts__messenger contacts__messenger--viber" href="viber://chat?number=79817717922"></a>
		<a class="contacts__messenger contacts__messenger--tg" href="tg://resolve?domain=TVOYGOA"></a></p>		
		<p class="contacts__text"><a href="tel:+79817717922">+7 981 707 40 05</a></p>		
	</div>
	<div class="contacts__links">
		<p class="contacts__title">Skype: <a href="skype:streletsg" class="contacts__link contacts__link--skype">streletsg</a></p>
		<p class="contacts__title">Email: <a href="mailto:@info@tvoygoa.ru" class="contacts__link contacts__link--email">info@tvoygoa.ru</a></p>
		<p class="contacts__title">Наши группы в сети:</p>
		<p class="contacts__text">
			<a href="https://vk.com/tvoygoa" class="contacts__social contacts__social--vk"target="_blank"></a>
			<a href="https://web.facebook.com/tvoygoa?_rdc=1&_rdr" class="contacts__social contacts__social--fb" target="_blank"></a>
			<a href="http://instagram.com/tvoygoa" class="contacts__social contacts__social--ig" target="_blank"></a>
		</p>
	</div>
</div>
<div class="bank-details">
	<p class="bank-details__header">Реквизиты для безналичной оплаты</p>
	<p class="bank-details__details">CORPORATION BANK<br>
	A/c 058001601000269<br>
	IFSC CODE: CORP0000580<br>
	MICR CODE: 403017006<br>
	SURYA TRAVELS<br>
	SWIFT CORPINBB580<br>
	BRANCH: 580 CALANGUTE, PLAZA DE ANTONIO, MAIN ROAD, GAURA VADDO. CALANGUTE
	BARDEZ, GOA</p>	
	<p class="bank-details__details">Также вы можете перевести деньги <b>на карту Сбербанка</b> <a href="/files/details.pdf" target="_blank">по следующим реквизитам</a></p>
</div>
<div class="map">
	<p class="map__header">Как нас найти</p>
	<p class="map__description">Офис "ТВОЙ ГОА" в Кандолиме напротив отеля Ruffles на 2-м этаже над банком State Bank of India на главной дороге Fort Aguada Road, Bamon Vaddo Candolim Bardez Goa-403 515<br>
    Bamon Vaddo next to State Bank of India opposite Ruffles hotel Fort Aguada Road Candolim Bardez Goa-403515</p>
	<div class="map__google"></div>
</div>

<?php require($_SERVER["DOCUMENT_ROOT"]."/bitrix/footer.php");?>
