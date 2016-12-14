<?php

/**
 * Created by PhpStorm.
 * User: dev@dermanov.ru
 * Date: 14.10.2016
 * Time: 22:32
 *
 *
 */

use Bitrix\Main\Application;

/**
 * This class provide work with HL table of "Faq" entity.
 * */
class HLFaqModel extends HLEntityModel
{
    const ENTITY_ID         = 2;
    const ENTITY_NAME       = "Faq";
    const ENTITY_TABLE_NAME = "faq";

    /**
     * Returns array of FAQ items sorted by SORT.
     * */
    public static function getItems( $perPage = 10, $pageNum = 1 )
    {
        if (!intval($perPage)) {
            throw new Exception ( "\$perPage must be an integer" );
        }

        if (!intval($pageNum)) {
            throw new Exception ( "\$pageNum must be an integer" );
        }

        $params = array(
            //"filter" => array(
            //    "UF_ACTIVE" => 1
            //),
            "limit"  => $perPage,
            "offset" => $perPage * ($pageNum - 1),
            "order"  => array("UF_SORT" => "ASC"),
            'count_total' => true,
            "select" => array(
                "*",
            ),
        ); 

        $result = static::get( $params );

        /*
         * calculate page count with current perPage value
         * for simple use in template
         * */
        $count = $result["DB_RESULT"]->getCount();
        $result["PAGE_COUNT"] = ceil($count / $perPage);

        return $result;
    }


    /**
     * Adds new item by fields given in $_POST array.
     *
     * Waiting for fields:
     * - name
     * - link (social)
     * - reviewText
     * - excursion
     * - photos (array of files)
     *
     * All fileds checks by forSql() method.
     * */
    static function addFromPost( )
    {
        $connection = Application::getConnection();
        $sqlHelper = $connection->getSqlHelper();

        $fields = [
            "UF_ACTIVE" => 0,
            "UF_SORT"   => 500,
            "UF_DATE"   => date("d.m.Y"),
            "UF_QUESTION"    => $sqlHelper->forSql($_POST["questionText"], 500),
            "UF_USER_NAME"   => $sqlHelper->forSql($_POST["name"], 100),
            "UF_USER_EMAIL"  => $sqlHelper->forSql($_POST["email"], 100)
        ];

        return static::add($fields);
    }
}