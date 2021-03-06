<?php

includeModuleLangFile(__FILE__);

if (class_exists("goa_domain")) {
    return;
}

class goa_domain extends CModule
{
    var $MODULE_ID = "goa.domain";
    var $MODULE_VERSION;
    var $MODULE_VERSION_DATE;
    var $MODULE_NAME;
    var $MODULE_DESCRIPTION;
    var $MODULE_CSS;
    var $MODULE_GROUP_RIGHTS = 'Y';

    public function goa_domain()
    {
        $arModuleVersion = [];

        $pathInfo = pathinfo(__FILE__);

        include("$pathInfo[dirname]/version.php");

        $this->MODULE_VERSION = $arModuleVersion['VERSION'];
        $this->MODULE_VERSION_DATE = $arModuleVersion['VERSION_DATE'];

        $this->MODULE_NAME = GetMessage("GOA_DOMAIN_MODULE_INSTALL_NAME");
        $this->MODULE_DESCRIPTION = GetMessage("GOA_DOMAIN_MODULE_INSTALL_DESC");

        $this->PARTNER_NAME = GetMessage("GOA_DOMAIN_MODULE_INSTALL_LENVENDO");
        $this->PARTNER_URI = "http://ae-studio.ru/";
    }

    public function installDB()
    {
        global $DB, $DBType, $APPLICATION;

        $pathInfo = pathinfo(__FILE__);
        $errors = $DB->RunSQLBatch("$pathInfo[dirname]/db/$DBType/install.sql");

        if (!empty($errors)) {
            $APPLICATION->ThrowException(implode("", $errors));
            return false;
        }

        RegisterModule($this->MODULE_ID);

        return true;
    }

    public function doInstall()
    {
        global $APPLICATION, $step;

        $this->errors = null;

        $this->InstallDB(false);

        $GLOBALS['errors'] = $this->errors;

        $step2 = "$_SERVER[DOCUMENT_ROOT]/local/modules/{$this->MODULE_ID}/install/step2.php";
        $APPLICATION->IncludeAdminFile(GetMessage("GOA_DOMAIN_MODULE_INSTALL_TITLE"), $step2);
    }

    public function doUninstall()
    {
        global $APPLICATION;

        $title = GetMessage("GOA_DOMAIN_MODULE_INSTALL_TITLE");
        $stepFile = "$_SERVER[DOCUMENT_ROOT]/local/modules/{$this->MODULE_ID}/install/unstep1.php";
        $APPLICATION->IncludeAdminFile($title, $stepFile);
    }

    public function getModuleRightList()
    {
        $groupRights = [
            "reference_id" => ['D', 'R', 'W', 'X'],
            "reference" => [
                "[D] ".GetMessage("GOA_DOMAIN_MODULE_INSTALL_PERM_D"),
                "[R] ".GetMessage("GOA_DOMAIN_MODULE_INSTALL_PERM_R"),
                "[W] ".GetMessage("GOA_DOMAIN_MODULE_INSTALL_PERM_W"),
                "[X] ".GetMessage("GOA_DOMAIN_MODULE_INSTALL_PERM_X")
            ]
        ];

        return $groupRights;
    }
}
