<?php
if ( !defined( "B_PROLOG_INCLUDED" ) || B_PROLOG_INCLUDED !== true )
    die();

use Bitrix\Main\Loader,
    Bitrix\Iblock\InheritedProperty\ElementValues,
    Bitrix\Iblock;

class CProjectBlockComponent extends CBitrixComponent
{

    public function onPrepareComponentParams( $arParams ){
        // проверка обязательных параметров
        $arParams["CACHE_TIME"] = isset( $arParams["CACHE_TIME"] ) ? $arParams["CACHE_TIME"] : 36000000;
        $arParams["CACHE_TYPE"] = isset( $arParams["CACHE_TYPE"] ) ? $arParams["CACHE_TYPE"] : "A";


        return $arParams;
    }

    /**
     * Detect ACTION by REQUEST params
     * */
    public function detectAction() {
        // index - by default
        return "index";
    }

    public function executeComponent(){
        global $APPLICATION;

        $arResult = &$this->arResult;
        $arParams = &$this->arParams;
    
        if($this->preventExecution()) {
            return false;
        }
        
        /*
         * Detect ACTION by REQUEST params
         * */
        $arParams["ACTION"] = $arParams["TEMPLATE"] = $this->detectAction();

        /*
         * Обрабатывает все некешируемые запросы, перед выполнением шаблона
         * */
        $actionName = "action_" . $arParams["ACTION"] . "_noncached_before";

        if ( method_exists( $this, $actionName ) )
            $this->$actionName();


        if($this->StartResultCache()) {

            $actionName = "action_" . $arParams["ACTION"] . "_cached";

            if ( method_exists( $this, $actionName ) )
                $this->$actionName();

            $this->IncludeComponentTemplate( $arParams["TEMPLATE"] );

        }

        /*
         * Обрабатывает все некешируемые запросы, после выполнения шаблона
         * */
        $actionName = "action_" . $arParams["ACTION"] . "_noncached_after";

        if ( method_exists( $this, $actionName ) )
            $this->$actionName();
    }


    /*
     * Главная кешируемая часть компонента
     * */
    function action_index_cached(){
        //global $APPLICATION;

        //$arResult = &$this->arResult;
        //$arParams = &$this->arParams;

    }

    /**
     * Обрабатывает все некешируемые запросы, перед выполнением шаблона
     * */
    function action_index_noncached_before(){
        //global $APPLICATION;

        //$arResult = &$this->arResult;
        //$arParams = &$this->arParams;

    }

    /**
     * Обрабатывает все некешируемые запросы, после выполнения шаблона
     * */
    function action_index_noncached_after(){
        global $APPLICATION;

        $arResult = &$this->arResult;
        $arParams = &$this->arParams;
    
        /*
         * По-умолчанию в подвале в качестве фона - трава и над ней немного прозрачного фона.
         * $APPLICATION->GetProperty("FOOTER_BG_COLOR") - для того, чтобы задать
         * цвет фона поверх травы. Чтобы совпадал с фоном нижнего блока.
         * */
        if ($arParams["BG_COLOR_CLASS"])
            $APPLICATION->SetPageProperty("FOOTER_BG_COLOR", $arParams["BG_COLOR_CLASS"]);

    }

    /**
     * Проверяет, следует ли отменить исполнение компонента
     * */
    function preventExecution(){
        return false;
    }

    /**
     * TODO
     * застопорился на формировании DETAIL_PAGE_URL, слишком заморочно
     * это в новом АПИ, и не видно заготовок
     * */
    //function getItems(){
    //    global $APPLICATION;
    //
    //    $arResult = &$this->arResult;
    //    $arParams = &$this->arParams;
    //
    //    if (!Loader::includeModule("iblock"))
    //        throw new \Exception("Module iblock is not installed");
    //
    //    $queryParams = array(
    //        "order" => array(
    //            "SORT" => "ASC",
    //            "NAME" => "ASC",
    //        ),
    //        "select" => array(
    //            "ID", "NAME",
    //            //"DETAIL_PAGE_URL",
    //            "PREVIEW_PICTURE",
    //            "DETAIL_PICTURE",
    //
    //            //"CATALOG_PRICE_1",
    //        ),
    //        "filter" => array(
    //            "IBLOCK_ID"   => CATALOG_IBLOCK_ID,
    //            "ACTIVE"      => "Y",
    //        ),
    //        "limit" => 10
    //    );
    //
    //    /*
    //     * Получаем список элементов
    //     * */
    //    $result = array();
    //
    //
    //    $resIblock = Iblock\IblockTable::getList(array(
    //        "select" => array(
    //            "ID", "NAME",
    //            //"DETAIL_PAGE_URL",
    //            "PREVIEW_PICTURE",
    //            "DETAIL_PICTURE",
    //
    //            //"CATALOG_PRICE_1",
    //        ),
    //        "filter" => array(
    //            "IBLOCK_ID"   => CATALOG_IBLOCK_ID,
    //        ),
    //    ));
    //
    //    $res = Iblock\ElementTable::getList($queryParams);
    //
    //    while($ob = $res->fetch()) {
    //        //$ob["IMG"]  = getResizedImgOrPlaceholder( $ob["DETAIL_PICTURE"], 1920, 680);
    //        //$ob["LINK"] = $ob["PROPERTY_GET_URL_VALUE"] ? $ob["PROPERTY_GET_URL_VALUE"] : "#";
    //
    //        $result[ $ob["ID"] ] = $ob;
    //    }
    //
    //    return $result;
    //}
    
    
    /**
     * Получает значения одного или нескольких множественного св-ва.
     * Для иблоков 1.0
     *
     * TODO переписать это на один запрос. к сожалению через АПИ не получить значения нескольких множественных св-в
     * тк фильтр по коду не принимает массив
     *
     * @param  array $props Список символьных кодов множественных св-в
     * */
    public function getMultiPropValues($IBLOCK_ID, $productId, $props )
    {
        if (!$IBLOCK_ID)
            throw new Exception ( '$IBLOCK_ID can not be void' );
        
        if (!$productId)
            throw new Exception ( '$productId can not be void' );
        
        if (!$props || !is_array($props))
            throw new Exception ( '$props can not be void' );
        
        //
        $result = array();
        
        foreach ( $props as $code ) {
            $res = CIBlockElement::GetProperty($IBLOCK_ID, $productId, "sort", "asc", array("CODE" => $code));
            
            while ($ob = $res->Fetch())
            {
                if ($ob['VALUE'])
                    $result[ $ob['CODE'] ][] = $ob['VALUE'];
            }
        }
        
        return $result;
    }

}