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
        <a href="/excursion/<?=$arResult["ITEMS"][0]["CODE"]?>" class="right-side__top5">
          <div class="right-side__top5-hover-wrap">
            <div class="vert-middle">
              <div class="vert-middle__inner">
                <div class="right-side__top5-hover"><?=$arResult["ITEMS"][0]["NAME"]?></div>
              </div>
            </div>
          </div>
          <img src="<?=$arResult["ITEMS"][0]["PREVIEW_PICTURE"]["SRC"]?>" alt="" />
        </a>
      </div>
      <div class="col-12-7 col-adaptive-768">
        <a href="<?=$arResult["ITEMS"][1]["CODE"]?>" class="right-side__top5">
          <div class="right-side__top5-hover-wrap">
            <div class="vert-middle">
              <div class="vert-middle__inner">
                <div class="right-side__top5-hover"><?=$arResult["ITEMS"][1]["NAME"]?></div>
              </div>
            </div>
          </div>
          <?if(!empty($arResult["ITEMS"][1]["DETAIL_PICTURE"]["SRC"])) {
            $pictUrl = $arResult["ITEMS"][1]["DETAIL_PICTURE"]["SRC"];
          } else {
            $pictUrl = $arResult["ITEMS"][1]["PREVIEW_PICTURE"]["SRC"];
          }?>
          <img src="<?=$pictUrl?>" alt="" />
        </a>
        <div class="right-side__top5-pos">
          <div class="row row--padd30">
            <div class="row__inner">
              <div class="col-12-5 visible-adaptive-768">&nbsp;</div>
              <div class="col-12-7 col-adaptive-768">
                <div class="row row--padd10">
                  <div class="row__inner">
                    <div class="col-12-4 col-adaptive-768">
                      <a href="<?=$arResult["ITEMS"][2]["CODE"]?>" class="right-side__top5">
                        <div class="right-side__top5-hover-wrap">
                          <div class="vert-middle">
                            <div class="vert-middle__inner">
                              <div class="right-side__top5-hover"><?=$arResult["ITEMS"][2]["NAME"]?></div>
                            </div>
                          </div>
                        </div>
                        <img src="<?=$arResult["ITEMS"][2]["PREVIEW_PICTURE"]["SRC"]?>" alt="" />
                      </a>
                    </div>
                    <div class="col-12-4 col-adaptive-768">
                      <a href="<?=$arResult["ITEMS"][3]["CODE"]?>" class="right-side__top5">
                        <div class="right-side__top5-hover-wrap">
                          <div class="vert-middle">
                            <div class="vert-middle__inner">
                              <div class="right-side__top5-hover"><?=$arResult["ITEMS"][3]["NAME"]?></div>
                            </div>
                          </div>
                        </div>
                        <img src="<?=$arResult["ITEMS"][3]["PREVIEW_PICTURE"]["SRC"]?>" alt="" />
                      </a>
                    </div>
                    <div class="col-12-4 col-adaptive-768">
                      <a href="<?=$arResult["ITEMS"][4]["CODE"]?>" class="right-side__top5">
                        <div class="right-side__top5-hover-wrap">
                          <div class="vert-middle">
                            <div class="vert-middle__inner">
                              <div class="right-side__top5-hover"><?=$arResult["ITEMS"][4]["NAME"]?></div>
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