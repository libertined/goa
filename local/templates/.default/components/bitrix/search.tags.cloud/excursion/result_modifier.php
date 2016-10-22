<?if(!defined("B_PROLOG_INCLUDED") || B_PROLOG_INCLUDED!==true)die();
$period = 0; $time = 0;
// ********************************************************************************
if (intVal($arParams["PERIOD_NEW_TAGS"]) > 0)
{
	$time = time()+CTimeZone::GetOffset();
	$period = intVal($arParams["PERIOD_NEW_TAGS"])*24*3600;
}
// ********************************************************************************
if (is_array($arResult["SEARCH"]))
{
	foreach ($arResult["SEARCH"] as $key => $res)
	{
		if ($arResult["CNT_ALL"] != 0)
		{
			$cnt = $res["CNT"];
			if ($period > 0  && (($time - $res["TIME"]) <= $period))
			{
				$cnt += ($arResult["CNT_MAX"] - $cnt)*($period - ($time - $res["TIME"]))/$period;
			}
		}
	}
}
?>