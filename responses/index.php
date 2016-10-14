<?php require($_SERVER["DOCUMENT_ROOT"]."/bitrix/header.php");
$APPLICATION->SetPageProperty("MAIN_TITLE", "Отзывы");
$APPLICATION->SetPageProperty("PAGE_IMAGE", "/upload/images/bg_reviews.jpg");
$APPLICATION->SetTitle("Отзывы туристов");?>

<?$APPLICATION->IncludeComponent(
	"goa:reviews", 
	"all_with_filter", 
	array(
		"CACHE_TYPE" => "A",
		"CACHE_TIME" => "3600",
		"COMPONENT_TEMPLATE" => "all_with_filter",
		"TOUR_ID" => "",
		"PER_PAGE" => "1",
		"REVIEWS_PAGE_NUM" => ""
	),
	false
);
?>

<?php require($_SERVER["DOCUMENT_ROOT"]."/bitrix/footer.php");?>
