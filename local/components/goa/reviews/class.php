<?php
if ( !defined( "B_PROLOG_INCLUDED" ) || B_PROLOG_INCLUDED !== true )
    die();

use Bitrix\Main\Loader,
    //Bitrix\Iblock\InheritedProperty\ElementValues,
    Bitrix\Iblock;

/*
 * Наследуем базовый компонент "Блок на сайте".
 * В нем содержится общая логика работы подобного компонента.
 * */
CBitrixComponent::includeComponentClass("goa:block");

class Reviews extends CProjectBlockComponent
{
    
    public function onPrepareComponentParams( $arParams ){
        $arParams["PER_PAGE"] = intval($arParams["PER_PAGE"]);

        if (!$arParams["PER_PAGE"]) {
            $arParams["PER_PAGE"] = 5;
        }

        // try to get manual handled page
        $arParams["PAGE_NUM"] = intval($arParams["REVIEWS_PAGE_NUM"]);

        // try to get auto handled page
        if (!$arParams["PAGE_NUM"]) {
            $pageNum = $_REQUEST["REVIEWS_PAGE_NUM"];

            $arParams["PAGE_NUM"] = $pageNum ? $pageNum : 1;
        }

        $TOUR_ID = trim($arParams["TOUR_ID"]);

        if ($TOUR_ID) {
            $arParams["TOUR_ID"]  = explode(",", $TOUR_ID);
        }


        return parent::onPrepareComponentParams($arParams);
    }
    
    /*
     * Главная кешируемая часть компонента
     * */
    function action_index_cached(){
        global $APPLICATION;
        
        $arResult = &$this->arResult;
        $arParams = &$this->arParams;


        \Bitrix\Main\Loader::includeModule("highloadblock") or die( 'Module highloadblock not found' );

        require_once $_SERVER["DOCUMENT_ROOT"] . "/local/lib/HLEntityModel.php";
        require_once $_SERVER["DOCUMENT_ROOT"] . "/local/lib/HLReviewModel.php";

        $arResult += HLReviewModel::getByTourId($arParams["TOUR_ID"], $arParams["PER_PAGE"], $arParams["PAGE_NUM"]);
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
        
    }
    
}