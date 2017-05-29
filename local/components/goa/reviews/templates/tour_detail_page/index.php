<? if (!defined("B_PROLOG_INCLUDED") || B_PROLOG_INCLUDED !== true) {
    die();
}
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
?>

<?
require_once __DIR__ . "/inc_filter.php";
?>

    <div id="review_container">
        <? foreach ($arResult["ITEMS"] as $item) { ?>
            <div class="marg-b-40">
                <div class="review">
                    <div class="review__title">
                        <div class="review__name"><?= $item["UF_USER_NAME"] ?></div>
                        <div class="review__date"><?= formatDateCustom($item["UF_DATE"]->format("d.m.Y")) ?></div>
                    </div>

                    <div class="review__text">
                        <?= nl2br($item["UF_TEXT"]) ?>
                    </div>

                    <?
                    /*
                     * TODO read more btn
                     * */

                    // <a href="" class="review__link">Читать полностью</a>
                    ?>
                    <? if ($item["UF_IMG"]): ?>
                        <section class="photos">
                            <? foreach ($item["UF_IMG"] as $index => $img): ?>
                                <div class="photo">
                                    <div class="photo__item openmodal" data-id="modal-gallery-<?= $item["ID"] ?>" data-slide="<?= $index ?>">
                                        <img class="photo__img" src="<?= getResizedImgOrPlaceholder($img, 250, 250) ?>" alt="">
                                        <div class="photo__shadow"></div>
                                    </div>
                                </div>
                            <? endforeach; ?>
                        </section>

                        <div class="modal-window js-window" id="modal-gallery-<?= $item["ID"] ?>">
                            <a class="closemodal" href=""></a>
                            <div class="modal-window__body">
                                <div class="gallery">
                                    <div class="gallery__wrap">
                                        <div class="bxslider_gallery">
                                            <? foreach ($item["UF_IMG"] as $index => $img) { ?>
                                                <div class="gallery__slide">
                                                    <div class="gallery__slide-img">
                                                        <img src="<?= getResizedImgOrPlaceholder($img, 1024, 1024, true) ?>" alt="<?= $item["UF_IMG_DESC"][$index]?>"/>
                                                    </div>
                                                    <div class="gallery__slide-text"><?= $item["UF_IMG_DESC"][$index] ? $item["UF_IMG_DESC"][$index] : "Описание отсутствует" ?></div>
                                                </div>
                                            <? } ?>
                                        </div>
                                    </div>

                                    <div class="gallery__pager" id="js-gallery-pager">
                                        <? foreach ($item["UF_IMG"] as $index => $img) { ?>
                                            <a data-slide-index="<?= $index ?>" href="" class="gallery__pager-item">
                                                <img src=<?= getResizedImgOrPlaceholder($img, 70, 70) ?> dfrf="<?=getResizedImgOrPlaceholder($img, 70, 70)?>"/>
                                            </a>
                                        <? } ?>
                                    </div>
                                </div>
                            </div>
                        </div>
                    <? endif; ?>
                </div>

                <? if ($item["UF_ADMIN_REPLY"]): ?>
                    <div class="review review--reply marg-t-20">
                        <div class="review__title">
                            <div class="review__name">Твой Гоа</div>

                            <? if ($item["UF_ADMIN_REPLY_DATE"]): ?>
                                <div class="review__date"><?= formatDateCustom($item["UF_ADMIN_REPLY_DATE"]->format("d.m.Y")) ?></div>
                            <? endif ?>
                        </div>
                        <div class="review__text">
                            <?= nl2br($item["UF_ADMIN_REPLY"]) ?>
                        </div>
                    </div>
                <? endif ?>
            </div>

        <? } ?>


        <? if ($arResult["PAGE_COUNT"] > $arParams["PAGE_NUM"]) { ?>
            <div class="pos-center">
                <a href="" class="btn " id="show_more_reviews" data-next_page_num="<?= $arParams["PAGE_NUM"] + 1 ?>">Показать
                    еще</a>
            </div>
        <? } ?>


        <? if (!$arResult["ITEMS"]): ?>
            <h3 style=" text-align: center; ">- нет данных -</h3>
        <? endif ?>

    </div>

    <div class="after-parent marg-t-50 center-adaptive-768">
        <div class="btn btn--big left js-excursion-order">Заказать экскурсию</div>
        <div class="right col-adaptive-768 top-adaptive-768-h15"><a href="" class="btn">Добавить отзыв</a></div>
    </div>

<?
require_once __DIR__ . "/inc_add_reviews_form.php";
?>