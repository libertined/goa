<?php require($_SERVER["DOCUMENT_ROOT"]."/bitrix/header.php");
$APPLICATION->SetPageProperty("PAGE_IMAGE", "/upload/images/bg_exs.jpg");?>

<link rel="stylesheet" href="style.css">

<div class="interesting">
    <section class="interesting-list">
    	<article class="interesting-item">
    		<a href="#" class="interesting-item__detailed-link">
                <div class="interesting-item__header">Заголовок статьи</div>
    		    <p class="interesting-item__short-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iste eveniet provident dolor, aut eos quisquam numquam optio voluptatibus dignissimos unde, nihil dolorem, reprehenderit, fugiat quibusdam debitis! Quas voluptatum fugit error?</p>
            </a>
    		<p class="interesting-item__labels">
    			<a class="interesting-item__label" href="">метка 1</a>,
    			<a class="interesting-item__label" href="">метка 2</a>,
    			<a class="interesting-item__label" href="">метка 4</a>
    		</p>
    	</article>	
    	<article class="interesting-item">
    		<a href="" class="interesting-item__detailed-link">
                <div class="interesting-item__header">Заголовок статьи</div>
    		    <p class="interesting-item__short-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iste eveniet provident dolor, aut eos quisquam numquam optio voluptatibus dignissimos unde, nihil dolorem, reprehenderit, fugiat quibusdam debitis! Quas voluptatum fugit error?</p>
            </a>
    		<p class="interesting-item__labels">
    			<a class="interesting-item__label" href="">метка 1</a>,
    			<a class="interesting-item__label" href="">метка 2</a>,
    			<a class="interesting-item__label" href="">метка 3</a>
    		</p>
    	</article>
    	<article class="interesting-item">
    		<a href="" class="interesting-item__detailed-link">
                <div class="interesting-item__header">Заголовок статьи</div>
    		    <p class="interesting-item__short-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iste eveniet provident dolor, aut eos quisquam numquam optio voluptatibus dignissimos unde, nihil dolorem, reprehenderit, fugiat quibusdam debitis! Quas voluptatum fugit error?</p>
            </a>
    		<p class="interesting-item__labels">
    			<a class="interesting-item__label" href="">метка 1</a>,
    			<a class="interesting-item__label" href="">метка 2</a>,
    			<a class="interesting-item__label" href="">метка 3</a>
    		</p>
    	</article>    	
    </section>
    <aside class="interesting-labels">
        <p class="interesting-labels__header">Список разделов:</p>
        <p class="interesting-labels__links">
            <a href="#" class="interesting-labels__link">метка 1</a>, <a href="#" class="interesting-labels__link">метка 2</a>, <a href="#" class="interesting-labels__link">метка 3</a>, <a href="#" class="interesting-labels__link">метка 4</a>, 
        </p>
    </aside>
</div>
<script src="script.js"></script>
<?php require($_SERVER["DOCUMENT_ROOT"]."/bitrix/footer.php");?>