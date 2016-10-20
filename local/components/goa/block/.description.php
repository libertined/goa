<?
if (!defined("B_PROLOG_INCLUDED") || B_PROLOG_INCLUDED!==true) die();


$arComponentDescription = array(
	"NAME" => "Блок на сайте. Вспомогательный компонент.",
	"DESCRIPTION" => "",
	"ICON" => "/images/menu_ext.gif",
	// "PATH" => array(
		// "ID" => "Custom",
	// ),
	"SORT" => 10,
	"COMPLEX" => "Y",
	"PATH" => array(
		"ID" => "this_project",
        "NAME" => "Этот проект",
		"CHILD" => array(
			"ID" => "this_project_sections",
			"NAME" => "Остальное",
			"SORT" => 10,
			// "CHILD" => array(
				// "ID" => "name",
                // "NAME" => "Подпункт",
			// ),
		),
	),
);
?>