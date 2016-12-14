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

<div class="modal-order hidden" id="modal-order">
    <div class="modal-close"></div>
    <h1 class="modal-order__header">Спасибо за Ваш заказ!</h1>
    <p class="modal-order__text">В ближайшее время на Вашу почту должно поступить автоматическое уведомление с деталями Вашего заказа.</p>
    <p class="modal-order__text">Если по какой-то причине Вы не получите емейл - просим связаться с нами любым удобным для Вас способом, т.к., вероятно, при вводе емейл адреса была допущена ошибка.</p>
    <p class="modal-order__text"></p>
    <a href="#" class="modal-close__link">OK</a>

</div>

<form action="" method="post" name="orderForm" enctype="multipart/form-data">

    <div class="form__header"></div>

    <div class="form form--yellow form--w670">

        <? if ( $arParams["TOUR_DETAIL"] == "Y" ) { ?>
            <input type="hidden" name="<?=OrderHelper::FORM_ADD_FIELD_TOUR_ID_NAME?>" value="<?=$arParams["TOUR_ID"]?>">
            <input type="hidden" name="<?=OrderHelper::FORM_ADD_FIELD_ORDER_ENTITY_NAME?>" value="<?=OrderHelper::FORM_ADD_FIELD_ORDER_ENTITY_TOUR_VALUE_ID?>">
        <? } else {?>
            <div class="form__wrap marg-b-15">
                <label for="service-list" class="form__title">Что заказываем</label>
                <label class="form__field select">
                    <select name="<?=OrderHelper::FORM_ADD_FIELD_ORDER_ENTITY_NAME?>" id="service-list" class="form__input">
                        <?foreach ( getEnumValues(ORDER_IBOCK_ID, "ORDER_ENTITY") as $id => $data ){?>
                            <option value="<?=$id?>" data-js_value="<?=$data["XML_ID"]?>"><?=$data["NAME"]?></option>
                        <?}?>
                    </select>
                </label>
            </div>

            <div class="form__wrap marg-b-15 form__exhib-select">
                <label for="excursions-list" class="form__title">Выберите экскурсию</label>
                <label class="form__field select">
                    <select name="<?=OrderHelper::FORM_ADD_FIELD_TOUR_ID_NAME?>" id="excursions-list" class="form__input">
                        <?foreach ( HLReviewModel::getAllToursInfo(true) as $id => $tour ){?>
                            <option value="<?=$id?>"><?=$tour["NAME"]?></option>
                        <?}?>
                    </select>
                </label>
            </div>
        <? } ?>


        <div class="form__wrap marg-b-15 hidden">
            <label for="celebration-type" class="form__title">Тип праздника</label>
            <label class="form__field select">
                <select name="<?=OrderHelper::FORM_ADD_FIELD_EVENT_TYPE_NAME?>" id="celebration-type" class="form__input" disabled>
                    <?foreach ( getEnumValues(ORDER_IBOCK_ID, "EVENT_TYPE") as $id => $data ){?>
                        <option value="<?=$id?>" data-js_value="<?=$data["XML_ID"]?>"><?=$data["NAME"]?></option>
                    <?}?>
                </select>
            </label>
        </div>

        <div class="form__wrap marg-b-15 hidden">
            <label for="place-rent" class="form__title">Тип жилья</label>
            <label class="form__field select">
                <select name="<?=OrderHelper::FORM_ADD_FIELD_HOUSE_TYPE_NAME?>" id="place-rent" class="form__input" disabled>
                    <?foreach ( getEnumValues(ORDER_IBOCK_ID, "HOUSE_TYPE") as $id => $data ){?>
                        <option value="<?=$id?>" data-js_value="<?=$data["XML_ID"]?>"><?=$data["NAME"]?></option>
                    <?}?>
                </select>
            </label>
        </div>

        <div class="form__wrap marg-b-15">
            <label for="label-date" class="form__title">Ориентировочная дата*</label>
            <div class="form__field form--field-date form--icon form--icon-date">
                <input id="label-date" placeholder="" name="<?=OrderHelper::FORM_ADD_FIELD_DATE_NAME?>" value="" type="date" class="form__input js-datepicker-after" required />
            </div>
        </div>



        <div class="form__wrap marg-b-15 hidden">
            <label for="label-beach" class="form__title">Пляж (место)</label>
            <div class="form__field"><input id="label-beach" placeholder="" name="<?=OrderHelper::FORM_ADD_FIELD_HOUSE_PLACE_NAME?>" value="" type="text" class="form__input" /></div>
        </div>

        <div class="form__wrap marg-b-15 hidden">
            <label for="label-direction" class="form__title">Направление</label>
            <div class="form__field"><input id="label-direction" placeholder="" name="<?=OrderHelper::FORM_ADD_FIELD_DIRECTION_NAME?>" value="" type="text" class="form__input" /></div>
        </div>



        <div class="form__wrap marg-b-15">
            <label for="label-hotel" class="form__title">Название отеля и № комнаты</label>
            <div class="form__field"><input id="label-hotel" placeholder="" name="<?=OrderHelper::FORM_ADD_FIELD_HOTEL_NAME_NAME?>" value="" type="text" class="form__input" /></div>
        </div>

        <div class="form__wrap marg-b-15">
            <label for="label-counter" class="form__title">Количество людей*</label>
            <div class="form__field">
                <div class="form__counter">
                    <div class="form__counter-btn form--counter-minus"></div>
                    <input id="label-counter" placeholder="" name="<?=OrderHelper::FORM_ADD_FIELD_PEOPLE_COUNT_NAME?>" value="1" type="text" class="form__input form--input-counter" readonly />
                    <div class="form__counter-btn form--counter-plus"></div>
                </div>
            </div>
        </div>

        <div class="form__wrap marg-b-15">
            <label for="label-name" class="form__title">Имя*</label>
            <div class="form__field"><input id="label-name" placeholder="" name="<?=OrderHelper::FORM_ADD_FIELD_USER_NAME_NAME?>" value="" type="text" class="form__input" required /></div>
        </div>

        <div class="form__wrap marg-b-15">
            <label for="label-email" class="form__title">Email*</label>
            <div class="form__field"><input id="label-email" placeholder="" name="<?=OrderHelper::FORM_ADD_FIELD_USER_EMAIL_NAME?>" value="" type="email" class="form__input" required /></div>
        </div>

        <div class="form__wrap marg-b-15">
            <label for="label-phone" class="form__title">Телефон*</label>
            <div class="form__field"><input id="label-phone" placeholder="+7(999)999-99-99" name="<?=OrderHelper::FORM_ADD_FIELD_USER_PHONE_NAME?>" value="" type="tel" class="form__input" pattern="(\+?\d[- . \( \)]*){7,15}" required /></div>
        </div>

        <div class="form__wrap marg-b-15">
            <label for="viber-phone" class="form__title">Viber, WhatsApp</label>
            <div class="form__field">
                <input id="viberphone" placeholder="+7(999)999-99-99" name="<?=OrderHelper::FORM_ADD_FIELD_VIBER_NAME?>" value="" type="tel" class="form__input" pattern="(\+?\d[- . \( \)]*){7,15}" />
                <div class="form--title-viber">
                    совпадает с основным телефоном <input id="viber-phone" name="close" value="yes" type="checkbox" class="form__viber-real" />
                </div>

            </div>

        </div>

        <div class="form__wrap marg-b-15">
            <label for="label-info" class="form__title">Дополнительная информация</label>
            <div class="form__field"><textarea id="label-info" name="<?=OrderHelper::FORM_ADD_FIELD_COMMENT_NAME?>" class="form__textarea"></textarea></div>
        </div>

        <div class="form__wrap">
            <div class="form__title visible-adaptive-768">&nbsp;</div>
            <div class="form__field pos-right"><button type="submit" name="" class="btn col-adaptive-768">Заказать</button></div>
        </div>
    </div>
</form>
