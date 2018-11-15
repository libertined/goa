<?

if (IsModuleInstalled('landing'))
{
	$updater->CopyFiles('install/admin', 'admin');
	$updater->CopyFiles('install/images', 'images');
	$updater->CopyFiles('install/blocks', 'blocks');
	$updater->CopyFiles('install/components', 'components');
	$updater->CopyFiles('install/templates', 'templates');

	$updater->CopyFiles('install/js', 'js');
}

if (defined('BX_COMP_MANAGED_CACHE')) {
	$GLOBALS['CACHE_MANAGER']->ClearByTag('blocks');
	$GLOBALS['CACHE_MANAGER']->ClearByTag('landing_blocks');
}

if (IsModuleInstalled('landing') && $updater->CanUpdateDatabase())
{
	//set new blocks
	\Bitrix\Main\Config\Option::set('landing', 'new_blocks', serialize(array(
	'date' => time(),
		'items' => array(
			'27.2.one_col_full_title',
			'27.3.one_col_fix_title',
			'27.4.one_col_fix_text',
			'27.5.one_col_fix_text_with_border',
			'27.6.one_col_fix_text_with_headings',
			'27.7.one_col_fix_text_on_bg',
			'31.4.two_cols_img_text_fix',
			'31.3.two_cols_text_img_fix'
		)
	)));
}

// work with cloud repo always
if (IsModuleInstalled('landing'))
{
	$repoAddr = 'https://repo.bitrix24.site/rest/1/w1uqy3swvyp50bso/';
	\Bitrix\Main\Config\Option::set('landing', 'block_vendor_bitrix', $repoAddr);
	\Bitrix\Main\Config\Option::set('landing', 'disabled_namespaces', 'bitrix');
}


if($updater->CanUpdateKernel())
{
	$arToDelete = array(
		"bitrix/templates/landing24/themes/1construction/1construction.css",
		"bitrix/templates/landing24/themes/1construction/1construction_custom.css",
		"bitrix/templates/landing24/themes/2business/2business.css",
		"bitrix/templates/landing24/themes/2business/2business_custom.css",
		"bitrix/templates/landing24/themes/3corporate/3corporate.css",
		"bitrix/templates/landing24/themes/3corporate/3corporate_custom.css",
		"bitrix/templates/landing24/themes/1construction/1construction.min.css",
		"bitrix/templates/landing24/themes/1construction/1construction_custom.min.css",
		"bitrix/templates/landing24/themes/2business/2business.min.css",
		"bitrix/templates/landing24/themes/2business/2business_custom.min.css",
		"bitrix/templates/landing24/themes/3corporate/3corporate.min.css",
		"bitrix/templates/landing24/themes/3corporate/3corporate_custom.min.css",
		
		"components/bitrix/landing.demo/data/page/holidays/holiday.april_fool/",
		"modules/landing/install/components/bitrix/landing.demo/data/page/holidays/holiday.april_fool/",
		"components/bitrix/landing.demo/data/site/holidays/holiday.april_fool/",
		"modules/landing/install/components/bitrix/landing.demo/data/site/holidays/holiday.april_fool/",
		
		"components/bitrix/landing.demo/data/page/clothes/",
		"modules/landing/install/components/bitrix/landing.demo/data/page/clothes/",
		"components/bitrix/landing.demo/data/site/clothes/",
		"modules/landing/install/components/bitrix/landing.demo/data/site/clothes/",
		"components/bitrix/landing.demo/data/page/partner/",
		"modules/landing/install/components/bitrix/landing.demo/data/page/partner/",
		"components/bitrix/landing.demo/data/site/partner/",
		"modules/landing/install/components/bitrix/landing.demo/data/site/partner/",
		"components/bitrix/landing.demo/data/page/сompany/",
		"modules/landing/install/components/bitrix/landing.demo/data/page/сompany/",
		"components/bitrix/landing.demo/data/site/сompany/",
		"modules/landing/install/components/bitrix/landing.demo/data/site/сompany/",
		
		"components/bitrix/landing.demo/data/page/holiday.23february.1/",
		"modules/landing/installcomponents/bitrix/landing.demo/data/page/holiday.23february.1/",
		"components/bitrix/landing.demo/data/page/holiday.23february.2/",
		"modules/landing/installcomponents/bitrix/landing.demo/data/page/holiday.23february.2/",
		"components/bitrix/landing.demo/data/page/holiday.23february.3/",
		"modules/landing/installcomponents/bitrix/landing.demo/data/page/holiday.23february.3/",
		"components/bitrix/landing.demo/data/page/holiday.8march1/",
		"modules/landing/installcomponents/bitrix/landing.demo/data/page/holiday.8march1/",
		"components/bitrix/landing.demo/data/page/holiday.8march2/",
		"modules/landing/installcomponents/bitrix/landing.demo/data/page/holiday.8march2/",
		"components/bitrix/landing.demo/data/page/holiday.8march3/",
		"modules/landing/installcomponents/bitrix/landing.demo/data/page/holiday.8march3/",
		"components/bitrix/landing.demo/data/page/holiday.valentine1/",
		"modules/landing/installcomponents/bitrix/landing.demo/data/page/holiday.valentine1/",
		"components/bitrix/landing.demo/data/page/holiday.valentine2/",
		"modules/landing/installcomponents/bitrix/landing.demo/data/page/holiday.valentine2/",
		"components/bitrix/landing.demo/data/page/holiday.valentine3/",
		"modules/landing/installcomponents/bitrix/landing.demo/data/page/holiday.valentine3/",
		"components/bitrix/landing.demo/data/page/holiday.april-fool/",
		"modules/landing/installcomponents/bitrix/landing.demo/data/page/holiday.april-fool/",
		"components/bitrix/landing.demo/data/page/holiday.easter1/",
		"modules/landing/installcomponents/bitrix/landing.demo/data/page/holiday.easter1/",
		"components/bitrix/landing.demo/data/page/holiday.easter2/",
		"modules/landing/installcomponents/bitrix/landing.demo/data/page/holiday.easter2/",

		"components/bitrix/landing.demo/data/site/holiday.23february.1/",
		"modules/landing/installcomponents/bitrix/landing.demo/data/site/holiday.23february.1/",
		"components/bitrix/landing.demo/data/site/holiday.23february.2/",
		"modules/landing/installcomponents/bitrix/landing.demo/data/site/holiday.23february.2/",
		"components/bitrix/landing.demo/data/site/holiday.23february.3/",
		"modules/landing/installcomponents/bitrix/landing.demo/data/site/holiday.23february.3/",
		"components/bitrix/landing.demo/data/site/holiday.8march1/",
		"modules/landing/installcomponents/bitrix/landing.demo/data/site/holiday.8march1/",
		"components/bitrix/landing.demo/data/site/holiday.8march2/",
		"modules/landing/installcomponents/bitrix/landing.demo/data/site/holiday.8march2/",
		"components/bitrix/landing.demo/data/site/holiday.8march3/",
		"modules/landing/installcomponents/bitrix/landing.demo/data/site/holiday.8march3/",
		"components/bitrix/landing.demo/data/site/holiday.valentine1/",
		"modules/landing/installcomponents/bitrix/landing.demo/data/site/holiday.valentine1/",
		"components/bitrix/landing.demo/data/site/holiday.valentine2/",
		"modules/landing/installcomponents/bitrix/landing.demo/data/site/holiday.valentine2/",
		"components/bitrix/landing.demo/data/site/holiday.valentine3/",
		"modules/landing/installcomponents/bitrix/landing.demo/data/site/holiday.valentine3/",
		"components/bitrix/landing.demo/data/site/holiday.april-fool/",
		"modules/landing/installcomponents/bitrix/landing.demo/data/site/holiday.april-fool/",
		"components/bitrix/landing.demo/data/site/holiday.easter1/",
		"modules/landing/installcomponents/bitrix/landing.demo/data/site/holiday.easter1/",
		"components/bitrix/landing.demo/data/site/holiday.easter2/",
		"modules/landing/installcomponents/bitrix/landing.demo/data/site/holiday.easter2/",
		
		"modules/landing/install/blocks/bitrix/videobg.test/.description.php",
		"blocks/bitrix/videobg.test/.description.php",
		"modules/landing/install/blocks/bitrix/videobg.test/block.php",
		"blocks/bitrix/videobg.test/block.php",
		"modules/landing/install/blocks/bitrix/videobg.test/lang/ru/.description.php",
		"blocks/bitrix/videobg.test/lang/ru/.description.php",
		"modules/landing/install/blocks/bitrix/videobg.test/lang/ru/block.php",
		"blocks/bitrix/videobg.test/lang/ru/block.php",
		"modules/landing/install/blocks/bitrix/videobg.test/lang/de/.description.php",
		"blocks/bitrix/videobg.test/lang/de/.description.php",
		"modules/landing/install/blocks/bitrix/videobg.test/lang/de/block.php",
		"blocks/bitrix/videobg.test/lang/de/block.php",
		"modules/landing/install/blocks/bitrix/videobg.test/lang/en/.description.php",
		"blocks/bitrix/videobg.test/lang/en/.description.php",
		"modules/landing/install/blocks/bitrix/videobg.test/lang/en/block.php",
		"blocks/bitrix/videobg.test/lang/en/block.php",
		"modules/landing/install/blocks/bitrix/store.breadcrumb_dark_bg/.description.php",
		"blocks/bitrix/store.breadcrumb_dark_bg/.description.php",
		"modules/landing/install/blocks/bitrix/store.breadcrumb_dark_bg/block.php",
		"blocks/bitrix/store.breadcrumb_dark_bg/block.php",
		"modules/landing/install/blocks/bitrix/store.breadcrumb_dark_bg/lang/ru/.description.php",
		"blocks/bitrix/store.breadcrumb_dark_bg/lang/ru/.description.php",
		"modules/landing/install/blocks/bitrix/anim.test/lang/de/.description.php",
		"blocks/bitrix/anim.test/lang/de/.description.php",
		"modules/landing/install/blocks/bitrix/anim.test/lang/en/.description.php",
		"blocks/bitrix/anim.test/lang/en/.description.php",
		
		"modules/landing/install/blocks/bitrix/store.catalog.filter/style.css",
		"blocks/bitrix/store.catalog.filter/style.css",
		
		"modules/landing/install/blocks/bitrix/12.image_carousel_6_cols_fix/script.js",
		"blocks/bitrix/12.image_carousel_6_cols_fix/script.js",
		"modules/landing/install/blocks/bitrix/23.big_carousel_blocks/script.js",
		"blocks/bitrix/23.big_carousel_blocks/script.js",
		"modules/landing/install/blocks/bitrix/24.1.image_carousel_6_cols_fix_2/script.js",
		"blocks/bitrix/24.1.image_carousel_6_cols_fix_2/script.js",
		"modules/landing/install/blocks/bitrix/24.2.image_carousel_6_cols_fix_3/script.js",
		"blocks/bitrix/24.2.image_carousel_6_cols_fix_3/script.js",
		"modules/landing/install/blocks/bitrix/29.three_cols_texts_blocks_slider/script.js",
		"blocks/bitrix/29.three_cols_texts_blocks_slider/script.js",
		"modules/landing/install/blocks/bitrix/37.3.two_cols_blocks_carousel/script.js",
		"blocks/bitrix/37.3.two_cols_blocks_carousel/script.js",
		"modules/landing/install/blocks/bitrix/39.1.five_blocks_carousel/script.js",
		"blocks/bitrix/39.1.five_blocks_carousel/script.js",
		"modules/landing/install/blocks/bitrix/40.1.three_cols_carousel/script.js",
		"blocks/bitrix/40.1.three_cols_carousel/script.js",
		"modules/landing/install/blocks/bitrix/40.2.two_cols_carousel/script.js",
		"blocks/bitrix/40.2.two_cols_carousel/script.js",
		"modules/landing/install/blocks/bitrix/44.3.four_columns_text_with_img/script.js",
		"blocks/bitrix/44.3.four_columns_text_with_img/script.js",
		"modules/landing/install/blocks/bitrix/44.4.slider_5_cols_with_prices/script.js",
		"blocks/bitrix/44.4.slider_5_cols_with_prices/script.js",
		"modules/landing/install/blocks/bitrix/45.2.gallery_app_with_slider/script.js",
		"blocks/bitrix/45.2.gallery_app_with_slider/script.js",
		"modules/landing/install/blocks/bitrix/46.9.cover_bgimg_vertical_slider/script.js",
		"blocks/bitrix/46.9.cover_bgimg_vertical_slider/script.js",
		"modules/landing/install/blocks/bitrix/09.1.two_cols_fix_text_and_image_slider/script.js",
		"blocks/bitrix/09.1.two_cols_fix_text_and_image_slider/script.js",
		"modules/landing/install/blocks/bitrix/09.1.two_cols_fix_text_and_image_slider_2/script.js",
		"blocks/bitrix/09.1.two_cols_fix_text_and_image_slider_2/script.js",
		"modules/landing/install/blocks/bitrix/45.3.gallery_6cols_2row/script.js",
		"blocks/bitrix/45.3.gallery_6cols_2row/script.js",
	);
	foreach($arToDelete as $file)
	{
		CUpdateSystem::DeleteDirFilesEx($_SERVER["DOCUMENT_ROOT"].$updater->kernelPath."/".$file);
	}
}


/* separate color themes and typography settings for template */
if ($updater->CanUpdateDatabase() && $updater->TableExists('b_landing_hook_data'))
{
	$updater->query(
		"INSERT INTO `b_landing_hook_data` (`ENTITY_ID`, `ENTITY_TYPE`, `HOOK`, `CODE`, `VALUE`)
			SELECT `ENTITY_ID`, `ENTITY_TYPE`, 'THEME', 'CODE_TYPO', `VALUE`
			FROM `b_landing_hook_data`
			WHERE `HOOK` = 'THEME'
			GROUP BY `ENTITY_ID`, `ENTITY_TYPE`
			HAVING COUNT(`ENTITY_ID`) < 2;"
	);
}


if ($updater->CanUpdateDatabase() && $updater->TableExists('b_landing'))
{
	if ($DB->type == "MYSQL")
	{
		if (!$updater->TableExists("b_landing_manifest"))
		{
			$DB->Query("
				CREATE TABLE b_landing_manifest(
					ID int(18) not null auto_increment,
					CODE varchar(255) not null,
					MANIFEST text not null,
					CONTENT text not null,
					CREATED_BY_ID int(18) not null,
					MODIFIED_BY_ID int(18) not null,
					DATE_CREATE timestamp null,
					DATE_MODIFY timestamp not null,
					PRIMARY KEY(ID)
				);
			");
		}
		if ($updater->TableExists("b_landing_manifest"))
		{
			if (!$DB->IndexExists("b_landing_manifest", array("CODE", )))
			{
				$DB->Query("CREATE UNIQUE INDEX IX_B_MANIFEST_CODE ON b_landing_manifest(CODE)");
			}
		}
	}
}

if ($updater->CanUpdateDatabase() && $updater->TableExists('b_landing'))
{
	if ($DB->type == "MYSQL")
	{
		if ($updater->TableExists("b_landing_site"))
		{
			if (!$DB->Query("SELECT SMN_SITE_ID FROM b_landing_site WHERE 1=0", true))
			{
				$DB->Query("ALTER TABLE b_landing_site ADD SMN_SITE_ID char(2) default null");
			}
		}
	}
}


$fixesUpdates = array(
	'PARAMS' => array(
		'UPDATE_PUBLISHED_SITES' => 'N',
	),
	'BLOCKS' => array(
		'37.2.four_img_with_text_blocks' => array(
			'NODES' => array(
				'.landing-block-node-card-bgimg' => array(
					'CLASSES_ADD' => array('h-100'),
				),
				'.g-theme-architecture-bg-blue-dark-v3' => array(
					'CLASSES_ADD' => array('d-flex', 'h-100', 'flex-column'),
				),
				'.g-theme-architecture-bg-blue-dark-v4' => array(
					'CLASSES_ADD' => array('d-flex', 'h-100', 'flex-column'),
				),
				'.landing-block-node-card-link-container' => array(
					'CLASSES_ADD' => array('mt-auto'),
				),
			),
		),
		'22.1.four_cols_fix_bigbgimg' => array(
			'NODES' => array(
				'.landing-block-card' => array(
					'CLASSES_ADD' => array('d-flex', 'flex-column'),
				),
				'.landing-block-node-button-container' => array(
					'CLASSES_ADD' => array('mt-auto'),
				),
			),
		),
		'22.2.three_cols_fix_bigbgimg' => array(
			'NODES' => array(
				'.landing-block-card' => array(
					'CLASSES_ADD' => array('d-flex', 'flex-column'),
				),
				'.landing-block-node-button-container' => array(
					'CLASSES_ADD' => array('mt-auto'),
				),
			),
		),
		'22.3.two_cols_fix_bigbgimg' => array(
			'NODES' => array(
				'.landing-block-card' => array(
					'CLASSES_ADD' => array('d-flex', 'flex-column'),
				),
				'.landing-block-node-button-container' => array(
					'CLASSES_ADD' => array('mt-auto'),
				),
			),
		),
		'43.4.cover_with_price_text_button_bgimg' => array(
			'NODES' => array(
				'.landing-block-node-card-title' => array(
					'CLASSES_REMOVE' => array('g-font-secondary'),
					'CLASSES_ADD' => array('g-font-roboto-slab'),
				),
			),
		),
		'44.5.three_cols_images_with_price' => array(
			'NODES' => array(
				'.landing-block-node-card-title' => array(
					'CLASSES_REMOVE' => array('g-font-secondary'),
					'CLASSES_ADD' => array('g-font-roboto-slab'),
				),
				'.landing-block-node-card-subtitle' => array(
					'CLASSES_REMOVE' => array('g-font-secondary'),
					'CLASSES_ADD' => array('g-font-roboto-slab'),
				),
			),
		),
		'50.1.ny_block' => array(
			'NODES' => array(
				'.landing-block-node-card-img' => array(
					'CLASSES_REMOVE' => array('g-font-secondary'),
				),
				'.landing-block-node-card-title' => array(
					'CLASSES_ADD' => array('g-font-roboto-slab'),
				),
			),
		),
		
		//			sliders remove ID and set new settings
		'23.big_carousel_blocks' => array(
			'NODES' => array(
				'.js-carousel' => array(
					'ID_REMOVE' => 'Y',
					'ATTRS_ADD' => array(
						'data-responsive' => '[{
						   "breakpoint": 1200,
						   "settings": {
							 "slidesToShow": 4
						   }
						 }, {
						   "breakpoint": 992,
						   "settings": {
							 "slidesToShow": 2
						   }
						 }, {
						   "breakpoint": 576,
						   "settings": {
							 "slidesToShow": 1
						   }
						 }]',
					),
				),
			),
		),
		'39.1.five_blocks_carousel' => array(
			'NODES' => array(
				'.js-carousel' => array(
					'ID_REMOVE' => 'Y',
					'ATTRS_ADD' => array(
						'data-responsive' => '[{
							   "breakpoint": 1200,
							   "settings": {
								 "slidesToShow": 5
							   }
							 }, {
							   "breakpoint": 992,
							   "settings": {
								 "slidesToShow": 3
							   }
							 }, {
							   "breakpoint": 446,
							   "settings": {
								 "slidesToShow": 1
							   }
							 }]',
					),
				),
			),
		),
		'40.1.three_cols_carousel' => array(
			'NODES' => array(
				'.js-carousel' => array(
					'ID_REMOVE' => 'Y',
					'ATTRS_ADD' => array(
						'data-responsive' => '[{
							 "breakpoint": 1200,
							 "settings": {
							   "slidesToShow": 3
							 }
						   }, {
							 "breakpoint": 992,
							 "settings": {
							   "slidesToShow": 2
							 }
						   }, {
							 "breakpoint": 576,
							 "settings": {
							   "slidesToShow": 1
							 }
						   }]',
					),
				),
			),
		),
		'40.2.two_cols_carousel' => array(
			'NODES' => array(
				'.js-carousel' => array(
					'ID_REMOVE' => 'Y',
					'ATTRS_ADD' => array(
						'data-responsive' => '[{
							 "breakpoint": 1200,
							 "settings": {
							   "slidesToShow": 2,
							   "slidesToScroll": 2
							 }
						   }, {
							 "breakpoint": 576,
							 "settings": {
							   "slidesToShow": 1,
							   "slidesToScroll": 1
							 }
						   }]',
					),
				),
			),
		),
		'12.image_carousel_6_cols_fix' => array(
			'NODES' => array(
				'.js-carousel' => array(
					'ID_REMOVE' => 'Y',
					'ATTRS_ADD' => array(
						'data-responsive' => '[{
							 "breakpoint": 1200,
							 "settings": {
							   "slidesToShow": 5
							 }
						   }, {
							 "breakpoint": 992,
							 "settings": {
							   "slidesToShow": 4
							 }
						   }, {
							 "breakpoint": 768,
							 "settings": {
							   "slidesToShow": 3
							 }
						   }, {
							 "breakpoint": 576,
							 "settings": {
							   "slidesToShow": 2
							 }
						   }]',
					),
				),
			),
		),
		'29.three_cols_texts_blocks_slider' => array(
			'NODES' => array(
				'.js-carousel' => array(
					'ID_REMOVE' => 'Y',
					'ATTRS_ADD' => array(
						'data-responsive' => '[{
							 "breakpoint": 1200,
							 "settings": {
							   "slidesToShow": 3
							 }
						   }, {
							 "breakpoint": 992,
							 "settings": {
							   "slidesToShow": 2
							 }
						   }, {
							 "breakpoint": 768,
							 "settings": {
							   "slidesToShow": 2
							 }
						   }, {
							 "breakpoint": 576,
							 "settings": {
							   "slidesToShow": 1
							 }
						   }]',
					),
				),
			),
		),
		'37.3.two_cols_blocks_carousel' => array(
			'NODES' => array(
				'.js-carousel' => array(
					'ID_REMOVE' => 'Y',
					'ATTRS_ADD' => array(
						'data-responsive' => '[{
							 "breakpoint": 1200,
							 "settings": {
							   "slidesToShow": 2
							 }
						   }, {
							 "breakpoint": 992,
							 "settings": {
							   "slidesToShow": 1
							 }
						   }]',
					),
				),
			),
		),
		
		'45.2.gallery_app_with_slider' => array(
			'NODES' => array(
				'.js-carousel' => array(
					'ID_REMOVE' => 'Y',
					'ATTRS_ADD' => array(
						'data-responsive' => '[{
						 "breakpoint": 1200,
						 "settings": {
						   "slidesToShow": 3,
						   "slidesToScroll": 3
						 }
					   }, {
						 "breakpoint": 992,
						 "settings": {
						   "slidesToShow": 2,
						   "slidesToScroll": 2
						 }
					   }, {
						 "breakpoint": 576,
						 "settings": {
						   "slidesToShow": 1,
						   "slidesToScroll": 1
						 }
					   }]',
					),
				),
			),
		),
		'46.9.cover_bgimg_vertical_slider' => array(
			'NODES' => array(
				'.js-carousel' => array(
					'ID_REMOVE' => 'Y',
					'ATTRS_ADD' => array(
						'data-responsive' => '[{
							 "breakpoint": 576,
							 "settings": {
							   "vertical": false,
							   "verticalSwiping": false,
							   "dots": true,
							   "dotsClass": "js-pagination u-carousel-indicators-v1 g-absolute-centered--x g-bottom-30"
							 }
						   }]',
					),
				),
			),
		),
		'44.3.four_columns_text_with_img' => array(
			'NODES' => array(
				'.js-carousel' => array(
					'ID_REMOVE' => 'Y',
					'ATTRS_ADD' => array(
						'data-responsive' => '[{
						   "breakpoint": 1200,
						   "settings": {
							 "slidesToShow": 5
						   }
						 }, {
						   "breakpoint": 992,
						   "settings": {
							 "slidesToShow": 3
						   }
						 }, {
						   "breakpoint": 768,
						   "settings": {
							 "slidesToShow": 2
						   }
						 }, {
						   "breakpoint": 576,
						   "settings": {
							 "slidesToShow": 1
						   }
						 }]',
					),
				),
				'.landing-block-node-card-title' => array(
					'CLASSES_REMOVE' => array('g-font-secondary'),
					'CLASSES_ADD' => array('g-font-roboto-slab'),
				),
			),
		),
		'44.4.slider_5_cols_with_prices' => array(
			'NODES' => array(
				'.js-carousel' => array(
					'ID_REMOVE' => 'Y',
					'ATTRS_ADD' => array(
						'data-responsive' => '[{
						   "breakpoint": 1200,
						   "settings": {
							 "slidesToShow": 5
						   }
						 }, {
						   "breakpoint": 992,
						   "settings": {
							 "slidesToShow": 3
						   }
						 }, {
						   "breakpoint": 768,
						   "settings": {
							 "slidesToShow": 2
						   }
						 }, {
						   "breakpoint": 576,
						   "settings": {
							 "slidesToShow": 1
						   }
						 }]',
					),
				),
				'.landing-block-node-card-title' => array(
					'CLASSES_REMOVE' => array('g-font-secondary'),
					'CLASSES_ADD' => array('g-font-roboto-slab'),
				),
			),
		),
		'45.3.gallery_6cols_2row' => array(
			'NODES' => array(
				'.js-carousel' => array(
					'ID_REMOVE' => 'Y',
					'ATTRS_ADD' => array(
						'data-responsive' => '[{
							 "breakpoint": 1200,
							 "settings": {
							   "slidesToShow": 6,
							   "slidesToScroll": 6
							 }
						   }, {
							 "breakpoint": 992,
							 "settings": {
							   "slidesToShow": 5,
							   "slidesToScroll": 5
							 }
						   }, {
							 "breakpoint": 768,
							 "settings": {
							   "slidesToShow": 3,
							   "slidesToScroll": 3
							 }
						   }, {
							 "breakpoint": 576,
							 "settings": {
							   "slidesToShow": 1,
							   "slidesToScroll": 1
							 }
						   }]',
					),
				),
			),
		),
		'24.1.image_carousel_6_cols_fix_2' => array(
			'NODES' => array(
				'.js-carousel' => array(
					'ID_REMOVE' => 'Y',
					'ATTRS_ADD' => array(
						'data-responsive' => '[{
							 "breakpoint": 1200,
							 "settings": {
							   "slidesToShow": 6
							 }
						   }, {
							 "breakpoint": 992,
							 "settings": {
							   "slidesToShow": 4
							 }
						   }, {
							 "breakpoint": 768,
							 "settings": {
							   "slidesToShow": 2
							 }
						   }, {
							 "breakpoint": 576,
							 "settings": {
							   "slidesToShow": 1
							 }
						   }]',
					),
				),
			),
		),
		'24.2.image_carousel_6_cols_fix_3' => array(
			'NODES' => array(
				'.js-carousel' => array(
					'ID_REMOVE' => 'Y',
					'ATTRS_ADD' => array(
						'data-responsive' => '[{
							 "breakpoint": 1200,
							 "settings": {
							   "slidesToShow": 6
							 }
						   }, {
							 "breakpoint": 992,
							 "settings": {
							   "slidesToShow": 4
							 }
						   }, {
							 "breakpoint": 768,
							 "settings": {
							   "slidesToShow": 2
							 }
						   }, {
							 "breakpoint": 576,
							 "settings": {
							   "slidesToShow": 1
							 }
						   }]',
					),
				),
			),
		),
		'09.1.two_cols_fix_text_and_image_slider' => array(
			'NODES' => array(
				'.js-carousel' => array(
					'ID_REMOVE' => 'Y',
					'ATTRS_ADD' => array(
						'data-responsive' => '[{
							 "breakpoint": 1200,
							 "settings": {
							   "slidesToShow": 2
							 }
						   }, {
							 "breakpoint": 768,
							 "settings": {
							   "slidesToShow": 1
							 }
						   }]',
					),
				),
			),
		),
		'09.1.two_cols_fix_text_and_image_slider_2' => array(
			'NODES' => array(
				'.js-carousel' => array(
					'ID_REMOVE' => 'Y',
					'ATTRS_ADD' => array(
						'data-responsive' => '[{
							 "breakpoint": 1200,
							 "settings": {
							   "slidesToShow": 2
							 }
						   }, {
							 "breakpoint": 768,
							 "settings": {
							   "slidesToShow": 1
							 }
						   }]',
					),
				),
			),
		),
		
	)
);

//	find unique updaterId by current time
$updaterUniqueId = time();
while (true)
{
	if (\Bitrix\Main\Config\Option::get('landing', 'blocks_attrs_update' . $updaterUniqueId) == '')
	{
		break;
	}
	$updaterUniqueId++;
}

\Bitrix\Main\Config\Option::set('landing', 'blocks_attrs_update' . $updaterUniqueId, serialize($fixesUpdates));
\Bitrix\Main\Update\Stepper::bindClass('\Bitrix\Landing\Update\Block\NodeAttributes', 'landing', 300);

//	for all updates
// $eventManager = \Bitrix\Main\EventManager::getInstance();
// $eventManager->registerEventHandler('landing', '\Bitrix\Landing\Internals\Block::OnBeforeDelete', 'landing', '\Bitrix\Landing\Update\Block\NodeAttributes', 'disableBlockDelete');
// $eventManager->registerEventHandler('landing', 'onLandingPublication', 'landing', '\Bitrix\Landing\Update\Block\NodeAttributes', 'disablePublication');

?>