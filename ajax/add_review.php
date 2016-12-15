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
    if (HLReviewModel::addFromPost()) {
        $toursInfo = HLReviewModel::getTourInfoById( intval($_POST[ HLReviewModel::FORM_ADD_FIELD_TOUR_ID_NAME]) );

        $eventFields = array(
            "DATE"      => date("d.m.Y H:i:s"),
            "TOUR_NAME" => $toursInfo["NAME"],
            "USER_NAME" => htmlentities($_POST[ HLReviewModel::FORM_ADD_FIELD_USER_NAME_NAME ]),
            "TEXT"      => htmlentities($_POST[ HLReviewModel::FORM_ADD_FIELD_TEXT_NAME ]),
        );

        ReviewEmailHelper::notifyAdminAboutNew($eventFields);
    } else {
        /*
         * Something went wrong - see logs in path of LOG_FILENAME
         * */
    }
}
?>

