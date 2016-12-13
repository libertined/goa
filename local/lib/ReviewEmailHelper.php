<?php

/**
 * Created by PhpStorm.
 * Date: 13.12.2016
 * Time: 15:46
 *
 * @author dev@dermanov.ru
 */

/**
 * Class provides work with email notifications around reviews.
 * */
class ReviewEmailHelper
{
    /**
     * Sends email to admins about new review on site.
     *
     * Fields must match fields in admin panel.
     * @see http://new.tvoygoa.ru/bitrix/admin/message_edit.php?lang=ru&ID=9
     * */
    public static function notifyAdminAboutNew( $eventFields )
    {
        CEvent::SendImmediate("REVIEWS_NEW_REVIEW", SITE_ID, $eventFields);
    }
    
    /**
     * TODO implement. now its only placeholder.
     * 
     * Sends email to user about admin reply.
     *
     * Fields must match fields in admin panel.
     * @see http://new.tvoygoa.ru/bitrix/admin/message_edit.php?lang=ru&ID=9
     * */
    public static function notifyUserAboutAnswer( $eventFields )
    {
        throw new Exception ( "event REVIEWS_ADMIN_ANSWER not created. do it and remove this exception." );
        CEvent::SendImmediate("REVIEWS_ADMIN_ANSWER", SITE_ID, $eventFields);
    }
}