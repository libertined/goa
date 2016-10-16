


<div class="filter">
    <div class="filter__option">
        <div class="filter__grey marg-b-20">
            <div class="filter__select-title">Показать отзывы по экскурсии:</div>
            <div class="filter__select">
                <div class="pseudo-select pseudo-select--multiple">

                    <div class="pseudo-select__text">Все экскурсии</div>

                    <div class="pseudo-select__wrap scroll-pane">
                        <ul class="pseudo-select__list">
                            <?foreach ( HLReviewModel::getAllToursInfo() as $id => $tour ){?>
                                <li class="pseudo-select__option js_reviews_filter_by_tour_pseudo_select_option" data-value="<?=$id?>"><?=$tour["NAME"]?></li>
                            <?}?>
                        </ul>
                    </div>

                    <select name="" class="pseudo-select__real js_reviews_filter_by_tour_select" id="label-review-ex" multiple="multiple">
                        <?foreach ( HLReviewModel::getAllToursInfo() as $id => $tour ){?>
                            <option value="<?=$id?>"><?=$tour["NAME"]?></option>
                        <?}?>
                    </select>

                </div>
            </div>
        </div>

        <div class="filter__option-title">Выбрано:</div>
        <div class="filter__option-body">
            <div class="filter__option-item">
                <div class="filter__option-name">Отдых на пляжах Палолем, Кола и старинный форт Кабо де Рама</div>
            </div>

            <div class="filter__option-item">
                <div class="filter__option-name">Весь ГОА за один день</div>
            </div>
        </div>
    </div>

    <div class="filter__clear marg-t-20">
        <div class="filter__clear-text" id="reviews_filter_reset">Сбросить все</div>
    </div>


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
