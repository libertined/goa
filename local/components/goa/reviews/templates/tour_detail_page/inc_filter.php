<input type="hidden" value="<?= $arParams["TOUR_ID"]?>" id="reviews_filter_by_tour_hidden">

<div class="filter">

    <div class="after-parent marg-b-30 marg-t-40 center-adaptive-768">
        <div class="right col-adaptive-768"><a href="" class="btn openmodal" data-id="modal-review">Добавить отзыв</a></div>
        <div class="left col-adaptive-768">
            <div class="vert-middle vert-middle--h-55">
                <div class="vert-middle__inner">
                    <?
                    $count = $arResult["DB_RESULT"]->getCount();
                    ?>
                    <div class="filter__result" id="reviews_by_filter_count"><?=getNumEnding($count, array("Найден", "Найдено", "Найдено"))?> <span><?=$count?> <?=getNumEnding($count, array("отзыв", "отзыва", "отзывов"))?></span></div>
                </div>
            </div>
        </div>
    </div>

</div>
