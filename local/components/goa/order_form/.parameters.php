<?
if (!defined("B_PROLOG_INCLUDED") || B_PROLOG_INCLUDED!==true) die();

$arComponentParameters = array(
	"PARAMETERS" => array(
		"CACHE_TIME"  =>  Array("DEFAULT"=>86400),
		"TOUR_DETAIL" => array(
			"NAME" => "Форма на странице экскурсии",
			"TYPE" => "CHECKBOX",
			"DEFAULT" => "N",
		),
		"TOUR_ID" => array(
			"PARENT" => "BASE",
			"NAME" => "ИД экскурсии",
			"TYPE" => "SRTING",
			"DEFAULT" => "",
			"REFRESH" => "N",
		),
	),
);
?>
