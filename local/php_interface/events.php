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

/*
 * Clear goa:faq.list component cache
 * */
$eventManager->addEventHandler('', HLFaqModel::ENTITY_NAME . 'OnAfterUpdate', 'clearFaqListComponentCache');
$eventManager->addEventHandler('', HLFaqModel::ENTITY_NAME . 'OnAfterAdd', 'clearFaqListComponentCache');
$eventManager->addEventHandler('', HLFaqModel::ENTITY_NAME . 'OnAfterDelete', 'clearFaqListComponentCache');

function clearFaqListComponentCache(  )
{
    global $CACHE_MANAGER;

    $CACHE_MANAGER->ClearByTag("faq_list_component");
}
