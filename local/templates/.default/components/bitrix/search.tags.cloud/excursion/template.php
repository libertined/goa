<?if(!defined("B_PROLOG_INCLUDED") || B_PROLOG_INCLUDED!==true)die();
$this->setFrameMode(true);
?>
<div class="filter">
  <div class="filter__categories">
    <?foreach($arResult["SEARCH"] as $tag):?>
      <?if($tag["ACTIVE"] == "Y"):?>
        <div class="filter__category-item filter--category-active">
          <?=$tag["NAME"]?> (<?=$tag["CNT"]?>)
          <div class="filter__category-close"><object type="image/svg+xml" data="<?=SITE_TEMPLATE_PATH?>/svg/cross-13x13.svg">Your browser does not support SVGs</object></div>
        </div>
      <?else:?>
      <a href="<?=$tag["URL"]?>" class="filter__category-item"><?=$tag["NAME"]?> (<?=$tag["CNT"]?>)</a>
      <?endif;?>
    <?endforeach;?>
  </div>
  <div class="filter__result marg-t-40 marg-b-20"></div>
</div>