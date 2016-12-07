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

class MainPageSlider extends CProjectBlockComponent
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


        $arResult["ITEMS"] = [];

        $defaultFields = ["NAME", "PREVIEW_TEXT", "PREVIEW_PICTURE", "ID"];

        $propEnt = Util\BitrixOrmHelper::getIBlockPropertiesEntity(MAIN_PAGE_SLIDER_IBOCK_ID);

        $arSelect = $defaultFields;
        foreach(['URL'] as $property) {
            $arSelect["PROP_".$property] = "PROP.".$property;
        }

        $arFilter = array (
            "=IBLOCK_ID" => MAIN_PAGE_SLIDER_IBOCK_ID,
            "=ACTIVE" => "Y",
        );

        $queryEl = (new Query(Iblock\ElementTable::getEntity()))
            ->setFilter($arFilter)
            ->setOrder(['SORT' => 'ASC'])
            ->registerRuntimeField('', new Entity\ReferenceField(
                    'PROP',
                    $propEnt,
                    array('=this.ID' => 'ref.IBLOCK_ELEMENT_ID'),
                    array('join_type' => 'LEFT')
                )
            )
        ;

        $resultData = $queryEl
            ->setSelect($arSelect)
            ->exec();

        while($arInfo = $resultData->Fetch()) {

            $arResult["ITEMS"][] = $arInfo;
        }


        global $CACHE_MANAGER;

        $CACHE_MANAGER->StartTagCache($this->getCachePath());
            $CACHE_MANAGER->RegisterTag("mainpage_slider_component");
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