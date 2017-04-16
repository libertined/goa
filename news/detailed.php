<?php require($_SERVER["DOCUMENT_ROOT"]."/bitrix/header.php");
$APPLICATION->SetTitle("Новости");
$APPLICATION->SetPageProperty("MAIN_TITLE", "Новости");
$APPLICATION->SetPageProperty("PAGE_IMAGE", "/upload/images/bg_news.jpg");
$APPLICATION->SetAdditionalCSS("/promo/style.css");?>
	<article class="news-detailed">		
		<div class="news-detailed__text">
			<h4 class="news-detailed__title" href="#">Заголовок новости</h4>
			<p class="news__description">Текст спецпредложения здесь Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facere dolorum aut amet quos inventore, quas ex, quae fuga et reprehenderit quia iure eum tempore eius perferendis deserunt maxime quo. Dolore? Текст спецпредложения здесь Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facere dolorum aut amet quos inventore, quas ex, quae fuga et reprehenderit quia iure eum tempore eius perferendis deserunt maxime quo. Dolore? Текст спецпредложения здесь Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facere dolorum aut amet quos inventore, quas ex, quae fuga et reprehenderit quia iure eum tempore eius perferendis deserunt maxime quo. Dolore? Текст спецпредложения здесь Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facere dolorum aut amet quos inventore, quas ex, quae fuga et reprehenderit quia iure eum tempore eius perferendis deserunt maxime quo. Dolore? Текст спецпредложения здесь Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facere dolorum aut amet quos inventore, quas ex, quae fuga et reprehenderit quia iure eum tempore eius perferendis deserunt maxime quo. Dolore? Текст спецпредложения здесь Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facere dolorum aut amet quos inventore, quas ex, quae fuga et reprehenderit quia iure eum tempore eius perferendis deserunt maxime quo. Dolore? Завершающий текст здесь</p>
		</div>
		<div class="news-detailed__info">
			<img class="news-detailed__pic" src="<?=SITE_TEMPLATE_PATH?>/img/files/img_1.jpg" alt="">
			<a class="news-detailed__back" href="/news">Назад к списку</a>
			<p class="news-detailed__dates">Опубликовано: <time class="news-detailed__date" pubdate datetime="2017-05-01">1 мая 2017</time></p>
            <div class="right-side__share">
                <div class="right-side__share-title">Поделиться:</div>
                <div class="right-side__share-body">
                    <script async="async" src="//yastatic.net/share2/share.js"></script>
                    <div class="ya-share2" data-services="vkontakte,facebook,odnoklassniki,gplus,twitter,viber,whatsapp,telegram" data-counter=""></div>
                </div>
            </div>
		</div>
	</article>

<?php require($_SERVER["DOCUMENT_ROOT"]."/bitrix/footer.php");?>
