-- MySQL dump 10.13  Distrib 5.6.28-76.1, for Linux (x86_64)
--
-- Host: localhost    Database: tvoygoaru_base
-- ------------------------------------------------------
-- Server version	5.6.28-76.1-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `a_reviews`
--

DROP TABLE IF EXISTS `a_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `a_reviews` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `UF_USER_NAME` text COLLATE utf8_unicode_ci,
  `UF_DATE` datetime DEFAULT NULL,
  `UF_TEXT` text COLLATE utf8_unicode_ci,
  `UF_USER_SOC_URL` text COLLATE utf8_unicode_ci,
  `UF_IMG` text COLLATE utf8_unicode_ci,
  `UF_ACTIVE` int(18) DEFAULT NULL,
  `UF_TOUR_ID` text COLLATE utf8_unicode_ci,
  `UF_ADMIN_REPLY` text COLLATE utf8_unicode_ci,
  `UF_ADMIN_REPLY_DATE` datetime DEFAULT NULL,
  `UF_IMG_DESC` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `a_reviews`
--

LOCK TABLES `a_reviews` WRITE;
/*!40000 ALTER TABLE `a_reviews` DISABLE KEYS */;
INSERT INTO `a_reviews` VALUES (1,'Mark','2016-10-14 22:29:01','Hello world of first review!','//vk.com/dermanov_ru/','a:4:{i:0;s:1:\"8\";i:1;s:1:\"9\";i:2;s:2:\"10\";i:3;s:2:\"11\";}',1,'a:3:{i:0;s:2:\"18\";i:1;s:2:\"12\";i:2;s:2:\"13\";}','Это - наш ответ!','2016-10-15 17:21:00','a:0:{}'),(2,'Admin','2016-10-14 22:47:41','Необходимо разработать компонент для вывода отзывов на странице new.tvoygoa.ru/responses\r\n\r\nКаждый отзыв прикреплен к n-му количеству экскурсий (в теории неограниченно). \r\n\r\nНа странице пользователь выбирает ту экскурсию, по которой он хочет почитать отзывы (одну или несколько), и компонент выводит отзывы по выбранным.\r\n\r\nПо умолчанию (при загрузке страницы, когда не выбрана ни одна экскурсия) отображаются отзывы по всем экскурсиям.\r\n\r\nПо нажатию на кнопку «Показать ещё» подгружаются следующие 10 отзывов (без перезагрузки страницы, ajax). ','//vk.com/admin/','a:4:',1,'a:1:{i:0;s:2:\"15\";}',NULL,NULL,NULL),(3,'Test','2016-10-15 01:03:44','Основные требования к оформлению кода, кстати довольно простые:\r\n\r\nИменование \r\nНазвания переменных, констант, классов и функций - должно быть осмысленным.\r\n\r\nВыравнивание \r\nСледите за табуляцией во вложенных блоках.\r\n\r\nОтступы \r\nРазделяйте логические блоки кода одной пустой строкой.\r\n\r\nКомментарии \r\nПо большому счету код должен быть самодокументируемым. Этому способоствют семантичные названия переменных, методов и тд.','//ok.ru/test/','a:5:{i:0;i:12;i:1;i:13;i:2;i:14;i:3;i:15;i:4;i:16;}',1,'a:2:{i:0;s:2:\"12\";i:1;s:2:\"15\";}','debug',NULL,'a:0:{}'),(4,'Debug','2016-10-15 23:09:39','фото храним в upload\'e\r\nв иблоке храним только ИД записи из таблицы b_file\r\nв общем, обычное св-во типа “файл”\r\n\r\nВремя\r\nсоздание структуры БД - 1 час\r\nкомпонент - 4 часа','','a:4:',1,'a:1:{i:0;s:2:\"17\";}','Спасибо за такой обширный отзыв. Но вы могли бы поинтересоваться у тех 2-х. Они были заранее предупреждены о невозможности поехать в Тибет, о том, что экскурсия возможна только в Хампи и озеро, на что согласились. Наверное, они тоже были вредными, и решили , а пусть все поедут в Тибет..И вы забыли уточнить, что вы ехали в 5-ом, а не в 6-м и цена при этом не поменялась. Ну и самое главное, про Хампи можно написать не одну книгу, а у вас.','2016-10-16 01:00:00','a:3:{i:0;s:10:\"фото 1\";i:1;s:10:\"фото 2\";i:2;s:10:\"фото 3\";}'),(5,'Митя','2016-10-17 17:43:24','Самый последний отзыв','','a:0:{}',1,'a:3:{i:0;s:2:\"18\";i:1;s:2:\"13\";i:2;s:2:\"14\";}','','2016-10-17 17:43:24','a:0:{}');
/*!40000 ALTER TABLE `a_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `a_reviews_uf_img`
--

DROP TABLE IF EXISTS `a_reviews_uf_img`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `a_reviews_uf_img` (
  `ID` int(11) NOT NULL,
  `VALUE` int(11) NOT NULL,
  KEY `IX_UTM_HL1_5_ID` (`ID`),
  KEY `IX_UTM_HL1_5_VALUE` (`VALUE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `a_reviews_uf_img`
--

LOCK TABLES `a_reviews_uf_img` WRITE;
/*!40000 ALTER TABLE `a_reviews_uf_img` DISABLE KEYS */;
INSERT INTO `a_reviews_uf_img` VALUES (3,12),(3,13),(3,14),(3,15),(3,16),(1,8),(1,9),(1,10),(1,11);
/*!40000 ALTER TABLE `a_reviews_uf_img` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `a_reviews_uf_img_desc`
--

DROP TABLE IF EXISTS `a_reviews_uf_img_desc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `a_reviews_uf_img_desc` (
  `ID` int(11) NOT NULL,
  `VALUE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  KEY `IX_UTM_HL1_10_ID` (`ID`),
  KEY `IX_UTM_HL1_10_VALUE` (`VALUE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `a_reviews_uf_img_desc`
--

LOCK TABLES `a_reviews_uf_img_desc` WRITE;
/*!40000 ALTER TABLE `a_reviews_uf_img_desc` DISABLE KEYS */;
INSERT INTO `a_reviews_uf_img_desc` VALUES (4,'фото 1'),(4,'фото 2'),(4,'фото 3');
/*!40000 ALTER TABLE `a_reviews_uf_img_desc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `a_reviews_uf_tour_id`
--

DROP TABLE IF EXISTS `a_reviews_uf_tour_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `a_reviews_uf_tour_id` (
  `ID` int(11) NOT NULL,
  `VALUE` int(11) NOT NULL,
  KEY `IX_UTM_HL1_7_ID` (`ID`),
  KEY `IX_UTM_HL1_7_VALUE` (`VALUE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `a_reviews_uf_tour_id`
--

LOCK TABLES `a_reviews_uf_tour_id` WRITE;
/*!40000 ALTER TABLE `a_reviews_uf_tour_id` DISABLE KEYS */;
INSERT INTO `a_reviews_uf_tour_id` VALUES (2,15),(4,17),(3,12),(3,15),(1,18),(1,12),(1,13),(5,18),(5,13),(5,14);
/*!40000 ALTER TABLE `a_reviews_uf_tour_id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_admin_notify`
--

DROP TABLE IF EXISTS `b_admin_notify`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_admin_notify` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TAG` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MESSAGE` text COLLATE utf8_unicode_ci,
  `ENABLE_CLOSE` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `PUBLIC_SECTION` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`ID`),
  KEY `IX_AD_TAG` (`TAG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_admin_notify`
--

LOCK TABLES `b_admin_notify` WRITE;
/*!40000 ALTER TABLE `b_admin_notify` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_admin_notify` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_admin_notify_lang`
--

DROP TABLE IF EXISTS `b_admin_notify_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_admin_notify_lang` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `NOTIFY_ID` int(18) NOT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `MESSAGE` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_ADM_NTFY_LANG` (`NOTIFY_ID`,`LID`),
  KEY `IX_ADM_NTFY_LID` (`LID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_admin_notify_lang`
--

LOCK TABLES `b_admin_notify_lang` WRITE;
/*!40000 ALTER TABLE `b_admin_notify_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_admin_notify_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_agent`
--

DROP TABLE IF EXISTS `b_agent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_agent` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SORT` int(18) NOT NULL DEFAULT '100',
  `NAME` text COLLATE utf8_unicode_ci,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `LAST_EXEC` datetime DEFAULT NULL,
  `NEXT_EXEC` datetime NOT NULL,
  `DATE_CHECK` datetime DEFAULT NULL,
  `AGENT_INTERVAL` int(18) DEFAULT '86400',
  `IS_PERIOD` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `USER_ID` int(18) DEFAULT NULL,
  `RUNNING` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`ID`),
  KEY `ix_act_next_exec` (`ACTIVE`,`NEXT_EXEC`),
  KEY `ix_agent_user_id` (`USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_agent`
--

LOCK TABLES `b_agent` WRITE;
/*!40000 ALTER TABLE `b_agent` DISABLE KEYS */;
INSERT INTO `b_agent` VALUES (1,'main',100,'CEvent::CleanUpAgent();','Y','2016-10-24 00:03:22','2016-10-25 00:00:00',NULL,86400,'Y',NULL,'N'),(2,'main',100,'CUser::CleanUpHitAuthAgent();','Y','2016-10-24 00:03:22','2016-10-25 00:00:00',NULL,86400,'Y',NULL,'N'),(3,'main',100,'CCaptchaAgent::DeleteOldCaptcha(3600);','Y','2016-10-24 16:13:20','2016-10-24 17:13:20',NULL,3600,'N',NULL,'N'),(4,'main',100,'CUndo::CleanUpOld();','Y','2016-10-24 00:03:22','2016-10-25 00:00:00',NULL,86400,'Y',NULL,'N'),(5,'main',100,'CSiteCheckerTest::CommonTest();','Y','2016-10-23 18:16:09','2016-10-24 18:16:09',NULL,86400,'N',NULL,'N'),(6,'main',100,'\\Bitrix\\Main\\Analytics\\CounterDataTable::submitData();','Y','2016-10-24 16:29:36','2016-10-24 16:30:36',NULL,60,'N',NULL,'N'),(7,'search',10,'CSearchSuggest::CleanUpAgent();','Y','2016-10-23 18:16:10','2016-10-24 18:16:10',NULL,86400,'N',NULL,'N'),(8,'search',10,'CSearchStatistic::CleanUpAgent();','Y','2016-10-23 18:16:10','2016-10-24 18:16:10',NULL,86400,'N',NULL,'N'),(9,'seo',100,'Bitrix\\Seo\\Engine\\YandexDirect::updateAgent();','Y','2016-10-24 16:13:21','2016-10-24 17:13:21',NULL,3600,'N',NULL,'N'),(10,'seo',100,'Bitrix\\Seo\\Adv\\LogTable::clean();','Y','2016-10-23 18:16:09','2016-10-24 18:16:09',NULL,86400,'N',NULL,'N'),(11,'seo',100,'Bitrix\\Seo\\Adv\\Auto::checkQuantityAgent();','Y','2016-10-24 16:13:21','2016-10-24 17:13:21',NULL,3600,'N',NULL,'N');
/*!40000 ALTER TABLE `b_agent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_app_password`
--

DROP TABLE IF EXISTS `b_app_password`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_app_password` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) NOT NULL,
  `APPLICATION_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PASSWORD` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DIGEST_PASSWORD` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DATE_CREATE` datetime DEFAULT NULL,
  `DATE_LOGIN` datetime DEFAULT NULL,
  `LAST_IP` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COMMENT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SYSCOMMENT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_app_password_user` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_app_password`
--

LOCK TABLES `b_app_password` WRITE;
/*!40000 ALTER TABLE `b_app_password` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_app_password` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_bitrixcloud_option`
--

DROP TABLE IF EXISTS `b_bitrixcloud_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_bitrixcloud_option` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SORT` int(11) NOT NULL,
  `PARAM_KEY` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PARAM_VALUE` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_bitrixcloud_option_1` (`NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_bitrixcloud_option`
--

LOCK TABLES `b_bitrixcloud_option` WRITE;
/*!40000 ALTER TABLE `b_bitrixcloud_option` DISABLE KEYS */;
INSERT INTO `b_bitrixcloud_option` VALUES (1,'backup_quota',0,'0','0'),(2,'backup_total_size',0,'0','0'),(3,'backup_last_backup_time',0,'0','1471697481'),(4,'monitoring_expire_time',0,'0','1477259156');
/*!40000 ALTER TABLE `b_bitrixcloud_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_cache_tag`
--

DROP TABLE IF EXISTS `b_cache_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_cache_tag` (
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CACHE_SALT` char(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RELATIVE_PATH` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TAG` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `ix_b_cache_tag_0` (`SITE_ID`,`CACHE_SALT`,`RELATIVE_PATH`(50)),
  KEY `ix_b_cache_tag_1` (`TAG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_cache_tag`
--

LOCK TABLES `b_cache_tag` WRITE;
/*!40000 ALTER TABLE `b_cache_tag` DISABLE KEYS */;
INSERT INTO `b_cache_tag` VALUES (NULL,NULL,'0:1477254627','**'),('s1','/e25','/s1/bitrix/menu/06f','bitrix:menu'),('s1','/e25','/s1/goa/element.random/06f','iblock_id_3'),('s1','/e25','/s1/goa/element.random/e25','iblock_id_4'),('s1','/180','/s1/bitrix/menu/06f','bitrix:menu'),('s1','/180','/s1/bitrix/search.tags.cloud/180','bitrix:search.tags.cloud'),('s1','/9a8','/s1/bitrix/menu/06f','bitrix:menu'),('s1','/180','/s1/goa/element.random/06f','iblock_id_3'),('s1','/180','/s1/bitrix/news.list/180','iblock_id_5'),('s1','/9a8','/s1/goa/reviews/9a8','reviews_component'),('s1','/9a8','/s1/bitrix/news.detail/9a8','iblock_id_5'),('s1','/9a8','/s1/bitrix/news.detail/9a8','iblock_id_6'),('s1','/9a8','/s1/goa/element.random/06f','iblock_id_3'),('s1','/6f8','/s1/bitrix/menu/06f','bitrix:menu'),('s1','/e7a','/s1/bitrix/menu/06f','bitrix:menu'),('s1','/e7a','/s1/goa/reviews/e7a','reviews_component'),('s1','/e7a','/s1/goa/reviews/e7a','iblock_id_5'),('s1','/6d1','/s1/bitrix/menu/06f','bitrix:menu'),('s1','/6d1','/s1/goa/element.random/06f','iblock_id_3'),('s1','/315','/s1/bitrix/menu/06f','bitrix:menu'),('s1','/4da','/s1/bitrix/menu/06f','bitrix:menu'),('s1','/a06','/s1/bitrix/menu/06f','bitrix:menu'),('s1','/a06','/s1/goa/element.random/06f','iblock_id_3'),('s1','/dd0','/s1/bitrix/menu/06f','bitrix:menu');
/*!40000 ALTER TABLE `b_cache_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_captcha`
--

DROP TABLE IF EXISTS `b_captcha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_captcha` (
  `ID` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `CODE` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `IP` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `DATE_CREATE` datetime NOT NULL,
  UNIQUE KEY `UX_B_CAPTCHA` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_captcha`
--

LOCK TABLES `b_captcha` WRITE;
/*!40000 ALTER TABLE `b_captcha` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_captcha` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_checklist`
--

DROP TABLE IF EXISTS `b_checklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_checklist` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE_CREATE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TESTER` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COMPANY_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PICTURE` int(11) DEFAULT NULL,
  `TOTAL` int(11) DEFAULT NULL,
  `SUCCESS` int(11) DEFAULT NULL,
  `FAILED` int(11) DEFAULT NULL,
  `PENDING` int(11) DEFAULT NULL,
  `SKIP` int(11) DEFAULT NULL,
  `STATE` longtext COLLATE utf8_unicode_ci,
  `REPORT_COMMENT` text COLLATE utf8_unicode_ci,
  `REPORT` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `EMAIL` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PHONE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SENDED_TO_BITRIX` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `HIDDEN` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_checklist`
--

LOCK TABLES `b_checklist` WRITE;
/*!40000 ALTER TABLE `b_checklist` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_checklist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_clouds_file_bucket`
--

DROP TABLE IF EXISTS `b_clouds_file_bucket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_clouds_file_bucket` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `SORT` int(11) DEFAULT '500',
  `READ_ONLY` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `SERVICE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BUCKET` varchar(63) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LOCATION` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CNAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FILE_COUNT` int(11) DEFAULT '0',
  `FILE_SIZE` float DEFAULT '0',
  `LAST_FILE_ID` int(11) DEFAULT NULL,
  `PREFIX` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SETTINGS` text COLLATE utf8_unicode_ci,
  `FILE_RULES` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_clouds_file_bucket`
--

LOCK TABLES `b_clouds_file_bucket` WRITE;
/*!40000 ALTER TABLE `b_clouds_file_bucket` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_clouds_file_bucket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_clouds_file_resize`
--

DROP TABLE IF EXISTS `b_clouds_file_resize`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_clouds_file_resize` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ERROR_CODE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `FILE_ID` int(11) DEFAULT NULL,
  `PARAMS` text COLLATE utf8_unicode_ci,
  `FROM_PATH` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TO_PATH` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_file_resize_ts` (`TIMESTAMP_X`),
  KEY `ix_b_file_resize_path` (`TO_PATH`(100)),
  KEY `ix_b_file_resize_file` (`FILE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_clouds_file_resize`
--

LOCK TABLES `b_clouds_file_resize` WRITE;
/*!40000 ALTER TABLE `b_clouds_file_resize` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_clouds_file_resize` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_clouds_file_upload`
--

DROP TABLE IF EXISTS `b_clouds_file_upload`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_clouds_file_upload` (
  `ID` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `FILE_PATH` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `TMP_FILE` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BUCKET_ID` int(11) NOT NULL,
  `PART_SIZE` int(11) NOT NULL,
  `PART_NO` int(11) NOT NULL,
  `PART_FAIL_COUNTER` int(11) NOT NULL,
  `NEXT_STEP` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_clouds_file_upload`
--

LOCK TABLES `b_clouds_file_upload` WRITE;
/*!40000 ALTER TABLE `b_clouds_file_upload` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_clouds_file_upload` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_component_params`
--

DROP TABLE IF EXISTS `b_component_params`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_component_params` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `COMPONENT_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TEMPLATE_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `REAL_PATH` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SEF_MODE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `SEF_FOLDER` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `START_CHAR` int(11) NOT NULL,
  `END_CHAR` int(11) NOT NULL,
  `PARAMETERS` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`),
  KEY `ix_comp_params_name` (`COMPONENT_NAME`),
  KEY `ix_comp_params_path` (`SITE_ID`,`REAL_PATH`),
  KEY `ix_comp_params_sname` (`SITE_ID`,`COMPONENT_NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_component_params`
--

LOCK TABLES `b_component_params` WRITE;
/*!40000 ALTER TABLE `b_component_params` DISABLE KEYS */;
INSERT INTO `b_component_params` VALUES (5,'s1','bitrix:menu','top','/local/templates/goa/header.php','N',NULL,1297,2125,'a:12:{s:14:\"ROOT_MENU_TYPE\";s:3:\"top\";s:15:\"MENU_CACHE_TYPE\";s:1:\"A\";s:15:\"MENU_CACHE_TIME\";s:8:\"36000000\";s:21:\"MENU_CACHE_USE_GROUPS\";s:1:\"Y\";s:19:\"MENU_CACHE_GET_VARS\";s:0:\"\";s:9:\"MAX_LEVEL\";s:1:\"1\";s:15:\"CHILD_MENU_TYPE\";s:3:\"top\";s:7:\"USE_EXT\";s:1:\"N\";s:5:\"DELAY\";s:1:\"N\";s:18:\"ALLOW_MULTI_SELECT\";s:1:\"N\";s:18:\"COMPONENT_TEMPLATE\";s:0:\"\";s:10:\"MENU_THEME\";s:4:\"blue\";}'),(6,'s1','bitrix:breadcrumb','main','/local/templates/goa/header.php','N',NULL,3126,3545,'a:3:{s:10:\"START_FROM\";s:1:\"0\";s:4:\"PATH\";s:0:\"\";s:7:\"SITE_ID\";s:2:\"s1\";}'),(7,'s1','bitrix:menu','sub_menu','/local/templates/goa/header.php','N',NULL,5017,5885,'a:12:{s:14:\"ROOT_MENU_TYPE\";s:4:\"left\";s:15:\"MENU_CACHE_TYPE\";s:1:\"A\";s:15:\"MENU_CACHE_TIME\";s:8:\"36000000\";s:21:\"MENU_CACHE_USE_GROUPS\";s:1:\"Y\";s:19:\"MENU_CACHE_GET_VARS\";s:0:\"\";s:9:\"MAX_LEVEL\";s:1:\"1\";s:15:\"CHILD_MENU_TYPE\";s:4:\"left\";s:7:\"USE_EXT\";s:1:\"N\";s:5:\"DELAY\";s:1:\"N\";s:18:\"ALLOW_MULTI_SELECT\";s:1:\"N\";s:18:\"COMPONENT_TEMPLATE\";s:0:\"\";s:10:\"MENU_THEME\";s:4:\"blue\";}'),(8,'s1','bitrix:photo.random','.default','/local/templates/goa/header.php','N',NULL,5908,6356,'a:7:{s:12:\"CACHE_GROUPS\";s:1:\"Y\";s:10:\"CACHE_TIME\";s:3:\"180\";s:10:\"CACHE_TYPE\";s:1:\"A\";s:10:\"DETAIL_URL\";s:0:\"\";s:7:\"IBLOCKS\";a:1:{i:0;s:1:\"3\";}s:11:\"IBLOCK_TYPE\";s:4:\"info\";s:14:\"PARENT_SECTION\";s:0:\"\";}'),(9,'s1','bitrix:news.list','.default','/index.php','N',NULL,1104,4481,'a:50:{s:18:\"ACTIVE_DATE_FORMAT\";s:5:\"d.m.Y\";s:18:\"ADD_SECTIONS_CHAIN\";s:1:\"N\";s:9:\"AJAX_MODE\";s:1:\"N\";s:22:\"AJAX_OPTION_ADDITIONAL\";s:0:\"\";s:19:\"AJAX_OPTION_HISTORY\";s:1:\"N\";s:16:\"AJAX_OPTION_JUMP\";s:1:\"N\";s:17:\"AJAX_OPTION_STYLE\";s:1:\"Y\";s:12:\"CACHE_FILTER\";s:1:\"N\";s:12:\"CACHE_GROUPS\";s:1:\"Y\";s:10:\"CACHE_TIME\";s:8:\"36000000\";s:10:\"CACHE_TYPE\";s:1:\"A\";s:11:\"CHECK_DATES\";s:1:\"Y\";s:10:\"DETAIL_URL\";s:17:\"excursion/#CODE#/\";s:20:\"DISPLAY_BOTTOM_PAGER\";s:1:\"N\";s:12:\"DISPLAY_DATE\";s:1:\"N\";s:12:\"DISPLAY_NAME\";s:1:\"N\";s:15:\"DISPLAY_PICTURE\";s:1:\"Y\";s:20:\"DISPLAY_PREVIEW_TEXT\";s:1:\"Y\";s:17:\"DISPLAY_TOP_PAGER\";s:1:\"N\";s:10:\"FIELD_CODE\";a:3:{i:0;s:4:\"CODE\";i:1;s:15:\"PREVIEW_PICTURE\";i:2;s:0:\"\";}s:11:\"FILTER_NAME\";s:15:\"filterExcursion\";s:24:\"HIDE_LINK_WHEN_NO_DETAIL\";s:1:\"N\";s:9:\"IBLOCK_ID\";s:1:\"5\";s:11:\"IBLOCK_TYPE\";s:4:\"info\";s:25:\"INCLUDE_IBLOCK_INTO_CHAIN\";s:1:\"N\";s:19:\"INCLUDE_SUBSECTIONS\";s:1:\"Y\";s:11:\"MESSAGE_404\";s:0:\"\";s:10:\"NEWS_COUNT\";s:1:\"5\";s:22:\"PAGER_BASE_LINK_ENABLE\";s:1:\"N\";s:20:\"PAGER_DESC_NUMBERING\";s:1:\"N\";s:31:\"PAGER_DESC_NUMBERING_CACHE_TIME\";s:5:\"36000\";s:14:\"PAGER_SHOW_ALL\";s:1:\"N\";s:17:\"PAGER_SHOW_ALWAYS\";s:1:\"N\";s:14:\"PAGER_TEMPLATE\";s:8:\".default\";s:11:\"PAGER_TITLE\";s:14:\"Новости\";s:14:\"PARENT_SECTION\";s:0:\"\";s:19:\"PARENT_SECTION_CODE\";s:0:\"\";s:20:\"PREVIEW_TRUNCATE_LEN\";s:0:\"\";s:13:\"PROPERTY_CODE\";a:2:{i:0;s:6:\"IN_TOP\";i:1;s:0:\"\";}s:17:\"SET_BROWSER_TITLE\";s:1:\"N\";s:17:\"SET_LAST_MODIFIED\";s:1:\"N\";s:20:\"SET_META_DESCRIPTION\";s:1:\"N\";s:17:\"SET_META_KEYWORDS\";s:1:\"N\";s:14:\"SET_STATUS_404\";s:1:\"N\";s:9:\"SET_TITLE\";s:1:\"N\";s:8:\"SHOW_404\";s:1:\"N\";s:8:\"SORT_BY1\";s:4:\"SORT\";s:8:\"SORT_BY2\";s:2:\"ID\";s:11:\"SORT_ORDER1\";s:4:\"DESC\";s:11:\"SORT_ORDER2\";s:3:\"ASC\";}'),(10,'s1','goa:element.random','reviews','/index.php','N',NULL,6924,7493,'a:9:{s:12:\"CACHE_GROUPS\";s:1:\"Y\";s:10:\"CACHE_TIME\";s:3:\"180\";s:10:\"CACHE_TYPE\";s:1:\"A\";s:10:\"DETAIL_URL\";s:0:\"\";s:7:\"IBLOCKS\";a:1:{i:0;s:1:\"4\";}s:6:\"FIELDS\";a:4:{i:0;s:12:\"PREVIEW_TEXT\";i:1;s:16:\"DATE_ACTIVE_FROM\";i:2;s:12:\"PROPERTY_FIO\";i:3;s:15:\"PREVIEW_PICTURE\";}s:5:\"COUNT\";s:1:\"3\";s:11:\"IBLOCK_TYPE\";s:4:\"info\";s:14:\"PARENT_SECTION\";s:0:\"\";}');
/*!40000 ALTER TABLE `b_component_params` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_counter_data`
--

DROP TABLE IF EXISTS `b_counter_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_counter_data` (
  `ID` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `TYPE` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `DATA` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_counter_data`
--

LOCK TABLES `b_counter_data` WRITE;
/*!40000 ALTER TABLE `b_counter_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_counter_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_culture`
--

DROP TABLE IF EXISTS `b_culture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_culture` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FORMAT_DATE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FORMAT_DATETIME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FORMAT_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WEEK_START` int(1) DEFAULT '1',
  `CHARSET` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DIRECTION` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_culture`
--

LOCK TABLES `b_culture` WRITE;
/*!40000 ALTER TABLE `b_culture` DISABLE KEYS */;
INSERT INTO `b_culture` VALUES (1,'ru','ru','DD.MM.YYYY','DD.MM.YYYY HH:MI:SS','#NAME# #LAST_NAME#',1,'UTF-8','Y'),(2,'en','en','MM/DD/YYYY','MM/DD/YYYY H:MI:SS T','#NAME# #LAST_NAME#',0,'UTF-8','Y');
/*!40000 ALTER TABLE `b_culture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_event`
--

DROP TABLE IF EXISTS `b_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_event` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `EVENT_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `MESSAGE_ID` int(18) DEFAULT NULL,
  `LID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `C_FIELDS` longtext COLLATE utf8_unicode_ci,
  `DATE_INSERT` datetime DEFAULT NULL,
  `DATE_EXEC` datetime DEFAULT NULL,
  `SUCCESS_EXEC` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `DUPLICATE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`ID`),
  KEY `ix_success` (`SUCCESS_EXEC`),
  KEY `ix_b_event_date_exec` (`DATE_EXEC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_event`
--

LOCK TABLES `b_event` WRITE;
/*!40000 ALTER TABLE `b_event` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_event_attachment`
--

DROP TABLE IF EXISTS `b_event_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_event_attachment` (
  `EVENT_ID` int(18) NOT NULL,
  `FILE_ID` int(18) NOT NULL,
  PRIMARY KEY (`EVENT_ID`,`FILE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_event_attachment`
--

LOCK TABLES `b_event_attachment` WRITE;
/*!40000 ALTER TABLE `b_event_attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_event_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_event_log`
--

DROP TABLE IF EXISTS `b_event_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_event_log` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `SEVERITY` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `AUDIT_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ITEM_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `REMOTE_ADDR` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_AGENT` text COLLATE utf8_unicode_ci,
  `REQUEST_URI` text COLLATE utf8_unicode_ci,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_ID` int(18) DEFAULT NULL,
  `GUEST_ID` int(18) DEFAULT NULL,
  `DESCRIPTION` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`),
  KEY `ix_b_event_log_time` (`TIMESTAMP_X`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_event_log`
--

LOCK TABLES `b_event_log` WRITE;
/*!40000 ALTER TABLE `b_event_log` DISABLE KEYS */;
INSERT INTO `b_event_log` VALUES (1,'2016-08-20 16:36:58','INFO','MP_MODULE_INSTALLED','main','goa.domain','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64; rv:47.0) Gecko/20100101 Firefox/47.0','/bitrix/admin/partner_modules.php?id=goa.domain&lang=ru&install=Y',NULL,1,NULL,NULL),(2,'2016-08-20 16:37:09','INFO','MP_MODULE_UNINSTALLED','main','bitrix.sitecorporate','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64; rv:47.0) Gecko/20100101 Firefox/47.0','/bitrix/admin/partner_modules.php?id=bitrix.sitecorporate&lang=ru&uninstall=Y',NULL,1,NULL,NULL),(3,'2016-08-20 18:35:07','UNKNOWN','PAGE_EDIT','main','UNKNOWN','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64; rv:47.0) Gecko/20100101 Firefox/47.0','/bitrix/admin/public_file_edit_src.php?bxsender=core_window_cdialog&lang=ru&site=ru&back_url=%2Fexcursion%2F&path=%2Flocal%2Ftemplates%2F.default%2Fcomponents%2Fbitrix%2Fbreadcrumb%2Fmain%2Ftemplate.php','s1',1,NULL,'a:1:{s:4:\"path\";s:71:\"local/templates/.default/components/bitrix/breadcrumb/main/template.php\";}'),(4,'2016-08-20 18:48:20','UNKNOWN','FILE_EDIT','fileman','UNKNOWN','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64; rv:47.0) Gecko/20100101 Firefox/47.0','/bitrix/admin/fileman_file_edit.php?lang=ru&logical=Y&path=%2Fexcursion%2Findex.php',NULL,1,NULL,'a:1:{s:4:\"path\";s:19:\"excursion/index.php\";}'),(5,'2016-08-20 19:10:14','UNKNOWN','PAGE_EDIT','main','UNKNOWN','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64; rv:47.0) Gecko/20100101 Firefox/47.0','/bitrix/admin/public_file_edit_src.php?bxsender=core_window_cdialog&lang=ru&site=ru&back_url=%2F%3Fbitrix_include_areas%3DY&path=%2Flocal%2Ftemplates%2F.default%2Fcomponents%2Fbitrix%2Fphoto.random%2F.default%2Ftemplate.php','s1',1,NULL,'a:1:{s:4:\"path\";s:77:\"local/templates/.default/components/bitrix/photo.random/.default/template.php\";}'),(6,'2016-08-25 19:44:52','WARNING','SITE_CHECKER_ERROR','main','/home/t/tvoygoaru/bitrix/public_html','188.134.15.105','Mozilla/5.0 (Windows NT 5.2; WOW64; rv:47.0) Gecko/20100101 Firefox/47.0','/bitrix/admin/site_checker.php?HTTP_HOST=new.tvoygoa.ru&SERVER_PORT=&HTTPS=&test_start=Y&lang=ru&step=36&global_test_vars=YToyOntzOjIwOiJzaXRlX2NoZWNrZXJfc3VjY2VzcyI7czoxOiJOIjtzOjEwOiJsYXN0X3ZhbHVlIjtzOjY6InNlYXJjaCI7fQ==',NULL,1,NULL,''),(7,'2016-08-29 10:11:06','WARNING','SITE_CHECKER_ERROR','main','/home/t/tvoygoaru/bitrix/public_html','188.134.15.105','Mozilla/5.0 (Windows NT 5.2; WOW64; rv:47.0) Gecko/20100101 Firefox/47.0','/bitrix/admin/site_checker.php?HTTP_HOST=new.tvoygoa.ru&SERVER_PORT=&HTTPS=&test_start=Y&lang=ru&step=36&global_test_vars=YToyOntzOjIwOiJzaXRlX2NoZWNrZXJfc3VjY2VzcyI7czoxOiJOIjtzOjEwOiJsYXN0X3ZhbHVlIjtzOjY6InNlYXJjaCI7fQ==',NULL,1,NULL,''),(8,'2016-08-29 10:17:51','WARNING','SITE_CHECKER_ERROR','main','/home/t/tvoygoaru/bitrix/public_html','188.134.15.105','Mozilla/5.0 (Windows NT 5.2; WOW64; rv:47.0) Gecko/20100101 Firefox/47.0','/bitrix/admin/site_checker.php?HTTP_HOST=new.tvoygoa.ru&SERVER_PORT=&HTTPS=&test_start=Y&lang=ru&step=36&global_test_vars=YToyOntzOjIwOiJzaXRlX2NoZWNrZXJfc3VjY2VzcyI7czoxOiJOIjtzOjEwOiJsYXN0X3ZhbHVlIjtzOjY6InNlYXJjaCI7fQ==',NULL,1,NULL,''),(9,'2016-08-29 10:18:57','WARNING','SITE_CHECKER_ERROR','main','/home/t/tvoygoaru/bitrix/public_html','188.134.15.105','Mozilla/5.0 (Windows NT 5.2; WOW64; rv:47.0) Gecko/20100101 Firefox/47.0','/bitrix/admin/site_checker.php?HTTP_HOST=new.tvoygoa.ru&SERVER_PORT=&HTTPS=&test_start=Y&lang=ru&step=36&global_test_vars=YToyOntzOjIwOiJzaXRlX2NoZWNrZXJfc3VjY2VzcyI7czoxOiJOIjtzOjEwOiJsYXN0X3ZhbHVlIjtzOjY6InNlYXJjaCI7fQ==',NULL,1,NULL,''),(10,'2016-08-29 10:32:35','WARNING','SITE_CHECKER_SUCCESS','main','/home/t/tvoygoaru/bitrix/public_html','188.134.15.105','Mozilla/5.0 (Windows NT 5.2; WOW64; rv:47.0) Gecko/20100101 Firefox/47.0','/bitrix/admin/site_checker.php?HTTP_HOST=new.tvoygoa.ru&SERVER_PORT=&HTTPS=&test_start=Y&lang=ru&step=36&global_test_vars=YToyOntzOjIwOiJzaXRlX2NoZWNrZXJfc3VjY2VzcyI7czoxOiJZIjtzOjEwOiJsYXN0X3ZhbHVlIjtzOjY6InNlYXJjaCI7fQ==',NULL,1,NULL,''),(11,'2016-08-29 10:33:02','WARNING','SITE_CHECKER_SUCCESS','main','/home/t/tvoygoaru/bitrix/public_html','188.134.15.105','Mozilla/5.0 (Windows NT 5.2; WOW64; rv:47.0) Gecko/20100101 Firefox/47.0','/bitrix/admin/site_checker.php?HTTP_HOST=new.tvoygoa.ru&SERVER_PORT=&HTTPS=&test_start=Y&lang=ru&step=36&global_test_vars=YToyOntzOjIwOiJzaXRlX2NoZWNrZXJfc3VjY2VzcyI7czoxOiJZIjtzOjEwOiJsYXN0X3ZhbHVlIjtzOjY6InNlYXJjaCI7fQ==',NULL,1,NULL,''),(12,'2016-08-29 11:22:15','WARNING','SITE_CHECKER_SUCCESS','main','/home/t/tvoygoaru/bitrix/public_html','188.134.15.105','Mozilla/5.0 (Windows NT 5.2; WOW64; rv:47.0) Gecko/20100101 Firefox/47.0','/bitrix/admin/site_checker.php?HTTP_HOST=new.tvoygoa.ru&SERVER_PORT=&HTTPS=&test_start=Y&lang=ru&step=36&global_test_vars=YToyOntzOjIwOiJzaXRlX2NoZWNrZXJfc3VjY2VzcyI7czoxOiJZIjtzOjEwOiJsYXN0X3ZhbHVlIjtzOjY6InNlYXJjaCI7fQ==',NULL,1,NULL,''),(13,'2016-09-04 22:15:12','WARNING','SITE_CHECKER_ERROR','main','/home/t/tvoygoaru/bitrix/public_html','188.134.15.105','Mozilla/5.0 (Windows NT 5.2; WOW64; rv:47.0) Gecko/20100101 Firefox/47.0','/','s1',NULL,NULL,''),(14,'2016-09-11 06:03:39','WARNING','SITE_CHECKER_ERROR','main','/home/t/tvoygoaru/bitrix/public_html','92.100.227.2','Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36','/','s1',NULL,NULL,''),(15,'2016-09-14 02:35:43','WARNING','SITE_CHECKER_ERROR','main','/home/t/tvoygoaru/bitrix/public_html','66.249.76.103','Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)','/','s1',NULL,NULL,''),(16,'2016-09-15 08:56:14','WARNING','SITE_CHECKER_ERROR','main','/home/t/tvoygoaru/bitrix/public_html','66.249.76.105','Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)','/faq/','s1',NULL,NULL,''),(17,'2016-09-16 12:44:30','WARNING','SITE_CHECKER_ERROR','main','/home/t/tvoygoaru/bitrix/public_html','188.134.15.105','Mozilla/5.0 (Windows NT 5.2; WOW64; rv:47.0) Gecko/20100101 Firefox/47.0','/','s1',NULL,NULL,''),(18,'2016-09-17 19:44:39','WARNING','SITE_CHECKER_ERROR','main','/home/t/tvoygoaru/bitrix/public_html','66.249.76.103','Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.96 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)','/responses/','s1',NULL,NULL,''),(19,'2016-09-19 11:25:50','WARNING','SITE_CHECKER_ERROR','main','/home/t/tvoygoaru/bitrix/public_html','66.249.76.103','Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.96 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)','/excursion/132/','s1',NULL,NULL,''),(20,'2016-09-20 21:35:45','WARNING','SITE_CHECKER_ERROR','main','/home/t/tvoygoaru/bitrix/public_html','66.249.76.103','Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)','/','s1',NULL,NULL,''),(21,'2016-09-22 09:53:09','WARNING','SITE_CHECKER_ERROR','main','/home/t/tvoygoaru/bitrix/public_html','188.134.15.105','Mozilla/5.0 (Windows NT 5.2; WOW64; rv:47.0) Gecko/20100101 Firefox/47.0','/excursion/','s1',NULL,NULL,''),(22,'2016-09-23 10:19:27','WARNING','SITE_CHECKER_ERROR','main','/home/t/tvoygoaru/bitrix/public_html','188.134.15.105','Mozilla/5.0 (Windows NT 5.2; WOW64; rv:47.0) Gecko/20100101 Firefox/47.0','/','s1',NULL,NULL,''),(23,'2016-09-26 21:36:19','WARNING','SITE_CHECKER_ERROR','main','/home/t/tvoygoaru/bitrix/public_html','66.249.76.50','Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)','/','s1',NULL,NULL,''),(24,'2016-09-28 12:26:06','WARNING','SITE_CHECKER_ERROR','main','/home/t/tvoygoaru/bitrix/public_html','188.134.15.105','Mozilla/5.0 (Windows NT 5.2; WOW64; rv:47.0) Gecko/20100101 Firefox/47.0','/','s1',NULL,NULL,''),(25,'2016-09-29 21:48:08','WARNING','SITE_CHECKER_ERROR','main','/home/t/tvoygoaru/bitrix/public_html','66.249.76.103','Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)','/','s1',NULL,NULL,''),(26,'2016-09-30 22:45:31','WARNING','SITE_CHECKER_ERROR','main','/home/t/tvoygoaru/bitrix/public_html','188.134.15.105','Mozilla/5.0 (Windows NT 5.2; WOW64; rv:47.0) Gecko/20100101 Firefox/47.0','/','s1',NULL,NULL,''),(27,'2016-10-02 22:14:50','WARNING','SITE_CHECKER_ERROR','main','/home/t/tvoygoaru/bitrix/public_html','66.249.76.103','Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)','/','s1',NULL,NULL,''),(28,'2016-10-04 13:56:14','WARNING','SITE_CHECKER_ERROR','main','/home/t/tvoygoaru/bitrix/public_html','172.245.24.114','Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)','/news/','s1',NULL,NULL,''),(29,'2016-10-06 22:56:01','WARNING','SITE_CHECKER_ERROR','main','/home/t/tvoygoaru/bitrix/public_html','188.134.15.105','Mozilla/5.0 (Windows NT 5.2; WOW64; rv:47.0) Gecko/20100101 Firefox/47.0','/','s1',NULL,NULL,''),(30,'2016-10-08 12:50:37','WARNING','SITE_CHECKER_ERROR','main','/home/t/tvoygoaru/bitrix/public_html','188.134.15.105','Mozilla/5.0 (Windows NT 5.2; WOW64; rv:47.0) Gecko/20100101 Firefox/47.0','/','s1',NULL,NULL,''),(31,'2016-10-09 13:03:43','WARNING','SITE_CHECKER_ERROR','main','/home/t/tvoygoaru/bitrix/public_html','188.134.15.105','Mozilla/5.0 (Windows NT 5.2; WOW64; rv:47.0) Gecko/20100101 Firefox/47.0','/bitrix/tools/public_session.php?&interval=0&k=915f1e7db7142c41124ca44c538b98e3','s1',NULL,NULL,''),(32,'2016-10-10 13:05:19','WARNING','SITE_CHECKER_ERROR','main','/home/t/tvoygoaru/bitrix/public_html','188.134.15.105','Mozilla/5.0 (Windows NT 5.2; WOW64; rv:47.0) Gecko/20100101 Firefox/47.0','/bitrix/tools/public_session.php?&interval=0&k=dc3aa228c865331ac3629751991b3eba','s1',NULL,NULL,''),(33,'2016-10-11 17:34:02','WARNING','SITE_CHECKER_ERROR','main','/home/t/tvoygoaru/bitrix/public_html','188.134.15.105','Mozilla/5.0 (Windows NT 5.2; WOW64; rv:47.0) Gecko/20100101 Firefox/47.0','/favicon.ico','s1',NULL,NULL,''),(34,'2016-10-12 18:27:07','WARNING','SITE_CHECKER_ERROR','main','/home/t/tvoygoaru/bitrix/public_html','188.134.15.105','Mozilla/5.0 (Linux; Android 5.1.1; C6903 Build/14.6.A.1.236) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.124 Mobile Safari/537.36','/','s1',NULL,NULL,''),(35,'2016-10-13 18:32:03','WARNING','SITE_CHECKER_ERROR','main','/home/t/tvoygoaru/bitrix/public_html','188.134.15.105','Mozilla/5.0 (Windows NT 5.2; WOW64; rv:47.0) Gecko/20100101 Firefox/47.0','/bitrix/tools/public_session.php?&interval=0&k=2d00f3f2164b911098882c9026dc04b7','s1',NULL,NULL,''),(36,'2016-10-14 23:44:56','WARNING','SITE_CHECKER_ERROR','main','/home/t/tvoygoaru/bitrix/public_html','176.101.2.214','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36','/faq/','s1',NULL,NULL,''),(37,'2016-10-16 08:35:35','WARNING','SITE_CHECKER_ERROR','main','/home/t/tvoygoaru/bitrix/public_html','176.101.2.214','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36','/bitrix/tools/public_session.php?&interval=0&k=6c086514c99e764dd4d815b2fd99f291','s1',NULL,NULL,''),(38,'2016-10-17 13:56:08','WARNING','SITE_CHECKER_ERROR','main','/home/t/tvoygoaru/bitrix/public_html','188.134.15.105','Mozilla/5.0 (Windows NT 5.2; WOW64; rv:47.0) Gecko/20100101 Firefox/47.0','/','s1',NULL,NULL,''),(39,'2016-10-18 17:35:58','WARNING','SITE_CHECKER_ERROR','main','/home/t/tvoygoaru/bitrix/public_html','188.134.15.105','Mozilla/5.0 (Windows NT 5.2; WOW64; rv:47.0) Gecko/20100101 Firefox/47.0','/','s1',NULL,NULL,''),(40,'2016-10-19 19:36:11','WARNING','SITE_CHECKER_ERROR','main','/home/t/tvoygoaru/bitrix/public_html','188.134.15.105','Mozilla/5.0 (Linux; Android 5.1.1; C6903 Build/14.6.A.1.236) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.124 Mobile Safari/537.36','/','s1',NULL,NULL,''),(41,'2016-10-20 21:56:34','WARNING','SITE_CHECKER_ERROR','main','/home/t/tvoygoaru/bitrix/public_html','5.18.138.64','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36','/','s1',NULL,NULL,''),(42,'2016-10-22 08:07:56','WARNING','SITE_CHECKER_ERROR','main','/home/t/tvoygoaru/bitrix/public_html','94.19.94.7','Mozilla/5.0 (Windows NT 10.0; WOW64; rv:49.0) Gecko/20100101 Firefox/49.0','/','s1',NULL,NULL,''),(43,'2016-10-23 15:16:09','WARNING','SITE_CHECKER_ERROR','main','/home/t/tvoygoaru/bitrix/public_html','188.134.15.105','Mozilla/5.0 (Windows NT 5.2; WOW64; rv:47.0) Gecko/20100101 Firefox/47.0','/faq/','s1',NULL,NULL,'');
/*!40000 ALTER TABLE `b_event_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_event_message`
--

DROP TABLE IF EXISTS `b_event_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_event_message` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `EVENT_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `EMAIL_FROM` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '#EMAIL_FROM#',
  `EMAIL_TO` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '#EMAIL_TO#',
  `SUBJECT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MESSAGE` longtext COLLATE utf8_unicode_ci,
  `MESSAGE_PHP` longtext COLLATE utf8_unicode_ci,
  `BODY_TYPE` varchar(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `BCC` text COLLATE utf8_unicode_ci,
  `REPLY_TO` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CC` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IN_REPLY_TO` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PRIORITY` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FIELD1_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FIELD1_VALUE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FIELD2_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FIELD2_VALUE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SITE_TEMPLATE_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ADDITIONAL_FIELD` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`),
  KEY `ix_b_event_message_name` (`EVENT_NAME`(50))
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_event_message`
--

LOCK TABLES `b_event_message` WRITE;
/*!40000 ALTER TABLE `b_event_message` DISABLE KEYS */;
INSERT INTO `b_event_message` VALUES (1,'2016-08-20 11:41:05','NEW_USER','s1','Y','#DEFAULT_EMAIL_FROM#','#DEFAULT_EMAIL_FROM#','#SITE_NAME#: Зарегистрировался новый пользователь','Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nНа сайте #SERVER_NAME# успешно зарегистрирован новый пользователь.\n\nДанные пользователя:\nID пользователя: #USER_ID#\n\nИмя: #NAME#\nФамилия: #LAST_NAME#\nE-Mail: #EMAIL#\n\nLogin: #LOGIN#\n\nПисьмо сгенерировано автоматически.','Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n\nНа сайте <?=$arParams[\"SERVER_NAME\"];?> успешно зарегистрирован новый пользователь.\n\nДанные пользователя:\nID пользователя: <?=$arParams[\"USER_ID\"];?>\n\n\nИмя: <?=$arParams[\"NAME\"];?>\n\nФамилия: <?=$arParams[\"LAST_NAME\"];?>\n\nE-Mail: <?=$arParams[\"EMAIL\"];?>\n\n\nLogin: <?=$arParams[\"LOGIN\"];?>\n\n\nПисьмо сгенерировано автоматически.','text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'2016-08-20 11:41:05','USER_INFO','s1','Y','#DEFAULT_EMAIL_FROM#','#EMAIL#','#SITE_NAME#: Регистрационная информация','Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n#NAME# #LAST_NAME#,\n\n#MESSAGE#\n\nВаша регистрационная информация:\n\nID пользователя: #USER_ID#\nСтатус профиля: #STATUS#\nLogin: #LOGIN#\n\nВы можете изменить пароль, перейдя по следующей ссылке:\nhttp://#SERVER_NAME#/auth/index.php?change_password=yes&lang=ru&USER_CHECKWORD=#CHECKWORD#&USER_LOGIN=#URL_LOGIN#\n\nСообщение сгенерировано автоматически.','Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n<?=$arParams[\"NAME\"];?> <?=$arParams[\"LAST_NAME\"];?>,\n\n<?=$arParams[\"MESSAGE\"];?>\n\n\nВаша регистрационная информация:\n\nID пользователя: <?=$arParams[\"USER_ID\"];?>\n\nСтатус профиля: <?=$arParams[\"STATUS\"];?>\n\nLogin: <?=$arParams[\"LOGIN\"];?>\n\n\nВы можете изменить пароль, перейдя по следующей ссылке:\nhttp://<?=$arParams[\"SERVER_NAME\"];?>/auth/index.php?change_password=yes&lang=ru&USER_CHECKWORD=<?=$arParams[\"CHECKWORD\"];?>&USER_LOGIN=<?=$arParams[\"URL_LOGIN\"];?>\n\n\nСообщение сгенерировано автоматически.','text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'2016-08-20 11:41:05','USER_PASS_REQUEST','s1','Y','#DEFAULT_EMAIL_FROM#','#EMAIL#','#SITE_NAME#: Запрос на смену пароля','Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n#NAME# #LAST_NAME#,\n\n#MESSAGE#\n\nДля смены пароля перейдите по следующей ссылке:\nhttp://#SERVER_NAME#/auth/index.php?change_password=yes&lang=ru&USER_CHECKWORD=#CHECKWORD#&USER_LOGIN=#URL_LOGIN#\n\nВаша регистрационная информация:\n\nID пользователя: #USER_ID#\nСтатус профиля: #STATUS#\nLogin: #LOGIN#\n\nСообщение сгенерировано автоматически.','Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n<?=$arParams[\"NAME\"];?> <?=$arParams[\"LAST_NAME\"];?>,\n\n<?=$arParams[\"MESSAGE\"];?>\n\n\nДля смены пароля перейдите по следующей ссылке:\nhttp://<?=$arParams[\"SERVER_NAME\"];?>/auth/index.php?change_password=yes&lang=ru&USER_CHECKWORD=<?=$arParams[\"CHECKWORD\"];?>&USER_LOGIN=<?=$arParams[\"URL_LOGIN\"];?>\n\n\nВаша регистрационная информация:\n\nID пользователя: <?=$arParams[\"USER_ID\"];?>\n\nСтатус профиля: <?=$arParams[\"STATUS\"];?>\n\nLogin: <?=$arParams[\"LOGIN\"];?>\n\n\nСообщение сгенерировано автоматически.','text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'2016-08-20 11:41:05','USER_PASS_CHANGED','s1','Y','#DEFAULT_EMAIL_FROM#','#EMAIL#','#SITE_NAME#: Подтверждение смены пароля','Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n#NAME# #LAST_NAME#,\n\n#MESSAGE#\n\nВаша регистрационная информация:\n\nID пользователя: #USER_ID#\nСтатус профиля: #STATUS#\nLogin: #LOGIN#\n\nСообщение сгенерировано автоматически.','Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n<?=$arParams[\"NAME\"];?> <?=$arParams[\"LAST_NAME\"];?>,\n\n<?=$arParams[\"MESSAGE\"];?>\n\n\nВаша регистрационная информация:\n\nID пользователя: <?=$arParams[\"USER_ID\"];?>\n\nСтатус профиля: <?=$arParams[\"STATUS\"];?>\n\nLogin: <?=$arParams[\"LOGIN\"];?>\n\n\nСообщение сгенерировано автоматически.','text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,'2016-08-20 11:41:05','NEW_USER_CONFIRM','s1','Y','#DEFAULT_EMAIL_FROM#','#EMAIL#','#SITE_NAME#: Подтверждение регистрации нового пользователя','Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nЗдравствуйте,\n\nВы получили это сообщение, так как ваш адрес был использован при регистрации нового пользователя на сервере #SERVER_NAME#.\n\nВаш код для подтверждения регистрации: #CONFIRM_CODE#\n\nДля подтверждения регистрации перейдите по следующей ссылке:\nhttp://#SERVER_NAME#/auth/index.php?confirm_registration=yes&confirm_user_id=#USER_ID#&confirm_code=#CONFIRM_CODE#\n\nВы также можете ввести код для подтверждения регистрации на странице:\nhttp://#SERVER_NAME#/auth/index.php?confirm_registration=yes&confirm_user_id=#USER_ID#\n\nВнимание! Ваш профиль не будет активным, пока вы не подтвердите свою регистрацию.\n\n---------------------------------------------------------------------\n\nСообщение сгенерировано автоматически.','Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n\nЗдравствуйте,\n\nВы получили это сообщение, так как ваш адрес был использован при регистрации нового пользователя на сервере <?=$arParams[\"SERVER_NAME\"];?>.\n\nВаш код для подтверждения регистрации: <?=$arParams[\"CONFIRM_CODE\"];?>\n\n\nДля подтверждения регистрации перейдите по следующей ссылке:\nhttp://<?=$arParams[\"SERVER_NAME\"];?>/auth/index.php?confirm_registration=yes&confirm_user_id=<?=$arParams[\"USER_ID\"];?>&confirm_code=<?=$arParams[\"CONFIRM_CODE\"];?>\n\n\nВы также можете ввести код для подтверждения регистрации на странице:\nhttp://<?=$arParams[\"SERVER_NAME\"];?>/auth/index.php?confirm_registration=yes&confirm_user_id=<?=$arParams[\"USER_ID\"];?>\n\n\nВнимание! Ваш профиль не будет активным, пока вы не подтвердите свою регистрацию.\n\n---------------------------------------------------------------------\n\nСообщение сгенерировано автоматически.','text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,'2016-08-20 11:41:05','USER_INVITE','s1','Y','#DEFAULT_EMAIL_FROM#','#EMAIL#','#SITE_NAME#: Приглашение на сайт','Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\nЗдравствуйте, #NAME# #LAST_NAME#!\n\nАдминистратором сайта вы добавлены в число зарегистрированных пользователей.\n\nПриглашаем Вас на наш сайт.\n\nВаша регистрационная информация:\n\nID пользователя: #ID#\nLogin: #LOGIN#\n\nРекомендуем вам сменить установленный автоматически пароль.\n\nДля смены пароля перейдите по следующей ссылке:\nhttp://#SERVER_NAME#/auth.php?change_password=yes&USER_LOGIN=#URL_LOGIN#&USER_CHECKWORD=#CHECKWORD#\n','Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\nЗдравствуйте, <?=$arParams[\"NAME\"];?> <?=$arParams[\"LAST_NAME\"];?>!\n\nАдминистратором сайта вы добавлены в число зарегистрированных пользователей.\n\nПриглашаем Вас на наш сайт.\n\nВаша регистрационная информация:\n\nID пользователя: <?=$arParams[\"ID\"];?>\n\nLogin: <?=$arParams[\"LOGIN\"];?>\n\n\nРекомендуем вам сменить установленный автоматически пароль.\n\nДля смены пароля перейдите по следующей ссылке:\nhttp://<?=$arParams[\"SERVER_NAME\"];?>/auth.php?change_password=yes&USER_LOGIN=<?=$arParams[\"URL_LOGIN\"];?>&USER_CHECKWORD=<?=$arParams[\"CHECKWORD\"];?>\n\n','text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,'2016-08-20 11:41:05','FEEDBACK_FORM','s1','Y','#DEFAULT_EMAIL_FROM#','#EMAIL_TO#','#SITE_NAME#: Сообщение из формы обратной связи','Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nВам было отправлено сообщение через форму обратной связи\n\nАвтор: #AUTHOR#\nE-mail автора: #AUTHOR_EMAIL#\n\nТекст сообщения:\n#TEXT#\n\nСообщение сгенерировано автоматически.','Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n\nВам было отправлено сообщение через форму обратной связи\n\nАвтор: <?=$arParams[\"AUTHOR\"];?>\n\nE-mail автора: <?=$arParams[\"AUTHOR_EMAIL\"];?>\n\n\nТекст сообщения:\n<?=$arParams[\"TEXT\"];?>\n\n\nСообщение сгенерировано автоматически.','text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `b_event_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_event_message_attachment`
--

DROP TABLE IF EXISTS `b_event_message_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_event_message_attachment` (
  `EVENT_MESSAGE_ID` int(18) NOT NULL,
  `FILE_ID` int(18) NOT NULL,
  PRIMARY KEY (`EVENT_MESSAGE_ID`,`FILE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_event_message_attachment`
--

LOCK TABLES `b_event_message_attachment` WRITE;
/*!40000 ALTER TABLE `b_event_message_attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_event_message_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_event_message_site`
--

DROP TABLE IF EXISTS `b_event_message_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_event_message_site` (
  `EVENT_MESSAGE_ID` int(11) NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`EVENT_MESSAGE_ID`,`SITE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_event_message_site`
--

LOCK TABLES `b_event_message_site` WRITE;
/*!40000 ALTER TABLE `b_event_message_site` DISABLE KEYS */;
INSERT INTO `b_event_message_site` VALUES (1,'s1'),(2,'s1'),(3,'s1'),(4,'s1'),(5,'s1'),(6,'s1'),(7,'s1');
/*!40000 ALTER TABLE `b_event_message_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_event_type`
--

DROP TABLE IF EXISTS `b_event_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_event_type` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `EVENT_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `SORT` int(18) NOT NULL DEFAULT '150',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_1` (`EVENT_NAME`,`LID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_event_type`
--

LOCK TABLES `b_event_type` WRITE;
/*!40000 ALTER TABLE `b_event_type` DISABLE KEYS */;
INSERT INTO `b_event_type` VALUES (1,'ru','NEW_USER','Зарегистрировался новый пользователь','\n\n#USER_ID# - ID пользователя\n#LOGIN# - Логин\n#EMAIL# - EMail\n#NAME# - Имя\n#LAST_NAME# - Фамилия\n#USER_IP# - IP пользователя\n#USER_HOST# - Хост пользователя\n',1),(2,'ru','USER_INFO','Информация о пользователе','\n\n#USER_ID# - ID пользователя\n#STATUS# - Статус логина\n#MESSAGE# - Сообщение пользователю\n#LOGIN# - Логин\n#URL_LOGIN# - Логин, закодированный для использования в URL\n#CHECKWORD# - Контрольная строка для смены пароля\n#NAME# - Имя\n#LAST_NAME# - Фамилия\n#EMAIL# - E-Mail пользователя\n',2),(3,'ru','NEW_USER_CONFIRM','Подтверждение регистрации нового пользователя','\n\n\n#USER_ID# - ID пользователя\n#LOGIN# - Логин\n#EMAIL# - EMail\n#NAME# - Имя\n#LAST_NAME# - Фамилия\n#USER_IP# - IP пользователя\n#USER_HOST# - Хост пользователя\n#CONFIRM_CODE# - Код подтверждения\n',3),(4,'ru','USER_PASS_REQUEST','Запрос на смену пароля','\n\n#USER_ID# - ID пользователя\n#STATUS# - Статус логина\n#MESSAGE# - Сообщение пользователю\n#LOGIN# - Логин\n#URL_LOGIN# - Логин, закодированный для использования в URL\n#CHECKWORD# - Контрольная строка для смены пароля\n#NAME# - Имя\n#LAST_NAME# - Фамилия\n#EMAIL# - E-Mail пользователя\n',4),(5,'ru','USER_PASS_CHANGED','Подтверждение смены пароля','\n\n#USER_ID# - ID пользователя\n#STATUS# - Статус логина\n#MESSAGE# - Сообщение пользователю\n#LOGIN# - Логин\n#URL_LOGIN# - Логин, закодированный для использования в URL\n#CHECKWORD# - Контрольная строка для смены пароля\n#NAME# - Имя\n#LAST_NAME# - Фамилия\n#EMAIL# - E-Mail пользователя\n',5),(6,'ru','USER_INVITE','Приглашение на сайт нового пользователя','#ID# - ID пользователя\n#LOGIN# - Логин\n#URL_LOGIN# - Логин, закодированный для использования в URL\n#EMAIL# - EMail\n#NAME# - Имя\n#LAST_NAME# - Фамилия\n#PASSWORD# - пароль пользователя \n#CHECKWORD# - Контрольная строка для смены пароля\n#XML_ID# - ID пользователя для связи с внешними источниками\n',6),(7,'ru','FEEDBACK_FORM','Отправка сообщения через форму обратной связи','#AUTHOR# - Автор сообщения\n#AUTHOR_EMAIL# - Email автора сообщения\n#TEXT# - Текст сообщения\n#EMAIL_FROM# - Email отправителя письма\n#EMAIL_TO# - Email получателя письма',7),(8,'en','NEW_USER','New user was registered','\n\n#USER_ID# - User ID\n#LOGIN# - Login\n#EMAIL# - EMail\n#NAME# - Name\n#LAST_NAME# - Last Name\n#USER_IP# - User IP\n#USER_HOST# - User Host\n',1),(9,'en','USER_INFO','Account Information','\n\n#USER_ID# - User ID\n#STATUS# - Account status\n#MESSAGE# - Message for user\n#LOGIN# - Login\n#URL_LOGIN# - Encoded login for use in URL\n#CHECKWORD# - Check string for password change\n#NAME# - Name\n#LAST_NAME# - Last Name\n#EMAIL# - User E-Mail\n',2),(10,'en','NEW_USER_CONFIRM','New user registration confirmation','\n\n#USER_ID# - User ID\n#LOGIN# - Login\n#EMAIL# - E-mail\n#NAME# - First name\n#LAST_NAME# - Last name\n#USER_IP# - User IP\n#USER_HOST# - User host\n#CONFIRM_CODE# - Confirmation code\n',3),(11,'en','USER_PASS_REQUEST','Password Change Request','\n\n#USER_ID# - User ID\n#STATUS# - Account status\n#MESSAGE# - Message for user\n#LOGIN# - Login\n#URL_LOGIN# - Encoded login for use in URL\n#CHECKWORD# - Check string for password change\n#NAME# - Name\n#LAST_NAME# - Last Name\n#EMAIL# - User E-Mail\n',4),(12,'en','USER_PASS_CHANGED','Password Change Confirmation','\n\n#USER_ID# - User ID\n#STATUS# - Account status\n#MESSAGE# - Message for user\n#LOGIN# - Login\n#URL_LOGIN# - Encoded login for use in URL\n#CHECKWORD# - Check string for password change\n#NAME# - Name\n#LAST_NAME# - Last Name\n#EMAIL# - User E-Mail\n',5),(13,'en','USER_INVITE','Invitation of a new site user','#ID# - User ID\n#LOGIN# - Login\n#URL_LOGIN# - Encoded login for use in URL\n#EMAIL# - EMail\n#NAME# - Name\n#LAST_NAME# - Last Name\n#PASSWORD# - User password \n#CHECKWORD# - Password check string\n#XML_ID# - User ID to link with external data sources\n\n',6),(14,'en','FEEDBACK_FORM','Sending a message using a feedback form','#AUTHOR# - Message author\n#AUTHOR_EMAIL# - Author\'s e-mail address\n#TEXT# - Message text\n#EMAIL_FROM# - Sender\'s e-mail address\n#EMAIL_TO# - Recipient\'s e-mail address',7);
/*!40000 ALTER TABLE `b_event_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_favorite`
--

DROP TABLE IF EXISTS `b_favorite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_favorite` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` datetime DEFAULT NULL,
  `DATE_CREATE` datetime DEFAULT NULL,
  `C_SORT` int(18) NOT NULL DEFAULT '100',
  `MODIFIED_BY` int(18) DEFAULT NULL,
  `CREATED_BY` int(18) DEFAULT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `URL` text COLLATE utf8_unicode_ci,
  `COMMENTS` text COLLATE utf8_unicode_ci,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_ID` int(11) DEFAULT NULL,
  `CODE_ID` int(18) DEFAULT NULL,
  `COMMON` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `MENU_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_favorite`
--

LOCK TABLES `b_favorite` WRITE;
/*!40000 ALTER TABLE `b_favorite` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_favorite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_file`
--

DROP TABLE IF EXISTS `b_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_file` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HEIGHT` int(18) DEFAULT NULL,
  `WIDTH` int(18) DEFAULT NULL,
  `FILE_SIZE` bigint(20) DEFAULT NULL,
  `CONTENT_TYPE` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'IMAGE',
  `SUBDIR` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FILE_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ORIGINAL_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HANDLER_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EXTERNAL_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_FILE_EXTERNAL_ID` (`EXTERNAL_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_file`
--

LOCK TABLES `b_file` WRITE;
/*!40000 ALTER TABLE `b_file` DISABLE KEYS */;
INSERT INTO `b_file` VALUES (1,'2016-08-21 11:03:24','iblock',400,400,83950,'image/jpeg','iblock/404','4043bb78c75891fd3c9b41ef2466a706.jpg','img_1.jpg','',NULL,'6eb7c81996f2f4a14844ba99284b3c00'),(2,'2016-08-21 11:28:35','iblock',400,400,83950,'image/jpeg','iblock/136','1367940880d22590b4a9ea7b9625a847.jpg','img_1.jpg','',NULL,'1d9983b1340df47202ca03acb4cd5394'),(3,'2016-08-21 11:29:04','iblock',181,530,64179,'image/jpeg','iblock/58b','58b8c67d4fa1d1677ed904f1ab28727f.jpg','img_2.jpg','',NULL,'7c4a789b4eba2591f22a53a7a6ac198a'),(4,'2016-08-21 11:31:23','iblock',170,170,18866,'image/jpeg','iblock/b58','b583bcd68206286a4006e0122c69af02.jpg','img_3.jpg','',NULL,'0a4269eca69ea36f7b8a81d088cc8322'),(5,'2016-08-21 11:31:55','iblock',170,170,37974,'image/jpeg','iblock/d9d','d9db0e9e7390c9d4f53f64f9f75a395e.jpg','img_4.jpg','',NULL,'3887feca90457f69c9f69fb1942bd466'),(6,'2016-08-21 11:32:26','iblock',170,170,35369,'image/jpeg','iblock/310','31011c66b381b89ed49ec2805fe8cf2b.jpg','img_5.jpg','',NULL,'dcc209da4c8f205e616da21837f7ad37'),(7,'2016-08-21 11:51:02','iblock',170,170,35369,'image/jpeg','iblock/257','25704579265f8448b664191872e31876.jpg','img_5.jpg','',NULL,'3d0887975376b51bc4bfab8d0c998cdc'),(8,'2016-10-15 22:48:04','main',1067,800,203880,'image/jpeg','uf/2cf','2cf6b66ff00249e488756c167e3d2cac.JPG','flower.JPG','',NULL,'509b2204d5e1a1f2a85c1c5fc78397f7'),(9,'2016-10-15 22:48:20','main',569,831,109581,'image/jpeg','uf/ced','cedd1bf20718640fdf45ad4999111b77.jpg','2.jpg','',NULL,'ff3bd3b0c02af4d2766ee02b98420b2f'),(10,'2016-10-15 22:49:15','main',960,1280,271164,'image/jpeg','uf/76a','76a70da550cadbd6cd7e807b26b6c8f2.jpg','Вулканический массив.jpg','',NULL,'1433e72f9a38187ba855383f08b03ff7'),(11,'2016-10-15 22:49:15','main',853,1280,939141,'image/jpeg','uf/e63','e63d1869308154eaa0a971b06e7f3c5b.jpg','Чистая вода.jpg','',NULL,'12d43242d2ae49b8c4f0b43b2e6b0c70'),(12,'2016-10-15 22:49:51','main',1077,1920,1028940,'image/jpeg','uf/b51','b518529d92561b808398c47e0112928b.jpg','Горное озеро.jpg','',NULL,'9580fea95aa0a83e399b1309f5302f9c'),(13,'2016-10-15 22:49:51','main',415,1280,79376,'image/jpeg','uf/69b','69b53fe180bfd28f71e812d600c09625.jpg','Зеленый остров.jpg','',NULL,'2692bfefd169ebf73c77408c826f9e8b'),(14,'2016-10-15 22:49:51','main',960,1280,271164,'image/jpeg','uf/92e','92e4527c74ad377ea94b878e66aeb8bd.jpg','Вулканический массив.jpg','',NULL,'26712450f39aa3232bedf5b53dcd8baa'),(15,'2016-10-15 22:49:51','main',853,1280,939141,'image/jpeg','uf/583','583f5ce90d35512380eb1331ed661b16.jpg','Чистая вода.jpg','',NULL,'837dd2ec5fa03d900e04a35d5025ca96'),(16,'2016-10-15 22:49:51','main',1280,1920,1297836,'image/jpeg','uf/0b6','0b6893d1362af0a55f2fc96a29724bf8.jpg','Долина реки.jpg','',NULL,'816424ebc4a3974da23ce3e1ca782d84'),(17,'2016-10-23 15:58:58','iblock',168,300,35328,'image/jpeg','iblock/c6a','c6abe4da796517c0cced0fdf7d16d174.jpg','img_9.jpg','',NULL,'62d1ab9c1121f6038ec1ef61dcdb832a'),(18,'2016-10-23 15:58:58','iblock',506,900,292392,'image/jpeg','iblock/2b7','2b733fc87a13a23b87607a42de5aa8cd.jpg','img_9.jpg','',NULL,'a115b543c45d80a0056b682d54fa21f9'),(19,'2016-10-23 16:00:08','iblock',168,300,25896,'image/jpeg','iblock/6b6','6b6cda5d25795ed3a54be5a49c508e96.jpg','img_10.jpg','',NULL,'e4c2ee66c1872039b71f6a0b62fe3148'),(20,'2016-10-23 16:00:08','iblock',506,900,192782,'image/jpeg','iblock/2cf','2cf1ac0bc02abbd1fd1ba5c1ce23d273.jpg','img_10.jpg','',NULL,'b634fca8fae672d9fff0a4ffe3be581f');
/*!40000 ALTER TABLE `b_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_file_search`
--

DROP TABLE IF EXISTS `b_file_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_file_search` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SESS_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `F_PATH` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `B_DIR` int(11) NOT NULL DEFAULT '0',
  `F_SIZE` int(11) NOT NULL DEFAULT '0',
  `F_TIME` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_file_search`
--

LOCK TABLES `b_file_search` WRITE;
/*!40000 ALTER TABLE `b_file_search` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_file_search` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_filters`
--

DROP TABLE IF EXISTS `b_filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_filters` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(18) DEFAULT NULL,
  `FILTER_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `FIELDS` text COLLATE utf8_unicode_ci NOT NULL,
  `COMMON` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PRESET` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PRESET_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SORT` int(18) DEFAULT NULL,
  `SORT_FIELD` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_filters`
--

LOCK TABLES `b_filters` WRITE;
/*!40000 ALTER TABLE `b_filters` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_filters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_finder_dest`
--

DROP TABLE IF EXISTS `b_finder_dest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_finder_dest` (
  `USER_ID` int(11) NOT NULL,
  `CODE` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `CODE_USER_ID` int(11) DEFAULT NULL,
  `CODE_TYPE` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONTEXT` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `LAST_USE_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`USER_ID`,`CODE`,`CONTEXT`),
  KEY `IX_FINDER_DEST` (`CODE_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_finder_dest`
--

LOCK TABLES `b_finder_dest` WRITE;
/*!40000 ALTER TABLE `b_finder_dest` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_finder_dest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_group`
--

DROP TABLE IF EXISTS `b_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_group` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `C_SORT` int(18) NOT NULL DEFAULT '100',
  `ANONYMOUS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SECURITY_POLICY` text COLLATE utf8_unicode_ci,
  `STRING_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_group`
--

LOCK TABLES `b_group` WRITE;
/*!40000 ALTER TABLE `b_group` DISABLE KEYS */;
INSERT INTO `b_group` VALUES (1,'2016-08-20 12:40:56','Y',1,'N','Администраторы','Полный доступ к управлению сайтом.',NULL,NULL),(2,'2016-08-20 12:40:56','Y',2,'Y','Все пользователи (в том числе неавторизованные)','Все пользователи, включая неавторизованных.',NULL,NULL),(3,'2016-08-20 12:40:56','Y',3,'N','Пользователи, имеющие право голосовать за рейтинг','В эту группу пользователи добавляются автоматически.',NULL,'RATING_VOTE'),(4,'2016-08-20 12:40:56','Y',4,'N','Пользователи имеющие право голосовать за авторитет','В эту группу пользователи добавляются автоматически.',NULL,'RATING_VOTE_AUTHORITY'),(5,'2016-08-20 12:47:08','Y',300,'N','Контент-редакторы',NULL,NULL,'content_editor');
/*!40000 ALTER TABLE `b_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_group_collection_task`
--

DROP TABLE IF EXISTS `b_group_collection_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_group_collection_task` (
  `GROUP_ID` int(11) NOT NULL,
  `TASK_ID` int(11) NOT NULL,
  `COLLECTION_ID` int(11) NOT NULL,
  PRIMARY KEY (`GROUP_ID`,`TASK_ID`,`COLLECTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_group_collection_task`
--

LOCK TABLES `b_group_collection_task` WRITE;
/*!40000 ALTER TABLE `b_group_collection_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_group_collection_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_group_subordinate`
--

DROP TABLE IF EXISTS `b_group_subordinate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_group_subordinate` (
  `ID` int(18) NOT NULL,
  `AR_SUBGROUP_ID` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_group_subordinate`
--

LOCK TABLES `b_group_subordinate` WRITE;
/*!40000 ALTER TABLE `b_group_subordinate` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_group_subordinate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_group_task`
--

DROP TABLE IF EXISTS `b_group_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_group_task` (
  `GROUP_ID` int(18) NOT NULL,
  `TASK_ID` int(18) NOT NULL,
  `EXTERNAL_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`GROUP_ID`,`TASK_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_group_task`
--

LOCK TABLES `b_group_task` WRITE;
/*!40000 ALTER TABLE `b_group_task` DISABLE KEYS */;
INSERT INTO `b_group_task` VALUES (5,20,''),(5,39,'');
/*!40000 ALTER TABLE `b_group_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_hlblock_entity`
--

DROP TABLE IF EXISTS `b_hlblock_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_hlblock_entity` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `NAME` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `TABLE_NAME` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_hlblock_entity`
--

LOCK TABLES `b_hlblock_entity` WRITE;
/*!40000 ALTER TABLE `b_hlblock_entity` DISABLE KEYS */;
INSERT INTO `b_hlblock_entity` VALUES (1,'Reviews','a_reviews');
/*!40000 ALTER TABLE `b_hlblock_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_hot_keys`
--

DROP TABLE IF EXISTS `b_hot_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_hot_keys` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `KEYS_STRING` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `CODE_ID` int(18) NOT NULL,
  `USER_ID` int(18) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ix_b_hot_keys_co_u` (`CODE_ID`,`USER_ID`),
  KEY `ix_hot_keys_code` (`CODE_ID`),
  KEY `ix_hot_keys_user` (`USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_hot_keys`
--

LOCK TABLES `b_hot_keys` WRITE;
/*!40000 ALTER TABLE `b_hot_keys` DISABLE KEYS */;
INSERT INTO `b_hot_keys` VALUES (1,'Ctrl+Alt+85',139,0),(2,'Ctrl+Alt+80',17,0),(3,'Ctrl+Alt+70',120,0),(4,'Ctrl+Alt+68',117,0),(5,'Ctrl+Alt+81',3,0),(6,'Ctrl+Alt+75',106,0),(7,'Ctrl+Alt+79',133,0),(8,'Ctrl+Alt+70',121,0),(9,'Ctrl+Alt+69',118,0),(10,'Ctrl+Shift+83',87,0),(11,'Ctrl+Shift+88',88,0),(12,'Ctrl+Shift+76',89,0);
/*!40000 ALTER TABLE `b_hot_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_hot_keys_code`
--

DROP TABLE IF EXISTS `b_hot_keys_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_hot_keys_code` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `CLASS_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COMMENTS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TITLE_OBJ` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IS_CUSTOM` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID`),
  KEY `ix_hot_keys_code_cn` (`CLASS_NAME`),
  KEY `ix_hot_keys_code_url` (`URL`)
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_hot_keys_code`
--

LOCK TABLES `b_hot_keys_code` WRITE;
/*!40000 ALTER TABLE `b_hot_keys_code` DISABLE KEYS */;
INSERT INTO `b_hot_keys_code` VALUES (3,'CAdminTabControl','NextTab();','HK_DB_CADMINTC','HK_DB_CADMINTC_C','tab-container','',0),(5,'btn_new','var d=BX (\'btn_new\'); if (d) location.href = d.href;','HK_DB_BUT_ADD','HK_DB_BUT_ADD_C','btn_new','',0),(6,'btn_excel','var d=BX(\'btn_excel\'); if (d) location.href = d.href;','HK_DB_BUT_EXL','HK_DB_BUT_EXL_C','btn_excel','',0),(7,'btn_settings','var d=BX(\'btn_settings\'); if (d) location.href = d.href;','HK_DB_BUT_OPT','HK_DB_BUT_OPT_C','btn_settings','',0),(8,'btn_list','var d=BX(\'btn_list\'); if (d) location.href = d.href;','HK_DB_BUT_LST','HK_DB_BUT_LST_C','btn_list','',0),(9,'Edit_Save_Button','var d=BX .findChild(document, {attribute: {\'name\': \'save\'}}, true );  if (d) d.click();','HK_DB_BUT_SAVE','HK_DB_BUT_SAVE_C','Edit_Save_Button','',0),(10,'btn_delete','var d=BX(\'btn_delete\'); if (d) location.href = d.href;','HK_DB_BUT_DEL','HK_DB_BUT_DEL_C','btn_delete','',0),(12,'CAdminFilter','var d=BX .findChild(document, {attribute: {\'name\': \'find\'}}, true ); if (d) d.focus();','HK_DB_FLT_FND','HK_DB_FLT_FND_C','find','',0),(13,'CAdminFilter','var d=BX .findChild(document, {attribute: {\'name\': \'set_filter\'}}, true );  if (d) d.click();','HK_DB_FLT_BUT_F','HK_DB_FLT_BUT_F_C','set_filter','',0),(14,'CAdminFilter','var d=BX .findChild(document, {attribute: {\'name\': \'del_filter\'}}, true );  if (d) d.click();','HK_DB_FLT_BUT_CNL','HK_DB_FLT_BUT_CNL_C','del_filter','',0),(15,'bx-panel-admin-button-help-icon-id','var d=BX(\'bx-panel-admin-button-help-icon-id\'); if (d) location.href = d.href;','HK_DB_BUT_HLP','HK_DB_BUT_HLP_C','bx-panel-admin-button-help-icon-id','',0),(17,'Global','BXHotKeys.ShowSettings();','HK_DB_SHW_L','HK_DB_SHW_L_C','bx-panel-hotkeys','',0),(19,'Edit_Apply_Button','var d=BX .findChild(document, {attribute: {\'name\': \'apply\'}}, true );  if (d) d.click();','HK_DB_BUT_APPL','HK_DB_BUT_APPL_C','Edit_Apply_Button','',0),(20,'Edit_Cancel_Button','var d=BX .findChild(document, {attribute: {\'name\': \'cancel\'}}, true );  if (d) d.click();','HK_DB_BUT_CANCEL','HK_DB_BUT_CANCEL_C','Edit_Cancel_Button','',0),(54,'top_panel_org_fav','','-=AUTONAME=-',NULL,'top_panel_org_fav',NULL,0),(55,'top_panel_module_settings','','-=AUTONAME=-',NULL,'top_panel_module_settings','',0),(56,'top_panel_interface_settings','','-=AUTONAME=-',NULL,'top_panel_interface_settings','',0),(57,'top_panel_help','','-=AUTONAME=-',NULL,'top_panel_help','',0),(58,'top_panel_bizproc_tasks','','-=AUTONAME=-',NULL,'top_panel_bizproc_tasks','',0),(59,'top_panel_add_fav','','-=AUTONAME=-',NULL,'top_panel_add_fav',NULL,0),(60,'top_panel_create_page','','-=AUTONAME=-',NULL,'top_panel_create_page','',0),(62,'top_panel_create_folder','','-=AUTONAME=-',NULL,'top_panel_create_folder','',0),(63,'top_panel_edit_page','','-=AUTONAME=-',NULL,'top_panel_edit_page','',0),(64,'top_panel_page_prop','','-=AUTONAME=-',NULL,'top_panel_page_prop','',0),(65,'top_panel_edit_page_html','','-=AUTONAME=-',NULL,'top_panel_edit_page_html','',0),(67,'top_panel_edit_page_php','','-=AUTONAME=-',NULL,'top_panel_edit_page_php','',0),(68,'top_panel_del_page','','-=AUTONAME=-',NULL,'top_panel_del_page','',0),(69,'top_panel_folder_prop','','-=AUTONAME=-',NULL,'top_panel_folder_prop','',0),(70,'top_panel_access_folder_new','','-=AUTONAME=-',NULL,'top_panel_access_folder_new','',0),(71,'main_top_panel_struct_panel','','-=AUTONAME=-',NULL,'main_top_panel_struct_panel','',0),(72,'top_panel_cache_page','','-=AUTONAME=-',NULL,'top_panel_cache_page','',0),(73,'top_panel_cache_comp','','-=AUTONAME=-',NULL,'top_panel_cache_comp','',0),(74,'top_panel_cache_not','','-=AUTONAME=-',NULL,'top_panel_cache_not','',0),(75,'top_panel_edit_mode','','-=AUTONAME=-',NULL,'top_panel_edit_mode','',0),(76,'top_panel_templ_site_css','','-=AUTONAME=-',NULL,'top_panel_templ_site_css','',0),(77,'top_panel_templ_templ_css','','-=AUTONAME=-',NULL,'top_panel_templ_templ_css','',0),(78,'top_panel_templ_site','','-=AUTONAME=-',NULL,'top_panel_templ_site','',0),(81,'top_panel_debug_time','','-=AUTONAME=-',NULL,'top_panel_debug_time','',0),(82,'top_panel_debug_incl','','-=AUTONAME=-',NULL,'top_panel_debug_incl','',0),(83,'top_panel_debug_sql','','-=AUTONAME=-',NULL,'top_panel_debug_sql',NULL,0),(84,'top_panel_debug_compr','','-=AUTONAME=-',NULL,'top_panel_debug_compr','',0),(85,'MTP_SHORT_URI1','','-=AUTONAME=-',NULL,'MTP_SHORT_URI1','',0),(86,'MTP_SHORT_URI_LIST','','-=AUTONAME=-',NULL,'MTP_SHORT_URI_LIST','',0),(87,'FMST_PANEL_STICKER_ADD','','-=AUTONAME=-',NULL,'FMST_PANEL_STICKER_ADD','',0),(88,'FMST_PANEL_STICKERS_SHOW','','-=AUTONAME=-',NULL,'FMST_PANEL_STICKERS_SHOW','',0),(89,'FMST_PANEL_CUR_STICKER_LIST','','-=AUTONAME=-',NULL,'FMST_PANEL_CUR_STICKER_LIST','',0),(90,'FMST_PANEL_ALL_STICKER_LIST','','-=AUTONAME=-',NULL,'FMST_PANEL_ALL_STICKER_LIST','',0),(91,'top_panel_menu','var d=BX(\"bx-panel-menu\"); if (d) d.click();','-=AUTONAME=-',NULL,'bx-panel-menu','',0),(92,'top_panel_admin','var d=BX(\'bx-panel-admin-tab\'); if (d) location.href = d.href;','-=AUTONAME=-',NULL,'bx-panel-admin-tab','',0),(93,'admin_panel_site','var d=BX(\'bx-panel-view-tab\'); if (d) location.href = d.href;','-=AUTONAME=-',NULL,'bx-panel-view-tab','',0),(94,'admin_panel_admin','var d=BX(\'bx-panel-admin-tab\'); if (d) location.href = d.href;','-=AUTONAME=-',NULL,'bx-panel-admin-tab','',0),(96,'top_panel_folder_prop_new','','-=AUTONAME=-',NULL,'top_panel_folder_prop_new','',0),(97,'main_top_panel_structure','','-=AUTONAME=-',NULL,'main_top_panel_structure','',0),(98,'top_panel_clear_cache','','-=AUTONAME=-',NULL,'top_panel_clear_cache','',0),(99,'top_panel_templ','','-=AUTONAME=-',NULL,'top_panel_templ','',0),(100,'top_panel_debug','','-=AUTONAME=-',NULL,'top_panel_debug','',0),(101,'MTP_SHORT_URI','','-=AUTONAME=-',NULL,'MTP_SHORT_URI','',0),(102,'FMST_PANEL_STICKERS','','-=AUTONAME=-',NULL,'FMST_PANEL_STICKERS','',0),(103,'top_panel_settings','','-=AUTONAME=-',NULL,'top_panel_settings','',0),(104,'top_panel_fav','','-=AUTONAME=-',NULL,'top_panel_fav','',0),(106,'Global','location.href=\'/bitrix/admin/hot_keys_list.php?lang=ru\';','HK_DB_SHW_HK','','','',0),(107,'top_panel_edit_new','','-=AUTONAME=-',NULL,'top_panel_edit_new','',0),(108,'FLOW_PANEL_CREATE_WITH_WF','','-=AUTONAME=-',NULL,'FLOW_PANEL_CREATE_WITH_WF','',0),(109,'FLOW_PANEL_EDIT_WITH_WF','','-=AUTONAME=-',NULL,'FLOW_PANEL_EDIT_WITH_WF','',0),(110,'FLOW_PANEL_HISTORY','','-=AUTONAME=-',NULL,'FLOW_PANEL_HISTORY','',0),(111,'top_panel_create_new','','-=AUTONAME=-',NULL,'top_panel_create_new','',0),(112,'top_panel_create_folder_new','','-=AUTONAME=-',NULL,'top_panel_create_folder_new','',0),(116,'bx-panel-toggle','','-=AUTONAME=-',NULL,'bx-panel-toggle','',0),(117,'bx-panel-small-toggle','','-=AUTONAME=-',NULL,'bx-panel-small-toggle','',0),(118,'bx-panel-expander','var d=BX(\'bx-panel-expander\'); if (d) BX.fireEvent(d, \'click\');','-=AUTONAME=-',NULL,'bx-panel-expander','',0),(119,'bx-panel-hider','var d=BX(\'bx-panel-hider\'); if (d) d.click();','-=AUTONAME=-',NULL,'bx-panel-hider','',0),(120,'search-textbox-input','var d=BX(\'search-textbox-input\'); if (d) { d.click(); d.focus();}','-=AUTONAME=-','','search','',0),(121,'bx-search-input','var d=BX(\'bx-search-input\'); if (d) { d.click(); d.focus(); }','-=AUTONAME=-','','bx-search-input','',0),(133,'bx-panel-logout','var d=BX(\'bx-panel-logout\'); if (d) location.href = d.href;','-=AUTONAME=-','','bx-panel-logout','',0),(135,'CDialog','var d=BX(\'cancel\'); if (d) d.click();','HK_DB_D_CANCEL','','cancel','',0),(136,'CDialog','var d=BX(\'close\'); if (d) d.click();','HK_DB_D_CLOSE','','close','',0),(137,'CDialog','var d=BX(\'savebtn\'); if (d) d.click();','HK_DB_D_SAVE','','savebtn','',0),(138,'CDialog','var d=BX(\'btn_popup_save\'); if (d) d.click();','HK_DB_D_EDIT_SAVE','','btn_popup_save','',0),(139,'Global','location.href=\'/bitrix/admin/user_admin.php?lang=\'+phpVars.LANGUAGE_ID;','HK_DB_SHW_U','','','',0);
/*!40000 ALTER TABLE `b_hot_keys_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock`
--

DROP TABLE IF EXISTS `b_iblock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `IBLOCK_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `CODE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `SORT` int(11) NOT NULL DEFAULT '500',
  `LIST_PAGE_URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DETAIL_PAGE_URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SECTION_PAGE_URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CANONICAL_PAGE_URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PICTURE` int(18) DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `DESCRIPTION_TYPE` char(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `RSS_TTL` int(11) NOT NULL DEFAULT '24',
  `RSS_ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `RSS_FILE_ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `RSS_FILE_LIMIT` int(11) DEFAULT NULL,
  `RSS_FILE_DAYS` int(11) DEFAULT NULL,
  `RSS_YANDEX_ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TMP_ID` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `INDEX_ELEMENT` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `INDEX_SECTION` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `WORKFLOW` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `BIZPROC` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SECTION_CHOOSER` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LIST_MODE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RIGHTS_MODE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SECTION_PROPERTY` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PROPERTY_INDEX` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VERSION` int(11) NOT NULL DEFAULT '1',
  `LAST_CONV_ELEMENT` int(11) NOT NULL DEFAULT '0',
  `SOCNET_GROUP_ID` int(18) DEFAULT NULL,
  `EDIT_FILE_BEFORE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EDIT_FILE_AFTER` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SECTIONS_NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SECTION_NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ELEMENTS_NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ELEMENT_NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_iblock` (`IBLOCK_TYPE_ID`,`LID`,`ACTIVE`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock`
--

LOCK TABLES `b_iblock` WRITE;
/*!40000 ALTER TABLE `b_iblock` DISABLE KEYS */;
INSERT INTO `b_iblock` VALUES (3,'2016-08-20 19:00:06','info','s1','interesting','Это интересно','Y',500,'#SITE_DIR#/info/index.php?ID=#IBLOCK_ID#','#SITE_DIR#/info/detail.php?ID=#ELEMENT_ID#','#SITE_DIR#/info/list.php?SECTION_ID=#SECTION_ID#','',NULL,'','text',24,'Y','N',NULL,NULL,'N',NULL,NULL,'N','N','N','N','L','','S','N','N',2,0,NULL,'','','Разделы','Раздел','Элементы','Элемент'),(4,'2016-08-21 10:35:17','social','s1','reviews','Отзывы туристов','Y',500,'#SITE_DIR#/social/index.php?ID=#IBLOCK_ID#','#SITE_DIR#/social/detail.php?ID=#ELEMENT_ID#','#SITE_DIR#/social/list.php?SECTION_ID=#SECTION_ID#','',NULL,'','text',24,'Y','N',NULL,NULL,'N',NULL,NULL,'N','N','N','N','L','','S','N','N',2,0,NULL,'','','Разделы','Раздел','Элементы','Элемент'),(5,'2016-10-23 20:26:01','info','s1','excursion','Экскурсии','Y',500,'#SITE_DIR#/info/index.php?ID=#IBLOCK_ID#','#SITE_DIR##ELEMENT_CODE#/','#SITE_DIR#/info/list.php?SECTION_ID=#SECTION_ID#','',NULL,'','text',24,'Y','N',NULL,NULL,'N',NULL,NULL,'Y','Y','N','N','L','','S','N','N',2,0,NULL,'','','Разделы','Раздел','Элементы','Элемент'),(6,'2016-10-23 15:57:46','info','s1','photos','Фотогалерея','Y',500,'#SITE_DIR#/info/index.php?ID=#IBLOCK_ID#','#SITE_DIR#/info/detail.php?ID=#ELEMENT_ID#','#SITE_DIR#/info/list.php?SECTION_ID=#SECTION_ID#','',NULL,'','text',24,'Y','N',NULL,NULL,'N',NULL,'f5e16d17ddfb5ee697cc561051408a6a','Y','Y','N','N','L','','S','N','N',2,0,NULL,'','','Разделы','Раздел','Элементы','Элемент');
/*!40000 ALTER TABLE `b_iblock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_cache`
--

DROP TABLE IF EXISTS `b_iblock_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_cache` (
  `CACHE_KEY` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `CACHE` longtext COLLATE utf8_unicode_ci NOT NULL,
  `CACHE_DATE` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`CACHE_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_cache`
--

LOCK TABLES `b_iblock_cache` WRITE;
/*!40000 ALTER TABLE `b_iblock_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_element`
--

DROP TABLE IF EXISTS `b_iblock_element`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_element` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` datetime DEFAULT NULL,
  `MODIFIED_BY` int(18) DEFAULT NULL,
  `DATE_CREATE` datetime DEFAULT NULL,
  `CREATED_BY` int(18) DEFAULT NULL,
  `IBLOCK_ID` int(11) NOT NULL DEFAULT '0',
  `IBLOCK_SECTION_ID` int(11) DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `ACTIVE_FROM` datetime DEFAULT NULL,
  `ACTIVE_TO` datetime DEFAULT NULL,
  `SORT` int(11) NOT NULL DEFAULT '500',
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PREVIEW_PICTURE` int(18) DEFAULT NULL,
  `PREVIEW_TEXT` text COLLATE utf8_unicode_ci,
  `PREVIEW_TEXT_TYPE` varchar(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `DETAIL_PICTURE` int(18) DEFAULT NULL,
  `DETAIL_TEXT` longtext COLLATE utf8_unicode_ci,
  `DETAIL_TEXT_TYPE` varchar(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `SEARCHABLE_CONTENT` text COLLATE utf8_unicode_ci,
  `WF_STATUS_ID` int(18) DEFAULT '1',
  `WF_PARENT_ELEMENT_ID` int(11) DEFAULT NULL,
  `WF_NEW` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WF_LOCKED_BY` int(18) DEFAULT NULL,
  `WF_DATE_LOCK` datetime DEFAULT NULL,
  `WF_COMMENTS` text COLLATE utf8_unicode_ci,
  `IN_SECTIONS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TAGS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TMP_ID` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WF_LAST_HISTORY_ID` int(11) DEFAULT NULL,
  `SHOW_COUNTER` int(18) DEFAULT NULL,
  `SHOW_COUNTER_START` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_iblock_element_1` (`IBLOCK_ID`,`IBLOCK_SECTION_ID`),
  KEY `ix_iblock_element_4` (`IBLOCK_ID`,`XML_ID`,`WF_PARENT_ELEMENT_ID`),
  KEY `ix_iblock_element_3` (`WF_PARENT_ELEMENT_ID`),
  KEY `ix_iblock_element_code` (`IBLOCK_ID`,`CODE`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_element`
--

LOCK TABLES `b_iblock_element` WRITE;
/*!40000 ALTER TABLE `b_iblock_element` DISABLE KEYS */;
INSERT INTO `b_iblock_element` VALUES (7,'2016-08-20 22:01:17',1,'2016-08-20 22:01:17',1,3,NULL,'Y',NULL,NULL,500,'Интересность 1',NULL,'В Индии первыми научились выращивать рис и сахарный тростник, разводить домашнюю птицу','html',NULL,'','text','ИНТЕРЕСНОСТЬ 1\r\nВ ИНДИИ ПЕРВЫМИ НАУЧИЛИСЬ ВЫРАЩИВАТЬ РИС \r\nИ САХАРНЫЙ ТРОСТНИК, РАЗВОДИТЬ ДОМАШНЮЮ \r\nПТИЦУ\r\n',1,NULL,NULL,NULL,NULL,NULL,'N','7','','','0',NULL,NULL,NULL),(8,'2016-08-20 22:01:47',1,'2016-08-20 22:01:47',1,3,NULL,'Y',NULL,NULL,500,'Интересность 2',NULL,'В 12 веке индийский астроном и ученый Бхаскара (Bhaskara) описал первый вечный двигатель - это было колесо, по окружности которого под определенным углом крепились емкости, частично заполненные ртутью. Ртуть перетекала из одного конца емкости в другой, во время вращения колеса и колесо совершало очередной оборот','html',NULL,'','text','ИНТЕРЕСНОСТЬ 2\r\nВ 12 ВЕКЕ ИНДИЙСКИЙ АСТРОНОМ И УЧЕНЫЙ БХАСКАРА \r\n(BHASKARA) ОПИСАЛ ПЕРВЫЙ ВЕЧНЫЙ ДВИГАТЕЛЬ - ЭТО \r\nБЫЛО КОЛЕСО, ПО ОКРУЖНОСТИ КОТОРОГО ПОД \r\nОПРЕДЕЛЕННЫМ УГЛОМ КРЕПИЛИСЬ ЕМКОСТИ, ЧАСТИЧНО \r\nЗАПОЛНЕННЫЕ РТУТЬЮ. РТУТЬ ПЕРЕТЕКАЛА ИЗ \r\nОДНОГО КОНЦА ЕМКОСТИ В ДРУГОЙ, ВО ВРЕМЯ \r\nВРАЩЕНИЯ КОЛЕСА И КОЛЕСО СОВЕРШАЛО ОЧЕРЕДНОЙ \r\nОБОРОТ\r\n',1,NULL,NULL,NULL,NULL,NULL,'N','8','','','0',NULL,NULL,NULL),(9,'2016-08-20 22:02:19',1,'2016-08-20 22:02:19',1,3,NULL,'Y',NULL,NULL,500,'Интересность 3',NULL,'На планете осталось около 45000 индийских слонов, а африканских 250000. Дрессировке поддаются только индийские слоны. В дикой природе осталось всего около 8 тысяч особей. Индийский слон внесен в Красную книгу, как вид, который может исчезнуть','html',NULL,'','text','ИНТЕРЕСНОСТЬ 3\r\nНА ПЛАНЕТЕ ОСТАЛОСЬ ОКОЛО 45000 ИНДИЙСКИХ \r\nСЛОНОВ, А АФРИКАНСКИХ 250000. ДРЕССИРОВКЕ ПОДДАЮТСЯ \r\nТОЛЬКО ИНДИЙСКИЕ СЛОНЫ. В ДИКОЙ ПРИРОДЕ \r\nОСТАЛОСЬ ВСЕГО ОКОЛО 8 ТЫСЯЧ ОСОБЕЙ. ИНДИЙСКИЙ \r\nСЛОН ВНЕСЕН В КРАСНУЮ КНИГУ, КАК ВИД, КОТОРЫЙ \r\nМОЖЕТ ИСЧЕЗНУТЬ\r\n',1,NULL,NULL,NULL,NULL,NULL,'N','9','','','0',NULL,NULL,NULL),(10,'2016-08-21 14:13:00',1,'2016-08-21 13:38:00',1,4,NULL,'Y','2016-04-29 00:00:00',NULL,500,'Экскурсии :Хампи и Гокарна',NULL,'Добрый день. Пишу отзыв с опозданием. Находилась в Гоа во второй раз. Останавливалась снова в Баге. Решила разнообразить пляжный отдых знакомством с настоящей Индией. Выбрала экскурсию Хампи. Очень понравилась организация. Оперативно забрали и доставили . Отдельное спасибо гиду Наталье и водителю Шива . Экскурсия в Хампи очень впечатлила. Всем рекомендую. Выбирала компанию не по совету : самостоятельно через vk. Не пожалела . Цены на порядок ниже , чем у принимающей стороны . Всем буду рекомендовать ))))p.s. в Гоа находилась с 3 по 10 марта. Точной даты экскурсии не вспомню . Привет группе : Лариса и Вера из нижнего, девочка из Питера . Ольга из Одессы.','html',NULL,'','text','ЭКСКУРСИИ :ХАМПИ И ГОКАРНА\r\nДОБРЫЙ ДЕНЬ. ПИШУ ОТЗЫВ С ОПОЗДАНИЕМ. НАХОДИЛАСЬ \r\nВ ГОА ВО ВТОРОЙ РАЗ. ОСТАНАВЛИВАЛАСЬ СНОВА \r\nВ БАГЕ. РЕШИЛА РАЗНООБРАЗИТЬ ПЛЯЖНЫЙ ОТДЫХ \r\nЗНАКОМСТВОМ С НАСТОЯЩЕЙ ИНДИЕЙ. ВЫБРАЛА \r\nЭКСКУРСИЮ ХАМПИ. ОЧЕНЬ ПОНРАВИЛАСЬ ОРГАНИЗАЦИЯ. \r\nОПЕРАТИВНО ЗАБРАЛИ И ДОСТАВИЛИ . ОТДЕЛЬНОЕ \r\nСПАСИБО ГИДУ НАТАЛЬЕ И ВОДИТЕЛЮ ШИВА . ЭКСКУРСИЯ \r\nВ ХАМПИ ОЧЕНЬ ВПЕЧАТЛИЛА. ВСЕМ РЕКОМЕНДУЮ. \r\nВЫБИРАЛА КОМПАНИЮ НЕ ПО СОВЕТУ : САМОСТОЯТЕЛЬНО \r\nЧЕРЕЗ VK. НЕ ПОЖАЛЕЛА . ЦЕНЫ НА ПОРЯДОК НИЖЕ \r\n, ЧЕМ У ПРИНИМАЮЩЕЙ СТОРОНЫ . ВСЕМ БУДУ РЕКОМЕНДОВАТЬ \r\n))))P.S. В ГОА НАХОДИЛАСЬ С 3 ПО 10 МАРТА. ТОЧНОЙ \r\nДАТЫ ЭКСКУРСИИ НЕ ВСПОМНЮ . ПРИВЕТ ГРУППЕ \r\n: ЛАРИСА И ВЕРА ИЗ НИЖНЕГО, ДЕВОЧКА ИЗ ПИТЕРА \r\n. ОЛЬГА ИЗ ОДЕССЫ.\r\n',1,NULL,NULL,NULL,NULL,NULL,'N','10','','','0',NULL,NULL,NULL),(11,'2016-08-21 14:12:46',1,'2016-08-21 13:38:32',1,4,NULL,'Y','2016-04-27 00:00:00',NULL,500,'Хампи',1,'Мы ездили в Хампи 13-14 апреля. Экскурсия длится 2 дня, нас забрали из отеля рано утром, вернули где-то к 17.00 на следующий день. Я осталась в полном восторге, наш замечательный экскурсовод Наташа очень интеллигентная девушка, рассказывала очень много интересного и про Хампи и про Индию вцелом. Очень много все-таки завесит именно от экскурсовода, очень советую Наташу.\r\nСпасибо за прекрасный отдых!','text',NULL,'','text','ХАМПИ\r\nМЫ ЕЗДИЛИ В ХАМПИ 13-14 АПРЕЛЯ. ЭКСКУРСИЯ ДЛИТСЯ 2 ДНЯ, НАС ЗАБРАЛИ ИЗ ОТЕЛЯ РАНО УТРОМ, ВЕРНУЛИ ГДЕ-ТО К 17.00 НА СЛЕДУЮЩИЙ ДЕНЬ. Я ОСТАЛАСЬ В ПОЛНОМ ВОСТОРГЕ, НАШ ЗАМЕЧАТЕЛЬНЫЙ ЭКСКУРСОВОД НАТАША ОЧЕНЬ ИНТЕЛЛИГЕНТНАЯ ДЕВУШКА, РАССКАЗЫВАЛА ОЧЕНЬ МНОГО ИНТЕРЕСНОГО И ПРО ХАМПИ И ПРО ИНДИЮ ВЦЕЛОМ. ОЧЕНЬ МНОГО ВСЕ-ТАКИ ЗАВЕСИТ ИМЕННО ОТ ЭКСКУРСОВОДА, ОЧЕНЬ СОВЕТУЮ НАТАШУ.\r\nСПАСИБО ЗА ПРЕКРАСНЫЙ ОТДЫХ!\r\n',1,NULL,NULL,NULL,NULL,NULL,'N','11','','','0',NULL,NULL,NULL),(12,'2016-09-16 18:55:59',1,'2016-08-21 14:28:36',1,5,NULL,'Y',NULL,NULL,500,'Экскурсия 1',2,'<p>Мы особенно рекомендуем эту экскурсию туристам, приехавшим в Гоа с детьми. Все самое интересное в Гоа вы увидите не за несколько дней, а за 1 экскурсию:</p>\r\n<ul>\r\n<li>Водопад Дудхсагар (и много обезьян).</li>\r\n<li>Плантации специй (лавка специй и лечебных масел).</li>\r\n<li>Обед в саду. Встреча со слонами.</li>\r\n<li>Старый Гоа (включен Юнеско в список городов-памятников).</li>\r\n<li>Древние индуистские храмы - Храм Шри Мангеши.</li>\r\n</ul>','html',NULL,'','text','ЭКСКУРСИЯ 1\r\nМЫ ОСОБЕННО РЕКОМЕНДУЕМ ЭТУ ЭКСКУРСИЮ \r\nТУРИСТАМ, ПРИЕХАВШИМ В ГОА С ДЕТЬМИ. ВСЕ \r\nСАМОЕ ИНТЕРЕСНОЕ В ГОА ВЫ УВИДИТЕ НЕ ЗА \r\nНЕСКОЛЬКО ДНЕЙ, А ЗА 1 ЭКСКУРСИЮ: \r\n\r\n- ВОДОПАД ДУДХСАГАР (И МНОГО ОБЕЗЬЯН). \r\n- ПЛАНТАЦИИ СПЕЦИЙ (ЛАВКА СПЕЦИЙ И ЛЕЧЕБНЫХ \r\nМАСЕЛ). \r\n- ОБЕД В САДУ. ВСТРЕЧА СО СЛОНАМИ. \r\n- СТАРЫЙ ГОА (ВКЛЮЧЕН ЮНЕСКО В СПИСОК ГОРОДОВ-ПАМЯТНИКОВ). \r\n- ДРЕВНИЕ ИНДУИСТСКИЕ ХРАМЫ - ХРАМ ШРИ МАНГЕШИ.\r\n',1,NULL,NULL,NULL,NULL,NULL,'N','12','','историческая','0',NULL,NULL,NULL),(13,'2016-08-28 22:07:43',1,'2016-08-21 14:29:04',1,5,NULL,'Y',NULL,NULL,500,'Экскурсия 2',3,'','text',NULL,'','text','ЭКСКУРСИЯ 2\r\n\r\n',1,NULL,NULL,NULL,NULL,NULL,'N','13','','историческая','0',NULL,NULL,NULL),(14,'2016-08-21 14:31:29',1,'2016-08-21 14:31:23',1,5,NULL,'Y',NULL,NULL,500,'Экскурсия 3',4,'','text',NULL,'','text','ЭКСКУРСИЯ 3\r\n\r\n',1,NULL,NULL,NULL,NULL,NULL,'N','14','','','0',NULL,NULL,NULL),(15,'2016-08-28 22:04:09',1,'2016-08-21 14:31:55',1,5,NULL,'Y',NULL,NULL,500,'Экскурсия 4',5,'','text',NULL,'','text','ЭКСКУРСИЯ 4\r\n\r\n',1,NULL,NULL,NULL,NULL,NULL,'N','15','','1 день','0',NULL,NULL,NULL),(16,'2016-10-23 23:30:05',1,'2016-08-21 14:32:26',1,5,NULL,'Y',NULL,NULL,500,'Экскурсия 5',6,'','text',NULL,'<h3 class=\"right-side__red\">Для групп от 6 человек цены устанавливаются индивидуально на все экскурсии!</h3>\r\n  <p>Если вы уже в Гоа, обязательно побывайте на одном из красивейших пляжей Южного Гоа - Палолеме и самом тихом и безлюдном пляже - Кола. Вы совершите водную прогулку и понаблюдаете за игрой дельфинов. Побываете в древнейшем форте Кабо де Рама (Kabo De Rama) и узнаете интересные легенды о Раме и Сите из великого эпоса Рамаяна, связанные с мысом Рамы. Поднимитесь на башню, откуда открывается восхитительный вид на бесконечную береговую линию.</p>\r\n  <p>Мир создан для любви и гармонии с собой и окружающим миром. Вы обязательно убедитесь в этом, побывав здесь.</p>\r\n<div class=\"slider-exs marg-t-40\">\r\n    <div class=\"bxslider_exs_1\">\r\n      <div class=\"slider-exs__item\">\r\n        <img src=\"/upload/iblock/2b7/2b733fc87a13a23b87607a42de5aa8cd.jpg\" alt=\"\" />\r\n      </div>\r\n\r\n      <div class=\"slider-exs__item\">\r\n        <img src=\"/upload/iblock/2b7/2b733fc87a13a23b87607a42de5aa8cd.jpg\" alt=\"\" />\r\n      </div>\r\n    </div>\r\n\r\n    <div class=\"slider-exs__open visible-adaptive-768\">\r\n      <div class=\"slider-exs__open-icon\"><object type=\"image/svg+xml\" data=\"/local/templates/goa/svg/faceless.svg\">Your browser does not support SVGs</object></div>\r\n      <a href=\"\" class=\"slider-exs__open-text\">Открыть галерею</a>\r\n    </div>\r\n  </div>\r\n\r\n  <h3>Пляж Палолем</h3>\r\n  <p>Один из самых красивых пляжей Гоа. Здесь вы найдете не только ласковое море, бесконечный белоснежный пляж, кокосовые пальмы у самой кромки моря, но и необычную очень уютную атмосферу. На лодке мы выйдем в море, полюбуемся дельфинами, доплывем до острова. Вы насладитесь красотой вокруг, бредя по нежнейшему песку.</p>\r\n\r\n  <h3>Пляж Кола</h3>\r\n  <p>Романтичный, удивительный, уединенный с нетронутой береговой линией и ,конечно, просто красивый, с лагуной, где можно погрузиться в спокойное море.</p>\r\n\r\n  <h3>Форт Кабо де Рама</h3>\r\n  <p>Одна из старейших крепостей в Гоа.<br />Форт Кабо де Рама имеет интересную историю. Мы обязательно расскажем вам, связаные с ним увлекательные легенды и вы почувствуете мистическую атмосферу мыса Рамы. В этих местах провели 14 лет в изгнании великий герой Рамаяны Рама и его жена Сита. Фортом владели индийские правители и мусульманские шахи, в 1763 году Кабо де Рама был захвачен португальцами. Часть крепости сохранилась, часть разрушена. Белоснежная церковь Святого Антониа (Santo Antonio) внутри форта, башни, большие пушки, колодец, в который подавалась горячая и холодная вода из природных источников, великолепный вид, открывающийся со стен крепости.</p>','html','ЭКСКУРСИЯ 5\r\n\r\nДЛЯ ГРУПП ОТ 6 ЧЕЛОВЕК ЦЕНЫ УСТАНАВЛИВАЮТСЯ \r\nИНДИВИДУАЛЬНО НА ВСЕ ЭКСКУРСИИ! \r\n\r\nЕСЛИ ВЫ УЖЕ В ГОА, ОБЯЗАТЕЛЬНО ПОБЫВАЙТЕ \r\nНА ОДНОМ ИЗ КРАСИВЕЙШИХ ПЛЯЖЕЙ ЮЖНОГО ГОА \r\n- ПАЛОЛЕМЕ И САМОМ ТИХОМ И БЕЗЛЮДНОМ ПЛЯЖЕ \r\n- КОЛА. ВЫ СОВЕРШИТЕ ВОДНУЮ ПРОГУЛКУ И ПОНАБЛЮДАЕТЕ \r\nЗА ИГРОЙ ДЕЛЬФИНОВ. ПОБЫВАЕТЕ В ДРЕВНЕЙШЕМ \r\nФОРТЕ КАБО ДЕ РАМА (KABO DE RAMA) И УЗНАЕТЕ ИНТЕРЕСНЫЕ \r\nЛЕГЕНДЫ О РАМЕ И СИТЕ ИЗ ВЕЛИКОГО ЭПОСА \r\nРАМАЯНА, СВЯЗАННЫЕ С МЫСОМ РАМЫ. ПОДНИМИТЕСЬ \r\nНА БАШНЮ, ОТКУДА ОТКРЫВАЕТСЯ ВОСХИТИТЕЛЬНЫЙ \r\nВИД НА БЕСКОНЕЧНУЮ БЕРЕГОВУЮ ЛИНИЮ. \r\n\r\nМИР СОЗДАН ДЛЯ ЛЮБВИ И ГАРМОНИИ С СОБОЙ \r\nИ ОКРУЖАЮЩИМ МИРОМ. ВЫ ОБЯЗАТЕЛЬНО УБЕДИТЕСЬ \r\nВ ЭТОМ, ПОБЫВАВ ЗДЕСЬ. [ /UPLOAD/IBLOCK/2B7/2B733FC87A13A23B87607A42DE5AA8CD.JPG ] \r\n[ /UPLOAD/IBLOCK/2B7/2B733FC87A13A23B87607A42DE5AA8CD.JPG ] YOUR BROWSER \r\nDOES NOT SUPPORT SVGS ОТКРЫТЬ ГАЛЕРЕЮ [  ] ПЛЯЖ ПАЛОЛЕМ \r\n\r\nОДИН ИЗ САМЫХ КРАСИВЫХ ПЛЯЖЕЙ ГОА. ЗДЕСЬ \r\nВЫ НАЙДЕТЕ НЕ ТОЛЬКО ЛАСКОВОЕ МОРЕ, БЕСКОНЕЧНЫЙ \r\nБЕЛОСНЕЖНЫЙ ПЛЯЖ, КОКОСОВЫЕ ПАЛЬМЫ У САМОЙ \r\nКРОМКИ МОРЯ, НО И НЕОБЫЧНУЮ ОЧЕНЬ УЮТНУЮ \r\nАТМОСФЕРУ. НА ЛОДКЕ МЫ ВЫЙДЕМ В МОРЕ, ПОЛЮБУЕМСЯ \r\nДЕЛЬФИНАМИ, ДОПЛЫВЕМ ДО ОСТРОВА. ВЫ НАСЛАДИТЕСЬ \r\nКРАСОТОЙ ВОКРУГ, БРЕДЯ ПО НЕЖНЕЙШЕМУ ПЕСКУ. \r\nПЛЯЖ КОЛА \r\n\r\nРОМАНТИЧНЫЙ, УДИВИТЕЛЬНЫЙ, УЕДИНЕННЫЙ \r\nС НЕТРОНУТОЙ БЕРЕГОВОЙ ЛИНИЕЙ И ,КОНЕЧНО, \r\nПРОСТО КРАСИВЫЙ, С ЛАГУНОЙ, ГДЕ МОЖНО ПОГРУЗИТЬСЯ \r\nВ СПОКОЙНОЕ МОРЕ. ФОРТ КАБО ДЕ РАМА \r\n\r\nОДНА ИЗ СТАРЕЙШИХ КРЕПОСТЕЙ В ГОА.\r\nФОРТ КАБО ДЕ РАМА ИМЕЕТ ИНТЕРЕСНУЮ ИСТОРИЮ. \r\nМЫ ОБЯЗАТЕЛЬНО РАССКАЖЕМ ВАМ, СВЯЗАНЫЕ \r\nС НИМ УВЛЕКАТЕЛЬНЫЕ ЛЕГЕНДЫ И ВЫ ПОЧУВСТВУЕТЕ \r\nМИСТИЧЕСКУЮ АТМОСФЕРУ МЫСА РАМЫ. В ЭТИХ \r\nМЕСТАХ ПРОВЕЛИ 14 ЛЕТ В ИЗГНАНИИ ВЕЛИКИЙ \r\nГЕРОЙ РАМАЯНЫ РАМА И ЕГО ЖЕНА СИТА. ФОРТОМ \r\nВЛАДЕЛИ ИНДИЙСКИЕ ПРАВИТЕЛИ И МУСУЛЬМАНСКИЕ \r\nШАХИ, В 1763 ГОДУ КАБО ДЕ РАМА БЫЛ ЗАХВАЧЕН \r\nПОРТУГАЛЬЦАМИ. ЧАСТЬ КРЕПОСТИ СОХРАНИЛАСЬ, \r\nЧАСТЬ РАЗРУШЕНА. БЕЛОСНЕЖНАЯ ЦЕРКОВЬ СВЯТОГО \r\nАНТОНИА (SANTO ANTONIO) ВНУТРИ ФОРТА, БАШНИ, БОЛЬШИЕ \r\nПУШКИ, КОЛОДЕЦ, В КОТОРЫЙ ПОДАВАЛАСЬ ГОРЯЧАЯ \r\nИ ХОЛОДНАЯ ВОДА ИЗ ПРИРОДНЫХ ИСТОЧНИКОВ, \r\nВЕЛИКОЛЕПНЫЙ ВИД, ОТКРЫВАЮЩИЙСЯ СО СТЕН \r\nКРЕПОСТИ.',1,NULL,NULL,NULL,NULL,NULL,'N','16','/excursion/entertaining/all_goa/','историческая, 2 дня, с детьми','0',NULL,8,'2016-10-23 20:43:14'),(17,'2016-08-28 22:05:35',1,'2016-08-21 14:51:02',1,5,NULL,'Y',NULL,NULL,500,'Экскурсия 6',7,'','text',NULL,'','text','ЭКСКУРСИЯ 6\r\n\r\n',1,NULL,NULL,NULL,NULL,NULL,'N','17','','развлекательная','0',NULL,NULL,NULL),(18,'2016-10-16 17:19:20',1,'2016-10-16 17:19:20',1,5,NULL,'Y',NULL,NULL,500,'Самая новая экскурсия',NULL,'','text',NULL,'','text','САМАЯ НОВАЯ ЭКСКУРСИЯ\r\n\r\n',1,NULL,NULL,NULL,NULL,NULL,'N','18','','','0',NULL,NULL,NULL),(19,'2016-10-23 18:59:42',1,'2016-10-23 18:58:58',1,6,1,'Y',NULL,NULL,500,'Фото 1',17,'','text',18,'','text','ФОТО 1\r\n\r\n',1,NULL,NULL,NULL,NULL,NULL,'Y','19','','','0',NULL,NULL,NULL),(20,'2016-10-23 19:00:08',1,'2016-10-23 19:00:08',1,6,1,'Y',NULL,NULL,500,'Фото 2',19,'','text',20,'','text','ФОТО 2\r\n\r\n',1,NULL,NULL,NULL,NULL,NULL,'Y','20','','','0',NULL,NULL,NULL);
/*!40000 ALTER TABLE `b_iblock_element` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_element_iprop`
--

DROP TABLE IF EXISTS `b_iblock_element_iprop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_element_iprop` (
  `IBLOCK_ID` int(11) NOT NULL,
  `SECTION_ID` int(11) NOT NULL,
  `ELEMENT_ID` int(11) NOT NULL,
  `IPROP_ID` int(11) NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ELEMENT_ID`,`IPROP_ID`),
  KEY `ix_b_iblock_element_iprop_0` (`IPROP_ID`),
  KEY `ix_b_iblock_element_iprop_1` (`IBLOCK_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_element_iprop`
--

LOCK TABLES `b_iblock_element_iprop` WRITE;
/*!40000 ALTER TABLE `b_iblock_element_iprop` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_element_iprop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_element_lock`
--

DROP TABLE IF EXISTS `b_iblock_element_lock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_element_lock` (
  `IBLOCK_ELEMENT_ID` int(11) NOT NULL,
  `DATE_LOCK` datetime DEFAULT NULL,
  `LOCKED_BY` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`IBLOCK_ELEMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_element_lock`
--

LOCK TABLES `b_iblock_element_lock` WRITE;
/*!40000 ALTER TABLE `b_iblock_element_lock` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_element_lock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_element_prop_m3`
--

DROP TABLE IF EXISTS `b_iblock_element_prop_m3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_element_prop_m3` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IBLOCK_ELEMENT_ID` int(11) NOT NULL,
  `IBLOCK_PROPERTY_ID` int(11) NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci NOT NULL,
  `VALUE_ENUM` int(11) DEFAULT NULL,
  `VALUE_NUM` decimal(18,4) DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_iblock_elem_prop_m3_1` (`IBLOCK_ELEMENT_ID`,`IBLOCK_PROPERTY_ID`),
  KEY `ix_iblock_elem_prop_m3_2` (`IBLOCK_PROPERTY_ID`),
  KEY `ix_iblock_elem_prop_m3_3` (`VALUE_ENUM`,`IBLOCK_PROPERTY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_element_prop_m3`
--

LOCK TABLES `b_iblock_element_prop_m3` WRITE;
/*!40000 ALTER TABLE `b_iblock_element_prop_m3` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_element_prop_m3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_element_prop_m4`
--

DROP TABLE IF EXISTS `b_iblock_element_prop_m4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_element_prop_m4` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IBLOCK_ELEMENT_ID` int(11) NOT NULL,
  `IBLOCK_PROPERTY_ID` int(11) NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci NOT NULL,
  `VALUE_ENUM` int(11) DEFAULT NULL,
  `VALUE_NUM` decimal(18,4) DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_iblock_elem_prop_m4_1` (`IBLOCK_ELEMENT_ID`,`IBLOCK_PROPERTY_ID`),
  KEY `ix_iblock_elem_prop_m4_2` (`IBLOCK_PROPERTY_ID`),
  KEY `ix_iblock_elem_prop_m4_3` (`VALUE_ENUM`,`IBLOCK_PROPERTY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_element_prop_m4`
--

LOCK TABLES `b_iblock_element_prop_m4` WRITE;
/*!40000 ALTER TABLE `b_iblock_element_prop_m4` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_element_prop_m4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_element_prop_m5`
--

DROP TABLE IF EXISTS `b_iblock_element_prop_m5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_element_prop_m5` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IBLOCK_ELEMENT_ID` int(11) NOT NULL,
  `IBLOCK_PROPERTY_ID` int(11) NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci NOT NULL,
  `VALUE_ENUM` int(11) DEFAULT NULL,
  `VALUE_NUM` decimal(18,4) DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_iblock_elem_prop_m5_1` (`IBLOCK_ELEMENT_ID`,`IBLOCK_PROPERTY_ID`),
  KEY `ix_iblock_elem_prop_m5_2` (`IBLOCK_PROPERTY_ID`),
  KEY `ix_iblock_elem_prop_m5_3` (`VALUE_ENUM`,`IBLOCK_PROPERTY_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_element_prop_m5`
--

LOCK TABLES `b_iblock_element_prop_m5` WRITE;
/*!40000 ALTER TABLE `b_iblock_element_prop_m5` DISABLE KEYS */;
INSERT INTO `b_iblock_element_prop_m5` VALUES (1,16,6,'19',NULL,19.0000,''),(2,16,6,'20',NULL,20.0000,'');
/*!40000 ALTER TABLE `b_iblock_element_prop_m5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_element_prop_m6`
--

DROP TABLE IF EXISTS `b_iblock_element_prop_m6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_element_prop_m6` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IBLOCK_ELEMENT_ID` int(11) NOT NULL,
  `IBLOCK_PROPERTY_ID` int(11) NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci NOT NULL,
  `VALUE_ENUM` int(11) DEFAULT NULL,
  `VALUE_NUM` decimal(18,4) DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_iblock_elem_prop_m6_1` (`IBLOCK_ELEMENT_ID`,`IBLOCK_PROPERTY_ID`),
  KEY `ix_iblock_elem_prop_m6_2` (`IBLOCK_PROPERTY_ID`),
  KEY `ix_iblock_elem_prop_m6_3` (`VALUE_ENUM`,`IBLOCK_PROPERTY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_element_prop_m6`
--

LOCK TABLES `b_iblock_element_prop_m6` WRITE;
/*!40000 ALTER TABLE `b_iblock_element_prop_m6` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_element_prop_m6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_element_prop_s3`
--

DROP TABLE IF EXISTS `b_iblock_element_prop_s3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_element_prop_s3` (
  `IBLOCK_ELEMENT_ID` int(11) NOT NULL,
  PRIMARY KEY (`IBLOCK_ELEMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_element_prop_s3`
--

LOCK TABLES `b_iblock_element_prop_s3` WRITE;
/*!40000 ALTER TABLE `b_iblock_element_prop_s3` DISABLE KEYS */;
INSERT INTO `b_iblock_element_prop_s3` VALUES (7),(8),(9);
/*!40000 ALTER TABLE `b_iblock_element_prop_s3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_element_prop_s4`
--

DROP TABLE IF EXISTS `b_iblock_element_prop_s4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_element_prop_s4` (
  `IBLOCK_ELEMENT_ID` int(11) NOT NULL,
  `PROPERTY_1` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`IBLOCK_ELEMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_element_prop_s4`
--

LOCK TABLES `b_iblock_element_prop_s4` WRITE;
/*!40000 ALTER TABLE `b_iblock_element_prop_s4` DISABLE KEYS */;
INSERT INTO `b_iblock_element_prop_s4` VALUES (10,'Ольга'),(11,'Ольга Тетерина');
/*!40000 ALTER TABLE `b_iblock_element_prop_s4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_element_prop_s5`
--

DROP TABLE IF EXISTS `b_iblock_element_prop_s5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_element_prop_s5` (
  `IBLOCK_ELEMENT_ID` int(11) NOT NULL,
  `PROPERTY_2` int(11) DEFAULT NULL,
  `PROPERTY_3` text COLLATE utf8_unicode_ci,
  `PROPERTY_4` text COLLATE utf8_unicode_ci,
  `PROPERTY_5` int(11) DEFAULT NULL,
  `PROPERTY_6` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`IBLOCK_ELEMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_element_prop_s5`
--

LOCK TABLES `b_iblock_element_prop_s5` WRITE;
/*!40000 ALTER TABLE `b_iblock_element_prop_s5` DISABLE KEYS */;
INSERT INTO `b_iblock_element_prop_s5` VALUES (12,1,NULL,NULL,NULL,'a:3:{s:5:\"VALUE\";a:0:{}s:11:\"DESCRIPTION\";a:0:{}s:2:\"ID\";a:0:{}}'),(13,1,NULL,NULL,NULL,'a:3:{s:5:\"VALUE\";a:0:{}s:11:\"DESCRIPTION\";a:0:{}s:2:\"ID\";a:0:{}}'),(14,1,NULL,NULL,NULL,'a:3:{s:5:\"VALUE\";a:0:{}s:11:\"DESCRIPTION\";a:0:{}s:2:\"ID\";a:0:{}}'),(15,NULL,NULL,NULL,NULL,NULL),(16,1,'a:2:{s:4:\"TEXT\";s:2183:\"<div class=\"program-table\">\r\n    <div class=\"program-table__header\">День 1</div>\r\n\r\n    <div class=\"program-table__line\">\r\n      <div class=\"program-table__time\">08.00</div>\r\n      <div class=\"program-table__text\">Отправление из отеля</div>\r\n    </div>\r\n\r\n    <div class=\"program-table__line\">\r\n      <div class=\"program-table__time\">10.00</div>\r\n      <div class=\"program-table__text\">Прибытие на пляж Палолем</div>\r\n    </div>\r\n\r\n    <div class=\"program-table__line\">\r\n      <div class=\"program-table__time\">10.30 - 12.00</div>\r\n      <div class=\"program-table__text\">Прогулка на лодке на остров Бабочек</div>\r\n    </div>\r\n\r\n    <div class=\"program-table__line\">\r\n      <div class=\"program-table__time\">12.00 - 15.00</div>\r\n      <div class=\"program-table__text\">Обед и свободное время на пляже</div>\r\n    </div>\r\n\r\n    <div class=\"program-table__line\">\r\n      <div class=\"program-table__time\">15.00</div>\r\n      <div class=\"program-table__text\">Отправление на пляж Кола (20 минут в пути)</div>\r\n    </div>\r\n\r\n    <div class=\"program-table__line\">\r\n      <div class=\"program-table__time\">15.20 - 17.00</div>\r\n      <div class=\"program-table__text\">Свободное время на пляже Кола</div>\r\n    </div>\r\n\r\n    <div class=\"program-table__line\">\r\n      <div class=\"program-table__time\">17.00</div>\r\n      <div class=\"program-table__text\">Отправление в форт Кабо де Рама</div>\r\n    </div>\r\n\r\n    <div class=\"program-table__line\">\r\n      <div class=\"program-table__time\">17.15 - 18.30</div>\r\n      <div class=\"program-table__text\">Осмотр форта Кабо де Рама и встреча заката</div>\r\n    </div>\r\n  </div>\r\n\r\n  <p>В экскурсию включено:<br />Трансфер на собственном транспорте с кондиционером, страховка, услуги русского гида, прогулка на лодке на остров.</p>\r\n  <p>Продолжительность: c 8.00 до 20.30</p>\r\n  <p>Время в пути: 2 часа</p>\";s:4:\"TYPE\";s:4:\"HTML\";}','a:2:{s:4:\"TEXT\";s:3114:\"<p>ЦЕНЫ на экскурсию, исходя из количества туристов в машине.<br />Все наши автомобили рассчитаны на 6-8 туристов + русский гид, миниавтобусы на 12 туристов + русский гид. Если Вы хотите большего комфорта, Вам следует выбрать размещение по 4 человека в автомобиле.</p>\r\n  <p>Мы сами формируем группы. Вам достаточно сообщить день планируемой поездки и количество туристов в автомобиле, которое вас устроит.</p>\r\n  <p>Вы можете заказать экскурсию непосредственно в Гоа по тел: +91 8888 70 40 05, +91 8888 71 79 22<br />либо воспользоваться формой заказа.</p>\r\n\r\n  <ul>\r\n    <li>Заказывая экскурсии на сайте, вы получаете 5% скидку</li>\r\n    <li>Для детей до 12 лет действует скидка 50%</li>\r\n    <li>Скидки и акции на экскурсии без русского гида не распространяются.</li>\r\n    <li>Скидки по акциям не суммируются.</li>\r\n  </ul>\r\n\r\n  <h3>Для групп от 6 человек цены устанавливаются индивидуально на все экскурсии!</h3>\r\n\r\n  <div class=\"price-table\">\r\n    <div class=\"price-table__line price-table--line-header\">\r\n      <div class=\"price-table__cell\">\r\n        <div class=\"price-table--big\">6 - 12 человек</div>\r\n        <div>за 1 человека</div>\r\n      </div>\r\n      <div class=\"price-table__cell\">\r\n        <div class=\"price-table--big\">5 человек</div>\r\n        <div>за 1 человека</div>\r\n      </div>\r\n    </div>\r\n\r\n    <div class=\"price-table__body\">\r\n      <div class=\"price-table__line\">\r\n        <div class=\"price-table__cell\">\r\n          <div class=\"price-table--middle\">45$</div>\r\n        </div>\r\n        <div class=\"price-table__cell\">\r\n          <div class=\"price-table--middle\">50$</div>\r\n        </div>\r\n      </div>\r\n\r\n      <div class=\"price-table__line\">\r\n        <div class=\"price-table__cell\">\r\n          <div class=\"price-table--big\">40$</div>\r\n          <div class=\"price-table--white\">При заказе с сайта</div>\r\n        </div>\r\n        <div class=\"price-table__cell\">\r\n          <div class=\"price-table--big\">45$</div>\r\n          <div class=\"price-table--white\">При заказе с сайта</div>\r\n        </div>\r\n      </div>\r\n\r\n      <div class=\"price-table__line\">\r\n        <div class=\"price-table__cell\">\r\n          <div class=\"price-table--middle\">20$</div>\r\n          <div>Для детей от 12 лет</div>\r\n        </div>\r\n        <div class=\"price-table__cell\">\r\n          <div class=\"price-table--middle\">20$</div>\r\n          <div>Для детей от 12 лет</div>\r\n        </div>\r\n      </div>\r\n    </div>\r\n  </div>\";s:4:\"TYPE\";s:4:\"HTML\";}',1,'a:3:{s:5:\"VALUE\";a:2:{i:0;s:2:\"19\";i:1;s:2:\"20\";}s:11:\"DESCRIPTION\";a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}s:2:\"ID\";a:2:{i:0;s:1:\"1\";i:1;s:1:\"2\";}}'),(17,1,NULL,NULL,NULL,'a:3:{s:5:\"VALUE\";a:0:{}s:11:\"DESCRIPTION\";a:0:{}s:2:\"ID\";a:0:{}}'),(18,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `b_iblock_element_prop_s5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_element_prop_s6`
--

DROP TABLE IF EXISTS `b_iblock_element_prop_s6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_element_prop_s6` (
  `IBLOCK_ELEMENT_ID` int(11) NOT NULL,
  PRIMARY KEY (`IBLOCK_ELEMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_element_prop_s6`
--

LOCK TABLES `b_iblock_element_prop_s6` WRITE;
/*!40000 ALTER TABLE `b_iblock_element_prop_s6` DISABLE KEYS */;
INSERT INTO `b_iblock_element_prop_s6` VALUES (19),(20);
/*!40000 ALTER TABLE `b_iblock_element_prop_s6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_element_property`
--

DROP TABLE IF EXISTS `b_iblock_element_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_element_property` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IBLOCK_PROPERTY_ID` int(11) NOT NULL,
  `IBLOCK_ELEMENT_ID` int(11) NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci NOT NULL,
  `VALUE_TYPE` char(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `VALUE_ENUM` int(11) DEFAULT NULL,
  `VALUE_NUM` decimal(18,4) DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_iblock_element_property_1` (`IBLOCK_ELEMENT_ID`,`IBLOCK_PROPERTY_ID`),
  KEY `ix_iblock_element_property_2` (`IBLOCK_PROPERTY_ID`),
  KEY `ix_iblock_element_prop_enum` (`VALUE_ENUM`,`IBLOCK_PROPERTY_ID`),
  KEY `ix_iblock_element_prop_num` (`VALUE_NUM`,`IBLOCK_PROPERTY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_element_property`
--

LOCK TABLES `b_iblock_element_property` WRITE;
/*!40000 ALTER TABLE `b_iblock_element_property` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_element_property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_element_right`
--

DROP TABLE IF EXISTS `b_iblock_element_right`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_element_right` (
  `IBLOCK_ID` int(11) NOT NULL,
  `SECTION_ID` int(11) NOT NULL,
  `ELEMENT_ID` int(11) NOT NULL,
  `RIGHT_ID` int(11) NOT NULL,
  `IS_INHERITED` char(1) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`RIGHT_ID`,`ELEMENT_ID`,`SECTION_ID`),
  KEY `ix_b_iblock_element_right_1` (`ELEMENT_ID`,`IBLOCK_ID`),
  KEY `ix_b_iblock_element_right_2` (`IBLOCK_ID`,`RIGHT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_element_right`
--

LOCK TABLES `b_iblock_element_right` WRITE;
/*!40000 ALTER TABLE `b_iblock_element_right` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_element_right` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_fields`
--

DROP TABLE IF EXISTS `b_iblock_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_fields` (
  `IBLOCK_ID` int(18) NOT NULL,
  `FIELD_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `IS_REQUIRED` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DEFAULT_VALUE` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`IBLOCK_ID`,`FIELD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_fields`
--

LOCK TABLES `b_iblock_fields` WRITE;
/*!40000 ALTER TABLE `b_iblock_fields` DISABLE KEYS */;
INSERT INTO `b_iblock_fields` VALUES (3,'ACTIVE','Y','Y'),(3,'ACTIVE_FROM','N',''),(3,'ACTIVE_TO','N',''),(3,'CODE','N','a:8:{s:6:\"UNIQUE\";s:1:\"N\";s:15:\"TRANSLITERATION\";s:1:\"N\";s:9:\"TRANS_LEN\";i:100;s:10:\"TRANS_CASE\";s:1:\"L\";s:11:\"TRANS_SPACE\";s:1:\"-\";s:11:\"TRANS_OTHER\";s:1:\"-\";s:9:\"TRANS_EAT\";s:1:\"Y\";s:10:\"USE_GOOGLE\";s:1:\"N\";}'),(3,'DETAIL_PICTURE','N','a:17:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),(3,'DETAIL_TEXT','N',''),(3,'DETAIL_TEXT_TYPE','Y','text'),(3,'DETAIL_TEXT_TYPE_ALLOW_CHANGE','N','Y'),(3,'IBLOCK_SECTION','N','a:1:{s:22:\"KEEP_IBLOCK_SECTION_ID\";s:1:\"N\";}'),(3,'LOG_ELEMENT_ADD','N',NULL),(3,'LOG_ELEMENT_DELETE','N',NULL),(3,'LOG_ELEMENT_EDIT','N',NULL),(3,'LOG_SECTION_ADD','N',NULL),(3,'LOG_SECTION_DELETE','N',NULL),(3,'LOG_SECTION_EDIT','N',NULL),(3,'NAME','Y',''),(3,'PREVIEW_PICTURE','N','a:20:{s:11:\"FROM_DETAIL\";s:1:\"N\";s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),(3,'PREVIEW_TEXT','N',''),(3,'PREVIEW_TEXT_TYPE','Y','text'),(3,'PREVIEW_TEXT_TYPE_ALLOW_CHANGE','N','Y'),(3,'SECTION_CODE','N','a:8:{s:6:\"UNIQUE\";s:1:\"N\";s:15:\"TRANSLITERATION\";s:1:\"N\";s:9:\"TRANS_LEN\";i:100;s:10:\"TRANS_CASE\";s:1:\"L\";s:11:\"TRANS_SPACE\";s:1:\"-\";s:11:\"TRANS_OTHER\";s:1:\"-\";s:9:\"TRANS_EAT\";s:1:\"Y\";s:10:\"USE_GOOGLE\";s:1:\"N\";}'),(3,'SECTION_DESCRIPTION','N',''),(3,'SECTION_DESCRIPTION_TYPE','Y','text'),(3,'SECTION_DESCRIPTION_TYPE_ALLOW_CHANGE','N','Y'),(3,'SECTION_DETAIL_PICTURE','N','a:17:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),(3,'SECTION_NAME','Y',''),(3,'SECTION_PICTURE','N','a:20:{s:11:\"FROM_DETAIL\";s:1:\"N\";s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),(3,'SECTION_XML_ID','N',''),(3,'SORT','N','0'),(3,'TAGS','N',''),(3,'XML_ID','Y',''),(3,'XML_IMPORT_START_TIME','N',NULL),(4,'ACTIVE','Y','Y'),(4,'ACTIVE_FROM','N',''),(4,'ACTIVE_TO','N',''),(4,'CODE','N','a:8:{s:6:\"UNIQUE\";s:1:\"N\";s:15:\"TRANSLITERATION\";s:1:\"N\";s:9:\"TRANS_LEN\";i:100;s:10:\"TRANS_CASE\";s:1:\"L\";s:11:\"TRANS_SPACE\";s:1:\"-\";s:11:\"TRANS_OTHER\";s:1:\"-\";s:9:\"TRANS_EAT\";s:1:\"Y\";s:10:\"USE_GOOGLE\";s:1:\"N\";}'),(4,'DETAIL_PICTURE','N','a:17:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),(4,'DETAIL_TEXT','N',''),(4,'DETAIL_TEXT_TYPE','Y','text'),(4,'DETAIL_TEXT_TYPE_ALLOW_CHANGE','N','Y'),(4,'IBLOCK_SECTION','N','a:1:{s:22:\"KEEP_IBLOCK_SECTION_ID\";s:1:\"N\";}'),(4,'LOG_ELEMENT_ADD','N',NULL),(4,'LOG_ELEMENT_DELETE','N',NULL),(4,'LOG_ELEMENT_EDIT','N',NULL),(4,'LOG_SECTION_ADD','N',NULL),(4,'LOG_SECTION_DELETE','N',NULL),(4,'LOG_SECTION_EDIT','N',NULL),(4,'NAME','Y',''),(4,'PREVIEW_PICTURE','N','a:20:{s:11:\"FROM_DETAIL\";s:1:\"N\";s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),(4,'PREVIEW_TEXT','N',''),(4,'PREVIEW_TEXT_TYPE','Y','text'),(4,'PREVIEW_TEXT_TYPE_ALLOW_CHANGE','N','Y'),(4,'SECTION_CODE','N','a:8:{s:6:\"UNIQUE\";s:1:\"N\";s:15:\"TRANSLITERATION\";s:1:\"N\";s:9:\"TRANS_LEN\";i:100;s:10:\"TRANS_CASE\";s:1:\"L\";s:11:\"TRANS_SPACE\";s:1:\"-\";s:11:\"TRANS_OTHER\";s:1:\"-\";s:9:\"TRANS_EAT\";s:1:\"Y\";s:10:\"USE_GOOGLE\";s:1:\"N\";}'),(4,'SECTION_DESCRIPTION','N',''),(4,'SECTION_DESCRIPTION_TYPE','Y','text'),(4,'SECTION_DESCRIPTION_TYPE_ALLOW_CHANGE','N','Y'),(4,'SECTION_DETAIL_PICTURE','N','a:17:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),(4,'SECTION_NAME','Y',''),(4,'SECTION_PICTURE','N','a:20:{s:11:\"FROM_DETAIL\";s:1:\"N\";s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),(4,'SECTION_XML_ID','N',''),(4,'SORT','N','0'),(4,'TAGS','N',''),(4,'XML_ID','Y',''),(4,'XML_IMPORT_START_TIME','N',NULL),(5,'ACTIVE','Y','Y'),(5,'ACTIVE_FROM','N',''),(5,'ACTIVE_TO','N',''),(5,'CODE','N','a:8:{s:6:\"UNIQUE\";s:1:\"N\";s:15:\"TRANSLITERATION\";s:1:\"N\";s:9:\"TRANS_LEN\";i:100;s:10:\"TRANS_CASE\";s:1:\"L\";s:11:\"TRANS_SPACE\";s:1:\"-\";s:11:\"TRANS_OTHER\";s:1:\"-\";s:9:\"TRANS_EAT\";s:1:\"Y\";s:10:\"USE_GOOGLE\";s:1:\"N\";}'),(5,'DETAIL_PICTURE','N','a:17:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),(5,'DETAIL_TEXT','N',''),(5,'DETAIL_TEXT_TYPE','Y','text'),(5,'DETAIL_TEXT_TYPE_ALLOW_CHANGE','N','Y'),(5,'IBLOCK_SECTION','N','a:1:{s:22:\"KEEP_IBLOCK_SECTION_ID\";s:1:\"N\";}'),(5,'LOG_ELEMENT_ADD','N',NULL),(5,'LOG_ELEMENT_DELETE','N',NULL),(5,'LOG_ELEMENT_EDIT','N',NULL),(5,'LOG_SECTION_ADD','N',NULL),(5,'LOG_SECTION_DELETE','N',NULL),(5,'LOG_SECTION_EDIT','N',NULL),(5,'NAME','Y',''),(5,'PREVIEW_PICTURE','N','a:20:{s:11:\"FROM_DETAIL\";s:1:\"N\";s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),(5,'PREVIEW_TEXT','N',''),(5,'PREVIEW_TEXT_TYPE','Y','text'),(5,'PREVIEW_TEXT_TYPE_ALLOW_CHANGE','N','Y'),(5,'SECTION_CODE','N','a:8:{s:6:\"UNIQUE\";s:1:\"N\";s:15:\"TRANSLITERATION\";s:1:\"N\";s:9:\"TRANS_LEN\";i:100;s:10:\"TRANS_CASE\";s:1:\"L\";s:11:\"TRANS_SPACE\";s:1:\"-\";s:11:\"TRANS_OTHER\";s:1:\"-\";s:9:\"TRANS_EAT\";s:1:\"Y\";s:10:\"USE_GOOGLE\";s:1:\"N\";}'),(5,'SECTION_DESCRIPTION','N',''),(5,'SECTION_DESCRIPTION_TYPE','Y','text'),(5,'SECTION_DESCRIPTION_TYPE_ALLOW_CHANGE','N','Y'),(5,'SECTION_DETAIL_PICTURE','N','a:17:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),(5,'SECTION_NAME','Y',''),(5,'SECTION_PICTURE','N','a:20:{s:11:\"FROM_DETAIL\";s:1:\"N\";s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),(5,'SECTION_XML_ID','N',''),(5,'SORT','N','0'),(5,'TAGS','N',''),(5,'XML_ID','Y',''),(5,'XML_IMPORT_START_TIME','N',NULL),(6,'ACTIVE','Y','Y'),(6,'ACTIVE_FROM','N',''),(6,'ACTIVE_TO','N',''),(6,'CODE','N','a:8:{s:6:\"UNIQUE\";s:1:\"N\";s:15:\"TRANSLITERATION\";s:1:\"N\";s:9:\"TRANS_LEN\";i:100;s:10:\"TRANS_CASE\";s:1:\"L\";s:11:\"TRANS_SPACE\";s:1:\"-\";s:11:\"TRANS_OTHER\";s:1:\"-\";s:9:\"TRANS_EAT\";s:1:\"Y\";s:10:\"USE_GOOGLE\";s:1:\"N\";}'),(6,'DETAIL_PICTURE','N','a:17:{s:5:\"SCALE\";s:1:\"Y\";s:5:\"WIDTH\";i:900;s:6:\"HEIGHT\";i:600;s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),(6,'DETAIL_TEXT','N',''),(6,'DETAIL_TEXT_TYPE','Y','text'),(6,'DETAIL_TEXT_TYPE_ALLOW_CHANGE','N','Y'),(6,'IBLOCK_SECTION','N','a:1:{s:22:\"KEEP_IBLOCK_SECTION_ID\";s:1:\"N\";}'),(6,'LOG_ELEMENT_ADD','N',NULL),(6,'LOG_ELEMENT_DELETE','N',NULL),(6,'LOG_ELEMENT_EDIT','N',NULL),(6,'LOG_SECTION_ADD','N',NULL),(6,'LOG_SECTION_DELETE','N',NULL),(6,'LOG_SECTION_EDIT','N',NULL),(6,'NAME','Y',''),(6,'PREVIEW_PICTURE','Y','a:20:{s:11:\"FROM_DETAIL\";s:1:\"Y\";s:5:\"SCALE\";s:1:\"Y\";s:5:\"WIDTH\";i:300;s:6:\"HEIGHT\";i:300;s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),(6,'PREVIEW_TEXT','N',''),(6,'PREVIEW_TEXT_TYPE','Y','text'),(6,'PREVIEW_TEXT_TYPE_ALLOW_CHANGE','N','Y'),(6,'SECTION_CODE','N','a:8:{s:6:\"UNIQUE\";s:1:\"N\";s:15:\"TRANSLITERATION\";s:1:\"N\";s:9:\"TRANS_LEN\";i:100;s:10:\"TRANS_CASE\";s:1:\"L\";s:11:\"TRANS_SPACE\";s:1:\"-\";s:11:\"TRANS_OTHER\";s:1:\"-\";s:9:\"TRANS_EAT\";s:1:\"Y\";s:10:\"USE_GOOGLE\";s:1:\"N\";}'),(6,'SECTION_DESCRIPTION','N',''),(6,'SECTION_DESCRIPTION_TYPE','Y','text'),(6,'SECTION_DESCRIPTION_TYPE_ALLOW_CHANGE','N','Y'),(6,'SECTION_DETAIL_PICTURE','N','a:17:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),(6,'SECTION_NAME','Y',''),(6,'SECTION_PICTURE','N','a:20:{s:11:\"FROM_DETAIL\";s:1:\"N\";s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),(6,'SECTION_XML_ID','N',''),(6,'SORT','N','0'),(6,'TAGS','N',''),(6,'XML_ID','Y',''),(6,'XML_IMPORT_START_TIME','N',NULL);
/*!40000 ALTER TABLE `b_iblock_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_group`
--

DROP TABLE IF EXISTS `b_iblock_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_group` (
  `IBLOCK_ID` int(11) NOT NULL,
  `GROUP_ID` int(11) NOT NULL,
  `PERMISSION` char(1) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `ux_iblock_group_1` (`IBLOCK_ID`,`GROUP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_group`
--

LOCK TABLES `b_iblock_group` WRITE;
/*!40000 ALTER TABLE `b_iblock_group` DISABLE KEYS */;
INSERT INTO `b_iblock_group` VALUES (3,1,'X'),(4,1,'X'),(5,1,'X'),(5,2,'R'),(6,1,'X');
/*!40000 ALTER TABLE `b_iblock_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_iblock_iprop`
--

DROP TABLE IF EXISTS `b_iblock_iblock_iprop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_iblock_iprop` (
  `IBLOCK_ID` int(11) NOT NULL,
  `IPROP_ID` int(11) NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`IBLOCK_ID`,`IPROP_ID`),
  KEY `ix_b_iblock_iblock_iprop_0` (`IPROP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_iblock_iprop`
--

LOCK TABLES `b_iblock_iblock_iprop` WRITE;
/*!40000 ALTER TABLE `b_iblock_iblock_iprop` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_iblock_iprop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_iproperty`
--

DROP TABLE IF EXISTS `b_iblock_iproperty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_iproperty` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IBLOCK_ID` int(11) NOT NULL,
  `CODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `TEMPLATE` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_iblock_iprop_0` (`IBLOCK_ID`,`ENTITY_TYPE`,`ENTITY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_iproperty`
--

LOCK TABLES `b_iblock_iproperty` WRITE;
/*!40000 ALTER TABLE `b_iblock_iproperty` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_iproperty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_messages`
--

DROP TABLE IF EXISTS `b_iblock_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_messages` (
  `IBLOCK_ID` int(18) NOT NULL,
  `MESSAGE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MESSAGE_TEXT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`IBLOCK_ID`,`MESSAGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_messages`
--

LOCK TABLES `b_iblock_messages` WRITE;
/*!40000 ALTER TABLE `b_iblock_messages` DISABLE KEYS */;
INSERT INTO `b_iblock_messages` VALUES (3,'ELEMENT_ADD','Добавить элемент'),(3,'ELEMENT_DELETE','Удалить элемент'),(3,'ELEMENT_EDIT','Изменить элемент'),(3,'ELEMENT_NAME','Элемент'),(3,'ELEMENTS_NAME','Элементы'),(3,'SECTION_ADD','Добавить раздел'),(3,'SECTION_DELETE','Удалить раздел'),(3,'SECTION_EDIT','Изменить раздел'),(3,'SECTION_NAME','Раздел'),(3,'SECTIONS_NAME','Разделы'),(4,'ELEMENT_ADD','Добавить элемент'),(4,'ELEMENT_DELETE','Удалить элемент'),(4,'ELEMENT_EDIT','Изменить элемент'),(4,'ELEMENT_NAME','Элемент'),(4,'ELEMENTS_NAME','Элементы'),(4,'SECTION_ADD','Добавить раздел'),(4,'SECTION_DELETE','Удалить раздел'),(4,'SECTION_EDIT','Изменить раздел'),(4,'SECTION_NAME','Раздел'),(4,'SECTIONS_NAME','Разделы'),(5,'ELEMENT_ADD','Добавить элемент'),(5,'ELEMENT_DELETE','Удалить элемент'),(5,'ELEMENT_EDIT','Изменить элемент'),(5,'ELEMENT_NAME','Элемент'),(5,'ELEMENTS_NAME','Элементы'),(5,'SECTION_ADD','Добавить раздел'),(5,'SECTION_DELETE','Удалить раздел'),(5,'SECTION_EDIT','Изменить раздел'),(5,'SECTION_NAME','Раздел'),(5,'SECTIONS_NAME','Разделы'),(6,'ELEMENT_ADD','Добавить элемент'),(6,'ELEMENT_DELETE','Удалить элемент'),(6,'ELEMENT_EDIT','Изменить элемент'),(6,'ELEMENT_NAME','Элемент'),(6,'ELEMENTS_NAME','Элементы'),(6,'SECTION_ADD','Добавить раздел'),(6,'SECTION_DELETE','Удалить раздел'),(6,'SECTION_EDIT','Изменить раздел'),(6,'SECTION_NAME','Раздел'),(6,'SECTIONS_NAME','Разделы');
/*!40000 ALTER TABLE `b_iblock_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_offers_tmp`
--

DROP TABLE IF EXISTS `b_iblock_offers_tmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_offers_tmp` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `PRODUCT_IBLOCK_ID` int(11) unsigned NOT NULL,
  `OFFERS_IBLOCK_ID` int(11) unsigned NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_offers_tmp`
--

LOCK TABLES `b_iblock_offers_tmp` WRITE;
/*!40000 ALTER TABLE `b_iblock_offers_tmp` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_offers_tmp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_property`
--

DROP TABLE IF EXISTS `b_iblock_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_property` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `IBLOCK_ID` int(11) NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `SORT` int(11) NOT NULL DEFAULT '500',
  `CODE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DEFAULT_VALUE` text COLLATE utf8_unicode_ci,
  `PROPERTY_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  `ROW_COUNT` int(11) NOT NULL DEFAULT '1',
  `COL_COUNT` int(11) NOT NULL DEFAULT '30',
  `LIST_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'L',
  `MULTIPLE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `XML_ID` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FILE_TYPE` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MULTIPLE_CNT` int(11) DEFAULT NULL,
  `TMP_ID` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LINK_IBLOCK_ID` int(18) DEFAULT NULL,
  `WITH_DESCRIPTION` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SEARCHABLE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `FILTRABLE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `IS_REQUIRED` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VERSION` int(11) NOT NULL DEFAULT '1',
  `USER_TYPE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_TYPE_SETTINGS` text COLLATE utf8_unicode_ci,
  `HINT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_iblock_property_1` (`IBLOCK_ID`),
  KEY `ix_iblock_property_3` (`LINK_IBLOCK_ID`),
  KEY `ix_iblock_property_2` (`CODE`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_property`
--

LOCK TABLES `b_iblock_property` WRITE;
/*!40000 ALTER TABLE `b_iblock_property` DISABLE KEYS */;
INSERT INTO `b_iblock_property` VALUES (1,'2016-08-21 11:07:26',4,'ФИО','Y',500,'FIO','','S',1,30,'L','N',NULL,'',5,NULL,0,'N','N','N','N',2,NULL,NULL,''),(2,'2016-08-21 11:30:21',5,'Выводить на главной','Y',500,'IN_TOP','','L',1,30,'C','N',NULL,'',5,NULL,0,'N','N','N','N',2,NULL,NULL,''),(3,'2016-10-23 15:50:16',5,'Программа','Y',500,'PROGRAM','a:2:{s:4:\"TEXT\";s:0:\"\";s:4:\"TYPE\";s:4:\"HTML\";}','S',1,30,'L','N',NULL,'',5,NULL,0,'N','N','N','N',2,'HTML','a:1:{s:6:\"height\";i:200;}',''),(4,'2016-10-23 15:50:16',5,'Стоимость','Y',500,'PRICE','a:2:{s:4:\"TEXT\";s:0:\"\";s:4:\"TYPE\";s:4:\"HTML\";}','S',1,30,'L','N',NULL,'',5,NULL,0,'N','N','N','N',2,'HTML','a:1:{s:6:\"height\";i:200;}',''),(5,'2016-10-23 15:50:16',5,'Галерея','Y',500,'GALLERY','','G',1,30,'L','N',NULL,'',5,NULL,6,'N','N','N','N',2,NULL,NULL,''),(6,'2016-10-23 15:50:16',5,'Фотографии','Y',500,'IMAGES','','E',1,30,'L','Y',NULL,'',5,NULL,6,'N','N','N','N',2,NULL,NULL,'');
/*!40000 ALTER TABLE `b_iblock_property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_property_enum`
--

DROP TABLE IF EXISTS `b_iblock_property_enum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_property_enum` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PROPERTY_ID` int(11) NOT NULL,
  `VALUE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DEF` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SORT` int(11) NOT NULL DEFAULT '500',
  `XML_ID` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `TMP_ID` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_iblock_property_enum` (`PROPERTY_ID`,`XML_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_property_enum`
--

LOCK TABLES `b_iblock_property_enum` WRITE;
/*!40000 ALTER TABLE `b_iblock_property_enum` DISABLE KEYS */;
INSERT INTO `b_iblock_property_enum` VALUES (1,2,'Y','N',500,'Y',NULL);
/*!40000 ALTER TABLE `b_iblock_property_enum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_right`
--

DROP TABLE IF EXISTS `b_iblock_right`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_right` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IBLOCK_ID` int(11) NOT NULL,
  `GROUP_CODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_TYPE` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `DO_INHERIT` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `TASK_ID` int(11) NOT NULL,
  `OP_SREAD` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `OP_EREAD` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `XML_ID` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_iblock_right_iblock_id` (`IBLOCK_ID`,`ENTITY_TYPE`,`ENTITY_ID`),
  KEY `ix_b_iblock_right_group_code` (`GROUP_CODE`,`IBLOCK_ID`),
  KEY `ix_b_iblock_right_entity` (`ENTITY_ID`,`ENTITY_TYPE`),
  KEY `ix_b_iblock_right_op_eread` (`ID`,`OP_EREAD`,`GROUP_CODE`),
  KEY `ix_b_iblock_right_op_sread` (`ID`,`OP_SREAD`,`GROUP_CODE`),
  KEY `ix_b_iblock_right_task_id` (`TASK_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_right`
--

LOCK TABLES `b_iblock_right` WRITE;
/*!40000 ALTER TABLE `b_iblock_right` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_right` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_rss`
--

DROP TABLE IF EXISTS `b_iblock_rss`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_rss` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IBLOCK_ID` int(11) NOT NULL,
  `NODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `NODE_VALUE` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_rss`
--

LOCK TABLES `b_iblock_rss` WRITE;
/*!40000 ALTER TABLE `b_iblock_rss` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_rss` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_section`
--

DROP TABLE IF EXISTS `b_iblock_section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_section` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `MODIFIED_BY` int(18) DEFAULT NULL,
  `DATE_CREATE` datetime DEFAULT NULL,
  `CREATED_BY` int(18) DEFAULT NULL,
  `IBLOCK_ID` int(11) NOT NULL,
  `IBLOCK_SECTION_ID` int(11) DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `GLOBAL_ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `SORT` int(11) NOT NULL DEFAULT '500',
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PICTURE` int(18) DEFAULT NULL,
  `LEFT_MARGIN` int(18) DEFAULT NULL,
  `RIGHT_MARGIN` int(18) DEFAULT NULL,
  `DEPTH_LEVEL` int(18) DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `DESCRIPTION_TYPE` char(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `SEARCHABLE_CONTENT` text COLLATE utf8_unicode_ci,
  `CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TMP_ID` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DETAIL_PICTURE` int(18) DEFAULT NULL,
  `SOCNET_GROUP_ID` int(18) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_iblock_section_1` (`IBLOCK_ID`,`IBLOCK_SECTION_ID`),
  KEY `ix_iblock_section_depth_level` (`IBLOCK_ID`,`DEPTH_LEVEL`),
  KEY `ix_iblock_section_left_margin` (`IBLOCK_ID`,`LEFT_MARGIN`,`RIGHT_MARGIN`),
  KEY `ix_iblock_section_right_margin` (`IBLOCK_ID`,`RIGHT_MARGIN`,`LEFT_MARGIN`),
  KEY `ix_iblock_section_code` (`IBLOCK_ID`,`CODE`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_section`
--

LOCK TABLES `b_iblock_section` WRITE;
/*!40000 ALTER TABLE `b_iblock_section` DISABLE KEYS */;
INSERT INTO `b_iblock_section` VALUES (1,'2016-10-23 15:57:46',1,'2016-10-23 18:57:46',1,6,NULL,'Y','Y',500,'Экскурсия 5',NULL,1,2,1,'','text','ЭКСКУРСИЯ 5\r\n','',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `b_iblock_section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_section_element`
--

DROP TABLE IF EXISTS `b_iblock_section_element`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_section_element` (
  `IBLOCK_SECTION_ID` int(11) NOT NULL,
  `IBLOCK_ELEMENT_ID` int(11) NOT NULL,
  `ADDITIONAL_PROPERTY_ID` int(18) DEFAULT NULL,
  UNIQUE KEY `ux_iblock_section_element` (`IBLOCK_SECTION_ID`,`IBLOCK_ELEMENT_ID`,`ADDITIONAL_PROPERTY_ID`),
  KEY `UX_IBLOCK_SECTION_ELEMENT2` (`IBLOCK_ELEMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_section_element`
--

LOCK TABLES `b_iblock_section_element` WRITE;
/*!40000 ALTER TABLE `b_iblock_section_element` DISABLE KEYS */;
INSERT INTO `b_iblock_section_element` VALUES (1,16,5),(1,19,NULL),(1,20,NULL);
/*!40000 ALTER TABLE `b_iblock_section_element` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_section_iprop`
--

DROP TABLE IF EXISTS `b_iblock_section_iprop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_section_iprop` (
  `IBLOCK_ID` int(11) NOT NULL,
  `SECTION_ID` int(11) NOT NULL,
  `IPROP_ID` int(11) NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`SECTION_ID`,`IPROP_ID`),
  KEY `ix_b_iblock_section_iprop_0` (`IPROP_ID`),
  KEY `ix_b_iblock_section_iprop_1` (`IBLOCK_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_section_iprop`
--

LOCK TABLES `b_iblock_section_iprop` WRITE;
/*!40000 ALTER TABLE `b_iblock_section_iprop` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_section_iprop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_section_property`
--

DROP TABLE IF EXISTS `b_iblock_section_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_section_property` (
  `IBLOCK_ID` int(11) NOT NULL,
  `SECTION_ID` int(11) NOT NULL,
  `PROPERTY_ID` int(11) NOT NULL,
  `SMART_FILTER` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DISPLAY_TYPE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DISPLAY_EXPANDED` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FILTER_HINT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`IBLOCK_ID`,`SECTION_ID`,`PROPERTY_ID`),
  KEY `ix_b_iblock_section_property_1` (`PROPERTY_ID`),
  KEY `ix_b_iblock_section_property_2` (`SECTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_section_property`
--

LOCK TABLES `b_iblock_section_property` WRITE;
/*!40000 ALTER TABLE `b_iblock_section_property` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_section_property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_section_right`
--

DROP TABLE IF EXISTS `b_iblock_section_right`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_section_right` (
  `IBLOCK_ID` int(11) NOT NULL,
  `SECTION_ID` int(11) NOT NULL,
  `RIGHT_ID` int(11) NOT NULL,
  `IS_INHERITED` char(1) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`RIGHT_ID`,`SECTION_ID`),
  KEY `ix_b_iblock_section_right_1` (`SECTION_ID`,`IBLOCK_ID`),
  KEY `ix_b_iblock_section_right_2` (`IBLOCK_ID`,`RIGHT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_section_right`
--

LOCK TABLES `b_iblock_section_right` WRITE;
/*!40000 ALTER TABLE `b_iblock_section_right` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_section_right` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_sequence`
--

DROP TABLE IF EXISTS `b_iblock_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_sequence` (
  `IBLOCK_ID` int(18) NOT NULL,
  `CODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SEQ_VALUE` int(11) DEFAULT NULL,
  PRIMARY KEY (`IBLOCK_ID`,`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_sequence`
--

LOCK TABLES `b_iblock_sequence` WRITE;
/*!40000 ALTER TABLE `b_iblock_sequence` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_site`
--

DROP TABLE IF EXISTS `b_iblock_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_site` (
  `IBLOCK_ID` int(18) NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`IBLOCK_ID`,`SITE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_site`
--

LOCK TABLES `b_iblock_site` WRITE;
/*!40000 ALTER TABLE `b_iblock_site` DISABLE KEYS */;
INSERT INTO `b_iblock_site` VALUES (3,'s1'),(4,'s1'),(5,'s1'),(6,'s1');
/*!40000 ALTER TABLE `b_iblock_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_type`
--

DROP TABLE IF EXISTS `b_iblock_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_type` (
  `ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SECTIONS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `EDIT_FILE_BEFORE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EDIT_FILE_AFTER` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IN_RSS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SORT` int(18) NOT NULL DEFAULT '500',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_type`
--

LOCK TABLES `b_iblock_type` WRITE;
/*!40000 ALTER TABLE `b_iblock_type` DISABLE KEYS */;
INSERT INTO `b_iblock_type` VALUES ('info','Y','','','N',500),('social','Y','','','N',500);
/*!40000 ALTER TABLE `b_iblock_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_type_lang`
--

DROP TABLE IF EXISTS `b_iblock_type_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_type_lang` (
  `IBLOCK_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `SECTION_NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ELEMENT_NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_type_lang`
--

LOCK TABLES `b_iblock_type_lang` WRITE;
/*!40000 ALTER TABLE `b_iblock_type_lang` DISABLE KEYS */;
INSERT INTO `b_iblock_type_lang` VALUES ('info','ru','Информация','','Информация'),('info','en','Information','','Information'),('social','ru','Социальная активность','',''),('social','en','Social activity','','');
/*!40000 ALTER TABLE `b_iblock_type_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_lang`
--

DROP TABLE IF EXISTS `b_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_lang` (
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `SORT` int(18) NOT NULL DEFAULT '100',
  `DEF` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `DIR` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `FORMAT_DATE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FORMAT_DATETIME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FORMAT_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WEEK_START` int(11) DEFAULT NULL,
  `CHARSET` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `DOC_ROOT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DOMAIN_LIMITED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SERVER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SITE_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EMAIL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CULTURE_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`LID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_lang`
--

LOCK TABLES `b_lang` WRITE;
/*!40000 ALTER TABLE `b_lang` DISABLE KEYS */;
INSERT INTO `b_lang` VALUES ('s1',1,'Y','Y','Surya Travels','/',NULL,NULL,NULL,NULL,NULL,'ru','','N','','Surya Travels','',1);
/*!40000 ALTER TABLE `b_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_lang_domain`
--

DROP TABLE IF EXISTS `b_lang_domain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_lang_domain` (
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `DOMAIN` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`LID`,`DOMAIN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_lang_domain`
--

LOCK TABLES `b_lang_domain` WRITE;
/*!40000 ALTER TABLE `b_lang_domain` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_lang_domain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_language`
--

DROP TABLE IF EXISTS `b_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_language` (
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `SORT` int(11) NOT NULL DEFAULT '100',
  `DEF` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `FORMAT_DATE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FORMAT_DATETIME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FORMAT_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WEEK_START` int(11) DEFAULT NULL,
  `CHARSET` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DIRECTION` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CULTURE_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`LID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_language`
--

LOCK TABLES `b_language` WRITE;
/*!40000 ALTER TABLE `b_language` DISABLE KEYS */;
INSERT INTO `b_language` VALUES ('en',2,'N','Y','English',NULL,NULL,NULL,NULL,NULL,NULL,2),('ru',1,'Y','Y','Russian',NULL,NULL,NULL,NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `b_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_medialib_collection`
--

DROP TABLE IF EXISTS `b_medialib_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_medialib_collection` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `DATE_UPDATE` datetime NOT NULL,
  `OWNER_ID` int(11) DEFAULT NULL,
  `PARENT_ID` int(11) DEFAULT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `KEYWORDS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ITEMS_COUNT` int(11) DEFAULT NULL,
  `ML_TYPE` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_medialib_collection`
--

LOCK TABLES `b_medialib_collection` WRITE;
/*!40000 ALTER TABLE `b_medialib_collection` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_medialib_collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_medialib_collection_item`
--

DROP TABLE IF EXISTS `b_medialib_collection_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_medialib_collection_item` (
  `COLLECTION_ID` int(11) NOT NULL,
  `ITEM_ID` int(11) NOT NULL,
  PRIMARY KEY (`ITEM_ID`,`COLLECTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_medialib_collection_item`
--

LOCK TABLES `b_medialib_collection_item` WRITE;
/*!40000 ALTER TABLE `b_medialib_collection_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_medialib_collection_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_medialib_item`
--

DROP TABLE IF EXISTS `b_medialib_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_medialib_item` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ITEM_TYPE` char(30) COLLATE utf8_unicode_ci NOT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `DATE_CREATE` datetime NOT NULL,
  `DATE_UPDATE` datetime NOT NULL,
  `SOURCE_ID` int(11) NOT NULL,
  `KEYWORDS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SEARCHABLE_CONTENT` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_medialib_item`
--

LOCK TABLES `b_medialib_item` WRITE;
/*!40000 ALTER TABLE `b_medialib_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_medialib_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_medialib_type`
--

DROP TABLE IF EXISTS `b_medialib_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_medialib_type` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CODE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `EXT` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SYSTEM` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_medialib_type`
--

LOCK TABLES `b_medialib_type` WRITE;
/*!40000 ALTER TABLE `b_medialib_type` DISABLE KEYS */;
INSERT INTO `b_medialib_type` VALUES (1,'image_name','image','jpg,jpeg,gif,png','Y','image_desc'),(2,'video_name','video','flv,mp4,wmv','Y','video_desc'),(3,'sound_name','sound','mp3,wma,aac','Y','sound_desc');
/*!40000 ALTER TABLE `b_medialib_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_module`
--

DROP TABLE IF EXISTS `b_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_module` (
  `ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `DATE_ACTIVE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_module`
--

LOCK TABLES `b_module` WRITE;
/*!40000 ALTER TABLE `b_module` DISABLE KEYS */;
INSERT INTO `b_module` VALUES ('bitrixcloud','2016-08-20 12:42:22'),('clouds','2016-08-20 12:42:32'),('compression','2016-08-20 12:42:40'),('fileman','2016-08-20 12:42:48'),('goa.domain','2016-08-20 16:36:58'),('highloadblock','2016-08-20 12:43:11'),('iblock','2016-08-20 12:43:33'),('main','2016-08-20 12:40:58'),('perfmon','2016-08-20 12:44:18'),('search','2016-08-20 12:44:27'),('seo','2016-08-20 12:44:39'),('socialservices','2016-08-20 12:44:48'),('translate','2016-08-20 12:44:58');
/*!40000 ALTER TABLE `b_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_module_group`
--

DROP TABLE IF EXISTS `b_module_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_module_group` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `GROUP_ID` int(11) NOT NULL,
  `G_ACCESS` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_GROUP_MODULE` (`MODULE_ID`,`GROUP_ID`,`SITE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_module_group`
--

LOCK TABLES `b_module_group` WRITE;
/*!40000 ALTER TABLE `b_module_group` DISABLE KEYS */;
INSERT INTO `b_module_group` VALUES (1,'main',5,'Q',NULL),(2,'fileman',5,'F',NULL);
/*!40000 ALTER TABLE `b_module_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_module_to_module`
--

DROP TABLE IF EXISTS `b_module_to_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_module_to_module` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `SORT` int(18) NOT NULL DEFAULT '100',
  `FROM_MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MESSAGE_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TO_MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `TO_PATH` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TO_CLASS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TO_METHOD` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TO_METHOD_ARG` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VERSION` int(18) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_module_to_module` (`FROM_MODULE_ID`(20),`MESSAGE_ID`(20),`TO_MODULE_ID`(20),`TO_CLASS`(20),`TO_METHOD`(20))
) ENGINE=InnoDB AUTO_INCREMENT=162 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_module_to_module`
--

LOCK TABLES `b_module_to_module` WRITE;
/*!40000 ALTER TABLE `b_module_to_module` DISABLE KEYS */;
INSERT INTO `b_module_to_module` VALUES (1,'2016-08-20 12:40:58',100,'iblock','OnIBlockPropertyBuildList','main','/modules/main/tools/prop_userid.php','CIBlockPropertyUserID','GetUserTypeDescription','',1),(2,'2016-08-20 12:40:58',100,'main','OnUserDelete','main','/modules/main/classes/mysql/favorites.php','CFavorites','OnUserDelete','',1),(3,'2016-08-20 12:40:58',100,'main','OnLanguageDelete','main','/modules/main/classes/mysql/favorites.php','CFavorites','OnLanguageDelete','',1),(4,'2016-08-20 12:40:59',100,'main','OnUserDelete','main','','CUserOptions','OnUserDelete','',1),(5,'2016-08-20 12:40:59',100,'main','OnChangeFile','main','','CMain','OnChangeFileComponent','',1),(6,'2016-08-20 12:40:59',100,'main','OnUserTypeRightsCheck','main','','CUser','UserTypeRightsCheck','',1),(7,'2016-08-20 12:40:59',100,'main','OnUserLogin','main','','UpdateTools','CheckUpdates','',1),(8,'2016-08-20 12:40:59',100,'main','OnModuleUpdate','main','','UpdateTools','SetUpdateResult','',1),(9,'2016-08-20 12:40:59',100,'main','OnUpdateCheck','main','','UpdateTools','SetUpdateError','',1),(10,'2016-08-20 12:40:59',100,'main','OnPanelCreate','main','','CUndo','CheckNotifyMessage','',1),(11,'2016-08-20 12:40:59',100,'main','OnAfterAddRating','main','','CRatingsComponentsMain','OnAfterAddRating','',1),(12,'2016-08-20 12:40:59',100,'main','OnAfterUpdateRating','main','','CRatingsComponentsMain','OnAfterUpdateRating','',1),(13,'2016-08-20 12:40:59',100,'main','OnSetRatingsConfigs','main','','CRatingsComponentsMain','OnSetRatingConfigs','',1),(14,'2016-08-20 12:40:59',100,'main','OnGetRatingsConfigs','main','','CRatingsComponentsMain','OnGetRatingConfigs','',1),(15,'2016-08-20 12:40:59',100,'main','OnGetRatingsObjects','main','','CRatingsComponentsMain','OnGetRatingObject','',1),(16,'2016-08-20 12:40:59',100,'main','OnGetRatingContentOwner','main','','CRatingsComponentsMain','OnGetRatingContentOwner','',1),(17,'2016-08-20 12:40:59',100,'main','OnAfterAddRatingRule','main','','CRatingRulesMain','OnAfterAddRatingRule','',1),(18,'2016-08-20 12:40:59',100,'main','OnAfterUpdateRatingRule','main','','CRatingRulesMain','OnAfterUpdateRatingRule','',1),(19,'2016-08-20 12:40:59',100,'main','OnGetRatingRuleObjects','main','','CRatingRulesMain','OnGetRatingRuleObjects','',1),(20,'2016-08-20 12:40:59',100,'main','OnGetRatingRuleConfigs','main','','CRatingRulesMain','OnGetRatingRuleConfigs','',1),(21,'2016-08-20 12:40:59',100,'main','OnAfterUserAdd','main','','CRatings','OnAfterUserRegister','',1),(22,'2016-08-20 12:40:59',100,'main','OnUserDelete','main','','CRatings','OnUserDelete','',1),(23,'2016-08-20 12:40:59',100,'main','OnUserDelete','main','','CAccess','OnUserDelete','',1),(24,'2016-08-20 12:40:59',100,'main','OnAfterGroupAdd','main','','CGroupAuthProvider','OnAfterGroupAdd','',1),(25,'2016-08-20 12:40:59',100,'main','OnBeforeGroupUpdate','main','','CGroupAuthProvider','OnBeforeGroupUpdate','',1),(26,'2016-08-20 12:40:59',100,'main','OnBeforeGroupDelete','main','','CGroupAuthProvider','OnBeforeGroupDelete','',1),(27,'2016-08-20 12:40:59',100,'main','OnAfterSetUserGroup','main','','CGroupAuthProvider','OnAfterSetUserGroup','',1),(28,'2016-08-20 12:40:59',100,'main','OnUserLogin','main','','CGroupAuthProvider','OnUserLogin','',1),(29,'2016-08-20 12:40:59',100,'main','OnEventLogGetAuditTypes','main','','CEventMain','GetAuditTypes','',1),(30,'2016-08-20 12:40:59',100,'main','OnEventLogGetAuditHandlers','main','','CEventMain','MakeMainObject','',1),(31,'2016-08-20 12:40:59',100,'perfmon','OnGetTableSchema','main','','CTableSchema','OnGetTableSchema','',1),(32,'2016-08-20 12:40:59',100,'sender','OnConnectorList','main','','\\Bitrix\\Main\\SenderEventHandler','onConnectorListUser','',1),(33,'2016-08-20 12:40:59',110,'main','OnUserTypeBuildList','main','','CUserTypeString','GetUserTypeDescription','',1),(34,'2016-08-20 12:40:59',120,'main','OnUserTypeBuildList','main','','CUserTypeInteger','GetUserTypeDescription','',1),(35,'2016-08-20 12:40:59',130,'main','OnUserTypeBuildList','main','','CUserTypeDouble','GetUserTypeDescription','',1),(36,'2016-08-20 12:40:59',140,'main','OnUserTypeBuildList','main','','CUserTypeDateTime','GetUserTypeDescription','',1),(37,'2016-08-20 12:40:59',145,'main','OnUserTypeBuildList','main','','CUserTypeDate','GetUserTypeDescription','',1),(38,'2016-08-20 12:41:00',150,'main','OnUserTypeBuildList','main','','CUserTypeBoolean','GetUserTypeDescription','',1),(39,'2016-08-20 12:41:00',160,'main','OnUserTypeBuildList','main','','CUserTypeFile','GetUserTypeDescription','',1),(40,'2016-08-20 12:41:00',170,'main','OnUserTypeBuildList','main','','CUserTypeEnum','GetUserTypeDescription','',1),(41,'2016-08-20 12:41:00',180,'main','OnUserTypeBuildList','main','','CUserTypeIBlockSection','GetUserTypeDescription','',1),(42,'2016-08-20 12:41:00',190,'main','OnUserTypeBuildList','main','','CUserTypeIBlockElement','GetUserTypeDescription','',1),(43,'2016-08-20 12:41:00',200,'main','OnUserTypeBuildList','main','','CUserTypeStringFormatted','GetUserTypeDescription','',1),(44,'2016-08-20 12:41:00',210,'main','OnUserTypeBuildList','main','','\\Bitrix\\Main\\UrlPreview\\UrlPreviewUserType','getUserTypeDescription','',1),(45,'2016-08-20 12:41:00',100,'main','OnBeforeEndBufferContent','main','','\\Bitrix\\Main\\Analytics\\Counter','onBeforeEndBufferContent','',1),(46,'2016-08-20 12:41:00',100,'main','OnBeforeRestartBuffer','main','','\\Bitrix\\Main\\Analytics\\Counter','onBeforeRestartBuffer','',1),(47,'2016-08-20 12:41:00',100,'disk','onAfterAjaxActionCreateFolderWithSharing','main','','\\Bitrix\\Main\\FinderDestTable','onAfterDiskAjaxAction','',1),(48,'2016-08-20 12:41:00',100,'disk','onAfterAjaxActionAppendSharing','main','','\\Bitrix\\Main\\FinderDestTable','onAfterDiskAjaxAction','',1),(49,'2016-08-20 12:41:00',100,'disk','onAfterAjaxActionChangeSharingAndRights','main','','\\Bitrix\\Main\\FinderDestTable','onAfterDiskAjaxAction','',1),(50,'2016-08-20 12:41:00',100,'socialnetwork','OnSocNetLogDelete','main','','CUserCounter','OnSocNetLogDelete','',1),(51,'2016-08-20 12:41:00',100,'socialnetwork','OnSocNetLogCommentDelete','main','','CUserCounter','OnSocNetLogCommentDelete','',1),(52,'2016-08-20 12:41:00',100,'sale','OnBasketAdd','main','','\\Bitrix\\Main\\Analytics\\Catalog','catchCatalogBasket','',1),(53,'2016-08-20 12:41:00',100,'sale','OnOrderSave','main','','\\Bitrix\\Main\\Analytics\\Catalog','catchCatalogOrder','',1),(54,'2016-08-20 12:41:01',100,'sale','OnSalePayOrder','main','','\\Bitrix\\Main\\Analytics\\Catalog','catchCatalogOrderPayment','',1),(56,'2016-08-20 12:42:22',100,'main','OnAdminInformerInsertItems','bitrixcloud','','CBitrixCloudCDN','OnAdminInformerInsertItems','',1),(57,'2016-08-20 12:42:22',100,'main','OnAdminInformerInsertItems','bitrixcloud','','CBitrixCloudBackup','OnAdminInformerInsertItems','',1),(58,'2016-08-20 12:42:22',100,'mobileapp','OnBeforeAdminMobileMenuBuild','bitrixcloud','','CBitrixCloudMobile','OnBeforeAdminMobileMenuBuild','',1),(59,'2016-08-20 12:42:32',100,'main','OnEventLogGetAuditTypes','clouds','','CCloudStorage','GetAuditTypes','',1),(60,'2016-08-20 12:42:32',100,'main','OnBeforeProlog','clouds','','CCloudStorage','OnBeforeProlog','',1),(61,'2016-08-20 12:42:32',100,'main','OnAdminListDisplay','clouds','','CCloudStorage','OnAdminListDisplay','',1),(62,'2016-08-20 12:42:32',100,'main','OnBuildGlobalMenu','clouds','','CCloudStorage','OnBuildGlobalMenu','',1),(63,'2016-08-20 12:42:32',100,'main','OnFileSave','clouds','','CCloudStorage','OnFileSave','',1),(64,'2016-08-20 12:42:32',100,'main','OnGetFileSRC','clouds','','CCloudStorage','OnGetFileSRC','',1),(65,'2016-08-20 12:42:32',100,'main','OnFileCopy','clouds','','CCloudStorage','OnFileCopy','',1),(66,'2016-08-20 12:42:32',100,'main','OnFileDelete','clouds','','CCloudStorage','OnFileDelete','',1),(67,'2016-08-20 12:42:32',100,'main','OnMakeFileArray','clouds','','CCloudStorage','OnMakeFileArray','',1),(68,'2016-08-20 12:42:33',100,'main','OnBeforeResizeImage','clouds','','CCloudStorage','OnBeforeResizeImage','',1),(69,'2016-08-20 12:42:33',100,'main','OnAfterResizeImage','clouds','','CCloudStorage','OnAfterResizeImage','',1),(70,'2016-08-20 12:42:33',100,'clouds','OnGetStorageService','clouds','','CCloudStorageService_AmazonS3','GetObject','',1),(71,'2016-08-20 12:42:33',100,'clouds','OnGetStorageService','clouds','','CCloudStorageService_GoogleStorage','GetObject','',1),(72,'2016-08-20 12:42:33',100,'clouds','OnGetStorageService','clouds','','CCloudStorageService_OpenStackStorage','GetObject','',1),(73,'2016-08-20 12:42:33',100,'clouds','OnGetStorageService','clouds','','CCloudStorageService_RackSpaceCloudFiles','GetObject','',1),(74,'2016-08-20 12:42:33',100,'clouds','OnGetStorageService','clouds','','CCloudStorageService_ClodoRU','GetObject','',1),(75,'2016-08-20 12:42:33',100,'clouds','OnGetStorageService','clouds','','CCloudStorageService_Selectel','GetObject','',1),(76,'2016-08-20 12:42:41',1,'main','OnPageStart','compression','','CCompress','OnPageStart','',1),(77,'2016-08-20 12:42:41',10000,'main','OnAfterEpilog','compression','','CCompress','OnAfterEpilog','',1),(78,'2016-08-20 12:42:48',100,'main','OnGroupDelete','fileman','','CFileman','OnGroupDelete','',1),(79,'2016-08-20 12:42:48',100,'main','OnPanelCreate','fileman','','CFileman','OnPanelCreate','',1),(80,'2016-08-20 12:42:49',100,'main','OnModuleUpdate','fileman','','CFileman','OnModuleUpdate','',1),(81,'2016-08-20 12:42:49',100,'main','OnModuleInstalled','fileman','','CFileman','ClearComponentsListCache','',1),(82,'2016-08-20 12:42:49',100,'iblock','OnIBlockPropertyBuildList','fileman','','CIBlockPropertyMapGoogle','GetUserTypeDescription','',1),(83,'2016-08-20 12:42:49',100,'iblock','OnIBlockPropertyBuildList','fileman','','CIBlockPropertyMapYandex','GetUserTypeDescription','',1),(84,'2016-08-20 12:42:49',100,'iblock','OnIBlockPropertyBuildList','fileman','','CIBlockPropertyVideo','GetUserTypeDescription','',1),(85,'2016-08-20 12:42:49',100,'main','OnUserTypeBuildList','fileman','','CUserTypeVideo','GetUserTypeDescription','',1),(86,'2016-08-20 12:42:49',100,'main','OnEventLogGetAuditTypes','fileman','','CEventFileman','GetAuditTypes','',1),(87,'2016-08-20 12:42:49',100,'main','OnEventLogGetAuditHandlers','fileman','','CEventFileman','MakeFilemanObject','',1),(88,'2016-08-20 12:43:11',100,'main','OnBeforeUserTypeAdd','highloadblock','','\\Bitrix\\Highloadblock\\HighloadBlockTable','OnBeforeUserTypeAdd','',1),(89,'2016-08-20 12:43:11',100,'main','OnAfterUserTypeAdd','highloadblock','','\\Bitrix\\Highloadblock\\HighloadBlockTable','onAfterUserTypeAdd','',1),(90,'2016-08-20 12:43:11',100,'main','OnBeforeUserTypeDelete','highloadblock','','\\Bitrix\\Highloadblock\\HighloadBlockTable','OnBeforeUserTypeDelete','',1),(91,'2016-08-20 12:43:11',100,'main','OnUserTypeBuildList','highloadblock','','CUserTypeHlblock','GetUserTypeDescription','',1),(92,'2016-08-20 12:43:11',100,'iblock','OnIBlockPropertyBuildList','highloadblock','','CIBlockPropertyDirectory','GetUserTypeDescription','',1),(93,'2016-08-20 12:43:34',100,'main','OnGroupDelete','iblock','','CIBlock','OnGroupDelete','',1),(94,'2016-08-20 12:43:34',100,'main','OnBeforeLangDelete','iblock','','CIBlock','OnBeforeLangDelete','',1),(95,'2016-08-20 12:43:34',100,'main','OnLangDelete','iblock','','CIBlock','OnLangDelete','',1),(96,'2016-08-20 12:43:34',100,'main','OnUserTypeRightsCheck','iblock','','CIBlockSection','UserTypeRightsCheck','',1),(97,'2016-08-20 12:43:34',100,'search','OnReindex','iblock','','CIBlock','OnSearchReindex','',1),(98,'2016-08-20 12:43:34',100,'search','OnSearchGetURL','iblock','','CIBlock','OnSearchGetURL','',1),(99,'2016-08-20 12:43:34',100,'main','OnEventLogGetAuditTypes','iblock','','CIBlock','GetAuditTypes','',1),(100,'2016-08-20 12:43:34',100,'main','OnEventLogGetAuditHandlers','iblock','','CEventIBlock','MakeIBlockObject','',1),(101,'2016-08-20 12:43:34',200,'main','OnGetRatingContentOwner','iblock','','CRatingsComponentsIBlock','OnGetRatingContentOwner','',1),(102,'2016-08-20 12:43:34',100,'main','OnTaskOperationsChanged','iblock','','CIBlockRightsStorage','OnTaskOperationsChanged','',1),(103,'2016-08-20 12:43:34',100,'main','OnGroupDelete','iblock','','CIBlockRightsStorage','OnGroupDelete','',1),(104,'2016-08-20 12:43:34',100,'main','OnUserDelete','iblock','','CIBlockRightsStorage','OnUserDelete','',1),(105,'2016-08-20 12:43:34',100,'perfmon','OnGetTableSchema','iblock','','iblock','OnGetTableSchema','',1),(106,'2016-08-20 12:43:34',100,'sender','OnConnectorList','iblock','','\\Bitrix\\Iblock\\SenderEventHandler','onConnectorListIblock','',1),(107,'2016-08-20 12:43:34',10,'iblock','OnIBlockPropertyBuildList','iblock','','CIBlockProperty','_Date_GetUserTypeDescription','',1),(108,'2016-08-20 12:43:34',20,'iblock','OnIBlockPropertyBuildList','iblock','','CIBlockProperty','_DateTime_GetUserTypeDescription','',1),(109,'2016-08-20 12:43:34',30,'iblock','OnIBlockPropertyBuildList','iblock','','CIBlockProperty','_XmlID_GetUserTypeDescription','',1),(110,'2016-08-20 12:43:34',40,'iblock','OnIBlockPropertyBuildList','iblock','','CIBlockProperty','_FileMan_GetUserTypeDescription','',1),(111,'2016-08-20 12:43:34',50,'iblock','OnIBlockPropertyBuildList','iblock','','CIBlockProperty','_HTML_GetUserTypeDescription','',1),(112,'2016-08-20 12:43:34',60,'iblock','OnIBlockPropertyBuildList','iblock','','CIBlockProperty','_ElementList_GetUserTypeDescription','',1),(113,'2016-08-20 12:43:34',70,'iblock','OnIBlockPropertyBuildList','iblock','','CIBlockProperty','_Sequence_GetUserTypeDescription','',1),(114,'2016-08-20 12:43:34',80,'iblock','OnIBlockPropertyBuildList','iblock','','CIBlockProperty','_ElementAutoComplete_GetUserTypeDescription','',1),(115,'2016-08-20 12:43:34',90,'iblock','OnIBlockPropertyBuildList','iblock','','CIBlockProperty','_SKU_GetUserTypeDescription','',1),(116,'2016-08-20 12:43:34',100,'iblock','OnIBlockPropertyBuildList','iblock','','CIBlockProperty','_SectionAutoComplete_GetUserTypeDescription','',1),(117,'2016-08-20 12:44:18',100,'perfmon','OnGetTableSchema','perfmon','','perfmon','OnGetTableSchema','',1),(118,'2016-08-20 12:44:27',100,'main','OnChangePermissions','search','','CSearch','OnChangeFilePermissions','',1),(119,'2016-08-20 12:44:27',100,'main','OnChangeFile','search','','CSearch','OnChangeFile','',1),(120,'2016-08-20 12:44:27',100,'main','OnGroupDelete','search','','CSearch','OnGroupDelete','',1),(121,'2016-08-20 12:44:27',100,'main','OnLangDelete','search','','CSearch','OnLangDelete','',1),(122,'2016-08-20 12:44:27',100,'main','OnAfterUserUpdate','search','','CSearchUser','OnAfterUserUpdate','',1),(123,'2016-08-20 12:44:27',100,'main','OnUserDelete','search','','CSearchUser','DeleteByUserID','',1),(124,'2016-08-20 12:44:28',100,'cluster','OnGetTableList','search','','search','OnGetTableList','',1),(125,'2016-08-20 12:44:28',100,'perfmon','OnGetTableSchema','search','','search','OnGetTableSchema','',1),(126,'2016-08-20 12:44:28',90,'main','OnEpilog','search','','CSearchStatistic','OnEpilog','',1),(127,'2016-08-20 12:44:40',100,'main','OnPanelCreate','seo','','CSeoEventHandlers','SeoOnPanelCreate','',2),(128,'2016-08-20 12:44:40',100,'fileman','OnIncludeHTMLEditorScript','seo','','CSeoEventHandlers','OnIncludeHTMLEditorScript','',2),(129,'2016-08-20 12:44:40',100,'fileman','OnBeforeHTMLEditorScriptRuns','seo','','CSeoEventHandlers','OnBeforeHTMLEditorScriptRuns','',2),(130,'2016-08-20 12:44:40',100,'iblock','OnAfterIBlockSectionAdd','seo','','\\Bitrix\\Seo\\SitemapIblock','addSection','',2),(131,'2016-08-20 12:44:40',100,'iblock','OnAfterIBlockElementAdd','seo','','\\Bitrix\\Seo\\SitemapIblock','addElement','',2),(132,'2016-08-20 12:44:40',100,'iblock','OnBeforeIBlockSectionDelete','seo','','\\Bitrix\\Seo\\SitemapIblock','beforeDeleteSection','',2),(133,'2016-08-20 12:44:40',100,'iblock','OnBeforeIBlockElementDelete','seo','','\\Bitrix\\Seo\\SitemapIblock','beforeDeleteElement','',2),(134,'2016-08-20 12:44:41',100,'iblock','OnAfterIBlockSectionDelete','seo','','\\Bitrix\\Seo\\SitemapIblock','deleteSection','',2),(135,'2016-08-20 12:44:41',100,'iblock','OnAfterIBlockElementDelete','seo','','\\Bitrix\\Seo\\SitemapIblock','deleteElement','',2),(136,'2016-08-20 12:44:41',100,'iblock','OnBeforeIBlockSectionUpdate','seo','','\\Bitrix\\Seo\\SitemapIblock','beforeUpdateSection','',2),(137,'2016-08-20 12:44:41',100,'iblock','OnBeforeIBlockElementUpdate','seo','','\\Bitrix\\Seo\\SitemapIblock','beforeUpdateElement','',2),(138,'2016-08-20 12:44:41',100,'iblock','OnAfterIBlockSectionUpdate','seo','','\\Bitrix\\Seo\\SitemapIblock','updateSection','',2),(139,'2016-08-20 12:44:41',100,'iblock','OnAfterIBlockElementUpdate','seo','','\\Bitrix\\Seo\\SitemapIblock','updateElement','',2),(140,'2016-08-20 12:44:41',100,'forum','onAfterTopicAdd','seo','','\\Bitrix\\Seo\\SitemapForum','addTopic','',2),(141,'2016-08-20 12:44:41',100,'forum','onAfterTopicUpdate','seo','','\\Bitrix\\Seo\\SitemapForum','updateTopic','',2),(142,'2016-08-20 12:44:41',100,'forum','onAfterTopicDelete','seo','','\\Bitrix\\Seo\\SitemapForum','deleteTopic','',2),(143,'2016-08-20 12:44:41',100,'main','OnAdminIBlockElementEdit','seo','','\\Bitrix\\Seo\\AdvTabEngine','eventHandler','',2),(144,'2016-08-20 12:44:41',100,'main','OnBeforeProlog','seo','','\\Bitrix\\Seo\\AdvSession','checkSession','',2),(145,'2016-08-20 12:44:41',100,'sale','OnOrderSave','seo','','\\Bitrix\\Seo\\AdvSession','onOrderSave','',2),(146,'2016-08-20 12:44:41',100,'sale','OnBasketOrder','seo','','\\Bitrix\\Seo\\AdvSession','onBasketOrder','',2),(147,'2016-08-20 12:44:41',100,'sale','onSalePayOrder','seo','','\\Bitrix\\Seo\\AdvSession','onSalePayOrder','',2),(148,'2016-08-20 12:44:41',100,'sale','onSaleDeductOrder','seo','','\\Bitrix\\Seo\\AdvSession','onSaleDeductOrder','',2),(149,'2016-08-20 12:44:41',100,'sale','onSaleDeliveryOrder','seo','','\\Bitrix\\Seo\\AdvSession','onSaleDeliveryOrder','',2),(150,'2016-08-20 12:44:41',100,'sale','onSaleStatusOrder','seo','','\\Bitrix\\Seo\\AdvSession','onSaleStatusOrder','',2),(151,'2016-08-20 12:44:41',100,'conversion','OnSetDayContextAttributes','seo','','\\Bitrix\\Seo\\ConversionHandler','onSetDayContextAttributes','',2),(152,'2016-08-20 12:44:41',100,'conversion','OnGetAttributeTypes','seo','','\\Bitrix\\Seo\\ConversionHandler','onGetAttributeTypes','',2),(153,'2016-08-20 12:44:41',100,'catalog','OnProductUpdate','seo','','\\Bitrix\\Seo\\Adv\\Auto','checkQuantity','',2),(154,'2016-08-20 12:44:41',100,'catalog','OnProductSetAvailableUpdate','seo','','\\Bitrix\\Seo\\Adv\\Auto','checkQuantity','',2),(155,'2016-08-20 12:44:48',100,'main','OnUserDelete','socialservices','','CSocServAuthDB','OnUserDelete','',1),(156,'2016-08-20 12:44:48',100,'timeman','OnAfterTMReportDailyAdd','socialservices','','CSocServAuthDB','OnAfterTMReportDailyAdd','',1),(157,'2016-08-20 12:44:48',100,'timeman','OnAfterTMDayStart','socialservices','','CSocServAuthDB','OnAfterTMDayStart','',1),(158,'2016-08-20 12:44:48',100,'timeman','OnTimeManShow','socialservices','','CSocServEventHandlers','OnTimeManShow','',1),(159,'2016-08-20 12:44:48',100,'main','OnFindExternalUser','socialservices','','CSocServAuthDB','OnFindExternalUser','',1),(160,'2016-08-20 12:44:58',100,'main','OnPanelCreate','translate','','CTranslateEventHandlers','TranslatOnPanelCreate','',1),(161,'2016-08-20 12:46:26',100,'main','OnBeforeProlog','main','/modules/main/install/wizard_sol/panel_button.php','CWizardSolPanel','ShowPanel','',1);
/*!40000 ALTER TABLE `b_module_to_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_operation`
--

DROP TABLE IF EXISTS `b_operation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_operation` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BINDING` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'module',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_operation`
--

LOCK TABLES `b_operation` WRITE;
/*!40000 ALTER TABLE `b_operation` DISABLE KEYS */;
INSERT INTO `b_operation` VALUES (1,'edit_php','main',NULL,'module'),(2,'view_own_profile','main',NULL,'module'),(3,'edit_own_profile','main',NULL,'module'),(4,'view_all_users','main',NULL,'module'),(5,'view_groups','main',NULL,'module'),(6,'view_tasks','main',NULL,'module'),(7,'view_other_settings','main',NULL,'module'),(8,'view_subordinate_users','main',NULL,'module'),(9,'edit_subordinate_users','main',NULL,'module'),(10,'edit_all_users','main',NULL,'module'),(11,'edit_groups','main',NULL,'module'),(12,'edit_tasks','main',NULL,'module'),(13,'edit_other_settings','main',NULL,'module'),(14,'cache_control','main',NULL,'module'),(15,'lpa_template_edit','main',NULL,'module'),(16,'view_event_log','main',NULL,'module'),(17,'edit_ratings','main',NULL,'module'),(18,'manage_short_uri','main',NULL,'module'),(19,'fm_view_permission','main',NULL,'file'),(20,'fm_view_file','main',NULL,'file'),(21,'fm_view_listing','main',NULL,'file'),(22,'fm_edit_existent_folder','main',NULL,'file'),(23,'fm_create_new_file','main',NULL,'file'),(24,'fm_edit_existent_file','main',NULL,'file'),(25,'fm_create_new_folder','main',NULL,'file'),(26,'fm_delete_file','main',NULL,'file'),(27,'fm_delete_folder','main',NULL,'file'),(28,'fm_edit_in_workflow','main',NULL,'file'),(29,'fm_rename_file','main',NULL,'file'),(30,'fm_rename_folder','main',NULL,'file'),(31,'fm_upload_file','main',NULL,'file'),(32,'fm_add_to_menu','main',NULL,'file'),(33,'fm_download_file','main',NULL,'file'),(34,'fm_lpa','main',NULL,'file'),(35,'fm_edit_permission','main',NULL,'file'),(36,'clouds_browse','clouds',NULL,'module'),(37,'clouds_upload','clouds',NULL,'module'),(38,'clouds_config','clouds',NULL,'module'),(39,'fileman_view_all_settings','fileman','','module'),(40,'fileman_edit_menu_types','fileman','','module'),(41,'fileman_add_element_to_menu','fileman','','module'),(42,'fileman_edit_menu_elements','fileman','','module'),(43,'fileman_edit_existent_files','fileman','','module'),(44,'fileman_edit_existent_folders','fileman','','module'),(45,'fileman_admin_files','fileman','','module'),(46,'fileman_admin_folders','fileman','','module'),(47,'fileman_view_permissions','fileman','','module'),(48,'fileman_edit_all_settings','fileman','','module'),(49,'fileman_upload_files','fileman','','module'),(50,'fileman_view_file_structure','fileman','','module'),(51,'fileman_install_control','fileman','','module'),(52,'medialib_view_collection','fileman','','medialib'),(53,'medialib_new_collection','fileman','','medialib'),(54,'medialib_edit_collection','fileman','','medialib'),(55,'medialib_del_collection','fileman','','medialib'),(56,'medialib_access','fileman','','medialib'),(57,'medialib_new_item','fileman','','medialib'),(58,'medialib_edit_item','fileman','','medialib'),(59,'medialib_del_item','fileman','','medialib'),(60,'sticker_view','fileman','','stickers'),(61,'sticker_edit','fileman','','stickers'),(62,'sticker_new','fileman','','stickers'),(63,'sticker_del','fileman','','stickers'),(64,'section_read','iblock',NULL,'iblock'),(65,'element_read','iblock',NULL,'iblock'),(66,'section_element_bind','iblock',NULL,'iblock'),(67,'iblock_admin_display','iblock',NULL,'iblock'),(68,'element_edit','iblock',NULL,'iblock'),(69,'element_edit_price','iblock',NULL,'iblock'),(70,'element_delete','iblock',NULL,'iblock'),(71,'element_bizproc_start','iblock',NULL,'iblock'),(72,'section_edit','iblock',NULL,'iblock'),(73,'section_delete','iblock',NULL,'iblock'),(74,'section_section_bind','iblock',NULL,'iblock'),(75,'element_edit_any_wf_status','iblock',NULL,'iblock'),(76,'iblock_edit','iblock',NULL,'iblock'),(77,'iblock_delete','iblock',NULL,'iblock'),(78,'iblock_rights_edit','iblock',NULL,'iblock'),(79,'iblock_export','iblock',NULL,'iblock'),(80,'section_rights_edit','iblock',NULL,'iblock'),(81,'element_rights_edit','iblock',NULL,'iblock'),(82,'seo_settings','seo','','module'),(83,'seo_tools','seo','','module');
/*!40000 ALTER TABLE `b_operation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_option`
--

DROP TABLE IF EXISTS `b_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_option` (
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  UNIQUE KEY `ix_option` (`MODULE_ID`,`NAME`,`SITE_ID`),
  KEY `ix_option_name` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_option`
--

LOCK TABLES `b_option` WRITE;
/*!40000 ALTER TABLE `b_option` DISABLE KEYS */;
INSERT INTO `b_option` VALUES ('main','rating_authority_rating','2',NULL,NULL),('main','rating_assign_rating_group_add','1',NULL,NULL),('main','rating_assign_rating_group_delete','1',NULL,NULL),('main','rating_assign_rating_group','3',NULL,NULL),('main','rating_assign_authority_group_add','2',NULL,NULL),('main','rating_assign_authority_group_delete','2',NULL,NULL),('main','rating_assign_authority_group','4',NULL,NULL),('main','rating_community_size','1',NULL,NULL),('main','rating_community_authority','30',NULL,NULL),('main','rating_vote_weight','10',NULL,NULL),('main','rating_normalization_type','auto',NULL,NULL),('main','rating_normalization','10',NULL,NULL),('main','rating_count_vote','10',NULL,NULL),('main','rating_authority_weight_formula','Y',NULL,NULL),('main','rating_community_last_visit','90',NULL,NULL),('main','rating_text_like_y','Нравится',NULL,NULL),('main','rating_text_like_n','Не нравится',NULL,NULL),('main','rating_text_like_d','Это нравится',NULL,NULL),('main','rating_assign_type','auto',NULL,NULL),('main','rating_vote_type','like',NULL,NULL),('main','rating_self_vote','Y',NULL,NULL),('main','rating_vote_show','Y',NULL,NULL),('main','rating_vote_template','like',NULL,NULL),('main','rating_start_authority','3',NULL,NULL),('main','PARAM_MAX_SITES','2',NULL,NULL),('main','PARAM_MAX_USERS','0',NULL,NULL),('main','distributive6','Y',NULL,NULL),('main','~new_license11_sign','Y',NULL,NULL),('main','GROUP_DEFAULT_TASK','1',NULL,NULL),('main','vendor','1c_bitrix',NULL,NULL),('main','admin_lid','ru',NULL,NULL),('main','update_site','www.bitrixsoft.com',NULL,NULL),('main','update_site_ns','Y',NULL,NULL),('main','optimize_css_files','Y',NULL,NULL),('main','optimize_js_files','Y',NULL,NULL),('main','admin_passwordh','FVkQcWYUBgYtCUVcARcOCgsTAQ==',NULL,NULL),('main','server_uniq_id','21a0893d30c1c7ea4cfe9f90d04527cb',NULL,NULL),('fileman','use_editor_3','Y',NULL,NULL),('search','version','v2.0',NULL,NULL),('search','dbnode_id','N',NULL,NULL),('search','dbnode_status','ok',NULL,NULL),('socialservices','bitrix24net_domain','http://goa.local',NULL,NULL),('socialservices','bitrix24net_id','ext.57b850ba4d3970.20677358',NULL,NULL),('socialservices','bitrix24net_secret','nLAJlTk2LStMHCz44rJHjQuqKvlF8ZJzTFoZGZsPjbMXJCnJUJ',NULL,NULL),('main','email_from','diana_box@list.ru',NULL,NULL),('fileman','different_set','Y',NULL,NULL),('fileman','menutypes','a:4:{s:4:\\\"left\\\";s:40:\\\"Левое меню (подуровни)\\\";s:3:\\\"top\\\";s:23:\\\"Верхнее меню\\\";s:6:\\\"bottom\\\";s:21:\\\"Нижнее меню\\\";s:9:\\\"leftfirst\\\";s:49:\\\"Левое меню (первый уровень)\\\";}',NULL,'s1'),('main','wizard_template_id','corp_services',NULL,'s1'),('main','wizard_site_logo','0',NULL,'s1'),('main','wizard_corp_services_theme_id','red',NULL,'s1'),('socialnetwork','allow_tooltip','N',NULL,NULL),('fileman','num_menu_param','2',NULL,'s1'),('fileman','propstypes','a:4:{s:11:\"description\";s:33:\"Описание страницы\";s:8:\"keywords\";s:27:\"Ключевые слова\";s:5:\"title\";s:44:\"Заголовок окна браузера\";s:14:\"keywords_inner\";s:35:\"Продвигаемые слова\";}',NULL,'s1'),('search','suggest_save_days','250',NULL,NULL),('search','use_tf_cache','Y',NULL,NULL),('search','use_word_distance','Y',NULL,NULL),('search','use_social_rating','Y',NULL,NULL),('iblock','use_htmledit','Y',NULL,NULL),('socialservices','auth_services','a:12:{s:9:\"VKontakte\";s:1:\"N\";s:8:\"MyMailRu\";s:1:\"N\";s:7:\"Twitter\";s:1:\"N\";s:8:\"Facebook\";s:1:\"N\";s:11:\"Livejournal\";s:1:\"Y\";s:12:\"YandexOpenID\";s:1:\"Y\";s:7:\"Rambler\";s:1:\"Y\";s:12:\"MailRuOpenID\";s:1:\"Y\";s:12:\"Liveinternet\";s:1:\"Y\";s:7:\"Blogger\";s:1:\"Y\";s:6:\"OpenID\";s:1:\"Y\";s:6:\"LiveID\";s:1:\"N\";}',NULL,NULL),('main','wizard_firstcorp_services_s1','Y',NULL,NULL),('main','wizard_solution','corp_services',NULL,'s1'),('fileman','stickers_use_hotkeys','N',NULL,NULL),('main','signer_default_key','f70820870c039c35caf85936ec8da2e098d2695b93bff00de4c62fffb3a92ce2e7b02e8842c47cf7178bec642b2e0dbc274db8049a7c212b2898103771decad2',NULL,NULL),('main','mp_modules_date','a:1:{i:0;a:3:{s:2:\"ID\";s:10:\"goa.domain\";s:4:\"NAME\";s:43:\"Бизнес-логика сайта ЛТМ\";s:3:\"TMS\";i:1471711018;}}',NULL,NULL),('main','dump_bucket_id','0',NULL,NULL),('main','dump_encrypt','0',NULL,NULL),('main','dump_use_compression','0',NULL,NULL),('main','skip_symlinks','0',NULL,NULL),('main','dump_max_exec_time','25',NULL,NULL),('main','dump_max_exec_time_sleep','3',NULL,NULL),('main','dump_archive_size_limit','1048576000',NULL,NULL),('main','dump_max_file_size','0',NULL,NULL),('main','dump_file_public','0',NULL,NULL),('main','dump_file_kernel','0',NULL,NULL),('main','dump_base','1',NULL,NULL),('main','dump_base_skip_stat','1',NULL,NULL),('main','dump_base_skip_search','1',NULL,NULL),('main','dump_base_skip_log','1',NULL,NULL),('main','dump_integrity_check','0',NULL,NULL),('main','dump_do_clouds','0',NULL,NULL),('main','skip_mask','0',NULL,NULL),('main','dump_site_id','a:0:{}',NULL,NULL),('main','last_files_count','23025',NULL,NULL),('main','site_checker_success','',NULL,NULL),('main','crc_code','V0QxdFhQZHU0WA==',NULL,NULL),('main','~support_finish_date','2017-09-22',NULL,NULL),('main','~PARAM_MAX_SERVERS','2',NULL,NULL),('main','~PARAM_COMPOSITE','N',NULL,NULL),('main','~PARAM_PHONE_SIP','N',NULL,NULL),('main','~PARAM_PARTNER_ID','209523',NULL,NULL),('main','~update_autocheck_result','a:3:{s:10:\"check_date\";i:0;s:6:\"result\";b:0;s:5:\"error\";s:0:\"\";}',NULL,NULL),('main','update_system_check','11.10.2016 20:35:27',NULL,NULL),('main','~new_license14_9_sign','Y',NULL,NULL),('search','max_execution_time','20',NULL,NULL),('search','full_reindex_required','N',NULL,NULL);
/*!40000 ALTER TABLE `b_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_perf_cache`
--

DROP TABLE IF EXISTS `b_perf_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_perf_cache` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `HIT_ID` int(18) DEFAULT NULL,
  `COMPONENT_ID` int(18) DEFAULT NULL,
  `NN` int(18) DEFAULT NULL,
  `CACHE_SIZE` float DEFAULT NULL,
  `OP_MODE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MODULE_NAME` text COLLATE utf8_unicode_ci,
  `COMPONENT_NAME` text COLLATE utf8_unicode_ci,
  `BASE_DIR` text COLLATE utf8_unicode_ci,
  `INIT_DIR` text COLLATE utf8_unicode_ci,
  `FILE_NAME` text COLLATE utf8_unicode_ci,
  `FILE_PATH` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_B_PERF_CACHE_0` (`HIT_ID`,`NN`),
  KEY `IX_B_PERF_CACHE_1` (`COMPONENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_perf_cache`
--

LOCK TABLES `b_perf_cache` WRITE;
/*!40000 ALTER TABLE `b_perf_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_perf_cluster`
--

DROP TABLE IF EXISTS `b_perf_cluster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_perf_cluster` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `THREADS` int(11) DEFAULT NULL,
  `HITS` int(11) DEFAULT NULL,
  `ERRORS` int(11) DEFAULT NULL,
  `PAGES_PER_SECOND` float DEFAULT NULL,
  `PAGE_EXEC_TIME` float DEFAULT NULL,
  `PAGE_RESP_TIME` float DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_perf_cluster`
--

LOCK TABLES `b_perf_cluster` WRITE;
/*!40000 ALTER TABLE `b_perf_cluster` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_cluster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_perf_component`
--

DROP TABLE IF EXISTS `b_perf_component`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_perf_component` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `HIT_ID` int(18) DEFAULT NULL,
  `NN` int(18) DEFAULT NULL,
  `CACHE_TYPE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CACHE_SIZE` int(11) DEFAULT NULL,
  `CACHE_COUNT_R` int(11) DEFAULT NULL,
  `CACHE_COUNT_W` int(11) DEFAULT NULL,
  `CACHE_COUNT_C` int(11) DEFAULT NULL,
  `COMPONENT_TIME` float DEFAULT NULL,
  `QUERIES` int(11) DEFAULT NULL,
  `QUERIES_TIME` float DEFAULT NULL,
  `COMPONENT_NAME` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_B_PERF_COMPONENT_0` (`HIT_ID`,`NN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_perf_component`
--

LOCK TABLES `b_perf_component` WRITE;
/*!40000 ALTER TABLE `b_perf_component` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_component` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_perf_error`
--

DROP TABLE IF EXISTS `b_perf_error`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_perf_error` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `HIT_ID` int(18) DEFAULT NULL,
  `ERRNO` int(18) DEFAULT NULL,
  `ERRSTR` text COLLATE utf8_unicode_ci,
  `ERRFILE` text COLLATE utf8_unicode_ci,
  `ERRLINE` int(18) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_PERF_ERROR_0` (`HIT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_perf_error`
--

LOCK TABLES `b_perf_error` WRITE;
/*!40000 ALTER TABLE `b_perf_error` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_error` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_perf_history`
--

DROP TABLE IF EXISTS `b_perf_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_perf_history` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `TOTAL_MARK` float DEFAULT NULL,
  `ACCELERATOR_ENABLED` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_perf_history`
--

LOCK TABLES `b_perf_history` WRITE;
/*!40000 ALTER TABLE `b_perf_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_perf_hit`
--

DROP TABLE IF EXISTS `b_perf_hit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_perf_hit` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE_HIT` datetime DEFAULT NULL,
  `IS_ADMIN` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `REQUEST_METHOD` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SERVER_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SERVER_PORT` int(11) DEFAULT NULL,
  `SCRIPT_NAME` text COLLATE utf8_unicode_ci,
  `REQUEST_URI` text COLLATE utf8_unicode_ci,
  `INCLUDED_FILES` int(11) DEFAULT NULL,
  `MEMORY_PEAK_USAGE` int(11) DEFAULT NULL,
  `CACHE_TYPE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CACHE_SIZE` int(11) DEFAULT NULL,
  `CACHE_COUNT_R` int(11) DEFAULT NULL,
  `CACHE_COUNT_W` int(11) DEFAULT NULL,
  `CACHE_COUNT_C` int(11) DEFAULT NULL,
  `QUERIES` int(11) DEFAULT NULL,
  `QUERIES_TIME` float DEFAULT NULL,
  `COMPONENTS` int(11) DEFAULT NULL,
  `COMPONENTS_TIME` float DEFAULT NULL,
  `SQL_LOG` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PAGE_TIME` float DEFAULT NULL,
  `PROLOG_TIME` float DEFAULT NULL,
  `PROLOG_BEFORE_TIME` float DEFAULT NULL,
  `AGENTS_TIME` float DEFAULT NULL,
  `PROLOG_AFTER_TIME` float DEFAULT NULL,
  `WORK_AREA_TIME` float DEFAULT NULL,
  `EPILOG_TIME` float DEFAULT NULL,
  `EPILOG_BEFORE_TIME` float DEFAULT NULL,
  `EVENTS_TIME` float DEFAULT NULL,
  `EPILOG_AFTER_TIME` float DEFAULT NULL,
  `MENU_RECALC` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_PERF_HIT_0` (`DATE_HIT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_perf_hit`
--

LOCK TABLES `b_perf_hit` WRITE;
/*!40000 ALTER TABLE `b_perf_hit` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_hit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_perf_index_ban`
--

DROP TABLE IF EXISTS `b_perf_index_ban`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_perf_index_ban` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BAN_TYPE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TABLE_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COLUMN_NAMES` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_perf_index_ban`
--

LOCK TABLES `b_perf_index_ban` WRITE;
/*!40000 ALTER TABLE `b_perf_index_ban` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_index_ban` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_perf_index_complete`
--

DROP TABLE IF EXISTS `b_perf_index_complete`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_perf_index_complete` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BANNED` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TABLE_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COLUMN_NAMES` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `INDEX_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_perf_index_complete_0` (`TABLE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_perf_index_complete`
--

LOCK TABLES `b_perf_index_complete` WRITE;
/*!40000 ALTER TABLE `b_perf_index_complete` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_index_complete` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_perf_index_suggest`
--

DROP TABLE IF EXISTS `b_perf_index_suggest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_perf_index_suggest` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SQL_MD5` char(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SQL_COUNT` int(11) DEFAULT NULL,
  `SQL_TIME` float DEFAULT NULL,
  `TABLE_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TABLE_ALIAS` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COLUMN_NAMES` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SQL_TEXT` text COLLATE utf8_unicode_ci,
  `SQL_EXPLAIN` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`),
  KEY `ix_b_perf_index_suggest_0` (`SQL_MD5`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_perf_index_suggest`
--

LOCK TABLES `b_perf_index_suggest` WRITE;
/*!40000 ALTER TABLE `b_perf_index_suggest` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_index_suggest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_perf_index_suggest_sql`
--

DROP TABLE IF EXISTS `b_perf_index_suggest_sql`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_perf_index_suggest_sql` (
  `SUGGEST_ID` int(11) NOT NULL DEFAULT '0',
  `SQL_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`SUGGEST_ID`,`SQL_ID`),
  KEY `ix_b_perf_index_suggest_sql_0` (`SQL_ID`,`SUGGEST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_perf_index_suggest_sql`
--

LOCK TABLES `b_perf_index_suggest_sql` WRITE;
/*!40000 ALTER TABLE `b_perf_index_suggest_sql` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_index_suggest_sql` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_perf_sql`
--

DROP TABLE IF EXISTS `b_perf_sql`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_perf_sql` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `HIT_ID` int(18) DEFAULT NULL,
  `COMPONENT_ID` int(18) DEFAULT NULL,
  `NN` int(18) DEFAULT NULL,
  `QUERY_TIME` float DEFAULT NULL,
  `NODE_ID` int(18) DEFAULT NULL,
  `MODULE_NAME` text COLLATE utf8_unicode_ci,
  `COMPONENT_NAME` text COLLATE utf8_unicode_ci,
  `SQL_TEXT` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_B_PERF_SQL_0` (`HIT_ID`,`NN`),
  KEY `IX_B_PERF_SQL_1` (`COMPONENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_perf_sql`
--

LOCK TABLES `b_perf_sql` WRITE;
/*!40000 ALTER TABLE `b_perf_sql` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_sql` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_perf_sql_backtrace`
--

DROP TABLE IF EXISTS `b_perf_sql_backtrace`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_perf_sql_backtrace` (
  `SQL_ID` int(18) NOT NULL DEFAULT '0',
  `NN` int(18) NOT NULL DEFAULT '0',
  `FILE_NAME` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LINE_NO` int(18) DEFAULT NULL,
  `CLASS_NAME` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FUNCTION_NAME` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`SQL_ID`,`NN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_perf_sql_backtrace`
--

LOCK TABLES `b_perf_sql_backtrace` WRITE;
/*!40000 ALTER TABLE `b_perf_sql_backtrace` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_sql_backtrace` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_perf_tab_column_stat`
--

DROP TABLE IF EXISTS `b_perf_tab_column_stat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_perf_tab_column_stat` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TABLE_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COLUMN_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TABLE_ROWS` float DEFAULT NULL,
  `COLUMN_ROWS` float DEFAULT NULL,
  `VALUE` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_perf_tab_column_stat` (`TABLE_NAME`,`COLUMN_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_perf_tab_column_stat`
--

LOCK TABLES `b_perf_tab_column_stat` WRITE;
/*!40000 ALTER TABLE `b_perf_tab_column_stat` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_tab_column_stat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_perf_tab_stat`
--

DROP TABLE IF EXISTS `b_perf_tab_stat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_perf_tab_stat` (
  `TABLE_NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `TABLE_SIZE` float DEFAULT NULL,
  `TABLE_ROWS` float DEFAULT NULL,
  PRIMARY KEY (`TABLE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_perf_tab_stat`
--

LOCK TABLES `b_perf_tab_stat` WRITE;
/*!40000 ALTER TABLE `b_perf_tab_stat` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_tab_stat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_perf_test`
--

DROP TABLE IF EXISTS `b_perf_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_perf_test` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `REFERENCE_ID` int(18) DEFAULT NULL,
  `NAME` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_PERF_TEST_0` (`REFERENCE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_perf_test`
--

LOCK TABLES `b_perf_test` WRITE;
/*!40000 ALTER TABLE `b_perf_test` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rating`
--

DROP TABLE IF EXISTS `b_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rating` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(512) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CALCULATION_METHOD` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'SUM',
  `CREATED` datetime DEFAULT NULL,
  `LAST_MODIFIED` datetime DEFAULT NULL,
  `LAST_CALCULATED` datetime DEFAULT NULL,
  `POSITION` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `AUTHORITY` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `CALCULATED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `CONFIGS` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rating`
--

LOCK TABLES `b_rating` WRITE;
/*!40000 ALTER TABLE `b_rating` DISABLE KEYS */;
INSERT INTO `b_rating` VALUES (1,'N','Рейтинг','USER','SUM','2016-08-20 15:40:56',NULL,NULL,'Y','N','N','a:3:{s:4:\"MAIN\";a:2:{s:4:\"VOTE\";a:1:{s:4:\"USER\";a:2:{s:11:\"COEFFICIENT\";s:1:\"1\";s:5:\"LIMIT\";s:2:\"30\";}}s:6:\"RATING\";a:1:{s:5:\"BONUS\";a:2:{s:6:\"ACTIVE\";s:1:\"Y\";s:11:\"COEFFICIENT\";s:1:\"1\";}}}s:5:\"FORUM\";a:2:{s:4:\"VOTE\";a:2:{s:5:\"TOPIC\";a:3:{s:6:\"ACTIVE\";s:1:\"Y\";s:11:\"COEFFICIENT\";s:3:\"0.5\";s:5:\"LIMIT\";s:2:\"30\";}s:4:\"POST\";a:3:{s:6:\"ACTIVE\";s:1:\"Y\";s:11:\"COEFFICIENT\";s:3:\"0.1\";s:5:\"LIMIT\";s:2:\"30\";}}s:6:\"RATING\";a:1:{s:8:\"ACTIVITY\";a:9:{s:6:\"ACTIVE\";s:1:\"Y\";s:16:\"TODAY_TOPIC_COEF\";s:3:\"0.4\";s:15:\"WEEK_TOPIC_COEF\";s:3:\"0.2\";s:16:\"MONTH_TOPIC_COEF\";s:3:\"0.1\";s:14:\"ALL_TOPIC_COEF\";s:1:\"0\";s:15:\"TODAY_POST_COEF\";s:3:\"0.2\";s:14:\"WEEK_POST_COEF\";s:3:\"0.1\";s:15:\"MONTH_POST_COEF\";s:4:\"0.05\";s:13:\"ALL_POST_COEF\";s:1:\"0\";}}}s:4:\"BLOG\";a:2:{s:4:\"VOTE\";a:2:{s:4:\"POST\";a:3:{s:6:\"ACTIVE\";s:1:\"Y\";s:11:\"COEFFICIENT\";s:3:\"0.5\";s:5:\"LIMIT\";s:2:\"30\";}s:7:\"COMMENT\";a:3:{s:6:\"ACTIVE\";s:1:\"Y\";s:11:\"COEFFICIENT\";s:3:\"0.1\";s:5:\"LIMIT\";s:2:\"30\";}}s:6:\"RATING\";a:1:{s:8:\"ACTIVITY\";a:9:{s:6:\"ACTIVE\";s:1:\"Y\";s:15:\"TODAY_POST_COEF\";s:3:\"0.4\";s:14:\"WEEK_POST_COEF\";s:3:\"0.2\";s:15:\"MONTH_POST_COEF\";s:3:\"0.1\";s:13:\"ALL_POST_COEF\";s:1:\"0\";s:18:\"TODAY_COMMENT_COEF\";s:3:\"0.2\";s:17:\"WEEK_COMMENT_COEF\";s:3:\"0.1\";s:18:\"MONTH_COMMENT_COEF\";s:4:\"0.05\";s:16:\"ALL_COMMENT_COEF\";s:1:\"0\";}}}}'),(2,'N','Авторитет','USER','SUM','2016-08-20 15:40:56',NULL,NULL,'Y','Y','N','a:3:{s:4:\"MAIN\";a:2:{s:4:\"VOTE\";a:1:{s:4:\"USER\";a:3:{s:6:\"ACTIVE\";s:1:\"Y\";s:11:\"COEFFICIENT\";s:1:\"1\";s:5:\"LIMIT\";s:1:\"0\";}}s:6:\"RATING\";a:1:{s:5:\"BONUS\";a:2:{s:6:\"ACTIVE\";s:1:\"Y\";s:11:\"COEFFICIENT\";s:1:\"1\";}}}s:5:\"FORUM\";a:2:{s:4:\"VOTE\";a:2:{s:5:\"TOPIC\";a:2:{s:11:\"COEFFICIENT\";s:1:\"1\";s:5:\"LIMIT\";s:2:\"30\";}s:4:\"POST\";a:2:{s:11:\"COEFFICIENT\";s:1:\"1\";s:5:\"LIMIT\";s:2:\"30\";}}s:6:\"RATING\";a:1:{s:8:\"ACTIVITY\";a:8:{s:16:\"TODAY_TOPIC_COEF\";s:2:\"20\";s:15:\"WEEK_TOPIC_COEF\";s:2:\"10\";s:16:\"MONTH_TOPIC_COEF\";s:1:\"5\";s:14:\"ALL_TOPIC_COEF\";s:1:\"0\";s:15:\"TODAY_POST_COEF\";s:3:\"0.4\";s:14:\"WEEK_POST_COEF\";s:3:\"0.2\";s:15:\"MONTH_POST_COEF\";s:3:\"0.1\";s:13:\"ALL_POST_COEF\";s:1:\"0\";}}}s:4:\"BLOG\";a:2:{s:4:\"VOTE\";a:2:{s:4:\"POST\";a:2:{s:11:\"COEFFICIENT\";s:1:\"1\";s:5:\"LIMIT\";s:2:\"30\";}s:7:\"COMMENT\";a:2:{s:11:\"COEFFICIENT\";s:1:\"1\";s:5:\"LIMIT\";s:2:\"30\";}}s:6:\"RATING\";a:1:{s:8:\"ACTIVITY\";a:8:{s:15:\"TODAY_POST_COEF\";s:3:\"0.4\";s:14:\"WEEK_POST_COEF\";s:3:\"0.2\";s:15:\"MONTH_POST_COEF\";s:3:\"0.1\";s:13:\"ALL_POST_COEF\";s:1:\"0\";s:18:\"TODAY_COMMENT_COEF\";s:3:\"0.2\";s:17:\"WEEK_COMMENT_COEF\";s:3:\"0.1\";s:18:\"MONTH_COMMENT_COEF\";s:4:\"0.05\";s:16:\"ALL_COMMENT_COEF\";s:1:\"0\";}}}}');
/*!40000 ALTER TABLE `b_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rating_component`
--

DROP TABLE IF EXISTS `b_rating_component`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rating_component` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RATING_ID` int(11) NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ENTITY_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `RATING_TYPE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `COMPLEX_NAME` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `CLASS` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CALC_METHOD` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `EXCEPTION_METHOD` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_MODIFIED` datetime DEFAULT NULL,
  `LAST_CALCULATED` datetime DEFAULT NULL,
  `NEXT_CALCULATION` datetime DEFAULT NULL,
  `REFRESH_INTERVAL` int(11) NOT NULL,
  `CONFIG` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`),
  KEY `IX_RATING_ID_1` (`RATING_ID`,`ACTIVE`,`NEXT_CALCULATION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rating_component`
--

LOCK TABLES `b_rating_component` WRITE;
/*!40000 ALTER TABLE `b_rating_component` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rating_component` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rating_component_results`
--

DROP TABLE IF EXISTS `b_rating_component_results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rating_component_results` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RATING_ID` int(11) NOT NULL,
  `ENTITY_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `RATING_TYPE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `COMPLEX_NAME` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `CURRENT_VALUE` decimal(18,4) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_ENTITY_TYPE_ID` (`ENTITY_TYPE_ID`),
  KEY `IX_COMPLEX_NAME` (`COMPLEX_NAME`),
  KEY `IX_RATING_ID_2` (`RATING_ID`,`COMPLEX_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rating_component_results`
--

LOCK TABLES `b_rating_component_results` WRITE;
/*!40000 ALTER TABLE `b_rating_component_results` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rating_component_results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rating_prepare`
--

DROP TABLE IF EXISTS `b_rating_prepare`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rating_prepare` (
  `ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rating_prepare`
--

LOCK TABLES `b_rating_prepare` WRITE;
/*!40000 ALTER TABLE `b_rating_prepare` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rating_prepare` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rating_results`
--

DROP TABLE IF EXISTS `b_rating_results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rating_results` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RATING_ID` int(11) NOT NULL,
  `ENTITY_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `CURRENT_VALUE` decimal(18,4) DEFAULT NULL,
  `PREVIOUS_VALUE` decimal(18,4) DEFAULT NULL,
  `CURRENT_POSITION` int(11) DEFAULT '0',
  `PREVIOUS_POSITION` int(11) DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `IX_RATING_3` (`RATING_ID`,`ENTITY_TYPE_ID`,`ENTITY_ID`),
  KEY `IX_RATING_4` (`RATING_ID`,`ENTITY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rating_results`
--

LOCK TABLES `b_rating_results` WRITE;
/*!40000 ALTER TABLE `b_rating_results` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rating_results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rating_rule`
--

DROP TABLE IF EXISTS `b_rating_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rating_rule` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `NAME` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CONDITION_NAME` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `CONDITION_MODULE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONDITION_CLASS` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CONDITION_METHOD` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CONDITION_CONFIG` text COLLATE utf8_unicode_ci NOT NULL,
  `ACTION_NAME` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `ACTION_CONFIG` text COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVATE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ACTIVATE_CLASS` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVATE_METHOD` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DEACTIVATE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `DEACTIVATE_CLASS` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DEACTIVATE_METHOD` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CREATED` datetime DEFAULT NULL,
  `LAST_MODIFIED` datetime DEFAULT NULL,
  `LAST_APPLIED` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rating_rule`
--

LOCK TABLES `b_rating_rule` WRITE;
/*!40000 ALTER TABLE `b_rating_rule` DISABLE KEYS */;
INSERT INTO `b_rating_rule` VALUES (1,'N','Добавление в группу пользователей, имеющих право голосовать за рейтинг','USER','AUTHORITY',NULL,'CRatingRulesMain','ratingCheck','a:1:{s:9:\"AUTHORITY\";a:2:{s:16:\"RATING_CONDITION\";i:1;s:12:\"RATING_VALUE\";i:1;}}','ADD_TO_GROUP','a:1:{s:12:\"ADD_TO_GROUP\";a:1:{s:8:\"GROUP_ID\";s:1:\"3\";}}','N','CRatingRulesMain','addToGroup','N','CRatingRulesMain ','addToGroup','2016-08-20 15:40:57','2016-08-20 15:40:57',NULL),(2,'N','Удаление из группы пользователей, не имеющих права голосовать за рейтинг','USER','AUTHORITY',NULL,'CRatingRulesMain','ratingCheck','a:1:{s:9:\"AUTHORITY\";a:2:{s:16:\"RATING_CONDITION\";i:2;s:12:\"RATING_VALUE\";i:1;}}','REMOVE_FROM_GROUP','a:1:{s:17:\"REMOVE_FROM_GROUP\";a:1:{s:8:\"GROUP_ID\";s:1:\"3\";}}','N','CRatingRulesMain','removeFromGroup','N','CRatingRulesMain ','removeFromGroup','2016-08-20 15:40:57','2016-08-20 15:40:57',NULL),(3,'N','Добавление в группу пользователей, имеющих право голосовать за авторитет','USER','AUTHORITY',NULL,'CRatingRulesMain','ratingCheck','a:1:{s:9:\"AUTHORITY\";a:2:{s:16:\"RATING_CONDITION\";i:1;s:12:\"RATING_VALUE\";i:2;}}','ADD_TO_GROUP','a:1:{s:12:\"ADD_TO_GROUP\";a:1:{s:8:\"GROUP_ID\";s:1:\"4\";}}','N','CRatingRulesMain','addToGroup','N','CRatingRulesMain ','addToGroup','2016-08-20 15:40:57','2016-08-20 15:40:57',NULL),(4,'N','Удаление из группы пользователей, не имеющих права голосовать за авторитет','USER','AUTHORITY',NULL,'CRatingRulesMain','ratingCheck','a:1:{s:9:\"AUTHORITY\";a:2:{s:16:\"RATING_CONDITION\";i:2;s:12:\"RATING_VALUE\";i:2;}}','REMOVE_FROM_GROUP','a:1:{s:17:\"REMOVE_FROM_GROUP\";a:1:{s:8:\"GROUP_ID\";s:1:\"4\";}}','N','CRatingRulesMain','removeFromGroup','N','CRatingRulesMain ','removeFromGroup','2016-08-20 15:40:57','2016-08-20 15:40:57',NULL),(5,'Y','Автоматическое голосование за авторитет пользователя','USER','VOTE',NULL,'CRatingRulesMain','voteCheck','a:1:{s:4:\"VOTE\";a:6:{s:10:\"VOTE_LIMIT\";i:90;s:11:\"VOTE_RESULT\";i:10;s:16:\"VOTE_FORUM_TOPIC\";d:0.5;s:15:\"VOTE_FORUM_POST\";d:0.1000000000000000055511151231257827021181583404541015625;s:14:\"VOTE_BLOG_POST\";d:0.5;s:17:\"VOTE_BLOG_COMMENT\";d:0.1000000000000000055511151231257827021181583404541015625;}}','empty','a:0:{}','N','empty','empty','N','empty ','empty','2016-08-20 15:40:58','2016-08-20 15:40:58',NULL);
/*!40000 ALTER TABLE `b_rating_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rating_rule_vetting`
--

DROP TABLE IF EXISTS `b_rating_rule_vetting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rating_rule_vetting` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RULE_ID` int(11) NOT NULL,
  `ENTITY_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `ACTIVATE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `APPLIED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`ID`),
  KEY `RULE_ID` (`RULE_ID`,`ENTITY_TYPE_ID`,`ENTITY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rating_rule_vetting`
--

LOCK TABLES `b_rating_rule_vetting` WRITE;
/*!40000 ALTER TABLE `b_rating_rule_vetting` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rating_rule_vetting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rating_user`
--

DROP TABLE IF EXISTS `b_rating_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rating_user` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RATING_ID` int(11) NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `BONUS` decimal(18,4) DEFAULT '0.0000',
  `VOTE_WEIGHT` decimal(18,4) DEFAULT '0.0000',
  `VOTE_COUNT` int(11) DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `RATING_ID` (`RATING_ID`,`ENTITY_ID`),
  KEY `IX_B_RAT_USER_2` (`ENTITY_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rating_user`
--

LOCK TABLES `b_rating_user` WRITE;
/*!40000 ALTER TABLE `b_rating_user` DISABLE KEYS */;
INSERT INTO `b_rating_user` VALUES (1,2,1,3.0000,30.0000,13);
/*!40000 ALTER TABLE `b_rating_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rating_vote`
--

DROP TABLE IF EXISTS `b_rating_vote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rating_vote` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RATING_VOTING_ID` int(11) NOT NULL,
  `ENTITY_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `OWNER_ID` int(11) NOT NULL,
  `VALUE` decimal(18,4) NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `CREATED` datetime NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `USER_IP` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_RAT_VOTE_ID` (`RATING_VOTING_ID`,`USER_ID`),
  KEY `IX_RAT_VOTE_ID_2` (`ENTITY_TYPE_ID`,`ENTITY_ID`,`USER_ID`),
  KEY `IX_RAT_VOTE_ID_3` (`OWNER_ID`,`CREATED`),
  KEY `IX_RAT_VOTE_ID_4` (`USER_ID`),
  KEY `IX_RAT_VOTE_ID_5` (`CREATED`,`VALUE`),
  KEY `IX_RAT_VOTE_ID_6` (`ACTIVE`),
  KEY `IX_RAT_VOTE_ID_7` (`RATING_VOTING_ID`,`CREATED`),
  KEY `IX_RAT_VOTE_ID_8` (`ENTITY_TYPE_ID`,`CREATED`),
  KEY `IX_RAT_VOTE_ID_9` (`CREATED`,`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rating_vote`
--

LOCK TABLES `b_rating_vote` WRITE;
/*!40000 ALTER TABLE `b_rating_vote` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rating_vote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rating_vote_group`
--

DROP TABLE IF EXISTS `b_rating_vote_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rating_vote_group` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `GROUP_ID` int(11) NOT NULL,
  `TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `RATING_ID` (`GROUP_ID`,`TYPE`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rating_vote_group`
--

LOCK TABLES `b_rating_vote_group` WRITE;
/*!40000 ALTER TABLE `b_rating_vote_group` DISABLE KEYS */;
INSERT INTO `b_rating_vote_group` VALUES (5,1,'A'),(1,1,'R'),(3,1,'R'),(2,3,'R'),(4,3,'R'),(6,4,'A');
/*!40000 ALTER TABLE `b_rating_vote_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rating_voting`
--

DROP TABLE IF EXISTS `b_rating_voting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rating_voting` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENTITY_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `OWNER_ID` int(11) NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `CREATED` datetime DEFAULT NULL,
  `LAST_CALCULATED` datetime DEFAULT NULL,
  `TOTAL_VALUE` decimal(18,4) NOT NULL,
  `TOTAL_VOTES` int(11) NOT NULL,
  `TOTAL_POSITIVE_VOTES` int(11) NOT NULL,
  `TOTAL_NEGATIVE_VOTES` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_ENTITY_TYPE_ID_2` (`ENTITY_TYPE_ID`,`ENTITY_ID`,`ACTIVE`),
  KEY `IX_ENTITY_TYPE_ID_4` (`TOTAL_VALUE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rating_voting`
--

LOCK TABLES `b_rating_voting` WRITE;
/*!40000 ALTER TABLE `b_rating_voting` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rating_voting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rating_voting_prepare`
--

DROP TABLE IF EXISTS `b_rating_voting_prepare`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rating_voting_prepare` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RATING_VOTING_ID` int(11) NOT NULL,
  `TOTAL_VALUE` decimal(18,4) NOT NULL,
  `TOTAL_VOTES` int(11) NOT NULL,
  `TOTAL_POSITIVE_VOTES` int(11) NOT NULL,
  `TOTAL_NEGATIVE_VOTES` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_RATING_VOTING_ID` (`RATING_VOTING_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rating_voting_prepare`
--

LOCK TABLES `b_rating_voting_prepare` WRITE;
/*!40000 ALTER TABLE `b_rating_voting_prepare` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rating_voting_prepare` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rating_weight`
--

DROP TABLE IF EXISTS `b_rating_weight`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rating_weight` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RATING_FROM` decimal(18,4) NOT NULL,
  `RATING_TO` decimal(18,4) NOT NULL,
  `WEIGHT` decimal(18,4) DEFAULT '0.0000',
  `COUNT` int(11) DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rating_weight`
--

LOCK TABLES `b_rating_weight` WRITE;
/*!40000 ALTER TABLE `b_rating_weight` DISABLE KEYS */;
INSERT INTO `b_rating_weight` VALUES (1,-1000000.0000,1000000.0000,1.0000,10);
/*!40000 ALTER TABLE `b_rating_weight` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_search_content`
--

DROP TABLE IF EXISTS `b_search_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_search_content` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE_CHANGE` datetime NOT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ITEM_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CUSTOM_RANK` int(11) NOT NULL DEFAULT '0',
  `USER_ID` int(11) DEFAULT NULL,
  `ENTITY_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ENTITY_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `URL` text COLLATE utf8_unicode_ci,
  `TITLE` text COLLATE utf8_unicode_ci,
  `BODY` longtext COLLATE utf8_unicode_ci,
  `TAGS` text COLLATE utf8_unicode_ci,
  `PARAM1` text COLLATE utf8_unicode_ci,
  `PARAM2` text COLLATE utf8_unicode_ci,
  `UPD` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DATE_FROM` datetime DEFAULT NULL,
  `DATE_TO` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UX_B_SEARCH_CONTENT` (`MODULE_ID`,`ITEM_ID`),
  KEY `IX_B_SEARCH_CONTENT_1` (`MODULE_ID`,`PARAM1`(50),`PARAM2`(50)),
  KEY `IX_B_SEARCH_CONTENT_2` (`ENTITY_ID`(50),`ENTITY_TYPE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_search_content`
--

LOCK TABLES `b_search_content` WRITE;
/*!40000 ALTER TABLE `b_search_content` DISABLE KEYS */;
INSERT INTO `b_search_content` VALUES (1,'2016-10-23 20:32:53','main','s1|/index.php',0,NULL,NULL,NULL,'/index.php','Главная','Экскурсии по Гоа - удивительные путешествия по привлекательным ценам\rСколько бы ни писали об Индии и о Гоа - все будет мало.\rБесконечные пляжи Гоа, самое теплое море, потрясающие краски природы и музыка, завораживающие закаты и рассветы, древние индуистские храмы и колоритные восточные базары - все это, без преувеличения, о Гоа. Откройте для себя Индию - наши экскурсии по Гоа помогут вам в этом.\r“Твой Гоа” предлагает разнообразные экскурсии в Гоа и увлекательные туры по Индии. Мы предоставим вам возможность посетить на наших экскурсиях по Гоа самые известные исторические комплексы Гоа и соседних штатов, храмовые святыни и столицы древних княжеств, многие из которых охраняются Юнеско. На нашем сайте вы можете найти разнообразную информацию по отдыху в Индии: цены в Гоа, советы туристам, список достопримечательностей, интересные факты и пр.\rТоп 5 наших экскурсий\rМы покажем вам заповедники, джунгли и пляжи, водопады и плантации специй, вы пообщаетесь со слонами и обезьянками, увидите тигров, крокодилов и дельфинов, а также съездите на знаменитые экскурсии в Хампи, Гокарна и Биджапур. Разработанные нами экскурсии по Гоа - это не просто путешествия с гидом - это погружение в магию и тайну Индии, очарование её дворцов и храмов, рынков и уникальной, ни с чем не сравнимой энергетикой.\rК Вашим услугам трансфер и услуги такси, размещение в гостиницах и гестхаусах, коттеджах и бунгало. Все, что может Вам понадобиться для активного отдыха в Индии: рестораны и рынки, вечеринки и клубы, рыбалка.\rНа странице Экскурсии представлен полный перечень экскурсий и путешествий по Гоа и Индии, которые мы проводим.\rНаши туристы говорят о нас...\rМы живём и работаем в Индии уже более десяти лет. Мы любим эту страну, её культуру, историю, уважаем её традиции. Мы постараемся показать Индию так, как её видим мы. Ну а лучшим доказательством нашей отличной работы служат отзывы наших туристов. Со всеми отзывами Вы можете ознакомиться в \rсоответствующем разделе сайта\r, или же на \rстранице ВКонтакте\rБольше, чем экскурсии по Гоа\rОрганизация и проведение свадебных церемоний\rАренда жилья\rОрганизация праздников\rУслуги такси\rБронирование авиа- и автобусных билетов\rАюрведа и лечение\rПочему Твой Гоа - лучшие\rМы работаем в Индии уже на протяжении более 5-ти лет. Мы работаем официально, имея все необходимые лицензии (лицензия на туристическую деятельность, лицензия на транспортную деятельность). Наши сотрудники получают 100% официальную зарплату. Почему это может быть важно для Вас? Всё это означает, что мы дорожим своей репутацией. В отличие от многих других компаний, которые работают полулегально или же вообще нелегально, и могут свернуть деятельность на следующий месяц, а то и завтра, мы выстраиваем долговременные отношения - как с нашими сотрудниками, так и с нашими туристами. И это даёт свои плоды - многие туристы, побывавшие на наших экскурсиях, возвращаются к нам снова и рекомендуют нас своим друзьям.\rПосле наших путешествий и экскурсии по Индии и Гоа вы вернётесь домой счастливее. Для этого мы здесь работаем.\rYour browser does not support SVGs\rПосмотрите наши экскурсии\rПерейти','','','','22dcf593e5f4a5772098388af4ebf28f',NULL,NULL),(2,'2016-08-25 22:11:35','main','s1|/local/verstka/reviews.html',0,NULL,NULL,NULL,'/local/verstka/reviews.html','Surya Travels | Отзывы','Экскурсии\rУслуги\rГалерея\rFAQ\rЗаказ услуг\rОтзывы\rКонтакты\rYour browser does not support SVGs\rIN. \r+91 8888 71 79 22\rRU. \r+7 981 771 79 22\rОтзывы\rГлавная\r/\rОтзывы\rНаши преимущества\rСпециальные предложения\rСводная таблица цен\rИнтересно об Индии\rСоветы туристам в Гоа\rНовости\rПляжи Гоа\rИнформация об Индии\rИнформация о Гоа\rЭто интересно\rYour browser does not support SVGs\rВ Индии первыми научились выращивать рис и сахарный тростник, разводить домашнюю птицу\rYour browser does not support SVGs\rПогода в Гоа \rYour browser does not support SVGs\rВконтакте\rFacebook\rВыбрано:\rОтдых на пляжах Палолем, Кола и старинный форт Кабо де Рама\rYour browser does not support SVGs\rВесь ГОА за один день\rYour browser does not support SVGs\rYour browser does not support SVGs\rСбросить все\rПоказано \r3 отзыва\rДобавить отзыв\rНина Сергеевна\r21 ноября 2015\rЭкскурсии:\rОтдых на пляжах Палолем, Кола и старинный форт Кабо де Рама\rВсе отзывы об этой экскурсии\rВесь ГОА за один день\rВсе отзывы об этой экскурсии\rСъездили на две двухдневные экскурсии от вас - в Хампи с Сергеем и в Биджапур с Еленой.\rЭто просто что-то с чем-то! Ещё ни разу мне не доводилось встречать таких классных гидов, которые смогли не только не испортить впечатление от столь волшебных мест (как это часто бывает на экскурсиях), но и сделать всё для того, чтобы захотелось снова вернуться в Индию, причём как можно раньше:)\rНикогда не забуду эти замечательные 4 дня, которые стали настоящим праздником, и всё то прекрасное, что довелось увидеть! Всем будем вас рекомендовать...\rЧитать полностью\rТвой Гоа\r22 ноября 2015\rСпасибо за такой обширный отзыв. Но вы могли бы поинтересоваться у тех 2-х. Они были заранее предупреждены о невозможности поехать в Тибет, о том, что экскурсия возможна только в Хампи и озеро, на что согласились. Наверное, они тоже были вредными, и решили , а пусть все поедут в Тибет..И вы забыли уточнить, что вы ехали в 5-ом, а не в 6-м и цена при этом не поменялась. Ну и самое главное, про Хампи можно написать не одну книгу, а у вас.\rАндрей Батура\r5 ноября 2015\rЭкскурсии:\rОтдых на пляжах Палолем, Кола и старинный форт Кабо де Рама\rВсе отзывы об этой экскурсии\rМы только вчера верулись из ГОА, всё очень понравилось! Спасибо большое компании ТВОЙ ГОА, за организацию экскурсий, всё было организовано на высочайшем уровне. Экскурсии очень интересные, оромное спасибо всем гидам с которыми мы ездили, они профессионалы в своём деле, отвечают на любые вопросы, расказывают очень интересные истории, экскурсии проходили весело, видно что любят свою работу.\rYour browser does not support SVGs\rYour browser does not support SVGs\rYour browser does not support SVGs\rYour browser does not support SVGs\rYour browser does not support SVGs\rИнокентий Иванов\r5 ноября 2015\rЭкскурсии:\rОтдых на пляжах Палолем, Кола и старинный форт Кабо де Рама\rВсе отзывы об этой экскурсии\rМы только вчера верулись из ГОА, всё очень понравилось! Спасибо большое компании ТВОЙ ГОА, за организацию экскурсий, всё было организовано на высочайшем уровне. Экскурсии очень интересные, оромное спасибо всем гидам с которыми мы ездили, они профессионалы в своём деле, отвечают на любые вопросы, расказывают очень интересные истории, экскурсии проходили весело, видно что любят свою работу.\rПоказать еще\rКонтакты\rИндия\r+91 8888 71 79 22\r+91 8888 70 40 05\r+91 7875 00 99 44\rРоссия\r+7 981 771 79 22\rE-mail\rinfo@tvoygoa.ru\rПрисоединяйтесь к нам\rYour browser does not support SVGs\rYour browser does not support SVGs\rYour browser does not support SVGs\rРазработка -\rAE! studio\rДизайн от\rPixeljam\r© 2011-2016 «Твой Гоа»\rДобавление отзыва\rЭкскурсия\rПредставьтесь, пожалуйста\rПрофиль Вконтакте или Facebook\rТекст отзыва\rПри желании вы можете прикрепить к отзыву несколько фото\rYour browser does not support SVGs\rПеретащите фото сюда или нажмите для выбора на компьютере\r \rОтправить\r-->','','','','22dcf593e5f4a5772098388af4ebf28f',NULL,NULL),(3,'2016-08-25 22:11:35','main','s1|/local/verstka/exs-open-3.html',0,NULL,NULL,NULL,'/local/verstka/exs-open-3.html','Surya Travels | Экскурсии | Отдых на пляжах Палолем, Кола и старинный форт Кабо де Рама','Экскурсии\rУслуги\rГалерея\rFAQ\rЗаказ услуг\rОтзывы\rКонтакты\rYour browser does not support SVGs\rIN. \r+91 8888 71 79 22\rRU. \r+7 981 771 79 22\rОтдых на пляжах Палолем, Кола и старинный форт Кабо де Рама\rГлавная\r/\rЭкскурсии\r/\rОтдых на пляжах Палолем, Кола и старинный форт Кабо де Рама\rНаши преимущества\rСпециальные предложения\rСводная таблица цен\rИнтересно об Индии\rСоветы туристам в Гоа\rНовости\rПляжи Гоа\rИнформация об Индии\rИнформация о Гоа\rЭто интересно\rYour browser does not support SVGs\rВ Индии первыми научились выращивать рис и сахарный тростник, разводить домашнюю птицу\rYour browser does not support SVGs\rПогода в Гоа \rYour browser does not support SVGs\rВконтакте\rFacebook\rОписание\rПрограмма и стоимость\rОтзывы\rЗаказ\rПоказано \r3 отзыва\rДобавить отзыв\rНина Сергеевна\r21 ноября 2015\rСъездили на две двухдневные экскурсии от вас - в Хампи с Сергеем и в Биджапур с Еленой.\rЭто просто что-то с чем-то! Ещё ни разу мне не доводилось встречать таких классных гидов, которые смогли не только не испортить впечатление от столь волшебных мест (как это часто бывает на экскурсиях), но и сделать всё для того, чтобы захотелось снова вернуться в Индию, причём как можно раньше:)\rНикогда не забуду эти замечательные 4 дня, которые стали настоящим праздником, и всё то прекрасное, что довелось увидеть! Всем будем вас рекомендовать...\rЧитать полностью\rТвой Гоа\r22 ноября 2015\rСпасибо за такой обширный отзыв. Но вы могли бы поинтересоваться у тех 2-х. Они были заранее предупреждены о невозможности поехать в Тибет, о том, что экскурсия возможна только в Хампи и озеро, на что согласились. Наверное, они тоже были вредными, и решили , а пусть все поедут в Тибет..И вы забыли уточнить, что вы ехали в 5-ом, а не в 6-м и цена при этом не поменялась. Ну и самое главное, про Хампи можно написать не одну книгу, а у вас.\rАндрей Батура\r5 ноября 2015\rМы только вчера верулись из ГОА, всё очень понравилось! Спасибо большое компании ТВОЙ ГОА, за организацию экскурсий, всё было организовано на высочайшем уровне. Экскурсии очень интересные, оромное спасибо всем гидам с которыми мы ездили, они профессионалы в своём деле, отвечают на любые вопросы, расказывают очень интересные истории, экскурсии проходили весело, видно что любят свою работу.\rYour browser does not support SVGs\rYour browser does not support SVGs\rYour browser does not support SVGs\rYour browser does not support SVGs\rYour browser does not support SVGs\rИнокентий Иванов\r5 ноября 2015\rМы только вчера верулись из ГОА, всё очень понравилось! Спасибо большое компании ТВОЙ ГОА, за организацию экскурсий, всё было организовано на высочайшем уровне. Экскурсии очень интересные, оромное спасибо всем гидам с которыми мы ездили, они профессионалы в своём деле, отвечают на любые вопросы, расказывают очень интересные истории, экскурсии проходили весело, видно что любят свою работу.\rЗаказать экскурсию\rДобавить отзыв\rКонтакты\rИндия\r+91 8888 71 79 22\r+91 8888 70 40 05\r+91 7875 00 99 44\rРоссия\r+7 981 771 79 22\rE-mail\rinfo@tvoygoa.ru\rПрисоединяйтесь к нам\rYour browser does not support SVGs\rYour browser does not support SVGs\rYour browser does not support SVGs\rРазработка -\rAE! studio\rДизайн от\rPixeljam\r© 2011-2016 «Твой Гоа»','','','','22dcf593e5f4a5772098388af4ebf28f',NULL,NULL),(4,'2016-08-25 22:11:35','main','s1|/local/verstka/exs.html',0,NULL,NULL,NULL,'/local/verstka/exs.html','Surya Travels | Экскурсии','Экскурсии\rУслуги\rГалерея\rFAQ\rЗаказ услуг\rОтзывы\rКонтакты\rYour browser does not support SVGs\rIN. \r+91 8888 71 79 22\rRU. \r+7 981 771 79 22\rЭкскурсии\rГлавная\r/\rЭкскурсии\rНаши преимущества\rСпециальные предложения\rСводная таблица цен\rИнтересно об Индии\rСоветы туристам в Гоа\rНовости\rПляжи Гоа\rИнформация об Индии\rИнформация о Гоа\rЭто интересно\rYour browser does not support SVGs\rВ Индии первыми научились выращивать рис и сахарный тростник, разводить домашнюю птицу\rYour browser does not support SVGs\rПогода в Гоа \rYour browser does not support SVGs\rВконтакте\rFacebook\r2 дня (5)\rYour browser does not support SVGs\r4 дня (8)\r6 дней (3)\rИсторические (7)\rРазвлекательные (8)\rДревняя архитектура (5)\r7 дней (3)\rYour browser does not support SVGs\rСбросить все фильтры\rНайдено \r5 экскурсий\rКолхапур и Махабалешвар\rМы сделаем для вас это путешествие незабываемым.\rЗа два дня вы увидите удивительные памятники, услышите древние легенды, отдохнете в горах, почувствуете себя махараджей.\rМы побываем в священном храме Махалакшми (7в), во Дворце махараджей, где и по сей день живет королевская семья, насладимся чистым горным воздухом и спелой клубникой, окунемся в облака на рассвете.\rРазвлекательные\r2 дня\rИсторическая\rКолхапур и Махабалешвар\rМы сделаем для вас это путешествие незабываемым.\rЗа два дня вы увидите удивительные памятники, услышите древние легенды, отдохнете в горах, почувствуете себя махараджей.\rМы побываем в священном храме Махалакшми (7в), во Дворце махараджей, где и по сей день живет королевская семья, насладимся чистым горным воздухом и спелой клубникой, окунемся в облака на рассвете.\rРазвлекательные\r2 дня\rИсторическая\rКонтакты\rИндия\r+91 8888 71 79 22\r+91 8888 70 40 05\r+91 7875 00 99 44\rРоссия\r+7 981 771 79 22\rE-mail\rinfo@tvoygoa.ru\rПрисоединяйтесь к нам\rYour browser does not support SVGs\rYour browser does not support SVGs\rYour browser does not support SVGs\rРазработка -\rAE! studio\rДизайн от\rPixeljam\r© 2011-2016 «Твой Гоа»','','','','22dcf593e5f4a5772098388af4ebf28f',NULL,NULL),(5,'2016-08-25 22:11:35','main','s1|/local/verstka/gallery.html',0,NULL,NULL,NULL,'/local/verstka/gallery.html','Surya Travels | Фотогалерея','Экскурсии\rУслуги\rГалерея\rFAQ\rЗаказ услуг\rОтзывы\rКонтакты\rYour browser does not support SVGs\rIN. \r+91 8888 71 79 22\rRU. \r+7 981 771 79 22\rФотогалерея\rГлавная\r/\rФотогалерея\rНаши преимущества\rСпециальные предложения\rСводная таблица цен\rИнтересно об Индии\rСоветы туристам в Гоа\rНовости\rПляжи Гоа\rИнформация об Индии\rИнформация о Гоа\rЭто интересно\rYour browser does not support SVGs\rВ Индии первыми научились выращивать рис и сахарный тростник, разводить домашнюю птицу\rYour browser does not support SVGs\rПогода в Гоа \rYour browser does not support SVGs\rВконтакте\rFacebook\rСтарый ГОА и индуистские храмы\rФото пляжей Северный Гоа и Южный Гоа, фото Гоа\rКолхапур и Махабалешвар\rПляжи ГОА\rСтарый ГОА и индуистские храмы\rСтарый ГОА и индуистские храмы\rСтарый ГОА и индуистские храмы\rКонтакты\rИндия\r+91 8888 71 79 22\r+91 8888 70 40 05\r+91 7875 00 99 44\rРоссия\r+7 981 771 79 22\rE-mail\rinfo@tvoygoa.ru\rПрисоединяйтесь к нам\rYour browser does not support SVGs\rYour browser does not support SVGs\rYour browser does not support SVGs\rРазработка -\rAE! studio\rДизайн от\rPixeljam\r© 2011-2016 «Твой Гоа»','','','','22dcf593e5f4a5772098388af4ebf28f',NULL,NULL),(6,'2016-08-25 22:11:35','main','s1|/local/verstka/news.html',0,NULL,NULL,NULL,'/local/verstka/news.html','Surya Travels | Новости','Экскурсии\rУслуги\rГалерея\rFAQ\rЗаказ услуг\rОтзывы\rКонтакты\rYour browser does not support SVGs\rIN. \r+91 8888 71 79 22\rRU. \r+7 981 771 79 22\rНовости\rГлавная\r/\rНовости\rНаши преимущества\rСпециальные предложения\rСводная таблица цен\rИнтересно об Индии\rСоветы туристам в Гоа\rНовости\rПляжи Гоа\rИнформация об Индии\rИнформация о Гоа\rЭто интересно\rYour browser does not support SVGs\rВ Индии первыми научились выращивать рис и сахарный тростник, разводить домашнюю птицу\rYour browser does not support SVGs\rПогода в Гоа \rYour browser does not support SVGs\rВконтакте\rFacebook\r20 ноября 2015\rКалининградские турфирмы предлагают курорты Азии взамен Турции\rЕсли после запрета на полеты в Египет было заметно повышение цен туроператорами, и людям было дороговато перебронировать путевки, то сейчас цены приемлемые\r20 ноября 2015\rТаможня России поддержала введение сбора в 10-15 евро на посылки стоимостью от 22 до 150 евро из зарубежных интернет-магазинов\r23 ноября 2015 года стало известно, что введение подобного налога обсуждается на уровне Евразийского экономического союза, в который входят Армения, республика Беларусь, Казахстан, Киргизия и Россия.\rКонтакты\rИндия\r+91 8888 71 79 22\r+91 8888 70 40 05\r+91 7875 00 99 44\rРоссия\r+7 981 771 79 22\rE-mail\rinfo@tvoygoa.ru\rПрисоединяйтесь к нам\rYour browser does not support SVGs\rYour browser does not support SVGs\rYour browser does not support SVGs\rРазработка -\rAE! studio\rДизайн от\rPixeljam\r© 2011-2016 «Твой Гоа»','','','','22dcf593e5f4a5772098388af4ebf28f',NULL,NULL),(7,'2016-08-25 22:11:35','main','s1|/local/verstka/exs-open.html',0,NULL,NULL,NULL,'/local/verstka/exs-open.html','Surya Travels | Экскурсии | Отдых на пляжах Палолем, Кола и старинный форт Кабо де Рама','Экскурсии\rУслуги\rГалерея\rFAQ\rЗаказ услуг\rОтзывы\rКонтакты\rYour browser does not support SVGs\rIN. \r+91 8888 71 79 22\rRU. \r+7 981 771 79 22\rОтдых на пляжах Палолем, Кола и старинный форт Кабо де Рама\rГлавная\r/\rЭкскурсии\r/\rОтдых на пляжах Палолем, Кола и старинный форт Кабо де Рама\rНаши преимущества\rСпециальные предложения\rСводная таблица цен\rИнтересно об Индии\rСоветы туристам в Гоа\rНовости\rПляжи Гоа\rИнформация об Индии\rИнформация о Гоа\rЭто интересно\rYour browser does not support SVGs\rВ Индии первыми научились выращивать рис и сахарный тростник, разводить домашнюю птицу\rYour browser does not support SVGs\rПогода в Гоа \rYour browser does not support SVGs\rВконтакте\rFacebook\rОписание\rПрограмма и стоимость\rОтзывы\rЗаказ\rДля групп от 6 человек цены устанавливаются индивидуально на все экскурсии!\rЕсли вы уже в Гоа, обязательно побывайте на одном из красивейших пляжей Южного Гоа - Палолеме и самом тихом и безлюдном пляже - Кола. Вы совершите водную прогулку и понаблюдаете за игрой дельфинов. Побываете в древнейшем форте Кабо де Рама (Kabo De Rama) и узнаете интересные легенды о Раме и Сите из великого эпоса Рамаяна, связанные с мысом Рамы. Поднимитесь на башню, откуда открывается восхитительный вид на бесконечную береговую линию.\rМир создан для любви и гармонии с собой и окружающим миром. Вы обязательно убедитесь в этом, побывав здесь.\rYour browser does not support SVGs\rОткрыть галерею\rПляж Палолем\rОдин из самых красивых пляжей Гоа. Здесь вы найдете не только ласковое море, бесконечный белоснежный пляж, кокосовые пальмы у самой кромки моря, но и необычную очень уютную атмосферу. На лодке мы выйдем в море, полюбуемся дельфинами, доплывем до острова. Вы насладитесь красотой вокруг, бредя по нежнейшему песку.\rПляж Кола\rРомантичный, удивительный, уединенный с нетронутой береговой линией и ,конечно, просто красивый, с лагуной, где можно погрузиться в спокойное море.\rФорт Кабо де Рама\rОдна из старейших крепостей в Гоа.\rФорт Кабо де Рама имеет интересную историю. Мы обязательно расскажем вам, связаные с ним увлекательные легенды и вы почувствуете мистическую атмосферу мыса Рамы. В этих местах провели 14 лет в изгнании великий герой Рамаяны Рама и его жена Сита. Фортом владели индийские правители и мусульманские шахи, в 1763 году Кабо де Рама был захвачен португальцами. Часть крепости сохранилась, часть разрушена. Белоснежная церковь Святого Антониа (Santo Antonio) внутри форта, башни, большие пушки, колодец, в который подавалась горячая и холодная вода из природных источников, великолепный вид, открывающийся со стен крепости.\rYour browser does not support SVGs\rОткрыть галерею\rПоделиться:\rЗаказать экскурсию\rКонтакты\rИндия\r+91 8888 71 79 22\r+91 8888 70 40 05\r+91 7875 00 99 44\rРоссия\r+7 981 771 79 22\rE-mail\rinfo@tvoygoa.ru\rПрисоединяйтесь к нам\rYour browser does not support SVGs\rYour browser does not support SVGs\rYour browser does not support SVGs\rРазработка -\rAE! studio\rДизайн от\rPixeljam\r© 2011-2016 «Твой Гоа»','','','','22dcf593e5f4a5772098388af4ebf28f',NULL,NULL),(8,'2016-08-25 22:11:35','main','s1|/local/verstka/exs-open-4.html',0,NULL,NULL,NULL,'/local/verstka/exs-open-4.html','Surya Travels | Экскурсии | Отдых на пляжах Палолем, Кола и старинный форт Кабо де Рама','Экскурсии\rУслуги\rГалерея\rFAQ\rЗаказ услуг\rОтзывы\rКонтакты\rYour browser does not support SVGs\rIN. \r+91 8888 71 79 22\rRU. \r+7 981 771 79 22\rОтдых на пляжах Палолем, Кола и старинный форт Кабо де Рама\rГлавная\r/\rЭкскурсии\r/\rОтдых на пляжах Палолем, Кола и старинный форт Кабо де Рама\rНаши преимущества\rСпециальные предложения\rСводная таблица цен\rИнтересно об Индии\rСоветы туристам в Гоа\rНовости\rПляжи Гоа\rИнформация об Индии\rИнформация о Гоа\rЭто интересно\rYour browser does not support SVGs\rВ Индии первыми научились выращивать рис и сахарный тростник, разводить домашнюю птицу\rYour browser does not support SVGs\rПогода в Гоа \rYour browser does not support SVGs\rВконтакте\rFacebook\rОписание\rПрограмма и стоимость\rОтзывы\rЗаказ\rПожалуйста, обращайте внимание на правильность заполнения полей Емейл и Телефон. Если эти данные будут введены неверно, мы не сможем связаться с вами.\rОриентировочная дата*\rYour browser does not support SVGs\rНазвание отеля\rКоличество людей*\rYour browser does not support SVGs\rYour browser does not support SVGs\rИмя*\rEmail*\rТелефон*\rДополнительная информация\r \rЗаказать\rКонтакты\rИндия\r+91 8888 71 79 22\r+91 8888 70 40 05\r+91 7875 00 99 44\rРоссия\r+7 981 771 79 22\rE-mail\rinfo@tvoygoa.ru\rПрисоединяйтесь к нам\rYour browser does not support SVGs\rYour browser does not support SVGs\rYour browser does not support SVGs\rРазработка -\rAE! studio\rДизайн от\rPixeljam\r© 2011-2016 «Твой Гоа»','','','','22dcf593e5f4a5772098388af4ebf28f',NULL,NULL),(9,'2016-08-25 22:11:35','main','s1|/local/verstka/gallery-open.html',0,NULL,NULL,NULL,'/local/verstka/gallery-open.html','Surya Travels | Фотогалерея | Колхапур и Махабалешваре','Экскурсии\rУслуги\rГалерея\rFAQ\rЗаказ услуг\rОтзывы\rКонтакты\rYour browser does not support SVGs\rIN. \r+91 8888 71 79 22\rRU. \r+7 981 771 79 22\rКолхапур и Махабалешваре\rГлавная\r/\rФотогалерея\r/\rКолхапур и Махабалешваре\rНаши преимущества\rСпециальные предложения\rСводная таблица цен\rИнтересно об Индии\rСоветы туристам в Гоа\rНовости\rПляжи Гоа\rИнформация об Индии\rИнформация о Гоа\rЭто интересно\rYour browser does not support SVGs\rВ Индии первыми научились выращивать рис и сахарный тростник, разводить домашнюю птицу\rYour browser does not support SVGs\rПогода в Гоа \rYour browser does not support SVGs\rВконтакте\rFacebook\rYour browser does not support SVGs\rНовый дворец махараджи в Колхапуре\rYour browser does not support SVGs\rВид на долину в Махабалешваре\rYour browser does not support SVGs\rСмотровая площадка Wilson\rYour browser does not support SVGs\rВид на долину в Махабалешваре\rYour browser does not support SVGs\rВид на долину в Махабалешваре\rКонтакты\rИндия\r+91 8888 71 79 22\r+91 8888 70 40 05\r+91 7875 00 99 44\rРоссия\r+7 981 771 79 22\rE-mail\rinfo@tvoygoa.ru\rПрисоединяйтесь к нам\rYour browser does not support SVGs\rYour browser does not support SVGs\rYour browser does not support SVGs\rРазработка -\rAE! studio\rДизайн от\rPixeljam\r© 2011-2016 «Твой Гоа»\rВид на долину в Махабалешваре\rНовый дворец махараджи в Колхапуре\rСмотровая площадка Wilson\r-->','','','','22dcf593e5f4a5772098388af4ebf28f',NULL,NULL),(10,'2016-08-25 22:11:35','main','s1|/local/verstka/index.html',0,NULL,NULL,NULL,'/local/verstka/index.html','Surya Travels | Главная','Экскурсии\rУслуги\rГалерея\rFAQ\rЗаказ услуг\rОтзывы\rКонтакты\rYour browser does not support SVGs\rIN. \r+91 8888 71 79 22\rRU. \r+7 981 771 79 22\rОтдых на пляжах Палолем, Кола и старинный форт Кабо де Рама\rМир создан для любви и гармонии с собой и окружающим миром. Вы обязательно убедитесь в этом, побывав на этой экскурсии.\rПодробнее\rОтдых на пляжах Палолем, Кола и старинный форт Кабо де Рама\rМир создан для любви и гармонии с собой и окружающим миром. Вы обязательно убедитесь в этом, побывав на этой экскурсии.\rПодробнее\rНаши преимущества\rСпециальные предложения\rСводная таблица цен\rИнтересно об Индии\rСоветы туристам в Гоа\rНовости\rПляжи Гоа\rИнформация об Индии\rИнформация о Гоа\rЭто интересно\rYour browser does not support SVGs\rВ Индии первыми научились выращивать рис и сахарный тростник, разводить домашнюю птицу\rYour browser does not support SVGs\rПогода в Гоа \rYour browser does not support SVGs\rВконтакте\rFacebook\rЭкскурсии по Гоа - удивительные путешествия по привлекательным ценам\rСколько бы ни писали об Индии и о Гоа - все будет мало.\rБесконечные пляжи Гоа, самое теплое море, потрясающие краски природы и музыка, завораживающие закаты и рассветы, древние индуистские храмы и колоритные восточные базары - все это, без преувеличения, о Гоа. Откройте для себя Индию - наши экскурсии по Гоа помогут вам в этом.\r“Твой Гоа” предлагает разнообразные экскурсии в Гоа и увлекательные туры по Индии. Мы предоставим вам возможность посетить на наших экскурсиях по Гоа самые известные исторические комплексы Гоа и соседних штатов, храмовые святыни и столицы древних княжеств, многие из которых охраняются Юнеско. На нашем сайте вы можете найти разнообразную информацию по отдыху в Индии: цены в Гоа, советы туристам, список достопримечательностей, интересные факты и пр.\rТоп 5 наших экскурсий\r \rМы покажем вам заповедники, джунгли и пляжи, водопады и плантации специй, вы пообщаетесь со слонами и обезьянками, увидите тигров, крокодилов и дельфинов, а также съездите на знаменитые экскурсии в Хампи, Гокарна и Биджапур. Разработанные нами экскурсии по Гоа - это не просто путешествия с гидом - это погружение в магию и тайну Индии, очарование её дворцов и храмов, рынков и уникальной, ни с чем не сравнимой энергетикой.\rК Вашим услугам трансфер и услуги такси, размещение в гостиницах и гестхаусах, коттеджах и бунгало. Все, что может Вам понадобиться для активного отдыха в Индии: рестораны и рынки, вечеринки и клубы, рыбалка.\rНа странице Экскурсии представлен полный перечень экскурсий и путешествий по Гоа и Индии, которые мы проводим.\rНаши туристы говорят о нас...\rМы живём и работаем в Индии уже более десяти лет. Мы любим эту страну, её культуру, историю, уважаем её традиции. Мы постараемся показать Индию так, как её видим мы. Ну а лучшим доказательством нашей отличной работы служат отзывы наших туристов. Со всеми отзывами Вы можете ознакомиться в \rсоответствующем разделе сайта\r, или же на \rстранице ВКонтакте\rYour browser does not support SVGs\rАлександр Петрович Гущин\r3/01/2016\rДобрый день и с Новым годом! Хотел бы выразить большую благодарность нашим гидам - Ольге (ездили в Мумбаи, 10 декабря) и особенно Елене Беленькой (весь Гоа, Хампи и Бадами, 12-14 декабря)! Замечательные гиды, очень интересные, отзывчивые, умеют работать с людьми (я как руководитель туристического агентства и гид со стажем точно это утверждаю!), знают информацию и просто замечательные люди!! Спасибо за проведенные дни в Индии, и я надеюсь мы еще воспользуемся услугами компании! PS. Большой привет Елене Беленькой!\rАлександр Петрович Гущин\r3/01/2016\rДобрый день и с Новым годом! Хотел бы выразить большую благодарность нашим гидам - Ольге (ездили в Мумбаи, 10 декабря) и особенно Елене Беленькой (весь Гоа, Хампи и Бадами, 12-14 декабря)! Замечательные гиды, очень интересные, отзывчивые, умеют работать с людьми (я как руководитель туристического агентства и гид со стажем точно это утверждаю!), знают информацию и просто замечательные люди!! Спасибо за проведенные дни в Индии, и я надеюсь мы еще воспользуемся услугами компании! PS. Большой привет Елене Беленькой!\rАлександр Петрович Гущин\r3/01/2016\rДобрый день и с Новым годом! Хотел бы выразить большую благодарность нашим гидам - Ольге (ездили в Мумбаи, 10 декабря) и особенно Елене Беленькой (весь Гоа, Хампи и Бадами, 12-14 декабря)! Замечательные гиды, очень интересные, отзывчивые, умеют работать с людьми (я как руководитель туристического агентства и гид со стажем точно это утверждаю!), знают информацию и просто замечательные люди!! Спасибо за проведенные дни в Индии, и я надеюсь мы еще воспользуемся услугами компании! PS. Большой привет Елене Беленькой!\rБольше, чем экскурсии по Гоа\rОрганизация и проведение свадебных церемоний\rАренда жилья\rОрганизация праздников\rУслуги такси\rБронирование авиа- и автобусных билетов\rАюрведа и лечение\rПочему Твой Гоа - лучшие\rМы работаем в Индии уже на протяжении более 5-ти лет. Мы работаем официально, имея все необходимые лицензии (лицензия на туристическую деятельность, лицензия на транспортную деятельность). Наши сотрудники получают 100% официальную зарплату. Почему это может быть важно для Вас? Всё это означает, что мы дорожим своей репутацией. В отличие от многих других компаний, которые работают полулегально или же вообще нелегально, и могут свернуть деятельность на следующий месяц, а то и завтра, мы выстраиваем долговременные отношения - как с нашими сотрудниками, так и с нашими туристами. И это даёт свои плоды - многие туристы, побывавшие на наших экскурсиях, возвращаются к нам снова и рекомендуют нас своим друзьям.\rПосле наших путешествий и экскурсии по Индии и Гоа вы вернётесь домой счастливее. Для этого мы здесь работаем.\rYour browser does not support SVGs\rПосмотрите наши экскурсии\rПерейти\rКонтакты\rИндия\r+91 8888 71 79 22\r+91 8888 70 40 05\r+91 7875 00 99 44\rРоссия\r+7 981 771 79 22\rE-mail\rinfo@tvoygoa.ru\rПрисоединяйтесь к нам\rYour browser does not support SVGs\rYour browser does not support SVGs\rYour browser does not support SVGs\rРазработка -\rAE! studio\rДизайн от\rPixeljam\r© 2011-2016 «Твой Гоа»','','','','22dcf593e5f4a5772098388af4ebf28f',NULL,NULL),(11,'2016-08-25 22:11:35','main','s1|/local/verstka/services.html',0,NULL,NULL,NULL,'/local/verstka/services.html','Surya Travels | Услуги','Экскурсии\rУслуги\rГалерея\rFAQ\rЗаказ услуг\rОтзывы\rКонтакты\rYour browser does not support SVGs\rIN. \r+91 8888 71 79 22\rRU. \r+7 981 771 79 22\rУслуги\rГлавная\r/\rУслуги\rНаши преимущества\rСпециальные предложения\rСводная таблица цен\rИнтересно об Индии\rСоветы туристам в Гоа\rНовости\rПляжи Гоа\rИнформация об Индии\rИнформация о Гоа\rЭто интересно\rYour browser does not support SVGs\rВ Индии первыми научились выращивать рис и сахарный тростник, разводить домашнюю птицу\rYour browser does not support SVGs\rПогода в Гоа \rYour browser does not support SVGs\rВконтакте\rFacebook\rАюрведа и лечение\rСвадебные церемонии\rОрганизация праздников\rАренда жилья\rБронирование авиабилетов по Индии\rКонтакты\rИндия\r+91 8888 71 79 22\r+91 8888 70 40 05\r+91 7875 00 99 44\rРоссия\r+7 981 771 79 22\rE-mail\rinfo@tvoygoa.ru\rПрисоединяйтесь к нам\rYour browser does not support SVGs\rYour browser does not support SVGs\rYour browser does not support SVGs\rРазработка -\rAE! studio\rДизайн от\rPixeljam\r© 2011-2016 «Твой Гоа»','','','','22dcf593e5f4a5772098388af4ebf28f',NULL,NULL),(12,'2016-08-25 22:11:35','main','s1|/local/verstka/exs-open-2.html',0,NULL,NULL,NULL,'/local/verstka/exs-open-2.html','Surya Travels | Экскурсии | Отдых на пляжах Палолем, Кола и старинный форт Кабо де Рама','Экскурсии\rУслуги\rГалерея\rFAQ\rЗаказ услуг\rОтзывы\rКонтакты\rYour browser does not support SVGs\rIN. \r+91 8888 71 79 22\rRU. \r+7 981 771 79 22\rОтдых на пляжах Палолем, Кола и старинный форт Кабо де Рама\rГлавная\r/\rЭкскурсии\r/\rОтдых на пляжах Палолем, Кола и старинный форт Кабо де Рама\rНаши преимущества\rСпециальные предложения\rСводная таблица цен\rИнтересно об Индии\rСоветы туристам в Гоа\rНовости\rПляжи Гоа\rИнформация об Индии\rИнформация о Гоа\rЭто интересно\rYour browser does not support SVGs\rВ Индии первыми научились выращивать рис и сахарный тростник, разводить домашнюю птицу\rYour browser does not support SVGs\rПогода в Гоа \rYour browser does not support SVGs\rВконтакте\rFacebook\rОписание\rПрограмма и стоимость\rОтзывы\rЗаказ\rПрограмма\rДень 1\r08.00\rОтправление из отеля\r10.00\rПрибытие на пляж Палолем\r10.30 - 12.00\rПрогулка на лодке на остров Бабочек\r12.00 - 15.00\rОбед и свободное время на пляже\r15.00\rОтправление на пляж Кола (20 минут в пути)\r15.20 - 17.00\rСвободное время на пляже Кола\r17.00\rОтправление в форт Кабо де Рама\r17.15 - 18.30\rОсмотр форта Кабо де Рама и встреча заката\rВ экскурсию включено:\rТрансфер на собственном транспорте с кондиционером, страховка, услуги русского гида, прогулка на лодке на остров.\rПродолжительность: c 8.00 до 20.30\rВремя в пути: 2 часа\rСтоимость\rЦЕНЫ на экскурсию, исходя из количества туристов в машине.\rВсе наши автомобили рассчитаны на 6-8 туристов + русский гид, миниавтобусы на 12 туристов + русский гид. Если Вы хотите большего комфорта, Вам следует выбрать размещение по 4 человека в автомобиле.\rМы сами формируем группы. Вам достаточно сообщить день планируемой поездки и количество туристов в автомобиле, которое вас устроит.\rВы можете заказать экскурсию непосредственно в Гоа по тел: +91 8888 70 40 05, +91 8888 71 79 22\rлибо воспользоваться формой заказа.\rЗаказывая экскурсии на сайте, вы получаете 5% скидку\rДля детей до 12 лет действует скидка 50%\rСкидки и акции на экскурсии без русского гида не распространяются.\rСкидки по акциям не суммируются.\rДля групп от 6 человек цены устанавливаются индивидуально на все экскурсии!\r6 - 12 человек\rза 1 человека\r5 человек\rза 1 человека\r45$\r50$\r40$\rПри заказе с сайта\r45$\rПри заказе с сайта\r20$\rДля детей от 12 лет\r20$\rДля детей от 12 лет\rВнимание! Теперь вы можете оплатить экскурсии банковскими картами, мы делаем все для вашего удобства.\rНаличными мы принимаем деньги в любой валюте: доллары, евро, рупии, рубли.\rЗаказать экскурсию\rКонтакты\rИндия\r+91 8888 71 79 22\r+91 8888 70 40 05\r+91 7875 00 99 44\rРоссия\r+7 981 771 79 22\rE-mail\rinfo@tvoygoa.ru\rПрисоединяйтесь к нам\rYour browser does not support SVGs\rYour browser does not support SVGs\rYour browser does not support SVGs\rРазработка -\rAE! studio\rДизайн от\rPixeljam\r© 2011-2016 «Твой Гоа»','','','','22dcf593e5f4a5772098388af4ebf28f',NULL,NULL),(13,'2016-09-16 15:43:59','main','s1|/photos/index.php',0,NULL,NULL,NULL,'/photos/index.php','Фотогалерея','Старый ГОА и индуистские храмы\rФото пляжей Северный Гоа и Южный Гоа, фото Гоа\rКолхапур и Махабалешвар\rПляжи ГОА\rСтарый ГОА и индуистские храмы\rСтарый ГОА и индуистские храмы\rСтарый ГОА и индуистские храмы\rYour browser does not support SVGs\rНовый дворец махараджи в Колхапуре\rYour browser does not support SVGs\rВид на долину в Махабалешваре\rYour browser does not support SVGs\rСмотровая площадка Wilson\rYour browser does not support SVGs\rВид на долину в Махабалешваре\rYour browser does not support SVGs\rВид на долину в Махабалешваре\rВид на долину в Махабалешваре\rНовый дворец махараджи в Колхапуре\rСмотровая площадка Wilson','','','','22dcf593e5f4a5772098388af4ebf28f',NULL,NULL),(14,'2016-09-16 15:43:59','main','s1|/services/index.php',0,NULL,NULL,NULL,'/services/index.php','Услуги','Аюрведа и лечение\rСвадебные церемонии\rОрганизация праздников\rАренда жилья\rБронирование авиабилетов по Индии','','','','22dcf593e5f4a5772098388af4ebf28f',NULL,NULL),(15,'2016-08-25 22:11:35','main','s1|/contacts/index.php',0,NULL,NULL,NULL,'/contacts/index.php','Контакты','','','','','22dcf593e5f4a5772098388af4ebf28f',NULL,NULL),(16,'2016-10-22 23:34:29','main','s1|/excursion/index.php',0,NULL,NULL,NULL,'/excursion/index.php','Экскурсии','','','','','22dcf593e5f4a5772098388af4ebf28f',NULL,NULL),(17,'2016-08-25 22:11:35','main','s1|/excursion/132/index.php',0,NULL,NULL,NULL,'/excursion/132/index.php','Сводная таблица цен','','','','','22dcf593e5f4a5772098388af4ebf28f',NULL,NULL),(18,'2016-10-23 20:32:53','main','s1|/faq/index.php',0,NULL,NULL,NULL,'/faq/index.php','FAQ','','','','','22dcf593e5f4a5772098388af4ebf28f',NULL,NULL),(19,'2016-09-16 15:43:59','main','s1|/news/index.php',0,NULL,NULL,NULL,'/news/index.php','Новости','20 ноября 2015\rКалининградские турфирмы предлагают курорты Азии взамен Турции\rЕсли после запрета на полеты в Египет было заметно повышение цен туроператорами, и людям было дороговато перебронировать путевки, то сейчас цены приемлемые\r20 ноября 2015\rТаможня России поддержала введение сбора в 10-15 евро на посылки стоимостью от 22 до 150 евро из зарубежных интернет-магазинов\r23 ноября 2015 года стало известно, что введение подобного налога обсуждается на уровне Евразийского экономического союза, в который входят Армения, республика Беларусь, Казахстан, Киргизия и Россия.','','','','22dcf593e5f4a5772098388af4ebf28f',NULL,NULL),(20,'2016-08-25 22:11:35','main','s1|/order/index.php',0,NULL,NULL,NULL,'/order/index.php','Заказ услуг','','','','','22dcf593e5f4a5772098388af4ebf28f',NULL,NULL),(21,'2016-10-18 21:10:48','main','s1|/responses/index.php',0,NULL,NULL,NULL,'/responses/index.php','Отзывы туристов','','','','','22dcf593e5f4a5772098388af4ebf28f',NULL,NULL),(22,'2016-09-16 18:55:59','iblock','12',0,NULL,NULL,NULL,'=ID=12&EXTERNAL_ID=12&CODE=&IBLOCK_SECTION_ID=&IBLOCK_TYPE_ID=info&IBLOCK_ID=5&IBLOCK_CODE=excursion&IBLOCK_EXTERNAL_ID=','Экскурсия 1','Мы особенно рекомендуем эту экскурсию туристам, приехавшим в Гоа с детьми. Все самое интересное в Гоа вы увидите не за несколько дней, а за 1 экскурсию:\rВодопад Дудхсагар (и много обезьян).\rПлантации специй (лавка специй и лечебных масел).\rОбед в саду. Встреча со слонами.\rСтарый Гоа (включен Юнеско в список городов-памятников).\rДревние индуистские храмы - Храм Шри Мангеши.','историческая','info','5','22dcf593e5f4a5772098388af4ebf28f',NULL,NULL),(23,'2016-08-28 22:07:43','iblock','13',0,NULL,NULL,NULL,'=ID=13&EXTERNAL_ID=13&CODE=&IBLOCK_SECTION_ID=&IBLOCK_TYPE_ID=info&IBLOCK_ID=5&IBLOCK_CODE=excursion&IBLOCK_EXTERNAL_ID=','Экскурсия 2','','историческая','info','5','22dcf593e5f4a5772098388af4ebf28f',NULL,NULL),(24,'2016-08-21 14:31:29','iblock','14',0,NULL,NULL,NULL,'=ID=14&EXTERNAL_ID=14&CODE=&IBLOCK_SECTION_ID=&IBLOCK_TYPE_ID=info&IBLOCK_ID=5&IBLOCK_CODE=excursion&IBLOCK_EXTERNAL_ID=','Экскурсия 3','','','info','5','22dcf593e5f4a5772098388af4ebf28f',NULL,NULL),(25,'2016-08-28 22:04:09','iblock','15',0,NULL,NULL,NULL,'=ID=15&EXTERNAL_ID=15&CODE=&IBLOCK_SECTION_ID=&IBLOCK_TYPE_ID=info&IBLOCK_ID=5&IBLOCK_CODE=excursion&IBLOCK_EXTERNAL_ID=','Экскурсия 4','','1 день','info','5','22dcf593e5f4a5772098388af4ebf28f',NULL,NULL),(26,'2016-10-23 23:30:05','iblock','16',0,NULL,NULL,NULL,'=ID=16&EXTERNAL_ID=16&IBLOCK_SECTION_ID=&IBLOCK_TYPE_ID=info&IBLOCK_ID=5&IBLOCK_CODE=excursion&IBLOCK_EXTERNAL_ID=&CODE=%2Fexcursion%2Fentertaining%2Fall_goa%2F','Экскурсия 5','Для групп от 6 человек цены устанавливаются индивидуально на все экскурсии!\rЕсли вы уже в Гоа, обязательно побывайте на одном из красивейших пляжей Южного Гоа - Палолеме и самом тихом и безлюдном пляже - Кола. Вы совершите водную прогулку и понаблюдаете за игрой дельфинов. Побываете в древнейшем форте Кабо де Рама (Kabo De Rama) и узнаете интересные легенды о Раме и Сите из великого эпоса Рамаяна, связанные с мысом Рамы. Поднимитесь на башню, откуда открывается восхитительный вид на бесконечную береговую линию.\rМир создан для любви и гармонии с собой и окружающим миром. Вы обязательно убедитесь в этом, побывав здесь.\rYour browser does not support SVGs\rОткрыть галерею\rПляж Палолем\rОдин из самых красивых пляжей Гоа. Здесь вы найдете не только ласковое море, бесконечный белоснежный пляж, кокосовые пальмы у самой кромки моря, но и необычную очень уютную атмосферу. На лодке мы выйдем в море, полюбуемся дельфинами, доплывем до острова. Вы насладитесь красотой вокруг, бредя по нежнейшему песку.\rПляж Кола\rРомантичный, удивительный, уединенный с нетронутой береговой линией и ,конечно, просто красивый, с лагуной, где можно погрузиться в спокойное море.\rФорт Кабо де Рама\rОдна из старейших крепостей в Гоа.\rФорт Кабо де Рама имеет интересную историю. Мы обязательно расскажем вам, связаные с ним увлекательные легенды и вы почувствуете мистическую атмосферу мыса Рамы. В этих местах провели 14 лет в изгнании великий герой Рамаяны Рама и его жена Сита. Фортом владели индийские правители и мусульманские шахи, в 1763 году Кабо де Рама был захвачен португальцами. Часть крепости сохранилась, часть разрушена. Белоснежная церковь Святого Антониа (Santo Antonio) внутри форта, башни, большие пушки, колодец, в который подавалась горячая и холодная вода из природных источников, великолепный вид, открывающийся со стен крепости.','историческая, 2 дня, с детьми','info','5','22dcf593e5f4a5772098388af4ebf28f',NULL,NULL),(27,'2016-08-28 22:05:35','iblock','17',0,NULL,NULL,NULL,'=ID=17&EXTERNAL_ID=17&CODE=&IBLOCK_SECTION_ID=&IBLOCK_TYPE_ID=info&IBLOCK_ID=5&IBLOCK_CODE=excursion&IBLOCK_EXTERNAL_ID=','Экскурсия 6','','развлекательная','info','5','22dcf593e5f4a5772098388af4ebf28f',NULL,NULL),(28,'2016-10-16 17:19:20','iblock','18',0,NULL,NULL,NULL,'=ID=18&EXTERNAL_ID=18&CODE=&IBLOCK_SECTION_ID=&IBLOCK_TYPE_ID=info&IBLOCK_ID=5&IBLOCK_CODE=excursion&IBLOCK_EXTERNAL_ID=','Самая новая экскурсия','','','info','5','22dcf593e5f4a5772098388af4ebf28f',NULL,NULL),(29,'2016-10-23 18:57:46','iblock','S1',0,NULL,NULL,NULL,'=ID=1&EXTERNAL_ID=&IBLOCK_TYPE_ID=info&IBLOCK_ID=6&IBLOCK_CODE=photos&IBLOCK_EXTERNAL_ID=&CODE=','Экскурсия 5','',NULL,'info','6','22dcf593e5f4a5772098388af4ebf28f',NULL,NULL),(30,'2016-10-23 18:59:42','iblock','19',0,NULL,NULL,NULL,'=ID=19&EXTERNAL_ID=19&IBLOCK_SECTION_ID=1&IBLOCK_TYPE_ID=info&IBLOCK_ID=6&IBLOCK_CODE=photos&IBLOCK_EXTERNAL_ID=&CODE=','Фото 1','','','info','6','22dcf593e5f4a5772098388af4ebf28f',NULL,NULL),(31,'2016-10-23 19:00:08','iblock','20',0,NULL,NULL,NULL,'=ID=20&EXTERNAL_ID=20&IBLOCK_SECTION_ID=1&IBLOCK_TYPE_ID=info&IBLOCK_ID=6&IBLOCK_CODE=photos&IBLOCK_EXTERNAL_ID=&CODE=','Фото 2','','','info','6','22dcf593e5f4a5772098388af4ebf28f',NULL,NULL);
/*!40000 ALTER TABLE `b_search_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_search_content_freq`
--

DROP TABLE IF EXISTS `b_search_content_freq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_search_content_freq` (
  `STEM` int(11) NOT NULL DEFAULT '0',
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FREQ` float DEFAULT NULL,
  `TF` float DEFAULT NULL,
  UNIQUE KEY `UX_B_SEARCH_CONTENT_FREQ` (`STEM`,`LANGUAGE_ID`,`SITE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_search_content_freq`
--

LOCK TABLES `b_search_content_freq` WRITE;
/*!40000 ALTER TABLE `b_search_content_freq` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_search_content_freq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_search_content_param`
--

DROP TABLE IF EXISTS `b_search_content_param`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_search_content_param` (
  `SEARCH_CONTENT_ID` int(11) NOT NULL,
  `PARAM_NAME` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `PARAM_VALUE` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  KEY `IX_B_SEARCH_CONTENT_PARAM` (`SEARCH_CONTENT_ID`,`PARAM_NAME`),
  KEY `IX_B_SEARCH_CONTENT_PARAM_1` (`PARAM_NAME`,`PARAM_VALUE`(50),`SEARCH_CONTENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_search_content_param`
--

LOCK TABLES `b_search_content_param` WRITE;
/*!40000 ALTER TABLE `b_search_content_param` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_search_content_param` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_search_content_right`
--

DROP TABLE IF EXISTS `b_search_content_right`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_search_content_right` (
  `SEARCH_CONTENT_ID` int(11) NOT NULL,
  `GROUP_CODE` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `UX_B_SEARCH_CONTENT_RIGHT` (`SEARCH_CONTENT_ID`,`GROUP_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_search_content_right`
--

LOCK TABLES `b_search_content_right` WRITE;
/*!40000 ALTER TABLE `b_search_content_right` DISABLE KEYS */;
INSERT INTO `b_search_content_right` VALUES (1,'G2'),(2,'G2'),(3,'G2'),(4,'G2'),(5,'G2'),(6,'G2'),(7,'G2'),(8,'G2'),(9,'G2'),(10,'G2'),(11,'G2'),(12,'G2'),(13,'G2'),(14,'G2'),(15,'G2'),(16,'G2'),(17,'G2'),(18,'G2'),(19,'G2'),(20,'G2'),(21,'G2'),(22,'G2'),(23,'G2'),(24,'G2'),(25,'G2'),(26,'G1'),(26,'G2'),(27,'G2'),(28,'G2'),(29,'G1'),(30,'G1'),(31,'G1');
/*!40000 ALTER TABLE `b_search_content_right` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_search_content_site`
--

DROP TABLE IF EXISTS `b_search_content_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_search_content_site` (
  `SEARCH_CONTENT_ID` int(18) NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `URL` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`SEARCH_CONTENT_ID`,`SITE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_search_content_site`
--

LOCK TABLES `b_search_content_site` WRITE;
/*!40000 ALTER TABLE `b_search_content_site` DISABLE KEYS */;
INSERT INTO `b_search_content_site` VALUES (1,'s1',''),(2,'s1',''),(3,'s1',''),(4,'s1',''),(5,'s1',''),(6,'s1',''),(7,'s1',''),(8,'s1',''),(9,'s1',''),(10,'s1',''),(11,'s1',''),(12,'s1',''),(13,'s1',''),(14,'s1',''),(15,'s1',''),(16,'s1',''),(17,'s1',''),(18,'s1',''),(19,'s1',''),(20,'s1',''),(21,'s1',''),(22,'s1',''),(23,'s1',''),(24,'s1',''),(25,'s1',''),(26,'s1',''),(27,'s1',''),(28,'s1',''),(29,'s1',''),(30,'s1',''),(31,'s1','');
/*!40000 ALTER TABLE `b_search_content_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_search_content_stem`
--

DROP TABLE IF EXISTS `b_search_content_stem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_search_content_stem` (
  `SEARCH_CONTENT_ID` int(11) NOT NULL,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `STEM` int(11) NOT NULL,
  `TF` float NOT NULL,
  `PS` float NOT NULL,
  UNIQUE KEY `UX_B_SEARCH_CONTENT_STEM` (`STEM`,`LANGUAGE_ID`,`TF`,`PS`,`SEARCH_CONTENT_ID`),
  KEY `IND_B_SEARCH_CONTENT_STEM` (`SEARCH_CONTENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci DELAY_KEY_WRITE=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_search_content_stem`
--

LOCK TABLES `b_search_content_stem` WRITE;
/*!40000 ALTER TABLE `b_search_content_stem` DISABLE KEYS */;
INSERT INTO `b_search_content_stem` VALUES (1,'ru',1,0.1203,1),(1,'ru',2,0.458,271),(1,'ru',3,0.4812,174.6),(1,'ru',4,0.1203,6),(1,'ru',5,0.2793,269.75),(1,'ru',6,0.1203,9),(1,'ru',7,0.1907,77),(1,'ru',8,0.1203,11),(1,'ru',9,0.1203,14),(1,'ru',10,0.4313,254),(1,'ru',11,0.1203,22),(1,'ru',12,0.1203,23),(1,'ru',13,0.1203,29),(1,'ru',14,0.1907,100),(1,'ru',15,0.1203,33),(1,'ru',16,0.1203,34),(1,'ru',17,0.1203,35),(1,'ru',18,0.1203,36),(1,'ru',19,0.1203,37),(1,'ru',20,0.1203,39),(1,'ru',21,0.1203,40),(1,'ru',22,0.1203,41),(1,'ru',23,0.1203,43),(1,'ru',24,0.1907,82),(1,'ru',25,0.1203,45),(1,'ru',26,0.1907,136),(1,'ru',27,0.1203,48),(1,'ru',28,0.1203,49),(1,'ru',29,0.1203,50),(1,'ru',30,0.1203,55),(1,'ru',31,0.1203,63),(1,'ru',32,0.458,367.077),(1,'ru',33,0.1203,72),(1,'ru',34,0.1907,252.5),(1,'ru',35,0.1203,83),(1,'ru',36,0.1907,111),(1,'ru',37,0.1203,89),(1,'ru',38,0.1203,90),(1,'ru',39,0.1203,99),(1,'ru',40,0.1203,101),(1,'ru',41,0.1203,102),(1,'ru',42,0.1203,109),(1,'ru',43,0.1203,110),(1,'ru',44,0.1203,111),(1,'ru',45,0.1203,114),(1,'ru',46,0.1203,115),(1,'ru',47,0.1203,115),(1,'ru',48,0.1907,171),(1,'ru',49,0.1203,117),(1,'ru',50,0.1203,119),(1,'ru',51,0.1203,121),(1,'ru',52,0.2406,390.667),(1,'ru',53,0.2406,308.333),(1,'ru',54,0.1203,125),(1,'ru',55,0.1203,126),(1,'ru',56,0.1907,263.5),(1,'ru',57,0.2793,315.75),(1,'ru',58,0.1203,137),(1,'ru',59,0.1203,139),(1,'ru',60,0.1907,204.5),(1,'ru',61,0.1203,147),(1,'ru',62,0.311,383.2),(1,'ru',63,0.1203,149),(1,'ru',64,0.1203,150),(1,'ru',65,0.1203,151),(1,'ru',66,0.1203,152),(1,'ru',67,0.1203,154),(1,'ru',68,0.1203,160),(1,'ru',69,0.1203,165),(1,'ru',70,0.1203,167),(1,'ru',71,0.1203,168),(1,'ru',72,0.1203,171),(1,'ru',73,0.1203,173),(1,'ru',74,0.1203,174),(1,'ru',75,0.1203,176),(1,'ru',76,0.1907,280.5),(1,'ru',77,0.1203,178),(1,'ru',78,0.1203,180),(1,'ru',79,0.1203,181),(1,'ru',80,0.1203,182),(1,'ru',81,0.1203,182),(1,'ru',82,0.1203,183),(1,'ru',83,0.1203,183),(1,'ru',84,0.1203,185),(1,'ru',85,0.1203,185),(1,'ru',86,0.1203,187),(1,'ru',87,0.1203,188),(1,'ru',88,0.1203,190),(1,'ru',89,0.1203,193),(1,'ru',90,0.1203,194),(1,'ru',91,0.1203,196),(1,'ru',92,0.1203,202),(1,'ru',93,0.1907,379.5),(1,'ru',94,0.1203,210),(1,'ru',95,0.1203,213),(1,'ru',96,0.1203,216),(1,'ru',97,0.1203,218),(1,'ru',98,0.1203,220),(1,'ru',99,0.1203,222),(1,'ru',100,0.1203,224),(1,'ru',101,0.1203,224),(1,'ru',102,0.1203,227),(1,'ru',103,0.1907,250),(1,'ru',104,0.1203,229),(1,'ru',105,0.1203,234),(1,'ru',106,0.1203,235),(1,'ru',107,0.2406,300.667),(1,'ru',108,0.1203,244),(1,'ru',109,0.1907,330.5),(1,'ru',110,0.1203,248),(1,'ru',111,0.1203,250),(1,'ru',112,0.1203,252),(1,'ru',113,0.1203,253),(1,'ru',114,0.1203,255),(1,'ru',115,0.1203,265),(1,'ru',116,0.1203,267),(1,'ru',117,0.1203,271),(1,'ru',118,0.1203,274),(1,'ru',119,0.1203,276),(1,'ru',120,0.1203,277),(1,'ru',121,0.1907,340.5),(1,'ru',122,0.1203,286),(1,'ru',123,0.1203,287),(1,'ru',124,0.1203,288),(1,'ru',125,0.1203,298),(1,'ru',126,0.1203,306),(1,'ru',127,0.1907,434),(1,'ru',128,0.1203,325),(1,'ru',129,0.311,459.2),(1,'ru',130,0.1907,383),(1,'ru',131,0.1203,332),(1,'ru',132,0.1907,385),(1,'ru',133,0.1203,340),(1,'ru',134,0.1203,342),(1,'ru',135,0.1203,344),(1,'ru',136,0.1203,345),(1,'ru',137,0.1203,346),(1,'ru',138,0.1203,348),(1,'ru',139,0.1203,355),(1,'ru',140,0.1203,356),(1,'ru',141,0.1203,361),(1,'ru',142,0.1907,398.5),(1,'ru',143,0.1203,371),(1,'ru',144,0.1203,373),(1,'ru',145,0.1203,374),(1,'ru',146,0.1203,375),(1,'ru',147,0.1907,381),(1,'ru',148,0.1203,378),(1,'ru',149,0.1203,385),(1,'ru',150,0.1203,389),(1,'ru',151,0.1203,391),(1,'ru',152,0.1203,392),(1,'ru',153,0.1203,398),(1,'ru',154,0.1203,399),(1,'ru',155,0.1907,407.5),(1,'ru',156,0.1203,406),(1,'ru',157,0.1203,407),(1,'ru',158,0.1203,408),(1,'ru',159,0.1203,409),(1,'ru',160,0.1203,410),(1,'ru',161,0.1203,412),(1,'ru',162,0.1203,412),(1,'ru',163,0.1203,415),(1,'ru',164,0.1203,416),(1,'ru',165,0.1203,418),(1,'ru',166,0.1203,419),(1,'ru',167,0.1203,419),(1,'ru',168,0.1203,420),(1,'ru',169,0.1203,422),(1,'ru',170,0.1907,448.5),(1,'ru',171,0.1203,434),(1,'ru',172,0.1203,436),(1,'ru',173,0.1907,456),(1,'ru',174,0.1203,446),(1,'ru',175,0.1203,448),(1,'ru',176,0.2406,451),(1,'ru',177,0.1203,452),(1,'ru',178,0.2406,475),(1,'ru',179,0.1203,456),(1,'ru',180,0.1907,497.5),(1,'ru',181,0.1203,465),(1,'ru',182,0.1203,466),(1,'ru',183,0.1203,468),(1,'ru',184,0.1203,478),(1,'ru',185,0.1203,480),(1,'ru',186,0.1203,488),(1,'ru',187,0.1203,491),(1,'ru',188,0.1203,493),(1,'ru',189,0.1203,500),(1,'ru',190,0.1203,503),(1,'ru',191,0.1203,504),(1,'ru',192,0.1203,507),(1,'ru',193,0.1203,510),(1,'ru',194,0.1203,511),(1,'ru',195,0.1203,513),(1,'ru',196,0.1203,514),(1,'ru',197,0.1203,517),(1,'ru',198,0.1203,518),(1,'ru',199,0.1203,522),(1,'ru',200,0.1203,524),(1,'ru',201,0.1203,525),(1,'ru',202,0.1203,526),(1,'ru',203,0.1203,544),(1,'ru',204,0.1203,546),(1,'ru',205,0.1203,550),(1,'ru',206,0.1203,554),(1,'ru',207,0.1907,557),(1,'ru',208,0.1203,559),(1,'ru',209,0.1203,562),(1,'ru',210,0.1203,568),(1,'ru',211,0.1203,578),(1,'ru',212,0.1203,579),(1,'ru',213,0.1203,580),(1,'ru',214,0.1203,589),(1,'ru',215,0.1203,596),(1,'ru',216,0.1203,597),(1,'ru',217,0.1203,598),(1,'ru',218,0.1203,599),(1,'ru',219,0.1203,600),(1,'ru',220,0.1203,601),(1,'ru',221,0.1203,602),(1,'ru',222,0.1203,605),(2,'ru',1,0.1792,221),(2,'ru',2,0.4804,396.5),(2,'ru',3,0.4185,300.583),(2,'ru',7,0.1792,218.5),(2,'ru',10,0.2923,214),(2,'ru',14,0.2923,257.8),(2,'ru',32,0.1131,43),(2,'ru',34,0.2626,507.25),(2,'ru',40,0.1131,337),(2,'ru',53,0.2626,390),(2,'ru',57,0.1131,715),(2,'ru',59,0.1792,61.5),(2,'ru',61,0.1131,53),(2,'ru',62,0.1131,54),(2,'ru',65,0.3175,382.833),(2,'ru',87,0.1131,177),(2,'ru',89,0.2262,309.667),(2,'ru',91,0.1131,191),(2,'ru',93,0.1131,667),(2,'ru',94,0.1131,200),(2,'ru',95,0.2262,432),(2,'ru',107,0.1792,7),(2,'ru',133,0.2626,556.5),(2,'ru',136,0.1792,556),(2,'ru',140,0.1792,385.5),(2,'ru',145,0.1792,564),(2,'ru',147,0.4185,308),(2,'ru',149,0.2262,450.333),(2,'ru',153,0.1792,404),(2,'ru',154,0.1792,515),(2,'ru',155,0.1792,520),(2,'ru',162,0.1131,262),(2,'ru',185,0.2262,290.333),(2,'ru',191,0.1792,516),(2,'ru',207,0.1792,244),(2,'ru',215,0.4623,373.875),(2,'ru',216,0.4623,374.875),(2,'ru',217,0.4623,375.875),(2,'ru',218,0.4623,376.875),(2,'ru',219,0.4623,377.875),(2,'ru',220,0.4623,378.875),(2,'ru',223,0.1131,1),(2,'ru',224,0.1131,2),(2,'ru',225,0.1131,6),(2,'ru',226,0.1131,7),(2,'ru',227,0.1131,8),(2,'ru',228,0.1792,322),(2,'ru',229,0.1131,18),(2,'ru',230,0.2626,486),(2,'ru',231,0.2262,434),(2,'ru',232,0.1792,331.5),(2,'ru',233,0.2626,339.25),(2,'ru',234,0.2923,331.8),(2,'ru',235,0.1792,344),(2,'ru',236,0.1792,345),(2,'ru',237,0.1131,44),(2,'ru',238,0.1131,45),(2,'ru',239,0.1131,46),(2,'ru',240,0.1131,47),(2,'ru',241,0.1131,48),(2,'ru',242,0.1131,57),(2,'ru',243,0.1131,76),(2,'ru',244,0.1131,77),(2,'ru',245,0.1131,78),(2,'ru',246,0.1131,79),(2,'ru',247,0.1131,81),(2,'ru',248,0.1131,82),(2,'ru',249,0.1131,83),(2,'ru',250,0.1131,84),(2,'ru',251,0.1131,85),(2,'ru',252,0.1131,92),(2,'ru',253,0.1792,405.5),(2,'ru',254,0.1131,103),(2,'ru',255,0.2626,305.75),(2,'ru',256,0.2626,308.75),(2,'ru',257,0.2626,309.75),(2,'ru',258,0.2626,311.75),(2,'ru',259,0.2626,312.75),(2,'ru',260,0.2626,313.75),(2,'ru',261,0.2626,314.75),(2,'ru',262,0.2626,315.75),(2,'ru',263,0.1792,144),(2,'ru',264,0.1792,147),(2,'ru',265,0.1792,148),(2,'ru',266,0.1131,138),(2,'ru',267,0.1131,143),(2,'ru',268,0.1792,224.5),(2,'ru',269,0.1131,145),(2,'ru',270,0.1131,146),(2,'ru',271,0.1131,147),(2,'ru',272,0.2626,352.25),(2,'ru',273,0.2626,353.25),(2,'ru',274,0.1131,179),(2,'ru',275,0.1131,180),(2,'ru',276,0.1131,188),(2,'ru',277,0.1131,193),(2,'ru',278,0.1131,201),(2,'ru',279,0.1131,203),(2,'ru',280,0.1131,211),(2,'ru',281,0.1131,214),(2,'ru',282,0.1131,215),(2,'ru',283,0.1131,217),(2,'ru',284,0.1131,218),(2,'ru',285,0.1131,220),(2,'ru',286,0.1131,224),(2,'ru',287,0.1131,225),(2,'ru',288,0.1131,227),(2,'ru',289,0.1131,228),(2,'ru',290,0.1131,229),(2,'ru',291,0.1131,232),(2,'ru',292,0.1131,233),(2,'ru',293,0.1131,238),(2,'ru',294,0.1131,241),(2,'ru',295,0.1131,243),(2,'ru',296,0.1131,245),(2,'ru',297,0.1131,248),(2,'ru',298,0.1792,327),(2,'ru',299,0.1131,251),(2,'ru',300,0.1131,252),(2,'ru',301,0.1131,254),(2,'ru',302,0.1131,256),(2,'ru',303,0.1131,258),(2,'ru',304,0.1131,260),(2,'ru',305,0.1131,261),(2,'ru',306,0.1131,266),(2,'ru',307,0.1131,268),(2,'ru',308,0.1131,269),(2,'ru',309,0.1131,276),(2,'ru',310,0.1131,278),(2,'ru',311,0.1131,294),(2,'ru',312,0.1131,295),(2,'ru',313,0.2923,480.6),(2,'ru',314,0.1131,304),(2,'ru',315,0.1131,313),(2,'ru',316,0.1131,315),(2,'ru',317,0.1131,317),(2,'ru',318,0.1131,318),(2,'ru',319,0.1131,326),(2,'ru',320,0.1131,327),(2,'ru',321,0.1131,329),(2,'ru',322,0.1131,330),(2,'ru',323,0.1792,347.5),(2,'ru',324,0.1131,334),(2,'ru',325,0.1131,342),(2,'ru',326,0.1131,345),(2,'ru',327,0.1131,351),(2,'ru',328,0.1131,355),(2,'ru',329,0.1131,357),(2,'ru',330,0.1131,359),(2,'ru',331,0.1131,361),(2,'ru',332,0.1131,376),(2,'ru',333,0.1131,377),(2,'ru',334,0.1131,380),(2,'ru',335,0.1131,382),(2,'ru',336,0.1131,386),(2,'ru',337,0.1131,392),(2,'ru',338,0.1131,405),(2,'ru',339,0.1131,407),(2,'ru',340,0.1131,408),(2,'ru',341,0.1131,417),(2,'ru',342,0.1131,418),(2,'ru',343,0.1792,502),(2,'ru',344,0.1792,503),(2,'ru',345,0.1792,508),(2,'ru',346,0.1792,524),(2,'ru',347,0.1792,526),(2,'ru',348,0.1792,527),(2,'ru',349,0.1792,536),(2,'ru',350,0.1792,543),(2,'ru',351,0.1792,545),(2,'ru',352,0.1792,548),(2,'ru',353,0.1792,549),(2,'ru',354,0.1792,552),(2,'ru',355,0.1792,553),(2,'ru',356,0.1792,558),(2,'ru',357,0.1792,559),(2,'ru',358,0.1792,560),(2,'ru',359,0.1131,539),(2,'ru',360,0.1131,540),(2,'ru',361,0.1131,540),(2,'ru',362,0.1131,642),(2,'ru',363,0.1131,643),(2,'ru',364,0.1131,644),(2,'ru',365,0.1131,646),(2,'ru',366,0.1131,647),(2,'ru',367,0.1131,648),(2,'ru',368,0.1131,649),(2,'ru',369,0.1131,650),(2,'ru',370,0.1131,656),(2,'ru',371,0.1131,657),(2,'ru',372,0.1131,658),(2,'ru',373,0.1131,665),(2,'ru',374,0.1131,686),(2,'ru',375,0.1131,688),(2,'ru',376,0.1131,694),(2,'ru',377,0.1131,695),(2,'ru',378,0.1131,697),(2,'ru',379,0.1131,698),(2,'ru',380,0.1131,701),(2,'ru',381,0.1131,704),(2,'ru',382,0.1131,705),(2,'ru',383,0.1131,706),(2,'ru',384,0.1131,710),(2,'ru',385,0.1131,713),(2,'ru',386,0.1131,716),(2,'ru',387,0.1131,719),(2,'ru',388,0.1792,724),(2,'ru',389,0.1131,727),(2,'ru',390,0.1131,729),(2,'ru',391,0.1131,731),(2,'ru',392,0.1131,733),(2,'ru',393,0.1131,735),(2,'ru',394,0.1131,736),(2,'ru',395,0.1131,737),(3,'ru',1,0.1843,218.5),(3,'ru',2,0.4427,326.154),(3,'ru',3,0.4023,315.5),(3,'ru',7,0.1843,221.5),(3,'ru',10,0.3006,216.4),(3,'ru',14,0.27,53.75),(3,'ru',32,0.1163,75),(3,'ru',34,0.27,460.5),(3,'ru',40,0.1163,311),(3,'ru',53,0.27,351.25),(3,'ru',59,0.1843,93.5),(3,'ru',61,0.1163,85),(3,'ru',62,0.1163,86),(3,'ru',65,0.3264,359.167),(3,'ru',87,0.1163,151),(3,'ru',89,0.2326,283.667),(3,'ru',91,0.1163,165),(3,'ru',93,0.1163,609),(3,'ru',94,0.1163,174),(3,'ru',95,0.2326,389),(3,'ru',107,0.1843,18),(3,'ru',133,0.27,505),(3,'ru',136,0.1843,504.5),(3,'ru',140,0.1163,141),(3,'ru',145,0.1843,512.5),(3,'ru',147,0.2326,101),(3,'ru',149,0.2326,407.333),(3,'ru',153,0.1163,133),(3,'ru',154,0.1843,463.5),(3,'ru',155,0.1843,468.5),(3,'ru',162,0.1163,236),(3,'ru',185,0.2326,264.333),(3,'ru',191,0.1843,464.5),(3,'ru',207,0.1843,218),(3,'ru',215,0.4303,383.833),(3,'ru',216,0.4303,384.833),(3,'ru',217,0.4303,385.833),(3,'ru',218,0.4303,386.833),(3,'ru',219,0.4303,387.833),(3,'ru',220,0.4303,388.833),(3,'ru',223,0.1163,1),(3,'ru',224,0.1163,2),(3,'ru',225,0.1163,17),(3,'ru',226,0.1163,18),(3,'ru',227,0.1843,79.5),(3,'ru',228,0.1843,298.5),(3,'ru',229,0.1163,29),(3,'ru',230,0.27,445.25),(3,'ru',231,0.2326,399),(3,'ru',232,0.1843,308),(3,'ru',233,0.27,315.75),(3,'ru',234,0.3006,307.8),(3,'ru',235,0.1843,320.5),(3,'ru',236,0.1843,321.5),(3,'ru',237,0.1163,76),(3,'ru',238,0.1163,77),(3,'ru',239,0.1163,78),(3,'ru',240,0.1163,79),(3,'ru',241,0.1163,80),(3,'ru',242,0.1163,89),(3,'ru',243,0.1163,108),(3,'ru',244,0.1163,109),(3,'ru',245,0.1163,110),(3,'ru',246,0.1163,111),(3,'ru',247,0.1163,113),(3,'ru',248,0.1163,114),(3,'ru',249,0.1163,115),(3,'ru',250,0.1163,116),(3,'ru',251,0.1163,117),(3,'ru',252,0.1163,124),(3,'ru',253,0.1163,134),(3,'ru',255,0.2326,39.6667),(3,'ru',256,0.2326,42.6667),(3,'ru',257,0.2326,43.6667),(3,'ru',258,0.2326,45.6667),(3,'ru',259,0.2326,46.6667),(3,'ru',260,0.2326,47.6667),(3,'ru',261,0.2326,48.6667),(3,'ru',262,0.2326,49.6667),(3,'ru',267,0.1843,358.5),(3,'ru',268,0.2326,332.667),(3,'ru',269,0.1163,146),(3,'ru',270,0.1163,147),(3,'ru',271,0.1163,148),(3,'ru',272,0.27,328.75),(3,'ru',273,0.27,329.75),(3,'ru',274,0.1163,153),(3,'ru',275,0.1163,154),(3,'ru',276,0.1163,162),(3,'ru',277,0.1163,167),(3,'ru',278,0.1163,175),(3,'ru',279,0.1163,177),(3,'ru',280,0.1163,185),(3,'ru',281,0.1163,188),(3,'ru',282,0.1163,189),(3,'ru',283,0.1163,191),(3,'ru',284,0.1163,192),(3,'ru',285,0.1163,194),(3,'ru',286,0.1163,198),(3,'ru',287,0.1163,199),(3,'ru',288,0.1163,201),(3,'ru',289,0.1163,202),(3,'ru',290,0.1163,203),(3,'ru',291,0.1163,206),(3,'ru',292,0.1163,207),(3,'ru',293,0.1163,212),(3,'ru',294,0.1163,215),(3,'ru',295,0.1163,217),(3,'ru',296,0.1163,219),(3,'ru',297,0.1163,222),(3,'ru',298,0.1843,301),(3,'ru',299,0.1163,225),(3,'ru',300,0.1163,226),(3,'ru',301,0.1163,228),(3,'ru',302,0.1163,230),(3,'ru',303,0.1163,232),(3,'ru',304,0.1163,234),(3,'ru',305,0.1163,235),(3,'ru',306,0.1163,240),(3,'ru',307,0.1163,242),(3,'ru',308,0.1163,243),(3,'ru',309,0.1163,250),(3,'ru',310,0.1163,252),(3,'ru',311,0.1163,268),(3,'ru',312,0.1163,269),(3,'ru',313,0.3006,434.2),(3,'ru',314,0.1163,278),(3,'ru',315,0.1163,287),(3,'ru',316,0.1163,289),(3,'ru',317,0.1163,291),(3,'ru',318,0.1163,292),(3,'ru',319,0.1163,300),(3,'ru',320,0.1163,301),(3,'ru',321,0.1163,303),(3,'ru',322,0.1163,304),(3,'ru',323,0.1843,321.5),(3,'ru',324,0.1163,308),(3,'ru',325,0.1163,316),(3,'ru',326,0.1163,319),(3,'ru',327,0.1163,325),(3,'ru',328,0.1163,329),(3,'ru',329,0.1163,331),(3,'ru',330,0.1163,333),(3,'ru',331,0.1163,335),(3,'ru',332,0.1163,350),(3,'ru',333,0.1163,351),(3,'ru',334,0.1163,354),(3,'ru',335,0.1163,356),(3,'ru',336,0.1163,360),(3,'ru',337,0.1163,366),(3,'ru',338,0.1163,379),(3,'ru',339,0.1163,381),(3,'ru',340,0.1163,382),(3,'ru',341,0.1163,391),(3,'ru',342,0.1163,392),(3,'ru',343,0.1843,450.5),(3,'ru',344,0.1843,451.5),(3,'ru',345,0.1843,456.5),(3,'ru',346,0.1843,472.5),(3,'ru',347,0.1843,474.5),(3,'ru',348,0.1843,475.5),(3,'ru',349,0.1843,484.5),(3,'ru',350,0.1843,491.5),(3,'ru',351,0.1843,493.5),(3,'ru',352,0.1843,496.5),(3,'ru',353,0.1843,497.5),(3,'ru',354,0.1843,500.5),(3,'ru',355,0.1843,501.5),(3,'ru',356,0.1843,506.5),(3,'ru',357,0.1843,507.5),(3,'ru',358,0.1843,508.5),(3,'ru',359,0.1163,496),(3,'ru',360,0.1163,497),(3,'ru',361,0.1163,497),(3,'ru',362,0.1163,584),(3,'ru',363,0.1163,585),(3,'ru',364,0.1163,586),(3,'ru',365,0.1163,588),(3,'ru',366,0.1163,589),(3,'ru',367,0.1163,590),(3,'ru',368,0.1163,591),(3,'ru',369,0.1163,592),(3,'ru',370,0.1163,598),(3,'ru',371,0.1163,599),(3,'ru',372,0.1163,600),(3,'ru',373,0.1163,607),(3,'ru',374,0.1163,628),(3,'ru',375,0.1163,630),(3,'ru',376,0.1163,636),(3,'ru',377,0.1163,637),(3,'ru',378,0.1163,639),(3,'ru',379,0.1163,640),(3,'ru',396,0.1163,135),(3,'ru',397,0.1163,136),(3,'ru',398,0.1163,138),(3,'ru',399,0.1163,571),(4,'ru',1,0.1262,41),(4,'ru',2,0.3262,45.6),(4,'ru',3,0.3262,126.2),(4,'ru',4,0.2,197.5),(4,'ru',5,0.2,185.5),(4,'ru',7,0.1262,49),(4,'ru',10,0.293,120),(4,'ru',14,0.1262,58),(4,'ru',23,0.2,242.5),(4,'ru',24,0.2524,174.333),(4,'ru',26,0.2,217.5),(4,'ru',32,0.1262,43),(4,'ru',34,0.1262,356),(4,'ru',43,0.2524,207),(4,'ru',59,0.2,61.5),(4,'ru',61,0.1262,53),(4,'ru',62,0.1262,54),(4,'ru',65,0.2,58.5),(4,'ru',79,0.2,196.5),(4,'ru',93,0.1262,324),(4,'ru',101,0.2,221.5),(4,'ru',107,0.2,7),(4,'ru',147,0.1262,10),(4,'ru',153,0.1262,101),(4,'ru',185,0.2,183.5),(4,'ru',205,0.2,214.5),(4,'ru',215,0.4192,165.333),(4,'ru',216,0.4192,166.333),(4,'ru',217,0.4192,167.333),(4,'ru',218,0.4192,168.333),(4,'ru',219,0.4192,169.333),(4,'ru',220,0.4192,170.333),(4,'ru',223,0.1262,1),(4,'ru',224,0.1262,2),(4,'ru',225,0.1262,6),(4,'ru',226,0.1262,7),(4,'ru',227,0.1262,8),(4,'ru',228,0.2,150.5),(4,'ru',229,0.1262,18),(4,'ru',230,0.293,228.75),(4,'ru',231,0.2524,205.333),(4,'ru',232,0.2,160),(4,'ru',233,0.293,167.75),(4,'ru',234,0.293,168.75),(4,'ru',235,0.2,172.5),(4,'ru',236,0.2,173.5),(4,'ru',237,0.1262,44),(4,'ru',238,0.1262,45),(4,'ru',239,0.1262,46),(4,'ru',240,0.1262,47),(4,'ru',241,0.1262,48),(4,'ru',242,0.1262,57),(4,'ru',243,0.1262,76),(4,'ru',244,0.1262,77),(4,'ru',245,0.1262,78),(4,'ru',246,0.1262,79),(4,'ru',247,0.1262,81),(4,'ru',248,0.1262,82),(4,'ru',249,0.1262,83),(4,'ru',250,0.1262,84),(4,'ru',251,0.1262,85),(4,'ru',252,0.1262,92),(4,'ru',253,0.1262,102),(4,'ru',265,0.2,227.5),(4,'ru',266,0.1262,134),(4,'ru',293,0.2,181.5),(4,'ru',303,0.3542,184.5),(4,'ru',362,0.1262,299),(4,'ru',363,0.1262,300),(4,'ru',364,0.1262,301),(4,'ru',365,0.1262,303),(4,'ru',366,0.1262,304),(4,'ru',367,0.1262,305),(4,'ru',368,0.1262,306),(4,'ru',369,0.1262,307),(4,'ru',370,0.1262,313),(4,'ru',371,0.1262,314),(4,'ru',372,0.1262,315),(4,'ru',373,0.1262,322),(4,'ru',374,0.1262,343),(4,'ru',375,0.1262,345),(4,'ru',376,0.1262,351),(4,'ru',377,0.1262,352),(4,'ru',378,0.1262,354),(4,'ru',379,0.1262,355),(4,'ru',400,0.2,121),(4,'ru',401,0.2524,205.667),(4,'ru',402,0.1262,123),(4,'ru',403,0.1262,136),(4,'ru',404,0.1262,137),(4,'ru',405,0.2,177.5),(4,'ru',406,0.2,179.5),(4,'ru',407,0.2,186.5),(4,'ru',408,0.2,193.5),(4,'ru',409,0.2,198.5),(4,'ru',410,0.2,199.5),(4,'ru',411,0.2,201.5),(4,'ru',412,0.2,202.5),(4,'ru',413,0.2,204.5),(4,'ru',414,0.2,205.5),(4,'ru',415,0.293,215),(4,'ru',416,0.2,216.5),(4,'ru',417,0.2,218.5),(4,'ru',418,0.2,219.5),(4,'ru',419,0.2,226.5),(4,'ru',420,0.2,228.5),(4,'ru',421,0.2,229.5),(4,'ru',422,0.2,230.5),(4,'ru',423,0.2,231.5),(4,'ru',424,0.2,232.5),(4,'ru',425,0.2,233.5),(4,'ru',426,0.2,234.5),(4,'ru',427,0.2,236.5),(4,'ru',428,0.2,237.5),(4,'ru',429,0.2,238.5),(4,'ru',430,0.2,240.5),(5,'ru',1,0.1361,41),(5,'ru',2,0.1361,4),(5,'ru',3,0.5181,109.846),(5,'ru',7,0.1361,49),(5,'ru',10,0.316,81.75),(5,'ru',14,0.2722,95.6667),(5,'ru',25,0.316,124),(5,'ru',26,0.316,125),(5,'ru',32,0.1361,43),(5,'ru',34,0.1361,203),(5,'ru',59,0.2157,61.5),(5,'ru',61,0.1361,53),(5,'ru',62,0.1361,54),(5,'ru',65,0.2157,58.5),(5,'ru',93,0.1361,171),(5,'ru',107,0.2157,7),(5,'ru',147,0.1361,10),(5,'ru',153,0.1361,101),(5,'ru',215,0.4082,113.571),(5,'ru',216,0.4082,114.571),(5,'ru',217,0.4082,115.571),(5,'ru',218,0.4082,116.571),(5,'ru',219,0.4082,117.571),(5,'ru',220,0.4082,118.571),(5,'ru',223,0.1361,1),(5,'ru',224,0.1361,2),(5,'ru',225,0.1361,6),(5,'ru',226,0.1361,7),(5,'ru',227,0.1361,8),(5,'ru',228,0.2157,74),(5,'ru',229,0.1361,18),(5,'ru',230,0.316,114),(5,'ru',231,0.2722,103.333),(5,'ru',232,0.2157,83.5),(5,'ru',233,0.316,91.25),(5,'ru',234,0.316,92.25),(5,'ru',235,0.2157,96),(5,'ru',236,0.2157,97),(5,'ru',237,0.1361,44),(5,'ru',238,0.1361,45),(5,'ru',239,0.1361,46),(5,'ru',240,0.1361,47),(5,'ru',241,0.1361,48),(5,'ru',242,0.1361,57),(5,'ru',243,0.1361,76),(5,'ru',244,0.1361,77),(5,'ru',245,0.1361,78),(5,'ru',246,0.1361,79),(5,'ru',247,0.1361,81),(5,'ru',248,0.1361,82),(5,'ru',249,0.1361,83),(5,'ru',250,0.1361,84),(5,'ru',251,0.1361,85),(5,'ru',252,0.1361,92),(5,'ru',253,0.1361,102),(5,'ru',362,0.1361,146),(5,'ru',363,0.1361,147),(5,'ru',364,0.1361,148),(5,'ru',365,0.1361,150),(5,'ru',366,0.1361,151),(5,'ru',367,0.1361,152),(5,'ru',368,0.1361,153),(5,'ru',369,0.1361,154),(5,'ru',370,0.1361,160),(5,'ru',371,0.1361,161),(5,'ru',372,0.1361,162),(5,'ru',373,0.1361,169),(5,'ru',374,0.1361,190),(5,'ru',375,0.1361,192),(5,'ru',376,0.1361,198),(5,'ru',377,0.1361,199),(5,'ru',378,0.1361,201),(5,'ru',379,0.1361,202),(5,'ru',388,0.2157,111.5),(5,'ru',405,0.1361,117),(5,'ru',406,0.1361,119),(5,'ru',431,0.2722,28.3333),(5,'ru',432,0.316,121),(5,'ru',433,0.1361,110),(5,'ru',434,0.1361,113),(6,'ru',1,0.1308,41),(6,'ru',2,0.1308,4),(6,'ru',3,0.3382,105.8),(6,'ru',7,0.2616,101.667),(6,'ru',10,0.3038,94.5),(6,'ru',14,0.1308,58),(6,'ru',32,0.1308,43),(6,'ru',34,0.1308,254),(6,'ru',35,0.1308,108),(6,'ru',42,0.1308,162),(6,'ru',53,0.1308,174),(6,'ru',59,0.2074,61.5),(6,'ru',61,0.1308,53),(6,'ru',62,0.1308,54),(6,'ru',65,0.2074,58.5),(6,'ru',93,0.1308,222),(6,'ru',107,0.2074,7),(6,'ru',147,0.1308,10),(6,'ru',153,0.1308,101),(6,'ru',210,0.1308,114),(6,'ru',215,0.3925,135.429),(6,'ru',216,0.3925,136.429),(6,'ru',217,0.3925,137.429),(6,'ru',218,0.3925,138.429),(6,'ru',219,0.3925,139.429),(6,'ru',220,0.3925,140.429),(6,'ru',223,0.1308,1),(6,'ru',224,0.1308,2),(6,'ru',225,0.1308,6),(6,'ru',226,0.1308,7),(6,'ru',227,0.1308,8),(6,'ru',228,0.2074,99.5),(6,'ru',229,0.1308,18),(6,'ru',230,0.3038,152.25),(6,'ru',231,0.2616,137.333),(6,'ru',232,0.2074,109),(6,'ru',233,0.3038,116.75),(6,'ru',234,0.3382,124.2),(6,'ru',235,0.2074,121.5),(6,'ru',236,0.2074,122.5),(6,'ru',237,0.1308,44),(6,'ru',238,0.1308,45),(6,'ru',239,0.1308,46),(6,'ru',240,0.1308,47),(6,'ru',241,0.1308,48),(6,'ru',242,0.3038,35.5),(6,'ru',243,0.1308,76),(6,'ru',244,0.1308,77),(6,'ru',245,0.1308,78),(6,'ru',246,0.1308,79),(6,'ru',247,0.1308,81),(6,'ru',248,0.1308,82),(6,'ru',249,0.1308,83),(6,'ru',250,0.1308,84),(6,'ru',251,0.1308,85),(6,'ru',252,0.1308,92),(6,'ru',253,0.1308,102),(6,'ru',272,0.2616,132.667),(6,'ru',273,0.2616,133.667),(6,'ru',304,0.1308,161),(6,'ru',348,0.1308,169),(6,'ru',362,0.1308,197),(6,'ru',363,0.1308,198),(6,'ru',364,0.1308,199),(6,'ru',365,0.1308,201),(6,'ru',366,0.1308,202),(6,'ru',367,0.1308,203),(6,'ru',368,0.1308,204),(6,'ru',369,0.2616,175.333),(6,'ru',370,0.1308,211),(6,'ru',371,0.1308,212),(6,'ru',372,0.1308,213),(6,'ru',373,0.1308,220),(6,'ru',374,0.1308,241),(6,'ru',375,0.1308,243),(6,'ru',376,0.1308,249),(6,'ru',377,0.1308,250),(6,'ru',378,0.1308,252),(6,'ru',379,0.1308,253),(6,'ru',398,0.1308,148),(6,'ru',435,0.2074,119),(6,'ru',436,0.1308,106),(6,'ru',437,0.1308,107),(6,'ru',438,0.1308,109),(6,'ru',439,0.1308,110),(6,'ru',440,0.1308,111),(6,'ru',441,0.1308,112),(6,'ru',442,0.1308,115),(6,'ru',443,0.1308,117),(6,'ru',444,0.1308,119),(6,'ru',445,0.1308,121),(6,'ru',446,0.1308,122),(6,'ru',447,0.1308,124),(6,'ru',448,0.1308,126),(6,'ru',449,0.1308,128),(6,'ru',450,0.1308,129),(6,'ru',451,0.1308,130),(6,'ru',452,0.1308,132),(6,'ru',453,0.1308,134),(6,'ru',454,0.1308,138),(6,'ru',455,0.1308,140),(6,'ru',456,0.2074,152.5),(6,'ru',457,0.1308,142),(6,'ru',458,0.1308,144),(6,'ru',459,0.2074,149),(6,'ru',460,0.1308,147),(6,'ru',461,0.1308,152),(6,'ru',462,0.1308,155),(6,'ru',463,0.1308,156),(6,'ru',464,0.1308,156),(6,'ru',465,0.1308,157),(6,'ru',466,0.1308,160),(6,'ru',467,0.1308,165),(6,'ru',468,0.1308,166),(6,'ru',469,0.1308,167),(6,'ru',470,0.1308,170),(6,'ru',471,0.1308,171),(6,'ru',472,0.1308,172),(6,'ru',473,0.1308,175),(6,'ru',474,0.1308,176),(6,'ru',475,0.1308,177),(6,'ru',476,0.1308,178),(6,'ru',477,0.1308,179),(6,'ru',478,0.1308,180),(7,'ru',1,0.1166,62),(7,'ru',2,0.3014,150.6),(7,'ru',3,0.3873,222.111),(7,'ru',4,0.1166,355),(7,'ru',7,0.1848,113.5),(7,'ru',10,0.2707,202),(7,'ru',13,0.1848,271),(7,'ru',14,0.4033,179),(7,'ru',16,0.2707,328.25),(7,'ru',24,0.1166,202),(7,'ru',32,0.1166,75),(7,'ru',34,0.1166,588),(7,'ru',37,0.1166,412),(7,'ru',53,0.1166,491),(7,'ru',59,0.1848,93.5),(7,'ru',61,0.1166,85),(7,'ru',62,0.1166,86),(7,'ru',65,0.2707,197.75),(7,'ru',76,0.1166,503),(7,'ru',84,0.1166,194),(7,'ru',85,0.1848,262),(7,'ru',93,0.1166,556),(7,'ru',94,0.1166,363),(7,'ru',107,0.1848,18),(7,'ru',132,0.1166,431),(7,'ru',136,0.1166,399),(7,'ru',141,0.1848,369),(7,'ru',147,0.1848,80),(7,'ru',153,0.1166,133),(7,'ru',154,0.1166,487),(7,'ru',205,0.2332,210.333),(7,'ru',214,0.1848,282.5),(7,'ru',215,0.3873,315.889),(7,'ru',216,0.3873,316.889),(7,'ru',217,0.3873,317.889),(7,'ru',218,0.3873,318.889),(7,'ru',219,0.3873,319.889),(7,'ru',220,0.3873,320.889),(7,'ru',223,0.1166,1),(7,'ru',224,0.1166,2),(7,'ru',225,0.1166,17),(7,'ru',226,0.1166,18),(7,'ru',227,0.1848,79.5),(7,'ru',228,0.1848,272),(7,'ru',229,0.1166,29),(7,'ru',230,0.2707,405.5),(7,'ru',231,0.2332,363.667),(7,'ru',232,0.1848,281.5),(7,'ru',233,0.2707,289.25),(7,'ru',234,0.2707,290.25),(7,'ru',235,0.1848,294),(7,'ru',236,0.1848,295),(7,'ru',237,0.1166,76),(7,'ru',238,0.1166,77),(7,'ru',239,0.1166,78),(7,'ru',240,0.1166,79),(7,'ru',241,0.1166,80),(7,'ru',242,0.1166,89),(7,'ru',243,0.1166,108),(7,'ru',244,0.1166,109),(7,'ru',245,0.1166,110),(7,'ru',246,0.1166,111),(7,'ru',247,0.1166,113),(7,'ru',248,0.1166,114),(7,'ru',249,0.1166,115),(7,'ru',250,0.1166,116),(7,'ru',251,0.1166,117),(7,'ru',252,0.1166,124),(7,'ru',253,0.1166,134),(7,'ru',255,0.2332,39.6667),(7,'ru',256,0.2707,103),(7,'ru',257,0.3014,132.8),(7,'ru',258,0.2332,45.6667),(7,'ru',259,0.3696,255.75),(7,'ru',260,0.3498,225.286),(7,'ru',261,0.3498,226.286),(7,'ru',262,0.418,262.546),(7,'ru',264,0.1166,285),(7,'ru',290,0.1166,428),(7,'ru',291,0.1848,469.5),(7,'ru',298,0.1166,368),(7,'ru',339,0.1848,273.5),(7,'ru',362,0.1166,531),(7,'ru',363,0.1166,532),(7,'ru',364,0.1166,533),(7,'ru',365,0.1166,535),(7,'ru',366,0.1166,536),(7,'ru',367,0.1166,537),(7,'ru',368,0.1166,538),(7,'ru',369,0.1166,539),(7,'ru',370,0.1166,545),(7,'ru',371,0.1166,546),(7,'ru',372,0.1166,547),(7,'ru',373,0.1166,554),(7,'ru',374,0.1166,575),(7,'ru',375,0.1166,577),(7,'ru',376,0.1166,583),(7,'ru',377,0.1166,584),(7,'ru',378,0.1166,586),(7,'ru',379,0.1166,587),(7,'ru',396,0.1166,135),(7,'ru',397,0.1166,136),(7,'ru',398,0.1166,138),(7,'ru',399,0.1166,520),(7,'ru',411,0.1848,313),(7,'ru',414,0.1166,416),(7,'ru',423,0.1166,340),(7,'ru',432,0.1166,384),(7,'ru',434,0.1166,169),(7,'ru',466,0.1166,456),(7,'ru',479,0.1166,142),(7,'ru',480,0.1166,145),(7,'ru',481,0.1166,147),(7,'ru',482,0.1166,148),(7,'ru',483,0.2332,277.333),(7,'ru',484,0.2332,273),(7,'ru',485,0.1166,172),(7,'ru',486,0.1166,175),(7,'ru',487,0.1166,177),(7,'ru',488,0.1166,187),(7,'ru',489,0.1166,188),(7,'ru',490,0.1166,189),(7,'ru',491,0.1166,191),(7,'ru',492,0.1166,193),(7,'ru',493,0.1166,207),(7,'ru',494,0.1166,208),(7,'ru',495,0.1166,209),(7,'ru',496,0.1166,211),(7,'ru',497,0.1848,329),(7,'ru',498,0.1848,326.5),(7,'ru',499,0.1166,220),(7,'ru',500,0.1848,328.5),(7,'ru',501,0.1166,222),(7,'ru',502,0.1848,321.5),(7,'ru',503,0.1166,231),(7,'ru',504,0.1848,359.5),(7,'ru',505,0.1166,234),(7,'ru',506,0.1848,368.5),(7,'ru',507,0.1166,236),(7,'ru',508,0.1848,299.5),(7,'ru',509,0.1848,300.5),(7,'ru',510,0.1848,252),(7,'ru',511,0.1166,248),(7,'ru',512,0.1166,250),(7,'ru',513,0.1166,252),(7,'ru',514,0.1166,254),(7,'ru',515,0.1166,256),(7,'ru',516,0.1166,265),(7,'ru',517,0.1848,399),(7,'ru',518,0.1848,400),(7,'ru',519,0.1166,298),(7,'ru',520,0.1166,301),(7,'ru',521,0.1848,391),(7,'ru',522,0.1166,306),(7,'ru',523,0.1166,307),(7,'ru',524,0.1166,310),(7,'ru',525,0.1166,314),(7,'ru',526,0.1166,316),(7,'ru',527,0.1848,367.5),(7,'ru',528,0.1166,324),(7,'ru',529,0.1166,326),(7,'ru',530,0.1166,329),(7,'ru',531,0.1166,331),(7,'ru',532,0.1166,333),(7,'ru',533,0.1166,333),(7,'ru',534,0.1166,341),(7,'ru',535,0.1166,342),(7,'ru',536,0.1166,343),(7,'ru',537,0.1166,345),(7,'ru',538,0.1166,346),(7,'ru',539,0.1166,354),(7,'ru',540,0.1166,356),(7,'ru',541,0.1166,358),(7,'ru',542,0.1166,362),(7,'ru',543,0.1166,366),(7,'ru',544,0.1166,369),(7,'ru',545,0.1166,371),(7,'ru',546,0.2332,453),(7,'ru',547,0.1166,397),(7,'ru',548,0.1166,407),(7,'ru',549,0.1166,409),(7,'ru',550,0.1166,411),(7,'ru',551,0.1166,417),(7,'ru',552,0.1166,429),(7,'ru',553,0.1166,430),(7,'ru',554,0.1166,433),(7,'ru',555,0.1166,435),(7,'ru',556,0.1166,440),(7,'ru',557,0.1166,448),(7,'ru',558,0.1166,449),(7,'ru',559,0.1166,450),(7,'ru',560,0.1166,452),(7,'ru',561,0.1166,453),(7,'ru',562,0.1166,455),(7,'ru',563,0.1166,461),(7,'ru',564,0.1166,462),(7,'ru',565,0.1166,470),(7,'ru',566,0.1166,472),(7,'ru',567,0.1166,479),(7,'ru',568,0.1166,480),(7,'ru',569,0.1166,481),(7,'ru',570,0.1166,482),(7,'ru',571,0.1166,483),(7,'ru',572,0.1166,484),(7,'ru',573,0.1166,488),(7,'ru',574,0.1166,489),(7,'ru',575,0.1166,492),(7,'ru',576,0.1166,493),(7,'ru',577,0.1166,495),(7,'ru',578,0.1166,496),(7,'ru',579,0.1166,498),(7,'ru',580,0.1166,499),(7,'ru',581,0.1166,499),(7,'ru',582,0.1166,500),(7,'ru',583,0.1166,504),(7,'ru',584,0.1166,519),(8,'ru',1,0.1297,62),(8,'ru',2,0.2595,27),(8,'ru',3,0.3354,134.4),(8,'ru',7,0.1297,81),(8,'ru',10,0.3013,122.25),(8,'ru',14,0.3013,53.75),(8,'ru',32,0.1297,75),(8,'ru',34,0.1297,269),(8,'ru',59,0.2595,129.333),(8,'ru',61,0.1297,85),(8,'ru',62,0.1297,86),(8,'ru',65,0.2056,90.5),(8,'ru',93,0.1297,237),(8,'ru',107,0.2056,18),(8,'ru',147,0.2056,80),(8,'ru',153,0.1297,133),(8,'ru',215,0.4488,165.1),(8,'ru',216,0.4488,166.1),(8,'ru',217,0.4488,167.1),(8,'ru',218,0.4488,168.1),(8,'ru',219,0.4488,169.1),(8,'ru',220,0.4488,170.1),(8,'ru',223,0.1297,1),(8,'ru',224,0.1297,2),(8,'ru',225,0.1297,17),(8,'ru',226,0.1297,18),(8,'ru',227,0.2056,79.5),(8,'ru',228,0.2056,112.5),(8,'ru',229,0.1297,29),(8,'ru',230,0.3013,166.25),(8,'ru',231,0.2595,151),(8,'ru',232,0.2056,122),(8,'ru',233,0.3013,129.75),(8,'ru',234,0.3013,130.75),(8,'ru',235,0.2056,134.5),(8,'ru',236,0.2056,135.5),(8,'ru',237,0.1297,76),(8,'ru',238,0.1297,77),(8,'ru',239,0.1297,78),(8,'ru',240,0.1297,79),(8,'ru',241,0.1297,80),(8,'ru',242,0.1297,89),(8,'ru',243,0.1297,108),(8,'ru',244,0.1297,109),(8,'ru',245,0.1297,110),(8,'ru',246,0.1297,111),(8,'ru',247,0.1297,113),(8,'ru',248,0.1297,114),(8,'ru',249,0.1297,115),(8,'ru',250,0.1297,116),(8,'ru',251,0.1297,117),(8,'ru',252,0.1297,124),(8,'ru',253,0.1297,134),(8,'ru',255,0.2595,39.6667),(8,'ru',256,0.2595,42.6667),(8,'ru',257,0.2595,43.6667),(8,'ru',258,0.2595,45.6667),(8,'ru',259,0.2595,46.6667),(8,'ru',260,0.2595,47.6667),(8,'ru',261,0.2595,48.6667),(8,'ru',262,0.2595,49.6667),(8,'ru',362,0.1297,212),(8,'ru',363,0.1297,213),(8,'ru',364,0.1297,214),(8,'ru',365,0.1297,216),(8,'ru',366,0.1297,217),(8,'ru',367,0.1297,218),(8,'ru',368,0.1297,219),(8,'ru',369,0.1297,220),(8,'ru',370,0.1297,226),(8,'ru',371,0.1297,227),(8,'ru',372,0.1297,228),(8,'ru',373,0.1297,235),(8,'ru',374,0.1297,256),(8,'ru',375,0.1297,258),(8,'ru',376,0.1297,264),(8,'ru',377,0.1297,265),(8,'ru',378,0.1297,267),(8,'ru',379,0.1297,268),(8,'ru',382,0.1297,141),(8,'ru',396,0.1297,135),(8,'ru',397,0.1297,136),(8,'ru',398,0.1297,138),(8,'ru',399,0.1297,202),(8,'ru',448,0.1297,184),(8,'ru',501,0.1297,165),(8,'ru',585,0.1297,142),(8,'ru',586,0.1297,143),(8,'ru',587,0.1297,145),(8,'ru',588,0.1297,146),(8,'ru',589,0.1297,147),(8,'ru',590,0.1297,148),(8,'ru',591,0.2056,174.5),(8,'ru',592,0.1297,158),(8,'ru',593,0.1297,159),(8,'ru',594,0.1297,160),(8,'ru',595,0.1297,161),(8,'ru',596,0.1297,164),(8,'ru',597,0.1297,173),(8,'ru',598,0.1297,174),(8,'ru',599,0.1297,181),(8,'ru',600,0.1297,182),(8,'ru',601,0.1297,183),(8,'ru',602,0.1297,198),(8,'ru',603,0.1297,200),(9,'ru',1,0.1312,46),(9,'ru',2,0.1312,7),(9,'ru',3,0.3391,107.4),(9,'ru',7,0.1312,57),(9,'ru',10,0.3046,94.5),(9,'ru',14,0.1312,66),(9,'ru',32,0.1312,51),(9,'ru',34,0.1312,230),(9,'ru',59,0.2079,69.5),(9,'ru',61,0.1312,61),(9,'ru',62,0.1312,62),(9,'ru',65,0.2079,66.5),(9,'ru',93,0.1312,198),(9,'ru',107,0.2079,10),(9,'ru',141,0.3046,166.75),(9,'ru',147,0.1312,13),(9,'ru',153,0.1312,109),(9,'ru',215,0.4855,130.333),(9,'ru',216,0.4855,131.333),(9,'ru',217,0.4855,132.333),(9,'ru',218,0.4855,133.333),(9,'ru',219,0.4855,134.333),(9,'ru',220,0.4855,135.333),(9,'ru',223,0.1312,1),(9,'ru',224,0.1312,2),(9,'ru',225,0.1312,9),(9,'ru',226,0.1312,10),(9,'ru',227,0.1312,11),(9,'ru',228,0.2079,89),(9,'ru',229,0.1312,21),(9,'ru',230,0.3046,135),(9,'ru',231,0.2624,122.333),(9,'ru',232,0.2079,98.5),(9,'ru',233,0.3046,106.25),(9,'ru',234,0.3046,107.25),(9,'ru',235,0.2079,111),(9,'ru',236,0.2079,112),(9,'ru',237,0.1312,52),(9,'ru',238,0.1312,53),(9,'ru',239,0.1312,54),(9,'ru',240,0.1312,55),(9,'ru',241,0.1312,56),(9,'ru',242,0.1312,65),(9,'ru',243,0.1312,84),(9,'ru',244,0.1312,85),(9,'ru',245,0.1312,86),(9,'ru',246,0.1312,87),(9,'ru',247,0.1312,89),(9,'ru',248,0.1312,90),(9,'ru',249,0.1312,91),(9,'ru',250,0.1312,92),(9,'ru',251,0.1312,93),(9,'ru',252,0.1312,100),(9,'ru',253,0.1312,110),(9,'ru',362,0.1312,173),(9,'ru',363,0.1312,174),(9,'ru',364,0.1312,175),(9,'ru',365,0.1312,177),(9,'ru',366,0.1312,178),(9,'ru',367,0.1312,179),(9,'ru',368,0.1312,180),(9,'ru',369,0.1312,181),(9,'ru',370,0.1312,187),(9,'ru',371,0.1312,188),(9,'ru',372,0.1312,189),(9,'ru',373,0.1312,196),(9,'ru',374,0.1312,217),(9,'ru',375,0.1312,219),(9,'ru',376,0.1312,225),(9,'ru',377,0.1312,226),(9,'ru',378,0.1312,228),(9,'ru',379,0.1312,229),(9,'ru',395,0.1312,245),(9,'ru',405,0.3391,91.4),(9,'ru',406,0.3936,112),(9,'ru',415,0.2079,179),(9,'ru',431,0.2079,25),(9,'ru',604,0.2079,177),(9,'ru',605,0.2079,178),(9,'ru',606,0.3046,168.75),(9,'ru',607,0.2079,190.5),(9,'ru',608,0.2079,191.5),(9,'ru',609,0.2079,192.5),(10,'ru',1,0.1062,3),(10,'ru',2,0.4341,470.312),(10,'ru',3,0.4869,455),(10,'ru',4,0.1062,188),(10,'ru',5,0.2466,541.75),(10,'ru',6,0.1062,191),(10,'ru',7,0.2124,216),(10,'ru',8,0.1062,193),(10,'ru',9,0.1062,196),(10,'ru',10,0.4512,526.611),(10,'ru',11,0.1062,204),(10,'ru',12,0.1062,205),(10,'ru',13,0.1062,211),(10,'ru',14,0.2745,165.8),(10,'ru',15,0.1062,215),(10,'ru',16,0.1062,216),(10,'ru',17,0.1062,217),(10,'ru',18,0.1062,218),(10,'ru',19,0.1062,219),(10,'ru',20,0.1062,221),(10,'ru',21,0.1062,222),(10,'ru',22,0.1062,223),(10,'ru',23,0.1062,225),(10,'ru',24,0.1683,264),(10,'ru',25,0.1062,227),(10,'ru',26,0.1683,318),(10,'ru',27,0.1062,230),(10,'ru',28,0.1062,231),(10,'ru',29,0.1062,232),(10,'ru',30,0.1062,237),(10,'ru',31,0.1062,245),(10,'ru',32,0.4429,682.529),(10,'ru',33,0.1062,254),(10,'ru',34,0.2124,814.333),(10,'ru',35,0.1062,265),(10,'ru',36,0.1683,293),(10,'ru',37,0.1062,271),(10,'ru',38,0.1062,272),(10,'ru',39,0.1062,281),(10,'ru',40,0.1062,283),(10,'ru',41,0.1062,284),(10,'ru',42,0.1062,291),(10,'ru',43,0.1062,292),(10,'ru',44,0.1062,293),(10,'ru',45,0.1062,296),(10,'ru',46,0.1062,297),(10,'ru',47,0.1062,297),(10,'ru',48,0.1683,353),(10,'ru',49,0.1062,299),(10,'ru',50,0.1062,301),(10,'ru',51,0.1062,303),(10,'ru',52,0.2124,812.667),(10,'ru',53,0.2124,610.333),(10,'ru',54,0.1062,307),(10,'ru',55,0.1062,308),(10,'ru',56,0.1683,445.5),(10,'ru',57,0.2466,587.75),(10,'ru',58,0.1062,319),(10,'ru',59,0.2982,490.5),(10,'ru',60,0.1683,386.5),(10,'ru',61,0.1683,231.5),(10,'ru',62,0.2982,613.5),(10,'ru',63,0.1062,331),(10,'ru',64,0.1062,332),(10,'ru',65,0.2982,479.5),(10,'ru',66,0.1062,334),(10,'ru',67,0.1062,336),(10,'ru',68,0.1062,342),(10,'ru',69,0.1062,347),(10,'ru',70,0.1062,349),(10,'ru',71,0.1062,350),(10,'ru',72,0.1062,353),(10,'ru',73,0.1062,355),(10,'ru',74,0.1062,356),(10,'ru',75,0.1062,358),(10,'ru',76,0.2745,645.8),(10,'ru',77,0.1062,360),(10,'ru',78,0.1062,362),(10,'ru',79,0.1062,363),(10,'ru',80,0.1062,364),(10,'ru',81,0.1062,364),(10,'ru',82,0.1062,365),(10,'ru',83,0.1062,365),(10,'ru',84,0.1062,367),(10,'ru',85,0.1062,367),(10,'ru',86,0.1062,369),(10,'ru',87,0.1062,370),(10,'ru',88,0.1062,372),(10,'ru',89,0.2466,650.25),(10,'ru',90,0.1062,376),(10,'ru',91,0.1062,378),(10,'ru',92,0.1062,384),(10,'ru',93,0.2124,888.333),(10,'ru',94,0.2466,683.75),(10,'ru',95,0.3674,713.9),(10,'ru',96,0.1062,398),(10,'ru',97,0.1062,400),(10,'ru',98,0.1062,402),(10,'ru',99,0.1062,404),(10,'ru',100,0.1062,406),(10,'ru',101,0.1062,406),(10,'ru',102,0.1062,409),(10,'ru',103,0.1683,432),(10,'ru',104,0.1062,411),(10,'ru',105,0.1062,416),(10,'ru',106,0.1062,417),(10,'ru',107,0.3367,528.125),(10,'ru',108,0.1062,426),(10,'ru',109,0.1683,692.5),(10,'ru',110,0.1062,430),(10,'ru',111,0.1062,432),(10,'ru',112,0.1062,434),(10,'ru',113,0.1062,435),(10,'ru',114,0.1062,437),(10,'ru',115,0.1062,447),(10,'ru',116,0.1062,449),(10,'ru',117,0.1062,453),(10,'ru',118,0.1062,456),(10,'ru',119,0.1062,458),(10,'ru',120,0.1062,459),(10,'ru',121,0.1683,522.5),(10,'ru',122,0.1062,468),(10,'ru',123,0.1062,469),(10,'ru',124,0.1062,470),(10,'ru',125,0.1062,480),(10,'ru',126,0.1062,488),(10,'ru',127,0.1683,796),(10,'ru',128,0.1062,507),(10,'ru',129,0.3367,865),(10,'ru',130,0.1683,745),(10,'ru',131,0.1062,514),(10,'ru',132,0.1683,747),(10,'ru',133,0.1062,522),(10,'ru',134,0.1062,524),(10,'ru',135,0.1062,526),(10,'ru',136,0.1062,527),(10,'ru',137,0.1062,528),(10,'ru',138,0.1062,530),(10,'ru',139,0.1062,537),(10,'ru',140,0.1062,538),(10,'ru',141,0.1062,543),(10,'ru',142,0.1683,760.5),(10,'ru',143,0.1062,553),(10,'ru',144,0.1062,555),(10,'ru',145,0.1062,556),(10,'ru',146,0.1062,557),(10,'ru',147,0.2124,378.667),(10,'ru',148,0.1062,560),(10,'ru',149,0.1062,567),(10,'ru',150,0.1062,571),(10,'ru',151,0.1062,573),(10,'ru',152,0.1062,574),(10,'ru',153,0.1683,381),(10,'ru',154,0.3186,794),(10,'ru',155,0.1683,949.5),(10,'ru',156,0.2466,830.25),(10,'ru',157,0.1062,949),(10,'ru',158,0.1062,950),(10,'ru',159,0.1062,951),(10,'ru',160,0.1062,952),(10,'ru',161,0.1062,954),(10,'ru',162,0.1062,954),(10,'ru',163,0.1062,957),(10,'ru',164,0.1062,958),(10,'ru',165,0.1062,960),(10,'ru',166,0.1062,961),(10,'ru',167,0.1062,961),(10,'ru',168,0.1062,962),(10,'ru',169,0.1062,964),(10,'ru',170,0.1683,990.5),(10,'ru',171,0.1062,976),(10,'ru',172,0.1062,978),(10,'ru',173,0.1683,998),(10,'ru',174,0.1062,988),(10,'ru',175,0.1062,990),(10,'ru',176,0.2124,993),(10,'ru',177,0.2466,821.5),(10,'ru',178,0.2124,1017),(10,'ru',179,0.1062,998),(10,'ru',180,0.1683,1039.5),(10,'ru',181,0.1062,1007),(10,'ru',182,0.1062,1008),(10,'ru',183,0.1062,1010),(10,'ru',184,0.1062,1020),(10,'ru',185,0.1062,1022),(10,'ru',186,0.1062,1030),(10,'ru',187,0.1062,1033),(10,'ru',188,0.1062,1035),(10,'ru',189,0.1062,1042),(10,'ru',190,0.1062,1045),(10,'ru',191,0.2466,863),(10,'ru',192,0.1062,1049),(10,'ru',193,0.1062,1052),(10,'ru',194,0.1062,1053),(10,'ru',195,0.1062,1055),(10,'ru',196,0.1062,1056),(10,'ru',197,0.1062,1059),(10,'ru',198,0.1062,1060),(10,'ru',199,0.1062,1064),(10,'ru',200,0.1062,1066),(10,'ru',201,0.1062,1067),(10,'ru',202,0.1062,1068),(10,'ru',203,0.1062,1086),(10,'ru',204,0.1062,1088),(10,'ru',205,0.2124,426),(10,'ru',206,0.1062,1096),(10,'ru',207,0.1683,1099),(10,'ru',208,0.1062,1101),(10,'ru',209,0.1062,1104),(10,'ru',210,0.1062,1110),(10,'ru',211,0.1062,1120),(10,'ru',212,0.1062,1121),(10,'ru',213,0.1062,1122),(10,'ru',214,0.1062,1131),(10,'ru',215,0.3528,643.333),(10,'ru',216,0.3528,644.333),(10,'ru',217,0.3528,645.333),(10,'ru',218,0.3528,646.333),(10,'ru',219,0.3528,647.333),(10,'ru',220,0.3528,648.333),(10,'ru',221,0.1062,1144),(10,'ru',222,0.1062,1147),(10,'ru',223,0.1062,1),(10,'ru',224,0.1062,2),(10,'ru',225,0.1062,6),(10,'ru',226,0.1062,7),(10,'ru',227,0.1062,8),(10,'ru',228,0.1683,579.5),(10,'ru',229,0.1062,18),(10,'ru',230,0.2466,872.25),(10,'ru',231,0.2124,777.333),(10,'ru',232,0.1683,589),(10,'ru',233,0.2466,596.75),(10,'ru',234,0.2466,597.75),(10,'ru',235,0.1683,601.5),(10,'ru',236,0.1683,602.5),(10,'ru',237,0.1062,125),(10,'ru',238,0.1062,126),(10,'ru',239,0.1062,127),(10,'ru',240,0.1062,128),(10,'ru',241,0.1062,129),(10,'ru',242,0.1062,138),(10,'ru',243,0.1062,157),(10,'ru',244,0.1062,158),(10,'ru',245,0.1062,159),(10,'ru',246,0.1062,160),(10,'ru',247,0.1062,162),(10,'ru',248,0.1062,163),(10,'ru',249,0.1062,164),(10,'ru',250,0.1062,165),(10,'ru',251,0.1062,166),(10,'ru',252,0.1062,173),(10,'ru',253,0.1062,183),(10,'ru',255,0.1683,61),(10,'ru',256,0.1683,64),(10,'ru',257,0.1683,65),(10,'ru',258,0.1683,67),(10,'ru',259,0.1683,68),(10,'ru',260,0.1683,69),(10,'ru',261,0.1683,70),(10,'ru',262,0.1683,71),(10,'ru',263,0.2124,740),(10,'ru',265,0.2124,712),(10,'ru',277,0.2982,777),(10,'ru',302,0.2982,767),(10,'ru',313,0.2124,789),(10,'ru',350,0.2124,731),(10,'ru',362,0.1062,1157),(10,'ru',363,0.1062,1158),(10,'ru',364,0.1062,1159),(10,'ru',365,0.1062,1161),(10,'ru',366,0.1062,1162),(10,'ru',367,0.1062,1163),(10,'ru',368,0.1062,1164),(10,'ru',369,0.1062,1165),(10,'ru',370,0.1062,1171),(10,'ru',371,0.1062,1172),(10,'ru',372,0.1062,1173),(10,'ru',373,0.1062,1180),(10,'ru',374,0.1062,1201),(10,'ru',375,0.1062,1203),(10,'ru',376,0.1062,1209),(10,'ru',377,0.1062,1210),(10,'ru',378,0.1062,1212),(10,'ru',379,0.1062,1213),(10,'ru',448,0.2124,783),(10,'ru',466,0.2124,716),(10,'ru',483,0.1683,89),(10,'ru',510,0.2466,77),(10,'ru',511,0.1683,73),(10,'ru',512,0.1683,75),(10,'ru',513,0.1683,77),(10,'ru',514,0.1683,79),(10,'ru',515,0.1683,81),(10,'ru',516,0.1683,90),(10,'ru',604,0.2982,715),(10,'ru',610,0.1683,102),(10,'ru',611,0.2124,705),(10,'ru',612,0.2124,706),(10,'ru',613,0.2124,707),(10,'ru',614,0.2124,709),(10,'ru',615,0.2124,710),(10,'ru',616,0.2124,711),(10,'ru',617,0.2124,722),(10,'ru',618,0.2124,724),(10,'ru',619,0.2124,726),(10,'ru',620,0.2124,730),(10,'ru',621,0.2124,733),(10,'ru',622,0.2124,734),(10,'ru',623,0.2982,740.5),(10,'ru',624,0.2124,737),(10,'ru',625,0.2982,778),(10,'ru',626,0.2124,744),(10,'ru',627,0.2124,745),(10,'ru',628,0.2124,756),(10,'ru',629,0.2124,757),(10,'ru',630,0.2124,760),(10,'ru',631,0.2124,763),(10,'ru',632,0.2124,765),(10,'ru',633,0.2124,769),(10,'ru',634,0.2124,770),(10,'ru',635,0.2124,772),(10,'ru',636,0.2124,778),(10,'ru',637,0.2124,792),(10,'ru',638,0.2124,800),(10,'ru',639,0.2124,808),(10,'ru',640,0.2124,815),(11,'ru',1,0.1387,41),(11,'ru',2,0.1387,4),(11,'ru',3,0.3586,91.4),(11,'ru',7,0.1387,49),(11,'ru',10,0.3586,84.2),(11,'ru',14,0.1387,58),(11,'ru',32,0.1387,43),(11,'ru',34,0.1387,182),(11,'ru',59,0.2198,61.5),(11,'ru',61,0.1387,53),(11,'ru',62,0.1387,54),(11,'ru',65,0.2198,58.5),(11,'ru',93,0.1387,150),(11,'ru',107,0.3586,19.8),(11,'ru',147,0.1387,10),(11,'ru',153,0.1387,101),(11,'ru',155,0.1387,108),(11,'ru',157,0.1387,106),(11,'ru',158,0.1387,107),(11,'ru',159,0.1387,110),(11,'ru',160,0.1387,111),(11,'ru',161,0.1387,109),(11,'ru',162,0.1387,109),(11,'ru',163,0.1387,112),(11,'ru',168,0.1387,103),(11,'ru',169,0.1387,105),(11,'ru',215,0.4161,104.571),(11,'ru',216,0.4161,105.571),(11,'ru',217,0.4161,106.571),(11,'ru',218,0.4161,107.571),(11,'ru',219,0.4161,108.571),(11,'ru',220,0.4161,109.571),(11,'ru',223,0.1387,1),(11,'ru',224,0.1387,2),(11,'ru',225,0.1387,6),(11,'ru',226,0.1387,7),(11,'ru',227,0.1387,8),(11,'ru',228,0.2198,63.5),(11,'ru',229,0.1387,18),(11,'ru',230,0.3221,98.25),(11,'ru',231,0.2774,89.3333),(11,'ru',232,0.2198,73),(11,'ru',233,0.3221,80.75),(11,'ru',234,0.3221,81.75),(11,'ru',235,0.2198,85.5),(11,'ru',236,0.2198,86.5),(11,'ru',237,0.1387,44),(11,'ru',238,0.1387,45),(11,'ru',239,0.1387,46),(11,'ru',240,0.1387,47),(11,'ru',241,0.1387,48),(11,'ru',242,0.1387,57),(11,'ru',243,0.1387,76),(11,'ru',244,0.1387,77),(11,'ru',245,0.1387,78),(11,'ru',246,0.1387,79),(11,'ru',247,0.1387,81),(11,'ru',248,0.1387,82),(11,'ru',249,0.1387,83),(11,'ru',250,0.1387,84),(11,'ru',251,0.1387,85),(11,'ru',252,0.1387,92),(11,'ru',253,0.1387,102),(11,'ru',362,0.1387,125),(11,'ru',363,0.1387,126),(11,'ru',364,0.1387,127),(11,'ru',365,0.1387,129),(11,'ru',366,0.1387,130),(11,'ru',367,0.1387,131),(11,'ru',368,0.1387,132),(11,'ru',369,0.1387,133),(11,'ru',370,0.1387,139),(11,'ru',371,0.1387,140),(11,'ru',372,0.1387,141),(11,'ru',373,0.1387,148),(11,'ru',374,0.1387,169),(11,'ru',375,0.1387,171),(11,'ru',376,0.1387,177),(11,'ru',377,0.1387,178),(11,'ru',378,0.1387,180),(11,'ru',379,0.1387,181),(11,'ru',641,0.1387,113),(11,'ru',642,0.1387,113),(12,'ru',1,0.1168,62),(12,'ru',2,0.4187,324.364),(12,'ru',3,0.3279,241.333),(12,'ru',7,0.2336,294.667),(12,'ru',10,0.2712,213.5),(12,'ru',14,0.3702,130),(12,'ru',22,0.1168,277),(12,'ru',32,0.1851,207),(12,'ru',34,0.1168,634),(12,'ru',53,0.1168,397),(12,'ru',56,0.2336,485.667),(12,'ru',57,0.1851,470),(12,'ru',59,0.1851,93.5),(12,'ru',61,0.1168,85),(12,'ru',62,0.3019,300.8),(12,'ru',65,0.1851,90.5),(12,'ru',93,0.1168,602),(12,'ru',95,0.2712,361),(12,'ru',107,0.2336,108),(12,'ru',108,0.1168,281),(12,'ru',110,0.1168,366),(12,'ru',132,0.2336,496.333),(12,'ru',133,0.1168,555),(12,'ru',147,0.1851,80),(12,'ru',148,0.2712,354.5),(12,'ru',153,0.1168,133),(12,'ru',154,0.1168,361),(12,'ru',181,0.1168,438),(12,'ru',185,0.1168,398),(12,'ru',197,0.1168,364),(12,'ru',215,0.3504,313.571),(12,'ru',216,0.3504,314.571),(12,'ru',217,0.3504,315.571),(12,'ru',218,0.3504,316.571),(12,'ru',219,0.3504,317.571),(12,'ru',220,0.3504,318.571),(12,'ru',223,0.1168,1),(12,'ru',224,0.1168,2),(12,'ru',225,0.1168,17),(12,'ru',226,0.1168,18),(12,'ru',227,0.3019,320.6),(12,'ru',228,0.1851,295),(12,'ru',229,0.1168,29),(12,'ru',230,0.3279,432.167),(12,'ru',231,0.3019,403.6),(12,'ru',232,0.2336,343.333),(12,'ru',233,0.3019,334.2),(12,'ru',234,0.3019,335.2),(12,'ru',235,0.1851,317),(12,'ru',236,0.1851,318),(12,'ru',237,0.1168,76),(12,'ru',238,0.1168,77),(12,'ru',239,0.1168,78),(12,'ru',240,0.1168,79),(12,'ru',241,0.1168,80),(12,'ru',242,0.1168,89),(12,'ru',243,0.1168,108),(12,'ru',244,0.1168,109),(12,'ru',245,0.1168,110),(12,'ru',246,0.1168,111),(12,'ru',247,0.1168,113),(12,'ru',248,0.1168,114),(12,'ru',249,0.1168,115),(12,'ru',250,0.1168,116),(12,'ru',251,0.1168,117),(12,'ru',252,0.1168,124),(12,'ru',253,0.1168,134),(12,'ru',254,0.1168,365),(12,'ru',255,0.2336,39.6667),(12,'ru',256,0.2712,73),(12,'ru',257,0.3019,117.8),(12,'ru',258,0.2336,45.6667),(12,'ru',259,0.3019,132.4),(12,'ru',260,0.3019,133.4),(12,'ru',261,0.3019,134.4),(12,'ru',262,0.3019,135.4),(12,'ru',265,0.1851,265.5),(12,'ru',362,0.1851,496.5),(12,'ru',363,0.2336,499.667),(12,'ru',364,0.1851,498.5),(12,'ru',365,0.1168,581),(12,'ru',366,0.404,246.9),(12,'ru',367,0.1168,583),(12,'ru',368,0.1168,584),(12,'ru',369,0.1168,585),(12,'ru',370,0.1168,591),(12,'ru',371,0.1168,592),(12,'ru',372,0.1168,593),(12,'ru',373,0.1168,600),(12,'ru',374,0.1168,621),(12,'ru',375,0.1168,623),(12,'ru',376,0.1168,629),(12,'ru',377,0.1168,630),(12,'ru',378,0.1168,632),(12,'ru',379,0.1168,633),(12,'ru',396,0.1168,135),(12,'ru',397,0.1851,138.5),(12,'ru',398,0.1851,230.5),(12,'ru',399,0.1851,486.5),(12,'ru',435,0.3019,358.2),(12,'ru',459,0.1168,558),(12,'ru',479,0.1851,427.5),(12,'ru',480,0.3279,472.5),(12,'ru',481,0.1168,480),(12,'ru',482,0.1168,481),(12,'ru',490,0.1851,235.5),(12,'ru',528,0.1851,237.5),(12,'ru',532,0.1851,239.5),(12,'ru',533,0.1851,239.5),(12,'ru',586,0.1168,526),(12,'ru',600,0.1168,153),(12,'ru',601,0.1851,361),(12,'ru',622,0.1851,159.5),(12,'ru',643,0.1168,144),(12,'ru',644,0.2336,204.667),(12,'ru',645,0.1168,161),(12,'ru',646,0.2336,252.333),(12,'ru',647,0.3504,383.714),(12,'ru',648,0.1168,185),(12,'ru',649,0.2712,221),(12,'ru',650,0.1168,201),(12,'ru',651,0.1851,220),(12,'ru',652,0.2336,253.333),(12,'ru',653,0.1168,219),(12,'ru',654,0.1851,270.5),(12,'ru',655,0.2336,242.333),(12,'ru',656,0.1168,263),(12,'ru',657,0.1168,270),(12,'ru',658,0.1168,276),(12,'ru',659,0.1168,280),(12,'ru',660,0.1168,283),(12,'ru',661,0.1168,284),(12,'ru',662,0.1168,286),(12,'ru',663,0.1168,287),(12,'ru',664,0.2712,360),(12,'ru',665,0.1168,301),(12,'ru',666,0.1168,322),(12,'ru',667,0.1168,327),(12,'ru',668,0.1168,332),(12,'ru',669,0.1168,340),(12,'ru',670,0.1168,341),(12,'ru',671,0.1168,343),(12,'ru',672,0.1168,347),(12,'ru',673,0.1168,362),(12,'ru',674,0.1851,383.5),(12,'ru',675,0.1168,379),(12,'ru',676,0.1168,387),(12,'ru',677,0.1168,388),(12,'ru',678,0.1168,390),(12,'ru',679,0.1168,391),(12,'ru',680,0.1168,399),(12,'ru',681,0.1168,409),(12,'ru',682,0.1168,413),(12,'ru',683,0.1168,425),(12,'ru',684,0.1168,426),(12,'ru',685,0.1168,433),(12,'ru',686,0.2712,450),(12,'ru',687,0.2336,493.333),(12,'ru',688,0.1168,446),(12,'ru',689,0.1851,475.5),(12,'ru',690,0.1851,458.5),(12,'ru',691,0.1168,458),(12,'ru',692,0.1168,468),(12,'ru',693,0.1851,505.5),(12,'ru',694,0.1168,532),(12,'ru',695,0.1168,535),(12,'ru',696,0.1168,537),(12,'ru',697,0.1168,538),(12,'ru',698,0.1168,540),(12,'ru',699,0.1168,544),(12,'ru',700,0.1168,550),(12,'ru',701,0.1168,552),(12,'ru',702,0.1168,553),(12,'ru',703,0.1168,556),(12,'ru',704,0.1168,557),(12,'ru',705,0.1168,559),(12,'ru',706,0.1168,560),(13,'ru',3,0.4946,17.75),(13,'ru',14,0.2473,13.5),(13,'ru',25,0.3623,23),(13,'ru',26,0.3623,24),(13,'ru',141,0.3623,74.75),(13,'ru',215,0.4033,57.2),(13,'ru',216,0.4033,58.2),(13,'ru',217,0.4033,59.2),(13,'ru',218,0.4033,60.2),(13,'ru',219,0.4033,61.2),(13,'ru',220,0.4033,62.2),(13,'ru',388,0.2473,10.5),(13,'ru',405,0.312,53.3333),(13,'ru',406,0.4033,66.6),(13,'ru',415,0.2473,70),(13,'ru',431,0.156,1),(13,'ru',432,0.3623,20),(13,'ru',433,0.156,9),(13,'ru',434,0.156,12),(13,'ru',604,0.2473,68),(13,'ru',605,0.2473,69),(13,'ru',606,0.3623,76.75),(13,'ru',607,0.2473,81.5),(13,'ru',608,0.2473,82.5),(13,'ru',609,0.2473,83.5),(14,'ru',10,0.2314,14),(14,'ru',107,0.2314,1),(14,'ru',155,0.2314,7),(14,'ru',157,0.2314,5),(14,'ru',158,0.2314,6),(14,'ru',159,0.2314,9),(14,'ru',160,0.2314,10),(14,'ru',161,0.2314,8),(14,'ru',162,0.2314,8),(14,'ru',163,0.2314,11),(14,'ru',168,0.2314,2),(14,'ru',169,0.2314,4),(14,'ru',641,0.2314,12),(14,'ru',642,0.2314,12),(15,'ru',228,0.2314,1),(16,'ru',2,0.2314,1),(17,'ru',7,0.2314,3),(17,'ru',240,0.2314,1),(17,'ru',241,0.2314,2),(18,'ru',226,0.2314,1),(19,'ru',7,0.2622,27),(19,'ru',35,0.1654,7),(19,'ru',42,0.1654,61),(19,'ru',53,0.1654,73),(19,'ru',210,0.1654,13),(19,'ru',234,0.1654,49),(19,'ru',242,0.1654,1),(19,'ru',272,0.3309,31.6667),(19,'ru',273,0.3309,32.6667),(19,'ru',304,0.1654,60),(19,'ru',348,0.1654,68),(19,'ru',369,0.2622,59.5),(19,'ru',398,0.1654,47),(19,'ru',435,0.2622,18),(19,'ru',436,0.1654,5),(19,'ru',437,0.1654,6),(19,'ru',438,0.1654,8),(19,'ru',439,0.1654,9),(19,'ru',440,0.1654,10),(19,'ru',441,0.1654,11),(19,'ru',442,0.1654,14),(19,'ru',443,0.1654,16),(19,'ru',444,0.1654,18),(19,'ru',445,0.1654,20),(19,'ru',446,0.1654,21),(19,'ru',447,0.1654,23),(19,'ru',448,0.1654,25),(19,'ru',449,0.1654,27),(19,'ru',450,0.1654,28),(19,'ru',451,0.1654,29),(19,'ru',452,0.1654,31),(19,'ru',453,0.1654,33),(19,'ru',454,0.1654,37),(19,'ru',455,0.1654,39),(19,'ru',456,0.2622,51.5),(19,'ru',457,0.1654,41),(19,'ru',458,0.1654,43),(19,'ru',459,0.2622,48),(19,'ru',460,0.1654,46),(19,'ru',461,0.1654,51),(19,'ru',462,0.1654,54),(19,'ru',463,0.1654,55),(19,'ru',464,0.1654,55),(19,'ru',465,0.1654,56),(19,'ru',466,0.1654,59),(19,'ru',467,0.1654,64),(19,'ru',468,0.1654,65),(19,'ru',469,0.1654,66),(19,'ru',470,0.1654,69),(19,'ru',471,0.1654,70),(19,'ru',472,0.1654,71),(19,'ru',473,0.1654,74),(19,'ru',474,0.1654,75),(19,'ru',475,0.1654,76),(19,'ru',476,0.1654,77),(19,'ru',477,0.1654,78),(19,'ru',478,0.1654,79),(20,'ru',107,0.2314,2),(20,'ru',227,0.2314,1),(21,'ru',62,0.2314,2),(21,'ru',147,0.2314,1),(21,'ru',148,0.2314,2),(22,'ru',2,0.3686,13.6667),(22,'ru',3,0.3686,35.6667),(22,'ru',24,0.1843,84),(22,'ru',25,0.1843,85),(22,'ru',26,0.2921,87),(22,'ru',43,0.1843,96),(22,'ru',52,0.1843,37),(22,'ru',55,0.1843,75),(22,'ru',62,0.1843,8),(22,'ru',63,0.1843,77),(22,'ru',65,0.1843,21),(22,'ru',72,0.1843,34),(22,'ru',73,0.1843,44),(22,'ru',74,0.2921,46),(22,'ru',76,0.1843,65),(22,'ru',77,0.1843,66),(22,'ru',79,0.1843,25),(22,'ru',387,0.1843,28),(22,'ru',400,0.1843,29),(22,'ru',432,0.1843,72),(22,'ru',624,0.1843,4),(22,'ru',650,0.1843,56),(22,'ru',658,0.1843,64),(22,'ru',659,0.1843,74),(22,'ru',710,0.1843,5),(22,'ru',711,0.1843,9),(22,'ru',712,0.1843,13),(22,'ru',713,0.1843,35),(22,'ru',714,0.1843,38),(22,'ru',715,0.1843,46),(22,'ru',716,0.1843,49),(22,'ru',717,0.1843,50),(22,'ru',718,0.1843,58),(22,'ru',719,0.1843,78),(22,'ru',720,0.1843,78),(22,'ru',721,0.1843,89),(22,'ru',722,0.1843,90),(23,'ru',2,0.2314,1),(23,'ru',43,0.2314,3),(24,'ru',2,0.2314,1),(25,'ru',2,0.2314,1),(25,'ru',265,0.2314,4),(26,'ru',2,0.2056,7),(26,'ru',3,0.3013,114),(26,'ru',4,0.1297,217),(26,'ru',7,0.1297,8),(26,'ru',13,0.2056,133),(26,'ru',14,0.3642,124.5),(26,'ru',16,0.3013,190.25),(26,'ru',24,0.1297,64),(26,'ru',37,0.1297,274),(26,'ru',43,0.1297,373),(26,'ru',53,0.1297,353),(26,'ru',65,0.2056,167),(26,'ru',76,0.1297,365),(26,'ru',84,0.1297,56),(26,'ru',85,0.2056,124),(26,'ru',94,0.1297,225),(26,'ru',132,0.1297,293),(26,'ru',136,0.1297,261),(26,'ru',141,0.2056,231),(26,'ru',154,0.1297,349),(26,'ru',205,0.2595,72.3333),(26,'ru',214,0.2056,144.5),(26,'ru',215,0.1297,137),(26,'ru',216,0.1297,138),(26,'ru',217,0.1297,139),(26,'ru',218,0.1297,140),(26,'ru',219,0.1297,141),(26,'ru',220,0.1297,142),(26,'ru',256,0.1297,146),(26,'ru',257,0.2056,128.5),(26,'ru',259,0.3354,243.2),(26,'ru',260,0.3013,220.5),(26,'ru',261,0.3013,221.5),(26,'ru',262,0.4113,204.375),(26,'ru',264,0.1297,147),(26,'ru',290,0.1297,290),(26,'ru',291,0.2056,331.5),(26,'ru',298,0.1297,230),(26,'ru',303,0.1297,375),(26,'ru',339,0.2056,135.5),(26,'ru',411,0.2056,175),(26,'ru',414,0.1297,278),(26,'ru',423,0.1297,202),(26,'ru',432,0.1297,246),(26,'ru',434,0.1297,31),(26,'ru',466,0.1297,318),(26,'ru',479,0.1297,4),(26,'ru',480,0.1297,7),(26,'ru',481,0.1297,9),(26,'ru',482,0.1297,10),(26,'ru',483,0.2595,139.333),(26,'ru',484,0.2595,135),(26,'ru',485,0.1297,34),(26,'ru',486,0.1297,37),(26,'ru',487,0.1297,39),(26,'ru',488,0.1297,49),(26,'ru',489,0.1297,50),(26,'ru',490,0.1297,51),(26,'ru',491,0.1297,53),(26,'ru',492,0.1297,55),(26,'ru',493,0.1297,69),(26,'ru',494,0.1297,70),(26,'ru',495,0.1297,71),(26,'ru',496,0.1297,73),(26,'ru',497,0.2056,191),(26,'ru',498,0.2056,188.5),(26,'ru',499,0.1297,82),(26,'ru',500,0.2056,190.5),(26,'ru',501,0.1297,84),(26,'ru',502,0.2056,183.5),(26,'ru',503,0.1297,93),(26,'ru',504,0.2056,221.5),(26,'ru',505,0.1297,96),(26,'ru',506,0.2056,230.5),(26,'ru',507,0.1297,98),(26,'ru',508,0.2056,161.5),(26,'ru',509,0.2056,162.5),(26,'ru',510,0.2056,114),(26,'ru',511,0.1297,110),(26,'ru',512,0.1297,112),(26,'ru',513,0.1297,114),(26,'ru',514,0.1297,116),(26,'ru',515,0.1297,118),(26,'ru',516,0.1297,127),(26,'ru',517,0.1297,143),(26,'ru',518,0.1297,144),(26,'ru',519,0.1297,160),(26,'ru',520,0.1297,163),(26,'ru',521,0.2056,253),(26,'ru',522,0.1297,168),(26,'ru',523,0.1297,169),(26,'ru',524,0.1297,172),(26,'ru',525,0.1297,176),(26,'ru',526,0.1297,178),(26,'ru',527,0.2056,229.5),(26,'ru',528,0.1297,186),(26,'ru',529,0.1297,188),(26,'ru',530,0.1297,191),(26,'ru',531,0.1297,193),(26,'ru',532,0.1297,195),(26,'ru',533,0.1297,195),(26,'ru',534,0.1297,203),(26,'ru',535,0.1297,204),(26,'ru',536,0.1297,205),(26,'ru',537,0.1297,207),(26,'ru',538,0.1297,208),(26,'ru',539,0.1297,216),(26,'ru',540,0.1297,218),(26,'ru',541,0.1297,220),(26,'ru',542,0.1297,224),(26,'ru',543,0.1297,228),(26,'ru',544,0.1297,231),(26,'ru',545,0.1297,233),(26,'ru',546,0.2595,315),(26,'ru',547,0.1297,259),(26,'ru',548,0.1297,269),(26,'ru',549,0.1297,271),(26,'ru',550,0.1297,273),(26,'ru',551,0.1297,279),(26,'ru',552,0.1297,291),(26,'ru',553,0.1297,292),(26,'ru',554,0.1297,295),(26,'ru',555,0.1297,297),(26,'ru',556,0.1297,302),(26,'ru',557,0.1297,310),(26,'ru',558,0.1297,311),(26,'ru',559,0.1297,312),(26,'ru',560,0.1297,314),(26,'ru',561,0.1297,315),(26,'ru',562,0.1297,317),(26,'ru',563,0.1297,323),(26,'ru',564,0.1297,324),(26,'ru',565,0.1297,332),(26,'ru',566,0.1297,334),(26,'ru',567,0.1297,341),(26,'ru',568,0.1297,342),(26,'ru',569,0.1297,343),(26,'ru',570,0.1297,344),(26,'ru',571,0.1297,345),(26,'ru',572,0.1297,346),(26,'ru',573,0.1297,350),(26,'ru',574,0.1297,351),(26,'ru',575,0.1297,354),(26,'ru',576,0.1297,355),(26,'ru',577,0.1297,357),(26,'ru',578,0.1297,358),(26,'ru',579,0.1297,360),(26,'ru',580,0.1297,361),(26,'ru',581,0.1297,361),(26,'ru',582,0.1297,362),(26,'ru',583,0.1297,366),(26,'ru',712,0.1297,377),(27,'ru',2,0.2314,1),(27,'ru',401,0.2314,3),(28,'ru',2,0.2314,3),(28,'ru',604,0.2314,2),(29,'ru',2,0.2314,1),(30,'ru',388,0.2314,1),(31,'ru',388,0.2314,1);
/*!40000 ALTER TABLE `b_search_content_stem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_search_content_text`
--

DROP TABLE IF EXISTS `b_search_content_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_search_content_text` (
  `SEARCH_CONTENT_ID` int(11) NOT NULL,
  `SEARCH_CONTENT_MD5` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `SEARCHABLE_CONTENT` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`SEARCH_CONTENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_search_content_text`
--

LOCK TABLES `b_search_content_text` WRITE;
/*!40000 ALTER TABLE `b_search_content_text` DISABLE KEYS */;
INSERT INTO `b_search_content_text` VALUES (1,'8fda87eab83605d86636d24b8cc88b0e','ГЛАВНАЯ\r\nЭКСКУРСИИ ПО ГОА - УДИВИТЕЛЬНЫЕ ПУТЕШЕСТВИЯ ПО ПРИВЛЕКАТЕЛЬНЫМ ЦЕНАМ\rСКОЛЬКО БЫ НИ ПИСАЛИ ОБ ИНДИИ И О ГОА - ВСЕ БУДЕТ МАЛО.\rБЕСКОНЕЧНЫЕ ПЛЯЖИ ГОА, САМОЕ ТЕПЛОЕ МОРЕ, ПОТРЯСАЮЩИЕ КРАСКИ ПРИРОДЫ И МУЗЫКА, ЗАВОРАЖИВАЮЩИЕ ЗАКАТЫ И РАССВЕТЫ, ДРЕВНИЕ ИНДУИСТСКИЕ ХРАМЫ И КОЛОРИТНЫЕ ВОСТОЧНЫЕ БАЗАРЫ - ВСЕ ЭТО, БЕЗ ПРЕУВЕЛИЧЕНИЯ, О ГОА. ОТКРОЙТЕ ДЛЯ СЕБЯ ИНДИЮ - НАШИ ЭКСКУРСИИ ПО ГОА ПОМОГУТ ВАМ В ЭТОМ.\r“ТВОЙ ГОА” ПРЕДЛАГАЕТ РАЗНООБРАЗНЫЕ ЭКСКУРСИИ В ГОА И УВЛЕКАТЕЛЬНЫЕ ТУРЫ ПО ИНДИИ. МЫ ПРЕДОСТАВИМ ВАМ ВОЗМОЖНОСТЬ ПОСЕТИТЬ НА НАШИХ ЭКСКУРСИЯХ ПО ГОА САМЫЕ ИЗВЕСТНЫЕ ИСТОРИЧЕСКИЕ КОМПЛЕКСЫ ГОА И СОСЕДНИХ ШТАТОВ, ХРАМОВЫЕ СВЯТЫНИ И СТОЛИЦЫ ДРЕВНИХ КНЯЖЕСТВ, МНОГИЕ ИЗ КОТОРЫХ ОХРАНЯЮТСЯ ЮНЕСКО. НА НАШЕМ САЙТЕ ВЫ МОЖЕТЕ НАЙТИ РАЗНООБРАЗНУЮ ИНФОРМАЦИЮ ПО ОТДЫХУ В ИНДИИ: ЦЕНЫ В ГОА, СОВЕТЫ ТУРИСТАМ, СПИСОК ДОСТОПРИМЕЧАТЕЛЬНОСТЕЙ, ИНТЕРЕСНЫЕ ФАКТЫ И ПР.\rТОП 5 НАШИХ ЭКСКУРСИЙ\rМЫ ПОКАЖЕМ ВАМ ЗАПОВЕДНИКИ, ДЖУНГЛИ И ПЛЯЖИ, ВОДОПАДЫ И ПЛАНТАЦИИ СПЕЦИЙ, ВЫ ПООБЩАЕТЕСЬ СО СЛОНАМИ И ОБЕЗЬЯНКАМИ, УВИДИТЕ ТИГРОВ, КРОКОДИЛОВ И ДЕЛЬФИНОВ, А ТАКЖЕ СЪЕЗДИТЕ НА ЗНАМЕНИТЫЕ ЭКСКУРСИИ В ХАМПИ, ГОКАРНА И БИДЖАПУР. РАЗРАБОТАННЫЕ НАМИ ЭКСКУРСИИ ПО ГОА - ЭТО НЕ ПРОСТО ПУТЕШЕСТВИЯ С ГИДОМ - ЭТО ПОГРУЖЕНИЕ В МАГИЮ И ТАЙНУ ИНДИИ, ОЧАРОВАНИЕ ЕЁ ДВОРЦОВ И ХРАМОВ, РЫНКОВ И УНИКАЛЬНОЙ, НИ С ЧЕМ НЕ СРАВНИМОЙ ЭНЕРГЕТИКОЙ.\rК ВАШИМ УСЛУГАМ ТРАНСФЕР И УСЛУГИ ТАКСИ, РАЗМЕЩЕНИЕ В ГОСТИНИЦАХ И ГЕСТХАУСАХ, КОТТЕДЖАХ И БУНГАЛО. ВСЕ, ЧТО МОЖЕТ ВАМ ПОНАДОБИТЬСЯ ДЛЯ АКТИВНОГО ОТДЫХА В ИНДИИ: РЕСТОРАНЫ И РЫНКИ, ВЕЧЕРИНКИ И КЛУБЫ, РЫБАЛКА.\rНА СТРАНИЦЕ ЭКСКУРСИИ ПРЕДСТАВЛЕН ПОЛНЫЙ ПЕРЕЧЕНЬ ЭКСКУРСИЙ И ПУТЕШЕСТВИЙ ПО ГОА И ИНДИИ, КОТОРЫЕ МЫ ПРОВОДИМ.\rНАШИ ТУРИСТЫ ГОВОРЯТ О НАС...\rМЫ ЖИВЁМ И РАБОТАЕМ В ИНДИИ УЖЕ БОЛЕЕ ДЕСЯТИ ЛЕТ. МЫ ЛЮБИМ ЭТУ СТРАНУ, ЕЁ КУЛЬТУРУ, ИСТОРИЮ, УВАЖАЕМ ЕЁ ТРАДИЦИИ. МЫ ПОСТАРАЕМСЯ ПОКАЗАТЬ ИНДИЮ ТАК, КАК ЕЁ ВИДИМ МЫ. НУ А ЛУЧШИМ ДОКАЗАТЕЛЬСТВОМ НАШЕЙ ОТЛИЧНОЙ РАБОТЫ СЛУЖАТ ОТЗЫВЫ НАШИХ ТУРИСТОВ. СО ВСЕМИ ОТЗЫВАМИ ВЫ МОЖЕТЕ ОЗНАКОМИТЬСЯ В \rСООТВЕТСТВУЮЩЕМ РАЗДЕЛЕ САЙТА\r, ИЛИ ЖЕ НА \rСТРАНИЦЕ ВКОНТАКТЕ\rБОЛЬШЕ, ЧЕМ ЭКСКУРСИИ ПО ГОА\rОРГАНИЗАЦИЯ И ПРОВЕДЕНИЕ СВАДЕБНЫХ ЦЕРЕМОНИЙ\rАРЕНДА ЖИЛЬЯ\rОРГАНИЗАЦИЯ ПРАЗДНИКОВ\rУСЛУГИ ТАКСИ\rБРОНИРОВАНИЕ АВИА- И АВТОБУСНЫХ БИЛЕТОВ\rАЮРВЕДА И ЛЕЧЕНИЕ\rПОЧЕМУ ТВОЙ ГОА - ЛУЧШИЕ\rМЫ РАБОТАЕМ В ИНДИИ УЖЕ НА ПРОТЯЖЕНИИ БОЛЕЕ 5-ТИ ЛЕТ. МЫ РАБОТАЕМ ОФИЦИАЛЬНО, ИМЕЯ ВСЕ НЕОБХОДИМЫЕ ЛИЦЕНЗИИ (ЛИЦЕНЗИЯ НА ТУРИСТИЧЕСКУЮ ДЕЯТЕЛЬНОСТЬ, ЛИЦЕНЗИЯ НА ТРАНСПОРТНУЮ ДЕЯТЕЛЬНОСТЬ). НАШИ СОТРУДНИКИ ПОЛУЧАЮТ 100% ОФИЦИАЛЬНУЮ ЗАРПЛАТУ. ПОЧЕМУ ЭТО МОЖЕТ БЫТЬ ВАЖНО ДЛЯ ВАС? ВСЁ ЭТО ОЗНАЧАЕТ, ЧТО МЫ ДОРОЖИМ СВОЕЙ РЕПУТАЦИЕЙ. В ОТЛИЧИЕ ОТ МНОГИХ ДРУГИХ КОМПАНИЙ, КОТОРЫЕ РАБОТАЮТ ПОЛУЛЕГАЛЬНО ИЛИ ЖЕ ВООБЩЕ НЕЛЕГАЛЬНО, И МОГУТ СВЕРНУТЬ ДЕЯТЕЛЬНОСТЬ НА СЛЕДУЮЩИЙ МЕСЯЦ, А ТО И ЗАВТРА, МЫ ВЫСТРАИВАЕМ ДОЛГОВРЕМЕННЫЕ ОТНОШЕНИЯ - КАК С НАШИМИ СОТРУДНИКАМИ, ТАК И С НАШИМИ ТУРИСТАМИ. И ЭТО ДАЁТ СВОИ ПЛОДЫ - МНОГИЕ ТУРИСТЫ, ПОБЫВАВШИЕ НА НАШИХ ЭКСКУРСИЯХ, ВОЗВРАЩАЮТСЯ К НАМ СНОВА И РЕКОМЕНДУЮТ НАС СВОИМ ДРУЗЬЯМ.\rПОСЛЕ НАШИХ ПУТЕШЕСТВИЙ И ЭКСКУРСИИ ПО ИНДИИ И ГОА ВЫ ВЕРНЁТЕСЬ ДОМОЙ СЧАСТЛИВЕЕ. ДЛЯ ЭТОГО МЫ ЗДЕСЬ РАБОТАЕМ.\rYOUR BROWSER DOES NOT SUPPORT SVGS\rПОСМОТРИТЕ НАШИ ЭКСКУРСИИ\rПЕРЕЙТИ\r\n'),(2,'c7c9aaa24a3ff561b655820bccc7cfb1','SURYA TRAVELS | ОТЗЫВЫ\r\nЭКСКУРСИИ\rУСЛУГИ\rГАЛЕРЕЯ\rFAQ\rЗАКАЗ УСЛУГ\rОТЗЫВЫ\rКОНТАКТЫ\rYOUR BROWSER DOES NOT SUPPORT SVGS\rIN. \r+91 8888 71 79 22\rRU. \r+7 981 771 79 22\rОТЗЫВЫ\rГЛАВНАЯ\r/\rОТЗЫВЫ\rНАШИ ПРЕИМУЩЕСТВА\rСПЕЦИАЛЬНЫЕ ПРЕДЛОЖЕНИЯ\rСВОДНАЯ ТАБЛИЦА ЦЕН\rИНТЕРЕСНО ОБ ИНДИИ\rСОВЕТЫ ТУРИСТАМ В ГОА\rНОВОСТИ\rПЛЯЖИ ГОА\rИНФОРМАЦИЯ ОБ ИНДИИ\rИНФОРМАЦИЯ О ГОА\rЭТО ИНТЕРЕСНО\rYOUR BROWSER DOES NOT SUPPORT SVGS\rВ ИНДИИ ПЕРВЫМИ НАУЧИЛИСЬ ВЫРАЩИВАТЬ РИС И САХАРНЫЙ ТРОСТНИК, РАЗВОДИТЬ ДОМАШНЮЮ ПТИЦУ\rYOUR BROWSER DOES NOT SUPPORT SVGS\rПОГОДА В ГОА \rYOUR BROWSER DOES NOT SUPPORT SVGS\rВКОНТАКТЕ\rFACEBOOK\rВЫБРАНО:\rОТДЫХ НА ПЛЯЖАХ ПАЛОЛЕМ, КОЛА И СТАРИННЫЙ ФОРТ КАБО ДЕ РАМА\rYOUR BROWSER DOES NOT SUPPORT SVGS\rВЕСЬ ГОА ЗА ОДИН ДЕНЬ\rYOUR BROWSER DOES NOT SUPPORT SVGS\rYOUR BROWSER DOES NOT SUPPORT SVGS\rСБРОСИТЬ ВСЕ\rПОКАЗАНО \r3 ОТЗЫВА\rДОБАВИТЬ ОТЗЫВ\rНИНА СЕРГЕЕВНА\r21 НОЯБРЯ 2015\rЭКСКУРСИИ:\rОТДЫХ НА ПЛЯЖАХ ПАЛОЛЕМ, КОЛА И СТАРИННЫЙ ФОРТ КАБО ДЕ РАМА\rВСЕ ОТЗЫВЫ ОБ ЭТОЙ ЭКСКУРСИИ\rВЕСЬ ГОА ЗА ОДИН ДЕНЬ\rВСЕ ОТЗЫВЫ ОБ ЭТОЙ ЭКСКУРСИИ\rСЪЕЗДИЛИ НА ДВЕ ДВУХДНЕВНЫЕ ЭКСКУРСИИ ОТ ВАС - В ХАМПИ С СЕРГЕЕМ И В БИДЖАПУР С ЕЛЕНОЙ.\rЭТО ПРОСТО ЧТО-ТО С ЧЕМ-ТО! ЕЩЁ НИ РАЗУ МНЕ НЕ ДОВОДИЛОСЬ ВСТРЕЧАТЬ ТАКИХ КЛАССНЫХ ГИДОВ, КОТОРЫЕ СМОГЛИ НЕ ТОЛЬКО НЕ ИСПОРТИТЬ ВПЕЧАТЛЕНИЕ ОТ СТОЛЬ ВОЛШЕБНЫХ МЕСТ (КАК ЭТО ЧАСТО БЫВАЕТ НА ЭКСКУРСИЯХ), НО И СДЕЛАТЬ ВСЁ ДЛЯ ТОГО, ЧТОБЫ ЗАХОТЕЛОСЬ СНОВА ВЕРНУТЬСЯ В ИНДИЮ, ПРИЧЁМ КАК МОЖНО РАНЬШЕ:)\rНИКОГДА НЕ ЗАБУДУ ЭТИ ЗАМЕЧАТЕЛЬНЫЕ 4 ДНЯ, КОТОРЫЕ СТАЛИ НАСТОЯЩИМ ПРАЗДНИКОМ, И ВСЁ ТО ПРЕКРАСНОЕ, ЧТО ДОВЕЛОСЬ УВИДЕТЬ! ВСЕМ БУДЕМ ВАС РЕКОМЕНДОВАТЬ...\rЧИТАТЬ ПОЛНОСТЬЮ\rТВОЙ ГОА\r22 НОЯБРЯ 2015\rСПАСИБО ЗА ТАКОЙ ОБШИРНЫЙ ОТЗЫВ. НО ВЫ МОГЛИ БЫ ПОИНТЕРЕСОВАТЬСЯ У ТЕХ 2-Х. ОНИ БЫЛИ ЗАРАНЕЕ ПРЕДУПРЕЖДЕНЫ О НЕВОЗМОЖНОСТИ ПОЕХАТЬ В ТИБЕТ, О ТОМ, ЧТО ЭКСКУРСИЯ ВОЗМОЖНА ТОЛЬКО В ХАМПИ И ОЗЕРО, НА ЧТО СОГЛАСИЛИСЬ. НАВЕРНОЕ, ОНИ ТОЖЕ БЫЛИ ВРЕДНЫМИ, И РЕШИЛИ , А ПУСТЬ ВСЕ ПОЕДУТ В ТИБЕТ..И ВЫ ЗАБЫЛИ УТОЧНИТЬ, ЧТО ВЫ ЕХАЛИ В 5-ОМ, А НЕ В 6-М И ЦЕНА ПРИ ЭТОМ НЕ ПОМЕНЯЛАСЬ. НУ И САМОЕ ГЛАВНОЕ, ПРО ХАМПИ МОЖНО НАПИСАТЬ НЕ ОДНУ КНИГУ, А У ВАС.\rАНДРЕЙ БАТУРА\r5 НОЯБРЯ 2015\rЭКСКУРСИИ:\rОТДЫХ НА ПЛЯЖАХ ПАЛОЛЕМ, КОЛА И СТАРИННЫЙ ФОРТ КАБО ДЕ РАМА\rВСЕ ОТЗЫВЫ ОБ ЭТОЙ ЭКСКУРСИИ\rМЫ ТОЛЬКО ВЧЕРА ВЕРУЛИСЬ ИЗ ГОА, ВСЁ ОЧЕНЬ ПОНРАВИЛОСЬ! СПАСИБО БОЛЬШОЕ КОМПАНИИ ТВОЙ ГОА, ЗА ОРГАНИЗАЦИЮ ЭКСКУРСИЙ, ВСЁ БЫЛО ОРГАНИЗОВАНО НА ВЫСОЧАЙШЕМ УРОВНЕ. ЭКСКУРСИИ ОЧЕНЬ ИНТЕРЕСНЫЕ, ОРОМНОЕ СПАСИБО ВСЕМ ГИДАМ С КОТОРЫМИ МЫ ЕЗДИЛИ, ОНИ ПРОФЕССИОНАЛЫ В СВОЁМ ДЕЛЕ, ОТВЕЧАЮТ НА ЛЮБЫЕ ВОПРОСЫ, РАСКАЗЫВАЮТ ОЧЕНЬ ИНТЕРЕСНЫЕ ИСТОРИИ, ЭКСКУРСИИ ПРОХОДИЛИ ВЕСЕЛО, ВИДНО ЧТО ЛЮБЯТ СВОЮ РАБОТУ.\rYOUR BROWSER DOES NOT SUPPORT SVGS\rYOUR BROWSER DOES NOT SUPPORT SVGS\rYOUR BROWSER DOES NOT SUPPORT SVGS\rYOUR BROWSER DOES NOT SUPPORT SVGS\rYOUR BROWSER DOES NOT SUPPORT SVGS\rИНОКЕНТИЙ ИВАНОВ\r5 НОЯБРЯ 2015\rЭКСКУРСИИ:\rОТДЫХ НА ПЛЯЖАХ ПАЛОЛЕМ, КОЛА И СТАРИННЫЙ ФОРТ КАБО ДЕ РАМА\rВСЕ ОТЗЫВЫ ОБ ЭТОЙ ЭКСКУРСИИ\rМЫ ТОЛЬКО ВЧЕРА ВЕРУЛИСЬ ИЗ ГОА, ВСЁ ОЧЕНЬ ПОНРАВИЛОСЬ! СПАСИБО БОЛЬШОЕ КОМПАНИИ ТВОЙ ГОА, ЗА ОРГАНИЗАЦИЮ ЭКСКУРСИЙ, ВСЁ БЫЛО ОРГАНИЗОВАНО НА ВЫСОЧАЙШЕМ УРОВНЕ. ЭКСКУРСИИ ОЧЕНЬ ИНТЕРЕСНЫЕ, ОРОМНОЕ СПАСИБО ВСЕМ ГИДАМ С КОТОРЫМИ МЫ ЕЗДИЛИ, ОНИ ПРОФЕССИОНАЛЫ В СВОЁМ ДЕЛЕ, ОТВЕЧАЮТ НА ЛЮБЫЕ ВОПРОСЫ, РАСКАЗЫВАЮТ ОЧЕНЬ ИНТЕРЕСНЫЕ ИСТОРИИ, ЭКСКУРСИИ ПРОХОДИЛИ ВЕСЕЛО, ВИДНО ЧТО ЛЮБЯТ СВОЮ РАБОТУ.\rПОКАЗАТЬ ЕЩЕ\rКОНТАКТЫ\rИНДИЯ\r+91 8888 71 79 22\r+91 8888 70 40 05\r+91 7875 00 99 44\rРОССИЯ\r+7 981 771 79 22\rE-MAIL\rINFO@TVOYGOA.RU\rПРИСОЕДИНЯЙТЕСЬ К НАМ\rYOUR BROWSER DOES NOT SUPPORT SVGS\rYOUR BROWSER DOES NOT SUPPORT SVGS\rYOUR BROWSER DOES NOT SUPPORT SVGS\rРАЗРАБОТКА -\rAE! STUDIO\rДИЗАЙН ОТ\rPIXELJAM\r© 2011-2016 «ТВОЙ ГОА»\rДОБАВЛЕНИЕ ОТЗЫВА\rЭКСКУРСИЯ\rПРЕДСТАВЬТЕСЬ, ПОЖАЛУЙСТА\rПРОФИЛЬ ВКОНТАКТЕ ИЛИ FACEBOOK\rТЕКСТ ОТЗЫВА\rПРИ ЖЕЛАНИИ ВЫ МОЖЕТЕ ПРИКРЕПИТЬ К ОТЗЫВУ НЕСКОЛЬКО ФОТО\rYOUR BROWSER DOES NOT SUPPORT SVGS\rПЕРЕТАЩИТЕ ФОТО СЮДА ИЛИ НАЖМИТЕ ДЛЯ ВЫБОРА НА КОМПЬЮТЕРЕ\r \rОТПРАВИТЬ\r-->\r\n'),(3,'e37fe7828eea41ca2a9ac255be406dec','SURYA TRAVELS | ЭКСКУРСИИ | ОТДЫХ НА ПЛЯЖАХ ПАЛОЛЕМ, КОЛА И СТАРИННЫЙ ФОРТ КАБО ДЕ РАМА\r\nЭКСКУРСИИ\rУСЛУГИ\rГАЛЕРЕЯ\rFAQ\rЗАКАЗ УСЛУГ\rОТЗЫВЫ\rКОНТАКТЫ\rYOUR BROWSER DOES NOT SUPPORT SVGS\rIN. \r+91 8888 71 79 22\rRU. \r+7 981 771 79 22\rОТДЫХ НА ПЛЯЖАХ ПАЛОЛЕМ, КОЛА И СТАРИННЫЙ ФОРТ КАБО ДЕ РАМА\rГЛАВНАЯ\r/\rЭКСКУРСИИ\r/\rОТДЫХ НА ПЛЯЖАХ ПАЛОЛЕМ, КОЛА И СТАРИННЫЙ ФОРТ КАБО ДЕ РАМА\rНАШИ ПРЕИМУЩЕСТВА\rСПЕЦИАЛЬНЫЕ ПРЕДЛОЖЕНИЯ\rСВОДНАЯ ТАБЛИЦА ЦЕН\rИНТЕРЕСНО ОБ ИНДИИ\rСОВЕТЫ ТУРИСТАМ В ГОА\rНОВОСТИ\rПЛЯЖИ ГОА\rИНФОРМАЦИЯ ОБ ИНДИИ\rИНФОРМАЦИЯ О ГОА\rЭТО ИНТЕРЕСНО\rYOUR BROWSER DOES NOT SUPPORT SVGS\rВ ИНДИИ ПЕРВЫМИ НАУЧИЛИСЬ ВЫРАЩИВАТЬ РИС И САХАРНЫЙ ТРОСТНИК, РАЗВОДИТЬ ДОМАШНЮЮ ПТИЦУ\rYOUR BROWSER DOES NOT SUPPORT SVGS\rПОГОДА В ГОА \rYOUR BROWSER DOES NOT SUPPORT SVGS\rВКОНТАКТЕ\rFACEBOOK\rОПИСАНИЕ\rПРОГРАММА И СТОИМОСТЬ\rОТЗЫВЫ\rЗАКАЗ\rПОКАЗАНО \r3 ОТЗЫВА\rДОБАВИТЬ ОТЗЫВ\rНИНА СЕРГЕЕВНА\r21 НОЯБРЯ 2015\rСЪЕЗДИЛИ НА ДВЕ ДВУХДНЕВНЫЕ ЭКСКУРСИИ ОТ ВАС - В ХАМПИ С СЕРГЕЕМ И В БИДЖАПУР С ЕЛЕНОЙ.\rЭТО ПРОСТО ЧТО-ТО С ЧЕМ-ТО! ЕЩЁ НИ РАЗУ МНЕ НЕ ДОВОДИЛОСЬ ВСТРЕЧАТЬ ТАКИХ КЛАССНЫХ ГИДОВ, КОТОРЫЕ СМОГЛИ НЕ ТОЛЬКО НЕ ИСПОРТИТЬ ВПЕЧАТЛЕНИЕ ОТ СТОЛЬ ВОЛШЕБНЫХ МЕСТ (КАК ЭТО ЧАСТО БЫВАЕТ НА ЭКСКУРСИЯХ), НО И СДЕЛАТЬ ВСЁ ДЛЯ ТОГО, ЧТОБЫ ЗАХОТЕЛОСЬ СНОВА ВЕРНУТЬСЯ В ИНДИЮ, ПРИЧЁМ КАК МОЖНО РАНЬШЕ:)\rНИКОГДА НЕ ЗАБУДУ ЭТИ ЗАМЕЧАТЕЛЬНЫЕ 4 ДНЯ, КОТОРЫЕ СТАЛИ НАСТОЯЩИМ ПРАЗДНИКОМ, И ВСЁ ТО ПРЕКРАСНОЕ, ЧТО ДОВЕЛОСЬ УВИДЕТЬ! ВСЕМ БУДЕМ ВАС РЕКОМЕНДОВАТЬ...\rЧИТАТЬ ПОЛНОСТЬЮ\rТВОЙ ГОА\r22 НОЯБРЯ 2015\rСПАСИБО ЗА ТАКОЙ ОБШИРНЫЙ ОТЗЫВ. НО ВЫ МОГЛИ БЫ ПОИНТЕРЕСОВАТЬСЯ У ТЕХ 2-Х. ОНИ БЫЛИ ЗАРАНЕЕ ПРЕДУПРЕЖДЕНЫ О НЕВОЗМОЖНОСТИ ПОЕХАТЬ В ТИБЕТ, О ТОМ, ЧТО ЭКСКУРСИЯ ВОЗМОЖНА ТОЛЬКО В ХАМПИ И ОЗЕРО, НА ЧТО СОГЛАСИЛИСЬ. НАВЕРНОЕ, ОНИ ТОЖЕ БЫЛИ ВРЕДНЫМИ, И РЕШИЛИ , А ПУСТЬ ВСЕ ПОЕДУТ В ТИБЕТ..И ВЫ ЗАБЫЛИ УТОЧНИТЬ, ЧТО ВЫ ЕХАЛИ В 5-ОМ, А НЕ В 6-М И ЦЕНА ПРИ ЭТОМ НЕ ПОМЕНЯЛАСЬ. НУ И САМОЕ ГЛАВНОЕ, ПРО ХАМПИ МОЖНО НАПИСАТЬ НЕ ОДНУ КНИГУ, А У ВАС.\rАНДРЕЙ БАТУРА\r5 НОЯБРЯ 2015\rМЫ ТОЛЬКО ВЧЕРА ВЕРУЛИСЬ ИЗ ГОА, ВСЁ ОЧЕНЬ ПОНРАВИЛОСЬ! СПАСИБО БОЛЬШОЕ КОМПАНИИ ТВОЙ ГОА, ЗА ОРГАНИЗАЦИЮ ЭКСКУРСИЙ, ВСЁ БЫЛО ОРГАНИЗОВАНО НА ВЫСОЧАЙШЕМ УРОВНЕ. ЭКСКУРСИИ ОЧЕНЬ ИНТЕРЕСНЫЕ, ОРОМНОЕ СПАСИБО ВСЕМ ГИДАМ С КОТОРЫМИ МЫ ЕЗДИЛИ, ОНИ ПРОФЕССИОНАЛЫ В СВОЁМ ДЕЛЕ, ОТВЕЧАЮТ НА ЛЮБЫЕ ВОПРОСЫ, РАСКАЗЫВАЮТ ОЧЕНЬ ИНТЕРЕСНЫЕ ИСТОРИИ, ЭКСКУРСИИ ПРОХОДИЛИ ВЕСЕЛО, ВИДНО ЧТО ЛЮБЯТ СВОЮ РАБОТУ.\rYOUR BROWSER DOES NOT SUPPORT SVGS\rYOUR BROWSER DOES NOT SUPPORT SVGS\rYOUR BROWSER DOES NOT SUPPORT SVGS\rYOUR BROWSER DOES NOT SUPPORT SVGS\rYOUR BROWSER DOES NOT SUPPORT SVGS\rИНОКЕНТИЙ ИВАНОВ\r5 НОЯБРЯ 2015\rМЫ ТОЛЬКО ВЧЕРА ВЕРУЛИСЬ ИЗ ГОА, ВСЁ ОЧЕНЬ ПОНРАВИЛОСЬ! СПАСИБО БОЛЬШОЕ КОМПАНИИ ТВОЙ ГОА, ЗА ОРГАНИЗАЦИЮ ЭКСКУРСИЙ, ВСЁ БЫЛО ОРГАНИЗОВАНО НА ВЫСОЧАЙШЕМ УРОВНЕ. ЭКСКУРСИИ ОЧЕНЬ ИНТЕРЕСНЫЕ, ОРОМНОЕ СПАСИБО ВСЕМ ГИДАМ С КОТОРЫМИ МЫ ЕЗДИЛИ, ОНИ ПРОФЕССИОНАЛЫ В СВОЁМ ДЕЛЕ, ОТВЕЧАЮТ НА ЛЮБЫЕ ВОПРОСЫ, РАСКАЗЫВАЮТ ОЧЕНЬ ИНТЕРЕСНЫЕ ИСТОРИИ, ЭКСКУРСИИ ПРОХОДИЛИ ВЕСЕЛО, ВИДНО ЧТО ЛЮБЯТ СВОЮ РАБОТУ.\rЗАКАЗАТЬ ЭКСКУРСИЮ\rДОБАВИТЬ ОТЗЫВ\rКОНТАКТЫ\rИНДИЯ\r+91 8888 71 79 22\r+91 8888 70 40 05\r+91 7875 00 99 44\rРОССИЯ\r+7 981 771 79 22\rE-MAIL\rINFO@TVOYGOA.RU\rПРИСОЕДИНЯЙТЕСЬ К НАМ\rYOUR BROWSER DOES NOT SUPPORT SVGS\rYOUR BROWSER DOES NOT SUPPORT SVGS\rYOUR BROWSER DOES NOT SUPPORT SVGS\rРАЗРАБОТКА -\rAE! STUDIO\rДИЗАЙН ОТ\rPIXELJAM\r© 2011-2016 «ТВОЙ ГОА»\r\n'),(4,'381fe3bc7a45928828f200dd123585df','SURYA TRAVELS | ЭКСКУРСИИ\r\nЭКСКУРСИИ\rУСЛУГИ\rГАЛЕРЕЯ\rFAQ\rЗАКАЗ УСЛУГ\rОТЗЫВЫ\rКОНТАКТЫ\rYOUR BROWSER DOES NOT SUPPORT SVGS\rIN. \r+91 8888 71 79 22\rRU. \r+7 981 771 79 22\rЭКСКУРСИИ\rГЛАВНАЯ\r/\rЭКСКУРСИИ\rНАШИ ПРЕИМУЩЕСТВА\rСПЕЦИАЛЬНЫЕ ПРЕДЛОЖЕНИЯ\rСВОДНАЯ ТАБЛИЦА ЦЕН\rИНТЕРЕСНО ОБ ИНДИИ\rСОВЕТЫ ТУРИСТАМ В ГОА\rНОВОСТИ\rПЛЯЖИ ГОА\rИНФОРМАЦИЯ ОБ ИНДИИ\rИНФОРМАЦИЯ О ГОА\rЭТО ИНТЕРЕСНО\rYOUR BROWSER DOES NOT SUPPORT SVGS\rВ ИНДИИ ПЕРВЫМИ НАУЧИЛИСЬ ВЫРАЩИВАТЬ РИС И САХАРНЫЙ ТРОСТНИК, РАЗВОДИТЬ ДОМАШНЮЮ ПТИЦУ\rYOUR BROWSER DOES NOT SUPPORT SVGS\rПОГОДА В ГОА \rYOUR BROWSER DOES NOT SUPPORT SVGS\rВКОНТАКТЕ\rFACEBOOK\r2 ДНЯ (5)\rYOUR BROWSER DOES NOT SUPPORT SVGS\r4 ДНЯ (8)\r6 ДНЕЙ (3)\rИСТОРИЧЕСКИЕ (7)\rРАЗВЛЕКАТЕЛЬНЫЕ (8)\rДРЕВНЯЯ АРХИТЕКТУРА (5)\r7 ДНЕЙ (3)\rYOUR BROWSER DOES NOT SUPPORT SVGS\rСБРОСИТЬ ВСЕ ФИЛЬТРЫ\rНАЙДЕНО \r5 ЭКСКУРСИЙ\rКОЛХАПУР И МАХАБАЛЕШВАР\rМЫ СДЕЛАЕМ ДЛЯ ВАС ЭТО ПУТЕШЕСТВИЕ НЕЗАБЫВАЕМЫМ.\rЗА ДВА ДНЯ ВЫ УВИДИТЕ УДИВИТЕЛЬНЫЕ ПАМЯТНИКИ, УСЛЫШИТЕ ДРЕВНИЕ ЛЕГЕНДЫ, ОТДОХНЕТЕ В ГОРАХ, ПОЧУВСТВУЕТЕ СЕБЯ МАХАРАДЖЕЙ.\rМЫ ПОБЫВАЕМ В СВЯЩЕННОМ ХРАМЕ МАХАЛАКШМИ (7В), ВО ДВОРЦЕ МАХАРАДЖЕЙ, ГДЕ И ПО СЕЙ ДЕНЬ ЖИВЕТ КОРОЛЕВСКАЯ СЕМЬЯ, НАСЛАДИМСЯ ЧИСТЫМ ГОРНЫМ ВОЗДУХОМ И СПЕЛОЙ КЛУБНИКОЙ, ОКУНЕМСЯ В ОБЛАКА НА РАССВЕТЕ.\rРАЗВЛЕКАТЕЛЬНЫЕ\r2 ДНЯ\rИСТОРИЧЕСКАЯ\rКОЛХАПУР И МАХАБАЛЕШВАР\rМЫ СДЕЛАЕМ ДЛЯ ВАС ЭТО ПУТЕШЕСТВИЕ НЕЗАБЫВАЕМЫМ.\rЗА ДВА ДНЯ ВЫ УВИДИТЕ УДИВИТЕЛЬНЫЕ ПАМЯТНИКИ, УСЛЫШИТЕ ДРЕВНИЕ ЛЕГЕНДЫ, ОТДОХНЕТЕ В ГОРАХ, ПОЧУВСТВУЕТЕ СЕБЯ МАХАРАДЖЕЙ.\rМЫ ПОБЫВАЕМ В СВЯЩЕННОМ ХРАМЕ МАХАЛАКШМИ (7В), ВО ДВОРЦЕ МАХАРАДЖЕЙ, ГДЕ И ПО СЕЙ ДЕНЬ ЖИВЕТ КОРОЛЕВСКАЯ СЕМЬЯ, НАСЛАДИМСЯ ЧИСТЫМ ГОРНЫМ ВОЗДУХОМ И СПЕЛОЙ КЛУБНИКОЙ, ОКУНЕМСЯ В ОБЛАКА НА РАССВЕТЕ.\rРАЗВЛЕКАТЕЛЬНЫЕ\r2 ДНЯ\rИСТОРИЧЕСКАЯ\rКОНТАКТЫ\rИНДИЯ\r+91 8888 71 79 22\r+91 8888 70 40 05\r+91 7875 00 99 44\rРОССИЯ\r+7 981 771 79 22\rE-MAIL\rINFO@TVOYGOA.RU\rПРИСОЕДИНЯЙТЕСЬ К НАМ\rYOUR BROWSER DOES NOT SUPPORT SVGS\rYOUR BROWSER DOES NOT SUPPORT SVGS\rYOUR BROWSER DOES NOT SUPPORT SVGS\rРАЗРАБОТКА -\rAE! STUDIO\rДИЗАЙН ОТ\rPIXELJAM\r© 2011-2016 «ТВОЙ ГОА»\r\n'),(5,'0786f550804d70e1911950dfc7a220f4','SURYA TRAVELS | ФОТОГАЛЕРЕЯ\r\nЭКСКУРСИИ\rУСЛУГИ\rГАЛЕРЕЯ\rFAQ\rЗАКАЗ УСЛУГ\rОТЗЫВЫ\rКОНТАКТЫ\rYOUR BROWSER DOES NOT SUPPORT SVGS\rIN. \r+91 8888 71 79 22\rRU. \r+7 981 771 79 22\rФОТОГАЛЕРЕЯ\rГЛАВНАЯ\r/\rФОТОГАЛЕРЕЯ\rНАШИ ПРЕИМУЩЕСТВА\rСПЕЦИАЛЬНЫЕ ПРЕДЛОЖЕНИЯ\rСВОДНАЯ ТАБЛИЦА ЦЕН\rИНТЕРЕСНО ОБ ИНДИИ\rСОВЕТЫ ТУРИСТАМ В ГОА\rНОВОСТИ\rПЛЯЖИ ГОА\rИНФОРМАЦИЯ ОБ ИНДИИ\rИНФОРМАЦИЯ О ГОА\rЭТО ИНТЕРЕСНО\rYOUR BROWSER DOES NOT SUPPORT SVGS\rВ ИНДИИ ПЕРВЫМИ НАУЧИЛИСЬ ВЫРАЩИВАТЬ РИС И САХАРНЫЙ ТРОСТНИК, РАЗВОДИТЬ ДОМАШНЮЮ ПТИЦУ\rYOUR BROWSER DOES NOT SUPPORT SVGS\rПОГОДА В ГОА \rYOUR BROWSER DOES NOT SUPPORT SVGS\rВКОНТАКТЕ\rFACEBOOK\rСТАРЫЙ ГОА И ИНДУИСТСКИЕ ХРАМЫ\rФОТО ПЛЯЖЕЙ СЕВЕРНЫЙ ГОА И ЮЖНЫЙ ГОА, ФОТО ГОА\rКОЛХАПУР И МАХАБАЛЕШВАР\rПЛЯЖИ ГОА\rСТАРЫЙ ГОА И ИНДУИСТСКИЕ ХРАМЫ\rСТАРЫЙ ГОА И ИНДУИСТСКИЕ ХРАМЫ\rСТАРЫЙ ГОА И ИНДУИСТСКИЕ ХРАМЫ\rКОНТАКТЫ\rИНДИЯ\r+91 8888 71 79 22\r+91 8888 70 40 05\r+91 7875 00 99 44\rРОССИЯ\r+7 981 771 79 22\rE-MAIL\rINFO@TVOYGOA.RU\rПРИСОЕДИНЯЙТЕСЬ К НАМ\rYOUR BROWSER DOES NOT SUPPORT SVGS\rYOUR BROWSER DOES NOT SUPPORT SVGS\rYOUR BROWSER DOES NOT SUPPORT SVGS\rРАЗРАБОТКА -\rAE! STUDIO\rДИЗАЙН ОТ\rPIXELJAM\r© 2011-2016 «ТВОЙ ГОА»\r\n'),(6,'5bb62aeb09ec012197cb7c9301f29e24','SURYA TRAVELS | НОВОСТИ\r\nЭКСКУРСИИ\rУСЛУГИ\rГАЛЕРЕЯ\rFAQ\rЗАКАЗ УСЛУГ\rОТЗЫВЫ\rКОНТАКТЫ\rYOUR BROWSER DOES NOT SUPPORT SVGS\rIN. \r+91 8888 71 79 22\rRU. \r+7 981 771 79 22\rНОВОСТИ\rГЛАВНАЯ\r/\rНОВОСТИ\rНАШИ ПРЕИМУЩЕСТВА\rСПЕЦИАЛЬНЫЕ ПРЕДЛОЖЕНИЯ\rСВОДНАЯ ТАБЛИЦА ЦЕН\rИНТЕРЕСНО ОБ ИНДИИ\rСОВЕТЫ ТУРИСТАМ В ГОА\rНОВОСТИ\rПЛЯЖИ ГОА\rИНФОРМАЦИЯ ОБ ИНДИИ\rИНФОРМАЦИЯ О ГОА\rЭТО ИНТЕРЕСНО\rYOUR BROWSER DOES NOT SUPPORT SVGS\rВ ИНДИИ ПЕРВЫМИ НАУЧИЛИСЬ ВЫРАЩИВАТЬ РИС И САХАРНЫЙ ТРОСТНИК, РАЗВОДИТЬ ДОМАШНЮЮ ПТИЦУ\rYOUR BROWSER DOES NOT SUPPORT SVGS\rПОГОДА В ГОА \rYOUR BROWSER DOES NOT SUPPORT SVGS\rВКОНТАКТЕ\rFACEBOOK\r20 НОЯБРЯ 2015\rКАЛИНИНГРАДСКИЕ ТУРФИРМЫ ПРЕДЛАГАЮТ КУРОРТЫ АЗИИ ВЗАМЕН ТУРЦИИ\rЕСЛИ ПОСЛЕ ЗАПРЕТА НА ПОЛЕТЫ В ЕГИПЕТ БЫЛО ЗАМЕТНО ПОВЫШЕНИЕ ЦЕН ТУРОПЕРАТОРАМИ, И ЛЮДЯМ БЫЛО ДОРОГОВАТО ПЕРЕБРОНИРОВАТЬ ПУТЕВКИ, ТО СЕЙЧАС ЦЕНЫ ПРИЕМЛЕМЫЕ\r20 НОЯБРЯ 2015\rТАМОЖНЯ РОССИИ ПОДДЕРЖАЛА ВВЕДЕНИЕ СБОРА В 10-15 ЕВРО НА ПОСЫЛКИ СТОИМОСТЬЮ ОТ 22 ДО 150 ЕВРО ИЗ ЗАРУБЕЖНЫХ ИНТЕРНЕТ-МАГАЗИНОВ\r23 НОЯБРЯ 2015 ГОДА СТАЛО ИЗВЕСТНО, ЧТО ВВЕДЕНИЕ ПОДОБНОГО НАЛОГА ОБСУЖДАЕТСЯ НА УРОВНЕ ЕВРАЗИЙСКОГО ЭКОНОМИЧЕСКОГО СОЮЗА, В КОТОРЫЙ ВХОДЯТ АРМЕНИЯ, РЕСПУБЛИКА БЕЛАРУСЬ, КАЗАХСТАН, КИРГИЗИЯ И РОССИЯ.\rКОНТАКТЫ\rИНДИЯ\r+91 8888 71 79 22\r+91 8888 70 40 05\r+91 7875 00 99 44\rРОССИЯ\r+7 981 771 79 22\rE-MAIL\rINFO@TVOYGOA.RU\rПРИСОЕДИНЯЙТЕСЬ К НАМ\rYOUR BROWSER DOES NOT SUPPORT SVGS\rYOUR BROWSER DOES NOT SUPPORT SVGS\rYOUR BROWSER DOES NOT SUPPORT SVGS\rРАЗРАБОТКА -\rAE! STUDIO\rДИЗАЙН ОТ\rPIXELJAM\r© 2011-2016 «ТВОЙ ГОА»\r\n'),(7,'e22ea708c07ac0307ffc8da7bd5db62b','SURYA TRAVELS | ЭКСКУРСИИ | ОТДЫХ НА ПЛЯЖАХ ПАЛОЛЕМ, КОЛА И СТАРИННЫЙ ФОРТ КАБО ДЕ РАМА\r\nЭКСКУРСИИ\rУСЛУГИ\rГАЛЕРЕЯ\rFAQ\rЗАКАЗ УСЛУГ\rОТЗЫВЫ\rКОНТАКТЫ\rYOUR BROWSER DOES NOT SUPPORT SVGS\rIN. \r+91 8888 71 79 22\rRU. \r+7 981 771 79 22\rОТДЫХ НА ПЛЯЖАХ ПАЛОЛЕМ, КОЛА И СТАРИННЫЙ ФОРТ КАБО ДЕ РАМА\rГЛАВНАЯ\r/\rЭКСКУРСИИ\r/\rОТДЫХ НА ПЛЯЖАХ ПАЛОЛЕМ, КОЛА И СТАРИННЫЙ ФОРТ КАБО ДЕ РАМА\rНАШИ ПРЕИМУЩЕСТВА\rСПЕЦИАЛЬНЫЕ ПРЕДЛОЖЕНИЯ\rСВОДНАЯ ТАБЛИЦА ЦЕН\rИНТЕРЕСНО ОБ ИНДИИ\rСОВЕТЫ ТУРИСТАМ В ГОА\rНОВОСТИ\rПЛЯЖИ ГОА\rИНФОРМАЦИЯ ОБ ИНДИИ\rИНФОРМАЦИЯ О ГОА\rЭТО ИНТЕРЕСНО\rYOUR BROWSER DOES NOT SUPPORT SVGS\rВ ИНДИИ ПЕРВЫМИ НАУЧИЛИСЬ ВЫРАЩИВАТЬ РИС И САХАРНЫЙ ТРОСТНИК, РАЗВОДИТЬ ДОМАШНЮЮ ПТИЦУ\rYOUR BROWSER DOES NOT SUPPORT SVGS\rПОГОДА В ГОА \rYOUR BROWSER DOES NOT SUPPORT SVGS\rВКОНТАКТЕ\rFACEBOOK\rОПИСАНИЕ\rПРОГРАММА И СТОИМОСТЬ\rОТЗЫВЫ\rЗАКАЗ\rДЛЯ ГРУПП ОТ 6 ЧЕЛОВЕК ЦЕНЫ УСТАНАВЛИВАЮТСЯ ИНДИВИДУАЛЬНО НА ВСЕ ЭКСКУРСИИ!\rЕСЛИ ВЫ УЖЕ В ГОА, ОБЯЗАТЕЛЬНО ПОБЫВАЙТЕ НА ОДНОМ ИЗ КРАСИВЕЙШИХ ПЛЯЖЕЙ ЮЖНОГО ГОА - ПАЛОЛЕМЕ И САМОМ ТИХОМ И БЕЗЛЮДНОМ ПЛЯЖЕ - КОЛА. ВЫ СОВЕРШИТЕ ВОДНУЮ ПРОГУЛКУ И ПОНАБЛЮДАЕТЕ ЗА ИГРОЙ ДЕЛЬФИНОВ. ПОБЫВАЕТЕ В ДРЕВНЕЙШЕМ ФОРТЕ КАБО ДЕ РАМА (KABO DE RAMA) И УЗНАЕТЕ ИНТЕРЕСНЫЕ ЛЕГЕНДЫ О РАМЕ И СИТЕ ИЗ ВЕЛИКОГО ЭПОСА РАМАЯНА, СВЯЗАННЫЕ С МЫСОМ РАМЫ. ПОДНИМИТЕСЬ НА БАШНЮ, ОТКУДА ОТКРЫВАЕТСЯ ВОСХИТИТЕЛЬНЫЙ ВИД НА БЕСКОНЕЧНУЮ БЕРЕГОВУЮ ЛИНИЮ.\rМИР СОЗДАН ДЛЯ ЛЮБВИ И ГАРМОНИИ С СОБОЙ И ОКРУЖАЮЩИМ МИРОМ. ВЫ ОБЯЗАТЕЛЬНО УБЕДИТЕСЬ В ЭТОМ, ПОБЫВАВ ЗДЕСЬ.\rYOUR BROWSER DOES NOT SUPPORT SVGS\rОТКРЫТЬ ГАЛЕРЕЮ\rПЛЯЖ ПАЛОЛЕМ\rОДИН ИЗ САМЫХ КРАСИВЫХ ПЛЯЖЕЙ ГОА. ЗДЕСЬ ВЫ НАЙДЕТЕ НЕ ТОЛЬКО ЛАСКОВОЕ МОРЕ, БЕСКОНЕЧНЫЙ БЕЛОСНЕЖНЫЙ ПЛЯЖ, КОКОСОВЫЕ ПАЛЬМЫ У САМОЙ КРОМКИ МОРЯ, НО И НЕОБЫЧНУЮ ОЧЕНЬ УЮТНУЮ АТМОСФЕРУ. НА ЛОДКЕ МЫ ВЫЙДЕМ В МОРЕ, ПОЛЮБУЕМСЯ ДЕЛЬФИНАМИ, ДОПЛЫВЕМ ДО ОСТРОВА. ВЫ НАСЛАДИТЕСЬ КРАСОТОЙ ВОКРУГ, БРЕДЯ ПО НЕЖНЕЙШЕМУ ПЕСКУ.\rПЛЯЖ КОЛА\rРОМАНТИЧНЫЙ, УДИВИТЕЛЬНЫЙ, УЕДИНЕННЫЙ С НЕТРОНУТОЙ БЕРЕГОВОЙ ЛИНИЕЙ И ,КОНЕЧНО, ПРОСТО КРАСИВЫЙ, С ЛАГУНОЙ, ГДЕ МОЖНО ПОГРУЗИТЬСЯ В СПОКОЙНОЕ МОРЕ.\rФОРТ КАБО ДЕ РАМА\rОДНА ИЗ СТАРЕЙШИХ КРЕПОСТЕЙ В ГОА.\rФОРТ КАБО ДЕ РАМА ИМЕЕТ ИНТЕРЕСНУЮ ИСТОРИЮ. МЫ ОБЯЗАТЕЛЬНО РАССКАЖЕМ ВАМ, СВЯЗАНЫЕ С НИМ УВЛЕКАТЕЛЬНЫЕ ЛЕГЕНДЫ И ВЫ ПОЧУВСТВУЕТЕ МИСТИЧЕСКУЮ АТМОСФЕРУ МЫСА РАМЫ. В ЭТИХ МЕСТАХ ПРОВЕЛИ 14 ЛЕТ В ИЗГНАНИИ ВЕЛИКИЙ ГЕРОЙ РАМАЯНЫ РАМА И ЕГО ЖЕНА СИТА. ФОРТОМ ВЛАДЕЛИ ИНДИЙСКИЕ ПРАВИТЕЛИ И МУСУЛЬМАНСКИЕ ШАХИ, В 1763 ГОДУ КАБО ДЕ РАМА БЫЛ ЗАХВАЧЕН ПОРТУГАЛЬЦАМИ. ЧАСТЬ КРЕПОСТИ СОХРАНИЛАСЬ, ЧАСТЬ РАЗРУШЕНА. БЕЛОСНЕЖНАЯ ЦЕРКОВЬ СВЯТОГО АНТОНИА (SANTO ANTONIO) ВНУТРИ ФОРТА, БАШНИ, БОЛЬШИЕ ПУШКИ, КОЛОДЕЦ, В КОТОРЫЙ ПОДАВАЛАСЬ ГОРЯЧАЯ И ХОЛОДНАЯ ВОДА ИЗ ПРИРОДНЫХ ИСТОЧНИКОВ, ВЕЛИКОЛЕПНЫЙ ВИД, ОТКРЫВАЮЩИЙСЯ СО СТЕН КРЕПОСТИ.\rYOUR BROWSER DOES NOT SUPPORT SVGS\rОТКРЫТЬ ГАЛЕРЕЮ\rПОДЕЛИТЬСЯ:\rЗАКАЗАТЬ ЭКСКУРСИЮ\rКОНТАКТЫ\rИНДИЯ\r+91 8888 71 79 22\r+91 8888 70 40 05\r+91 7875 00 99 44\rРОССИЯ\r+7 981 771 79 22\rE-MAIL\rINFO@TVOYGOA.RU\rПРИСОЕДИНЯЙТЕСЬ К НАМ\rYOUR BROWSER DOES NOT SUPPORT SVGS\rYOUR BROWSER DOES NOT SUPPORT SVGS\rYOUR BROWSER DOES NOT SUPPORT SVGS\rРАЗРАБОТКА -\rAE! STUDIO\rДИЗАЙН ОТ\rPIXELJAM\r© 2011-2016 «ТВОЙ ГОА»\r\n'),(8,'59556c97f60e223399a51212088da5f7','SURYA TRAVELS | ЭКСКУРСИИ | ОТДЫХ НА ПЛЯЖАХ ПАЛОЛЕМ, КОЛА И СТАРИННЫЙ ФОРТ КАБО ДЕ РАМА\r\nЭКСКУРСИИ\rУСЛУГИ\rГАЛЕРЕЯ\rFAQ\rЗАКАЗ УСЛУГ\rОТЗЫВЫ\rКОНТАКТЫ\rYOUR BROWSER DOES NOT SUPPORT SVGS\rIN. \r+91 8888 71 79 22\rRU. \r+7 981 771 79 22\rОТДЫХ НА ПЛЯЖАХ ПАЛОЛЕМ, КОЛА И СТАРИННЫЙ ФОРТ КАБО ДЕ РАМА\rГЛАВНАЯ\r/\rЭКСКУРСИИ\r/\rОТДЫХ НА ПЛЯЖАХ ПАЛОЛЕМ, КОЛА И СТАРИННЫЙ ФОРТ КАБО ДЕ РАМА\rНАШИ ПРЕИМУЩЕСТВА\rСПЕЦИАЛЬНЫЕ ПРЕДЛОЖЕНИЯ\rСВОДНАЯ ТАБЛИЦА ЦЕН\rИНТЕРЕСНО ОБ ИНДИИ\rСОВЕТЫ ТУРИСТАМ В ГОА\rНОВОСТИ\rПЛЯЖИ ГОА\rИНФОРМАЦИЯ ОБ ИНДИИ\rИНФОРМАЦИЯ О ГОА\rЭТО ИНТЕРЕСНО\rYOUR BROWSER DOES NOT SUPPORT SVGS\rВ ИНДИИ ПЕРВЫМИ НАУЧИЛИСЬ ВЫРАЩИВАТЬ РИС И САХАРНЫЙ ТРОСТНИК, РАЗВОДИТЬ ДОМАШНЮЮ ПТИЦУ\rYOUR BROWSER DOES NOT SUPPORT SVGS\rПОГОДА В ГОА \rYOUR BROWSER DOES NOT SUPPORT SVGS\rВКОНТАКТЕ\rFACEBOOK\rОПИСАНИЕ\rПРОГРАММА И СТОИМОСТЬ\rОТЗЫВЫ\rЗАКАЗ\rПОЖАЛУЙСТА, ОБРАЩАЙТЕ ВНИМАНИЕ НА ПРАВИЛЬНОСТЬ ЗАПОЛНЕНИЯ ПОЛЕЙ ЕМЕЙЛ И ТЕЛЕФОН. ЕСЛИ ЭТИ ДАННЫЕ БУДУТ ВВЕДЕНЫ НЕВЕРНО, МЫ НЕ СМОЖЕМ СВЯЗАТЬСЯ С ВАМИ.\rОРИЕНТИРОВОЧНАЯ ДАТА*\rYOUR BROWSER DOES NOT SUPPORT SVGS\rНАЗВАНИЕ ОТЕЛЯ\rКОЛИЧЕСТВО ЛЮДЕЙ*\rYOUR BROWSER DOES NOT SUPPORT SVGS\rYOUR BROWSER DOES NOT SUPPORT SVGS\rИМЯ*\rEMAIL*\rТЕЛЕФОН*\rДОПОЛНИТЕЛЬНАЯ ИНФОРМАЦИЯ\r \rЗАКАЗАТЬ\rКОНТАКТЫ\rИНДИЯ\r+91 8888 71 79 22\r+91 8888 70 40 05\r+91 7875 00 99 44\rРОССИЯ\r+7 981 771 79 22\rE-MAIL\rINFO@TVOYGOA.RU\rПРИСОЕДИНЯЙТЕСЬ К НАМ\rYOUR BROWSER DOES NOT SUPPORT SVGS\rYOUR BROWSER DOES NOT SUPPORT SVGS\rYOUR BROWSER DOES NOT SUPPORT SVGS\rРАЗРАБОТКА -\rAE! STUDIO\rДИЗАЙН ОТ\rPIXELJAM\r© 2011-2016 «ТВОЙ ГОА»\r\n'),(9,'1a56dffbd76b8903606b25cb4352909c','SURYA TRAVELS | ФОТОГАЛЕРЕЯ | КОЛХАПУР И МАХАБАЛЕШВАРЕ\r\nЭКСКУРСИИ\rУСЛУГИ\rГАЛЕРЕЯ\rFAQ\rЗАКАЗ УСЛУГ\rОТЗЫВЫ\rКОНТАКТЫ\rYOUR BROWSER DOES NOT SUPPORT SVGS\rIN. \r+91 8888 71 79 22\rRU. \r+7 981 771 79 22\rКОЛХАПУР И МАХАБАЛЕШВАРЕ\rГЛАВНАЯ\r/\rФОТОГАЛЕРЕЯ\r/\rКОЛХАПУР И МАХАБАЛЕШВАРЕ\rНАШИ ПРЕИМУЩЕСТВА\rСПЕЦИАЛЬНЫЕ ПРЕДЛОЖЕНИЯ\rСВОДНАЯ ТАБЛИЦА ЦЕН\rИНТЕРЕСНО ОБ ИНДИИ\rСОВЕТЫ ТУРИСТАМ В ГОА\rНОВОСТИ\rПЛЯЖИ ГОА\rИНФОРМАЦИЯ ОБ ИНДИИ\rИНФОРМАЦИЯ О ГОА\rЭТО ИНТЕРЕСНО\rYOUR BROWSER DOES NOT SUPPORT SVGS\rВ ИНДИИ ПЕРВЫМИ НАУЧИЛИСЬ ВЫРАЩИВАТЬ РИС И САХАРНЫЙ ТРОСТНИК, РАЗВОДИТЬ ДОМАШНЮЮ ПТИЦУ\rYOUR BROWSER DOES NOT SUPPORT SVGS\rПОГОДА В ГОА \rYOUR BROWSER DOES NOT SUPPORT SVGS\rВКОНТАКТЕ\rFACEBOOK\rYOUR BROWSER DOES NOT SUPPORT SVGS\rНОВЫЙ ДВОРЕЦ МАХАРАДЖИ В КОЛХАПУРЕ\rYOUR BROWSER DOES NOT SUPPORT SVGS\rВИД НА ДОЛИНУ В МАХАБАЛЕШВАРЕ\rYOUR BROWSER DOES NOT SUPPORT SVGS\rСМОТРОВАЯ ПЛОЩАДКА WILSON\rYOUR BROWSER DOES NOT SUPPORT SVGS\rВИД НА ДОЛИНУ В МАХАБАЛЕШВАРЕ\rYOUR BROWSER DOES NOT SUPPORT SVGS\rВИД НА ДОЛИНУ В МАХАБАЛЕШВАРЕ\rКОНТАКТЫ\rИНДИЯ\r+91 8888 71 79 22\r+91 8888 70 40 05\r+91 7875 00 99 44\rРОССИЯ\r+7 981 771 79 22\rE-MAIL\rINFO@TVOYGOA.RU\rПРИСОЕДИНЯЙТЕСЬ К НАМ\rYOUR BROWSER DOES NOT SUPPORT SVGS\rYOUR BROWSER DOES NOT SUPPORT SVGS\rYOUR BROWSER DOES NOT SUPPORT SVGS\rРАЗРАБОТКА -\rAE! STUDIO\rДИЗАЙН ОТ\rPIXELJAM\r© 2011-2016 «ТВОЙ ГОА»\rВИД НА ДОЛИНУ В МАХАБАЛЕШВАРЕ\rНОВЫЙ ДВОРЕЦ МАХАРАДЖИ В КОЛХАПУРЕ\rСМОТРОВАЯ ПЛОЩАДКА WILSON\r-->\r\n'),(10,'0c0995c2d5905e298e0a199752a74d24','SURYA TRAVELS | ГЛАВНАЯ\r\nЭКСКУРСИИ\rУСЛУГИ\rГАЛЕРЕЯ\rFAQ\rЗАКАЗ УСЛУГ\rОТЗЫВЫ\rКОНТАКТЫ\rYOUR BROWSER DOES NOT SUPPORT SVGS\rIN. \r+91 8888 71 79 22\rRU. \r+7 981 771 79 22\rОТДЫХ НА ПЛЯЖАХ ПАЛОЛЕМ, КОЛА И СТАРИННЫЙ ФОРТ КАБО ДЕ РАМА\rМИР СОЗДАН ДЛЯ ЛЮБВИ И ГАРМОНИИ С СОБОЙ И ОКРУЖАЮЩИМ МИРОМ. ВЫ ОБЯЗАТЕЛЬНО УБЕДИТЕСЬ В ЭТОМ, ПОБЫВАВ НА ЭТОЙ ЭКСКУРСИИ.\rПОДРОБНЕЕ\rОТДЫХ НА ПЛЯЖАХ ПАЛОЛЕМ, КОЛА И СТАРИННЫЙ ФОРТ КАБО ДЕ РАМА\rМИР СОЗДАН ДЛЯ ЛЮБВИ И ГАРМОНИИ С СОБОЙ И ОКРУЖАЮЩИМ МИРОМ. ВЫ ОБЯЗАТЕЛЬНО УБЕДИТЕСЬ В ЭТОМ, ПОБЫВАВ НА ЭТОЙ ЭКСКУРСИИ.\rПОДРОБНЕЕ\rНАШИ ПРЕИМУЩЕСТВА\rСПЕЦИАЛЬНЫЕ ПРЕДЛОЖЕНИЯ\rСВОДНАЯ ТАБЛИЦА ЦЕН\rИНТЕРЕСНО ОБ ИНДИИ\rСОВЕТЫ ТУРИСТАМ В ГОА\rНОВОСТИ\rПЛЯЖИ ГОА\rИНФОРМАЦИЯ ОБ ИНДИИ\rИНФОРМАЦИЯ О ГОА\rЭТО ИНТЕРЕСНО\rYOUR BROWSER DOES NOT SUPPORT SVGS\rВ ИНДИИ ПЕРВЫМИ НАУЧИЛИСЬ ВЫРАЩИВАТЬ РИС И САХАРНЫЙ ТРОСТНИК, РАЗВОДИТЬ ДОМАШНЮЮ ПТИЦУ\rYOUR BROWSER DOES NOT SUPPORT SVGS\rПОГОДА В ГОА \rYOUR BROWSER DOES NOT SUPPORT SVGS\rВКОНТАКТЕ\rFACEBOOK\rЭКСКУРСИИ ПО ГОА - УДИВИТЕЛЬНЫЕ ПУТЕШЕСТВИЯ ПО ПРИВЛЕКАТЕЛЬНЫМ ЦЕНАМ\rСКОЛЬКО БЫ НИ ПИСАЛИ ОБ ИНДИИ И О ГОА - ВСЕ БУДЕТ МАЛО.\rБЕСКОНЕЧНЫЕ ПЛЯЖИ ГОА, САМОЕ ТЕПЛОЕ МОРЕ, ПОТРЯСАЮЩИЕ КРАСКИ ПРИРОДЫ И МУЗЫКА, ЗАВОРАЖИВАЮЩИЕ ЗАКАТЫ И РАССВЕТЫ, ДРЕВНИЕ ИНДУИСТСКИЕ ХРАМЫ И КОЛОРИТНЫЕ ВОСТОЧНЫЕ БАЗАРЫ - ВСЕ ЭТО, БЕЗ ПРЕУВЕЛИЧЕНИЯ, О ГОА. ОТКРОЙТЕ ДЛЯ СЕБЯ ИНДИЮ - НАШИ ЭКСКУРСИИ ПО ГОА ПОМОГУТ ВАМ В ЭТОМ.\r“ТВОЙ ГОА” ПРЕДЛАГАЕТ РАЗНООБРАЗНЫЕ ЭКСКУРСИИ В ГОА И УВЛЕКАТЕЛЬНЫЕ ТУРЫ ПО ИНДИИ. МЫ ПРЕДОСТАВИМ ВАМ ВОЗМОЖНОСТЬ ПОСЕТИТЬ НА НАШИХ ЭКСКУРСИЯХ ПО ГОА САМЫЕ ИЗВЕСТНЫЕ ИСТОРИЧЕСКИЕ КОМПЛЕКСЫ ГОА И СОСЕДНИХ ШТАТОВ, ХРАМОВЫЕ СВЯТЫНИ И СТОЛИЦЫ ДРЕВНИХ КНЯЖЕСТВ, МНОГИЕ ИЗ КОТОРЫХ ОХРАНЯЮТСЯ ЮНЕСКО. НА НАШЕМ САЙТЕ ВЫ МОЖЕТЕ НАЙТИ РАЗНООБРАЗНУЮ ИНФОРМАЦИЮ ПО ОТДЫХУ В ИНДИИ: ЦЕНЫ В ГОА, СОВЕТЫ ТУРИСТАМ, СПИСОК ДОСТОПРИМЕЧАТЕЛЬНОСТЕЙ, ИНТЕРЕСНЫЕ ФАКТЫ И ПР.\rТОП 5 НАШИХ ЭКСКУРСИЙ\r \rМЫ ПОКАЖЕМ ВАМ ЗАПОВЕДНИКИ, ДЖУНГЛИ И ПЛЯЖИ, ВОДОПАДЫ И ПЛАНТАЦИИ СПЕЦИЙ, ВЫ ПООБЩАЕТЕСЬ СО СЛОНАМИ И ОБЕЗЬЯНКАМИ, УВИДИТЕ ТИГРОВ, КРОКОДИЛОВ И ДЕЛЬФИНОВ, А ТАКЖЕ СЪЕЗДИТЕ НА ЗНАМЕНИТЫЕ ЭКСКУРСИИ В ХАМПИ, ГОКАРНА И БИДЖАПУР. РАЗРАБОТАННЫЕ НАМИ ЭКСКУРСИИ ПО ГОА - ЭТО НЕ ПРОСТО ПУТЕШЕСТВИЯ С ГИДОМ - ЭТО ПОГРУЖЕНИЕ В МАГИЮ И ТАЙНУ ИНДИИ, ОЧАРОВАНИЕ ЕЁ ДВОРЦОВ И ХРАМОВ, РЫНКОВ И УНИКАЛЬНОЙ, НИ С ЧЕМ НЕ СРАВНИМОЙ ЭНЕРГЕТИКОЙ.\rК ВАШИМ УСЛУГАМ ТРАНСФЕР И УСЛУГИ ТАКСИ, РАЗМЕЩЕНИЕ В ГОСТИНИЦАХ И ГЕСТХАУСАХ, КОТТЕДЖАХ И БУНГАЛО. ВСЕ, ЧТО МОЖЕТ ВАМ ПОНАДОБИТЬСЯ ДЛЯ АКТИВНОГО ОТДЫХА В ИНДИИ: РЕСТОРАНЫ И РЫНКИ, ВЕЧЕРИНКИ И КЛУБЫ, РЫБАЛКА.\rНА СТРАНИЦЕ ЭКСКУРСИИ ПРЕДСТАВЛЕН ПОЛНЫЙ ПЕРЕЧЕНЬ ЭКСКУРСИЙ И ПУТЕШЕСТВИЙ ПО ГОА И ИНДИИ, КОТОРЫЕ МЫ ПРОВОДИМ.\rНАШИ ТУРИСТЫ ГОВОРЯТ О НАС...\rМЫ ЖИВЁМ И РАБОТАЕМ В ИНДИИ УЖЕ БОЛЕЕ ДЕСЯТИ ЛЕТ. МЫ ЛЮБИМ ЭТУ СТРАНУ, ЕЁ КУЛЬТУРУ, ИСТОРИЮ, УВАЖАЕМ ЕЁ ТРАДИЦИИ. МЫ ПОСТАРАЕМСЯ ПОКАЗАТЬ ИНДИЮ ТАК, КАК ЕЁ ВИДИМ МЫ. НУ А ЛУЧШИМ ДОКАЗАТЕЛЬСТВОМ НАШЕЙ ОТЛИЧНОЙ РАБОТЫ СЛУЖАТ ОТЗЫВЫ НАШИХ ТУРИСТОВ. СО ВСЕМИ ОТЗЫВАМИ ВЫ МОЖЕТЕ ОЗНАКОМИТЬСЯ В \rСООТВЕТСТВУЮЩЕМ РАЗДЕЛЕ САЙТА\r, ИЛИ ЖЕ НА \rСТРАНИЦЕ ВКОНТАКТЕ\rYOUR BROWSER DOES NOT SUPPORT SVGS\rАЛЕКСАНДР ПЕТРОВИЧ ГУЩИН\r3/01/2016\rДОБРЫЙ ДЕНЬ И С НОВЫМ ГОДОМ! ХОТЕЛ БЫ ВЫРАЗИТЬ БОЛЬШУЮ БЛАГОДАРНОСТЬ НАШИМ ГИДАМ - ОЛЬГЕ (ЕЗДИЛИ В МУМБАИ, 10 ДЕКАБРЯ) И ОСОБЕННО ЕЛЕНЕ БЕЛЕНЬКОЙ (ВЕСЬ ГОА, ХАМПИ И БАДАМИ, 12-14 ДЕКАБРЯ)! ЗАМЕЧАТЕЛЬНЫЕ ГИДЫ, ОЧЕНЬ ИНТЕРЕСНЫЕ, ОТЗЫВЧИВЫЕ, УМЕЮТ РАБОТАТЬ С ЛЮДЬМИ (Я КАК РУКОВОДИТЕЛЬ ТУРИСТИЧЕСКОГО АГЕНТСТВА И ГИД СО СТАЖЕМ ТОЧНО ЭТО УТВЕРЖДАЮ!), ЗНАЮТ ИНФОРМАЦИЮ И ПРОСТО ЗАМЕЧАТЕЛЬНЫЕ ЛЮДИ!! СПАСИБО ЗА ПРОВЕДЕННЫЕ ДНИ В ИНДИИ, И Я НАДЕЮСЬ МЫ ЕЩЕ ВОСПОЛЬЗУЕМСЯ УСЛУГАМИ КОМПАНИИ! PS. БОЛЬШОЙ ПРИВЕТ ЕЛЕНЕ БЕЛЕНЬКОЙ!\rАЛЕКСАНДР ПЕТРОВИЧ ГУЩИН\r3/01/2016\rДОБРЫЙ ДЕНЬ И С НОВЫМ ГОДОМ! ХОТЕЛ БЫ ВЫРАЗИТЬ БОЛЬШУЮ БЛАГОДАРНОСТЬ НАШИМ ГИДАМ - ОЛЬГЕ (ЕЗДИЛИ В МУМБАИ, 10 ДЕКАБРЯ) И ОСОБЕННО ЕЛЕНЕ БЕЛЕНЬКОЙ (ВЕСЬ ГОА, ХАМПИ И БАДАМИ, 12-14 ДЕКАБРЯ)! ЗАМЕЧАТЕЛЬНЫЕ ГИДЫ, ОЧЕНЬ ИНТЕРЕСНЫЕ, ОТЗЫВЧИВЫЕ, УМЕЮТ РАБОТАТЬ С ЛЮДЬМИ (Я КАК РУКОВОДИТЕЛЬ ТУРИСТИЧЕСКОГО АГЕНТСТВА И ГИД СО СТАЖЕМ ТОЧНО ЭТО УТВЕРЖДАЮ!), ЗНАЮТ ИНФОРМАЦИЮ И ПРОСТО ЗАМЕЧАТЕЛЬНЫЕ ЛЮДИ!! СПАСИБО ЗА ПРОВЕДЕННЫЕ ДНИ В ИНДИИ, И Я НАДЕЮСЬ МЫ ЕЩЕ ВОСПОЛЬЗУЕМСЯ УСЛУГАМИ КОМПАНИИ! PS. БОЛЬШОЙ ПРИВЕТ ЕЛЕНЕ БЕЛЕНЬКОЙ!\rАЛЕКСАНДР ПЕТРОВИЧ ГУЩИН\r3/01/2016\rДОБРЫЙ ДЕНЬ И С НОВЫМ ГОДОМ! ХОТЕЛ БЫ ВЫРАЗИТЬ БОЛЬШУЮ БЛАГОДАРНОСТЬ НАШИМ ГИДАМ - ОЛЬГЕ (ЕЗДИЛИ В МУМБАИ, 10 ДЕКАБРЯ) И ОСОБЕННО ЕЛЕНЕ БЕЛЕНЬКОЙ (ВЕСЬ ГОА, ХАМПИ И БАДАМИ, 12-14 ДЕКАБРЯ)! ЗАМЕЧАТЕЛЬНЫЕ ГИДЫ, ОЧЕНЬ ИНТЕРЕСНЫЕ, ОТЗЫВЧИВЫЕ, УМЕЮТ РАБОТАТЬ С ЛЮДЬМИ (Я КАК РУКОВОДИТЕЛЬ ТУРИСТИЧЕСКОГО АГЕНТСТВА И ГИД СО СТАЖЕМ ТОЧНО ЭТО УТВЕРЖДАЮ!), ЗНАЮТ ИНФОРМАЦИЮ И ПРОСТО ЗАМЕЧАТЕЛЬНЫЕ ЛЮДИ!! СПАСИБО ЗА ПРОВЕДЕННЫЕ ДНИ В ИНДИИ, И Я НАДЕЮСЬ МЫ ЕЩЕ ВОСПОЛЬЗУЕМСЯ УСЛУГАМИ КОМПАНИИ! PS. БОЛЬШОЙ ПРИВЕТ ЕЛЕНЕ БЕЛЕНЬКОЙ!\rБОЛЬШЕ, ЧЕМ ЭКСКУРСИИ ПО ГОА\rОРГАНИЗАЦИЯ И ПРОВЕДЕНИЕ СВАДЕБНЫХ ЦЕРЕМОНИЙ\rАРЕНДА ЖИЛЬЯ\rОРГАНИЗАЦИЯ ПРАЗДНИКОВ\rУСЛУГИ ТАКСИ\rБРОНИРОВАНИЕ АВИА- И АВТОБУСНЫХ БИЛЕТОВ\rАЮРВЕДА И ЛЕЧЕНИЕ\rПОЧЕМУ ТВОЙ ГОА - ЛУЧШИЕ\rМЫ РАБОТАЕМ В ИНДИИ УЖЕ НА ПРОТЯЖЕНИИ БОЛЕЕ 5-ТИ ЛЕТ. МЫ РАБОТАЕМ ОФИЦИАЛЬНО, ИМЕЯ ВСЕ НЕОБХОДИМЫЕ ЛИЦЕНЗИИ (ЛИЦЕНЗИЯ НА ТУРИСТИЧЕСКУЮ ДЕЯТЕЛЬНОСТЬ, ЛИЦЕНЗИЯ НА ТРАНСПОРТНУЮ ДЕЯТЕЛЬНОСТЬ). НАШИ СОТРУДНИКИ ПОЛУЧАЮТ 100% ОФИЦИАЛЬНУЮ ЗАРПЛАТУ. ПОЧЕМУ ЭТО МОЖЕТ БЫТЬ ВАЖНО ДЛЯ ВАС? ВСЁ ЭТО ОЗНАЧАЕТ, ЧТО МЫ ДОРОЖИМ СВОЕЙ РЕПУТАЦИЕЙ. В ОТЛИЧИЕ ОТ МНОГИХ ДРУГИХ КОМПАНИЙ, КОТОРЫЕ РАБОТАЮТ ПОЛУЛЕГАЛЬНО ИЛИ ЖЕ ВООБЩЕ НЕЛЕГАЛЬНО, И МОГУТ СВЕРНУТЬ ДЕЯТЕЛЬНОСТЬ НА СЛЕДУЮЩИЙ МЕСЯЦ, А ТО И ЗАВТРА, МЫ ВЫСТРАИВАЕМ ДОЛГОВРЕМЕННЫЕ ОТНОШЕНИЯ - КАК С НАШИМИ СОТРУДНИКАМИ, ТАК И С НАШИМИ ТУРИСТАМИ. И ЭТО ДАЁТ СВОИ ПЛОДЫ - МНОГИЕ ТУРИСТЫ, ПОБЫВАВШИЕ НА НАШИХ ЭКСКУРСИЯХ, ВОЗВРАЩАЮТСЯ К НАМ СНОВА И РЕКОМЕНДУЮТ НАС СВОИМ ДРУЗЬЯМ.\rПОСЛЕ НАШИХ ПУТЕШЕСТВИЙ И ЭКСКУРСИИ ПО ИНДИИ И ГОА ВЫ ВЕРНЁТЕСЬ ДОМОЙ СЧАСТЛИВЕЕ. ДЛЯ ЭТОГО МЫ ЗДЕСЬ РАБОТАЕМ.\rYOUR BROWSER DOES NOT SUPPORT SVGS\rПОСМОТРИТЕ НАШИ ЭКСКУРСИИ\rПЕРЕЙТИ\rКОНТАКТЫ\rИНДИЯ\r+91 8888 71 79 22\r+91 8888 70 40 05\r+91 7875 00 99 44\rРОССИЯ\r+7 981 771 79 22\rE-MAIL\rINFO@TVOYGOA.RU\rПРИСОЕДИНЯЙТЕСЬ К НАМ\rYOUR BROWSER DOES NOT SUPPORT SVGS\rYOUR BROWSER DOES NOT SUPPORT SVGS\rYOUR BROWSER DOES NOT SUPPORT SVGS\rРАЗРАБОТКА -\rAE! STUDIO\rДИЗАЙН ОТ\rPIXELJAM\r© 2011-2016 «ТВОЙ ГОА»\r\n'),(11,'122804d4212609c32aa6ad33d56bf750','SURYA TRAVELS | УСЛУГИ\r\nЭКСКУРСИИ\rУСЛУГИ\rГАЛЕРЕЯ\rFAQ\rЗАКАЗ УСЛУГ\rОТЗЫВЫ\rКОНТАКТЫ\rYOUR BROWSER DOES NOT SUPPORT SVGS\rIN. \r+91 8888 71 79 22\rRU. \r+7 981 771 79 22\rУСЛУГИ\rГЛАВНАЯ\r/\rУСЛУГИ\rНАШИ ПРЕИМУЩЕСТВА\rСПЕЦИАЛЬНЫЕ ПРЕДЛОЖЕНИЯ\rСВОДНАЯ ТАБЛИЦА ЦЕН\rИНТЕРЕСНО ОБ ИНДИИ\rСОВЕТЫ ТУРИСТАМ В ГОА\rНОВОСТИ\rПЛЯЖИ ГОА\rИНФОРМАЦИЯ ОБ ИНДИИ\rИНФОРМАЦИЯ О ГОА\rЭТО ИНТЕРЕСНО\rYOUR BROWSER DOES NOT SUPPORT SVGS\rВ ИНДИИ ПЕРВЫМИ НАУЧИЛИСЬ ВЫРАЩИВАТЬ РИС И САХАРНЫЙ ТРОСТНИК, РАЗВОДИТЬ ДОМАШНЮЮ ПТИЦУ\rYOUR BROWSER DOES NOT SUPPORT SVGS\rПОГОДА В ГОА \rYOUR BROWSER DOES NOT SUPPORT SVGS\rВКОНТАКТЕ\rFACEBOOK\rАЮРВЕДА И ЛЕЧЕНИЕ\rСВАДЕБНЫЕ ЦЕРЕМОНИИ\rОРГАНИЗАЦИЯ ПРАЗДНИКОВ\rАРЕНДА ЖИЛЬЯ\rБРОНИРОВАНИЕ АВИАБИЛЕТОВ ПО ИНДИИ\rКОНТАКТЫ\rИНДИЯ\r+91 8888 71 79 22\r+91 8888 70 40 05\r+91 7875 00 99 44\rРОССИЯ\r+7 981 771 79 22\rE-MAIL\rINFO@TVOYGOA.RU\rПРИСОЕДИНЯЙТЕСЬ К НАМ\rYOUR BROWSER DOES NOT SUPPORT SVGS\rYOUR BROWSER DOES NOT SUPPORT SVGS\rYOUR BROWSER DOES NOT SUPPORT SVGS\rРАЗРАБОТКА -\rAE! STUDIO\rДИЗАЙН ОТ\rPIXELJAM\r© 2011-2016 «ТВОЙ ГОА»\r\n'),(12,'cfaffbff76fa0416cc2da790a5f38465','SURYA TRAVELS | ЭКСКУРСИИ | ОТДЫХ НА ПЛЯЖАХ ПАЛОЛЕМ, КОЛА И СТАРИННЫЙ ФОРТ КАБО ДЕ РАМА\r\nЭКСКУРСИИ\rУСЛУГИ\rГАЛЕРЕЯ\rFAQ\rЗАКАЗ УСЛУГ\rОТЗЫВЫ\rКОНТАКТЫ\rYOUR BROWSER DOES NOT SUPPORT SVGS\rIN. \r+91 8888 71 79 22\rRU. \r+7 981 771 79 22\rОТДЫХ НА ПЛЯЖАХ ПАЛОЛЕМ, КОЛА И СТАРИННЫЙ ФОРТ КАБО ДЕ РАМА\rГЛАВНАЯ\r/\rЭКСКУРСИИ\r/\rОТДЫХ НА ПЛЯЖАХ ПАЛОЛЕМ, КОЛА И СТАРИННЫЙ ФОРТ КАБО ДЕ РАМА\rНАШИ ПРЕИМУЩЕСТВА\rСПЕЦИАЛЬНЫЕ ПРЕДЛОЖЕНИЯ\rСВОДНАЯ ТАБЛИЦА ЦЕН\rИНТЕРЕСНО ОБ ИНДИИ\rСОВЕТЫ ТУРИСТАМ В ГОА\rНОВОСТИ\rПЛЯЖИ ГОА\rИНФОРМАЦИЯ ОБ ИНДИИ\rИНФОРМАЦИЯ О ГОА\rЭТО ИНТЕРЕСНО\rYOUR BROWSER DOES NOT SUPPORT SVGS\rВ ИНДИИ ПЕРВЫМИ НАУЧИЛИСЬ ВЫРАЩИВАТЬ РИС И САХАРНЫЙ ТРОСТНИК, РАЗВОДИТЬ ДОМАШНЮЮ ПТИЦУ\rYOUR BROWSER DOES NOT SUPPORT SVGS\rПОГОДА В ГОА \rYOUR BROWSER DOES NOT SUPPORT SVGS\rВКОНТАКТЕ\rFACEBOOK\rОПИСАНИЕ\rПРОГРАММА И СТОИМОСТЬ\rОТЗЫВЫ\rЗАКАЗ\rПРОГРАММА\rДЕНЬ 1\r08.00\rОТПРАВЛЕНИЕ ИЗ ОТЕЛЯ\r10.00\rПРИБЫТИЕ НА ПЛЯЖ ПАЛОЛЕМ\r10.30 - 12.00\rПРОГУЛКА НА ЛОДКЕ НА ОСТРОВ БАБОЧЕК\r12.00 - 15.00\rОБЕД И СВОБОДНОЕ ВРЕМЯ НА ПЛЯЖЕ\r15.00\rОТПРАВЛЕНИЕ НА ПЛЯЖ КОЛА (20 МИНУТ В ПУТИ)\r15.20 - 17.00\rСВОБОДНОЕ ВРЕМЯ НА ПЛЯЖЕ КОЛА\r17.00\rОТПРАВЛЕНИЕ В ФОРТ КАБО ДЕ РАМА\r17.15 - 18.30\rОСМОТР ФОРТА КАБО ДЕ РАМА И ВСТРЕЧА ЗАКАТА\rВ ЭКСКУРСИЮ ВКЛЮЧЕНО:\rТРАНСФЕР НА СОБСТВЕННОМ ТРАНСПОРТЕ С КОНДИЦИОНЕРОМ, СТРАХОВКА, УСЛУГИ РУССКОГО ГИДА, ПРОГУЛКА НА ЛОДКЕ НА ОСТРОВ.\rПРОДОЛЖИТЕЛЬНОСТЬ: C 8.00 ДО 20.30\rВРЕМЯ В ПУТИ: 2 ЧАСА\rСТОИМОСТЬ\rЦЕНЫ НА ЭКСКУРСИЮ, ИСХОДЯ ИЗ КОЛИЧЕСТВА ТУРИСТОВ В МАШИНЕ.\rВСЕ НАШИ АВТОМОБИЛИ РАССЧИТАНЫ НА 6-8 ТУРИСТОВ + РУССКИЙ ГИД, МИНИАВТОБУСЫ НА 12 ТУРИСТОВ + РУССКИЙ ГИД. ЕСЛИ ВЫ ХОТИТЕ БОЛЬШЕГО КОМФОРТА, ВАМ СЛЕДУЕТ ВЫБРАТЬ РАЗМЕЩЕНИЕ ПО 4 ЧЕЛОВЕКА В АВТОМОБИЛЕ.\rМЫ САМИ ФОРМИРУЕМ ГРУППЫ. ВАМ ДОСТАТОЧНО СООБЩИТЬ ДЕНЬ ПЛАНИРУЕМОЙ ПОЕЗДКИ И КОЛИЧЕСТВО ТУРИСТОВ В АВТОМОБИЛЕ, КОТОРОЕ ВАС УСТРОИТ.\rВЫ МОЖЕТЕ ЗАКАЗАТЬ ЭКСКУРСИЮ НЕПОСРЕДСТВЕННО В ГОА ПО ТЕЛ: +91 8888 70 40 05, +91 8888 71 79 22\rЛИБО ВОСПОЛЬЗОВАТЬСЯ ФОРМОЙ ЗАКАЗА.\rЗАКАЗЫВАЯ ЭКСКУРСИИ НА САЙТЕ, ВЫ ПОЛУЧАЕТЕ 5% СКИДКУ\rДЛЯ ДЕТЕЙ ДО 12 ЛЕТ ДЕЙСТВУЕТ СКИДКА 50%\rСКИДКИ И АКЦИИ НА ЭКСКУРСИИ БЕЗ РУССКОГО ГИДА НЕ РАСПРОСТРАНЯЮТСЯ.\rСКИДКИ ПО АКЦИЯМ НЕ СУММИРУЮТСЯ.\rДЛЯ ГРУПП ОТ 6 ЧЕЛОВЕК ЦЕНЫ УСТАНАВЛИВАЮТСЯ ИНДИВИДУАЛЬНО НА ВСЕ ЭКСКУРСИИ!\r6 - 12 ЧЕЛОВЕК\rЗА 1 ЧЕЛОВЕКА\r5 ЧЕЛОВЕК\rЗА 1 ЧЕЛОВЕКА\r45$\r50$\r40$\rПРИ ЗАКАЗЕ С САЙТА\r45$\rПРИ ЗАКАЗЕ С САЙТА\r20$\rДЛЯ ДЕТЕЙ ОТ 12 ЛЕТ\r20$\rДЛЯ ДЕТЕЙ ОТ 12 ЛЕТ\rВНИМАНИЕ! ТЕПЕРЬ ВЫ МОЖЕТЕ ОПЛАТИТЬ ЭКСКУРСИИ БАНКОВСКИМИ КАРТАМИ, МЫ ДЕЛАЕМ ВСЕ ДЛЯ ВАШЕГО УДОБСТВА.\rНАЛИЧНЫМИ МЫ ПРИНИМАЕМ ДЕНЬГИ В ЛЮБОЙ ВАЛЮТЕ: ДОЛЛАРЫ, ЕВРО, РУПИИ, РУБЛИ.\rЗАКАЗАТЬ ЭКСКУРСИЮ\rКОНТАКТЫ\rИНДИЯ\r+91 8888 71 79 22\r+91 8888 70 40 05\r+91 7875 00 99 44\rРОССИЯ\r+7 981 771 79 22\rE-MAIL\rINFO@TVOYGOA.RU\rПРИСОЕДИНЯЙТЕСЬ К НАМ\rYOUR BROWSER DOES NOT SUPPORT SVGS\rYOUR BROWSER DOES NOT SUPPORT SVGS\rYOUR BROWSER DOES NOT SUPPORT SVGS\rРАЗРАБОТКА -\rAE! STUDIO\rДИЗАЙН ОТ\rPIXELJAM\r© 2011-2016 «ТВОЙ ГОА»\r\n'),(13,'17554f9a2e3b976dedcd053590e944c8','ФОТОГАЛЕРЕЯ\r\nСТАРЫЙ ГОА И ИНДУИСТСКИЕ ХРАМЫ\rФОТО ПЛЯЖЕЙ СЕВЕРНЫЙ ГОА И ЮЖНЫЙ ГОА, ФОТО ГОА\rКОЛХАПУР И МАХАБАЛЕШВАР\rПЛЯЖИ ГОА\rСТАРЫЙ ГОА И ИНДУИСТСКИЕ ХРАМЫ\rСТАРЫЙ ГОА И ИНДУИСТСКИЕ ХРАМЫ\rСТАРЫЙ ГОА И ИНДУИСТСКИЕ ХРАМЫ\rYOUR BROWSER DOES NOT SUPPORT SVGS\rНОВЫЙ ДВОРЕЦ МАХАРАДЖИ В КОЛХАПУРЕ\rYOUR BROWSER DOES NOT SUPPORT SVGS\rВИД НА ДОЛИНУ В МАХАБАЛЕШВАРЕ\rYOUR BROWSER DOES NOT SUPPORT SVGS\rСМОТРОВАЯ ПЛОЩАДКА WILSON\rYOUR BROWSER DOES NOT SUPPORT SVGS\rВИД НА ДОЛИНУ В МАХАБАЛЕШВАРЕ\rYOUR BROWSER DOES NOT SUPPORT SVGS\rВИД НА ДОЛИНУ В МАХАБАЛЕШВАРЕ\rВИД НА ДОЛИНУ В МАХАБАЛЕШВАРЕ\rНОВЫЙ ДВОРЕЦ МАХАРАДЖИ В КОЛХАПУРЕ\rСМОТРОВАЯ ПЛОЩАДКА WILSON\r\n'),(14,'90f40edb2e27f367ce7e57ded8186806','УСЛУГИ\r\nАЮРВЕДА И ЛЕЧЕНИЕ\rСВАДЕБНЫЕ ЦЕРЕМОНИИ\rОРГАНИЗАЦИЯ ПРАЗДНИКОВ\rАРЕНДА ЖИЛЬЯ\rБРОНИРОВАНИЕ АВИАБИЛЕТОВ ПО ИНДИИ\r\n'),(15,'ac74ca5b013e0a9e10d503f7ef7f0352','КОНТАКТЫ\r\n\r\n'),(16,'5e3be2e86df41226b7aa012b84ec22a5','ЭКСКУРСИИ\r\n\r\n'),(17,'721c3071f100594cd16c5ff2aff7c9aa','СВОДНАЯ ТАБЛИЦА ЦЕН\r\n\r\n'),(18,'c3a996e2cb240f9f101d6ec89ad9cedc','FAQ\r\n\r\n'),(19,'b888596691ec9cf1ea99fd909b2a05c0','НОВОСТИ\r\n20 НОЯБРЯ 2015\rКАЛИНИНГРАДСКИЕ ТУРФИРМЫ ПРЕДЛАГАЮТ КУРОРТЫ АЗИИ ВЗАМЕН ТУРЦИИ\rЕСЛИ ПОСЛЕ ЗАПРЕТА НА ПОЛЕТЫ В ЕГИПЕТ БЫЛО ЗАМЕТНО ПОВЫШЕНИЕ ЦЕН ТУРОПЕРАТОРАМИ, И ЛЮДЯМ БЫЛО ДОРОГОВАТО ПЕРЕБРОНИРОВАТЬ ПУТЕВКИ, ТО СЕЙЧАС ЦЕНЫ ПРИЕМЛЕМЫЕ\r20 НОЯБРЯ 2015\rТАМОЖНЯ РОССИИ ПОДДЕРЖАЛА ВВЕДЕНИЕ СБОРА В 10-15 ЕВРО НА ПОСЫЛКИ СТОИМОСТЬЮ ОТ 22 ДО 150 ЕВРО ИЗ ЗАРУБЕЖНЫХ ИНТЕРНЕТ-МАГАЗИНОВ\r23 НОЯБРЯ 2015 ГОДА СТАЛО ИЗВЕСТНО, ЧТО ВВЕДЕНИЕ ПОДОБНОГО НАЛОГА ОБСУЖДАЕТСЯ НА УРОВНЕ ЕВРАЗИЙСКОГО ЭКОНОМИЧЕСКОГО СОЮЗА, В КОТОРЫЙ ВХОДЯТ АРМЕНИЯ, РЕСПУБЛИКА БЕЛАРУСЬ, КАЗАХСТАН, КИРГИЗИЯ И РОССИЯ.\r\n'),(20,'316e79dbc16e6cecd9012ff045836dfb','ЗАКАЗ УСЛУГ\r\n\r\n'),(21,'882d5a019c2cd2258a9fac1cd717cca8','ОТЗЫВЫ ТУРИСТОВ\r\n\r\n'),(22,'d81d2157b09a46ca8b40800be852f2a6','ЭКСКУРСИЯ 1\r\nМЫ ОСОБЕННО РЕКОМЕНДУЕМ ЭТУ ЭКСКУРСИЮ ТУРИСТАМ, ПРИЕХАВШИМ В ГОА С ДЕТЬМИ. ВСЕ САМОЕ ИНТЕРЕСНОЕ В ГОА ВЫ УВИДИТЕ НЕ ЗА НЕСКОЛЬКО ДНЕЙ, А ЗА 1 ЭКСКУРСИЮ:\rВОДОПАД ДУДХСАГАР (И МНОГО ОБЕЗЬЯН).\rПЛАНТАЦИИ СПЕЦИЙ (ЛАВКА СПЕЦИЙ И ЛЕЧЕБНЫХ МАСЕЛ).\rОБЕД В САДУ. ВСТРЕЧА СО СЛОНАМИ.\rСТАРЫЙ ГОА (ВКЛЮЧЕН ЮНЕСКО В СПИСОК ГОРОДОВ-ПАМЯТНИКОВ).\rДРЕВНИЕ ИНДУИСТСКИЕ ХРАМЫ - ХРАМ ШРИ МАНГЕШИ.\r\nИСТОРИЧЕСКАЯ'),(23,'f0f8da2372e4a79778c60b770a68b29a','ЭКСКУРСИЯ 2\r\n\r\nИСТОРИЧЕСКАЯ'),(24,'d392a05985673b918f16f713e83863b5','ЭКСКУРСИЯ 3\r\n\r\n'),(25,'f97784b5b31c2f7343f7f0a30015f099','ЭКСКУРСИЯ 4\r\n\r\n1 ДЕНЬ'),(26,'fabde42720cc2845b477cc49f775ee4b','ЭКСКУРСИЯ 5\r\nДЛЯ ГРУПП ОТ 6 ЧЕЛОВЕК ЦЕНЫ УСТАНАВЛИВАЮТСЯ ИНДИВИДУАЛЬНО НА ВСЕ ЭКСКУРСИИ!\rЕСЛИ ВЫ УЖЕ В ГОА, ОБЯЗАТЕЛЬНО ПОБЫВАЙТЕ НА ОДНОМ ИЗ КРАСИВЕЙШИХ ПЛЯЖЕЙ ЮЖНОГО ГОА - ПАЛОЛЕМЕ И САМОМ ТИХОМ И БЕЗЛЮДНОМ ПЛЯЖЕ - КОЛА. ВЫ СОВЕРШИТЕ ВОДНУЮ ПРОГУЛКУ И ПОНАБЛЮДАЕТЕ ЗА ИГРОЙ ДЕЛЬФИНОВ. ПОБЫВАЕТЕ В ДРЕВНЕЙШЕМ ФОРТЕ КАБО ДЕ РАМА (KABO DE RAMA) И УЗНАЕТЕ ИНТЕРЕСНЫЕ ЛЕГЕНДЫ О РАМЕ И СИТЕ ИЗ ВЕЛИКОГО ЭПОСА РАМАЯНА, СВЯЗАННЫЕ С МЫСОМ РАМЫ. ПОДНИМИТЕСЬ НА БАШНЮ, ОТКУДА ОТКРЫВАЕТСЯ ВОСХИТИТЕЛЬНЫЙ ВИД НА БЕСКОНЕЧНУЮ БЕРЕГОВУЮ ЛИНИЮ.\rМИР СОЗДАН ДЛЯ ЛЮБВИ И ГАРМОНИИ С СОБОЙ И ОКРУЖАЮЩИМ МИРОМ. ВЫ ОБЯЗАТЕЛЬНО УБЕДИТЕСЬ В ЭТОМ, ПОБЫВАВ ЗДЕСЬ.\rYOUR BROWSER DOES NOT SUPPORT SVGS\rОТКРЫТЬ ГАЛЕРЕЮ\rПЛЯЖ ПАЛОЛЕМ\rОДИН ИЗ САМЫХ КРАСИВЫХ ПЛЯЖЕЙ ГОА. ЗДЕСЬ ВЫ НАЙДЕТЕ НЕ ТОЛЬКО ЛАСКОВОЕ МОРЕ, БЕСКОНЕЧНЫЙ БЕЛОСНЕЖНЫЙ ПЛЯЖ, КОКОСОВЫЕ ПАЛЬМЫ У САМОЙ КРОМКИ МОРЯ, НО И НЕОБЫЧНУЮ ОЧЕНЬ УЮТНУЮ АТМОСФЕРУ. НА ЛОДКЕ МЫ ВЫЙДЕМ В МОРЕ, ПОЛЮБУЕМСЯ ДЕЛЬФИНАМИ, ДОПЛЫВЕМ ДО ОСТРОВА. ВЫ НАСЛАДИТЕСЬ КРАСОТОЙ ВОКРУГ, БРЕДЯ ПО НЕЖНЕЙШЕМУ ПЕСКУ.\rПЛЯЖ КОЛА\rРОМАНТИЧНЫЙ, УДИВИТЕЛЬНЫЙ, УЕДИНЕННЫЙ С НЕТРОНУТОЙ БЕРЕГОВОЙ ЛИНИЕЙ И ,КОНЕЧНО, ПРОСТО КРАСИВЫЙ, С ЛАГУНОЙ, ГДЕ МОЖНО ПОГРУЗИТЬСЯ В СПОКОЙНОЕ МОРЕ.\rФОРТ КАБО ДЕ РАМА\rОДНА ИЗ СТАРЕЙШИХ КРЕПОСТЕЙ В ГОА.\rФОРТ КАБО ДЕ РАМА ИМЕЕТ ИНТЕРЕСНУЮ ИСТОРИЮ. МЫ ОБЯЗАТЕЛЬНО РАССКАЖЕМ ВАМ, СВЯЗАНЫЕ С НИМ УВЛЕКАТЕЛЬНЫЕ ЛЕГЕНДЫ И ВЫ ПОЧУВСТВУЕТЕ МИСТИЧЕСКУЮ АТМОСФЕРУ МЫСА РАМЫ. В ЭТИХ МЕСТАХ ПРОВЕЛИ 14 ЛЕТ В ИЗГНАНИИ ВЕЛИКИЙ ГЕРОЙ РАМАЯНЫ РАМА И ЕГО ЖЕНА СИТА. ФОРТОМ ВЛАДЕЛИ ИНДИЙСКИЕ ПРАВИТЕЛИ И МУСУЛЬМАНСКИЕ ШАХИ, В 1763 ГОДУ КАБО ДЕ РАМА БЫЛ ЗАХВАЧЕН ПОРТУГАЛЬЦАМИ. ЧАСТЬ КРЕПОСТИ СОХРАНИЛАСЬ, ЧАСТЬ РАЗРУШЕНА. БЕЛОСНЕЖНАЯ ЦЕРКОВЬ СВЯТОГО АНТОНИА (SANTO ANTONIO) ВНУТРИ ФОРТА, БАШНИ, БОЛЬШИЕ ПУШКИ, КОЛОДЕЦ, В КОТОРЫЙ ПОДАВАЛАСЬ ГОРЯЧАЯ И ХОЛОДНАЯ ВОДА ИЗ ПРИРОДНЫХ ИСТОЧНИКОВ, ВЕЛИКОЛЕПНЫЙ ВИД, ОТКРЫВАЮЩИЙСЯ СО СТЕН КРЕПОСТИ.\r\nИСТОРИЧЕСКАЯ, 2 ДНЯ, С ДЕТЬМИ'),(27,'c99d52d35b2ad69ce030f12db8730180','ЭКСКУРСИЯ 6\r\n\r\nРАЗВЛЕКАТЕЛЬНАЯ'),(28,'c31390dff0e8a47dbe7bca9e3ff161b7','САМАЯ НОВАЯ ЭКСКУРСИЯ\r\n\r\n'),(29,'f1aed920e9f40d1be68c1fa6d32a4106','ЭКСКУРСИЯ 5\r\n\r\n'),(30,'78f057a0c28caf830237a9ce605f980a','ФОТО 1\r\n\r\n'),(31,'846a3b0d00dc9960b231317caee42a53','ФОТО 2\r\n\r\n');
/*!40000 ALTER TABLE `b_search_content_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_search_content_title`
--

DROP TABLE IF EXISTS `b_search_content_title`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_search_content_title` (
  `SEARCH_CONTENT_ID` int(11) NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `POS` int(11) NOT NULL,
  `WORD` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `UX_B_SEARCH_CONTENT_TITLE` (`SITE_ID`,`WORD`,`SEARCH_CONTENT_ID`,`POS`),
  KEY `IND_B_SEARCH_CONTENT_TITLE` (`SEARCH_CONTENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci DELAY_KEY_WRITE=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_search_content_title`
--

LOCK TABLES `b_search_content_title` WRITE;
/*!40000 ALTER TABLE `b_search_content_title` DISABLE KEYS */;
INSERT INTO `b_search_content_title` VALUES (1,'s1',0,'ГЛАВНАЯ'),(2,'s1',0,'SURYA'),(2,'s1',6,'TRAVELS'),(2,'s1',16,'ОТЗЫВЫ'),(3,'s1',0,'SURYA'),(3,'s1',6,'TRAVELS'),(3,'s1',80,'ДЕ'),(3,'s1',23,'И'),(3,'s1',75,'КАБО'),(3,'s1',53,'КОЛА'),(3,'s1',34,'НА'),(3,'s1',28,'ОТДЫХ'),(3,'s1',44,'ПАЛОЛЕМ'),(3,'s1',37,'ПЛЯЖАХ'),(3,'s1',83,'РАМА'),(3,'s1',60,'СТАРИННЫЙ'),(3,'s1',70,'ФОРТ'),(3,'s1',16,'ЭКСКУРСИИ'),(4,'s1',0,'SURYA'),(4,'s1',6,'TRAVELS'),(4,'s1',16,'ЭКСКУРСИИ'),(5,'s1',0,'SURYA'),(5,'s1',6,'TRAVELS'),(5,'s1',16,'ФОТОГАЛЕРЕЯ'),(6,'s1',0,'SURYA'),(6,'s1',6,'TRAVELS'),(6,'s1',16,'НОВОСТИ'),(7,'s1',0,'SURYA'),(7,'s1',6,'TRAVELS'),(7,'s1',80,'ДЕ'),(7,'s1',23,'И'),(7,'s1',75,'КАБО'),(7,'s1',53,'КОЛА'),(7,'s1',34,'НА'),(7,'s1',28,'ОТДЫХ'),(7,'s1',44,'ПАЛОЛЕМ'),(7,'s1',37,'ПЛЯЖАХ'),(7,'s1',83,'РАМА'),(7,'s1',60,'СТАРИННЫЙ'),(7,'s1',70,'ФОРТ'),(7,'s1',16,'ЭКСКУРСИИ'),(8,'s1',0,'SURYA'),(8,'s1',6,'TRAVELS'),(8,'s1',80,'ДЕ'),(8,'s1',23,'И'),(8,'s1',75,'КАБО'),(8,'s1',53,'КОЛА'),(8,'s1',34,'НА'),(8,'s1',28,'ОТДЫХ'),(8,'s1',44,'ПАЛОЛЕМ'),(8,'s1',37,'ПЛЯЖАХ'),(8,'s1',83,'РАМА'),(8,'s1',60,'СТАРИННЫЙ'),(8,'s1',70,'ФОРТ'),(8,'s1',16,'ЭКСКУРСИИ'),(9,'s1',0,'SURYA'),(9,'s1',6,'TRAVELS'),(9,'s1',39,'И'),(9,'s1',30,'КОЛХАПУР'),(9,'s1',41,'МАХАБАЛЕШВАРЕ'),(9,'s1',16,'ФОТОГАЛЕРЕЯ'),(10,'s1',0,'SURYA'),(10,'s1',6,'TRAVELS'),(10,'s1',16,'ГЛАВНАЯ'),(11,'s1',0,'SURYA'),(11,'s1',6,'TRAVELS'),(11,'s1',16,'УСЛУГИ'),(12,'s1',0,'SURYA'),(12,'s1',6,'TRAVELS'),(12,'s1',80,'ДЕ'),(12,'s1',23,'И'),(12,'s1',75,'КАБО'),(12,'s1',53,'КОЛА'),(12,'s1',34,'НА'),(12,'s1',28,'ОТДЫХ'),(12,'s1',44,'ПАЛОЛЕМ'),(12,'s1',37,'ПЛЯЖАХ'),(12,'s1',83,'РАМА'),(12,'s1',60,'СТАРИННЫЙ'),(12,'s1',70,'ФОРТ'),(12,'s1',16,'ЭКСКУРСИИ'),(13,'s1',0,'ФОТОГАЛЕРЕЯ'),(14,'s1',0,'УСЛУГИ'),(15,'s1',0,'КОНТАКТЫ'),(16,'s1',0,'ЭКСКУРСИИ'),(17,'s1',0,'СВОДНАЯ'),(17,'s1',8,'ТАБЛИЦА'),(17,'s1',16,'ЦЕН'),(18,'s1',0,'FAQ'),(19,'s1',0,'НОВОСТИ'),(20,'s1',0,'ЗАКАЗ'),(20,'s1',6,'УСЛУГ'),(21,'s1',0,'ОТЗЫВЫ'),(21,'s1',7,'ТУРИСТОВ'),(22,'s1',10,'1'),(22,'s1',0,'ЭКСКУРСИЯ'),(23,'s1',10,'2'),(23,'s1',0,'ЭКСКУРСИЯ'),(24,'s1',10,'3'),(24,'s1',0,'ЭКСКУРСИЯ'),(25,'s1',10,'4'),(25,'s1',0,'ЭКСКУРСИЯ'),(26,'s1',10,'5'),(26,'s1',0,'ЭКСКУРСИЯ'),(27,'s1',10,'6'),(27,'s1',0,'ЭКСКУРСИЯ'),(28,'s1',6,'НОВАЯ'),(28,'s1',0,'САМАЯ'),(28,'s1',12,'ЭКСКУРСИЯ'),(29,'s1',10,'5'),(29,'s1',0,'ЭКСКУРСИЯ'),(30,'s1',5,'1'),(30,'s1',0,'ФОТО'),(31,'s1',5,'2'),(31,'s1',0,'ФОТО');
/*!40000 ALTER TABLE `b_search_content_title` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_search_custom_rank`
--

DROP TABLE IF EXISTS `b_search_custom_rank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_search_custom_rank` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `APPLIED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `RANK` int(11) NOT NULL DEFAULT '0',
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `MODULE_ID` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `PARAM1` text COLLATE utf8_unicode_ci,
  `PARAM2` text COLLATE utf8_unicode_ci,
  `ITEM_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IND_B_SEARCH_CUSTOM_RANK` (`SITE_ID`,`MODULE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_search_custom_rank`
--

LOCK TABLES `b_search_custom_rank` WRITE;
/*!40000 ALTER TABLE `b_search_custom_rank` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_search_custom_rank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_search_phrase`
--

DROP TABLE IF EXISTS `b_search_phrase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_search_phrase` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` datetime NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `RESULT_COUNT` int(11) NOT NULL,
  `PAGES` int(11) NOT NULL,
  `SESSION_ID` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `PHRASE` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TAGS` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `URL_TO` text COLLATE utf8_unicode_ci,
  `URL_TO_404` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `URL_TO_SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `STAT_SESS_ID` int(18) DEFAULT NULL,
  `EVENT1` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IND_PK_B_SEARCH_PHRASE_SESS_PH` (`SESSION_ID`,`PHRASE`(50)),
  KEY `IND_PK_B_SEARCH_PHRASE_SESS_TG` (`SESSION_ID`,`TAGS`(50)),
  KEY `IND_PK_B_SEARCH_PHRASE_TIME` (`TIMESTAMP_X`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_search_phrase`
--

LOCK TABLES `b_search_phrase` WRITE;
/*!40000 ALTER TABLE `b_search_phrase` DISABLE KEYS */;
INSERT INTO `b_search_phrase` VALUES (1,'2016-08-28 22:04:01','s1',1,1,'e3810922abe5c5bc96aed2b0fd503f07',NULL,'историческая',NULL,NULL,NULL,NULL,NULL),(2,'2016-08-28 22:04:33','s1',1,1,'9ff2a815ffeaaa982114878281071b62',NULL,'историческая',NULL,NULL,NULL,NULL,NULL),(3,'2016-08-28 22:05:53','s1',1,1,'9ff2a815ffeaaa982114878281071b62',NULL,'развлекательная',NULL,NULL,NULL,NULL,NULL),(4,'2016-08-28 22:06:17','s1',1,1,'9ff2a815ffeaaa982114878281071b62',NULL,'1 день',NULL,NULL,NULL,NULL,NULL),(5,'2016-08-28 22:06:28','s1',1,1,'e3810922abe5c5bc96aed2b0fd503f07',NULL,'развлекательная',NULL,NULL,NULL,NULL,NULL),(6,'2016-08-28 22:06:41','s1',1,1,'e3810922abe5c5bc96aed2b0fd503f07',NULL,'1 день',NULL,NULL,NULL,NULL,NULL),(7,'2016-10-22 13:08:33','s1',1,1,'259582915cf95acc0f888df41308e318',NULL,'2 дня',NULL,NULL,NULL,NULL,NULL),(8,'2016-10-22 13:10:12','s1',1,1,'259582915cf95acc0f888df41308e318',NULL,'развлекательная',NULL,NULL,NULL,NULL,NULL),(9,'2016-10-22 13:11:12','s1',3,1,'259582915cf95acc0f888df41308e318',NULL,'историческая','http://new.tvoygoa.ru/info/detail.php?ID=16','Y','s1',NULL,NULL),(10,'2016-10-22 23:37:24','s1',3,1,'bbe84229dffc05c2c313744f9646be80',NULL,'историческая',NULL,NULL,NULL,NULL,NULL),(11,'2016-10-23 21:28:00','s1',1,1,'6d6ad42e8494897d7920ebbe70108c73',NULL,'развлекательная',NULL,NULL,NULL,NULL,NULL),(12,'2016-10-23 21:28:16','s1',1,1,'6d6ad42e8494897d7920ebbe70108c73',NULL,'1 день',NULL,NULL,NULL,NULL,NULL),(13,'2016-10-23 21:28:23','s1',3,1,'6d6ad42e8494897d7920ebbe70108c73',NULL,'историческая',NULL,NULL,NULL,NULL,NULL),(14,'2016-10-23 21:29:11','s1',1,1,'6d6ad42e8494897d7920ebbe70108c73',NULL,'2 дня, историческая',NULL,NULL,NULL,NULL,NULL),(15,'2016-10-23 21:29:47','s1',1,1,'6d6ad42e8494897d7920ebbe70108c73',NULL,'2 дня',NULL,NULL,NULL,NULL,NULL),(16,'2016-10-23 21:30:09','s1',1,1,'6d6ad42e8494897d7920ebbe70108c73',NULL,'историческая, с детьми',NULL,NULL,NULL,NULL,NULL),(17,'2016-10-23 21:30:13','s1',1,1,'6d6ad42e8494897d7920ebbe70108c73',NULL,'с детьми',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `b_search_phrase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_search_stem`
--

DROP TABLE IF EXISTS `b_search_stem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_search_stem` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `STEM` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UX_B_SEARCH_STEM` (`STEM`)
) ENGINE=InnoDB AUTO_INCREMENT=723 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_search_stem`
--

LOCK TABLES `b_search_stem` WRITE;
/*!40000 ALTER TABLE `b_search_stem` DISABLE KEYS */;
INSERT INTO `b_search_stem` VALUES (395,'--'),(366,'00'),(614,'01'),(364,'05'),(643,'08'),(622,'10'),(458,'10-15'),(182,'100'),(647,'12'),(627,'12-14'),(553,'14'),(649,'15'),(461,'150'),(655,'17'),(562,'1763'),(656,'18'),(318,'2-Х'),(435,'20'),(379,'2011-2016'),(273,'2015'),(615,'2016'),(271,'21'),(234,'22'),(465,'23'),(646,'30'),(363,'40'),(368,'44'),(693,'45'),(335,'5-ОМ'),(172,'5-ТИ'),(689,'50'),(671,'6-8'),(336,'6-М'),(362,'70'),(232,'71'),(236,'771'),(365,'7875'),(233,'79'),(418,'7В'),(231,'8888'),(230,'91'),(235,'981'),(367,'99'),(375,'AE'),(571,'ANTONIO'),(216,'BROWSER'),(494,'DE'),(217,'DOES'),(370,'E-MAIL'),(602,'EMAIL'),(253,'FACEBOOK'),(226,'FAQ'),(229,'IN'),(371,'INFO'),(493,'KABO'),(218,'NOT'),(378,'PIXELJAM'),(639,'PS'),(495,'RAMA'),(570,'SANTO'),(376,'STUDIO'),(219,'SUPPORT'),(223,'SURYA'),(220,'SVGS'),(224,'TRAVELS'),(372,'TVOYGOA'),(707,'VIBER'),(708,'WHATSAPP'),(609,'WILSON'),(215,'YOUR'),(164,'АВИА-'),(642,'АВИАБИЛЕТ'),(641,'АВИАБИЛЕТОВ'),(165,'АВТОБУСН'),(669,'АВТОМОБ'),(674,'АВТОМОБИЛ'),(632,'АГЕНТСТВ'),(439,'АЗ'),(116,'АКТИВН'),(690,'АКЦ'),(611,'АЛЕКСАНДР'),(341,'АНДР'),(569,'АНТОН'),(159,'АРЕНД'),(474,'АРМЕН'),(402,'АРХИТЕКТУР'),(527,'АТМОСФЕР'),(168,'АЮРВЕД'),(648,'БАБОЧЕК'),(626,'БАД'),(29,'БАЗАР'),(696,'БАНКОВСК'),(342,'БАТУР'),(504,'БАШН'),(487,'БЕЗЛЮДН'),(476,'БЕЛАР'),(625,'БЕЛЕНЬК'),(521,'БЕЛОСНЕЖН'),(508,'БЕРЕГОВ'),(13,'БЕСКОНЕЧН'),(91,'БИДЖАПУР'),(167,'БИЛЕТ'),(166,'БИЛЕТОВ'),(619,'БЛАГОДАРН'),(130,'БОЛ'),(154,'БОЛЬШ'),(536,'БРЕД'),(163,'БРОНИРОВАН'),(309,'БУД'),(11,'БУДЕТ'),(593,'БУДУТ'),(114,'БУНГА'),(292,'БЫВА'),(184,'ВАЖН'),(703,'ВАЛЮТ'),(185,'ВАС'),(594,'ВВЕД'),(456,'ВВЕДЕН'),(263,'ВЕ'),(498,'ВЕЛИК'),(582,'ВЕЛИКОЛЕПН'),(211,'ВЕРНЕТ'),(296,'ВЕРНУТ'),(344,'ВЕРУЛ'),(357,'ВЕСЕЛ'),(118,'ВЕЧЕРИНК'),(440,'ВЗАМ'),(141,'ВИД'),(358,'ВИДН'),(659,'ВКЛЮЧ'),(153,'ВКОНТАКТ'),(557,'ВЛАДЕЛ'),(586,'ВНИМАН'),(572,'ВНУТР'),(578,'ВОД'),(489,'ВОДН'),(72,'ВОДОПАД'),(206,'ВОЗВРАЩА'),(426,'ВОЗДУХ'),(40,'ВОЗМОЖН'),(535,'ВОКРУГ'),(289,'ВОЛШЕБН'),(193,'ВООБЩ'),(354,'ВОПРОС'),(683,'ВОСПОЛЬЗОВА'),(638,'ВОСПОЛЬЗУ'),(28,'ВОСТОЧН'),(507,'ВОСХИТИТЕЛЬН'),(287,'ВПЕЧАТЛЕН'),(328,'ВРЕДН'),(652,'ВРЕМ'),(149,'ВСЕМ'),(658,'ВСТРЕЧ'),(282,'ВСТРЕЧА'),(473,'ВХОД'),(343,'ВЧЕР'),(392,'ВЫБОР'),(254,'ВЫБРА'),(529,'ВЫЙД'),(618,'ВЫРАЗ'),(245,'ВЫРАЩИВА'),(347,'ВЫСОЧАЙШ'),(200,'ВЫСТРАИВА'),(518,'ГАЛЕР'),(225,'ГАЛЕРЕ'),(513,'ГАРМОН'),(555,'ГЕР'),(112,'ГЕСТХАУС'),(95,'ГИД'),(284,'ГИДОВ'),(1,'ГЛАВН'),(3,'ГО'),(126,'ГОВОР'),(466,'ГОД'),(90,'ГОКАРН'),(413,'ГОР'),(425,'ГОРН'),(720,'ГОРОДОВ-ПАМЯТНИК'),(719,'ГОРОДОВ-ПАМЯТНИКОВ'),(576,'ГОРЯЧ'),(111,'ГОСТИНИЦ'),(479,'ГРУПП'),(613,'ГУЩИН'),(203,'ДАЕТ'),(592,'ДАН'),(598,'ДАТ'),(408,'ДВА'),(274,'ДВЕ'),(605,'ДВОРЕЦ'),(101,'ДВОРЦ'),(100,'ДВОРЦОВ'),(275,'ДВУХДНЕВН'),(261,'ДЕ'),(688,'ДЕЙСТВ'),(623,'ДЕКАБР'),(352,'ДЕЛ'),(698,'ДЕЛА'),(85,'ДЕЛЬФИН'),(84,'ДЕЛЬФИНОВ'),(265,'ДЕН'),(702,'ДЕНЬГ'),(131,'ДЕСЯТ'),(687,'ДЕТ'),(712,'ДЕТЬМ'),(178,'ДЕЯТЕЛЬН'),(71,'ДЖУНГЛ'),(377,'ДИЗАЙН'),(400,'ДНЕ'),(637,'ДНИ'),(303,'ДНЯ'),(267,'ДОБАВ'),(380,'ДОБАВЛЕН'),(616,'ДОБР'),(307,'ДОВЕЛ'),(281,'ДОВОД'),(143,'ДОКАЗАТЕЛЬСТВ'),(201,'ДОЛГОВРЕМЕН'),(606,'ДОЛИН'),(704,'ДОЛЛАР'),(212,'ДОМ'),(250,'ДОМАШН'),(531,'ДОПЛЫВ'),(603,'ДОПОЛНИТЕЛЬН'),(449,'ДОРОГОВАТ'),(187,'ДОРОЖ'),(676,'ДОСТАТОЧН'),(64,'ДОСТОПРИМЕЧАТЕЛЬН'),(24,'ДРЕВН'),(190,'ДРУГ'),(209,'ДРУЗ'),(713,'ДУДХСАГАР'),(459,'ЕВР'),(470,'ЕВРАЗИЙСК'),(444,'ЕГИПЕТ'),(350,'ЕЗД'),(277,'ЕЛЕН'),(590,'ЕМЕЙЛ'),(334,'ЕХА'),(385,'ЖЕЛАН'),(556,'ЖЕН'),(128,'ЖИВ'),(420,'ЖИВЕТ'),(160,'ЖИЛ'),(332,'ЗАБ'),(301,'ЗАБУД'),(21,'ЗАВОРАЖИВА'),(199,'ЗАВТР'),(227,'ЗАКАЗ'),(399,'ЗАКАЗА'),(685,'ЗАКАЗЫВ'),(22,'ЗАКАТ'),(445,'ЗАМЕТН'),(302,'ЗАМЕЧАТЕЛЬН'),(70,'ЗАПОВЕДНИК'),(588,'ЗАПОЛНЕН'),(442,'ЗАПРЕТ'),(319,'ЗАРАН'),(183,'ЗАРПЛАТ'),(462,'ЗАРУБЕЖН'),(563,'ЗАХВАЧ'),(295,'ЗАХОТЕЛ'),(214,'ЗДЕ'),(88,'ЗНАМЕНИТ'),(636,'ЗНАЮТ'),(361,'ИВАН'),(360,'ИВАНОВ'),(492,'ИГР'),(42,'ИЗВЕСТН'),(554,'ИЗГНАН'),(174,'ИМЕ'),(547,'ИМЕЕТ'),(10,'ИНД'),(482,'ИНДИВИДУАЛЬН'),(558,'ИНДИЙСК'),(25,'ИНДУИСТСК'),(359,'ИНОКЕНТ'),(65,'ИНТЕРЕСН'),(464,'ИНТЕРНЕТ-МАГАЗИН'),(463,'ИНТЕРНЕТ-МАГАЗИНОВ'),(59,'ИНФОРМАЦ'),(286,'ИСПОРТ'),(136,'ИСТОР'),(43,'ИСТОРИЧЕСК'),(581,'ИСТОЧНИК'),(580,'ИСТОЧНИКОВ'),(667,'ИСХОД'),(260,'КАБ'),(477,'КАЗАХСТА'),(436,'КАЛИНИНГРАДСК'),(697,'КАРТ'),(478,'КИРГИЗ'),(283,'КЛАССН'),(119,'КЛУБ'),(428,'КЛУБНИК'),(340,'КНИГ'),(51,'КНЯЖЕСТВ'),(522,'КОКОСОВ'),(257,'КОЛ'),(601,'КОЛИЧЕСТВ'),(574,'КОЛОДЕЦ'),(27,'КОЛОРИТН'),(405,'КОЛХАПУР'),(191,'КОМПАН'),(44,'КОМПЛЕКС'),(393,'КОМПЬЮТЕР'),(673,'КОМФОРТ'),(662,'КОНДИЦИОНЕР'),(542,'КОНЕЧН'),(228,'КОНТАКТ'),(421,'КОРОЛЕВСК'),(53,'КОТОР'),(113,'КОТТЕДЖ'),(484,'КРАСИВ'),(18,'КРАСК'),(534,'КРАСОТ'),(546,'КРЕПОСТ'),(83,'КРОКОДИЛ'),(82,'КРОКОДИЛОВ'),(524,'КРОМК'),(135,'КУЛЬТУР'),(438,'КУРОРТ'),(715,'ЛАВК'),(543,'ЛАГУН'),(520,'ЛАСКОВ'),(411,'ЛЕГЕНД'),(132,'ЛЕТ'),(716,'ЛЕЧЕБН'),(169,'ЛЕЧЕН'),(509,'ЛИН'),(176,'ЛИЦЕНЗ'),(528,'ЛОДК'),(142,'ЛУЧШ'),(133,'ЛЮБ'),(512,'ЛЮБВ'),(448,'ЛЮД'),(630,'ЛЮДЬМ'),(97,'МАГ'),(12,'МАЛ'),(722,'МАНГЕШ'),(717,'МАСЕЛ'),(406,'МАХАБАЛЕШВАР'),(417,'МАХАЛАКШМ'),(415,'МАХАРАДЖ'),(668,'МАШИН'),(290,'МЕСТ'),(198,'МЕСЯЦ'),(672,'МИНИАВТОБУС'),(653,'МИНУТ'),(510,'МИР'),(551,'МИСТИЧЕСК'),(52,'МНОГ'),(315,'МОГЛ'),(195,'МОГУТ'),(57,'МОЖЕТ'),(298,'МОЖН'),(16,'МОР'),(20,'МУЗЫК'),(621,'МУМБА'),(560,'МУСУЛЬМАНСК'),(502,'МЫС'),(327,'НАВЕРН'),(391,'НАЖМ'),(599,'НАЗВАН'),(404,'НАЙД'),(519,'НАЙДЕТ'),(58,'НАЙТ'),(700,'НАЛИЧН'),(468,'НАЛОГ'),(93,'НАМ'),(338,'НАПИСА'),(127,'НАС'),(423,'НАСЛАД'),(305,'НАСТОЯ'),(244,'НАУЧ'),(32,'НАШ'),(595,'НЕВЕРН'),(321,'НЕВОЗМОЖН'),(537,'НЕЖН'),(407,'НЕЗАБЫВА'),(194,'НЕЛЕГАЛЬН'),(175,'НЕОБХОДИМ'),(525,'НЕОБЫЧН'),(681,'НЕПОСРЕДСТВЕН'),(387,'НЕСКОЛЬК'),(541,'НЕТРОНУТ'),(300,'НИКОГД'),(550,'НИМ'),(269,'НИН'),(604,'НОВ'),(242,'НОВОСТ'),(272,'НОЯБР'),(650,'ОБЕД'),(714,'ОБЕЗЬЯ'),(78,'ОБЕЗЬЯНК'),(430,'ОБЛАК'),(585,'ОБРАЩА'),(469,'ОБСУЖДА'),(314,'ОБШИРН'),(483,'ОБЯЗАТЕЛЬН'),(264,'ОДИН'),(339,'ОДН'),(325,'ОЗЕР'),(150,'ОЗНАКОМ'),(186,'ОЗНАЧА'),(515,'ОКРУЖА'),(429,'ОКУН'),(620,'ОЛЬГ'),(396,'ОПИСАН'),(695,'ОПЛАТ'),(155,'ОРГАНИЗАЦ'),(346,'ОРГАНИЗОВА'),(597,'ОРИЕНТИРОВОЧН'),(349,'ОРОМН'),(657,'ОСМОТР'),(624,'ОСОБЕН'),(533,'ОСТР'),(532,'ОСТРОВ'),(353,'ОТВЕЧА'),(255,'ОТД'),(412,'ОТДОХНЕТ'),(60,'ОТДЫХ'),(600,'ОТЕЛ'),(268,'ОТЗ'),(147,'ОТЗЫВ'),(628,'ОТЗЫВЧИВ'),(517,'ОТКР'),(31,'ОТКРОЙТ'),(506,'ОТКРЫВА'),(505,'ОТКУД'),(189,'ОТЛИЧ'),(144,'ОТЛИЧН'),(202,'ОТНОШЕН'),(394,'ОТПРАВ'),(644,'ОТПРАВЛЕН'),(173,'ОФИЦИАЛЬН'),(54,'ОХРАНЯ'),(99,'ОЧАРОВАН'),(256,'ПАЛОЛ'),(485,'ПАЛОЛЕМ'),(523,'ПАЛЬМ'),(409,'ПАМЯТНИК'),(243,'ПЕРВ'),(450,'ПЕРЕБРОНИРОВА'),(222,'ПЕРЕЙТ'),(389,'ПЕРЕТАЩ'),(124,'ПЕРЕЧЕН'),(538,'ПЕСК'),(612,'ПЕТРОВИЧ'),(9,'ПИСА'),(678,'ПЛАНИРУЕМ'),(73,'ПЛАНТАЦ'),(204,'ПЛОД'),(608,'ПЛОЩАДК'),(14,'ПЛЯЖ'),(205,'ПОБЫВА'),(446,'ПОВЫШЕН'),(252,'ПОГОД'),(96,'ПОГРУЖЕН'),(544,'ПОГРУЗ'),(575,'ПОДАВА'),(455,'ПОДДЕРЖА'),(584,'ПОДЕЛ'),(503,'ПОДНИМ'),(467,'ПОДОБН'),(610,'ПОДРОБН'),(331,'ПОЕДУТ'),(679,'ПОЕЗДК'),(322,'ПОЕХА'),(382,'ПОЖАЛУЙСТ'),(316,'ПОИНТЕРЕСОВА'),(69,'ПОКАЖ'),(140,'ПОКАЗА'),(589,'ПОЛ'),(443,'ПОЛЕТ'),(123,'ПОЛН'),(312,'ПОЛНОСТ'),(192,'ПОЛУЛЕГАЛЬН'),(181,'ПОЛУЧА'),(530,'ПОЛЮБУ'),(337,'ПОМЕНЯ'),(33,'ПОМОГУТ'),(491,'ПОНАБЛЮДА'),(115,'ПОНАДОБ'),(345,'ПОНРАВ'),(75,'ПООБЩА'),(564,'ПОРТУГАЛЬЦ'),(41,'ПОСЕТ'),(210,'ПОСЛ'),(221,'ПОСМОТР'),(139,'ПОСТАРА'),(460,'ПОСЫЛК'),(17,'ПОТРЯСА'),(170,'ПОЧ'),(414,'ПОЧУВСТВУЕТ'),(67,'ПР'),(587,'ПРАВИЛЬН'),(559,'ПРАВИТЕЛ'),(162,'ПРАЗДНИК'),(161,'ПРАЗДНИКОВ'),(35,'ПРЕДЛАГА'),(239,'ПРЕДЛОЖЕН'),(39,'ПРЕДОСТАВ'),(122,'ПРЕДСТАВЛ'),(381,'ПРЕДСТАВЬТ'),(320,'ПРЕДУПРЕЖД'),(237,'ПРЕИМУЩЕСТВ'),(306,'ПРЕКРАСН'),(30,'ПРЕУВЕЛИЧЕН'),(645,'ПРИБЫТ'),(640,'ПРИВЕТ'),(6,'ПРИВЛЕКАТЕЛЬН'),(453,'ПРИЕМЛЕМ'),(711,'ПРИЕХА'),(386,'ПРИКРЕП'),(701,'ПРИНИМА'),(19,'ПРИРОД'),(579,'ПРИРОДН'),(373,'ПРИСОЕДИНЯ'),(297,'ПРИЧ'),(156,'ПРОВЕДЕН'),(552,'ПРОВЕЛ'),(125,'ПРОВОД'),(397,'ПРОГРАММ'),(490,'ПРОГУЛК'),(665,'ПРОДОЛЖИТЕЛЬН'),(94,'ПРОСТ'),(171,'ПРОТЯЖЕН'),(351,'ПРОФЕССИОНАЛ'),(383,'ПРОФИЛ'),(356,'ПРОХОД'),(251,'ПТИЦ'),(330,'ПУСТ'),(654,'ПУТ'),(451,'ПУТЕВК'),(5,'ПУТЕШЕСТВ'),(573,'ПУШК'),(145,'РАБОТ'),(129,'РАБОТА'),(280,'РАЗ'),(401,'РАЗВЛЕКАТЕЛЬН'),(249,'РАЗВОД'),(152,'РАЗДЕЛ'),(110,'РАЗМЕЩЕН'),(36,'РАЗНООБРАЗН'),(92,'РАЗРАБОТА'),(374,'РАЗРАБОТК'),(566,'РАЗРУШ'),(262,'РАМ'),(500,'РАМАЯ'),(299,'РАНЬШ'),(355,'РАСКАЗЫВА'),(691,'РАСПРОСТРАНЯ'),(23,'РАССВЕТ'),(548,'РАССКАЖ'),(670,'РАССЧИТА'),(208,'РЕКОМЕНД'),(310,'РЕКОМЕНДОВА'),(710,'РЕКОМЕНДУ'),(188,'РЕПУТАЦ'),(475,'РЕСПУБЛИК'),(117,'РЕСТОРА'),(329,'РЕШ'),(246,'РИС'),(539,'РОМАНТИЧН'),(369,'РОСС'),(706,'РУБЛ'),(631,'РУКОВОДИТЕЛ'),(705,'РУП'),(664,'РУССК'),(120,'РЫБАЛК'),(103,'РЫНК'),(102,'РЫНКОВ'),(718,'САД'),(56,'САЙТ'),(247,'САХАРН'),(457,'СБОР'),(266,'СБРОС'),(157,'СВАДЕБН'),(196,'СВЕРНУТ'),(651,'СВОБОДН'),(240,'СВОДН'),(501,'СВЯЗА'),(549,'СВЯЗАН'),(568,'СВЯТ'),(49,'СВЯТЫН'),(416,'СВЯЩЕН'),(293,'СДЕЛА'),(419,'СЕ'),(433,'СЕВЕРН'),(452,'СЕЙЧАС'),(422,'СЕМ'),(276,'СЕРГЕ'),(270,'СЕРГЕЕВН'),(497,'СИТ'),(686,'СКИДК'),(8,'СКОЛЬК'),(197,'СЛЕД'),(77,'СЛОН'),(146,'СЛУЖАТ'),(285,'СМОГЛ'),(596,'СМОЖ'),(607,'СМОТРОВ'),(207,'СНОВ'),(76,'СО'),(514,'СОБ'),(660,'СОБСТВЕН'),(488,'СОВЕРШ'),(61,'СОВЕТ'),(709,'СОВПАДА'),(326,'СОГЛАС'),(511,'СОЗДА'),(677,'СООБЩ'),(151,'СООТВЕТСТВ'),(45,'СОСЕДН'),(180,'СОТРУДНИК'),(565,'СОХРАН'),(472,'СОЮЗ'),(313,'СПАСИБ'),(427,'СПЕЛ'),(74,'СПЕЦ'),(238,'СПЕЦИАЛЬН'),(63,'СПИСОК'),(545,'СПОКОЙН'),(105,'СРАВНИМ'),(633,'СТАЖ'),(304,'СТАЛ'),(432,'СТАР'),(258,'СТАРИН'),(583,'СТЕН'),(398,'СТОИМОСТ'),(288,'СТОЛ'),(50,'СТОЛИЦ'),(134,'СТРАН'),(121,'СТРАНИЦ'),(663,'СТРАХОВК'),(692,'СУММИР'),(213,'СЧАСТЛИВ'),(87,'СЪЕЗД'),(390,'СЮД'),(241,'ТАБЛИЦ'),(98,'ТАЙН'),(86,'ТАКЖ'),(109,'ТАКС'),(454,'ТАМОЖН'),(34,'ТВО'),(384,'ТЕКСТ'),(682,'ТЕЛ'),(591,'ТЕЛЕФОН'),(694,'ТЕПЕР'),(15,'ТЕПЛ'),(317,'ТЕХ'),(323,'ТИБЕТ'),(81,'ТИГР'),(80,'ТИГРОВ'),(486,'ТИХ'),(294,'ТОГ'),(324,'ТОМ'),(68,'ТОП'),(634,'ТОЧН'),(138,'ТРАДИЦ'),(661,'ТРАНСПОРТ'),(179,'ТРАНСПОРТН'),(108,'ТРАНСФЕР'),(248,'ТРОСТНИК'),(38,'ТУР'),(62,'ТУРИСТ'),(177,'ТУРИСТИЧЕСК'),(148,'ТУРИСТОВ'),(447,'ТУРОПЕРАТОР'),(437,'ТУРФИРМ'),(441,'ТУРЦ'),(516,'УБЕД'),(137,'УВАЖА'),(79,'УВИД'),(308,'УВИДЕТ'),(37,'УВЛЕКАТЕЛЬН'),(4,'УДИВИТЕЛЬН'),(699,'УДОБСТВ'),(540,'УЕДИНЕН'),(496,'УЗНА'),(629,'УМЕЮТ'),(104,'УНИКАЛЬН'),(348,'УРОВН'),(107,'УСЛУГ'),(410,'УСЛЫШ'),(481,'УСТАНАВЛИВА'),(680,'УСТРО'),(635,'УТВЕРЖДА'),(333,'УТОЧН'),(526,'УЮТН'),(66,'ФАКТ'),(403,'ФИЛЬТР'),(684,'ФОРМ'),(675,'ФОРМИРУ'),(259,'ФОРТ'),(388,'ФОТ'),(431,'ФОТОГАЛЕРЕ'),(89,'ХАМП'),(577,'ХОЛОДН'),(617,'ХОТЕЛ'),(26,'ХРАМ'),(48,'ХРАМОВ'),(7,'ЦЕН'),(158,'ЦЕРЕМОН'),(567,'ЦЕРКОВ'),(666,'ЧАС'),(291,'ЧАСТ'),(480,'ЧЕЛОВЕК'),(279,'ЧЕМ-Т'),(424,'ЧИСТ'),(311,'ЧИТА'),(278,'ЧТО-Т'),(561,'ШАХ'),(721,'ШРИ'),(47,'ШТАТ'),(46,'ШТАТОВ'),(471,'ЭКОНОМИЧЕСК'),(2,'ЭКСКУРС'),(106,'ЭНЕРГЕТИК'),(499,'ЭПОС'),(434,'ЮЖН'),(55,'ЮНЕСК');
/*!40000 ALTER TABLE `b_search_stem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_search_suggest`
--

DROP TABLE IF EXISTS `b_search_suggest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_search_suggest` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `FILTER_MD5` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `PHRASE` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `RATE` float NOT NULL,
  `TIMESTAMP_X` datetime NOT NULL,
  `RESULT_COUNT` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IND_B_SEARCH_SUGGEST` (`FILTER_MD5`,`PHRASE`(50),`RATE`),
  KEY `IND_B_SEARCH_SUGGEST_PHRASE` (`PHRASE`(50),`RATE`),
  KEY `IND_B_SEARCH_SUGGEST_TIME` (`TIMESTAMP_X`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_search_suggest`
--

LOCK TABLES `b_search_suggest` WRITE;
/*!40000 ALTER TABLE `b_search_suggest` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_search_suggest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_search_tags`
--

DROP TABLE IF EXISTS `b_search_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_search_tags` (
  `SEARCH_CONTENT_ID` int(11) NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`SEARCH_CONTENT_ID`,`SITE_ID`,`NAME`),
  KEY `IX_B_SEARCH_TAGS_0` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci DELAY_KEY_WRITE=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_search_tags`
--

LOCK TABLES `b_search_tags` WRITE;
/*!40000 ALTER TABLE `b_search_tags` DISABLE KEYS */;
INSERT INTO `b_search_tags` VALUES (25,'s1','1 день'),(26,'s1','2 дня'),(22,'s1','историческая'),(23,'s1','историческая'),(26,'s1','историческая'),(27,'s1','развлекательная'),(26,'s1','с детьми');
/*!40000 ALTER TABLE `b_search_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_search_user_right`
--

DROP TABLE IF EXISTS `b_search_user_right`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_search_user_right` (
  `USER_ID` int(11) NOT NULL,
  `GROUP_CODE` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `UX_B_SEARCH_USER_RIGHT` (`USER_ID`,`GROUP_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_search_user_right`
--

LOCK TABLES `b_search_user_right` WRITE;
/*!40000 ALTER TABLE `b_search_user_right` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_search_user_right` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_adv_autolog`
--

DROP TABLE IF EXISTS `b_seo_adv_autolog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_seo_adv_autolog` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENGINE_ID` int(11) NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `CAMPAIGN_ID` int(11) NOT NULL,
  `CAMPAIGN_XML_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `BANNER_ID` int(11) NOT NULL,
  `BANNER_XML_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CAUSE_CODE` int(11) DEFAULT '0',
  `SUCCESS` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  PRIMARY KEY (`ID`),
  KEY `ix_b_seo_adv_autolog1` (`ENGINE_ID`),
  KEY `ix_b_seo_adv_autolog2` (`TIMESTAMP_X`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_adv_autolog`
--

LOCK TABLES `b_seo_adv_autolog` WRITE;
/*!40000 ALTER TABLE `b_seo_adv_autolog` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_adv_autolog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_adv_banner`
--

DROP TABLE IF EXISTS `b_seo_adv_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_seo_adv_banner` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENGINE_ID` int(11) NOT NULL,
  `OWNER_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `OWNER_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `LAST_UPDATE` timestamp NULL DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SETTINGS` text COLLATE utf8_unicode_ci,
  `CAMPAIGN_ID` int(11) NOT NULL,
  `GROUP_ID` int(11) DEFAULT NULL,
  `AUTO_QUANTITY_OFF` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `AUTO_QUANTITY_ON` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_seo_adv_banner` (`ENGINE_ID`,`XML_ID`),
  KEY `ix_b_seo_adv_banner1` (`CAMPAIGN_ID`),
  KEY `ix_b_seo_adv_banner2` (`AUTO_QUANTITY_OFF`,`AUTO_QUANTITY_ON`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_adv_banner`
--

LOCK TABLES `b_seo_adv_banner` WRITE;
/*!40000 ALTER TABLE `b_seo_adv_banner` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_adv_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_adv_campaign`
--

DROP TABLE IF EXISTS `b_seo_adv_campaign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_seo_adv_campaign` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENGINE_ID` int(11) NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `OWNER_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `OWNER_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `LAST_UPDATE` timestamp NULL DEFAULT NULL,
  `SETTINGS` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_seo_adv_campaign` (`ENGINE_ID`,`XML_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_adv_campaign`
--

LOCK TABLES `b_seo_adv_campaign` WRITE;
/*!40000 ALTER TABLE `b_seo_adv_campaign` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_adv_campaign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_adv_group`
--

DROP TABLE IF EXISTS `b_seo_adv_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_seo_adv_group` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENGINE_ID` int(11) NOT NULL,
  `OWNER_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `OWNER_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `LAST_UPDATE` timestamp NULL DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SETTINGS` text COLLATE utf8_unicode_ci,
  `CAMPAIGN_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_seo_adv_group` (`ENGINE_ID`,`XML_ID`),
  KEY `ix_b_seo_adv_group1` (`CAMPAIGN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_adv_group`
--

LOCK TABLES `b_seo_adv_group` WRITE;
/*!40000 ALTER TABLE `b_seo_adv_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_adv_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_adv_link`
--

DROP TABLE IF EXISTS `b_seo_adv_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_seo_adv_link` (
  `LINK_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `LINK_ID` int(18) NOT NULL,
  `BANNER_ID` int(11) NOT NULL,
  PRIMARY KEY (`LINK_TYPE`,`LINK_ID`,`BANNER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_adv_link`
--

LOCK TABLES `b_seo_adv_link` WRITE;
/*!40000 ALTER TABLE `b_seo_adv_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_adv_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_adv_log`
--

DROP TABLE IF EXISTS `b_seo_adv_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_seo_adv_log` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENGINE_ID` int(11) NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REQUEST_URI` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `REQUEST_DATA` text COLLATE utf8_unicode_ci,
  `RESPONSE_TIME` float NOT NULL,
  `RESPONSE_STATUS` int(5) DEFAULT NULL,
  `RESPONSE_DATA` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`),
  KEY `ix_b_seo_adv_log1` (`ENGINE_ID`),
  KEY `ix_b_seo_adv_log2` (`TIMESTAMP_X`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_adv_log`
--

LOCK TABLES `b_seo_adv_log` WRITE;
/*!40000 ALTER TABLE `b_seo_adv_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_adv_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_adv_order`
--

DROP TABLE IF EXISTS `b_seo_adv_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_seo_adv_order` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENGINE_ID` int(11) NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `CAMPAIGN_ID` int(11) NOT NULL,
  `BANNER_ID` int(11) NOT NULL,
  `ORDER_ID` int(11) NOT NULL,
  `SUM` float DEFAULT '0',
  `PROCESSED` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_seo_adv_order` (`ENGINE_ID`,`CAMPAIGN_ID`,`BANNER_ID`,`ORDER_ID`),
  KEY `ix_b_seo_adv_order1` (`ORDER_ID`,`PROCESSED`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_adv_order`
--

LOCK TABLES `b_seo_adv_order` WRITE;
/*!40000 ALTER TABLE `b_seo_adv_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_adv_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_adv_region`
--

DROP TABLE IF EXISTS `b_seo_adv_region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_seo_adv_region` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENGINE_ID` int(11) NOT NULL,
  `OWNER_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `OWNER_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `LAST_UPDATE` timestamp NULL DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SETTINGS` text COLLATE utf8_unicode_ci,
  `PARENT_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_seo_adv_region` (`ENGINE_ID`,`XML_ID`),
  KEY `ix_b_seo_adv_region1` (`PARENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_adv_region`
--

LOCK TABLES `b_seo_adv_region` WRITE;
/*!40000 ALTER TABLE `b_seo_adv_region` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_adv_region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_keywords`
--

DROP TABLE IF EXISTS `b_seo_keywords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_seo_keywords` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `KEYWORDS` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`),
  KEY `ix_b_seo_keywords_url` (`URL`,`SITE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_keywords`
--

LOCK TABLES `b_seo_keywords` WRITE;
/*!40000 ALTER TABLE `b_seo_keywords` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_keywords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_search_engine`
--

DROP TABLE IF EXISTS `b_seo_search_engine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_seo_search_engine` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `SORT` int(5) DEFAULT '100',
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CLIENT_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CLIENT_SECRET` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `REDIRECT_URI` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SETTINGS` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_seo_search_engine_code` (`CODE`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_search_engine`
--

LOCK TABLES `b_seo_search_engine` WRITE;
/*!40000 ALTER TABLE `b_seo_search_engine` DISABLE KEYS */;
INSERT INTO `b_seo_search_engine` VALUES (1,'google','Y',200,'Google','868942902147-qrrd6ce1ajfkpse8ieq4gkpdeanvtnno.apps.googleusercontent.com','EItMlJpZLC2WRPKB6QsA5bV9','urn:ietf:wg:oauth:2.0:oob',NULL),(2,'yandex','Y',300,'Yandex','f848c7bfc1d34a94ba6d05439f81bbd7','da0e73b2d9cc4e809f3170e49cb9df01','https://oauth.yandex.ru/verification_code',NULL),(3,'yandex_direct','Y',400,'Yandex.Direct','','','https://oauth.yandex.ru/verification_code',NULL);
/*!40000 ALTER TABLE `b_seo_search_engine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_sitemap`
--

DROP TABLE IF EXISTS `b_seo_sitemap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_seo_sitemap` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `DATE_RUN` datetime DEFAULT NULL,
  `SETTINGS` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_sitemap`
--

LOCK TABLES `b_seo_sitemap` WRITE;
/*!40000 ALTER TABLE `b_seo_sitemap` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_sitemap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_sitemap_entity`
--

DROP TABLE IF EXISTS `b_seo_sitemap_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_seo_sitemap_entity` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENTITY_TYPE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `SITEMAP_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_seo_sitemap_entity_1` (`ENTITY_TYPE`,`ENTITY_ID`),
  KEY `ix_b_seo_sitemap_entity_2` (`SITEMAP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_sitemap_entity`
--

LOCK TABLES `b_seo_sitemap_entity` WRITE;
/*!40000 ALTER TABLE `b_seo_sitemap_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_sitemap_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_sitemap_iblock`
--

DROP TABLE IF EXISTS `b_seo_sitemap_iblock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_seo_sitemap_iblock` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IBLOCK_ID` int(11) NOT NULL,
  `SITEMAP_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_seo_sitemap_iblock_1` (`IBLOCK_ID`),
  KEY `ix_b_seo_sitemap_iblock_2` (`SITEMAP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_sitemap_iblock`
--

LOCK TABLES `b_seo_sitemap_iblock` WRITE;
/*!40000 ALTER TABLE `b_seo_sitemap_iblock` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_sitemap_iblock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_sitemap_runtime`
--

DROP TABLE IF EXISTS `b_seo_sitemap_runtime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_seo_sitemap_runtime` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PID` int(11) NOT NULL,
  `PROCESSED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ITEM_PATH` varchar(700) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ITEM_ID` int(11) DEFAULT NULL,
  `ITEM_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'D',
  `ACTIVE` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `ACTIVE_ELEMENT` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  PRIMARY KEY (`ID`),
  KEY `ix_seo_sitemap_runtime1` (`PID`,`PROCESSED`,`ITEM_TYPE`,`ITEM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_sitemap_runtime`
--

LOCK TABLES `b_seo_sitemap_runtime` WRITE;
/*!40000 ALTER TABLE `b_seo_sitemap_runtime` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_sitemap_runtime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_yandex_direct_stat`
--

DROP TABLE IF EXISTS `b_seo_yandex_direct_stat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_seo_yandex_direct_stat` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `CAMPAIGN_ID` int(11) NOT NULL,
  `BANNER_ID` int(11) NOT NULL,
  `DATE_DAY` date NOT NULL,
  `CURRENCY` char(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SUM` float DEFAULT '0',
  `SUM_SEARCH` float DEFAULT '0',
  `SUM_CONTEXT` float DEFAULT '0',
  `CLICKS` int(7) DEFAULT '0',
  `CLICKS_SEARCH` int(7) DEFAULT '0',
  `CLICKS_CONTEXT` int(7) DEFAULT '0',
  `SHOWS` int(7) DEFAULT '0',
  `SHOWS_SEARCH` int(7) DEFAULT '0',
  `SHOWS_CONTEXT` int(7) DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_seo_yandex_direct_stat` (`BANNER_ID`,`DATE_DAY`),
  KEY `ix_seo_yandex_direct_stat1` (`CAMPAIGN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_yandex_direct_stat`
--

LOCK TABLES `b_seo_yandex_direct_stat` WRITE;
/*!40000 ALTER TABLE `b_seo_yandex_direct_stat` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_yandex_direct_stat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_short_uri`
--

DROP TABLE IF EXISTS `b_short_uri`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_short_uri` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `URI` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `URI_CRC` int(18) NOT NULL,
  `SHORT_URI` varbinary(250) NOT NULL,
  `SHORT_URI_CRC` int(18) NOT NULL,
  `STATUS` int(18) NOT NULL DEFAULT '301',
  `MODIFIED` datetime NOT NULL,
  `LAST_USED` datetime DEFAULT NULL,
  `NUMBER_USED` int(18) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ux_b_short_uri_1` (`SHORT_URI_CRC`),
  KEY `ux_b_short_uri_2` (`URI_CRC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_short_uri`
--

LOCK TABLES `b_short_uri` WRITE;
/*!40000 ALTER TABLE `b_short_uri` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_short_uri` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_site_template`
--

DROP TABLE IF EXISTS `b_site_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_site_template` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `CONDITION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SORT` int(11) NOT NULL DEFAULT '500',
  `TEMPLATE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UX_B_SITE_TEMPLATE` (`SITE_ID`,`CONDITION`,`TEMPLATE`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_site_template`
--

LOCK TABLES `b_site_template` WRITE;
/*!40000 ALTER TABLE `b_site_template` DISABLE KEYS */;
INSERT INTO `b_site_template` VALUES (3,'s1','',150,'goa');
/*!40000 ALTER TABLE `b_site_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_smile`
--

DROP TABLE IF EXISTS `b_smile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_smile` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  `SET_ID` int(18) NOT NULL DEFAULT '0',
  `SORT` int(10) NOT NULL DEFAULT '150',
  `TYPING` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CLICKABLE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `HIDDEN` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `IMAGE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `IMAGE_DEFINITION` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'SD',
  `IMAGE_WIDTH` int(11) NOT NULL DEFAULT '0',
  `IMAGE_HEIGHT` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_smile`
--

LOCK TABLES `b_smile` WRITE;
/*!40000 ALTER TABLE `b_smile` DISABLE KEYS */;
INSERT INTO `b_smile` VALUES (1,'S',2,100,':) :-)','Y','N','bx_smile_smile.png','UHD',20,20),(2,'S',2,105,';) ;-)','Y','N','bx_smile_wink.png','UHD',20,20),(3,'S',2,110,':D :-D','Y','N','bx_smile_biggrin.png','UHD',20,20),(4,'S',2,115,'8) 8-)','Y','N','bx_smile_cool.png','UHD',20,20),(5,'S',2,120,':facepalm:','Y','N','bx_smile_facepalm.png','UHD',20,20),(6,'S',2,125,':{} :-{}','Y','N','bx_smile_kiss.png','UHD',20,20),(7,'S',2,130,':( :-(','Y','N','bx_smile_sad.png','UHD',20,20),(8,'S',2,135,':| :-|','Y','N','bx_smile_neutral.png','UHD',20,20),(9,'S',2,140,':oops:','Y','N','bx_smile_redface.png','UHD',20,20),(10,'S',2,145,':cry: :~(','Y','N','bx_smile_cry.png','UHD',20,20),(11,'S',2,150,':evil: >:-<','Y','N','bx_smile_evil.png','UHD',20,20),(12,'S',2,155,':o :-o :shock:','Y','N','bx_smile_eek.png','UHD',20,20),(13,'S',2,160,':/ :-/','Y','N','bx_smile_confuse.png','UHD',20,20),(14,'S',2,165,':idea:','Y','N','bx_smile_idea.png','UHD',20,20),(15,'S',2,170,':?:','Y','N','bx_smile_question.png','UHD',20,20),(16,'S',2,175,':!:','Y','N','bx_smile_exclaim.png','UHD',20,20),(17,'S',2,180,':like:','Y','N','bx_smile_like.png','UHD',20,20),(18,'I',2,175,'ICON_NOTE','Y','N','bx_icon_1.gif','SD',15,15),(19,'I',2,180,'ICON_DIRRECTION','Y','N','bx_icon_2.gif','SD',15,15),(20,'I',2,185,'ICON_IDEA','Y','N','bx_icon_3.gif','SD',15,15),(21,'I',2,190,'ICON_ATTANSION','Y','N','bx_icon_4.gif','SD',15,15),(22,'I',2,195,'ICON_QUESTION','Y','N','bx_icon_5.gif','SD',15,15),(23,'I',2,200,'ICON_BAD','Y','N','bx_icon_6.gif','SD',15,15),(24,'I',2,205,'ICON_GOOD','Y','N','bx_icon_7.gif','SD',15,15);
/*!40000 ALTER TABLE `b_smile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_smile_lang`
--

DROP TABLE IF EXISTS `b_smile_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_smile_lang` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  `SID` int(11) NOT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UX_SMILE_SL` (`TYPE`,`SID`,`LID`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_smile_lang`
--

LOCK TABLES `b_smile_lang` WRITE;
/*!40000 ALTER TABLE `b_smile_lang` DISABLE KEYS */;
INSERT INTO `b_smile_lang` VALUES (1,'P',1,'ru','Стандартная галерея'),(2,'P',1,'en','Standard gallery'),(3,'G',2,'ru','Основной набор'),(4,'G',2,'en','Default pack'),(5,'S',1,'ru','С улыбкой'),(6,'S',1,'en','Smile'),(7,'S',2,'ru','Шутливо'),(8,'S',2,'en','Wink'),(9,'S',3,'ru','Широкая улыбка'),(10,'S',3,'en','Big grin'),(11,'S',4,'ru','Здорово'),(12,'S',4,'en','Cool'),(13,'S',5,'ru','Разочарование'),(14,'S',5,'en','Facepalm'),(15,'S',6,'ru','Поцелуй'),(16,'S',6,'en','Kiss'),(17,'S',7,'ru','Печально'),(18,'S',7,'en','Sad'),(19,'S',8,'ru','Скептически'),(20,'S',8,'en','Skeptic'),(21,'S',9,'ru','Смущенный'),(22,'S',9,'en','Embarrassed'),(23,'S',10,'ru','Очень грустно'),(24,'S',10,'en','Crying'),(25,'S',11,'ru','Со злостью'),(26,'S',11,'en','Angry'),(27,'S',12,'ru','Удивленно'),(28,'S',12,'en','Surprised'),(29,'S',13,'ru','Смущенно'),(30,'S',13,'en','Confused'),(31,'S',14,'ru','Идея'),(32,'S',14,'en','Idea'),(33,'S',15,'ru','Вопрос'),(34,'S',15,'en','Question'),(35,'S',16,'ru','Восклицание'),(36,'S',16,'en','Exclamation'),(37,'S',17,'ru','Нравится'),(38,'S',17,'en','Like');
/*!40000 ALTER TABLE `b_smile_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_smile_set`
--

DROP TABLE IF EXISTS `b_smile_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_smile_set` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'G',
  `PARENT_ID` int(18) NOT NULL DEFAULT '0',
  `STRING_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SORT` int(10) NOT NULL DEFAULT '150',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_smile_set`
--

LOCK TABLES `b_smile_set` WRITE;
/*!40000 ALTER TABLE `b_smile_set` DISABLE KEYS */;
INSERT INTO `b_smile_set` VALUES (1,'P',0,'bitrix',150),(2,'G',1,'bitrix_main',150);
/*!40000 ALTER TABLE `b_smile_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_socialservices_contact`
--

DROP TABLE IF EXISTS `b_socialservices_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_socialservices_contact` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `USER_ID` int(11) NOT NULL,
  `CONTACT_USER_ID` int(11) DEFAULT NULL,
  `CONTACT_XML_ID` int(11) DEFAULT NULL,
  `CONTACT_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONTACT_LAST_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONTACT_PHOTO` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_AUTHORIZE` datetime DEFAULT NULL,
  `NOTIFY` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  PRIMARY KEY (`ID`),
  KEY `ix_b_socialservices_contact1` (`USER_ID`),
  KEY `ix_b_socialservices_contact2` (`CONTACT_USER_ID`),
  KEY `ix_b_socialservices_contact3` (`TIMESTAMP_X`),
  KEY `ix_b_socialservices_contact4` (`LAST_AUTHORIZE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_socialservices_contact`
--

LOCK TABLES `b_socialservices_contact` WRITE;
/*!40000 ALTER TABLE `b_socialservices_contact` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_socialservices_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_socialservices_contact_connect`
--

DROP TABLE IF EXISTS `b_socialservices_contact_connect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_socialservices_contact_connect` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CONTACT_ID` int(11) DEFAULT NULL,
  `LINK_ID` int(11) DEFAULT NULL,
  `CONTACT_PROFILE_ID` int(11) NOT NULL,
  `CONTACT_PORTAL` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CONNECT_TYPE` char(1) COLLATE utf8_unicode_ci DEFAULT 'P',
  `LAST_AUTHORIZE` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_socialservices_contact_connect1` (`CONTACT_ID`),
  KEY `ix_b_socialservices_contact_connect2` (`LINK_ID`),
  KEY `ix_b_socialservices_contact_connect3` (`LAST_AUTHORIZE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_socialservices_contact_connect`
--

LOCK TABLES `b_socialservices_contact_connect` WRITE;
/*!40000 ALTER TABLE `b_socialservices_contact_connect` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_socialservices_contact_connect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_socialservices_message`
--

DROP TABLE IF EXISTS `b_socialservices_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_socialservices_message` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) NOT NULL,
  `SOCSERV_USER_ID` int(11) NOT NULL,
  `PROVIDER` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `MESSAGE` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `INSERT_DATE` datetime DEFAULT NULL,
  `SUCCES_SENT` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_socialservices_message`
--

LOCK TABLES `b_socialservices_message` WRITE;
/*!40000 ALTER TABLE `b_socialservices_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_socialservices_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_socialservices_user`
--

DROP TABLE IF EXISTS `b_socialservices_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_socialservices_user` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `LOGIN` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EMAIL` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_PHOTO` int(11) DEFAULT NULL,
  `EXTERNAL_AUTH_ID` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `XML_ID` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `CAN_DELETE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `PERSONAL_WWW` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERMISSIONS` varchar(555) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OATOKEN` varchar(3000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OATOKEN_EXPIRES` int(11) DEFAULT NULL,
  `OASECRET` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `REFRESH_TOKEN` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SEND_ACTIVITY` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `SITE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `INITIALIZED` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_B_SOCIALSERVICES_USER` (`XML_ID`,`EXTERNAL_AUTH_ID`),
  KEY `IX_B_SOCIALSERVICES_US_1` (`USER_ID`),
  KEY `IX_B_SOCIALSERVICES_US_3` (`LOGIN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_socialservices_user`
--

LOCK TABLES `b_socialservices_user` WRITE;
/*!40000 ALTER TABLE `b_socialservices_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_socialservices_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_socialservices_user_link`
--

DROP TABLE IF EXISTS `b_socialservices_user_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_socialservices_user_link` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) NOT NULL,
  `SOCSERV_USER_ID` int(11) NOT NULL,
  `LINK_USER_ID` int(11) DEFAULT NULL,
  `LINK_UID` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `LINK_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LINK_LAST_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LINK_PICTURE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LINK_EMAIL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TIMESTAMP_X` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_socialservices_user_link_5` (`SOCSERV_USER_ID`),
  KEY `ix_b_socialservices_user_link_6` (`LINK_USER_ID`,`TIMESTAMP_X`),
  KEY `ix_b_socialservices_user_link_7` (`LINK_UID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_socialservices_user_link`
--

LOCK TABLES `b_socialservices_user_link` WRITE;
/*!40000 ALTER TABLE `b_socialservices_user_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_socialservices_user_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sticker`
--

DROP TABLE IF EXISTS `b_sticker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sticker` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PAGE_URL` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PAGE_TITLE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DATE_CREATE` datetime NOT NULL,
  `DATE_UPDATE` datetime NOT NULL,
  `MODIFIED_BY` int(18) NOT NULL,
  `CREATED_BY` int(18) NOT NULL,
  `PERSONAL` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `CONTENT` text COLLATE utf8_unicode_ci,
  `POS_TOP` int(11) DEFAULT NULL,
  `POS_LEFT` int(11) DEFAULT NULL,
  `WIDTH` int(11) DEFAULT NULL,
  `HEIGHT` int(11) DEFAULT NULL,
  `COLOR` int(11) DEFAULT NULL,
  `COLLAPSED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `COMPLETED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `CLOSED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `DELETED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `MARKER_TOP` int(11) DEFAULT NULL,
  `MARKER_LEFT` int(11) DEFAULT NULL,
  `MARKER_WIDTH` int(11) DEFAULT NULL,
  `MARKER_HEIGHT` int(11) DEFAULT NULL,
  `MARKER_ADJUST` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sticker`
--

LOCK TABLES `b_sticker` WRITE;
/*!40000 ALTER TABLE `b_sticker` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sticker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sticker_group_task`
--

DROP TABLE IF EXISTS `b_sticker_group_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sticker_group_task` (
  `GROUP_ID` int(11) NOT NULL,
  `TASK_ID` int(11) NOT NULL,
  PRIMARY KEY (`GROUP_ID`,`TASK_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sticker_group_task`
--

LOCK TABLES `b_sticker_group_task` WRITE;
/*!40000 ALTER TABLE `b_sticker_group_task` DISABLE KEYS */;
INSERT INTO `b_sticker_group_task` VALUES (5,27);
/*!40000 ALTER TABLE `b_sticker_group_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_task`
--

DROP TABLE IF EXISTS `b_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_task` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `LETTER` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SYS` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BINDING` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'module',
  PRIMARY KEY (`ID`),
  KEY `ix_task` (`MODULE_ID`,`BINDING`,`LETTER`,`SYS`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_task`
--

LOCK TABLES `b_task` WRITE;
/*!40000 ALTER TABLE `b_task` DISABLE KEYS */;
INSERT INTO `b_task` VALUES (1,'main_denied','D','main','Y',NULL,'module'),(2,'main_change_profile','P','main','Y',NULL,'module'),(3,'main_view_all_settings','R','main','Y',NULL,'module'),(4,'main_view_all_settings_change_profile','T','main','Y',NULL,'module'),(5,'main_edit_subordinate_users','V','main','Y',NULL,'module'),(6,'main_full_access','W','main','Y',NULL,'module'),(7,'fm_folder_access_denied','D','main','Y',NULL,'file'),(8,'fm_folder_access_read','R','main','Y',NULL,'file'),(9,'fm_folder_access_write','W','main','Y',NULL,'file'),(10,'fm_folder_access_full','X','main','Y',NULL,'file'),(11,'fm_folder_access_workflow','U','main','Y',NULL,'file'),(12,'clouds_denied','D','clouds','Y',NULL,'module'),(13,'clouds_browse','F','clouds','Y',NULL,'module'),(14,'clouds_upload','U','clouds','Y',NULL,'module'),(15,'clouds_full_access','W','clouds','Y',NULL,'module'),(16,'fileman_denied','D','fileman','Y','','module'),(17,'fileman_allowed_folders','F','fileman','Y','','module'),(18,'fileman_full_access','W','fileman','Y','','module'),(19,'medialib_denied','D','fileman','Y','','medialib'),(20,'medialib_view','F','fileman','Y','','medialib'),(21,'medialib_only_new','R','fileman','Y','','medialib'),(22,'medialib_edit_items','V','fileman','Y','','medialib'),(23,'medialib_editor','W','fileman','Y','','medialib'),(24,'medialib_full','X','fileman','Y','','medialib'),(25,'stickers_denied','D','fileman','Y','','stickers'),(26,'stickers_read','R','fileman','Y','','stickers'),(27,'stickers_edit','W','fileman','Y','','stickers'),(28,'iblock_deny','D','iblock','Y',NULL,'iblock'),(29,'iblock_read','R','iblock','Y',NULL,'iblock'),(30,'iblock_element_add','E','iblock','Y',NULL,'iblock'),(31,'iblock_admin_read','S','iblock','Y',NULL,'iblock'),(32,'iblock_admin_add','T','iblock','Y',NULL,'iblock'),(33,'iblock_limited_edit','U','iblock','Y',NULL,'iblock'),(34,'iblock_full_edit','W','iblock','Y',NULL,'iblock'),(35,'iblock_full','X','iblock','Y',NULL,'iblock'),(36,'seo_denied','D','seo','Y','','module'),(37,'seo_edit','F','seo','Y','','module'),(38,'seo_full_access','W','seo','Y','','module'),(39,'Контент-редакторы','Q','main','N','Разрешено изменять информацию в своем профайле. Управление кешем','module');
/*!40000 ALTER TABLE `b_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_task_operation`
--

DROP TABLE IF EXISTS `b_task_operation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_task_operation` (
  `TASK_ID` int(18) NOT NULL,
  `OPERATION_ID` int(18) NOT NULL,
  PRIMARY KEY (`TASK_ID`,`OPERATION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_task_operation`
--

LOCK TABLES `b_task_operation` WRITE;
/*!40000 ALTER TABLE `b_task_operation` DISABLE KEYS */;
INSERT INTO `b_task_operation` VALUES (2,2),(2,3),(3,2),(3,4),(3,5),(3,6),(3,7),(4,2),(4,3),(4,4),(4,5),(4,6),(4,7),(5,2),(5,3),(5,5),(5,6),(5,7),(5,8),(5,9),(6,2),(6,3),(6,4),(6,5),(6,6),(6,7),(6,10),(6,11),(6,12),(6,13),(6,14),(6,15),(6,16),(6,17),(6,18),(8,19),(8,20),(8,21),(9,19),(9,20),(9,21),(9,22),(9,23),(9,24),(9,25),(9,26),(9,27),(9,28),(9,29),(9,30),(9,31),(9,32),(9,33),(9,34),(10,19),(10,20),(10,21),(10,22),(10,23),(10,24),(10,25),(10,26),(10,27),(10,28),(10,29),(10,30),(10,31),(10,32),(10,33),(10,34),(10,35),(11,19),(11,20),(11,21),(11,24),(11,28),(13,36),(14,36),(14,37),(15,36),(15,37),(15,38),(17,41),(17,42),(17,43),(17,44),(17,45),(17,46),(17,47),(17,49),(17,50),(18,39),(18,40),(18,41),(18,42),(18,43),(18,44),(18,45),(18,46),(18,47),(18,48),(18,49),(18,50),(18,51),(20,52),(21,52),(21,53),(21,57),(22,52),(22,57),(22,58),(22,59),(23,52),(23,53),(23,54),(23,55),(23,57),(23,58),(23,59),(24,52),(24,53),(24,54),(24,55),(24,56),(24,57),(24,58),(24,59),(26,60),(27,60),(27,61),(27,62),(27,63),(29,64),(29,65),(30,66),(31,64),(31,65),(31,67),(32,64),(32,65),(32,66),(32,67),(33,64),(33,65),(33,66),(33,67),(33,68),(33,69),(33,70),(33,71),(34,64),(34,65),(34,66),(34,67),(34,68),(34,69),(34,70),(34,71),(34,72),(34,73),(34,74),(34,75),(35,64),(35,65),(35,66),(35,67),(35,68),(35,69),(35,70),(35,71),(35,72),(35,73),(35,74),(35,75),(35,76),(35,77),(35,78),(35,79),(35,80),(35,81),(37,83),(38,82),(38,83),(39,2),(39,3),(39,14);
/*!40000 ALTER TABLE `b_task_operation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_undo`
--

DROP TABLE IF EXISTS `b_undo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_undo` (
  `ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UNDO_TYPE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UNDO_HANDLER` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONTENT` mediumtext COLLATE utf8_unicode_ci,
  `USER_ID` int(11) DEFAULT NULL,
  `TIMESTAMP_X` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_undo`
--

LOCK TABLES `b_undo` WRITE;
/*!40000 ALTER TABLE `b_undo` DISABLE KEYS */;
INSERT INTO `b_undo` VALUES ('20a5135707c002aa822d09b65ef05dcf3','main','autosave','CAutoSave::_Restore','a:75:{s:6:\"ACTIVE\";s:1:\"Y\";s:11:\"ACTIVE_FROM\";s:0:\"\";s:9:\"ACTIVE_TO\";s:0:\"\";s:4:\"NAME\";s:20:\"Экскурсия 5\";s:4:\"CODE\";s:32:\"/excursion/entertaining/all_goa/\";s:4:\"SORT\";s:3:\"500\";s:21:\"PROPX000091X2X000093X\";s:0:\"\";s:37:\"PROPX000091X2X000093XX000091XX000093X\";a:1:{i:0;s:1:\"1\";}s:37:\"PROPX000091X5X000093XX000091XX000093X\";a:1:{i:0;s:1:\"1\";}s:69:\"PROPX000091X3X000093XX000091X16X000058X3X000093XX000091XVALUEX000093X\";s:0:\"\";s:26:\"PROP_3__16_3__VALUE__TYPE_\";s:0:\"\";s:26:\"PROP_3__16_3__VALUE__TEXT_\";s:2137:\"<div class=\"program-table\">\n    <div class=\"program-table__header\">День 1</div>\n\n    <div class=\"program-table__line\">\n      <div class=\"program-table__time\">08.00</div>\n      <div class=\"program-table__text\">Отправление из отеля</div>\n    </div>\n\n    <div class=\"program-table__line\">\n      <div class=\"program-table__time\">10.00</div>\n      <div class=\"program-table__text\">Прибытие на пляж Палолем</div>\n    </div>\n\n    <div class=\"program-table__line\">\n      <div class=\"program-table__time\">10.30 - 12.00</div>\n      <div class=\"program-table__text\">Прогулка на лодке на остров Бабочек</div>\n    </div>\n\n    <div class=\"program-table__line\">\n      <div class=\"program-table__time\">12.00 - 15.00</div>\n      <div class=\"program-table__text\">Обед и свободное время на пляже</div>\n    </div>\n\n    <div class=\"program-table__line\">\n      <div class=\"program-table__time\">15.00</div>\n      <div class=\"program-table__text\">Отправление на пляж Кола (20 минут в пути)</div>\n    </div>\n\n    <div class=\"program-table__line\">\n      <div class=\"program-table__time\">15.20 - 17.00</div>\n      <div class=\"program-table__text\">Свободное время на пляже Кола</div>\n    </div>\n\n    <div class=\"program-table__line\">\n      <div class=\"program-table__time\">17.00</div>\n      <div class=\"program-table__text\">Отправление в форт Кабо де Рама</div>\n    </div>\n\n    <div class=\"program-table__line\">\n      <div class=\"program-table__time\">17.15 - 18.30</div>\n      <div class=\"program-table__text\">Осмотр форта Кабо де Рама и встреча заката</div>\n    </div>\n  </div>\n\n  <p>В экскурсию включено:<br />Трансфер на собственном транспорте с кондиционером, страховка, услуги русского гида, прогулка на лодке на остров.</p>\n  <p>Продолжительность: c 8.00 до 20.30</p>\n  <p>Время в пути: 2 часа</p>\";s:69:\"PROPX000091X4X000093XX000091X16X000058X4X000093XX000091XVALUEX000093X\";s:0:\"\";s:26:\"PROP_4__16_4__VALUE__TYPE_\";s:0:\"\";s:26:\"PROP_4__16_4__VALUE__TEXT_\";s:3057:\"<p>ЦЕНЫ на экскурсию, исходя из количества туристов в машине.<br />Все наши автомобили рассчитаны на 6-8 туристов + русский гид, миниавтобусы на 12 туристов + русский гид. Если Вы хотите большего комфорта, Вам следует выбрать размещение по 4 человека в автомобиле.</p>\n  <p>Мы сами формируем группы. Вам достаточно сообщить день планируемой поездки и количество туристов в автомобиле, которое вас устроит.</p>\n  <p>Вы можете заказать экскурсию непосредственно в Гоа по тел: +91 8888 70 40 05, +91 8888 71 79 22<br />либо воспользоваться формой заказа.</p>\n\n  <ul>\n    <li>Заказывая экскурсии на сайте, вы получаете 5% скидку</li>\n    <li>Для детей до 12 лет действует скидка 50%</li>\n    <li>Скидки и акции на экскурсии без русского гида не распространяются.</li>\n    <li>Скидки по акциям не суммируются.</li>\n  </ul>\n\n  <h3>Для групп от 6 человек цены устанавливаются индивидуально на все экскурсии!</h3>\n\n  <div class=\"price-table\">\n    <div class=\"price-table__line price-table--line-header\">\n      <div class=\"price-table__cell\">\n        <div class=\"price-table--big\">6 - 12 человек</div>\n        <div>за 1 человека</div>\n      </div>\n      <div class=\"price-table__cell\">\n        <div class=\"price-table--big\">5 человек</div>\n        <div>за 1 человека</div>\n      </div>\n    </div>\n\n    <div class=\"price-table__body\">\n      <div class=\"price-table__line\">\n        <div class=\"price-table__cell\">\n          <div class=\"price-table--middle\">45$</div>\n        </div>\n        <div class=\"price-table__cell\">\n          <div class=\"price-table--middle\">50$</div>\n        </div>\n      </div>\n\n      <div class=\"price-table__line\">\n        <div class=\"price-table__cell\">\n          <div class=\"price-table--big\">40$</div>\n          <div class=\"price-table--white\">При заказе с сайта</div>\n        </div>\n        <div class=\"price-table__cell\">\n          <div class=\"price-table--big\">45$</div>\n          <div class=\"price-table--white\">При заказе с сайта</div>\n        </div>\n      </div>\n\n      <div class=\"price-table__line\">\n        <div class=\"price-table__cell\">\n          <div class=\"price-table--middle\">20$</div>\n          <div>Для детей от 12 лет</div>\n        </div>\n        <div class=\"price-table__cell\">\n          <div class=\"price-table--middle\">20$</div>\n          <div>Для детей от 12 лет</div>\n        </div>\n      </div>\n    </div>\n  </div>\";s:38:\"PROPX000091X6X000093XX000091X1X000093X\";s:2:\"19\";s:38:\"PROPX000091X6X000093XX000091X2X000093X\";s:2:\"20\";s:39:\"PROPX000091X6X000093XX000091Xn0X000093X\";s:0:\"\";s:39:\"PROPX000091X6X000093XX000091Xn1X000093X\";s:0:\"\";s:39:\"PROPX000091X6X000093XX000091Xn2X000093X\";s:0:\"\";s:39:\"PROPX000091X6X000093XX000091Xn3X000093X\";s:0:\"\";s:39:\"PROPX000091X6X000093XX000091Xn4X000093X\";s:0:\"\";s:15:\"PREVIEW_PICTURE\";s:1:\"6\";s:21:\"PREVIEW_PICTURE_descr\";s:0:\"\";s:25:\"bxu_filesX000091XX000093X\";a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}s:17:\"PREVIEW_TEXT_TYPE\";s:0:\"\";s:12:\"PREVIEW_TEXT\";s:0:\"\";s:16:\"DETAIL_TEXT_TYPE\";s:0:\"\";s:11:\"DETAIL_TEXT\";s:4007:\"<h3 class=\"right-side__red\">Для групп от 6 человек цены устанавливаются индивидуально на все экскурсии!</h3>\n  <p>Если вы уже в Гоа, обязательно побывайте на одном из красивейших пляжей Южного Гоа - Палолеме и самом тихом и безлюдном пляже - Кола. Вы совершите водную прогулку и понаблюдаете за игрой дельфинов. Побываете в древнейшем форте Кабо де Рама (Kabo De Rama) и узнаете интересные легенды о Раме и Сите из великого эпоса Рамаяна, связанные с мысом Рамы. Поднимитесь на башню, откуда открывается восхитительный вид на бесконечную береговую линию.</p>\n  <p>Мир создан для любви и гармонии с собой и окружающим миром. Вы обязательно убедитесь в этом, побывав здесь.</p>\n<div class=\"slider-exs marg-t-40\">\n    <div class=\"bxslider_exs_1\">\n      <div class=\"slider-exs__item\">\n        <img src=\"/upload/iblock/2b7/2b733fc87a13a23b87607a42de5aa8cd.jpg\" alt=\"\" />\n      </div>\n\n      <div class=\"slider-exs__item\">\n        <img src=\"/upload/iblock/2b7/2b733fc87a13a23b87607a42de5aa8cd.jpg\" alt=\"\" />\n      </div>\n    </div>\n\n    <div class=\"slider-exs__open visible-adaptive-768\">\n      <div class=\"slider-exs__open-icon\"><object type=\"image/svg+xml\" data=\"/local/templates/goa/svg/faceless.svg\">Your browser does not support SVGs</object></div>\n      <a href=\"\" class=\"slider-exs__open-text\">Открыть галерею</a>\n    </div>\n  </div>\n\n  <h3>Пляж Палолем</h3>\n  <p>Один из самых красивых пляжей Гоа. Здесь вы найдете не только ласковое море, бесконечный белоснежный пляж, кокосовые пальмы у самой кромки моря, но и необычную очень уютную атмосферу. На лодке мы выйдем в море, полюбуемся дельфинами, доплывем до острова. Вы насладитесь красотой вокруг, бредя по нежнейшему песку.</p>\n\n  <h3>Пляж Кола</h3>\n  <p>Романтичный, удивительный, уединенный с нетронутой береговой линией и ,конечно, просто красивый, с лагуной, где можно погрузиться в спокойное море.</p>\n\n  <h3>Форт Кабо де Рама</h3>\n  <p>Одна из старейших крепостей в Гоа.<br />Форт Кабо де Рама имеет интересную историю. Мы обязательно расскажем вам, связаные с ним увлекательные легенды и вы почувствуете мистическую атмосферу мыса Рамы. В этих местах провели 14 лет в изгнании великий герой Рамаяны Рама и его жена Сита. Фортом владели индийские правители и мусульманские шахи, в 1763 году Кабо де Рама был захвачен португальцами. Часть крепости сохранилась, часть разрушена. Белоснежная церковь Святого Антониа (Santo Antonio) внутри форта, башни, большие пушки, колодец, в который подавалась горячая и холодная вода из природных источников, великолепный вид, открывающийся со стен крепости.</p>\";s:77:\"IPROPERTY_TEMPLATESX000091XELEMENT_META_TITLEX000093XX000091XTEMPLATEX000093X\";s:0:\"\";s:78:\"IPROPERTY_TEMPLATESX000091XELEMENT_META_TITLEX000093XX000091XINHERITEDX000093X\";s:0:\"\";s:80:\"IPROPERTY_TEMPLATESX000091XELEMENT_META_KEYWORDSX000093XX000091XTEMPLATEX000093X\";s:0:\"\";s:81:\"IPROPERTY_TEMPLATESX000091XELEMENT_META_KEYWORDSX000093XX000091XINHERITEDX000093X\";s:0:\"\";s:83:\"IPROPERTY_TEMPLATESX000091XELEMENT_META_DESCRIPTIONX000093XX000091XTEMPLATEX000093X\";s:0:\"\";s:84:\"IPROPERTY_TEMPLATESX000091XELEMENT_META_DESCRIPTIONX000093XX000091XINHERITEDX000093X\";s:0:\"\";s:77:\"IPROPERTY_TEMPLATESX000091XELEMENT_PAGE_TITLEX000093XX000091XTEMPLATEX000093X\";s:0:\"\";s:78:\"IPROPERTY_TEMPLATESX000091XELEMENT_PAGE_TITLEX000093XX000091XINHERITEDX000093X\";s:0:\"\";s:91:\"IPROPERTY_TEMPLATESX000091XELEMENT_PREVIEW_PICTURE_FILE_ALTX000093XX000091XTEMPLATEX000093X\";s:0:\"\";s:92:\"IPROPERTY_TEMPLATESX000091XELEMENT_PREVIEW_PICTURE_FILE_ALTX000093XX000091XINHERITEDX000093X\";s:0:\"\";s:93:\"IPROPERTY_TEMPLATESX000091XELEMENT_PREVIEW_PICTURE_FILE_TITLEX000093XX000091XTEMPLATEX000093X\";s:0:\"\";s:94:\"IPROPERTY_TEMPLATESX000091XELEMENT_PREVIEW_PICTURE_FILE_TITLEX000093XX000091XINHERITEDX000093X\";s:0:\"\";s:92:\"IPROPERTY_TEMPLATESX000091XELEMENT_PREVIEW_PICTURE_FILE_NAMEX000093XX000091XTEMPLATEX000093X\";s:0:\"\";s:93:\"IPROPERTY_TEMPLATESX000091XELEMENT_PREVIEW_PICTURE_FILE_NAMEX000093XX000091XINHERITEDX000093X\";s:0:\"\";s:89:\"IPROPERTY_TEMPLATESX000091XELEMENT_PREVIEW_PICTURE_FILE_NAMEX000093XX000091XLOWERX000093X\";s:0:\"\";s:92:\"IPROPERTY_TEMPLATESX000091XELEMENT_PREVIEW_PICTURE_FILE_NAMEX000093XX000091XTRANSLITX000093X\";s:0:\"\";s:89:\"IPROPERTY_TEMPLATESX000091XELEMENT_PREVIEW_PICTURE_FILE_NAMEX000093XX000091XSPACEX000093X\";s:0:\"\";s:90:\"IPROPERTY_TEMPLATESX000091XELEMENT_DETAIL_PICTURE_FILE_ALTX000093XX000091XTEMPLATEX000093X\";s:0:\"\";s:91:\"IPROPERTY_TEMPLATESX000091XELEMENT_DETAIL_PICTURE_FILE_ALTX000093XX000091XINHERITEDX000093X\";s:0:\"\";s:92:\"IPROPERTY_TEMPLATESX000091XELEMENT_DETAIL_PICTURE_FILE_TITLEX000093XX000091XTEMPLATEX000093X\";s:0:\"\";s:93:\"IPROPERTY_TEMPLATESX000091XELEMENT_DETAIL_PICTURE_FILE_TITLEX000093XX000091XINHERITEDX000093X\";s:0:\"\";s:91:\"IPROPERTY_TEMPLATESX000091XELEMENT_DETAIL_PICTURE_FILE_NAMEX000093XX000091XTEMPLATEX000093X\";s:0:\"\";s:92:\"IPROPERTY_TEMPLATESX000091XELEMENT_DETAIL_PICTURE_FILE_NAMEX000093XX000091XINHERITEDX000093X\";s:0:\"\";s:88:\"IPROPERTY_TEMPLATESX000091XELEMENT_DETAIL_PICTURE_FILE_NAMEX000093XX000091XLOWERX000093X\";s:0:\"\";s:91:\"IPROPERTY_TEMPLATESX000091XELEMENT_DETAIL_PICTURE_FILE_NAMEX000093XX000091XTRANSLITX000093X\";s:0:\"\";s:88:\"IPROPERTY_TEMPLATESX000091XELEMENT_DETAIL_PICTURE_FILE_NAMEX000093XX000091XSPACEX000093X\";s:0:\"\";s:4:\"TAGS\";s:51:\"историческая, 2 дня, с детьми\";s:7:\"ck_TAGS\";s:0:\"\";s:14:\"IBLOCK_SECTION\";a:1:{i:0;s:1:\"0\";}s:30:\"IBLOCK_SECTIONX000091XX000093X\";a:1:{i:0;s:0:\"\";}s:4:\"save\";s:0:\"\";s:5:\"apply\";s:0:\"\";s:8:\"dontsave\";s:0:\"\";s:12:\"save_and_add\";s:0:\"\";s:25:\"form_element_5_active_tab\";s:5:\"edit6\";s:20:\"find_section_section\";s:2:\"-1\";s:6:\"filter\";s:1:\"Y\";s:10:\"set_filter\";s:1:\"Y\";s:12:\"linked_state\";s:1:\"N\";s:6:\"Update\";s:1:\"Y\";s:4:\"from\";s:0:\"\";s:2:\"WF\";s:1:\"N\";s:10:\"return_url\";s:0:\"\";s:2:\"ID\";s:2:\"16\";s:17:\"IBLOCK_SECTION_ID\";s:1:\"0\";s:6:\"TMP_ID\";s:1:\"0\";}',1,1477257769);
/*!40000 ALTER TABLE `b_undo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_urlpreview_metadata`
--

DROP TABLE IF EXISTS `b_urlpreview_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_urlpreview_metadata` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `URL` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  `DATE_INSERT` datetime NOT NULL,
  `DATE_EXPIRE` datetime DEFAULT NULL,
  `TITLE` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `IMAGE_ID` int(11) DEFAULT NULL,
  `IMAGE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EMBED` mediumtext COLLATE utf8_unicode_ci,
  `EXTRA` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`),
  KEY `IX_URLPREVIEW_METADATA_URL` (`URL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_urlpreview_metadata`
--

LOCK TABLES `b_urlpreview_metadata` WRITE;
/*!40000 ALTER TABLE `b_urlpreview_metadata` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_urlpreview_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_urlpreview_route`
--

DROP TABLE IF EXISTS `b_urlpreview_route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_urlpreview_route` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ROUTE` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `MODULE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CLASS` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `PARAMETERS` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UX_URLPREVIEW_ROUTE_ROUTE` (`ROUTE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_urlpreview_route`
--

LOCK TABLES `b_urlpreview_route` WRITE;
/*!40000 ALTER TABLE `b_urlpreview_route` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_urlpreview_route` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user`
--

DROP TABLE IF EXISTS `b_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `LOGIN` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `PASSWORD` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CHECKWORD` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EMAIL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_LOGIN` datetime DEFAULT NULL,
  `DATE_REGISTER` datetime NOT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_PROFESSION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_WWW` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_ICQ` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_GENDER` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_BIRTHDATE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_PHOTO` int(18) DEFAULT NULL,
  `PERSONAL_PHONE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_FAX` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_MOBILE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_PAGER` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_STREET` text COLLATE utf8_unicode_ci,
  `PERSONAL_MAILBOX` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_CITY` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_STATE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_ZIP` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_COUNTRY` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_NOTES` text COLLATE utf8_unicode_ci,
  `WORK_COMPANY` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_DEPARTMENT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_POSITION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_WWW` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_PHONE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_FAX` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_PAGER` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_STREET` text COLLATE utf8_unicode_ci,
  `WORK_MAILBOX` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_CITY` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_STATE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_ZIP` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_COUNTRY` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_PROFILE` text COLLATE utf8_unicode_ci,
  `WORK_LOGO` int(18) DEFAULT NULL,
  `WORK_NOTES` text COLLATE utf8_unicode_ci,
  `ADMIN_NOTES` text COLLATE utf8_unicode_ci,
  `STORED_HASH` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_BIRTHDAY` date DEFAULT NULL,
  `EXTERNAL_AUTH_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CHECKWORD_TIME` datetime DEFAULT NULL,
  `SECOND_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONFIRM_CODE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LOGIN_ATTEMPTS` int(18) DEFAULT NULL,
  `LAST_ACTIVITY_DATE` datetime DEFAULT NULL,
  `AUTO_TIME_ZONE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TIME_ZONE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TIME_ZONE_OFFSET` int(18) DEFAULT NULL,
  `TITLE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BX_USER_ID` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ix_login` (`LOGIN`,`EXTERNAL_AUTH_ID`),
  KEY `ix_b_user_email` (`EMAIL`),
  KEY `ix_b_user_activity_date` (`LAST_ACTIVITY_DATE`),
  KEY `IX_B_USER_XML_ID` (`XML_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user`
--

LOCK TABLES `b_user` WRITE;
/*!40000 ALTER TABLE `b_user` DISABLE KEYS */;
INSERT INTO `b_user` VALUES (1,'2016-08-20 12:46:25','admin','2KsTf1Uz8adbfac6ba74d97c70016c133a2ab2e0','b0mpNbrSeb6744d0aadbba83261c0bd0499b2348','Y','Диана','Аникеева','diana_box@list.ru','2016-10-24 14:56:21','2016-08-20 15:46:25',NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-08-20 15:46:25',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'9379debf55c6664eea5d547dde167416',NULL);
/*!40000 ALTER TABLE `b_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_access`
--

DROP TABLE IF EXISTS `b_user_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user_access` (
  `USER_ID` int(11) DEFAULT NULL,
  `PROVIDER_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACCESS_CODE` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `ix_ua_user_provider` (`USER_ID`,`PROVIDER_ID`),
  KEY `ix_ua_user_access` (`USER_ID`,`ACCESS_CODE`),
  KEY `ix_ua_access` (`ACCESS_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_access`
--

LOCK TABLES `b_user_access` WRITE;
/*!40000 ALTER TABLE `b_user_access` DISABLE KEYS */;
INSERT INTO `b_user_access` VALUES (0,'group','G2'),(1,'group','G1'),(1,'group','G3'),(1,'group','G4'),(1,'group','G2'),(1,'user','U1');
/*!40000 ALTER TABLE `b_user_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_access_check`
--

DROP TABLE IF EXISTS `b_user_access_check`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user_access_check` (
  `USER_ID` int(11) DEFAULT NULL,
  `PROVIDER_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `ix_uac_user_provider` (`USER_ID`,`PROVIDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_access_check`
--

LOCK TABLES `b_user_access_check` WRITE;
/*!40000 ALTER TABLE `b_user_access_check` DISABLE KEYS */;
INSERT INTO `b_user_access_check` VALUES (1,'group'),(1,'user');
/*!40000 ALTER TABLE `b_user_access_check` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_counter`
--

DROP TABLE IF EXISTS `b_user_counter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user_counter` (
  `USER_ID` int(18) NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '**',
  `CODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CNT` int(18) NOT NULL DEFAULT '0',
  `LAST_DATE` datetime DEFAULT NULL,
  `TIMESTAMP_X` datetime NOT NULL DEFAULT '3000-01-01 00:00:00',
  `TAG` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PARAMS` text COLLATE utf8_unicode_ci,
  `SENT` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`USER_ID`,`SITE_ID`,`CODE`),
  KEY `ix_buc_tag` (`TAG`),
  KEY `ix_buc_code` (`CODE`),
  KEY `ix_buc_ts` (`TIMESTAMP_X`),
  KEY `ix_buc_sent_userid` (`SENT`,`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_counter`
--

LOCK TABLES `b_user_counter` WRITE;
/*!40000 ALTER TABLE `b_user_counter` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_user_counter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_digest`
--

DROP TABLE IF EXISTS `b_user_digest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user_digest` (
  `USER_ID` int(11) NOT NULL,
  `DIGEST_HA1` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_digest`
--

LOCK TABLES `b_user_digest` WRITE;
/*!40000 ALTER TABLE `b_user_digest` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_user_digest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_field`
--

DROP TABLE IF EXISTS `b_user_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user_field` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENTITY_ID` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FIELD_NAME` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SORT` int(11) DEFAULT NULL,
  `MULTIPLE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `MANDATORY` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SHOW_FILTER` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SHOW_IN_LIST` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `EDIT_IN_LIST` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `IS_SEARCHABLE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SETTINGS` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_user_type_entity` (`ENTITY_ID`,`FIELD_NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_field`
--

LOCK TABLES `b_user_field` WRITE;
/*!40000 ALTER TABLE `b_user_field` DISABLE KEYS */;
INSERT INTO `b_user_field` VALUES (1,'HLBLOCK_1','UF_USER_NAME','string','',30,'N','N','N','Y','Y','N','a:6:{s:4:\"SIZE\";i:20;s:4:\"ROWS\";i:1;s:6:\"REGEXP\";s:0:\"\";s:10:\"MIN_LENGTH\";i:0;s:10:\"MAX_LENGTH\";i:0;s:13:\"DEFAULT_VALUE\";s:0:\"\";}'),(2,'HLBLOCK_1','UF_DATE','datetime','',20,'N','N','N','Y','Y','N','a:1:{s:13:\"DEFAULT_VALUE\";a:2:{s:4:\"TYPE\";s:3:\"NOW\";s:5:\"VALUE\";s:0:\"\";}}'),(3,'HLBLOCK_1','UF_TEXT','string','',60,'N','N','N','Y','Y','N','a:6:{s:4:\"SIZE\";i:50;s:4:\"ROWS\";i:10;s:6:\"REGEXP\";s:0:\"\";s:10:\"MIN_LENGTH\";i:0;s:10:\"MAX_LENGTH\";i:0;s:13:\"DEFAULT_VALUE\";s:0:\"\";}'),(4,'HLBLOCK_1','UF_USER_SOC_URL','string','',40,'N','N','N','Y','Y','N','a:6:{s:4:\"SIZE\";i:20;s:4:\"ROWS\";i:1;s:6:\"REGEXP\";s:0:\"\";s:10:\"MIN_LENGTH\";i:0;s:10:\"MAX_LENGTH\";i:0;s:13:\"DEFAULT_VALUE\";s:0:\"\";}'),(5,'HLBLOCK_1','UF_IMG','file','',50,'Y','N','N','Y','Y','N','a:6:{s:4:\"SIZE\";i:20;s:10:\"LIST_WIDTH\";i:200;s:11:\"LIST_HEIGHT\";i:200;s:13:\"MAX_SHOW_SIZE\";i:0;s:16:\"MAX_ALLOWED_SIZE\";i:0;s:10:\"EXTENSIONS\";a:0:{}}'),(6,'HLBLOCK_1','UF_ACTIVE','boolean','',10,'N','N','N','Y','Y','N','a:2:{s:13:\"DEFAULT_VALUE\";s:1:\"1\";s:7:\"DISPLAY\";s:8:\"CHECKBOX\";}'),(7,'HLBLOCK_1','UF_TOUR_ID','iblock_element','',25,'Y','N','I','Y','Y','N','a:5:{s:7:\"DISPLAY\";s:4:\"LIST\";s:11:\"LIST_HEIGHT\";i:5;s:9:\"IBLOCK_ID\";i:5;s:13:\"DEFAULT_VALUE\";s:0:\"\";s:13:\"ACTIVE_FILTER\";s:1:\"N\";}'),(8,'HLBLOCK_1','UF_ADMIN_REPLY','string','',200,'N','N','N','Y','Y','N','a:6:{s:4:\"SIZE\";i:50;s:4:\"ROWS\";i:10;s:6:\"REGEXP\";s:0:\"\";s:10:\"MIN_LENGTH\";i:0;s:10:\"MAX_LENGTH\";i:0;s:13:\"DEFAULT_VALUE\";s:0:\"\";}'),(9,'HLBLOCK_1','UF_ADMIN_REPLY_DATE','datetime','',100,'N','N','N','Y','Y','N','a:1:{s:13:\"DEFAULT_VALUE\";a:2:{s:4:\"TYPE\";s:3:\"NOW\";s:5:\"VALUE\";s:0:\"\";}}'),(10,'HLBLOCK_1','UF_IMG_DESC','string','',55,'Y','N','N','Y','Y','N','a:6:{s:4:\"SIZE\";i:20;s:4:\"ROWS\";i:1;s:6:\"REGEXP\";s:0:\"\";s:10:\"MIN_LENGTH\";i:0;s:10:\"MAX_LENGTH\";i:0;s:13:\"DEFAULT_VALUE\";s:0:\"\";}');
/*!40000 ALTER TABLE `b_user_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_field_confirm`
--

DROP TABLE IF EXISTS `b_user_field_confirm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user_field_confirm` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(18) NOT NULL,
  `DATE_CHANGE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `FIELD` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `FIELD_VALUE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CONFIRM_CODE` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_user_field_confirm1` (`USER_ID`,`CONFIRM_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_field_confirm`
--

LOCK TABLES `b_user_field_confirm` WRITE;
/*!40000 ALTER TABLE `b_user_field_confirm` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_user_field_confirm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_field_enum`
--

DROP TABLE IF EXISTS `b_user_field_enum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user_field_enum` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_FIELD_ID` int(11) DEFAULT NULL,
  `VALUE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DEF` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SORT` int(11) NOT NULL DEFAULT '500',
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_user_field_enum` (`USER_FIELD_ID`,`XML_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_field_enum`
--

LOCK TABLES `b_user_field_enum` WRITE;
/*!40000 ALTER TABLE `b_user_field_enum` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_user_field_enum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_field_lang`
--

DROP TABLE IF EXISTS `b_user_field_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user_field_lang` (
  `USER_FIELD_ID` int(11) NOT NULL DEFAULT '0',
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `EDIT_FORM_LABEL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LIST_COLUMN_LABEL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LIST_FILTER_LABEL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ERROR_MESSAGE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HELP_MESSAGE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`USER_FIELD_ID`,`LANGUAGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_field_lang`
--

LOCK TABLES `b_user_field_lang` WRITE;
/*!40000 ALTER TABLE `b_user_field_lang` DISABLE KEYS */;
INSERT INTO `b_user_field_lang` VALUES (1,'en','Автор отзыва','Автор отзыва','','',''),(1,'ru','Автор отзыва','Автор отзыва','','',''),(2,'en','Дата отзыва','Дата отзыва','','',''),(2,'ru','Дата отзыва','Дата отзыва','','',''),(3,'en','Текст','Текст','','',''),(3,'ru','Текст','Текст','','',''),(4,'en','Ссылка на профиль в соц.сети автора отзыва','Ссылка на профиль','','',''),(4,'ru','Ссылка на профиль в соц.сети автора отзыва','Ссылка на профиль','','',''),(5,'en','Фото ','Фото ','','',''),(5,'ru','Фото ','Фото ','','',''),(6,'en','Активность','Активность','','',''),(6,'ru','Активность','Активность','','',''),(7,'en','Экскурсия','Экскурсия','','',''),(7,'ru','Экскурсия','Экскурсия','','',''),(8,'en','Ответ админа','Ответ админа','','',''),(8,'ru','Ответ админа','Ответ админа','','',''),(9,'en','Дата ответа админа','Дата ответа админа','','',''),(9,'ru','Дата ответа админа','Дата ответа админа','','',''),(10,'en','Описания к фото','Описания к фото','','','В том же порядке, что и фото'),(10,'ru','Описания к фото','Описания к фото','','','В том же порядке, что и фото');
/*!40000 ALTER TABLE `b_user_field_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_group`
--

DROP TABLE IF EXISTS `b_user_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user_group` (
  `USER_ID` int(18) NOT NULL,
  `GROUP_ID` int(18) NOT NULL,
  `DATE_ACTIVE_FROM` datetime DEFAULT NULL,
  `DATE_ACTIVE_TO` datetime DEFAULT NULL,
  UNIQUE KEY `ix_user_group` (`USER_ID`,`GROUP_ID`),
  KEY `ix_user_group_group` (`GROUP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_group`
--

LOCK TABLES `b_user_group` WRITE;
/*!40000 ALTER TABLE `b_user_group` DISABLE KEYS */;
INSERT INTO `b_user_group` VALUES (1,1,NULL,NULL),(1,3,NULL,NULL),(1,4,NULL,NULL);
/*!40000 ALTER TABLE `b_user_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_hit_auth`
--

DROP TABLE IF EXISTS `b_user_hit_auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user_hit_auth` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(18) NOT NULL,
  `HASH` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `URL` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TIMESTAMP_X` datetime NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_USER_HIT_AUTH_1` (`HASH`),
  KEY `IX_USER_HIT_AUTH_2` (`USER_ID`),
  KEY `IX_USER_HIT_AUTH_3` (`TIMESTAMP_X`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_hit_auth`
--

LOCK TABLES `b_user_hit_auth` WRITE;
/*!40000 ALTER TABLE `b_user_hit_auth` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_user_hit_auth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_option`
--

DROP TABLE IF EXISTS `b_user_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user_option` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) DEFAULT NULL,
  `CATEGORY` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `VALUE` mediumtext COLLATE utf8_unicode_ci,
  `COMMON` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`ID`),
  KEY `ix_user_option_user` (`USER_ID`,`CATEGORY`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_option`
--

LOCK TABLES `b_user_option` WRITE;
/*!40000 ALTER TABLE `b_user_option` DISABLE KEYS */;
INSERT INTO `b_user_option` VALUES (1,NULL,'intranet','~gadgets_admin_index','a:1:{i:0;a:1:{s:7:\"GADGETS\";a:7:{s:20:\"ADMIN_INFO@333333333\";a:3:{s:6:\"COLUMN\";i:0;s:3:\"ROW\";i:0;s:4:\"HIDE\";s:1:\"N\";}s:19:\"HTML_AREA@444444444\";a:5:{s:6:\"COLUMN\";i:0;s:3:\"ROW\";i:1;s:4:\"HIDE\";s:1:\"N\";s:8:\"USERDATA\";a:1:{s:7:\"content\";s:797:\"<table class=\"bx-gadgets-info-site-table\" cellspacing=\"0\"><tr>	<td class=\"bx-gadget-gray\">Создатель сайта:</td>	<td>Группа компаний &laquo;1С-Битрикс&raquo;.</td>	<td class=\"bx-gadgets-info-site-logo\" rowspan=\"5\"><img src=\"/bitrix/components/bitrix/desktop/templates/admin/images/site_logo.png\"></td></tr><tr>	<td class=\"bx-gadget-gray\">Адрес сайта:</td>	<td><a href=\"http://www.1c-bitrix.ru\">www.1c-bitrix.ru</a></td></tr><tr>	<td class=\"bx-gadget-gray\">Сайт сдан:</td>	<td>12 декабря 2010 г.</td></tr><tr>	<td class=\"bx-gadget-gray\">Ответственное лицо:</td>	<td>Иван Иванов</td></tr><tr>	<td class=\"bx-gadget-gray\">E-mail:</td>	<td><a href=\"mailto:info@1c-bitrix.ru\">info@1c-bitrix.ru</a></td></tr></table>\";}s:8:\"SETTINGS\";a:1:{s:9:\"TITLE_STD\";s:34:\"Информация о сайте\";}}s:25:\"ADMIN_CHECKLIST@777888999\";a:3:{s:6:\"COLUMN\";i:0;s:3:\"ROW\";i:2;s:4:\"HIDE\";s:1:\"N\";}s:19:\"RSSREADER@777777777\";a:4:{s:6:\"COLUMN\";i:1;s:3:\"ROW\";i:3;s:4:\"HIDE\";s:1:\"N\";s:8:\"SETTINGS\";a:3:{s:9:\"TITLE_STD\";s:33:\"Новости 1С-Битрикс\";s:3:\"CNT\";i:10;s:7:\"RSS_URL\";s:45:\"https://www.1c-bitrix.ru/about/life/news/rss/\";}}s:24:\"ADMIN_SECURITY@555555555\";a:3:{s:6:\"COLUMN\";i:1;s:3:\"ROW\";i:0;s:4:\"HIDE\";s:1:\"N\";}s:23:\"ADMIN_PERFMON@666666666\";a:3:{s:6:\"COLUMN\";i:1;s:3:\"ROW\";i:1;s:4:\"HIDE\";s:1:\"N\";}s:23:\"ADMIN_MARKETPALCE@22549\";a:3:{s:6:\"COLUMN\";i:1;s:3:\"ROW\";i:2;s:4:\"HIDE\";s:1:\"N\";}}}}','Y'),(2,NULL,'main.interface','global','a:1:{s:5:\"theme\";s:3:\"red\";}','Y'),(3,1,'admin_panel','settings','a:2:{s:4:\"edit\";s:3:\"off\";s:9:\"collapsed\";s:2:\"on\";}','N'),(4,1,'favorite','favorite_menu','a:1:{s:5:\"stick\";s:1:\"N\";}','N'),(5,1,'main','helper_hero_admin','a:1:{s:4:\"time\";s:10:\"1477254587\";}','N'),(6,1,'socialservices','networkPopup','a:2:{s:9:\"showcount\";s:1:\"9\";s:8:\"dontshow\";s:1:\"Y\";}','N'),(7,1,'admin_menu','pos','a:1:{s:8:\"sections\";s:240:\"menu_system,menu_site,menu_fileman,menu_iblock,menu_iblock_/info,menu_iblock_/social,menu_iblock_/social/4,menu_iblock_/info/5,menu_util,backup,menu_iblock_/info/3,menu_users,menu_fileman_file_s1_,menu_highloadblock,iblock_admin,menu_search\";}','N'),(8,1,'fileman','code_editor','a:1:{s:5:\"theme\";s:5:\"light\";}','N'),(9,1,'fileman','last_pathes','s:203:\"a:6:{i:0;s:43:\"/bitrix/components/bitrix/search.tags.cloud\";i:1;s:53:\"/bitrix/components/bitrix/search.tags.cloud/templates\";i:2;s:10:\"/excursion\";i:3;s:6:\"/order\";i:4;s:9:\"/contacts\";i:5;s:7:\"/bitrix\";}\";','N'),(10,1,'html_editor','type_selector_PREVIEW_TEXT3','a:1:{s:4:\"type\";s:4:\"html\";}','N'),(11,1,'html_editor','user_settings_','a:2:{s:13:\"taskbar_shown\";s:1:\"1\";s:4:\"view\";s:4:\"code\";}','N'),(12,1,'html_editor','type_selector_PREVIEW_TEXT4','a:1:{s:4:\"type\";s:4:\"html\";}','N'),(13,1,'form','form_element_4','a:1:{s:4:\"tabs\";s:1719:\"edit1--#--Элемент--,--ACTIVE--#--Активность--,--ACTIVE_FROM--#--Начало активности--,--NAME--#--*Название--,--SORT--#--Сортировка--,--PREVIEW_PICTURE--#--Картинка для анонса--,--PREVIEW_TEXT--#--Описание для анонса--,--PROPERTY_1--#--ФИО--;--edit6--#--Подробно--,--DETAIL_PICTURE--#--Детальная картинка--,--DETAIL_TEXT--#--Детальное описание--;--edit14--#--SEO--,--IPROPERTY_TEMPLATES_ELEMENT_META_TITLE--#--Шаблон META TITLE--,--IPROPERTY_TEMPLATES_ELEMENT_META_KEYWORDS--#--Шаблон META KEYWORDS--,--IPROPERTY_TEMPLATES_ELEMENT_META_DESCRIPTION--#--Шаблон META DESCRIPTION--,--IPROPERTY_TEMPLATES_ELEMENT_PAGE_TITLE--#--Заголовок элемента--,--IPROPERTY_TEMPLATES_ELEMENTS_PREVIEW_PICTURE--#----Настройки для картинок анонса элементов--,--IPROPERTY_TEMPLATES_ELEMENT_PREVIEW_PICTURE_FILE_ALT--#--Шаблон ALT--,--IPROPERTY_TEMPLATES_ELEMENT_PREVIEW_PICTURE_FILE_TITLE--#--Шаблон TITLE--,--IPROPERTY_TEMPLATES_ELEMENT_PREVIEW_PICTURE_FILE_NAME--#--Шаблон имени файла--,--IPROPERTY_TEMPLATES_ELEMENTS_DETAIL_PICTURE--#----Настройки для детальных картинок элементов--,--IPROPERTY_TEMPLATES_ELEMENT_DETAIL_PICTURE_FILE_ALT--#--Шаблон ALT--,--IPROPERTY_TEMPLATES_ELEMENT_DETAIL_PICTURE_FILE_TITLE--#--Шаблон TITLE--,--IPROPERTY_TEMPLATES_ELEMENT_DETAIL_PICTURE_FILE_NAME--#--Шаблон имени файла--,--SEO_ADDITIONAL--#----Дополнительно--,--TAGS--#--Теги--;--edit2--#--Разделы--,--SECTIONS--#--Разделы--;--\";}','N'),(14,NULL,'form','form_element_4','a:1:{s:4:\"tabs\";s:1693:\"edit1--#--Элемент--,--ACTIVE--#--Активность--,--ACTIVE_FROM--#--Начало активности--,--NAME--#--*Название--,--SORT--#--Сортировка--,--PREVIEW_PICTURE--#--Картинка для анонса--,--PREVIEW_TEXT--#--Описание для анонса--;--edit6--#--Подробно--,--DETAIL_PICTURE--#--Детальная картинка--,--DETAIL_TEXT--#--Детальное описание--;--edit14--#--SEO--,--IPROPERTY_TEMPLATES_ELEMENT_META_TITLE--#--Шаблон META TITLE--,--IPROPERTY_TEMPLATES_ELEMENT_META_KEYWORDS--#--Шаблон META KEYWORDS--,--IPROPERTY_TEMPLATES_ELEMENT_META_DESCRIPTION--#--Шаблон META DESCRIPTION--,--IPROPERTY_TEMPLATES_ELEMENT_PAGE_TITLE--#--Заголовок элемента--,--IPROPERTY_TEMPLATES_ELEMENTS_PREVIEW_PICTURE--#----Настройки для картинок анонса элементов--,--IPROPERTY_TEMPLATES_ELEMENT_PREVIEW_PICTURE_FILE_ALT--#--Шаблон ALT--,--IPROPERTY_TEMPLATES_ELEMENT_PREVIEW_PICTURE_FILE_TITLE--#--Шаблон TITLE--,--IPROPERTY_TEMPLATES_ELEMENT_PREVIEW_PICTURE_FILE_NAME--#--Шаблон имени файла--,--IPROPERTY_TEMPLATES_ELEMENTS_DETAIL_PICTURE--#----Настройки для детальных картинок элементов--,--IPROPERTY_TEMPLATES_ELEMENT_DETAIL_PICTURE_FILE_ALT--#--Шаблон ALT--,--IPROPERTY_TEMPLATES_ELEMENT_DETAIL_PICTURE_FILE_TITLE--#--Шаблон TITLE--,--IPROPERTY_TEMPLATES_ELEMENT_DETAIL_PICTURE_FILE_NAME--#--Шаблон имени файла--,--SEO_ADDITIONAL--#----Дополнительно--,--TAGS--#--Теги--;--edit2--#--Разделы--,--SECTIONS--#--Разделы--;--\";}','Y'),(15,1,'list','tbl_iblock_element_3ce7847a5aad508ac45dcee0e294f4b1','a:4:{s:7:\"columns\";s:42:\"NAME,ACTIVE,SORT,TIMESTAMP_X,ID,PROPERTY_2\";s:2:\"by\";s:11:\"timestamp_x\";s:5:\"order\";s:4:\"desc\";s:9:\"page_size\";s:2:\"20\";}','N'),(16,1,'html_editor','type_selector_PREVIEW_TEXT5','a:1:{s:4:\"type\";s:4:\"html\";}','N'),(17,1,'filter','tbl_a_reviews_filter_id','a:1:{s:4:\"rows\";s:1:\"0\";}','N'),(18,1,'html_editor','type_selector_DETAIL_TEXT5','a:1:{s:4:\"type\";s:4:\"html\";}','N'),(19,1,'filter','tbl_iblock_el_search8aeb68b4f346bd1c0bac42e205f6d5bf_filter','a:1:{s:4:\"rows\";s:2:\"id\";}','N');
/*!40000 ALTER TABLE `b_user_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_stored_auth`
--

DROP TABLE IF EXISTS `b_user_stored_auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user_stored_auth` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(18) NOT NULL,
  `DATE_REG` datetime NOT NULL,
  `LAST_AUTH` datetime NOT NULL,
  `STORED_HASH` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `TEMP_HASH` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `IP_ADDR` int(10) unsigned NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ux_user_hash` (`USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_stored_auth`
--

LOCK TABLES `b_user_stored_auth` WRITE;
/*!40000 ALTER TABLE `b_user_stored_auth` DISABLE KEYS */;
INSERT INTO `b_user_stored_auth` VALUES (1,1,'2016-08-20 15:46:26','2016-08-25 21:34:37','26a4d273d2bc29c78a83097d25abb072','N',2130706433),(3,1,'2016-09-22 20:38:44','2016-10-24 14:56:21','ecf125270c320ba6c0d8b7823b9819a8','N',3162902377),(4,1,'2016-10-13 17:40:35','2016-10-16 23:02:03','bc3ae614c5be8318a26ec3c6260c78cd','N',2959409878);
/*!40000 ALTER TABLE `b_user_stored_auth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_xml_tree`
--

DROP TABLE IF EXISTS `b_xml_tree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_xml_tree` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PARENT_ID` int(11) DEFAULT NULL,
  `LEFT_MARGIN` int(11) DEFAULT NULL,
  `RIGHT_MARGIN` int(11) DEFAULT NULL,
  `DEPTH_LEVEL` int(11) DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VALUE` longtext COLLATE utf8_unicode_ci,
  `ATTRIBUTES` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`),
  KEY `ix_b_xml_tree_parent` (`PARENT_ID`),
  KEY `ix_b_xml_tree_left` (`LEFT_MARGIN`)
) ENGINE=InnoDB AUTO_INCREMENT=164 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_xml_tree`
--

LOCK TABLES `b_xml_tree` WRITE;
/*!40000 ALTER TABLE `b_xml_tree` DISABLE KEYS */;
INSERT INTO `b_xml_tree` VALUES (1,0,1,320,0,'КоммерческаяИнформация',NULL,'a:2:{s:22:\"ВерсияСхемы\";s:5:\"2.021\";s:32:\"ДатаФормирования\";s:19:\"2010-06-22T12:53:42\";}'),(2,1,2,67,1,'Классификатор',NULL,NULL),(3,2,3,4,2,'Ид','2',NULL),(4,2,5,6,2,'Наименование','Вакансии',NULL),(5,2,7,64,2,'Свойства',NULL,NULL),(6,5,8,15,3,'Свойство',NULL,NULL),(7,6,9,10,4,'Ид','CML2_ACTIVE',NULL),(8,6,11,12,4,'Наименование','БитриксАктивность',NULL),(9,6,13,14,4,'Множественное','false',NULL),(10,5,16,23,3,'Свойство',NULL,NULL),(11,10,17,18,4,'Ид','CML2_CODE',NULL),(12,10,19,20,4,'Наименование','Символьный код',NULL),(13,10,21,22,4,'Множественное','false',NULL),(14,5,24,31,3,'Свойство',NULL,NULL),(15,14,25,26,4,'Ид','CML2_SORT',NULL),(16,14,27,28,4,'Наименование','Сортировка',NULL),(17,14,29,30,4,'Множественное','false',NULL),(18,5,32,39,3,'Свойство',NULL,NULL),(19,18,33,34,4,'Ид','CML2_ACTIVE_FROM',NULL),(20,18,35,36,4,'Наименование','Начало активности',NULL),(21,18,37,38,4,'Множественное','false',NULL),(22,5,40,47,3,'Свойство',NULL,NULL),(23,22,41,42,4,'Ид','CML2_ACTIVE_TO',NULL),(24,22,43,44,4,'Наименование','Окончание активности',NULL),(25,22,45,46,4,'Множественное','false',NULL),(26,5,48,55,3,'Свойство',NULL,NULL),(27,26,49,50,4,'Ид','CML2_PREVIEW_TEXT',NULL),(28,26,51,52,4,'Наименование','Анонс',NULL),(29,26,53,54,4,'Множественное','false',NULL),(30,5,56,63,3,'Свойство',NULL,NULL),(31,30,57,58,4,'Ид','CML2_PREVIEW_PICTURE',NULL),(32,30,59,60,4,'Наименование','Картинка анонса',NULL),(33,30,61,62,4,'Множественное','false',NULL),(34,2,65,66,2,'Группы',NULL,NULL),(35,1,68,319,1,'Каталог',NULL,NULL),(36,35,69,70,2,'Ид','corp_vacancies',NULL),(37,35,71,72,2,'ИдКлассификатора','2',NULL),(38,35,73,74,2,'Наименование','Вакансии',NULL),(39,35,75,76,2,'БитриксКод','corp_vacancies',NULL),(40,35,77,78,2,'БитриксСортировка','500',NULL),(41,35,79,80,2,'БитриксURLСписок','#SITE_DIR#/about/vacancies.php',NULL),(42,35,81,82,2,'БитриксURLДеталь','#SITE_DIR#/about/vacancies.php##ID#',NULL),(43,35,83,84,2,'БитриксURLРаздел',NULL,NULL),(44,35,85,86,2,'БитриксКартинка',NULL,NULL),(45,35,87,88,2,'БитриксИндексироватьЭлементы','true',NULL),(46,35,89,90,2,'БитриксИндексироватьРазделы','false',NULL),(47,35,91,92,2,'БитриксДокументооборот','false',NULL),(48,35,93,154,2,'БитриксПодписи',NULL,NULL),(49,48,94,99,3,'БитриксПодпись',NULL,NULL),(50,49,95,96,4,'Ид','ELEMENT_NAME',NULL),(51,49,97,98,4,'Значение','Вакансия',NULL),(52,48,100,105,3,'БитриксПодпись',NULL,NULL),(53,52,101,102,4,'Ид','ELEMENTS_NAME',NULL),(54,52,103,104,4,'Значение','Вакансии',NULL),(55,48,106,111,3,'БитриксПодпись',NULL,NULL),(56,55,107,108,4,'Ид','ELEMENT_ADD',NULL),(57,55,109,110,4,'Значение','Добавить вакансию',NULL),(58,48,112,117,3,'БитриксПодпись',NULL,NULL),(59,58,113,114,4,'Ид','ELEMENT_EDIT',NULL),(60,58,115,116,4,'Значение','Изменить вакансию',NULL),(61,48,118,123,3,'БитриксПодпись',NULL,NULL),(62,61,119,120,4,'Ид','ELEMENT_DELETE',NULL),(63,61,121,122,4,'Значение','Удалить вакансию',NULL),(64,48,124,129,3,'БитриксПодпись',NULL,NULL),(65,64,125,126,4,'Ид','SECTION_NAME',NULL),(66,64,127,128,4,'Значение','Раздел',NULL),(67,48,130,135,3,'БитриксПодпись',NULL,NULL),(68,67,131,132,4,'Ид','SECTIONS_NAME',NULL),(69,67,133,134,4,'Значение','Разделы',NULL),(70,48,136,141,3,'БитриксПодпись',NULL,NULL),(71,70,137,138,4,'Ид','SECTION_ADD',NULL),(72,70,139,140,4,'Значение','Добавить раздел',NULL),(73,48,142,147,3,'БитриксПодпись',NULL,NULL),(74,73,143,144,4,'Ид','SECTION_EDIT',NULL),(75,73,145,146,4,'Значение','Изменить раздел',NULL),(76,48,148,153,3,'БитриксПодпись',NULL,NULL),(77,76,149,150,4,'Ид','SECTION_DELETE',NULL),(78,76,151,152,4,'Значение','Удалить раздел',NULL),(79,35,155,318,2,'Товары',NULL,NULL),(80,79,156,209,3,'Товар',NULL,NULL),(81,80,157,158,4,'Ид','2',NULL),(82,80,159,160,4,'Наименование','Главный специалист Отдела анализа кредитных проектов региональной сети',NULL),(83,80,161,162,4,'БитриксТеги',NULL,NULL),(84,80,163,164,4,'Описание','<b>Требования</b> 						 						 \n<p>Высшее экономическое/финансовое образование, опыт в банках топ-100 не менее 3-х лет в кредитном отделе (анализ заемщиков), желателен опыт работы с кредитными заявками филиалов, знание технологий АФХД предприятий, навыки написания экспертного заключения, знание законодательства (в т.ч. Положение ЦБ № 254-П).</p>\n 						 						<b>Обязанности</b> 						 \n<p>Анализ кредитных проектов филиалов Банка, подготовка предложений по структурированию кредитных проектов, оценка полноты и качества формируемых филиалами заключений, выявление стоп-факторов, доработка заявок филиалов в соответствии со стандартами Банка, подготовка заключения (рекомендаций) на КК по заявкам филиалов в части оценки финансово-экономического состояния заемщика, защита проектов на КК Банка, консультирование и методологическая помощь филиалам Банка в части корпоративного кредитования.</p>\n 						 						<b>Условия</b> 						 \n<p> Место работы: М.Парк Культуры. Графики работы: пятидневная рабочая неделя, с 9:00 до 18:00, пт. до 16:45. Зарплата: 50000 руб. оклад + премии, полный соц. пакет,оформление согласно ТК РФ</p>\n ',NULL),(85,80,165,208,4,'ЗначенияСвойств',NULL,NULL),(86,85,166,171,5,'ЗначенияСвойства',NULL,NULL),(87,86,167,168,6,'Ид','CML2_ACTIVE',NULL),(88,86,169,170,6,'Значение','true',NULL),(89,85,172,177,5,'ЗначенияСвойства',NULL,NULL),(90,89,173,174,6,'Ид','CML2_CODE',NULL),(91,89,175,176,6,'Значение',NULL,NULL),(92,85,178,183,5,'ЗначенияСвойства',NULL,NULL),(93,92,179,180,6,'Ид','CML2_SORT',NULL),(94,92,181,182,6,'Значение','200',NULL),(95,85,184,189,5,'ЗначенияСвойства',NULL,NULL),(96,95,185,186,6,'Ид','CML2_ACTIVE_FROM',NULL),(97,95,187,188,6,'Значение','2010-05-01 00:00:00',NULL),(98,85,190,195,5,'ЗначенияСвойства',NULL,NULL),(99,98,191,192,6,'Ид','CML2_ACTIVE_TO',NULL),(100,98,193,194,6,'Значение',NULL,NULL),(101,85,196,201,5,'ЗначенияСвойства',NULL,NULL),(102,101,197,198,6,'Ид','CML2_PREVIEW_TEXT',NULL),(103,101,199,200,6,'Значение',NULL,NULL),(104,85,202,207,5,'ЗначенияСвойства',NULL,NULL),(105,104,203,204,6,'Ид','CML2_PREVIEW_PICTURE',NULL),(106,104,205,206,6,'Значение',NULL,NULL),(107,79,210,263,3,'Товар',NULL,NULL),(108,107,211,212,4,'Ид','3',NULL),(109,107,213,214,4,'Наименование','Специалист по продажам розничных банковских продуктов',NULL),(110,107,215,216,4,'БитриксТеги',NULL,NULL),(111,107,217,218,4,'Описание','<b>Требования</b> 						 						 \n<p>Высшее экономического образования ‚ опыт работы в сфере продаж банковских продуктов‚ опытный пользователь ПК‚ этика делового общения‚ ответственность‚ инициативность‚ активность.</p>\n 						 						<b>Обязанности</b> 						 \n<p>Продажа розничных банковских продуктов, оформление документов.</p>\n 						 						<b>Условия</b> 						 \n<p>Трудоустройство по ТК РФ‚ полный соц. пакет. График работы: пятидневная рабочая неделя. Зарплата: 20000 руб. оклад + премии</p>\n ',NULL),(112,107,219,262,4,'ЗначенияСвойств',NULL,NULL),(113,112,220,225,5,'ЗначенияСвойства',NULL,NULL),(114,113,221,222,6,'Ид','CML2_ACTIVE',NULL),(115,113,223,224,6,'Значение','true',NULL),(116,112,226,231,5,'ЗначенияСвойства',NULL,NULL),(117,116,227,228,6,'Ид','CML2_CODE',NULL),(118,116,229,230,6,'Значение',NULL,NULL),(119,112,232,237,5,'ЗначенияСвойства',NULL,NULL),(120,119,233,234,6,'Ид','CML2_SORT',NULL),(121,119,235,236,6,'Значение','300',NULL),(122,112,238,243,5,'ЗначенияСвойства',NULL,NULL),(123,122,239,240,6,'Ид','CML2_ACTIVE_FROM',NULL),(124,122,241,242,6,'Значение','2010-05-01 00:00:00',NULL),(125,112,244,249,5,'ЗначенияСвойства',NULL,NULL),(126,125,245,246,6,'Ид','CML2_ACTIVE_TO',NULL),(127,125,247,248,6,'Значение',NULL,NULL),(128,112,250,255,5,'ЗначенияСвойства',NULL,NULL),(129,128,251,252,6,'Ид','CML2_PREVIEW_TEXT',NULL),(130,128,253,254,6,'Значение',NULL,NULL),(131,112,256,261,5,'ЗначенияСвойства',NULL,NULL),(132,131,257,258,6,'Ид','CML2_PREVIEW_PICTURE',NULL),(133,131,259,260,6,'Значение',NULL,NULL),(134,79,264,317,3,'Товар',NULL,NULL),(135,134,265,266,4,'Ид','4',NULL),(136,134,267,268,4,'Наименование','Специалист Отдела андеррайтинга',NULL),(137,134,269,270,4,'БитриксТеги',NULL,NULL),(138,134,271,272,4,'Описание','<b>Требования</b> 						 						 \n<p>Высшее профессиональное образование, опыт работы от 2 лет в отделе по работе с физическими и юридическими лицами Банков, связанных с анализом платёжеспособности и кредитоспособности физических и юридических лиц.</p>\n 						 						<b>Обязанности</b> 						 \n<p>Проверка соответствия документов, предоставленных клиентами Банка, анализ информации о риске</p>\n 						 						<b>Условия</b> 						 \n<p>Трудоустройство по ТК РФ‚ полный соц. пакет. График работы: пятидневная рабочая неделя. Зарплата: оклад 25000 руб.</p>\n ',NULL),(139,134,273,316,4,'ЗначенияСвойств',NULL,NULL),(140,139,274,279,5,'ЗначенияСвойства',NULL,NULL),(141,140,275,276,6,'Ид','CML2_ACTIVE',NULL),(142,140,277,278,6,'Значение','true',NULL),(143,139,280,285,5,'ЗначенияСвойства',NULL,NULL),(144,143,281,282,6,'Ид','CML2_CODE',NULL),(145,143,283,284,6,'Значение',NULL,NULL),(146,139,286,291,5,'ЗначенияСвойства',NULL,NULL),(147,146,287,288,6,'Ид','CML2_SORT',NULL),(148,146,289,290,6,'Значение','400',NULL),(149,139,292,297,5,'ЗначенияСвойства',NULL,NULL),(150,149,293,294,6,'Ид','CML2_ACTIVE_FROM',NULL),(151,149,295,296,6,'Значение','2010-05-01 00:00:00',NULL),(152,139,298,303,5,'ЗначенияСвойства',NULL,NULL),(153,152,299,300,6,'Ид','CML2_ACTIVE_TO',NULL),(154,152,301,302,6,'Значение',NULL,NULL),(155,139,304,309,5,'ЗначенияСвойства',NULL,NULL),(156,155,305,306,6,'Ид','CML2_PREVIEW_TEXT',NULL),(157,155,307,308,6,'Значение',NULL,NULL),(158,139,310,315,5,'ЗначенияСвойства',NULL,NULL),(159,158,311,312,6,'Ид','CML2_PREVIEW_PICTURE',NULL),(160,158,313,314,6,'Значение',NULL,NULL),(161,0,4,0,0,'',NULL,NULL),(162,0,5,0,0,'',NULL,NULL),(163,0,6,0,0,'',NULL,NULL);
/*!40000 ALTER TABLE `b_xml_tree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_id_sequence`
--

DROP TABLE IF EXISTS `product_id_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_id_sequence` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_id_sequence`
--

LOCK TABLES `product_id_sequence` WRITE;
/*!40000 ALTER TABLE `product_id_sequence` DISABLE KEYS */;
INSERT INTO `product_id_sequence` VALUES (0);
/*!40000 ALTER TABLE `product_id_sequence` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-10-24 16:35:55
