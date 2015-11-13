-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 27, 2015 at 11:41 AM
-- Server version: 5.5.43-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `founded.wepay`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE IF NOT EXISTS `admins` (
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `email`, `password`, `permissions`, `activated`, `activation_code`, `activated_at`, `last_login`, `persist_code`, `reset_password_code`, `remember_token`, `first_name`, `last_name`, `created_at`, `updated_at`) VALUES
(1, 'admin@change.me', '$2y$10$HdmrNJgQU3kkGA5VNZsP6uMjzVwVGkV7m7xjrtjXFhx67QOY/zHJK', NULL, 0, NULL, NULL, NULL, NULL, NULL, 'k4sWmzjcQWiQNnERGcoFpWFVE7b5jbMIbUfPKImexCOfUS782meyfI3TjFPa', NULL, NULL, '2015-09-30 06:59:10', '2015-10-15 05:22:52');

-- --------------------------------------------------------

--
-- Table structure for table `block`
--

CREATE TABLE IF NOT EXISTS `block` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `image_allignment` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `marker` tinyint(1) NOT NULL,
  `subblock` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=88 ;

--
-- Dumping data for table `block`
--

INSERT INTO `block` (`id`, `type`, `color`, `image_allignment`, `marker`, `subblock`, `created_at`, `updated_at`, `data`, `page_id`, `title`, `cta1`, `link1`, `cta2`, `link2`, `image`, `name`, `subtitle`, `video`, `f_title`, `f_desc`, `col_image_1`, `col_title_1`, `col_desc_1`, `col_image_2`, `col_title_2`, `col_desc_2`, `col_image_3`, `col_title_3`, `col_desc_3`, `sub_block_order`, `hidden`) VALUES
(1, '1', 'intro editable blue', 'right', 0, 0, '2015-10-26 07:44:33', '2015-10-26 06:44:33', '', 1, '<h1>Make payments your hidden strength</h1>', 'Learn more', 'solutions', 'Request consultation', 'get-started', 'intro-b.png', 'Home page block 1', '<p>Discover how you can provide a seamless payments experience that delights and converts, without overhead or risk.</p>', '', 'Featured Title', 'Featured description', '', '', '', '', '', '', '', '', '', '""', 0),
(2, '5', 'meet', 'left', 0, 0, '2015-10-23 13:06:23', '2015-10-23 11:06:23', '', 1, '<p>A true payments partner, not just an API.</p>', 'Find out more about WePay', 'business', 'cta copy', 'link', '267345-amanda-crew.jpg', 'Home page video block', '', 'video.mp4', '', '', '', '', '', '', '', '', '', '', '', '', 0),
(5, '8', '#ffffff', 'left', 0, 1, '2015-10-14 08:39:46', '2015-10-14 06:39:48', '', 1, '', '', '', '', '', '', '[Home] 3 column block -services', '', '', '', '', 'divaces.png', 'Seamless UX', '<div class="module">\r\n<p>Register new users, charge credit cards and settle funds in your app without changing its look and feel.</p>\r\n</div>', 'clock.png', 'Instant onboarding', '<p>Sign up new users and have them processing payments in seconds. No confusing redirect, no conversion-killing forms up front.</p>', 'padlock.png', 'Zero overhead, zero risk', '<p>We protect you with integrated fraud technology, full compliance and award winning support.</p>', '["34","33","35"]', 0),
(9, '2', 'meet', 'left', 0, 1, '2015-10-26 07:42:19', '2015-10-26 06:42:19', '', 1, '', '', '', '', '', 'TitleBlock.jpg', 'Home Page Logos block', '', '', '', '', '', '', '', '', '', '', '', '', '', '["31","30","32","29"]', 0),
(10, '12', 'meet', 'left', 0, 0, '2015-10-22 11:13:28', '2015-10-22 09:13:28', '', 1, '<p>Dynamic event lorem ipsum dolor sit amet</p>', 'Book now', '#', '', '', 'warni.png', '[Home] warning block ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1),
(11, '1', 'meet ', 'left', 1, 0, '2015-10-21 11:18:18', '2015-10-21 09:18:20', '', 1, '<h2>The most complete payments solution for platforms</h2>', '', '', '', '', 'payments-partners.png', '[Home] block 4', '<p>WePay is more than just code. We’re a trusted partner with solutions to get your users paid faster with less risk to you.</p>', '', '', '', '', '', '', '', '', '', '', '', '', '', 0),
(12, '1', 'meet', 'right', 1, 0, '2015-10-22 13:39:23', '2015-10-22 11:39:23', '', 1, '<h2>Designed for platforms with developers in mind</h2>', 'View Documentation', '#url', '', '', 'meet-b.png', '[home] block under video', '<p>Build quickly and painlessly with RESTful APIs designed for the real challenges of multi-party payments.</p>', '', '', '', '', '', '', '', '', '', '', '', '', '["20"]', 0),
(13, '8', '#ffffff', 'left', 1, 1, '2015-10-20 11:39:51', '2015-10-20 09:39:51', '', 1, '', '', '', '', '', '', '[home] second 3 columns block', '', '', '', '', 'gears.png', 'More than just checkout', '<p>Code options and configurations for everything related to payments — including KYC collection and risk management</p>', 'scales.png', 'Scales With You', '<p>Payments and fraud technology that scale to the needs of any platform, from your first dollar processed to your first billion.</p>', 'eye.png', 'Seamless Security', '<p>We support the highest level of PCI compliance, tokenization, and more, all with bank-level security.</p>', '["21","22","23"]', 0),
(16, '6', 'meet', 'left', 0, 0, '2015-10-23 13:07:04', '2015-10-23 11:07:04', '', 1, '<h2>WePay works closely with us to create the best possible payments experience for our users. Having that level of partnership lets us feel like we’re in control of our own destiny.</h2>', 'View case studies', 'testimonials', '', '', '', '[Home] [quote block]', '<pre class="brush:html;auto-links:false;gutter:false;html-script:true;toolbar:false" contenteditable="false"> </pre>\r\n<p>Brandon Chu Director of Product Management, FreshBooks</p>', '', '', '', '', '', '', '', '', '', '', '', '', '', 0),
(17, '13', 'meet', 'left', 0, 0, '2015-10-23 13:08:16', '2015-10-23 11:08:16', '', 1, '<p>What could seamless payments do for your business?</p>', 'Learn more', 'solutions', 'Request consultation', 'get-started', '', '[home] tips block', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0),
(18, '14', '', 'left', 0, 0, '2015-10-18 09:21:31', '2015-10-18 07:21:31', '', 3, '<h1>Here’s our story</h1>', '', '', '', '', '', '[about][title]', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0),
(22, '8', 'meet', 'left', 0, 0, '2015-10-21 14:00:02', '2015-10-21 12:00:04', '', 3, '<p><img src="../../elfinder/connector?_token=fs2r1qcCIOr8u3dXEdE8l1AaUyzwW2WIBAQHYvqr&amp;cmd=file&amp;target=fls2_aW1hZ2VzL3Rlc3QvYWJvdXQtc2VjdGlvbi0xLmpwZw" alt="" width="1200" height="484" /></p>', '', '', '', '', '', 'tst', '', '', '', '', '', '', '', '', '', '', '', '', '', '["18","19"]', 1),
(23, '18', '', 'left', 0, 1, '2015-10-19 08:27:20', '2015-10-19 06:27:28', '', 3, '<h2>Our Values</h2>', 'Explore our values', '#', '', '', '', '[about] [5 columns]', '', '', '', '', '', '', '', '', '', '', '', '', '', '["24","25","26","27","28"]', 0),
(24, '6', 'meet', 'left', 0, 0, '2015-10-23 13:33:00', '2015-10-23 11:33:00', '', 3, '<h2>WePay is an exceptional partner to YouCaring. It is optimized for platforms like ours, understands our business, and provides top-notch customer support. We have worked with a few different payment providers, and found fundraisers using WePay earn more than other providers largely because of its seamless user experience, simpler payment submission form and fewer failed transactions.</h2>', 'View case studies', 'testimonials', '', '', '', '[about][quote]', '<p>Dan Saper, VP Product Management &amp; Business Development, YouCaring</p>', '', '', '', '', '', '', '', '', '', '', '', '', '', 0),
(25, '2', 'meet', 'left', 0, 1, '2015-10-23 08:11:28', '2015-10-23 06:11:28', '', 3, '<h2>Platforms partnering</h2>', '', '', '', '', '', '[about][logo][1]', '', '', '', '', '', '', '', '', '', '', '', '', '', '["29","30","31","32"]', 0),
(26, '16', 'meet', 'left', 0, 0, '2015-10-23 08:11:54', '2015-10-23 06:11:54', '', 3, '<h2>Executive bios</h2>', '', '', '', '', '', '[about][team]', '<p>Ipsa sit imi, con reperfe roruptatur, sum consed quias etur, est vovolum. Anessi blamusda aliquia tumque volorem porrunt quae verum ad.</p>', '', '', '', '', '', '', '', '', '', '', '', '', '', 0),
(27, '1', 'meet', 'right', 1, 0, '2015-10-22 14:06:35', '2015-10-22 12:06:35', '', 4, '<h2>You don''t need payments. You need the right payments.</h2>', '', '', '', '', 'payments-partners1.png', 'business', '<p>If your business is based around connecting merchants and consumers, you know you want to handle payments. It lets you provide more value to your users and capture more value for yourself. But all payments systems aren’t built equal.</p>', '', '', '', '', '', '', '', '', '', '', '', '', '', 0),
(28, '8', '#000000', 'left', 0, 1, '2015-10-14 09:22:30', '2015-10-14 07:22:31', '', 4, '', '', '', '', '', '', '[business][3 columns]', '', '', '', '', '', '', '', '', '', '', '', '', '', '["36","37","38"]', 0),
(29, '13', 'meet', 'left', 0, 0, '2015-10-23 13:52:16', '2015-10-23 11:52:16', '', 4, '<p>When fraudulent merchants, credit thieves and hackers attack, some payments processors shift the losses to you. You need someone that’s got your back.</p>', 'See how WePay can help', 'how-we-can-help', '', '', '', '[business] [small block]', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0),
(30, '12', 'meet', 'left', 0, 0, '2015-10-23 13:53:02', '2015-10-23 11:53:02', '', 4, '<p>Looking for API documentation?</p>', 'View documentation', 'https://wepay.com/developer', '', '', 'tool.png', '[business] [warning blue]', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0),
(31, '14', '#308dde', 'left', 1, 0, '2015-10-14 10:39:13', '2015-10-14 08:39:15', '', 5, '<h1>Our company is our people</h1>', '', '', '', '', '', '[people] [story] [1]', '<p>Our technology makes us unique, but it’s the people that work here that make us WePay. Here’s a glimpse at some of the extraordinary things that happen behind the scenes — the stories and values that make us who we are, at work and in the world.</p>', '', '', '', '', '', '', '', '', '', '', '', '', '', 0),
(32, '17', 'meet', 'left', 0, 0, '2015-10-23 13:56:07', '2015-10-23 11:56:07', '', 5, '<h2>Work, play, code</h2>', 'Book now', '', '', '', '', '[people][message]', '<p>Make a real difference working on tough problems with cool people.</p>\r\n<p>Join the team that''s No.62 on the 2015 Inc. 5000 review of the fastest growing companies.</p>', '', 'WE’RE HIRING!', '', '', '', '', '', '', '', '', '', '', '', 0),
(33, '13', 'meet', 'left', 0, 0, '2015-10-23 13:56:57', '2015-10-23 11:56:57', '', 5, '<p>Our team is diverse, but there’s one thing we all share: A passion for solving real problems for our partners</p>', 'See how can we help', 'how-we-can-help', '', '', '', '[people][tips]', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0),
(34, '12', 'meet', 'left', 0, 0, '2015-10-23 13:57:28', '2015-10-23 11:57:28', '', 5, '<p>Looking for API documentation?</p>', 'View documentation', 'https://wepay.com/developer ', '', '', 'tool1.png', '[people][warning blue]', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0),
(35, '19', 'meet', 'left', 0, 1, '2015-10-21 14:20:37', '2015-10-21 12:20:39', '', 6, '', '', '', '', '', '', '[careers] [slider]', '', '', '', '', '', '', '', '', '', '', '', '', '', '["39","40","41"]', 0),
(36, '20', '', 'left', 0, 0, '2015-10-15 12:11:47', '2015-10-15 10:11:50', '', 6, '', '', '', '', '', '', '[careers][greenhouse]', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0),
(37, '13', 'meet', 'left', 0, 0, '2015-10-23 13:58:38', '2015-10-23 11:58:38', '', 6, '<p>WePay provides functionality for everything your platform needs related to payments. And we do it in a way that''s completely free of risk, easily</p>', 'Tell me what it costs', 'pricing', '', '', '', '[careers][tips]', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0),
(38, '12', 'meet', 'left', 0, 0, '2015-10-23 13:58:59', '2015-10-23 11:58:59', '', 6, '<p>Looking for API documentation?</p>', 'View Documentation', 'https://wepay.com/developer', '', '', 'tool2.png', '[careers][warning blue]', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0),
(39, '2', 'meet', 'left', 0, 1, '2015-10-23 08:12:24', '2015-10-23 06:12:24', '', 3, '<h2>Investors.</h2>', '', '', '', '', '', '[about] [investors]', '<p>$74.2M in 6 Rounds from 14 Investors</p>', '', '', '', '', '', '', '', '', '', '', '', '', '["42","44","46","43","45"]', 0),
(40, '13', 'meet', 'left', 0, 0, '2015-10-23 13:54:10', '2015-10-23 11:54:10', '', 3, '<p>Enough about us, let’s talk about you</p>', 'Show me what WePay can do', 'how-we-can-help', '', '', '', '[about][tips]', '<p>You need a payments partner that gets you. We know our payments solution can meet your needs, because we built it to meet ours.</p>\r\n<p>Ready to see how partnering with WePay can make the difference?</p>', '', '', '', '', '', '', '', '', '', '', '', '', '', 0),
(41, '12', 'table-information', 'left', 0, 0, '2015-10-23 13:54:36', '2015-10-23 11:54:36', '', 3, '<p>Looking for API documentation?</p>', 'View Documentation', 'https://wepay.com/developer', '', '', 'tool3.png', '[about][warning block]', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1),
(42, '14', 'meet', 'left', 0, 0, '2015-10-22 14:17:03', '2015-10-22 12:17:03', '', 7, '<h1>Meet your True Partner in Payments</h1>', '', '', '', '', '', '[how can we help][story]', '<p>We facilitate payments for platforms. That’s all we do. But it’s not ALL we do. We’re a trusted partner that works with you to make payments easy for your users and profitable for you.</p>', '', '', '', '', '', '', '', '', '', '', '', '', '', 0),
(43, '13', 'meet', 'left', 0, 0, '2015-10-22 14:53:52', '2015-10-22 12:53:52', '', 7, '<p>WePay provides functionality for everything your platform needs related to payments. And we do it in a way that''s completely free of risk, easily customizeable, and optimized to drive growth.</p>', 'Tell me what it costs', '#', '', '', '', '[how can we help][tips]', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0),
(44, '12', '', 'left', 0, 0, '2015-10-15 14:33:01', '2015-10-15 12:33:04', '', 7, '<p>Looking for API documentation?</p>', 'View Documentation', '#', '', '', 'tool4.png', '[how can we help][warning]', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0),
(45, '21', '', 'left', 0, 1, '2015-10-19 08:35:52', '2015-10-19 06:36:00', '', 7, '', '', '', '', '', '', '[how can we help][can-help block] ', '', '', '', '', '', '', '', '', '', '', '', '', '', '["47","48","49","50","51","52","53"]', 0),
(46, '22', 'meet', 'left', 0, 1, '2015-10-22 14:47:44', '2015-10-22 12:47:46', '', 5, '', '', '', '', '', '', '[people][people]', '', '', '', '', '', '', '', '', '', '', '', '', '', '["54","55","56","57","58","59","60","61","62","63","64","65","66","67","68","69","70","23"]', 0),
(47, '14', 'meet price', 'left', 1, 0, '2015-10-23 11:36:36', '2015-10-23 09:36:36', '', 8, '<h1>Payments partner to the best platforms in the world</h1>', '', '', '', '', '', '[testimonials][title]', '<p>We’re honored to help some of the most innovative companies in the world solve their payments challenges. Here’s just a little about what our partners are doing:</p>', '', '', '', '', '', '', '', '', '', '', '', '', '', 0),
(48, '13', 'meet', 'left', 0, 0, '2015-10-23 13:59:47', '2015-10-23 11:59:47', '', 8, '<p>You’ve heard from our partners. Now what can we do for you? Learn how payments from WePay can help you take your platform to the next level.</p>', 'Show me what WePay can do', 'how-we-can-help', '', '', '', '[testimonials][tip]', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0),
(49, '12', 'meet', 'left', 0, 0, '2015-10-23 14:00:36', '2015-10-23 12:00:36', '', 8, '<p>Looking for API documentation?</p>', 'View Documentation', 'https://wepay.com/developer ', '', '', 'tool5.png', '[testimonials][warning]', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0),
(50, '23', '', 'left', 0, 0, '2015-10-19 08:07:10', '2015-10-19 06:07:18', '', 8, '', '', '', '', '', '', 'testimonials-list', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0),
(51, '14', '', 'left', 0, 0, '2015-10-19 14:04:18', '2015-10-19 12:04:26', '', 10, '<h1>We promise to be there every step of the way.</h1>', '', '', '', '', '', '[get-started][titile]', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0),
(52, '26', 'steps', 'left', 0, 0, '2015-10-23 11:05:52', '2015-10-23 09:05:56', '', 10, '', '', '', '', '', '', '[get-started][steps]', '<div class="row">\r\n<div class="step">\r\n<h2>1</h2>\r\n<p>Once you contact us, we will be in touch to help you understand your payments needs.</p>\r\n</div>\r\n<div class="step">\r\n<h2>2</h2>\r\n<p>If we can help, we’ll put together a detailed plan that will get you the payments system you want, minus risk and overhead.</p>\r\n</div>\r\n<div class="step">\r\n<h2>3</h2>\r\n<p>We''ll guide you through implementation and support you once payments are live on your platform.</p>\r\n</div>\r\n</div>', '', '', '', '', '', '', '', '', '', '', '', '', '', 0),
(53, '6', 'meet', 'left', 0, 0, '2015-10-23 07:21:36', '2015-10-23 05:21:36', '', 10, '<h2>Thank you for checking out WePay. <br /> Let’s work together to build something great!</h2>', '', '', '', '', 'Bill_Rich2.jpg', '[get-started][quote-block]', '<p><a href="../../letter">Read Open Letter from Bill Clerico, CEO</a></p>', '', '', '', '', '', '', '', '', '', '', '', '', '', 0),
(54, '25', '', 'left', 0, 0, '2015-10-20 10:33:14', '2015-10-20 08:33:14', '', 10, '', '', '', '', '', '', '[get-started][form]', '<div class="row">\r\n<p>Please complete the information below and our business development team will review and get back to you</p>\r\n</div>', '', '', '', '', '', '', '', '', '', '', '', '', '', 0),
(55, '12', 'meet', 'left', 0, 0, '2015-10-23 14:03:42', '2015-10-23 12:03:42', '', 10, '<p>Looking for API documentation?</p>', 'View Documentation', 'https://wepay.com/developer ', '', '', 'tool6.png', '[get-started][warning blue]', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0),
(56, '14', 'meet', 'left', 0, 0, '2015-10-22 14:58:51', '2015-10-22 12:58:51', '', 14, '<h1>The most complete payments facilitator for platforms.</h1>', '', '', '', '', '', '[pricing][story]', '<h1> </h1>', '', '', '', '', '', '', '', '', '', '', '', '', '', 0),
(57, '26', 'table-information', 'left', 0, 0, '2015-10-23 11:09:00', '2015-10-23 09:09:03', '', 14, '', '', '', '', '', '', '[pricing][table-information]', '<div class="row">\r\n<div class="table">\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td>Credit card processing</td>\r\n<td>2.9% + 30c</td>\r\n</tr>\r\n<tr>\r\n<td>ACH</td>\r\n<td>1% + 30c</td>\r\n</tr>\r\n<tr>\r\n<td>Platform management tools</td>\r\n<td>Included</td>\r\n</tr>\r\n<tr>\r\n<td>Merchant management tools</td>\r\n<td>Included</td>\r\n</tr>\r\n<tr>\r\n<td>Risk &amp; Compliance operations</td>\r\n<td>Included</td>\r\n</tr>\r\n<tr>\r\n<td>Hidden fees and costs</td>\r\n<td>None</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<div class="notes">\r\n<p>Doing platform payments is more than just running a credit card.</p>\r\n<p>It means onboarding merchants, handling complex transactions gracefully, and staying ever vigilant for fraud.</p>\r\n<p>That’s why we include more than just processing in our rate.</p>\r\n</div>\r\n</div>', '', '', '', '', '', '', '', '', '', '', '', '', '', 0),
(58, '26', 'meet price', 'left', 0, 0, '2015-10-23 11:10:32', '2015-10-23 09:10:36', '', 14, '', '', '', '', '', '', '[pricing][price]', '<div class="row">\r\n<h2>A whole lot more for one simple price</h2>\r\n<p>We integrate deeply and work closely with you, so your payments run like they’re directly under your control. And if something goes wrong, we respond quickly and fix it.</p>\r\n<div class="content">\r\n<div class="copy">\r\n<h3>Merchant Tools</h3>\r\n<ul>\r\n<li>Flexible on-boarding options</li>\r\n<li>FrictionlessWorkflow for your business model</li>\r\n<li>Best-in-class security, fraud prevention, and riskanalysis</li>\r\n<li>Integrated monitoring and alerting</li>\r\n<li>Most support options – tier 1, tier 2, self-service, human operator</li>\r\n</ul>\r\n</div>\r\n<div class="copy">\r\n<h3>Payment &amp; Risk operations</h3>\r\n<ul>\r\n<li>Full control payment methods and process</li>\r\n<li>Payments status alerting and notifications</li>\r\n<li>Integrated UX means high Checkout Conversion Rate (+94%)</li>\r\n<li>Fraud Detection and Compliance</li>\r\n</ul>\r\n</div>\r\n<div class="copy">\r\n<h3>Platform Tools</h3>\r\n<ul>\r\n<li>Business Reporting, Costs, Perfo</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>', '', '', '', '', '', '', '', '', '', '', '', '', '', 0),
(59, '13', 'meet', 'left', 0, 0, '2015-10-23 14:24:38', '2015-10-23 12:24:38', '', 14, '<p>WePay provides functionality for everything your platform needs related to payments. And we do it in a way that''s completely free of risk, easily</p>', 'Tell me what it costs', 'pricing', '', '', '', '[pricing][tips]', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0),
(60, '12', 'meet', 'left', 0, 0, '2015-10-23 14:24:58', '2015-10-23 12:24:58', '', 14, '<p>Looking for API documentation?</p>', 'View Documentation', 'https://wepay.com/developer', '', '', 'tool7.png', '[pricing][warning]', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0),
(61, '14', '', 'left', 0, 0, '2015-10-20 11:26:10', '2015-10-20 09:26:10', '', 11, '<h1>Thank you! Your request has been successfully submitted</h1>', '', '', '', '', '', '[thank you][story]', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0),
(62, '28', 'meet', 'left', 0, 0, '2015-10-23 14:05:10', '2015-10-23 12:05:10', '', 11, '<h2>We’ll be in touch via email soon.</h2>\r\n<p> </p>', 'Return to website', 'http://wepay.foundedtest.com/', '', '', 'placeholder3.png', '[thank you][thank-you]', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0),
(63, '12', 'meet', 'left', 0, 0, '2015-10-23 14:05:33', '2015-10-23 12:05:33', '', 11, '<p>Looking for API documentation?</p>', 'View Documentation', 'https://wepay.com/developer', '', '', 'tool8.png', '[thank you][warning]', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0),
(64, '1', 'solutions', 'left', 0, 0, '2015-10-23 07:32:15', '2015-10-23 05:32:15', '', 3, '<h2>How we started</h2>', '', '', '', '', 'placeholder22.png', '[about][solutions - 1]', '<p>WePay started with a simple idea: an app that made it easy for friends to pool money for shared expenses like ski trips and bachelorette parties.</p>\r\n<p>Yet that simple idea wasn’t so simple to execute. It was 2008, and no existing payments system could easily and safely pool money from groups of people to pay out to others.</p>\r\n<p>So we built one. The team spent nearly two years negotiating contracts, dealing with regulators, and coding integrations with some of the most complicated APIs in existence. Along the way, we drove to ensure easy sign-up and seamless checkout experiences. We also built one of the most advanced fraud detections systems around so we wouldn’t lose our shirts.</p>\r\n<p>And it worked. WePay started to get traction. There was just one problem.</p>', '', '', '', '', '', '', '', '', '', '', '', '', '', 0),
(65, '1', 'solutions', 'right', 0, 0, '2015-10-23 07:35:48', '2015-10-23 05:35:47', '', 3, '<h2>What we learned.</h2>', '', '', '', '', 'placeholder31.png', '[about][solutions - 2] ', '<p>Group payments was a tough market. There just wasn’t enough repeat business in those ski trips and bachelorette parties. Low margins on low-value transactions didn’t help either.</p>\r\n<p>Recognizing need for a larger addressable market, we built a bunch of additional apps — from e-commerce shopping carts to crowdfunding sites to invoicing systems — on top of our payments system.</p>\r\n<p>We grew a lot more. It was great, but it wasn’t enough. Were were trying to be generalists, which meant our apps just weren’t as good as the ones focused on a single market with specific needs. But the payments engine we’d built? That worked great. In fact, it seemed to solve a lot of the problems we saw our competitors struggling with.</p>\r\n<p>That’s when we realized we weren’t selling our greatest asset.</p>', '', '', '', '', '', '', '', '', '', '', '', '', '', 0),
(66, '1', 'solutions', 'left', 0, 0, '2015-10-23 07:35:02', '2015-10-23 05:35:02', '', 3, '<h2>WePay today</h2>', '', '', '', '', 'placeholder4.png', '[about][solutions - 3] ', '<p>Once we stopped building platforms and started serving them, our business really started to move. We’re now one of the fastest growing companies in America, and we power payments for some of the most successful business tools, marketplaces and crowdfunding sites around.</p>\r\n<p>What we learned is that focus matters. Just doing a bunch of things adequately isn’t enough. Doing something well doesn’t count if it’s the wrong thing. But when you know who you are and what you do best, that’s when you can build something magical.</p>\r\n<p>So here’s who we are: we’re WePay. We do payments for platforms, that’s all we do and we do it better than anyone else.</p>\r\n<p>We see a lot more growth ahead. And we look forward to serving you — as a platform, a merchant on a platform, or an end user — along the way.</p>', '', '', '', '', '', '', '', '', '', '', '', '', '', 0),
(67, '14', 'meet', 'left', 0, 0, '2015-10-22 08:19:16', '2015-10-22 06:19:17', '', 17, '<h1>Sorry, that page doesn''t exist!</h1>', '', '', '', '', '', '[404] [story]', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0),
(68, '28', 'meet', 'left', 0, 0, '2015-10-23 14:25:55', '2015-10-23 12:25:55', '', 17, '<h2>The page you requested could not be found. <br />If you''re lost try our homepage.</h2>', 'Return to website', 'http://wepay.foundedtest.com/', '', '', 'placeholder5.png', '[404] [thank-you block]', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0),
(69, '12', 'intro editable blue', 'left', 0, 0, '2015-10-23 14:26:17', '2015-10-23 12:26:17', '', 17, '<p>Looking for API documentation?</p>', 'View Documentation', 'https://wepay.com/developer', '', '', 'tool10.png', '[404] [warning]', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0),
(70, '14', 'meet', 'left', 0, 0, '2015-10-22 14:21:29', '2015-10-22 12:21:29', '', 18, '<h1>Build better experiences for merchants, payers, and yourself</h1>', '', '', '', '', '', '[solutions][header text]', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0),
(71, '26', 'intro editable blue', 'left', 0, 0, '2015-10-23 08:07:18', '2015-10-22 12:08:56', '', 18, '', '', '', '', '', '', '[solutions][3 columns block]', '<div class="row">\r\n<div class="content">\r\n<div class="copy">\r\n<h3>Better experiences merchants</h3>\r\n<ul>\r\n<li>Flexible, low-friction sign-up with less data required up front</li>\r\n<li>Fully integrated, user friendly payments workflow</li>\r\n<li>Powerful fraud protection leads to fewer chargeback disputes</li>\r\n<li>Faster, more responsive support — tier 1, tier 2, self-service, human operator</li>\r\n</ul>\r\n</div>\r\n<div class="copy">\r\n<h3>Better experiences for payers</h3>\r\n<ul>\r\n<li>More payments options: all major credit cards + direct bank transfer</li>\r\n<li>Payments status alerts and notifications</li>\r\n<li>Fraud detection — fewer fraudulent merchants leads to greater trust</li>\r\n<li>Integrated UX leads to greater than 94 percent checkout conversion rate</li>\r\n</ul>\r\n</div>\r\n<div class="copy">\r\n<h3>Better experiences for you</h3>\r\n<ul>\r\n<li>Full business reporting: costs, performance, transaction level data</li>\r\n<li>Full implementation support and a shorter go-to-market window</li>\r\n<li>Tier 2 support from our award-winning Customer Delight team</li>\r\n<li>Dedicated account managers available for clients above X in monthly volume</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>', '', '', '', '', '', '', '', '', '', '', '', '', '', 0),
(72, '1', 'solutions', 'right', 0, 0, '2015-10-23 13:57:47', '2015-10-23 11:57:47', '', 18, '<h2>Payments Processing Plus</h2>\r\n<p>Our API provides functionality for every user interaction where money is involved.</p>', '', '', '', '', 'placeholder11.png', '[solutions][solution-1]', '<div class="section-solution">\r\n<h3><span style="color: #4991dc; background-color: #ffffff;">User onboarding merchants</span></h3>\r\n<ul>\r\n<li>Instant onboarding: Board new merchants with less information upfront</li>\r\n<li>Easy account provisioning: Create merchant accounts automatically behind the scenes</li>\r\n<li>KYC API: Quickly gather required user data on your own terms</li>\r\n</ul>\r\n</div>\r\n<div class="section-solution">\r\n<h3><span style="color: #4991dc; background-color: #ffffff;">Payment processing</span></h3>\r\n<ul>\r\n<li>Accept all major credit cards</li>\r\n<li>ACH Payments: Direct bank transfers with lower fees and no transaction size limits</li>\r\n<li>Tipping point payments</li>\r\n<li>Multi-party payouts</li>\r\n<li>Recurring payments</li>\r\n<li>Account updater: Automatically update card data on file if it changes</li>\r\n<li>Flexible pricing: set your transaction fees to whatever makes sense for your business</li>\r\n</ul>\r\n</div>\r\n<div class="section-solution">\r\n<h3><span style="color: #4991dc;">Funds Settlement</span></h3>\r\n<ul>\r\n<li>Settle to bank account</li>\r\n<li>Settle on a schedule, or as payments are made</li>\r\n<li>Settle funds by check — automatically generate, print and mail paper checksto merchants.</li>\r\n</ul>\r\n</div>', '', '', '', '', '', '', '', '', '', '', '', '', '', 0),
(73, '1', 'solutions', 'right', 0, 0, '2015-10-22 15:29:55', '2015-10-22 13:29:55', '', 18, '<h2>Payments Processing Plus</h2>\r\n<p>Our API provides functionality for every user interaction where money is involved.</p>', '', '', '', '', 'placeholder12.png', '[solutions][solution-2]', '<h3>User onboarding</h3>\r\n<p>Instant onboarding: Board new merchants with less information upfront<br />Easy account provisioning: Create merchant accounts automatically behind the scenes<br />KYC API: Quickly gather required user data on your own terms</p>\r\n<h3>Payment processing</h3>\r\n<p>Accept all major credit cards<br /><span style="color: #3366ff;">- Visa</span><br /><span style="color: #3366ff;">- Mastercard</span><br /><span style="color: #3366ff;">- American Express</span></p>\r\n<p><br />ACH Payments: Direct bank transfers with lower fees and no transaction size limits<br />Tipping point payments<br />Multi-party payouts <br />Recurring payments<br />Account updater: Automatically update card data on file if it changes<br />Flexible pricing: set your transaction fees to whatever makes sense for your business</p>\r\n<h3>Funds Settlement</h3>\r\n<p>Settle to bank account<br />Settle on a schedule, or as payments are made<br />Settle funds by check — automatically generate, print and mail paper checks to merchants.</p>', '', '', '', '', '', '', '', '', '', '', '', '', '', 0),
(74, '1', 'solutions', 'right', 0, 0, '2015-10-22 15:40:01', '2015-10-22 13:40:01', '', 18, '<h2>Customized risk for your platform</h2>', '', '', '', '', 'placeholder13.png', '[solutions][solution-3]', '<p>Not every platform''s risk needs are the same. That’s why our risk management system is customizable. Pass whatever data you know about your users with our innovative Risk API, and we’ll use it to make better risk decisions. That means a higher fraud catch rate with fewer false positives.</p>', '', '', '', '', '', '', '', '', '', '', '', '', '', 0),
(75, '13', 'intro editable blue', 'left', 0, 0, '2015-10-23 14:27:34', '2015-10-23 12:27:34', '', 18, '<p>WePay provides functionality for everything your platform needs related to payments. And we do it in a way that''s completely free of risk, easily</p>', 'Tell me what it costs', 'pricing', '', '', '', '[solutions][tips]', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0),
(76, '12', 'intro editable blue', 'left', 0, 0, '2015-10-23 14:27:51', '2015-10-23 12:27:51', '', 18, '<p>Looking for API documentation?</p>', 'View Documentation', 'https://wepay.com/developer', '', '', 'tool11.png', '[solutions][warning]', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0),
(77, '26', 'meet', 'left', 0, 0, '2015-10-23 08:07:22', '2015-10-22 13:16:36', '', 17, '', '', '', '', '', '', '[404][test]', '<section class="warning  blue  ">\r\n<div class="row">\r\n<p><img src="../../uploads/tool10.png" alt="Looking for API documentation?" /></p>\r\n<p>Looking for API documentation?</p>\r\n<p> </p>\r\n<div class="buttons"><a title="View Documentation">View Documentation</a></div>\r\n</div>\r\n</section>', '', '', '', '', '', '', '', '', '', '', '', '', '', 0),
(78, '1', 'solutions', 'right', 0, 0, '2015-10-22 16:20:57', '2015-10-22 14:20:57', '', 18, '<h2>Custom UX</h2>\r\n<p>Our payments system is customizable to match your desired user experience. Whenever a user interacts with WePay, you control what that interaction looks and feels like.</p>', '', '', '', '', 'placeholder131.png', '[solutions][solution-4]', '<h3>Customization options available:</h3>\r\n<ul>\r\n<li><span style="color: #3366ff;">New merchant onboarding</span></li>\r\n<li><span style="color: #3366ff;">Checkout forms</span></li>\r\n<li><span style="color: #3366ff;">Confirmation emails</span></li>\r\n<li><span style="color: #3366ff;">Customer support emails</span></li>\r\n<li><span style="color: #3366ff;">Credit card statements</span></li>\r\n<li><span style="color: #3366ff;">Mobile transactions</span></li>\r\n</ul>', '', '', '', '', '', '', '', '', '', '', '', '', '', 0),
(79, '26', 'meet', 'left', 0, 0, '2015-10-23 14:09:08', '2015-10-23 12:09:08', '', 19, '<h2>Hi there,</h2>', '', '', '', '', '', 'Letter', '<p>This is Bill Clerico, co-founder and CEO of WePay. Thanks for taking the time to learn about our product, and thanks for taking the first step in building a relationship with us.</p>\r\n<p> </p>\r\n<p>“Invest in Relationships” is WePay’s most important value.hat’s because strong relationships produce great business results. I’ve found this to be true no matter who I’m dealing with. — investors, customers, employees, co-founders, landlords, suppliers or service providers.</p>\r\n<p> </p>\r\n<p>Having a strong and trusted relationship helps things move faster. It allows both parties to think about the long-term. And it sees you through the stormy patches, which even the best relationships have at times.</p>\r\n<p> </p>\r\n<p>Today, thousands of leading platform companies trust WePay with one of the most crucial parts of their business. We don’t take this lightly, and we know it is a trust we must re-earn every day.</p>\r\n<p> </p>\r\n<p>I hope you’ll give us a chance to earn your trust, too - and I look forward to being your partner.</p>', '', '', '', '', '', '', '', '', '', '', '', '', '', 0),
(80, '14', 'intro editable blue', 'left', 0, 0, '2015-10-23 11:45:08', '2015-10-23 09:45:08', '', 19, '<h1>Open Letter from Bill Clerico, CEO</h1>', '', '', '', '', '', 'Letter header', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0),
(81, '1', 'solutions', 'right', 0, 0, '2015-10-23 13:19:12', '2015-10-23 11:19:12', '', 18, '<h2>Transaction-level reporting</h2>', '', '', '', '', 'placeholder132.png', 'Solutions - block 5', '<p>Some payments processors can only tell you when a card has been declined, but not how or why. Not WePay. Our transaction-level reporting gives you granular data about how money is moving through your platform.</p>', '', '', '', '', '', '', '', '', '', '', '', '', '', 0),
(82, '1', 'solutions', 'right', 0, 0, '2015-10-23 13:21:32', '2015-10-23 11:21:32', '', 18, '<h2>Modern development tools</h2>\r\n<h3>WePay is easy for developers to work with:</h3>', '', '', '', '', 'placeholder133.png', 'Solutions - block 6', '<ul>\r\n<li>RESTful API</li>\r\n<li>Extensive documentation</li>\r\n<li>SDKs for PHP, Ruby, Python, NodeJS, Java, and many more</li>\r\n<li>Mobile SDKs to simplify app development</li>\r\n</ul>', '', '', '', '', '', '', '', '', '', '', '', '', '', 0),
(83, '1', 'solutions', 'right', 0, 0, '2015-10-23 13:22:57', '2015-10-23 11:22:57', '', 18, '<h2>Security</h2>\r\n<h3>WePay offers your platform world-class payment security features without additional overhead.<br /><br /></h3>', '', '', '', '', 'placeholder134.png', 'Solutions - block 7', '<ul>\r\n<li>Highest level of PCI security</li>\r\n<li>Tokenization for card data</li>\r\n<li>Multi-factor identification</li>\r\n</ul>', '', '', '', '', '', '', '', '', '', '', '', '', '', 0),
(84, '1', 'solutions', 'right', 0, 0, '2015-10-23 13:34:10', '2015-10-23 11:34:10', '', 18, '<h2>Compliance</h2>\r\n<h3>Compliance with payments regulations can be tough, but WePay makes it easy.<br /><br /><br /></h3>', '', '', '', '', 'placeholder135.png', 'Solutions - block 8', '<ul>\r\n<li>No need for a money transmitter licenses</li>\r\n<li>WePay prints and mails required tax documents to merchants (1099-K)</li>\r\n<li>We monitor all transactions to ensure compliance with anti-money laundering laws, OFAC</li>\r\n</ul>', '', '', '', '', '', '', '', '', '', '', '', '', '', 0),
(86, '26', 'meet', 'left', 0, 0, '2015-10-26 12:50:50', '2015-10-26 11:50:50', '', 20, '', '', '', '', '', '', 'Security', '<p>Protecting your security and privacy is very important to us. If you have any questions, concerns, or encounter any issues, please contact us at <a href="mailto:security@wepay.com">security@wepay.com</a>, file an issue on <a href="https://hackerone.com/wepay">HackerOne</a>, or call our support line at <a class="phone" href="tel:18554693729">1-855-GO-WEPAY</a>.</p>\r\n<p> </p>\r\n<h2>PCI compliant</h2>\r\n<p>The PCI DSS certification process is designed to protect your sensitive data. WePay is a certified Level 1 PCI Compliant Service Provider (the highest level), which requires an annual independent security audit of our processes and systems. We test our system daily (manually and automatically) to ensure security.</p>\r\n<h2><br />Secure technology</h2>\r\n<p>WePay uses state-of-the-art cryptographic algorithms during data transmission (HTTPS with RSA 2048 bit key and SHA 256 certificate) and in our databases (AES 256 encryption with unique per-row keys). Our servers are kept in PCI and SSAE16 certified datacenters with 24x7 monitoring.</p>\r\n<h2><br />Training and education</h2>\r\n<p>All WePay employees undergo background checks and security training. The development team follows strict SDLC process and OWASP security guidelines.</p>\r\n<h2><br />Protecting your money</h2>\r\n<p>Your money is held in a protected account by our FDIC-insured or CDIC-insured partner bank, so your funds are never at risk.<br />We do the heavy lifting</p>\r\n<p>As security standards evolve, so do our systems. As a Level 1 PCI compliant service provider, we do ongoing work to keep our systems and services secure behind the scenes, thus making it easier for you to meet compliance obligations.</p>\r\n<h2><br />Reporting and disclosure</h2>\r\n<p>We investigate all reported vulnerabilities, so if you believe you''ve discovered a problem, please email security@wepay.com or file an issue on HackerOne.</p>\r\n<h2><br />PGP</h2>\r\n<p>You can find our PGP key below. This can be used to encrypt your communication with us or to verify signed messages you receive from us.</p>\r\n<p>(Not sure what PGP is? Have a look at GPG)<br /><strong>Key ID</strong> : C7A9BD6B<br /><strong>Key Type</strong> : RSA<br /><strong>Key Length</strong> : 4096<br /><strong>Fingerprint</strong> : <br />3571 06BA FD87 62CD 195C 13D5 510B F082 C7A9 BD6<br /><strong>User Email</strong> : support@wepay.com</p>\r\n<pre>-----BEGIN PGP PUBLIC KEY BLOCK-----<br />Version: GnuPG v1</pre>\r\n<pre>mQINBFUte0IBEADPuGIhwkxSHXtYwayTzV10tKgg4js8wvo1bsVkX5oidu7MsfNO<br />X8ZFzy19E4+rIGKDnEUCvXpACKX7zMFhGEHTrL+a/qIT2F/daAfDDZcf/aKWA417<br />vPXyuOPnCeRXMDXCGe/bEKsV8H0VC8clacPZO7Jsbqd5dFStgbKo/Zx6/DPx2uTo<br />jXVPq9A5675jbiJ6ahC2t2Zn3enP08muZyYd1Vr5zG7MVjFq6v8kUdK2JOpkgPYz<br />JnvI/BgzcX5uIhps7wWn4/itBo7GQ7Rxus49cD0RyAfAyFYH9PS5wmEkFxzYYbrn<br />ec9ihZ5mcW9gsXcxPp7/f+ZVBPp0mYhAftHTWK1t03RLJIgGPUqKMKkmP8r3oRGW<br />yTwGZ0s/z19dM8QWqJrDjjCw2IBSny3c3b6O+Hio/BdAmoIaGHL7w8hhGFkmauer<br />CJKyu1u53K9xX7pgFcjCqi97Eqn1Hmf3HVgaF/CvZ939xdiJyiiqmpj86FObzV1K<br />9Jq86atDEZSORiekhfAk6NsP/gw6emhMg1haUPio9Ez9UyeVqHsBaPbGvBn15tLe<br />8DnSh2vCUbdKH4iDqoSF2uGrxYhC/VbcLI7ofO93dyrTelGyCmZU3TbDjX6b/lOw<br />C9ppJ3XnBd8D2bjBgqzJTyf4RGwbR29skglNOdRFJnJgXfIoKiEdNrwt9wARAQAB<br />tCBXZXBheSBEZXZvcHMgPHN1cHBvcnRAd2VwYXkuY29tPokCOAQTAQIAIgUCVS17<br />QgIbAwYLCQgHAwIGFQgCCQoLBBYCAwECHgECF4AACgkQUQvwgsepvWvH1RAAxEH1<br />rg5fPg/PSgI+pg8fiV0Bvqqt18hFJI4xW0TOp/YcDdxUpG25B0kyD9MRqSP5VUl1<br />TMYvjtxhYgfPEPjESW691Wyvrf+QL09Bg0/HyI8q5MSe74UlO7itW36X/C9aj1Hq<br />Vbxxhy/buqqelAsNpByMn0V622Rt/rGgYHwIesc0uxDHonKvctov12sTI52Z17Hg<br />/m+evlIvSq7V3+MZcvJnXYJtTlZJuDSlAzbEoUegWwvdkNFe04cyDSB8x2Bcy9ee<br />oAyT5YJbLbXkPLuxgFdyJk7XXuyr8Jr5SpXtY+vUMTrafiHGs5BDACj6SRl7mxGK<br />dLS50R5lSaXVCjJufSi9BinIfrEEcP/7Uu39458jzhN1HU3aSOl+3oEAWUf2sr16<br />fRAuNpGL/nH8d1XouSFbLIwNfltEA1zDMDNNPaQa2Ww7Km/wUp+VyFFqOkAtGFSy<br />Pn5XW6lK8gQguyPamHHM6OOelOb9B8OlXPVvYsAW7nhwB21FMc0LMrEt/faF4vT7<br />QTxpQuMTkCnOocmN2jq2OwVlL6Bt8HKLCVgG4IojUyLyiX1jXeYPAQcv0W4Ah1ad<br />DjjpLYgsGi7e3/gSvheDIlTZ+U/+ca2YW7vsEhsw4C5UCl95EOwtH5lhRJV3MeJq<br />rSCo1ra7gWPuIE6D7zvvio/cB5quQ1qFt+60+gq5Ag0EVS17QgEQALG/LNQ8EQtF<br />Sw6YTaeB9eKZS8WpvOUtB7im48qjX9iG6oZhLWZE5k1ovqsZZVB1WyRmbEyRXAUA<br />exE3jdSfnu7FKSIFENWlr8JDIgG7jZWRCMADeUrgaXW0kQrQEEnD2+vahft5pbSS<br />lhuRneW81+GaNAD7fgrSkmOll2kApjJlV+IHvSjbMv3ciZEcJnzYYbnJlx9cofta<br />36ikp5XfVgV2n48Z2EdwsdHFpTgP0I6cAkaYVfDUYqUgQNIA3UJ5CKsqV4Ut5Sxf<br />qn/fPdQpdnx1bsAqRR5M2Vo4E0DWDHjdw9i/UOyEzo37NytZIDp6EqeV7i+3LggY<br />XOJEsC0zqJK1is7Ff4cy2yThGc1PLSESFZtpofNRbz/0hnTzuhwdBHZeEgeID0/g<br />2yDhQm8na4jFkiso55lMek6gfzNNC+a5w8QL19mR6v6eq/WF9g+pYrCgudVyuDZt<br />q+GldB7MiQbWYsK92z7KisETop7Lheaa4UI/W/WAnvdjZPSefe2R4IKYle8XIBok<br />L6gNbYxG1UGko01SGXIkyyLr8YAAN1sDJzguoJ6ZsrVgKNo/bu0oHziD359eYrkk<br />lzP6oy5fBtHPbgcQmZte8X12AWCpOl5jR0WjEuDRo8KVMtoADQJZ3J31SoN15w95<br />rw68x4zGjZu8Lbjg4TWnenwHdXEMz4ZpABEBAAGJAh8EGAECAAkFAlUte0ICGwwA<br />CgkQUQvwgsepvWvglxAAwgHI382hjt3mg8Vy505Aq0HXQXFKfGQIrP1fFyKrmbNR<br />zd2ojDQPgxWnCg5aqDiA/H7DaigfbVuWvci63ziD+o0zvK9N3qlGBQHPe4Ch0oZ9<br />OiQHn/5MeNHHpUuLYTjYhSMviHcaImyMQa0ft5gLIKs2hUpWDgKpwIGthh6lzYOU<br />1Jd8zajppjkUyXrOGD74+DTi1MjrBG/eN0/5+ShZytkncIwhEU5dOATPKlUmhz4M<br />TLv73MvEc1RwbNGIxt6ajzxmSDg8RrFlawzvtdx3YuYp1DINWqyjzYHAA+npcyR5<br />7n2U6ApIZ3oCT5cvJVmI06sh5G2iyBG3XRQgzvfbf228pWcALzVH3EKDzIh6Buuq<br />+7rbVcvIZEzzPfkP5ZGhGKBTCO1O1Kb14thuLE0kwwex+U4/SXO6AGJEvF4g/vBk<br />4sxnpQM9Zm7d3Lai+EiFjrLqxzQG1Ww/UGFFwIiNpeUCrzc39H8Bt4mp/89zb7I6<br />mQi5IUCyaYtwCrKqfnTIehqjvFU0J34WJcj5kiEBJRB3miU5TWjmbdGFhmZ3bwjk<br />8RbYqA7EygW6frSowB3DeRpKbqzHCvcEOrMexc4xDvxkcqxYGVq0gpnrAy98WBFj<br />anasEYbfitk9yswx+J230NCdw2/3s/h9tO58562SkTczbTXm9AhyIAOiQb0stlQ=<br />=VxSR<br />-----END PGP PUBLIC KEY BLOCK-----</pre>', '', '', '', '', '', '', '', '', '', '', '', '', '', 0),
(87, '14', 'meet', 'left', 0, 0, '2015-10-26 12:10:24', '2015-10-26 11:10:24', '', 20, '<h1>We take security seriously</h1>', '', '', '', '', '', 'Security - Header', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `blockfield`
--

CREATE TABLE IF NOT EXISTS `blockfield` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `db_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=23 ;

--
-- Dumping data for table `blockfield`
--

INSERT INTO `blockfield` (`id`, `name`, `db_name`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Title field', 'title', 'textarea', '2015-10-08 08:05:50', '2015-10-08 06:05:53'),
(2, 'Sub Title', 'subtitle', 'textarea', '2015-10-21 08:32:21', '2015-10-02 13:06:47'),
(6, 'Image', 'image', 'image', '2015-10-02 12:48:05', '2015-10-02 09:48:05'),
(7, 'Features Title', 'f_title', 'text', '2015-10-06 20:44:37', '2015-10-06 18:44:37'),
(9, 'URL', 'url', 'text', '2015-10-02 12:48:49', '2015-10-02 09:48:49'),
(10, 'Features description', 'f_desc', 'text', '2015-10-06 20:44:23', '2015-10-06 18:44:23'),
(11, 'Video URL', 'video', 'file', '2015-10-07 15:27:54', '2015-10-07 13:27:56'),
(12, 'Rich text area', 'rte_area', 'textarea', '2015-10-02 13:26:52', '2015-10-02 13:26:52'),
(13, 'Call To Action 1 text', 'cta1', 'text', '2015-10-21 08:32:06', '2015-10-02 09:46:56'),
(14, 'Link of Call To Action 1', 'link1', 'text', '2015-10-21 08:32:09', '2015-10-02 09:47:25'),
(15, 'Call To Action 2 text', 'cta2', 'text', '2015-10-21 08:32:14', '2015-10-02 09:47:12'),
(16, 'Link of Call To Action 2', 'link2', 'text', '2015-10-21 08:32:17', '2015-10-02 09:47:42'),
(22, 'Images', 'images', 'images', '2015-10-06 11:41:07', '2015-10-06 11:41:07');

-- --------------------------------------------------------

--
-- Table structure for table `blocktypes`
--

CREATE TABLE IF NOT EXISTS `blocktypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=29 ;

--
-- Dumping data for table `blocktypes`
--

INSERT INTO `blocktypes` (`id`, `name`, `slug`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Content with image', 'sections.main-image-content', '1|2|6|13|14|15|16', '2015-10-22 13:25:20', '2015-10-22 11:25:20'),
(2, 'Logos', 'sections.partners', '1|6|8', '2015-10-21 14:12:26', '2015-10-13 07:18:32'),
(5, 'Video Block', 'sections.video', '1|2|11|13|14', '2015-10-21 11:49:58', '2015-10-21 09:50:00'),
(6, 'Quote block', 'sections.testimonials', '1|2|6|13|14', '2015-10-22 13:27:56', '2015-10-22 11:27:56'),
(8, 'Services - 3 columns', 'sections.services', '1|2|3|8', '2015-10-21 14:12:52', '2015-10-13 06:29:56'),
(12, 'Warning', 'sections.warning', '1|2|6|13|14', '2015-10-22 08:27:47', '2015-10-22 06:27:49'),
(13, 'Tips Block', 'sections.tips', '1|2|13|14|15|16', '2015-10-22 11:24:11', '2015-10-22 09:24:12'),
(14, 'Header text', 'sections.story', '1|2', '2015-10-22 14:13:59', '2015-10-22 12:13:59'),
(16, 'Team', 'sections.team', '1|2', '2015-10-23 08:16:36', '2015-10-23 06:16:36'),
(17, 'Hiring', 'sections.message', '1|2|7|13|14', '2015-10-23 11:31:46', '2015-10-23 09:18:46'),
(18, '[about][values]', 'sections.value', '1', '2015-10-20 08:49:00', '2015-10-15 07:15:13'),
(19, '[careers][slider]', 'sections.title-slider', NULL, '2015-10-21 14:23:12', '2015-10-15 09:57:17'),
(20, '[careers][greenhouseblock]', 'sections.posts', NULL, '2015-10-20 08:45:46', '2015-10-15 10:06:43'),
(21, '[how can we help][can-help block]', 'sections.can-help', NULL, '2015-10-20 08:45:50', '2015-10-16 05:34:45'),
(22, '[people]', 'sections.peoples', NULL, '2015-10-20 08:45:53', '2015-10-16 05:56:24'),
(23, 'testimonials', 'sections.testimonial', NULL, '2015-10-20 08:45:56', '2015-10-16 08:24:25'),
(25, 'section form', 'sections.form', '8', '2015-10-20 10:33:29', '2015-10-20 08:32:10'),
(26, 'Free Text', 'sections.content-block', '1|2', '2015-10-23 08:07:33', '2015-10-22 13:06:52'),
(28, 'thank-you', 'sections.thank-you', '1|2|6|13|14', '2015-10-22 08:22:21', '2015-10-22 06:22:23');

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE IF NOT EXISTS `image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `subtitle` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=71 ;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`id`, `title`, `subtitle`, `link`, `url`, `type`, `note1`, `note2`, `note3`, `note4`, `created_at`, `updated_at`) VALUES
(13, 'Go Fund Me', '<p>Go Fund Me</p>', '#', 'gofundme.png', '', '', '', '', '', '2015-10-12 06:32:51', '2015-10-12 06:32:51'),
(14, 'carecom', '<p>carecom</p>', '#', 'carecom.png', 'logo', '', '', '', '', '2015-10-12 06:35:39', '2015-10-12 06:35:39'),
(15, 'constant contact', '<p>constant contact</p>', '#', 'constantcontact.png', 'logo', '', '', '', '', '2015-10-12 08:36:32', '2015-10-12 06:36:39'),
(16, 'fresh books', '<p>fresh books</p>', '#', 'freshbooks.png', 'logo', '', '', '', '', '2015-10-12 06:37:07', '2015-10-12 06:37:07'),
(17, 'meetup', '<p>meetup</p>', '#', 'meetu.png', 'logo', '', '', '', '', '2015-10-12 06:37:35', '2015-10-12 06:37:35'),
(18, 'Seamless user experience', '<div class="module">\r\n<p>Register new users, charge credit cards and settle funds in your app without changing the look and feel. </p>\r\n</div>', '#', 'divaces.png', 'image_block', '', '', '', '', '2015-10-20 11:07:53', '2015-10-20 09:07:53'),
(19, 'Instant onboarding', '<p>Sign up new users and have them processing payments in seconds. No confusing redirect, no conversion-killing forms up front.</p>', '#', 'clock1.png', 'image_block', '', '', '', '', '2015-10-12 07:10:22', '2015-10-12 07:10:22'),
(20, 'Zero overhead, zero risk', '<p>We protect you with integrated fraud technology, full compliance and award winning support.</p>', '#', 'padlock.png', 'image_block', '', '', '', '', '2015-10-12 07:10:59', '2015-10-12 07:10:59'),
(21, 'More than just checkout', '<p>Code options and configurations for everything related to multi-party payments — including KYC collection and risk management</p>', '#', 'gears1.png', 'image_block', '', '', '', '', '2015-10-22 13:42:43', '2015-10-22 11:42:43'),
(22, 'Scales With You', '<p>The one technology layer that serves from you first dollar to your first billion processed.</p>', '#', 'scales.png', 'image_block', '', '', '', '', '2015-10-22 13:43:02', '2015-10-22 11:43:02'),
(23, 'Seamless Security ', '<p>Tools and support for PCI compliance, tokenization and more, all backed by bank-level security.</p>', '#', 'eye.png', 'image_block', '', '', '', '', '2015-10-22 13:43:57', '2015-10-22 11:43:57'),
(24, 'DELIGHT CUSTOMERS', '', '#', 'delight-customers.png', 'image_block', 'Our customers’ success is our success', 'We deeply understand our customers and their needs', 'Customer intimacy is core to our strategy', 'We embrace our customers’ needs with passion and humility', '2015-10-15 10:24:04', '2015-10-15 08:24:07'),
(25, 'INVEST IN RELATIONSHIPS', '', '#', 'invest-in-relationships.png', 'image_block', 'Our customers’ success is our success 1', 'We deeply understand our customers and their needs 1', 'Customer intimacy is core to our strategy 1', 'We embrace our customers’ needs with passion and humility 1', '2015-10-15 10:24:23', '2015-10-15 08:24:26'),
(26, 'PLAY TO <br /> WIN', '', '#', 'pay-to-wi.png', 'image_block', 'Our customers’ success is our success 2', 'We deeply understand our customers and their needs2', 'Customer intimacy is core to our strategy 2', 'We embrace our customers’ needs with passion and humility 2', '2015-10-23 08:06:55', '2015-10-23 06:06:55'),
(27, 'BE<br /> AUTHENTIC', '', '#', 'be-authentic.png', 'image_block', 'Our customers’ success is our success 3', 'We deeply understand our customers and their needs 3', 'Customer intimacy is core to our strategy 3', 'We embrace our customers’ needs with passion and humility 3', '2015-10-21 08:18:22', '2015-10-21 06:18:24'),
(28, 'EMBRACE CHANGE', '', '#', 'embrace-change.png', 'image_block', 'Our customers’ success is our success 4', 'We deeply understand our customers and their needs 4', 'Customer intimacy is core to our strategy 4', 'We embrace our customers’ needs with passion and humility 4', '2015-10-15 10:29:22', '2015-10-15 08:29:26'),
(29, 'constant contact', '', '', 'constantcontact1.png', 'logo', '', '', '', '', '2015-10-13 07:20:57', '2015-10-13 07:20:57'),
(30, 'care com', '', '', 'carecom11.png', 'logo', '', '', '', '', '2015-10-13 07:21:31', '2015-10-13 07:21:31'),
(31, 'go found me', '', '', 'gofundme1.png', 'logo', '', '', '', '', '2015-10-13 07:22:10', '2015-10-13 07:22:10'),
(32, 'meet up', '', '', 'meetup1.png', 'logo', '', '', '', '', '2015-10-13 07:24:14', '2015-10-13 07:24:14'),
(33, 'Instant onboarding', '<p>Sign up new users and have them processing payments in seconds. No confusing redirect, no conversion-killing forms up front.</p>', '#', 'clock2.png', 'image_block', '', '', '', '', '2015-10-14 06:38:17', '2015-10-14 06:38:17'),
(34, 'Seamless user experience', '<p>Register new users, charge credit cards and settle funds in your app without changing the look and feel.</p>\r\n<p><span style="font-family: arial, sans, sans-serif; font-size: 13px; white-space: pre-wrap; background-color: #a4c2f4;"> </span></p>', '#', 'divaces1.png', 'image_block', '', '', '', '', '2015-10-22 13:26:33', '2015-10-22 11:26:33'),
(35, 'Zero overhead, zero risk', '<p>We protect you with integrated fraud technology, full compliance and award-winning support.</p>', '#', 'padlock1.png', 'image_block', '', '', '', '', '2015-10-22 13:28:07', '2015-10-22 11:28:07'),
(36, 'Payments should give you more control', '<p>No user interaction on your platform has stakes as high as when one user pays another. Shouldn''t you control how those transactions work?</p>', '#', 'control.png', 'image_block', '', '', '', '', '2015-10-22 14:03:07', '2015-10-22 12:03:07'),
(37, 'Payments should decrease friction', '<p>Users seek out platforms because they make transactions easier. But off-site redirects, long data capture forms, and mish-moshed UX make payments harder.</p>', '#', 'frictio.png', 'image_block', '', '', '', '', '2015-10-22 14:03:52', '2015-10-22 12:03:52'),
(38, 'Payments should protect you from fraud', '<p>When fraudulent merchants, credit thieves and hackers attack, some payments processors shift the losses to you. You need someone that’s got your back.</p>', '#', 'protect.png', 'image_block', '', '', '', '', '2015-10-22 14:04:31', '2015-10-22 12:04:31'),
(39, 'Let’s change payments, together', '<h1>Work with people who inspire you</h1>', '', 'loudspeaker-small.jpg', 'image_block', '', '', '', '', '2015-10-15 10:04:31', '2015-10-15 10:04:31'),
(40, 'Let’s change payments, together', '<h1>Solve real problems at one of the</h1>\r\n<h1>fastest growing companies in America</h1>', '', 'loudspeaker-small2.jpg', 'image_block', '', '', '', '', '2015-10-23 11:17:44', '2015-10-23 09:17:44'),
(41, 'Let’s change payments, together 2', '<h2>Work with people who inspire you 2</h2>', '', 'loudspeaker-small3.jpg', 'image_block', '', '', '', '', '2015-10-15 12:24:51', '2015-10-15 10:24:54'),
(42, 'august capital', '', '#', 'augustcapital.png', 'logo', '', '', '', '', '2015-10-15 11:21:48', '2015-10-15 11:21:48'),
(43, 'films', '', '#', 'films.png', 'logo', '', '', '', '', '2015-10-15 11:22:06', '2015-10-15 11:22:06'),
(44, 'ftv', '', '#', 'ftv.png', 'logo', '', '', '', '', '2015-10-15 11:22:28', '2015-10-15 11:22:28'),
(45, 'highland', '', '#', 'highland.png', 'logo', '', '', '', '', '2015-10-15 11:22:51', '2015-10-15 11:22:51'),
(46, 'rokuten', '', '#', 'rokute.png', 'logo', '', '', '', '', '2015-10-15 11:23:11', '2015-10-15 11:23:11'),
(47, 'Maximum conversion, maximum revenue', '<p>Our seamless payments experience supercharges conversions by making new user sign-up easier and checkout faster.</p>', '#', 'placeholder.png', 'image_block', '', '', '', '', '2015-10-16 05:28:52', '2015-10-16 05:28:52'),
(48, 'Never lose a single cent to fraud', '<p>Every transaction processed by WePay is secured by our industry-leading risk technology. And if some does get through, don’t worry: we’ll eat that cost so you don’t have to.</p>\r\n<ul>\r\n<li>A complete risk management solution</li>\r\n<li>Rules engine: We monitor 700+ number of signals to catch fraud the other guys miss</li>\r\n<li>Machine learning algorithms: Catch twice as much fraud with fewer mistakes than a rules engine alone</li>\r\n<li>Fast decisions, faster payoutst: only 1.3 percent of trans', '#', 'placeholder1.png', 'image_block', '', '', '', '', '2015-10-22 14:30:28', '2015-10-22 12:30:28'),
(49, 'You don’t compromise on UX. Neither do we.', '<p>We’re fully customizable, so you’ll never need to compromise your ook and feel. Customize Everything: Sign-Up, Checkout, Email communications</p>', '#', 'placeholder2.png', 'image_block', '', '', '', '', '2015-10-22 14:37:02', '2015-10-22 12:37:02'),
(50, 'The most compliant payments product. Period.', '<p>There’s no extra licensing required when you integrate with WePay. We’ll even mail your users their tax documents so you don’t have to.</p>', '#', 'placeholder3.png', 'image_block', '', '', '', '', '2015-10-22 14:38:41', '2015-10-22 12:38:41'),
(51, 'No matter what, we’ve got your back', '<p>Our award-winning support team is YOUR award winning support team. We integrate behind the scenes to provide seamless Tier 2 support for your toughest payment questions.</p>', '#', 'placeholder4.png', 'image_block', '', '', '', '', '2015-10-16 05:31:18', '2015-10-16 05:31:18'),
(52, 'A partner that grows with you', '<p>Our integration can be as simple as a YouTube embed or as robust as custom software — you decide what you need. As you grow and those needs change, we change with you, building new features onto what already exists.</p>', '#', 'placeholder5.png', 'image_block', '', '', '', '', '2015-10-22 14:40:30', '2015-10-22 12:40:30'),
(53, 'Controlled UX.', '<p>Lorem ipsum dolor sit amet, consectur adipisicing elit, sed do eiusmod.</p>', '#', 'placeholder6.png', 'image_block', '', '', '', '', '2015-10-16 05:33:40', '2015-10-16 05:33:40'),
(54, 'box', '', '#', 'box.jpg', 'image_block', '', '', '', '', '2015-10-16 05:59:46', '2015-10-16 05:59:46'),
(55, 'box1', '', '#', 'box1.jpg', 'image_block', '', '', '', '', '2015-10-16 06:00:08', '2015-10-16 06:00:08'),
(56, 'box2', '', '#', 'box2.jpg', 'image_block', '', '', '', '', '2015-10-16 06:00:31', '2015-10-16 06:00:31'),
(57, 'box3', '', '#', 'box31.jpg', 'image_block', '', '', '', '', '2015-10-16 06:01:04', '2015-10-16 06:01:04'),
(58, 'box4', '', '#', 'box4.jpg', 'image_block', '', '', '', '', '2015-10-16 06:01:44', '2015-10-16 06:01:44'),
(59, 'box5', '', '#', 'box5.jpg', 'image_block', '', '', '', '', '2015-10-16 06:02:01', '2015-10-16 06:02:01'),
(60, 'box6', '', '#', 'box6.jpg', 'image_block', '', '', '', '', '2015-10-16 06:02:32', '2015-10-16 06:02:32'),
(61, 'box7', '', '#', 'box7.jpg', 'image_block', '', '', '', '', '2015-10-16 06:03:05', '2015-10-16 06:03:05'),
(62, 'box8', '', '#', 'box8.jpg', 'image_block', '', '', '', '', '2015-10-16 06:03:28', '2015-10-16 06:03:28'),
(63, 'box9', '', '#', 'box9.jpg', 'image_block', '', '', '', '', '2015-10-16 06:03:46', '2015-10-16 06:03:46'),
(64, 'box10', '', '#', 'box10.jpg', 'image_block', '', '', '', '', '2015-10-16 06:05:26', '2015-10-16 06:05:26'),
(65, 'box11', '', '#', 'box11.jpg', 'image_block', '', '', '', '', '2015-10-16 06:05:48', '2015-10-16 06:05:48'),
(66, 'box12', '', '#', 'box12.jpg', 'image_block', '', '', '', '', '2015-10-16 06:06:12', '2015-10-16 06:06:12'),
(67, 'box13', '', '#', 'box13.jpg', 'image_block', '', '', '', '', '2015-10-16 06:07:34', '2015-10-16 06:07:34'),
(68, 'box14', '', '#', 'box14.jpg', 'image_block', '', '', '', '', '2015-10-16 06:07:57', '2015-10-16 06:07:57'),
(69, 'box15', '', '#', 'box15.jpg', 'image_block', '', '', '', '', '2015-10-16 06:08:17', '2015-10-16 06:08:17'),
(70, 'box16', '', '#', 'box16.jpg', 'image_block', '', '', '', '', '2015-10-16 06:08:35', '2015-10-16 06:08:35');

-- --------------------------------------------------------

--
-- Table structure for table `links`
--

CREATE TABLE IF NOT EXISTS `links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `display` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `main` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=14 ;

--
-- Dumping data for table `links`
--

INSERT INTO `links` (`id`, `display`, `url`, `created_at`, `updated_at`, `main`) VALUES
(1, 'Links', 'Link', '2015-09-30 06:59:11', '2015-09-30 06:59:11', NULL),
(2, 'Pages', 'page', '2015-09-30 08:03:48', '2015-09-30 08:03:48', NULL),
(3, 'Blocks', 'block', '2015-09-30 09:17:18', '2015-09-30 09:17:18', NULL),
(4, 'Block types', 'blocktypes', '2015-10-01 07:25:30', '2015-10-01 07:25:30', NULL),
(5, 'Block fields', 'blockfield', '2015-10-01 08:23:10', '2015-10-01 08:23:10', NULL),
(6, 'People', 'team', '2015-10-05 12:26:21', '2015-10-05 12:26:21', NULL),
(7, 'Block widgets', 'image', '2015-10-06 08:48:16', '2015-10-06 08:48:16', NULL),
(8, 'Menus', 'menu', '2015-10-07 08:31:01', '2015-10-07 08:31:01', NULL),
(9, 'Menu items', 'menuitem', '2015-10-07 08:31:07', '2015-10-07 08:31:07', NULL),
(10, 'Testimonials', 'testimonial', '2015-10-12 09:30:59', '2015-10-12 09:30:59', NULL),
(11, 'Posts', 'post', '2015-10-12 10:55:52', '2015-10-12 10:55:52', NULL),
(12, 'Users', 'users', '2015-10-27 09:06:29', '2015-10-27 09:06:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `position` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `name`, `position`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Top Menu', 'top', 1, '2015-10-07 08:50:16', '2015-10-07 08:50:16'),
(2, 'Bottom menu', 'bottom', 1, '2015-10-07 09:43:12', '2015-10-07 09:43:12');

-- --------------------------------------------------------

--
-- Table structure for table `menuitem`
--

CREATE TABLE IF NOT EXISTS `menuitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `parent_2` (`parent`),
  KEY `parent` (`menu_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `menuitem`
--

INSERT INTO `menuitem` (`id`, `name`, `link`, `parent`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 'About', 'about', NULL, 1, '2015-10-07 09:13:39', '2015-10-07 09:13:39'),
(3, 'Solutions', 'solutions', 0, 1, '2015-10-07 09:17:26', '2015-10-07 09:17:26'),
(5, 'Knowledge Center', 'knowledge-center', 0, 1, '2015-10-07 09:39:55', '2015-10-07 09:39:55'),
(6, 'More', '#', 0, 1, '2015-10-07 09:40:17', '2015-10-07 09:40:17'),
(7, 'Sitemap', 'sitemap', 0, 2, '2015-10-07 09:43:45', '2015-10-07 09:43:45'),
(8, 'Privacy Policy', 'privacy-policy', 0, 2, '2015-10-07 09:44:07', '2015-10-07 09:44:07');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_11_16_205658_create_admins_table', 1),
('2014_12_02_152920_create_password_reminders_table', 1),
('2015_02_20_130902_create_url_table', 1),
('2015_03_15_123956_edit_url_table', 1),
('2015_01_15_105324_create_roles_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE IF NOT EXISTS `page` (
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=23 ;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`id`, `title`, `slug`, `seo_title`, `seo_keywords`, `seo_desc`, `created_at`, `updated_at`, `blocks_order`) VALUES
(1, 'Home Page', 'home-page', 'Online Payment Solutions | Accept Online Payments | WePay', 'payment services', '<p><span data-sheets-value="[null,2,">We''re WePay. A leading payment services provider, offering online payment gateways and payment solutions designed to supercharge your growth. Intrigued? </span></p>', '2015-10-20 05:56:07', '2015-10-20 03:56:07', '["1","9","10","11","5","2","12","13","16","17"]'),
(3, 'About', 'about', 'About page', '', '<p>About page</p>', '2015-10-21 12:59:13', '2015-10-21 10:59:15', '["18","64","65","66","19","20","21","23","22","24","25","26","39","40","41"]'),
(4, 'Business', 'business', 'Business', '', '<p>Business</p>', '2015-10-19 07:34:25', '2015-10-19 05:34:33', '["27","28","29","30","50"]'),
(5, 'People', 'people', 'People', '', '<p>People</p>', '2015-10-19 07:25:33', '2015-10-19 05:25:41', '["31","32","46","33","34","49","49"]'),
(6, 'Careers', 'careers', 'careers', '', '<p>careers</p>', '2015-10-19 07:15:12', '2015-10-19 05:15:20', '["35","36","37","38","49"]'),
(7, 'How Can We Help', 'how-can-we-help', 'How Can We Help', '', '<p>How Can We Help</p>', '2015-10-16 07:37:16', '2015-10-16 05:37:20', '["42","45","43","44"]'),
(8, 'Testimonials', 'testimonials', 'Testimonials', '', '<p>Testimonials</p>', '2015-10-23 13:54:45', '2015-10-23 11:54:45', '["47","50","48","49"]'),
(10, 'Get Started', 'get-started', 'Get Started', 'Get Started', '<p>Get Started</p>', '2015-10-20 10:21:39', '2015-10-20 08:21:40', '["51","52","53"]'),
(11, 'Thank you ', 'thank-you', 'Thank you ', 'Thank you', '<p>Thanks</p>', '2015-10-20 11:30:15', '2015-10-20 09:30:15', '["61","62"]'),
(12, 'Legal', 'legal', 'Legal', 'Legal', '<p>Legal terms</p>', '2015-10-20 06:47:24', '2015-10-20 06:47:24', ''),
(13, 'Privacy', 'privacy', 'privacy', 'privacy', '<p>Privacy</p>', '2015-10-20 06:49:19', '2015-10-20 06:49:19', ''),
(14, 'Pricing', 'pricing', 'Pricing', 'Pricing', '<p>Pricing</p>', '2015-10-20 11:08:31', '2015-10-20 09:08:32', '["56","57"]'),
(17, '404 Page not found', '404', '404 Page not found', '404 Page not found', '<p>404 Page not found</p>', '2015-10-22 08:21:16', '2015-10-22 06:21:17', '["67","68"]'),
(18, 'Solutions', 'solutions', 'solutions', 'solutions', '<p>solutions</p>', '2015-10-23 13:08:14', '2015-10-23 11:08:14', '["70","71","72","73","74","78","81","82","83","84","85","75","76"]'),
(19, 'letter', 'letter', 'seo letter', 'seo letter', '<p>seo letter</p>', '2015-10-23 11:46:34', '2015-10-23 09:46:34', '["80","79"]'),
(20, 'Security', 'security', 'Security ', 'Security', '<p>Security</p>', '2015-10-26 12:07:38', '2015-10-26 11:07:38', '["87","86"]');

-- --------------------------------------------------------

--
-- Table structure for table `password_reminders`
--

CREATE TABLE IF NOT EXISTS `password_reminders` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `password_reminders_email_index` (`email`),
  KEY `password_reminders_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE IF NOT EXISTS `permission_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permission_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `permission_id` (`permission_id`),
  KEY `role_id` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `permission_user`
--

CREATE TABLE IF NOT EXISTS `permission_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permission_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `permission_id` (`permission_id`,`user_id`),
  KEY `permission_id_2` (`permission_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE IF NOT EXISTS `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `seo_title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `seo_desc` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `seo_keywords` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `subtitle` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=18 ;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `title`, `slug`, `seo_title`, `seo_desc`, `seo_keywords`, `subtitle`, `content`, `type`, `created_at`, `updated_at`) VALUES
(1, 'News 1', 'news-1', 'seo title', '<p>seo desc</p>', 'seo keyword', 'Subtitle News 1', '<h2>Content News 1</h2>\r\n<p><a href="google.com" target="_blank">Lorem ipsum</a> dolor sit amet, <strong>consectetur</strong> <em>adipiscing</em> elit. Duis <span style="text-decoration: underline;">malesuada</span> erat enim, vel ornare erat sagittis quis. Nunc sed felis nulla. Nullam pulvinar pretium justo, ac convallis magna aliquet nec. Aliquam imperdiet sagittis gravida. Curabitur iaculis posuere est, vitae finibus turpis. Praesent hendrerit ante blandit, mollis magna a, accumsan dolor. Sed placerat aliquet tortor, non semper leo tristique sit amet. Maecenas pulvinar commodo dui. Ut sollicitudin risus arcu, eget pharetra dui ullamcorper eu. Suspendisse potenti. Pellentesque cursus, dui eu dapibus efficitur, lacus ante luctus elit, at pulvinar leo metus sit amet ex. Mauris sapien neque, rhoncus in neque sit amet, feugiat ultrices dui. In in massa vel nunc pretium iaculis. Praesent vulputate feugiat eros, sed mollis tortor porta a. Praesent a nisi ut nibh ultrices pellentesque vel volutpat lacus.</p>\r\n<p><img src="../../elfinder/connector?_token=kMOxa2kfhD5JUKuqNZ7Hm5lVliQH3QLsUysiIvM8&amp;cmd=file&amp;target=fls2_aW1hZ2VzL2Fib3V0LXNlY3Rpb24tMS5qcGc" alt="" width="800" height="319" /></p>\r\n<p>Vestibulum bibendum sapien euismod risus ornare, vel faucibus sem varius. Morbi commodo tellus a tempor tincidunt. Nulla ullamcorper sapien non neque rhoncus mollis. Mauris egestas diam in dapibus tristique. Nunc gravida imperdiet risus, scelerisque sollicitudin eros tincidunt ut. Sed sollicitudin faucibus purus, in imperdiet turpis ultrices ac. Phasellus sit amet dui sem. Ut vitae pretium sapien.</p>', 'news', '2015-10-27 09:40:15', '2015-10-20 06:34:12'),
(2, 'News 2', 'news-2', '', '', '', 'Subtitle News 2', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', 'news', '2015-10-27 09:40:19', '2015-10-16 10:19:20'),
(3, 'News 3', 'news-3', '', '', '', 'Subtitle News 3', '<p>News 3 It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', 'news', '2015-10-27 09:40:21', '2015-10-16 10:19:13'),
(4, 'News 4', 'news-4', '', '', '', 'Subtitle News 4', '<h2>Title</h2>\r\n<p>News 4 It is a long <strong>Bold </strong>fact that a <em>Italic </em>will be <span style="text-decoration: underline;">Underline </span>by the readable <a title="Google link" href="google.com" target="_blank">LINK </a>of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', 'news', '2015-10-27 09:40:26', '2015-10-16 10:19:05'),
(5, 'News 5', 'news-5', '', '', '', 'Subtitle News 5', '<h1>Heading 1</h1>\r\n<h2>Heading 2</h2>\r\n<h3>Heading 3</h3>\r\n<h4>Heading 4</h4>\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', 'news', '2015-10-27 09:40:27', '2015-10-16 10:18:58'),
(6, 'News 6 - Much Longer title reader will be distracted by the readable content of', 'news-6-much-longer-title-reader-will-be-distracted-by-the-readable-content-of', '', '', '', 'Subtitle News 6', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). </p>', 'news', '2015-10-27 09:40:30', '2015-10-16 10:18:49'),
(7, 'Event post 1 - long title distracted by the readable content of a page when looking', 'event-post-1-long-title-distracted-by-the-readable-content-of-a-page-when-looking', '', '', '', 'Subtitle comes here', '<h1>Heading 1</h1>\r\n<h2>Heading 2</h2>\r\n<h3>Heading 3</h3>\r\n<h4>Heading 4</h4>\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', 'events', '2015-10-16 12:18:05', '2015-10-16 10:18:10'),
(8, 'Events 2', 'event-2', '', '', '', 'Subtitle Event 2', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', 'events', '2015-10-16 12:17:26', '2015-10-16 10:17:31'),
(9, 'Event 3', 'event-3', '', '', '', 'Subtitle Event 3', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n<p><img src="../../elfinder/connector?_token=zmfpxMKFeSsDjtOzrMSv8OlhVY97nMlOI1R65zj7&amp;cmd=file&amp;target=fls2_MjY3MzQ1LWFtYW5kYS1jcmV3LmpwZw" alt="Custom image" width="400" height="587" /></p>\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by acc', 'events', '2015-10-16 12:17:18', '2015-10-16 10:17:22'),
(10, 'Event 4', 'event-4', '', '', '', 'Subtitle event 4', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', 'events', '2015-10-16 12:17:11', '2015-10-16 10:17:16'),
(11, 'News 7', 'news-7', 'News 7', '<p>News 7</p>', 'News 7', 'Subtitle News 7', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', 'news', '2015-10-27 09:40:32', '2015-10-19 10:15:46');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `description`, `level`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Moderator', 'moderator', NULL, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE IF NOT EXISTS `role_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `role_user_role_id_foreign` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE IF NOT EXISTS `team` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `position` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=12 ;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`id`, `name`, `position`, `description`, `image`, `created_at`, `updated_at`) VALUES
(3, 'Bill Clerico', 'Co-founder and CEO', '<p>Bill was an technology investment banker at Jefferies, and studied Computer Science at Boston College.</p>', 'bill-clerico.jpg', '2015-10-13 09:06:05', '2015-10-13 09:06:05'),
(4, 'Rich Aberman', 'Co-founder and CPO', '<p>Rich was a law student at NYU. At Boston College, Rich studied Philosophy, Economics and Political Science.</p>', 'rich-aberman.jpg', '2015-10-13 09:06:45', '2015-10-13 09:06:45'),
(5, 'Kurt Bilafer', 'VP, Sales & Customer Success', '<p>Kurt joined WePay in 2015 from SAP, where he ran global sales for teams. Prior to that, he co-founded Pilot Software, which was sold to SAP.</p>', 'kurt-bilafer.jpg', '2015-10-23 14:39:31', '2015-10-23 12:39:31'),
(6, 'Steve Pellizzer', 'CFO', '<p>For 10 years, Steve served as the CFO of CyberSource (INYSE: CYBS) until its acquisition by Visa for $2 billion.</p>', 'steve-pellizzer.jpg', '2015-10-13 14:33:27', '2015-10-13 12:33:28'),
(7, 'Karen White', 'VP, Product', '<p>Karen has been an executive at PayCycle, Picaboo and GreenRoad. She has a BS from Tufts and an MBA from Stanford.</p>', 'karen-white.jpg', '2015-10-13 09:12:06', '2015-10-13 09:12:06'),
(8, 'Tina Hsiao', 'VP, Customer Delight', '<p>Tina spent 10 years at Intuit running marketing and support teams. She has a degree from Columbia and a MBA from Harvard.</p>', 'tina-hsiao.jpg', '2015-10-13 09:12:35', '2015-10-13 09:12:35'),
(9, 'Chris Conrad', 'VP, Engineering', '<p>Chris spent 7 years at Linkedin as Director of Engineering running the Social Graph Database and Homepage teams.</p>', 'chris-conrad.jpg', '2015-10-13 09:13:28', '2015-10-13 09:13:28'),
(10, 'John Canfield', 'VP, Risk Management', '<p>John spent 8 years at eBay as Senior Director of Fraud and Risk Managemert. He has degrees in engineering from MIT and a MBA from Stanford.</p>', 'john-canfield.jpg', '2015-10-13 09:13:56', '2015-10-13 09:13:56'),
(11, 'Susan Dunn', 'General Counsel', '<p>Susan was the GC for PayCycle, Bill.com and ODesk, has been a partner at Fenwick, and also clerked for the U.S. Supreme Court. She holds degrees from Harvard and Stanford.</p>', 'susan-dunn.jpg', '2015-10-13 09:14:58', '2015-10-13 09:14:58');

-- --------------------------------------------------------

--
-- Table structure for table `testimonial`
--

CREATE TABLE IF NOT EXISTS `testimonial` (
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
  `content2` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `content3` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `blue_quote_text` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `blue_quote_author` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `testimonial`
--

INSERT INTO `testimonial` (`id`, `title`, `slug`, `seo_title`, `seo_keywords`, `seo_desc`, `featured`, `featured_copy`, `quote`, `quote_from`, `main_image`, `small_image`, `preview_image`, `content1`, `customer_title`, `customer_content`, `challange_title`, `challange_content`, `solution_title`, `solution_content`, `benefits_title`, `benefits_content`, `content2`, `content3`, `blue_quote_text`, `blue_quote_author`, `created_at`, `updated_at`) VALUES
(1, 'Meet Up', 'meet-up', 'Meet Up', 'Meet Up', '<p>Meet Up</p>', 1, '<p>FreshBooks moved from a 3rd party payments experience to its own streamlined, conversion-friendly product using WePay</p>', '<p>FreshBooks Payments has enabled us to make payments more transparent for our users. Users know exactly when payments are going to hit their bank account, they know which payments have completed vs.', '<p>Brandon Chu, Director of Product Management, FreshBooks</p>', 'meetup-image.jpg', 'meetup-logo1.png', 'meetup1.png', '<div class="column">\r\n<div class="section">\r\n<h2>The customer</h2>\r\n<p>Os auditae poribus maio. pore cus etum, quo voloressi aboriam qui sum nis porempo rehent, ipit aut que suntur, occus.Hil inctotate peliquam, aliquiasped lorem.</p>\r\n</div>\r\n<div class="section">\r\n<h2>The solution</h2>\r\n<p>Os auditae poribus maio. pore cus etum, quo voloressi aboriam qui sum nis porempo rehent, ipit aut que suntur, occus.Hil inctotate peliquam, aliquiasped lorem.</p>\r\n</div>\r\n</div>\r\n<div class="column">\r\n<div class="section">\r\n<h2>The challenge</h2>\r\n<p>Os auditae poribus maio. pore cus etum, quo voloressi aboriam qui sum nis porempo rehent, ipit aut que suntur, occus.Hil inctotate peliquam, aliquiasped lorem.</p>\r\n</div>\r\n<div class="section">\r\n<h2>The benefits</h2>\r\n<p>Os auditae poribus maio. pore cus etum, quo voloressi aboriam qui sum nis porempo rehent, ipit aut que suntur, occus.Hil inctotate peliquam, aliquiasped lorem.</p>\r\n</div>\r\n</div>', 'The customer', '<p>FreshBooks is the #1 cloud-based accounting software designed exclusively for service-based small business owners. More than 10 million users turn to FreshBooks to send invoices, track time, collect online payments, manage expenses and run reports</p>', 'The challenge', '<p>Although FreshBooks values making things as simple as possible for its users, multiple payment providers created a less streamlined product and a more difficult support experience. Freshbooks explored building its own payments product internally, but found it would be too distracting, costly, and time consuming</p>', 'The solution', '<p>FreshBooks turned to WePay to power FreshBooks Payments, a payments product that''s integrated tightly into the FreshBooks experience. Working with WePay allowed FreshBooks to go to market in half the time it would have taken to build a product itself without taking on additional risk or overhead.</p>', 'The benefits', '<p>FreshBooks Payments quickly became popular with users, with 55% choosing it as their processor. Not only that, but FreshBooks found those users made 40% more transactions than users on other payments providers.</p>', '<h1>FreshBooks moved from a 3rd party payments experience to its own streamlined, conversion-friendly product using WePay.</h1>\r\n<p>us etum, quo voloressi aboriam qui su porempo rehent, ipit aut que suntur, occus.Hil inctotate peliquam, aliquiasped lorem.</p>\r\n<p><img src="http://www.theblondesalad.com/wp-content/uploads/2015/06/copertina-adriana-lima.jpg" alt="" width="940" height="529" /></p>\r\n<p>Os auditae poribus maio. pore cus etum, quo voloressi aboriam qui su porempo rehent, ipit aut que suntur, occus.Hil inctotate peliquam, aliquiasped lorem. Soltora ium meni iam inprobse confex movit iamquod itiquam ium furbeff rensil horem publica escerit, que egerem. Hil crum tem, invenatur. Grave, aut L. Mulater ebatus clus, quiteris ficibun tiorumendi ta inatuidiciam faciam se, non videt; nenatiquius enatod faciae nos Mulviliu et furis, esse eo, que tem sil us; inam inimoret gra novis.</p>\r\n<p><a href="#">lorem ipsum</a> <a href="#">lorem ipsum</a> <a href="#">lorem ipsum</a> <a href="#">l', '<h2>KEY TAKE-OUT</h2>\r\n<p>FreshBooks payments users make 40% percent more transactions then those using other payment providers.</p>\r\n<hr />\r\n<p>Os auditae poribus maio. pore cus etum, quo voloressi aboriam qui sum nis porempo rehent,ipit aut que suntur, occus.Hil inctotate peliquam.</p>\r\n<hr />\r\n<p>Os auditae poribus maio. pore cus etum, quo voloressi aboriam qui sum nis porempo rehent,ipit aut que suntur, occus.Hil inctotate peliquam.</p>\r\n<hr />\r\n<p>Os auditae poribus maio. pore cus etum, quo voloressi aboriam qui sum nis porempo rehent,ipit aut que suntur, occus.Hil inctotate peliquam.</p>', '', 'a', '2015-10-23 14:03:49', '2015-10-23 12:03:52'),
(2, 'Testimonial 2', 'testimonial-2', '', '', '', 1, '<p>Featured copy</p>', '<p>Quote comes here</p>', '<p>Author of quote </p>', '1000-autumn-maples-font-b-fall-b-font-font-b-scenery-b-font-jigsaw-puzzle-casual.jpg', 'meetup-logo2.png', 'meetup11.png', '<p>First content text area</p>', 'Customer title', '<p>Customer content area</p>', 'Challenge title text', '<p>Challenge content area </p>', 'Solution Title Area', '<p>Solution content area</p>', 'Benefits title text', '<p>benefits area</p>', '<h2>Second content area</h2>\r\n<p>Paragraph </p>', '<p>Third content area</p>', '', '', '2015-10-16 12:57:06', '2015-10-16 10:57:06'),
(6, 'sadfsad', 'asdfas', '', '', '', 0, '<p>asdf</p>', '<p>asdf</p>', '<p>asdf</p>', '23914-games-of-thrones-emma-watson.jpg', 'about-section-21.jpg', 'about-section-31.jpg', '<p>asdf</p>', '', '<p>asdf</p>', 'asdf', '<p>asdf</p>', 'asdf', '<p>asdf</p>', 'asdf', '<p>asdf</p>', '<p>asdf</p>', '<p>asdf</p>', '', '', '2015-10-16 13:04:13', '2015-10-16 11:04:13'),
(7, 'Testimonial 3', 'testimonial3', 'testimonial3', 'testimonial3', '<p>testiomoinal3</p>', 1, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur ac orci elit. Donec cursus leo at odio iaculis, at mattis magna ultricies. Nullam vel sapien vitae sem sagittis dictum ac non nunc. Morbi vitae erat id lorem dictum ultrices. Aliquam nisl sapien, placerat nec elementum fermentum, malesuada a leo. Aenean convallis orci sed dui tincidunt varius. In maximus tincidunt tellus, bibendum tempor nisi dignissim et. In et tortor et erat facilisis ornare ut a neque. Quisque non purus tur', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur ac orci elit. Donec cursus leo at odio iaculis, at mattis magna ultricies. Nullam vel sapien vitae sem sagittis dictum ac non nunc', '<p>Bill Murphey</p>', 'sample-11.jpg', 'Fm_nFxD9.jpeg', 'Fm_nFxD91.jpeg', '', 'The customer', '<p>Maecenas sed rhoncus massa, non sodales felis. Nulla ultrices turpis id sem sodales, sed pellentesque sapien fringilla. Vestibulum nec porta sapien. Aenean ac congue augue. Phasellus mattis vehicula ex, nec varius justo fringilla id. Vivamus sagittis eget eros et rhoncus. Vivamus scelerisque sem nec turpis blandit, in tincidunt nisi imperdiet. Etiam sed leo metus. Praesent dignissim imperdiet consequat. In placerat sagittis venenatis. Aliquam tortor enim, bibendum at lorem nec, interdum solli', 'The challenge', '<p>Pellentesque pulvinar dolor ex, a pharetra erat aliquet interdum. Donec maximus nisl nisl, id porttitor felis sodales non. Fusce ac purus vel lacus fringilla tincidunt luctus ut lorem. Sed pulvinar nibh vitae molestie elementum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi a dictum nulla. Donec volutpat odio ac facilisis ornare.</p>', 'The Solution', '<p>blandit, consequat leo vel, dignissim orci. Donec dolor leo, luctus ac cursus viverra, pretium et sem. Phasellus at lobortis magna, ut elementum magna. Pellentesque efficitur tincidunt lectus, sit amet porta mi blandit mollis. Proin scelerisque feugiat velit, et vulputate ante dignissim eget. Quisque sit amet est bibendum, dignissim nisl in, auctor est. Integer nec efficitur mauris. Maecenas ligula urna, sollicitudin vitae consequat vel, vulputate eu risus.</p>', 'The Benefits', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur ac orci elit. Donec cursus leo at odio iaculis, at mattis magna ultricies. Nullam vel sapien vitae sem sagittis dictum ac non nunc. Morbi vitae erat id lorem dictum ultrices. Aliquam nisl sapien, placerat nec elementum fermentum, malesuada a leo. Aenean convallis orci sed dui tincidunt varius. In maximus tincidunt tellus, bibendum tempor nisi dignissim et. In et tortor et erat facilisis ornare ut a neque. Quisque non purus tur', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur ac orci elit. Donec cursus leo at odio iaculis, at mattis magna ultricies. Nullam vel sapien vitae sem sagittis dictum ac non nunc. Morbi vitae erat id lorem dictum ultrices. Aliquam nisl sapien, placerat nec elementum fermentum, malesuada a leo. Aenean convallis orci sed dui tincidunt varius. In maximus tincidunt tellus, bibendum tempor nisi dignissim et. In et tortor et erat facilisis ornare ut a neque. Quisque non purus turpis. Nunc ante erat, luctus facilisis vulputate et, commodo in sem. Quisque rutrum nisi turpis, sed efficitur metus aliquet vitae. Sed gravida elementum turpis, sed iaculis lorem imperdiet et. Duis rhoncus mollis tellus, eget consequat magna venenatis pretium. Morbi sit amet elit leo.</p>\r\n<p><img src="../../elfinder/connector?_token=lu88Lc7g9pgmVjeHARO64Kj3k7b5Ui5vf0Sb8Dbp&amp;cmd=file&amp;target=fls2_c2FtcGxlLTEuanBn" alt="" width="420" height="315" /></p>', '<h2>KEY TAKE-OUT</h2>\r\n<p>FreshBooks payments users make 40% percent more transactions then those using other payment providers.</p>\r\n<hr />\r\n<p>Os auditae poribus maio. pore cus etum, quo voloressi aboriam qui sum nis porempo rehent,ipit aut que suntur, occus.Hil inctotate peliquam.</p>\r\n<hr />\r\n<p>Os auditae poribus maio. pore cus etum, quo voloressi aboriam qui sum nis porempo rehent,ipit aut que suntur, occus.Hil inctotate peliquam.</p>\r\n<hr />\r\n<p>Os auditae poribus maio. pore cus etum, quo voloressi aboriam qui sum nis porempo rehent,ipit aut que suntur, occus.Hil inctotate peliquam.</p>', 'Os auditae ', 'Bill Williams', '2015-10-26 12:20:07', '2015-10-26 11:20:07'),
(8, 'Testimonial 4', 'testimonial4', 'testimonial4', 'testimonial4', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur ac orci elit. Donec cursus leo at odio iaculis, at mattis magna ultricies. Nullam vel sapien vitae sem sagittis dictum ac non nunc. Morbi vitae erat id lorem dictum ultrices. Aliquam nisl sapien, placerat nec elementum fermentum, malesuada a leo. Aenean convallis orci sed dui tincidunt varius. In maximus tincidunt tellus, bibendum tempor nisi dignissim et. In et tortor et erat facilisis ornare ut a neque. Quisque non purus tur', 1, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur ac orci elit. Donec cursus leo at odio iaculis, at mattis magna ultricies. Nullam vel sapien vitae sem sagittis dictum ac non nunc. Morbi vitae erat id lorem dictum ultrices. Aliquam nisl sapien, placerat nec elementum fermentum, malesuada a leo. Aenean convallis orci sed dui tincidunt varius. In maximus tincidunt tellus, bibendum tempor nisi dignissim et. In et tortor et erat facilisis ornare ut a neque. Quisque non purus tur', '<p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur ac orci elit. Donec cursus leo at odio iaculis, at mattis magna ultricies. Nullam vel sapien vitae sem sagittis dictum ac non nun', '<p>Bill Murphey</p>', 'sample-12.jpg', 'Fm_nFxD92.jpeg', 'Fm_nFxD93.jpeg', '', 'Customer', '<p>Maecenas sed rhoncus massa, non sodales felis. Nulla ultrices turpis id sem sodales, sed pellentesque sapien fringilla. Vestibulum nec porta sapien. Aenean ac congue augue. Phasellus mattis vehicula ex, nec varius justo fringilla id. Vivamus sagittis eget eros et rhoncus. Vivamus scelerisque sem nec turpis blandit, in tincidunt nisi imperdiet. Etiam sed leo metus. Praesent dignissim imperdiet consequat. In placerat sagittis venenatis. Aliquam tortor enim, bibendum at lorem nec, interdum solli', 'Challenge', '<p>Pellentesque pulvinar dolor ex, a pharetra erat aliquet interdum. Donec maximus nisl nisl, id porttitor felis sodales non. Fusce ac purus vel lacus fringilla tincidunt luctus ut lorem. Sed pulvinar nibh vitae molestie elementum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi a dictum nulla. Donec volutpat odio ac facilisis ornare.</p>', 'Solution', '<p>blandit, consequat leo vel, dignissim orci. Donec dolor leo, luctus ac cursus viverra, pretium et sem. Phasellus at lobortis magna, ut elementum magna. Pellentesque efficitur tincidunt lectus, sit amet porta mi blandit mollis. Proin scelerisque feugiat velit, et vulputate ante dignissim eget. Quisque sit amet est bibendum, dignissim nisl in, auctor est. Integer nec efficitur mauris. Maecenas ligula urna, sollicitudin vitae consequat vel, vulputate eu risus.</p>', 'Benefits', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur ac orci elit. Donec cursus leo at odio iaculis, at mattis magna ultricies. Nullam vel sapien vitae sem sagittis dictum ac non nunc. Morbi vitae erat id lorem dictum ultrices. Aliquam nisl sapien, placerat nec elementum fermentum, malesuada a leo. Aenean convallis orci sed dui tincidunt varius. In maximus tincidunt tellus, bibendum tempor nisi dignissim et. In et tortor et erat facilisis ornare ut a neque. Quisque non purus tur', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur ac orci elit. Donec cursus leo at odio iaculis, at mattis magna ultricies. Nullam vel sapien vitae sem sagittis dictum ac non nunc. Morbi vitae erat id lorem dictum ultrices. Aliquam nisl sapien, placerat nec elementum fermentum, malesuada a leo. Aenean convallis orci sed dui tincidunt varius. In maximus tincidunt tellus, bibendum tempor nisi dignissim et. In et tortor et erat facilisis ornare ut a neque. Quisque non purus turpis. Nunc ante erat, luctus facilisis vulputate et, commodo in sem. Quisque rutrum nisi turpis, sed efficitur metus aliquet vitae. Sed gravida elementum turpis, sed iaculis lorem imperdiet et. Duis rhoncus mollis tellus, eget consequat magna venenatis pretium. Morbi sit amet elit leo.</p>\r\n<p><img src="../../elfinder/connector?_token=lu88Lc7g9pgmVjeHARO64Kj3k7b5Ui5vf0Sb8Dbp&amp;cmd=file&amp;target=fls2_c2FtcGxlLTEuanBn" alt="" width="420" height="315" /></p>', '<h2>KEY TAKE-OUT</h2>\r\n<p>FreshBooks payments users make 40% percent more transactions then those using other payment providers.</p>\r\n<hr />\r\n<p>Os auditae poribus maio. pore cus etum, quo voloressi aboriam qui sum nis porempo rehent,ipit aut que suntur, occus.Hil inctotate peliquam.</p>\r\n<hr />\r\n<p>Os auditae poribus maio. pore cus etum, quo voloressi aboriam qui sum nis porempo rehent,ipit aut que suntur, occus.Hil inctotate peliquam.</p>\r\n<hr />\r\n<p>Os auditae poribus maio. pore cus etum, quo voloressi aboriam qui sum nis porempo rehent,ipit aut que suntur, occus.Hil inctotate peliquam.</p>', 'Os auditae ', 'Bill Green', '2015-10-26 11:19:36', '2015-10-26 11:19:36');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'admin@change.me', '$2y$10$xEOnDjgWbjfLPhvj1vIa1u0aKmkLBc94d52yvzGk19BU7IPKhSt9q', '2015-10-05 10:45:44', '2015-10-05 10:45:44');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `menuitem`
--
ALTER TABLE `menuitem`
  ADD CONSTRAINT `menuitem_ibfk_1` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_ibfk_1` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_user_ibfk_1` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
