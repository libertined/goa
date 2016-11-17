<?php require($_SERVER["DOCUMENT_ROOT"]."/bitrix/header.php");
$APPLICATION->SetPageProperty("MAIN_TITLE", "Часто задаваемые вопросы");
$APPLICATION->SetPageProperty("PAGE_IMAGE", "/upload/images/bg_exs_1.jpg");
$APPLICATION->SetTitle("FAQ");?>
<div class="after-parent">
    <h2 id="questions" class="left">Вопросы</h2>
    <a href="#ask-question" class="btn right">Задать вопрос</a>
</div>
<ul>
    <li><a href="#1">Когда лучше всего ехать в Гоа?</a></li>
    <li><a href="#2">Как купить местную сим-карту?</a></li>
    <li><a href="#3">Южный Гоа или Северный Гоа?</a></li>
    <li><a href="#4">Что с собой брать?</a></li>
    <li><a href="#5">Банковские карточки и обмен валюты?</a></li>
</ul>
<h2>Ответы</h2>
<ul>
    <li>
        <a href="" id="1"></a>
        <p><strong>Когда лучше всего ехать в Гоа?</strong></p>
        <div class="text-answ">
            <p>В Гоа лучше ехать с середины октября и до конца апреля.
В начале сезона немного влажно, зато природа потрясающе насыщена красками. Средняя температура воздуха 25-35С и очень комфортная температура морской воды. Самое лучшее время для поездки в Гоа декабрь-февраль.</p>
            <p>Гоа - уникальное место. Весь сезон вы можете наслаждаться солнцем, безоблачным небом и «постоянством» рассветов и закатов -  всегда в одно и то же время.</p>
        </div>
        <p class="pos-right"><a href="#questions">к содержанию</a></p>
    </li>
    <li>
        <a href="" id="2"></a>
        <p><strong>Как купить местную сим-карту?</strong></p>
        <div class="text-answ">
            <p>Местную сим-карту советуем купить, так как звонки с нее значительно дешевле, чем разговаривать по роумингу. Для того что бы купить ее Вам понадобится: ксерокс Вашего загранпаспорта и индийской визы, фотография 3х4. Все это легко можно сделать и в Гоа.
            Местные сим-карты можно купить практически в любом магазине, даже в самых маленьких. Самые распространенные операторы- Idea и Airtel.</p>
            <p>Стоимость звонков с местной сим-карты на городские российские номера- 5 рупии (около 3 рублей) за минуту разговора, на мобильные 9 рупий (около 6 рублей) за минуту разговора. Стоимость местных разговоров 1 рупия за минуту.</p>
        </div>
        <p class="pos-right"><a href="#questions">к содержанию</a></p>
    </li>
    <li>
        <a href="" id="3"></a>
        <p><strong>Южный Гоа или Северный Гоа?</strong></p>
        <div class="text-answ">
            <p>Южный Гоа лучше подойдет для тихого и спокойного семейного отдыха, с отелями 4 и 5 звезд. Отдых на юге более дорогой и комфортабельный.</p>
            <p>Основные клубы и рестораны сосредоточены на территории Северного Гоа. Но зато отели уже в основной своей массе 2, 3 звезды. Если Вы едите с веселой компанией друзей, то выбирайте Северный Гоа.</p>
        </div>
        <p class="pos-right"><a href="#questions">к содержанию</a></p>
    </li>
    <li>
        <a href="" id="4"></a>
        <p><strong>Что с собой брать?</strong></p>
        <div class="text-answ">
            <p>Лекарства, если вдруг вам понадобятся, а вы забыли взять, сможете найти без труда, аптек  много и медицина очень развита. Крема для загара и другие средства продаются во всех минимаркетах.</p>
        </div>
        <p class="pos-right"><a href="#questions">к содержанию</a></p>
    </li>
    <li>
        <a href="" id="5"></a>
        <p><strong>Банковские карточки и обмен валюты</strong></p>
        <div class="text-answ">
            <p>Калангут, Кандолим, Бага – здесь много банкоматов и Вы без труда сможете снять деньги. Поменять деньги можно в филиалах Western Union и во многих магазинах, курс в них лучше, чем в отелях. Большинство магазинов принимают оплату банковскими картами.</p>
        </div>
        <p class="pos-right"><a href="#questions">к содержанию</a></p>
    </li>
</ul>

<form action="#" method="post" name="ask-question" enctype="multipart/form-data" id="ask-question">
    <div class="form form--grey form--w670 form--center">
        <div class="form__header">Задать свой вопрос</div>
        <p class="warning">Пожалуйста, внимательно указывайте свой емейл, т.к. в случае неверного емейл адреса мы не сможет ответить Вам</p>
        <div class="marg-b-15">
            <div class="form__wrap">
                <label for="label-name" class="form__title">Представьтесь, пожалуйста*</label>
                <div class="form__field"><input id="label-name" placeholder="" name="name" value="" type="text" class="form__input" required="" /></div>
            </div>
        </div>

        <div class="marg-b-15">
            <div class="form__wrap">
                <label for="label-email" class="form__title">Ваш емейл адрес*</label>
                <div class="form__field"><input id="label-email" placeholder="" name="email" value="" type="email" class="form__input" required /></div>
            </div>
        </div>

        <div class="marg-b-15">
            <div class="form__wrap">
                <label for="label-review-text" class="form__title">Текст вопроса*</label>
                <div class="form__field"><textarea id="label-review-text" class="form__textarea" name="questionText" required=""></textarea></div>
            </div>
        </div>

        <div class="form__wrap">
            <div class="form__title visible-adaptive-768">&nbsp;</div>
            <div class="form__field pos-right"><button type="submit" name="" class="btn col-adaptive-768">Отправить</button></div>
        </div>
    </div>
</form>


<?php require($_SERVER["DOCUMENT_ROOT"]."/bitrix/footer.php");?>
