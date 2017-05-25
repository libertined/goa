<?require($_SERVER["DOCUMENT_ROOT"]."/bitrix/modules/main/include/prolog_before.php");?>
<?
$photos = array();
for($i = 0; $i < count($_FILES["file"]["name"]);$i++){
    $photos[$i]["name"] = $_FILES["file"]["name"][$i];
    $photos[$i]["type"] = $_FILES["file"]["type"][$i];
    $photos[$i]["tmp_name"] = $_FILES["file"]["tmp_name"][$i];
    $photos[$i]["error"] = $_FILES["file"]["error"][$i];
    $photos[$i]["size"] = $_FILES["file"]["size"][$i];

}
if(empty($_FILES["file"])){
    echo "Введите все поля";
}else{
    if(CModule::IncludeModule("iblock")){
        $name = '';
        $SECTION_ID = $_REQUEST["sect"];
        if (!empty($SECTION_ID)){
            $db_list = CIBlockSection::GetList(Array(), array('IBLOCK_ID'=>6,"ID"=>$SECTION_ID), true);
            while($ar_result = $db_list->GetNext()){
                $name = $ar_result['NAME'];
            }
            $cnt = CIBlockSection::GetSectionElementsCount($SECTION_ID);
        }
        else{
            $name = 'Фото';
        }

        $photos = array_reverse($photos);
        foreach($photos as $key=>$photo){
            $item = new CIBlockElement;
            $PROP = array();
            $arLoadProductArray = Array(
                "MODIFIED_BY"    => $USER->GetID(), // элемент изменен текущим пользователем
                "IBLOCK_SECTION_ID" => $SECTION_ID,          // элемент лежит в корне раздела
                "IBLOCK_ID"      => 6,
                "PROPERTY_VALUES"=> $PROP,
                "NAME"           => $name.'_'.($cnt+$key+1).' ('.$photo['name'].')',
                "SORT"           => ($cnt+$key+1)*10,
                "ACTIVE"         => "Y",            // активен
                "ACTIVE_FROM"    => ConvertTimeStamp(time(), "FULL"),
                "PREVIEW_PICTURE" => $photo,
                "DETAIL_PICTURE" => $photo
            );
            if($PRODUCT_ID = $item->Add($arLoadProductArray))
                echo "Спасибо за загрузку фото";
            else
                echo "Error: ".$item->LAST_ERROR;
        }
    }
}
?>