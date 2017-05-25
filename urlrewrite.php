<?
$arUrlRewrite = array(
	array(
		"CONDITION" => "#^/excursion/(.+)#",
		"RULE" => "CODE=\$1",
		"ID" => "bitrix:news",
		"PATH" => "/excursion/detail.php",
	),
	array(
		"CONDITION" => "#^/photos/#",
		"RULE" => "",
		"ID" => "bitrix:catalog",
		"PATH" => "/photos/index.php",
	),
	array(
		"CONDITION" => "#^/promo/#",
		"RULE" => "",
		"ID" => "bitrix:news",
		"PATH" => "/promo/index.php",
	),
	array(
		"CONDITION" => "#^/news/#",
		"RULE" => "",
		"ID" => "bitrix:news",
		"PATH" => "/news/index.php",
	),
);

?>