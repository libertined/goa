<?php

/**
 * Created by PhpStorm.
 * User: dev@dermanov.ru
 * Date: 14.10.2016
 * Time: 22:32
 *
 *
 */

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

}