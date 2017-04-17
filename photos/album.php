<?php require($_SERVER["DOCUMENT_ROOT"]."/bitrix/header.php");
$APPLICATION->SetPageProperty("MAIN_TITLE", "Фотогалерея");
$APPLICATION->SetPageProperty("PAGE_IMAGE", "/upload/images/bg_gallery.jpg");
$APPLICATION->SetTitle("Детальная страница фотоальбома");
$APPLICATION->SetAdditionalCSS("/promo/style.css");?>
<section class="photos">
	<div class="photo">
		<div class="photo__item">
			<img src="album/1.jpg" alt="" class="photo__img">
			<div class="photo__shadow"></div>
		</div>
		<p class="photo__title">Название фотографии</p>
	</div>
	<div class="photo">
		<div class="photo__item">
			<img src="album/2.jpg" alt="" class="photo__img">
			<div class="photo__shadow"></div>
		</div>
		<p class="photo__title">Длинное Название фотографии</p>
	</div>
	<div class="photo">
		<div class="photo__item">
			<img src="album/3.jpg" alt="" class="photo__img">
			<div class="photo__shadow"></div>
		</div>
		<p class="photo__title">Очень супер длинное Название фотографии на несколько строк желательно три</p>
	</div>
	<div class="photo">
		<div class="photo__item">
			<img src="album/4.jpg" alt="" class="photo__img">
			<div class="photo__shadow"></div>
		</div>
		<p class="photo__title"></p>
	</div>
	<div class="photo">
		<div class="photo__item">
			<img src="album/5.jpg" alt="" class="photo__img">
			<div class="photo__shadow"></div>
		</div>
		<p class="photo__title">Очень длинное Название фотографии</p>
	</div>
	<div class="photo">
		<div class="photo__item">
			<img src="album/6.jpg" alt="" class="photo__img">
			<div class="photo__shadow"></div>
		</div>
		<p class="photo__title">Очень длинное Название фотографии</p>
	</div>

</section>


<?php require($_SERVER["DOCUMENT_ROOT"]."/bitrix/footer.php");?>
