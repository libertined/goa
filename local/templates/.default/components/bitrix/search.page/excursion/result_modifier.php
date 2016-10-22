<?if(!defined("B_PROLOG_INCLUDED") || B_PROLOG_INCLUDED!==true)die();

use Bitrix\Iblock;
use Goa\Domain\Util;

if (is_array($arResult["SEARCH"]))
{
	$excursionLink = [];
	foreach ($arResult["SEARCH"] as $key => $res)
	{
		$excursionLink[$res["ITEM_ID"]] = $key;
	}
	$itemsData = Iblock\ElementTable::getList([
			'select' => ['PREVIEW_TEXT', 'NAME', 'PICT', 'ID'],
			'filter' => [
				'@ID' => array_keys($excursionLink)
			],
			'runtime' => [
				Util\BitrixOrmHelper::getFileReferenceField('FILE', 'PREVIEW_PICTURE'),
				Util\BitrixOrmHelper::getFilePathExpressionField('PICT', 'FILE')
			]

	]);
	while ($row = $itemsData->fetch()) {
		$curElement =& $arResult["SEARCH"][ $excursionLink[$row["ID"]] ];
		$curElement["DESCRIPTION"] = $row["PREVIEW_TEXT"];
		$curElement["PICT"] = $row["PICT"];
	}
}