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
 * This class provide work with HL table of "Reviews" entity.
 * */
class HLReviewModel extends HLEntityModel
{
    const ENTITY_ID         = 1;
    const ENTITY_NAME       = "Reviews";
    const ENTITY_TABLE_NAME = "a_reviews";

    /**
     * Returns reviews of given tours with pagenav params.
     * In date hronology order.
     * */
    public static function getByTourId( $tourId = array(), $perPage = 10, $pageNum = 1 )
    {
        $params = array(
            "filter" => array(),
            "limit"  => $perPage,
            "offset" => $perPage * ($pageNum - 1),
            "order"  => array("UF_DATE" => "DESC"),
        );

        if ($tourId) {
            $params["filter"]["UF_TOUR_ID"] = $tourId;
        }

        return static::get( $params );
    }

}