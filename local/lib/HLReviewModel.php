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
 * This class provide work with HL table of "Reviews" entity.
 * */
class HLReviewModel extends HLEntityModel
{
    const ENTITY_ID         = 1;
    const ENTITY_NAME       = "Reviews";
    const ENTITY_TABLE_NAME = "a_reviews";

    /**
     * Add form field names
     * */
    const
        FORM_ADD_FIELD_USER_NAME_NAME        = "name",
        FORM_ADD_FIELD_USER_SOCIAL_LINK_NAME = "link",
        FORM_ADD_FIELD_TOUR_ID_NAME          = "excursion",
        FORM_ADD_FIELD_TEXT_NAME             = "reviewText",
        FORM_ADD_FIELD_PHOTOS_NAME           = "photos"
    ;

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
    public static function getAllToursInfo( $updateCache = false )
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

            $sort = array(
                "SORT" => "ASC",
                "NAME" => "ASC",
            );

            $arFilter = array(
                "IBLOCK_ID"     => TOUR_IBOCK_ID,
                "ACTIVE"        => "Y",
            );

            $arSelect = array(
                "ID", "NAME",
                "DETAIL_PAGE_URL",
                //"PROPERTY_",
            );
            $res = CIBlockElement::GetList($sort, $arFilter, false, false, $arSelect);

            $result = array();

            while ($tmp = $res->GetNext(false, false)) {
                $result[ $tmp["ID"] ] = array(
                    "NAME" => $tmp["NAME"],
                    //"URL"  => $tmp["DETAIL_PAGE_URL"],
                );
            }

            // Сохраняем данные в кэш
            $obCache->EndDataCache( $result );
        }

        return $result;
    }
    
    
    /**
     * Adds new review by fields given in $_POST array.
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
            "UF_DATE"   => date("d.m.Y H:i:s"),
            "UF_USER_NAME"    => $sqlHelper->forSql($_POST[ static::FORM_ADD_FIELD_USER_NAME_NAME], 100),
            "UF_USER_SOC_URL" => $sqlHelper->forSql($_POST[ static::FORM_ADD_FIELD_USER_SOCIAL_LINK_NAME ], 100),
            "UF_TEXT"         => htmlspecialchars($_POST[ static::FORM_ADD_FIELD_TEXT_NAME ]),
            "UF_TOUR_ID"      => [
                intval($_POST[ static::FORM_ADD_FIELD_TOUR_ID_NAME ])
            ],
            "UF_IMG" => FileHelper::savePostMultiFile(static::FORM_ADD_FIELD_PHOTOS_NAME, "/reviews_add_form/")
        ];
    
        return static::add($fields);
    }
    
}