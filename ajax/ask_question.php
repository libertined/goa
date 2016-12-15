<?

/**
 * Created by PhpStorm.
 * Date: 09.12.2016
 * Time: 22:31
 *
 * @author dev@dermanov.ru
 */

require($_SERVER["DOCUMENT_ROOT"]."/bitrix/modules/main/include.php");

/*
 * $_REQUEST["subject"] - only bot can fill this hidden field
 * */
if (!$_REQUEST["subject"]) {
    if (HLFaqModel::addFromPost()) {
        $eventFields = array(
            "NAME"     => htmlentities($_POST["name"]),
            "EMAIL"    => htmlentities($_POST["email"]),
            "QUESTION" => htmlentities($_POST["questionText"]),
        );
    
        CEvent::SendImmediate("FAQ_NEW_QUESTION", SITE_ID, $eventFields);
    } else {
        /*
         * Something went wrong - see logs in path of LOG_FILENAME
         * */
    }
}
?>

