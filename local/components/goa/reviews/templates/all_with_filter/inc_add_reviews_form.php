
<div class="modal-window" id="modal-review">
    <div class="modal-window__body">
        <form action="" method="post" name="addReview" enctype="multipart/form-data">
            <input type="hidden" name="subject" value="<?// anti bot field?>">
            
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
                                        <?foreach ( HLReviewModel::getAllToursInfo() as $id => $tour ){?>
                                            <li class="pseudo-select__option  " data-value="<?=$id?>"><?=$tour["NAME"]?></li>
                                        <?}?>
                                    </ul>
                                </div>
                                <select name="<?=HLReviewModel::FORM_ADD_FIELD_TOUR_ID_NAME?>" class="pseudo-select__real" id="label-review-ex">
                                    <?foreach ( HLReviewModel::getAllToursInfo() as $id => $tour ){?>
                                        <option value="<?=$id?>"><?=$tour["NAME"]?></option>
                                    <?}?>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="marg-b-15">
                    <div class="form__wrap">
                        <label for="label-review-name" class="form__title">Представьтесь, пожалуйста*</label>
                        <div class="form__field"><input id="label-review-name" placeholder="" name="<?=HLReviewModel::FORM_ADD_FIELD_USER_NAME_NAME?>" value="" type="text" class="form__input" required="" /></div>
                    </div>
                </div>

                <div class="marg-b-15">
                    <div class="form__wrap">
                        <label for="label-review-soc" class="form__title">Профиль Вконтакте или Facebook</label>
                        <div class="form__field"><input id="label-review-soc" placeholder="" name="<?=HLReviewModel::FORM_ADD_FIELD_USER_SOCIAL_LINK_NAME?>" value="" type="text" class="form__input" /></div>
                    </div>
                </div>

                <div class="marg-b-15">
                    <div class="form__wrap">
                        <label for="label-review-text" class="form__title">Текст отзыва*</label>
                        <div class="form__field"><textarea id="label-review-text" class="form__textarea" name="<?=HLReviewModel::FORM_ADD_FIELD_TEXT_NAME?>" required=""></textarea></div>
                    </div>
                </div>

                <div class="marg-b-15">
                    <div class="form__wrap">
                        <div class="form__title">При желании вы можете прикрепить к отзыву несколько фото</div>
                        <div class="form__field dropzone">
                        	<label class="form__file" for="upload-review-photos">Перетащите фото сюда или нажмите для выбора на компьютере</label>
                        	<input type="file" id="upload-review-photos" multiple accept="image/*" name="<?=HLReviewModel::FORM_ADD_FIELD_PHOTOS_NAME?>[]">
                        </div>
                    </div>
                </div>

                <div class="form__wrap">
                    <div class="form__title visible-adaptive-768">&nbsp;</div>
                    <div class="form__field pos-right"><button type="submit" name="" class="btn col-adaptive-768" onclick="yaCounter15543727.reachGoal('FEEDBACK_SENT'); return true;">Отправить</button></div>
                </div>
            </div>
        </form>
    </div>
</div>