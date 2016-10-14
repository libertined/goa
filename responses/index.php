<?php require($_SERVER["DOCUMENT_ROOT"]."/bitrix/header.php");
$APPLICATION->SetPageProperty("MAIN_TITLE", "Отзывы");
$APPLICATION->SetPageProperty("PAGE_IMAGE", "/upload/images/bg_reviews.jpg");
$APPLICATION->SetTitle("Отзывы туристов");?>

<?$APPLICATION->IncludeComponent(
	"goa:reviews",
	"all_with_filter",
	array(
        "CACHE_TYPE" => "A",
        "CACHE_TIME" => 3600,
	)
);
?>

<?php require($_SERVER["DOCUMENT_ROOT"]."/bitrix/footer.php");?>
