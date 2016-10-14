<?
if (!defined("B_PROLOG_INCLUDED") || B_PROLOG_INCLUDED!==true) die();

if(!CModule::IncludeModule("iblock"))
	return;

// $arTypesEx = CIBlockParameters::GetIBlockTypes(array("-"=>" "));

// $arIBlocks=array();
// $db_iblock = CIBlock::GetList(array("SORT"=>"ASC"), array("SITE_ID"=>$_REQUEST["site"], "TYPE" => ($arCurrentValues["IBLOCK_TYPE"]!="-"?$arCurrentValues["IBLOCK_TYPE"]:"")));
// while($arRes = $db_iblock->Fetch())
	// $arIBlocks[$arRes["ID"]] = $arRes["NAME"];

$arComponentParameters = array(
	"GROUPS" => array(
		 //"DELIVERY" => array(
			// "SORT" => 100,
			// "NAME" => "Параметры доставки в карточке товара",
		 //),
    ),
	"PARAMETERS" => array(
		// "IBLOCK_TYPE" => array(
			// "PARENT" => "BASE",
			// "NAME" => "Тип инфоблока",
			// "TYPE" => "LIST",
			// "VALUES" => $arTypesEx,
			// "DEFAULT" => "",
			// "REFRESH" => "Y",
		// ),
		// "IBLOCK_ID" => array(
			// "PARENT" => "BASE",
			// "NAME" => "Инфоблок",
			// "TYPE" => "LIST",
			// "VALUES" => $arIBlocks,
			// "DEFAULT" => '',
			// "ADDITIONAL_VALUES" => "N",
			// "REFRESH" => "N",
		// ),
		// "DELIVERY_BASE_PRICE" => array(
		//	 "PARENT" => "DELIVERY",
		//	 "NAME" => "Доставка: базовая стоимость",
		//	 "TYPE" => "SRTING",
         //    "DEFAULT" => "800",
		// ),
		// "DELIVERY_PER_KM_PRICE" => array(
		//	 "PARENT" => "DELIVERY",
		//	 "NAME" => "Доставка: стоимость за 1 км за КАД",
		//	 "TYPE" => "SRTING",
         //    "DEFAULT" => "30",
		// ),
		// "CORDAGE_BASE_PRICE" => array(
		//	 "PARENT" => "DELIVERY",
		//	 "NAME" => "Такелаж: базовая стоимость",
		//	 "TYPE" => "SRTING",
         //    "DEFAULT" => "500",
		// ),
		// "CORDAGE_PER_FLOOR_PRICE" => array(
		//	 "PARENT" => "DELIVERY",
		//	 "NAME" => "Такелаж: стоимость за 1 этаж",
		//	 "TYPE" => "SRTING",
         //    "DEFAULT" => "50",
		// ),
		"SEF_MODE" => Array(
			 //"sections" => array(
				// "NAME" => "Список разделов",
				// "DEFAULT" => "",
				// "VARIABLES" => array(),
			 //),
			 //"section" => array(
				// "NAME" => "Страница раздела",
				// "DEFAULT" => "#SECTION_CODE#/",
				// "VARIABLES" => array("SECTION_CODE"),
			 //),
			 //"smart_filter" => array(
				// "NAME" => "Страница отфильтрованного раздела",
				// "DEFAULT" => "#SECTION_CODE_PATH#/f/#SMART_FILTER_PATH#/a/",
				// "VARIABLES" => array("SECTION_CODE_PATH", "SMART_FILTER_PATH"),
			 //),
			 //"detail" => array(
				// "NAME" => "Карточка",
				// "DEFAULT" => "#SECTION_CODE#/#ELEMENT_CODE#/",
				// "VARIABLES" => array("SECTION_CODE", "ELEMENT_CODE"),
			 //),
			// "new" => array(
			//	 "NAME" => "Все новинки",
			//	 "DEFAULT" => "new/",
			//	 "VARIABLES" => array(),
			// ),
			// "hit" => array(
			//	 "NAME" => "Все хиты",
			//	 "DEFAULT" => "hit/",
			//	 "VARIABLES" => array(),
			// ),
			//"vendors_index" => array(
			//	"NAME" => "Список брендов",
			//	"DEFAULT" => "vendors/",
			//	"VARIABLES" => array(),
			//),
			//"vendors_detail" => array(
			//	"NAME" => "Страница бренда",
			//	"DEFAULT" => "vendors/#VENDOR_CODE#/",
			//	"VARIABLES" => array(),
			//),
		),
		"CACHE_TIME"  =>  Array("DEFAULT"=>86400),
	),
);
?>
