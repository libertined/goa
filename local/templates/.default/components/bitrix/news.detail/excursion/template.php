<?if(!defined("B_PROLOG_INCLUDED") || B_PROLOG_INCLUDED!==true)die();
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
$this->setFrameMode(true);
?>
<div class="tabs marg-b-40">
  <ul class="tabs__list">
    <li class="tabs__item tabs--item-active"><a href="#1" class="tabs__item-link tabs--item-link-description js-extab-btn" data-tab="extab-description"><span>Описание</span></a></li>
    <li class="tabs__item"><a href="#2" class="tabs__item-link tabs--item-link-programm js-extab-btn" data-tab="extab-programm"><span>Программа и стоимость</span></a></li>
    <li class="tabs__item"><a href="#3" class="tabs__item-link tabs--item-link-reviews js-extab-btn" data-tab="extab-reviews"><span>Отзывы</span></a></li>
    <li class="tabs__item"><a href="#4" class="tabs__item-link tabs--item-link-order js-extab-btn js-extab-order" data-tab="extab-order"><span>Заказ</span></a></li>
  </ul>
</div>

<div class="js-extab" data-tab="extab-description">
  <?=$arResult["DETAIL_TEXT"]?>
  <?if(!empty($arResult["GALLERY"]["ITEMS"])):?>
    <div class="slider-exs marg-t-40">
      <div class="bxslider_exs_2">
        <?foreach($arResult["GALLERY"]["ITEMS"] as $photo):?>
        <div class="slider-exs__item">
          <img src="<?=$photo["URL"]?>" alt="<?=$photo["NAME"]?>" />
        </div>
        <?endforeach;?>
      </div>

      <div class="slider-exs__open visible-adaptive-768">
        <div class="slider-exs__open-icon"><object type="image/svg+xml" data="<?=SITE_TEMPLATE_PATH?>/svg/faceless.svg">Your browser does not support SVGs</object></div>
        <a href="<?=$arResult["GALLERY"]["URL"]?>" class="slider-exs__open-text">Открыть галерею</a>
      </div>
    </div>
  <?endif;?>

  <div class="right-side__share visible-adaptive-768">
    <div class="right-side__share-title">Поделиться:</div>
    <div class="right-side__share-body"><img src="<?=SITE_TEMPLATE_PATH?>/img/files/share.png" /></div>
  </div>

  <div class="btn btn--big marg-t-50 marg-t-adaptive-none js-excursion-order">Заказать экскурсию</div>
</div>

<div class="js-extab" data-tab="extab-programm" style="display: none;">
  <h2>Программа</h2>
  <?=$arResult["DISPLAY_PROPERTIES"]["PROGRAM"]["DISPLAY_VALUE"]?>

  <h2>Стоимость</h2>
  <?=$arResult["DISPLAY_PROPERTIES"]["PRICE"]["DISPLAY_VALUE"]?>

  <p>Внимание! Теперь вы можете оплатить экскурсии банковскими картами, мы делаем все для вашего удобства.<br />Наличными мы принимаем деньги в любой валюте: доллары, евро, рупии, рубли.</p>

  <div class="right-side__cards center-adaptive-768">
    <div class="right-side__card"><img src="<?=SITE_TEMPLATE_PATH?>/img/card-visa.png" /></div>
    <div class="right-side__card"><img src="<?=SITE_TEMPLATE_PATH?>/img/card-mastercard.png" /></div>
    <div class="right-side__card"><img src="<?=SITE_TEMPLATE_PATH?>/img/card-maestro.png" /></div>
  </div>

  <div class="btn btn--big marg-t-50 top-adaptive-768 js-excursion-order">Заказать экскурсию</div>
</div>

<div class="js-extab" data-tab="extab-reviews" style="display: none;">

  <?$APPLICATION->IncludeComponent(
    "goa:reviews",
    "tour_detail_page",
    array(
      "CACHE_TYPE" => "A",
      "CACHE_TIME" => "3600",
      "COMPONENT_TEMPLATE" => "tour_detail_page",
      "TOUR_ID" => "15",
      "PER_PAGE" => "1",
      "REVIEWS_PAGE_NUM" => ""
    ),
    false
  );
  ?>
</div>

<div class="js-extab" data-tab="extab-order" style="display: none;">
  <p>Пожалуйста, обращайте внимание на правильность заполнения полей Емейл и Телефон. Если эти данные будут введены неверно, мы не сможем связаться с вами.</p>

  <form action="" method="post" name="">
    <div class="form form--yellow form--w670">
      <div class="form__wrap marg-b-15">
        <label for="label-date" class="form__title">Ориентировочная дата*</label>
        <div class="form__field form--field-date form--icon form--icon-date">
          <input id="label-date" placeholder="" name="" value="20 ноября 2015" type="date" class="form__input js-datepicker-after" />
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
            <div class="form__counter-btn form--counter-minus"></div>
            <input id="label-counter" placeholder="" name="" value="1" type="text" class="form__input form--input-counter" readonly />
            <div class="form__counter-btn form--counter-plus"></div>
          </div>
        </div>
      </div>

      <div class="form__wrap marg-b-15">
        <label for="label-name" class="form__title">Имя*</label>
        <div class="form__field"><input id="label-name" placeholder="" name="" value="" type="text" class="form__input" /></div>
      </div>

      <div class="form__wrap marg-b-15">
        <label for="label-email" class="form__title">Email*</label>
        <div class="form__field"><input id="label-email" placeholder="" name="" value="" type="email" class="form__input" /></div>
      </div>

      <div class="form__wrap marg-b-15">
        <label for="label-phone" class="form__title">Телефон*</label>
        <div class="form__field"><input id="label-phone" placeholder="" name="" value="" type="tel" class="form__input request-phone" /></div>
      </div>

      <div class="form__wrap marg-b-15 center-adaptive-768">
        <div class="form__title form--title-viber">
          Viber, WhatsApp совпадает с телефоном
          <input name="close" value="yes" type="checkbox" class="form__viber-real" />
        </div>
        <div class="form__field"><input placeholder="" name="" value="" type="text" class="form__input" /></div>
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