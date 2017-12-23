<?if(!defined("B_PROLOG_INCLUDED") || B_PROLOG_INCLUDED!==true) die();?>
              </div>
            </div>
          </div>
        </div>
      </div>

    <!--  <?if ($page == '/index.php'):?>
      <div class="instagram visible-adaptive-768">
        <div class="page-content-inner page-content-inner--w1300">
          <a class="instagram__header" href="https://instagram.com/tvoygoa" target="_blank">@tvoygoa</a>
          <div class="instagram__body">
            <iframe src='/inwidget/index.php?width=800&inline=4&view=8&toolbar=false&preview=large' scrolling='no' frameborder='no' style='border:none;width:100%;height:800px;overflow:hidden;'></iframe>
          </div>
        </div>
      </div>
      <?endif;?> -->
    </main>
  </div>
</div>

<footer class="page-footer">
  <div class="visible-adaptive-768">
    <div class="page-footer__top">
      <div class="page-content-inner page-content-inner--w1300">
        <div class="row">
          <div class="row__inner">
            <div class="col-12-4">
              <div class="page-footer__title">Контакты</div>
              <div class="page-footer__contact">
                <div class="page-footer__contact-title">Индия</div>
                <div class="page-footer__contact-text">
                  <a href="tel:+918888717922">+91 8888 71 79 22</a>
                  <a href="tel:+918888704005">+91 8888 70 40 05</a>
                </div>
              </div>

              <div class="page-footer__contact">
                <div class="page-footer__contact-title">Россия</div>
                <div class="page-footer__contact-text">
                  <a href="tel:+79817717922">+7 981 771 79 22</a>
                </div>
              </div>

              <div class="page-footer__contact">
                <div class="page-footer__contact-title">E-mail</div>
                <div class="page-footer__contact-text">
                  <p><a href="mailto:info@tvoygoa.ru" class="page-footer--contact-link">info@tvoygoa.ru</a></p>
                </div>
              </div>
            </div>

            <div class="col-12-5">
              <div class="page-footer__title">Присоединяйтесь к нам</div>
              <div class="page-footer__socials">
                <a href="https://www.instagram.com/tvoygoa/" class="page-footer__social-item page-footer--social-ig" target="_blank">
                    <svg class="icon icon-ig">
                        <use xlink:href="<?=SITE_TEMPLATE_PATH?>/svg/sprite.svg#instagram"></use>
                    </svg>
                </a>
                <a href="https://www.facebook.com/tvoygoa" class="page-footer__social-item page-footer--social-fb" target="_blank">
                    <svg class="icon icon-fb">
                        <use xlink:href="<?=SITE_TEMPLATE_PATH?>/svg/sprite.svg#fb"></use>
                    </svg>
                </a>
                <a href="https://vk.com/tvoygoa" class="page-footer__social-item page-footer--social-vk" target="_blank">
                    <svg class="icon icon-vk">
                        <use xlink:href="<?=SITE_TEMPLATE_PATH?>/svg/sprite.svg#vk"></use>
                    </svg>
                </a>                
				<a href="mailto:info@tvoygoa.ru" class="page-footer__social-item page-footer--social-email" target="_blank">
                    <svg class="icon icon-email">
                        <use xlink:href="<?=SITE_TEMPLATE_PATH?>/svg/sprite.svg#email"></use>
                    </svg>
                </a>
              </div>
            </div>

            <div class="col-12-3">
              <div class="page-footer__dev-wrap">
                <div class="page-footer__dev"><span>Разработка -</span> <a href="http://www.ae-studio.ru" target="_blank">AE! studio</a></div>
                <div class="page-footer__dev"><span>Дизайн от</span> <a href="http://pixeljam.ru/" target="_blank">Pixeljam</a></div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="page-footer__copyright">
      <div class="page-content-inner page-content-inner--w1300">
        <div class="page-footer__copyright-inner">© 2011-<?php echo date('Y') ?> «Твой Гоа»</div>
      </div>
    </div>
  </div>

  <div class="visible-adaptive-show-768">
    <div class="page-footer__top">
      <div class="page-content-inner page-content-inner--w1300">
        <div class="row">
          <div class="row__inner">
            <div class="col-12-9">
              <? $APPLICATION->IncludeComponent("bitrix:menu", "bottom", Array(
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
            </div>
            <div class="col-12-3 pos-right">
              <div class="page-footer__socials">
                <a href="https://www.instagram.com/tvoygoa/" class="page-footer__social-item page-footer--social-ig" target="_blank">
                  <svg class="icon icon-ig">
                    <use xlink:href="<?=SITE_TEMPLATE_PATH?>/svg/sprite.svg#instagram"></use>
                  </svg>
                </a>
                <a href="https://www.facebook.com/tvoygoa" class="page-footer__social-item page-footer--social-fb" target="_blank">
                  <svg class="icon icon-fb">
                    <use xlink:href="<?=SITE_TEMPLATE_PATH?>/svg/sprite.svg#fb"></use>
                  </svg>
                </a>
                <a href="https://vk.com/tvoygoa" class="page-footer__social-item page-footer--social-vk" target="_blank">
                  <svg class="icon icon-vk">
                    <use xlink:href="<?=SITE_TEMPLATE_PATH?>/svg/sprite.svg#vk"></use>
                  </svg>
                </a>
                <a href="mailto:info@tvoygoa.ru" class="page-footer__social-item page-footer--social-email" target="_blank">
                  <svg class="icon icon-email">
                    <use xlink:href="<?=SITE_TEMPLATE_PATH?>/svg/sprite.svg#email"></use>
                  </svg>
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="page-footer__copyright">
      <div class="page-content-inner page-content-inner--w1300">
        <div class="page-footer__copyright-inner">
          <div class="row">
            <div class="row__inner">
              <div class="col-12-6">© <?php echo date('Y') ?> Твой Гоа</div>
              <div class="col-12-6 pos-right">Разработка <a href="http://www.ae-studio.ru" target="_blank">AE! studio</a></div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</footer>

<a class="scrollTop-btn js-scrollTop" href="#"></a>
<!-- VK Widget -->
<div id="vk_community_messages" class="visible-adaptive-768"></div>
<script type="text/javascript">
VK.Widgets.CommunityMessages("vk_community_messages", 5779993, {tooltipButtonText: "Есть вопрос?"});
</script>

</body>
</html>