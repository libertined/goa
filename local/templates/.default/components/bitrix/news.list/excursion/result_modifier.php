<?if(!defined("B_PROLOG_INCLUDED") || B_PROLOG_INCLUDED!==true)die();

foreach($arResult["ITEMS"] as &$item){
	if(!empty($item["FIELDS"]["TAGS"])) {
		$tagsList = explode(',', $item["FIELDS"]["TAGS"]);
		$item["TAGS"] = [];
		foreach($tagsList as $tag) {
			$tag = trim($tag);
			$item["TAGS"][] = [
				"NAME" => $tag,
				"URL" => $APPLICATION->GetCurPageParam("tags=".str_replace(' ', '+', $tag), array("tags"))
			];
		}
	}
}