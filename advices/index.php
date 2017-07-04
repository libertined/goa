<?php require($_SERVER["DOCUMENT_ROOT"]."/bitrix/header.php");
$APPLICATION->SetPageProperty("PAGE_IMAGE", "/upload/images/bg_exs.jpg");
$APPLICATION->SetPageProperty("MAIN_TITLE", "Советы туристам");?>

<link rel="stylesheet" href="style.css">

<div class="advices">
    <section class="advices-list">
    	<article class="advices-item">
    		<a href="detailed.php" class="advices-item__detailed-link">
                <div class="advices-item__header">Заголовок статьи</div>
    		    <p class="advices-item__short-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iste eveniet provident dolor, aut eos quisquam numquam optio voluptatibus dignissimos unde, nihil dolorem, reprehenderit, fugiat quibusdam debitis! Quas voluptatum fugit error?</p>
            </a>
    		<p class="advices-item__labels">
    			<a class="advices-item__label" href="">метка 1</a>,
    			<a class="advices-item__label" href="">метка 2</a>,
    			<a class="advices-item__label" href="">метка 4</a>
    		</p>
    	</article>	
    	<article class="advices-item">
    		<a href="detailed.php" class="advices-item__detailed-link">
                <div class="advices-item__header">Заголовок статьи</div>
    		    <p class="advices-item__short-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iste eveniet provident dolor, aut eos quisquam numquam optio voluptatibus dignissimos unde, nihil dolorem, reprehenderit, fugiat quibusdam debitis! Quas voluptatum fugit error?</p>
            </a>
    		<p class="advices-item__labels">
    			<a class="advices-item__label" href="">метка 1</a>,
    			<a class="advices-item__label" href="">метка 2</a>,
    			<a class="advices-item__label" href="">метка 3</a>
    		</p>
    	</article>
    	<article class="advices-item">
    		<a href="detailed.php" class="advices-item__detailed-link">
                <div class="advices-item__header">Заголовок статьи</div>
    		    <p class="advices-item__short-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iste eveniet provident dolor, aut eos quisquam numquam optio voluptatibus dignissimos unde, nihil dolorem, reprehenderit, fugiat quibusdam debitis! Quas voluptatum fugit error?</p>
            </a>
    		<p class="advices-item__labels">
    			<a class="advices-item__label" href="">метка 1</a>,
    			<a class="advices-item__label" href="">метка 2</a>,
    			<a class="advices-item__label" href="">метка 3</a>
    		</p>
    	</article>    	
    </section>
    <aside class="advices-labels">
        <p class="advices-labels__header">Список разделов:</p>
        <p class="advices-labels__links">
            <a href="#" class="advices-labels__link">метка 1</a>, <a href="#" class="advices-labels__link">метка 2</a>, <a href="#" class="advices-labels__link">метка 3</a>, <a href="#" class="advices-labels__link">метка 4</a>, 
        </p>
    </aside>
</div>
<script src="script.js"></script>
<?php require($_SERVER["DOCUMENT_ROOT"]."/bitrix/footer.php");?>