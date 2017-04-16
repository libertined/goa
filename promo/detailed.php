<?php require($_SERVER["DOCUMENT_ROOT"]."/bitrix/header.php");
$APPLICATION->SetPageProperty("MAIN_TITLE", "Спецпредложения");
$APPLICATION->SetPageProperty("PAGE_IMAGE", "/upload/images/bg_exs.jpg");
$APPLICATION->SetTitle("Экскурсии");
$APPLICATION->SetAdditionalCSS("/promo/style.css");?>

	<article class="promo-detailed">		
		<div class="promo-detailed__text">
			<h4 class="promo-detailed__title" href="#">Заголовок спецпредложения</h4>
			<p class="promo__description">Текст спецпредложения здесь Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facere dolorum aut amet quos inventore, quas ex, quae fuga et reprehenderit quia iure eum tempore eius perferendis deserunt maxime quo. Dolore? Текст спецпредложения здесь Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facere dolorum aut amet quos inventore, quas ex, quae fuga et reprehenderit quia iure eum tempore eius perferendis deserunt maxime quo. Dolore? Текст спецпредложения здесь Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facere dolorum aut amet quos inventore, quas ex, quae fuga et reprehenderit quia iure eum tempore eius perferendis deserunt maxime quo. Dolore? Текст спецпредложения здесь Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facere dolorum aut amet quos inventore, quas ex, quae fuga et reprehenderit quia iure eum tempore eius perferendis deserunt maxime quo. Dolore? Текст спецпредложения здесь Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facere dolorum aut amet quos inventore, quas ex, quae fuga et reprehenderit quia iure eum tempore eius perferendis deserunt maxime quo. Dolore? Текст спецпредложения здесь Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facere dolorum aut amet quos inventore, quas ex, quae fuga et reprehenderit quia iure eum tempore eius perferendis deserunt maxime quo. Dolore? Завершающий текст здесь</p>
		</div>
		<div class="promo-detailed__info">
			<a href="/promo" class="promo-detailed__back">Назад к списку</a>
			<p class="promo-detailed__dates">Опубликовано: <time class="promo-detailed__date" pubdate datetime="2017-05-01">1 мая 2017</time></p>
			<p class="promo-detailed__dates">Акция продлится до: <time class="promo-detailed__date" datetime="2017-08-01">1 августа 2017</time></p>
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