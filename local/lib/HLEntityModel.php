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
 * This class provide basis for work with HL table entity.
 * */
class HLEntityModel
{
    const ENTITY_ID         = "FILL_ID";
    const ENTITY_NAME       = "FILL_NAME";
    const ENTITY_TABLE_NAME = "FILL_TABLE_NAME";

    protected static
        $entity
    ;

    /**
     * Returns reviews from HL iblock with given params
     */
    public static function get( $params = array() )
    {
        $entity = static::getEntity();


        $dbRes = $entity::getList( $params );

        $result = array(
            "ITEMS"     => array(),
            "DB_RESULT" => $dbRes,
        );

        while ( $tmp = $dbRes->fetch() ) {
            $result["ITEMS"][ $tmp["ID"] ] = $tmp;
        }

        return $result;
    }

    /**
     * Returns entity instance for work with HL iblock table.
     */
    public static function getEntity(  )
    {
        if (!static::$entity) {

            $tmp = \Bitrix\Highloadblock\HighloadBlockTable::compileEntity(array(
                'ID'         => static::ENTITY_ID,
                'NAME'       => static::ENTITY_NAME,
                'TABLE_NAME' => static::ENTITY_TABLE_NAME
            ));

            static::$entity = $tmp->getDataClass();

        }

        return static::$entity;
    }
    
    /**
     * Adds new review by fields given in $fields array.
     *
     * */
    public static function add( $fields)
    {
        \Bitrix\Main\Loader::includeModule("highloadblock");
        
        $className = static::getEntity();
        
        /**@var $model \Bitrix\Highloadblock\HighloadBlockTable */
        $model = new $className;
        
        $res = $model->add($fields);
        
        if (!$res->isSuccess()) {
            AddMessage2Log($res->getErrorMessages(), "ERROR while add new review");
            AddMessage2Log($fields, "fields");
        }
        
        return $res->getId();
    }
}