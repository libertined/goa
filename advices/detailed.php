<?php require($_SERVER["DOCUMENT_ROOT"]."/bitrix/header.php");
$APPLICATION->SetPageProperty("PAGE_IMAGE", "/upload/images/bg_exs.jpg");
$APPLICATION->SetPageProperty("MAIN_TITLE", "Заголовок статьи");?>
<div class="advices-detailed">
    <article class="advices-detailed__content">
        <div class="advices-detailed__header">Заголовок статьи</div>
        <p class="advices-detailed__text">Детальный текст здесь Lorem ipsum dolor sit amet, consectetur adipisicing elit. Magnam, provident facilis tempora ut doloribus adipisci molestias et commodi veritatis cupiditate reprehenderit quibusdam dolorum esse saepe illum? Molestiae, natus necessitatibus aliquid.</p>
        <a href="/advices/" class="advices-detailed__back">Назад к списку</a>
    </article>
    <aside class="advices-detailed__links">
        <p class="advices-detailed__links-header">Разделы</p>
        <p class="advices-detailed__labels">
            <a href="" class="advices-detailed__label">метка 1</a>, <a href="" class="advices-detailed__label">метка 2</a>, <a href="" class="advices-detailed__label">метка 3</a>
        </p>
        <div class="right-side__share">
            <div class="right-side__share-title">Поделиться:</div>
            <div class="right-side__share-body">
                <script async="async" src="//yastatic.net/share2/share.js"></script>
                <div class="ya-share2" data-services="vkontakte,facebook,odnoklassniki,gplus,twitter,viber,whatsapp,telegram" data-counter=""></div>
            </div>
        </div>
    </aside>
    
</div>
<?php require($_SERVER["DOCUMENT_ROOT"]."/bitrix/footer.php");?>