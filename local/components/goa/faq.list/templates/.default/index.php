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
?>

<div class="after-parent">
    <h2 id="questions" class="left">Вопросы</h2>
    <a href="#ask-question" class="btn right">Задать вопрос</a>
</div>

<ul class="questions--list">
    <? foreach ( $arResult["ITEMS"] as $item ){ ?>
        <li><a href="#<?=$item["ID"]?>"><?=$item["UF_QUESTION"]?></a></li>
    <? } ?>
</ul>

<h2>Ответы</h2>
<ul>
    <? foreach ( $arResult["ITEMS"] as $item ){ ?>
        <li>
            <a href="" id="<?=$item["ID"]?>"></a>
            <p><strong><?=$item["UF_QUESTION"]?></strong></p>
            <div class="text-answ">
                <?=nl2br($item["UF_ANSWER"])?>
            </div>
            <p class="pos-right"><a href="#questions">к содержанию</a></p>
        </li>
    <? } ?>
    
</ul>


<form action="faq.php" method="post" name="askQuestion" enctype="multipart/form-data" id="ask-question">
    <div class="form form--grey form--w670 form--center">
        <div class="form__header">Задать свой вопрос</div>
        <p class="warning pos-center">Пожалуйста, внимательно указывайте свой емейл, т.к. в случае неверного емейл адреса мы не сможем ответить Вам</p>
        <div class="marg-b-15">
            <div class="form__wrap">
                <label for="label-name" class="form__title">Представьтесь, пожалуйста*</label>
                <div class="form__field"><input id="label-name" placeholder="" name="name" value="" type="text" class="form__input" required="" /></div>
            </div>
        </div>

        <div class="marg-b-15">
            <div class="form__wrap">
                <label for="label-email" class="form__title">Ваш емейл адрес*</label>
                <div class="form__field"><input id="label-email" placeholder="" name="email" value="" type="email" class="form__input" required /></div>
            </div>
        </div>

        <div class="marg-b-15">
            <div class="form__wrap">
                <label for="label-review-text" class="form__title">Текст вопроса*</label>
                <div class="form__field"><textarea id="label-review-text" class="form__textarea" name="questionText" required=""></textarea></div>
            </div>
        </div>

        <div class="form__wrap">
            <div class="form__title visible-adaptive-768">&nbsp;</div>
            <div class="form__field pos-right"><button type="submit" name="" class="btn col-adaptive-768">Отправить</button></div>
        </div>
    </div>
</form>

<script src="ask-question.js"></script>
