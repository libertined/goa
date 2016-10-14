<? if ( !defined( "B_PROLOG_INCLUDED" ) || B_PROLOG_INCLUDED !== true )
    die();
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

//$this->setFrameMode( true );

//echo '<pre><=== \$arResult ===></pre><pre>' . print_r($arResult, 1) . '</pre><pre><\=== \$arResult ===></pre>';
?>

<?
// TODO
//require_once __DIR__ . "/inc_filter.php";
?>

<div id="review_container">
    <?foreach ( $arResult["ITEMS"] as $item ){?>
        <div class="marg-b-40">
            <div class="review">
                <div class="review__title">
                    <div class="review__name"><?=$item["UF_USER_NAME"]?></div>
                    <div class="review__date"><?=$item["UF_DATE"]->format("d.m.Y")?></div>
                </div>
                <div class="review__exs">
                    <div class="review__exs-title">Экскурсии:</div>
                    <div class="review__exs-body">

                        <?foreach ( $item["UF_TOUR_ID"] as $tour ){
                            $tourInfo = HLReviewModel::getTourInfoById($tour);
                        ?>
                            <div class="review__exs-item">
                                <div class="review__exs-name"><?=$tourInfo["NAME"]?></div>
                                 <a href="<?=$tourInfo["URL"]?>" class="review__exs-link">Все отзывы об этой экскурсии</a>
                            </div>
                        <?}?>


                    </div>
                </div>
                <div class="review__text">
                    <?=nl2br($item["UF_TEXT"])?>
                </div>

                <?
                /*
                 * TODO read more btn
                 * */

                // <a href="" class="review__link">Читать полностью</a>
                ?>

              <?if ( $item["UF_IMG"] ){?>
                    <div class="row row--padd30 marg-t-50">
                        <div class="row__inner">

                            <?foreach ( $item["UF_IMG"] as $img ){?>
                                <div class="col-12-3">
                                    <div class="review__gallery-img marg-b-30">
                                        <img src="<?=getResizedImgOrPlaceholder($img, 250, 250)?>" alt="">
                                        <div class="review__gallery-open"></div>
                                    </div>
                                </div>
                            <?}?>

                        </div>
                    </div>
                 <?}?>
            </div>

            <?
            /*
             * TODO reviews replies
             * */

            //<div class="review review--reply marg-t-20">
            //    <div class="review__title">
            //        <div class="review__name">Твой Гоа</div>
            //        <div class="review__date">22 ноября 2015</div>
            //    </div>
            //    <div class="review__text">Спасибо за такой обширный отзыв. Но вы могли бы поинтересоваться у тех 2-х. Они были заранее предупреждены о невозможности поехать в Тибет, о том, что экскурсия возможна только в Хампи и озеро, на что согласились. Наверное, они тоже были вредными, и решили , а пусть все поедут в Тибет..И вы забыли уточнить, что вы ехали в 5-ом, а не в 6-м и цена при этом не поменялась. Ну и самое главное, про Хампи можно написать не одну книгу, а у вас.</div>
            //</div>
            ?>
        </div>

    <?}?>

    <?
    if ($arResult["PAGE_COUNT"] > $arParams["PAGE_NUM"]){
    ?>
        <div class="pos-center">
            <a href="" class="btn " id="show_more_reviews" data-next_page_num="<?=$arParams["PAGE_NUM"] + 1?>">Показать еще</a>
        </div>
    <?}?>
</div>
<?
// TODO
//require_once __DIR__ . "/inc_add_reviews_form.php";
?>