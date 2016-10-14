<? if ( !defined( "B_PROLOG_INCLUDED" ) || B_PROLOG_INCLUDED !== true )
    die();
/** @var array $arParams */
/** @var array $arResult */
/** @global CMain $APPLICATION */
/** @global CUser $USER */
/** @global CDatabase $DB */
/** @var CBitrixComponentTemplate $this */
/** @var string $templateName */
/** @var string $templateFile */
/** @var string $templateFolder */
/** @var string $componentPath */
/** @var CBitrixComponent $component */

//$this->setFrameMode( true );
?>

<div class="filter">
    <div class="filter__option">
        <div class="filter__grey marg-b-20">
            <div class="filter__select-title">Показать отзывы по экскурсии:</div>
            <div class="filter__select">
                <div class="pseudo-select pseudo-select--multiple">
                    <div class="pseudo-select__text">Все экскурсии</div>
                    <div class="pseudo-select__wrap scroll-pane">
                        <ul class="pseudo-select__list">
                            <li class="pseudo-select__option" data-value="1">Отдых на пляжах Палолем, Кола и старинный форт Кабо де Рама</li>
                            <li class="pseudo-select__option" data-value="2">Отдых на пляжах Палолем, Кола и старинный форт Кабо де Рама</li>
                            <li class="pseudo-select__option" data-value="3">Весь ГОА за 1 день</li>
                            <li class="pseudo-select__option" data-value="4">Отдых на пляжах Палолем, Кола и старинный форт Кабо де Рама</li>
                            <li class="pseudo-select__option" data-value="5">Отдых на пляжах Палолем, Кола и старинный форт Кабо де Рама</li>
                        </ul>
                    </div>
                    <select name="" class="pseudo-select__real" id="label-review-ex" multiple="multiple">
                        <option value="1">Отдых на пляжах Палолем, Кола и старинный форт Кабо де Рама</option>
                        <option value="2">Отдых на пляжах Палолем, Кола и старинный форт Кабо де Рама</option>
                        <option value="3">Весь ГОА за 1 день</option>
                        <option value="4">Отдых на пляжах Палолем, Кола и старинный форт Кабо де Рама</option>
                        <option value="5">Отдых на пляжах Палолем, Кола и старинный форт Кабо де Рама</option>
                    </select>
                </div>
            </div>
        </div>

        <div class="filter__option-title">Выбрано:</div>
        <div class="filter__option-body">
            <div class="filter__option-item">
                <div class="filter__option-name">Отдых на пляжах Палолем, Кола и старинный форт Кабо де Рама</div>
            </div>

            <div class="filter__option-item">
                <div class="filter__option-name">Весь ГОА за один день</div>
            </div>
        </div>
    </div>

    <div class="filter__clear marg-t-20">
        <div class="filter__clear-text">Сбросить все</div>
    </div>

    <div class="after-parent marg-b-30 marg-t-40 center-adaptive-768">
        <div class="right col-adaptive-768"><a href="" class="btn openmodal" data-id="modal-review">Добавить отзыв</a></div>
        <div class="left col-adaptive-768">
            <div class="vert-middle vert-middle--h-55">
                <div class="vert-middle__inner">
                    <div class="filter__result">Показано <span>3 отзыва</span></div>
                </div>
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
        <div class="review__exs">
            <div class="review__exs-title">Экскурсии:</div>
            <div class="review__exs-body">
                <div class="review__exs-item">
                    <div class="review__exs-name">Отдых на пляжах Палолем, Кола и старинный форт Кабо де Рама</div>
                    <a href="" class="review__exs-link">Все отзывы об этой экскурсии</a>
                </div>

                <div class="review__exs-item">
                    <div class="review__exs-name">Весь ГОА за один день</div>
                    <a href="" class="review__exs-link">Все отзывы об этой экскурсии</a>
                </div>
            </div>
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
        <div class="review__exs">
            <div class="review__exs-title">Экскурсии:</div>
            <div class="review__exs-body">
                <div class="review__exs-item">
                    <div class="review__exs-name">Отдых на пляжах Палолем, Кола и старинный форт Кабо де Рама</div>
                    <a href="" class="review__exs-link">Все отзывы об этой экскурсии</a>
                </div>
            </div>
        </div>
        <div class="review__text">Мы только вчера верулись из ГОА, всё очень понравилось! Спасибо большое компании ТВОЙ ГОА, за организацию экскурсий, всё было организовано на высочайшем уровне. Экскурсии очень интересные, оромное спасибо всем гидам с которыми мы ездили, они профессионалы в своём деле, отвечают на любые вопросы, расказывают очень интересные истории, экскурсии проходили весело, видно что любят свою работу.</div>

        <div class="row row--padd30 marg-t-50">
            <div class="row__inner">
                <div class="col-12-3">
                    <div class="review__gallery-img marg-b-30">
                        <img src="<?=SITE_TEMPLATE_PATH?>/img/files/img_8.jpg" alt="">
                        <div class="review__gallery-open"></div>
                    </div>
                </div>

                <div class="col-12-3">
                    <div class="review__gallery-img marg-b-30">
                        <img src="<?=SITE_TEMPLATE_PATH?>/img/files/img_8.jpg" alt="">
                        <div class="review__gallery-open"></div>
                    </div>
                </div>

                <div class="col-12-3">
                    <div class="review__gallery-img marg-b-30">
                        <img src="<?=SITE_TEMPLATE_PATH?>/img/files/img_8.jpg" alt="">
                        <div class="review__gallery-open"></div>
                    </div>
                </div>

                <div class="col-12-3">
                    <div class="review__gallery-img marg-b-30">
                        <img src="<?=SITE_TEMPLATE_PATH?>/img/files/img_8.jpg" alt="">
                        <div class="review__gallery-open"></div>
                    </div>
                </div>

                <div class="col-12-3">
                    <div class="review__gallery-img marg-b-30">
                        <img src="<?=SITE_TEMPLATE_PATH?>/img/files/img_8.jpg" alt="">
                        <div class="review__gallery-open"></div>
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
        <div class="review__exs">
            <div class="review__exs-title">Экскурсии:</div>
            <div class="review__exs-body">
                <div class="review__exs-item">
                    <div class="review__exs-name">Отдых на пляжах Палолем, Кола и старинный форт Кабо де Рама</div>
                    <a href="" class="review__exs-link">Все отзывы об этой экскурсии</a>
                </div>
            </div>
        </div>
        <div class="review__text">Мы только вчера верулись из ГОА, всё очень понравилось! Спасибо большое компании ТВОЙ ГОА, за организацию экскурсий, всё было организовано на высочайшем уровне. Экскурсии очень интересные, оромное спасибо всем гидам с которыми мы ездили, они профессионалы в своём деле, отвечают на любые вопросы, расказывают очень интересные истории, экскурсии проходили весело, видно что любят свою работу.</div>
    </div>
</div>

<div class="pos-center">
    <a href="" class="btn">Показать еще</a>
</div>

<div class="modal-window" id="modal-review">
    <div class="modal-window__body">
        <form action="" method="post" name="">
            <div class="form form--grey form--w670 form--center">
                <div class="form__header">Добавление отзыва</div>
                <div class="marg-b-15">
                    <div class="form__wrap">
                        <label for="label-review-ex" class="form__title">Экскурсия</label>
                        <div class="form__field">
                            <div class="pseudo-select">
                                <div class="pseudo-select__text">Выберите экскурсию</div>
                                <div class="pseudo-select__wrap scroll-pane">
                                    <ul class="pseudo-select__list">
                                        <li class="pseudo-select__option" data-value="1">Отдых на пляжах Палолем, Кола и старинный форт Кабо де Рама</li>
                                        <li class="pseudo-select__option" data-value="2">Отдых на пляжах Палолем, Кола и старинный форт Кабо де Рама</li>
                                        <li class="pseudo-select__option" data-value="3">Весь ГОА за 1 день</li>
                                        <li class="pseudo-select__option" data-value="4">Отдых на пляжах Палолем, Кола и старинный форт Кабо де Рама</li>
                                        <li class="pseudo-select__option" data-value="5">Отдых на пляжах Палолем, Кола и старинный форт Кабо де Рама</li>
                                    </ul>
                                </div>
                                <select name="" class="pseudo-select__real" id="label-review-ex">
                                    <option value="1">Отдых на пляжах Палолем, Кола и старинный форт Кабо де Рама</option>
                                    <option value="2">Отдых на пляжах Палолем, Кола и старинный форт Кабо де Рама</option>
                                    <option value="3">Весь ГОА за 1 день</option>
                                    <option value="4">Отдых на пляжах Палолем, Кола и старинный форт Кабо де Рама</option>
                                    <option value="5">Отдых на пляжах Палолем, Кола и старинный форт Кабо де Рама</option>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="marg-b-15">
                    <div class="form__wrap">
                        <label for="label-review-name" class="form__title">Представьтесь, пожалуйста</label>
                        <div class="form__field"><input id="label-review-name" placeholder="" name="" value="" type="text" class="form__input" /></div>
                    </div>
                </div>

                <div class="marg-b-15">
                    <div class="form__wrap">
                        <label for="label-review-soc" class="form__title">Профиль Вконтакте или Facebook</label>
                        <div class="form__field"><input id="label-review-soc" placeholder="" name="" value="" type="text" class="form__input" /></div>
                    </div>
                </div>

                <div class="marg-b-15">
                    <div class="form__wrap">
                        <label for="label-review-text" class="form__title">Текст отзыва</label>
                        <div class="form__field"><textarea id="label-review-text" class="form__textarea"></textarea></div>
                    </div>
                </div>

                <div class="marg-b-15">
                    <div class="form__wrap">
                        <div class="form__title">При желании вы можете прикрепить к отзыву несколько фото</div>
                        <div class="form__field">
                            <div class="form__file">
                                <div class="form__file-icon"><object type="image/svg+xml" data="<?=SITE_TEMPLATE_PATH?>/svg/faceless.svg">Your browser does not support SVGs</object></div>
                                <div class="form__file-text">Перетащите фото сюда или нажмите для выбора на компьютере</div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="form__wrap">
                    <div class="form__title visible-adaptive-768">&nbsp;</div>
                    <div class="form__field pos-right"><button type="submit" name="" class="btn col-adaptive-768">Отправить</button></div>
                </div>
            </div>
        </form>
    </div>
</div>
