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
$frame = $this->createFrame()->begin('');
?>
	<div class="slider-review">
		<div class="bxslider_reviews">
			<?foreach($arResult["LIST"] as $arItem):?>
			<div class="slider-review__item">
				<div class="row row--padd30">
					<div class="row__inner">
						<div class="col-12-4">
							<div class="slider-review__item-info">
								<div class="slider-review__item-pic">
									<?if(empty($arItem["PREVIEW_PICTURE"])):?>
										<object type="image/svg+xml" data="<?=SITE_TEMPLATE_PATH?>/svg/faceless.svg">Your browser does not support SVGs</object>
									<?else:?>
										<img src="<?=$arItem["PREVIEW_PICTURE"]["SRC"]?>" alt="" />
									<?endif;?>
								</div>
								<div class="slider-review__item-name"><?=$arItem["PROPERTY_FIO_VALUE"]?></div>
								<div class="slider-review__item-date"><?=$arItem["DATE_ACTIVE_FROM"]?></div>
							</div>
						</div>
						<div class="col-12-8">
							<div class="slider-review__item-text"><?=$arItem["PREVIEW_TEXT"]?></div>
						</div>
					</div>
				</div>
			</div>
			<?endforeach;?>
		</div>
	</div>
<?
$frame->end();
?>