<?
if (!defined("B_PROLOG_INCLUDED") || B_PROLOG_INCLUDED!==true) die();

$arComponentParameters = array(
	"PARAMETERS" => array(
		 "TOUR_ID" => array(
			 "PARENT" => "BASE",
			 "NAME" => "ИД экскурсий (через запятую)",
			 "TYPE" => "SRTING",
			 "DEFAULT" => "",
			 "REFRESH" => "N",
		 ),
		 "PER_PAGE" => array(
			 "PARENT" => "BASE",
			 "NAME" => "Количество на странице",
			 "TYPE" => "SRTING",
			 "DEFAULT" => "5",
			 "REFRESH" => "N",
		 ),
		 "REVIEWS_PAGE_NUM" => array(
			 "PARENT" => "BASE",
			 "NAME" => "Номер страницы (оставить пустым для авто режима) ",
			 "TYPE" => "SRTING",
			 "DEFAULT" => "",
			 "REFRESH" => "N",
		 ),
		"CACHE_TIME"  =>  Array("DEFAULT"=>86400),
	),
);
?>
