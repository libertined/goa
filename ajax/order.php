<?

/**
 * Created by PhpStorm.
 * Date: 13.12.2016
 * Time: 22:31
 *
 * @author dev@dermanov.ru
 */

require($_SERVER["DOCUMENT_ROOT"]."/bitrix/modules/main/include.php");

/*
 * $_REQUEST["subject"] - only bot can fill this hidden field
 * */
if (!$_REQUEST["subject"]) {
    if (OrderHelper::addQuestionFromPost()) {
    
        $eventFields = [];

        $eventTypes  = getEnumValues(ORDER_IBOCK_ID, "EVENT_TYPE");
        $houseTypes  = getEnumValues(ORDER_IBOCK_ID, "HOUSE_TYPE");
        $entityTypes = getEnumValues(ORDER_IBOCK_ID, "ORDER_ENTITY");
        $tours       = HLReviewModel::getAllToursInfo(true);

        $eventFields["NAME"]  = htmlspecialchars($_POST[ OrderHelper::FORM_ADD_FIELD_USER_NAME_NAME ]);
        $eventFields["PHONE"] = htmlspecialchars($_POST[ OrderHelper::FORM_ADD_FIELD_USER_PHONE_NAME ]);
        $eventFields["EMAIL"] = htmlspecialchars($_POST[ OrderHelper::FORM_ADD_FIELD_USER_EMAIL_NAME ]);
        $eventFields["VIBER"] = htmlspecialchars($_POST[ OrderHelper::FORM_ADD_FIELD_VIBER_NAME]);
    
        $eventFields["ORDER_ENTITY"] = $entityTypes[ intval($_POST[ OrderHelper::FORM_ADD_FIELD_ORDER_ENTITY_NAME ]) ]["NAME"];
        $eventFields["PEOPLE_COUNT"] = htmlspecialchars($_POST[ OrderHelper::FORM_ADD_FIELD_PEOPLE_COUNT_NAME ]);
        $eventFields["TOUR_ID"]      = $tours[ intval($_POST[ OrderHelper::FORM_ADD_FIELD_TOUR_ID_NAME ]) ]["NAME"];

        $eventFields["EVENT_TYPE"]  = $eventTypes[ intval($_POST[ OrderHelper::FORM_ADD_FIELD_EVENT_TYPE_NAME ]) ]["NAME"];
        $eventFields["DIRECTION"]   = htmlspecialchars($_POST[ OrderHelper::FORM_ADD_FIELD_DIRECTION_NAME ]);
        $eventFields["HOUSE_TYPE"]  = $houseTypes[ intval($_POST[ OrderHelper::FORM_ADD_FIELD_HOUSE_TYPE_NAME ]) ]["NAME"];
        $eventFields["HOUSE_PLACE"] = htmlspecialchars($_POST[ OrderHelper::FORM_ADD_FIELD_HOUSE_PLACE_NAME ]);
    
        $eventFields["COMMENT"] = htmlspecialchars($_POST[ OrderHelper::FORM_ADD_FIELD_COMMENT_NAME ]);
        $eventFields["DATE"]    = date("d.m.Y", strtotime($_POST[ OrderHelper::FORM_ADD_FIELD_DATE_NAME ]));

        OrderHelper::sendAdminEmail($eventFields);
    } else {
        /*
         * Something went wrong - see logs in path of LOG_FILENAME
         * */
    }
}
?>

