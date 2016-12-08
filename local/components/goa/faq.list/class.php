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

class FaqList extends CProjectBlockComponent
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

        /*
         * TODO постраничная навигация
         * В верстке не заложен механизм постраничной навигации или кнопки "показать еще".
         * На странице выводятся все вопросы сразу.
         * Однако, если их будет слишком много - нужно будет реализовать постраничную разбивку.
         * */
        $arResult += HLFaqModel::getItems(100, 1);


        global $CACHE_MANAGER;

        $CACHE_MANAGER->StartTagCache($this->getCachePath());
            $CACHE_MANAGER->RegisterTag("faq_list_component");
        $CACHE_MANAGER->EndTagCache();
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