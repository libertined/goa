<?
if (!defined("B_PROLOG_INCLUDED") || B_PROLOG_INCLUDED!==true) die();


$arComponentDescription = array(
	"NAME" => "FAQ: Список вопросов",
	"DESCRIPTION" => "",
	"ICON" => "/images/menu_ext.gif",
	// "PATH" => array(
		// "ID" => "Custom",
	// ),
	"SORT" => 10,
	"COMPLEX" => "N",
	"PATH" => array(
		"ID" => "this_project",
        "NAME" => "Этот проект",
		//"CHILD" => array(
		//	"ID" => "this_project_sections",
		//	"NAME" => "Разделы",
		//	"SORT" => 10,
		//	// "CHILD" => array(
		//		// "ID" => "name",
         //       // "NAME" => "Подпункт",
		//	// ),
		//),
	),
);
?>