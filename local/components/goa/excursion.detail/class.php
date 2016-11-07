<?php
if ( !defined( "B_PROLOG_INCLUDED" ) || B_PROLOG_INCLUDED !== true )
    die();

use Bitrix\Iblock;
use Bitrix\Main\Entity;
use Bitrix\Main\Entity\Query;

use Goa\Domain\Util;

class ExcursionDetail extends CBitrixComponent
{
    
    public function onPrepareComponentParams( $arParams ){
        $result = parent::onPrepareComponentParams($arParams);

        if(empty($result["ELEMENT_CODE"])) {
            return false;
        }

        if(empty($result["IBLOCK_ID"])) {
            return false;
        }

      $defaultFields = ["NAME", "TAGS", "DETAIL_TEXT", "PREVIEW_PICTURE", "ID"];
      $result["FIELD_CODE"] = array_merge($defaultFields, $result["FIELD_CODE"]);

      $defaultProp = ["PROGRAM", "PRICE", "GALLERY", "IMAGES"];
      $result["PROPERTY_CODE"] = array_merge($defaultProp, $result["PROPERTY_CODE"]);

      return $result;
    }

    public function executeComponent()
    {
        global $APPLICATION;
        /*if($this->startResultCache()) {*/
            $propEnt = Util\BitrixOrmHelper::getIBlockPropertiesEntity(
              $this->arParams["IBLOCK_ID"]);

            $arSelect = $this->arParams["FIELD_CODE"];
            foreach($this->arParams["PROPERTY_CODE"] as $property) {
                $arSelect["PROP_".$property] = "PROP.".$property;
            }

            $arFilter = array (
              "=IBLOCK_ID" => $this->arParams["IBLOCK_ID"],
              "=ACTIVE" => "Y",
              "=CODE" => $this->arParams["ELEMENT_CODE"]
            );

            $queryEl = (new Query(Iblock\ElementTable::getEntity()))
              ->setFilter($arFilter)
              ->registerRuntimeField('', new Entity\ReferenceField(
                'PROP',
                $propEnt,
                array('=this.ID' => 'ref.IBLOCK_ELEMENT_ID'),
                array('join_type' => 'LEFT')
              ));
            if(!empty($arSelect["PROP_IMAGES"])) {
              $arSelect[] = "PHOTOS";
              $arSelect["REF_GALLERY"] = "PROP.GALLERY_VALUE";
              $queryEl->registerRuntimeField('', new Entity\ExpressionField(
                'PHOTOS',
                'GROUP_CONCAT(%s SEPARATOR \'##\')',
                ['PROP.IMAGES'],
                [ 'fetch_data_modification' => function () {
                  return [function ($value) {
                    $elements = explode("##", $value);
                    return $elements;
                  }];
                }]
              ));
              unset($arSelect["PROP_GALLERY"]);
              unset($arSelect["PROP_IMAGES"]);
            }
            $resultData = $queryEl
              ->setSelect($arSelect)
              ->exec();

            while($arInfo = $resultData->Fetch()) {
              var_dump($arInfo);
              $arInfo["URL"] = $arInfo["CODE"];
              $arInfo["TITLE"] = $arInfo["NAME"];
              $arInfo["GALLERY"] = $this->getGalleryInfo($arInfo["PROP_GALLERY"], $arInfo["PHOTOS"]);
              $this->arResult["ITEM"] = $arInfo;
            }
        /*}
        $this->endResultCache();

*/

        //var_dump($this->arResult);
        die();

        if(empty($this->arResult["ITEM"])){
            Iblock\Component\Tools::process404('', true, true, true);
        }
        else{
            //Делаем хлебные крошки и заголовок
            $APPLICATION->SetPageProperty("PAGE_TITLE", $this->arResult["ITEM"]["TITLE"]);
            $APPLICATION->AddChainItem($this->arResult["ITEM"]["TITLE"], $this->arResult["ITEM"]["URL"]);
        }

        $this->includeComponentTemplate();
        return $this->arResult;
    }

  protected function getGalleryInfo($gallery, $photos)
  {
    $result = [];
    if(!empty($gallery)) {
      $result["URL"] = reset($arResult["DISPLAY_PROPERTIES"]["GALLERY"]["LINK_SECTION_VALUE"])["SECTION_PAGE_URL"];
      $itemsData = Iblock\ElementTable::getList([
        'select' => ['NAME', 'PICT', 'ID'],
        'filter' => [
          '@ID' => $arResult["DISPLAY_PROPERTIES"]["IMAGES"]["VALUE"]
        ],
        'runtime' => [
          Util\BitrixOrmHelper::getFileReferenceField('FILE', 'DETAIL_PICTURE'),
          Util\BitrixOrmHelper::getFilePathExpressionField('PICT', 'FILE')
        ]

      ]);
      while ($row = $itemsData->fetch()) {
        $arResult["GALLERY"]["ITEMS"][] = [
          "ID" => $row["ID"],
          "NAME" => $row["NAME"],
          "URL" => $row["PICT"],
        ];
      }
    }
  }
}