<?if (!defined("B_PROLOG_INCLUDED") || B_PROLOG_INCLUDED!==true) die();
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

$arCloudParams = array(
	"SEARCH" => $arResult["REQUEST"]["~QUERY"],
	"TAGS" => $arResult["REQUEST"]["~TAGS"],
	"CHECK_DATES" => $arParams["CHECK_DATES"],
	"arrFILTER" => $arParams["arrFILTER"],
	"SORT" => $arParams["TAGS_SORT"],
	"PAGE_ELEMENTS" => $arParams["TAGS_PAGE_ELEMENTS"],
	"PERIOD" => $arParams["TAGS_PERIOD"],
	"URL_SEARCH" => $arParams["TAGS_URL_SEARCH"],
	"TAGS_INHERIT" => $arParams["TAGS_INHERIT"],
	"FONT_MAX" => $arParams["FONT_MAX"],
	"FONT_MIN" => $arParams["FONT_MIN"],
	"COLOR_NEW" => $arParams["COLOR_NEW"],
	"COLOR_OLD" => $arParams["COLOR_OLD"],
	"PERIOD_NEW_TAGS" => $arParams["PERIOD_NEW_TAGS"],
	"SHOW_CHAIN" => $arParams["SHOW_CHAIN"],
	"COLOR_TYPE" => $arParams["COLOR_TYPE"],
	"WIDTH" => $arParams["WIDTH"],
	"CACHE_TIME" => $arParams["CACHE_TIME"],
	"CACHE_TYPE" => $arParams["CACHE_TYPE"],
	"RESTART" => $arParams["RESTART"],
);

if(is_array($arCloudParams["arrFILTER"]))
{
	foreach($arCloudParams["arrFILTER"] as $strFILTER)
	{
		if($strFILTER=="main")
		{
			$arCloudParams["arrFILTER_main"] = $arParams["arrFILTER_main"];
		}
		elseif($strFILTER=="forum" && IsModuleInstalled("forum"))
		{
			$arCloudParams["arrFILTER_forum"] = $arParams["arrFILTER_forum"];
		}
		elseif(strpos($strFILTER,"iblock_")===0)
		{
			if (isset($arParams["arrFILTER_".$strFILTER]) && is_array($arParams["arrFILTER_".$strFILTER]))
			{
				foreach($arParams["arrFILTER_".$strFILTER] as $strIBlock)
					$arCloudParams["arrFILTER_".$strFILTER] = $arParams["arrFILTER_".$strFILTER];
			}
		}
		elseif($strFILTER=="blog")
		{
			$arCloudParams["arrFILTER_blog"] = $arParams["arrFILTER_blog"];
		}
		elseif($strFILTER=="socialnetwork")
		{
			$arCloudParams["arrFILTER_socialnetwork"] = $arParams["arrFILTER_socialnetwork"];
		}
	}
}

$APPLICATION->IncludeComponent("bitrix:search.tags.cloud", "excursion", $arCloudParams, $component);

?>
<?foreach($arResult["SEARCH"] as $arItem):?>
	<div class="exs-block marg-b-40">
		<div class="row row--padd30">
			<div class="row__inner">
				<div class="col-12-4 col-adaptive-768">
					<a class="exs-block__title visible-adaptive-show-768" href="<?=$arItem["URL"]?>"><?=$arItem["TITLE"]?></a>
					<a href="<?=$arItem["URL"]?>" class="exs-block__img">
						<img src="<?=$arItem["PICT"]?>" alt="<?=$arItem["TITLE"]?>"
								 title="<?=$arItem["TITLE"]?>" />
					</a>
				</div>
				<div class="col-12-8 col-adaptive-768">
					<a class="exs-block__title visible-adaptive-768" href="<?=$arItem["URL"]?>"><?=$arItem["TITLE"]?></a>
					<div class="exs-block__text">
						<?=$arItem["DESCRIPTION"];?>
					</div>
					<div class="exs-block__categories visible-adaptive-768">
						<?foreach($arItem["TAGS"] as $tag):?>
							<a class="exs-block__categories-item" href="<?=$tag["URL"]?>"><?=$tag["TAG_NAME"]?></a>
						<?endforeach;?>
					</div>
					<div class="visible-adaptive-show-768 pos-right marg-t-20">
						<a  href="<?=$arItem["URL"]?>" class="exs-block__btn btn btn--red btn--small">Подробно</a>
					</div>
				</div>
			</div>
		</div>
	</div>
<?endforeach;?>
<?//if($arParams["DISPLAY_BOTTOM_PAGER"] != "N") echo $arResult["NAV_STRING"]?>
