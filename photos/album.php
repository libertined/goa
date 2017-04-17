<?php require($_SERVER["DOCUMENT_ROOT"]."/bitrix/header.php");
$APPLICATION->SetPageProperty("MAIN_TITLE", "�����������");
$APPLICATION->SetPageProperty("PAGE_IMAGE", "/upload/images/bg_gallery.jpg");
$APPLICATION->SetTitle("��������� �������� �����������");
$APPLICATION->SetAdditionalCSS("/promo/style.css");?>
<section class="photos">
	<div class="photo">
		<div class="photo__item">
			<img src="album/1.jpg" alt="" class="photo__img">
			<div class="photo__shadow"></div>
		</div>
		<p class="photo__title">�������� ����������</p>
	</div>
	<div class="photo">
		<div class="photo__item">
			<img src="album/2.jpg" alt="" class="photo__img">
			<div class="photo__shadow"></div>
		</div>
		<p class="photo__title">������� �������� ����������</p>
	</div>
	<div class="photo">
		<div class="photo__item">
			<img src="album/3.jpg" alt="" class="photo__img">
			<div class="photo__shadow"></div>
		</div>
		<p class="photo__title">����� ����� ������� �������� ���������� �� ��������� ����� ���������� ���</p>
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
		<p class="photo__title">����� ������� �������� ����������</p>
	</div>
	<div class="photo">
		<div class="photo__item">
			<img src="album/6.jpg" alt="" class="photo__img">
			<div class="photo__shadow"></div>
		</div>
		<p class="photo__title">����� ������� �������� ����������</p>
	</div>

</section>


<?php require($_SERVER["DOCUMENT_ROOT"]."/bitrix/footer.php");?>
