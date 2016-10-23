<?if(!defined("B_PROLOG_INCLUDED") || B_PROLOG_INCLUDED!==true)die();

use Bitrix\Iblock;
use Goa\Domain\Util;

if(!empty($arResult["DISPLAY_PROPERTIES"]["IMAGES"]["VALUE"])) {
  $arResult["GALLERY"]["URL"] = reset($arResult["DISPLAY_PROPERTIES"]["GALLERY"]["LINK_SECTION_VALUE"])["SECTION_PAGE_URL"];
  $itemsData = Iblock\ElementTable::getList([
    'select' => ['NAME', 'PICT', 'ID'],
    'filter' => [
      '@ID' => $arResult["DISPLAY_PROPERTIES"]["IMAGES"]["VALUE"]
    ],
    'runtime' => [
      Util\BitrixOrmHelper::getFileReferenceField('FILE', 'DETAIL_PICTURE'),
      Util\BitrixOrmHelper::getFilePathExpressionField('PICT', 'FILE')
    ]

  ]);
  while ($row = $itemsData->fetch()) {
    $arResult["GALLERY"]["ITEMS"][] = [
      "ID" => $row["ID"],
      "NAME" => $row["NAME"],
      "URL" => $row["PICT"],
    ];
  }
}