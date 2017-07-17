<?php require($_SERVER["DOCUMENT_ROOT"]."/bitrix/header.php");
$APPLICATION->SetTitle("Контакты");
use Bitrix\Main\Page\Asset;
Asset::getInstance()->addJs("https://maps.googleapis.com/maps/api/js?key=AIzaSyDNswLgwKsudVFTfPWIPWjQkoNDbmieGac");
Asset::getInstance()->addJs(SITE_TEMPLATE_PATH . "/js/google-map.js");
?>
<div class="contacts">
	<div class="contacts__phones">
		<p class="contacts__title">Телефоны в Гоа:</p>
		<p class="contacts__text">+91 8888 71 79 22 <a class="contacts__messenger contacts__messenger--whatsapp" href="https://api.whatsapp.com/send?phone=918888717922">Whatsapp</a>
		<a href="viber://chat?number=+918888717922">Viber</a>
		<a href="tg://resolve?domain=ginsv">Telegram</a></p>		
		<p class="contacts__text">+91 8888 70 40 05 <a class="contacts__messenger contacts__messenger--whatsapp" href="https://api.whatsapp.com/send?phone=918888704005">Whatsapp</a>
		<a href="viber://chat?number=+918888704005">Viber</a>
		<a href="#">Telegram</a></p>
		<p class="contacts__title">Телефоны в Санкт-Петербурге:</p>
		<p class="contacts__text">+7 981 771 79 22 <a class="contacts__messenger contacts__messenger--whatsapp" href="https://api.whatsapp.com/send?phone=79817717922">Whatsapp</a>
		<a href="viber://chat?number=+79817717922">Viber</a>
		<a href="#">Telegram</a></p>		
		<p class="contacts__text">+7 981 771 79 22</p>
		
		
		
	</div>
</div>
<div class="contact-us__map">
</div>
<?php require($_SERVER["DOCUMENT_ROOT"]."/bitrix/footer.php");?>
