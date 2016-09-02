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

<div class="right-side__top5-wrap">
  <div class="row row--padd30">
    <div class="row__inner">
      <div class="col-12-5 col-adaptive-768">
        <a href="<?=$arResult["ITEMS"][0]["DETAIL_PAGE_URL"]?>" class="right-side__top5">
          <div class="right-side__top5-hover-wrap">
            <div class="vert-middle">
              <div class="vert-middle__inner">
                <div class="right-side__top5-hover">Весь гоа за один день</div>
              </div>
            </div>
          </div>
          <img src="<?=$arResult["ITEMS"][0]["PREVIEW_PICTURE"]["SRC"]?>" alt="" />
        </a>
      </div>
      <div class="col-12-7 col-adaptive-768">
        <a href="<?=$arResult["ITEMS"][1]["DETAIL_PAGE_URL"]?>" class="right-side__top5">
          <div class="right-side__top5-hover-wrap">
            <div class="vert-middle">
              <div class="vert-middle__inner">
                <div class="right-side__top5-hover">Биджапур</div>
              </div>
            </div>
          </div>
          <img src="<?=$arResult["ITEMS"][1]["PREVIEW_PICTURE"]["SRC"]?>" alt="" />
        </a>
        <div class="right-side__top5-pos">
          <div class="row row--padd30">
            <div class="row__inner">
              <div class="col-12-5 visible-adaptive-768">&nbsp;</div>
              <div class="col-12-7 col-adaptive-768">
                <div class="row row--padd10">
                  <div class="row__inner">
                    <div class="col-12-4 col-adaptive-768">
                      <a href="<?=$arResult["ITEMS"][2]["DETAIL_PAGE_URL"]?>" class="right-side__top5">
                        <div class="right-side__top5-hover-wrap">
                          <div class="vert-middle">
                            <div class="vert-middle__inner">
                              <div class="right-side__top5-hover">Биджапур</div>
                            </div>
                          </div>
                        </div>
                        <img src="<?=$arResult["ITEMS"][2]["PREVIEW_PICTURE"]["SRC"]?>" alt="" />
                      </a>
                    </div>
                    <div class="col-12-4 col-adaptive-768">
                      <a href="<?=$arResult["ITEMS"][3]["DETAIL_PAGE_URL"]?>" class="right-side__top5">
                        <div class="right-side__top5-hover-wrap">
                          <div class="vert-middle">
                            <div class="vert-middle__inner">
                              <div class="right-side__top5-hover">Биджапур</div>
                            </div>
                          </div>
                        </div>
                        <img src="<?=$arResult["ITEMS"][3]["PREVIEW_PICTURE"]["SRC"]?>" alt="" />
                      </a>
                    </div>
                    <div class="col-12-4 col-adaptive-768">
                      <a href="<?=$arResult["ITEMS"][4]["DETAIL_PAGE_URL"]?>" class="right-side__top5">
                        <div class="right-side__top5-hover-wrap">
                          <div class="vert-middle">
                            <div class="vert-middle__inner">
                              <div class="right-side__top5-hover">Биджапур</div>
                            </div>
                          </div>
                        </div>
                        <img src="<?=$arResult["ITEMS"][4]["PREVIEW_PICTURE"]["SRC"]?>" alt="" />
                      </a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>