<?
$updater->CopyFiles("install/components", "components");
$updater->CopyFiles("install/js", "js");
$updater->CopyFiles("install/services", "services");

if($updater->CanUpdateDatabase())
{
	if(!$DB->IndexExists("b_agent", array("NAME"), true))
	{
		$updater->Query(array(
			"MySQL"  => "CREATE INDEX ix_agent_name ON b_agent (NAME(100))",
		));
	}
}

if($updater->CanUpdateKernel())
{
	$arToDelete = array(
		"modules/main/install/js/main/gridtile/gridtile.js",
		"js/main/gridtile/gridtile.js",
	);
	foreach($arToDelete as $file)
		CUpdateSystem::DeleteDirFilesEx($_SERVER["DOCUMENT_ROOT"].$updater->kernelPath."/".$file);
}
