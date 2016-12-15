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
  <?=$arResult["ITEM"]["DETAIL_TEXT"]?>

  <?if(!empty($arResult["ITEM"]["GALLERY"]["ITEMS"])):?>
    <div class="slider-exs marg-t-40">
      <div class="bxslider_exs_2">
        <?foreach($arResult["ITEM"]["GALLERY"]["ITEMS"] as $photo):?>
        <div class="slider-exs__item">
          <img src="<?=$photo["URL"]?>" alt="<?=$photo["NAME"]?>" />
        </div>
        <?endforeach;?>
      </div>

      <div class="slider-exs__open visible-adaptive-768">
        <div class="slider-exs__open-icon"><object type="image/svg+xml" data="<?=SITE_TEMPLATE_PATH?>/svg/faceless.svg">Your browser does not support SVGs</object></div>
        <a href="<?=$arResult["ITEM"]["GALLERY"]["URL"]?>" class="slider-exs__open-text">Открыть галерею</a>
      </div>
    </div>
  <?endif;?>

  <div class="right-side__share visible-adaptive-768">
    <div class="right-side__share-title">Поделиться:</div>
    <div class="right-side__share-body">
      <script async="async" src="//yastatic.net/share2/share.js"></script>
      <div class="ya-share2" data-services="vkontakte,facebook,odnoklassniki,gplus,twitter,viber,whatsapp,telegram" data-counter=""></div>
    </div>
  </div>

  <div class="btn btn--big marg-t-50 marg-t-adaptive-none js-excursion-order">Заказать экскурсию</div>
</div>

<div class="js-extab" data-tab="extab-programm" style="display: none;">
  <?if(!empty($arResult["ITEM"]["PROP_PROGRAM"]["TEXT"])):?>
    <h2>Программа</h2>
    <?=$arResult["ITEM"]["PROP_PROGRAM"]["TEXT"]?>
  <?endif;?>


  <?if(!empty($arResult["ITEM"]["PROP_PRICE"]["TEXT"])):?>
    <h2>Стоимость</h2>
    <?=$arResult["ITEM"]["PROP_PRICE"]["TEXT"]?>
  <?endif;?>

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
      "CACHE_TYPE" => "N",
      "COMPONENT_TEMPLATE" => "tour_detail_page",
      "TOUR_ID" => $arResult["ITEM"]["ID"],
      "PER_PAGE" => "10",
      "REVIEWS_PAGE_NUM" => ""
    ),
    $component
  );
?>
</div>

<div class="js-extab" data-tab="extab-order" style="display: none;">
  <p>Пожалуйста, обращайте внимание на правильность заполнения полей Емейл и Телефон. Если эти данные будут введены неверно, мы не сможем связаться с вами.</p>

    <?$APPLICATION->IncludeComponent(
        "goa:order_form",
        "",
        array(
            "CACHE_TYPE" => "N",
            "TOUR_DETAIL" => "Y",
            "TOUR_ID" => $arResult["ITEM"]["ID"],
        ),
        $component
    );
    ?>
</div>