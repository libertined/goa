<?php

/**
 * Created by PhpStorm.
 * Date: 13.12.2016
 * Time: 22:31
 *
 * @author dev@dermanov.ru
 */

use Bitrix\Main\Application;

/**
 * Class provides helps functions for work with order entities.
 * */
class OrderHelper
{
    const
        FORM_ADD_FIELD_ORDER_ENTITY_TOUR_VALUE_ID = 2
    ;

    /**
     * Add form field names
     *
     *  #HOTEL_NAME# - Название отеля, № комнаты
     *  #PEOPLE_COUNT# - Количество людей
     *  #NAME# - Имя
     *  #EMAIL# - Email
     *  #ORDER_ENTITY# - Что заказываем
     *  #TOUR_ID# - Экскурсия
     *  #DIRECTION# - Направление (для такси/авиабилеты)
     *  #HOUSE_TYPE# - Тип жилья (для аренды жилья)
     *  #HOUSE_PLACE# - Пляж (место) (для аренды жилья)
     *  #EVENT_TYPE# - Тип праздника
     *  #VIBER# - Viber, WhatsApp
     *  #COMMENT# - Дополнительная информация
     * */
    const
        FORM_ADD_FIELD_DATE_NAME          = "DATE",
        FORM_ADD_FIELD_ORDER_ENTITY_NAME  = "ORDER_ENTITY",
        FORM_ADD_FIELD_PEOPLE_COUNT_NAME  = "PEOPLE_COUNT",
        FORM_ADD_FIELD_HOTEL_NAME_NAME    = "HOTEL_NAME",

        FORM_ADD_FIELD_TOUR_ID_NAME     = "TOUR_ID",
        FORM_ADD_FIELD_DIRECTION_NAME   = "DIRECTION",
        FORM_ADD_FIELD_HOUSE_TYPE_NAME  = "HOUSE_TYPE",
        FORM_ADD_FIELD_HOUSE_PLACE_NAME = "HOUSE_PLACE",
        FORM_ADD_FIELD_EVENT_TYPE_NAME  = "EVENT_TYPE",

        FORM_ADD_FIELD_USER_NAME_NAME  = "NAME",
        FORM_ADD_FIELD_USER_EMAIL_NAME = "EMAIL",
        FORM_ADD_FIELD_USER_PHONE_NAME = "PHONE",
        FORM_ADD_FIELD_VIBER_NAME      = "VIBER",
        FORM_ADD_FIELD_COMMENT_NAME    = "COMMENT"
    ;


    /**
     * Adds new item by fields given in $_POST array.
     *
     * All fileds checks by forSql() or htmlspecialchars() method.
     * */
    static function addQuestionFromPost( )
    {
        $connection = Application::getConnection();
        $sqlHelper = $connection->getSqlHelper();

        $fields = array();
        $props  = array();


        $props["NAME"] = $sqlHelper->forSql($_POST[ static::FORM_ADD_FIELD_USER_NAME_NAME ], 100);
        $props["PHONE"] = $sqlHelper->forSql($_POST[ static::FORM_ADD_FIELD_USER_PHONE_NAME ], 100);
        $props["EMAIL"] = $sqlHelper->forSql($_POST[ static::FORM_ADD_FIELD_USER_EMAIL_NAME ], 100);
        $props["VIBER"] = $sqlHelper->forSql($_POST[ static::FORM_ADD_FIELD_VIBER_NAME], 100);

        $props["ORDER_ENTITY"] = $sqlHelper->forSql($_POST[ static::FORM_ADD_FIELD_ORDER_ENTITY_NAME ], 100);
        $props["PEOPLE_COUNT"] = $sqlHelper->forSql($_POST[ static::FORM_ADD_FIELD_PEOPLE_COUNT_NAME ], 100);
        $props["TOUR_ID"] = $sqlHelper->forSql($_POST[ static::FORM_ADD_FIELD_TOUR_ID_NAME ], 100);

        $props["HOTEL_NAME"]  = $sqlHelper->forSql($_POST[ static::FORM_ADD_FIELD_HOTEL_NAME_NAME ], 100);
        $props["EVENT_TYPE"]  = $sqlHelper->forSql($_POST[ static::FORM_ADD_FIELD_EVENT_TYPE_NAME ], 100);
        $props["DIRECTION"]   = $sqlHelper->forSql($_POST[ static::FORM_ADD_FIELD_DIRECTION_NAME ], 100);
        $props["HOUSE_TYPE"]  = $sqlHelper->forSql($_POST[ static::FORM_ADD_FIELD_HOUSE_TYPE_NAME ], 100);
        $props["HOUSE_PLACE"] = $sqlHelper->forSql($_POST[ static::FORM_ADD_FIELD_HOUSE_PLACE_NAME ], 100);


        $fields["PROPERTY_VALUES"] = $props;

        $fields["NAME"] = $props["NAME"] . " - " . $props["PHONE"];
        $fields["PREVIEW_TEXT"] = $sqlHelper->forSql($_POST[ static::FORM_ADD_FIELD_COMMENT_NAME ], 500);

        $tmp = $sqlHelper->forSql($_POST[ static::FORM_ADD_FIELD_DATE_NAME ], 100);
        $fields["ACTIVE_FROM"] = date("d.m.Y", strtotime($tmp));

        $fields["ACTIVE"] = "N";
        $fields["SORT"]   = "500";

        return static::add($fields);
    }

    /**
     * Adds new question by fields given in $fields array.
     *
     * Auto add IBLOCK_ID.
     * */
    static function add( $fields)
    {
        \Bitrix\Main\Loader::includeModule("iblock");

        $fields["IBLOCK_ID"] = ORDER_IBOCK_ID;

        $el = new CIBlockElement();
        $res = $el->Add($fields);

        if (!$res) {
            AddMessage2Log($el->LAST_ERROR, "ERROR while add new question");
            AddMessage2Log($fields, "fields");
        }

        return $res;
    }

    /**
     * Sends email to admins about new question on site.
     *
     * Fields must match fields in admin panel.
     * @see http://new.tvoygoa.ru/bitrix/admin/type_edit.php?EVENT_NAME=NEW_ORDER
     * */
    public static function sendAdminEmail($eventFields){
        CEvent::SendImmediate("NEW_ORDER", SITE_ID, $eventFields);
    }
 
}