<?php

/**
 * Created by PhpStorm.
 * Date: 09.12.2016
 * Time: 22:31
 *
 * @author dev@dermanov.ru
 */

use Bitrix\Main\Application;

/**
 * Class provides helps functions for work with FAQ entities.
 * */
class FaqHelper
{
    /**
     * Adds new question by fields given in $_POST array.
     *
     * Waiting for fields:
     * - name
     * - email
     * - questionText
     * 
     * All fileds checks by forSql() method.
     * */
    static function addQuestionFromPost( )
    {
        $connection = Application::getConnection();
        $sqlHelper = $connection->getSqlHelper();

        $fields = array();

        $fields["NAME"] = $sqlHelper->forSql($_POST["name"], 100);
        $fields["PREVIEW_TEXT"] = $sqlHelper->forSql($_POST["questionText"], 500);
        $fields["PROPERTY_VALUES"]["EMAIL"] = $sqlHelper->forSql($_POST["email"], 100);

        $fields["ACTIVE_FROM"] = date("d.m.Y H:i:s");
        $fields["ACTIVE"] = "Y";
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

        $fields["IBLOCK_ID"] = FAQ_IBOCK_ID;

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
     * @see http://new.tvoygoa.ru/bitrix/admin/message_edit.php?lang=ru&ID=8
     * */
    public static function sendAdminEmail($eventFields){
        CEvent::SendImmediate("FAQ_NEW_QUESTION", SITE_ID, $eventFields);
    }
 
}