<?php require($_SERVER["DOCUMENT_ROOT"]."/bitrix/header.php");
$APPLICATION->SetTitle("Новости");
$APPLICATION->SetPageProperty("MAIN_TITLE", "Новости");
$APPLICATION->SetPageProperty("PAGE_IMAGE", "/upload/images/bg_news.jpg");?>

<a href="detailed.php" class="news-block marg-b-10">
    <div class="row row--padd30">
        <div class="row__inner">
            <div class="col-12-9 col-adaptive-768">
                <div class="news-block__date">20 ноября 2015</div>
                <div class="news-block__title">Калининградские турфирмы предлагают курорты Азии взамен Турции</div>
                <div class="news-block__text">Если после запрета на полеты в Египет было заметно повышение цен туроператорами, и людям было дороговато перебронировать путевки, то сейчас цены приемлемые</div>
            </div>
            <div class="col-12-3 col-adaptive-768 top-adaptive-768">
                <div class="news-block__img"><img src="<?=SITE_TEMPLATE_PATH?>/img/files/img_1.jpg" alt="" /></div>
            </div>
        </div>
    </div>
</a>

<a href="" class="news-block">
    <div class="news-block__date">20 ноября 2015</div>
    <div class="news-block__title">Таможня России поддержала введение сбора в 10-15 евро на посылки стоимостью от 22 до 150 евро из зарубежных интернет-магазинов</div>
    <div class="news-block__text">23 ноября 2015 года стало известно, что введение подобного налога обсуждается на уровне Евразийского экономического союза, в который входят Армения, республика Беларусь, Казахстан, Киргизия и Россия.</div>
</a>

<?php require($_SERVER["DOCUMENT_ROOT"]."/bitrix/footer.php");?>
