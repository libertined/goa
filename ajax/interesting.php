<?require($_SERVER["DOCUMENT_ROOT"]."/bitrix/modules/main/include.php");
$APPLICATION->IncludeComponent("goa:element.random", "ajax", Array(
    "CACHE_GROUPS" => "Y",	// Учитывать права доступа
    "CACHE_TIME" => "1",	// Время кеширования (сек.)
    "CACHE_TYPE" => "A",	// Тип кеширования
    "DETAIL_URL" => "",	// URL, ведущий на страницу с содержимым элемента раздела
    "IBLOCKS" => array(	// Инфоблок
      0 => "3",
    ),
    "FIELDS" => array("PREVIEW_TEXT"),
    "COUNT" => 1,
    "IBLOCK_TYPE" => "info",	// Тип инфоблока
    "PARENT_SECTION" => "",	// ID раздела
  ),
  false
);