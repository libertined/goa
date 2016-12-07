<?
$eventManager = \Bitrix\Main\EventManager::getInstance();

/*
 * Clear goa:reviews component cache
 * */
$eventManager->addEventHandler('', HLReviewModel::ENTITY_NAME . 'OnAfterUpdate', 'clearReviewsComponentCache');
$eventManager->addEventHandler('', HLReviewModel::ENTITY_NAME . 'OnAfterAdd', 'clearReviewsComponentCache');
$eventManager->addEventHandler('', HLReviewModel::ENTITY_NAME . 'OnAfterDelete', 'clearReviewsComponentCache');

function clearReviewsComponentCache(  )
{
    global $CACHE_MANAGER;

    $CACHE_MANAGER->ClearByTag("reviews_component");
}

/*
 * Clear goa:mainpage.slider component cache
 * */
$eventManager->addEventHandler('iblock', 'OnIBlockElementUpdate', 'clearMainPageSliderComponentCache');
$eventManager->addEventHandler('iblock', 'OnIBlockElementAdd', 'clearMainPageSliderComponentCache');
$eventManager->addEventHandler('iblock', 'OnIBlockElementDelete', 'clearMainPageSliderComponentCache');

function clearMainPageSliderComponentCache(  )
{
    global $CACHE_MANAGER;

    $CACHE_MANAGER->ClearByTag("mainpage_slider_component");
}