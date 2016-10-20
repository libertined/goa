<?

/**
 * Ìàñøòàáèğóåò ôîòî, ñîõğàíÿåò êîïèş ôàéëà è âîçâğàùàåò ïóòü ê íåìó
 * ëèáî âîçâğàùàåò ññûëêó íà êàğòèíêó-çàãëóøêó
 * TODO èñïîëüçîâàòü ıòó ôóíêöèş ! :)
 *
 * @param $imgId
 * @param $width int
 * @param $height int Åñëè íå çàäàíî, áóäåò ğàâíî øèğèíå
 *
 * @throws Exception File dimensions can not be a null
 *
 *
 * @return string Ïóòü ê èçìåíåííîìó ôàéëó
 *
 *
 * @author dev@dermanov.ru
 */
function getResizedImgOrPlaceholder( $imgId, $width, $height = 0, $proportional = false){
    if (!$width)
        throw new Exception ( "File dimensions can not be a null" );

    $resizeParam = BX_RESIZE_IMAGE_EXACT;

    //
    if ($height == "auto") {
        $height = 9999;
        $resizeParam = BX_RESIZE_IMAGE_PROPORTIONAL;
    }
    if (!$height) $height = $width;

    if ($proportional)
        $resizeParam = BX_RESIZE_IMAGE_PROPORTIONAL;

    // if img is null - returns dummy img
    //you can insert here custom img
    //or even save on disk on first call each dummy img
    if (!$imgId) {
        $customNoImg = SITE_TEMPLATE_PATH . "/images/img_placeholder.jpg";

        // dummy can't be very big
        $height = $height == 9999 ? $width : $height;

        return file_exists($_SERVER["DOCUMENT_ROOT"] . $customNoImg) ? $customNoImg : "http://dummyimage.com/{$width}x{$height}/5C7BA4/fff";
    }


    $resizedImg = CFile::ResizeImageGet($imgId, array("width"=>$width, "height"=>$height), $resizeParam, false, false, false, 100);

    /* åñëè ôàéë ïî êàêèì-òî ïğè÷èíàì íå ñîçäàëñÿ */
    if (!file_exists($_SERVER["DOCUMENT_ROOT"] . $resizedImg['src'])) {
        return getResizedImgOrPlaceholder(false, $width, $height, $proportional);
    }

    return $resizedImg['src'];
}

/**
 * Ôîğìàòèğóåò äàòó
 *
 * @param $date string Äàòà (íàğèìåğ, íà÷àëî àêòèâíîñòè ıëåìåíòà)
 *
 * @param $format string Ôîğìàò äàòû (â ğàìêàõ Bitrix API)
 *
 * @return string Ïğèìåğ 05.11.2015 15:37:00 => 5 Íîÿáğÿ 2015
 *
 *
 * @author dev@dermanov.ru
 */
function formatDateCustom ($date, $format = "j F Y") {
    return strtolower( CIBlockFormatProperties::DateFormat($format, strtotime($date)) );
}

/**
 * Ôóíêöèÿ âîçâğàùàåò îêîí÷àíèå äëÿ ìíîæåñòâåííîãî ÷èñëà ñëîâà íà îñíîâàíèè ÷èñëà è ìàññèâà îêîí÷àíèé
 * @param  $number Integer ×èñëî íà îñíîâå êîòîğîãî íóæíî ñôîğìèğîâàòü îêîí÷àíèå
 * @param  $endingArray Array  Array Ìàññèâ ñëîâ èëè îêîí÷àíèé äëÿ ÷èñåë (1, 4, 5),
 *         íàïğèìåğ array('ÿáëîêî', 'ÿáëîêà', 'ÿáëîê')
 * @return String
 */
function getNumEnding($number, $endingArray) {
    $number = $number % 100;
    if ($number>=11 && $number<=19) {
        $ending=$endingArray[2];
    }
    else {
        $i = $number % 10;
        switch ($i)
        {
            case (1): $ending = $endingArray[0]; break;
            case (2):
            case (3):
            case (4): $ending = $endingArray[1]; break;
            default: $ending=$endingArray[2];
        }
    }

    return $ending;
}