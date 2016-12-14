<?php
if ( !defined( "B_PROLOG_INCLUDED" ) || B_PROLOG_INCLUDED !== true )
    die();

use Bitrix\Iblock;
use Goa\Domain\Util;
use Bitrix\Main\Entity;
use Bitrix\Main\Entity\Query;

/*
 * Наследуем базовый компонент "Блок на сайте".
 * В нем содержится общая логика работы подобного компонента.
 * */
CBitrixComponent::includeComponentClass("goa:block");

class OrderForm extends CProjectBlockComponent
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

        

        //global $CACHE_MANAGER;
        //
        //$CACHE_MANAGER->StartTagCache($this->getCachePath());
        //    $CACHE_MANAGER->RegisterTag("");
        //$CACHE_MANAGER->EndTagCache();

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
        
        //$arResult = &$this->arResult;
        //$arParams = &$this->arParams;

    }
    
}