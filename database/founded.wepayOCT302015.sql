-- MySQL dump 10.13  Distrib 5.5.43, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: founded.wepay
-- ------------------------------------------------------
-- Server version	5.5.43-0ubuntu0.14.04.1

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
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8_unicode_ci,
  `activated` tinyint(1) NOT NULL DEFAULT '0',
  `activation_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activated_at` timestamp NULL DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `persist_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `admins_email_unique` (`email`),
  KEY `admins_activation_code_index` (`activation_code`),
  KEY `admins_reset_password_code_index` (`reset_password_code`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'admin@change.me','$2y$10$HdmrNJgQU3kkGA5VNZsP6uMjzVwVGkV7m7xjrtjXFhx67QOY/zHJK','1',0,NULL,NULL,NULL,NULL,NULL,'ztKa1FbcDNyJF8hwZJ2FvmfaUXd4SqcIYY7PWHlXCg0DV9ENcViV1yzNenFP',NULL,NULL,'2015-09-30 06:59:10','2015-10-29 08:21:54'),(3,'test@test.test','$2y$10$6hovOWi6Q.H.L/6X4LknFueiXixTTDKGa2E7OhYhf168hpnpwrfJm','2',0,NULL,NULL,NULL,NULL,NULL,'sMuEhfnqeDrUSbhgWPXzdU23Tm0h7srlwjiddC85uZL35lC5q0wwu2BqvN3P','test','test','2015-10-27 10:45:01','2015-10-27 14:45:34'),(4,'simeon.prokopov@sofyma.com','$2y$10$jDPmeSO6ta7W1r34tEMfu.dyNT3WvceUeT2AECKeFkMTUyM5fXO7.','1',0,NULL,NULL,NULL,NULL,NULL,'qPENYP2RwSetHVCSqY5upqF3Bvy9EXispCpcKhCGjfPgXiEMuzuF039tovDQ','Simeon','Prokopov','2015-10-27 12:56:12','2015-10-28 06:38:51'),(5,'robert.beattie@founded.com','$2y$10$XkG92fNB5ADgBBLxC5HJduLSSnicnKVag4PhnY5HAuBN5TLJvWQZS','2',0,NULL,NULL,NULL,NULL,NULL,'pa60b9NBqWheOVcdvmDbISCLMa92xjnv0sUDPlu709otfcmrbhcuSL44mlx7','Robert','Beattie','2015-10-28 14:17:16','2015-10-28 16:41:04'),(6,'cvetan.dimitrov@sofyma.com','$2y$10$KHA3SimRGo2q.7TRjLFMre1cLKxZ8RNZEmTlIhChroKw3YRaTxAmO','1',0,NULL,NULL,NULL,NULL,NULL,'vnnh7ykHwtL87CPMypgoDsRV2jXeL2k03JN9iwzXbgvex509zOsmAykU9MzK','Cvetan','Dimitrov','2015-10-29 08:21:41','2015-10-30 07:30:46');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `block`
--

DROP TABLE IF EXISTS `block`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `block` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `image_allignment` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `marker` tinyint(1) NOT NULL,
  `subblock` tinyint(1) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `data` text COLLATE utf8_unicode_ci NOT NULL,
  `page_id` int(11) NOT NULL,
  `title` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `cta1` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `link1` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cta2` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `link2` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `subtitle` text COLLATE utf8_unicode_ci NOT NULL,
  `video` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `f_title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `f_desc` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `col_image_1` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `col_title_1` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `col_desc_1` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `col_image_2` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `col_title_2` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `col_desc_2` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `col_image_3` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `col_title_3` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `col_desc_3` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `sub_block_order` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `hidden` tinyint(1) NOT NULL,
  `images` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `block`
--

LOCK TABLES `block` WRITE;
/*!40000 ALTER TABLE `block` DISABLE KEYS */;
INSERT INTO `block` VALUES (1,'1','intro editable blue','right',0,0,'2015-10-29 15:15:20','2015-10-26 06:44:33','',1,'<h1>Make payments your hidden strength</h1>','Learn more','solutions','Request consultation','get-started','/payment-strengthsnew.png','Home - Make payments your hidden strength','<p>Discover how you can provide a seamless payments experience that delights and converts, without overhead or risk.</p>','','Featured Title','Featured description','','','','','','','','','','\"\"',0,''),(2,'5','meet','left',0,0,'2015-10-29 15:16:28','2015-10-23 11:06:23','',1,'<p>A true payments partner, not just an API.</p>','Find out more about WePay','business','cta copy','link','267345-amanda-crew.jpg','Home - Video ','','video.mp4','','','','','','','','','','','','',0,''),(5,'8','meet','left',0,1,'2015-10-29 15:16:15','2015-10-14 06:39:48','',1,'','','','','','','Home - 3 columns block - Seamless user experience...','','','','','divaces.png','Seamless UX','<div class=\"module\">\r\n<p>Register new users, charge credit cards and settle funds in your app without changing its look and feel.</p>\r\n</div>','clock.png','Instant onboarding','<p>Sign up new users and have them processing payments in seconds. No confusing redirect, no conversion-killing forms up front.</p>','padlock.png','Zero overhead, zero risk','<p>We protect you with integrated fraud technology, full compliance and award winning support.</p>','[\"34\",\"33\",\"35\"]',0,''),(9,'2','meet','left',0,1,'2015-10-29 15:15:25','2015-10-26 06:42:19','',1,'','','','','','TitleBlock.jpg','Home - Logos','','','','','','','','','','','','','','[\"31\",\"30\",\"32\",\"29\"]',0,''),(10,'12','meet','left',0,0,'2015-10-29 15:14:56','2015-10-27 13:03:57','',1,'<p>Dynamic event lorem ipsum dolor sit amet</p>','Book now','#','','','warni.png','Home - Events','','','','','','','','','','','','','','',1,''),(11,'1','meet','left',1,0,'2015-10-29 15:15:42','2015-10-21 09:18:20','',1,'<h2>The most complete payments solution for platforms</h2>','','','','','/partners-in-situ.png','Home - The most complete payments solution for platforms','<p>WePay is more than just code. We’re a trusted partner with solutions to get your users paid faster with less risk to you.</p>','','','','','','','','','','','','','',0,''),(12,'1','meet','right',1,0,'2015-10-29 15:25:00','2015-10-22 11:39:23','',1,'<h2>Designed for platforms with developers in mind</h2>','View Documentation','https://wepay.com/developer','','','/moneycogs.png','Home - Designed for platforms with developers in mind','<p>Build quickly and painlessly with RESTful APIs designed for the real challenges of multi-party payments.</p>','','','','','','','','','','','','','[\"20\"]',0,''),(13,'8','meet','left',1,1,'2015-10-29 15:25:50','2015-10-20 09:39:51','',1,'','','','','','','Home - Second 3 columns block - More than just checkout...','','','','','gears.png','More than just checkout','<p>Code options and configurations for everything related to payments — including KYC collection and risk management</p>','scales.png','Scales With You','<p>Payments and fraud technology that scale to the needs of any platform, from your first dollar processed to your first billion.</p>','eye.png','Seamless Security','<p>We support the highest level of PCI compliance, tokenization, and more, all with bank-level security.</p>','[\"21\",\"22\",\"23\"]',0,''),(16,'6','meet','left',0,0,'2015-10-30 06:47:54','2015-10-23 11:07:04','',1,'<h2>WePay works closely with us to create the best possible payments experience for our users. Having that level of partnership lets us feel like we’re in control of our own destiny.</h2>','Testimonials','testimonials','','','','Home - Quote block - WePay works closely with...','<pre class=\"brush:html;auto-links:false;gutter:false;html-script:true;toolbar:false\" contenteditable=\"false\"> </pre>\r\n<p>Brandon Chu Director of Product Management, FreshBooks</p>','','','','','','','','','','','','','',0,''),(17,'13','meet','left',0,0,'2015-10-29 15:26:45','2015-10-23 11:08:16','',1,'<p>What could seamless payments do for your business?</p>','Learn more','solutions','Request consultation','get-started','','Home - What could seamless payments do...','','','','','','','','','','','','','','',0,''),(18,'14','meet','left',0,0,'2015-10-29 15:27:19','2015-10-18 07:21:31','',3,'<h1>Here’s our story</h1>','','','','','','About - Here’s our story','','','','','','','','','','','','','','',0,''),(23,'18','meet','left',0,1,'2015-10-29 15:28:51','2015-10-19 06:27:28','',3,'<h2>Our Values</h2>','Explore our values','#','','','','About - Our Values','','','','','','','','','','','','','','[\"24\",\"25\",\"26\",\"27\",\"28\"]',0,''),(24,'6','meet','left',0,0,'2015-10-30 06:48:38','2015-10-23 11:33:00','',3,'<h2>WePay is an exceptional partner to YouCaring. It is optimized for platforms like ours, understands our business, and provides top-notch customer support. We have worked with a few different payment providers, and found fundraisers using WePay earn more than other providers largely because of its seamless user experience, simpler payment submission form and fewer failed transactions.</h2>','Testimonials','testimonials','','','','About - Quote - WePay is an exceptional partner to YouCaring','<p>Dan Saper, VP Product Management &amp; Business Development, YouCaring</p>','','','','','','','','','','','','','',0,''),(25,'2','meet','left',0,1,'2015-10-29 15:30:37','2015-10-23 06:11:28','',3,'<h2>Platforms partnering</h2>','','','','','','About - Logos - Platforms partnering','','','','','','','','','','','','','','[\"29\",\"30\",\"31\",\"32\"]',0,''),(26,'16','meet','left',0,0,'2015-10-29 15:30:55','2015-10-23 06:11:54','',3,'<h2>Executive bios</h2>','','','','','','About - Executive bios','<p>Ipsa sit imi, con reperfe roruptatur, sum consed quias etur, est vovolum. Anessi blamusda aliquia tumque volorem porrunt quae verum ad.</p>','','','','','','','','','','','','','',0,''),(27,'1','meet','right',1,0,'2015-10-29 15:37:08','2015-10-22 12:06:35','',4,'<h2>You don\'t need payments. You need the right payments.</h2>','','','','','/devices-new-blue.png','Business - You don\'t need payments','<p>If your business is based around connecting merchants and consumers, you know you want to handle payments. It lets you provide more value to your users and capture more value for yourself. But all payments systems aren’t built equal.</p>','','','','','','','','','','','','','',0,''),(28,'8','meet','left',0,1,'2015-10-29 15:37:36','2015-10-14 07:22:31','',4,'','','','','','','Business - 3 columns - Payments should give you more control','','','','','','','','','','','','','','[\"36\",\"37\",\"38\"]',0,''),(29,'13','meet','left',0,0,'2015-10-29 15:37:56','2015-10-27 12:11:11','',4,'<p>When fraudulent merchants, credit thieves and hackers attack, some payments processors shift the losses to you. You need someone that’s got your back.</p>','See how WePay can help','how-can-we-help','','','','Business - When fraudulent merchants, credit thieves...','','','','','','','','','','','','','','',0,''),(30,'12','meet','left',0,0,'2015-10-29 15:38:16','2015-10-23 11:53:02','',4,'<p>Looking for API documentation?</p>','View documentation','https://wepay.com/developer','','','tool.png','Business - Looking for API documentation?','','','','','','','','','','','','','','',0,''),(31,'14','meet','left',1,0,'2015-10-29 15:38:43','2015-10-14 08:39:15','',5,'<h1>Our company is our people</h1>','','','','','','People - Our company is our people','<p>Our technology makes us unique, but it’s the people that work here that make us WePay. Here’s a glimpse at some of the extraordinary things that happen behind the scenes — the stories and values that make us who we are, at work and in the world.</p>','','','','','','','','','','','','','',0,''),(32,'17','meet','left',0,0,'2015-10-29 15:38:56','2015-10-27 14:34:46','',5,'<h2>Work, play, code</h2>','Careers','careers','','','','People - Work, play, code','<p>Make a real difference working on tough problems with cool people.</p>\r\n<p>Join the team that\'s No.62 on the 2015 Inc. 5000 review of the fastest growing companies.</p>','','WE’RE HIRING!','','','','','','','','','','','',0,''),(33,'13','meet','left',0,0,'2015-10-29 15:42:59','2015-10-23 11:56:57','',5,'<p>Our team is diverse, but there’s one thing we all share: A passion for solving real problems for our partners</p>','See how can we help','how-can-we-help','','','','People - Our team is diverse, but there’s one thing...','','','','','','','','','','','','','','',0,''),(34,'12','meet','left',0,0,'2015-10-29 15:43:14','2015-10-23 11:57:28','',5,'<p>Looking for API documentation?</p>','View documentation','https://wepay.com/developer ','','','tool1.png','People - Looking for API documentation?','','','','','','','','','','','','','','',0,''),(35,'19','meet','left',0,1,'2015-10-29 15:43:46','2015-10-21 12:20:39','',6,'','','','','','','Careers - Slider','','','','','','','','','','','','','','[\"39\",\"40\",\"41\"]',0,''),(36,'20','meet','left',0,0,'2015-10-29 15:44:30','2015-10-15 10:11:50','',6,'','','','','','','Careers - Jobs in Greenhouse','','','','','','','','','','','','','','',0,''),(37,'13','meet','left',0,0,'2015-10-29 15:44:47','2015-10-23 11:58:38','',6,'<p>WePay provides functionality for everything your platform needs related to payments. And we do it in a way that\'s completely free of risk, easily</p>','Tell me what it costs','pricing','','','','Careers - WePay provides functionality for everything...','','','','','','','','','','','','','','',0,''),(38,'12','meet','left',0,0,'2015-10-29 15:45:02','2015-10-23 11:58:59','',6,'<p>Looking for API documentation?</p>','View Documentation','https://wepay.com/developer','','','tool2.png','Careers - Looking for API documentation?','','','','','','','','','','','','','','',0,''),(39,'2','meet','left',0,1,'2015-10-29 15:31:19','2015-10-23 06:12:24','',3,'<h2>Investors.</h2>','','','','','','About - Investors','<p>$74.2M in 6 Rounds from 14 Investors</p>','','','','','','','','','','','','','[\"42\",\"44\",\"46\",\"43\",\"45\"]',0,''),(40,'13','meet','left',0,0,'2015-10-29 15:34:14','2015-10-27 12:13:39','',3,'<p>Enough about us, let’s talk about you</p>','Show me what WePay can do','how-can-we-help','','','','About - Enough about us, let’s talk about you','<p>You need a payments partner that gets you. We know our payments solution can meet your needs, because we built it to meet ours.</p>\r\n<p>Ready to see how partnering with WePay can make the difference?</p>','','','','','','','','','','','','','',0,''),(41,'12','table-information','left',0,0,'2015-10-29 15:35:15','2015-10-23 11:54:36','',3,'<p>Looking for API documentation?</p>','View Documentation','https://wepay.com/developer','','','tool3.png','About - Looking for API documentation?','','','','','','','','','','','','','','',1,''),(42,'14','meet','left',0,0,'2015-10-29 15:45:31','2015-10-22 12:17:03','',7,'<h1>Meet your True Partner in Payments</h1>','','','','','','How can we help - Meet your True Partner in Payments','<p>We facilitate payments for platforms. That’s all we do. But it’s not ALL we do. We’re a trusted partner that works with you to make payments easy for your users and profitable for you.</p>','','','','','','','','','','','','','',0,''),(43,'13','meet','left',0,0,'2015-10-29 15:46:21','2015-10-27 12:06:22','',7,'<p>WePay provides functionality for everything your platform needs related to payments. And we do it in a way that\'s completely free of risk, easily customizeable, and optimized to drive growth.</p>','Tell me what it costs','pricing','','','','How can we help - WePay provides functionality for everything...','','','','','','','','','','','','','','',0,''),(44,'12','meet','left',0,0,'2015-10-29 15:46:39','2015-10-27 12:30:40','',7,'<p>Looking for API documentation?</p>','View Documentation','https://wepay.com/developer','','','tool4.png','How can we help - Looking for API documentation?','','','','','','','','','','','','','','',0,''),(45,'21','meet','left',0,1,'2015-10-29 15:46:05','2015-10-19 06:36:00','',7,'','','','','','','How can we help - 2 columns block','','','','','','','','','','','','','','[\"47\",\"48\",\"49\",\"50\",\"51\",\"52\"]',0,''),(46,'22','meet','left',0,1,'2015-10-29 15:41:00','2015-10-22 12:47:46','',5,'','','','','','','People - People Grid','','','','','','','','','','','','','','[\"54\",\"55\",\"56\",\"57\",\"58\",\"59\",\"60\",\"61\",\"62\",\"63\",\"64\",\"65\",\"66\",\"67\",\"68\",\"69\",\"70\",\"23\"]',0,''),(47,'14','meet','left',1,0,'2015-10-29 15:47:10','2015-10-23 09:36:36','',8,'<h1>Payments partner to the best platforms in the world</h1>','','','','','','Testimonials - Payments partner to the best platforms in the world','<p>We’re honored to help some of the most innovative companies in the world solve their payments challenges. Here’s just a little about what our partners are doing:</p>','','','','','','','','','','','','','',0,''),(48,'13','meet','left',0,0,'2015-10-29 15:49:25','2015-10-23 11:59:47','',8,'<p>You’ve heard from our partners. Now what can we do for you? Learn how payments from WePay can help you take your platform to the next level.</p>','Show me what WePay can do','how-can-we-help','','','','Testimonials - You’ve heard from our partners...','','','','','','','','','','','','','','',0,''),(49,'12','meet','left',0,0,'2015-10-29 15:49:38','2015-10-23 12:00:36','',8,'<p>Looking for API documentation?</p>','View Documentation','https://wepay.com/developer ','','','tool5.png','Testimonials - Looking for API documentation?','','','','','','','','','','','','','','',0,''),(50,'23','meet','left',0,0,'2015-10-29 15:49:10','2015-10-19 06:07:18','',8,'','','','','','','Testimonials - Slider and grid','','','','','','','','','','','','','','',0,''),(51,'14','meet','left',0,0,'2015-10-29 15:51:11','2015-10-19 12:04:26','',10,'<h1>We promise to be there every step of the way.</h1>','','','','','','Getting started - We promise to be there...','','','','','','','','','','','','','','',0,''),(52,'26','steps','left',0,0,'2015-10-29 15:51:52','2015-10-27 14:15:25','',10,'','','','','','','Getting started - 3 columns','<div class=\"row\">\r\n<div class=\"step\">\r\n<h2>1</h2>\r\n<p>Once you contact us, we will be in touch to help you understand your payments needs.</p>\r\n</div>\r\n<div class=\"step\">\r\n<h2>2</h2>\r\n<p>If we can help, we’ll put together a detailed plan that will get you the payments system you want, minus risk and overhead.</p>\r\n</div>\r\n<div class=\"step\">\r\n<h2>3</h2>\r\n<p>When you’re live, you’ll enjoy the conversion benefits of a seamless payment system, and the peace of mind of having a partner to handle all the complexity</p>\r\n</div>\r\n</div>','','','','','','','','','','','','','',0,''),(53,'6','meet','left',0,0,'2015-10-29 15:52:31','2015-10-23 05:21:36','',10,'<h2>Thank you for checking out WePay. <br /> Let’s work together to build something great!</h2>','','','','','/get-started.png','Getting started - CEO Quote ','<p><a href=\"../../letter\">Read Open Letter from Bill Clerico, CEO</a></p>','','','','','','','','','','','','','',0,''),(54,'25','meet','left',0,0,'2015-10-29 15:52:51','2015-10-20 08:33:14','',10,'','','','','','','Getting started - Marketo form','<div class=\"row\">\r\n<p>Please complete the information below and our business development team will review and get back to you</p>\r\n</div>','','','','','','','','','','','','','',0,''),(55,'12','meet','left',0,0,'2015-10-29 15:53:08','2015-10-23 12:03:42','',10,'<p>Looking for API documentation?</p>','View Documentation','https://wepay.com/developer ','','','tool6.png','Getting started - Looking for API documentation?','','','','','','','','','','','','','','',0,''),(56,'14','meet','left',0,0,'2015-10-29 15:57:48','2015-10-22 12:58:51','',14,'<h1>The most complete payments facilitator for platforms.</h1>','','','','','','Pricing - The most complete payments...','<h1> </h1>','','','','','','','','','','','','','',0,''),(57,'26','table-information','left',0,0,'2015-10-29 15:58:05','2015-10-27 12:40:51','',14,'','','','','','','Pricing - Table info','<div class=\"row\">\r\n<div class=\"table\">\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td>Credit card processing</td>\r\n<td>2.9% + 30c</td>\r\n</tr>\r\n<tr>\r\n<td>ACH</td>\r\n<td>1% + 30c</td>\r\n</tr>\r\n<tr>\r\n<td>Platform management tools</td>\r\n<td>Included</td>\r\n</tr>\r\n<tr>\r\n<td>Merchant management tools</td>\r\n<td>Included</td>\r\n</tr>\r\n<tr>\r\n<td>Risk &amp; Compliance operations</td>\r\n<td>Included</td>\r\n</tr>\r\n<tr>\r\n<td>Hidden fees and costs</td>\r\n<td>None</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<div class=\"notes\">\r\n<p>Platform Payments is more than just running a credit card.</p>\r\n<p>It means onboarding merchants, handling complex transactions gracefully, and staying ever vigilant for fraud.</p>\r\n<p>That’s why we include more than just processing in our rate.</p>\r\n</div>\r\n</div>','','','','','','','','','','','','','',0,''),(58,'26','meet','left',0,0,'2015-10-29 15:58:26','2015-10-27 14:57:22','',14,'','','','','','','Pricing - A whole lot more for one simple price...','<section class=\"price\">\r\n<div class=\"row\">\r\n<h2>A whole lot more for one simple price</h2>\r\n<p>We integrate deeply and work closely with you, so your payments run like they’re directly under your control. If something goes wrong, we respond quickly and fix it fast.</p>\r\n<div class=\"content\">\r\n<div class=\"copy\">\r\n<h3>Merchant Tools</h3>\r\n<ul>\r\n<li>Flexible on-boarding options</li>\r\n<li>Frictionless Workflow for your business model</li>\r\n<li>Best-in-class security, fraud prevention, and risk analysis</li>\r\n<li>Integrated monitoring and alerting</li>\r\n<li>Most support options – tier 1, tier 2, self-service, human operator</li>\r\n</ul>\r\n</div>\r\n<div class=\"copy\">\r\n<h3>Payment &amp; Risk operations</h3>\r\n<ul>\r\n<li>Full control payment methods and process</li>\r\n<li>Payments status alerting and notifications</li>\r\n<li>Integrated UX means high Checkout Conversion Rate (+94%)</li>\r\n<li>Fraud Detection and Compliance</li>\r\n</ul>\r\n</div>\r\n<div class=\"copy\">\r\n<h3>Platform Tools</h3>\r\n<ul>\r\n<li>Business Reporting, Costs, Performance, Portfolio</li>\r\n<li>Implementation Team</li>\r\n<li>Customer Delight</li>\r\n<li>Account Management</li>\r\n<li>Compliance and security</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</section>','','','','','','','','','','','','','',0,''),(59,'13','meet','left',0,0,'2015-10-29 15:58:44','2015-10-23 12:24:38','',14,'<p>WePay provides functionality for everything your platform needs related to payments. And we do it in a way that\'s completely free of risk, easily</p>','Tell me what it costs','pricing','','','','Pricing - WePay provides functionality for everything','','','','','','','','','','','','','','',0,''),(60,'12','meet','left',0,0,'2015-10-29 15:59:03','2015-10-23 12:24:58','',14,'<p>Looking for API documentation?</p>','View Documentation','https://wepay.com/developer','','','tool7.png','Pricing - Looking for API documentation?','','','','','','','','','','','','','','',0,''),(61,'14','meet','left',0,0,'2015-10-29 15:53:54','2015-10-20 09:26:10','',11,'<h1>Thank you! Your request has been successfully submitted</h1>','','','','','','Thank you - Thank you! Your request has been...','','','','','','','','','','','','','','',0,''),(62,'28','meet','left',0,0,'2015-10-29 15:54:42','2015-10-23 12:05:10','',11,'<h2>We’ll be in touch via email soon.</h2>\r\n<p> </p>','Return to website','http://wepay.foundedtest.com/','','','placeholder3.png','Thank you - We’ll be in touch...','','','','','','','','','','','','','','',0,''),(63,'12','meet','left',0,0,'2015-10-29 15:55:02','2015-10-23 12:05:33','',11,'<p>Looking for API documentation?</p>','View Documentation','https://wepay.com/developer','','','tool8.png','Thank you - Looking for API documentation?','','','','','','','','','','','','','','',0,''),(64,'1','solutions','left',0,0,'2015-10-29 15:27:34','2015-10-23 05:32:15','',3,'<h2>How we started</h2>','','','','','/crowd.png','About - How we started','<p>WePay started with a simple idea: an app that made it easy for friends to pool money for shared expenses like ski trips and bachelorette parties.</p>\r\n<p>Yet that simple idea wasn’t so simple to execute. It was 2008, and no existing payments system could easily and safely pool money from groups of people to pay out to others.</p>\r\n<p>So we built one. The team spent nearly two years negotiating contracts, dealing with regulators, and coding integrations with some of the most complicated APIs in existence. Along the way, we drove to ensure easy sign-up and seamless checkout experiences. We also built one of the most advanced fraud detections systems around so we wouldn’t lose our shirts.</p>\r\n<p>And it worked. WePay started to get traction. There was just one problem.</p>','','','','','','','','','','','','','',0,''),(65,'1','solutions','right',0,0,'2015-10-29 15:27:51','2015-10-23 05:35:47','',3,'<h2>What we learned.</h2>','','','','','placeholder31.png','About - What we learned','<p>Group payments was a tough market. There just wasn’t enough repeat business in those ski trips and bachelorette parties. Low margins on low-value transactions didn’t help either.</p>\r\n<p>Recognizing need for a larger addressable market, we built a bunch of additional apps — from e-commerce shopping carts to crowdfunding sites to invoicing systems — on top of our payments system.</p>\r\n<p>We grew a lot more. It was great, but it wasn’t enough. Were were trying to be generalists, which meant our apps just weren’t as good as the ones focused on a single market with specific needs. But the payments engine we’d built? That worked great. In fact, it seemed to solve a lot of the problems we saw our competitors struggling with.</p>\r\n<p>That’s when we realized we weren’t selling our greatest asset.</p>','','','','','','','','','','','','','',0,''),(66,'1','solutions','left',0,0,'2015-10-29 15:28:05','2015-10-23 05:35:02','',3,'<h2>WePay today</h2>','','','','','/handshake.png','About - WePay today','<p>Once we stopped building platforms and started serving them, our business really started to move. We’re now one of the fastest growing companies in America, and we power payments for some of the most successful business tools, marketplaces and crowdfunding sites around.</p>\r\n<p>What we learned is that focus matters. Just doing a bunch of things adequately isn’t enough. Doing something well doesn’t count if it’s the wrong thing. But when you know who you are and what you do best, that’s when you can build something magical.</p>\r\n<p>So here’s who we are: we’re WePay. We do payments for platforms, that’s all we do and we do it better than anyone else.</p>\r\n<p>We see a lot more growth ahead. And we look forward to serving you — as a platform, a merchant on a platform, or an end user — along the way.</p>','','','','','','','','','','','','','',0,''),(67,'14','meet','left',0,0,'2015-10-29 16:00:49','2015-10-22 06:19:17','',17,'<h1>Sorry, that page doesn\'t exist!</h1>','','','','','','404 - Sorry, that page doesn\'t exist!','','','','','','','','','','','','','','',0,''),(68,'28','meet','left',0,0,'2015-10-29 16:01:04','2015-10-23 12:25:55','',17,'<h2>The page you requested could not be found. <br />If you\'re lost try our homepage.</h2>','Return to website','http://wepay.foundedtest.com/','','','placeholder5.png','404 - The page you requested could not be found','','','','','','','','','','','','','','',0,''),(69,'12','intro editable blue','left',0,0,'2015-10-29 16:01:15','2015-10-23 12:26:17','',17,'<p>Looking for API documentation?</p>','View Documentation','https://wepay.com/developer','','','tool12.png','404 - Looking for API documentation?','','','','','','','','','','','','','','',0,''),(70,'14','meet','left',0,0,'2015-10-29 16:05:19','2015-10-22 12:21:29','',18,'<h1>Build better experiences for merchants, payers, and yourself</h1>','','','','','','Solutions - Build better experiences...','','','','','','','','','','','','','','',0,''),(71,'26','intro editable blue','left',0,0,'2015-10-29 16:05:37','2015-10-27 15:24:48','',18,'','','','','','','Solutions - 3 columns - Better experiences merchants...','<div class=\"row\">\r\n<div class=\"content\">\r\n<div class=\"copy\">\r\n<h3>Better experiences merchants</h3>\r\n<ul>\r\n<li>Flexible, low-friction sign-up with less data required up front</li>\r\n<li>Fully integrated, user friendly payments workflow</li>\r\n<li>Powerful fraud protection leads to fewer chargeback disputes</li>\r\n<li>Faster, more responsive support — tier 1, tier 2, self-service, human operator</li>\r\n</ul>\r\n</div>\r\n<div class=\"copy\">\r\n<h3>Better experiences for payers</h3>\r\n<ul>\r\n<li>More payments options: all major credit cards: Visa, MasterCard, American Express+ direct bank transfer</li>\r\n<li>Payments status alerts and notifications</li>\r\n<li>Fraud detection — fewer fraudulent merchants leads to greater trust</li>\r\n<li>Integrated UX leads to greater than 94 percent checkout conversion rate</li>\r\n</ul>\r\n</div>\r\n<div class=\"copy\">\r\n<h3>Better experiences for you</h3>\r\n<ul>\r\n<li>Full business reporting: costs, performance, transaction level data</li>\r\n<li>Full implementation support and a shorter go-to-market window</li>\r\n<li>Tier 2 support from our award-winning Customer Delight team</li>\r\n<li>Dedicated account managers available for clients above X in monthly volume</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>','','','','','','','','','','','','','',0,''),(72,'1','solutions','right',0,0,'2015-10-29 15:04:24','2015-10-27 16:13:38','',18,'<h2>Payments Processing Plus</h2>\r\n<p>Our API provides functionality for every user interaction where money is involved.</p>','','','','','/cards.png','Solutions - Payments Processing Plus','<div class=\"section-solution\">\r\n<h3><span style=\"color: #4991dc; background-color: #ffffff;\">Payment processing</span></h3>\r\n<ul>\r\n<li>Accept all major credit cards<br /><span style=\"color: #308dde;\">- Visa</span><br /><span style=\"color: #308dde;\">- Mastercard</span><br /><span style=\"color: #308dde;\">- American Express</span></li>\r\n<li>ACH Payments: Direct bank transfers with lower fees and no transaction size limits</li>\r\n<li>Tipping point payments</li>\r\n<li>Multi-party payouts</li>\r\n<li>Recurring payments</li>\r\n<li>Account updater: Automatically update card data on file if it changes</li>\r\n<li>Flexible pricing: set your transaction fees to whatever makes sense for your business</li>\r\n</ul>\r\n</div>\r\n<div class=\"section-solution\">\r\n<h3><span style=\"color: #4991dc; background-color: #ffffff;\">User onboarding merchants</span></h3>\r\n<ul>\r\n<li>Instant onboarding: Board new merchants with less information upfront</li>\r\n<li>Easy account provisioning: Create merchant accounts automatically behind the scenes</li>\r\n<li>KYC API: Quickly gather required user data on your own terms</li>\r\n</ul>\r\n</div>\r\n<div class=\"section-solution\">\r\n<h3><span style=\"color: #4991dc;\">Funds Settlement</span></h3>\r\n<ul>\r\n<li>Settle to bank account</li>\r\n<li>Settle on a schedule, or as payments are made</li>\r\n<li>Settle funds by check — automatically generate, print and mail paper checksto merchants.</li>\r\n</ul>\r\n</div>','','','','','','','','','','','','','',0,''),(74,'1','solutions','right',0,0,'2015-10-29 16:33:14','2015-10-22 13:40:01','',18,'<h2>Customized risk for your platform</h2>','','','','','','Solutions - Customized risk for your platform','<p>Not every platform\'s risk needs are the same. That’s why our risk management system is customizable. Pass whatever data you know about your users with our innovative Risk API, and we’ll use it to make better risk decisions. That means a higher fraud catch rate with fewer false positives.</p>','','','','','','','','','','','','','',0,''),(75,'13','intro editable blue','left',0,0,'2015-10-29 15:12:55','2015-10-23 12:27:34','',18,'<p>WePay provides functionality for everything your platform needs related to payments. And we do it in a way that\'s completely free of risk, easily</p>','Tell me what it costs','pricing','','','','Solutions - WePay provides functionality...','','','','','','','','','','','','','','',0,''),(76,'12','intro editable blue','left',0,0,'2015-10-29 15:13:15','2015-10-23 12:27:51','',18,'<p>Looking for API documentation?</p>','View Documentation','https://wepay.com/developer','','','tool11.png','Solutions - Looking for API documentation?','','','','','','','','','','','','','','',0,''),(78,'1','solutions','right',0,0,'2015-10-29 13:44:34','2015-10-27 16:25:47','',18,'<h2>Custom UX</h2>\r\n<p>Our payments system is customizable to match your desired user experience. Whenever a user interacts with WePay, you control what that interaction looks and feels like.</p>','','','','','/desktop.png','Solutions - Custom UX','<h3>Customization options available:</h3>\r\n<ul>\r\n<li><span style=\"color: #4991dc;\">New merchant onboarding</span></li>\r\n<li><span style=\"color: #4991dc;\">Checkout forms</span></li>\r\n<li><span style=\"color: #4991dc;\">Confirmation emails</span></li>\r\n<li><span style=\"color: #4991dc;\">Customer support emails</span></li>\r\n<li><span style=\"color: #4991dc;\">Credit card statements</span></li>\r\n<li><span style=\"color: #4991dc;\">Mobile transactions</span></li>\r\n</ul>','','','','','','','','','','','','','',0,''),(79,'26','meet','left',0,0,'2015-10-29 16:06:42','2015-10-23 12:09:08','',19,'<h2>Hi there,</h2>','','','','','','Letter - Hi there, This is Bill Clerico','<p>This is Bill Clerico, co-founder and CEO of WePay. Thanks for taking the time to learn about our product, and thanks for taking the first step in building a relationship with us.</p>\r\n<p> </p>\r\n<p>“Invest in Relationships” is WePay’s most important value.hat’s because strong relationships produce great business results. I’ve found this to be true no matter who I’m dealing with. — investors, customers, employees, co-founders, landlords, suppliers or service providers.</p>\r\n<p> </p>\r\n<p>Having a strong and trusted relationship helps things move faster. It allows both parties to think about the long-term. And it sees you through the stormy patches, which even the best relationships have at times.</p>\r\n<p> </p>\r\n<p>Today, thousands of leading platform companies trust WePay with one of the most crucial parts of their business. We don’t take this lightly, and we know it is a trust we must re-earn every day.</p>\r\n<p> </p>\r\n<p>I hope you’ll give us a chance to earn your trust, too - and I look forward to being your partner.</p>','','','','','','','','','','','','','',0,''),(80,'14','intro editable blue','left',0,0,'2015-10-29 16:06:20','2015-10-23 09:45:08','',19,'<h1>Open Letter from Bill Clerico, CEO</h1>','','','','','','Letter - Open Letter from Bill Clerico, CEO','','','','','','','','','','','','','','',0,''),(81,'1','solutions','right',0,0,'2015-10-29 15:00:22','2015-10-23 11:19:12','',18,'<h2>Transaction-level reporting</h2>','','','','','/magglass.png','Solutions - Transaction-level reporting','<p>Some payments processors can only tell you when a card has been declined, but not how or why. Not WePay. Our transaction-level reporting gives you granular data about how money is moving through your platform.</p>','','','','','','','','','','','','','',0,''),(82,'1','solutions','right',0,0,'2015-10-29 15:07:49','2015-10-27 16:27:27','',18,'<h2>Modern development tools</h2>\r\n<h3>WePay is easy for developers to work with:</h3>','','','','','/laptop.png','Solutions - Modern development tools','<ul>\r\n<li><span style=\"color: #4991dc;\">RESTful API</span></li>\r\n<li><span style=\"color: #4991dc;\">Extensive documentation</span></li>\r\n<li><span style=\"color: #4991dc;\">SDKs for PHP, Ruby, Python, NodeJS, Java, and many more</span></li>\r\n<li><span style=\"color: #4991dc;\">Mobile SDKs to simplify app development</span></li>\r\n</ul>','','','','','','','','','','','','','',0,''),(83,'1','solutions','right',0,0,'2015-10-29 15:08:30','2015-10-27 16:23:47','',18,'<h2>Security</h2>\r\n<h3>WePay offers your platform world-class payment security features without additional overhead.</h3>','','','','','/padlock.png','Solutions - Security','<ul>\r\n<li><span style=\"color: #4991dc;\">Highest level of PCI security</span></li>\r\n<li><span style=\"color: #4991dc;\">Tokenization for card data</span></li>\r\n<li><span style=\"color: #4991dc;\">Multi-factor identification</span></li>\r\n</ul>','','','','','','','','','','','','','',0,''),(84,'1','solutions','right',0,0,'2015-10-29 15:09:10','2015-10-27 16:23:17','',18,'<h2>Compliance</h2>\r\n<h3>Compliance with payments regulations can be tough, but WePay makes it easy.</h3>','','','','','/clipboard.png','Solutions - Compliance','<ul>\r\n<li><span style=\"color: #4991dc;\">No need for a money transmitter licenses</span></li>\r\n<li><span style=\"color: #4991dc;\">WePay prints and mails required tax documents to merchants (1099-K)</span></li>\r\n<li><span style=\"color: #4991dc;\">We monitor all transactions to ensure compliance with anti-money laundering laws, OFAC</span></li>\r\n</ul>','','','','','','','','','','','','','',0,''),(86,'26','meet','left',0,0,'2015-10-29 16:07:23','2015-10-26 11:50:50','',20,'<p>Protecting your security and privacy is very important to us. If you have any questions, concerns, or encounter any issues, please contact us at <a href=\"mailto:security@wepay.com\">security@wepay.com</a>, file an issue on <a href=\"https://hackerone.com/wepay\">HackerOne</a>, or call our support line at <a class=\"phone\" href=\"tel:18554693729\">1-855-GO-WEPAY</a>.</p>','','','','','','Security - Protecting your security and privacy is very important...','','','','','','','','','','','','','','',0,''),(87,'14','meet','left',0,0,'2015-10-29 16:07:07','2015-10-26 11:10:24','',20,'<h1>We take security seriously</h1>','','','','','','Security - We take security seriously','','','','','','','','','','','','','','',0,''),(88,'29','meet','left',0,0,'2015-10-30 07:32:24','2015-10-28 11:12:34','',23,'','','','','','/bill-clerico.jpg','test','','','','','','','','','','','','','','',0,'/meet-b.png'),(89,'1','solutions','left',0,0,'2015-10-29 09:27:41','2015-10-29 09:20:32','',20,'<h2>PCI compliant</h2>','','','','','/placeholder11.png','Security - PCI compliant','<p>The PCI DSS certification process is designed to protect your sensitive data. WePay is a certified Level 1 PCI Compliant Service Provider (the highest level), which requires an annual independent security audit of our processes and systems. We test our system daily (manually and automatically) to ensure security.</p>','','','','','','','','','','','','','',0,''),(90,'1','solutions','left',0,0,'2015-10-29 12:41:44','2015-10-29 12:37:45','',20,'<h2>Secure technology</h2>','','','','','/placeholder11.png','Security - Secure technology','<p>WePay uses state-of-the-art cryptographic algorithms during data transmission (HTTPS with RSA 2048 bit key and SHA 256 certificate) and in our databases (AES 256 encryption with unique per-row keys). Our servers are kept in PCI and SSAE16 certified datacenters with 24x7 monitoring.</p>','','','','','','','','','','','','','',0,''),(92,'1','solutions','left',0,0,'2015-10-29 12:42:31','2015-10-29 12:42:11','',20,'<h2>Training and education</h2>','','','','','/placeholder11.png','Security - Training and education','<p>All WePay employees undergo background checks and security training. The development team follows strict SDLC process and OWASP security guidelines.</p>','','','','','','','','','','','','','',0,''),(93,'1','solutions','left',0,0,'2015-10-29 12:43:17','2015-10-29 12:42:55','',20,'<h2>Protecting your money</h2>','','','','','/placeholder11.png','Security - Protecting your money','<p>Your money is held in a protected account by our FDIC-insured or CDIC-insured partner bank, so your funds are never at risk.<br />We do the heavy lifting</p>\r\n<p>As security standards evolve, so do our systems. As a Level 1 PCI compliant service provider, we do ongoing work to keep our systems and services secure behind the scenes, thus making it easier for you to meet compliance obligations.</p>','','','','','','','','','','','','','',0,''),(94,'1','solutions','left',0,0,'2015-10-29 12:44:56','2015-10-29 12:44:04','',20,'<h2>Reporting and disclosure</h2>','','','','','/placeholder11.png','Security - Reporting and disclosure','<p>We investigate all reported vulnerabilities, so if you believe you\'ve discovered a problem, please email security@wepay.com or file an issue on HackerOne.</p>','','','','','','','','','','','','','',0,''),(95,'1','solutions','left',0,0,'2015-10-29 12:46:01','2015-10-29 12:45:22','',20,'<h2>PGP</h2>','','','','','/placeholder11.png','Security - PGP','<p>You can find our PGP key below. This can be used to encrypt your communication with us or to verify signed messages you receive from us.</p>\r\n<p>(Not sure what PGP is? Have a look at GPG)<br /><strong>Key ID</strong> : C7A9BD6B<br /><strong>Key Type</strong> : RSA<br /><strong>Key Length</strong> : 4096<br /><strong>Fingerprint</strong> : <br />3571 06BA FD87 62CD 195C 13D5 510B F082 C7A9 BD6<br /><strong>User Email</strong> : support@wepay.com</p>\r\n<pre>-----BEGIN PGP PUBLIC KEY BLOCK-----<br />Version: GnuPG v1</pre>\r\n<pre>mQINBFUte0IBEADPuGIhwkxSHXtYwayTzV10tKgg4js8wvo1bsVkX5oidu7MsfNO<br />X8ZFzy19E4+rIGKDnEUCvXpACKX7zMFhGEHTrL+a/qIT2F/daAfDDZcf/aKWA417<br />vPXyuOPnCeRXMDXCGe/bEKsV8H0VC8clacPZO7Jsbqd5dFStgbKo/Zx6/DPx2uTo<br />jXVPq9A5675jbiJ6ahC2t2Zn3enP08muZyYd1Vr5zG7MVjFq6v8kUdK2JOpkgPYz<br />JnvI/BgzcX5uIhps7wWn4/itBo7GQ7Rxus49cD0RyAfAyFYH9PS5wmEkFxzYYbrn<br />ec9ihZ5mcW9gsXcxPp7/f+ZVBPp0mYhAftHTWK1t03RLJIgGPUqKMKkmP8r3oRGW<br />yTwGZ0s/z19dM8QWqJrDjjCw2IBSny3c3b6O+Hio/BdAmoIaGHL7w8hhGFkmauer<br />CJKyu1u53K9xX7pgFcjCqi97Eqn1Hmf3HVgaF/CvZ939xdiJyiiqmpj86FObzV1K<br />9Jq86atDEZSORiekhfAk6NsP/gw6emhMg1haUPio9Ez9UyeVqHsBaPbGvBn15tLe<br />8DnSh2vCUbdKH4iDqoSF2uGrxYhC/VbcLI7ofO93dyrTelGyCmZU3TbDjX6b/lOw<br />C9ppJ3XnBd8D2bjBgqzJTyf4RGwbR29skglNOdRFJnJgXfIoKiEdNrwt9wARAQAB<br />tCBXZXBheSBEZXZvcHMgPHN1cHBvcnRAd2VwYXkuY29tPokCOAQTAQIAIgUCVS17<br />QgIbAwYLCQgHAwIGFQgCCQoLBBYCAwECHgECF4AACgkQUQvwgsepvWvH1RAAxEH1<br />rg5fPg/PSgI+pg8fiV0Bvqqt18hFJI4xW0TOp/YcDdxUpG25B0kyD9MRqSP5VUl1<br />TMYvjtxhYgfPEPjESW691Wyvrf+QL09Bg0/HyI8q5MSe74UlO7itW36X/C9aj1Hq<br />Vbxxhy/buqqelAsNpByMn0V622Rt/rGgYHwIesc0uxDHonKvctov12sTI52Z17Hg<br />/m+evlIvSq7V3+MZcvJnXYJtTlZJuDSlAzbEoUegWwvdkNFe04cyDSB8x2Bcy9ee<br />oAyT5YJbLbXkPLuxgFdyJk7XXuyr8Jr5SpXtY+vUMTrafiHGs5BDACj6SRl7mxGK<br />dLS50R5lSaXVCjJufSi9BinIfrEEcP/7Uu39458jzhN1HU3aSOl+3oEAWUf2sr16<br />fRAuNpGL/nH8d1XouSFbLIwNfltEA1zDMDNNPaQa2Ww7Km/wUp+VyFFqOkAtGFSy<br />Pn5XW6lK8gQguyPamHHM6OOelOb9B8OlXPVvYsAW7nhwB21FMc0LMrEt/faF4vT7<br />QTxpQuMTkCnOocmN2jq2OwVlL6Bt8HKLCVgG4IojUyLyiX1jXeYPAQcv0W4Ah1ad<br />DjjpLYgsGi7e3/gSvheDIlTZ+U/+ca2YW7vsEhsw4C5UCl95EOwtH5lhRJV3MeJq<br />rSCo1ra7gWPuIE6D7zvvio/cB5quQ1qFt+60+gq5Ag0EVS17QgEQALG/LNQ8EQtF<br />Sw6YTaeB9eKZS8WpvOUtB7im48qjX9iG6oZhLWZE5k1ovqsZZVB1WyRmbEyRXAUA<br />exE3jdSfnu7FKSIFENWlr8JDIgG7jZWRCMADeUrgaXW0kQrQEEnD2+vahft5pbSS<br />lhuRneW81+GaNAD7fgrSkmOll2kApjJlV+IHvSjbMv3ciZEcJnzYYbnJlx9cofta<br />36ikp5XfVgV2n48Z2EdwsdHFpTgP0I6cAkaYVfDUYqUgQNIA3UJ5CKsqV4Ut5Sxf<br />qn/fPdQpdnx1bsAqRR5M2Vo4E0DWDHjdw9i/UOyEzo37NytZIDp6EqeV7i+3LggY<br />XOJEsC0zqJK1is7Ff4cy2yThGc1PLSESFZtpofNRbz/0hnTzuhwdBHZeEgeID0/g<br />2yDhQm8na4jFkiso55lMek6gfzNNC+a5w8QL19mR6v6eq/WF9g+pYrCgudVyuDZt<br />q+GldB7MiQbWYsK92z7KisETop7Lheaa4UI/W/WAnvdjZPSefe2R4IKYle8XIBok<br />L6gNbYxG1UGko01SGXIkyyLr8YAAN1sDJzguoJ6ZsrVgKNo/bu0oHziD359eYrkk<br />lzP6oy5fBtHPbgcQmZte8X12AWCpOl5jR0WjEuDRo8KVMtoADQJZ3J31SoN15w95<br />rw68x4zGjZu8Lbjg4TWnenwHdXEMz4ZpABEBAAGJAh8EGAECAAkFAlUte0ICGwwA<br />CgkQUQvwgsepvWvglxAAwgHI382hjt3mg8Vy505Aq0HXQXFKfGQIrP1fFyKrmbNR<br />zd2ojDQPgxWnCg5aqDiA/H7DaigfbVuWvci63ziD+o0zvK9N3qlGBQHPe4Ch0oZ9<br />OiQHn/5MeNHHpUuLYTjYhSMviHcaImyMQa0ft5gLIKs2hUpWDgKpwIGthh6lzYOU<br />1Jd8zajppjkUyXrOGD74+DTi1MjrBG/eN0/5+ShZytkncIwhEU5dOATPKlUmhz4M<br />TLv73MvEc1RwbNGIxt6ajzxmSDg8RrFlawzvtdx3YuYp1DINWqyjzYHAA+npcyR5<br />7n2U6ApIZ3oCT5cvJVmI06sh5G2iyBG3XRQgzvfbf228pWcALzVH3EKDzIh6Buuq<br />+7rbVcvIZEzzPfkP5ZGhGKBTCO1O1Kb14thuLE0kwwex+U4/SXO6AGJEvF4g/vBk<br />4sxnpQM9Zm7d3Lai+EiFjrLqxzQG1Ww/UGFFwIiNpeUCrzc39H8Bt4mp/89zb7I6<br />mQi5IUCyaYtwCrKqfnTIehqjvFU0J34WJcj5kiEBJRB3miU5TWjmbdGFhmZ3bwjk<br />8RbYqA7EygW6frSowB3DeRpKbqzHCvcEOrMexc4xDvxkcqxYGVq0gpnrAy98WBFj<br />anasEYbfitk9yswx+J230NCdw2/3s/h9tO58562SkTczbTXm9AhyIAOiQb0stlQ=<br />=VxSR<br />-----END PGP PUBLIC KEY BLOCK-----</pre>','','','','','','','','','','','','','',0,'');
/*!40000 ALTER TABLE `block` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blockfield`
--

DROP TABLE IF EXISTS `blockfield`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blockfield` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `db_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blockfield`
--

LOCK TABLES `blockfield` WRITE;
/*!40000 ALTER TABLE `blockfield` DISABLE KEYS */;
INSERT INTO `blockfield` VALUES (1,'Title field','title','textarea','2015-10-08 08:05:50','2015-10-08 06:05:53'),(2,'Sub Title','subtitle','textarea','2015-10-21 08:32:21','2015-10-02 13:06:47'),(6,'Image','image','textimage','2015-10-28 14:41:47','2015-10-02 09:48:05'),(7,'Features Title','f_title','text','2015-10-06 20:44:37','2015-10-06 18:44:37'),(9,'URL','url','text','2015-10-02 12:48:49','2015-10-02 09:48:49'),(10,'Features description','f_desc','text','2015-10-06 20:44:23','2015-10-06 18:44:23'),(11,'Video URL','video','file','2015-10-07 15:27:54','2015-10-07 13:27:56'),(12,'Rich text area','rte_area','textarea','2015-10-02 13:26:52','2015-10-02 13:26:52'),(13,'Call To Action 1 text','cta1','text','2015-10-21 08:32:06','2015-10-02 09:46:56'),(14,'Link of Call To Action 1','link1','text','2015-10-21 08:32:09','2015-10-02 09:47:25'),(15,'Call To Action 2 text','cta2','text','2015-10-21 08:32:14','2015-10-02 09:47:12'),(16,'Link of Call To Action 2','link2','text','2015-10-21 08:32:17','2015-10-02 09:47:42'),(22,'Images','images','textimage','2015-10-28 12:35:10','2015-10-06 11:41:07');
/*!40000 ALTER TABLE `blockfield` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blocktypes`
--

DROP TABLE IF EXISTS `blocktypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blocktypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blocktypes`
--

LOCK TABLES `blocktypes` WRITE;
/*!40000 ALTER TABLE `blocktypes` DISABLE KEYS */;
INSERT INTO `blocktypes` VALUES (1,'Content with image','sections.main-image-content','1|2|6|13|14|15|16','2015-10-22 13:25:20','2015-10-22 11:25:20'),(2,'Logos','sections.partners','1|6|8','2015-10-21 14:12:26','2015-10-13 07:18:32'),(5,'Video Block','sections.video','1|2|11|13|14','2015-10-21 11:49:58','2015-10-21 09:50:00'),(6,'Quote block','sections.testimonials','1|2|6|13|14','2015-10-22 13:27:56','2015-10-22 11:27:56'),(8,'Services - 3 columns','sections.services','1|2|3|8','2015-10-21 14:12:52','2015-10-13 06:29:56'),(12,'Warning','sections.warning','1|2|6|13|14','2015-10-22 08:27:47','2015-10-22 06:27:49'),(13,'Tips Block','sections.tips','1|2|13|14|15|16','2015-10-22 11:24:11','2015-10-22 09:24:12'),(14,'Header text','sections.story','1|2','2015-10-22 14:13:59','2015-10-22 12:13:59'),(16,'Team','sections.team','1|2','2015-10-23 08:16:36','2015-10-23 06:16:36'),(17,'Hiring','sections.message','1|2|7|13|14','2015-10-23 11:31:46','2015-10-23 09:18:46'),(18,'[about][values]','sections.value','1','2015-10-20 08:49:00','2015-10-15 07:15:13'),(19,'[careers][slider]','sections.title-slider',NULL,'2015-10-21 14:23:12','2015-10-15 09:57:17'),(20,'[careers][greenhouseblock]','sections.posts',NULL,'2015-10-20 08:45:46','2015-10-15 10:06:43'),(21,'[how can we help][can-help block]','sections.can-help',NULL,'2015-10-20 08:45:50','2015-10-16 05:34:45'),(22,'[people]','sections.peoples',NULL,'2015-10-20 08:45:53','2015-10-16 05:56:24'),(23,'testimonials','sections.testimonial',NULL,'2015-10-20 08:45:56','2015-10-16 08:24:25'),(25,'section form','sections.form','8','2015-10-20 10:33:29','2015-10-20 08:32:10'),(26,'Free Text','sections.content-block','1|2','2015-10-23 08:07:33','2015-10-22 13:06:52'),(28,'thank-you','sections.thank-you','1|2|6|13|14','2015-10-22 08:22:21','2015-10-22 06:22:23'),(29,'test-only-to-remove','','1|6|9|22','2015-10-28 11:36:20','2015-10-28 11:36:20');
/*!40000 ALTER TABLE `blocktypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `subtitle` text COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `note1` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `note2` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `note3` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `note4` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
INSERT INTO `image` VALUES (13,'Go Fund Me','<p>Go Fund Me</p>','https://www.gofundme.com/','gofundme.png','logo','','','','','2015-10-28 12:09:51','2015-10-28 11:09:51'),(14,'carecom','<p>carecom</p>','#','carecom.png','logo','','','','','2015-10-12 06:35:39','2015-10-12 06:35:39'),(15,'constant contact','<p>constant contact</p>','http://www.constantcontact.com/index.jsp','constantcontact.png','logo','','','','','2015-10-28 13:05:22','2015-10-28 12:05:22'),(16,'fresh books','<p>fresh books</p>','#','freshbooks.png','logo','','','','','2015-10-12 06:37:07','2015-10-12 06:37:07'),(17,'meetup','<p>meetup</p>','www.meetup.com','meetu.png','logo','','','','','2015-10-28 12:13:05','2015-10-28 11:13:05'),(18,'Seamless user experience','<div class=\"module\">\r\n<p>Register new users, charge credit cards and settle funds in your app without changing the look and feel. </p>\r\n</div>','#','divaces.png','image_block','','','','','2015-10-20 11:07:53','2015-10-20 09:07:53'),(19,'Instant onboarding','<p>Sign up new users and have them processing payments in seconds. No confusing redirect, no conversion-killing forms up front.</p>','#','clock1.png','image_block','','','','','2015-10-12 07:10:22','2015-10-12 07:10:22'),(20,'Zero overhead, zero risk','<p>We protect you with integrated fraud technology, full compliance and award winning support.</p>','#','padlock.png','image_block','','','','','2015-10-12 07:10:59','2015-10-12 07:10:59'),(21,'More than just checkout','<p>Code options and configurations for everything related to multi-party payments — including KYC collection and risk management</p>','#','/uploads/codesymbol.png','image_block','','','','','2015-10-29 17:27:17','2015-10-29 16:27:17'),(22,'Scales With You','<p>The one technology layer that serves from you first dollar to your first billion processed.</p>','#','scales.png','image_block','','','','','2015-10-22 13:43:02','2015-10-22 11:43:02'),(23,'Seamless Security ','<p>Tools and support for PCI compliance, tokenization and more, all backed by bank-level security.</p>','#','eye.png','image_block','','','','','2015-10-22 13:43:57','2015-10-22 11:43:57'),(24,'DELIGHT CUSTOMERS','','#','delight-customers.png','image_block','Our customers’ success is our success','We deeply understand our customers and their needs','Customer intimacy is core to our strategy','We embrace our customers’ needs with passion and humility','2015-10-15 10:24:04','2015-10-15 08:24:07'),(25,'INVEST IN RELATIONSHIPS','','#','invest-in-relationships.png','image_block','We invest in relationships with employees, customers, vendors, and investors','“We” make it WePay – Take out the “We” and it would just be another payments company','Relationships strengthen us in tough times and bring opportunities for good times','','2015-10-29 10:35:41','2015-10-29 09:35:41'),(26,'PLAY TO <br /> WIN','','#','pay-to-wi.png','image_block','We play as a team','Each individual constantly strives to be their best','We make the right play for the situation','We play with grit, determination, and resourcefulness','2015-10-29 10:35:07','2015-10-29 09:35:07'),(27,'BE<br /> AUTHENTIC','','#','be-authentic.png','image_block','We are authentic, honest, humble, and transparent in everything we do','We communicate openly with respect','We give and receive constructive feedback regularly','We recognize reality and speak truthfully','2015-10-29 10:36:20','2015-10-29 09:36:20'),(28,'EMBRACE CHANGE','','','embrace-change.png','image_block','We are not afraid to rethink how something should be done to make it better','The status quo is never good enough','We encourage well-considered risk-taking','We manage change skillfully','2015-10-29 10:36:54','2015-10-29 09:36:54'),(29,'constant contact','','http://www.constantcontact.com/index.jsp','constantcontact1.png','logo','','','','','2015-10-28 12:14:57','2015-10-28 11:14:57'),(30,'care com','','https://www.care.com/','carecom11.png','logo','','','','','2015-10-28 12:10:49','2015-10-28 11:10:49'),(31,'go fund me','','https://www.gofundme.com/','gofundme1.png','logo','','','','','2015-10-28 12:11:59','2015-10-28 11:11:59'),(32,'meet up','','http://www.meetup.com','meetup1.png','logo','','','','','2015-10-28 12:13:49','2015-10-28 11:13:49'),(33,'Instant onboarding','<p>Sign up new users and have them processing payments in seconds. No confusing redirect, no conversion-killing forms up front.</p>','#','clock2.png','image_block','','','','','2015-10-14 06:38:17','2015-10-14 06:38:17'),(34,'Seamless user experience','<p>Register new users, charge credit cards and settle funds in your app without changing the look and feel.</p>','#','divaces1.png','image_block','','','','','2015-10-27 14:38:13','2015-10-27 13:38:13'),(35,'Zero overhead, zero risk','<p>We protect you with integrated fraud technology, full compliance and award-winning support.</p>','#','padlock1.png','image_block','','','','','2015-10-22 13:28:07','2015-10-22 11:28:07'),(36,'Payments should give you more control','<p>No user interaction on your platform has stakes as high as when one user pays another. Shouldn\'t you control how those transactions work?</p>','#','control.png','image_block','','','','','2015-10-22 14:03:07','2015-10-22 12:03:07'),(37,'Payments should decrease friction','<p>Users seek out platforms because they make transactions easier. But off-site redirects, long data capture forms, and mish-moshed UX make payments harder.</p>','#','frictio.png','image_block','','','','','2015-10-22 14:03:52','2015-10-22 12:03:52'),(38,'Payments should protect you from fraud','<p>When fraudulent merchants, credit thieves and hackers attack, some payments processors shift the losses to you. You need someone that’s got your back.</p>','#','protect.png','image_block','','','','','2015-10-22 14:04:31','2015-10-22 12:04:31'),(39,'Three reasons to work at WePay:','<h1>1. Work with people who inspire you</h1>','','loudspeaker-small.jpg','image_block','','','','','2015-10-29 10:48:50','2015-10-29 09:48:50'),(40,'Three reasons to work at WePay:','<h1>2. Solve real problems at one of the</h1>\r\n<h1>fastest growing companies in America</h1>','','loudspeaker-small2.jpg','image_block','','','','','2015-10-29 10:49:43','2015-10-29 09:49:43'),(41,'Three reasons to work at WePay:','<h2>The great benefits are just a bonus</h2>','','loudspeaker-small3.jpg','image_block','','','','','2015-10-29 10:50:44','2015-10-29 09:50:44'),(42,'august capital','','#','augustcapital.png','logo','','','','','2015-10-15 11:21:48','2015-10-15 11:21:48'),(43,'films','','#','films.png','logo','','','','','2015-10-15 11:22:06','2015-10-15 11:22:06'),(44,'ftv','','#','ftv.png','logo','','','','','2015-10-15 11:22:28','2015-10-15 11:22:28'),(45,'highland','','#','highland.png','logo','','','','','2015-10-15 11:22:51','2015-10-15 11:22:51'),(46,'rokuten','','#','rokute.png','logo','','','','','2015-10-15 11:23:11','2015-10-15 11:23:11'),(47,'Maximum conversion, maximum revenue','<p>Our seamless payments experience supercharges conversions by making new user sign-up easier and checkout faster.</p>','#','wepay-how-can-we-helpNEW23_03.png','image_block','','','','','2015-10-29 10:15:35','2015-10-29 09:15:35'),(48,'Never lose a single cent to fraud','<p>Every transaction processed by WePay is secured by our industry-leading risk technology. And if some does get through, don’t worry: we’ll eat that cost so you don’t have to.</p>\r\n<ul>\r\n<li>A complete risk management solution</li>\r\n<li>Rules engine: We monitor 700+ number of signals to catch fraud the other guys miss</li>\r\n<li>Machine learning algorithms: Catch twice as much fraud with fewer mistakes than a rules engine alone</li>\r\n<li>Fast decisions, faster payouts: only 1.3 percent of transactions require manual review</li>\r\n</ul>','#','wepay-how-can-we-helpNEW23_06.png','image_block','','','','','2015-10-29 10:16:09','2015-10-29 09:16:09'),(49,'You don’t compromise on UX. Neither do we.','<p>We’re fully customizable, so you’ll never need to compromise your look and feel. Customize Everything: Sign-Up, Checkout, Email communications</p>','#','wepay-how-can-we-helpNEW23_11.png','image_block','','','','','2015-10-29 10:16:53','2015-10-29 09:16:53'),(50,'The most compliant payments product. Period.','<p>There’s no extra licensing required when you integrate with WePay. We’ll even mail your users their tax documents so you don’t have to.</p>','#','wepay-how-can-we-helpNEW23_13.png','image_block','','','','','2015-10-29 10:17:20','2015-10-29 09:17:20'),(51,'No matter what, we’ve got your back','<p>Our award-winning support team is YOUR award winning support team. We integrate behind the scenes to provide seamless Tier 2 support for your toughest payment questions.</p>','#','little_people_03.png','image_block','','','','','2015-10-29 10:19:20','2015-10-29 09:19:20'),(52,'A partner that grows with you','<p>Our integration can be as simple as a YouTube embed or as robust as custom software — you decide what you need. As you grow and those needs change, we change with you, building new features onto what already exists.</p>','#','wepay-how-can-we-helpNEW23_19.png','image_block','','','','','2015-10-29 10:19:50','2015-10-29 09:19:50'),(53,'Controlled UX.','<p>Lorem ipsum dolor sit amet, consectur adipisicing elit, sed do eiusmod.</p>','#','placeholder6.png','image_block','','','','','2015-10-16 05:33:40','2015-10-16 05:33:40'),(54,'box','','#','box.jpg','image_block','','','','','2015-10-16 05:59:46','2015-10-16 05:59:46'),(55,'box1','','about','box1.jpg','image_block','','','','','2015-10-28 13:16:15','2015-10-28 12:16:15'),(56,'box2','','#','box21.jpg','image_block','','','','','2015-10-28 15:18:26','2015-10-28 14:18:26'),(57,'box3','','#','box31.jpg','image_block','','','','','2015-10-16 06:01:04','2015-10-16 06:01:04'),(58,'box4','','','box4.jpg','image_block','','','','','2015-10-28 15:23:33','2015-10-28 14:23:33'),(59,'box5','','#','box5.jpg','image_block','','','','','2015-10-16 06:02:01','2015-10-16 06:02:01'),(60,'box6','','https://www.linkedin.com/company/wepay','box6.jpg','image_block','','','','','2015-10-28 13:10:11','2015-10-28 12:10:11'),(61,'box7','','#','box7.jpg','image_block','','','','','2015-10-16 06:03:05','2015-10-16 06:03:05'),(62,'box8','','careers','box8.jpg','image_block','','','','','2015-10-28 13:15:07','2015-10-28 12:15:07'),(63,'box9','','#','box9.jpg','image_block','','','','','2015-10-16 06:03:46','2015-10-16 06:03:46'),(64,'box10','','#','box10.jpg','image_block','','','','','2015-10-16 06:05:26','2015-10-16 06:05:26'),(65,'box11','','careers','box11.jpg','image_block','','','','','2015-10-28 16:38:27','2015-10-28 15:38:27'),(66,'box12','','#','box12.jpg','image_block','','','','','2015-10-16 06:06:12','2015-10-16 06:06:12'),(67,'box13','','#','box13.jpg','image_block','','','','','2015-10-16 06:07:34','2015-10-16 06:07:34'),(68,'box14','','https://twitter.com/WePay','box14.jpg','image_block','','','','','2015-10-28 13:08:52','2015-10-28 12:08:52'),(69,'box15','','#','box15.jpg','image_block','','','','','2015-10-16 06:08:17','2015-10-16 06:08:17'),(70,'box16','','#','box16.jpg','image_block','','','','','2015-10-29 10:57:56','2015-10-29 09:58:05'),(71,'test widget','<p>asd</p>','','box4.jpg','logo','','','','','2015-10-30 08:50:53','2015-10-30 07:51:02');
/*!40000 ALTER TABLE `image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `links`
--

DROP TABLE IF EXISTS `links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `display` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `main` tinyint(1) DEFAULT NULL,
  `edit` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `links`
--

LOCK TABLES `links` WRITE;
/*!40000 ALTER TABLE `links` DISABLE KEYS */;
INSERT INTO `links` VALUES (1,'Links','Link','2015-09-30 06:59:11','2015-10-27 12:58:50',NULL,1),(2,'Pages','page','2015-09-30 08:03:48','2015-10-27 12:58:47',NULL,2),(3,'Blocks','block','2015-09-30 09:17:18','2015-10-27 12:58:42',NULL,2),(4,'Block types','blocktypes','2015-10-01 07:25:30','2015-10-27 12:58:35',NULL,2),(5,'Block fields','blockfield','2015-10-01 08:23:10','2015-10-27 12:58:30',NULL,2),(6,'People','team','2015-10-05 12:26:21','2015-10-27 12:58:27',NULL,2),(7,'Block widgets','image','2015-10-06 08:48:16','2015-10-27 12:58:24',NULL,2),(8,'Menus','menu','2015-10-07 08:31:01','2015-10-27 12:58:21',NULL,1),(9,'Menu items','menuitem','2015-10-07 08:31:07','2015-10-27 12:58:19',NULL,1),(10,'Testimonials','testimonial','2015-10-12 09:30:59','2015-10-27 12:58:15',NULL,2),(11,'Posts','post','2015-10-12 10:55:52','2015-10-27 12:58:07',NULL,2),(12,'Users','users','2015-10-27 09:06:29','2015-10-27 12:53:26',NULL,1);
/*!40000 ALTER TABLE `links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `position` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  `items_order` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'Top Menu','top',1,'[\"1\",\"3\",\"6\",\"10\",\"9\",\"11\",\"12\",\"13\",\"14\",\"15\",\"16\"]','2015-10-29 10:34:45','2015-10-29 09:34:54'),(2,'Bottom menu','bottom',1,'[\"17\",\"18\",\"19\",\"8\",\"7\"]','2015-10-29 16:33:13','2015-10-29 15:33:13');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menuitem`
--

DROP TABLE IF EXISTS `menuitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menuitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `new_tab` int(11) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `parent_2` (`parent`),
  KEY `parent` (`menu_id`),
  CONSTRAINT `menuitem_ibfk_1` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menuitem`
--

LOCK TABLES `menuitem` WRITE;
/*!40000 ALTER TABLE `menuitem` DISABLE KEYS */;
INSERT INTO `menuitem` VALUES (1,'About','about',0,NULL,1,'2015-10-07 09:13:39','2015-10-07 09:13:39'),(3,'Solutions','solutions',0,0,1,'2015-10-28 15:47:23','2015-10-28 14:47:23'),(6,'More','#',0,0,1,'2015-10-07 09:40:17','2015-10-07 09:40:17'),(7,'Sitemap','#',0,0,2,'2015-10-29 16:34:25','2015-10-29 15:34:25'),(8,'Privacy & Terms','privacy',0,0,2,'2015-10-29 15:42:20','2015-10-29 14:42:20'),(9,'People','people',0,6,1,'2015-10-28 11:06:42','2015-10-28 11:06:42'),(10,'Careers','careers',0,6,1,'2015-10-28 11:06:59','2015-10-28 11:06:59'),(11,'Payment for business','business',0,6,1,'2015-10-29 10:40:21','2015-10-29 09:40:21'),(12,'How can we help','how-can-we-help',0,6,1,'2015-10-28 12:39:35','2015-10-28 12:39:35'),(13,'Pricing','pricing',0,6,1,'2015-10-28 12:39:58','2015-10-28 12:39:58'),(14,'Getting started','get-started',0,6,1,'2015-10-28 14:00:07','2015-10-28 13:00:07'),(15,'Testimonials','testimonials',0,6,1,'2015-10-29 12:13:15','2015-10-29 11:13:15'),(16,'News & Events','news-press',0,6,1,'2015-10-28 14:33:45','2015-10-28 13:33:45'),(17,'Security','security',0,0,2,'2015-10-29 15:41:16','2015-10-29 14:41:16'),(18,'Legal','legal',0,0,2,'2015-10-29 06:51:59','2015-10-29 06:51:59'),(19,'Support','https://support.wepay.com/hc/en-us',1,0,2,'2015-10-29 06:52:51','2015-10-29 06:52:51');
/*!40000 ALTER TABLE `menuitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES ('2014_11_16_205658_create_admins_table',1),('2014_12_02_152920_create_password_reminders_table',1),('2015_02_20_130902_create_url_table',1),('2015_03_15_123956_edit_url_table',1),('2015_01_15_105324_create_roles_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page`
--

DROP TABLE IF EXISTS `page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `seo_title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `seo_keywords` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `seo_desc` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `blocks_order` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page`
--

LOCK TABLES `page` WRITE;
/*!40000 ALTER TABLE `page` DISABLE KEYS */;
INSERT INTO `page` VALUES (1,'Home Page','home-page','Online Payment Solutions | Accept Online Payments | WePay','payment services','<p><span data-sheets-value=\"[null,2,\">We\'re WePay. A leading payment services provider, offering online payment gateways and payment solutions designed to supercharge your growth. Intrigued? </span></p>','2015-10-20 05:56:07','2015-10-20 03:56:07','[\"1\",\"9\",\"10\",\"11\",\"5\",\"2\",\"12\",\"13\",\"16\",\"17\"]'),(3,'About','about','About Us | WePay','About WePay','<p><span style=\"font-size: 13px; font-family: arial,sans,sans-serif;\" data-sheets-value=\"[null,2,\"WePay is here to make a difference and we\'re passionate about our values. Find out who we are, where we\'ve come from and what we\'re going to achieve.\"]\" data-sheets-userformat=\"[null,null,641,[null,0],null,null,null,null,null,null,2,null,0]\">WePay is here to make a difference and we\'re passionate about our values. Find out who we are, where we\'ve come from and what we\'re going to achieve.</span></p>','2015-10-29 11:31:47','2015-10-29 10:31:47','[\"18\",\"64\",\"65\",\"66\",\"19\",\"20\",\"21\",\"23\",\"22\",\"24\",\"25\",\"26\",\"39\",\"40\",\"41\"]'),(4,'Business','business','Payments for Business | WePay','payements for business','<p><span style=\"font-size: 13px; font-family: arial,sans,sans-serif;\" data-sheets-value=\"[null,2,\">The ultimate in online business payments. From exceptional data control through to supreme fraud protection, WePay\'s solutions are designed to help you grow.</span></p>','2015-10-29 11:25:42','2015-10-29 10:25:42','[\"27\",\"28\",\"29\",\"30\",\"50\"]'),(5,'People','people','Our People | WePay','WePay people','<p><span style=\"font-size: 13px; font-family: arial,sans,sans-serif;\" data-sheets-value=\"[null,2,\"People power WePay. We wouldn\'t be where we are today without exceptional people. Find out who we are and the core values that drive our business.\"]\" data-sheets-userformat=\"[null,null,641,[null,0],null,null,null,null,null,null,2,null,0]\">People power WePay. We wouldn\'t be where we are today without exceptional people. Find out who we are and the core values that drive our business.</span></p>','2015-10-29 11:43:18','2015-10-29 10:43:18','[\"31\",\"32\",\"46\",\"33\",\"34\",\"49\",\"49\"]'),(6,'Careers','careers','Awesome Careers and Job Opportunities | WePay','WePay careers','<p><span style=\"font-size: 13px; font-family: arial,sans,sans-serif;\" data-sheets-value=\"[null,2,\">Interested in working within the fast paced online payment sector? Make a real difference at WePay, view our selection of career and job opportunities.</span></p>','2015-10-29 11:45:48','2015-10-29 10:45:48','[\"35\",\"36\",\"37\",\"38\",\"49\"]'),(7,'How Can We Help','how-can-we-help','How Can We Help | WePay','WePay how we can help','<p>How Can We Help</p>','2015-10-29 12:10:10','2015-10-29 11:10:10','[\"42\",\"45\",\"43\",\"44\"]'),(8,'Testimonials','testimonials','Who loves us? | Client Testimonials | WePay','WePay testimonials','<p><span style=\"font-size: 13px; font-family: arial,sans,sans-serif;\" data-sheets-value=\"[null,2,\" data-sheets-userformat=\"[null,null,641,[null,0],null,null,null,null,null,null,2,null,0]\">We\'re fortunate to serve a wonderful group of platforms around the globe. From small to large organisations, we\'ve worked with them all. See who we power.</span></p>','2015-10-29 16:48:53','2015-10-29 15:48:53','[\"47\",\"50\",\"48\",\"49\"]'),(10,'Get Started','get-started','Getting Started | WePay','Get Started','<p><span style=\"font-size: 13px; font-family: arial,sans,sans-serif;\" data-sheets-value=\"[null,2,\">Signing up and joining WePay is efficient and easy, just like our product. Contact us, and one of our specialists will be in touch.</span></p>','2015-10-29 11:30:50','2015-10-29 10:30:50','[\"51\",\"52\",\"53\"]'),(11,'Thank you ','thank-you','Thank you ','Thank you','<p>Thanks</p>','2015-10-20 11:30:15','2015-10-20 09:30:15','[\"61\",\"62\"]'),(12,'Legal','legal','Terms of Service | WePay','WePay legal terms','<p><span style=\"font-size: 13px; font-family: arial,sans,sans-serif;\" data-sheets-value=\"[null,2,\"When using our website and services, you will be abiding by the WePay terms of service. View the full details here.\"]\" data-sheets-userformat=\"[null,null,641,[null,0],null,null,null,null,null,null,2,null,0]\">When using our website and services, you will be abiding by the WePay terms of service. View the full details here.</span></p>','2015-10-29 11:39:25','2015-10-29 10:39:25',''),(13,'Privacy','privacy','Privacy Policy | WePay','privacy','<p><span style=\"font-size: 13px; font-family: arial,sans,sans-serif;\" data-sheets-value=\"[null,2,\"When using our website and services, you are agreeing to our privacy policy. Find out full details >When using our website and services, you are agreeing to our privacy policy. Find out full details on the WePay privacy policy.</span></p>','2015-10-29 11:40:30','2015-10-29 10:40:30',''),(14,'Pricing','pricing','Pricing and Costs | WePay','Pricing','<p><span style=\"font-size: 13px; font-family: arial,sans,sans-serif;\" data-sheets-value=\"[null,2,\"Considering WePay? Find out all the key information >Considering WePay? Find out all the key information on pricing and costs, whether it\'s our flat rate option or our custom payment model.</span></p>','2015-10-29 11:26:18','2015-10-29 10:26:18','[\"56\",\"57\"]'),(17,'404 Page not found','404','404 Page not found | WePay','404 Page not found','<p>404 Page not found</p>','2015-10-29 11:51:38','2015-10-29 10:51:38','[\"67\",\"68\"]'),(18,'Solutions','solutions','Our Incredible Features | WePay','solutions','<p><span style=\"font-size: 13px; font-family: arial,sans,sans-serif;\" data-sheets-value=\"[null,2,\"Filled with exceptional features, from our flexible API  to our advanced fraud protection, find out why WePay should be your new >Filled with exceptional features, from our flexible API to our advanced fraud protection, find out why WePay should be your new online payment provider.</span></p>','2015-10-29 11:38:12','2015-10-29 10:38:12','[\"70\",\"71\",\"72\",\"73\",\"74\",\"78\",\"81\",\"82\",\"83\",\"84\",\"85\",\"75\",\"76\"]'),(19,'letter','letter','Bill Clerico | WePay','Bill Clerico','<p>Open letter from Bill Clerico, WePay</p>','2015-10-29 11:50:46','2015-10-29 10:50:46','[\"80\",\"79\"]'),(20,'Security','security','Safety and Security | WePay','Online Security','<p><span style=\"font-size: 13px; font-family: arial,sans,sans-serif;\" data-sheets-value=\"[null,2,\"Ensuring ultimate security for consumer and company data is crucial at WePay. Discover how we secure your data, from 256 bit encryption through to PCI compliance.\"]\" data-sheets-userformat=\"[null,null,641,[null,0],null,null,null,null,null,null,2,null,0]\">Ensuring ultimate security for consumer and company data is crucial at WePay. Discover how we secure your data, from 256 bit encryption through to PCI compliance.</span></p>','2015-10-29 11:41:38','2015-10-29 10:41:38','[\"87\",\"86\"]'),(23,'test','test','test','test','<p>test</p>','2015-10-27 10:52:56','2015-10-27 10:52:56','');
/*!40000 ALTER TABLE `page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reminders`
--

DROP TABLE IF EXISTS `password_reminders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_reminders` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `password_reminders_email_index` (`email`),
  KEY `password_reminders_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reminders`
--

LOCK TABLES `password_reminders` WRITE;
/*!40000 ALTER TABLE `password_reminders` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reminders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permission_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `permission_id` (`permission_id`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `permission_role_ibfk_1` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_role`
--

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_user`
--

DROP TABLE IF EXISTS `permission_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permission_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `permission_id` (`permission_id`,`user_id`),
  KEY `permission_id_2` (`permission_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `permission_user_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_user_ibfk_1` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_user`
--

LOCK TABLES `permission_user` WRITE;
/*!40000 ALTER TABLE `permission_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `permission_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `seo_title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `seo_desc` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `seo_keywords` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `subtitle` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (1,'News 1','news-1','seo title','<p>seo desc</p>','seo keyword','Subtitle News 1','<h2>Content News 1</h2>\r\n<p><a href=\"google.com\" target=\"_blank\">Lorem ipsum</a> dolor sit amet, <strong>consectetur</strong> <em>adipiscing</em> elit. Duis <span style=\"text-decoration: underline;\">malesuada</span> erat enim, vel ornare erat sagittis quis. Nunc sed felis nulla. Nullam pulvinar pretium justo, ac convallis magna aliquet nec. Aliquam imperdiet sagittis gravida. Curabitur iaculis posuere est, vitae finibus turpis. Praesent hendrerit ante blandit, mollis magna a, accumsan dolor. Sed placerat aliquet tortor, non semper leo tristique sit amet. Maecenas pulvinar commodo dui. Ut sollicitudin risus arcu, eget pharetra dui ullamcorper eu. Suspendisse potenti. Pellentesque cursus, dui eu dapibus efficitur, lacus ante luctus elit, at pulvinar leo metus sit amet ex. Mauris sapien neque, rhoncus in neque sit amet, feugiat ultrices dui. In in massa vel nunc pretium iaculis. Praesent vulputate feugiat eros, sed mollis tortor porta a. Praesent a nisi ut nibh ultrices pellentesque vel volutpat lacus.</p>\r\n<p><img src=\"../../elfinder/connector?_token=kMOxa2kfhD5JUKuqNZ7Hm5lVliQH3QLsUysiIvM8&amp;cmd=file&amp;target=fls2_aW1hZ2VzL2Fib3V0LXNlY3Rpb24tMS5qcGc\" alt=\"\" width=\"800\" height=\"319\" /></p>\r\n<p>Vestibulum bibendum sapien euismod risus ornare, vel faucibus sem varius. Morbi commodo tellus a tempor tincidunt. Nulla ullamcorper sapien non neque rhoncus mollis. Mauris egestas diam in dapibus tristique. Nunc gravida imperdiet risus, scelerisque sollicitudin eros tincidunt ut. Sed sollicitudin faucibus purus, in imperdiet turpis ultrices ac. Phasellus sit amet dui sem. Ut vitae pretium sapien.</p>','news','','2015-10-27 09:40:15','2015-10-20 06:34:12'),(2,'News 2','news-2','','','','Subtitle News 2','<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>','news','','2015-10-27 09:40:19','2015-10-16 10:19:20'),(3,'News 3','news-3','','','','Subtitle News 3','<p>News 3 It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>','news','','2015-10-27 09:40:21','2015-10-16 10:19:13'),(4,'News 4','news-4','','','','Subtitle News 4','<h2>Title</h2>\r\n<p>News 4 It is a long <strong>Bold </strong>fact that a <em>Italic </em>will be <span style=\"text-decoration: underline;\">Underline </span>by the readable <a title=\"Google link\" href=\"google.com\" target=\"_blank\">LINK </a>of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>','news','','2015-10-27 09:40:26','2015-10-16 10:19:05'),(5,'Silicon Valley Business Journal Adds WePay to Fastest-Growing List','wepay-named-as-the-5th-fastest-growing-private-company','Silicon Valley Business Journal Adds WePay to Fastest-Growing List','<p>Wepay </p>','Silicon, valley','WePay, a provider of payments as a service for online platforms including GoFundMe, Care.com and FreshBooks, today announced it has been named by Silicon Valley Business Journal as the 5th fastest-gro','<p class=\"responsiveNews\"><a href=\"https://wepay.com/\" target=\"_blank\" rel=\"nofollow\">WePay</a>, a provider of payments as a service for online platforms including GoFundMe, Care.com and FreshBooks, today announced it has been named by Silicon Valley Business Journal as the 5th fastest-growing private company in the region.</p>\r\n<p class=\"responsiveNews\">In making the list, WePay joins an impressive cadre of past winners including Facebook, Linkedin, and Marketo.</p>\r\n<p class=\"responsiveNews\">WePay partners closely with online platforms big and small to provide fully integrated payments operations while protecting them from risk and regulatory exposure, so they can deliver the user experiences they want without taking on the overhead they don’t want.</p>\r\n<p class=\"responsiveNews\">The company delivered 4,354.5% growth over the past three years in powering payments for hundreds of leading platforms in crowdfunding, business management, and retail good and services.</p>\r\n<p class=\"responsiveNews\"><img class=\"alignleft size-full wp-image-24905\" src=\"http://cdn.crowdfundinsider.com/wp-content/uploads/2013/10/Bill-Clerico.png\" alt=\"Bill Clerico\" width=\"200\" height=\"200\" /></p>\r\n<p class=\"responsiveNews\">Bill Clerico, CEO of WePay, stated:</p>\r\n<blockquote>\r\n<p class=\"responsiveNews\">“We’re honored to be recognized for high growth in one of the world’s highest growth markets. Yet the real heroes here are our customers in the burgeoning platform economy – their success fuels our success.”</p>\r\n</blockquote>\r\n<p class=\"responsiveNews\">The annual SVBJ Fastest-Private list ranks companies by revenue growth over a three-year period.</p>\r\n<p class=\"responsiveNews\"> </p>','news','','2015-10-27 16:48:19','2015-10-27 15:48:19'),(6,'News 6 - Much Longer title reader will be distracted by the readable content of','news-6-much-longer-title-reader-will-be-distracted-by-the-readable-content-of','','','','Subtitle News 6','<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). </p>','news','','2015-10-27 09:40:30','2015-10-16 10:18:49'),(7,'Event post 1 - long title distracted by the readable content of a page when looking','event-post-1-long-title-distracted-by-the-readable-content-of-a-page-when-looking','','','','Subtitle comes here','<h1>Heading 1</h1>\r\n<h2>Heading 2</h2>\r\n<h3>Heading 3</h3>\r\n<h4>Heading 4</h4>\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>','events','','2015-10-16 12:18:05','2015-10-16 10:18:10'),(8,'Events 2','event-2','','','','Subtitle Event 2','<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>','events','','2015-10-16 12:17:26','2015-10-16 10:17:31'),(9,'Event 3','event-3','','','','Subtitle Event 3','<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n<p><img src=\"../../elfinder/connector?_token=zmfpxMKFeSsDjtOzrMSv8OlhVY97nMlOI1R65zj7&amp;cmd=file&amp;target=fls2_MjY3MzQ1LWFtYW5kYS1jcmV3LmpwZw\" alt=\"Custom image\" width=\"400\" height=\"587\" /></p>\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by acc','events','','2015-10-16 12:17:18','2015-10-16 10:17:22'),(10,'Event 4','event-4','','','','Subtitle event 4','<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>','events','','2015-10-16 12:17:11','2015-10-16 10:17:16'),(11,'News 7','news-7','News 7','<p>News 7</p>','News 7','Subtitle News 7','<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>','news','http://www.revenuehits.com','2015-10-27 15:51:19','2015-10-27 14:51:26');
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_user`
--

DROP TABLE IF EXISTS `role_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `role_user_role_id_foreign` (`role_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `role_user_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_user`
--

LOCK TABLES `role_user` WRITE;
/*!40000 ALTER TABLE `role_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Admin','admin',NULL,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(2,'Moderator','moderator',NULL,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team`
--

DROP TABLE IF EXISTS `team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `position` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team`
--

LOCK TABLES `team` WRITE;
/*!40000 ALTER TABLE `team` DISABLE KEYS */;
INSERT INTO `team` VALUES (3,'Bill Clerico','Co-founder and CEO','<p>Bill was an technology investment banker at Jefferies, and studied Computer Science at Boston College.</p>','bill-clerico.jpg','2015-10-13 09:06:05','2015-10-13 09:06:05'),(4,'Rich Aberman','Co-founder and CPO','<p>Rich was a law student at NYU. At Boston College, Rich studied Philosophy, Economics and Political Science.</p>','rich-aberman.jpg','2015-10-13 09:06:45','2015-10-13 09:06:45'),(5,'Kurt Bilafer','VP, Sales & Customer Success','<p>Kurt joined WePay in 2015 from SAP, where he ran global sales for teams. Prior to that, he co-founded Pilot Software, which was sold to SAP.</p>','kurt-bilafer.jpg','2015-10-23 14:39:31','2015-10-23 12:39:31'),(6,'Steve Pellizzer','CFO','<p>For 10 years, Steve served as the CFO of CyberSource (INYSE: CYBS) until its acquisition by Visa for $2 billion.</p>','steve-pellizzer.jpg','2015-10-13 14:33:27','2015-10-13 12:33:28'),(7,'Karen White','VP, Product','<p>Karen has been an executive at PayCycle, Picaboo and GreenRoad. She has a BS from Tufts and an MBA from Stanford.</p>','karen-white.jpg','2015-10-13 09:12:06','2015-10-13 09:12:06'),(8,'Tina Hsiao','VP, Customer Delight','<p>Tina spent 10 years at Intuit running marketing and support teams. She has a degree from Columbia and a MBA from Harvard.</p>','tina-hsiao.jpg','2015-10-13 09:12:35','2015-10-13 09:12:35'),(9,'Chris Conrad','VP, Engineering','<p>Chris spent 7 years at Linkedin as Director of Engineering running the Social Graph Database and Homepage teams.</p>','chris-conrad.jpg','2015-10-13 09:13:28','2015-10-13 09:13:28'),(10,'John Canfield','VP, Risk Management','<p>John spent 8 years at eBay as Senior Director of Fraud and Risk Managemert. He has degrees in engineering from MIT and a MBA from Stanford.</p>','john-canfield.jpg','2015-10-13 09:13:56','2015-10-13 09:13:56'),(11,'Susan Dunn','General Counsel','<p>Susan was the GC for PayCycle, Bill.com and ODesk, has been a partner at Fenwick, and also clerked for the U.S. Supreme Court. She holds degrees from Harvard and Stanford.</p>','susan-dunn.jpg','2015-10-13 09:14:58','2015-10-13 09:14:58');
/*!40000 ALTER TABLE `team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonial`
--

DROP TABLE IF EXISTS `testimonial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testimonial` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `seo_title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `seo_keywords` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `seo_desc` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL,
  `featured_copy` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `quote` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `quote_from` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `main_image` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `small_image` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `preview_image` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `content1` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `customer_title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `customer_content` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `challange_title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `challange_content` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `solution_title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `solution_content` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `benefits_title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `benefits_content` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `content2` text COLLATE utf8_unicode_ci NOT NULL,
  `content3` text COLLATE utf8_unicode_ci NOT NULL,
  `blue_quote_text` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `blue_quote_author` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonial`
--

LOCK TABLES `testimonial` WRITE;
/*!40000 ALTER TABLE `testimonial` DISABLE KEYS */;
INSERT INTO `testimonial` VALUES (1,'Meet Up','meet-up','Meet Up','Meet Up','<p>Meet Up</p>',1,'<p>FreshBooks moved from a 3rd party payments experience to its own streamlined, conversion-friendly product using WePay</p>','<p>FreshBooks Payments has enabled us to make payments more transparent for our users. Users know exactly when payments are going to hit their bank account, they know which payments have completed vs.','<p>Brandon Chu, Director of Product Management, FreshBooks</p>','meetup-image.jpg','meetup-logo1.png','meetup1.png','<div class=\"column\">\r\n<div class=\"section\">\r\n<h2>The customer</h2>\r\n<p>Os auditae poribus maio. pore cus etum, quo voloressi aboriam qui sum nis porempo rehent, ipit aut que suntur, occus.Hil inctotate peliquam, aliquiasped lorem.</p>\r\n</div>\r\n<div class=\"section\">\r\n<h2>The solution</h2>\r\n<p>Os auditae poribus maio. pore cus etum, quo voloressi aboriam qui sum nis porempo rehent, ipit aut que suntur, occus.Hil inctotate peliquam, aliquiasped lorem.</p>\r\n</div>\r\n</div>\r\n<div class=\"column\">\r\n<div class=\"section\">\r\n<h2>The challenge</h2>\r\n<p>Os auditae poribus maio. pore cus etum, quo voloressi aboriam qui sum nis porempo rehent, ipit aut que suntur, occus.Hil inctotate peliquam, aliquiasped lorem.</p>\r\n</div>\r\n<div class=\"section\">\r\n<h2>The benefits</h2>\r\n<p>Os auditae poribus maio. pore cus etum, quo voloressi aboriam qui sum nis porempo rehent, ipit aut que suntur, occus.Hil inctotate peliquam, aliquiasped lorem.</p>\r\n</div>\r\n</div>','The customer','<p>FreshBooks is the #1 cloud-based accounting software designed exclusively for service-based small business owners. More than 10 million users turn to FreshBooks to send invoices, track time, collect online payments, manage expenses and run reports</p>','The challenge','<p>Although FreshBooks values making things as simple as possible for its users, multiple payment providers created a less streamlined product and a more difficult support experience. Freshbooks explored building its own payments product internally, but found it would be too distracting, costly, and time consuming</p>','The solution','<p>FreshBooks turned to WePay to power FreshBooks Payments, a payments product that\'s integrated tightly into the FreshBooks experience. Working with WePay allowed FreshBooks to go to market in half the time it would have taken to build a product itself without taking on additional risk or overhead.</p>','The benefits','<p>FreshBooks Payments quickly became popular with users, with 55% choosing it as their processor. Not only that, but FreshBooks found those users made 40% more transactions than users on other payments providers.</p>','<h1>FreshBooks moved from a 3rd party payments experience to its own streamlined, conversion-friendly product using WePay.</h1>\r\n<p>us etum, quo voloressi aboriam qui su porempo rehent, ipit aut que suntur, occus.Hil inctotate peliquam, aliquiasped lorem.</p>\r\n<p><img src=\"http://smallbiztrends.com/wp-content/uploads/2013/08/FreshBooks-first-screen-after-signup.jpg\" alt=\"\" width=\"772\" height=\"493\" /></p>\r\n<p>Os auditae poribus maio. pore cus etum, quo voloressi aboriam qui su porempo rehent, ipit aut que suntur, occus.Hil inctotate peliquam, aliquiasped lorem. Soltora ium meni iam inprobse confex movit iamquod itiquam ium furbeff rensil horem publica escerit, que egerem. Hil crum tem, invenatur. Grave, aut L. Mulater ebatus clus, quiteris ficibun tiorumendi ta inatuidiciam faciam se, non videt; nenatiquius enatod faciae nos Mulviliu et furis, esse eo, que tem sil us; inam inimoret gra novis.</p>\r\n<p><a href=\"#\">lorem ipsum</a> <a href=\"#\">lorem ipsum</a> <a href=\"#\">lorem ipsum</a> &lt;a</p>','<h2>KEY TAKE-OUT</h2>\r\n<p>FreshBooks payments users make 40% percent more transactions then those using other payment providers.</p>\r\n<hr />\r\n<p>Os auditae poribus maio. pore cus etum, quo voloressi aboriam qui sum nis porempo rehent,ipit aut que suntur, occus.Hil inctotate peliquam.</p>\r\n<hr />\r\n<p>Os auditae poribus maio. pore cus etum, quo voloressi aboriam qui sum nis porempo rehent,ipit aut que suntur, occus.Hil inctotate peliquam.</p>\r\n<hr />\r\n<p>Os auditae poribus maio. pore cus etum, quo voloressi aboriam qui sum nis porempo rehent,ipit aut que suntur, occus.Hil inctotate peliquam.</p>','We pay works closely with us to create the best possible experience for our users. Having that level of partnership lets us feel like we\'re in control of our destiny.','Brandon Chu, Director of product management, Fresh Books','2015-10-29 13:54:55','2015-10-23 12:03:52'),(2,'Testimonial 2','testimonial-2','','','',1,'<p>Featured copy</p>','<p>Quote comes here</p>','<p>Author of quote </p>','1000-autumn-maples-font-b-fall-b-font-font-b-scenery-b-font-jigsaw-puzzle-casual.jpg','meetup-logo2.png','meetup11.png','<p>First content text area</p>','Customer title','<p>Customer content area</p>','Challenge title text','<p>Challenge content area </p>','Solution Title Area','<p>Solution content area</p>','Benefits title text','<p>benefits area</p>','<h2>Second content area</h2>\r\n<p>Paragraph </p>','<p>Third content area</p>','','','2015-10-16 12:57:06','2015-10-16 10:57:06'),(6,'sadfsad','asdfas','werwer','ewrew','<p>erggggggggggggggggg</p>',0,'<p>asdf</p>','<p>asdf</p>','<p>asdf</p>','23914-games-of-thrones-emma-watson.jpg','meetup15.png','meetup16.png','<p>asdf</p>','','<p>asdf</p>','asdf','<p>asdf</p>','asdf','<p>asdf</p>','asdf','<p>asdf</p>','<p>asdf</p>','<p>asdf</p>','','','2015-10-28 09:27:53','2015-10-16 11:04:13'),(7,'Testimonial 3','testimonial3','testimonial3','testimonial3','<p>testiomoinal3</p>',1,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur ac orci elit. Donec cursus leo at odio iaculis, at mattis magna ultricies. Nullam vel sapien vitae sem sagittis dictum ac non nunc. Morbi vitae erat id lorem dictum ultrices. Aliquam nisl sapien, placerat nec elementum fermentum, malesuada a leo. Aenean convallis orci sed dui tincidunt varius. In maximus tincidunt tellus, bibendum tempor nisi dignissim et. In et tortor et erat facilisis ornare ut a neque. Quisque non purus tur','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur ac orci elit. Donec cursus leo at odio iaculis, at mattis magna ultricies. Nullam vel sapien vitae sem sagittis dictum ac non nunc','<p>Bill Murphey</p>','sample-11.jpg','meetup17.png','meetup18.png','','The customer','<p>Maecenas sed rhoncus massa, non sodales felis. Nulla ultrices turpis id sem sodales, sed pellentesque sapien fringilla. Vestibulum nec porta sapien. Aenean ac congue augue. Phasellus mattis vehicula ex, nec varius justo fringilla id. Vivamus sagittis eget eros et rhoncus. Vivamus scelerisque sem nec turpis blandit, in tincidunt nisi imperdiet. Etiam sed leo metus. Praesent dignissim imperdiet consequat. In placerat sagittis venenatis. Aliquam tortor enim, bibendum at lorem nec, interdum solli','The challenge','<p>Pellentesque pulvinar dolor ex, a pharetra erat aliquet interdum. Donec maximus nisl nisl, id porttitor felis sodales non. Fusce ac purus vel lacus fringilla tincidunt luctus ut lorem. Sed pulvinar nibh vitae molestie elementum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi a dictum nulla. Donec volutpat odio ac facilisis ornare.</p>','The Solution','<p>blandit, consequat leo vel, dignissim orci. Donec dolor leo, luctus ac cursus viverra, pretium et sem. Phasellus at lobortis magna, ut elementum magna. Pellentesque efficitur tincidunt lectus, sit amet porta mi blandit mollis. Proin scelerisque feugiat velit, et vulputate ante dignissim eget. Quisque sit amet est bibendum, dignissim nisl in, auctor est. Integer nec efficitur mauris. Maecenas ligula urna, sollicitudin vitae consequat vel, vulputate eu risus.</p>','The Benefits','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur ac orci elit. Donec cursus leo at odio iaculis, at mattis magna ultricies. Nullam vel sapien vitae sem sagittis dictum ac non nunc. Morbi vitae erat id lorem dictum ultrices. Aliquam nisl sapien, placerat nec elementum fermentum, malesuada a leo. Aenean convallis orci sed dui tincidunt varius. In maximus tincidunt tellus, bibendum tempor nisi dignissim et. In et tortor et erat facilisis ornare ut a neque. Quisque non purus tur','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur ac orci elit. Donec cursus leo at odio iaculis, at mattis magna ultricies. Nullam vel sapien vitae sem sagittis dictum ac non nunc. Morbi vitae erat id lorem dictum ultrices. Aliquam nisl sapien, placerat nec elementum fermentum, malesuada a leo. Aenean convallis orci sed dui tincidunt varius. In maximus tincidunt tellus, bibendum tempor nisi dignissim et. In et tortor et erat facilisis ornare ut a neque. Quisque non purus turpis. Nunc ante erat, luctus facilisis vulputate et, commodo in sem. Quisque rutrum nisi turpis, sed efficitur metus aliquet vitae. Sed gravida elementum turpis, sed iaculis lorem imperdiet et. Duis rhoncus mollis tellus, eget consequat magna venenatis pretium. Morbi sit amet elit leo.</p>\r\n<p><img src=\"../../elfinder/connector?_token=lu88Lc7g9pgmVjeHARO64Kj3k7b5Ui5vf0Sb8Dbp&amp;cmd=file&amp;target=fls2_c2FtcGxlLTEuanBn\" alt=\"\" width=\"420\" height=\"315\" /></p>','<h2>KEY TAKE-OUT</h2>\r\n<p>FreshBooks payments users make 40% percent more transactions then those using other payment providers.</p>\r\n<hr />\r\n<p>Os auditae poribus maio. pore cus etum, quo voloressi aboriam qui sum nis porempo rehent,ipit aut que suntur, occus.Hil inctotate peliquam.</p>\r\n<hr />\r\n<p>Os auditae poribus maio. pore cus etum, quo voloressi aboriam qui sum nis porempo rehent,ipit aut que suntur, occus.Hil inctotate peliquam.</p>\r\n<hr />\r\n<p>Os auditae poribus maio. pore cus etum, quo voloressi aboriam qui sum nis porempo rehent,ipit aut que suntur, occus.Hil inctotate peliquam.</p>','Os auditae ','Bill Williams','2015-10-28 09:28:54','2015-10-26 11:20:07'),(8,'Testimonial 4','testimonial4','testimonial4','testimonial4','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur ac orci elit. Donec cursus leo at odio iaculis, at mattis magna ultricies. Nullam vel sapien vitae sem sagittis dictum ac non nunc. Morbi vitae erat id lorem dictum ultrices. Aliquam nisl sapien, placerat nec elementum fermentum, malesuada a leo. Aenean convallis orci sed dui tincidunt varius. In maximus tincidunt tellus, bibendum tempor nisi dignissim et. In et tortor et erat facilisis ornare ut a neque. Quisque non purus tur',1,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur ac orci elit. Donec cursus leo at odio iaculis, at mattis magna ultricies. Nullam vel sapien vitae sem sagittis dictum ac non nunc. Morbi vitae erat id lorem dictum ultrices. Aliquam nisl sapien, placerat nec elementum fermentum, malesuada a leo. Aenean convallis orci sed dui tincidunt varius. In maximus tincidunt tellus, bibendum tempor nisi dignissim et. In et tortor et erat facilisis ornare ut a neque. Quisque non purus tur','<p>\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur ac orci elit. Donec cursus leo at odio iaculis, at mattis magna ultricies. Nullam vel sapien vitae sem sagittis dictum ac non nun','<p>Bill Murphey</p>','sample-12.jpg','meetup19.png','\\images\\meetup1.png','','Customer','<p>Maecenas sed rhoncus massa, non sodales felis. Nulla ultrices turpis id sem sodales, sed pellentesque sapien fringilla. Vestibulum nec porta sapien. Aenean ac congue augue. Phasellus mattis vehicula ex, nec varius justo fringilla id. Vivamus sagittis eget eros et rhoncus. Vivamus scelerisque sem nec turpis blandit, in tincidunt nisi imperdiet. Etiam sed leo metus. Praesent dignissim imperdiet consequat. In placerat sagittis venenatis. Aliquam tortor enim, bibendum at lorem nec, interdum solli','Challenge','<p>Pellentesque pulvinar dolor ex, a pharetra erat aliquet interdum. Donec maximus nisl nisl, id porttitor felis sodales non. Fusce ac purus vel lacus fringilla tincidunt luctus ut lorem. Sed pulvinar nibh vitae molestie elementum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi a dictum nulla. Donec volutpat odio ac facilisis ornare.</p>','Solution','<p>blandit, consequat leo vel, dignissim orci. Donec dolor leo, luctus ac cursus viverra, pretium et sem. Phasellus at lobortis magna, ut elementum magna. Pellentesque efficitur tincidunt lectus, sit amet porta mi blandit mollis. Proin scelerisque feugiat velit, et vulputate ante dignissim eget. Quisque sit amet est bibendum, dignissim nisl in, auctor est. Integer nec efficitur mauris. Maecenas ligula urna, sollicitudin vitae consequat vel, vulputate eu risus.</p>','Benefits','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur ac orci elit. Donec cursus leo at odio iaculis, at mattis magna ultricies. Nullam vel sapien vitae sem sagittis dictum ac non nunc. Morbi vitae erat id lorem dictum ultrices. Aliquam nisl sapien, placerat nec elementum fermentum, malesuada a leo. Aenean convallis orci sed dui tincidunt varius. In maximus tincidunt tellus, bibendum tempor nisi dignissim et. In et tortor et erat facilisis ornare ut a neque. Quisque non purus tur','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur ac orci elit. Donec cursus leo at odio iaculis, at mattis magna ultricies. Nullam vel sapien vitae sem sagittis dictum ac non nunc. Morbi vitae erat id lorem dictum ultrices. Aliquam nisl sapien, placerat nec elementum fermentum, malesuada a leo. Aenean convallis orci sed dui tincidunt varius. In maximus tincidunt tellus, bibendum tempor nisi dignissim et. In et tortor et erat facilisis ornare ut a neque. Quisque non purus turpis. Nunc ante erat, luctus facilisis vulputate et, commodo in sem. Quisque rutrum nisi turpis, sed efficitur metus aliquet vitae. Sed gravida elementum turpis, sed iaculis lorem imperdiet et. Duis rhoncus mollis tellus, eget consequat magna venenatis pretium. Morbi sit amet elit leo.</p>\r\n<p><img src=\"../../elfinder/connector?_token=lu88Lc7g9pgmVjeHARO64Kj3k7b5Ui5vf0Sb8Dbp&amp;cmd=file&amp;target=fls2_c2FtcGxlLTEuanBn\" alt=\"\" width=\"420\" height=\"315\" /></p>','<h2>KEY TAKE-OUT</h2>\r\n<p>FreshBooks payments users make 40% percent more transactions then those using other payment providers.</p>\r\n<hr />\r\n<p>Os auditae poribus maio. pore cus etum, quo voloressi aboriam qui sum nis porempo rehent,ipit aut que suntur, occus.Hil inctotate peliquam.</p>\r\n<hr />\r\n<p>Os auditae poribus maio. pore cus etum, quo voloressi aboriam qui sum nis porempo rehent,ipit aut que suntur, occus.Hil inctotate peliquam.</p>\r\n<hr />\r\n<p>Os auditae poribus maio. pore cus etum, quo voloressi aboriam qui sum nis porempo rehent,ipit aut que suntur, occus.Hil inctotate peliquam.</p>','Os auditae ','Bill Green','2015-10-28 14:02:12','2015-10-26 11:19:36');
/*!40000 ALTER TABLE `testimonial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin@change.me','$2y$10$xEOnDjgWbjfLPhvj1vIa1u0aKmkLBc94d52yvzGk19BU7IPKhSt9q','2015-10-05 10:45:44','2015-10-05 10:45:44'),(3,'test@test.test','$2y$10$IXBKc0YKFj8Ghmr4QkTlmOLXDXBknJ9Cwmyd4iDzEGf0rJyTu5jJu','2015-10-27 11:51:47','2015-10-27 10:51:54');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-10-30 10:08:23
