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
<?foreach($arResult["ITEMS"] as $arItem):?>
	<?
	$this->AddEditAction($arItem['ID'], $arItem['EDIT_LINK'], CIBlock::GetArrayByID($arItem["IBLOCK_ID"], "ELEMENT_EDIT"));
	$this->AddDeleteAction($arItem['ID'], $arItem['DELETE_LINK'], CIBlock::GetArrayByID($arItem["IBLOCK_ID"], "ELEMENT_DELETE"), array("CONFIRM" => GetMessage('CT_BNL_ELEMENT_DELETE_CONFIRM')));
	?>
	<div class="exs-block marg-b-40" id="<?=$this->GetEditAreaId($arItem['ID']);?>">
		<div class="row row--padd30">
			<div class="row__inner">
				<div class="col-12-4 col-adaptive-768">
					<a href="<?=$arItem["DETAIL_PAGE_URL"]?>" class="exs-block__title visible-adaptive-show-768"><?=$arItem["NAME"]?></a>
					<a href="<?=$arItem["DETAIL_PAGE_URL"]?>" class="exs-block__img">
						<img src="<?=$arItem["PREVIEW_PICTURE"]["SRC"]?>" alt="<?=$arItem["PREVIEW_PICTURE"]["ALT"]?>"
							title="<?=$arItem["PREVIEW_PICTURE"]["TITLE"]?>" />
					</a>
				</div>
				<div class="col-12-8 col-adaptive-768">
					<a href="<?=$arItem["DETAIL_PAGE_URL"]?>" class="exs-block__title visible-adaptive-768"><?=$arItem["NAME"]?></a>
					<div class="exs-block__text">
						<?=$arItem["PREVIEW_TEXT"];?>
					</div>
					<div class="exs-block__categories visible-adaptive-768">
						<?foreach($arItem["TAGS"] as $tag):?>
							<a class="exs-block__categories-item" href="<?=$tag["URL"]?>"><?=$tag["NAME"]?></a>
						<?endforeach;?>
					</div>
					<div class="visible-adaptive-show-768 pos-right marg-t-20">
						<a href="<?=$arItem["DETAIL_PAGE_URL"]?>" class="exs-block__btn btn btn--red btn--small">Подробно</a>
					</div>
				</div>
			</div>
		</div>
	</div>
<?endforeach;?>
<?/*if($arParams["DISPLAY_BOTTOM_PAGER"]):?>
	<br /><?=$arResult["NAV_STRING"]?>
<?endif;*/?>
