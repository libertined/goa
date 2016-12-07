<?if(!defined("B_PROLOG_INCLUDED") || B_PROLOG_INCLUDED!==true)die();
IncludeTemplateLangFile(__FILE__);
?>
<!DOCTYPE html>
<html xml:lang="<?=LANGUAGE_ID?>" lang="<?=LANGUAGE_ID?>">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Surya Travels Tvoy Goa | <?php $APPLICATION->ShowTitle()?></title>
	<meta name="format-detection" content="telephone=no" />
	<link href="/favicon.ico" rel="shortcut icon">
	<?
	$oAsset = \Bitrix\Main\Page\Asset::getInstance();

	$oAsset->addCss(SITE_TEMPLATE_PATH."/css/jquery.bxslider.css");
	$oAsset->addCss(SITE_TEMPLATE_PATH."/css/jquery.jscrollpane.css");
	$oAsset->addCss(SITE_TEMPLATE_PATH."/svg/styles.css");

	$oAsset->addJs(SITE_TEMPLATE_PATH.'/js/modernizr-2.6.2.min.js');
	$oAsset->addJs(SITE_TEMPLATE_PATH.'/js/jquery-1.11.2.min.js');
	$oAsset->addJs(SITE_TEMPLATE_PATH.'/js/jquery-ui.min.js');
	$oAsset->addJs(SITE_TEMPLATE_PATH.'/js/jquery.bxslider.min.js');
	$oAsset->addJs(SITE_TEMPLATE_PATH.'/js/jquery.maskedinput.min.js');
	$oAsset->addJs(SITE_TEMPLATE_PATH.'/js/jquery.mousewheel.js');
	$oAsset->addJs(SITE_TEMPLATE_PATH.'/js/jquery.jscrollpane.min.js');
	$oAsset->addJs(SITE_TEMPLATE_PATH.'/js/scripts.js');
	$oAsset->addJs(SITE_TEMPLATE_PATH.'/js/modal-window.js');


	$APPLICATION->ShowHeadStrings();
	$APPLICATION->ShowHead();

	$page = $APPLICATION->GetCurPage(true);
	$dir =  $APPLICATION->GetCurDir();
	?>
</head>
<body>
<div id="panel"><?php $APPLICATION->ShowPanel();?></div>
<div class="content-top">
	<div class="content-top-inner">
		<header class="page-header">
			<div class="page-content-inner page-content-inner--w1360">
				<div class="page-header__inner">
					<a href="/" class="page-header__logo"><img src="<?=SITE_TEMPLATE_PATH?>/img/logo.png" alt="logo" /></a>
					<? $APPLICATION->IncludeComponent("bitrix:menu", "top", Array(
						"ROOT_MENU_TYPE" => "top",	// Тип меню для первого уровня
							"MENU_CACHE_TYPE" => "A",	// Тип кеширования
							"MENU_CACHE_TIME" => "36000000",	// Время кеширования (сек.)
							"MENU_CACHE_USE_GROUPS" => "Y",	// Учитывать права доступа
							"MENU_CACHE_GET_VARS" => "",	// Значимые переменные запроса
							"MAX_LEVEL" => "1",	// Уровень вложенности меню
							"CHILD_MENU_TYPE" => "top",	// Тип меню для остальных уровней
							"USE_EXT" => "N",	// Подключать файлы с именами вида .тип_меню.menu_ext.php
							"DELAY" => "N",	// Откладывать выполнение шаблона меню
							"ALLOW_MULTI_SELECT" => "N",	// Разрешить несколько активных пунктов одновременно
							"COMPONENT_TEMPLATE" => "",
							"MENU_THEME" => "blue"
						),
						false
					);
					?>
					<div class="page-header__phone visible-adaptive-768">
						<div class="page-header__phone-icon">
							<object type="image/svg+xml" data="<?=SITE_TEMPLATE_PATH?>/svg/phone.svg">Your browser does not  support  SVGs</object>
						</div>
						<a href="tel:+918888717922" class="page-header__phone-num"><span>IN. </span>+91 8888 71 79 22</a>
						<a href="tel:+79817717922" class="page-header__phone-num"><span>RU. </span>+7 981 771 79 22</a>
					</div>
				</div>

				<div class="visible-adaptive-show-768">
					<div class="page-header__phone">
						<div class="row">
							<div class="row__inner">
								<div class="col-12-6"><a href="tel:+918888704005" class="page-header__phone-num-adaptive" onclick="location.href=''">+91 8888 70 40 05</a></div>
								<div class="col-12-6 pos-right"><a href="tel:+918888717922" class="page-header__phone-num-adaptive">+91 8888 71 79 22</a></div>
								<div class="col-12-6"><a href="tel:+917875009944" class="page-header__phone-num-adaptive">+91 7875 00 99 44</a></div>
								<div class="col-12-6 pos-right"><a href="tel:+79817717922" class="page-header__phone-num-adaptive">+7 981 771 79 22</a></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</header>

		<main class="page-content">
			<? if ($page != '/index.php'):?>
				<div class="page-content-inner visible-adaptive-768">
					<div class="main-img">
						<img src="<?$APPLICATION->ShowProperty("PAGE_IMAGE")?>" alt="" class="main-img__img" />
						<h1 class="main-img__header">
							<div class="vert-middle">
								<div class="vert-middle__inner main-img__header-text"><?$APPLICATION->ShowProperty("MAIN_TITLE")?></div>
							</div>
						</h1>
					</div>
				</div>

				<?$APPLICATION->IncludeComponent("bitrix:breadcrumb", "main", Array(
					"START_FROM" => "0",	// Номер пункта, начиная с которого будет построена навигационная цепочка
						"PATH" => "",	// Путь, для которого будет построена навигационная цепочка (по умолчанию, текущий путь)
						"SITE_ID" => "s1",	// Cайт (устанавливается в случае многосайтовой версии, когда DOCUMENT_ROOT у сайтов разный)
					),
					false
				);?>
			<?endif;?>
			<div class="page-content-inner">
				<?if ($page == '/index.php'):?>
                    <?$APPLICATION->IncludeComponent(
                        "goa:mainpage.slider",
                        ".default",
                        array(
                            "CACHE_TYPE" => "A",
                            "CACHE_TIME" => "86400",
                        ),
                        false
                    );?>
				<?endif;?>

				<div class="row">
					<div class="row__inner col-adaptive-row">
						<div class="col-12-3 col-adaptive-1024 visible-adaptive-768">
							<section class="left-side">
								<? $APPLICATION->IncludeComponent("bitrix:menu", "sub_menu", Array(
									"ROOT_MENU_TYPE" => "left",	// Тип меню для первого уровня
									"MENU_CACHE_TYPE" => "A",	// Тип кеширования
									"MENU_CACHE_TIME" => "36000000",	// Время кеширования (сек.)
									"MENU_CACHE_USE_GROUPS" => "Y",	// Учитывать права доступа
									"MENU_CACHE_GET_VARS" => "",	// Значимые переменные запроса
									"MAX_LEVEL" => "1",	// Уровень вложенности меню
									"CHILD_MENU_TYPE" => "left",	// Тип меню для остальных уровней
									"USE_EXT" => "N",	// Подключать файлы с именами вида .тип_меню.menu_ext.php
									"DELAY" => "N",	// Откладывать выполнение шаблона меню
									"ALLOW_MULTI_SELECT" => "N",	// Разрешить несколько активных пунктов одновременно
									"COMPONENT_TEMPLATE" => "",
									"MENU_THEME" => "blue"
								),
									false
								);
								?>
								<?$APPLICATION->IncludeComponent("goa:element.random", ".default", Array(
									"CACHE_GROUPS" => "Y",	// Учитывать права доступа
										"CACHE_TIME" => "180",	// Время кеширования (сек.)
										"CACHE_TYPE" => "A",	// Тип кеширования
										"DETAIL_URL" => "",	// URL, ведущий на страницу с содержимым элемента раздела
										"IBLOCKS" => array(	// Инфоблок
											0 => "3",
										),
										"FIELDS" => array("PREVIEW_TEXT"),
										"COUNT" => 1,
										"IBLOCK_TYPE" => "info",	// Тип инфоблока
										"PARENT_SECTION" => "",	// ID раздела
									),
									false
								);?>

								<div class="left-side__block left-side--block-yellow">
									<div class="left-side__header">Погода в Гоа <div class="left-side__header-icon"><object type="image/svg+xml" data="<?=SITE_TEMPLATE_PATH?>/svg/weather.svg">Your browser does not support SVGs</object></div></div>
									<div class="left-side__body">
										<img src="<?=SITE_TEMPLATE_PATH?>/img/files/prognoz.jpg" style="margin: 0 auto; max-width: 100%;" />
									</div>
								</div>

								<div class="row">
									<div class="row__inner">
										<div class="col-12-6"><a href="http://vkontakte.ru/club5779993" class="btn btn--blue btn--fill btn--lowercase js-tab-btn" data-tab="tab-vk">Вконтакте</a></div>
										<div class="col-12-6"><a href="http://www.facebook.com/tvoygoa/" class="btn btn--grey btn--fill btn--lowercase js-tab-btn" data-tab="tab-fb">Facebook</a></div>
									</div>
								</div>

								<div class="left-side__block left-side--block-yellow js-tab" data-tab="tab-vk">
									<div class="left-side__body">
										<img src="<?=SITE_TEMPLATE_PATH?>/img/files/img_instg.jpg" style="margin: 0 auto; max-width: 100%;" />
									</div>
								</div>

								<div class="left-side__block left-side--block-yellow js-tab none" data-tab="tab-fb">
									<div class="left-side__body">
										fb
										<img src="<?=SITE_TEMPLATE_PATH?>/img/files/img_instg.jpg" style="margin: 0 auto; max-width: 100%;" />
									</div>
								</div>
							</section>
						</div>

						<div class="col-12-9 col-adaptive-1024">
							<div class="right-side">