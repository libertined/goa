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