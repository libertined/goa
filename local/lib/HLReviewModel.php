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
        if (!intval($perPage)) {
            throw new Exception ( "\$perPage must be an integer" );
        }

        if (!intval($pageNum)) {
            throw new Exception ( "\$pageNum must be an integer" );
        }

        $params = array(
            "filter" => array(
                "UF_ACTIVE" => 1
            ),
            "limit"  => $perPage,
            "offset" => $perPage * ($pageNum - 1),
            "order"  => array("UF_DATE" => "DESC"),
            'count_total' => true,
            "select" => array(
                "*",
            ),
        );

        if ($tourId) {
            $params["filter"]["UF_TOUR_ID"] = $tourId;
        }

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
     * Returns info about tour
     * - NAME
     * - DETAIL_PAGE_URL
     *
     *
     * TODO get info from tours own model-class
     * */
    public static function getTourInfoById( $tourId)
    {
        if ( !intval($tourId) ) {
            return array();
        }

        $toursInfo = static::getAllToursInfo();

        // if not fount stored info about tour
        if (! $toursInfo[ $tourId ] ) {
            // try to update cache with tours info
            $toursInfo = static::getAllToursInfo(true);

            if (! $toursInfo[ $tourId ] ) {
                AddMessage2Log( "cant find info about tour [$tourId]", "HLReviewModel" );
            }
        }

        return $toursInfo[ $tourId ];
    }

    /**
     * Returns info about all tours
     * - NAME
     * - DETAIL_PAGE_URL
     *
     * @param $updateCache bool daf
     *
     *
     * @TODO get info from tours own model-class
     * */
    private static function getAllToursInfo( $updateCache = false )
    {

        static $result;

        // if info already loaded
        if ($result && !$updateCache) {
            return $result;
        }

        // Создаем объект для работы с кешем (способ кеширования задается в .settings.php)
        $obCache = Bitrix\Main\Data\Cache::createInstance();

        // Время жизни кеша, в секундах - 10 days
        $timeout = 864000;

        // Уникальный ключ для кешированных данных
        // на основании входных данных
        $cacheKey = "HLReviewModel::getAllToursInfo";

        // Если кэш валиден
        if( !$updateCache && $obCache->InitCache($timeout, $cacheKey, "HLReviewModel" ) )
        {
            // Извлекаем данные из кэша
            $result = $obCache->GetVars();
        }
        // Если кэш невалиден
        elseif( $obCache->StartDataCache()  )
        {

            \Bitrix\Main\Loader::includeModule("iblock") or die( 'Module iblock not found' );

            $arFilter = array(
                "IBLOCK_ID"     => TOUR_IBOCK_ID,
                "ACTIVE"        => "Y",
            );
            $arSelect = array(
                "ID", "NAME",
                "DETAIL_PAGE_URL",
                //"PROPERTY_",
            );
            $res = CIBlockElement::GetList(false, $arFilter, false, false, $arSelect);

            $result = array();

            while ($tmp = $res->GetNext(false, false)) {
                $result[ $tmp["ID"] ] = array(
                    "NAME" => $tmp["NAME"],
                    "URL"  => $tmp["DETAIL_PAGE_URL"],
                );
            }

            // Сохраняем данные в кэш
            $obCache->EndDataCache( $result );
        }

        return $result;
    }

}