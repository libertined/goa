<?
$arUrlRewrite = array(
	array(
		"CONDITION" => "#^/news/#",
		"RULE" => "",
		"ID" => "bitrix:news",
		"PATH" => "/news/index.php",
	),
	array(
		"CONDITION" => "#^/excursion/(.+)/(.*)#",
		"RULE" => "CODE=$1",
		"ID" => "bitrix:news",
		"PATH" => "/excursion/detail.php",
	),
);

?>