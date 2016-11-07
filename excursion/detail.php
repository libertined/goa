<?php require($_SERVER["DOCUMENT_ROOT"]."/bitrix/header.php");
$code = $APPLICATION->GetCurPage(false);
$APPLICATION->IncludeComponent(
	"goa:excursion.detail",
	"excursion", 
	array(
		"CACHE_GROUPS" => "Y",
		"CACHE_TIME" => "36000000",
		"CACHE_TYPE" => "A",
		"ELEMENT_CODE" => $code,
		"FIELD_CODE" => array(
			0 => "NAME",
			1 => "TAGS",
			2 => "DETAIL_TEXT",
			3 => "PREVIEW_PICTURE",
			4 => "ID"
		),
		"IBLOCK_ID" => "5",
		"PROPERTY_CODE" => array(
			0 => "PROGRAM",
			1 => "PRICE",
			2 => "GALLERY",
			3 => "IMAGES",
		)
	),
	false
);
require($_SERVER["DOCUMENT_ROOT"]."/bitrix/footer.php");?>