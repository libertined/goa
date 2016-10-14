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

        $arResult["ITEMS"] = HLReviewModel::getByTourId(array(), 1, 1);

        echo '<pre><=== \$arResult ===></pre><pre>' . print_r($arResult, 1) . '</pre><pre><\=== \$arResult ===></pre>';
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