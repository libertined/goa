<? if (!defined("B_PROLOG_INCLUDED") || B_PROLOG_INCLUDED !== true) die();
/** @var array $arParams */
/** @var array $arResult */
/** @global CMain $APPLICATION */
/** @global CUser $USER */
/** @global CDatabase $DB */
/** @var CBitrixComponentTemplate $this */
/** @var string $templateName */
/** @var string $templateFile */
/** @var string $templateFolder */
/** @var string $componentPath */
/** @var CBitrixComponent $component */
$this->setFrameMode(true);

?>
<? foreach ($arResult["ITEMS"] as $arItem): ?>
    <?
    $this->AddEditAction($arItem['ID'], $arItem['EDIT_LINK'], CIBlock::GetArrayByID($arItem["IBLOCK_ID"], "ELEMENT_EDIT"));
    $this->AddDeleteAction($arItem['ID'], $arItem['DELETE_LINK'], CIBlock::GetArrayByID($arItem["IBLOCK_ID"], "ELEMENT_DELETE"), array("CONFIRM" => GetMessage('CT_BNL_ELEMENT_DELETE_CONFIRM')));
    ?>

    <article class="interesting-item" id="<?= $this->GetEditAreaId($arItem['ID']); ?>">
        <a href="<?= $arItem["CODE"] ?>" class="interesting-item__detailed-link">
            <div class="interesting-item__header"><?= $arItem["NAME"] ?></div>
            <p class="interesting-item__short-text"><?= $arItem["PREVIEW_TEXT"] ?></p>
        </a>
        <p class="interesting-item__labels">
            <?$counter = 0;?>
            <? foreach ($arItem["TAGS"] as $tag): ?>
                <?$counter ++;?>
                <?$URL = $APPLICATION->GetCurPageParam("tags=".$tag["NAME"]."", array("tags"));?>
                <a class="interesting-item__label" href="<?=$URL?>">
                    <?=$tag["NAME"]?></a><?=($counter < count($arItem["TAGS"]))?",":"";?>
            <? endforeach; ?>
        </p>
    </article>
<? endforeach; ?>


