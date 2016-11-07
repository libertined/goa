<?php require($_SERVER["DOCUMENT_ROOT"]."/bitrix/header.php");
$APPLICATION->SetTitle("Заказ услуг");?>

    <form action="" method="post" name="">
        <div class="form form--yellow form--w670">
		  
          <div class="form__wrap marg-b-15">
              <label for="service-list" class="form__title">Что заказываем</label>
              <label class="form__field select">
                <select name="" id="service-list" class="form__input">
                    <option value="excursion">Экскурсии</option>
                    <option value="taxi">Такси</option>
                    <option value="rent">Аренда жилья</option>
                    <option value="celebration">Организация праздника</option>
                    <option value="tickets">Авиабилеты по Индии</option>
                    <option value="ayurveda">Аюрведа и лечение</option>
                </select>
              </label>
          </div>        
          
          <div class="form__wrap marg-b-15 form__exhib-select">
              <label for="excursions-list" class="form__title">Выберите экскурсию</label>
              <label class="form__field select">
                <select name="" id="excursions-list" class="form__input">
                    <option value="1">Экскурсия 1</option>
                    <option value="2">Экскурсия 2</option>
                    <option value="3">Экскурсия 3</option>
                    <option value="4">Экскурсия 4</option>
                    <option value="5">Экскурсия 5</option>
                    <option value="6">Экскурсия 6</option>
                </select>
              </label>
          </div>

          <div class="form__wrap marg-b-15 hidden">
              <label for="celebration-type" class="form__title">Тип праздника</label>
              <label class="form__field select">
                <select name="" id="celebration-type" class="form__input" disabled>
                    <option value="birthday">День рождения</option>
                    <option value="wedding">Свадебный юбилей</option>
                    <option value="other">другое событие</option>
                </select>
              </label>
          </div> 

          <div class="form__wrap marg-b-15 hidden">
              <label for="place-rent" class="form__title">Тип жилья</label>
              <label class="form__field select">
                <select name="" id="place-rent" class="form__input" disabled>
                    <option value="bungalo">Бунгало</option>
                    <option value="guesthouse">Гестхаус</option>
                    <option value="hotel">Гостиница</option>
                    <option value="cottage">Коттедж</option>
                </select>
              </label>
          </div> 

          <div class="form__wrap marg-b-15">
            <label for="label-date" class="form__title">Ориентировочная дата*</label>
            <div class="form__field form--field-date form--icon form--icon-date">
              <input id="label-date" placeholder="" name="" value="" type="date" class="form__input js-datepicker-after" required />
            </div>
          </div>



          <div class="form__wrap marg-b-15 hidden">
            <label for="label-beach" class="form__title">Пляж (место)</label>
            <div class="form__field"><input id="label-beach" placeholder="" name="" value="" type="text" class="form__input" /></div>
          </div>

          <div class="form__wrap marg-b-15 hidden">
            <label for="label-direction" class="form__title">Направление</label>
            <div class="form__field"><input id="label-direction" placeholder="" name="" value="" type="text" class="form__input" /></div>
          </div>



          <div class="form__wrap marg-b-15">
            <label for="label-hotel" class="form__title">Название отеля и № комнаты</label>
            <div class="form__field"><input id="label-hotel" placeholder="" name="" value="" type="text" class="form__input" /></div>
          </div>

          <div class="form__wrap marg-b-15">
            <label for="label-counter" class="form__title">Количество людей*</label>
            <div class="form__field">
              <div class="form__counter">
                <div class="form__counter-btn form--counter-minus"></div>
                <input id="label-counter" placeholder="" name="" value="1" type="text" class="form__input form--input-counter" readonly />
                <div class="form__counter-btn form--counter-plus"></div>
              </div>
            </div>
          </div>

          <div class="form__wrap marg-b-15">
            <label for="label-name" class="form__title">Имя*</label>
            <div class="form__field"><input id="label-name" placeholder="" name="" value="" type="text" class="form__input" required /></div>
          </div>

          <div class="form__wrap marg-b-15">
            <label for="label-email" class="form__title">Email*</label>
            <div class="form__field"><input id="label-email" placeholder="" name="" value="" type="email" class="form__input" required /></div>
          </div>

          <div class="form__wrap marg-b-15">
            <label for="label-phone" class="form__title">Телефон*</label>
            <div class="form__field"><input id="label-phone" placeholder="+7(999)999-99-99" name="" value="" type="tel" class="form__input" pattern="(\+?\d[- . \( \)]*){7,15}" required /></div>
          </div>

          <div class="form__wrap marg-b-15">
            <label for="viber-phone" class="form__title">Viber, WhatsApp</label>
            <div class="form__field">
                <input id="viber-phone" placeholder="+7(999)999-99-99" name="" value="" type="tel" class="form__input" pattern="(\+?\d[- . \( \)]*){7,15}" />
                <div class="form--title-viber">
                совпадает с основным телефоном <input id="viber-phone" name="close" value="yes" type="checkbox" class="form__viber-real" />
                </div>
                
            </div>  
              
          </div>

          <div class="form__wrap marg-b-15">
            <label for="label-info" class="form__title">Дополнительная информация</label>
            <div class="form__field"><textarea id="label-info" class="form__textarea"></textarea></div>
          </div>

          <div class="form__wrap">
            <div class="form__title visible-adaptive-768">&nbsp;</div>  
            <div class="form__field pos-right"><button type="submit" name="" class="btn col-adaptive-768">Заказать</button></div>
          </div>
        </div>
  </form>

<?php require($_SERVER["DOCUMENT_ROOT"]."/bitrix/footer.php");?>
<script src="/order/form.js"></script>
