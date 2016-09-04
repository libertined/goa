<?if (!defined("B_PROLOG_INCLUDED") || B_PROLOG_INCLUDED!==true)die();?>

<?if (!empty($arResult)):?>
	<nav class="page-header__menu visible-adaptive-768">
		<ul class="main-nav">
	<?
	foreach($arResult as $arItem):
		if($arParams["MAX_LEVEL"] == 1 && $arItem["DEPTH_LEVEL"] > 1)
			continue;
	?>
		<?if($arItem["SELECTED"]):?>
			<li class="main-nav__item main-nav--item-current"><a href="<?=$arItem["LINK"]?>"><?=$arItem["TEXT"]?></a></li>
		<?else:?>
		<li class="main-nav__item"><a href="<?=$arItem["LINK"]?>"><?=$arItem["TEXT"]?></a></li>
		<?endif?>

	<?endforeach?>
		</ul>
	</nav>

	<div class="visible-adaptive-show-768">
		<div class="page-header__menu-adaptive">
			<div class="page-header__menu-adaptive-btn"></div>
			<nav class="main-nav-adaptive" style="display: none;">
				<ul class="main-nav-adaptive__list">
					<?
					foreach($arResult as $arItem):
						if($arParams["MAX_LEVEL"] == 1 && $arItem["DEPTH_LEVEL"] > 1)
							continue;
						?>
						<?if($arItem["SELECTED"]):?>
						<li class="main-nav-adaptive__item main-nav-adaptive--item-current"><a href="<?=$arItem["LINK"]?>"><?=$arItem["TEXT"]?></a></li>
					<?else:?>
						<li class="main-nav-adaptive__item"><a href="<?=$arItem["LINK"]?>"><?=$arItem["TEXT"]?></a></li>
					<?endif?>

					<?endforeach?>
				</ul>
			</nav>
		</div>
	</div>
<?endif?>