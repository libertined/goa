<?php
if(!defined("B_PROLOG_INCLUDED") || B_PROLOG_INCLUDED!==true)die();

/**
 * @global CMain $APPLICATION
 */

global $APPLICATION;

//delayed function must return a string
if(empty($arResult))
	return "";

$strReturn = '';

//we can't use $APPLICATION->SetAdditionalCSS() here because we are inside the buffered function GetNavChain()
$css = $APPLICATION->GetCSSArray();

$strReturn .= '<section class="breadcrumbs">
					<div class="page-content-inner page-content-inner--w1360">';

$itemSize = count($arResult);
for($index = 0; $index < $itemSize; $index++)
{
	$title = htmlspecialcharsex($arResult[$index]["TITLE"]);

	$nextRef = ($index < $itemSize-2 && $arResult[$index+1]["LINK"] <> ""? ' itemref="bx_breadcrumb_'.($index+1).'"' : '');
	$arrow = ($index > 0? '<span class="breadcrumbs__item breadcrumbs--item-separate">/</span>' : '');

	if($arResult[$index]["LINK"] <> "" && $index != $itemSize-1)
	{
		$class= 'breadcrumbs__item';
		if($arResult[$index]["LINK"] == '/') {
			$class .= ' breadcrumbs--item-main';
		}
		$strReturn .= $arrow.'
			<a href="'.$arResult[$index]["LINK"].'"  itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"'.$child.$nextRef.'
			class="'.$class.'" title="'.$title.'" itemprop="url">'.$title.'</a>
		';
	}
	else
	{
		$strReturn .= $arrow.'<span class="breadcrumbs__item">'.$title.'</span>';
	}
}

$strReturn .= '</div></section>';

return $strReturn;
