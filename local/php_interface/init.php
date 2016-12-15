<?
/*
 * Bitrix logs now will stored - its very useful! :)
 * */
define("LOG_FILENAME", $_SERVER["DOCUMENT_ROOT"] . "/_logs/bx/" . date("Y_m_d") . ".log");

spl_autoload_register(function ($class) {
	$file = $_SERVER["DOCUMENT_ROOT"] . '/local/lib/' . $class . '.php';

	if (file_exists($file))
		require_once  $file;
});


\Bitrix\Main\Loader::includeModule('iblock');
\Bitrix\Main\Loader::includeModule('goa.domain');

if (file_exists($_SERVER["DOCUMENT_ROOT"]."/local/php_interface/constants.php"))
	require_once($_SERVER["DOCUMENT_ROOT"]."/local/php_interface/constants.php");
if (file_exists($_SERVER["DOCUMENT_ROOT"]."/local/php_interface/functions.php"))
	require_once($_SERVER["DOCUMENT_ROOT"]."/local/php_interface/functions.php");
if (file_exists($_SERVER["DOCUMENT_ROOT"]."/local/php_interface/events.php"))
	require_once($_SERVER["DOCUMENT_ROOT"]."/local/php_interface/events.php");
