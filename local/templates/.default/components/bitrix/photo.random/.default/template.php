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
	<div class="left-side__block left-side--block-green">
		<div class="left-side__header">Это интересно<div class="left-side__header-icon">
				<object type="image/svg+xml" data="<?=SITE_TEMPLATE_PATH?>/svg/idea.svg">Your browser does not support SVGs</object>
			</div></div>
		<div class="left-side__body">
			<div class="left-side__body-text js-interesting-text"><?=$arResult["PREVIEW_TEXT"]?></div>
			<div class="after-parent">
				<div class="left-side__body-refresh js-interesting-refresh">
					<object type="image/svg+xml" data="<?=SITE_TEMPLATE_PATH?>/svg/turn.svg">Your browser does not support SVGs</object>
				</div>
			</div>
		</div>
	</div>
<?
$frame->end();
?>