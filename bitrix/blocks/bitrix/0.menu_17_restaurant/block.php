<?php
if (!defined("B_PROLOG_INCLUDED") || B_PROLOG_INCLUDED !== true)
{
	die();
}

$context = \Bitrix\Main\Application::getInstance()->getContext();
$request = $context->getRequest();

if ($request->get("landing_mode") != "edit")
{
	\Bitrix\Landing\Manager::setPageView(
		"MainClass",
		"g-pt-75 g-pt-50--md"
	);
}
?>

<header class="landing-block landing-block-menu g-bg-white u-header u-header--sticky-top u-header--change-appearance g-z-index-9999"
		data-header-fix-moment="100">
	<div class="u-header__section g-transition-0_3 g-py-16"
		 data-header-fix-moment-exclude="g-py-16"
		 data-header-fix-moment-classes="u-shadow-v27 g-py-6">
		<nav class="navbar navbar-expand-lg g-py-0 g-mt-3">
			<div class="container">
				<!-- Logo -->
				<a href="#" class="landing-block-node-menu-logo-link navbar-brand u-header__logo p-0">
					<img class="landing-block-node-menu-logo u-header__logo-img u-header__logo-img--main g-max-width-180"
						 src="/bitrix/templates/landing24/assets/img/restaurant-logo.png" alt="">
				</a>
				<!-- End Logo -->

				<!-- Navigation -->
				<div class="collapse navbar-collapse align-items-center flex-sm-row" id="navBar">
					<ul class="landing-block-node-menu-list js-scroll-nav navbar-nav text-uppercase g-font-weight-700 g-font-size-12 g-pt-20 g-pt-0--lg ml-auto">
						<li class="landing-block-node-menu-list-item nav-item g-mr-10--lg g-mb-7 g-mb-0--lg active">
							<a href="#masterslider"
							   class="landing-block-node-menu-list-item-link nav-link p-0 g-color-black">Home</a><span
									class="sr-only">(current)</span>
						</li>
						<li class="landing-block-node-menu-list-item nav-item g-mx-10--lg g-mb-7 g-mb-0--lg">
							<a href="#about" class="landing-block-node-menu-list-item-link nav-link p-0 g-color-black">About</a>
						</li>
						<li class="landing-block-node-menu-list-item nav-item g-mx-10--lg g-mb-7 g-mb-0--lg">
							<a href="#menu" class="landing-block-node-menu-list-item-link nav-link p-0 g-color-black">Menu</a>
						</li>
						<li class="landing-block-node-menu-list-item nav-item g-mx-10--lg g-mb-7 g-mb-0--lg">
							<a href="#special"
							   class="landing-block-node-menu-list-item-link nav-link p-0 g-color-black">Special</a>
						</li>
						<li class="landing-block-node-menu-list-item nav-item g-mx-10--lg g-mb-7 g-mb-0--lg">
							<a href="#ourFood"
							   class="landing-block-node-menu-list-item-link nav-link p-0 g-color-black">Our food</a>
						</li>
						<li class="landing-block-node-menu-list-item nav-item g-mx-10--lg g-mb-7 g-mb-0--lg">
							<a href="#services"
							   class="landing-block-node-menu-list-item-link nav-link p-0 g-color-black">Services</a>
						</li>
						<li class="landing-block-node-menu-list-item nav-item g-mx-10--lg g-mb-7 g-mb-0--lg">
							<a href="#gallery"
							   class="landing-block-node-menu-list-item-link nav-link p-0 g-color-black">Gallery</a>
						</li>
						<li class="landing-block-node-menu-list-item nav-item g-mx-10--lg g-mb-7 g-mb-0--lg">
							<a href="#ourTeem"
							   class="landing-block-node-menu-list-item-link nav-link p-0 g-color-black">Our teem</a>
						</li>
						<li class="landing-block-node-menu-list-item nav-item g-mx-10--lg g-mb-7 g-mb-0--lg">
							<a href="#bookingForm"
							   class="landing-block-node-menu-list-item-link nav-link p-0 g-color-black">Booking form</a>
						</li>
						<li class="landing-block-node-menu-list-item nav-item g-ml-10--lg g-mb-7 g-mb-0--lg">
							<a href="#contact"
							   class="landing-block-node-menu-list-item-link nav-link p-0 g-color-black">Contact</a>
						</li>
					</ul>
				</div>
				<!-- End Navigation -->

				<!-- Responsive Toggle Button -->
				<button class="navbar-toggler btn g-line-height-1 g-brd-none g-pa-0 ml-auto" type="button"
						aria-label="Toggle navigation"
						aria-expanded="false"
						aria-controls="navBar"
						data-toggle="collapse"
						data-target="#navBar">
                <span class="hamburger hamburger--slider">
                  <span class="hamburger-box">
                    <span class="hamburger-inner"></span>
                  </span>
                </span>
				</button>
				<!-- End Responsive Toggle Button -->
			</div>
		</nav>
	</div>
</header>