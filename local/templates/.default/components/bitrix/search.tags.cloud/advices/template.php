<? if (!defined("B_PROLOG_INCLUDED") || B_PROLOG_INCLUDED !== true) die();
$this->setFrameMode(true);
?>
<p class="advices-labels__header">Список разделов:</p>
<p class="advices-labels__links">
    <?$counter = 0;?>
    <? foreach ($arResult["SEARCH"] as $tag): ?>
        <?$counter ++;?>
            <?$URL = $APPLICATION->GetCurPageParam("tags=".$tag["NAME"]."", array("tags"));?>
            <a href="<?=$URL?>" class="advices-labels__link <?=($tag['ACTIVE'])?'active':''?>">
                <?= $tag["NAME"]?></a><?=($counter != count($arResult["SEARCH"]))?",":'';?>
    <? endforeach; ?>
</p>
</p>
