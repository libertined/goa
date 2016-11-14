
<div class="modal-window" id="modal-review">
    <div class="modal-window__body">
        <form action="form.php" method="post" name="addReview" enctype="multipart/form-data">
            <div class="form form--grey form--w670 form--center">
                <div class="form__header">Добавление отзыва</div>
                <div class="marg-b-15">
                    <div class="form__wrap">
                        <label for="label-review-ex" class="form__title">Экскурсия</label>
                        <div class="form__field">
                            <div class="pseudo-select">
                                <div class="pseudo-select__text">Выберите экскурсию</div>
                                <div class="pseudo-select__wrap scroll-pane">
                                    <ul class="pseudo-select__list">
                                        <li class="pseudo-select__option" data-value="1">Отдых на пляжах Палолем, Кола и старинный форт Кабо де Рама</li>
                                        <li class="pseudo-select__option" data-value="2">Отдых на пляжах Палолем, Кола и старинный форт Кабо де Рама</li>
                                        <li class="pseudo-select__option" data-value="3">Весь ГОА за 1 день</li>
                                        <li class="pseudo-select__option" data-value="4">Отдых на пляжах Палолем, Кола и старинный форт Кабо де Рама</li>
                                        <li class="pseudo-select__option" data-value="5">Отдых на пляжах Палолем, Кола и старинный форт Кабо де Рама</li>
                                    </ul>
                                </div>
                                <select name="excursion" class="pseudo-select__real" id="label-review-ex">
                                    <option value="1">Отдых на пляжах Палолем, Кола и старинный форт Кабо де Рама</option>
                                    <option value="2">Отдых на пляжах Палолем, Кола и старинный форт Кабо де Рама</option>
                                    <option value="3">Весь ГОА за 1 день</option>
                                    <option value="4">Отдых на пляжах Палолем, Кола и старинный форт Кабо де Рама</option>
                                    <option value="5">Отдых на пляжах Палолем, Кола и старинный форт Кабо де Рама</option>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="marg-b-15">
                    <div class="form__wrap">
                        <label for="label-review-name" class="form__title">Представьтесь, пожалуйста*</label>
                        <div class="form__field"><input id="label-review-name" placeholder="" name="name" value="" type="text" class="form__input" required="" /></div>
                    </div>
                </div>

                <div class="marg-b-15">
                    <div class="form__wrap">
                        <label for="label-review-soc" class="form__title">Профиль Вконтакте или Facebook</label>
                        <div class="form__field"><input id="label-review-soc" placeholder="" name="link" value="" type="text" class="form__input" /></div>
                    </div>
                </div>

                <div class="marg-b-15">
                    <div class="form__wrap">
                        <label for="label-review-text" class="form__title">Текст отзыва*</label>
                        <div class="form__field"><textarea id="label-review-text" class="form__textarea" name="reviewText" required=""></textarea></div>
                    </div>
                </div>

                <div class="marg-b-15">
                    <div class="form__wrap">
                        <div class="form__title">При желании вы можете прикрепить к отзыву несколько фото</div>
                        <div class="form__field dropzone">
                        	<label class="form__file" for="upload-review-photos">Перетащите фото сюда или нажмите для выбора на компьютере</label>
                        	<input type="file" id="upload-review-photos" multiple accept="image/*" name="photos[]">
                        </div>
                    </div>
                </div>

                <div class="form__wrap">
                    <div class="form__title visible-adaptive-768">&nbsp;</div>
                    <div class="form__field pos-right"><button type="submit" name="" class="btn col-adaptive-768">Отправить</button></div>
                </div>
            </div>
        </form>
    </div>
</div>