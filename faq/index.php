<?php require($_SERVER["DOCUMENT_ROOT"]."/bitrix/header.php");
$APPLICATION->SetPageProperty("MAIN_TITLE", "Часто задаваемые вопросы");
$APPLICATION->SetPageProperty("PAGE_IMAGE", "/upload/images/bg_exs_1.jpg");
$APPLICATION->SetTitle("FAQ");?>

<?$APPLICATION->IncludeComponent(
    "goa:faq.list",
    "",
    array(
        "CACHE_TYPE" => "A",
        "CACHE_TIME" => "3600",
    ),
    false
);?>

<?php require($_SERVER["DOCUMENT_ROOT"]."/bitrix/footer.php");?>
