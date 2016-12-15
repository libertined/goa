<?php require($_SERVER["DOCUMENT_ROOT"]."/bitrix/header.php");
$APPLICATION->SetTitle("Заказ услуг");?>

<?$APPLICATION->IncludeComponent(
    "goa:order_form",
    "",
    array(
        "CACHE_TYPE" => "A",
        "CACHE_TIME" => "3600",
    ),
    false
);?>

<?php require($_SERVER["DOCUMENT_ROOT"]."/bitrix/footer.php");?>
