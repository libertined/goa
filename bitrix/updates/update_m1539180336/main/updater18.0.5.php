<?
$updater->CopyFiles("install/bitrix", "");
$updater->CopyFiles("install/components", "components");
$updater->CopyFiles("install/js", "js");

if ($updater->CanUpdateDatabase())
{
	$agent = $DB->ForSql("CUserCounter::DeleteOld();");
	$res = $DB->Query("SELECT 'x' FROM b_agent WHERE MODULE_ID='main' AND NAME='".$agent."'");
	if(!$res->Fetch())
	{
		$updater->Query("INSERT INTO b_agent (MODULE_ID, SORT, NAME, ACTIVE, AGENT_INTERVAL, IS_PERIOD, NEXT_EXEC) VALUES('main', 100, '".$agent."', 'Y', 60*60*24, 'N', ".$DB->GetNowDate().")");
	}
}

if($updater->CanUpdateKernel())
{
	$arToDelete = array(
		"modules/main/install/components/bitrix/main.pagenavigation/.description.php",
		"components/bitrix/main.pagenavigation/.description.php",
		"modules/main/install/components/bitrix/main.pagenavigation/lang",
		"components/bitrix/main.pagenavigation/lang",
		"modules/main/install/components/bitrix/breadcrumb/templates/bootstrap_v4",
		"components/bitrix/breadcrumb/templates/bootstrap_v4",	
	);
	foreach($arToDelete as $file)
		CUpdateSystem::DeleteDirFilesEx($_SERVER["DOCUMENT_ROOT"].$updater->kernelPath."/".$file);
}
