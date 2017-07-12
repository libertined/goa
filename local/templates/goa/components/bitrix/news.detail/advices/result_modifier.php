<?if(!defined("B_PROLOG_INCLUDED") || B_PROLOG_INCLUDED!==true)die();


if(!empty($arResult["TAGS"])) {
    $tagsList = explode(',', $arResult["TAGS"]);
    $arResult["TAGS"] = [];
    foreach($tagsList as $tag) {
        $tag = trim($tag);
        $arResult["TAGS"][] = [
            "NAME" => $tag,
            "URL" => $APPLICATION->GetCurPageParam("tags=".str_replace(' ', '+', $tag), array("tags"))
        ];
    }
}
