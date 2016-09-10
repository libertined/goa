<?php require($_SERVER["DOCUMENT_ROOT"]."/bitrix/header.php");
$APPLICATION->SetPageProperty("MAIN_TITLE", "Отдых на пляжах Палолем, Кола и старинный форт Кабо де Рама");
$APPLICATION->SetPageProperty("PAGE_IMAGE", "/upload/images/bg_exs_1.jpg");
$APPLICATION->SetTitle("FAQ");?>

<div class="tabs marg-b-40">
    <ul class="tabs__list">
        <li class="tabs__item tabs--item-active"><a href="" class="tabs__item-link tabs--item-link-description js-extab-btn" data-tab="extab-description"><span>Описание</span></a></li>
        <li class="tabs__item"><a href="" class="tabs__item-link tabs--item-link-programm js-extab-btn" data-tab="extab-programm"><span>Программа и стоимость</span></a></li>
        <li class="tabs__item"><a href="" class="tabs__item-link tabs--item-link-reviews js-extab-btn" data-tab="extab-reviews"><span>Отзывы</span></a></li>
        <li class="tabs__item"><a href="" class="tabs__item-link tabs--item-link-order js-extab-btn" data-tab="extab-order"><span>Заказ</span></a></li>
    </ul>
</div>

<div class="js-extab" data-tab="extab-description">
    <h3 class="right-side__red">Для групп от 6 человек цены устанавливаются индивидуально на все экскурсии!</h3>
    <p>Если вы уже в Гоа, обязательно побывайте на одном из красивейших пляжей Южного Гоа - Палолеме и самом тихом и безлюдном пляже - Кола. Вы совершите водную прогулку и понаблюдаете за игрой дельфинов. Побываете в древнейшем форте Кабо де Рама (Kabo De Rama) и узнаете интересные легенды о Раме и Сите из великого эпоса Рамаяна, связанные с мысом Рамы. Поднимитесь на башню, откуда открывается восхитительный вид на бесконечную береговую линию.</p>
    <p>Мир создан для любви и гармонии с собой и окружающим миром. Вы обязательно убедитесь в этом, побывав здесь.</p>

    <div class="slider-exs marg-t-40">
        <div class="bxslider_exs_1">
            <div class="slider-exs__item">
                <img src="<?=SITE_TEMPLATE_PATH?>/img/files/img_9.jpg" alt="" />
            </div>

            <div class="slider-exs__item">
                <img src="<?=SITE_TEMPLATE_PATH?>/img/files/img_10.jpg" alt="" />
            </div>
        </div>

        <div class="slider-exs__open visible-adaptive-768">
            <div class="slider-exs__open-icon"><object type="image/svg+xml" data="<?=SITE_TEMPLATE_PATH?>/svg/faceless.svg">Your browser does not support SVGs</object></div>
            <a href="" class="slider-exs__open-text">Открыть галерею</a>
        </div>
    </div>

    <h3>Пляж Палолем</h3>
    <p>Один из самых красивых пляжей Гоа. Здесь вы найдете не только ласковое море, бесконечный белоснежный пляж, кокосовые пальмы у самой кромки моря, но и необычную очень уютную атмосферу. На лодке мы выйдем в море, полюбуемся дельфинами, доплывем до острова. Вы насладитесь красотой вокруг, бредя по нежнейшему песку.</p>

    <h3>Пляж Кола</h3>
    <p>Романтичный, удивительный, уединенный с нетронутой береговой линией и ,конечно, просто красивый, с лагуной, где можно погрузиться в спокойное море.</p>

    <h3>Форт Кабо де Рама</h3>
    <p>Одна из старейших крепостей в Гоа.<br />Форт Кабо де Рама имеет интересную историю. Мы обязательно расскажем вам, связаные с ним увлекательные легенды и вы почувствуете мистическую атмосферу мыса Рамы. В этих местах провели 14 лет в изгнании великий герой Рамаяны Рама и его жена Сита. Фортом владели индийские правители и мусульманские шахи, в 1763 году Кабо де Рама был захвачен португальцами. Часть крепости сохранилась, часть разрушена. Белоснежная церковь Святого Антониа (Santo Antonio) внутри форта, башни, большие пушки, колодец, в который подавалась горячая и холодная вода из природных источников, великолепный вид, открывающийся со стен крепости.</p>

    <div class="slider-exs marg-t-40">
        <div class="bxslider_exs_2">
            <div class="slider-exs__item">
                <img src="<?=SITE_TEMPLATE_PATH?>/img/files/img_10.jpg" alt="" />
            </div>

            <div class="slider-exs__item">
                <img src="<?=SITE_TEMPLATE_PATH?>/img/files/img_9.jpg" alt="" />
            </div>
        </div>

        <div class="slider-exs__open visible-adaptive-768">
            <div class="slider-exs__open-icon"><object type="image/svg+xml" data="<?=SITE_TEMPLATE_PATH?>/svg/faceless.svg">Your browser does not support SVGs</object></div>
            <a href="" class="slider-exs__open-text">Открыть галерею</a>
        </div>
    </div>

    <div class="right-side__share visible-adaptive-768">
        <div class="right-side__share-title">Поделиться:</div>
        <div class="right-side__share-body"><img src="<?=SITE_TEMPLATE_PATH?>/img/files/share.png" /></div>
    </div>

    <a href="" class="btn btn--big marg-t-50 marg-t-adaptive-none">Заказать экскурсию</a>
</div>

<div class="js-extab" data-tab="extab-programm" style="display: none;">
    <h2>Программа</h2>

    <div class="program-table">
        <div class="program-table__header">День 1</div>

        <div class="program-table__line">
            <div class="program-table__time">08.00</div>
            <div class="program-table__text">Отправление из отеля</div>
        </div>

        <div class="program-table__line">
            <div class="program-table__time">10.00</div>
            <div class="program-table__text">Прибытие на пляж Палолем</div>
        </div>

        <div class="program-table__line">
            <div class="program-table__time">10.30 - 12.00</div>
            <div class="program-table__text">Прогулка на лодке на остров Бабочек</div>
        </div>

        <div class="program-table__line">
            <div class="program-table__time">12.00 - 15.00</div>
            <div class="program-table__text">Обед и свободное время на пляже</div>
        </div>

        <div class="program-table__line">
            <div class="program-table__time">15.00</div>
            <div class="program-table__text">Отправление на пляж Кола (20 минут в пути)</div>
        </div>

        <div class="program-table__line">
            <div class="program-table__time">15.20 - 17.00</div>
            <div class="program-table__text">Свободное время на пляже Кола</div>
        </div>

        <div class="program-table__line">
            <div class="program-table__time">17.00</div>
            <div class="program-table__text">Отправление в форт Кабо де Рама</div>
        </div>

        <div class="program-table__line">
            <div class="program-table__time">17.15 - 18.30</div>
            <div class="program-table__text">Осмотр форта Кабо де Рама и встреча заката</div>
        </div>
    </div>

    <p>В экскурсию включено:<br />Трансфер на собственном транспорте с кондиционером, страховка, услуги русского гида, прогулка на лодке на остров.</p>
    <p>Продолжительность: c 8.00 до 20.30</p>
    <p>Время в пути: 2 часа</p>

    <h2>Стоимость</h2>
    <p>ЦЕНЫ на экскурсию, исходя из количества туристов в машине.<br />Все наши автомобили рассчитаны на 6-8 туристов + русский гид, миниавтобусы на 12 туристов + русский гид. Если Вы хотите большего комфорта, Вам следует выбрать размещение по 4 человека в автомобиле.</p>
    <p>Мы сами формируем группы. Вам достаточно сообщить день планируемой поездки и количество туристов в автомобиле, которое вас устроит.</p>
    <p>Вы можете заказать экскурсию непосредственно в Гоа по тел: +91 8888 70 40 05, +91 8888 71 79 22<br />либо воспользоваться формой заказа.</p>

    <ul>
        <li>Заказывая экскурсии на сайте, вы получаете 5% скидку</li>
        <li>Для детей до 12 лет действует скидка 50%</li>
        <li>Скидки и акции на экскурсии без русского гида не распространяются.</li>
        <li>Скидки по акциям не суммируются.</li>
    </ul>

    <h3>Для групп от 6 человек цены устанавливаются индивидуально на все экскурсии!</h3>

    <div class="price-table">
        <div class="price-table__line price-table--line-header">
            <div class="price-table__cell">
                <div class="price-table--big">6 - 12 человек</div>
                <div>за 1 человека</div>
            </div>
            <div class="price-table__cell">
                <div class="price-table--big">5 человек</div>
                <div>за 1 человека</div>
            </div>
        </div>

        <div class="price-table__body">
            <div class="price-table__line">
                <div class="price-table__cell">
                    <div class="price-table--middle">45$</div>
                </div>
                <div class="price-table__cell">
                    <div class="price-table--middle">50$</div>
                </div>
            </div>

            <div class="price-table__line">
                <div class="price-table__cell">
                    <div class="price-table--big">40$</div>
                    <div class="price-table--white">При заказе с сайта</div>
                </div>
                <div class="price-table__cell">
                    <div class="price-table--big">45$</div>
                    <div class="price-table--white">При заказе с сайта</div>
                </div>
            </div>

            <div class="price-table__line">
                <div class="price-table__cell">
                    <div class="price-table--middle">20$</div>
                    <div>Для детей от 12 лет</div>
                </div>
                <div class="price-table__cell">
                    <div class="price-table--middle">20$</div>
                    <div>Для детей от 12 лет</div>
                </div>
            </div>
        </div>
    </div>

    <p>Внимание! Теперь вы можете оплатить экскурсии банковскими картами, мы делаем все для вашего удобства.<br />Наличными мы принимаем деньги в любой валюте: доллары, евро, рупии, рубли.</p>

    <div class="right-side__cards center-adaptive-768">
        <div class="right-side__card"><img src="<?=SITE_TEMPLATE_PATH?>/img/card-visa.png" /></div>
        <div class="right-side__card"><img src="<?=SITE_TEMPLATE_PATH?>/img/card-mastercard.png" /></div>
        <div class="right-side__card"><img src="<?=SITE_TEMPLATE_PATH?>/img/card-maestro.png" /></div>
    </div>

    <a href="" class="btn btn--big marg-t-50 top-adaptive-768">Заказать экскурсию</a>
</div>

<div class="js-extab" data-tab="extab-reviews" style="display: none;">
    <div class="after-parent marg-b-30 center-adaptive-768">
        <div class="right col-adaptive-768"><a href="" class="btn">Добавить отзыв</a></div>
        <div class="left col-adaptive-768">
            <div class="vert-middle vert-middle--h-55">
                <div class="vert-middle__inner">
                    <div class="filter__result">Показано <span>3 отзыва</span></div>
                </div>
            </div>
        </div>
    </div>

    <div class="marg-b-40">
        <div class="review">
            <div class="review__title">
                <div class="review__name">Нина Сергеевна</div>
                <div class="review__date">21 ноября 2015</div>
            </div>
            <div class="review__text">Съездили на две двухдневные экскурсии от вас - в Хампи с Сергеем и в Биджапур с Еленой.<br />Это просто что-то с чем-то! Ещё ни разу мне не доводилось встречать таких классных гидов, которые смогли не только не испортить впечатление от столь волшебных мест (как это часто бывает на экскурсиях), но и сделать всё для того, чтобы захотелось снова вернуться в Индию, причём как можно раньше:)<br />Никогда не забуду эти замечательные 4 дня, которые стали настоящим праздником, и всё то прекрасное, что довелось увидеть! Всем будем вас рекомендовать...</div>
            <a href="" class="review__link">Читать полностью</a>
        </div>

        <div class="review review--reply marg-t-20">
            <div class="review__title">
                <div class="review__name">Твой Гоа</div>
                <div class="review__date">22 ноября 2015</div>
            </div>
            <div class="review__text">Спасибо за такой обширный отзыв. Но вы могли бы поинтересоваться у тех 2-х. Они были заранее предупреждены о невозможности поехать в Тибет, о том, что экскурсия возможна только в Хампи и озеро, на что согласились. Наверное, они тоже были вредными, и решили , а пусть все поедут в Тибет..И вы забыли уточнить, что вы ехали в 5-ом, а не в 6-м и цена при этом не поменялась. Ну и самое главное, про Хампи можно написать не одну книгу, а у вас.</div>
        </div>
    </div>

    <div class="marg-b-40">
        <div class="review">
            <div class="review__title">
                <div class="review__name">Андрей Батура</div>
                <div class="review__date">5 ноября 2015</div>
            </div>
            <div class="review__text">Мы только вчера верулись из ГОА, всё очень понравилось! Спасибо большое компании ТВОЙ ГОА, за организацию экскурсий, всё было организовано на высочайшем уровне. Экскурсии очень интересные, оромное спасибо всем гидам с которыми мы ездили, они профессионалы в своём деле, отвечают на любые вопросы, расказывают очень интересные истории, экскурсии проходили весело, видно что любят свою работу.</div>

            <div class="row row--padd30 marg-t-50">
                <div class="row__inner">
                    <div class="col-12-3">
                        <div class="review__gallery-img marg-b-30">
                            <img src="<?=SITE_TEMPLATE_PATH?>/img/files/img_8.jpg" alt="">
                            <div class="review__gallery-open">
                                <div class="vert-middle"><div class="vert-middle__inner">
                                        <object type="image/svg+xml" data="<?=SITE_TEMPLATE_PATH?>/svg/faceless.svg">Your browser does not support SVGs</object></div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-12-3">
                        <div class="review__gallery-img marg-b-30">
                            <img src="<?=SITE_TEMPLATE_PATH?>/img/files/img_8.jpg" alt="">
                            <div class="review__gallery-open">
                                <div class="vert-middle"><div class="vert-middle__inner">
                                        <object type="image/svg+xml" data="<?=SITE_TEMPLATE_PATH?>/svg/faceless.svg">Your browser does not support SVGs</object></div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-12-3">
                        <div class="review__gallery-img marg-b-30">
                            <img src="<?=SITE_TEMPLATE_PATH?>/img/files/img_8.jpg" alt="">
                            <div class="review__gallery-open">
                                <div class="vert-middle"><div class="vert-middle__inner">
                                        <object type="image/svg+xml" data="<?=SITE_TEMPLATE_PATH?>/svg/faceless.svg">Your browser does not support SVGs</object></div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-12-3">
                        <div class="review__gallery-img marg-b-30">
                            <img src="<?=SITE_TEMPLATE_PATH?>/img/files/img_8.jpg" alt="">
                            <div class="review__gallery-open">
                                <div class="vert-middle"><div class="vert-middle__inner">
                                        <object type="image/svg+xml" data="<?=SITE_TEMPLATE_PATH?>/svg/faceless.svg">Your browser does not support SVGs</object></div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-12-3">
                        <div class="review__gallery-img marg-b-30">
                            <img src="<?=SITE_TEMPLATE_PATH?>/img/files/img_8.jpg" alt="">
                            <div class="review__gallery-open">
                                <div class="vert-middle"><div class="vert-middle__inner">
                                        <object type="image/svg+xml" data="<?=SITE_TEMPLATE_PATH?>/svg/faceless.svg">Your browser does not support SVGs</object></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="marg-b-40">
        <div class="review">
            <div class="review__title">
                <div class="review__name">Инокентий Иванов</div>
                <div class="review__date">5 ноября 2015</div>
            </div>
            <div class="review__text">Мы только вчера верулись из ГОА, всё очень понравилось! Спасибо большое компании ТВОЙ ГОА, за организацию экскурсий, всё было организовано на высочайшем уровне. Экскурсии очень интересные, оромное спасибо всем гидам с которыми мы ездили, они профессионалы в своём деле, отвечают на любые вопросы, расказывают очень интересные истории, экскурсии проходили весело, видно что любят свою работу.</div>
        </div>
    </div>

    <div class="after-parent marg-t-50 center-adaptive-768">
        <a href="" class="btn btn--big left">Заказать экскурсию</a>
        <div class="right col-adaptive-768 top-adaptive-768-h15"><a href="" class="btn">Добавить отзыв</a></div>
    </div>
</div>

<div class="js-extab" data-tab="extab-order" style="display: none;">
    <p>Пожалуйста, обращайте внимание на правильность заполнения полей Емейл и Телефон. Если эти данные будут введены неверно, мы не сможем связаться с вами.</p>

    <form action="" method="post" name="">
        <div class="form form--yellow form--w670">
            <div class="form__wrap marg-b-15">
                <label for="label-date" class="form__title">Ориентировочная дата*</label>
                <div class="form__field form--field-date">
                    <input id="label-date" placeholder="" name="" value="20 ноября 2015" type="text" class="form__input" />
                    <div class="form__icon"><object type="image/svg+xml" data="<?=SITE_TEMPLATE_PATH?>/svg/faceless.svg">Your browser does not support SVGs</object></div>
                </div>
            </div>

            <div class="form__wrap marg-b-15">
                <label for="label-hotel" class="form__title">Название отеля</label>
                <div class="form__field"><input id="label-hotel" placeholder="" name="" value="" type="text" class="form__input" /></div>
            </div>

            <div class="form__wrap marg-b-15">
                <label for="label-counter" class="form__title">Количество людей*</label>
                <div class="form__field">
                    <div class="form__counter">
                        <div class="form__counter-btn form--counter-minus"><object type="image/svg+xml" data="<?=SITE_TEMPLATE_PATH?>/svg/faceless.svg">Your browser does not support SVGs</object></div>
                        <input id="label-counter" placeholder="" name="" value="1" type="text" class="form__input form--input-counter" />
                        <div class="form__counter-btn form--counter-plus"><object type="image/svg+xml" data="<?=SITE_TEMPLATE_PATH?>/svg/faceless.svg">Your browser does not support SVGs</object></div>
                    </div>
                </div>
            </div>

            <div class="form__wrap marg-b-15">
                <label for="label-name" class="form__title">Имя*</label>
                <div class="form__field"><input id="label-name" placeholder="" name="" value="" type="text" class="form__input" /></div>
            </div>

            <div class="form__wrap marg-b-15">
                <label for="label-email" class="form__title">Email*</label>
                <div class="form__field"><input id="label-email" placeholder="" name="" value="" type="text" class="form__input" /></div>
            </div>

            <div class="form__wrap marg-b-15">
                <label for="label-phone" class="form__title">Телефон*</label>
                <div class="form__field"><input id="label-phone" placeholder="" name="" value="" type="text" class="form__input" /></div>
            </div>

            <div class="form__wrap marg-b-15">
                <label for="label-info" class="form__title">Дополнительная информация</label>
                <div class="form__field"><textarea id="label-info" class="form__textarea"></textarea></div>
            </div>

            <div class="form__wrap">
                <div class="form__title visible-adaptive-768">&nbsp;</div>
                <div class="form__field pos-right"><button type="submit" name="" class="btn col-adaptive-768">Заказать</button></div>
            </div>
        </div>
    </form>
</div>

<?php require($_SERVER["DOCUMENT_ROOT"]."/bitrix/footer.php");?>
