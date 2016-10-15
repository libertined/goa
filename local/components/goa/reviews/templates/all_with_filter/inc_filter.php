<select name="" id="reviews_filter_by_tour_select" multiple style="
    width: 150px;
    height: 200px;
    margin: 20px auto;
    display: block;
">
    <option value="all" selected>Все экскурсии</option>

    <?foreach ( HLReviewModel::getAllToursInfo() as $id => $tour ){?>
        <option value="<?=$id?>"><?=$tour["NAME"]?></option>
    <?}?>
</select>


<div class="filter">
    <div class="filter__option">
        <div class="filter__grey marg-b-20">
            <div class="filter__select-title">Показать отзывы по экскурсии:</div>
            <div class="filter__select">
                <div class="pseudo-select pseudo-select--multiple">
                    <div class="pseudo-select__text">Все экскурсии</div>
                    <div class="pseudo-select__wrap scroll-pane">
                        <ul class="pseudo-select__list">
                            <li class="pseudo-select__option" data-value="1">Отдых на пляжах Палолем, Кола и старинный форт Кабо де Рама</li>
                            <li class="pseudo-select__option" data-value="2">Отдых на пляжах Палолем, Кола и старинный форт Кабо де Рама</li>
                            <li class="pseudo-select__option" data-value="3">Весь ГОА за 1 день</li>
                            <li class="pseudo-select__option" data-value="4">Отдых на пляжах Палолем, Кола и старинный форт Кабо де Рама</li>
                            <li class="pseudo-select__option" data-value="5">Отдых на пляжах Палолем, Кола и старинный форт Кабо де Рама</li>
                        </ul>
                    </div>
                    <select name="" class="pseudo-select__real" id="label-review-ex" multiple="multiple">
                        <option value="1">Отдых на пляжах Палолем, Кола и старинный форт Кабо де Рама</option>
                        <option value="2">Отдых на пляжах Палолем, Кола и старинный форт Кабо де Рама</option>
                        <option value="3">Весь ГОА за 1 день</option>
                        <option value="4">Отдых на пляжах Палолем, Кола и старинный форт Кабо де Рама</option>
                        <option value="5">Отдых на пляжах Палолем, Кола и старинный форт Кабо де Рама</option>
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
        <div class="filter__clear-text">Сбросить все</div>
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
