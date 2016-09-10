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
$arItem = $arResult["LIST"][0];
?>
	<div class="left-side__block left-side--block-green">
		<div class="left-side__header">Это интересно<div class="left-side__header-icon">
				<object type="image/svg+xml" data="<?=SITE_TEMPLATE_PATH?>/svg/idea.svg">Your browser does not support SVGs</object>
			</div></div>
		<div class="left-side__body">
			<div class="left-side__body-text js-interesting-text"><?=$arItem["PREVIEW_TEXT"]?></div>
			<div class="after-parent">
				<div class="left-side__body-refresh js-interesting-refresh">
					<svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
						 width="16.337px" height="19px" viewBox="0 0 16.337 19" enable-background="new 0 0 16.337 19" xml:space="preserve" class="svg-turn">
						<g id="Shape_1">
							<g>
								<path class="svg-turn__path" d="M15.648,11.808c-0.363-0.087-0.726,0.142-0.812,0.512c-0.86,3.703-4.5,5.995-8.123,5.116
									c-3.627-0.88-5.871-4.592-5.011-8.298C2.565,5.435,6.2,3.145,9.827,4.023l0.31-1.339C5.786,1.63,1.42,4.377,0.389,8.82
									c-1.033,4.444,1.66,8.902,6.014,9.955c4.349,1.052,8.714-1.693,9.748-6.138C16.235,12.267,16.012,11.894,15.648,11.808z
									 M13.921,4.307L10.762,0L9.205,6.706L13.921,4.307z"/>
							</g>
						</g>
					</svg>
					<?/*<object type="image/svg+xml" data="<?=SITE_TEMPLATE_PATH?>/svg/turn.svg">Your browser does not support SVGs</object>*/?>
				</div>
			</div>
		</div>
	</div>
<?
$frame->end();
?>