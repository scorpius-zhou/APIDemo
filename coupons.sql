# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.21-0ubuntu0.16.04.1)
# Database: kdcm
# Generation Time: 2018-11-08 08:14:54 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table accounts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `accounts`;

CREATE TABLE `accounts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '账户号码',
  `bank_id` int(11) NOT NULL DEFAULT '0' COMMENT '银行',
  `bank_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '开户行',
  `is_default` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否默认使用',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '账户名',
  `tel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`),
  KEY `accounts_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;

INSERT INTO `accounts` (`id`, `user_id`, `number`, `bank_id`, `bank_address`, `is_default`, `created_at`, `updated_at`, `name`, `tel`)
VALUES
	(4,53,'43332222222222',1,'靠肯支行',0,'2018-08-19 20:31:38','2018-08-19 20:41:46','',''),
	(6,46,'6236682020000603461',1,'南昌',0,'2018-08-20 18:50:53','2018-08-24 22:38:42','罗贤斌','13879169299'),
	(7,55,'1234',1,'南昌',0,'2018-08-21 15:46:56','2018-08-21 15:46:56','李小云','13576906340'),
	(8,53,'777',1,'您您',0,'2018-08-24 13:59:47','2018-08-24 13:59:47','kjlkjlj','18857655087'),
	(9,47,'1133',1,'南昌',0,'2018-08-24 14:01:19','2018-08-25 19:58:57','张三','13585632532'),
	(10,50,'6217002020037803558',1,'新建龙珠支行',1,'2018-08-25 19:50:32','2018-08-25 19:50:32','熊小文','13263009886'),
	(11,79,'1111',2,'南昌',0,'2018-08-26 11:36:10','2018-08-26 11:36:10','顾鹏','13523635245');

/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table admin_menu
# ------------------------------------------------------------

DROP TABLE IF EXISTS `admin_menu`;

CREATE TABLE `admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `admin_menu` WRITE;
/*!40000 ALTER TABLE `admin_menu` DISABLE KEYS */;

INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `created_at`, `updated_at`)
VALUES
	(1,0,1,'Index','fa-bar-chart','/',NULL,NULL),
	(2,0,2,'管理','fa-tasks',NULL,NULL,'2018-08-24 14:37:44'),
	(3,2,3,'后台用户','fa-users','auth/users',NULL,'2018-08-24 14:36:22'),
	(4,2,4,'角色','fa-user','auth/roles',NULL,'2018-08-24 14:36:03'),
	(5,2,5,'权限','fa-ban','auth/permissions',NULL,'2018-08-24 14:35:50'),
	(6,2,6,'Menu','fa-bars','auth/menu',NULL,NULL),
	(7,2,7,'Operation log','fa-history','auth/logs',NULL,NULL),
	(8,0,8,'行业管理','fa-connectdevelop','industries','2018-05-28 13:13:25','2018-06-23 14:57:35'),
	(9,0,9,'系统配置','fa-cogs','configs','2018-06-14 15:33:55','2018-06-23 14:57:35'),
	(10,0,10,'设备管理','fa-desktop',NULL,'2018-06-20 16:59:58','2018-07-24 15:50:59'),
	(11,0,13,'用户管理','fa-users',NULL,'2018-06-22 09:59:59','2018-07-24 15:50:42'),
	(12,11,15,'代理商','fa-share-alt','agents','2018-06-22 10:01:28','2018-07-24 15:50:42'),
	(13,11,14,'普通用户','fa-user','users','2018-06-22 10:24:03','2018-07-24 15:50:42'),
	(14,11,16,'场地业主','fa-fire','owners','2018-06-23 14:34:59','2018-07-24 15:50:42'),
	(15,11,17,'推广员','fa-fax','promoters','2018-06-23 14:36:07','2018-07-24 15:50:42'),
	(16,0,18,'财务管理','fa-bitcoin',NULL,'2018-06-25 17:42:26','2018-07-24 15:50:42'),
	(17,16,19,'银行管理','fa-bank','banks','2018-06-25 17:43:16','2018-07-24 15:50:42'),
	(18,16,20,'提现管理','fa-paint-brush','withdraws','2018-06-27 10:10:09','2018-07-24 15:50:42'),
	(19,0,23,'卡券管理','fa-barcode','coupons','2018-06-29 09:40:43','2018-07-24 15:50:42'),
	(22,0,24,'订单管理','fa-500px','orders','2018-07-12 17:27:08','2018-07-25 15:34:14'),
	(23,16,21,'平台明细','fa-database','system-funds','2018-07-15 10:32:04','2018-07-24 15:50:42'),
	(24,16,22,'用户明细','fa-users','user-funds','2018-07-15 15:41:45','2018-07-24 15:50:42'),
	(25,10,12,'终端管理','fa-minus-square-o','terminals','2018-07-24 15:49:39','2018-07-24 15:50:42'),
	(26,10,11,'广告位管理','fa-desktop','devices','2018-07-24 15:50:31','2018-07-24 15:50:42'),
	(27,10,0,'详情管理','fa-info','device-details','2018-07-25 15:35:54','2018-07-25 15:35:54'),
	(28,10,0,'播放列表','fa-bars','plays','2018-07-27 09:50:30','2018-07-27 09:50:30'),
	(29,10,0,'默认素材管理','fa-archive','default-materials','2018-07-27 16:46:04','2018-07-27 16:46:04'),
	(30,0,0,'栏目管理','fa-pencil-square-o','articles','2018-08-04 10:56:45','2018-08-04 10:56:45'),
	(31,0,0,'加盟合作','fa-comments','leagues','2018-08-14 10:51:15','2018-08-14 10:51:15'),
	(32,0,0,'海报管理','fa-empire','poster','2018-09-04 11:02:38','2018-09-04 11:02:38'),
	(33,0,0,'官网管理','fa-fort-awesome',NULL,'2018-09-13 15:25:20','2018-09-13 15:25:20'),
	(34,33,0,'图片管理','fa-file-photo-o','official/images','2018-09-13 15:25:50','2018-09-13 15:25:50'),
	(35,33,0,'文章管理','fa-file',NULL,'2018-09-15 10:22:54','2018-09-15 10:22:54'),
	(36,35,0,'新闻资讯','fa-newspaper-o','official/news','2018-09-15 10:23:14','2018-09-15 10:23:14'),
	(37,35,0,'代理商风采','fa-flag-checkered','official/agents','2018-09-17 13:12:31','2018-09-17 13:12:31'),
	(38,33,0,'栏目设置','fa-bars','official/column-set','2018-09-19 13:55:25','2018-09-19 13:55:25'),
	(39,0,0,'商户展示','fa-cubes','','2018-10-20 13:56:18','2018-10-20 13:56:18'),
	(40,39,0,'商户开通列表','fa-bars','store-display/status','2018-10-20 13:57:03','2018-10-20 13:57:03'),
	(41,39,0,'详情管理','fa-bars','store-display/details','2018-10-26 14:45:50','2018-10-26 14:45:50');

/*!40000 ALTER TABLE `admin_menu` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table admin_operation_log
# ------------------------------------------------------------

DROP TABLE IF EXISTS `admin_operation_log`;

CREATE TABLE `admin_operation_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_operation_log_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table admin_permissions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `admin_permissions`;

CREATE TABLE `admin_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_permissions_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `admin_permissions` WRITE;
/*!40000 ALTER TABLE `admin_permissions` DISABLE KEYS */;

INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`)
VALUES
	(1,'无限制','*','','*',NULL,'2018-08-25 17:25:09'),
	(2,'Dashboard','dashboard','GET','/',NULL,NULL),
	(3,'登录','auth.login','','/auth/login\r\n/auth/logout',NULL,'2018-08-25 17:23:58'),
	(4,'用户设置','auth.setting','GET,PUT','/auth/setting',NULL,'2018-08-25 17:24:30'),
	(5,'权限管理','auth.management','','/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs',NULL,'2018-08-25 17:24:53'),
	(6,'行业管理','industries-full','','/industries*','2018-08-25 16:39:13','2018-08-25 17:26:57'),
	(7,'系统配置','configs-full','','/configs*','2018-08-25 16:40:20','2018-08-25 17:27:08'),
	(8,'播放列表删除权限','plays-destroy','GET','/terminals/destroy*','2018-08-25 17:00:24','2018-08-25 17:00:24'),
	(9,'访问默认素材页面','default-materials-get','GET','/default-materials','2018-08-25 17:04:04','2018-08-25 17:13:02'),
	(10,'默认素材管理','default-materials-full','','/default-materials*','2018-08-25 17:04:50','2018-08-25 17:13:13'),
	(11,'访问广告位页面','devices-get','GET','/devices','2018-08-25 17:06:56','2018-08-25 17:13:30'),
	(12,'广告位管理','devices-full','','/devices*','2018-08-25 17:07:25','2018-08-25 17:14:10'),
	(13,'访问卡券页面','coupons-get','GET','/coupons','2018-08-25 17:08:27','2018-08-25 17:13:44'),
	(14,'卡券管理','coupons-full','','/coupons*','2018-08-25 17:08:46','2018-08-25 17:08:46'),
	(15,'访问用户页面','users-get','GET','/agents\r\n/users\r\n/owners\r\n/promoters','2018-08-25 17:16:00','2018-08-25 17:16:00'),
	(16,'用户管理','users-full','','/agents*\r\n/users*\r\n/owners*\r\n/promoters*','2018-08-25 17:16:35','2018-08-25 17:16:35'),
	(17,'银行管理','banks-full','','/banks*','2018-08-25 17:18:25','2018-08-25 17:18:25'),
	(18,'提现管理','withdraws-full','','/withdraws*','2018-08-25 17:18:57','2018-08-25 17:18:57'),
	(19,'订单管理','orders-full','','/orders*','2018-08-25 17:19:44','2018-08-25 17:19:44'),
	(20,'平台明细','system-funds-full','','/system-funds*','2018-08-25 17:20:14','2018-08-25 17:20:14'),
	(21,'用户明细','user-funds-full','','/user-funds*','2018-08-25 17:20:38','2018-08-25 17:20:38'),
	(22,'终端管理','terminals-full','','/terminals*','2018-08-25 17:21:00','2018-08-25 17:21:00'),
	(23,'详情管理','device-details-full','','/device-details*','2018-08-25 17:21:42','2018-08-25 17:21:42'),
	(24,'播放列表','plays-full','','/plays*','2018-08-25 17:22:13','2018-08-25 17:22:13'),
	(25,'栏目管理','articles-full','','/articles*','2018-08-25 17:22:39','2018-08-25 17:22:39'),
	(26,'加盟合作','leagues-full','','/leagues*','2018-08-25 17:23:02','2018-08-25 17:23:02');

/*!40000 ALTER TABLE `admin_permissions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table admin_role_menu
# ------------------------------------------------------------

DROP TABLE IF EXISTS `admin_role_menu`;

CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `admin_role_menu` WRITE;
/*!40000 ALTER TABLE `admin_role_menu` DISABLE KEYS */;

INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`)
VALUES
	(1,2,NULL,NULL);

/*!40000 ALTER TABLE `admin_role_menu` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table admin_role_permissions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `admin_role_permissions`;

CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `admin_role_permissions` WRITE;
/*!40000 ALTER TABLE `admin_role_permissions` DISABLE KEYS */;

INSERT INTO `admin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`)
VALUES
	(1,1,NULL,NULL),
	(2,3,NULL,NULL),
	(2,11,NULL,NULL),
	(2,12,NULL,NULL),
	(2,15,NULL,NULL),
	(2,20,NULL,NULL),
	(2,19,NULL,NULL),
	(2,26,NULL,NULL),
	(2,2,NULL,NULL),
	(2,24,NULL,NULL),
	(2,21,NULL,NULL),
	(2,22,NULL,NULL);

/*!40000 ALTER TABLE `admin_role_permissions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table admin_role_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `admin_role_users`;

CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `admin_role_users` WRITE;
/*!40000 ALTER TABLE `admin_role_users` DISABLE KEYS */;

INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`)
VALUES
	(1,1,NULL,NULL),
	(2,2,NULL,NULL);

/*!40000 ALTER TABLE `admin_role_users` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table admin_roles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `admin_roles`;

CREATE TABLE `admin_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_roles_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `admin_roles` WRITE;
/*!40000 ALTER TABLE `admin_roles` DISABLE KEYS */;

INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`)
VALUES
	(1,'Administrator','administrator','2018-07-20 10:06:00','2018-07-20 10:06:00'),
	(2,'kdcm','kdcm','2018-08-26 10:33:50','2018-08-26 10:33:50');

/*!40000 ALTER TABLE `admin_roles` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table admin_user_permissions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `admin_user_permissions`;

CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table admin_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `admin_users`;

CREATE TABLE `admin_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_username_unique` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `admin_users` WRITE;
/*!40000 ALTER TABLE `admin_users` DISABLE KEYS */;

INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`)
VALUES
	(1,'admin','$2y$10$/W7rJNs24XyV7FpnM2wC0.eeFkxj24cXcxzcDl5WOWOae6zNfD3vy','酷达传媒','images/LOGO5.jpg','oeWli1JqCCGA39UF49oBM1xfQAoUpWcBAzkIxQYDoQWbOzOAOIkixYJymgRn','2018-07-20 10:06:00','2018-08-17 11:30:59'),
	(2,'kdcm','$2y$10$X/ZgqdGbYyUOw1wetf307eIm.0PSAry8/v9t593UQr6AHynPy.Wca','酷达传媒','images/90d61cd0babb701f6deb4b05d5dc7341.jpg','UKSHzsumbOWuHmtjf71zL9N6WzJ0xWh7CbuhTUW4vpOPzF7TqNDN1lrTTJjG','2018-08-26 10:25:10','2018-08-26 10:25:10');

/*!40000 ALTER TABLE `admin_users` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table articles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `articles`;

CREATE TABLE `articles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '标题',
  `content` text COLLATE utf8mb4_unicode_ci COMMENT '内容',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `articles` WRITE;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;

INSERT INTO `articles` (`id`, `title`, `content`, `created_at`, `updated_at`)
VALUES
	(1,'关于我们','<p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p><img src=\"http://api.kdcm.net.cn/storage/wangEditor/20180812113115PINBs.jpg\" style=\"max-width:100%;\"><br></p><p><img src=\"http://api.kdcm.net.cn/storage/wangEditor/20180812112756WU2FG.jpg\" style=\"max-width: 100%;\"><br></p><p><br></p>','2018-08-04 10:57:27','2018-08-12 11:31:24'),
	(3,'操作指导','<p></p><p></p><p></p><p></p><p></p><h3><img src=\"http://api.kdcm.net.cn/storage/wangEditor/20180819142938VO0xD.jpg\" style=\"color: inherit; max-width: 100%;\"><br></h3><p><img src=\"http://api.kdcm.net.cn/storage/wangEditor/20180819143001sQwmW.jpg\" style=\"max-width:100%;\"><br></p><p><img src=\"http://api.kdcm.net.cn/storage/wangEditor/20180819143013bxOVC.jpg\" style=\"max-width:100%;\"><br></p><p><img src=\"http://api.kdcm.net.cn/storage/wangEditor/20180819143024MCbs8.jpg\" style=\"max-width:100%;\"><br></p>','2018-08-04 11:01:01','2018-08-19 14:30:30'),
	(4,'广告发布服务规则','<p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><h3>素材上传说明：</h3><p><span style=\"font-size: medium; color: rgb(0, 0, 0); background-color: rgb(139, 170, 74);\">1、请您在上传素材时，根据您的素材选择在正确的素材库进行上传（横屏或竖屏）</span></p><p><span style=\"font-size: medium; color: rgb(0, 0, 0); background-color: rgb(249, 150, 59);\">2、横屏的播放比例为16:9，素材的大小及像素建议为：800*480、1080*640、；竖屏的播放比例为：9:16，素材的大小及像素建议为：720*1080、1080*1280，所有的素材dpi均需达到96以上，素材质量要清晰不能虚化，图片需保证亮度充足。</span></p><p><span style=\"font-size: medium; color: rgb(0, 0, 0); background-color: rgb(70, 172, 200);\">3、智能设备支持的素材格式为（图片及视频）：JPG、PNG、BMP、AVI、MPG、MP4、WMV、MOV、WAV、TXT、IMG、XVID，超出此范围的素材系统会自动识别无法上传，图片单张大小限定为3M以内，视频文件大小限定为18M以内，个人素材存储空间上限为20M，如空间储存已满，需要删除后才能上传成功。</span></p><h3>广告发布审核说明：</h3><p><span style=\"font-size: medium;\">1、您所发布的所有广告订单内的素材都需经过平台审核通过后才能播放，素材内容需符合中国相关的法律法规,如有违反需承担相关的责任，请您知悉。</span></p><p><span style=\"font-size: medium;\">2、订单审核时间为：09:00-18:00,&nbsp; 审核时效为：10分钟,审核通过后即时播放。订单开始播放时间以推送消息内的审核通过时间为准。</span></p><p><br></p>','2018-08-04 11:02:13','2018-08-20 18:47:33'),
	(5,'设计服务','<p></p><p></p><p></p><p></p><p></p><p></p><p></p><p><img src=\"http://api.kdcm.net.cn/storage/wangEditor/20180826171207HBlGV.jpg\" style=\"max-width: 100%;\"><br></p><p><img src=\"http://api.kdcm.net.cn/storage/wangEditor/20180826171232bTIom.jpg\" style=\"max-width: 100%;\"></p>','2018-08-04 11:02:54','2018-08-26 17:15:17'),
	(6,'酷达币说明','<p>酷达币是用于互联网用户使用本平台各种增值服务的种类、数量或其它等的一种统计代码，并非任何代币票券，只能在本平台内使用，无法用于本平台服务以外的任何商品或服务。</p>','2018-08-10 14:02:54','2018-08-12 10:22:36'),
	(7,'服务条款','<p></p><p></p><p>[导言及条款]<br>       欢迎您使用酷达传媒的智能广告投放平台！<br>       为更好的使用我们服务，您应当阅读并遵守《酷达传媒服务协议》（以下简称“本协议”）和《酷达传媒智能云平台使用协议》。请您务必审慎阅读、充分理解各条款内容，特别是免除或者限制责任的条款、管辖与法律适用条款，以及开通或使用某项服务的单独协议。限制。免责条款可能以黑体加粗或加下划线的形式提示您重点注意。除非您已阅读并接受本协议所有条款，否则您无权使用酷达传媒提供的服务，您使用酷达传媒的服务即视为您已阅读并同意上述协议的约束。 <br>       如果您未满18岁，请在法定监护人的陪同下阅读本协议，并特别注意未成年人使用条款。<br>一、【协议范围】<br>1.1本协议是您与酷达传媒之间关于用户使用酷达传媒相关服务所订立的协议。“酷达传媒”是指酷达传媒公司及其相关服务可能存在的运营关联单位。“用户”是指使用酷达传媒相关服务的使用人，在本协议中更多地称为“您”。<br>1.2本协议项下的服务是指酷达传媒向用户提供的包括但不限于即时通讯、网络传媒、互联网增值、互动娱乐、电子商务和广告等产品及服务（以下简称“本服务”）。<br>1.3本协议内容同时包括《酷达传媒智能云平台使用协议》，且您在使用酷达传媒某一特定服务时，该服务可能会另有单独的协议、相关业务规则等（以下统称为“单独协议”）。上述内容一经正式发布，即为本协议不可分割的组成部分，您同样应当遵守。您对前述任何业务规则，单独协议的接受，即视为您对本协议全部的接受。<br>二、【帐号与密码安全】<br>2.1 您在使用酷达传媒的服务时可能需要注册一个帐号，关于您使用帐号的具体规则，请遵守《酷达传媒智能云平台使用协议》和单独协议。。<br>2.2酷达传媒特别提醒您应妥善保管您的帐号和密码。当您使用完毕后，应安全退出。因您保管不善可能导致遭受盗号或密码失窃，责任由您自行承担。【用户个人信息保护】<br>3.1保护用户个人信息是酷达传媒的一项基本原则。酷达传媒将按照本协议及《隐私政策》的规定收集、使用和储存您的个人信息。本协议对个人信息保护规定的内容与上述《隐私政策》有相冲突的，均应以《隐私政策》的内容为准。<br>3.2您在注册账号或使用本服务的过程中，可能需要填写一些必要的信息。若国家法律法规有特殊的规定，您需要填写真实的身份信息，若您填写的信息不完整，则无法使用本服务或在使用过程中受到限制。<br>3.3一般情况下，您可随时浏览、修改自己提交的信息，但出于安全性和身份识别（如号码申诉服务）的考虑，您可能无法修改注册时提供的初始注册信息及其他验证信息。<br>3.4酷达传媒不会将运用各种安全技术和程序建立完善的管理制度来保护您的个人信息，以免遭受未经授权的访问、使用或披露。<br>3.5酷达传媒不会将您的个人信息转移或披露给任何非关联的第三方，除非：<br>（1）相关法律法规或法院、政府机关要求；<br>(2)为完成合并、分立、收购或资产转让而转移；<br>（3）为提供您要求的服务所必需；<br>3.6酷达传媒非常重视对未成年人个人信息的保护。若您是18周岁以下的未成年人，在使用酷达传媒的服务前，应事先取得家长或法定监护人（以下简称‘监护人”）的书面同意。<br>四、【使用本服务的方式】<br>4.1除非您与酷达传媒另有约定，您同意本服务仅为您个人非商业性质的使用。<br>4.2您应当通过酷达传媒提供或认可的方式使用本服务。您依本协议条款所取得的权利不可转让。<br>4.3您不得使用未经酷达传媒授权的插件、外挂或第三方工具对本协议项下的服务进行干扰、破坏、修改或施加其他影响。<br>五、【按现状提供服务】<br>您理解并同意，酷达传媒的服务是按照有技术和条件所能达到的现状提供的。酷达传媒会尽最大努力向您提供服务，确保服务的连贯性和安全性；但酷达传媒不能随时预见和防范法律、技术以及其他风险，包括但不限于不可抗力、病毒、木马、黑客攻击、系统不稳定、第三方服务瑕疵、政府行为等原因可能导致的服务中断、数据丢失以及去他损失和风险。<br>六、【自备设备】<br>6.1您应当理解，您使用酷达传媒的服务需自行准备与相关服务有关的终端设备（如手机、电脑、等装置），并承担所需的费用（如电话费、上网费使用）。<br>6.2您理解并同意，您使用本服务时会耗用您的终端设备和带宽等资源。<br>七、【广告】<br>7.1您同意酷达传媒可以在提供服务的过程中自行或由第三方广告商向您发送广告、推广或宣传信息（包括商业与非商业信息），其方式和范围可不经向您特别通知而变更。<br>7.2酷达传媒可能为您提供选择关闭广告信息的功能，但任何时候您都不得以本协议未明确约定或酷达传媒书面许可的方式屏蔽、过滤广告信息。<br>7.3酷达传媒依照法律的规定对广告商履行相关义务，您应当自行判断广告信息的真实性并为自己的判断行为负责，除法律明确规定外，您因依该广告信息进行的交易或前述广告商提供的内容而遭受的损失或损害，酷达传媒不承担责任。<br>7.4您同意，对酷达传媒服务中出现的广告信息，您应审慎判断其真实性和可靠性，除法律明确规定外，您应对依该广告信息进行的交易负责。<br>八、【收费服务】<br>8.1酷达传媒的部分服务是以收费方式提供的，如您使用收费服务，请遵守相关的协议。<br>8.2酷达传媒可能根据实际需要对收费的收费标准、方式进行修改和变更，酷达传媒也可能会对部分免费服务开始收费。前述修改、变更或开始收费前，酷达传媒将在相应服务页面进行通知广告。如果您不同意上述修改、变更或付费内容，则应停止使用该服务。<br>九、【第三方提供的产品或服务】<br>您在酷达传媒信发平台上使用第三方提供的产品或服务时，除遵守本协议约定外，还应遵守第三方的用户协议，酷达传媒和第三方可能出现的纠纷在法律法规和约定的范围内各自承担责任。<br>十、【基于系统和软件提供服务】<br>若酷达传媒依托“网站系统‘’向您提供服务，您还应遵守以下约定：<br>10.1您在使用本服务的过程中可能需要下载软件，对于这些软件，酷达传媒给与您一项个人的、不可转让及非排他性的许可、您仅可为访问或使用本服务的目的而使用这些软件。<br>10.2为了改善用户体验、保证服务的安全性及产品功能的一致性，酷达传媒可能会对网站系统或软件进行更新。您应该将相关软件更新到最新版本，否则酷达传媒并不保证其能正常使用。<br>10.3酷达传媒可能为不同的终端设备开发不同的软件版本，您应当根据实际情况选择下载合适的版本进行安装。您可以直接从酷达传媒授权的第三方获取。如果您从未经酷达传媒授权的第三方获取 软件或软件名称相同的安装程序，酷达传媒无法保证该软件能够正常使用，并对因此给您造成的损失不予负责。<br>10.4除非酷达传媒书面认可，您不得从事下列任一行为:<br>(1)删除软件及其副本上关于著作权的信息；<br>（2）对软件进行反向工程、反向汇编、反向编译、或者以其他方式尝试发现软件的源代码；<br>（3）对酷达传媒拥有知识产权的内容进行使用。出租、出借、复制、修改、链接、转载、汇编、发表、出版、建立镜像站点等；<br>（4）对软件 或者软件运行过程中释放到任何终端内存中的数据、软件运行过程中客户端与服务器端的交互数据，以及软件运行所必需的系统数据，进行复制、修改、增加、删除、挂接运行或创作任何衍生品，形式包括但不限于使用插件。外挂或非酷达传媒授权的第三方工具/服务接入软件和相关系统；<br>（5）通过修改或伪造软件运行中的指令。数据、增加、删减、变动软件的功能或运行效果，或者将用于上述用途的软件、方法进行运营向公众传播，无论这些行为是否为商业目的；<br>（6）通过非酷达传媒开发。授权的第三方软件、插件、外挂、系统，登录或使用酷达传媒软件及服务。或制作、发布、传播非酷达传媒开发、授权的第三方软件、插件、外挂、系统。<br>十一、【知识产权声明】<br>11.1酷达传媒在本服务中提供的内容（包括但不限于网页、文字、图片、音频、视频、图表等）的知识产权归酷达传媒所有，用户在使用本服务中所产生的内容的知识产权归用户或相关权利人所有。<br>11.2除另有特别声明外，酷达传媒提供服务时所依托软件的著作权、专利权及其他知识产权均归酷达传媒所有。<br>11.3酷达传媒在本服务中所使用的“logo”、“酷达传媒”等商业标识，其著作权或商标权归酷达传媒所有。<br>11.4上述及其他任何本服务包含的内容的知识产权均受到法律保护，未经酷达传媒、用户或相关权利人书面许可，任何人不得以任何形式进行使用或创造相关衍生品。<br>十二、【用户违法行为】<br>12.1您在使用本服务时须遵守法律法规，不得利用本服务从事违法违规行为，包括但不限于：<br>（1）发布。传送、传播、储存危害国家安全统一、破坏社会稳定、违反公序良俗、侮辱、诽谤、淫秽、暴力以及任何违反国家法律法规的内容；<br>（2）发布、传送、传播、储存侵害他人知识产权、商业秘密等合法权利的内容；<br>（3）恶意虚伪事实、隐瞒真相以误导、欺骗他人；<br>（4）发布、传送、传播广告信息及垃圾信息；<br>（5）其他法律法规禁止的行为。<br>12.2如果你违反了本条约定，相关国家机关或机构可能会对您提起诉讼、罚款、或采取其他制裁措施。并要求酷达传媒给与协助、造成损害的，您应依法予以赔偿，酷达传媒不承担任何责任。<br>12.3如果酷达传媒发现或受到让人举报您发布的信息违反本条约定，酷达传媒有权进行独立判断并采取技术手段予以删除、屏蔽或断开链接。同时，酷达传媒有权视用户的行为性质采取包括但不限于暂停或终止服务，限制、冻结或终止平台账号使用，追究法律责任等措施。<br>12.4您违反本条规定，导致任何第三方损害的，您应当独立承担责任；酷达传媒因此遭受损失的，您也应当一并赔偿。<br>十三、【遵守当地法律监管】<br>13.1您在使用本服务过程中应当遵守当地相关的法律法规，并尊重当地的道德和风俗习惯。如果您的行为违反了当地法律法规或到的风俗，您应当为此独立承担责任。<br>13.2您应避免因使用本服务而是酷达传媒卷入政治和公共事件，否则酷达传媒有权暂停或终止对您的服务。<br>十四、【用户发送、传播的内容与第三方投诉处理】<br>14．1您通过本服务发送或传播的内容（包括但不限于网页、文字、图片、音频、视频、图表等）均由您自行承担责任。<br>14.2您发送或传播的内容应有合法来源，相关内容为您所有或您已获得权力的授权。<br>14.3您同意酷达传媒可为履行本协议或提供本服务的目的而使用您发送或传播的内容。<br>14.4如果酷达传媒受到权利人通知，主张您发送或传播的内容侵犯其相关权利的，您同意酷达传媒有权进行独立判断并采取删除、屏蔽或断开链接等措施。<br>14.5您使用本服务时不得违反国家法律法规、侵害他人合法权益。您理解并同意，如您被他人投诉侵权或您投诉他人侵权，酷达传媒有权将争议中相关方的主体、联系方式、投诉相关内容等必要信息提供给其他争议方或相关部门，以便及时解决投诉纠纷，保护他人合法权益。<br>十五、【不可抗力及其他免责事由】<br>15.1您理解并同意，在使用本服务过程中，可能会遇到不可抗力等风险因素，使本服务发生中断。不可抗力是指不能预见、不能克服并不能避免且对一方或双方造成重大影响的客观事件，包括但不限于自然灾害如洪水、地震、瘟疫流行和风暴等以及社会事件如战争、动乱、政府行为等。出现上述情况时，酷达传媒将努力在第一时间与相关单位配合、及时进行修复，但是由此给您造成的损失酷达传媒在法律允许的范围内免责。<br>15.2在法律允许范围内，酷达传媒对以下情形导致的服务中断或受阻不承担责任；<br>（1）受到计算机病毒。木马或其他恶意程序、黑客攻击的破坏；<br>（2）用户或酷达传媒的电脑软件、系统、硬件和通信线路出现故障；<br>（3）用户操作不当；<br>（4）用户通过非酷达传媒授权的方式使用本服务；<br>（5）其他酷达传媒无法控制后合理预见的情形。<br>15.3您理解并同意，在使用本服务的过程中，可能会遇到网络信息或其他用户行为带来的风险，酷达传媒不对任何信息的真实性、适用性、合法性承担责任，也不对因侵权行为给您造成的损害负责。这些风险包括但不限于：<br>（1）来自他人的匿名或冒名的含有威胁、诽谤、令人反感或非法内容的信息；<br>（2）因使用本协议项下的服务，遭受他人误导、欺骗或其他导致或可能导致的任何心理、生理上的伤害以及经济上的损失；<br>（3）其他因网络信息或用户行为引起的风险。<br>15.4您理解并同意，本服务并非为某些特定目的而设计，包括但不限于核设施、军事用途、医疗设施、交通通讯等重要领域。如果因为软件或服务的原因导致上述操作失败而带来的人员伤亡、财产损失和环境破坏等，酷达传媒不承担法律责任。<br>15.5酷达传媒依据本协议约定获得处理违法违规内容的权利，该权利不构成酷达传媒的义务或承诺，酷达传媒不能保证及时发现违法行为或进行相应处理。<br>15.6在任何情况下，您不应轻信借款、索要密码或其他涉及财产的网络信息。涉及财产操作的，请一定先核实对方身份，并请经常留意酷达传媒有关防范诈骗犯罪的提示。<br>十六、【协议的生效与变更】<br>16．1您使用酷达传媒的服务即视为您已阅读本协议并接受本协议的约束。<br>16.2酷达传媒有权在必要时修改本协议条款。您可以在相关服务页面查阅最新版本的协议条款。<br>16.3本协议条款变更后，如果您继续使用酷达传媒提供的软件或服务，即视为您已接受修改后的协议。如果您不接受修改后的协议，应当停止使用酷达传媒提供的软件或服务。<br>十七、【服务的变更、中断、终止】<br>17.1酷达传媒可能会对服务内容进行变更，也可能会中断、中止或终止服务。<br>17.2您理解并同意，酷达传媒有权自主决定经营策略。在酷达传媒发生合并、分立、收购、资产转让时。酷达传媒可向第三方转让本服务下相关资产；酷达传媒也可在单方便通知您后，将在协议下部分或全部服务转交由第三方运营或履行。具体受让主体以酷达传媒通知的为准。<br>17.3如发生下列任何一种情形，酷达传媒有权不经通知而中断或终止向您提供的服务；<br>（1）根据法律规定您应提交真实信息，而您提供的个人资料不真实、或与注册信息不一致又未能提供合理证明；<br>（2）您违反相关法律法规或本协议的约定；<br>（3）按照法律法规或主管部门的要求；<br>（4）出于安全的原因或其他必要的情形。<br><br>17．4酷达传媒有权按本协议8.2条的约定进行收费。若您未按时足额付费，酷达传媒有权中断、中止或终止提供服务。<br>17.5您有责任自行备份存储在本服务中的数据。如果您的服务被终止，酷达传媒可以从服务器上永久地删除您的数据，但法律法规另有规定的除外，服务终止后，酷达传媒没有义务向您返还数据。<br>十八、【管辖与法律适用】<br>18.1本协议的成立、生效、履行、解释及纠纷解决、适用中华人民共和国大陆地区法律（不包括冲突法）。<br>18.2本协议签订地为中华人民共和国江西省南昌市西湖区。<br>18.3若您和酷达传媒之间发生任何纠纷或争议，首先应友好协商解决；协商不成的，您同意将纠纷或争议提交本协议签订地（即中国江西省南昌市西湖区）有管辖权的人民法院管辖。<br>18.4本协议所有条款的标题仅为阅读方便，本身并无实际涵义，不能作为本协议涵义解释的依据。<br>18.5本协议条款无论因何种原因部分无效或不可执行，其余条款仍有效，对双方具有约束力。<br>十九【未成年人使用条款】<br>19.1若用户未满18周岁，则为未成年人，应在监护人监护、指导下阅读本协议和使用本服务。<br>19.2未成年人用户涉世未深，容易被网络虚像迷惑，且好奇心强，遇事缺乏随机应变的处理能力，很容易被别有用心的人利用而又缺乏自我保护能力，因此，未成年人用户在使用本服务时应注意以下事项，提高安全意识，加强自我保护：<br>（1）认清网络世界与现实世界的区别，避免沉迷于网络，影响日常的学习生活。<br>（2）填写个人资料时，加强个人保护意识，以免不良分子都个人生活造成骚扰。<br>（3）在监护人或老师的指导下，学习正确使用网络；<br>（4）避免陌生网友随意会面或参与联谊活动，以免不法份子有机可乘，危机自身安全。<br>19.3监护人、学校均应对未成年人使用本服务时多做引导。特别是家长应关心子女的成长，注意与子女的沟通，指导子女上网应该注意的安全问题，防患于未然。<br>二十、【其他】<br>如果您对本协议或本服务有意见或建议，可与酷达传媒客户服务部门联系（400-0909-667），我们会给予您必要的帮助。<br>（正文完）</p>','2018-08-11 14:02:54','2018-08-11 16:35:13'),
	(8,'隐私政策','<p></p><p></p><p></p><p></p><p><br>          酷达传媒公司重视用户的隐私，您在使用我们的服务时，我们可能会收集和使用您的相关信息，我们希望通过本《隐私政策》向您说明，在使用我们的服务时，我们如何收集、使用、储存和分享这些信息，以及我们为您提供的访问、更新、控制和保护这些信息的方式。本《隐私政策》与您所使用的酷达传媒服务息息相关，希望您仔细阅读，在需要时，按照本<隐私政策》中的指引，作出您认为适当的选择。 本《隐私政策》中涉及的相关技术词汇，我们尽量以简明扼要的表述，并提供进一步说明的链接，以便您的理解。<br>您使用或继续使用我们的服务，即意味着同意我们按照本《隐私政策》收集、使用、储存您的相关信息。<br><br>如对本《隐私证策》或相关事宜有任何问题，请通过400-0909-667与我们联系。<br>我们提供服务时，可能会收集、储存和使用下列与您有关的信息，如果您不提供相关信息，可能无法注册成为我们的用户或无法享受我们提供的某些服务，或者无法达到相关服务拟达到的效果。您在填写资料或使用我们的服务时，向我们提供的相关个人信息，例如电话号码、电子邮件、或名称等。您通过我们的服务向其他方提供的共享信息，以为您使用我们的服务时所储存的信息。其他方分享的您的信息。我们获取的您的信息。<br>您使用服务时我们可能收集如下信息：<br>日志信息，指您使用我们的服务时，系统可能自动采集的技术信息，包括：设备或软件信息，例如您的移动设备、网页浏览器 或用于接入我们服务的其他程序所提供的配置信息。您的IP地址和移动设备所用的版本和设备识别码；在使用我们服务时，搜索或浏览的信息，例如您使用的网页搜索词语、访问的社交媒体页面url地址，以及您在使用我们服务时浏览或要求提供的其它信息和内容详情：有关您曾使用的移动应用（APP）和其他软件的信息，以及您曾经使用该等移动应用和软件信息，您通过我们的服务进行通讯的信息，例如曾通讯的账号，以及通讯时间，数据 和时长；您通过我们的服务分享的内容所包含的信息（原数据），例如拍摄或上传的共享照片或录像的日期。时间或地点等。<br>位置信息。<br>指您开启设备定位功能并使用我们基于位置提供的相关服务时，收集的有关您位置的信息，包括：您具有定位功能的移动设备使用我们的服务时，通过GPS或wifi等方式收集的您的地理位置信息；您或其他用户提供的包含您所处地理位置信息的实时信息，例如您提供的账户信息中所包含的您所在地区信息，您或其他人上传的显示您当前或曾经所处地理位置的共享信息，您或其他人共享的照片包含的地理标记信息；您可以通过关闭定位信息，停止对您的地理位置信息的收集。<br>我们可能如何使用信息<br>我们可能将在向您提供服务的过程之中所收集的信息用作下列用途：<br>向您提供服务；<br>在我们提供服务时，用于身份验证。客户服务、安全防范、诈骗监测、存档和备份用途，确保我们向您提供的产品和服务的安全性：帮助我们设计新服务，改善我们现有服务；使我们更加了解您如何接入和使用我们的服务，从而针对性地回应您的个性化需求，例如语言设定、位置设定、个性化的帮助服务和指示，或对您和其他用户作出其他方面的回应；向您提供与您更加相关的广告以替代普遍投放的广告；评估我们服务中的广告和其他促销及推广活动的效果，并加以改善；让您参与有关我们产品和服务的调查。为了然您有更好的体验、改善我们的服务或您同意的其他用途，在符合相关法律法规的前提下，我们可能听过某一项服务所收集的信息，以汇集信息或者个性化的方式，用于我们的其他服务，例如，在您使用我们的一项服务时所收集的信息，可能再另一服务中用于向您提供特定内容，或向您展示与您相关的、非普遍推送的信息。如果我们在相关服务提供了相应的选项，您也可以授权我们将该服务所提供和储存的信息用于我们的其他服务。<br>您如何访问和控制自己的个人信息，<br>我们将尽一切可能采取适当的技术手段，保证您可以访问、更新和更正自己的注册信息或使用我们的服务时提供的其他个人信息。在访问、更新、更正和删除前述信息时，我们可能会要求您进行身份验证，以保障账户安全。<br>我们可能分享的信息，<br>除以下情形外，未经您同意，我们以及我们的关联公司不会与任何第三方分享您的个人信息，我们以及我们的关联公司，可能将您的个人信息与我们的关联公司、合作伙伴及第三方服务供应商、承办商及代理（例如代表我们发出电子邮件或推送通知的通讯服务提供商、为我们提供位置数据的地图服务供应商）分享（他们可能并非位于您所在的区域），用作下列用途：<br>向您提供我们的服务；<br>实现“我们可能如何使用信息”部分所述目的；履行我们在《酷达传媒服务协议》或本《隐私证策》中的义务和行使我们的权利；理解、维护和改善我们的服务。如我们或我们的关联公司与任何上述第三方分享您的个人信息，我们将努力确保该等第三方在使用您的个人信息时遵守本《隐私政策》及我们要求其遵守的其他适当的保密和安全措施。随着我们业务持续的发展，我们以及我们的关联公司有可能进行合并、收购、资产转让或类似的交易，您的个人信息有可能作为此类交易的一部分而被转移。我们将在转移前通知您，我们或我们的关联公司还可能为以下需要而保留、保存或披露您的个人信息；遵守适用的法律法规；遵守法院命令或其他法律法规程序的规定；遵守相关政府机关的要求；为遵守适用的法律法规、维护社会公共利益，或保护我们的客户、我们或我们的集团公司、其他用户或雇员的人身和财产安全或合法权益所合理必需的用途。<br>信息安全<br>我们仅在《隐私政策》所述目的所必需的期间和法律法规要求的时限内保留您的个人信息。我们使用各种安全技术和程序，以防信息的丢失、不当使用、未经授权阅览或披露。例如，在某些服务中，我们将利用加密技术（例如SSL）来保护您提供的个人信息。但请您理解，由于技术的限制以及可能存在的各种恶意手段，在互联网行业，即便竭尽所能加强安全措施，也不可能始终保证信息百分之百的安全。您需要了解，您接入我们的服务所用的系统和通讯网络，有可能因我们可控范围外的因素而出现问题。<br>您分享的信息；我们的多项服务，可让您不仅与自己的社交网络，也与使用该服务的所有用户公开分享您的相关信息，例如，您在我们的服务中所上传或发布的信息（包括您公开的个人信息、您建立的名单）、您对其他人上传或发布的信息作出的回应，以及包括与这些信息有关的位置数据和日志信息。使用我们服务的其他用户也有可能分享与您有关的信息（包括位置数据和信息）。特别是，我们的社交媒体服务，是专为使您与世界各地的用户共享信息而设计，您可以共享信息实时。广泛地传递。只要您不删除共享信息，有关信息会一直留存在公共领域；即时您删除共享信息，有关信息扔可由其他用户或不受我们控制的非关联第三方独立地缓存、复制或储存，或由其他用户或该等第三方在公共领域保存。因此，请您谨慎考虑通过我们的服务上传。发布和交流的信息内容。在一些情况下，您可通过我们某些服务缝纫隐私设定来控制有权浏览您共享信息的用户范围。如要求从我们的服务中删除您的相关信息，请通过该等特别服务条款提供的方式操作。<br>您分享的个人敏感信息；<br>某些个人信息因其特殊性可能被认为是敏感个人信息，例如您的种族。宗教、个人健康和医疗信息等。相比其他个人信息，敏感个人信息受到更加严格的保护。请注意，您在使用我们服务时所提供、上传或发布的内容和信息（例如有关您社交活动的照片等信息），可能会泄露您的敏感个人信息。您需要谨慎地考虑，是否在使用我们的服务时被披露相关敏感个人信息。<br>您同意按本《隐私政策》所述的内容和方式来处理您的敏感个人信息。我们或我们的第三方合作伙伴，可能通过cookies和web beacon收集和使用您的信息，并将该等信息储存为日志信息。我们使用自己的coolies和web beacon，目的是为您提供更个性化的用户体验和服务，并用于以下用途；<br>记住您的身份。例如；cookies 和web beacon有助于我们辨认您作为我们的注册用户的身份，或保存您向我们提供的有关您的喜好或其他信息；分析您使用我们服务的情况，例如，我们可利用cookies 和web beacon来了解您使用我们的服务进行什么活动，或哪些网页或服务最受您欢迎；广告优化。cookies 和web beacon有助于我们根据您的信息，向您提供与您相关的广告而非进行普遍的广告投放。<br>我们为上述目的的使用cookies 和web beacon的同时，可能将通过cookies 和web beacon收集的非个人身份信息，经统计加工后提供广告商或其它合作伙伴，用于分析用户如何使用我们的服务，并用于广告服务。我们的产品和服务上可能会有广告商或其他合作方放置的cookies 和web beacon。这些cookies 和web beacon可能会收集与您相关的非个人身份信息，以用于分析用户如何使用该服务、向您发送您可能感兴趣的广告，或用于评估广告服务的效果。这些第三方cookies 和web beacon收集和使用该等信息，不受本《隐私政策》约束，而是受相关使用者的隐私政策约束，我们不对第三方的cookies 和web beacon承担责任。<br>您可以通过浏览器设置拒接或管理cookies 和web beacon。但请注意，如果停用cookies 和web beacon，您有可能无法享受最佳的服务体验，某些服务也可能无发正常使用。<br>我们可能使用您的相关信息，向您提供与您更加相关的广告。我们也可能使用您的信息，通过我们的服务、电子邮件或其他方式向您发送营销信息，提供或推广我们或第三方的如下商品和服务；我们的商品或服务，我们的关联公司和合作的商品或服务，包括即时通讯服务、网上媒体服务、互动娱乐服务、社交网络服务、付款服务、互联网搜索服务、位置和地图服务、应用软件和服务、数据管理软件和服务、网上广告服务、互联网金融，以及其他社交媒体、娱乐、电子商务、资讯和通讯软件或服务（统称“互联网服务”）； <br>第三方互联网服务供应商，以及与下列有关的第三方商品和服务；食物和餐饮、体育、音乐、电影、电视、现场表演及其他艺术和娱乐、书册、杂志和其他刊物、服装和配饰、珠宝、化妆品、个人健康和卫生、电子、收藏品、家用器皿、电器、家居装饰和摆设、宠物、汽车、酒店、交通和旅游、银行、保险及其他金融服务、会员积分和奖励计划，以及我们认为可能与您相关的其他商品或服务。如您不希望我们将您的个人信息用作前述广告用途，您可以通过我们在广告中提供的相关提示。，或在特定服务中提供的指引，要求我们停止位上述用途使用您的个人信息。<br>我们可能向您发送的邮件和信息 <br>邮件和信息推送<br>您在使用我们的服务时，我们可能使用您的信息向您的设备发送电子邮件、新闻或推送通知。如您不希望收到这些信息，可以按照我们相关提示，在设备上选择取消订阅。<br>与服务有关的公告<br>我们可能在必要时（例如因系统维护而暂停某一项服务时）向您发出与服务有关的公告。您可能无法取消这些与服务有关、性质不属于推广的公告。隐私政策的适用例外<br>我们的服务可能包括或链接至第三方提供的社交媒体或其他服务（包括网站）。例如：您利用“分享”键将某些内容分享到我们的服务，或您利用第三方连线服务登录我们的服务。这些功能可能会收集您的相关信息（包括您的日志信息），并可能在您的电脑装置coolies，从而正常运行上述功能；<br><br>我们通过广告或我们服务的其他方式向您提供链接，使您可以接入第三方的服务或网站。该等第三方社交媒体或其他服务可能由相关的第三方或我们的运营。您使用该等第三方社交媒体服务或其他服务（包括您向该等第三方提供的任何个人信息），须受该第三方的服务条款及隐私政策（而非《通用服务条款》或本《隐私政策》）仅适用于我们所收集的信息，并不适用于任何第三方提供的服务或第三方的信息使用规则，我们对任何第三方使用由您提供的信息不承担任何责任。<br>未成年人使用我们的服务<br>我们鼓励父母或监护人指导未满十八岁的未成年人使用我们的服务。我们建议未成年人鼓励他们的父母或监护人阅读本《隐私政策》，并建议未成年人在提交的个人信息之前寻求父母或监护人的同意和指导。<br>隐私政策的适用范围<br>除某些特定服务外，我们所有服务均适用本《隐私政策》。这些特定的服务将适用特定的隐私政策。针对某些特定服务的特定隐私政策，将更具体地说明我们在该服务中如何使用您的信息。该特定服务的隐私政策构成本《隐私政策》的一部分。如相关特定服务的隐私政策与本《隐私政策》有不一致之外，适用该特定服务的隐私政策。<br><br>除本《隐私政策》另有规定外，本《隐私政策》所用词语将与《酷达传媒服务协议》所定义的词语具有相同的涵义。<br>请您注意，本《隐私政策》不适用于以下情况：<br>通过我们的服务而接入的第三方服务（包括任何第三方网站）收集的信息；<br>通过在我们服务中进行广告服务的其他公司或机构所收集的信息。<br>变更<br>我们可能适时修订本《隐私政策》的条款，该等修订构成本《隐私政策》的一部分。如该等修订造成您在本《隐私政策》下权利的实质减少，我们将在修订生效前通过在主页上显著位置提示或向您发送电子邮件或以其他方式通知您，在该种情况下，若您继续使用我们的服务，即表示同意受经修订的本《隐私政策》约束。</p><p><br></p>','2018-08-11 14:02:54','2018-08-11 16:57:22');

/*!40000 ALTER TABLE `articles` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table banks
# ------------------------------------------------------------

DROP TABLE IF EXISTS `banks`;

CREATE TABLE `banks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `banks` WRITE;
/*!40000 ALTER TABLE `banks` DISABLE KEYS */;

INSERT INTO `banks` (`id`, `name`, `created_at`, `updated_at`)
VALUES
	(1,'中国建设银行','2018-07-26 22:53:17','2018-07-26 22:53:17'),
	(2,'中国工商银行','2018-08-24 21:28:26','2018-08-24 21:28:26'),
	(3,'中国农业银行','2018-08-24 21:28:54','2018-08-24 21:28:54'),
	(4,'邮政储蓄银行','2018-08-24 21:29:19','2018-08-24 21:33:04'),
	(5,'中国银行','2018-08-24 21:29:35','2018-08-24 21:33:18'),
	(6,'交通银行','2018-08-24 21:29:52','2018-08-24 21:29:52'),
	(7,'招商银行','2018-08-24 21:30:12','2018-08-24 21:33:40'),
	(8,'中信银行','2018-08-24 21:30:40','2018-08-24 21:30:40'),
	(9,'民生银行','2018-08-24 21:31:09','2018-08-24 21:31:09'),
	(10,'光大银行','2018-08-24 21:34:00','2018-08-24 21:34:00');

/*!40000 ALTER TABLE `banks` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table configs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `configs`;

CREATE TABLE `configs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名称',
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '值',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '描述',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user' COMMENT '配置类型：sys(系统使用)|user(用户使用)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `configs` WRITE;
/*!40000 ALTER TABLE `configs` DISABLE KEYS */;

INSERT INTO `configs` (`id`, `name`, `value`, `description`, `created_at`, `updated_at`, `type`)
VALUES
	(1,'user_file_library_max','50','用户素材库上限(单位: MB)','2018-06-14 15:38:21','2018-08-25 13:12:10','user'),
	(2,'upload_image_size_max','3','上传图片大小上限(单位: MB)','2018-06-14 15:42:21','2018-06-14 15:42:21','user'),
	(3,'upload_video_size_max','18','上传视频大小上限(单位: MB)','2018-06-14 15:43:16','2018-08-16 18:53:58','user'),
	(4,'ad_price','35','广告位价格(单位: 元)','2018-06-19 15:10:56','2018-08-04 10:06:40','user'),
	(5,'league_sup_agent','50','加盟费: 上级代理商分成比例(单位: %)','2018-06-22 16:36:39','2018-07-28 14:01:08','sys'),
	(6,'league_sup_operator','50','加盟费: 上级运营商分成比例(单位: %)','2018-06-22 16:37:26','2018-06-22 16:40:56','sys'),
	(7,'league_indirect_agent','10','加盟费: 代理商无限分成比例(单位: %)','2018-06-22 16:40:17','2018-06-22 16:40:17','sys'),
	(8,'upload_video_length_max','128','上传视频时长限制(单位: 秒)','2018-07-11 11:16:20','2018-08-13 17:46:11','user'),
	(9,'profit_sub_agent','10','广告利润: 上级代理商分成比例(单位: %)','2018-07-13 11:00:05','2018-07-13 11:00:05','user'),
	(10,'profit_sub_operator','5','广告利润: 上级运营商分成比例(单位: %)','2018-07-13 11:01:18','2018-07-13 11:01:18','user'),
	(11,'profit_agent','80','广告利润: 代理商分成比例(单位: %)','2018-07-13 11:01:57','2018-07-13 11:01:57','user'),
	(12,'profit_operator','70','广告利润: 运营商分成比例(单位: %)','2018-07-13 11:02:36','2018-07-13 11:02:36','user'),
	(13,'profit_indirect_agent','5','广告利润: 代理商无限分成比例(单位: %)','2018-07-13 11:05:03','2018-07-13 11:05:03','user'),
	(14,'service_hotline','4000909667','客服电话','2018-08-04 11:05:03','2018-08-04 11:05:03','user'),
	(15,'withdraw_ daily_number','1','提现: 每日次数限制(单位: 次)','2018-08-19 18:35:00','2018-08-20 23:11:16','user'),
	(16,'withdraw_min_money','100','提现: 最低金额限制(单位: 元)','2018-08-19 18:35:00','2018-08-20 19:01:44','user'),
	(17,'withdraw_max_money','50000','提现: 最高金额限制(单位: 元)','2018-08-19 18:35:00','2018-08-19 18:35:00','user'),
	(18,'store_display_free','30','商户展示: 免费使用时间(天)',NULL,NULL,'user'),
	(19,'store_display_price','20','商户展示: 价格(元/月)',NULL,NULL,'user');

/*!40000 ALTER TABLE `configs` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table contracts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `contracts`;

CREATE TABLE `contracts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '公司(个人)名称',
  `linkman` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '联系人',
  `tel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '手机号码',
  `social_account` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '社交账户',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `industry` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '所属行业',
  PRIMARY KEY (`id`),
  UNIQUE KEY `contracts_tel_unique` (`tel`),
  KEY `contracts_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `contracts` WRITE;
/*!40000 ALTER TABLE `contracts` DISABLE KEYS */;

INSERT INTO `contracts` (`id`, `user_id`, `name`, `linkman`, `tel`, `social_account`, `created_at`, `updated_at`, `industry`)
VALUES
	(32,48,'江西酷达传媒','罗来星','13970819195','','2018-08-16 15:23:54','2018-08-16 15:23:54','广告传媒'),
	(33,47,'','张佳莹','13253626358','','2018-08-16 15:24:16','2018-08-19 12:59:53',''),
	(35,56,'皇家君悦','蔡梦云','13177833375','','2018-08-16 16:03:16','2018-08-16 16:03:16','养生会所'),
	(36,50,'熊小文','熊小文','13767427031','','2018-08-16 16:21:27','2018-08-16 16:21:27',''),
	(37,59,'徐荣新','徐荣新','18046752675','','2018-08-16 16:42:38','2018-08-16 16:42:38',''),
	(38,61,'车港湾汽车服务连锁机构','王建强','13767213621','','2018-08-16 17:22:24','2018-08-16 17:22:24','汽车服务'),
	(39,62,'','李友新','13970001888','','2018-08-16 17:34:10','2018-08-16 17:34:10',''),
	(40,64,'安迪名车会所','熊亚琴','15079192743','931428479','2018-08-16 17:57:42','2018-08-16 17:57:42','服务'),
	(41,65,'','张大清','18174045558','','2018-08-16 18:20:31','2018-08-16 18:20:31',''),
	(42,66,'艾尼国际护肤造型','万国斌','17779193437','','2018-08-16 19:04:43','2018-08-16 19:04:43','仪器美容美发'),
	(43,68,'宏大酒店用品总汇','万淑锋','15970461708','','2018-08-16 19:05:10','2018-08-16 19:05:10','酒店用品'),
	(44,69,'','许克勇','18757976119','','2018-08-16 19:09:47','2018-08-16 19:09:47',''),
	(45,70,'','余飞','18270881135','','2018-08-16 19:19:33','2018-08-16 19:19:33','健身'),
	(46,73,'婷婷','余金婷','13732447351','2427498668','2018-08-16 21:02:52','2018-08-16 21:02:52','美容美发'),
	(47,75,'','张志军','13803501714','','2018-08-17 10:17:43','2018-08-17 10:17:43',''),
	(48,76,'','龚玲玲','13767461596','','2018-08-17 10:17:43','2018-08-17 10:17:43',''),
	(49,80,'蘭妃至尊美容养生会所','熊萍萍','15870647250','2223815040','2018-08-17 11:54:59','2018-08-17 11:54:59','美容师'),
	(50,84,'','刘小英','13576900676','','2018-08-17 12:26:57','2018-08-17 12:26:57',''),
	(51,86,'岳灵生发','姜弯弯','18507090585','18507090585','2018-08-17 13:23:45','2018-08-17 13:23:45','生发/黑发/养发/养生'),
	(52,87,'','史志琴','13155809068','','2018-08-17 13:26:34','2018-08-17 13:26:34',''),
	(53,89,'','陶燕','18070138013','','2018-08-17 15:18:20','2018-08-17 15:18:20',''),
	(54,92,'','张漠萱','13006207799','','2018-08-17 17:32:46','2018-08-17 17:32:46',''),
	(55,96,'','凌先生','13397918629','','2018-08-17 18:39:25','2018-08-17 18:39:25',''),
	(56,98,'','刘嘉凤','15170097472','','2018-08-17 20:40:47','2018-08-17 20:40:47',''),
	(57,99,'巴库网咖','易常伟','13807006759','','2018-08-17 20:52:05','2018-08-17 20:52:05',''),
	(58,100,'','龚金妺','18907092655','','2018-08-17 21:18:46','2018-08-17 21:18:46',''),
	(59,46,'','李四','13879169299','','2018-08-17 22:56:07','2018-08-20 08:54:28',''),
	(60,55,'','李小云','13546525325','','2018-08-17 23:05:38','2018-08-17 23:05:38',''),
	(61,108,'','刘穗','18579115148','','2018-08-18 14:35:53','2018-08-18 14:35:53',''),
	(62,113,'','祖靖','13767436688','','2018-08-19 10:10:54','2018-08-19 10:10:54',''),
	(63,116,'','涂红丹','18070094282','','2018-08-19 11:51:50','2018-08-19 11:51:50',''),
	(64,60,'','蔡建林','17370020871','','2018-08-19 13:23:01','2018-08-19 13:23:01','餐饮'),
	(65,118,'','周云霞','18879179617','','2018-08-19 14:01:27','2018-08-19 14:01:27',''),
	(66,114,'北京现代金汇旗舰店','周经理','18070285339','','2018-08-19 14:40:43','2018-08-19 14:40:43','汽车销售'),
	(67,119,'zao','万慧敏','18296138070','','2018-08-19 15:34:03','2018-08-19 15:34:03',''),
	(68,120,'','夏美燕','13970048062','','2018-08-19 16:04:51','2018-08-19 16:04:51',''),
	(69,121,'','陈友','18045650140','','2018-08-19 16:45:03','2018-08-19 16:45:03',''),
	(81,123,'','赵安近','13755796662','','2018-08-19 17:38:23','2018-08-19 17:38:23',''),
	(82,125,'红谷滩新区大虎老火锅','张雯婧','13755782064','315277123','2018-08-19 18:38:33','2018-08-19 18:38:33','餐饮'),
	(83,126,'美臣国际美容会所','李双双','18897918158','418105720','2018-08-19 20:30:48','2018-08-19 20:30:48','美容'),
	(84,127,'','何国鸿','13684812186','','2018-08-19 20:36:17','2018-08-19 20:36:17',''),
	(85,129,'','樊友腾','17779107989','','2018-08-19 21:53:56','2018-08-19 21:53:56',''),
	(86,53,'','奋斗的','18857655087','','2018-08-20 09:10:54','2018-08-20 09:11:03','纷纷'),
	(87,49,'','熊运升','15079016006','','2018-08-20 12:39:35','2018-08-20 12:39:35',''),
	(88,115,'','占海燕','18898272157','','2018-08-20 15:35:53','2018-08-20 15:35:53',''),
	(89,132,'美臣国际','程静','13755692121','','2018-08-20 17:34:32','2018-08-20 17:34:32',''),
	(90,135,'红谷滩新区领秀量贩式KTV','邹伟','13879161933','2559433547@qq.com','2018-08-20 18:56:43','2018-08-20 18:56:43','娱乐业'),
	(91,93,'','张乐平','15888903298','','2018-08-21 16:26:02','2018-08-21 16:26:02',''),
	(92,52,'凯卓车行','王亚斌','13970011723','bin76774','2018-08-22 13:36:40','2018-08-22 13:36:40','汽车'),
	(93,141,'昂立STEM','潘丽丽','13970958524','','2018-08-22 14:16:40','2018-08-22 14:16:40','教育'),
	(94,146,'','胡永佳','13037245698','','2018-08-23 10:52:47','2018-08-23 10:52:47',''),
	(95,150,'南昌云葫芦','袁婷','17379196311','','2018-08-24 15:28:44','2018-08-24 15:28:44',''),
	(96,161,'','熊淇','13979149286','','2018-08-25 14:47:29','2018-08-25 14:47:29',''),
	(97,162,'阳光保险财产有限公司','周雪琴','13979149713','','2018-08-25 14:48:19','2018-08-25 14:48:19','金融业'),
	(98,164,'','熊','13879105719','','2018-08-25 18:44:19','2018-08-25 18:44:19',''),
	(99,79,'','顾鹏','13576906340','','2018-08-26 11:36:59','2018-08-26 11:36:59',''),
	(100,167,'','万通圣人','18379137806','18379137806','2018-08-26 22:38:28','2018-08-26 22:38:28','康民养生有限公司'),
	(101,184,'','张爱','17379339468','','2018-08-28 14:57:17','2018-08-28 14:57:17',''),
	(102,180,'南昌强昇家居销售有限公司','熊颖','18507914488','78602023','2018-08-29 11:16:00','2018-08-29 11:16:00','建材');

/*!40000 ALTER TABLE `contracts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table coupon_user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `coupon_user`;

CREATE TABLE `coupon_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0可使用状态|1已使用|-1过期',
  `expire_at` date NOT NULL COMMENT '到期日期',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `coupon_user_user_id_index` (`user_id`),
  KEY `coupon_user_coupon_id_index` (`coupon_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `coupon_user` WRITE;
/*!40000 ALTER TABLE `coupon_user` DISABLE KEYS */;

INSERT INTO `coupon_user` (`id`, `user_id`, `coupon_id`, `type`, `expire_at`, `created_at`, `updated_at`)
VALUES
	(46,47,2,1,'2018-08-31','2018-08-16 15:08:50','2018-08-20 16:39:59'),
	(47,47,2,1,'2018-08-31','2018-08-16 15:11:36','2018-08-19 19:57:27'),
	(48,52,2,1,'2018-08-31','2018-08-16 15:13:51','2018-08-22 16:48:10'),
	(49,52,2,1,'2018-08-31','2018-08-16 15:19:05','2018-08-22 13:49:16'),
	(50,47,6,1,'2018-09-15','2018-08-16 15:20:20','2018-08-17 16:02:44'),
	(51,54,2,0,'2018-08-31','2018-08-16 15:45:26','2018-08-16 15:45:26'),
	(52,47,7,0,'2018-09-15','2018-08-16 15:58:28','2018-08-16 15:58:28'),
	(53,56,2,1,'2018-08-31','2018-08-16 16:01:06','2018-08-16 20:21:29'),
	(54,57,2,0,'2018-08-31','2018-08-16 16:11:27','2018-08-16 16:11:27'),
	(55,60,2,0,'2018-08-31','2018-08-16 16:56:31','2018-08-16 16:56:31'),
	(56,59,2,0,'2018-08-31','2018-08-16 17:05:38','2018-08-16 17:05:38'),
	(57,62,2,0,'2018-08-31','2018-08-16 17:37:34','2018-08-16 17:37:34'),
	(58,61,2,0,'2018-08-31','2018-08-16 17:42:37','2018-08-16 17:42:37'),
	(59,64,2,0,'2018-08-31','2018-08-16 18:02:09','2018-08-16 18:02:09'),
	(60,65,2,0,'2018-08-31','2018-08-16 18:27:11','2018-08-16 18:27:11'),
	(61,66,2,1,'2018-08-31','2018-08-16 18:59:28','2018-08-18 14:44:58'),
	(62,69,6,0,'2018-09-15','2018-08-16 19:10:14','2018-08-16 19:10:14'),
	(63,68,6,0,'2018-09-15','2018-08-16 19:10:27','2018-08-16 19:10:27'),
	(64,70,2,1,'2018-08-31','2018-08-16 19:25:41','2018-08-17 16:26:42'),
	(65,69,2,0,'2018-08-31','2018-08-16 20:18:25','2018-08-16 20:18:25'),
	(66,71,2,0,'2018-08-31','2018-08-16 20:54:53','2018-08-16 20:54:53'),
	(67,73,6,0,'2018-09-15','2018-08-16 20:58:48','2018-08-16 20:58:48'),
	(68,72,2,0,'2018-08-31','2018-08-16 21:05:30','2018-08-16 21:05:30'),
	(69,48,6,0,'2018-09-15','2018-08-16 23:01:55','2018-08-16 23:01:55'),
	(70,76,2,0,'2018-08-31','2018-08-17 11:30:22','2018-08-17 11:30:22'),
	(71,46,6,1,'2018-09-16','2018-08-17 11:34:58','2018-08-17 23:00:01'),
	(72,80,2,0,'2018-08-31','2018-08-17 11:52:16','2018-08-17 11:52:16'),
	(73,84,2,0,'2018-08-31','2018-08-17 12:30:33','2018-08-17 12:30:33'),
	(74,86,2,0,'2018-08-31','2018-08-17 13:25:25','2018-08-17 13:25:25'),
	(75,89,2,0,'2018-08-31','2018-08-17 15:16:15','2018-08-17 15:16:15'),
	(76,90,2,0,'2018-08-31','2018-08-17 15:18:37','2018-08-17 15:18:37'),
	(77,91,6,0,'2018-09-16','2018-08-17 15:36:49','2018-08-17 15:36:49'),
	(78,92,2,0,'2018-08-31','2018-08-17 17:24:40','2018-08-17 17:24:40'),
	(79,96,2,1,'2018-08-31','2018-08-17 18:38:38','2018-08-17 20:22:21'),
	(80,50,2,1,'2018-08-31','2018-08-17 20:11:26','2018-08-20 12:44:26'),
	(81,97,2,0,'2018-08-31','2018-08-17 20:42:18','2018-08-17 20:42:18'),
	(82,99,2,1,'2018-08-31','2018-08-17 21:00:00','2018-08-25 13:58:44'),
	(83,100,6,0,'2018-09-16','2018-08-17 21:16:25','2018-08-17 21:16:25'),
	(84,101,2,0,'2018-08-31','2018-08-17 21:36:24','2018-08-17 21:36:24'),
	(85,109,6,0,'2018-09-17','2018-08-18 14:42:34','2018-08-18 14:42:34'),
	(86,110,6,0,'2018-09-17','2018-08-18 21:22:43','2018-08-18 21:22:43'),
	(87,113,2,1,'2018-08-31','2018-08-19 10:38:15','2018-08-19 15:39:10'),
	(88,114,6,0,'2018-09-18','2018-08-19 11:28:16','2018-08-19 11:28:16'),
	(89,116,2,0,'2018-08-31','2018-08-19 12:01:30','2018-08-19 12:01:30'),
	(90,114,2,1,'2018-08-31','2018-08-19 12:01:44','2018-08-19 16:53:51'),
	(91,118,2,1,'2018-08-31','2018-08-19 14:09:48','2018-08-24 17:06:39'),
	(92,119,2,1,'2018-08-31','2018-08-19 15:32:44','2018-08-21 13:17:34'),
	(93,120,2,0,'2018-08-31','2018-08-19 16:13:40','2018-08-19 16:13:40'),
	(94,119,6,0,'2018-09-18','2018-08-19 17:02:03','2018-08-19 17:02:03'),
	(95,121,2,1,'2018-08-31','2018-08-19 17:23:22','2018-08-24 16:05:16'),
	(96,125,2,0,'2018-08-31','2018-08-19 18:37:40','2018-08-19 18:37:40'),
	(97,126,2,0,'2018-08-31','2018-08-19 20:21:03','2018-08-19 20:21:03'),
	(98,129,2,1,'2018-08-31','2018-08-19 21:58:29','2018-08-23 20:12:30'),
	(99,47,2,1,'2018-08-31','2018-08-20 12:49:41','2018-08-20 15:35:16'),
	(100,49,6,1,'2018-09-19','2018-08-20 13:35:44','2018-08-20 13:36:15'),
	(101,53,6,1,'2018-09-19','2018-08-20 13:45:58','2018-10-23 14:30:01'),
	(102,55,6,1,'2018-09-19','2018-08-20 14:11:57','2018-08-21 15:06:57'),
	(103,115,2,1,'2018-08-31','2018-08-20 15:35:37','2018-08-21 16:04:23'),
	(104,135,2,1,'2018-08-31','2018-08-20 18:09:47','2018-08-20 18:58:52'),
	(105,135,2,0,'2018-08-31','2018-08-20 18:19:46','2018-08-20 18:19:46'),
	(106,136,2,0,'2018-08-31','2018-08-20 19:24:49','2018-08-20 19:24:49'),
	(107,49,2,0,'2018-08-31','2018-08-21 13:59:58','2018-08-21 13:59:58'),
	(108,47,2,0,'2018-08-31','2018-08-21 15:05:35','2018-08-21 15:05:35'),
	(109,47,2,1,'2018-08-31','2018-08-21 18:10:58','2018-08-21 18:16:37'),
	(110,139,6,0,'2018-09-20','2018-08-21 22:14:44','2018-08-21 22:14:44'),
	(111,116,2,0,'2018-08-31','2018-08-22 12:15:15','2018-08-22 12:15:15'),
	(112,150,6,1,'2018-09-23','2018-08-24 15:30:02','2018-08-24 15:31:00'),
	(113,152,6,0,'2018-09-23','2018-08-24 20:25:58','2018-08-24 20:25:58'),
	(114,47,2,0,'2018-08-31','2018-08-25 13:02:12','2018-08-25 13:02:12'),
	(115,99,6,0,'2018-09-24','2018-08-25 13:57:29','2018-08-25 13:57:29'),
	(116,161,6,0,'2018-09-24','2018-08-25 14:47:41','2018-08-25 14:47:41'),
	(117,162,6,0,'2018-09-24','2018-08-25 14:48:32','2018-08-25 14:48:32'),
	(118,47,2,0,'2018-08-31','2018-08-25 16:37:14','2018-08-25 16:37:14'),
	(119,129,2,0,'2018-08-31','2018-08-25 18:36:21','2018-08-25 18:36:21'),
	(120,164,6,0,'2018-09-24','2018-08-25 18:43:33','2018-08-25 18:43:33'),
	(121,123,6,0,'2018-09-25','2018-08-26 13:52:59','2018-08-26 13:52:59'),
	(122,166,6,0,'2018-09-25','2018-08-26 17:46:28','2018-08-26 17:46:28'),
	(123,47,2,0,'2018-08-31','2018-08-26 19:04:45','2018-08-26 19:04:45'),
	(124,167,6,0,'2018-09-25','2018-08-26 22:33:15','2018-08-26 22:33:15'),
	(125,168,6,0,'2018-09-26','2018-08-27 11:17:37','2018-08-27 11:17:37'),
	(126,129,2,0,'2018-08-31','2018-08-27 11:32:44','2018-08-27 11:32:44'),
	(127,129,2,0,'2018-08-31','2018-08-27 11:35:16','2018-08-27 11:35:16'),
	(128,129,2,0,'2018-08-31','2018-08-27 11:43:27','2018-08-27 11:43:27'),
	(129,47,2,0,'2018-08-31','2018-08-27 11:55:56','2018-08-27 11:55:56'),
	(130,47,2,0,'2018-08-31','2018-08-27 20:32:50','2018-08-27 20:32:50'),
	(131,184,6,1,'2018-09-27','2018-08-28 14:55:44','2018-08-28 14:59:19'),
	(132,187,6,0,'2018-09-27','2018-08-28 16:03:05','2018-08-28 16:03:05'),
	(133,53,6,0,'2018-09-19','2018-08-20 13:45:58','2018-08-20 13:46:22'),
	(134,53,6,0,'2018-09-19','2018-08-20 13:45:58','2018-08-20 13:46:22'),
	(135,53,8,1,'2018-11-01','2018-10-22 16:06:07','2018-10-23 11:25:24'),
	(136,53,2,0,'2018-10-30','2018-10-30 13:37:13','2018-10-30 13:37:13');

/*!40000 ALTER TABLE `coupon_user` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table coupons
# ------------------------------------------------------------

DROP TABLE IF EXISTS `coupons`;

CREATE TABLE `coupons` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '标题',
  `valid_term` int(11) NOT NULL COMMENT '有效期限（天）',
  `money` double(8,2) NOT NULL COMMENT '金额',
  `min_money_limit` double(8,2) NOT NULL DEFAULT '0.00' COMMENT '金额最低要求',
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'custom' COMMENT '抵用券类型，用于区分是否是系统内置',
  `is_overlay` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否可叠加',
  `is_show` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否显示',
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all' COMMENT '指定用户类型：user(普通用户)|agent(代理商)|owner(业主)|promoter(推广员)|all(所有)',
  `position_limit` int(11) NOT NULL DEFAULT '0' COMMENT '领取数量限制',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `usage_scenario` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'device' COMMENT '使用场景',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `coupons` WRITE;
/*!40000 ALTER TABLE `coupons` DISABLE KEYS */;

INSERT INTO `coupons` (`id`, `title`, `valid_term`, `money`, `min_money_limit`, `type`, `is_overlay`, `is_show`, `user_type`, `position_limit`, `created_at`, `updated_at`, `usage_scenario`)
VALUES
	(1,'场地业主专属月劵',30,300.00,0.00,'owner_early',0,1,'owner',0,NULL,'2018-08-15 14:16:13','device'),
	(2,'场地业主专属',0,150.00,0.00,'owner_late',0,1,'owner',0,NULL,'2018-08-24 21:41:31','device'),
	(6,'广告优惠券',30,35.00,0.00,'custom',0,1,'all',0,'2018-08-16 15:16:39','2018-08-25 13:21:46','device'),
	(7,'现金抵扣券',30,50.00,300.00,'custom',0,0,'all',0,'2018-08-16 15:57:23','2018-08-16 15:58:24','device'),
	(8,'kjlkjl',10,100.00,0.00,'custom',0,1,'all',10,'2018-10-22 16:04:56','2018-10-22 16:05:11','store_display');

/*!40000 ALTER TABLE `coupons` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table default_materials
# ------------------------------------------------------------

DROP TABLE IF EXISTS `default_materials`;

CREATE TABLE `default_materials` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `max` int(11) NOT NULL COMMENT '默认播放数据上限',
  `length` int(11) NOT NULL DEFAULT '0' COMMENT '播放时长',
  `is_used` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否使用',
  `push_state` int(11) NOT NULL DEFAULT '0' COMMENT '推送状态:0未推送|1推送中|2推送成功|-1推送失败',
  `push_result` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '推送结果说明',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `horizontals` json NOT NULL COMMENT '横屏素材',
  `verticals` json NOT NULL COMMENT '竖屏素材',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `default_materials` WRITE;
/*!40000 ALTER TABLE `default_materials` DISABLE KEYS */;

INSERT INTO `default_materials` (`id`, `max`, `length`, `is_used`, `push_state`, `push_result`, `created_at`, `updated_at`, `horizontals`, `verticals`)
VALUES
	(1,7,15,1,0,'',NULL,NULL,'[]','[]');

/*!40000 ALTER TABLE `default_materials` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table device_details
# ------------------------------------------------------------

DROP TABLE IF EXISTS `device_details`;

CREATE TABLE `device_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '后台标题，不显示在前端',
  `content` text COLLATE utf8mb4_unicode_ci COMMENT '内容',
  `is_used` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否正在使用',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `device_details` WRITE;
/*!40000 ALTER TABLE `device_details` DISABLE KEYS */;

INSERT INTO `device_details` (`id`, `title`, `content`, `is_used`, `created_at`, `updated_at`)
VALUES
	(1,'详情介绍','<p></p><p></p><p></p><p></p><p><img src=\"http://api.kdcm.net.cn/storage/wangEditor/20180812150103eW05f.jpg\" style=\"max-width:100%;\"><br></p>',1,'2018-07-28 20:33:04','2018-08-12 16:08:46');

/*!40000 ALTER TABLE `device_details` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table devices
# ------------------------------------------------------------

DROP TABLE IF EXISTS `devices`;

CREATE TABLE `devices` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '广告位标题',
  `industry_id` int(11) NOT NULL COMMENT '行业ID',
  `device_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '设备码',
  `agent_id` int(11) NOT NULL DEFAULT '0' COMMENT '代理商ID',
  `owner_id` int(11) NOT NULL DEFAULT '0' COMMENT '场地业主ID',
  `owner_coupon` tinyint(1) NOT NULL DEFAULT '0' COMMENT '场地业主是否返券',
  `owner_commission` int(11) NOT NULL DEFAULT '0' COMMENT '场地业主提成比例(%)',
  `promoter_id` int(11) NOT NULL DEFAULT '0' COMMENT '推广员ID',
  `promoter_commission` int(11) NOT NULL DEFAULT '0' COMMENT '推广员提成比例(%)',
  `approve_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '审核状态：0待审核|1审核通过|-1审核驳回',
  `approve_state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '审核说明',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '市',
  `area` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '区',
  `street` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '街道',
  `is_backend` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否是后台绑定的',
  `slideshow_images` json NOT NULL COMMENT '后台上传的轮播图',
  `is_show` tinyint(1) NOT NULL DEFAULT '1' COMMENT '上下架功能: 0下架|1上架',
  PRIMARY KEY (`id`),
  KEY `devices_industry_id_index` (`industry_id`),
  KEY `devices_agent_id_index` (`agent_id`),
  KEY `devices_owner_id_index` (`owner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `devices` WRITE;
/*!40000 ALTER TABLE `devices` DISABLE KEYS */;

INSERT INTO `devices` (`id`, `title`, `industry_id`, `device_code`, `agent_id`, `owner_id`, `owner_coupon`, `owner_commission`, `promoter_id`, `promoter_commission`, `approve_status`, `approve_state`, `created_at`, `updated_at`, `city`, `area`, `street`, `is_backend`, `slideshow_images`, `is_show`)
VALUES
	(1,'此广告位暂未开放',11,'YB000070',46,47,1,8,0,0,1,'','2018-08-16 15:08:30','2018-09-08 12:18:45','南昌市','红谷滩新区','赣江中大道1218号新地中心16楼',0,'[]',0),
	(2,'此广告位暂未开放',11,'YB000004',49,47,1,0,0,0,1,'','2018-08-16 15:11:13','2018-09-11 13:16:22','南昌市','红谷滩新区','赣江中大道1218号新地中心16楼',0,'[]',1),
	(3,'凯卓汽车服务中心休息室',5,'YB000013',110,52,1,0,0,0,1,'','2018-08-16 15:13:49','2018-09-10 11:19:41','南昌市','红谷滩新区','世贸路176号',1,'["images/微信图片_20180816150727.jpg", "images/微信图片_20180816150744.jpg", "images/微信图片_20180816150755.jpg"]',1),
	(4,'凯卓汽车服务中心大厅',5,'YB000012',110,52,1,0,0,0,1,'','2018-08-16 15:19:02','2018-09-10 11:19:27','南昌市','红谷滩新区','世贸路176号',1,'["images/baf19cb2aefedebbca02b3d2ce5d7385.jpg", "images/微信图片_20180822121943.jpg", "images/微信图片_20180822121947.jpg", "images/微信图片_20180822121952.jpg"]',1),
	(5,'王子妃美容美发',6,'YB000009',110,54,1,0,0,0,1,'','2018-08-16 15:45:24','2018-09-10 11:19:13','南昌市','红谷滩新区','银都路22号',1,'["images/微信图片_20180816153952.jpg", "images/微信图片_20180816154003.jpg", "images/微信图片_20180816154131.jpg"]',1),
	(6,'豫王食府二楼',1,'YB000018',110,60,1,0,0,0,1,'','2018-08-16 16:01:06','2018-09-10 11:19:00','南昌市','红谷滩新区','世贸路与金融大街交叉口名门世家8号楼',1,'["images/微信图片_20180816155620.jpg", "images/微信图片_20180819140221.jpg", "images/微信图片_20180819140226.jpg", "images/微信图片_20180819140230.jpg"]',1),
	(7,'创迹游泳健身休息区',2,'YB000019',110,92,1,0,0,0,1,'','2018-08-16 16:11:24','2018-09-10 11:19:59','南昌市','红谷滩新区','银都30号',1,'["images/6bacec01e2fc6c253893a08418cf8e05.jpg", "images/e0c8c20cb50cef02a2972729794cbe24.jpg", "images/微信图片_20180817173153.jpg"]',1),
	(8,'豫王食府',1,'YB000020',110,60,1,0,0,0,1,'','2018-08-16 16:56:29','2018-09-10 11:15:58','南昌市','红谷滩','世贸路与金融大街交叉路口名门世家8号楼',1,'["images/微信图片_20180816165128.jpg", "images/微信图片_20180816165145.jpg", "images/微信图片_20180816165157.jpg"]',1),
	(9,'全程网络会所',2,'YB000021',110,59,1,0,0,0,1,'','2018-08-16 17:05:35','2018-09-10 11:22:05','南昌市','红谷滩','银都路850号',1,'["images/微信图片_20180816170338.jpg", "images/微信图片_20180816170429.jpg", "images/微信图片_20180816170441.jpg"]',1),
	(10,'70城市小馆',1,'YB000016',51,62,1,0,0,0,1,'','2018-08-16 17:37:32','2018-08-27 09:49:29','南昌市','红谷滩新区','银都路4号',1,'["images/微信图片_20180816173055.jpg", "images/微信图片_20180816173107.jpg", "images/微信图片_20180816173134.jpg"]',1),
	(11,'车港湾汽车服务连锁机构',5,'YB000022',51,61,1,0,0,0,1,'','2018-08-16 17:42:37','2018-08-27 09:49:18','南昌市','红谷滩新区','怡园路945号',1,'["images/微信图片_20180816173802.jpg", "images/微信图片_20180816173746.jpg", "images/微信图片_20180816173756.jpg"]',1),
	(12,'安迪名车汽车服务中心',5,'YB000011',51,64,1,0,0,0,1,'','2018-08-16 18:02:07','2018-08-27 09:49:01','南昌市','红谷滩新区','怡园路999号',1,'["images/微信图片_20180816175828.jpg", "images/微信图片_20180816175836.jpg", "images/微信图片_20180816175928.jpg"]',1),
	(13,'妙优车汽车服务',5,'YB000015',110,65,1,0,0,0,1,'','2018-08-16 18:27:09','2018-09-10 11:23:54','南昌市','红谷滩新区','翠园路888号',1,'["images/微信图片_20180816182523.jpg", "images/微信图片_20180816182550.jpg", "images/微信图片_20180816182602.jpg"]',1),
	(14,'艾尼国际护肤造型',6,'YB000023',110,66,1,0,0,0,1,'','2018-08-16 18:59:26','2018-09-10 11:21:07','南昌市','红谷滩新区','怡园路301号江信国际花园旁',1,'["images/微信图片_20180816184926.jpg", "images/微信图片_20180816184808.jpg", "images/微信图片_20180816184856.jpg"]',1),
	(15,'LIKING  FIT健身',2,'YB000024',110,70,1,0,0,0,1,'','2018-08-16 19:25:38','2018-09-10 11:20:29','南昌市','红谷滩新区','丰和中大道与怡园路交叉口',1,'["images/微信图片_20180816192353.jpg", "images/微信图片_20180816192411.jpg", "images/微信图片_20180816192426.jpg"]',1),
	(16,'回娘家湘菜馆',1,'YB000010',69,91,1,0,0,0,1,'','2018-08-16 20:18:22','2018-08-27 10:23:18','南昌市','红谷滩新区','红谷中大道38号',1,'["images/微信图片_20180816201534.jpg", "images/微信图片_20180816201601.jpg", "images/微信图片_20180816201609.jpg"]',1),
	(17,'花千谷国际护肤造型生活馆红谷滩分店',6,'YB000025',48,71,1,0,0,0,1,'','2018-08-16 20:54:50','2018-08-27 09:34:33','南昌市','红谷滩新区','世贸路151号',1,'["images/微信图片_20180816204852.jpg", "images/微信图片_20180816204913.jpg", "images/微信图片_20180816204932.jpg"]',1),
	(18,'睿铂台球',2,'YB000008',48,72,1,0,0,0,1,'','2018-08-16 21:05:28','2018-08-27 09:34:21','南昌市','红谷滩新区','绿茵路539号',1,'["images/微信图片_20180816205631.jpg", "images/微信图片_20180816205657.jpg", "images/微信图片_20180816205734.jpg"]',1),
	(19,'剁椒鱼头',1,'YB000069',48,76,1,0,0,0,1,'','2018-08-17 11:30:20','2018-09-03 13:36:26','南昌市','红谷滩新区','丰和中大道691号',1,'["images/微信图片_20180817112438.jpg", "images/微信图片_20180817112456.jpg", "images/微信图片_20180817112506.jpg"]',1),
	(20,'蘭妃至尊美容养生会所',6,'YB000028',48,80,1,0,0,0,1,'','2018-08-17 11:52:16','2018-08-27 09:34:00','南昌市','红谷滩新区','杏林路111号',1,'["images/微信图片_20180822121902.jpg", "images/微信图片_20180822121922.jpg", "images/微信图片_20180822121927.jpg"]',1),
	(21,'老味道餐饮',1,'YB000029',48,84,1,0,0,0,1,'','2018-08-17 12:30:31','2018-08-27 09:33:51','南昌市','红谷滩新区','杏林路莱蒙都会一期商住楼113号',1,'["images/微信图片_20180817122909.jpg", "images/微信图片_20180817122926.jpg", "images/微信图片_20180817122933.jpg"]',1),
	(22,'岳灵生发',6,'YB000030',69,86,1,0,0,0,1,'','2018-08-17 13:25:23','2018-08-27 09:52:57','南昌市','红谷滩新区','红谷中大道788号',1,'["images/微信图片_20180817133035.jpg", "images/微信图片_20180817133044.jpg", "images/微信图片_20180817133052.jpg"]',1),
	(23,'名人美甲',6,'YB000031',48,89,1,0,0,0,1,'','2018-08-17 15:16:12','2018-08-27 09:33:24','南昌市','红谷滩新区','第一街区8-106号',1,'["images/微信图片_20180817151132.jpg", "images/微信图片_20180817151138.jpg", "images/微信图片_20180817151146.jpg"]',1),
	(24,'@所有人电竞馆',2,'YB000032',48,90,1,0,0,0,1,'','2018-08-17 15:18:34','2018-08-27 09:33:08','南昌市','红谷滩','江报路第一街区',1,'["images/微信图片_20180817150402.jpg", "images/微信图片_20180817150205.jpg", "images/微信图片_20180817150223.jpg"]',1),
	(25,'创迹游泳健身',2,'YB000033',49,92,1,0,0,0,1,'','2018-08-17 17:24:38','2018-08-27 09:32:52','南昌市','红谷滩新区','银都路30号',1,'["images/微信图片_20180817172105.jpg", "images/微信图片_20180817172114.jpg", "images/微信图片_20180817172240.jpg"]',1),
	(26,'厨爸故事餐饮',1,'YB000034',49,96,1,0,0,0,1,'','2018-08-17 18:38:35','2018-08-27 09:32:32','南昌市','红谷滩新区','碟子湖大道555号',1,'["images/微信图片_20180817183701.jpg", "images/微信图片_20180817183735.jpg", "images/微信图片_20180817183751.jpg"]',1),
	(27,'联泰7号广场',7,'YB000035',49,108,1,0,0,0,1,'','2018-08-17 20:11:25','2018-08-27 09:32:18','南昌市','红谷滩新区','世贸路联泰7号广场',1,'["images/微信图片_20180817201032.jpg", "images/微信图片_20180817201052.jpg"]',1),
	(28,'巴库酒店',3,'YB000036',49,97,1,0,0,0,1,'','2018-08-17 20:42:16','2018-08-27 09:29:49','南昌市','红谷滩新区','绿茵路599号',1,'["images/微信图片_20180817203809.jpg", "images/微信图片_20180817203831.jpg", "images/微信图片_20180817203859.jpg"]',1),
	(29,'巴库网络会所',2,'YB000037',49,99,1,0,0,0,1,'','2018-08-17 20:59:58','2018-08-27 09:28:50','南昌市','红谷滩新区','绿茵路599号',1,'["images/7cdcbfccf7ab138cc8bf9b09850067fc.jpg", "images/微信图片_20180817205857.jpg", "images/微信图片_20180817205910.jpg"]',1),
	(30,'龙蟹烩餐饮',1,'YB000038',49,101,1,0,0,0,1,'','2018-08-17 21:36:21','2018-08-27 09:28:32','南昌市','红谷滩新区','红谷凯旋第一街区四号楼102-103号',1,'["images/微信图片_20180817213015.jpg", "images/微信图片_20180817213031.jpg", "images/微信图片_20180817213055.jpg"]',1),
	(31,'饭吧1号餐饮服务',1,'YB000039',49,113,1,0,0,0,1,'','2018-08-19 10:38:12','2018-08-27 09:28:11','南昌市','红谷滩新区','丽景路11-12号',1,'["images/微信图片_20180819103227.jpg", "images/微信图片_20180819103243.jpg", "images/微信图片_20180819103252.jpg"]',1),
	(32,'北京现代4s店',5,'YB000040',50,115,1,0,0,0,1,'','2018-08-19 11:32:18','2018-08-20 15:35:37','南昌市','新建区','红谷滩新区红谷南大道2993号',0,'[]',1),
	(33,'菜园子品味店',1,'YB000041',50,116,1,0,0,0,1,'','2018-08-19 11:59:26','2018-08-22 12:15:15','南昌市','新建区','红谷滩新区中寰路1号',0,'[]',1),
	(34,'老房子餐饮双子塔店',1,'YB000042',50,118,1,0,0,0,1,'','2018-08-19 14:09:05','2018-08-19 14:09:48','南昌市','新建区','红谷滩新区世贸路绿地中央广场c4栋4楼',0,'[]',1),
	(35,'湘春树餐饮',1,'YB000043',50,119,1,0,0,0,1,'','2018-08-19 15:32:20','2018-08-19 15:32:44','南昌市','新建区','红谷十二庭欧尚生活广场西城广场解放路1号',0,'[]',1),
	(36,'咔乐威KTV',2,'YB000044',50,120,1,0,0,0,1,'','2018-08-19 16:13:06','2018-08-19 16:13:40','南昌市','新建区','红谷滩新区欧尚5楼',0,'[]',1),
	(37,'云顶会健身',2,'YB000071',50,121,1,0,0,0,1,'','2018-08-19 17:22:57','2018-09-03 14:40:14','南昌市','新建区','红谷滩新区欧尚生活广场5楼',0,'[]',1),
	(38,'大虎老火锅',1,'YB000046',50,125,1,0,0,0,1,'','2018-08-19 18:37:03','2018-08-19 18:37:40','南昌市','新建区','红谷滩新区万达商业中心金街二楼',0,'[]',1),
	(39,'美臣国际共享美容会所',6,'YB000068',50,132,1,0,0,0,1,'','2018-08-19 20:19:37','2018-09-11 17:09:32','南昌市','新建区','红谷滩新区沙井路28号',0,'[]',1),
	(40,'乐巢主题量贩式KTV',2,'YB000067',0,0,1,0,0,0,1,'','2018-08-19 21:57:52','2018-09-11 17:11:01','南昌市','新建区','红谷滩新区凤凰中大道59号',0,'[]',0),
	(41,'新地中心',7,'YB000056',46,47,1,10,0,0,1,'','2018-08-20 12:44:19','2018-09-11 14:53:50','南昌市','红谷滩新区','赣江中大道1218号新地中心',0,'[]',1),
	(42,'领秀KTV音乐餐吧',2,'YB000050',50,135,1,0,0,0,1,'','2018-08-20 18:08:56','2018-08-20 18:19:46','南昌市','新建区','红谷滩新区凤凰中大道918',0,'[]',1),
	(43,'马6甲超汲工坊',1,'YB000055',0,136,1,0,0,0,1,'','2018-08-20 19:24:46','2018-08-20 19:30:31','南昌市','红谷滩新区','万达广场3楼影城旁',1,'["images/微信图片_20180820192923.jpg", "images/微信图片_20180820191901.jpg", "images/微信图片_20180820192122.jpg"]',1),
	(44,'万达影城',2,'YB000001',0,47,1,10,0,10,1,'','2018-08-21 13:59:58','2018-08-27 17:11:44','南昌市','西湖区','云锦路',1,'["images/微信图片_20180821135825.jpg"]',0),
	(45,'东亚朝阳大堂',7,'YB000059',49,47,1,10,0,0,1,'','2018-08-21 15:05:35','2018-08-27 17:15:36','南昌市','西湖区','云锦路',1,'["images/de7bca31f00f1df1bd59fce1b2bdd20d.jpg"]',0),
	(46,'乐巢主题量贩式KTV',2,'YB000003',50,129,1,0,0,0,1,'','2018-08-21 18:10:58','2018-09-08 13:09:49','南昌市','红谷滩新区','凤凰中大道59号',1,'["images/微信图片_20180827114839.jpg", "images/微信图片_20180827114853.jpg", "images/微信图片_20180827114915.jpg"]',1);

/*!40000 ALTER TABLE `devices` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table failed_jobs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `failed_jobs`;

CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table file_libraries
# ------------------------------------------------------------

DROP TABLE IF EXISTS `file_libraries`;

CREATE TABLE `file_libraries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '文件路径',
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '文件类型: image图片|video视频',
  `time_length` int(11) NOT NULL DEFAULT '0' COMMENT '视频时长',
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '视频缩略图',
  `is_temp` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否是临时文件',
  `feature` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '特征，用于辨识文件',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `size` int(11) NOT NULL COMMENT '文件大小(单位: B)',
  `mime` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'MIME类型',
  PRIMARY KEY (`id`),
  KEY `file_libraries_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `file_libraries` WRITE;
/*!40000 ALTER TABLE `file_libraries` DISABLE KEYS */;

INSERT INTO `file_libraries` (`id`, `user_id`, `path`, `type`, `time_length`, `thumbnail`, `is_temp`, `feature`, `created_at`, `updated_at`, `size`, `mime`)
VALUES
	(1,46,'images/hgg19ua9DULJJKjs1XYsqRNWR1dkH5F18HCh5iHh.jpeg','image',0,'',0,'slideshow_images:1','2018-08-16 15:07:26','2018-08-27 20:07:31',36783,'image/jpeg'),
	(2,46,'images/vJFWl1WP3QLcdI4srsLECHHPm30iFzdhALkTzjnN.jpeg','image',0,'',0,'slideshow_images:2','2018-08-16 15:10:55','2018-08-16 15:11:13',36783,'image/jpeg'),
	(9,56,'images/M0ce5n1FoKMy7Kr2xft70cSygWesP2Jb4SpHlDt6.jpeg','image',0,'',0,'material:horizontal','2018-08-16 16:04:19','2018-08-16 16:04:19',46346,'image/jpeg'),
	(10,56,'images/wQOCS7cqcymYt2PDbzCQcuAtkaYCspn0Qi4aIAYE.jpeg','image',0,'',0,'material:horizontal','2018-08-16 16:04:27','2018-08-16 16:04:27',122277,'image/jpeg'),
	(11,56,'images/VRuFFPoYxoZP0HFipIMtbZeiLJwY5UwM8mT2m67O.jpeg','image',0,'',0,'material:horizontal','2018-08-16 16:04:39','2018-08-16 16:04:39',30815,'image/jpeg'),
	(14,50,'images/1KT6AC17WRUJ3tFU3LKXeE3uaj6CnJXWJgpPbBME.jpeg','image',0,'',0,'material:vertical','2018-08-16 16:20:51','2018-08-16 16:20:51',455319,'image/jpeg'),
	(15,58,'images/sfeHPp5TQ1KRIm4C3j5KOcMFCGqEfpC3dm7qWexT.jpeg','image',0,'',0,'material:vertical','2018-08-16 16:32:30','2018-08-16 16:32:30',14405,'image/jpeg'),
	(21,50,'images/NfyphwqPQ2g4Gb43z8RIJ7GtIsrCqZEJz9A4bESi.jpeg','image',0,'',0,'material:vertical','2018-08-16 17:08:51','2018-08-16 17:08:51',387726,'image/jpeg'),
	(22,61,'images/cwfzc3I1KmhEax6ADM5aYdhuKrUnHLMzoMiVdeUG.jpeg','image',0,'',0,'material:vertical','2018-08-16 17:22:54','2018-08-16 17:22:54',282578,'image/jpeg'),
	(23,61,'images/zb6cb0sFiA7hbDovvdGGkh9UGf6AVY3nYpFkT3UP.jpeg','image',0,'',0,'material:vertical','2018-08-16 17:23:21','2018-08-16 17:23:21',435978,'image/jpeg'),
	(24,61,'images/ROnYrU81EWIv8Guu5feONZaGfp390JSDLLxgTOxc.jpeg','image',0,'',0,'material:vertical','2018-08-16 17:24:47','2018-08-16 17:24:47',516370,'image/jpeg'),
	(25,61,'images/BDqvbrw9QX1I5M8W52zIrbyKUJXwve2Rc9towPD7.jpeg','image',0,'',0,'material:vertical','2018-08-16 17:25:30','2018-08-16 17:25:30',445790,'image/jpeg'),
	(26,53,'images/kPIZJUPYn2dnEBIZMUqukMnEsEJdZy7gKZHG0W21.jpeg','image',0,'',0,'material:horizontal','2018-08-16 17:38:21','2018-08-16 17:38:21',57607,'image/jpeg'),
	(27,50,'images/EKV5vkFcrTvSY0YnxrgZSSsiSe2y57Zxz6I8laCs.jpeg','image',0,'',0,'material:vertical','2018-08-16 17:39:47','2018-08-16 17:39:47',558041,'image/jpeg'),
	(32,50,'images/Ujq9HVP0p0RG1hOVx1vUiFwgjcKt5snZESYLtsgA.jpeg','image',0,'',0,'material:horizontal','2018-08-16 18:04:26','2018-08-16 18:04:26',964666,'image/jpeg'),
	(33,50,'images/mycGZpFnM6FaMW7I4CpBqss0W76ExHyjYotMGNds.jpeg','image',0,'',0,'material:horizontal','2018-08-16 18:28:39','2018-08-16 18:28:39',820519,'image/jpeg'),
	(34,67,'images/lTdcBQN93yoTKO7guW6JRaOwQE3wlNMXo2043Fim.jpeg','image',0,'',0,'material:horizontal','2018-08-16 18:40:58','2018-08-16 18:40:58',33610,'image/jpeg'),
	(42,47,'videos/20180816192623krtlmgpsF5.mov','video',16,'images/video_thumbnail_1534418783_vkSbjDU9pm.jpg',0,'material:horizontal','2018-08-16 19:26:23','2018-08-16 19:26:23',1357994,'video/quicktime'),
	(43,50,'images/pONFKxYimT6OCCgVMmwCxDYMI0AhFtAtYsuDXNhc.jpeg','image',0,'',0,'material:horizontal','2018-08-16 19:32:39','2018-08-16 19:32:39',920120,'image/jpeg'),
	(44,50,'images/8kgRyFsuB9xlcmnPf0L9ly7mv8Pd2qjhncvVcT2h.jpeg','image',0,'',0,'material:horizontal','2018-08-16 20:19:22','2018-08-16 20:19:22',868659,'image/jpeg'),
	(45,50,'images/Rg0AP5snk0oiSag2seX0RIKza0UFxxVdpgxQmDlC.jpeg','image',0,'',0,'material:vertical','2018-08-16 20:20:39','2018-08-16 20:20:39',467635,'image/jpeg'),
	(46,56,'images/TnW65F0qfeRlONLS7HO0Gg0iWZ2oQag1Onb2IsR0.jpeg','image',0,'',0,'material:horizontal','2018-08-16 20:20:50','2018-08-16 20:20:50',210316,'image/jpeg'),
	(47,50,'images/pYy7QqmVlsCaPLIjoc2mRQSqNklQclzvLXX9EKnX.jpeg','image',0,'',0,'material:vertical','2018-08-16 20:20:55','2018-08-16 20:20:55',440595,'image/jpeg'),
	(48,56,'images/L1H36wDdr2nVCSfD7BxNk02RRG2rzoAvJsNX5mU4.jpeg','image',0,'',0,'material:horizontal','2018-08-16 20:21:00','2018-08-16 20:21:00',206435,'image/jpeg'),
	(52,73,'images/Rg1NvDZoZT9s9oVrijCd4m2rjmRhUta858292l36.jpeg','image',0,'',0,'material:horizontal','2018-08-16 21:00:01','2018-08-16 21:00:01',131230,'image/jpeg'),
	(53,73,'images/3tG46tLhyjBq5jTNqYCq1vTncR1PpQX0rgKzCLy6.jpeg','image',0,'',0,'material:horizontal','2018-08-16 21:00:29','2018-08-16 21:00:29',106427,'image/jpeg'),
	(54,73,'videos/20180816210153AtJyhPGOWy.mp4','video',10,'images/video_thumbnail_1534424513_3fAsF7ke7c.jpg',0,'material:horizontal','2018-08-16 21:01:53','2018-08-16 21:01:53',1432264,'video/mp4'),
	(55,50,'images/QPJVrcPbfQExeArMDkFzmMOcDKXQvcZccvQchgJm.jpeg','image',0,'',0,'material:horizontal','2018-08-16 21:06:07','2018-08-16 21:06:07',700756,'image/jpeg'),
	(56,50,'images/5UXxm9LL5WRiuBCilrlFBL5aJPuKAVPA1ZqQZtwl.jpeg','image',0,'',0,'material:horizontal','2018-08-16 21:06:37','2018-08-16 21:06:37',549118,'image/jpeg'),
	(59,75,'images/jYd3l7zttN8bAqws4GAvPSMKk4N3H7Dqy2tsbqMp.jpeg','image',0,'',0,'material:vertical','2018-08-17 10:20:36','2018-08-17 10:20:36',223410,'image/jpeg'),
	(60,50,'images/a7ju3x98jguFgBOUi5rIWYBINy2feNYvtPUVLERT.jpeg','image',0,'',0,'material:horizontal','2018-08-17 11:31:46','2018-08-17 11:31:46',1081840,'image/jpeg'),
	(61,50,'images/gzAZXPWqNGVyHj39LLpExTFMzlg5BYAe95kc7Rv7.jpeg','image',0,'',0,'material:vertical','2018-08-17 11:32:11','2018-08-17 11:32:11',443961,'image/jpeg'),
	(62,69,'images/k2PEbbxfiHluWC3jGafyDkhVxkxx8cbJTZxnWqwN.jpeg','image',0,'',0,'material:vertical','2018-08-17 11:49:49','2018-08-17 11:49:49',467880,'image/jpeg'),
	(63,80,'images/rXiP7yVt8k1sOEcXZPowDG47kfAelsEcioy91Bbi.jpeg','image',0,'',0,'material:vertical','2018-08-17 11:55:32','2018-08-17 11:55:32',117464,'image/jpeg'),
	(66,84,'images/BTIZBj3awGwf2GcJ80EkGHkR6qW6QfZM3tF1iO6V.jpeg','image',0,'',0,'material:vertical','2018-08-17 12:27:49','2018-08-17 12:27:49',424544,'image/jpeg'),
	(67,50,'images/ks93ZmgU4o1edGHtihdWT8OORhNAIONKT9sMvO3y.jpeg','image',0,'',0,'material:horizontal','2018-08-17 12:33:03','2018-08-17 12:33:03',893998,'image/jpeg'),
	(68,76,'images/mtULVd5JuB9EaUdi0p4QWeEIl4fzixaF4vF7h3PJ.jpeg','image',0,'',0,'material:horizontal','2018-08-17 12:57:17','2018-08-17 12:57:17',243337,'image/jpeg'),
	(69,76,'images/1lWobSWdgNlSDhddVrl81uLuJkQskBVuDbzWArsH.jpeg','image',0,'',0,'material:horizontal','2018-08-17 12:57:27','2018-08-17 12:57:27',235964,'image/jpeg'),
	(70,48,'images/iSThFs4pXUtdY1CyLGe0BAUERza5NM6FAapBFTvI.jpeg','image',0,'',0,'material:vertical','2018-08-17 13:14:14','2018-08-17 13:14:14',73205,'image/jpeg'),
	(71,87,'images/KLzIN9yrHXxOJiSQcS6zTX5TGqxkK0pCUSxkog5S.jpeg','image',0,'',0,'material:vertical','2018-08-17 13:25:59','2018-08-17 13:25:59',180063,'image/jpeg'),
	(72,48,'images/s1fRK0susTyoHDPMvexl0kWl6INnqO8O1hrySd1g.jpeg','image',0,'',0,'material:vertical','2018-08-17 13:31:17','2018-08-17 13:31:17',73205,'image/jpeg'),
	(73,50,'images/cxIkA6utrUxKZWaXM2CI3NmyyEW8pVHyRLWug08k.jpeg','image',0,'',0,'material:vertical','2018-08-17 13:37:45','2018-08-17 13:37:45',348372,'image/jpeg'),
	(74,50,'images/ROOHlpZsBpqEQ3pazJUWnP4EtGxanAAomEjsMWFj.jpeg','image',0,'',0,'material:horizontal','2018-08-17 13:49:32','2018-08-17 13:49:32',90565,'image/jpeg'),
	(75,50,'images/IciRY3wUEWDYsqHkErFHtQdolbzFu9ybP3kPYhvR.jpeg','image',0,'',0,'material:horizontal','2018-08-17 13:49:47','2018-08-17 13:49:47',59319,'image/jpeg'),
	(76,50,'images/vYi3K9juuKwlB0jxkSx54jGdE8qlSqMS5Jwkeu9d.jpeg','image',0,'',0,'material:vertical','2018-08-17 13:50:00','2018-08-17 13:50:00',69596,'image/jpeg'),
	(77,50,'images/s04LkVSJqjsRDHQq4PxrvRnIVJmFuRE5e69QlSTx.jpeg','image',0,'',0,'material:vertical','2018-08-17 13:50:09','2018-08-17 13:50:09',81012,'image/jpeg'),
	(78,50,'images/8nV5fYHePRB66xp5YGAgAVgMSksMiLjJDZoy8unI.jpeg','image',0,'',0,'material:vertical','2018-08-17 13:50:55','2018-08-17 13:50:55',89198,'image/jpeg'),
	(79,50,'images/1uGBTmARaOypkMMHN1dVZcGfgh8anZs240odnZGY.jpeg','image',0,'',0,'material:vertical','2018-08-17 13:51:04','2018-08-17 13:51:04',68152,'image/jpeg'),
	(80,50,'images/18n4Ck5y08LA7u2LILkSjWLknnZFhsiamwlBSxfK.jpeg','image',0,'',0,'material:vertical','2018-08-17 14:29:44','2018-08-17 14:29:44',121735,'image/jpeg'),
	(81,50,'images/ND5Rt6UkticKK74Fi27M8ezleRWvkz0SQEnwD9wd.jpeg','image',0,'',0,'material:horizontal','2018-08-17 14:30:05','2018-08-17 14:30:05',42146,'image/jpeg'),
	(82,47,'videos/20180817144924hLEV3Jf1p9.mov','video',38,'images/video_thumbnail_1534488564_i4OTrLGXEX.jpg',0,'material:vertical','2018-08-17 14:49:24','2018-08-17 14:49:24',3587484,'video/quicktime'),
	(85,50,'images/bx8LDhMYQ3woKjK9subT0ebBI89nnFTeat25F5Oi.jpeg','image',0,'',0,'material:horizontal','2018-08-17 15:19:32','2018-08-17 15:19:32',1126720,'image/jpeg'),
	(92,92,'images/ZNYuWScf1hs7g2P0Iu5uFLBw9ebTslQREXeXeS2w.jpeg','image',0,'',0,'material:vertical','2018-08-17 17:33:21','2018-08-17 17:33:21',388943,'image/jpeg'),
	(93,48,'images/uH1Zy4xZntxF4Lll9O985T35Bd0nwy2IpFmWclgY.jpeg','image',0,'',0,'material:horizontal','2018-08-17 17:36:18','2018-08-17 17:36:18',97385,'image/jpeg'),
	(94,48,'images/MX3AHh96KBBA9NsO0wuPd3igrFSbSMlog4gwzm5U.jpeg','image',0,'',0,'material:horizontal','2018-08-17 17:36:26','2018-08-17 17:36:26',133540,'image/jpeg'),
	(95,48,'images/MGWJqtDMxeUJ1jrPky6OHbCnMaaOGphVIcdE4sGe.jpeg','image',0,'',0,'material:vertical','2018-08-17 17:36:41','2018-08-17 17:36:41',147700,'image/jpeg'),
	(96,50,'images/1hLFYfJybLMTc53Tq845IGqq4fHDXJ0hjBBHg0qK.jpeg','image',0,'',0,'material:horizontal','2018-08-17 17:40:06','2018-08-17 17:40:06',445900,'image/jpeg'),
	(97,50,'images/xIYyE7ObINw5QZYrFjdVwtNUwGBZCJxNprFDl461.jpeg','image',0,'',0,'material:vertical','2018-08-17 17:43:34','2018-08-17 17:43:34',384373,'image/jpeg'),
	(98,50,'images/prXqGGFED5y2cNCaa3K1QKeqyRlg3owX5AV2VuXU.jpeg','image',0,'',0,'material:vertical','2018-08-17 17:44:01','2018-08-17 17:44:01',407957,'image/jpeg'),
	(99,50,'images/IfexdCcvi4RLnH41CCAu7sRndXuJJKEsh5k7jXlU.jpeg','image',0,'',0,'material:vertical','2018-08-17 17:44:07','2018-08-17 17:44:07',348038,'image/jpeg'),
	(100,94,'images/pIONSTalQvFBfzfEqRjJW22b7wHDgvDq7nvoZnrT.jpeg','image',0,'',0,'material:horizontal','2018-08-17 18:05:40','2018-08-17 18:05:40',197813,'image/jpeg'),
	(101,48,'videos/20180817184024NwynndR6sV.mp4','video',23,'images/video_thumbnail_1534502424_mkDt2W2Duc.jpg',0,'material:horizontal','2018-08-17 18:40:24','2018-08-17 18:40:24',2440199,'video/mp4'),
	(102,48,'videos/20180817184319Ow3f3Hu8Cu.mp4','video',23,'images/video_thumbnail_1534502599_GA7G2BrqKh.jpg',0,'material:vertical','2018-08-17 18:43:19','2018-08-17 18:43:19',2440199,'video/mp4'),
	(103,96,'images/QL9U0N7mjXdYJKOxDIYT4xOHPneiwoCegpnT11g8.jpeg','image',0,'',0,'material:horizontal','2018-08-17 20:08:14','2018-08-17 20:08:14',260493,'image/jpeg'),
	(104,96,'images/2COvX5HZ7w3Aro3qt0rwBeTDEqpxRNC4cCq7q5Ks.jpeg','image',0,'',0,'material:horizontal','2018-08-17 20:08:24','2018-08-17 20:08:24',278749,'image/jpeg'),
	(105,96,'images/U6qTiFxgmnzj4p8mQzwKfSEXmlkKvOTCiNKHs5FV.jpeg','image',0,'',0,'material:horizontal','2018-08-17 20:20:56','2018-08-17 20:20:56',278749,'image/jpeg'),
	(106,96,'images/MefYEg9veBCo1IIzEKMmVbP1qgK3FJGQaAoxXNrO.jpeg','image',0,'',0,'material:horizontal','2018-08-17 20:21:08','2018-08-17 20:21:08',225263,'image/jpeg'),
	(107,96,'images/2GRAgqfmNmLtwdphTc6Z3JpRTghPVvgxVDDMIuDF.jpeg','image',0,'',0,'material:horizontal','2018-08-17 20:21:16','2018-08-17 20:21:16',172854,'image/jpeg'),
	(108,96,'images/65EKf5FLXugDdpXH2ayf6GHCcQ4ffIe0tQKvu7fB.jpeg','image',0,'',0,'material:horizontal','2018-08-17 20:21:23','2018-08-17 20:21:23',208350,'image/jpeg'),
	(109,98,'images/Bj7VvNwSNdOv5RAujRCShkOvU7wvBIDZE6waVm6P.jpeg','image',0,'',0,'material:horizontal','2018-08-17 20:41:32','2018-08-17 20:41:32',798078,'image/jpeg'),
	(110,50,'images/Mnlv0cLDh8yBhHF7aBv2OBATYIiBK8V6EhOTKb6p.jpeg','image',0,'',0,'material:horizontal','2018-08-17 20:43:28','2018-08-17 20:43:28',520255,'image/jpeg'),
	(111,99,'images/KWtvxYri09fxkVdmIvi0Y0g43CRRWNhrxPeoIx6g.jpeg','image',0,'',0,'material:vertical','2018-08-17 20:53:35','2018-08-17 20:53:35',669357,'image/jpeg'),
	(112,50,'images/9w70acR0OZwty86OW3eD7WsH4cpXGuhcEj3uT2Qz.jpeg','image',0,'',0,'material:horizontal','2018-08-17 21:38:46','2018-08-17 21:38:46',669359,'image/jpeg'),
	(113,50,'images/Uw4pCo2fjTI0NQH2Pm1o9I3PYDybCcvIkBCvx06w.jpeg','image',0,'',0,'material:vertical','2018-08-17 21:40:16','2018-08-17 21:40:16',471542,'image/jpeg'),
	(115,55,'images/hdPXEfaX4tmcuZWeuwqXpnn023wJMA7ObrDQifhJ.jpeg','image',0,'',0,'material:vertical','2018-08-17 23:06:05','2018-08-17 23:06:05',89920,'image/jpeg'),
	(128,59,'images/XNGtRGdpAoO1nBWhYybbJRu0ea0SH4iwbxDYQyo6.jpeg','image',0,'',0,'material:vertical','2018-08-18 13:44:14','2018-08-18 13:44:14',378219,'image/jpeg'),
	(129,59,'images/xLLx2bh9MLBycKwa46aSucKkTyiC0y2Y2xmA32NI.jpeg','image',0,'',0,'material:vertical','2018-08-18 13:46:02','2018-08-18 13:46:02',378219,'image/jpeg'),
	(130,69,'videos/20180818140019wK5p8sKsIe.mov','video',10,'images/video_thumbnail_1534572018_1Mf6by7B53.jpg',0,'material:vertical','2018-08-18 14:00:19','2018-08-18 14:00:19',957400,'video/quicktime'),
	(131,69,'images/1fDwZmblDCIPl2sGkOiE8qbWBxiDipG8OtciznNU.jpeg','image',0,'',0,'material:vertical','2018-08-18 14:00:31','2018-08-18 14:00:31',172257,'image/jpeg'),
	(132,66,'images/IgjT27GQhQ4Lk0i0MzBenDxpszItpjbWhm1IqSUj.jpeg','image',0,'',0,'material:vertical','2018-08-18 14:32:36','2018-08-18 14:32:36',475351,'image/jpeg'),
	(133,109,'images/cwHyN4gTmsdHo06IWMsLTCyrNYtiOzCDeVPdyfOL.jpeg','image',0,'',0,'material:horizontal','2018-08-18 14:42:10','2018-08-18 14:42:10',55818,'image/jpeg'),
	(136,46,'images/fSakRVJYhawSgNaLU53P9p778tKeLpTCbCu1nm3U.jpeg','image',0,'',0,'material:vertical','2018-08-18 18:48:44','2018-08-18 18:48:44',175310,'image/jpeg'),
	(138,113,'images/h4IGG5GeO8O87lsLcQyuIzUYrxdjW2c8PzeAZv76.jpeg','image',0,'',0,'material:horizontal','2018-08-19 10:11:43','2018-08-19 10:11:43',86628,'image/jpeg'),
	(143,50,'images/Ov27HnCDurfFPa88sPJHoWH5PWekgDvWupINldnE.jpeg','image',0,'',0,'slideshow_images:32','2018-08-19 11:27:13','2018-08-20 15:34:27',145480,'image/jpeg'),
	(144,50,'images/dJG0v91UC9NOptVCmyquLXdBtsLzq0A38bGUaodE.jpeg','image',0,'',0,'slideshow_images:32','2018-08-19 11:27:26','2018-08-20 15:34:27',351253,'image/jpeg'),
	(145,50,'images/z43Rc0KcNwLN7rjcDG132ErIbuQhCgp0hOz753cp.jpeg','image',0,'',0,'slideshow_images:32','2018-08-19 11:27:37','2018-08-20 15:34:27',322061,'image/jpeg'),
	(146,116,'images/4VmJOclScMRbEvYK5z2cWyBKCcsG5WFTm8PcZ5qY.jpeg','image',0,'',0,'material:vertical','2018-08-19 11:52:22','2018-08-19 11:52:22',57032,'image/jpeg'),
	(147,50,'images/7MHBy32j08ijufCjgX28IZaI0stnKbHa0JrNjMx1.jpeg','image',0,'',0,'slideshow_images:33','2018-08-19 11:58:33','2018-08-22 12:13:33',783540,'image/jpeg'),
	(148,50,'images/eyoAUYguM4BHg3Ef90d7httpjOJPBRe3WyVq5IfL.jpeg','image',0,'',0,'slideshow_images:33','2018-08-19 11:59:01','2018-08-22 12:13:33',691436,'image/jpeg'),
	(149,50,'images/ny9Xi092O1HlePllW7FbpVPdf3YpPdUgBED4gpBY.jpeg','image',0,'',0,'slideshow_images:33','2018-08-19 11:59:16','2018-08-19 11:59:26',834047,'image/jpeg'),
	(150,50,'images/K14iVlrE97oJiltpTn2L86RV7tUPRWvYaoW6BljC.jpeg','image',0,'',0,'material:horizontal','2018-08-19 12:02:47','2018-08-19 12:02:47',783540,'image/jpeg'),
	(151,50,'images/K8dGlb0Zwj0Tr6qQ13YEvsHO4fbuOMuR9ysl0SGb.jpeg','image',0,'',0,'material:horizontal','2018-08-19 12:03:10','2018-08-19 12:03:10',834047,'image/jpeg'),
	(152,55,'images/S34YGupkwQFhRnc2Xrvdz0WcsEZmrnb56jWxFs98.jpeg','image',0,'',0,'material:vertical','2018-08-19 13:13:37','2018-08-19 13:13:37',216059,'image/jpeg'),
	(154,60,'images/PlS588rP0lsmslnhwKZZNE8fx2KdNh7UiBLONkVZ.jpeg','image',0,'',0,'material:vertical','2018-08-19 13:23:49','2018-08-19 13:23:49',439623,'image/jpeg'),
	(155,50,'images/16nDofST1FHpSUeW9xgNrmkPkZkc56k3KvXiN7yT.jpeg','image',0,'',0,'slideshow_images:34','2018-08-19 14:07:35','2018-08-19 14:09:05',1054291,'image/jpeg'),
	(156,50,'images/xZTnZ4ZFvLzGjUOzJnMfzjGVyYSUf5DkjgDzauNh.jpeg','image',0,'',0,'slideshow_images:34','2018-08-19 14:08:14','2018-08-19 14:09:05',278691,'image/jpeg'),
	(157,50,'images/M5rx1dh2MRXlTIkZ0FvguJDQg5KaKIKG3xn883Xk.jpeg','image',0,'',0,'slideshow_images:34','2018-08-19 14:08:23','2018-08-19 14:09:05',292518,'image/jpeg'),
	(160,114,'images/qklo3VgMw1Kkovr4O5L6hbKpIa7kjOnvAeAuJN2z.jpeg','image',0,'',0,'material:vertical','2018-08-19 14:41:38','2018-08-19 14:41:38',604557,'image/jpeg'),
	(161,50,'images/FsRhYsslUwfbEHZEJfWDHz31r35blNRE8ylI8BE9.jpeg','image',0,'',0,'slideshow_images:35','2018-08-19 15:31:01','2018-08-19 15:32:20',564591,'image/jpeg'),
	(162,50,'images/JhZhCVuJcIb8SYEgIQy1q7Qn5tApGvea0wHtqjgq.jpeg','image',0,'',0,'slideshow_images:35','2018-08-19 15:31:09','2018-08-19 15:32:20',815794,'image/jpeg'),
	(163,50,'images/M2ImV3kmw89nePsZJisOCXmaS6Dht5pUVjlmFS2w.jpeg','image',0,'',0,'slideshow_images:35','2018-08-19 15:31:54','2018-08-19 15:32:20',306746,'image/jpeg'),
	(164,50,'images/5AS63RZeSyJeHG0avIncPb88gNzX9TuvTrDTPCk4.jpeg','image',0,'',0,'material:horizontal','2018-08-19 15:34:09','2018-08-19 15:34:09',564591,'image/jpeg'),
	(165,113,'images/LTgujKfHyW9k2rhYw8JsM5ltEbd8bqOTLTyObMrR.jpeg','image',0,'',0,'material:horizontal','2018-08-19 15:34:22','2018-08-19 15:34:22',176168,'image/jpeg'),
	(167,50,'images/0bRsrf2PI6a9PiGWlfpVIWvAZKKFUUr2lFaKAhYV.jpeg','image',0,'',0,'material:vertical','2018-08-19 15:35:07','2018-08-19 15:35:07',306746,'image/jpeg'),
	(168,50,'images/1I1tL1QwcsBgXRUVRFYTM6evUnAo34joQZsYeX9j.jpeg','image',0,'',0,'material:horizontal','2018-08-19 15:35:41','2018-08-19 15:35:41',815794,'image/jpeg'),
	(169,113,'images/XM48EQit712wjwFLpyrB8V7gkgCtgoNKpXNgmgco.jpeg','image',0,'',0,'material:horizontal','2018-08-19 15:37:33','2018-08-19 15:37:33',173450,'image/jpeg'),
	(170,50,'videos/20180819154616mXAdxTXiZe.mp4','video',11,'images/video_thumbnail_1534664776_EOd5PO1Bjw.jpg',0,'material:vertical','2018-08-19 15:46:16','2018-08-19 15:46:16',1612714,'video/mp4'),
	(171,120,'images/hNhZBx7KnhBjVDGQYik3PiN5641QBGrOPkbguHru.jpeg','image',0,'',0,'material:horizontal','2018-08-19 16:05:52','2018-08-19 16:05:52',629286,'image/jpeg'),
	(175,50,'images/jbJeKE41ngII6sO4ezFwz5dLrrDTA3WLIQ4eW3W1.jpeg','image',0,'',0,'slideshow_images:36','2018-08-19 16:11:52','2018-08-19 16:13:06',639660,'image/jpeg'),
	(176,50,'images/Ql0El0D3DdSbd1hbYEafyDe7kEugrnlt9E7O4pvs.jpeg','image',0,'',0,'slideshow_images:36','2018-08-19 16:12:14','2018-08-19 16:13:06',700219,'image/jpeg'),
	(177,50,'images/akNPf3Mu7sGTU1Q2bZzgDoNJrJAdBg9WP2niy7rg.jpeg','image',0,'',0,'slideshow_images:36','2018-08-19 16:12:22','2018-08-19 16:13:06',311073,'image/jpeg'),
	(178,50,'images/8LLlDbSp1x5yxKNjB8wp3GrOAxYk7l8aG6tlxFb6.jpeg','image',0,'',0,'material:horizontal','2018-08-19 16:15:01','2018-08-19 16:15:01',639660,'image/jpeg'),
	(180,114,'images/8aoPHFTYF1PKMLP0QWnvelcIzExQMehuyTz5v0FR.jpeg','image',0,'',0,'material:horizontal','2018-08-19 16:35:14','2018-08-19 16:35:14',109515,'image/jpeg'),
	(181,114,'images/ibYlZNTgVhLqPFVmXTTou7Z0tId4YxqbfE7XNilP.jpeg','image',0,'',0,'material:horizontal','2018-08-19 16:35:23','2018-08-19 16:35:23',157340,'image/jpeg'),
	(182,114,'images/ZpxjPr7tTruUkiovdTHcbRwiixqyA4mKQmXw0nzy.jpeg','image',0,'',0,'material:horizontal','2018-08-19 16:35:31','2018-08-19 16:35:31',223835,'image/jpeg'),
	(183,114,'images/e8aJEu0GLu6zf8HPQdxGVvNs62vlDq5rEMH0NLkJ.jpeg','image',0,'',0,'material:horizontal','2018-08-19 16:35:41','2018-08-19 16:35:41',169595,'image/jpeg'),
	(184,114,'images/E8HCjcH72FgRwJJaIk8cltlX9934zCstRadKHpA0.jpeg','image',0,'',0,'material:horizontal','2018-08-19 16:43:10','2018-08-19 16:43:10',166868,'image/jpeg'),
	(185,114,'images/PCzkUKywpzbrxk7hx72Fq2z0xKVKDPtBpH4SwFP0.jpeg','image',0,'',0,'material:horizontal','2018-08-19 16:43:15','2018-08-19 16:43:15',133482,'image/jpeg'),
	(186,114,'images/5KRo0NtdRpjgdIjIcUPeSuuqSCycQJ0x9JTxKqtJ.jpeg','image',0,'',0,'material:vertical','2018-08-19 16:43:28','2018-08-19 16:43:28',119844,'image/jpeg'),
	(187,114,'images/vQfGCDpvCmczdMrTHzueIEhwIlqjuirrAAfzYKw6.jpeg','image',0,'',0,'material:vertical','2018-08-19 16:43:39','2018-08-19 16:43:39',67801,'image/jpeg'),
	(188,114,'images/4aFoR8EI8OisQjqD9iP6jCmjwVfHEGH3TbTOT6nn.jpeg','image',0,'',0,'material:vertical','2018-08-19 16:43:46','2018-08-19 16:43:46',63312,'image/jpeg'),
	(189,114,'images/dItX4Gthf5YsF2Vd28qHZv6PkS0qd1kIlVQmquue.jpeg','image',0,'',0,'material:vertical','2018-08-19 16:44:12','2018-08-19 16:44:12',589151,'image/jpeg'),
	(190,114,'images/unvWmLZDJToBMBQ9sclRLEXaCcY7au0HenGwiQ2y.jpeg','image',0,'',0,'material:vertical','2018-08-19 16:44:12','2018-08-19 16:44:12',276910,'image/jpeg'),
	(191,121,'images/1vEDO992E1fAR9DawYFWV5G61obSvJJYSfZNtb8e.jpeg','image',0,'',0,'material:vertical','2018-08-19 16:45:59','2018-08-19 16:45:59',121517,'image/jpeg'),
	(193,114,'images/Jh5gxBVn9nkUkdGIQbIBnuyr34HMWYgD9JagDhPT.jpeg','image',0,'',0,'material:horizontal','2018-08-19 16:48:28','2018-08-19 16:48:28',2184727,'image/jpeg'),
	(194,114,'videos/20180819164847e5Ai9r0Kt0.mp4','video',8,'images/video_thumbnail_1534668527_w33iUNLhpY.jpg',0,'material:horizontal','2018-08-19 16:48:47','2018-08-19 16:48:47',1195614,'video/mp4'),
	(195,114,'images/B4Tbo5XzX3aM7KJWoFuIwNdb78NjmUqWD0RpWH0P.jpeg','image',0,'',0,'material:vertical','2018-08-19 16:50:00','2018-08-19 16:50:00',185780,'image/jpeg'),
	(196,114,'images/u9tvfI2KqcBz5F5SI1Wh9gumNoLa6gsU3UZv6TmX.jpeg','image',0,'',0,'material:vertical','2018-08-19 16:50:07','2018-08-19 16:50:07',27657,'image/jpeg'),
	(198,50,'images/q0Re0gh3KDUisybiDtM4f3xlusBs3qfRFyxUd71v.jpeg','image',0,'',0,'slideshow_images:37','2018-08-19 17:21:39','2018-08-19 17:22:57',749021,'image/jpeg'),
	(199,50,'images/EdGeOBQWqAxYNRUB4SOVkHvUPsP9vITH9yaqdVEW.jpeg','image',0,'',0,'slideshow_images:37','2018-08-19 17:22:00','2018-08-19 17:22:57',599746,'image/jpeg'),
	(200,50,'images/rzweH24aX9zMQkXA79tDDuXSnMrL88rYLNSCI3ZR.jpeg','image',0,'',0,'slideshow_images:37','2018-08-19 17:22:46','2018-08-19 17:22:57',772388,'image/jpeg'),
	(204,50,'images/bjBsLlLlRYDsWT8d9b7y7iVHKtN2JGh47dwKaLVX.jpeg','image',0,'',0,'slideshow_images:38','2018-08-19 18:35:01','2018-08-19 18:37:03',622722,'image/jpeg'),
	(205,50,'images/spV0y6d9KPNU0d22eYYhvrQpoFLmvC19dhuMlWZ9.jpeg','image',0,'',0,'slideshow_images:38','2018-08-19 18:35:16','2018-08-19 18:37:03',338114,'image/jpeg'),
	(207,50,'images/uhbaVNfC0iUvkpojoLGwOGHOqjkElygLqRySPvLG.jpeg','image',0,'',0,'slideshow_images:38','2018-08-19 18:36:01','2018-08-19 18:37:03',229679,'image/jpeg'),
	(211,47,'images/DmhMIfSpH6YWr2CDznklFml1912OphoXupyqg99F.jpeg','image',0,'',0,'material:horizontal','2018-08-19 19:56:08','2018-08-19 19:56:08',78518,'image/jpeg'),
	(212,50,'images/4CGLLVMGQeYnsyv6SYkLFr8Pivc0U4o6YuCyc0l1.jpeg','image',0,'',0,'slideshow_images:39','2018-08-19 20:18:56','2018-08-19 20:19:37',513473,'image/jpeg'),
	(213,50,'images/2LDdKaOMH8p1S11Naw8OCvUs9t6ejdRM5MUOzGyJ.jpeg','image',0,'',0,'slideshow_images:39','2018-08-19 20:19:14','2018-08-19 20:19:37',302884,'image/jpeg'),
	(214,50,'images/tYuBAsoh2oEJJWmA5u6Xpmo9XmGRU4IBxryyzV14.jpeg','image',0,'',0,'slideshow_images:39','2018-08-19 20:19:26','2018-08-19 20:19:37',351234,'image/jpeg'),
	(215,48,'images/3NZDar9FsODlWoHo6VE0bQLMzPEMbADUsheIL4vb.jpeg','image',0,'',0,'material:horizontal','2018-08-19 20:26:34','2018-08-19 20:26:34',585882,'image/jpeg'),
	(218,126,'images/3Qq1vSto3E5gDx2khjoGXHNPBe3J3vjMNq2umtx3.jpeg','image',0,'',0,'material:vertical','2018-08-19 20:31:47','2018-08-19 20:31:47',345692,'image/jpeg'),
	(219,127,'images/z8v4pFrX8HqExtLv7MOHLnxIY9ocDwmAT2ax6hTN.jpeg','image',0,'',0,'material:vertical','2018-08-19 20:36:47','2018-08-19 20:36:47',165263,'image/jpeg'),
	(220,129,'images/qjUoLyfVQ8R5lZ2UTnuVRfNHyy6HrZrcQDPe8mUh.jpeg','image',0,'',0,'material:horizontal','2018-08-19 21:54:45','2018-08-19 21:54:45',249171,'image/jpeg'),
	(221,50,'images/5OKXdbOg6J8zC0AlA7Dnjc7kE7jNRuhBxxzWxxQz.jpeg','image',0,'',0,'slideshow_images:47','2018-08-19 21:56:37','2018-08-25 14:52:00',504983,'image/jpeg'),
	(222,50,'images/QjVxu8cqBwll6XrElqmCpajyM5ICXp4RGOUwVyGj.jpeg','image',0,'',0,'slideshow_images:47','2018-08-19 21:57:00','2018-08-25 14:52:00',424046,'image/jpeg'),
	(223,50,'images/3mystlQb68SVcQDhn3IFTGN0WXwkjmGj4YOlvsZk.jpeg','image',0,'',0,'slideshow_images:47','2018-08-19 21:57:21','2018-08-25 14:52:00',669348,'image/jpeg'),
	(224,48,'images/wXKr006jyAriyGvJKDmITrtjvBbJE5F4xrJjsBEt.jpeg','image',0,'',0,'material:vertical','2018-08-19 21:59:14','2018-08-19 21:59:14',135029,'image/jpeg'),
	(225,48,'images/znI3ieuJUP77CB3ZqwNCfLJHVXpvsZrukP7dKoql.jpeg','image',0,'',0,'material:vertical','2018-08-19 21:59:31','2018-08-19 21:59:31',136926,'image/jpeg'),
	(226,48,'images/l0a2IBBQ2ng7ANzMjs9AJfjZtH3FWxqtNGsmisIC.jpeg','image',0,'',0,'material:horizontal','2018-08-19 22:00:17','2018-08-19 22:00:17',942931,'image/jpeg'),
	(229,47,'images/lhC7qqEVE6S0Y8G9DlXq13fZhTug0FCUU9ANgKUj.jpeg','image',0,'',0,'material:horizontal','2018-08-19 22:09:47','2018-08-19 22:09:47',41436,'image/jpeg'),
	(231,50,'images/EvVK9w02RYJ6dImArwHXO5xc8zZy7xaKW40VS4xK.jpeg','image',0,'',0,'material:vertical','2018-08-19 22:19:49','2018-08-19 22:19:49',504983,'image/jpeg'),
	(234,50,'videos/20180820124304NSpev59HNj.mp4','video',11,'images/video_thumbnail_1534740184_L9fuHlkWxm.jpg',0,'material:vertical','2018-08-20 12:43:04','2018-08-20 12:43:04',1534124,'video/mp4'),
	(235,115,'images/UnqrJXsn5qpBQosp7SNeSRdRAkE2V5ozR36KwoBF.jpeg','image',0,'',0,'material:vertical','2018-08-20 15:36:24','2018-08-20 15:36:24',366715,'image/jpeg'),
	(236,50,'videos/20180820170311YPDogrXlNc.mp4','video',11,'images/video_thumbnail_1534755791_qYPUyYDCZh.jpg',0,'material:horizontal','2018-08-20 17:03:11','2018-08-20 17:03:11',1400256,'video/mp4'),
	(237,132,'images/sju9kJLmmWDOMlgWFKCzSdIOE3OwV4cCHgoHlK7l.jpeg','image',0,'',0,'material:vertical','2018-08-20 17:35:09','2018-08-20 17:35:09',355334,'image/jpeg'),
	(238,50,'images/MkD6ONoR0L3jMCN6sbPrdEWEZkeLlm9BeRFF5BcS.jpeg','image',0,'',0,'slideshow_images:42','2018-08-20 18:02:14','2018-08-20 18:19:16',969302,'image/jpeg'),
	(239,50,'images/saJOP08dKCDIYUNle1T1I2UEWn5VI9N9HUqOJNqB.jpeg','image',0,'',0,'slideshow_images:42','2018-08-20 18:02:39','2018-08-20 18:19:16',829049,'image/jpeg'),
	(240,50,'images/folWfyqhrscbVmxBfXhXpVqU69jo1EVPoV0mpfev.jpeg','image',0,'',0,'slideshow_images:42','2018-08-20 18:02:56','2018-08-20 18:19:16',698463,'image/jpeg'),
	(241,50,'images/N4AaTvPi0fO8yChVJS6lGgZqwLu8jaT3rBA4C5S0.jpeg','image',0,'',0,'material:horizontal','2018-08-20 18:11:14','2018-08-20 18:11:14',969302,'image/jpeg'),
	(242,50,'images/m0ZXgEz77waT9LsC6oHOtYjRzbuSqCpYPqKZyj6K.jpeg','image',0,'',0,'material:horizontal','2018-08-20 18:11:47','2018-08-20 18:11:47',829049,'image/jpeg'),
	(243,50,'images/ZpcedYEwjAKSQhpBJ0F5jL6KHvTKPTJt9xpVNK69.jpeg','image',0,'',0,'material:horizontal','2018-08-20 18:12:29','2018-08-20 18:12:29',698463,'image/jpeg'),
	(244,135,'images/zcvXALsPybxUnOI8jPtjtiUNlnpX22zBIuEkpFuL.jpeg','image',0,'',0,'material:vertical','2018-08-20 18:54:03','2018-08-20 18:54:03',298290,'image/jpeg'),
	(245,135,'images/zvwgxIfMPqXjaGxee0jHfgmQ2F7JjCQ0Ef7PVWfh.jpeg','image',0,'',0,'material:vertical','2018-08-20 18:54:12','2018-08-20 18:54:12',322088,'image/jpeg'),
	(246,135,'images/JsKv7A0ZTChRc5LpP0JTlSi8GZufc69HJkDSpzmd.jpeg','image',0,'',0,'material:vertical','2018-08-20 18:54:22','2018-08-20 18:54:22',362766,'image/jpeg'),
	(247,135,'videos/20180820185502Hvdoikxteq.mp4','video',10,'images/video_thumbnail_1534762502_Wj6KQnO78M.jpg',0,'material:vertical','2018-08-20 18:55:02','2018-08-20 18:55:02',1524311,'video/mp4'),
	(248,50,'images/ORfxWw0qnSNak40dYgxjGBqKOJkzT96zT7b6fl0i.jpeg','image',0,'',0,'material:vertical','2018-08-20 21:35:04','2018-08-20 21:35:04',124159,'image/jpeg'),
	(249,50,'images/4UZjXWMcXih018b12qkdjCaq4fCIMrNoyvBVcesX.jpeg','image',0,'',0,'material:vertical','2018-08-20 21:35:27','2018-08-20 21:35:27',237636,'image/jpeg'),
	(251,119,'images/rgFJeLotiG9dm0oSadaRF5gC3Is7uvvP9cghdDjU.jpeg','image',0,'',0,'material:vertical','2018-08-21 13:14:12','2018-08-21 13:14:12',66057,'image/jpeg'),
	(252,119,'images/GJykeZeWaAd7AmHMhxgL7CxFOSEHwd14BOL441jt.jpeg','image',0,'',0,'material:vertical','2018-08-21 13:14:45','2018-08-21 13:14:45',150610,'image/jpeg'),
	(253,115,'videos/20180821155214SjrFfwCSrn.mov','video',15,'images/video_thumbnail_1534837933_IxOfScIOoE.jpg',0,'material:horizontal','2018-08-21 15:52:14','2018-08-21 15:52:14',1451174,'video/quicktime'),
	(254,93,'videos/20180821163046pf0SJK2uML.mov','video',10,'images/video_thumbnail_1534840246_1CiAiZABcs.jpg',0,'material:horizontal','2018-08-21 16:30:46','2018-08-21 16:30:46',6066043,'video/quicktime'),
	(255,47,'images/VgWqrGLCbeHCPxSsp3vzmK2GX9J4TZC2pR48hYuR.jpeg','image',0,'',0,'material:vertical','2018-08-21 16:57:52','2018-08-21 16:57:52',549866,'image/jpeg'),
	(256,48,'videos/20180821181534uOPJHEuGy6.mp4','video',11,'images/video_thumbnail_1534846534_4l7gM8FeTd.jpg',0,'material:horizontal','2018-08-21 18:15:34','2018-08-21 18:15:34',1601518,'video/mp4'),
	(257,47,'images/DNK9isGlaoPwbaJLYGCxsIiArK0ZAYVUVP1s5YuV.jpeg','image',0,'',0,'material:vertical','2018-08-21 18:16:07','2018-08-21 18:16:07',354773,'image/jpeg'),
	(258,46,'images/lG3fPUEAveepqfWknclQtgfSlPnLt7ZmxYw1AYeB.jpeg','image',0,'',0,'material:vertical','2018-08-21 22:34:54','2018-08-21 22:34:54',70387,'image/jpeg'),
	(259,46,'images/4SdQ3mVbPryEzEhs1RYclNGerR8ntBYUjrDH6SRm.jpeg','image',0,'',0,'material:vertical','2018-08-22 10:14:15','2018-08-22 10:14:15',186795,'image/jpeg'),
	(260,50,'images/CibHDQVXa4Cm84MelNHnewwJahGSBTrQlvG7y7hw.jpeg','image',0,'',0,'slideshow_images:33','2018-08-22 12:13:13','2018-08-22 12:13:33',194002,'image/jpeg'),
	(261,52,'videos/20180822131644jbbfLgdaZA.mov','video',10,'images/video_thumbnail_1534915004_0UrgcEfisa.jpg',0,'material:vertical','2018-08-22 13:16:44','2018-08-22 13:16:44',952776,'video/quicktime'),
	(262,52,'videos/20180822131927f6mX9DD9k5.mov','video',10,'images/video_thumbnail_1534915167_e8BxN7H29w.jpg',0,'material:vertical','2018-08-22 13:19:27','2018-08-22 13:19:27',1067931,'video/quicktime'),
	(263,52,'videos/201808221321457LGztt13O6.mov','video',10,'images/video_thumbnail_1534915305_kpGLubbiYq.jpg',0,'material:vertical','2018-08-22 13:21:45','2018-08-22 13:21:45',929584,'video/quicktime'),
	(264,52,'videos/20180822132235T2DSQI5TkZ.mov','video',11,'images/video_thumbnail_1534915355_B8xmQTSZoe.jpg',0,'material:vertical','2018-08-22 13:22:35','2018-08-22 13:22:35',965430,'video/quicktime'),
	(265,52,'videos/20180822134604zxhZj7v2WB.mov','video',10,'images/video_thumbnail_1534916764_U44doIHKHP.jpg',0,'material:horizontal','2018-08-22 13:46:04','2018-08-22 13:46:04',1067931,'video/quicktime'),
	(266,52,'videos/20180822134634GAxQv5QLcT.mov','video',10,'images/video_thumbnail_1534916794_1QB8rgfJ2k.jpg',0,'material:horizontal','2018-08-22 13:46:34','2018-08-22 13:46:34',952776,'video/quicktime'),
	(267,52,'videos/20180822134658PSa2FD1yuL.mov','video',10,'images/video_thumbnail_1534916818_tOvEVDbNzc.jpg',0,'material:horizontal','2018-08-22 13:46:58','2018-08-22 13:46:58',943518,'video/quicktime'),
	(268,52,'images/XrQtZFOLMO9CVuDEvsy0vpotN9JFCXKLUBmDdMMu.jpeg','image',0,'',0,'material:horizontal','2018-08-22 13:47:13','2018-08-22 13:47:13',253994,'image/jpeg'),
	(269,52,'images/IOFl1dT1BtIIg47Klrmd6TlfCRlnOHyghUxm9Toq.jpeg','image',0,'',0,'material:horizontal','2018-08-22 13:47:28','2018-08-22 13:47:28',311388,'image/jpeg'),
	(270,52,'images/2SGgHDvDdnZDtYD98I2ASYkSGCLV8PQoRpmDGszu.jpeg','image',0,'',0,'material:horizontal','2018-08-22 13:48:07','2018-08-22 13:48:07',213944,'image/jpeg'),
	(273,141,'images/qNnjODdBAISTwOxAgZWZH5yFt9Zaopw03bUHjy1u.jpeg','image',0,'',0,'material:vertical','2018-08-22 14:15:54','2018-08-22 14:15:54',283756,'image/jpeg'),
	(274,52,'videos/201808221641524itJcB0JIA.mov','video',10,'images/video_thumbnail_1534927311_RcQt4jmYZ1.jpg',0,'material:horizontal','2018-08-22 16:41:52','2018-08-22 16:41:52',947087,'video/quicktime'),
	(275,52,'videos/20180822164258AAT8Vd2YXC.mov','video',11,'images/video_thumbnail_1534927378_nLQbFbGTId.jpg',0,'material:vertical','2018-08-22 16:42:58','2018-08-22 16:42:58',973450,'video/quicktime'),
	(276,52,'videos/20180822164318VJ3O9y5mIZ.mov','video',10,'images/video_thumbnail_1534927398_OoPsKLkTUC.jpg',0,'material:vertical','2018-08-22 16:43:18','2018-08-22 16:43:18',947087,'video/quicktime'),
	(277,52,'videos/20180822164350sQNKNkmY6S.mov','video',10,'images/video_thumbnail_1534927430_Q5gMOeKQGF.jpg',0,'material:vertical','2018-08-22 16:43:50','2018-08-22 16:43:50',1000862,'video/quicktime'),
	(280,47,'videos/20180822164711NhFedU5v7r.mov','video',10,'images/video_thumbnail_1534927631_WZjSXnjBmy.jpg',0,'material:vertical','2018-08-22 16:47:11','2018-08-22 16:47:11',996880,'video/quicktime'),
	(281,50,'images/hxfCEx55reujFjnvagWOblnpgcqq8L2t0bSubYk0.jpeg','image',0,'',0,'material:horizontal','2018-08-22 16:50:44','2018-08-22 16:50:44',297339,'image/jpeg'),
	(297,47,'images/3UNRR3f4rXi6VkDOXHVbgi37WvXu0rd7JuQGilnm.jpeg','image',0,'',0,'material:horizontal','2018-08-22 22:46:45','2018-08-22 22:46:45',318281,'image/jpeg'),
	(300,55,'images/mQX9gIIPrpXzQXioUKMgSPmT9KIRcsJbif0jf0SG.jpeg','image',0,'',0,'material:vertical','2018-08-23 09:29:45','2018-08-23 09:29:45',142711,'image/jpeg'),
	(301,146,'images/AViSPfP11wRZm6Uu3J3oFyI1Q1TGieZ7AhMFlCeP.jpeg','image',0,'',0,'material:horizontal','2018-08-23 10:54:28','2018-08-23 10:54:28',1554555,'image/jpeg'),
	(302,48,'images/aYNgd05Bt3W784i1GS6ZhvEGb8Y493r4fnnwBXvF.jpeg','image',0,'',0,'material:vertical','2018-08-23 14:28:39','2018-08-23 14:28:39',234198,'image/jpeg'),
	(303,49,'images/0MsLz8w8QiDHWGYAZCPaUzTVMivSiDHSf89hsRIZ.jpeg','image',0,'',0,'material:horizontal','2018-08-23 15:21:06','2018-08-23 15:21:06',702610,'image/jpeg'),
	(304,86,'images/sy63kMFEBHqm90XtN8F2qdoLHNc0xY2j9ASqq8jh.jpeg','image',0,'',0,'material:vertical','2018-08-23 15:22:47','2018-08-23 15:22:47',110718,'image/jpeg'),
	(305,86,'images/VMFI840qlSIekDaXmZwjJOGSNOcOHeemuAI694Yt.jpeg','image',0,'',0,'material:vertical','2018-08-23 15:24:36','2018-08-23 15:24:36',109561,'image/jpeg'),
	(306,49,'videos/20180823152602iAWcCbYX3K.mp4','video',6,'images/video_thumbnail_1535009162_pjFQzQbbBZ.jpg',0,'material:vertical','2018-08-23 15:26:02','2018-08-23 15:26:02',14496855,'video/mp4'),
	(307,49,'videos/20180823153316NbcNHqCoRy.mp4','video',6,'images/video_thumbnail_1535009596_3sUqSQlpjC.jpg',0,'material:vertical','2018-08-23 15:33:16','2018-08-23 15:33:16',14496855,'video/mp4'),
	(309,121,'videos/20180823201819oLOc3Lr01X.mov','video',11,'images/video_thumbnail_1535026699_mbCwa8aJSq.jpg',0,'material:vertical','2018-08-23 20:18:19','2018-08-23 20:18:19',978110,'video/quicktime'),
	(312,47,'videos/20180824001250bE5pOEuLlU.mov','video',87,'images/video_thumbnail_1535040770_M9CrlDU1bn.jpg',0,'material:vertical','2018-08-24 00:12:50','2018-08-24 00:12:50',8138651,'video/quicktime'),
	(314,47,'images/4Ufsg46xdpuT3uEbIp5aVHhgEst65ymPNhjy6DSX.jpeg','image',0,'',0,'material:vertical','2018-08-24 00:13:38','2018-08-24 00:13:38',200824,'image/jpeg'),
	(315,47,'images/8T8bvQejuN1GB60GAb1dVxumf4cIZg165s9N0yJL.jpeg','image',0,'',0,'material:vertical','2018-08-24 00:13:54','2018-08-24 00:13:54',181979,'image/jpeg'),
	(316,46,'images/rOSHItqumXnXvQpbwSyMFq5IcuHSEkozoLSP00BS.jpeg','image',0,'',0,'material:vertical','2018-08-24 10:16:03','2018-08-24 10:16:03',359813,'image/jpeg'),
	(322,121,'videos/20180824140135MiHR0C6ubj.mov','video',10,'images/video_thumbnail_1535090495_LnHWCvCJ63.jpg',0,'material:vertical','2018-08-24 14:01:35','2018-08-24 14:01:35',1030995,'video/quicktime'),
	(323,150,'images/YjyIWMdIw5o5n3bvKtPC8jCazunpyH4qku43vg6e.jpeg','image',0,'',0,'material:horizontal','2018-08-24 15:29:23','2018-08-24 15:29:23',202551,'image/jpeg'),
	(324,121,'images/hkqqeKsaNXhVCF0XWwo71LEPqyzJcScC7c7HS3TM.jpeg','image',0,'',0,'material:vertical','2018-08-24 16:04:46','2018-08-24 16:04:46',94328,'image/jpeg'),
	(325,121,'images/Csmclho3OxQdb1SO2OQZAnslUL8HhE56aGUfS94E.jpeg','image',0,'',0,'material:vertical','2018-08-24 16:04:57','2018-08-24 16:04:57',83294,'image/jpeg'),
	(326,118,'videos/20180824170004wRB1N0AOgO.mov','video',87,'images/video_thumbnail_1535101204_wr89az7250.jpg',0,'material:vertical','2018-08-24 17:00:04','2018-08-24 17:00:04',8145500,'video/quicktime'),
	(328,158,'videos/20180825102750J3HYjOCnuP.mp4','video',59,'images/video_thumbnail_1535164070_pfmNQ4PoBb.jpg',0,'material:horizontal','2018-08-25 10:27:50','2018-08-25 10:27:50',5781876,'video/mp4'),
	(329,158,'videos/201808251029066iuq877BcQ.mp4','video',85,'images/video_thumbnail_1535164146_N42jce3Opf.jpg',0,'material:horizontal','2018-08-25 10:29:06','2018-08-25 10:29:06',14138998,'video/mp4'),
	(330,49,'images/PmUBZR5ugCaKPZfRBp24tA2pFF2ArjB1RxV0uuHf.jpeg','image',0,'',0,'slideshow_images:2','2018-08-25 12:59:30','2018-08-25 12:59:57',36783,'image/jpeg'),
	(334,46,'images/SpKkysSfEZF2ynO49NaL1AAU2S7PEMIbAkyqORJz.jpeg','image',0,'',0,'material:vertical','2018-08-25 13:13:48','2018-08-25 13:13:48',273261,'image/jpeg'),
	(335,99,'images/ZI2zAnARyKX6RK4fU7jnyBX4lKy3un0nUqvyaEYa.jpeg','image',0,'',0,'material:horizontal','2018-08-25 13:51:09','2018-08-25 13:51:09',522621,'image/jpeg'),
	(336,99,'images/mMVOUWK1XBTl09rrnzyBPhmprzVuVec5GUpL4re1.jpeg','image',0,'',0,'material:horizontal','2018-08-25 13:52:44','2018-08-25 13:52:44',248395,'image/jpeg'),
	(337,99,'images/Nx5hMWYKutYkYdOkMPA4AMI3h0xMAzOMoXMIVLix.jpeg','image',0,'',0,'material:horizontal','2018-08-25 13:54:23','2018-08-25 13:54:23',517027,'image/jpeg'),
	(338,50,'images/bbsVakoVFCr1lZeE6xpHRJH5Qgec80nE1kD4RIs0.jpeg','image',0,'',0,'slideshow_images:40','2018-08-25 18:34:28','2018-08-25 18:35:10',504983,'image/jpeg'),
	(339,50,'images/TcOd65OTzA9HdXia66xyaRNeGdCXuo4cbLkMAcO7.jpeg','image',0,'',0,'slideshow_images:40','2018-08-25 18:34:50','2018-08-25 18:35:10',669348,'image/jpeg'),
	(340,50,'images/in4nEnES3RuZbirjbXhkPAenkylbRqoYrdD17b0z.jpeg','image',0,'',0,'slideshow_images:40','2018-08-25 18:35:03','2018-08-25 18:35:10',424046,'image/jpeg'),
	(341,48,'images/7Tx6cemos55FWTPgYSeWc8tbPzrIfJTvFjrYGw8a.jpeg','image',0,'',0,'material:vertical','2018-08-25 21:43:59','2018-08-25 21:43:59',505081,'image/jpeg'),
	(342,167,'videos/20180826224654JquzsSgXNN.mp4','video',11,'images/video_thumbnail_1535294814_dj7Nm5Kz5y.jpg',0,'material:horizontal','2018-08-26 22:46:54','2018-08-26 22:46:54',1640914,'video/mp4'),
	(343,46,'images/9YcFwWjxcM5cLxNCVantsRBmivp983iDEsgQQRHl.jpeg','image',0,'',0,'material:horizontal','2018-08-27 10:09:25','2018-08-27 10:09:25',122231,'image/jpeg'),
	(344,50,'images/tsTTOtxwu9fDnl3fuWBGQDoJoceBSVimUdEYeGoz.jpeg','image',0,'',0,'slideshow_images:46','2018-08-27 11:29:58','2018-08-27 11:38:04',504983,'image/jpeg'),
	(345,50,'images/3rAmwavffYaL8gqgz2BNqEydd8ddz1Mo7yPAe22o.jpeg','image',0,'',0,'slideshow_images:46','2018-08-27 11:30:30','2018-08-27 11:38:04',768137,'image/jpeg'),
	(346,50,'images/dX1DyrWLZYyegidnwYbBWD0A9OVjhctDji1YvvjM.jpeg','image',0,'',0,'slideshow_images:46','2018-08-27 11:31:02','2018-08-27 11:38:04',495039,'image/jpeg'),
	(348,60,'images/tHvZLeBDBY9ac5QlZDm68GNwjHkV6UBJ3uU2NjKv.png','image',0,'',0,'material:vertical','2018-08-27 19:36:43','2018-08-27 19:36:43',52257,'image/png'),
	(349,46,'videos/20180828105829d82EJFOlAl.mp4','video',11,'images/video_thumbnail_1535425109_ryy9NR0KAQ.jpg',0,'material:horizontal','2018-08-28 10:58:29','2018-08-28 10:58:29',547835,'video/mp4'),
	(350,182,'images/o59kS9MeCLkaP3Hw6UnCbX8uvPnO0ojuzlQIOarZ.jpeg','image',0,'',0,'material:vertical','2018-08-28 14:39:46','2018-08-28 14:39:46',348118,'image/jpeg'),
	(351,184,'images/3jlyskilcbHXfterBCaNg5z74KgMVOHuotdph8s6.png','image',0,'',0,'material:vertical','2018-08-28 14:57:38','2018-08-28 14:57:38',2307,'image/png'),
	(352,184,'images/CaNRDtFv9c7E9T3zDG75giLShecENq0kw0Y4hY6O.jpeg','image',0,'',0,'material:vertical','2018-08-28 14:59:00','2018-08-28 14:59:00',459753,'image/jpeg'),
	(353,189,'images/bIrme6eGDw3yl4VxlGeOZD2GCsHi2AWsDJpwMhx7.jpeg','image',0,'',0,'material:horizontal','2018-08-28 21:23:38','2018-08-28 21:23:38',140250,'image/jpeg'),
	(354,180,'videos/201808291047202Za7pLJFlC.mp4','video',31,'images/video_thumbnail_1535510840_DYT9kq5nA7.jpg',0,'material:horizontal','2018-08-29 10:47:20','2018-08-29 10:47:20',2172244,'video/mp4'),
	(355,47,'images/W2c9rxrm6O7E727KMGoNsuvpSYhaq4W3BSaJn49X.jpeg','image',0,'',0,'material:horizontal','2018-08-29 18:10:28','2018-08-29 18:10:28',68063,'image/jpeg'),
	(356,60,'images/yr8h9Q5cImstCiKjSWujMU8DELaful3gYJGVh0OA.png','image',0,'',0,'material:vertical','2018-08-29 23:24:45','2018-08-29 23:24:45',52257,'image/png'),
	(357,86,'images/M4pWfQ7gDXIpgaTjcUC3yEeywGeMeBco5IbAdcJz.jpeg','image',0,'',0,'material:horizontal','2018-08-30 11:09:17','2018-08-30 11:09:17',216225,'image/jpeg'),
	(359,49,'images/PWuMNEUOE4aPfcnUj9BRtBgDjufE65HTMOYXRSa1.jpeg','image',0,'',0,'material:horizontal','2018-08-31 13:10:22','2018-08-31 13:10:22',620182,'image/jpeg'),
	(360,46,'images/ERIZ25DCMyqF1FFb6ESYBbPIlb5NKPW6W0yrlLWv.jpeg','image',0,'',0,'material:vertical','2018-08-31 15:53:15','2018-08-31 15:53:15',90130,'image/jpeg'),
	(364,198,'videos/20180902105003EadMSyvffu.mov','video',15,'images/video_thumbnail_1535856603_lWw8FJi7OO.jpg',0,'material:horizontal','2018-09-02 10:50:03','2018-09-02 10:50:03',1250286,'video/quicktime'),
	(365,118,'images/oh5HjoCWlU50d0Zjmaz2F5aJDSjkGr2isuePHj1z.jpeg','image',0,'',0,'material:horizontal','2018-09-02 11:18:18','2018-09-02 11:18:18',855698,'image/jpeg'),
	(366,110,'images/z3cMGqkrMRN8uZfqzHUkC4J1ZFUl8VH4z6GLvgcM.jpeg','image',0,'',0,'material:vertical','2018-09-02 15:39:17','2018-09-02 15:39:17',49119,'image/jpeg'),
	(367,110,'videos/201809021541474osXSAGxaN.mp4','video',11,'images/video_thumbnail_1535874107_tQk7SqIrqB.jpg',0,'material:vertical','2018-09-02 15:41:47','2018-09-02 15:41:47',1032673,'video/mp4'),
	(369,70,'videos/20180903105618DVGyvFpAUm.mov','video',15,'images/video_thumbnail_1535943378_eWve26MS6E.jpg',0,'material:vertical','2018-09-03 10:56:18','2018-09-03 10:56:18',7830752,'video/quicktime'),
	(370,201,'images/xBYf7Aqoh1q5Gb8BxN02aPN3Zg3jMmCJpb8hR2M7.jpeg','image',0,'',0,'material:vertical','2018-09-03 13:38:32','2018-09-03 13:38:32',411209,'image/jpeg'),
	(372,46,'images/zYe17F5O6jgpNQi1sNrgiohFSO8gQElVMnu3ISne.jpeg','image',0,'',0,'material:vertical','2018-09-03 14:58:06','2018-09-03 14:58:06',313319,'image/jpeg'),
	(373,204,'images/rYFovaWk36QyPLMGmotu9SrfxrarS6FWycbuLgTb.jpeg','image',0,'',0,'material:vertical','2018-09-04 04:56:10','2018-09-04 04:56:10',224888,'image/jpeg'),
	(374,204,'images/Xb92pp0SXTv9Cyi9Vh85EwwbSNeSz0Syf3H2Zw0x.jpeg','image',0,'',0,'material:vertical','2018-09-04 04:56:43','2018-09-04 04:56:43',238553,'image/jpeg'),
	(375,91,'images/75NHfXxZ0WCKcabycRvPBu9nNYc5TLdVGjmhqlPO.jpeg','image',0,'',0,'material:vertical','2018-09-04 16:50:18','2018-09-04 16:50:18',114895,'image/jpeg'),
	(376,91,'images/Qmf3Z6EDsgba21ouF0AAwc7c2l2JCHg8lWn0FWQY.jpeg','image',0,'',0,'material:horizontal','2018-09-04 16:51:42','2018-09-04 16:51:42',122129,'image/jpeg'),
	(385,205,'images/D4TkAqsPKr6BPnV6egSxEjkhoI2KKbrQqQDeG2di.jpeg','image',0,'',0,'material:horizontal','2018-09-05 19:38:59','2018-09-05 19:38:59',113034,'image/jpeg'),
	(386,207,'images/TRSTmE5aeTMq8GTT7seU4v4ZHkcF93yd6upkpevY.jpeg','image',0,'',0,'material:vertical','2018-09-06 10:03:12','2018-09-06 10:03:12',378111,'image/jpeg'),
	(387,125,'videos/20180906161154RvykGazFNA.mov','video',10,'images/video_thumbnail_1536221513_czCQY04A78.jpg',0,'material:horizontal','2018-09-06 16:11:54','2018-09-06 16:11:54',5551142,'video/quicktime'),
	(388,211,'images/iNkNGxWyqofIVAo1CHiHDsrcHNfVJJlZaj87rT8i.jpeg','image',0,'',0,'material:vertical','2018-09-07 10:13:39','2018-09-07 10:13:39',774459,'image/jpeg'),
	(389,69,'images/vaOSQxr4B6D5K7L2apVy3RSnfPPeDD9hn21W9lqN.jpeg','image',0,'',0,'material:vertical','2018-09-07 14:01:30','2018-09-07 14:01:30',434221,'image/jpeg'),
	(390,97,'images/mnEwymJRPgJWnDZ2U2rXiAWoAEmOLhXNaNnaihZ9.jpeg','image',0,'',0,'material:horizontal','2018-09-07 14:32:41','2018-09-07 14:32:41',1563779,'image/jpeg'),
	(391,97,'images/Wd4XedsSzG1aFSo3bsTnOPkiDrcSbHGLUJGk1lj2.jpeg','image',0,'',0,'material:horizontal','2018-09-07 14:33:32','2018-09-07 14:33:32',1433198,'image/jpeg'),
	(392,97,'images/6vv7895wKfxqC6vYy1xU3uFYOIvFQdilZbUeQWK8.jpeg','image',0,'',0,'material:horizontal','2018-09-07 14:33:43','2018-09-07 14:33:43',1934302,'image/jpeg'),
	(393,212,'images/sakjs8jUE67RZy7WUaTCxJTJIlpk8kLkQ62l93XN.jpeg','image',0,'',0,'material:vertical','2018-09-07 15:42:32','2018-09-07 15:42:32',104496,'image/jpeg'),
	(394,48,'images/xjuBxw1mDQa1e0wlBYJ0HlgnGnhbr8r62BCP8GRE.jpeg','image',0,'',0,'material:vertical','2018-09-07 16:28:55','2018-09-07 16:28:55',347357,'image/jpeg'),
	(395,213,'images/NIEoskS61CHf8BVYZ7CJarGugYZhYVyh6qywtgCC.jpeg','image',0,'',0,'material:horizontal','2018-09-08 10:48:12','2018-09-08 10:48:12',301541,'image/jpeg'),
	(399,46,'images/qL0a80NZojvjCy91Q6wJ3kaUpW6kV5hedx5A9X3V.jpeg','image',0,'',0,'material:horizontal','2018-09-08 15:49:58','2018-09-08 15:49:58',207940,'image/jpeg'),
	(417,46,'images/o28IxR3Pg3X1kbPHKDQwzMqrtxQfapH0TxreMgCA.jpeg','image',0,'',0,'material:horizontal','2018-09-09 14:40:31','2018-09-09 14:40:31',126825,'image/jpeg'),
	(418,215,'images/8Vi31t8Xl1w14ATEXsqs0QQmARSinPKUDC7sjQh1.jpeg','image',0,'',0,'material:horizontal','2018-09-09 15:53:11','2018-09-09 15:53:11',64233,'image/jpeg'),
	(419,218,'images/286rlFq3W5qUnXKu5wYFukR80OwvTKQduQ8RwWcE.jpeg','image',0,'',0,'material:vertical','2018-09-10 14:10:44','2018-09-10 14:10:44',199124,'image/jpeg'),
	(420,46,'videos/20180910145924kTHYliYeNE.mp4','video',5,'images/video_thumbnail_1536562764_inn5JwwFvM.jpg',0,'material:horizontal','2018-09-10 14:59:24','2018-09-10 14:59:24',392128,'video/mp4'),
	(421,46,'images/jJmaJGtFaOcY84gSXXOKVEdQgLuNkq0qMLL8o29Y.jpeg','image',0,'',0,'material:vertical','2018-09-10 15:06:11','2018-09-10 15:06:11',174283,'image/jpeg'),
	(423,46,'images/qOeWtYHzEcjPlSxlmKPuukWNrdzo0UTfiLV3i53t.jpeg','image',0,'',0,'material:vertical','2018-09-11 00:14:48','2018-09-11 00:14:48',119999,'image/jpeg'),
	(424,46,'images/4CSwWbawVtFHOBeTfjW4YOpiSeV50M8IAso9Od6s.jpeg','image',0,'',0,'material:vertical','2018-09-11 00:15:18','2018-09-11 00:15:18',232118,'image/jpeg'),
	(425,46,'videos/20180911113345BRzH6TTfUk.mp4','video',140,'images/video_thumbnail_1536636825_WZylKPv14i.jpg',0,'material:horizontal','2018-09-11 11:33:45','2018-09-11 11:33:45',11707153,'video/mp4'),
	(426,224,'images/xE9A17o5KpdCGPHxA1jaWV5pACJDWksCXjivQzn2.jpeg','image',0,'',0,'material:vertical','2018-09-11 13:23:02','2018-09-11 13:23:02',455793,'image/jpeg'),
	(427,46,'images/g7b6JSDM9dSkyvGDRqJUIqQjrkB962fAKMwlENKx.jpeg','image',0,'',0,'slideshow_images:41','2018-09-11 13:35:32','2018-09-11 14:53:20',172735,'image/jpeg'),
	(428,46,'images/5llmVUbfZ9Yk9xHQupfIdhlLbMQggoKzG8zYFTas.jpeg','image',0,'',0,'slideshow_images:41','2018-09-11 13:36:27','2018-09-11 14:53:20',321970,'image/jpeg'),
	(432,229,'images/SyETG4UzkWBnaos4T1x2kY4zi8udHbNKnyyrYOQb.jpeg','image',0,'',0,'material:horizontal','2018-09-12 11:32:31','2018-09-12 11:32:31',217024,'image/jpeg'),
	(433,234,'videos/201809121440076D6Iu4zl7U.mp4','video',11,'images/video_thumbnail_1536734406_qWgLhQKXyb.jpg',0,'material:horizontal','2018-09-12 14:40:07','2018-09-12 14:40:07',1288975,'video/mp4'),
	(434,234,'images/SJ426HNNcWshCFD60sXrejtMevu3DODQw3foEiuj.jpeg','image',0,'',0,'material:horizontal','2018-09-12 14:40:36','2018-09-12 14:40:36',85297,'image/jpeg'),
	(435,242,'images/kVPozNNbMtC8orClmrREbHuGVzhHy6ZHrx28c6Dx.jpeg','image',0,'',0,'material:vertical','2018-09-12 20:09:23','2018-09-12 20:09:23',355051,'image/jpeg'),
	(447,47,'images/X5iByXXxuY4tTaVhxKTdGD5D96bPGomEWuixxYM4.png','image',0,'',0,'material:vertical','2018-09-13 12:04:41','2018-09-13 12:04:41',112234,'image/png'),
	(461,55,'images/sCnpZdShWJ6G6AZmhKBD20w1oUuXXcOarv1jBWlD.jpeg','image',0,'',0,'material:vertical','2018-09-13 12:16:29','2018-09-13 12:16:29',60834,'image/jpeg'),
	(462,237,'images/zI1EMCgCOaGMFQLzjLPDGzUKnX0LYjmIJEND1eaB.jpeg','image',0,'',0,'material:vertical','2018-09-13 12:16:29','2018-09-13 12:16:29',72828,'image/jpeg'),
	(466,48,'images/xgNuEA1vVCY9uUu5TIaJWQOv2nSq2rJi7JQizQiH.jpeg','image',0,'',0,'material:vertical','2018-09-13 12:25:08','2018-09-13 12:25:08',528242,'image/jpeg'),
	(469,246,'images/5cQW5GRMpuS2KwhPCsrBvIuNjaRLiZlOlqa1Jduu.jpeg','image',0,'',0,'material:vertical','2018-09-13 15:06:51','2018-09-13 15:06:51',203356,'image/jpeg'),
	(470,246,'images/d33Tr0rcdfBFXz16t1fNjxkO9vKgit0wfnnhbLST.jpeg','image',0,'',0,'material:vertical','2018-09-13 15:13:43','2018-09-13 15:13:43',163799,'image/jpeg'),
	(471,121,'images/N8t7bwD5RFNDXfvENQVPA6eqxx9G2Nulux1iEThf.jpeg','image',0,'',0,'material:vertical','2018-09-13 19:50:02','2018-09-13 19:50:02',117780,'image/jpeg'),
	(473,239,'images/t7mwqSFJOfSHdTmkow5bCgbXA7GbWdRf58fQNY3v.jpeg','image',0,'',0,'material:horizontal','2018-09-13 20:39:05','2018-09-13 20:39:05',126878,'image/jpeg'),
	(474,239,'images/G1gE2Yo2DsLfbdIaNk7ZqROwNFmfJ1iMrOighZxA.jpeg','image',0,'',0,'material:vertical','2018-09-13 20:39:42','2018-09-13 20:39:42',19488,'image/jpeg'),
	(475,239,'images/T3Eg3LkT8jxxuKN0UKK0JurmZmoIboDcIHjahBuf.jpeg','image',0,'',0,'material:vertical','2018-09-13 20:39:56','2018-09-13 20:39:56',66518,'image/jpeg'),
	(476,55,'images/cqJ2acK2MFBQNJucaIsmWvNdBFFBiRcOhxtbs4y9.jpeg','image',0,'',0,'material:vertical','2018-09-14 08:03:49','2018-09-14 08:03:49',322722,'image/jpeg'),
	(477,55,'images/yqtPMtevG2181B7oLbB33vuEKjVPU3NLHqfMfRIS.jpeg','image',0,'',0,'material:horizontal','2018-09-14 08:04:27','2018-09-14 08:04:27',76411,'image/jpeg'),
	(478,46,'videos/20180915003558EmPahoATYH.mp4','video',51,'images/video_thumbnail_1536942957_p5hKSYOZKK.jpg',0,'material:horizontal','2018-09-15 00:35:58','2018-09-15 00:35:58',3082409,'video/mp4'),
	(479,46,'videos/20180915135354PJtNNth0cr.mp4','video',31,'images/video_thumbnail_1536990834_YVtolBtMol.jpg',0,'material:horizontal','2018-09-15 13:53:54','2018-09-15 13:53:54',2172244,'video/mp4'),
	(480,86,'images/IneIiCtPMWgRn1sJPmGHqddEFyrAZ3JdHNTwB1lH.jpeg','image',0,'',0,'material:vertical','2018-09-15 15:30:10','2018-09-15 15:30:10',215032,'image/jpeg'),
	(481,46,'images/PynG4YrlTg8KrTXuRIMohGLUkXEUvt0ESHzVuWzC.jpeg','image',0,'',0,'material:horizontal','2018-09-15 16:02:39','2018-09-15 16:02:39',53957,'image/jpeg'),
	(482,263,'videos/20180915162112unBHkCdtvI.mp4','video',11,'images/video_thumbnail_1536999672_moQ1t4qdY3.jpg',0,'material:horizontal','2018-09-15 16:21:12','2018-09-15 16:21:12',711712,'video/mp4'),
	(483,263,'videos/20180915162123wgbYp5QKmz.mp4','video',11,'images/video_thumbnail_1536999683_QTpoGKKuvn.jpg',0,'material:horizontal','2018-09-15 16:21:23','2018-09-15 16:21:23',711712,'video/mp4'),
	(484,263,'images/vIGJSzEfsAkhvzavgNolNCfhamA6snWrgDYePIKF.jpeg','image',0,'',0,'material:vertical','2018-09-15 17:36:33','2018-09-15 17:36:33',199602,'image/jpeg'),
	(485,237,'images/6ueyKVDVZvi76020qBDp8OsjUOyG1W19712RcLEl.jpeg','image',0,'',0,'material:vertical','2018-09-15 18:30:24','2018-09-15 18:30:24',183912,'image/jpeg'),
	(486,48,'images/wc45SGZPMKQnXj7Wvj3qtGEqX1DUWR98cSdIegaH.jpeg','image',0,'',0,'material:vertical','2018-09-15 18:35:01','2018-09-15 18:35:01',71931,'image/jpeg'),
	(487,266,'images/oTP5KW02bTi3Sy5kTU1LETGl34NMYjpPcIWLFXDK.jpeg','image',0,'',0,'material:vertical','2018-09-15 23:24:38','2018-09-15 23:24:38',272184,'image/jpeg'),
	(516,55,'images/CXZdOonRvTsA5BgOWDb4zePSpdRp16vSFNZjmYLs.jpeg','image',0,'',0,'material:vertical','2018-09-16 19:24:21','2018-09-16 19:24:21',188087,'image/jpeg'),
	(521,239,'images/PxZlFdLHocpeuu28RYRQwhPLs9eU7UuXfP08YqFp.jpeg','image',0,'',0,'material:vertical','2018-09-16 19:43:12','2018-09-16 19:43:12',81432,'image/jpeg'),
	(522,46,'images/18zImqTnnJTXPoASu8GHf8HU3iuvdIGWoYRvJVWw.jpeg','image',0,'',0,'material:vertical','2018-09-16 19:49:15','2018-09-16 19:49:15',489899,'image/jpeg'),
	(523,55,'images/GZu0j85d7jh4lJJ43qXaNOUXjOUQxLmwLdm0Gz3y.jpeg','image',0,'',0,'material:vertical','2018-09-16 19:49:48','2018-09-16 19:49:48',119999,'image/jpeg'),
	(525,273,'images/H2MoGpCMgRQSJBXnUq99OgGqYB2Wo7EhtUjTiAtr.jpeg','image',0,'',0,'material:horizontal','2018-09-17 10:34:24','2018-09-17 10:34:24',132577,'image/jpeg'),
	(526,273,'images/ciz35N10hWaUkwTemABz8bh7vwgCQ0UdPMOag6v6.jpeg','image',0,'',0,'material:vertical','2018-09-17 10:34:48','2018-09-17 10:34:48',96866,'image/jpeg'),
	(527,273,'images/OBpIC7GfJTzyEAskwZFjoKBx0fElPIwmpnOGL0gL.jpeg','image',0,'',0,'material:horizontal','2018-09-17 10:35:08','2018-09-17 10:35:08',454764,'image/jpeg'),
	(528,53,'images/ZryIVZ802z8XscqoxdGC0wgVUMwa47KNWgLGHa17.jpeg','image',0,'',0,'material:horizontal','2018-09-26 10:43:12','2018-09-26 10:43:12',2336,'image/jpeg'),
	(529,53,'images/N4nwN3tj5gumayWOwguyjSz5Lq17aRXVJW8fwgcN.jpeg','image',0,'',0,'material:horizontal','2018-10-06 14:38:55','2018-10-06 14:38:55',14377,'image/jpeg'),
	(530,53,'images/gaDWeie61BbjLnEwvHWbvkzT6xLcVz2HOQvQp2oF.jpeg','image',0,'',1,'','2018-10-26 10:24:11','2018-10-26 10:24:11',59409,'image/jpeg'),
	(531,53,'images/QRqjycN7KC6sd6K5ZwiAlEJgsluEKrCVycm1JqiV.jpeg','image',0,'',1,'','2018-10-26 10:27:07','2018-10-26 10:27:07',59409,'image/jpeg'),
	(532,53,'images/fZ0VZcCdLmGUiYDkdRjUFlxkjbWnGLUrrPu8cHpg.jpeg','image',0,'',1,'','2018-10-26 10:55:40','2018-10-26 10:55:40',59409,'image/jpeg'),
	(533,53,'images/scEjVmfFvwvY64REzc0W8ONLvdHqQFjIBKr3MpUf.jpeg','image',0,'',1,'','2018-10-26 10:55:52','2018-10-26 11:07:36',59409,'image/jpeg'),
	(534,53,'images/O4RqklYh1DvV8d2P5ZEzYSU56OJiujEkDUG6ZOjC.jpeg','image',0,'',0,'store_slideshow_images','2018-10-26 11:07:27','2018-10-31 13:29:50',26189,'image/jpeg'),
	(535,53,'images/LHaqbJdhncv273ZtSDP3mhAOOuzzGoAYfSMrTEFn.png','image',0,'',0,'material:horizontal','2018-11-08 14:47:36','2018-11-08 14:47:36',167637,'image/png'),
	(537,53,'images/k1QBXAeIyEx9JaxHw5Y3G4CwOhh8JFbjkrdt0sb8.jpeg','image',0,'',0,'material:vertical','2018-11-08 14:53:14','2018-11-08 14:53:14',95588,'image/jpeg'),
	(538,53,'images/yMKK8sGVJpFnLlhDV5OOaXDczgbYBHZ1rmQ0EPU4.png','image',0,'',0,'material:horizontal','2018-11-08 14:53:29','2018-11-08 14:53:29',167637,'image/png'),
	(539,53,'images/1uj40SGeqbfCpjOhH9gMVODHNAoDVKFrXGW55G7A.png','image',0,'',0,'material:horizontal','2018-11-08 14:53:37','2018-11-08 14:53:37',167637,'image/png'),
	(540,53,'images/bh75d7Y3qDtsYvIgCPBAAp64urctZD9h3lFi9jMg.jpeg','image',0,'',0,'material:vertical','2018-11-08 14:54:02','2018-11-08 14:54:02',10654,'image/jpeg'),
	(541,53,'videos/20181108150609Cn2jXu8COa.mov','video',10,'images/video_thumbnail_1541660769_DU1AH2kzD1.jpg',0,'material:vertical','2018-11-08 15:06:09','2018-11-08 15:06:09',929584,'video/quicktime'),
	(542,53,'videos/20181108150633i1nliSbiCj.mp4','video',8,'images/video_thumbnail_1541660793_RdHXZHMB3N.jpg',0,'material:horizontal','2018-11-08 15:06:33','2018-11-08 15:06:33',1195614,'video/mp4'),
	(543,53,'images/jKiZVO8tKeZgyHcxl4hnSITb1zqNnTjBnnS0YNWQ.jpeg','image',0,'',0,'material:vertical','2018-11-08 15:10:59','2018-11-08 15:10:59',48739,'image/jpeg'),
	(544,53,'images/GrPE4ENJPf1DXlB6LRrRO0iPsekpDH1vwannaPoz.jpeg','image',0,'',0,'material:vertical','2018-11-08 15:11:26','2018-11-08 15:11:26',48739,'image/jpeg'),
	(545,53,'videos/20181108151133AWr6A15KTL.mov','video',10,'images/video_thumbnail_1541661093_PwKCewfPgs.jpg',0,'material:vertical','2018-11-08 15:11:33','2018-11-08 15:11:33',929584,'video/quicktime');

/*!40000 ALTER TABLE `file_libraries` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table funds
# ------------------------------------------------------------

DROP TABLE IF EXISTS `funds`;

CREATE TABLE `funds` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `money` double(8,2) NOT NULL COMMENT '变化金额',
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '类型：balance(余额)|coin(酷达币)',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '描述',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `funds_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `funds` WRITE;
/*!40000 ALTER TABLE `funds` DISABLE KEYS */;

INSERT INTO `funds` (`id`, `user_id`, `money`, `type`, `description`, `created_at`, `updated_at`)
VALUES
	(1,47,-35.00,'wechat','订单(2018081615245412407): 微信支付','2018-08-16 15:25:10','2018-08-16 15:25:10'),
	(2,53,10000.00,'coin','后台充值','2018-08-16 15:44:13','2018-08-16 15:44:13'),
	(3,53,-70.00,'coin','订单(2018081615433848853): 酷达币支付','2018-08-16 15:44:21','2018-08-16 15:44:21'),
	(4,48,1000.00,'coin','后台充值','2018-08-16 15:46:55','2018-08-16 15:46:55'),
	(5,50,1000.00,'coin','后台充值','2018-08-16 15:47:11','2018-08-16 15:47:11'),
	(6,50,0.00,'coin','后台充值','2018-08-16 15:47:14','2018-08-16 15:47:14'),
	(7,48,-35.00,'coin','订单(2018081616072064137): 酷达币支付','2018-08-16 16:07:28','2018-08-16 16:07:28'),
	(8,47,100.00,'coin','后台充值','2018-08-16 16:09:39','2018-08-16 16:09:39'),
	(9,47,500.00,'coin','后台充值','2018-08-16 16:11:47','2018-08-16 16:11:47'),
	(10,47,-105.00,'coin','订单(2018081616135714513): 酷达币支付','2018-08-16 16:14:03','2018-08-16 16:14:03'),
	(11,47,0.00,'balance','广告收益: 设备号「YB000003」','2018-08-16 16:16:01','2018-08-16 16:16:01'),
	(12,46,0.00,'balance','广告收益: 设备号「YB000003」','2018-08-16 16:16:01','2018-08-16 16:16:01'),
	(13,50,-35.00,'coin','订单(2018081616213199393): 酷达币支付','2018-08-16 16:21:42','2018-08-16 16:21:42'),
	(14,48,-70.00,'coin','订单(2018081617044036211): 酷达币支付','2018-08-16 17:04:49','2018-08-16 17:04:49'),
	(15,48,-210.00,'coin','订单(2018081617074668737): 酷达币支付','2018-08-16 17:07:50','2018-08-16 17:07:50'),
	(16,50,-35.00,'coin','订单(2018081617091440082): 酷达币支付','2018-08-16 17:09:27','2018-08-16 17:09:27'),
	(17,53,70.00,'coin','取消订单(2018081615433848853): 酷达币返还','2018-08-16 17:37:32','2018-08-16 17:37:32'),
	(18,50,-35.00,'coin','订单(2018081617400117791): 酷达币支付','2018-08-16 17:40:13','2018-08-16 17:40:13'),
	(19,48,-105.00,'coin','订单(2018081617565487685): 酷达币支付','2018-08-16 17:56:58','2018-08-16 17:56:58'),
	(20,50,-35.00,'coin','订单(2018081618043969914): 酷达币支付','2018-08-16 18:04:50','2018-08-16 18:04:50'),
	(21,50,-35.00,'coin','订单(2018081618284339368): 酷达币支付','2018-08-16 18:28:46','2018-08-16 18:28:46'),
	(22,48,-70.00,'coin','订单(2018081619013538043): 酷达币支付','2018-08-16 19:01:40','2018-08-16 19:01:40'),
	(23,50,-35.00,'coin','订单(2018081619325538249): 酷达币支付','2018-08-16 19:33:07','2018-08-16 19:33:07'),
	(24,50,-105.00,'coin','订单(2018081620211030900): 酷达币支付','2018-08-16 20:21:19','2018-08-16 20:21:19'),
	(25,48,-105.00,'coin','订单(2018081621000514226): 酷达币支付','2018-08-16 21:00:19','2018-08-16 21:00:19'),
	(26,50,-70.00,'coin','订单(2018081621064608891): 酷达币支付','2018-08-16 21:06:50','2018-08-16 21:06:50'),
	(27,48,-35.00,'coin','订单(2018081621122932597): 酷达币支付','2018-08-16 21:12:33','2018-08-16 21:12:33'),
	(28,47,-140.00,'coin','订单(2018081623361182288): 酷达币支付','2018-08-16 23:36:23','2018-08-16 23:36:23'),
	(29,46,0.00,'balance','广告收益: 设备号「YB000004」','2018-08-16 23:37:04','2018-08-16 23:37:04'),
	(30,47,0.00,'balance','广告收益: 设备号「YB000003」','2018-08-16 23:37:04','2018-08-16 23:37:04'),
	(31,46,0.00,'balance','广告收益: 设备号「YB000003」','2018-08-16 23:37:04','2018-08-16 23:37:04'),
	(32,47,-35.00,'coin','订单(2018081623393118975): 酷达币支付','2018-08-16 23:39:37','2018-08-16 23:39:37'),
	(33,53,-70.00,'coin','订单(2018081617382713116): 酷达币支付','2018-08-17 09:10:53','2018-08-17 09:10:53'),
	(34,50,-140.00,'coin','订单(2018081711325118371): 酷达币支付','2018-08-17 11:32:54','2018-08-17 11:32:54'),
	(35,48,-70.00,'coin','订单(2018081711572503620): 酷达币支付','2018-08-17 11:57:38','2018-08-17 11:57:38'),
	(36,50,-35.00,'coin','订单(2018081712331564816): 酷达币支付','2018-08-17 12:33:25','2018-08-17 12:33:25'),
	(37,48,-35.00,'coin','订单(2018081713142193033): 酷达币支付','2018-08-17 13:14:26','2018-08-17 13:14:26'),
	(38,48,-35.00,'coin','订单(2018081713312337880): 酷达币支付','2018-08-17 13:31:26','2018-08-17 13:31:26'),
	(39,48,0.00,'coin','播放项(423)播放异常，被管理员删除，返还酷达币','2018-08-17 13:37:12','2018-08-17 13:37:12'),
	(40,48,0.00,'coin','播放项(422)播放异常，被管理员删除，返还酷达币','2018-08-17 13:37:20','2018-08-17 13:37:20'),
	(41,50,-315.00,'coin','订单(2018081714305229504): 酷达币支付','2018-08-17 14:30:56','2018-08-17 14:30:56'),
	(42,48,-35.00,'coin','订单(2018081714522884928): 酷达币支付','2018-08-17 14:52:31','2018-08-17 14:52:31'),
	(43,47,-70.00,'coin','订单(2018081714514790368): 酷达币支付','2018-08-17 14:53:46','2018-08-17 14:53:46'),
	(44,47,-35.00,'wechat','订单(2018081715161092470): 微信支付','2018-08-17 15:16:27','2018-08-17 15:16:27'),
	(45,50,-35.00,'coin','订单(2018081715195178088): 酷达币支付','2018-08-17 15:20:00','2018-08-17 15:20:00'),
	(46,48,-70.00,'coin','订单(2018081715201920588): 酷达币支付','2018-08-17 15:20:23','2018-08-17 15:20:23'),
	(47,47,70.00,'coin','取消订单(2018081714514790368): 酷达币返还','2018-08-17 15:47:33','2018-08-17 15:47:33'),
	(48,47,-20.00,'wechat','订单(2018081716022712489): 微信支付','2018-08-17 16:02:55','2018-08-17 16:02:55'),
	(49,47,35.00,'wechat','主动取消订单','2018-08-17 16:04:02','2018-08-17 16:04:02'),
	(50,47,-70.00,'coin','订单(2018081716364989238): 酷达币支付','2018-08-17 16:36:57','2018-08-17 16:36:57'),
	(51,47,0.00,'balance','广告收益: 设备号「YB000003」','2018-08-17 16:37:23','2018-08-17 16:37:23'),
	(52,46,0.00,'balance','广告收益: 设备号「YB000003」','2018-08-17 16:37:23','2018-08-17 16:37:23'),
	(53,47,-35.00,'coin','订单(2018081716385283297): 酷达币支付','2018-08-17 16:38:55','2018-08-17 16:38:55'),
	(54,47,35.00,'coin','取消订单(2018081716385283297): 酷达币返还','2018-08-17 16:52:38','2018-08-17 16:52:38'),
	(55,48,-105.00,'coin','订单(2018081717364988674): 酷达币支付','2018-08-17 17:36:52','2018-08-17 17:36:52'),
	(56,48,-20.00,'coin','订单(2018081717391140798): 酷达币支付','2018-08-17 17:39:16','2018-08-17 17:39:16'),
	(57,48,1000.00,'coin','后台充值','2018-08-17 17:40:07','2018-08-17 17:40:07'),
	(58,50,-35.00,'coin','订单(2018081717401910013): 酷达币支付','2018-08-17 17:40:23','2018-08-17 17:40:23'),
	(59,50,1000.00,'coin','后台充值','2018-08-17 17:40:30','2018-08-17 17:40:30'),
	(60,50,0.00,'coin','后台充值','2018-08-17 17:40:32','2018-08-17 17:40:32'),
	(61,48,-105.00,'coin','订单(2018081717391140798): 酷达币支付','2018-08-17 17:40:42','2018-08-17 17:40:42'),
	(62,50,-140.00,'coin','订单(2018081717442766909): 酷达币支付','2018-08-17 17:44:30','2018-08-17 17:44:30'),
	(63,92,150.00,'coin','后台充值','2018-08-17 17:55:30','2018-08-17 17:55:30'),
	(64,48,24.00,'coin','播放项(446)播放异常，被管理员删除，返还酷达币','2018-08-17 18:07:07','2018-08-17 18:07:07'),
	(65,48,24.00,'coin','播放项(445)播放异常，被管理员删除，返还酷达币','2018-08-17 18:10:35','2018-08-17 18:10:35'),
	(66,48,24.00,'coin','播放项(444)播放异常，被管理员删除，返还酷达币','2018-08-17 18:10:44','2018-08-17 18:10:44'),
	(67,48,-35.00,'coin','订单(2018081718404512440): 酷达币支付','2018-08-17 18:40:57','2018-08-17 18:40:57'),
	(68,48,-35.00,'coin','订单(2018081718432678902): 酷达币支付','2018-08-17 18:43:30','2018-08-17 18:43:30'),
	(69,48,0.00,'coin','播放项(452)播放异常，被管理员删除，返还酷达币','2018-08-17 18:48:33','2018-08-17 18:48:33'),
	(70,48,0.00,'coin','播放项(451)播放异常，被管理员删除，返还酷达币','2018-08-17 18:49:15','2018-08-17 18:49:15'),
	(71,48,-35.00,'coin','订单(2018081718510861456): 酷达币支付','2018-08-17 18:51:12','2018-08-17 18:51:12'),
	(72,96,0.00,'coin','订单(2018081720101511061): 酷达币支付','2018-08-17 20:10:52','2018-08-17 20:10:52'),
	(73,50,-35.00,'coin','订单(2018081720433385980): 酷达币支付','2018-08-17 20:43:36','2018-08-17 20:43:36'),
	(74,50,-35.00,'coin','订单(2018081721390801241): 酷达币支付','2018-08-17 21:39:15','2018-08-17 21:39:15'),
	(75,50,-35.00,'coin','订单(2018081721403002541): 酷达币支付','2018-08-17 21:40:33','2018-08-17 21:40:33'),
	(76,53,-1000.00,'coin','转赠给 罗贤斌(10001)','2018-08-18 09:52:28','2018-08-18 09:52:28'),
	(77,46,1000.00,'coin','由 Herbert(10053) 转赠','2018-08-18 09:52:28','2018-08-18 09:52:28'),
	(78,53,-35.00,'coin','订单(2018081809560169583): 酷达币支付','2018-08-18 09:56:35','2018-08-18 09:56:35'),
	(79,69,1000.00,'coin','后台充值','2018-08-18 14:03:20','2018-08-18 14:03:20'),
	(80,69,-140.00,'coin','订单(2018081814043637949): 酷达币支付','2018-08-18 14:04:54','2018-08-18 14:04:54'),
	(81,46,0.00,'balance','广告收益: 设备号「YB000004」','2018-08-18 14:08:17','2018-08-18 14:08:17'),
	(82,47,0.00,'balance','广告收益: 设备号「YB000003」','2018-08-18 14:08:17','2018-08-18 14:08:17'),
	(83,46,0.00,'balance','广告收益: 设备号「YB000003」','2018-08-18 14:08:17','2018-08-18 14:08:17'),
	(84,46,1000.00,'coin','后台充值','2018-08-18 14:47:04','2018-08-18 14:47:04'),
	(85,46,-70.00,'coin','订单(2018081814472538561): 酷达币支付','2018-08-18 14:48:17','2018-08-18 14:48:17'),
	(86,46,0.00,'balance','广告收益: 设备号「YB000004」','2018-08-18 14:49:18','2018-08-18 14:49:18'),
	(87,47,0.00,'balance','广告收益: 设备号「YB000003」','2018-08-18 14:49:18','2018-08-18 14:49:18'),
	(88,46,0.00,'balance','广告收益: 设备号「YB000003」','2018-08-18 14:49:18','2018-08-18 14:49:18'),
	(89,53,70.00,'coin','取消订单(2018081617382713116): 酷达币返还','2018-08-18 18:30:01','2018-08-18 18:30:01'),
	(90,46,1000.00,'coin','后台充值','2018-08-18 18:49:27','2018-08-18 18:49:27'),
	(91,46,-1960.00,'coin','订单(2018081818522790479): 酷达币支付','2018-08-18 18:52:37','2018-08-18 18:52:37'),
	(92,50,-35.00,'coin','订单(2018081819182871962): 酷达币支付','2018-08-18 19:18:55','2018-08-18 19:18:55'),
	(106,46,1000.00,'coin','后台充值','2018-08-18 22:47:48','2018-08-18 22:47:48'),
	(107,46,-100.00,'coin','转赠给 沧海一粟(10047)','2018-08-18 22:51:29','2018-08-18 22:51:29'),
	(108,47,100.00,'coin','由 罗贤斌(10001) 转赠','2018-08-18 22:51:29','2018-08-18 22:51:29'),
	(109,48,-35.00,'coin','订单(2018081910394341169): 酷达币支付','2018-08-19 10:39:46','2018-08-19 10:39:46'),
	(110,48,-70.00,'coin','订单(2018081910440069675): 酷达币支付','2018-08-19 10:44:04','2018-08-19 10:44:04'),
	(111,50,-140.00,'coin','订单(2018081912032948299): 酷达币支付','2018-08-19 12:03:34','2018-08-19 12:03:34'),
	(112,50,0.00,'balance','广告收益: 设备号「YB000041」','2018-08-19 12:04:06','2018-08-19 12:04:06'),
	(113,46,1000.00,'coin','后台充值','2018-08-19 13:34:46','2018-08-19 13:34:46'),
	(114,46,-1155.00,'coin','订单(2018081913355410455): 酷达币支付','2018-08-19 13:36:03','2018-08-19 13:36:03'),
	(115,50,0.00,'balance','广告收益: 设备号「YB000041」','2018-08-19 13:37:38','2018-08-19 13:37:38'),
	(116,50,0.00,'balance','广告收益: 设备号「YB000040」','2018-08-19 13:37:38','2018-08-19 13:37:38'),
	(117,46,0.00,'balance','广告收益: 设备号「YB000004」','2018-08-19 13:37:38','2018-08-19 13:37:38'),
	(118,47,0.00,'balance','广告收益: 设备号「YB000003」','2018-08-19 13:37:38','2018-08-19 13:37:38'),
	(119,46,0.00,'balance','广告收益: 设备号「YB000003」','2018-08-19 13:37:38','2018-08-19 13:37:38'),
	(120,48,-70.00,'coin','订单(2018081914122522840): 酷达币支付','2018-08-19 14:12:29','2018-08-19 14:12:29'),
	(121,50,0.00,'balance','广告收益: 设备号「YB000042」','2018-08-19 14:13:34','2018-08-19 14:13:34'),
	(122,50,-105.00,'coin','订单(2018081915360032267): 酷达币支付','2018-08-19 15:36:02','2018-08-19 15:36:02'),
	(123,50,0.00,'balance','广告收益: 设备号「YB000043」','2018-08-19 15:36:55','2018-08-19 15:36:55'),
	(124,50,-420.00,'coin','订单(2018081915391881515): 酷达币支付','2018-08-19 15:39:22','2018-08-19 15:39:22'),
	(125,50,2000.00,'coin','后台充值','2018-08-19 15:42:06','2018-08-19 15:42:06'),
	(126,48,2000.00,'coin','后台充值','2018-08-19 15:42:41','2018-08-19 15:42:41'),
	(127,50,-35.00,'coin','订单(2018081915463623793): 酷达币支付','2018-08-19 15:46:39','2018-08-19 15:46:39'),
	(128,50,-35.00,'coin','订单(2018081915472089019): 酷达币支付','2018-08-19 15:47:25','2018-08-19 15:47:25'),
	(129,50,0.00,'balance','广告收益: 设备号「YB000043」','2018-08-19 15:48:09','2018-08-19 15:48:09'),
	(130,50,-210.00,'coin','订单(2018081916161156554): 酷达币支付','2018-08-19 16:16:15','2018-08-19 16:16:15'),
	(131,50,0.00,'balance','广告收益: 设备号「YB000044」','2018-08-19 16:16:46','2018-08-19 16:16:46'),
	(132,48,-70.00,'coin','订单(2018081916220369561): 酷达币支付','2018-08-19 16:22:12','2018-08-19 16:22:12'),
	(133,50,0.00,'balance','广告收益: 设备号「YB000044」','2018-08-19 16:22:43','2018-08-19 16:22:43'),
	(134,50,0.00,'balance','广告收益: 设备号「YB000040」','2018-08-19 17:20:10','2018-08-19 17:20:10'),
	(135,48,-105.00,'coin','订单(2018081917274139959): 酷达币支付','2018-08-19 17:27:44','2018-08-19 17:27:44'),
	(136,50,0.00,'balance','广告收益: 设备号「YB000045」','2018-08-19 17:28:35','2018-08-19 17:28:35'),
	(137,48,-35.00,'coin','订单(2018081918402430777): 酷达币支付','2018-08-19 18:40:30','2018-08-19 18:40:30'),
	(138,48,-70.00,'coin','订单(2018081918412529878): 酷达币支付','2018-08-19 18:41:28','2018-08-19 18:41:28'),
	(139,50,0.00,'balance','广告收益: 设备号「YB000046」','2018-08-19 18:41:41','2018-08-19 18:41:41'),
	(140,50,0.00,'balance','广告收益: 设备号「YB000046」','2018-08-19 18:42:53','2018-08-19 18:42:53'),
	(141,48,-70.00,'coin','订单(2018081918474422541): 酷达币支付','2018-08-19 18:47:54','2018-08-19 18:47:54'),
	(142,50,0.00,'balance','广告收益: 设备号「YB000046」','2018-08-19 18:48:27','2018-08-19 18:48:27'),
	(143,46,0.00,'balance','广告收益: 设备号「YB000004」','2018-08-19 20:00:55','2018-08-19 20:00:55'),
	(144,48,-210.00,'coin','订单(2018081920281421673): 酷达币支付','2018-08-19 20:28:19','2018-08-19 20:28:19'),
	(145,50,0.00,'balance','广告收益: 设备号「YB000047」','2018-08-19 20:28:44','2018-08-19 20:28:44'),
	(146,48,-105.00,'coin','订单(2018081922005263890): 酷达币支付','2018-08-19 22:00:56','2018-08-19 22:00:56'),
	(147,50,0.00,'balance','广告收益: 设备号「YB000048」','2018-08-19 22:01:41','2018-08-19 22:01:41'),
	(148,48,0.00,'coin','播放项(606)播放异常，被管理员删除，返还酷达币','2018-08-19 22:03:26','2018-08-19 22:03:26'),
	(149,48,0.00,'coin','播放项(605)播放异常，被管理员删除，返还酷达币','2018-08-19 22:03:35','2018-08-19 22:03:35'),
	(150,48,0.00,'coin','播放项(604)播放异常，被管理员删除，返还酷达币','2018-08-19 22:03:41','2018-08-19 22:03:41'),
	(151,47,-70.00,'wechat','订单(2018081922100925364): 微信支付','2018-08-19 22:10:47','2018-08-19 22:10:47'),
	(152,46,0.00,'balance','广告收益: 设备号「YB000004」','2018-08-19 22:14:38','2018-08-19 22:14:38'),
	(153,50,-70.00,'coin','订单(2018081922195852828): 酷达币支付','2018-08-19 22:20:03','2018-08-19 22:20:03'),
	(154,50,0.00,'balance','广告收益: 设备号「YB000048」','2018-08-19 22:20:48','2018-08-19 22:20:48'),
	(155,47,20.00,'wechat','超时, 自动取消','2018-08-19 22:30:02','2018-08-19 22:30:02'),
	(156,47,35.00,'wechat','超时, 自动取消','2018-08-19 22:30:03','2018-08-19 22:30:03'),
	(157,47,-35.00,'wechat','订单(2018081923555438285): 微信支付','2018-08-19 23:56:06','2018-08-19 23:56:06'),
	(158,46,0.00,'balance','广告收益: 设备号「YB000004」','2018-08-19 23:56:38','2018-08-19 23:56:38'),
	(159,53,-35.00,'coin','订单(2018082010072222398): 酷达币支付','2018-08-20 11:00:38','2018-08-20 11:00:38'),
	(160,53,-35.00,'balance','订单(2018082011034468216): 余额支付','2018-08-20 11:05:13','2018-08-20 11:05:13'),
	(161,53,-35.00,'coin','订单(2018082011063880738): 酷达币支付','2018-08-20 11:06:48','2018-08-20 11:06:48'),
	(162,53,-35.00,'coin','订单(2018082011181111766): 酷达币支付','2018-08-20 11:18:22','2018-08-20 11:18:22'),
	(163,53,-35.00,'coin','订单(2018082011185076362): 酷达币支付','2018-08-20 11:21:58','2018-08-20 11:21:58'),
	(164,46,10000.00,'balance','下级运营商：李小云 的加盟费分成','2018-08-20 12:31:03','2018-08-20 12:31:03'),
	(165,46,0.00,'balance','广告收益: 设备号「YB000004」','2018-08-20 12:45:15','2018-08-20 12:45:15'),
	(166,47,-35.00,'wechat','订单(2018082012502913073): 微信支付','2018-08-20 12:50:47','2018-08-20 12:50:47'),
	(167,47,3.50,'balance','广告收益: 设备号「YB000049」','2018-08-20 12:51:25','2018-08-20 12:51:25'),
	(168,79,3.50,'balance','广告收益: 设备号「YB000049」','2018-08-20 12:51:25','2018-08-20 12:51:25'),
	(169,55,-7.00,'balance','广告收益: 设备号「YB000049」','2018-08-20 12:51:25','2018-08-20 12:51:25'),
	(170,46,3.50,'balance','广告收益: 下级运营商，设备号「YB000049」','2018-08-20 12:51:25','2018-08-20 12:51:25'),
	(171,49,20.00,'coin','后台充值','2018-08-20 13:34:24','2018-08-20 13:34:24'),
	(172,49,2000.00,'coin','后台充值','2018-08-20 13:44:36','2018-08-20 13:44:36'),
	(173,53,-35.00,'coin','订单(2018082013451698995): 酷达币支付','2018-08-20 13:45:46','2018-08-20 13:45:46'),
	(174,53,-20.00,'balance','订单(2018082013460803036): 余额支付','2018-08-20 13:46:22','2018-08-20 13:46:22'),
	(175,53,-35.00,'wechat','订单(2018082013470620770): 微信支付','2018-08-20 13:51:26','2018-08-20 13:51:26'),
	(179,47,-70.00,'coin','订单(2018082014111176789): 酷达币支付','2018-08-20 14:15:42','2018-08-20 14:15:42'),
	(180,47,7.00,'balance','广告收益: 设备号「YB000049」','2018-08-20 14:21:47','2018-08-20 14:21:47'),
	(181,79,7.00,'balance','广告收益: 设备号「YB000049」','2018-08-20 14:21:47','2018-08-20 14:21:47'),
	(182,55,-14.00,'balance','广告收益: 设备号「YB000049」','2018-08-20 14:21:47','2018-08-20 14:21:47'),
	(183,46,7.00,'balance','广告收益: 下级运营商，设备号「YB000049」','2018-08-20 14:21:47','2018-08-20 14:21:47'),
	(187,53,35.00,'wechat','主动取消订单','2018-08-20 15:17:38','2018-08-20 15:17:38'),
	(188,115,150.00,'coin','后台充值','2018-08-20 15:38:13','2018-08-20 15:38:13'),
	(189,46,-35.00,'coin','订单(2018082015444608866): 酷达币支付','2018-08-20 15:45:20','2018-08-20 15:45:20'),
	(190,46,35.00,'coin','取消订单(2018082015444608866): 酷达币返还','2018-08-20 15:47:22','2018-08-20 15:47:22'),
	(191,47,-35.00,'wechat','订单(2018082015494175404): 微信支付','2018-08-20 15:50:05','2018-08-20 15:50:05'),
	(195,47,3.50,'balance','广告收益: 设备号「YB000049」','2018-08-20 15:57:44','2018-08-20 15:57:44'),
	(196,79,3.50,'balance','广告收益: 设备号「YB000049」','2018-08-20 15:57:44','2018-08-20 15:57:44'),
	(197,55,17.50,'balance','广告收益: 设备号「YB000049」','2018-08-20 15:57:44','2018-08-20 15:57:44'),
	(198,46,3.50,'balance','广告收益: 下级运营商，设备号「YB000049」','2018-08-20 15:57:44','2018-08-20 15:57:44'),
	(199,47,-35.00,'wechat','订单(2018082016030839006): 微信支付','2018-08-20 16:03:18','2018-08-20 16:03:18'),
	(200,47,3.50,'balance','广告收益: 设备号「YB000049」','2018-08-20 16:03:36','2018-08-20 16:03:36'),
	(201,79,3.50,'balance','广告收益: 设备号「YB000049」','2018-08-20 16:03:36','2018-08-20 16:03:36'),
	(202,55,17.50,'balance','广告收益: 设备号「YB000049」','2018-08-20 16:03:36','2018-08-20 16:03:36'),
	(203,46,3.50,'balance','广告收益: 下级运营商，设备号「YB000049」','2018-08-20 16:03:36','2018-08-20 16:03:36'),
	(204,46,-35.00,'coin','订单(2018082016094641766): 酷达币支付','2018-08-20 16:09:54','2018-08-20 16:09:54'),
	(205,50,-70.00,'coin','订单(2018082017040851157): 酷达币支付','2018-08-20 17:04:12','2018-08-20 17:04:12'),
	(206,50,-70.00,'coin','订单(2018082017135390691): 酷达币支付','2018-08-20 17:13:55','2018-08-20 17:13:55'),
	(207,132,150.00,'coin','后台充值','2018-08-20 17:40:13','2018-08-20 17:40:13'),
	(208,50,-210.00,'coin','订单(2018082018124178251): 酷达币支付','2018-08-20 18:12:45','2018-08-20 18:12:45'),
	(209,46,-1000.00,'balance','提现','2018-08-20 18:55:17','2018-08-20 18:55:17'),
	(210,47,-35.00,'coin','订单(2018082019462893796): 酷达币支付','2018-08-20 19:46:35','2018-08-20 19:46:35'),
	(211,46,-35.00,'balance','订单(2018082019504380821): 余额支付','2018-08-20 19:51:02','2018-08-20 19:51:02'),
	(212,47,3.50,'balance','广告收益: 设备号「YB000049」','2018-08-20 19:51:41','2018-08-20 19:51:41'),
	(213,79,3.50,'balance','广告收益: 设备号「YB000049」','2018-08-20 19:51:41','2018-08-20 19:51:41'),
	(214,55,17.50,'balance','广告收益: 设备号「YB000049」','2018-08-20 19:51:41','2018-08-20 19:51:41'),
	(215,46,3.50,'balance','广告收益: 下级运营商，设备号「YB000049」','2018-08-20 19:51:41','2018-08-20 19:51:41'),
	(216,50,-140.00,'coin','订单(2018082021353584962): 酷达币支付','2018-08-20 21:35:38','2018-08-20 21:35:38'),
	(217,46,-35.00,'balance','订单(2018082111031424551): 余额支付','2018-08-21 11:03:25','2018-08-21 11:03:25'),
	(218,47,3.50,'balance','广告收益: 设备号「YB000049」','2018-08-21 11:04:50','2018-08-21 11:04:50'),
	(219,79,3.50,'balance','广告收益: 设备号「YB000049」','2018-08-21 11:04:50','2018-08-21 11:04:50'),
	(220,47,3.50,'balance','广告收益: 设备号「YB000049」','2018-08-21 11:04:51','2018-08-21 11:04:51'),
	(221,79,3.50,'balance','广告收益: 设备号「YB000049」','2018-08-21 11:04:51','2018-08-21 11:04:51'),
	(222,47,3.50,'balance','广告收益: 设备号「YB000049」','2018-08-21 11:04:53','2018-08-21 11:04:53'),
	(223,79,3.50,'balance','广告收益: 设备号「YB000049」','2018-08-21 11:04:53','2018-08-21 11:04:53'),
	(224,46,30.00,'coin','播放项(632)播放异常，被管理员删除，返还酷达币','2018-08-21 12:55:04','2018-08-21 12:55:04'),
	(225,46,-35.00,'balance','订单(2018082113111744813): 余额支付','2018-08-21 13:11:24','2018-08-21 13:11:24'),
	(226,47,3.50,'balance','广告收益: 设备号「YB000049」','2018-08-21 13:11:43','2018-08-21 13:11:43'),
	(227,79,3.50,'balance','广告收益: 设备号「YB000049」','2018-08-21 13:11:43','2018-08-21 13:11:43'),
	(228,47,3.50,'balance','广告收益: 设备号「YB000049」','2018-08-21 13:11:44','2018-08-21 13:11:44'),
	(229,79,3.50,'balance','广告收益: 设备号「YB000049」','2018-08-21 13:11:44','2018-08-21 13:11:44'),
	(230,47,3.50,'balance','广告收益: 设备号「YB000049」','2018-08-21 13:11:44','2018-08-21 13:11:44'),
	(231,79,3.50,'balance','广告收益: 设备号「YB000049」','2018-08-21 13:11:44','2018-08-21 13:11:44'),
	(232,46,-35.00,'balance','订单(2018082113142923073): 余额支付','2018-08-21 13:14:36','2018-08-21 13:14:36'),
	(233,47,3.50,'balance','广告收益: 设备号「YB000049」','2018-08-21 13:14:46','2018-08-21 13:14:46'),
	(234,79,3.50,'balance','广告收益: 设备号「YB000049」','2018-08-21 13:14:46','2018-08-21 13:14:46'),
	(235,55,17.50,'balance','广告收益: 设备号「YB000049」','2018-08-21 13:14:47','2018-08-21 13:14:47'),
	(236,46,3.50,'balance','广告收益: 下级运营商，设备号「YB000049」','2018-08-21 13:14:47','2018-08-21 13:14:47'),
	(237,46,-35.00,'balance','订单(2018082113214983609): 余额支付','2018-08-21 13:21:52','2018-08-21 13:21:52'),
	(238,47,3.50,'balance','广告收益: 设备号「YB000049」','2018-08-21 13:23:27','2018-08-21 13:23:27'),
	(239,79,3.50,'balance','广告收益: 设备号「YB000049」','2018-08-21 13:23:27','2018-08-21 13:23:27'),
	(240,55,17.50,'balance','广告收益: 设备号「YB000049」','2018-08-21 13:23:28','2018-08-21 13:23:28'),
	(241,46,3.50,'balance','广告收益: 下级运营商，设备号「YB000049」','2018-08-21 13:23:28','2018-08-21 13:23:28'),
	(242,55,5000.00,'balance','下级运营商：罗来星 的加盟费分成','2018-08-21 13:53:46','2018-08-21 13:53:46'),
	(243,46,1000.00,'balance','团队运营商：罗来星 的加盟费分成','2018-08-21 13:53:46','2018-08-21 13:53:46'),
	(244,53,-35.00,'coin','订单(2018082015265875799): 酷达币支付','2018-08-21 13:54:49','2018-08-21 13:54:49'),
	(245,46,-35.00,'balance','订单(2018082114004754517): 余额支付','2018-08-21 14:00:57','2018-08-21 14:00:57'),
	(246,79,3.50,'balance','广告收益: 设备号「YB000001」','2018-08-21 14:01:22','2018-08-21 14:01:22'),
	(247,48,21.00,'balance','广告收益: 设备号「YB000001」','2018-08-21 14:01:23','2018-08-21 14:01:23'),
	(248,55,1.75,'balance','广告收益: 下级运营商，设备号「YB000001」','2018-08-21 14:01:23','2018-08-21 14:01:23'),
	(249,46,1.75,'balance','广告收益: 团队运营商，设备号「YB000001」','2018-08-21 14:01:23','2018-08-21 14:01:23'),
	(250,55,-35.00,'wechat','订单(2018082114221609981): 微信支付','2018-08-21 14:50:29','2018-08-21 14:50:29'),
	(251,49,3.50,'balance','广告收益: 设备号「YB000001」','2018-08-21 14:50:59','2018-08-21 14:50:59'),
	(252,79,3.50,'balance','广告收益: 设备号「YB000001」','2018-08-21 14:50:59','2018-08-21 14:50:59'),
	(253,48,17.50,'balance','广告收益: 设备号「YB000001」','2018-08-21 14:51:00','2018-08-21 14:51:00'),
	(254,55,1.75,'balance','广告收益: 下级运营商，设备号「YB000001」','2018-08-21 14:51:00','2018-08-21 14:51:00'),
	(255,46,1.75,'balance','广告收益: 团队运营商，设备号「YB000001」','2018-08-21 14:51:00','2018-08-21 14:51:00'),
	(256,48,10000.00,'balance','下级运营商：熊运升 的加盟费分成','2018-08-21 15:03:45','2018-08-21 15:03:45'),
	(257,46,2000.00,'balance','团队运营商：熊运升 的加盟费分成','2018-08-21 15:03:45','2018-08-21 15:03:45'),
	(258,55,-20.00,'wechat','订单(2018082115062862152): 微信支付','2018-08-21 15:06:57','2018-08-21 15:06:57'),
	(259,49,14.00,'balance','广告收益: 设备号「YB000002」','2018-08-21 15:07:31','2018-08-21 15:07:31'),
	(260,48,1.00,'balance','广告收益: 下级运营商，设备号「YB000002」','2018-08-21 15:07:31','2018-08-21 15:07:31'),
	(261,46,1.00,'balance','广告收益: 团队运营商，设备号「YB000002」','2018-08-21 15:07:31','2018-08-21 15:07:31'),
	(262,46,-35.00,'coin','订单(2018082115205787646): 酷达币支付','2018-08-21 15:21:02','2018-08-21 15:21:02'),
	(263,46,-35.00,'balance','订单(2018082115263453265): 余额支付','2018-08-21 15:26:38','2018-08-21 15:26:38'),
	(264,47,3.50,'balance','广告收益: 设备号「YB000002」','2018-08-21 15:26:53','2018-08-21 15:26:53'),
	(265,49,21.00,'balance','广告收益: 设备号「YB000002」','2018-08-21 15:26:53','2018-08-21 15:26:53'),
	(266,48,1.75,'balance','广告收益: 下级运营商，设备号「YB000002」','2018-08-21 15:26:53','2018-08-21 15:26:53'),
	(267,46,1.75,'balance','广告收益: 团队运营商，设备号「YB000002」','2018-08-21 15:26:53','2018-08-21 15:26:53'),
	(268,46,-35.00,'coin','订单(2018082115343994178): 酷达币支付','2018-08-21 15:34:50','2018-08-21 15:34:50'),
	(269,46,-35.00,'balance','订单(2018082115360142861): 余额支付','2018-08-21 15:36:06','2018-08-21 15:36:06'),
	(270,46,35.00,'balance','取消订单(2018082115360142861): 余额返还','2018-08-21 15:37:43','2018-08-21 15:37:43'),
	(271,46,-35.00,'balance','订单(2018082115123165292): 余额支付','2018-08-21 15:38:56','2018-08-21 15:38:56'),
	(272,47,3.50,'balance','广告收益: 设备号「YB000002」','2018-08-21 15:39:45','2018-08-21 15:39:45'),
	(273,46,30.00,'coin','播放项(645)播放异常，被管理员删除，返还酷达币','2018-08-21 15:39:55','2018-08-21 15:39:55'),
	(274,46,-100.00,'balance','提现','2018-08-21 15:41:09','2018-08-21 15:41:09'),
	(275,93,200.00,'coin','后台充值','2018-08-21 16:23:40','2018-08-21 16:23:40'),
	(276,93,-70.00,'coin','订单(2018082116315598177): 酷达币支付','2018-08-21 16:32:08','2018-08-21 16:32:08'),
	(277,47,-70.00,'coin','订单(2018082116580057771): 酷达币支付','2018-08-21 16:58:19','2018-08-21 16:58:19'),
	(278,47,-70.00,'coin','订单(2018082117150750415): 酷达币支付','2018-08-21 17:15:23','2018-08-21 17:15:23'),
	(279,55,-35.00,'balance','订单(2018082118112755010): 余额支付','2018-08-21 18:11:35','2018-08-21 18:11:35'),
	(280,48,-35.00,'coin','订单(2018082118155306158): 酷达币支付','2018-08-21 18:15:59','2018-08-21 18:15:59'),
	(281,47,3.50,'balance','广告收益: 设备号「YB000058」','2018-08-21 18:18:14','2018-08-21 18:18:14'),
	(282,51,3.50,'balance','广告收益: 设备号「YB000058」','2018-08-21 18:18:14','2018-08-21 18:18:14'),
	(283,49,17.50,'balance','广告收益: 设备号「YB000058」','2018-08-21 18:18:14','2018-08-21 18:18:14'),
	(284,48,1.75,'balance','广告收益: 下级运营商，设备号「YB000058」','2018-08-21 18:18:14','2018-08-21 18:18:14'),
	(285,46,1.75,'balance','广告收益: 团队运营商，设备号「YB000058」','2018-08-21 18:18:14','2018-08-21 18:18:14'),
	(286,46,-70.00,'balance','订单(2018082122351500510): 余额支付','2018-08-21 22:35:29','2018-08-21 22:35:29'),
	(287,46,28.00,'balance','广告收益: 设备号「YB000004」','2018-08-21 22:35:57','2018-08-21 22:35:57'),
	(288,47,3.50,'balance','广告收益: 设备号「YB000003」','2018-08-21 22:35:58','2018-08-21 22:35:58'),
	(289,46,24.50,'balance','广告收益: 设备号「YB000003」','2018-08-21 22:35:58','2018-08-21 22:35:58'),
	(290,46,-105.00,'coin','订单(2018082210142342391): 酷达币支付','2018-08-22 10:14:31','2018-08-22 10:14:31'),
	(291,46,-35.00,'coin','订单(2018082210483547348): 酷达币支付','2018-08-22 10:48:39','2018-08-22 10:48:39'),
	(292,46,-35.00,'coin','订单(2018082210562390566): 酷达币支付','2018-08-22 10:56:32','2018-08-22 10:56:32'),
	(293,46,-105.00,'coin','订单(2018082211111093065): 酷达币支付','2018-08-22 11:11:18','2018-08-22 11:11:18'),
	(294,46,-70.00,'balance','订单(2018082211490676948): 余额支付','2018-08-22 11:49:18','2018-08-22 11:49:18'),
	(295,47,7.00,'balance','广告收益: 设备号「YB000059」','2018-08-22 11:49:46','2018-08-22 11:49:46'),
	(296,51,7.00,'balance','广告收益: 设备号「YB000059」','2018-08-22 11:49:46','2018-08-22 11:49:46'),
	(297,49,35.00,'balance','广告收益: 设备号「YB000059」','2018-08-22 11:49:46','2018-08-22 11:49:46'),
	(298,48,3.50,'balance','广告收益: 下级运营商，设备号「YB000059」','2018-08-22 11:49:46','2018-08-22 11:49:46'),
	(299,46,3.50,'balance','广告收益: 团队运营商，设备号「YB000059」','2018-08-22 11:49:46','2018-08-22 11:49:46'),
	(300,46,-210.00,'balance','订单(2018082212114090342): 余额支付','2018-08-22 12:11:54','2018-08-22 12:11:54'),
	(301,47,7.00,'balance','广告收益: 设备号「YB000059」','2018-08-22 12:17:32','2018-08-22 12:17:32'),
	(302,51,7.00,'balance','广告收益: 设备号「YB000059」','2018-08-22 12:17:32','2018-08-22 12:17:32'),
	(303,49,35.00,'balance','广告收益: 设备号「YB000059」','2018-08-22 12:17:32','2018-08-22 12:17:32'),
	(304,48,3.50,'balance','广告收益: 下级运营商，设备号「YB000059」','2018-08-22 12:17:32','2018-08-22 12:17:32'),
	(305,46,3.50,'balance','广告收益: 团队运营商，设备号「YB000059」','2018-08-22 12:17:33','2018-08-22 12:17:33'),
	(306,46,56.00,'balance','广告收益: 设备号「YB000004」','2018-08-22 12:17:33','2018-08-22 12:17:33'),
	(307,47,7.00,'balance','广告收益: 设备号「YB000003」','2018-08-22 12:17:33','2018-08-22 12:17:33'),
	(308,46,49.00,'balance','广告收益: 设备号「YB000003」','2018-08-22 12:17:33','2018-08-22 12:17:33'),
	(309,48,30.00,'coin','播放项(656)播放异常，被管理员删除，返还酷达币','2018-08-22 12:27:45','2018-08-22 12:27:45'),
	(310,60,150.00,'coin','后台充值','2018-08-22 12:29:47','2018-08-22 12:29:47'),
	(311,46,-35.00,'balance','订单(2018082214073871565): 余额支付','2018-08-22 14:07:47','2018-08-22 14:07:47'),
	(312,47,3.50,'balance','广告收益: 设备号「YB000059」','2018-08-22 14:09:02','2018-08-22 14:09:02'),
	(313,51,10.50,'balance','广告收益: 设备号「YB000059」','2018-08-22 14:09:02','2018-08-22 14:09:02'),
	(314,49,10.50,'balance','广告收益: 设备号「YB000059」','2018-08-22 14:09:03','2018-08-22 14:09:03'),
	(315,48,1.75,'balance','广告收益: 下级运营商，设备号「YB000059」','2018-08-22 14:09:03','2018-08-22 14:09:03'),
	(316,46,1.75,'balance','广告收益: 团队运营商，设备号「YB000059」','2018-08-22 14:09:03','2018-08-22 14:09:03'),
	(317,53,35.00,'coin','取消订单(2018082015265875799): 酷达币返还','2018-08-22 16:00:01','2018-08-22 16:00:01'),
	(318,46,-35.00,'balance','订单(2018082216472682510): 余额支付','2018-08-22 16:47:34','2018-08-22 16:47:34'),
	(319,47,3.50,'balance','广告收益: 设备号「YB000057」','2018-08-22 16:48:15','2018-08-22 16:48:15'),
	(320,79,10.50,'balance','广告收益: 设备号「YB000057」','2018-08-22 16:48:15','2018-08-22 16:48:15'),
	(321,49,10.50,'balance','广告收益: 设备号「YB000057」','2018-08-22 16:48:15','2018-08-22 16:48:15'),
	(322,48,1.75,'balance','广告收益: 下级运营商，设备号「YB000057」','2018-08-22 16:48:15','2018-08-22 16:48:15'),
	(323,46,1.75,'balance','广告收益: 团队运营商，设备号「YB000057」','2018-08-22 16:48:15','2018-08-22 16:48:15'),
	(324,50,-35.00,'coin','订单(2018082216505205695): 酷达币支付','2018-08-22 16:50:55','2018-08-22 16:50:55'),
	(325,47,-35.00,'coin','订单(2018082216522250648): 酷达币支付','2018-08-22 16:52:42','2018-08-22 16:52:42'),
	(326,55,-105.00,'balance','订单(2018082309295005122): 余额支付','2018-08-23 09:30:05','2018-08-23 09:30:05'),
	(327,47,3.50,'balance','广告收益: 设备号「YB000057」','2018-08-23 09:30:46','2018-08-23 09:30:46'),
	(328,79,10.50,'balance','广告收益: 设备号「YB000057」','2018-08-23 09:30:47','2018-08-23 09:30:47'),
	(329,49,10.50,'balance','广告收益: 设备号「YB000057」','2018-08-23 09:30:47','2018-08-23 09:30:47'),
	(330,48,1.75,'balance','广告收益: 下级运营商，设备号「YB000057」','2018-08-23 09:30:47','2018-08-23 09:30:47'),
	(331,46,1.75,'balance','广告收益: 团队运营商，设备号「YB000057」','2018-08-23 09:30:47','2018-08-23 09:30:47'),
	(332,46,28.00,'balance','广告收益: 设备号「YB000004」','2018-08-23 09:30:47','2018-08-23 09:30:47'),
	(333,47,3.50,'balance','广告收益: 设备号「YB000003」','2018-08-23 09:30:47','2018-08-23 09:30:47'),
	(334,46,24.50,'balance','广告收益: 设备号「YB000003」','2018-08-23 09:30:48','2018-08-23 09:30:48'),
	(335,48,-70.00,'coin','转赠给 胡永佳(10146)','2018-08-23 10:55:28','2018-08-23 10:55:28'),
	(336,146,70.00,'coin','由 罗来星(10048) 转赠','2018-08-23 10:55:28','2018-08-23 10:55:28'),
	(337,146,-70.00,'coin','订单(2018082310561317998): 酷达币支付','2018-08-23 10:56:16','2018-08-23 10:56:16'),
	(338,69,-35.00,'wechat','订单(2018082312234084766): 微信支付','2018-08-23 12:23:56','2018-08-23 12:23:56'),
	(339,69,35.00,'wechat','主动取消订单','2018-08-23 12:25:54','2018-08-23 12:25:54'),
	(340,50,-105.00,'coin','订单(2018082314013647426): 酷达币支付','2018-08-23 14:01:39','2018-08-23 14:01:39'),
	(341,48,-70.00,'coin','订单(2018082314284644038): 酷达币支付','2018-08-23 14:28:50','2018-08-23 14:28:50'),
	(342,49,-35.00,'coin','订单(2018082315225833761): 酷达币支付','2018-08-23 15:23:04','2018-08-23 15:23:04'),
	(343,49,-35.00,'coin','订单(2018082315261876414): 酷达币支付','2018-08-23 15:26:24','2018-08-23 15:26:24'),
	(344,49,-35.00,'coin','订单(2018082315334373203): 酷达币支付','2018-08-23 15:33:49','2018-08-23 15:33:49'),
	(345,47,-35.00,'coin','订单(2018082316034178604): 酷达币支付','2018-08-23 16:03:59','2018-08-23 16:03:59'),
	(346,50,-35.00,'coin','订单(2018082316083470813): 酷达币支付','2018-08-23 16:08:37','2018-08-23 16:08:37'),
	(347,121,2000.00,'coin','后台充值','2018-08-23 16:22:20','2018-08-23 16:22:20'),
	(348,121,240.00,'coin','后台充值','2018-08-23 16:26:35','2018-08-23 16:26:35'),
	(349,46,-140.00,'coin','订单(2018082318305808167): 酷达币支付','2018-08-23 18:31:09','2018-08-23 18:31:09'),
	(350,47,-35.00,'wechat','订单(2018082320063775479): 微信支付','2018-08-23 20:06:57','2018-08-23 20:06:57'),
	(351,46,-280.00,'balance','订单(2018082410202414893): 余额支付','2018-08-24 10:20:45','2018-08-24 10:20:45'),
	(352,47,14.00,'balance','广告收益: 设备号「YB000057」','2018-08-24 10:21:15','2018-08-24 10:21:15'),
	(353,49,182.00,'balance','广告收益: 设备号「YB000057」','2018-08-24 10:21:15','2018-08-24 10:21:15'),
	(354,48,14.00,'balance','广告收益: 下级运营商，设备号「YB000057」','2018-08-24 10:21:15','2018-08-24 10:21:15'),
	(355,46,14.00,'balance','广告收益: 团队运营商，设备号「YB000057」','2018-08-24 10:21:15','2018-08-24 10:21:15'),
	(356,55,-100.00,'balance','提现','2018-08-24 10:49:25','2018-08-24 10:49:25'),
	(357,46,-20.00,'coin','转赠给 袁婷~17379196311(10150)','2018-08-24 15:27:17','2018-08-24 15:27:17'),
	(358,150,20.00,'coin','由 罗贤斌(10001) 转赠','2018-08-24 15:27:17','2018-08-24 15:27:17'),
	(359,150,-20.00,'coin','订单(2018082415304452504): 酷达币支付','2018-08-24 15:31:00','2018-08-24 15:31:00'),
	(360,121,-585.00,'coin','订单(2018082416050778561): 酷达币支付','2018-08-24 16:05:16','2018-08-24 16:05:16'),
	(361,47,35.00,'wechat','超时, 自动取消','2018-08-24 20:30:03','2018-08-24 20:30:03'),
	(362,46,-840.00,'balance','订单(2018082422082061088): 余额支付','2018-08-24 22:08:25','2018-08-24 22:08:25'),
	(363,47,14.00,'balance','广告收益: 设备号「YB000057」','2018-08-24 22:09:06','2018-08-24 22:09:06'),
	(364,49,182.00,'balance','广告收益: 设备号「YB000057」','2018-08-24 22:09:06','2018-08-24 22:09:06'),
	(365,48,14.00,'balance','广告收益: 下级运营商，设备号「YB000057」','2018-08-24 22:09:06','2018-08-24 22:09:06'),
	(366,46,14.00,'balance','广告收益: 团队运营商，设备号「YB000057」','2018-08-24 22:09:06','2018-08-24 22:09:06'),
	(367,47,28.00,'balance','广告收益: 设备号「YB000002」','2018-08-24 22:09:07','2018-08-24 22:09:07'),
	(368,49,168.00,'balance','广告收益: 设备号「YB000002」','2018-08-24 22:09:07','2018-08-24 22:09:07'),
	(369,48,14.00,'balance','广告收益: 下级运营商，设备号「YB000002」','2018-08-24 22:09:07','2018-08-24 22:09:07'),
	(370,46,14.00,'balance','广告收益: 团队运营商，设备号「YB000002」','2018-08-24 22:09:07','2018-08-24 22:09:07'),
	(371,49,196.00,'balance','广告收益: 设备号「YB000004」','2018-08-24 22:09:07','2018-08-24 22:09:07'),
	(372,48,14.00,'balance','广告收益: 下级运营商，设备号「YB000004」','2018-08-24 22:09:07','2018-08-24 22:09:07'),
	(373,46,14.00,'balance','广告收益: 团队运营商，设备号「YB000004」','2018-08-24 22:09:07','2018-08-24 22:09:07'),
	(374,53,-210.00,'coin','订单(2018082509392798400): 酷达币支付','2018-08-25 09:39:34','2018-08-25 09:39:34'),
	(375,50,10000.00,'balance','下级运营商：魏皇 的加盟费分成','2018-08-25 13:06:58','2018-08-25 13:06:58'),
	(376,46,-3010.00,'balance','订单(2018082513170306370): 余额支付','2018-08-25 13:17:08','2018-08-25 13:17:08'),
	(377,47,3.50,'balance','广告收益: 设备号「YB000057」','2018-08-25 13:17:23','2018-08-25 13:17:23'),
	(378,49,45.50,'balance','广告收益: 设备号「YB000057」','2018-08-25 13:17:23','2018-08-25 13:17:23'),
	(379,48,3.50,'balance','广告收益: 下级运营商，设备号「YB000057」','2018-08-25 13:17:23','2018-08-25 13:17:23'),
	(380,46,3.50,'balance','广告收益: 团队运营商，设备号「YB000057」','2018-08-25 13:17:23','2018-08-25 13:17:23'),
	(381,47,7.00,'balance','广告收益: 设备号「YB000002」','2018-08-25 13:17:24','2018-08-25 13:17:24'),
	(382,49,42.00,'balance','广告收益: 设备号「YB000002」','2018-08-25 13:17:24','2018-08-25 13:17:24'),
	(383,48,3.50,'balance','广告收益: 下级运营商，设备号「YB000002」','2018-08-25 13:17:24','2018-08-25 13:17:24'),
	(384,46,3.50,'balance','广告收益: 团队运营商，设备号「YB000002」','2018-08-25 13:17:24','2018-08-25 13:17:24'),
	(385,50,49.00,'balance','广告收益: 设备号「YB000050」','2018-08-25 13:17:24','2018-08-25 13:17:24'),
	(386,50,49.00,'balance','广告收益: 设备号「YB000048」','2018-08-25 13:17:24','2018-08-25 13:17:24'),
	(387,50,49.00,'balance','广告收益: 设备号「YB000053」','2018-08-25 13:17:24','2018-08-25 13:17:24'),
	(388,50,49.00,'balance','广告收益: 设备号「YB000046」','2018-08-25 13:17:25','2018-08-25 13:17:25'),
	(389,50,49.00,'balance','广告收益: 设备号「YB000061」','2018-08-25 13:17:25','2018-08-25 13:17:25'),
	(390,50,49.00,'balance','广告收益: 设备号「YB000044」','2018-08-25 13:17:25','2018-08-25 13:17:25'),
	(391,50,49.00,'balance','广告收益: 设备号「YB000043」','2018-08-25 13:17:25','2018-08-25 13:17:25'),
	(392,50,49.00,'balance','广告收益: 设备号「YB000042」','2018-08-25 13:17:25','2018-08-25 13:17:25'),
	(393,50,49.00,'balance','广告收益: 设备号「YB000041」','2018-08-25 13:17:25','2018-08-25 13:17:25'),
	(394,50,49.00,'balance','广告收益: 设备号「YB000040」','2018-08-25 13:17:25','2018-08-25 13:17:25'),
	(395,49,49.00,'balance','广告收益: 设备号「YB000004」','2018-08-25 13:17:26','2018-08-25 13:17:26'),
	(396,48,3.50,'balance','广告收益: 下级运营商，设备号「YB000004」','2018-08-25 13:17:26','2018-08-25 13:17:26'),
	(397,46,3.50,'balance','广告收益: 团队运营商，设备号「YB000004」','2018-08-25 13:17:26','2018-08-25 13:17:26'),
	(398,48,-35.00,'coin','订单(2018082515390897270): 酷达币支付','2018-08-25 15:39:14','2018-08-25 15:39:14'),
	(399,50,-35.00,'coin','订单(2018082516024740393): 酷达币支付','2018-08-25 16:03:10','2018-08-25 16:03:10'),
	(400,46,-315.00,'balance','订单(2018082517161349945): 余额支付','2018-08-25 17:16:16','2018-08-25 17:16:16'),
	(401,47,5.25,'balance','广告收益: 设备号「YB000057」','2018-08-25 17:16:48','2018-08-25 17:16:48'),
	(402,49,68.25,'balance','广告收益: 设备号「YB000057」','2018-08-25 17:16:48','2018-08-25 17:16:48'),
	(403,48,5.25,'balance','广告收益: 下级运营商，设备号「YB000057」','2018-08-25 17:16:48','2018-08-25 17:16:48'),
	(404,46,5.25,'balance','广告收益: 团队运营商，设备号「YB000057」','2018-08-25 17:16:48','2018-08-25 17:16:48'),
	(405,47,10.50,'balance','广告收益: 设备号「YB000002」','2018-08-25 17:16:48','2018-08-25 17:16:48'),
	(406,49,63.00,'balance','广告收益: 设备号「YB000002」','2018-08-25 17:16:49','2018-08-25 17:16:49'),
	(407,48,5.25,'balance','广告收益: 下级运营商，设备号「YB000002」','2018-08-25 17:16:49','2018-08-25 17:16:49'),
	(408,46,5.25,'balance','广告收益: 团队运营商，设备号「YB000002」','2018-08-25 17:16:49','2018-08-25 17:16:49'),
	(409,49,73.50,'balance','广告收益: 设备号「YB000004」','2018-08-25 17:16:49','2018-08-25 17:16:49'),
	(410,48,5.25,'balance','广告收益: 下级运营商，设备号「YB000004」','2018-08-25 17:16:49','2018-08-25 17:16:49'),
	(411,46,5.25,'balance','广告收益: 团队运营商，设备号「YB000004」','2018-08-25 17:16:49','2018-08-25 17:16:49'),
	(412,48,-35.00,'coin','订单(2018082521440504438): 酷达币支付','2018-08-25 21:44:09','2018-08-25 21:44:09'),
	(413,46,-4620.00,'balance','订单(2018082611293445609): 余额支付','2018-08-26 11:29:49','2018-08-26 11:29:49'),
	(414,47,5.25,'balance','广告收益: 设备号「YB000057」','2018-08-26 11:30:59','2018-08-26 11:30:59'),
	(415,49,68.25,'balance','广告收益: 设备号「YB000057」','2018-08-26 11:31:00','2018-08-26 11:31:00'),
	(416,48,5.25,'balance','广告收益: 下级运营商，设备号「YB000057」','2018-08-26 11:31:00','2018-08-26 11:31:00'),
	(417,46,5.25,'balance','广告收益: 团队运营商，设备号「YB000057」','2018-08-26 11:31:00','2018-08-26 11:31:00'),
	(418,47,10.50,'balance','广告收益: 设备号「YB000002」','2018-08-26 11:31:00','2018-08-26 11:31:00'),
	(419,49,63.00,'balance','广告收益: 设备号「YB000002」','2018-08-26 11:31:00','2018-08-26 11:31:00'),
	(420,48,5.25,'balance','广告收益: 下级运营商，设备号「YB000002」','2018-08-26 11:31:01','2018-08-26 11:31:01'),
	(421,46,5.25,'balance','广告收益: 团队运营商，设备号「YB000002」','2018-08-26 11:31:01','2018-08-26 11:31:01'),
	(422,50,73.50,'balance','广告收益: 设备号「YB000050」','2018-08-26 11:31:01','2018-08-26 11:31:01'),
	(423,50,73.50,'balance','广告收益: 设备号「YB000064」','2018-08-26 11:31:01','2018-08-26 11:31:01'),
	(424,50,73.50,'balance','广告收益: 设备号「YB000063」','2018-08-26 11:31:01','2018-08-26 11:31:01'),
	(425,50,73.50,'balance','广告收益: 设备号「YB000046」','2018-08-26 11:31:01','2018-08-26 11:31:01'),
	(426,50,73.50,'balance','广告收益: 设备号「YB000061」','2018-08-26 11:31:01','2018-08-26 11:31:01'),
	(427,50,73.50,'balance','广告收益: 设备号「YB000044」','2018-08-26 11:31:01','2018-08-26 11:31:01'),
	(428,50,73.50,'balance','广告收益: 设备号「YB000043」','2018-08-26 11:31:02','2018-08-26 11:31:02'),
	(429,50,73.50,'balance','广告收益: 设备号「YB000042」','2018-08-26 11:31:02','2018-08-26 11:31:02'),
	(430,50,73.50,'balance','广告收益: 设备号「YB000041」','2018-08-26 11:31:02','2018-08-26 11:31:02'),
	(431,50,73.50,'balance','广告收益: 设备号「YB000040」','2018-08-26 11:31:02','2018-08-26 11:31:02'),
	(432,49,73.50,'balance','广告收益: 设备号「YB000004」','2018-08-26 11:31:02','2018-08-26 11:31:02'),
	(433,48,5.25,'balance','广告收益: 下级运营商，设备号「YB000004」','2018-08-26 11:31:02','2018-08-26 11:31:02'),
	(434,46,5.25,'balance','广告收益: 团队运营商，设备号「YB000004」','2018-08-26 11:31:02','2018-08-26 11:31:02'),
	(435,47,10.50,'balance','广告收益: 设备号「YB000003」','2018-08-26 11:31:03','2018-08-26 11:31:03'),
	(436,46,73.50,'balance','广告收益: 设备号「YB000003」','2018-08-26 11:31:03','2018-08-26 11:31:03'),
	(437,50,-35.00,'coin','订单(2018082615452422794): 酷达币支付','2018-08-26 15:45:28','2018-08-26 15:45:28'),
	(438,50,-35.00,'coin','订单(2018082615480319024): 酷达币支付','2018-08-26 15:48:06','2018-08-26 15:48:06'),
	(439,53,210.00,'coin','取消订单(2018082509392798400): 酷达币返还','2018-08-26 19:00:02','2018-08-26 19:00:02'),
	(440,53,35.00,'coin','取消订单(2018082011185076362): 酷达币返还','2018-08-26 19:00:02','2018-08-26 19:00:02'),
	(441,53,35.00,'coin','取消订单(2018082011181111766): 酷达币返还','2018-08-26 19:00:02','2018-08-26 19:00:02'),
	(442,53,35.00,'coin','取消订单(2018082011063880738): 酷达币返还','2018-08-26 19:00:02','2018-08-26 19:00:02'),
	(443,53,35.00,'balance','取消订单(2018082011034468216): 余额返还','2018-08-26 19:00:02','2018-08-26 19:00:02'),
	(444,53,35.00,'coin','取消订单(2018082010072222398): 酷达币返还','2018-08-26 19:00:02','2018-08-26 19:00:02'),
	(445,53,35.00,'coin','取消订单(2018081809560169583): 酷达币返还','2018-08-26 19:00:02','2018-08-26 19:00:02'),
	(446,46,25.00,'coin','播放项(759)播放异常，被管理员删除，返还酷达币','2018-08-27 10:06:43','2018-08-27 10:06:43'),
	(447,46,-1470.00,'balance','订单(2018082710143373549): 余额支付','2018-08-27 10:14:56','2018-08-27 10:14:56'),
	(448,50,24.50,'balance','广告收益: 设备号「YB000050」','2018-08-27 10:15:58','2018-08-27 10:15:58'),
	(449,50,24.50,'balance','广告收益: 设备号「YB000064」','2018-08-27 10:15:59','2018-08-27 10:15:59'),
	(450,50,24.50,'balance','广告收益: 设备号「YB000063」','2018-08-27 10:15:59','2018-08-27 10:15:59'),
	(451,50,24.50,'balance','广告收益: 设备号「YB000046」','2018-08-27 10:15:59','2018-08-27 10:15:59'),
	(452,50,24.50,'balance','广告收益: 设备号「YB000061」','2018-08-27 10:15:59','2018-08-27 10:15:59'),
	(453,50,24.50,'balance','广告收益: 设备号「YB000044」','2018-08-27 10:15:59','2018-08-27 10:15:59'),
	(454,50,24.50,'balance','广告收益: 设备号「YB000043」','2018-08-27 10:15:59','2018-08-27 10:15:59'),
	(455,50,24.50,'balance','广告收益: 设备号「YB000042」','2018-08-27 10:15:59','2018-08-27 10:15:59'),
	(456,50,24.50,'balance','广告收益: 设备号「YB000041」','2018-08-27 10:16:00','2018-08-27 10:16:00'),
	(457,50,24.50,'balance','广告收益: 设备号「YB000040」','2018-08-27 10:16:00','2018-08-27 10:16:00'),
	(458,49,24.50,'balance','广告收益: 设备号「YB000039」','2018-08-27 10:16:00','2018-08-27 10:16:00'),
	(459,48,1.75,'balance','广告收益: 下级运营商，设备号「YB000039」','2018-08-27 10:16:00','2018-08-27 10:16:00'),
	(460,46,1.75,'balance','广告收益: 团队运营商，设备号「YB000039」','2018-08-27 10:16:00','2018-08-27 10:16:00'),
	(461,49,24.50,'balance','广告收益: 设备号「YB000038」','2018-08-27 10:16:00','2018-08-27 10:16:00'),
	(462,48,1.75,'balance','广告收益: 下级运营商，设备号「YB000038」','2018-08-27 10:16:00','2018-08-27 10:16:00'),
	(463,46,1.75,'balance','广告收益: 团队运营商，设备号「YB000038」','2018-08-27 10:16:00','2018-08-27 10:16:00'),
	(464,49,24.50,'balance','广告收益: 设备号「YB000037」','2018-08-27 10:16:01','2018-08-27 10:16:01'),
	(465,48,1.75,'balance','广告收益: 下级运营商，设备号「YB000037」','2018-08-27 10:16:01','2018-08-27 10:16:01'),
	(466,46,1.75,'balance','广告收益: 团队运营商，设备号「YB000037」','2018-08-27 10:16:01','2018-08-27 10:16:01'),
	(467,49,24.50,'balance','广告收益: 设备号「YB000036」','2018-08-27 10:16:01','2018-08-27 10:16:01'),
	(468,48,1.75,'balance','广告收益: 下级运营商，设备号「YB000036」','2018-08-27 10:16:01','2018-08-27 10:16:01'),
	(469,46,1.75,'balance','广告收益: 团队运营商，设备号「YB000036」','2018-08-27 10:16:01','2018-08-27 10:16:01'),
	(470,49,24.50,'balance','广告收益: 设备号「YB000035」','2018-08-27 10:16:01','2018-08-27 10:16:01'),
	(471,48,1.75,'balance','广告收益: 下级运营商，设备号「YB000035」','2018-08-27 10:16:01','2018-08-27 10:16:01'),
	(472,46,1.75,'balance','广告收益: 团队运营商，设备号「YB000035」','2018-08-27 10:16:02','2018-08-27 10:16:02'),
	(473,49,24.50,'balance','广告收益: 设备号「YB000034」','2018-08-27 10:16:02','2018-08-27 10:16:02'),
	(474,48,1.75,'balance','广告收益: 下级运营商，设备号「YB000034」','2018-08-27 10:16:02','2018-08-27 10:16:02'),
	(475,46,1.75,'balance','广告收益: 团队运营商，设备号「YB000034」','2018-08-27 10:16:02','2018-08-27 10:16:02'),
	(476,49,24.50,'balance','广告收益: 设备号「YB000033」','2018-08-27 10:16:02','2018-08-27 10:16:02'),
	(477,48,1.75,'balance','广告收益: 下级运营商，设备号「YB000033」','2018-08-27 10:16:02','2018-08-27 10:16:02'),
	(478,46,1.75,'balance','广告收益: 团队运营商，设备号「YB000033」','2018-08-27 10:16:02','2018-08-27 10:16:02'),
	(479,48,24.50,'balance','广告收益: 设备号「YB000032」','2018-08-27 10:16:02','2018-08-27 10:16:02'),
	(480,55,1.75,'balance','广告收益: 下级运营商，设备号「YB000032」','2018-08-27 10:16:03','2018-08-27 10:16:03'),
	(481,46,1.75,'balance','广告收益: 团队运营商，设备号「YB000032」','2018-08-27 10:16:03','2018-08-27 10:16:03'),
	(482,48,24.50,'balance','广告收益: 设备号「YB000031」','2018-08-27 10:16:03','2018-08-27 10:16:03'),
	(483,55,1.75,'balance','广告收益: 下级运营商，设备号「YB000031」','2018-08-27 10:16:03','2018-08-27 10:16:03'),
	(484,46,1.75,'balance','广告收益: 团队运营商，设备号「YB000031」','2018-08-27 10:16:03','2018-08-27 10:16:03'),
	(485,69,24.50,'balance','广告收益: 设备号「YB000030」','2018-08-27 10:16:03','2018-08-27 10:16:03'),
	(486,48,24.50,'balance','广告收益: 设备号「YB000029」','2018-08-27 10:16:03','2018-08-27 10:16:03'),
	(487,55,1.75,'balance','广告收益: 下级运营商，设备号「YB000029」','2018-08-27 10:16:03','2018-08-27 10:16:03'),
	(488,46,1.75,'balance','广告收益: 团队运营商，设备号「YB000029」','2018-08-27 10:16:04','2018-08-27 10:16:04'),
	(489,48,24.50,'balance','广告收益: 设备号「YB000028」','2018-08-27 10:16:04','2018-08-27 10:16:04'),
	(490,55,1.75,'balance','广告收益: 下级运营商，设备号「YB000028」','2018-08-27 10:16:04','2018-08-27 10:16:04'),
	(491,46,1.75,'balance','广告收益: 团队运营商，设备号「YB000028」','2018-08-27 10:16:04','2018-08-27 10:16:04'),
	(492,48,24.50,'balance','广告收益: 设备号「YB000060」','2018-08-27 10:16:04','2018-08-27 10:16:04'),
	(493,55,1.75,'balance','广告收益: 下级运营商，设备号「YB000060」','2018-08-27 10:16:04','2018-08-27 10:16:04'),
	(494,46,1.75,'balance','广告收益: 团队运营商，设备号「YB000060」','2018-08-27 10:16:04','2018-08-27 10:16:04'),
	(495,48,24.50,'balance','广告收益: 设备号「YB000008」','2018-08-27 10:16:04','2018-08-27 10:16:04'),
	(496,55,1.75,'balance','广告收益: 下级运营商，设备号「YB000008」','2018-08-27 10:16:04','2018-08-27 10:16:04'),
	(497,46,1.75,'balance','广告收益: 团队运营商，设备号「YB000008」','2018-08-27 10:16:05','2018-08-27 10:16:05'),
	(498,48,24.50,'balance','广告收益: 设备号「YB000025」','2018-08-27 10:16:05','2018-08-27 10:16:05'),
	(499,55,1.75,'balance','广告收益: 下级运营商，设备号「YB000025」','2018-08-27 10:16:05','2018-08-27 10:16:05'),
	(500,46,1.75,'balance','广告收益: 团队运营商，设备号「YB000025」','2018-08-27 10:16:05','2018-08-27 10:16:05'),
	(501,69,24.50,'balance','广告收益: 设备号「YB000010」','2018-08-27 10:16:05','2018-08-27 10:16:05'),
	(502,51,24.50,'balance','广告收益: 设备号「YB000024」','2018-08-27 10:16:05','2018-08-27 10:16:05'),
	(503,51,24.50,'balance','广告收益: 设备号「YB000023」','2018-08-27 10:16:05','2018-08-27 10:16:05'),
	(504,51,24.50,'balance','广告收益: 设备号「YB000015」','2018-08-27 10:16:05','2018-08-27 10:16:05'),
	(505,51,24.50,'balance','广告收益: 设备号「YB000011」','2018-08-27 10:16:06','2018-08-27 10:16:06'),
	(506,51,24.50,'balance','广告收益: 设备号「YB000022」','2018-08-27 10:16:06','2018-08-27 10:16:06'),
	(507,51,24.50,'balance','广告收益: 设备号「YB000016」','2018-08-27 10:16:06','2018-08-27 10:16:06'),
	(508,51,24.50,'balance','广告收益: 设备号「YB000021」','2018-08-27 10:16:06','2018-08-27 10:16:06'),
	(509,69,24.50,'balance','广告收益: 设备号「YB000020」','2018-08-27 10:16:06','2018-08-27 10:16:06'),
	(510,69,24.50,'balance','广告收益: 设备号「YB000019」','2018-08-27 10:16:06','2018-08-27 10:16:06'),
	(511,69,24.50,'balance','广告收益: 设备号「YB000018」','2018-08-27 10:16:06','2018-08-27 10:16:06'),
	(512,69,24.50,'balance','广告收益: 设备号「YB000009」','2018-08-27 10:16:06','2018-08-27 10:16:06'),
	(513,69,24.50,'balance','广告收益: 设备号「YB000012」','2018-08-27 10:16:06','2018-08-27 10:16:06'),
	(514,69,24.50,'balance','广告收益: 设备号「YB000013」','2018-08-27 10:16:06','2018-08-27 10:16:06'),
	(515,49,24.50,'balance','广告收益: 设备号「YB000004」','2018-08-27 10:16:07','2018-08-27 10:16:07'),
	(516,48,1.75,'balance','广告收益: 下级运营商，设备号「YB000004」','2018-08-27 10:16:07','2018-08-27 10:16:07'),
	(517,46,1.75,'balance','广告收益: 团队运营商，设备号「YB000004」','2018-08-27 10:16:07','2018-08-27 10:16:07'),
	(518,47,2.45,'balance','广告收益: 设备号「YB000003」','2018-08-27 10:16:07','2018-08-27 10:16:07'),
	(519,46,25.55,'balance','广告收益: 设备号「YB000003」','2018-08-27 10:16:07','2018-08-27 10:16:07'),
	(520,46,-35.00,'balance','订单(2018082810505698523): 余额支付','2018-08-28 10:51:04','2018-08-28 10:51:04'),
	(521,47,3.50,'balance','广告收益: 设备号「YB000056」','2018-08-28 10:51:44','2018-08-28 10:51:44'),
	(522,46,24.50,'balance','广告收益: 设备号「YB000056」','2018-08-28 10:51:44','2018-08-28 10:51:44'),
	(523,46,25000.00,'balance','下级运营商：顾鹏 的加盟费分成','2018-08-28 13:44:52','2018-08-28 13:44:52'),
	(524,46,-1505.00,'balance','订单(2018082813460474387): 余额支付','2018-08-28 13:46:16','2018-08-28 13:46:16'),
	(525,50,24.50,'balance','广告收益: 设备号「YB000057」','2018-08-28 13:46:46','2018-08-28 13:46:46'),
	(526,50,24.50,'balance','广告收益: 设备号「YB000050」','2018-08-28 13:46:47','2018-08-28 13:46:47'),
	(527,47,3.50,'balance','广告收益: 设备号「YB000056」','2018-08-28 13:46:47','2018-08-28 13:46:47'),
	(528,46,24.50,'balance','广告收益: 设备号「YB000056」','2018-08-28 13:46:47','2018-08-28 13:46:47'),
	(529,50,24.50,'balance','广告收益: 设备号「YB000063」','2018-08-28 13:46:47','2018-08-28 13:46:47'),
	(530,50,24.50,'balance','广告收益: 设备号「YB000046」','2018-08-28 13:46:47','2018-08-28 13:46:47'),
	(531,50,24.50,'balance','广告收益: 设备号「YB000061」','2018-08-28 13:46:47','2018-08-28 13:46:47'),
	(532,50,24.50,'balance','广告收益: 设备号「YB000044」','2018-08-28 13:46:47','2018-08-28 13:46:47'),
	(533,50,24.50,'balance','广告收益: 设备号「YB000043」','2018-08-28 13:46:48','2018-08-28 13:46:48'),
	(534,50,24.50,'balance','广告收益: 设备号「YB000042」','2018-08-28 13:46:48','2018-08-28 13:46:48'),
	(535,50,24.50,'balance','广告收益: 设备号「YB000041」','2018-08-28 13:46:48','2018-08-28 13:46:48'),
	(536,50,24.50,'balance','广告收益: 设备号「YB000040」','2018-08-28 13:46:48','2018-08-28 13:46:48'),
	(537,49,24.50,'balance','广告收益: 设备号「YB000039」','2018-08-28 13:46:48','2018-08-28 13:46:48'),
	(538,48,1.75,'balance','广告收益: 下级运营商，设备号「YB000039」','2018-08-28 13:46:48','2018-08-28 13:46:48'),
	(539,46,1.75,'balance','广告收益: 团队运营商，设备号「YB000039」','2018-08-28 13:46:48','2018-08-28 13:46:48'),
	(540,49,24.50,'balance','广告收益: 设备号「YB000038」','2018-08-28 13:46:48','2018-08-28 13:46:48'),
	(541,48,1.75,'balance','广告收益: 下级运营商，设备号「YB000038」','2018-08-28 13:46:49','2018-08-28 13:46:49'),
	(542,46,1.75,'balance','广告收益: 团队运营商，设备号「YB000038」','2018-08-28 13:46:49','2018-08-28 13:46:49'),
	(543,49,24.50,'balance','广告收益: 设备号「YB000037」','2018-08-28 13:46:49','2018-08-28 13:46:49'),
	(544,48,1.75,'balance','广告收益: 下级运营商，设备号「YB000037」','2018-08-28 13:46:49','2018-08-28 13:46:49'),
	(545,46,1.75,'balance','广告收益: 团队运营商，设备号「YB000037」','2018-08-28 13:46:49','2018-08-28 13:46:49'),
	(546,49,24.50,'balance','广告收益: 设备号「YB000036」','2018-08-28 13:46:49','2018-08-28 13:46:49'),
	(547,48,1.75,'balance','广告收益: 下级运营商，设备号「YB000036」','2018-08-28 13:46:49','2018-08-28 13:46:49'),
	(548,46,1.75,'balance','广告收益: 团队运营商，设备号「YB000036」','2018-08-28 13:46:49','2018-08-28 13:46:49'),
	(549,49,24.50,'balance','广告收益: 设备号「YB000035」','2018-08-28 13:46:50','2018-08-28 13:46:50'),
	(550,48,1.75,'balance','广告收益: 下级运营商，设备号「YB000035」','2018-08-28 13:46:50','2018-08-28 13:46:50'),
	(551,46,1.75,'balance','广告收益: 团队运营商，设备号「YB000035」','2018-08-28 13:46:50','2018-08-28 13:46:50'),
	(552,49,24.50,'balance','广告收益: 设备号「YB000034」','2018-08-28 13:46:50','2018-08-28 13:46:50'),
	(553,48,1.75,'balance','广告收益: 下级运营商，设备号「YB000034」','2018-08-28 13:46:50','2018-08-28 13:46:50'),
	(554,46,1.75,'balance','广告收益: 团队运营商，设备号「YB000034」','2018-08-28 13:46:50','2018-08-28 13:46:50'),
	(555,49,24.50,'balance','广告收益: 设备号「YB000033」','2018-08-28 13:46:50','2018-08-28 13:46:50'),
	(556,48,1.75,'balance','广告收益: 下级运营商，设备号「YB000033」','2018-08-28 13:46:50','2018-08-28 13:46:50'),
	(557,46,1.75,'balance','广告收益: 团队运营商，设备号「YB000033」','2018-08-28 13:46:50','2018-08-28 13:46:50'),
	(558,48,24.50,'balance','广告收益: 设备号「YB000032」','2018-08-28 13:46:51','2018-08-28 13:46:51'),
	(559,55,1.75,'balance','广告收益: 下级运营商，设备号「YB000032」','2018-08-28 13:46:51','2018-08-28 13:46:51'),
	(560,46,1.75,'balance','广告收益: 团队运营商，设备号「YB000032」','2018-08-28 13:46:51','2018-08-28 13:46:51'),
	(561,48,24.50,'balance','广告收益: 设备号「YB000031」','2018-08-28 13:46:51','2018-08-28 13:46:51'),
	(562,55,1.75,'balance','广告收益: 下级运营商，设备号「YB000031」','2018-08-28 13:46:51','2018-08-28 13:46:51'),
	(563,46,1.75,'balance','广告收益: 团队运营商，设备号「YB000031」','2018-08-28 13:46:51','2018-08-28 13:46:51'),
	(564,69,24.50,'balance','广告收益: 设备号「YB000030」','2018-08-28 13:46:51','2018-08-28 13:46:51'),
	(565,48,24.50,'balance','广告收益: 设备号「YB000029」','2018-08-28 13:46:51','2018-08-28 13:46:51'),
	(566,55,1.75,'balance','广告收益: 下级运营商，设备号「YB000029」','2018-08-28 13:46:51','2018-08-28 13:46:51'),
	(567,46,1.75,'balance','广告收益: 团队运营商，设备号「YB000029」','2018-08-28 13:46:52','2018-08-28 13:46:52'),
	(568,48,24.50,'balance','广告收益: 设备号「YB000028」','2018-08-28 13:46:52','2018-08-28 13:46:52'),
	(569,55,1.75,'balance','广告收益: 下级运营商，设备号「YB000028」','2018-08-28 13:46:52','2018-08-28 13:46:52'),
	(570,46,1.75,'balance','广告收益: 团队运营商，设备号「YB000028」','2018-08-28 13:46:52','2018-08-28 13:46:52'),
	(571,48,24.50,'balance','广告收益: 设备号「YB000060」','2018-08-28 13:46:52','2018-08-28 13:46:52'),
	(572,55,1.75,'balance','广告收益: 下级运营商，设备号「YB000060」','2018-08-28 13:46:52','2018-08-28 13:46:52'),
	(573,46,1.75,'balance','广告收益: 团队运营商，设备号「YB000060」','2018-08-28 13:46:52','2018-08-28 13:46:52'),
	(574,48,24.50,'balance','广告收益: 设备号「YB000008」','2018-08-28 13:46:52','2018-08-28 13:46:52'),
	(575,55,1.75,'balance','广告收益: 下级运营商，设备号「YB000008」','2018-08-28 13:46:53','2018-08-28 13:46:53'),
	(576,46,1.75,'balance','广告收益: 团队运营商，设备号「YB000008」','2018-08-28 13:46:53','2018-08-28 13:46:53'),
	(577,48,24.50,'balance','广告收益: 设备号「YB000025」','2018-08-28 13:46:53','2018-08-28 13:46:53'),
	(578,55,1.75,'balance','广告收益: 下级运营商，设备号「YB000025」','2018-08-28 13:46:53','2018-08-28 13:46:53'),
	(579,46,1.75,'balance','广告收益: 团队运营商，设备号「YB000025」','2018-08-28 13:46:53','2018-08-28 13:46:53'),
	(580,69,24.50,'balance','广告收益: 设备号「YB000010」','2018-08-28 13:46:53','2018-08-28 13:46:53'),
	(581,51,24.50,'balance','广告收益: 设备号「YB000024」','2018-08-28 13:46:53','2018-08-28 13:46:53'),
	(582,51,24.50,'balance','广告收益: 设备号「YB000023」','2018-08-28 13:46:53','2018-08-28 13:46:53'),
	(583,51,24.50,'balance','广告收益: 设备号「YB000015」','2018-08-28 13:46:53','2018-08-28 13:46:53'),
	(584,51,24.50,'balance','广告收益: 设备号「YB000011」','2018-08-28 13:46:54','2018-08-28 13:46:54'),
	(585,51,24.50,'balance','广告收益: 设备号「YB000022」','2018-08-28 13:46:54','2018-08-28 13:46:54'),
	(586,51,24.50,'balance','广告收益: 设备号「YB000016」','2018-08-28 13:46:54','2018-08-28 13:46:54'),
	(587,51,24.50,'balance','广告收益: 设备号「YB000021」','2018-08-28 13:46:54','2018-08-28 13:46:54'),
	(588,69,24.50,'balance','广告收益: 设备号「YB000020」','2018-08-28 13:46:54','2018-08-28 13:46:54'),
	(589,69,24.50,'balance','广告收益: 设备号「YB000019」','2018-08-28 13:46:55','2018-08-28 13:46:55'),
	(590,69,24.50,'balance','广告收益: 设备号「YB000018」','2018-08-28 13:46:55','2018-08-28 13:46:55'),
	(591,69,24.50,'balance','广告收益: 设备号「YB000009」','2018-08-28 13:46:55','2018-08-28 13:46:55'),
	(592,69,24.50,'balance','广告收益: 设备号「YB000012」','2018-08-28 13:46:55','2018-08-28 13:46:55'),
	(593,69,24.50,'balance','广告收益: 设备号「YB000013」','2018-08-28 13:46:55','2018-08-28 13:46:55'),
	(594,49,24.50,'balance','广告收益: 设备号「YB000004」','2018-08-28 13:46:55','2018-08-28 13:46:55'),
	(595,48,1.75,'balance','广告收益: 下级运营商，设备号「YB000004」','2018-08-28 13:46:55','2018-08-28 13:46:55'),
	(596,46,1.75,'balance','广告收益: 团队运营商，设备号「YB000004」','2018-08-28 13:46:55','2018-08-28 13:46:55'),
	(597,47,2.80,'balance','广告收益: 设备号「YB000003」','2018-08-28 13:46:55','2018-08-28 13:46:55'),
	(598,46,25.20,'balance','广告收益: 设备号「YB000003」','2018-08-28 13:46:56','2018-08-28 13:46:56'),
	(599,180,1000.00,'coin','后台充值','2018-08-28 14:04:44','2018-08-28 14:04:44'),
	(600,60,150.00,'coin','后台充值','2018-08-29 10:11:32','2018-08-29 10:11:32'),
	(601,180,-70.00,'coin','订单(2018082911160599154): 酷达币支付','2018-08-29 11:16:35','2018-08-29 11:16:35'),
	(602,180,-70.00,'coin','订单(2018082911172315373): 酷达币支付','2018-08-29 11:17:29','2018-08-29 11:17:29'),
	(603,180,-70.00,'coin','订单(2018082911182106192): 酷达币支付','2018-08-29 11:18:27','2018-08-29 11:18:27'),
	(604,46,-35.00,'coin','订单(2018082912414252092): 酷达币支付','2018-08-29 12:41:46','2018-08-29 12:41:46'),
	(605,46,-35.00,'coin','订单(2018082913070660367): 酷达币支付','2018-08-29 13:07:09','2018-08-29 13:07:09'),
	(606,46,-105.00,'coin','订单(2018082914110754104): 酷达币支付','2018-08-29 14:11:11','2018-08-29 14:11:11'),
	(607,53,-100.00,'coin','转赠给 沧海一粟(10047) <span style=\"color:red;\">Herbert(10053)</span>','2018-10-06 16:41:29','2018-10-06 16:41:29'),
	(608,47,100.00,'coin','由 <span style=\"color:red;\">Herbert(10053)</span> 转赠','2018-10-06 16:41:29','2018-10-06 16:41:29'),
	(609,53,-240.00,'coin','商户服务续费 12 个月(2018102313211791759): 酷达币支付','2018-10-23 13:21:17','2018-10-23 13:21:17'),
	(610,53,-240.00,'balance','商户服务续费 12 个月(2018102314084300734): 余额支付','2018-10-23 14:08:43','2018-10-23 14:08:43'),
	(611,53,-240.00,'coin','商户服务续费 12 个月(2018102314091370980): 酷达币支付','2018-10-23 14:09:13','2018-10-23 14:09:13'),
	(612,53,-175.00,'balance','订单(2018102314140505769): 余额支付','2018-10-23 14:30:01','2018-10-23 14:30:01');

/*!40000 ALTER TABLE `funds` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table industries
# ------------------------------------------------------------

DROP TABLE IF EXISTS `industries`;

CREATE TABLE `industries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'black' COMMENT '颜色',
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '图标',
  `order` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`),
  UNIQUE KEY `industries_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `industries` WRITE;
/*!40000 ALTER TABLE `industries` DISABLE KEYS */;

INSERT INTO `industries` (`id`, `name`, `created_at`, `updated_at`, `color`, `icon`, `order`)
VALUES
	(1,'餐饮服务','2018-07-25 20:24:49','2018-08-05 23:29:30','#EE7C23','icon-info',0),
	(2,'娱乐休闲','2018-07-25 20:23:32','2018-07-25 20:23:32','#C665E2','icon-info',0),
	(3,'酒店旅业','2018-07-25 20:23:12','2018-08-05 23:29:14','#5AE2B8','icon-info',0),
	(4,'商超连锁','2018-07-25 20:22:56','2018-08-12 16:03:33','#F6A82E','icon-info',0),
	(5,'汽车服务','2018-08-12 16:03:43','2018-08-12 16:03:43','#54CA8D','icon-info',0),
	(6,'医疗美容','2018-07-24 20:44:34','2018-08-05 23:28:20','#1EBE52','icon-info',0),
	(7,'楼盘物业','2018-07-25 20:24:03','2018-08-05 12:35:12','#52CE92','icon-info',0),
	(8,'家装建材','2018-08-12 16:05:59','2018-08-12 16:05:59','#F88DD6','icon-info',0),
	(9,'教育培训','2018-07-25 20:24:28','2018-08-05 12:28:15','#F84555','icon-info',0),
	(10,'公共服务','2018-07-24 20:45:30','2018-08-05 23:28:48','#66C5F1','icon-info',0),
	(11,'其它行业','2018-08-14 14:08:01','2018-08-14 14:08:01','#EE7756','icon-info',0);

/*!40000 ALTER TABLE `industries` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table leagues
# ------------------------------------------------------------

DROP TABLE IF EXISTS `leagues`;

CREATE TABLE `leagues` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '分类',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '姓名',
  `tel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '联系号码',
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '内容',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `leagues` WRITE;
/*!40000 ALTER TABLE `leagues` DISABLE KEYS */;

INSERT INTO `leagues` (`id`, `type`, `name`, `tel`, `content`, `created_at`, `updated_at`)
VALUES
	(11,'铺机合作','张如兵','15365597018','','2018-08-22 16:59:56','2018-08-22 16:59:56'),
	(12,'铺机合作','张如兵','15365597018','','2018-08-22 17:00:02','2018-08-22 17:00:02'),
	(13,'加盟合作','最多','18857655087','97897987','2018-09-17 16:25:14','2018-09-17 16:25:14');

/*!40000 ALTER TABLE `leagues` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table messages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '消息内容',
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '链接',
  `markread` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否已读',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `messages_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`id`, `migration`, `batch`)
VALUES
	(273,'2014_10_12_000000_create_users_table',1),
	(274,'2016_01_04_173148_create_admin_tables',1),
	(275,'2016_06_01_000001_create_oauth_auth_codes_table',1),
	(276,'2016_06_01_000002_create_oauth_access_tokens_table',1),
	(277,'2016_06_01_000003_create_oauth_refresh_tokens_table',1),
	(278,'2016_06_01_000004_create_oauth_clients_table',1),
	(279,'2016_06_01_000005_create_oauth_personal_access_clients_table',1),
	(280,'2018_05_28_104346_create_contracts_table',1),
	(281,'2018_05_28_105410_create_industries_table',1),
	(282,'2018_06_06_104814_add_balance_to_users_table',1),
	(283,'2018_06_06_164310_add_agent_id_to_user_table',1),
	(284,'2018_06_06_171350_create_devices_table',1),
	(285,'2018_06_07_101421_create_terminals_table',1),
	(286,'2018_06_08_161724_create_file_libraries_table',1),
	(287,'2018_06_14_152233_create_configs_table',1),
	(288,'2018_06_15_134208_add_storaged_to_users_table',1),
	(289,'2018_06_15_134654_add_size_to_file_libraries_table',1),
	(290,'2018_06_16_170351_create_failed_jobs_table',1),
	(291,'2018_06_22_093445_add_info_to_users_table',1),
	(292,'2018_06_23_103545_create_funds_table',1),
	(293,'2018_06_25_172122_create_accounts_table',1),
	(294,'2018_06_25_173225_create_banks_table',1),
	(295,'2018_06_26_145051_create_withdraws_table',1),
	(296,'2018_06_29_090524_create_coupons_table',1),
	(297,'2018_06_29_091605_create_coupon_user_table',1),
	(298,'2018_07_04_100818_add_type_to_configs_table',1),
	(299,'2018_07_04_125249_create_plans_table',1),
	(300,'2018_07_06_090541_create_device_details_table',1),
	(301,'2018_07_09_161459_create_orders_table',1),
	(302,'2018_07_12_131947_add_pay_to_orders_table',1),
	(303,'2018_07_13_090239_add_mime_to_file_libraries_table',1),
	(304,'2018_07_13_100932_add_remark_to_orders_table',1),
	(305,'2018_07_13_134845_create_system_funds_table',1),
	(306,'2018_07_16_102322_add_num_to_users_table',1),
	(307,'2018_07_21_171525_add_regions_to_devices_table',2),
	(308,'2018_07_21_171832_delete_regions_to_terminals_table',2),
	(309,'2018_07_25_125627_delete_status_to_devices_table',3),
	(310,'2018_07_26_151041_create_plays_table',4),
	(311,'2018_07_27_162355_create_default_materials_table',5),
	(312,'2018_08_01_085850_add_push_state_to_plays_table',6),
	(313,'2018_08_03_163706_add_temps_to_devices_table',7),
	(314,'2018_08_04_104810_create_articles_table',8),
	(315,'2018_08_06_095144_modify_industry_to_contracts_table',9),
	(316,'2018_08_06_101651_add_show_to_devices_table',10),
	(317,'2018_08_11_091303_add_thumbnail_ids_to_orders_table',11),
	(318,'2018_08_14_102931_create_leagues_table',12),
	(319,'2018_08_15_152941_add_prepay_id_to_orders_table',13),
	(320,'2018_08_16_092906_add_refund_number_to_orders_table',14),
	(321,'2018_08_16_103226_create_system_logs_table',14),
	(322,'2018_08_19_195821_destroy_name_to_accounts_table',15),
	(323,'2018_08_20_132116_destroy_prepay_id_wechat_pay_money_to_orders_table',16),
	(324,'2018_08_21_133223_add_play_at_to_orders_table',17),
	(325,'2018_08_24_084452_add_name_tel_to_accounts_table',18),
	(326,'2018_09_01_101656_create_terminal_runtime_logs_table',19),
	(327,'2018_09_04_104331_create_posters_table',20),
	(328,'2018_09_04_104603_add_posters_to_users_table',20),
	(329,'2018_09_13_151007_create_official_images_table',21),
	(330,'2018_09_13_163829_add_limit_login_to_users_table',22),
	(336,'2018_09_15_095844_create_official_news_table',23),
	(338,'2018_09_17_100157_create_official_agents_table',24),
	(339,'2018_09_19_134520_create_official_columns_table',25),
	(342,'2018_10_19_134146_create_store_displays_table',26),
	(343,'2018_10_22_152906_add_usage_scenario_to_coupons_table',27),
	(346,'2018_10_22_165929_create_store_display_orders_table',28),
	(350,'2018_10_24_141210_create_store_display_details_table',29),
	(353,'2018_10_27_100408_create_store_display_coupons_table',30),
	(354,'2018_10_27_142956_create_store_display_coupon_user_table',30),
	(355,'2018_10_31_095802_create_store_display_followers_table',31),
	(356,'2018_10_31_135305_create_messages_table',32),
	(357,'2018_11_02_101822_create_store_display_consume_orders_table',33),
	(359,'2018_11_05_152659_create_store_display_evaluations_table',34),
	(360,'2018_11_05_164936_add_avg_evaluation_to_store_display_details_table',35),
	(361,'2018_11_07_105517_add_style_to_industries_table',36);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table oauth_access_tokens
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oauth_access_tokens`;

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`)
VALUES
	('0029a380cdb5046fdad1800fd6dc91a2a45d4684c1d62d36f96f56ad9940e278f6036400798ae006',126,1,'oV3d-1qKH3RJ5v_5JZtefcZAl_qQ','[]',0,'2018-08-19 20:14:03','2018-08-19 20:14:03','2019-08-19 20:14:03'),
	('021f1c170bd8e9a65b80b19f2bb41a84e98ea5901d4c7e1dfc82aab236776ec51a3aa282aa26651d',193,1,'oV3d-1gIb_Bo-G6f3HTR8omyUpDE','[]',0,'2018-08-29 14:07:58','2018-08-29 14:07:58','2019-08-29 14:07:58'),
	('078689f76400ab28210c301931280499233ecc5ec54ecc3606abfa5dcf5a88fd9c45902fbe6b3974',148,1,'oV3d-1jnSMUtWskr-Z_dmIevxDo0','[]',0,'2018-08-24 10:21:16','2018-08-24 10:21:16','2019-08-24 10:21:16'),
	('07df40d67778f0f0d2366f64b5834848417cd96ce085839603b0e02b005678b632b7a852bdc0b341',63,1,'oV3d-1mT53F4VBIslLS1D08Gqwe4','[]',0,'2018-08-16 17:35:38','2018-08-16 17:35:38','2019-08-16 17:35:38'),
	('086cdd74e0ed068300442d604adbd8b42485477e83714c3124e5192da68a012ec990178138d282d3',100,1,'oV3d-1qkoqybPHIN7ZXdZadM-stU','[]',0,'2018-08-17 21:38:56','2018-08-17 21:38:56','2019-08-17 21:38:56'),
	('0a75c8c5ea34d7076a0effb4784dc37be7350a16dd2d5307bd4f9cceb25c21636c567bc18d4488f2',93,1,'oV3d-1gi9PghkraL8RVq9hKptJrM','[]',0,'2018-08-21 16:18:58','2018-08-21 16:18:58','2019-08-21 16:18:58'),
	('0a9a9eb767133b83471b3e0c9d3a1351fc28b2c79c5b25ad9afdf89965d213beafdfe59b62c21efa',75,1,'oV3d-1ntxuTUgTisMqCSLKoUOiRs','[]',0,'2018-08-17 17:14:21','2018-08-17 17:14:21','2019-08-17 17:14:21'),
	('0ef486562b4cc5ba14f8e4e251d434c7fda49f41aa84e62efa3b9b4b646d8b37aa2538bde02fd7cf',166,1,'oV3d-1odLK0q9dYVNfgpzVFISeRM','[]',0,'2018-08-26 17:48:22','2018-08-26 17:48:22','2019-08-26 17:48:22'),
	('0f34c045cc9af9fe8c82b68bd6d4a8905c4109b0cf1e8d639f11fcbea8ea003b7442ad5631c5947c',70,1,'oV3d-1usVCnnMH9CX21ZorwID1BQ','[]',0,'2018-08-24 17:44:46','2018-08-24 17:44:46','2019-08-24 17:44:46'),
	('0f9c5d1a74b1408418a21d9085a7c00d56548a1c7e37b2c9fe43867f344cb0c71331862048255e70',98,1,'oV3d-1pvowt1KA4KahmLcNuomYgc','[]',0,'2018-08-17 20:39:17','2018-08-17 20:39:17','2019-08-17 20:39:17'),
	('154ee273c01159af677611d79b4c14aca5d6d35cae809e2677a6373ceb3b762d17a5437a3459a196',66,1,'oV3d-1ioJdtkHY0Tw7AcX1OdGzQ8','[]',0,'2018-08-19 20:43:38','2018-08-19 20:43:38','2019-08-19 20:43:38'),
	('15f4a9873fe728702e7efb4940d59767ebb75d7b32c143b5399c86275905faecd57f94a034b1d825',179,1,'oV3d-1sI0AB5aQR6kNQfWg10FcAw','[]',0,'2018-08-28 13:57:28','2018-08-28 13:57:28','2019-08-28 13:57:28'),
	('1a579cbfbc1b0e863fbe8c1ef095ec0adee08cb6fe4b63baa44f3e2d217eb57d4178dc150d04b1a5',132,1,'oV3d-1nQi-E-VZUzJDpCQQFZ_ick','[]',0,'2018-08-20 17:32:28','2018-08-20 17:32:28','2019-08-20 17:32:28'),
	('1b9e7e37a4e9f180b9b8d213f97dd67146710699e33d4e2464e0f727f3c4173c47594e94e46e6db7',72,1,'oV3d-1m9S4H2fqZExG4ewMkyLYzI','[]',0,'2018-08-16 20:53:18','2018-08-16 20:53:18','2019-08-16 20:53:18'),
	('2174d3406c6f6e07276d7437b980d23157e577c77b5cbc79a55093d663612571a6f448055b2297a4',129,1,'oV3d-1sLSzoBLASqKjz1nsNeKPks','[]',0,'2018-08-23 20:11:00','2018-08-23 20:11:00','2019-08-23 20:11:00'),
	('230cad0584b2ec39b292f40cedf5236d51ca7105a79cf044e3c76994355c6646d79f28f90b501f28',146,1,'oV3d-1vzxfvVDuBXMJz9ecDv7gTs','[]',0,'2018-08-23 10:51:40','2018-08-23 10:51:40','2019-08-23 10:51:40'),
	('23704cefab503c41150757dcb87eb6197c806f68985ee0c1bc8af16db3d3f688e8448b8ffa133ce0',115,1,'oV3d-1lD-t3aAa30MT0ZzRZaIKu8','[]',0,'2018-08-21 15:37:56','2018-08-21 15:37:56','2019-08-21 15:37:56'),
	('238574e25a2c61a4e3dead89143d3f4d8d651474000fd2deaf83113203200953e1a1c67a4e35d09d',86,1,'oV3d-1hTTqlLri40ac0RxRllSfZE','[]',0,'2018-08-24 15:52:15','2018-08-24 15:52:15','2019-08-24 15:52:15'),
	('24808289ba0a0d20f980d52066f6a10315bc3414aff52875e1ba3bd54cf1ff7328c9752f81136249',174,1,'oV3d-1iGjbT6LzblDU_PKu6q3zFE','[]',0,'2018-08-28 13:11:21','2018-08-28 13:11:21','2019-08-28 13:11:21'),
	('29b7113100e44073f7640aef1fe7fa7f95295e9b9eb11d5fbba9b996120cfeb9aac215ae79803501',150,1,'oV3d-1pkCYq7ZQXiTSD7G2yA_OJU','[]',0,'2018-08-24 15:18:22','2018-08-24 15:18:22','2019-08-24 15:18:22'),
	('2d5abad5b6b6feac3fa1fb92920a28a9fddac752a3b1b21d14a85497b537b350caba2544e8ec9ad4',189,1,'oV3d-1qVkMKq1EqdiUQVqSRbdph8','[]',0,'2018-08-28 21:23:12','2018-08-28 21:23:12','2019-08-28 21:23:12'),
	('2defc5494c3470890543d33c017fa53915e640a89785b37a2e483ed88c99ccf413504d318f5c3aaa',136,1,'oV3d-1ktDhNFqDEJxLW-cZ9b9iM4','[]',0,'2018-08-20 19:09:28','2018-08-20 19:09:28','2019-08-20 19:09:28'),
	('2e14edf1232631c29df15bfe2825b13b44c1a210145c5ef525b885b5e8e704be575245271b9825b5',167,1,'oV3d-1klxgjGvzAMjzzLi-UCb1_c','[]',0,'2018-08-26 22:18:05','2018-08-26 22:18:05','2019-08-26 22:18:05'),
	('2e67b81d4945512be36281f92eaf50df7d0dad8b19f600461ab0de4597595474a08ca5de50a13af7',59,1,'oV3d-1juP-ahR_cPTOrvCQ_rejjA','[]',0,'2018-08-18 13:40:55','2018-08-18 13:40:55','2019-08-18 13:40:55'),
	('33653a870eef833d8be5276f2cd01b238d82019a79a7b81dfac53e1b491119d83be50e57ac772018',165,1,'oV3d-1hZ_ge48504AFRJKxsMR_1o','[]',0,'2018-08-26 13:14:44','2018-08-26 13:14:44','2019-08-26 13:14:44'),
	('353aea518620c8dc1b25c2f6b0307778d0666d2209a0b0927cd2320d3202e92dd99963f7ec0e8493',157,1,'oV3d-1nn2KptlIFOSQ2JRHoKk9o0','[]',0,'2018-08-25 09:41:12','2018-08-25 09:41:12','2019-08-25 09:41:12'),
	('3543acd91fa6c5e4498b6f4e5dd2849648c7a305337a4133c2ac6f84bbd901b2c5de6ccfaa11c4ff',169,1,'oV3d-1olIXry-dahtvIvJGEie9gw','[]',0,'2018-08-27 17:40:28','2018-08-27 17:40:28','2019-08-27 17:40:28'),
	('35566149fe587d92640b7862bf39dc7136d0e6e59f9288026e6825a5587ddda681ecc01859224343',95,1,'oV3d-1ljZemzsr8GPslST7iR8Xrw','[]',0,'2018-08-17 18:03:40','2018-08-17 18:03:40','2019-08-17 18:03:40'),
	('37d45a3a1d9aefa36eafeac0705ec2434ab9436cf371f094a5aa6b41eebea591a4757e4be7ce0053',116,1,'oV3d-1p7pRqAINPIt_XB47Nel1x8','[]',0,'2018-08-19 11:50:37','2018-08-19 11:50:37','2019-08-19 11:50:37'),
	('3affc62095a2c884638a3061f056050046d2723d2d7fbf6ad079b0b4e7ea96234694cfb54b6cee55',91,1,'oV3d-1kF09AHIH0YYtQv9ZosXq1Q','[]',0,'2018-08-26 16:33:30','2018-08-26 16:33:30','2019-08-26 16:33:30'),
	('3b865b9df2d54936ca1db2b22564b307e4b4abb385216aaa732e4432ab5688797ff156683b3d44d7',76,1,'oV3d-1pekTS0f6AQN1pc5lbzr5Eo','[]',0,'2018-08-17 10:15:45','2018-08-17 10:15:45','2019-08-17 10:15:45'),
	('3bfc210dfaf5aa7ab6d3302ddd58f5e7bb2b434962a73d7b87b2f896516e641fed1676225d819e27',112,1,'oV3d-1pSsJti9Pz0ryHFgCQudFhU','[]',0,'2018-08-18 23:12:45','2018-08-18 23:12:45','2019-08-18 23:12:45'),
	('3d28b5f6c2fa33c432fb55d2df8c4efb70b55b7d794ec1d39c49e60fbd424bcf63e5652fc800230c',109,1,'oV3d-1rVcjFFxmcirhM4r9wRMRps','[]',0,'2018-08-19 16:50:48','2018-08-19 16:50:48','2019-08-19 16:50:48'),
	('45f24313c1c63bd2babf86811e7b4adb7d892ffccf14b58bdc5e279e6be569425d523723956e913b',137,1,'oV3d-1gPH_-4FEcmJPxk5zIlTzzk','[]',0,'2018-08-20 22:08:26','2018-08-20 22:08:26','2019-08-20 22:08:26'),
	('47afc8b1dd1ad1b536999a89eb5503eda05aa054809b3c27ca0bdc9f90603d5feb4961bc1ddcc714',187,1,'oV3d-1iIUELmDQFIi5LY1bZucncI','[]',0,'2018-08-28 16:02:59','2018-08-28 16:02:59','2019-08-28 16:02:59'),
	('4ac61c2113b7fc26afb192d2fa75cde93633f62e0351a5482114995693e92a5d11008ad4314fae17',123,1,'oV3d-1uDqJR0D-lFkfRpPPXPh1Mo','[]',0,'2018-08-26 13:52:50','2018-08-26 13:52:50','2019-08-26 13:52:50'),
	('4ae746479e5789bd4e4847e675cb4a7484989c44fc9bfcf12637ad9b406cc2c1e1135664bf82cab0',57,1,'oV3d-1ooPDDMdV8OdKuwYtnPq2PU','[]',0,'2018-08-16 16:10:33','2018-08-16 16:10:33','2019-08-16 16:10:33'),
	('4cb0ef5da6b60e15ba39b02fc4dbc021fdeadbddd071ccd24b598f2220589bebb7fa1c4545c0e70a',107,1,'oV3d-1miYXgDjiLA8U4ezVMRwHAg','[]',0,'2018-08-18 13:23:19','2018-08-18 13:23:19','2019-08-18 13:23:19'),
	('4ecb15a8d401c500c69459bf2fad2f47205223932af54a2011c0f8364577b31837bb20c5f539a829',60,1,'oV3d-1rNs0omJzCaaJJZUvVbdtVw','[]',0,'2018-08-27 19:31:28','2018-08-27 19:31:28','2019-08-27 19:31:28'),
	('5594ee875b2aab5025a7f0e01324fbdf4922835218c98f671b6817d66f7236cb422f23d528b5dc8f',97,1,'oV3d-1nNEoYLzzAFMbUjk6kcVCis','[]',0,'2018-08-20 17:57:23','2018-08-20 17:57:23','2019-08-20 17:57:23'),
	('5a1fc9cfc82e924afca931c83aeb200dfef5fa53c5a7a1e230f70e7e55b5cc9f02fe8bbd7604fbd1',71,1,'oV3d-1moLesNsWtjupN_bcdArqCc','[]',0,'2018-08-19 00:12:56','2018-08-19 00:12:56','2019-08-19 00:12:56'),
	('5a2e8adbabb86c9398fa4f09e9996aee0a06bd0d88175ec07e93ee60d9086f15251b9f820315a2f0',58,1,'oV3d-1hiH-JKWfucEgzEO1a5kr2s','[]',0,'2018-08-16 16:16:55','2018-08-16 16:16:55','2019-08-16 16:16:55'),
	('5e82c7504ce1e350a3aeea29fdd048cbf83b2b096aaabed24a39e7dacbf00c2b671409a9622383fd',122,1,'oV3d-1mK5aGHLV-pYXX95pjHDWY4','[]',0,'2018-08-19 16:57:47','2018-08-19 16:57:47','2019-08-19 16:57:47'),
	('60f75ea24e3e38a069fcb5a98e5209efac189d24b51de2c0a1fd02bb622aa65faf9652bc3a754c9c',153,1,'oV3d-1rVDf8lWRvPVvatQBi8rw0M','[]',0,'2018-08-24 22:47:19','2018-08-24 22:47:19','2019-08-24 22:47:19'),
	('626861e4d9e62e81582c617097121299f4232a560264738c65ca712bff99d47cf142174c39c1fc82',56,1,'oV3d-1hZZkrnwyLgokmJ34bPeg_A','[]',0,'2018-08-16 20:20:29','2018-08-16 20:20:29','2019-08-16 20:20:29'),
	('6579f2a4171336d021fd519c75eed3f07643c70303b03189980429d734a075d640d017447992bc03',81,1,'oV3d-1rwZaIZ9ILfscejWF7MmEBs','[]',0,'2018-08-26 16:38:32','2018-08-26 16:38:32','2019-08-26 16:38:32'),
	('66db55304916dc9091f71f986b183369d4f55d0c29422cfe9b99fb59c75577f03561d7e537f420da',79,1,'oV3d-1jIJ5Yc1eha1Kf0-uY1ChhQ','[]',0,'2018-08-28 16:11:29','2018-08-28 16:11:29','2019-08-28 16:11:29'),
	('6801f760eeabf302436a7e1677b64c33e4db6e1673f8dc82975049ee86e05c7c7bd265746b780d30',181,1,'oV3d-1kseQkPwJBiW_bY_v9zOpCM','[]',0,'2018-08-28 14:05:00','2018-08-28 14:05:00','2019-08-28 14:05:00'),
	('69b243f3857737d3eca79d8ab20f3576abab9a4a4c1a6f838f6e7ebc1db6eba8b3c007cc25e2ef74',117,1,'oV3d-1vbB7RHzlFLboVEbidfNaPI','[]',0,'2018-08-19 13:27:31','2018-08-19 13:27:31','2019-08-19 13:27:31'),
	('6d8df4b4b029a9947e83fd98590730b40c9794fd34e2fd5cc4b03d1ee267a31136eefe3da2566116',68,1,'oV3d-1qB0EokhBcgsceBn-k3TlmI','[]',0,'2018-08-18 18:02:11','2018-08-18 18:02:11','2019-08-18 18:02:11'),
	('6ff989da5f4ceddc1d202ede0f1aefa0447c272815a61da865e3499b14d61ae857e17bda47703a40',164,1,'oV3d-1k2luuuJ2wi3pZKPj6o34Xw','[]',0,'2018-08-25 18:42:47','2018-08-25 18:42:47','2019-08-25 18:42:47'),
	('722577d967e9e95e3f51d01cac37fd99a131e79d74e3491df867358bccf84535a54792c0d6078c93',161,1,'oV3d-1j0HyMocWiC3cRI9xA4DJCQ','[]',0,'2018-08-25 14:46:48','2018-08-25 14:46:48','2019-08-25 14:46:48'),
	('73320f419198d69f3f14a5346c45b7d4bbfb70022739af0eb3ecf9a1fde3ea5d366df55a9d51ea5e',89,1,'oV3d-1ufxX3jKKzLiQSd5e4qXL2k','[]',0,'2018-08-19 16:30:08','2018-08-19 16:30:08','2019-08-19 16:30:08'),
	('765abfd8be2b6685939062a05ac9e225000361afded2393d8638049979afa2968276c74d0908ad10',84,1,'oV3d-1lgKYomL-cmVSeGRwSMdWPo','[]',0,'2018-08-17 12:25:08','2018-08-17 12:25:08','2019-08-17 12:25:08'),
	('77243615dffc79ec944c58b9a5fec8ae5158a88d58da76dc7a9e09c00e4efb3d3117ceb7ec5ea4e7',140,1,'oV3d-1so0V2ZdxXOhaLv9Q1xGrcs','[]',0,'2018-08-22 09:51:45','2018-08-22 09:51:45','2019-08-22 09:51:45'),
	('788369a05757672704af7a0649399053c78b0e26daf028f00e2d7e08d29d7d3a9700f8dcd8f2b0c5',139,1,'oV3d-1hChdXD2M1Hr_37B0SVDAnQ','[]',0,'2018-08-21 22:12:49','2018-08-21 22:12:49','2019-08-21 22:12:49'),
	('7b6b055dccabf2fcc6a4e09ba34a1f10d1282df6c1cf77089b0931353c1a454b265ceafcbe175888',48,1,'oV3d-1m7u0sVMcKUZqbSVgHUqWWk','[]',0,'2018-08-28 22:48:36','2018-08-28 22:48:36','2019-08-28 22:48:36'),
	('7eed72f6629b28d81cfbe3493828cc837015a5637ef76e622b497bbee18260113e29a78d463fc2d1',73,1,'oV3d-1nYJ-XAhdiQQns7tsynVCGM','[]',0,'2018-08-16 20:58:29','2018-08-16 20:58:29','2019-08-16 20:58:29'),
	('830506c202dadfd7c69149b18b440b17378e9ec3328031db97fb94d0e27c0769ecd0af5912e3c05f',102,1,'oV3d-1nXK9UlCaWNyueUXkIJxkGA','[]',0,'2018-08-17 21:50:24','2018-08-17 21:50:24','2019-08-17 21:50:24'),
	('884f11d606d824799e07662d3ed6c6b0f21d73548094f6704dffbf9430d82846c4531c2f8a9d46cc',49,1,'oV3d-1iPaKW54JIVoqRhzegv3g_E','[]',0,'2018-08-26 11:31:47','2018-08-26 11:31:47','2019-08-26 11:31:47'),
	('8ad15b3f1a32c08e509ab302c6359aa63ca78495b5366772a65f92dfce419d80b22106ea7c6ac5f7',185,1,'oV3d-1q_mJ8qNlK2eybv97qgetxc','[]',0,'2018-08-28 15:04:38','2018-08-28 15:04:38','2019-08-28 15:04:38'),
	('8de4a79c57ed87129858f1820c17a852fb1970d18fc24d18673ad305f45cd48569ea7ed7605577a3',160,1,'oV3d-1pJIOGzOQ4uqnEbGCv0srlI','[]',0,'2018-08-25 11:28:47','2018-08-25 11:28:47','2019-08-25 11:28:47'),
	('938aa1acc3bb0f0a77eea6e4c8042a5d436217b9e88c7414f2d139c6fb6770fa16cc25b2ec76c9d3',163,1,'oV3d-1tukz-ZzZVo-utI9Fw5lan4','[]',0,'2018-08-27 08:46:15','2018-08-27 08:46:15','2019-08-27 08:46:15'),
	('940d72eb2b4723d5653874d9976e512111ccdcdfe02d1271d6180dd7d6f4901bb00b35e35d93459e',103,1,'oV3d-1qJYVH1YzpDw0mbqQMeu0eE','[]',0,'2018-08-18 12:34:43','2018-08-18 12:34:43','2019-08-18 12:34:43'),
	('945f79b7e8581bd5ac3732b0b94c08b5fcaca4526260f9fdcabeac737148870a4643aab57b16d826',128,1,'oV3d-1p2MzbkbKdDlO61T5PHjalE','[]',0,'2018-08-25 21:53:56','2018-08-25 21:53:56','2019-08-25 21:53:56'),
	('95701e6948f2277c7c1f28bd5e589897ec0f123953bd05b9055fa34a9fc0beb3c125dd86be2894ba',47,1,'oV3d-1l-aJmh1XWBYgw8hXN5nDQ8','[]',0,'2018-08-28 17:00:31','2018-08-28 17:00:31','2019-08-28 17:00:31'),
	('95ab30991eda1cedc8cc37b6879c01bbd1584174759f0b9ebb96bf8cdcdd694a286c90ab2215cc3d',130,1,'oV3d-1vjZtar2Uc6-eiq9aLUsTlA','[]',0,'2018-08-19 22:29:11','2018-08-19 22:29:11','2019-08-19 22:29:11'),
	('95e58f2d63be1ecf367f5543e49b0d075df9de658f4cf58618c6f361db616e998488fe46db4e9c30',184,1,'oV3d-1pBIdjCRvXR5CHcFkTLwhB0','[]',0,'2018-08-28 22:44:24','2018-08-28 22:44:24','2019-08-28 22:44:24'),
	('97351b547e8d93060244919b308ce93135ba667bc816424864ac2476670cf980fc373b5a90aa52ce',147,1,'oV3d-1s3D0Mwdl8XmA2S266M28AU','[]',0,'2018-08-23 17:07:32','2018-08-23 17:07:32','2019-08-23 17:07:32'),
	('97a5b7c7dd24ba74bdafc60345a7e5ee2ac196780f68092d0c9df205298d9231a5d494f2ead4745f',87,1,'oV3d-1t260-5E1yscWKv1IdGUrH4','[]',0,'2018-08-17 13:24:40','2018-08-17 13:24:40','2019-08-17 13:24:40'),
	('99e8db6ee7f2ac5318ca2a7251a9e7f92013b46f7d55b9faac98a522cee0a1639a805f321037ced7',180,1,'oV3d-1mR9YsW9M8iedqO8r-TGTUM','[]',0,'2018-08-28 13:58:40','2018-08-28 13:58:40','2019-08-28 13:58:40'),
	('9af92bfaf551f12388e212cdf83c9fde469f005f6405dca6a86285edb7b8bf0947f6dc5073c36291',162,1,'oV3d-1nPBaPPfmZlZwrpv4irDq_Y','[]',0,'2018-08-25 14:46:38','2018-08-25 14:46:38','2019-08-25 14:46:38'),
	('9fe3f90dc17702dee73fc127e9a7d9db4016d6c5ec44f05dc913bd769a1bc94c6ac357df84589e9e',176,1,'oV3d-1vmxNeE-xlXCYrlnnkv082Y','[]',0,'2018-08-28 13:03:32','2018-08-28 13:03:32','2019-08-28 13:03:32'),
	('a0f22c10260b06fc80b2c6e61eef5f0bfc6f89109d8e6e95ce69f510dd5f875bee5e73acddd908a5',85,1,'oV3d-1mw0F97CzhNhmJfm57kbS-A','[]',0,'2018-08-17 13:19:18','2018-08-17 13:19:18','2019-08-17 13:19:18'),
	('a2a5f54c5bfdc44e58cd3b50b0beb5260cc77afc4c5811f08cf557afc8eded333fb4987fd865c8fd',156,1,'oV3d-1utQUbUSM1bMLqFpu4ExRo4','[]',0,'2018-08-24 23:55:50','2018-08-24 23:55:50','2019-08-24 23:55:50'),
	('a4d55c99371e9d313728465e3b9916e984d182ee0d3ed6413180d084fca00d71adc144c244efa56f',67,1,'oV3d-1kboACxJ_ETSRdWuW5vT_-A','[]',0,'2018-08-16 18:38:24','2018-08-16 18:38:24','2019-08-16 18:38:24'),
	('a4fb0efb86d10cd9642f2244190a620a3528327c307e1ba522a099d393bf38218e9f643e92c9826a',149,1,'oV3d-1tscsxE7r7dtdpHo089SXhU','[]',0,'2018-08-24 13:24:47','2018-08-24 13:24:47','2019-08-24 13:24:47'),
	('a6a4ddb450236cba53bfcc54d70cfbb55b716decbd135adefa4782cb02c92dad7f057d0a9275c007',51,1,'oV3d-1mX2t4WbZhkGghfq6Uaysj8','[]',0,'2018-08-26 14:06:43','2018-08-26 14:06:43','2019-08-26 14:06:43'),
	('ab9a21af15601f41864105aae771567e8e93f150986eefc561e84fe6d23d6bd62f00a5fa15f11c34',77,1,'oV3d-1jIJ5Yc1eha1Kf0-uY1ChhQ','[]',0,'2018-08-17 10:29:15','2018-08-17 10:29:15','2019-08-17 10:29:15'),
	('ac1556667ad543abef69971364e54a944b7ff34c44ca6e8de3a953f4706b267466f05456be8a2e0c',144,1,'oV3d-1hN7ZVGK5gB-ZXf5Vz7tM7o','[]',0,'2018-08-22 16:39:06','2018-08-22 16:39:06','2019-08-22 16:39:06'),
	('b0484d11e2e959efc5a942cf9fc998749c0e874ac678328490550472b7d7da9034d5eb5224925337',170,1,'oV3d-1iuK1PDpIwGwTXuCC9M-dvM','[]',0,'2018-08-28 09:55:25','2018-08-28 09:55:25','2019-08-28 09:55:25'),
	('b0d98ee740651e4a5f83108a3b2a50d720130a67cf40d4fe39d29ded750c98b142051df80155bf15',55,1,'oV3d-1ofFGvr0hX_2PB2nucLEaaY','[]',0,'2018-08-20 18:24:25','2018-08-20 18:24:25','2019-08-20 18:24:25'),
	('b2c017207a17bbacc03bea90186c3193dad20d9e56cb4ed4a60d9b0a1ebd2e6bf929850b5252a0e7',46,1,'oV3d-1jrA84NL62_madiSWinHqoo','[]',0,'2018-08-28 11:05:08','2018-08-28 11:05:08','2019-08-28 11:05:08'),
	('b4d035a6a3a5faf28ed00988276f827ca9b1b7a2cb2e10fa47633d3e6ca8aba402f4b48ae6c53d45',54,1,'oV3d-1ubjx0GloDF2_oyVLpSX-dI','[]',0,'2018-08-16 15:36:21','2018-08-16 15:36:21','2019-08-16 15:36:21'),
	('b6e079e43cbddf4b0e3729e00401546b23188efeafc0d820a1e5aec53f189407d2d0de0565ade2ec',120,1,'oV3d-1tN9xTPJAusU5UqcP80octw','[]',0,'2018-08-23 19:55:34','2018-08-23 19:55:34','2019-08-23 19:55:34'),
	('b78d6f4830e88027c391c4466a2fd9bdb74c84009e37ce8024ad00f151c731d890d346f4e71a76eb',96,1,'oV3d-1ltHLyJeo9XjGjeDvLr6DZw','[]',0,'2018-08-29 12:06:53','2018-08-29 12:06:53','2019-08-29 12:06:53'),
	('b7d0fab8558489b5e11cb61fd02a8881b0bab09b6d91108eec98f2c7950ea37dba230db8fb56dc18',152,1,'oV3d-1u53txwHOk6EFZybDEPPKSk','[]',0,'2018-08-24 20:26:03','2018-08-24 20:26:03','2019-08-24 20:26:03'),
	('b933e41cf7ee14589ef93e0856b84f7e7ff01dbdb1d605335b54b911ce117655ea7584c72c64e035',83,1,'oV3d-1lWNMnw6w7RrkeEvg4tOwJk','[]',0,'2018-08-17 12:22:24','2018-08-17 12:22:24','2019-08-17 12:22:24'),
	('b9432c01d2a7048bb99d4a7efcc6627a79b71b6cc7d8c2f606e9e8637017d548f8da20c6717cd4d9',110,1,'oV3d-1nS5pwAcqI2jX8NXY6J5Fco','[]',0,'2018-08-28 12:40:14','2018-08-28 12:40:14','2019-08-28 12:40:14'),
	('bd9df09df32ca6b7e9ce4b09be658bd9b4fb02a6a3870c7ea1247a1400bbf646c6c8a91904235538',158,1,'oV3d-1mTV4Dm3sK5dCSLunQ8atZA','[]',0,'2018-08-25 10:26:03','2018-08-25 10:26:03','2019-08-25 10:26:03'),
	('bea1d7e04bb76a8d83b298b01035a52b37209b1275f4d333af7d89a4b194e6dc380e3641cfc9e4f0',125,1,'oV3d-1rw9Dl5WFCLR5Ls8PwhaY3c','[]',0,'2018-08-19 18:36:36','2018-08-19 18:36:36','2019-08-19 18:36:36'),
	('bfd9f6833e7d353138379644c2ab07c5257e2ed66272cce63b0a3a79f03a4aea2068cfde8a162c63',90,1,'oV3d-1nFSNf_G56TuAFhJM8vT14s','[]',0,'2018-08-17 15:12:56','2018-08-17 15:12:56','2019-08-17 15:12:56'),
	('c1b6f844ba68b9a2cb76df7cab12ca85da678653707890c8a76ecb607879a3bb23f4cf5f1ebad2fe',105,1,'oV3d-1iaKV__vt4tXpx2Qc-4sgAA','[]',0,'2018-08-19 10:34:27','2018-08-19 10:34:27','2019-08-19 10:34:27'),
	('c1e833c72ecb7beb8efd2a1ea2067b503568efaa695eb74d20c25baf00d36f08473f7485c91d1bb6',53,1,'oV3d-1uJWWPLFCpQfjI0dXUja2AE','[]',0,'2018-11-08 11:27:42','2018-11-08 11:27:42','2019-11-08 11:27:42'),
	('c4375ccc6ba16dd1827be319d990a92365eddaa4df6b8c8f0d2dec599cd9a05e2d6b0acc224e7690',134,1,'oV3d-1quHkbq0OrnI_MBXQ0wEvoY','[]',0,'2018-08-20 18:40:53','2018-08-20 18:40:53','2019-08-20 18:40:53'),
	('c4fed5945c39d34afa57a29665be34574966d6a8f1529dec9af51a106417d6070f365a9d28220e2f',188,1,'oV3d-1jFBe1PNA60c0j0jJq46R2E','[]',0,'2018-08-28 17:18:06','2018-08-28 17:18:06','2019-08-28 17:18:06'),
	('c644574fa663ed552880caf952d7cc011539b70bed8c9f02b1d05b965d01a3d53b1ac1d5b073ee2e',182,1,'oV3d-1sjxlSjoDrPSmucoKC30qe4','[]',0,'2018-08-29 11:01:53','2018-08-29 11:01:53','2019-08-29 11:01:53'),
	('c7ccc5ab9f465232b976c40f66172ffdd18451e1c178dd6068aac9f1afb05f14215b23a6ed344046',155,1,'oV3d-1h-L-RoEJhbyod8Y-bHx6YA','[]',0,'2018-08-24 23:10:12','2018-08-24 23:10:12','2019-08-24 23:10:12'),
	('c828ff7b102b9ef8e7bc225ff3f9497c10a4ea9e6a598d8e9caa7224215015bf8f981eb9a9ec5afb',121,1,'oV3d-1k8Y2r2JGPlS3E1M8QoW0OU','[]',0,'2018-08-25 12:17:28','2018-08-25 12:17:28','2019-08-25 12:17:28'),
	('c847bfe9517bb396458f4fa48b96e04e47dd17c575df9d7b49755c90de87faff6f37680c60aa5dcd',64,1,'oV3d-1mWmXErSJyx1TXHpS1gVzsg','[]',0,'2018-08-16 17:56:21','2018-08-16 17:56:21','2019-08-16 17:56:21'),
	('c98d45bf4426bdd40bf98e5de0fe2e563c307bdbaadde279c81624a57f4cdeec8da06e370f05bb8a',111,1,'oV3d-1oNdiUgsAmxHYyAUJR20eZU','[]',0,'2018-08-29 13:21:48','2018-08-29 13:21:48','2019-08-29 13:21:48'),
	('cc64f05c470a67945741e2a8b1b8a33f12741dacec5304a276ec2dc227d12df8806fa88044d48ec9',168,1,'oV3d-1qezxoLPsTvVcXVHfBO5Ytc','[]',0,'2018-08-29 14:26:06','2018-08-29 14:26:06','2019-08-29 14:26:06'),
	('ccf224f432026896ed0dae5c4e6d9bc4817bf560a576f3dbd7ac190ad7a2e35fdf25fcd3e7140795',154,1,'oV3d-1phtcFEg6qFg5_-PzIpW31E','[]',0,'2018-08-24 22:48:35','2018-08-24 22:48:35','2019-08-24 22:48:35'),
	('cd4c85498ab8a9f10c18c1d9c8b6dfd6f38cb240075f5e719e57077a9614d6119320ef3408f90be6',106,1,'oV3d-1oEgU5_-mIYsTE9ZPlZaG7E','[]',0,'2018-08-18 13:02:09','2018-08-18 13:02:09','2019-08-18 13:02:09'),
	('cd7eca24ebb6a0c481fb37a8525515c681b347ee3a182b8403df380ee81d882a3b76999cd379197d',69,1,'oV3d-1rdXG14SXpOeJAHRauGd-Mw','[]',0,'2018-08-28 14:15:00','2018-08-28 14:15:00','2019-08-28 14:15:00'),
	('cfa31a7a05f2f67d9ec950a0b54ebce0f5fc9bd6042a03eda708eeac03c4cdfbdd70764e274e150c',99,1,'oV3d-1rOCdtk3k69bqyia89_IBhs','[]',0,'2018-08-25 13:48:43','2018-08-25 13:48:43','2019-08-25 13:48:43'),
	('d375edca3c95000872ee0faf6ff04581ed2d9fe610d30a3a87f37dab618696e54222c44cee0e245f',80,1,'oV3d-1vX93lSGg044suzZd-NJTEQ','[]',0,'2018-08-17 11:28:25','2018-08-17 11:28:25','2019-08-17 11:28:25'),
	('d590546603d431cca55fec5bcd9c0e7e3c1793a0db2ca4d5335ca1411aa894ac8e1bd68b8053fc7c',61,1,'oV3d-1vbXKMj69XIRXqG4hWKighA','[]',0,'2018-08-17 15:40:28','2018-08-17 15:40:28','2019-08-17 15:40:28'),
	('d6e439911ec5004c5d3ad72b0daa63978e13d0455aa7302c72e1b522deefac05882b39f71bc00913',190,1,'oV3d-1tgtoyML7hPc7cWLbknuLK4','[]',0,'2018-08-28 22:31:00','2018-08-28 22:31:00','2019-08-28 22:31:00'),
	('d9ca3a466c3311fdb0f9b09600755942fcaafd619cce66008f41404388b1fd00c844d2d576358936',141,1,'oV3d-1oBQP1hNfJ3t-2obWeOm6Ts','[]',0,'2018-08-22 14:09:41','2018-08-22 14:09:41','2019-08-22 14:09:41'),
	('e21550711f6e5dcdbf826cc17fb68bfa35d5153e1822a65261fb4d88543f9e2cb4093dc94160056d',52,1,'oV3d-1qVyldwBGmq_7wxlWfyjbOY','[]',0,'2018-08-22 13:14:37','2018-08-22 13:14:37','2019-08-22 13:14:37'),
	('e57b557861c1ba8b71d263b1060842d0c6f1244b5511ff67e5d4d33b8c68b1f7a6e062fedffa264c',124,1,'oV3d-1ldMhQYaj0QzRu0m8zFLqiI','[]',0,'2018-08-19 17:48:13','2018-08-19 17:48:13','2019-08-19 17:48:13'),
	('e63085188f270ee19cad1b21503904c64d05be54841aa099d54f56216fe49404d55b8fef5f2d4dcf',119,1,'oV3d-1pZ5LLj7hp7dvIbkWJWZ-nk','[]',0,'2018-08-21 13:00:29','2018-08-21 13:00:29','2019-08-21 13:00:29'),
	('e72697f47b7df1b1f3cf88be7cbc022917d0028cf7e2136cc29b26548d3bab82b83a863e2279c6f4',92,1,'oV3d-1tVmfKUr4OuOgaM2dwrKdQQ','[]',0,'2018-08-17 17:08:35','2018-08-17 17:08:35','2019-08-17 17:08:35'),
	('eae880e7897cbf5d9724408e6c16592dedce940542a4188742b4c6a2f9bad7b60fbde62be7543a7d',78,1,'oV3d-1q_mJ8qNlK2eybv97qgetxc','[]',0,'2018-08-17 10:31:00','2018-08-17 10:31:00','2019-08-17 10:31:00'),
	('ec1c0707701796e894f6a1dd9ca3005601424d501ecfb8ea4099c1a43c01ded43ef674a968227c5b',138,1,'oV3d-1oeTeRk4_vrorbGka4tawkk','[]',0,'2018-08-21 14:02:32','2018-08-21 14:02:32','2019-08-21 14:02:32'),
	('eca25cc9610c05e2cc561f7f0d26da09328e92ff0922c0354e9a54958d7d16b38810f6446c3d34fa',104,1,'oV3d-1m8WM13v1aDx9XrwdiK9jMg','[]',0,'2018-08-25 03:22:47','2018-08-25 03:22:47','2019-08-25 03:22:47'),
	('ed6313a39d299ef53627c73757978ca5895eb0622daa5371d250be45d7adfb4c3ce7033656f6b88e',94,1,'oV3d-1uwiqHyhNLTxGvSemc_gFFg','[]',0,'2018-08-17 17:59:47','2018-08-17 17:59:47','2019-08-17 17:59:47'),
	('f01121a976cc2dc34877c689cd0932fa03d19b86fc1ed0c7eafa5689bdec2ddee1bac5b132018808',108,1,'oV3d-1uFKT-H3_KtvSDploErCdYo','[]',0,'2018-08-18 14:35:25','2018-08-18 14:35:25','2019-08-18 14:35:25'),
	('f0df98c0d48a07bc050bf11791e7ccc946cee7eaa0220463d535c51dd135ceb9173844e8dca00a05',133,1,'oV3d-1pu9CXGZor8EYad-R8IRkZE','[]',0,'2018-08-20 17:50:00','2018-08-20 17:50:00','2019-08-20 17:50:00'),
	('f2f0ff3b97bedf485f458f66a1349da0125aa290d670d8d5b203b70b5083c7521dd200d742dd08bb',101,1,'oV3d-1l5lPQLSsRg0Ru4iSAteat8','[]',0,'2018-08-17 21:34:04','2018-08-17 21:34:04','2019-08-17 21:34:04'),
	('f52a3ce60d2cfe501fff9c942479a814542980916efbd524c8f195fc4a6819327545389f6431f546',114,1,'oV3d-1gEKJG8yGc_sWNzJ9UC5Pvo','[]',0,'2018-08-19 14:32:09','2018-08-19 14:32:09','2019-08-19 14:32:09'),
	('f63d2c96b58191996476a35797784627efb49880ffd2edba434193b63ad69a331b6e0b6b3250e741',65,1,'oV3d-1vctZSOloWeNJPnWbMh9oLc','[]',0,'2018-08-18 11:45:14','2018-08-18 11:45:14','2019-08-18 11:45:14'),
	('f70d9904c73e87a66fe4b31243db250d357e23613587d0ada5e9fd70feab586d330a1de81f02a5e6',50,1,'oV3d-1rZk-hOVh2zz2lJKMEjLgDA','[]',0,'2018-08-22 14:45:21','2018-08-22 14:45:21','2019-08-22 14:45:21'),
	('f7a4e92d91d8878c25402440aac1cab5754db01508f271d3fb815a807edd48c09bc43b2baa8d0b24',113,1,'oV3d-1qNXVRV3RxZxFcxAOfDnnJ0','[]',0,'2018-08-28 17:52:19','2018-08-28 17:52:19','2019-08-28 17:52:19'),
	('f81a16a9457861da147a5efc3b5ac1c04fc9bcae5b038053de13454b23b16f71e80ec279f02da482',118,1,'oV3d-1vZhU_tz0ubQwhLno1z6xWc','[]',0,'2018-08-24 16:52:43','2018-08-24 16:52:43','2019-08-24 16:52:43'),
	('f9a4094a238e4f04cd42e31b8e3bc8a2a34d75ef1cfb0af0da161870ce53ef1d3c26affc987a2cf0',74,1,'oV3d-1p6uNTNY1t0Ak-z3VD2eJwQ','[]',0,'2018-08-17 10:10:27','2018-08-17 10:10:27','2019-08-17 10:10:27'),
	('fbcb9f370a8930527a07d314fba80c17465293c9f0fcd7dc64f226f800d548f04bbad3fb6a5e2f58',183,1,'oV3d-1t5POENpA4wqX3twOYo50ZI','[]',0,'2018-08-29 12:24:10','2018-08-29 12:24:10','2019-08-29 12:24:10'),
	('fd02c747f317b6743e44a16df31db8268a45f9f1deab39569f9caf2aa1d38e483c0939b89df57677',62,1,'oV3d-1g8qpKBIaSMGcman3IZuhMQ','[]',0,'2018-08-16 17:33:28','2018-08-16 17:33:28','2019-08-16 17:33:28'),
	('fe2d62c56e9a7b7cfe98078a52f67edb679a6c7c54b057108f5b2d498b3e5b52b6ce8de3b2e7d56b',127,1,'oV3d-1ntQBAmRxbNlBsOz_ttO9sA','[]',0,'2018-08-19 20:33:51','2018-08-19 20:33:51','2019-08-19 20:33:51'),
	('ffe0dc0e6632f334427a6cda8873b34537dc53fcd5cd7b2f95d5b8677af441d10cb462be60feb59d',135,1,'oV3d-1tiMvL1dRG2fYkwNWxIyPQI','[]',0,'2018-08-20 18:08:10','2018-08-20 18:08:10','2019-08-20 18:08:10');

/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table oauth_auth_codes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oauth_auth_codes`;

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table oauth_clients
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oauth_clients`;

CREATE TABLE `oauth_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`)
VALUES
	(1,NULL,'Laravel Personal Access Client','P5ii8PvPnXJOuhxNnM72M83sWHFhdRX8ZOyJqvrP','http://localhost',1,0,0,'2018-07-20 10:06:01','2018-07-20 10:06:01'),
	(2,NULL,'Laravel Password Grant Client','YP1sJMJqcr54AMya7sjl65MthPqWYS7N3Mk9F1nv','http://localhost',0,1,0,'2018-07-20 10:06:01','2018-07-20 10:06:01');

/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table oauth_personal_access_clients
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oauth_personal_access_clients`;

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`)
VALUES
	(1,1,'2018-07-20 10:06:01','2018-07-20 10:06:01');

/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table oauth_refresh_tokens
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oauth_refresh_tokens`;

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table official_agents
# ------------------------------------------------------------

DROP TABLE IF EXISTS `official_agents`;

CREATE TABLE `official_agents` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '标题',
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '缩略图',
  `content` text COLLATE utf8mb4_unicode_ci COMMENT '正文',
  `seo_desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SEO 描述',
  `seo_keys` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SEO 关键词',
  `views` int(11) NOT NULL DEFAULT '0' COMMENT '浏览量',
  `order` int(11) NOT NULL DEFAULT '0' COMMENT '排序: 值越高越靠前',
  `is_show` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否显示',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `official_agents` WRITE;
/*!40000 ALTER TABLE `official_agents` DISABLE KEYS */;

INSERT INTO `official_agents` (`id`, `title`, `thumbnail`, `content`, `seo_desc`, `seo_keys`, `views`, `order`, `is_show`, `created_at`, `updated_at`)
VALUES
	(1,'点点滴滴','images/f9cc2290539623c0f05e597832bbbb3c.jpg','<p></p><p>开机老就老</p>','','',5,0,1,'2018-09-17 13:13:32','2018-09-17 14:28:55'),
	(2,'点点滴滴1','images/e58d8834d312d18c329c29c6792f0700.jpg','<p></p><p>开机老就老</p>','','',6,0,1,'2018-09-17 13:14:37','2018-09-17 14:28:52'),
	(3,'点点滴滴2','images/e58d8834d312d18c329c29c6792f0700.jpg','<p></p><p>开机老就老</p>','','',14,100,1,'2018-09-17 13:14:37','2018-09-17 14:46:23'),
	(4,'点点滴滴3','images/e58d8834d312d18c329c29c6792f0700.jpg','<p></p><p>开机老就老</p>','','',6,10,1,'2018-09-17 13:14:37','2018-09-17 14:27:45'),
	(5,'点点滴滴4','images/e58d8834d312d18c329c29c6792f0700.jpg','<p></p><p>开机老就老</p>','','',4,0,1,'2018-09-17 13:14:37','2018-09-17 14:28:50'),
	(6,'点点滴滴7','images/e58d8834d312d18c329c29c6792f0700.jpg','<p></p><p>开机老就老</p>','','',4,5,1,'2018-09-17 13:14:37','2018-09-17 14:28:01'),
	(7,'点点滴滴6','images/e58d8834d312d18c329c29c6792f0700.jpg','<p></p><p>开机老就老</p>','','',3,0,1,'2018-09-17 13:14:37','2018-09-17 14:28:29'),
	(8,'点点滴滴5','images/e58d8834d312d18c329c29c6792f0700.jpg','<p></p><p>开机老就老</p>','','',4,0,1,'2018-09-17 13:14:37','2018-09-25 17:36:25'),
	(9,'点点滴滴8','images/e58d8834d312d18c329c29c6792f0700.jpg','<p></p><p>开机老就老</p>','','',3,0,1,'2018-09-17 13:14:37','2018-09-17 14:28:17'),
	(10,'点点滴滴9','images/e58d8834d312d18c329c29c6792f0700.jpg','<p></p><p>开机老就老</p>','','',11,0,1,'2018-09-17 13:14:37','2018-09-17 14:28:12'),
	(11,'点点滴滴7','images/e58d8834d312d18c329c29c6792f0700.jpg','<p></p><p>开机老就老</p>','','',1,5,1,'2018-09-17 13:14:37','2018-09-17 14:27:55'),
	(12,'点点滴滴6','images/e58d8834d312d18c329c29c6792f0700.jpg','<p></p><p>开机老就老</p>','','',3,0,1,'2018-09-17 13:14:37','2018-09-17 14:28:06'),
	(13,'点点滴滴7','images/e58d8834d312d18c329c29c6792f0700.jpg','<p></p><p>开机老就老</p>','','',3,5,1,'2018-09-17 13:14:37','2018-09-17 14:27:50'),
	(14,'点点滴滴3','images/e58d8834d312d18c329c29c6792f0700.jpg','<p></p><p>开机老就老</p>','','',6,10,1,'2018-09-17 13:14:37','2018-09-17 14:27:37'),
	(15,'点点滴滴3','images/e58d8834d312d18c329c29c6792f0700.jpg','<p></p><p>开机老就老</p>','','',11,10,1,'2018-09-17 13:14:37','2018-09-17 14:46:12');

/*!40000 ALTER TABLE `official_agents` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table official_columns
# ------------------------------------------------------------

DROP TABLE IF EXISTS `official_columns`;

CREATE TABLE `official_columns` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '标题',
  `seo_desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SEO描述',
  `seo_keys` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SEO关键字',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `official_columns` WRITE;
/*!40000 ALTER TABLE `official_columns` DISABLE KEYS */;

INSERT INTO `official_columns` (`id`, `title`, `seo_desc`, `seo_keys`, `created_at`, `updated_at`)
VALUES
	(1,'首页','','',NULL,NULL),
	(2,'酷达传媒','','',NULL,NULL),
	(3,'价值方案','','',NULL,NULL),
	(4,'应用场景','','',NULL,NULL),
	(5,'新闻资讯','','',NULL,NULL),
	(6,'代理商风采','','',NULL,NULL),
	(7,'招商加盟','','',NULL,NULL);

/*!40000 ALTER TABLE `official_columns` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table official_images
# ------------------------------------------------------------

DROP TABLE IF EXISTS `official_images`;

CREATE TABLE `official_images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名称',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '标签',
  `images` json DEFAULT NULL COMMENT '图片',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `official_images` WRITE;
/*!40000 ALTER TABLE `official_images` DISABLE KEYS */;

INSERT INTO `official_images` (`id`, `name`, `label`, `images`, `created_at`, `updated_at`)
VALUES
	(1,'首页轮播图','index-carousel','["images/3.jpg", "images/2.jpg", "images/1.jpg", "images/1_mobile.jpg"]',NULL,'2018-09-21 16:04:17'),
	(2,'酷达传媒横幅图','about-banner','["images/about-banner.jpg"]',NULL,'2018-09-14 10:02:17'),
	(3,'价值方案横幅图','product-banner','["images/product-banner.jpg"]',NULL,'2018-09-14 14:26:53'),
	(4,'应用场景横幅图','scene-banner','["images/tech-banner.jpg"]',NULL,'2018-09-14 15:36:33'),
	(5,'新闻资讯横幅图','news-banner','["images/new-banner.jpg"]',NULL,'2018-09-15 10:59:10'),
	(6,'代理商风采横幅图','agent-banner','["images/agent-banner.jpg"]',NULL,'2018-09-17 10:07:10'),
	(7,'加盟合作横幅图','join-banner','["images/join-banner.jpg"]',NULL,'2018-09-17 15:05:36');

/*!40000 ALTER TABLE `official_images` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table official_news
# ------------------------------------------------------------

DROP TABLE IF EXISTS `official_news`;

CREATE TABLE `official_news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '标题',
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '缩略图',
  `profile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '概要',
  `content` text COLLATE utf8mb4_unicode_ci COMMENT '正文',
  `seo_desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SEO 描述',
  `seo_keys` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SEO 关键词',
  `views` int(11) NOT NULL DEFAULT '0' COMMENT '浏览量',
  `order` int(11) NOT NULL DEFAULT '0' COMMENT '排序: 值越高越靠前',
  `is_show` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否显示',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `official_news` WRITE;
/*!40000 ALTER TABLE `official_news` DISABLE KEYS */;

INSERT INTO `official_news` (`id`, `title`, `thumbnail`, `profile`, `content`, `seo_desc`, `seo_keys`, `views`, `order`, `is_show`, `created_at`, `updated_at`)
VALUES
	(1,'残花败柳的打广告，效果真的好吗','images/1533802811794610.jpg','紧跟时代的脚步，小广告已是大家心目中的不灭精神。作为奥梵传媒小编，我不得不说，打广告是好事，但是老铁你们用错方法了！','<p></p><p><img src=\"http://www.aovancm.com/public/uploads/ueditor/image/20180809/1533802811775615.jpg\" title=\"1533802811775615.jpg\" width=\"394\" height=\"327\"></p><p><img src=\"http://www.aovancm.com/public/uploads/ueditor/image/20180809/1533802811195571.jpg\" title=\"1533802811195571.jpg\"></p><p><img src=\"http://www.aovancm.com/public/uploads/ueditor/image/20180809/1533802811539103.jpg\" title=\"1533802811539103.jpg\" width=\"404\" height=\"377\"></p><p><br></p><p><img src=\"http://www.aovancm.com/public/uploads/ueditor/image/20180809/1533802811142033.jpg\" title=\"1533802811142033.jpg\" width=\"400\" height=\"245\"></p><p><img src=\"http://www.aovancm.com/public/uploads/ueditor/image/20180809/1533802811702331.jpg\" title=\"1533802811702331.jpg\"></p><p><img src=\"http://www.aovancm.com/public/uploads/ueditor/image/20180809/1533802811472569.jpg\" title=\"1533802811472569.jpg\"></p><p><img src=\"http://www.aovancm.com/public/uploads/ueditor/image/20180809/1533802811794610.jpg\" title=\"1533802811794610.jpg\"></p><p><img src=\"http://www.aovancm.com/public/uploads/ueditor/image/20180809/1533802811194589.jpg\" title=\"1533802811194589.jpg\"></p><p>紧跟时代的脚步，小广告已是大家心目中的不灭精神。作为奥梵传媒小编，我不得不说，打广告是好事，但是老铁你们用错方法了！</p><p>现在已经是共享广告时代了，你不用在为制造广告页面而烦恼了，你不用再为昂贵的印刷费用而担忧了，你不用再为满大街发传单而辛苦劳累了，奥梵自助共享广告为你解决一切困难。</p><p></p><p>奥梵传媒优势：</p><p>一：成本价低，每天低至10元，68元一周</p><p>二：精准度高，锁定人群环境精准投放，让广告效果更好</p><p>三：渠道资源多，一台广告机，放在商场、超市等地即可</p><p>四：投放便捷，用户可选择投放广告时间，时段，广告页面布局</p><p>五：定点投放，广告投放点更灵活，可在一个或多个制定区域点投放</p><p>六：定时投放，广告投放时间随意，指定未来某时间段内投放广告</p><p>七：定量投放，广告投放量无门槛，广告投放主可任意选择广告投放终端数量</p><p>八：排他性投放，广告机主可拒绝同行或指定行业广告投放</p><p>九：广告精准共享体系，广告共享将广告硬件机主与广告投放需求的用户有针对性结合，实现“人人参与，人人受益”</p><p>十：广告自助投放（广告投放自主上传和发布广告素材，系统自动匹配，无需通过第三方广告媒介等即可投放广告）</p><p><br></p>','','',15,0,1,'2018-09-17 10:26:16','2018-09-19 14:22:43');

/*!40000 ALTER TABLE `official_news` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table orders
# ------------------------------------------------------------

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `device_ids` json NOT NULL COMMENT '设备ID集合',
  `play_length` int(11) NOT NULL COMMENT '播放时长(秒)',
  `play_cycle` int(11) NOT NULL COMMENT '播放周期(周)',
  `file_ids` json NOT NULL COMMENT '广告素材ID集合',
  `amount` double(8,2) NOT NULL COMMENT '订单总金额',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '订单状态:0待支付|1待审核|-1审核不通过|2审核通过(正在播放)|3播放完成',
  `pay_at` datetime DEFAULT NULL COMMENT '付款日期',
  `trade_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '订单号',
  `prepay` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '微信支付预付单',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `pay_money` double(8,2) NOT NULL DEFAULT '0.00' COMMENT '优惠后支付金额',
  `pay_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '支付方式：wechat(微信)|balance(余额)|coin(酷达币)',
  `coupon_ids` json DEFAULT NULL COMMENT '使用的优惠券',
  `remark` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '审核驳回说明',
  `thumbnails` json NOT NULL COMMENT '缩略图集合',
  `refund_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '微信退款单号',
  `start_at` datetime DEFAULT NULL COMMENT '开始日期',
  `end_at` datetime DEFAULT NULL COMMENT '结束日期',
  PRIMARY KEY (`id`),
  KEY `orders_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;

INSERT INTO `orders` (`id`, `user_id`, `device_ids`, `play_length`, `play_cycle`, `file_ids`, `amount`, `status`, `pay_at`, `trade_code`, `prepay`, `created_at`, `updated_at`, `pay_money`, `pay_type`, `coupon_ids`, `remark`, `thumbnails`, `refund_number`, `start_at`, `end_at`)
VALUES
	(3,56,'[6, 5]',1,1,'[9, 10, 11]',210.00,-2,'2018-08-16 16:07:16','2018081616070378738','','2018-08-16 16:07:03','2018-08-25 10:27:47',210.00,'wechat',NULL,'','{"9": "orders/20180825102747oI7Mqxbzsr6OeEP0.jpg", "10": "orders/20180825102747DkDojdN0B1YaXmfM.jpg", "11": "orders/20180825102747ZczPtQf9JHYk5G2f.jpg"}','',NULL,NULL),
	(4,48,'[6]',1,1,'[12]',35.00,3,'2018-08-16 16:07:28','2018081616072064137','','2018-08-16 16:07:20','2018-08-23 21:30:03',35.00,'coin',NULL,'','{"12": "orders/201808161607214JbPKY7uB0eWQ70P.jpg"}','','2018-08-16 16:08:48','2018-08-23 16:08:48'),
	(5,47,'[1]',1,1,'[4, 13, 3]',105.00,3,'2018-08-16 16:14:03','2018081616135714513','','2018-08-16 16:13:57','2018-08-23 21:30:03',105.00,'coin',NULL,'','{"3": "orders/20180816161358z7JsfzF3LmI70ZUo.jpg", "4": "orders/20180816161358JC5RYLzF8a2PBpTx.jpg", "13": "orders/20180816161358Z0D0KFyzbmzp3DcL.jpg"}','','2018-08-16 16:15:58','2018-08-23 16:15:58'),
	(6,50,'[7]',1,1,'[14]',35.00,3,'2018-08-16 16:21:42','2018081616213199393','','2018-08-16 16:21:31','2018-08-25 10:27:47',35.00,'coin',NULL,'','{"14": "orders/20180825102747ezhVskOtN29mRLr1.jpg"}','','2018-08-16 16:24:13','2018-08-23 16:24:13'),
	(7,48,'[8]',1,1,'[16, 17]',70.00,3,'2018-08-16 17:04:49','2018081617044036211','','2018-08-16 17:04:40','2018-08-23 21:30:03',70.00,'coin',NULL,'','{"16": "orders/201808161704410sk1fFyxgHWqhVSx.jpg", "17": "orders/20180816170441VZWsDxU4GAmojTZa.jpg"}','','2018-08-16 17:05:06','2018-08-23 17:05:06'),
	(8,48,'[4, 3]',1,1,'[18, 20, 19]',210.00,3,'2018-08-16 17:07:50','2018081617074668737','','2018-08-16 17:07:46','2018-08-23 21:30:03',210.00,'coin',NULL,'','{"18": "orders/20180816170748WmdlYRGAGSer4ENs.jpg", "19": "orders/20180816170748RbUiw1CjyzMgn9eC.jpg", "20": "orders/20180816170748TZPw3fvVxxCeHVN0.jpg"}','','2018-08-16 17:08:36','2018-08-23 17:08:36'),
	(9,50,'[9]',1,1,'[21]',35.00,3,'2018-08-16 17:09:27','2018081617091440082','','2018-08-16 17:09:14','2018-08-25 10:27:47',35.00,'coin',NULL,'','{"21": "orders/20180825102747A3neX7JP9CgKmaff.jpg"}','','2018-08-16 17:09:48','2018-08-23 17:09:48'),
	(10,61,'[9, 8]',1,1,'[25]',70.00,-2,NULL,'2018081617255114665','','2018-08-16 17:25:51','2018-08-25 10:27:47',0.00,'',NULL,'','{"25": "orders/20180825102747znkHQ6gKRw6Eld1B.jpg"}','',NULL,NULL),
	(12,50,'[10]',1,1,'[27]',35.00,3,'2018-08-16 17:40:13','2018081617400117791','','2018-08-16 17:40:01','2018-08-25 10:27:47',35.00,'coin',NULL,'','{"27": "orders/201808251027477NE9CuC7B4j3104o.jpg"}','','2018-08-16 17:40:39','2018-08-23 17:40:39'),
	(13,48,'[11]',1,1,'[28]',35.00,-2,NULL,'2018081617512699967','','2018-08-16 17:51:26','2018-08-21 13:48:23',0.00,'',NULL,'','{"28": "orders/201808161751282FOyo3OHny1ad2yo.jpg"}','',NULL,NULL),
	(14,48,'[11]',1,1,'[31, 30, 29]',105.00,3,'2018-08-16 17:56:58','2018081617565487685','','2018-08-16 17:56:54','2018-08-23 21:30:02',105.00,'coin',NULL,'','{"29": "orders/20180816175655GUqoMqCGtUnfZKFB.jpg", "30": "orders/20180816175655Az8RWdIO19K46IAz.jpg", "31": "orders/20180816175655PP4UOlherdQaUQ2G.jpg"}','','2018-08-16 17:57:15','2018-08-23 17:57:15'),
	(15,50,'[12]',1,1,'[32]',35.00,3,'2018-08-16 18:04:50','2018081618043969914','','2018-08-16 18:04:39','2018-08-25 10:27:47',35.00,'coin',NULL,'','{"32": "orders/20180825102747mvUi17QypAC7DoKI.jpg"}','','2018-08-16 18:05:25','2018-08-23 18:05:25'),
	(16,50,'[13]',1,1,'[33]',35.00,3,'2018-08-16 18:28:46','2018081618284339368','','2018-08-16 18:28:43','2018-08-25 10:27:46',35.00,'coin',NULL,'','{"33": "orders/20180825102746Fp3iO31Xern5apXa.jpg"}','','2018-08-16 18:29:10','2018-08-23 18:29:10'),
	(21,48,'[14]',1,1,'[40, 39]',70.00,3,'2018-08-16 19:01:40','2018081619013538043','','2018-08-16 19:01:35','2018-08-23 21:30:02',70.00,'coin',NULL,'','{"39": "orders/20180816190137e0i2UxFmTRv9HUKk.jpg", "40": "orders/20180816190137ERj1ZgFRnZP3qlTS.jpg"}','','2018-08-16 19:01:59','2018-08-23 19:01:59'),
	(27,50,'[15]',1,1,'[43]',35.00,3,'2018-08-16 19:33:07','2018081619325538249','','2018-08-16 19:32:55','2018-08-25 10:27:46',35.00,'coin',NULL,'','{"43": "orders/20180825102746Gx1mkj0iGF4h5V49.jpg"}','','2018-08-16 19:33:26','2018-08-23 19:33:26'),
	(28,56,'[6]',1,1,'[9, 10, 11]',105.00,-2,NULL,'2018081620160276649','','2018-08-16 20:16:02','2018-08-25 10:27:46',0.00,'',NULL,'','{"9": "orders/20180825102745SzsXx0PuZCcdpL7c.jpg", "10": "orders/201808251027466rrwAfhZSTCIK5JD.jpg", "11": "orders/2018082510274662oO6n72zL7kAcah.jpg"}','',NULL,NULL),
	(29,50,'[16]',1,1,'[45, 47, 44]',105.00,3,'2018-08-16 20:21:19','2018081620211030900','','2018-08-16 20:21:10','2018-08-25 10:27:45',105.00,'coin',NULL,'','{"44": "orders/20180825102745DNRshMr9JJHqm9Zo.jpg", "45": "orders/201808251027459AKhu6XJcPBattyX.jpg", "47": "orders/20180825102745zwzCAIhwiF5pDEOM.jpg"}','','2018-08-16 20:22:46','2018-08-23 20:22:46'),
	(30,56,'[6]',1,1,'[9, 10, 11, 48]',140.00,3,'2018-08-16 20:21:29','2018081620212206673','','2018-08-16 20:21:22','2018-08-25 10:27:45',0.00,'','[53]','','{"9": "orders/201808251027451dKQIpwkFBTai1oX.jpg", "10": "orders/20180825102745ChSfijhctmeUlFUg.jpg", "11": "orders/20180825102745qOXWGpyzCvD6FPNc.jpg", "48": "orders/20180825102745qjmcYisRAimjrqBt.jpg"}','','2018-08-16 20:22:17','2018-08-23 20:22:17'),
	(31,48,'[17]',1,1,'[49, 50, 51]',105.00,3,'2018-08-16 21:00:19','2018081621000514226','','2018-08-16 21:00:05','2018-08-23 21:30:01',105.00,'coin',NULL,'','{"49": "orders/201808162100081ZVK1M6TAoZZ1imW.jpg", "50": "orders/20180816210009cUWJyXxYAtRutIhF.jpg", "51": "orders/20180816210009kGzo1tv9oA5zNAs1.jpg"}','','2018-08-16 21:00:46','2018-08-23 21:00:46'),
	(32,73,'[17]',1,1,'[54]',35.00,-2,NULL,'2018081621025875268','','2018-08-16 21:02:58','2018-08-25 10:27:45',0.00,'',NULL,'','{"54": "orders/20180825102745OitEDLFFMuUcg6rT.jpg"}','',NULL,NULL),
	(33,50,'[18]',1,1,'[55, 56]',70.00,3,'2018-08-16 21:06:50','2018081621064608891','','2018-08-16 21:06:46','2018-08-25 10:27:45',70.00,'coin',NULL,'','{"55": "orders/20180825102744bvIz11R3ZRtbGkF1.jpg", "56": "orders/201808251027458whZuUV83KHjMHZo.jpg"}','','2018-08-16 21:07:26','2018-08-23 21:07:26'),
	(34,48,'[17]',1,1,'[57]',35.00,3,'2018-08-16 21:12:33','2018081621122932597','','2018-08-16 21:12:29','2018-08-23 22:00:01',35.00,'coin',NULL,'','{"57": "orders/20180816211231DZc57iR4g5yVTSMk.jpg"}','','2018-08-16 21:13:01','2018-08-23 21:13:01'),
	(37,47,'[2, 1]',4,1,'[38, 42]',140.00,3,'2018-08-16 23:36:23','2018081623361182288','','2018-08-16 23:36:11','2018-08-24 00:00:02',140.00,'coin',NULL,'','{"38": "orders/20180816233613cKM2hia8vj73jKoj.jpg", "42": "orders/201808162336137qT5PEhP9CilEp7R.jpg"}','','2018-08-16 23:37:02','2018-08-23 23:37:02'),
	(38,47,'[18]',1,1,'[42]',35.00,3,'2018-08-16 23:39:37','2018081623393118975','','2018-08-16 23:39:31','2018-08-25 10:27:44',35.00,'coin',NULL,'','{"42": "orders/20180825102744TE39LR3GzRm12ATB.jpg"}','','2018-08-16 23:39:50','2018-08-23 23:39:50'),
	(41,75,'[18]',1,1,'[59]',35.00,-2,NULL,'2018081710205289785','','2018-08-17 10:20:52','2018-08-25 10:27:44',0.00,'',NULL,'','{"59": "orders/20180825102744OluZ7HrNb8rtVfBo.jpg"}','',NULL,NULL),
	(42,50,'[19]',1,1,'[61, 60]',70.00,-2,NULL,'2018081711322711903','','2018-08-17 11:32:27','2018-08-25 10:27:44',0.00,'',NULL,'','{"60": "orders/20180825102744TVJIy9BNAGCpwSxx.jpg", "61": "orders/20180825102744LmzVPN6JMMDYGD5X.jpg"}','',NULL,NULL),
	(43,50,'[19]',2,1,'[61, 60]',140.00,3,'2018-08-17 11:32:54','2018081711325118371','','2018-08-17 11:32:51','2018-08-25 10:27:43',140.00,'coin',NULL,'','{"60": "orders/20180825102743CFvQIHPC8lP1CuhL.jpg", "61": "orders/20180825102743e2gUGjZ5lNMuwR74.jpg"}','','2018-08-17 11:33:08','2018-08-24 11:33:08'),
	(44,80,'[20]',1,1,'[63]',35.00,-2,NULL,'2018081711553961952','','2018-08-17 11:55:39','2018-08-25 10:27:43',0.00,'',NULL,'','{"63": "orders/20180825102743fk7UNrrbj4GBbcdn.jpg"}','',NULL,NULL),
	(45,48,'[20]',1,1,'[64, 65]',70.00,3,'2018-08-17 11:57:38','2018081711572503620','','2018-08-17 11:57:25','2018-08-25 10:27:43',70.00,'coin',NULL,'','{"64": "orders/20180825102742E9tsQk7clfusc0Cu.jpg", "65": "orders/20180825102743zk8abkHkq2et2UAi.jpg"}','','2018-08-17 11:58:28','2018-08-24 11:58:28'),
	(46,84,'[20]',1,1,'[66]',35.00,-2,NULL,'2018081712275662606','','2018-08-17 12:27:56','2018-08-25 10:27:42',0.00,'',NULL,'','{"66": "orders/20180825102742YBanG0cEd2WuwOEU.jpg"}','',NULL,NULL),
	(47,50,'[21]',1,1,'[67]',35.00,3,'2018-08-17 12:33:25','2018081712331564816','','2018-08-17 12:33:15','2018-08-25 10:27:42',35.00,'coin',NULL,'','{"67": "orders/20180825102742Jk36sbJIDK4oRNk3.jpg"}','','2018-08-17 12:33:39','2018-08-24 12:33:39'),
	(48,76,'[19]',1,1,'[68, 69]',70.00,-2,NULL,'2018081712574645073','','2018-08-17 12:57:46','2018-08-25 10:27:42',0.00,'',NULL,'','{"68": "orders/20180825102741mievLD7AWZd0KNHp.jpg", "69": "orders/20180825102742qw9pdI8Ovu9at0fX.jpg"}','',NULL,NULL),
	(49,48,'[8]',1,1,'[70]',35.00,3,'2018-08-17 13:14:26','2018081713142193033','','2018-08-17 13:14:21','2018-08-28 14:00:02',35.00,'coin',NULL,'','{"70": "orders/20180825102741a55WwfQq5oKP5wKy.jpg"}','','2018-08-21 13:48:23','2018-08-28 13:48:23'),
	(50,48,'[8]',1,1,'[72]',35.00,3,'2018-08-17 13:31:26','2018081713312337880','','2018-08-17 13:31:23','2018-08-28 14:00:02',35.00,'coin',NULL,'','{"72": "orders/20180825102741CBRbcazRjEKjv5GK.jpg"}','','2018-08-21 13:48:23','2018-08-28 13:48:23'),
	(51,50,'[22]',1,1,'[73, 76, 77, 78, 79, 80, 75, 74, 81]',315.00,3,'2018-08-17 14:30:56','2018081714305229504','','2018-08-17 14:30:52','2018-08-25 10:27:41',315.00,'coin',NULL,'','{"73": "orders/201808251027412EHHni0g1gbqVRqO.jpg", "74": "orders/20180825102741Gq1lCKfXIgvaew5N.jpg", "75": "orders/20180825102741MLCgVDUbSPg7xOm8.jpg", "76": "orders/20180825102741HAlQ4apX0P6Wgk9T.jpg", "77": "orders/201808251027414kyz3D0Z5dRhtD0M.jpg", "78": "orders/20180825102741BWvDBr8zcWu4vKEn.jpg", "79": "orders/2018082510274104MyTZpSIH0Vh5wZ.jpg", "80": "orders/20180825102741gdzarxrRNMkrqHNP.jpg", "81": "orders/20180825102741sFR1e1YRwzirTTcR.jpg"}','','2018-08-17 14:31:16','2018-08-24 14:31:16'),
	(56,48,'[8]',1,1,'[84]',35.00,3,'2018-08-17 14:52:31','2018081714522884928','','2018-08-17 14:52:28','2018-08-25 10:27:41',35.00,'coin',NULL,'','{"84": "orders/201808251027412YSUL5UsJvrLv7Zn.jpg"}','','2018-08-17 14:54:44','2018-08-24 14:54:44'),
	(57,48,'[22, 20, 18]',1,1,'[84]',105.00,-2,NULL,'2018081715140568003','','2018-08-17 15:14:05','2018-08-25 10:27:41',0.00,'',NULL,'','{"84": "orders/20180825102741UKFbazdg46j9wBHF.jpg"}','',NULL,NULL),
	(59,50,'[23]',1,1,'[85]',35.00,3,'2018-08-17 15:20:00','2018081715195178088','','2018-08-17 15:19:51','2018-08-25 10:27:41',35.00,'coin',NULL,'','{"85": "orders/20180825102741hulfAFL0WA2EvTkc.jpg"}','','2018-08-17 15:20:23','2018-08-24 15:20:23'),
	(60,48,'[24]',1,1,'[86, 87]',70.00,3,'2018-08-17 15:20:23','2018081715201920588','','2018-08-17 15:20:19','2018-08-25 10:27:40',70.00,'coin',NULL,'','{"86": "orders/20180825102740AzcamkIPpyIu67Bc.jpg", "87": "orders/20180825102740MO8gfYt9Sy6sb0pT.jpg"}','','2018-08-17 15:20:47','2018-08-24 15:20:47'),
	(62,70,'[8, 14]',1,1,'[91]',70.00,3,'2018-08-17 16:26:42','2018081716261102931','','2018-08-17 16:26:11','2018-08-25 10:27:40',0.00,'','[64]','','{"91": "orders/201808251027404P1FyX3cNOe8nbpk.jpg"}','','2018-08-17 16:32:12','2018-08-24 16:32:12'),
	(63,70,'[17]',1,1,'[91]',35.00,-2,NULL,'2018081716280292190','','2018-08-17 16:28:02','2018-08-25 10:27:40',0.00,'',NULL,'','{"91": "orders/20180825102740ITpq6qmrvdIqXTzM.jpg"}','',NULL,NULL),
	(66,92,'[25]',1,1,'[92]',35.00,-2,NULL,'2018081717333637257','','2018-08-17 17:33:36','2018-08-25 10:27:40',0.00,'',NULL,'','{"92": "orders/20180825102740uYwknPsfgUnHAipX.jpg"}','',NULL,NULL),
	(67,48,'[25]',1,1,'[95, 94, 93]',105.00,3,'2018-08-17 17:36:52','2018081717364988674','','2018-08-17 17:36:49','2018-08-25 10:27:39',105.00,'coin',NULL,'','{"93": "orders/20180825102739IXt0IlRO4AWHAyWj.jpg", "94": "orders/20180825102739JCMjRCruxuE7BVtg.jpg", "95": "orders/20180825102739sYlstmjIajT33ffg.jpg"}','','2018-08-17 17:37:38','2018-08-24 17:37:38'),
	(68,48,'[15]',1,1,'[95, 94, 93]',105.00,3,'2018-08-17 17:40:42','2018081717391140798','','2018-08-17 17:39:11','2018-08-28 14:00:02',105.00,'coin',NULL,'','{"93": "orders/20180825102739mPB2YDR9Hb3ykxBz.jpg", "94": "orders/20180825102739lO4kO0OoDQPRYWm4.jpg", "95": "orders/2018082510273956FO3VmhBvlgnMAx.jpg"}','','2018-08-21 13:48:23','2018-08-28 13:48:23'),
	(69,50,'[7]',1,1,'[96]',35.00,3,'2018-08-17 17:40:23','2018081717401910013','','2018-08-17 17:40:19','2018-08-25 10:27:39',35.00,'coin',NULL,'','{"96": "orders/20180825102739YmHxUYaNnI2AXpEK.jpg"}','','2018-08-17 17:40:38','2018-08-24 17:40:38'),
	(70,50,'[7]',1,1,'[97, 98, 99, 96]',140.00,3,'2018-08-17 17:44:30','2018081717442766909','','2018-08-17 17:44:27','2018-08-25 10:27:39',140.00,'coin',NULL,'','{"96": "orders/20180825102738ZYoiffmOxf8wmI13.jpg", "97": "orders/20180825102739mmiGU730W3TzvH27.jpg", "98": "orders/20180825102739xZo1BmeUnTSo9Scc.jpg", "99": "orders/20180825102739QwluukmRMeOkE7qE.jpg"}','','2018-08-17 17:44:49','2018-08-24 17:44:49'),
	(71,48,'[26]',1,1,'[101]',35.00,3,'2018-08-17 18:40:57','2018081718404512440','','2018-08-17 18:40:45','2018-08-28 14:00:02',35.00,'coin',NULL,'','{"101": "orders/20180825102738flCfEH4ayb4Kn6CU.jpg"}','','2018-08-21 13:48:23','2018-08-28 13:48:23'),
	(72,48,'[26]',1,1,'[102]',35.00,3,'2018-08-17 18:43:30','2018081718432678902','','2018-08-17 18:43:26','2018-08-28 14:00:02',35.00,'coin',NULL,'','{"102": "orders/20180825102738xgkuylNJmrYEirDK.jpg"}','','2018-08-21 13:48:23','2018-08-28 13:48:23'),
	(73,48,'[26]',1,1,'[102]',35.00,3,'2018-08-17 18:51:12','2018081718510861456','','2018-08-17 18:51:08','2018-08-25 10:27:38',35.00,'coin',NULL,'','{"102": "orders/20180825102738gCQxDhRi7ysD6h2E.jpg"}','','2018-08-17 18:52:02','2018-08-24 18:52:02'),
	(74,96,'[26]',1,1,'[103, 104]',70.00,-2,NULL,'2018081720091106186','','2018-08-17 20:09:11','2018-08-25 10:27:38',0.00,'',NULL,'','{"103": "orders/20180825102738ZFCcP54vNt9Y8gem.jpg", "104": "orders/20180825102738ipsV7uMchdaaSCTW.jpg"}','',NULL,NULL),
	(75,96,'[26]',1,1,'[104]',35.00,-2,'2018-08-17 20:10:52','2018081720101511061','','2018-08-17 20:10:15','2018-08-25 10:27:38',35.00,'coin',NULL,'','{"104": "orders/20180825102738Rnw3JzVK2zDPNIul.jpg"}','',NULL,NULL),
	(76,96,'[26]',1,1,'[106, 104, 107, 108]',140.00,3,'2018-08-17 20:22:21','2018081720220089082','','2018-08-17 20:22:00','2018-08-25 10:27:38',0.00,'','[79]','','{"104": "orders/201808251027378Nd29kgb7DmsabmM.jpg", "106": "orders/201808251027373l1rk9bPv35BIt8K.jpg", "107": "orders/20180825102738e4xGkwZlb31uE2U9.jpg", "108": "orders/20180825102738SAXi0BIDrAdKdezy.jpg"}','','2018-08-17 20:30:44','2018-08-24 20:30:44'),
	(77,98,'[27]',1,1,'[109]',35.00,-2,NULL,'2018081720414794716','','2018-08-17 20:41:47','2018-08-25 10:27:37',0.00,'',NULL,'','{"109": "orders/20180825102737uQkX0ItleTS5UCYt.jpg"}','',NULL,NULL),
	(78,50,'[28]',1,1,'[110]',35.00,3,'2018-08-17 20:43:36','2018081720433385980','','2018-08-17 20:43:33','2018-08-25 10:27:37',35.00,'coin',NULL,'','{"110": "orders/20180825102737qpBBZv0jFmPdbOcf.jpg"}','','2018-08-17 20:43:59','2018-08-24 20:43:59'),
	(79,99,'[28, 27]',1,1,'[111]',70.00,-2,NULL,'2018081720541360463','','2018-08-17 20:54:13','2018-08-25 10:27:37',0.00,'',NULL,'','{"111": "orders/20180825102737vr0m37iXD0KY4lK7.jpg"}','',NULL,NULL),
	(80,48,'[29, 28]',1,1,'[102, 95, 83]',210.00,-2,NULL,'2018081721265589518','','2018-08-17 21:26:55','2018-08-21 13:48:23',0.00,'',NULL,'','{"83": "orders/20180817212657oAFG9ysS7CIkvumr.jpg", "95": "orders/20180817212657GidJ9FWtSysIGUZA.jpg", "102": "orders/20180817212656PIB74GTL8o4HLXHD.jpg"}','',NULL,NULL),
	(81,50,'[30]',1,1,'[112]',35.00,3,'2018-08-17 21:39:15','2018081721390801241','','2018-08-17 21:39:08','2018-08-25 10:27:36',35.00,'coin',NULL,'','{"112": "orders/20180825102736Y4BU0zYq1sM3XQM1.jpg"}','','2018-08-17 21:39:26','2018-08-24 21:39:26'),
	(82,50,'[30]',1,1,'[113]',35.00,3,'2018-08-17 21:40:33','2018081721403002541','','2018-08-17 21:40:30','2018-08-25 10:27:36',35.00,'coin',NULL,'','{"113": "orders/20180825102736PxCIEVSc9RwNKQZr.jpg"}','','2018-08-17 21:40:50','2018-08-24 21:40:50'),
	(85,53,'[4]',1,1,'[26]',35.00,-2,'2018-08-18 09:56:35','2018081809560169583','','2018-08-18 09:56:01','2018-08-26 19:00:02',35.00,'coin',NULL,'1','{"26": "orders/20180825102736CfEN6SyTD9kERiZx.jpg"}','',NULL,NULL),
	(88,69,'[1, 2]',1,1,'[130, 131]',140.00,-2,'2018-08-18 14:01:45','2018081814010743223','','2018-08-18 14:01:07','2018-08-25 10:27:36',140.00,'wechat',NULL,'','{"130": "orders/20180825102736oMfH7xcdarJ44eW0.jpg", "131": "orders/20180825102736DKJ7OAOVUTj677uo.jpg"}','',NULL,NULL),
	(89,69,'[2, 1]',1,1,'[130, 131]',140.00,3,'2018-08-18 14:04:54','2018081814043637949','','2018-08-18 14:04:36','2018-08-25 14:30:02',140.00,'coin',NULL,'','{"130": "orders/20180825102736WvKBlsMiNZnMkpeW.jpg", "131": "orders/201808251027362Gs6cushKqOwkqiD.jpg"}','','2018-08-18 14:08:16','2018-08-25 14:08:16'),
	(90,66,'[14]',1,2,'[132]',70.00,3,'2018-08-18 14:44:58','2018081814332235541','','2018-08-18 14:33:22','2018-09-01 15:00:02',0.00,'','[61]','','{"132": "orders/20180825102736AWBfQt0tHgkP1DCx.jpg"}','','2018-08-18 14:49:32','2018-09-01 14:49:32'),
	(95,50,'[27]',1,1,'[43]',35.00,3,'2018-08-18 19:18:55','2018081819182871962','','2018-08-18 19:18:28','2018-08-26 10:30:01',35.00,'coin',NULL,'','{"43": "orders/20180825102735kCbLa96VoHrQ4fWI.jpg"}','','2018-08-19 10:28:07','2018-08-26 10:28:07'),
	(96,50,'[27]',1,1,'[43]',35.00,-2,NULL,'2018081819182908841','','2018-08-18 19:18:29','2018-08-25 10:27:35',0.00,'',NULL,'','{"43": "orders/20180825102735h6XWCQayNmC3CS47.jpg"}','',NULL,NULL),
	(97,48,'[30]',1,1,'[93]',35.00,-2,NULL,'2018081820262436718','','2018-08-18 20:26:24','2018-08-25 10:27:35',0.00,'',NULL,'','{"93": "orders/2018082510273575exDQqqG1aYGbFs.jpg"}','',NULL,NULL),
	(98,113,'[28]',1,1,'[138]',35.00,-2,NULL,'2018081910115181780','','2018-08-19 10:11:51','2018-08-25 10:27:35',0.00,'',NULL,'','{"138": "orders/20180825102735UjsExKjOiGwZBXtk.jpg"}','',NULL,NULL),
	(99,48,'[31]',1,1,'[139]',35.00,3,'2018-08-19 10:39:46','2018081910394341169','','2018-08-19 10:39:43','2018-08-26 11:00:01',35.00,'coin',NULL,'','{"139": "orders/20180825102735yPqIWHC62q7RMCDq.jpg"}','','2018-08-19 10:45:11','2018-08-26 10:45:11'),
	(100,48,'[31]',1,1,'[141, 142]',70.00,3,'2018-08-19 10:44:04','2018081910440069675','','2018-08-19 10:44:00','2018-08-26 11:00:01',70.00,'coin',NULL,'','{"141": "orders/201808251027340pJBWHKzamovp1HG.jpg", "142": "orders/20180825102734BQlVdimvhwa3kD4I.jpg"}','','2018-08-19 10:44:58','2018-08-26 10:44:58'),
	(101,116,'[29]',1,1,'[146]',35.00,-2,NULL,'2018081911522904679','','2018-08-19 11:52:29','2018-08-25 10:27:34',0.00,'',NULL,'','{"146": "orders/20180825102734DYa65kA2rdVlFrke.jpg"}','',NULL,NULL),
	(102,50,'[33]',2,1,'[150, 151]',140.00,3,'2018-08-19 12:03:34','2018081912032948299','','2018-08-19 12:03:29','2018-08-26 12:30:01',140.00,'coin',NULL,'','{"150": "orders/20180825102734lLu7yGLQDkZpAvA0.jpg", "151": "orders/20180825102734eiHZRWRyI5iRfNaL.jpg"}','','2018-08-19 12:04:05','2018-08-26 12:04:05'),
	(109,48,'[34]',1,1,'[158, 159]',70.00,3,'2018-08-19 14:12:29','2018081914122522840','','2018-08-19 14:12:25','2018-08-26 14:30:01',70.00,'coin',NULL,'','{"158": "orders/20180825102733zhVyF2Y5a6HqhCF0.jpg", "159": "orders/20180825102733DLSD4TbXD34g7hKB.jpg"}','','2018-08-19 14:13:31','2018-08-26 14:13:31'),
	(113,48,'[29]',1,1,'[159]',35.00,-2,NULL,'2018081915152616376','','2018-08-19 15:15:26','2018-08-25 10:27:33',0.00,'',NULL,'','{"159": "orders/20180825102733zEKYeqd0ZGlcAfp1.jpg"}','',NULL,NULL),
	(114,113,'[25]',1,1,'[165]',35.00,-2,NULL,'2018081915345478593','','2018-08-19 15:34:54','2018-08-25 10:27:33',0.00,'',NULL,'','{"165": "orders/20180825102733LUgJm2wCALGv8UPD.jpg"}','',NULL,NULL),
	(116,50,'[35]',1,1,'[167, 164, 168]',105.00,3,'2018-08-19 15:36:02','2018081915360032267','','2018-08-19 15:36:00','2018-08-26 16:00:02',105.00,'coin',NULL,'','{"164": "orders/20180825102733tnb345iDBibigOXZ.jpg", "167": "orders/201808251027338YFUr7mPZrwS1dpA.jpg", "168": "orders/20180825102733cSiufX37OdmoXolU.jpg"}','','2018-08-19 15:36:53','2018-08-26 15:36:53'),
	(117,113,'[31]',1,1,'[165, 169]',70.00,-2,NULL,'2018081915381305585','','2018-08-19 15:38:13','2018-08-25 10:27:32',0.00,'',NULL,'','{"165": "orders/20180825102732853gnkkwft89qhbX.jpg", "169": "orders/201808251027320hZMHiQuR7Px1fri.jpg"}','',NULL,NULL),
	(118,113,'[31]',1,1,'[165, 169]',70.00,3,'2018-08-19 15:39:10','2018081915385862873','','2018-08-19 15:38:58','2018-08-26 16:00:01',0.00,'wechat','[87]','','{"165": "orders/20180825102732PwvLvn9d8KsFlZxP.jpg", "169": "orders/20180825102732hu1NKyQBihbag0IM.jpg"}','','2018-08-19 15:43:27','2018-08-26 15:43:27'),
	(119,50,'[27]',1,1,'[47, 98, 99, 73, 76, 32, 33, 55, 44, 85, 110, 96]',420.00,3,'2018-08-19 15:39:21','2018081915391881515','','2018-08-19 15:39:18','2018-08-26 16:00:01',420.00,'coin',NULL,'','{"32": "orders/20180825102729q4q6i1Rs0OMvx72k.jpg", "33": "orders/20180825102730osWNC3Z5v4AQIRVK.jpg", "44": "orders/20180825102730iFTIf0PwvvpO4GoB.jpg", "47": "orders/20180825102730GC7cp8rlzwnR06zU.jpg", "55": "orders/20180825102731zpMtUHwFJA3rDcEI.jpg", "73": "orders/2018082510273117U2Y9PEXA3yvjRG.jpg", "76": "orders/201808251027316Ylv9xmTZcLapb2C.jpg", "85": "orders/20180825102731Qkd8seJxk1aLbM8v.jpg", "96": "orders/20180825102732QMmJrXXnurSGXIuB.jpg", "98": "orders/20180825102732wGjOV38sMT0Z2TPN.jpg", "99": "orders/20180825102732wXnZ5dfRGByRbcyO.jpg", "110": "orders/20180825102732KS1lbnmZunWaQGe9.jpg"}','','2018-08-19 15:40:12','2018-08-26 15:40:12'),
	(120,113,'[31]',1,1,'[165, 169]',70.00,-2,NULL,'2018081915392155121','','2018-08-19 15:39:21','2018-08-25 10:27:29',0.00,'',NULL,'','{"165": "orders/20180825102729wO43ZiK7B4LMAFml.jpg", "169": "orders/20180825102729tnzXhG7rQywm5hyB.jpg"}','',NULL,NULL),
	(121,50,'[35]',1,1,'[170]',35.00,3,'2018-08-19 15:46:39','2018081915463623793','','2018-08-19 15:46:36','2018-08-26 16:00:01',35.00,'coin',NULL,'','{"170": "orders/20180825102729AxJvFlHiHzuuJYz7.jpg"}','','2018-08-19 15:48:08','2018-08-26 15:48:08'),
	(122,50,'[27]',1,1,'[170]',35.00,3,'2018-08-19 15:47:25','2018081915472089019','','2018-08-19 15:47:20','2018-08-26 16:00:01',35.00,'coin',NULL,'','{"170": "orders/2018082510272967tlvQdSdztkRa6B.jpg"}','','2018-08-19 15:47:58','2018-08-26 15:47:58'),
	(123,120,'[35, 34]',1,1,'[171]',70.00,-2,'2018-08-19 16:06:05','2018081916060034765','','2018-08-19 16:06:00','2018-08-25 10:27:29',70.00,'wechat',NULL,'','{"171": "orders/20180825102729E62zvLZm3bIJV2dY.jpg"}','',NULL,NULL),
	(124,50,'[36, 27]',3,1,'[178]',210.00,3,'2018-08-19 16:16:15','2018081916161156554','','2018-08-19 16:16:11','2018-08-26 16:30:02',210.00,'coin',NULL,'','{"178": "orders/20180825102729LBn1ezRW7w5Jo6QE.jpg"}','','2018-08-19 16:16:44','2018-08-26 16:16:44'),
	(125,48,'[36, 27]',1,1,'[179]',70.00,3,'2018-08-19 16:22:12','2018081916220369561','','2018-08-19 16:22:03','2018-08-26 16:30:02',70.00,'coin',NULL,'','{"179": "orders/20180825102728sDJYtpb1Ye64g34D.jpg"}','','2018-08-19 16:22:41','2018-08-26 16:22:41'),
	(126,121,'[36, 35]',1,1,'[191]',70.00,-2,NULL,'2018081916460977447','','2018-08-19 16:46:09','2018-08-25 10:27:28',0.00,'',NULL,'','{"191": "orders/20180825102728jDOhIrBhobudMb6e.jpg"}','',NULL,NULL),
	(127,114,'[33, 32, 34, 30]',1,1,'[194]',140.00,-2,NULL,'2018081916520324637','','2018-08-19 16:52:03','2018-08-25 10:27:28',0.00,'',NULL,'','{"194": "orders/20180825102728ReSX9NUuVVJocQ18.jpg"}','',NULL,NULL),
	(128,114,'[32]',1,1,'[188, 194, 183, 182]',140.00,3,'2018-08-19 16:53:51','2018081916533692267','','2018-08-19 16:53:36','2018-08-26 17:30:01',0.00,'wechat','[90]','','{"182": "orders/20180825102728a1LbBOtMW4YOl7Vp.jpg", "183": "orders/20180825102728cgKPiHaDTKi0BZlj.jpg", "188": "orders/20180825102728n9eJxYdFdpGt8MPU.jpg", "194": "orders/20180825102728i7UdpPlM6Xx7abfW.jpg"}','','2018-08-19 17:20:08','2018-08-26 17:20:08'),
	(129,48,'[37]',1,1,'[202, 201, 203]',105.00,3,'2018-08-19 17:27:44','2018081917274139959','','2018-08-19 17:27:41','2018-08-26 17:30:01',105.00,'coin',NULL,'','{"201": "orders/20180825102727myOb7GjNus5RMgmg.jpg", "202": "orders/20180825102727xYdNOn9EgHjYpSXO.jpg", "203": "orders/201808251027286OzFAmg4vhuOYs39.jpg"}','','2018-08-19 17:28:32','2018-08-26 17:28:32'),
	(130,48,'[36, 34, 30]',1,1,'[72, 70, 101, 159]',420.00,-2,NULL,'2018081918085169415','','2018-08-19 18:08:51','2018-08-25 10:27:27',0.00,'',NULL,'','{"70": "orders/201808251027277cq9GUKLuoSitp0W.jpg", "72": "orders/20180825102727VSHfQqRMjMhiA4Y9.jpg", "101": "orders/20180825102727BHcU24CFEkkQiCMf.jpg", "159": "orders/20180825102727iUjKyCXZspCznhqW.jpg"}','',NULL,NULL),
	(131,121,'[36, 35, 34, 33, 32]',1,4,'[191]',700.00,-2,NULL,'2018081918312383937','','2018-08-19 18:31:23','2018-08-25 10:27:27',0.00,'',NULL,'','{"191": "orders/201808251027275eWws3SBpTbshUxG.jpg"}','',NULL,NULL),
	(132,121,'[36, 35, 34, 33, 32]',1,1,'[191]',175.00,-2,NULL,'2018081918323185920','','2018-08-19 18:32:31','2018-08-25 10:27:27',0.00,'',NULL,'','{"191": "orders/20180825102727ZA1Qyh5L1SfC3K4j.jpg"}','',NULL,NULL),
	(133,48,'[38]',1,1,'[208]',35.00,3,'2018-08-19 18:40:30','2018081918402430777','','2018-08-19 18:40:24','2018-08-26 19:00:02',35.00,'coin',NULL,'','{"208": "orders/20180825102726kMFky4JGOetiNAvZ.jpg"}','','2018-08-19 18:41:40','2018-08-26 18:41:40'),
	(134,48,'[38]',1,1,'[203, 209]',70.00,3,'2018-08-19 18:41:28','2018081918412529878','','2018-08-19 18:41:25','2018-08-26 19:00:02',70.00,'coin',NULL,'','{"203": "orders/20180825102726qZywBV3hYrvWlkTz.jpg", "209": "orders/20180825102726zyTPDJOxHp7yFlMP.jpg"}','','2018-08-19 18:42:50','2018-08-26 18:42:50'),
	(135,48,'[38]',1,1,'[209, 210]',70.00,3,'2018-08-19 18:47:54','2018081918474422541','','2018-08-19 18:47:44','2018-08-26 19:00:02',70.00,'coin',NULL,'','{"209": "orders/20180825102725pVNysy0z19554uKm.jpg", "210": "orders/20180825102726PAW8Wp2UhhAFDNG7.jpg"}','','2018-08-19 18:48:25','2018-08-26 18:48:25'),
	(139,48,'[39]',2,1,'[217, 216, 215]',210.00,3,'2018-08-19 20:28:19','2018081920281421673','','2018-08-19 20:28:14','2018-08-26 20:30:01',210.00,'coin',NULL,'','{"215": "orders/20180825102725hjAVZ8koMCoGA3os.jpg", "216": "orders/20180825102725NmtrBgTSvaCh52qC.jpg", "217": "orders/20180825102725baekj8sLlCxCcuh9.jpg"}','','2018-08-19 20:28:43','2018-08-26 20:28:43'),
	(140,126,'[38, 37, 36]',1,1,'[218]',105.00,-2,NULL,'2018081920315390333','','2018-08-19 20:31:53','2018-08-25 10:27:24',0.00,'',NULL,'','{"218": "orders/20180825102724EgnSjCgz7ssyYBUl.jpg"}','',NULL,NULL),
	(141,126,'[38, 37, 36]',1,1,'[218]',105.00,-2,NULL,'2018081920321927625','','2018-08-19 20:32:19','2018-08-25 10:27:24',0.00,'',NULL,'','{"218": "orders/20180825102724fgHRbzh8YsghyKzm.jpg"}','',NULL,NULL),
	(142,129,'[39, 38, 37]',1,1,'[220]',105.00,-2,NULL,'2018081921545856939','','2018-08-19 21:54:58','2018-08-25 10:27:24',0.00,'',NULL,'','{"220": "orders/20180825102724mmXdoqJ4WYn3wXYv.jpg"}','',NULL,NULL),
	(143,48,'[40]',1,1,'[224, 225, 226]',105.00,3,'2018-08-19 22:00:56','2018081922005263890','','2018-08-19 22:00:52','2018-08-28 14:00:02',105.00,'coin',NULL,'','{"224": "orders/20180825102723C9M2XwjIh4n7Wk7U.jpg", "225": "orders/20180825102723ebBb0d1qrz3WVDzi.jpg", "226": "orders/20180825102724RdL036VTdcBoy8Gj.jpg"}','','2018-08-21 13:48:23','2018-08-28 13:48:23'),
	(146,50,'[40, 27]',1,1,'[231]',70.00,3,'2018-08-19 22:20:03','2018081922195852828','','2018-08-19 22:19:58','2018-08-26 22:30:02',70.00,'coin',NULL,'','{"231": "orders/20180825102723xZLk6V5ceAFfdeWb.jpg"}','','2018-08-19 22:20:46','2018-08-26 22:20:46'),
	(148,53,'[30]',1,1,'[26]',35.00,-2,'2018-08-20 11:00:38','2018082010072222398','','2018-08-20 10:07:22','2018-08-26 19:00:02',35.00,'coin',NULL,'1','{"26": "orders/20180825102723zD0IDencruV7h4J7.jpg"}','',NULL,NULL),
	(149,53,'[30]',1,1,'[26]',35.00,-2,'2018-08-20 11:05:13','2018082011034468216','','2018-08-20 11:03:44','2018-08-26 19:00:02',35.00,'balance',NULL,'1','{"26": "orders/20180825102723DRsg9XE4a7pp77MA.jpg"}','',NULL,NULL),
	(150,53,'[30]',1,1,'[26]',35.00,-2,'2018-08-20 11:06:48','2018082011063880738','','2018-08-20 11:06:38','2018-08-26 19:00:02',35.00,'coin',NULL,'1','{"26": "orders/20180825102723jlxiFQY8r9OLl1rm.jpg"}','',NULL,NULL),
	(151,53,'[30]',1,1,'[26]',35.00,-2,'2018-08-20 11:18:22','2018082011181111766','','2018-08-20 11:18:11','2018-08-26 19:00:02',35.00,'coin',NULL,'1','{"26": "orders/20180825102723ACscaf3FIfso2uen.jpg"}','',NULL,NULL),
	(152,53,'[30]',1,1,'[26]',35.00,-2,'2018-08-20 11:21:58','2018082011185076362','','2018-08-20 11:18:50','2018-08-26 19:00:02',35.00,'coin',NULL,'1','{"26": "orders/20180825102723wdpT7OuYGclvY7dm.jpg"}','',NULL,NULL),
	(154,50,'[2]',1,1,'[234]',35.00,-2,'2018-08-20 12:43:15','2018082012431356754','','2018-08-20 12:43:13','2018-08-25 10:27:23',35.00,'wechat',NULL,'','{"234": "orders/20180825102723fFvQcCFV5LOhU7DX.jpg"}','',NULL,NULL),
	(155,50,'[2]',1,1,'[234]',35.00,3,'2018-08-20 12:44:26','2018082012435062958','','2018-08-20 12:43:50','2018-08-27 13:00:02',0.00,'coin','[80]','','{"234": "orders/20180825102723Jtks0DjeFALDClJd.jpg"}','','2018-08-20 12:45:13','2018-08-27 12:45:13'),
	(158,53,'[30]',1,1,'[26]',35.00,-2,'2018-08-19 13:45:46','2018082013451698995','','2018-08-19 13:45:16','2018-08-25 10:27:23',35.00,'coin',NULL,'驳回','{"26": "orders/20180825102723krUIflHbXLxvzLF0.jpg"}','',NULL,NULL),
	(159,53,'[30]',1,1,'[26]',35.00,-2,'2018-08-19 13:46:22','2018082013460803036','','2018-08-19 13:46:08','2018-08-25 10:27:23',20.00,'balance','[101]','测试','{"26": "orders/20180825102723rkHEAMQqtdlWh3EY.jpg"}','',NULL,NULL),
	(163,47,'[41]',1,2,'[211]',70.00,3,'2018-08-20 14:15:42','2018082014111176789','','2018-08-20 14:11:11','2018-09-03 14:30:01',70.00,'coin','[]','','{"211": "orders/201808251027234IWj81L5fAngzfou.jpg"}','','2018-08-20 14:21:44','2018-09-03 14:21:44'),
	(167,121,'[40, 36, 35]',1,1,'[191]',105.00,-2,NULL,'2018082014280055156','','2018-08-20 14:28:00','2018-08-25 10:27:22',0.00,'',NULL,'','{"191": "orders/20180825102722nzO34vGgNxJOEUeo.jpg"}','',NULL,NULL),
	(168,121,'[40, 36, 35]',1,1,'[191]',105.00,-2,NULL,'2018082014280175700','','2018-08-20 14:28:01','2018-08-25 10:27:22',0.00,'',NULL,'','{"191": "orders/20180825102722qH5qJYFeWMnWdKzU.jpg"}','',NULL,NULL),
	(174,47,'[2]',1,1,'[211]',35.00,3,'2018-08-20 15:35:16','2018082015350202214','','2018-08-20 15:35:02','2018-08-29 13:00:01',0.00,'wechat','[99]','天天','{"211": "orders/20180825102722SDpaLf8sS5h9qcya.jpg"}','','2018-08-22 12:57:30','2018-08-29 12:57:30'),
	(181,50,'[19, 27]',1,1,'[236]',70.00,3,'2018-08-20 17:04:12','2018082017040851157','','2018-08-20 17:04:08','2018-08-27 17:30:02',70.00,'coin','[]','','{"236": "orders/20180825102722hXfwtTlmXVE13fzK.jpg"}','','2018-08-20 17:04:43','2018-08-27 17:04:43'),
	(182,50,'[27, 19]',1,1,'[236]',70.00,3,'2018-08-20 17:13:55','2018082017135390691','','2018-08-20 17:13:53','2018-08-27 17:30:01',70.00,'coin','[]','','{"236": "orders/20180825102722kAClX39SPTq7Yyfc.jpg"}','','2018-08-20 17:14:23','2018-08-27 17:14:23'),
	(183,132,'[39]',1,1,'[237]',35.00,-2,NULL,'2018082017352405158','','2018-08-20 17:35:24','2018-08-25 10:27:22',0.00,'',NULL,'','{"237": "orders/20180825102722Y3rEUPrroEUPFtiW.jpg"}','',NULL,NULL),
	(184,50,'[42]',2,1,'[241, 242, 243]',210.00,3,'2018-08-20 18:12:45','2018082018124178251','','2018-08-20 18:12:41','2018-08-27 18:30:02',210.00,'coin','[]','','{"241": "orders/20180825102721yfHfvxN0zBeoCmlo.jpg", "242": "orders/20180825102721TFeS8SGsTs4UF307.jpg", "243": "orders/20180825102722jiTqECXmLFplZSau.jpg"}','','2018-08-20 18:14:10','2018-08-27 18:14:10'),
	(185,135,'[42, 34, 33, 31, 30, 21, 16, 10]',1,1,'[244, 246, 245, 247]',1120.00,-2,NULL,'2018082018565497929','','2018-08-20 18:56:54','2018-08-25 10:27:21',0.00,'',NULL,'','{"244": "orders/20180825102721yWcBA6ymLDsdokYs.jpg", "245": "orders/20180825102721aTBG42xRYNyjfboc.jpg", "246": "orders/20180825102721s2PZbbvicYKzV4Ws.jpg", "247": "orders/201808251027212ZFJsD2CVQWQcMEU.jpg"}','',NULL,NULL),
	(186,135,'[42]',1,1,'[244, 247]',70.00,3,'2018-08-20 18:58:52','2018082018584018572','','2018-08-20 18:58:40','2018-08-27 19:30:01',0.00,'wechat','[104]','','{"244": "orders/201808251027201NyJT5lR4SJWeC4g.jpg", "247": "orders/20180825102720Xcdzr5MIojGzCMj9.jpg"}','','2018-08-20 19:04:01','2018-08-27 19:04:01'),
	(191,50,'[19]',2,1,'[249, 248]',140.00,3,'2018-08-20 21:35:38','2018082021353584962','','2018-08-20 21:35:35','2018-08-27 22:00:01',140.00,'coin','[]','','{"248": "orders/201808251027207Wg5UaVadbv5JNAK.jpg", "249": "orders/2018082510272024c0vIsvSWNLpdcl.jpg"}','','2018-08-20 21:36:17','2018-08-27 21:36:17'),
	(195,119,'[42, 40, 37]',1,1,'[251]',105.00,3,'2018-08-21 13:17:34','2018082113171740878','','2018-08-21 13:17:17','2018-08-28 13:30:02',0.00,'wechat','[92]','','{"251": "orders/20180825102720KGW9y5VsSmCvekia.jpg"}','','2018-08-21 13:23:12','2018-08-28 13:23:12'),
	(199,55,'[44]',1,1,'[115]',35.00,3,'2018-08-21 14:50:29','2018082114221609981','','2018-08-21 14:20:58','2018-08-28 15:00:01',35.00,'wechat','[]','','{"115": "orders/20180825102720IdRagvRzegzAzprO.jpg"}','','2018-08-21 14:50:57','2018-08-28 14:50:57'),
	(200,55,'[45]',1,1,'[152]',35.00,3,'2018-08-21 15:06:57','2018082115062862152','','2018-08-21 15:06:28','2018-08-28 15:30:02',20.00,'wechat','[102]','','{"152": "orders/20180825102720FxvXGd21d5KKvPrS.jpg"}','','2018-08-21 15:07:28','2018-08-28 15:07:28'),
	(208,115,'[43, 40, 37, 34]',1,1,'[253]',140.00,3,'2018-08-21 16:04:23','2018082116040194610','','2018-08-21 16:04:01','2018-08-28 17:00:04',0.00,'wechat','[103]','','{"253": "orders/20180825102720ZRPekBWZuoTy4ja0.jpg"}','','2018-08-21 16:33:08','2018-08-28 16:33:08'),
	(209,93,'[2, 1]',1,1,'[254]',70.00,3,'2018-08-21 16:32:08','2018082116315598177','','2018-08-21 16:31:55','2018-08-28 17:00:04',70.00,'coin','[]','','{"254": "orders/20180825102720KHjQncX93LbtFjc2.jpg"}','','2018-08-21 16:33:40','2018-08-28 16:33:40'),
	(210,47,'[2, 1]',1,1,'[255]',70.00,3,'2018-08-21 16:58:19','2018082116580057771','','2018-08-21 16:58:00','2018-08-28 17:00:01',70.00,'coin','[]','','{"255": "orders/201808251027200PcBqMZUAvNb92fX.jpg"}','','2018-08-21 16:58:57','2018-08-28 16:58:57'),
	(211,48,'[43]',1,1,'[94]',35.00,-2,NULL,'2018082117060241141','','2018-08-21 17:06:02','2018-08-25 10:27:20',0.00,'',NULL,'','{"94": "orders/201808251027204DTBHeG32mdVFu7H.jpg"}','',NULL,NULL),
	(212,47,'[2, 1]',1,1,'[255]',70.00,3,'2018-08-21 17:15:23','2018082117150750415','','2018-08-21 17:15:07','2018-08-28 17:30:01',70.00,'coin','[]','','{"255": "orders/20180825102720HeZfkNQo70EOdgLB.jpg"}','','2018-08-21 17:15:41','2018-08-28 17:15:41'),
	(213,55,'[46]',1,1,'[152]',35.00,3,'2018-08-21 18:11:35','2018082118112755010','','2018-08-21 18:11:27','2018-08-28 18:30:02',35.00,'balance','[]','','{"152": "orders/20180825102719V0sFWvrXEUbrNxfF.jpg"}','','2018-08-21 18:18:11','2018-08-28 18:18:11'),
	(214,48,'[16]',1,1,'[256]',35.00,3,'2018-08-21 18:15:59','2018082118155306158','','2018-08-21 18:15:53','2018-08-28 18:30:02',35.00,'coin','[]','','{"256": "orders/20180825102719WqUjvg9LedG0Vv6k.jpg"}','','2018-08-21 18:16:58','2018-08-28 18:16:58'),
	(215,47,'[2, 1, 46]',1,1,'[257]',105.00,3,'2018-08-21 18:16:37','2018082118161444393','','2018-08-21 18:16:14','2018-08-28 18:30:01',0.00,'wechat','[109]','','{"257": "orders/20180825102719cFdtZaHngTyZnhqL.jpg"}','','2018-08-21 18:18:02','2018-08-28 18:18:02'),
	(224,52,'[3]',1,1,'[265, 266, 269, 270]',140.00,3,'2018-08-22 13:49:16','2018082213485457541','','2018-08-22 13:48:54','2018-08-29 14:30:02',0.00,'wechat','[49]','','{"265": "orders/20180825102718gFMNVhcA7XgtyOd7.jpg", "266": "orders/20180825102718JRyreFtSlRvqcG6Q.jpg", "269": "orders/20180825102718TscHoeOmm0mxTykw.jpg", "270": "orders/201808251027184MWiAnqTsHTHsECh.jpg"}','','2018-08-22 14:08:33','2018-08-29 14:08:33'),
	(226,52,'[4]',1,1,'[276, 275]',70.00,-2,NULL,'2018082216445575883','','2018-08-22 16:44:55','2018-08-25 10:27:18',0.00,'',NULL,'','{"275": "orders/20180825102718sYeSIt7qfTdHHnET.jpg", "276": "orders/20180825102718sG6uAC4KP4z9dSki.jpg"}','',NULL,NULL),
	(228,52,'[4]',1,1,'[275, 276]',70.00,3,'2018-08-22 16:48:10','2018082216474872154','','2018-08-22 16:47:48','2018-08-29 17:00:02',0.00,'wechat','[48]','','{"275": "orders/20180825102718YeWLERoOe7KvbG5i.jpg", "276": "orders/20180825102718ntRedpyVMo12qfPI.jpg"}','','2018-08-22 16:53:15','2018-08-29 16:53:15'),
	(229,50,'[19]',1,1,'[281]',35.00,3,'2018-08-22 16:50:55','2018082216505205695','','2018-08-22 16:50:52','2018-08-29 17:00:02',35.00,'coin','[]','','{"281": "orders/20180825102718q1fB99RrTKsn31bb.jpg"}','','2018-08-22 16:52:30','2018-08-29 16:52:30'),
	(230,47,'[46]',1,1,'[280]',35.00,3,'2018-08-22 16:52:42','2018082216522250648','','2018-08-22 16:52:22','2018-08-29 17:00:01',35.00,'coin','[]','','{"280": "orders/20180825102718GH2HtqcfyxunfNur.jpg"}','','2018-08-22 16:53:34','2018-08-29 16:53:34'),
	(231,55,'[43, 38, 35, 34, 33, 31, 30, 26, 21, 19, 16, 10, 8, 6, 42, 40, 37, 36, 29, 25, 24, 18, 15, 9, 7, 28, 32, 13, 12, 11, 4, 3, 39, 23, 22, 20, 17, 14, 5, 27, 2, 1]',1,1,'[115]',1470.00,-2,NULL,'2018082223235208108','','2018-08-22 23:23:52','2018-08-25 10:27:18',0.00,'',NULL,'','{"115": "orders/20180825102718heKPGACKkK7NBFT1.jpg"}','',NULL,NULL),
	(232,55,'[46, 1, 2]',1,1,'[300]',105.00,3,'2018-08-23 09:30:05','2018082309295005122','','2018-08-23 09:29:50','2018-08-30 10:00:01',105.00,'balance','[]','','{"300": "orders/20180825102718yX3Jw06GtKLirCpg.jpg"}','','2018-08-23 09:30:44','2018-08-30 09:30:44'),
	(233,48,'[40]',1,1,'[93]',35.00,-2,NULL,'2018082310433434000','','2018-08-23 10:43:34','2018-08-25 10:27:18',0.00,'',NULL,'','{"93": "orders/20180825102718nHupKHb6tPmT5OKU.jpg"}','',NULL,NULL),
	(234,146,'[2, 1]',1,1,'[301]',70.00,3,'2018-08-23 10:56:16','2018082310561317998','','2018-08-23 10:56:13','2018-08-30 11:00:01',70.00,'coin','[]','','{"301": "orders/20180825102718VqXq4Hd0QiGf9p3q.jpg"}','','2018-08-23 10:56:49','2018-08-30 10:56:49'),
	(235,69,'[1]',1,1,'[131]',35.00,-2,'2018-08-23 12:23:56','2018082312234084766','','2018-08-23 12:23:40','2018-08-25 10:27:17',35.00,'wechat','[]','素材不合规','{"131": "orders/20180825102717yMMpNpbcywCgpJAv.jpg"}','2018082312255343215',NULL,NULL),
	(236,50,'[19]',1,1,'[248, 249, 236]',105.00,3,'2018-08-23 14:01:39','2018082314013647426','','2018-08-23 14:01:36','2018-08-30 14:30:02',105.00,'coin','[]','','{"236": "orders/20180825102717Kfkp0RQMKNbXmQGv.jpg", "248": "orders/20180825102717BNINZOOMr7JAzRyt.jpg", "249": "orders/20180825102717TUlZZ41GGNiGbiFP.jpg"}','','2018-08-23 14:01:58','2018-08-30 14:01:58'),
	(237,48,'[2, 1]',1,1,'[302]',70.00,3,'2018-08-23 14:28:50','2018082314284644038','','2018-08-23 14:28:46','2018-08-30 14:30:02',70.00,'coin','[]','','{"302": "orders/2018082510271753RDoiM3ZzHCGVO6.jpg"}','','2018-08-23 14:29:17','2018-08-30 14:29:17'),
	(238,121,'[35]',1,1,'[191]',35.00,-2,NULL,'2018082314572541637','','2018-08-23 14:57:25','2018-08-25 10:27:17',0.00,'',NULL,'','{"191": "orders/201808251027174THFOOW9rZmWaoFR.jpg"}','',NULL,NULL),
	(239,49,'[37]',1,1,'[303]',35.00,-2,NULL,'2018082315221112615','','2018-08-23 15:22:11','2018-08-25 10:27:17',0.00,'',NULL,'','{"303": "orders/20180825102717VIXQlxTyfA0qiqrf.jpg"}','',NULL,NULL),
	(240,49,'[37]',1,1,'[303]',35.00,3,'2018-08-23 15:23:04','2018082315225833761','','2018-08-23 15:22:58','2018-08-30 15:30:01',35.00,'coin','[]','','{"303": "orders/20180825102716atg0qticLPTaGb3f.jpg"}','','2018-08-23 15:23:17','2018-08-30 15:23:17'),
	(241,49,'[37]',1,1,'[306]',35.00,3,'2018-08-23 15:26:24','2018082315261876414','','2018-08-23 15:26:18','2018-08-30 15:30:01',35.00,'coin','[]','','{"306": "orders/20180825102716hkHHr2j9HXlfDzFU.jpg"}','','2018-08-23 15:26:33','2018-08-30 15:26:33'),
	(242,49,'[37]',1,1,'[307]',35.00,3,'2018-08-23 15:33:49','2018082315334373203','','2018-08-23 15:33:43','2018-08-30 16:00:01',35.00,'coin','[]','','{"307": "orders/20180825102716mFae6oj3jj3V7ZZs.jpg"}','','2018-08-23 15:34:16','2018-08-30 15:34:16'),
	(243,47,'[42]',1,1,'[42]',35.00,-2,NULL,'2018082316033490638','','2018-08-23 16:03:34','2018-08-25 10:27:16',0.00,'',NULL,'','{"42": "orders/20180825102716J92IUngZo8GvUMe0.jpg"}','',NULL,NULL),
	(244,47,'[42]',1,1,'[42]',35.00,3,'2018-08-23 16:03:59','2018082316034178604','','2018-08-23 16:03:41','2018-08-30 16:30:01',35.00,'coin','[]','','{"42": "orders/201808251027163oDHwhxCGlMQTh9R.jpg"}','','2018-08-23 16:04:27','2018-08-30 16:04:27'),
	(245,50,'[12]',1,1,'[236]',35.00,3,'2018-08-23 16:08:37','2018082316083470813','','2018-08-23 16:08:34','2018-08-30 16:30:01',35.00,'coin','[]','','{"236": "orders/20180825102716YG2NR3lFccnnQgd1.jpg"}','','2018-08-23 16:09:51','2018-08-30 16:09:51'),
	(248,129,'[39, 38, 37, 35]',1,1,'[220]',140.00,3,'2018-08-23 20:12:30','2018082320122460109','','2018-08-23 20:12:24','2018-08-30 22:30:01',0.00,'wechat','[98]','','{"220": "orders/20180825102716L9xGWMjxLewC4T9u.jpg"}','','2018-08-23 22:26:14','2018-08-30 22:26:14'),
	(251,46,'[46]',2,2,'[316, 320]',280.00,3,'2018-08-24 10:20:45','2018082410202414893','','2018-08-24 10:20:24','2018-09-07 10:30:02',280.00,'balance','[]','','{"316": "orders/201808251027162xizpXIiEuAoNfdO.jpg", "320": "orders/20180825102716JQIYZrEF3jokgwVD.jpg"}','','2018-08-24 10:21:14','2018-09-07 10:21:14'),
	(254,150,'[46]',1,1,'[323]',35.00,3,'2018-08-24 15:31:00','2018082415304452504','','2018-08-24 15:30:44','2018-08-31 16:00:01',20.00,'coin','[112]','','{"323": "orders/201808251027160oY44rd7Ej4cF6z8.jpg"}','','2018-08-24 15:31:17','2018-08-31 15:31:17'),
	(255,121,'[40, 36, 29, 43, 38, 46, 45]',1,1,'[322, 324, 325]',735.00,3,'2018-08-24 16:05:16','2018082416050778561','','2018-08-24 16:05:07','2018-08-31 17:30:01',585.00,'coin','[95]','','{"322": "orders/20180825102716LjBuR1KPdHrAoiiY.jpg", "324": "orders/20180825102716NO8M5Z5bm5YdrB3W.jpg", "325": "orders/20180825102716mGtgWBU61M7TtWiQ.jpg"}','','2018-08-24 17:08:34','2018-08-31 17:08:34'),
	(256,118,'[3, 4, 14, 27, 34, 40]',4,1,'[326]',840.00,-2,NULL,'2018082417014470847','','2018-08-24 17:01:44','2018-08-26 10:30:01',0.00,'',NULL,'','{"326": "orders/20180825102715GAN1XqQPqcvBfD9a.jpg"}','',NULL,NULL),
	(257,118,'[34]',4,1,'[326]',140.00,3,'2018-08-24 17:06:39','2018082417062092108','','2018-08-24 17:06:20','2018-08-31 17:30:01',0.00,'wechat','[91]','','{"326": "orders/20180825102715lU0s12Mq3pzJn0b4.jpg"}','','2018-08-24 17:07:55','2018-08-31 17:07:55'),
	(259,46,'[46, 45, 2]',2,2,'[136, 327]',840.00,-2,NULL,'2018082422072052391','','2018-08-24 22:07:20','2018-08-26 10:30:01',0.00,'',NULL,'','{"136": "orders/201808251027158cfUTuXE5wQhy3Ob.jpg", "327": "orders/20180825102715T53ojfK80qvO7Sfx.jpg"}','',NULL,NULL),
	(260,46,'[46, 45, 2]',2,2,'[136, 327]',840.00,3,'2018-08-24 22:08:25','2018082422082061088','','2018-08-24 22:08:20','2018-09-07 22:30:02',840.00,'balance','[]','','{"136": "orders/20180825102715Hgjut4uJriB6OWEU.jpg", "327": "orders/201808251027158zMUwp7Mog3pYLYX.jpg"}','','2018-08-24 22:09:04','2018-09-07 22:09:04'),
	(263,46,'[43, 38, 35, 34, 33, 31, 30, 26, 21, 19, 16, 10, 8, 6, 46, 42, 40, 37, 36, 29, 25, 24, 18, 15, 9, 7, 28, 32, 13, 12, 11, 4, 3, 39, 23, 22, 20, 17, 14, 5, 45, 27, 2]',1,1,'[334, 320]',3010.00,3,'2018-08-25 13:17:08','2018082513170306370','','2018-08-25 13:17:03','2018-09-01 13:30:01',3010.00,'balance','[]','','{"320": "orders/20180825131705VoE8FCmHzcTRhSAG.jpg", "334": "orders/20180825131705JULNmT3kjbB5xCH1.jpg"}','','2018-08-25 13:17:20','2018-09-01 13:17:20'),
	(264,99,'[29]',1,1,'[335, 336, 337]',105.00,-2,NULL,'2018082513560214257','','2018-08-25 13:56:02','2018-08-26 14:00:01',0.00,'',NULL,'','{"335": "orders/20180825135603KmXa3TfC4e46bbP2.jpg", "336": "orders/20180825135603UBf1Wkdh80s9Skde.jpg", "337": "orders/2018082513560384qKSn8aGkHqRpa8.jpg"}','',NULL,NULL),
	(265,99,'[29]',1,1,'[337, 335]',70.00,-2,NULL,'2018082513564133957','','2018-08-25 13:56:41','2018-08-26 14:00:01',0.00,'',NULL,'','{"335": "orders/20180825135642NyRRTVtRV0dZuhky.jpg", "337": "orders/20180825135642g9c3G7c8Z2GPuB33.jpg"}','',NULL,NULL),
	(266,99,'[29]',1,1,'[337, 335]',70.00,-2,NULL,'2018082513565008948','','2018-08-25 13:56:50','2018-08-26 14:00:01',0.00,'',NULL,'','{"335": "orders/20180825135651lWne8Z0WYlQUuSZk.jpg", "337": "orders/20180825135652Si61LaZnlYkCLg0O.jpg"}','',NULL,NULL),
	(267,99,'[29]',1,1,'[337, 335]',70.00,-2,NULL,'2018082513570007104','','2018-08-25 13:57:00','2018-08-26 14:00:01',0.00,'',NULL,'','{"335": "orders/20180825135701BnLLcm1oo0bgSJKt.jpg", "337": "orders/201808251357017SM3LbvTrjGBq7Rv.jpg"}','',NULL,NULL),
	(268,99,'[29]',1,1,'[337, 335]',70.00,-2,NULL,'2018082513571548378','','2018-08-25 13:57:15','2018-08-26 14:00:01',0.00,'',NULL,'','{"335": "orders/20180825135716mpOcS35PkhiuvgF1.jpg", "337": "orders/20180825135716HmkSlxtwwAGQ3Vyq.jpg"}','',NULL,NULL),
	(269,99,'[29]',1,1,'[337, 335]',70.00,3,'2018-08-25 13:58:44','2018082513581918198','','2018-08-25 13:58:19','2018-09-01 15:00:02',0.00,'wechat','[82]','','{"335": "orders/20180825135819T06OW7mmOrRvFfOy.jpg", "337": "orders/20180825135819O6UgCzqgTNUmMF6r.jpg"}','','2018-08-25 14:54:53','2018-09-01 14:54:53'),
	(270,48,'[39]',1,1,'[215]',35.00,3,'2018-08-25 15:39:14','2018082515390897270','','2018-08-25 15:39:08','2018-09-01 16:00:02',35.00,'coin','[]','','{"215": "orders/20180825153908ZMw3MlU9EQ4b97Bc.jpg"}','','2018-08-25 15:39:53','2018-09-01 15:39:53'),
	(271,50,'[27]',1,1,'[164]',35.00,3,'2018-08-25 16:03:10','2018082516024740393','','2018-08-25 16:02:47','2018-09-01 16:30:01',35.00,'coin','[]','','{"164": "orders/20180825160250aXDiXV5ytJWsOZGo.jpg"}','','2018-08-25 16:03:36','2018-09-01 16:03:36'),
	(273,46,'[46, 45, 2]',3,1,'[333]',315.00,3,'2018-08-25 17:16:16','2018082517161349945','','2018-08-25 17:16:13','2018-09-01 17:30:01',315.00,'balance','[]','','{"333": "orders/20180825171615ymOJ8mzOVj2uzvQK.jpg"}','','2018-08-25 17:16:47','2018-09-01 17:16:47'),
	(274,48,'[40]',1,1,'[341]',35.00,3,'2018-08-25 21:44:09','2018082521440504438','','2018-08-25 21:44:05','2018-09-01 22:00:01',35.00,'coin','[]','','{"341": "orders/20180825214409j85LiQEdNG50kCoU.jpg"}','','2018-08-25 21:45:24','2018-09-01 21:45:24'),
	(275,46,'[43, 38, 35, 34, 33, 31, 30, 26, 21, 19, 16, 10, 8, 6, 46, 42, 40, 37, 36, 29, 25, 24, 18, 15, 9, 7, 28, 32, 13, 12, 11, 4, 3, 39, 23, 22, 20, 17, 14, 5, 45, 27, 2, 1]',3,1,'[333]',4620.00,3,'2018-08-26 11:29:49','2018082611293445609','','2018-08-26 11:29:34','2018-09-02 12:00:01',4620.00,'balance','[]','','{"333": "orders/20180826112935JWFI9C21UuqBbcp3.jpg"}','','2018-08-26 11:30:58','2018-09-02 11:30:58'),
	(276,50,'[46]',1,1,'[32]',35.00,3,'2018-08-26 15:45:28','2018082615452422794','','2018-08-26 15:45:24','2018-09-02 16:00:03',35.00,'coin','[]','','{"32": "orders/20180826154527hnoSeALdWeyYKqdt.jpg"}','','2018-08-26 15:45:55','2018-09-02 15:45:55'),
	(277,50,'[46]',1,1,'[236]',35.00,3,'2018-08-26 15:48:06','2018082615480319024','','2018-08-26 15:48:03','2018-09-02 16:00:01',35.00,'coin','[]','','{"236": "orders/20180826154803ztIeJln5IPf6FzmX.jpg"}','','2018-08-26 15:48:25','2018-09-02 15:48:25'),
	(278,46,'[2, 1, 43, 38, 35, 34, 33, 31, 30, 26, 21, 19, 16, 10, 8, 6, 42, 40, 37, 36, 29, 25, 24, 18, 15, 9, 7, 28, 32, 13, 12, 11, 4, 3, 39, 23, 22, 20, 17, 14, 5, 27]',1,1,'[343]',1470.00,3,'2018-08-27 10:14:56','2018082710143373549','','2018-08-27 10:14:33','2018-09-03 10:30:01',1470.00,'balance','[]','','{"343": "orders/20180827101434j4dnw0gzJcIBAFjg.jpg"}','','2018-08-27 10:15:55','2018-09-03 10:15:55'),
	(279,60,'[42, 29, 27, 14]',1,1,'[348]',140.00,-2,NULL,'2018082719375192227','','2018-08-27 19:37:51','2018-08-28 20:00:01',0.00,'',NULL,'','{"348": "orders/20180827193754QTRuQRaEya98PaPf.jpg"}','',NULL,NULL),
	(280,46,'[41]',1,1,'[334]',35.00,3,'2018-08-28 10:51:04','2018082810505698523','','2018-08-28 10:50:56','2018-09-04 11:00:01',35.00,'balance','[]','','{"334": "orders/20180828105058m7QjCAkkEUFpa4u0.jpg"}','','2018-08-28 10:51:41','2018-09-04 10:51:41'),
	(282,46,'[43, 38, 35, 34, 33, 31, 30, 26, 21, 19, 16, 10, 8, 6, 46, 42, 37, 36, 29, 25, 24, 18, 15, 9, 7, 28, 32, 13, 12, 11, 4, 3, 39, 23, 22, 20, 17, 14, 5, 27, 2, 1, 41]',1,1,'[349]',1505.00,3,'2018-08-28 13:46:16','2018082813460474387','','2018-08-28 13:46:04','2018-09-04 14:00:01',1505.00,'balance','[]','','{"349": "orders/20180828134607sZmwa30QNfz8g3W6.jpg"}','','2018-08-28 13:46:45','2018-09-04 13:46:45'),
	(283,184,'[1]',1,1,'[352]',35.00,3,'2018-08-28 14:59:19','2018082814590854944','','2018-08-28 14:59:08','2018-09-04 15:00:01',0.00,'wechat','[131]','','{"352": "orders/20180828145909F7sQnXYeJ94kaW5u.jpg"}','','2018-08-28 14:59:54','2018-09-04 14:59:54'),
	(286,180,'[46]',2,1,'[354]',70.00,3,'2018-08-29 11:16:35','2018082911160599154','','2018-08-29 11:16:05','2018-09-05 13:00:02',70.00,'coin','[]','','{"354": "orders/20180829133824EroD5jpd62rCpIr4.jpg"}','','2018-08-29 12:42:15','2018-09-05 12:42:15'),
	(287,180,'[43]',2,1,'[354]',70.00,3,'2018-08-29 11:17:29','2018082911172315373','','2018-08-29 11:17:23','2018-09-05 13:00:02',70.00,'coin','[]','','{"354": "orders/20180829133824vOqqQ3h285uBKjmZ.jpg"}','','2018-08-29 12:42:23','2018-09-05 12:42:23'),
	(288,180,'[34]',2,1,'[354]',70.00,3,'2018-08-29 11:18:27','2018082911182106192','','2018-08-29 11:18:21','2018-09-05 13:00:02',70.00,'coin','[]','','{"354": "orders/20180829133825ytX2S2amfKmNtVwB.jpg"}','','2018-08-29 12:42:31','2018-09-05 12:42:31'),
	(289,46,'[16]',1,1,'[271]',35.00,3,'2018-08-29 12:41:46','2018082912414252092','','2018-08-29 12:41:42','2018-09-05 13:00:01',35.00,'coin','[]','','{"271": "orders/20180829133833Ql2Kcn3T7F8wnKua.jpg"}','','2018-08-29 12:42:39','2018-09-05 12:42:39'),
	(290,46,'[1]',1,1,'[271]',35.00,3,'2018-08-29 13:07:09','2018082913070660367','','2018-08-29 13:07:06','2018-09-05 13:30:01',35.00,'coin','[]','','{"271": "orders/20180829133834DMdrQbYOiu5l9tDf.jpg"}','','2018-08-29 13:07:34','2018-09-05 13:07:34'),
	(291,46,'[41, 2, 1]',1,1,'[332]',105.00,3,'2018-08-29 14:11:11','2018082914110754104','','2018-08-29 14:11:07','2018-09-05 14:30:01',105.00,'coin','[]','','{"332": "orders/20180829141108KD4NxcTohii1xCNY.jpg"}','','2018-08-29 14:12:05','2018-09-05 14:12:05'),
	(292,47,'[1, 2, 41]',1,1,'[355]',105.00,3,'2018-08-29 18:12:12','2018082918110382116','','2018-08-29 18:11:03','2018-09-05 18:30:01',0.00,'balance','[130]','','{"355": "orders/20180829181104evegzc8Wbkue6fdm.jpg"}','','2018-08-29 18:12:33','2018-09-05 18:12:33'),
	(293,86,'[39, 34, 16, 14]',1,1,'[357]',140.00,3,'2018-08-30 11:10:21','2018083011095009321','','2018-08-30 11:09:50','2018-09-06 15:30:02',0.00,'wechat','[74]','','{"357": "orders/20180830110951gs0aQ1km9hQGPAlR.jpg"}','','2018-08-30 15:20:35','2018-09-06 15:20:35'),
	(294,66,'[46]',1,1,'[132]',35.00,-2,NULL,'2018083012021464402','','2018-08-30 12:02:14','2018-08-31 12:30:01',0.00,'',NULL,'','{"132": "orders/20180830120217RiuEk8CWEVZt3lcJ.jpg"}','',NULL,NULL),
	(295,46,'[41, 2, 1]',1,1,'[358]',105.00,3,'2018-08-30 15:17:55','2018083015174898416','','2018-08-30 15:17:48','2018-09-06 15:30:01',105.00,'coin','[]','','{"358": "orders/20180830151749fxV2xcPXjiCMMckH.jpg"}','','2018-08-30 15:20:49','2018-09-06 15:20:49'),
	(296,66,'[14]',1,1,'[132]',35.00,-2,NULL,'2018083018165864116','','2018-08-30 18:16:58','2018-08-31 18:30:01',0.00,'',NULL,'','{"132": "orders/20180830181700ZNV1kz0tJKJodXvv.jpg"}','',NULL,NULL),
	(297,66,'[33]',1,1,'[132]',35.00,-2,NULL,'2018083018295040665','','2018-08-30 18:29:50','2018-08-31 18:30:01',0.00,'',NULL,'','{"132": "orders/20180830182952k9AJn9BqDMNsnXFo.jpg"}','',NULL,NULL),
	(298,66,'[36, 33, 42, 43, 46, 31, 29, 27]',1,1,'[132]',280.00,-2,NULL,'2018083021182519029','','2018-08-30 21:18:25','2018-08-31 21:30:01',0.00,'',NULL,'','{"132": "orders/20180830211827R3kT04kmareBGEnq.jpg"}','',NULL,NULL),
	(299,49,'[39]',1,1,'[359]',35.00,3,'2018-08-31 13:10:39','2018083113102906529','','2018-08-31 13:10:29','2018-09-07 13:30:01',35.00,'coin','[]','','{"359": "orders/20180831131031Lf4IXYc6ncLnGUxY.jpg"}','','2018-08-31 13:13:21','2018-09-07 13:13:21'),
	(300,47,'[41]',2,2,'[211]',140.00,3,'2018-08-31 15:08:58','2018083115071830485','','2018-08-31 15:07:18','2018-09-14 15:30:01',0.00,'wechat','[129]','','{"211": "orders/201808311507210fL690RoLu9wegLj.jpg"}','','2018-08-31 15:16:43','2018-09-14 15:16:43'),
	(304,46,'[22, 46, 43, 38, 35, 34, 33, 31, 30, 26, 21, 19, 16, 10, 8, 6, 42, 37, 36, 29, 25, 24, 18, 15, 9, 7, 28, 32, 13, 12, 11, 4, 3, 39, 23, 20, 17, 14, 5, 27, 2, 1, 41]',1,1,'[360]',1505.00,3,'2018-08-31 16:07:12','2018083116070226145','','2018-08-31 16:07:02','2018-09-07 16:30:02',1505.00,'balance','[]','','{"360": "orders/20180831160704Ibr3TM0ksge5Tpi6.jpg"}','','2018-08-31 16:12:04','2018-09-07 16:12:04'),
	(306,48,'[46]',1,1,'[94]',35.00,-2,'2018-08-31 21:06:09','2018083121055610152','','2018-08-31 21:05:56','2018-09-02 11:30:02',35.00,'balance','[]','1','{"94": "orders/20180831210559bz7RmZ5QclPg7ED0.jpg"}','',NULL,NULL),
	(307,53,'[4, 3, 29, 28, 30]',1,1,'[26]',175.00,-2,NULL,'2018090109252924258','','2018-09-01 09:25:29','2018-09-01 10:13:26',0.00,'',NULL,'','{"26": "orders/20180901092529T4HPtSqpP1lyiWaN.jpg"}','',NULL,NULL),
	(312,118,'[34]',4,1,'[326]',140.00,3,'2018-09-02 11:18:42','2018090211183402089','','2018-09-02 11:18:34','2018-09-09 14:00:01',0.00,'wechat','[171]','','{"326": "orders/20180902111834HVLUngvfFjOVzslN.jpg"}','','2018-09-02 13:52:40','2018-09-09 13:52:40'),
	(313,110,'[43]',1,1,'[366]',35.00,-2,NULL,'2018090215400518365','','2018-09-02 15:40:05','2018-09-02 15:43:09',0.00,'',NULL,'','{"366": "orders/201809021540085oMtuL05PNj27IsU.jpg"}','',NULL,NULL),
	(314,110,'[43]',1,1,'[367]',35.00,3,'2018-09-02 15:42:08','2018090215415922537','','2018-09-02 15:41:59','2018-09-09 17:00:01',0.00,'wechat','[86]','','{"367": "orders/20180902154159vLgolD709g8ACtnB.jpg"}','','2018-09-02 16:41:54','2018-09-09 16:41:54'),
	(315,46,'[43, 38, 35, 34, 33, 31, 30, 26, 21, 19, 16, 10, 8, 6, 46, 42, 37, 36, 29, 25, 24, 18, 15, 9, 7, 28, 32, 13, 12, 11, 4, 3, 39, 23, 22, 20, 17, 14, 5, 41, 27, 2, 1]',1,1,'[334]',1505.00,3,'2018-09-02 17:01:35','2018090217012972483','','2018-09-02 17:01:29','2018-09-09 17:30:01',1505.00,'balance','[]','','{"334": "orders/20180902170130YvYOwLBMKlQDsT5X.jpg"}','','2018-09-02 17:02:37','2018-09-09 17:02:37'),
	(316,46,'[41, 2, 1]',1,1,'[362]',105.00,3,'2018-09-02 17:30:08','2018090217300171580','','2018-09-02 17:30:01','2018-09-09 18:00:01',105.00,'balance','[]','','{"362": "orders/20180902173003EMKCszZgAyCn9Wvu.jpg"}','','2018-09-02 17:32:14','2018-09-09 17:32:14'),
	(317,119,'[46]',1,1,'[251]',35.00,3,'2018-09-02 17:57:50','2018090217574316576','','2018-09-02 17:57:43','2018-09-10 09:30:02',0.00,'wechat','[94]','','{"251": "orders/20180902175743b9XSd9UgRXzBdGTh.jpg"}','','2018-09-03 09:07:18','2018-09-10 09:07:18'),
	(318,119,'[29, 25, 24, 7]',1,1,'[251]',140.00,-2,NULL,'2018090218000327951','','2018-09-02 18:00:03','2018-09-03 18:30:01',0.00,'',NULL,'','{"251": "orders/20180902180005CaTh89G6LSqRIYlk.jpg"}','',NULL,NULL),
	(319,119,'[29, 25, 24, 7, 41, 27, 39, 20]',1,1,'[251]',280.00,3,'2018-09-02 18:01:17','2018090218010669998','','2018-09-02 18:01:06','2018-09-10 09:30:01',0.00,'wechat','[172]','','{"251": "orders/20180902180108Nmvj0NT2o7S1XLRt.jpg"}','','2018-09-03 09:07:27','2018-09-10 09:07:27'),
	(320,70,'[46, 43, 42, 39, 34, 33, 17, 8]',1,1,'[369]',280.00,3,'2018-09-03 10:57:17','2018090310564804408','','2018-09-03 10:56:48','2018-09-10 11:30:02',0.00,'wechat','[151]','','{"369": "orders/20180903105648TVzCHNGGLSRtsUEW.jpg"}','','2018-09-03 11:14:01','2018-09-10 11:14:01'),
	(321,201,'[46]',1,1,'[370]',35.00,-2,NULL,'2018090313383814080','','2018-09-03 13:38:38','2018-09-04 14:00:01',0.00,'',NULL,'','{"370": "orders/201809031338382jfa9Up55O4a0Ms3.jpg"}','',NULL,NULL),
	(322,46,'[43, 38, 35, 34, 33, 31, 30, 26, 21, 19, 16, 10, 8, 6, 46, 42, 37, 36, 29, 25, 24, 18, 15, 9, 7, 28, 32, 13, 12, 11, 4, 3, 39, 23, 22, 20, 17, 14, 5, 41, 27, 2, 1]',1,1,'[371]',1505.00,3,'2018-09-03 14:51:22','2018090314511598259','','2018-09-03 14:51:15','2018-09-10 15:00:03',1505.00,'balance','[]','','{"371": "orders/20180903145118yhhP6WJYM3zNfyj9.jpg"}','','2018-09-03 14:51:59','2018-09-10 14:51:59'),
	(323,46,'[43, 38, 35, 34, 33, 31, 30, 26, 21, 19, 16, 10, 8, 6, 46, 42, 37, 36, 29, 25, 24, 18, 15, 9, 7, 28, 32, 13, 12, 11, 4, 3, 39, 23, 22, 20, 17, 14, 5, 41, 27, 2, 1]',1,1,'[372]',1505.00,3,'2018-09-03 14:58:33','2018090314582947630','','2018-09-03 14:58:29','2018-09-10 15:00:02',1505.00,'balance','[]','','{"372": "orders/20180903145829cBL1DenRxfnhg9vv.jpg"}','','2018-09-03 14:59:32','2018-09-10 14:59:32'),
	(324,91,'[16, 33, 8]',1,2,'[376]',210.00,-2,'2018-09-04 18:31:27','2018090418311101340','','2018-09-04 18:31:11','2018-09-08 13:00:01',0.00,'wechat','[160]','请勿投放与广告屏所属商户行业类似的广告','{"376": "orders/20180904183113y6F6UcH6kKiNZUur.jpg"}','0',NULL,NULL),
	(325,47,'[46]',1,1,'[229]',35.00,-2,'2018-09-04 23:22:11','2018090423215071398','','2018-09-04 23:21:50','2018-09-08 13:00:01',0.00,'wechat','[139]','请勿投放告屏所属商户相竟争的广告','{"229": "orders/20180904232150gW0Bfui0ielhPjtg.jpg"}','0',NULL,NULL),
	(326,91,'[46, 39, 37, 36, 32, 29, 25, 24]',1,1,'[376]',280.00,3,'2018-09-05 12:02:22','2018090510092588288','','2018-09-05 10:09:25','2018-09-12 12:30:02',280.00,'coin','[]','','{"376": "orders/20180905100927us7kP62Moc17QBaU.jpg"}','','2018-09-05 12:08:05','2018-09-12 12:08:05'),
	(327,47,'[1, 2, 41]',1,1,'[255, 42]',210.00,3,'2018-09-05 11:56:17','2018090511555340210','','2018-09-05 11:55:53','2018-09-12 12:00:01',0.00,'wechat','[135]','','{"42": "orders/20180905115553bdWP4ru95wRkQn5C.jpg", "255": "orders/2018090511555481B5cAVA9t1QaOzA.jpg"}','','2018-09-05 11:56:56','2018-09-12 11:56:56'),
	(329,46,'[2]',1,1,'[119, 316, 349]',105.00,3,'2018-09-05 12:15:04','2018090512144960005','','2018-09-05 12:14:49','2018-09-12 12:30:01',105.00,'balance','[]','','{"119": "orders/20180905121450fyLnQ8GN4D5clUSm.jpg", "316": "orders/20180905121450Ch4Vyi8wIIyrGPMV.jpg", "349": "orders/20180905121450ecFzGQVkfmSGc75i.jpg"}','','2018-09-05 12:15:27','2018-09-12 12:15:27'),
	(330,207,'[41, 2, 1]',1,1,'[386]',105.00,-2,NULL,'2018090610034045214','','2018-09-06 10:03:40','2018-09-07 10:30:01',0.00,'',NULL,'','{"386": "orders/20180906100342I5meUCrsb61EsAxl.jpg"}','',NULL,NULL),
	(331,207,'[41, 2, 1]',1,1,'[386]',105.00,3,'2018-09-06 10:04:26','2018090610040331252','','2018-09-06 10:04:03','2018-09-13 10:30:01',90.00,'coin','[183]','','{"386": "orders/20180906100406lJGmTddSqGVqBpsr.jpg"}','','2018-09-06 10:04:50','2018-09-13 10:04:50'),
	(332,48,'[35]',1,1,'[93]',35.00,-2,NULL,'2018090615380057341','','2018-09-06 15:38:00','2018-09-07 16:00:01',0.00,'',NULL,'','{"93": "orders/20180906153802U6XJvRmZTuDTUEgp.jpg"}','',NULL,NULL),
	(333,125,'[38]',1,1,'[387]',35.00,3,'2018-09-06 16:12:27','2018090616122178642','','2018-09-06 16:12:21','2018-09-13 16:30:01',0.00,'wechat','[175]','','{"387": "orders/20180906161224nkxDN8i4WaZ4tg7q.jpg"}','','2018-09-06 16:19:01','2018-09-13 16:19:01'),
	(334,211,'[2]',1,1,'[388]',35.00,-2,NULL,'2018090710134992613','','2018-09-07 10:13:49','2018-09-08 10:30:01',0.00,'',NULL,'','{"388": "orders/20180907101350qJiwJBbbJqt61A4O.jpg"}','',NULL,NULL),
	(335,211,'[2]',1,1,'[388]',35.00,3,'2018-09-07 10:15:37','2018090710153389733','','2018-09-07 10:15:33','2018-09-14 10:30:02',35.00,'coin','[]','','{"388": "orders/20180907101535gLisx1p27yTVW6YM.jpg"}','','2018-09-07 10:16:06','2018-09-14 10:16:06'),
	(336,69,'[2, 1]',1,1,'[389]',70.00,3,'2018-09-07 14:02:12','2018090714013717722','','2018-09-07 14:01:37','2018-09-14 14:30:01',70.00,'coin','[]','','{"389": "orders/201809071401397dqGnt8yNkWQKZ3H.jpg"}','','2018-09-07 14:04:03','2018-09-14 14:04:03'),
	(337,212,'[2]',1,1,'[393]',35.00,3,'2018-09-07 15:43:01','2018090715424691963','','2018-09-07 15:42:46','2018-09-14 16:00:01',20.00,'coin','[185]','','{"393": "orders/20180907154247BlyOdxo5tdCogVsX.jpg"}','','2018-09-07 15:43:14','2018-09-14 15:43:14'),
	(338,48,'[2]',1,1,'[394]',35.00,3,'2018-09-07 16:29:04','2018090716290020237','','2018-09-07 16:29:00','2018-09-14 16:30:01',35.00,'coin','[]','','{"394": "orders/20180907162900zxYTsnx0P1IVrF7F.jpg"}','','2018-09-07 16:29:35','2018-09-14 16:29:35'),
	(339,47,'[1, 2, 41]',4,1,'[312]',420.00,3,'2018-09-07 16:37:52','2018090716372481037','','2018-09-07 16:37:24','2018-09-14 17:00:01',120.00,'balance','[136]','','{"312": "orders/20180907163725k3ZW5aoKSVcMlRT1.jpg"}','','2018-09-07 16:38:25','2018-09-14 16:38:25'),
	(340,47,'[41]',1,1,'[280]',35.00,3,'2018-09-07 16:57:11','2018090716570528720','','2018-09-07 16:57:05','2018-09-14 17:00:01',35.00,'balance','[]','','{"280": "orders/20180907165705Dhw2GrqSOl93xbUz.jpg"}','','2018-09-07 16:58:09','2018-09-14 16:58:09'),
	(341,76,'[46]',1,1,'[68, 69]',70.00,3,'2018-09-08 10:30:47','2018090810303752815','','2018-09-08 10:30:37','2018-09-15 11:00:02',0.00,'wechat','[154]','','{"68": "orders/20180908103038OG05lqkf4LHA1yKk.jpg", "69": "orders/20180908103038bQkkA2qtUxnk1Syc.jpg"}','','2018-09-08 10:49:39','2018-09-15 10:49:39'),
	(342,76,'[46]',1,1,'[68, 69]',70.00,-2,NULL,'2018090810323839744','','2018-09-08 10:32:38','2018-09-09 11:00:01',0.00,'',NULL,'','{"68": "orders/20180908103238HAr5YrUexOzKK10q.jpg", "69": "orders/20180908103238nAqooK7pLYk1BtHa.jpg"}','',NULL,NULL),
	(343,213,'[41]',1,1,'[395]',35.00,3,'2018-09-08 10:48:28','2018090810482289447','','2018-09-08 10:48:22','2018-09-15 11:00:01',0.00,'wechat','[187]','','{"395": "orders/201809081048243QgBKVrXIHmmeSQx.jpg"}','','2018-09-08 10:48:47','2018-09-15 10:48:47'),
	(344,47,'[46]',1,1,'[229]',35.00,-2,'2018-09-08 15:44:26','2018090815441953444','','2018-09-08 15:44:19','2018-09-09 16:00:01',0.00,'wechat','[138]','不合规','{"229": "orders/20180908154421gz7z0csSCSI9JoFF.jpg"}','0',NULL,NULL),
	(349,53,'[30]',1,1,'[26]',35.00,-2,NULL,'2018090822525580091','','2018-09-08 22:52:55','2018-09-09 23:00:01',0.00,'',NULL,'','{"26": "orders/20180908225256ggdEXyvHBDofNLAV.jpg"}','',NULL,NULL),
	(350,53,'[30, 29]',1,1,'[26]',70.00,-2,NULL,'2018090822554597192','','2018-09-08 22:55:45','2018-09-09 23:00:01',0.00,'',NULL,'','{"26": "orders/20180908225547lIRTfT5w5xNGzkEy.jpg"}','',NULL,NULL),
	(351,46,'[43, 38, 35, 34, 33, 31, 30, 26, 21, 19, 16, 10, 8, 6, 46, 42, 37, 36, 29, 25, 24, 18, 15, 9, 7, 28, 32, 13, 12, 11, 4, 3, 39, 23, 22, 20, 17, 14, 5, 41, 27, 2]',1,1,'[417]',1470.00,3,'2018-09-09 14:40:45','2018090914403881466','','2018-09-09 14:40:38','2018-09-16 15:00:01',1470.00,'balance','[]','','{"417": "orders/20180909144041pfwpU2OefzXURMIP.jpg"}','','2018-09-09 14:41:15','2018-09-16 14:41:15'),
	(352,215,'[46]',1,1,'[418]',35.00,-2,NULL,'2018090915531816859','','2018-09-09 15:53:18','2018-09-10 16:00:01',0.00,'',NULL,'','{"418": "orders/20180909155320ITQ8rZAUXKOH3AfX.jpg"}','',NULL,NULL),
	(353,218,'[39]',1,1,'[419]',35.00,-2,NULL,'2018091014105023085','','2018-09-10 14:10:50','2018-09-11 14:30:01',0.00,'',NULL,'','{"419": "orders/20180910141052O2Y9uaL3Yd63cqAK.jpg"}','',NULL,NULL),
	(354,46,'[43, 38, 35, 34, 33, 31, 30, 26, 21, 19, 16, 10, 8, 6, 46, 42, 37, 36, 29, 25, 24, 18, 15, 9, 7, 28, 32, 13, 12, 11, 4, 3, 39, 23, 22, 20, 17, 14, 5, 41, 27, 2]',1,1,'[421, 420]',2940.00,2,'2018-09-10 15:06:30','2018091015062005536','','2018-09-10 15:06:20','2018-09-10 15:07:00',2940.00,'balance','[]','','{"420": "orders/20180910150620BHB33e2lUwJeAdzu.jpg", "421": "orders/20180910150620xFeDKpcAELktzdjd.jpg"}','','2018-09-10 15:07:00','2018-09-17 15:07:00'),
	(355,46,'[43, 38, 35, 34, 33, 31, 30, 26, 21, 19, 16, 10, 8, 6, 46, 42, 37, 36, 29, 25, 24, 18, 15, 9, 7, 28, 32, 13, 12, 11, 4, 3, 39, 23, 22, 20, 17, 14, 5, 41, 27, 2]',1,1,'[424, 423]',2940.00,2,'2018-09-11 00:16:08','2018091100155909358','','2018-09-11 00:15:59','2018-09-11 00:17:04',2940.00,'balance','[]','','{"423": "orders/20180911001600epULKYDbfoHrzX0M.jpg", "424": "orders/20180911001600ps7R4RvleZMoU70g.jpg"}','','2018-09-11 00:17:04','2018-09-18 00:17:04'),
	(356,46,'[41, 2]',4,1,'[425]',280.00,2,'2018-09-11 11:35:24','2018091111351016331','','2018-09-11 11:35:10','2018-09-11 11:35:36',280.00,'balance','[]','','{"425": "orders/20180911113511ZWfxk7i27kRmjG2e.jpg"}','','2018-09-11 11:35:36','2018-09-18 11:35:36'),
	(357,46,'[46, 43, 42, 39, 37, 36, 32, 29, 28, 27, 25, 24, 23, 22, 20, 18, 17, 15, 14, 13, 12, 11, 9, 7, 5, 4, 3]',4,1,'[425]',3780.00,2,'2018-09-11 11:48:51','2018091111484410425','','2018-09-11 11:48:44','2018-09-11 11:49:13',3780.00,'balance','[]','','{"425": "orders/201809111148455jlZlbEFQHR5t0fu.jpg"}','','2018-09-11 11:49:13','2018-09-18 11:49:13'),
	(358,224,'[41]',1,1,'[426]',35.00,2,'2018-09-11 13:23:38','2018091113231541818','','2018-09-11 13:23:15','2018-09-11 13:28:06',0.00,'wechat','[191]','','{"426": "orders/20180911132317o50SOQAslFwii82y.jpg"}','','2018-09-11 13:28:06','2018-09-18 13:28:06'),
	(359,66,'[46, 42, 33, 29, 27]',2,1,'[132]',350.00,-2,NULL,'2018091120434628657','','2018-09-11 20:43:46','2018-09-12 21:00:01',0.00,'',NULL,'','{"132": "orders/20180911204348t2OagLVu4EYZeKj6.jpg"}','',NULL,NULL),
	(360,66,'[46, 42, 33, 29]',1,2,'[132]',280.00,2,'2018-09-11 20:44:35','2018091120442976437','','2018-09-11 20:44:29','2018-09-12 13:11:57',0.00,'wechat','[150]','','{"132": "orders/20180911204430MAEbvCluHYkWzMPq.jpg"}','','2018-09-12 13:11:57','2018-09-26 13:11:57'),
	(361,48,'[46]',1,1,'[101]',35.00,-2,NULL,'2018091210505927377','','2018-09-12 10:50:59','2018-09-13 11:00:02',0.00,'',NULL,'','{"101": "orders/20180912105100WGCfHBBpLrEyY5SQ.jpg"}','',NULL,NULL),
	(362,110,'[25]',4,1,'[366]',140.00,-2,NULL,'2018091210550980641','','2018-09-12 10:55:09','2018-09-13 11:00:02',0.00,'',NULL,'','{"366": "orders/20180912105509q21XO5anviW3fjhU.jpg"}','',NULL,NULL),
	(363,229,'[46]',1,1,'[432]',35.00,-2,NULL,'2018091211331635289','','2018-09-12 11:33:16','2018-09-13 12:00:01',0.00,'',NULL,'','{"432": "orders/20180912113319cxkH0FJQ9lECGAT7.jpg"}','',NULL,NULL),
	(364,48,'[46]',1,1,'[93]',35.00,-2,NULL,'2018091213041852890','','2018-09-12 13:04:18','2018-09-13 13:30:01',0.00,'',NULL,'','{"93": "orders/201809121304196SYwVW4SKVK2ayCv.jpg"}','',NULL,NULL),
	(365,48,'[46]',1,1,'[93]',35.00,-2,NULL,'2018091213261870434','','2018-09-12 13:26:18','2018-09-13 13:30:01',0.00,'',NULL,'','{"93": "orders/20180912132619bm3WoEdIbcb2CD7X.jpg"}','',NULL,NULL),
	(366,66,'[46, 37, 36, 33]',2,1,'[132]',280.00,-2,NULL,'2018091217201077761','','2018-09-12 17:20:10','2018-09-13 17:30:01',0.00,'',NULL,'','{"132": "orders/20180912172011y2rR4C0BUJqmB1Qb.jpg"}','',NULL,NULL),
	(367,242,'[16]',1,1,'[435]',35.00,2,'2018-09-12 20:10:09','2018091220095241923','','2018-09-12 20:09:52','2018-09-12 20:10:16',0.00,'wechat','[195]','','{"435": "orders/201809122009530B6XB3KOTHnqQQ0q.jpg"}','','2018-09-12 20:10:16','2018-09-19 20:10:16'),
	(368,246,'[2]',1,1,'[469]',35.00,2,'2018-09-13 15:08:24','2018091315082085486','','2018-09-13 15:08:20','2018-09-13 15:08:57',35.00,'coin','[]','','{"469": "orders/20180913150821CntjrIYRPXEOuBxo.jpg"}','','2018-09-13 15:08:57','2018-09-20 15:08:57'),
	(369,246,'[41]',1,1,'[470]',35.00,2,'2018-09-13 15:13:54','2018091315135097390','','2018-09-13 15:13:50','2018-09-13 15:14:08',35.00,'coin','[]','','{"470": "orders/20180913151351P27DxDoP4PHNjNfL.jpg"}','','2018-09-13 15:14:08','2018-09-20 15:14:08'),
	(370,121,'[24, 29, 36, 38, 43, 46]',1,1,'[471]',210.00,2,'2018-09-13 19:50:22','2018091319500758115','','2018-09-13 19:50:07','2018-09-13 20:38:31',0.00,'coin','[174]','','{"471": "orders/20180913195008kI5hXMWvkqI4j6LK.jpg"}','','2018-09-13 20:38:31','2018-09-20 20:38:31'),
	(371,48,'[41]',1,1,'[215]',35.00,2,'2018-09-14 16:35:11','2018091416345416891','','2018-09-14 16:34:54','2018-09-14 16:35:46',35.00,'balance','[]','','{"215": "orders/20180914163457mX1cwB1mOurm9qPz.jpg"}','','2018-09-14 16:35:46','2018-09-21 16:35:46'),
	(372,110,'[46]',1,1,'[366]',35.00,-2,NULL,'2018091510025431024','','2018-09-15 10:02:54','2018-09-16 10:30:01',0.00,'',NULL,'','{"366": "orders/20180915100256MSfmusQf5Mk8IWba.jpg"}','',NULL,NULL),
	(373,46,'[43, 38, 35, 34, 33, 31, 30, 26, 21, 19, 16, 10, 8, 6, 46, 42, 37, 36, 29, 25, 24, 18, 15, 9, 7, 28, 32, 13, 12, 11, 4, 3, 39, 23, 22, 20, 17, 14, 5, 41, 27, 2]',2,1,'[479]',2940.00,2,'2018-09-15 13:55:29','2018091513552310441','','2018-09-15 13:55:23','2018-09-15 13:55:56',2940.00,'balance','[]','','{"479": "orders/201809151355240mWRYvx7p6R0JOVS.jpg"}','','2018-09-15 13:55:56','2018-09-22 13:55:56'),
	(374,110,'[46]',2,1,'[366]',70.00,-2,NULL,'2018091514593352510','','2018-09-15 14:59:33','2018-09-16 15:00:01',0.00,'',NULL,'','{"366": "orders/20180915145936ETwdATfLXi0MN1QL.jpg"}','',NULL,NULL),
	(375,86,'[14, 16, 17, 23, 25, 26, 33, 34, 37]',1,1,'[480]',315.00,2,'2018-09-15 15:34:01','2018091515332592589','','2018-09-15 15:33:25','2018-09-15 16:21:58',15.00,'coin','[157]','','{"480": "orders/20180915153327nfimYkkJHEb3eJN5.jpg"}','','2018-09-15 16:21:58','2018-09-22 16:21:58'),
	(376,86,'[14, 16, 17, 23, 25, 26, 33, 34, 37]',1,1,'[480]',315.00,-2,NULL,'2018091515332691825','','2018-09-15 15:33:26','2018-09-16 16:00:01',0.00,'',NULL,'','{"480": "orders/20180915153327StCaICpDHU6o0m0z.jpg"}','',NULL,NULL),
	(377,86,'[39]',1,1,'[480]',35.00,-2,NULL,'2018091515362815124','','2018-09-15 15:36:28','2018-09-16 16:00:01',0.00,'',NULL,'','{"480": "orders/20180915153630fDfh9DidFxEwHB1P.jpg"}','',NULL,NULL),
	(378,86,'[32]',1,1,'[480]',35.00,2,'2018-09-15 15:37:17','2018091515371004679','','2018-09-15 15:37:10','2018-09-15 16:21:25',0.00,'wechat','[198]','','{"480": "orders/20180915153713yjhbavCuqnYIQsu5.jpg"}','','2018-09-15 16:21:25','2018-09-22 16:21:25'),
	(379,110,'[42]',1,1,'[366]',35.00,-2,NULL,'2018091518033204966','','2018-09-15 18:03:32','2018-09-16 18:30:01',0.00,'',NULL,'','{"366": "orders/20180915180333X1FdAIMyjusrUcAl.jpg"}','',NULL,NULL),
	(380,110,'[46]',1,1,'[366]',35.00,-2,NULL,'2018091518124835377','','2018-09-15 18:12:48','2018-09-16 18:30:01',0.00,'',NULL,'','{"366": "orders/20180915181248fBHT3Mononxm7zRm.jpg"}','',NULL,NULL),
	(381,237,'[18]',1,1,'[462]',35.00,2,'2018-09-15 18:29:10','2018091518285979796','','2018-09-15 18:28:59','2018-09-15 18:29:53',0.00,'wechat','[203]','','{"462": "orders/20180915182901ofq4S6cK1FQGuu4Y.jpg"}','','2018-09-15 18:29:53','2018-09-22 18:29:53'),
	(382,48,'[46, 43, 42, 41, 39, 38, 34]',1,1,'[486]',245.00,2,'2018-09-15 18:35:16','2018091518350961561','','2018-09-15 18:35:09','2018-09-15 18:35:51',245.00,'coin','[]','','{"486": "orders/20180915183510tEK6mDgkljZymvVD.jpg"}','','2018-09-15 18:35:51','2018-09-22 18:35:51'),
	(384,110,'[46]',1,1,'[366]',35.00,0,NULL,'2018091614562699642','','2018-09-16 14:56:26','2018-09-16 14:56:27',0.00,'',NULL,'','{"366": "orders/20180916145627XnGz8t7fttjxn4SE.jpg"}','',NULL,NULL),
	(385,110,'[46]',1,1,'[366]',35.00,0,NULL,'2018091710111154700','','2018-09-17 10:11:11','2018-09-17 10:11:13',0.00,'',NULL,'','{"366": "orders/20180917101113sfsKZkCMXrK50P5G.jpg"}','',NULL,NULL),
	(386,207,'[46, 42, 37, 36, 29, 25, 18, 15, 9, 7, 28]',4,1,'[386]',1540.00,0,NULL,'2018091710195959200','','2018-09-17 10:19:59','2018-09-17 10:20:01',0.00,'',NULL,'','{"386": "orders/20180917102001zREspbFL1lO1A6Xo.jpg"}','',NULL,NULL),
	(387,207,'[46, 42, 37, 36, 29, 25, 18, 15, 9, 7, 28]',4,1,'[386]',1540.00,0,NULL,'2018091710201538545','','2018-09-17 10:20:15','2018-09-17 10:20:17',0.00,'',NULL,'','{"386": "orders/201809171020162IgIkuhecd8aJSwm.jpg"}','',NULL,NULL),
	(388,207,'[46, 42, 37, 36, 29, 25, 18, 15, 9, 7, 28]',1,1,'[386]',385.00,0,NULL,'2018091710233995596','','2018-09-17 10:23:39','2018-09-17 10:23:41',0.00,'',NULL,'','{"386": "orders/20180917102341x8XsU2oM2FaMnKOP.jpg"}','',NULL,NULL),
	(389,207,'[46, 42, 37, 36, 29, 25, 18, 15, 9, 7, 28]',1,1,'[386]',385.00,0,NULL,'2018091710235840449','','2018-09-17 10:23:58','2018-09-17 10:23:59',0.00,'',NULL,'','{"386": "orders/201809171023590LNvZLRknSLoUCY7.jpg"}','',NULL,NULL),
	(390,273,'[41]',1,1,'[526]',35.00,2,'2018-09-17 10:36:17','2018091710361003033','','2018-09-17 10:36:10','2018-09-17 10:37:27',35.00,'coin','[]','','{"526": "orders/201809171036115WTqlfmcfz2xHUWc.jpg"}','','2018-09-17 10:37:27','2018-09-24 10:37:27'),
	(391,53,'[46]',1,1,'[26]',35.00,0,NULL,'2018092610420908211','','2018-09-26 10:42:09','2018-09-26 10:42:09',0.00,'',NULL,'','[]','',NULL,NULL),
	(392,53,'[46]',1,1,'[528]',35.00,0,NULL,'2018092610431627439','','2018-09-26 10:43:16','2018-09-26 10:43:16',0.00,'',NULL,'','{"528": "orders/20180926104316eNFXyqBCJWSzWToP.jpg"}','',NULL,NULL),
	(393,53,'[46, 30]',2,3,'[26]',420.00,0,NULL,'2018100614381257219','','2018-10-06 14:38:12','2018-10-06 14:38:12',0.00,'',NULL,'','[]','',NULL,NULL),
	(394,53,'[46, 30]',2,3,'[529]',420.00,0,NULL,'2018100614390426293','','2018-10-06 14:39:04','2018-10-06 14:39:04',0.00,'',NULL,'','{"529": "orders/20181006143904JqkVDhd5tzootBxm.jpg"}','',NULL,NULL),
	(395,53,'[4, 3, 29, 28, 30, 46]',1,1,'[529]',210.00,1,'2018-10-23 14:30:01','2018102314140505769','','2018-10-23 14:14:05','2018-10-23 14:30:01',175.00,'balance','[101]','','{"529": "orders/20181023141406e9IDH80dMNrU7E7O.jpg"}','',NULL,NULL);

/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table plans
# ------------------------------------------------------------

DROP TABLE IF EXISTS `plans`;

CREATE TABLE `plans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `device_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `plans_user_id_index` (`user_id`),
  KEY `plans_device_id_index` (`device_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `plans` WRITE;
/*!40000 ALTER TABLE `plans` DISABLE KEYS */;

INSERT INTO `plans` (`id`, `user_id`, `device_id`, `created_at`, `updated_at`)
VALUES
	(350,53,4,'2018-08-16 15:42:39','2018-08-16 15:42:39'),
	(351,53,3,'2018-08-16 15:42:40','2018-08-16 15:42:40'),
	(352,56,6,'2018-08-16 16:02:35','2018-08-16 16:02:35'),
	(353,56,5,'2018-08-16 16:02:40','2018-08-16 16:02:40'),
	(365,50,7,'2018-08-16 16:20:06','2018-08-16 16:20:06'),
	(367,58,7,'2018-08-16 16:30:41','2018-08-16 16:30:41'),
	(371,50,9,'2018-08-16 17:07:37','2018-08-16 17:07:37'),
	(372,61,9,'2018-08-16 17:18:19','2018-08-16 17:18:19'),
	(373,61,8,'2018-08-16 17:18:22','2018-08-16 17:18:22'),
	(374,63,9,'2018-08-16 17:35:51','2018-08-16 17:35:51'),
	(375,50,10,'2018-08-16 17:38:58','2018-08-16 17:38:58'),
	(377,50,12,'2018-08-16 18:03:26','2018-08-16 18:03:26'),
	(378,50,13,'2018-08-16 18:28:03','2018-08-16 18:28:03'),
	(382,68,10,'2018-08-16 19:03:14','2018-08-16 19:03:14'),
	(383,68,8,'2018-08-16 19:03:15','2018-08-16 19:03:15'),
	(384,66,14,'2018-08-16 19:03:40','2018-08-16 19:03:40'),
	(385,50,15,'2018-08-16 19:29:03','2018-08-16 19:29:03'),
	(387,50,16,'2018-08-16 20:18:24','2018-08-16 20:18:24'),
	(389,73,17,'2018-08-16 20:58:41','2018-08-16 20:58:41'),
	(390,50,18,'2018-08-16 21:05:40','2018-08-16 21:05:40'),
	(411,76,18,'2018-08-17 10:16:55','2018-08-17 10:16:55'),
	(412,75,18,'2018-08-17 10:16:57','2018-08-17 10:16:57'),
	(416,80,20,'2018-08-17 11:53:38','2018-08-17 11:53:38'),
	(418,84,20,'2018-08-17 12:26:09','2018-08-17 12:26:09'),
	(419,50,21,'2018-08-17 12:31:49','2018-08-17 12:31:49'),
	(421,87,21,'2018-08-17 13:24:49','2018-08-17 13:24:49'),
	(422,50,22,'2018-08-17 13:33:34','2018-08-17 13:33:34'),
	(424,50,24,'2018-08-17 15:18:50','2018-08-17 15:18:50'),
	(425,50,23,'2018-08-17 15:18:52','2018-08-17 15:18:52'),
	(427,89,24,'2018-08-17 15:22:24','2018-08-17 15:22:24'),
	(429,91,22,'2018-08-17 15:52:21','2018-08-17 15:52:21'),
	(430,91,8,'2018-08-17 15:52:35','2018-08-17 15:52:35'),
	(431,91,16,'2018-08-17 15:55:22','2018-08-17 15:55:22'),
	(432,70,8,'2018-08-17 16:04:04','2018-08-17 16:04:04'),
	(434,70,14,'2018-08-17 16:04:20','2018-08-17 16:04:20'),
	(436,70,17,'2018-08-17 16:27:40','2018-08-17 16:27:40'),
	(439,92,25,'2018-08-17 17:32:12','2018-08-17 17:32:12'),
	(441,96,26,'2018-08-17 18:38:47','2018-08-17 18:38:47'),
	(442,50,27,'2018-08-17 20:39:59','2018-08-17 20:39:59'),
	(443,98,27,'2018-08-17 20:40:15','2018-08-17 20:40:15'),
	(444,50,28,'2018-08-17 20:42:34','2018-08-17 20:42:34'),
	(445,99,28,'2018-08-17 20:50:51','2018-08-17 20:50:51'),
	(446,99,27,'2018-08-17 20:50:52','2018-08-17 20:50:52'),
	(447,99,26,'2018-08-17 20:57:50','2018-08-17 20:57:50'),
	(450,50,30,'2018-08-17 21:38:18','2018-08-17 21:38:18'),
	(470,68,30,'2018-08-17 23:39:42','2018-08-17 23:39:42'),
	(471,68,26,'2018-08-17 23:39:43','2018-08-17 23:39:43'),
	(472,68,29,'2018-08-17 23:39:52','2018-08-17 23:39:52'),
	(473,86,30,'2018-08-17 23:39:52','2018-08-17 23:39:52'),
	(474,68,28,'2018-08-17 23:39:53','2018-08-17 23:39:53'),
	(475,68,27,'2018-08-17 23:39:54','2018-08-17 23:39:54'),
	(476,86,28,'2018-08-17 23:39:56','2018-08-17 23:39:56'),
	(477,86,27,'2018-08-17 23:39:57','2018-08-17 23:39:57'),
	(478,86,26,'2018-08-17 23:39:58','2018-08-17 23:39:58'),
	(494,53,29,'2018-08-18 14:38:04','2018-08-18 14:38:04'),
	(499,53,28,'2018-08-18 16:15:16','2018-08-18 16:15:16'),
	(591,50,33,'2018-08-19 12:01:59','2018-08-19 12:01:59'),
	(592,79,33,'2018-08-19 12:16:52','2018-08-19 12:16:52'),
	(593,79,31,'2018-08-19 12:16:52','2018-08-19 12:16:52'),
	(594,79,30,'2018-08-19 12:16:52','2018-08-19 12:16:52'),
	(595,79,26,'2018-08-19 12:16:52','2018-08-19 12:16:52'),
	(596,79,21,'2018-08-19 12:16:52','2018-08-19 12:16:52'),
	(598,79,16,'2018-08-19 12:16:52','2018-08-19 12:16:52'),
	(599,79,10,'2018-08-19 12:16:52','2018-08-19 12:16:52'),
	(600,79,8,'2018-08-19 12:16:52','2018-08-19 12:16:52'),
	(601,79,29,'2018-08-19 12:16:52','2018-08-19 12:16:52'),
	(602,79,25,'2018-08-19 12:16:52','2018-08-19 12:16:52'),
	(603,79,24,'2018-08-19 12:16:52','2018-08-19 12:16:52'),
	(604,79,18,'2018-08-19 12:16:52','2018-08-19 12:16:52'),
	(605,79,15,'2018-08-19 12:16:52','2018-08-19 12:16:52'),
	(606,79,9,'2018-08-19 12:16:52','2018-08-19 12:16:52'),
	(607,79,7,'2018-08-19 12:16:52','2018-08-19 12:16:52'),
	(608,79,6,'2018-08-19 12:16:52','2018-08-19 12:16:52'),
	(609,79,28,'2018-08-19 12:16:52','2018-08-19 12:16:52'),
	(610,79,32,'2018-08-19 12:16:52','2018-08-19 12:16:52'),
	(611,79,13,'2018-08-19 12:16:52','2018-08-19 12:16:52'),
	(612,79,12,'2018-08-19 12:16:52','2018-08-19 12:16:52'),
	(613,79,11,'2018-08-19 12:16:52','2018-08-19 12:16:52'),
	(614,79,4,'2018-08-19 12:16:52','2018-08-19 12:16:52'),
	(615,79,3,'2018-08-19 12:16:52','2018-08-19 12:16:52'),
	(616,79,23,'2018-08-19 12:16:52','2018-08-19 12:16:52'),
	(617,79,22,'2018-08-19 12:16:52','2018-08-19 12:16:52'),
	(618,79,20,'2018-08-19 12:16:52','2018-08-19 12:16:52'),
	(619,79,17,'2018-08-19 12:16:52','2018-08-19 12:16:52'),
	(620,79,14,'2018-08-19 12:16:52','2018-08-19 12:16:52'),
	(621,79,5,'2018-08-19 12:16:52','2018-08-19 12:16:52'),
	(622,79,27,'2018-08-19 12:16:52','2018-08-19 12:16:52'),
	(654,60,32,'2018-08-19 13:25:51','2018-08-19 13:25:51'),
	(655,60,29,'2018-08-19 13:26:12','2018-08-19 13:26:12'),
	(656,60,27,'2018-08-19 13:26:17','2018-08-19 13:26:17'),
	(657,60,25,'2018-08-19 13:26:20','2018-08-19 13:26:20'),
	(658,60,24,'2018-08-19 13:26:23','2018-08-19 13:26:23'),
	(659,60,23,'2018-08-19 13:26:25','2018-08-19 13:26:25'),
	(660,60,22,'2018-08-19 13:26:28','2018-08-19 13:26:28'),
	(661,118,32,'2018-08-19 14:00:26','2018-08-19 14:00:26'),
	(663,114,33,'2018-08-19 14:32:29','2018-08-19 14:32:29'),
	(664,114,32,'2018-08-19 14:32:53','2018-08-19 14:32:53'),
	(665,114,34,'2018-08-19 14:37:22','2018-08-19 14:37:22'),
	(666,114,30,'2018-08-19 14:37:30','2018-08-19 14:37:30'),
	(671,50,35,'2018-08-19 15:33:38','2018-08-19 15:33:38'),
	(673,120,35,'2018-08-19 16:03:50','2018-08-19 16:03:50'),
	(674,120,34,'2018-08-19 16:04:05','2018-08-19 16:04:05'),
	(675,50,36,'2018-08-19 16:13:57','2018-08-19 16:13:57'),
	(680,122,36,'2018-08-19 16:59:38','2018-08-19 16:59:38'),
	(681,122,35,'2018-08-19 16:59:43','2018-08-19 16:59:43'),
	(682,122,34,'2018-08-19 16:59:49','2018-08-19 16:59:49'),
	(683,122,32,'2018-08-19 16:59:58','2018-08-19 16:59:58'),
	(684,122,33,'2018-08-19 17:00:26','2018-08-19 17:00:26'),
	(776,126,38,'2018-08-19 20:15:19','2018-08-19 20:15:19'),
	(777,126,37,'2018-08-19 20:15:21','2018-08-19 20:15:21'),
	(778,126,36,'2018-08-19 20:15:22','2018-08-19 20:15:22'),
	(780,127,38,'2018-08-19 20:35:03','2018-08-19 20:35:03'),
	(781,127,37,'2018-08-19 20:35:06','2018-08-19 20:35:06'),
	(783,53,30,'2018-08-19 21:32:12','2018-08-19 21:32:12'),
	(784,129,39,'2018-08-19 21:53:06','2018-08-19 21:53:06'),
	(785,129,38,'2018-08-19 21:53:07','2018-08-19 21:53:07'),
	(786,129,37,'2018-08-19 21:53:08','2018-08-19 21:53:08'),
	(791,79,38,'2018-08-20 09:44:46','2018-08-20 09:44:46'),
	(792,79,35,'2018-08-20 09:44:46','2018-08-20 09:44:46'),
	(793,79,34,'2018-08-20 09:44:46','2018-08-20 09:44:46'),
	(795,79,37,'2018-08-20 09:44:46','2018-08-20 09:44:46'),
	(796,79,36,'2018-08-20 09:44:46','2018-08-20 09:44:46'),
	(797,79,39,'2018-08-20 09:44:46','2018-08-20 09:44:46'),
	(804,86,25,'2018-08-20 15:32:18','2018-08-20 15:32:18'),
	(806,115,39,'2018-08-20 15:35:12','2018-08-20 15:35:12'),
	(807,115,38,'2018-08-20 15:35:13','2018-08-20 15:35:13'),
	(808,50,19,'2018-08-20 17:03:41','2018-08-20 17:03:41'),
	(810,132,39,'2018-08-20 17:32:59','2018-08-20 17:32:59'),
	(811,132,38,'2018-08-20 17:33:01','2018-08-20 17:33:01'),
	(812,132,37,'2018-08-20 17:33:02','2018-08-20 17:33:02'),
	(813,133,36,'2018-08-20 17:50:45','2018-08-20 17:50:45'),
	(817,135,39,'2018-08-20 18:09:37','2018-08-20 18:09:37'),
	(818,135,38,'2018-08-20 18:09:38','2018-08-20 18:09:38'),
	(819,50,42,'2018-08-20 18:10:05','2018-08-20 18:10:05'),
	(820,135,42,'2018-08-20 18:50:37','2018-08-20 18:50:37'),
	(821,135,26,'2018-08-20 18:52:00','2018-08-20 18:52:00'),
	(822,135,30,'2018-08-20 18:52:03','2018-08-20 18:52:03'),
	(823,135,21,'2018-08-20 18:52:07','2018-08-20 18:52:07'),
	(824,135,16,'2018-08-20 18:52:11','2018-08-20 18:52:11'),
	(825,135,10,'2018-08-20 18:52:14','2018-08-20 18:52:14'),
	(826,135,33,'2018-08-20 18:52:22','2018-08-20 18:52:22'),
	(827,135,31,'2018-08-20 18:52:24','2018-08-20 18:52:24'),
	(828,135,34,'2018-08-20 18:52:28','2018-08-20 18:52:28'),
	(844,115,43,'2018-08-21 15:39:05','2018-08-21 15:39:05'),
	(845,115,37,'2018-08-21 15:44:54','2018-08-21 15:44:54'),
	(846,115,34,'2018-08-21 16:03:34','2018-08-21 16:03:34'),
	(855,60,20,'2018-08-21 21:14:42','2018-08-21 21:14:42'),
	(856,60,36,'2018-08-21 21:15:15','2018-08-21 21:15:15'),
	(858,60,42,'2018-08-21 21:15:30','2018-08-21 21:15:30'),
	(859,60,14,'2018-08-21 21:16:53','2018-08-21 21:16:53'),
	(860,60,11,'2018-08-21 21:17:09','2018-08-21 21:17:09'),
	(861,60,6,'2018-08-21 21:18:05','2018-08-21 21:18:05'),
	(862,60,3,'2018-08-21 21:18:49','2018-08-21 21:18:49'),
	(863,139,38,'2018-08-21 22:15:11','2018-08-21 22:15:11'),
	(872,52,4,'2018-08-22 13:35:26','2018-08-22 13:35:26'),
	(875,141,32,'2018-08-22 14:10:23','2018-08-22 14:10:23'),
	(876,141,43,'2018-08-22 14:10:35','2018-08-22 14:10:35'),
	(877,141,42,'2018-08-22 14:10:38','2018-08-22 14:10:38'),
	(918,50,38,'2018-08-22 16:45:51','2018-08-22 16:45:51'),
	(921,70,34,'2018-08-22 19:08:54','2018-08-22 19:08:54'),
	(943,86,42,'2018-08-23 15:19:00','2018-08-23 15:19:00'),
	(945,86,39,'2018-08-23 15:19:09','2018-08-23 15:19:09'),
	(946,86,37,'2018-08-23 15:19:13','2018-08-23 15:19:13'),
	(947,86,36,'2018-08-23 15:19:16','2018-08-23 15:19:16'),
	(948,86,34,'2018-08-23 15:19:20','2018-08-23 15:19:20'),
	(949,86,33,'2018-08-23 15:19:28','2018-08-23 15:19:28'),
	(950,86,23,'2018-08-23 15:19:58','2018-08-23 15:19:58'),
	(951,86,17,'2018-08-23 15:20:16','2018-08-23 15:20:16'),
	(952,86,16,'2018-08-23 15:20:22','2018-08-23 15:20:22'),
	(953,86,14,'2018-08-23 15:20:31','2018-08-23 15:20:31'),
	(954,129,35,'2018-08-23 20:11:36','2018-08-23 20:11:36'),
	(955,129,34,'2018-08-23 20:11:36','2018-08-23 20:11:36'),
	(956,129,33,'2018-08-23 20:11:36','2018-08-23 20:11:36'),
	(959,121,36,'2018-08-23 20:14:50','2018-08-23 20:14:50'),
	(960,121,29,'2018-08-23 20:15:07','2018-08-23 20:15:07'),
	(961,121,43,'2018-08-24 14:00:23','2018-08-24 14:00:23'),
	(962,121,38,'2018-08-24 14:00:36','2018-08-24 14:00:36'),
	(966,118,42,'2018-08-24 16:53:32','2018-08-24 16:53:32'),
	(968,118,27,'2018-08-24 16:57:31','2018-08-24 16:57:31'),
	(969,118,28,'2018-08-24 16:57:33','2018-08-24 16:57:33'),
	(970,118,14,'2018-08-24 16:57:54','2018-08-24 16:57:54'),
	(971,118,12,'2018-08-24 16:57:57','2018-08-24 16:57:57'),
	(972,118,4,'2018-08-24 16:58:07','2018-08-24 16:58:07'),
	(973,118,3,'2018-08-24 16:58:09','2018-08-24 16:58:09'),
	(974,118,34,'2018-08-24 17:00:29','2018-08-24 17:00:29'),
	(978,156,42,'2018-08-24 23:57:08','2018-08-24 23:57:08'),
	(979,156,32,'2018-08-24 23:57:21','2018-08-24 23:57:21'),
	(982,99,29,'2018-08-25 13:51:55','2018-08-25 13:51:55'),
	(986,161,39,'2018-08-26 01:20:55','2018-08-26 01:20:55'),
	(989,167,43,'2018-08-26 22:24:33','2018-08-26 22:24:33'),
	(990,167,37,'2018-08-26 22:29:02','2018-08-26 22:29:02'),
	(1077,182,46,'2018-08-28 14:38:13','2018-08-28 14:38:13'),
	(1078,182,43,'2018-08-28 14:38:14','2018-08-28 14:38:14'),
	(1079,182,42,'2018-08-29 11:20:04','2018-08-29 11:20:04'),
	(1080,111,43,'2018-08-29 13:24:22','2018-08-29 13:24:22'),
	(1081,46,41,'2018-08-29 14:10:34','2018-08-29 14:10:34'),
	(1082,46,2,'2018-08-29 14:10:45','2018-08-29 14:10:45'),
	(1083,46,1,'2018-08-29 14:10:46','2018-08-29 14:10:46'),
	(1084,53,46,'2018-09-17 17:05:09','2018-09-17 17:05:09');

/*!40000 ALTER TABLE `plans` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table plays
# ------------------------------------------------------------

DROP TABLE IF EXISTS `plays`;

CREATE TABLE `plays` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `file_library_id` int(11) NOT NULL,
  `device_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `price` double(8,2) NOT NULL COMMENT '该单价格',
  `start_at` datetime NOT NULL COMMENT '开始日期',
  `end_at` datetime NOT NULL COMMENT '结算日期',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态:1播放中|2播放完成|-1推送失败',
  `count` int(11) NOT NULL DEFAULT '0' COMMENT '播放次数统计',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `push_state` int(11) NOT NULL DEFAULT '0' COMMENT '推送状态:0推送中|1推送成功|-1推送失败',
  `push_result` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '推送结果说明',
  PRIMARY KEY (`id`),
  KEY `plays_file_library_id_index` (`file_library_id`),
  KEY `plays_device_id_index` (`device_id`),
  KEY `plays_order_id_index` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `plays` WRITE;
/*!40000 ALTER TABLE `plays` DISABLE KEYS */;

INSERT INTO `plays` (`id`, `file_library_id`, `device_id`, `order_id`, `price`, `start_at`, `end_at`, `status`, `count`, `created_at`, `updated_at`, `push_state`, `push_result`)
VALUES
	(376,12,6,4,0.00,'2018-08-16 16:08:48','2018-08-23 16:08:48',2,0,'2018-08-16 16:08:48','2018-08-24 10:41:29',1,''),
	(377,3,1,5,0.00,'2018-08-16 16:15:58','2018-08-23 16:15:58',2,0,'2018-08-16 16:16:01','2018-08-24 10:41:29',1,''),
	(378,4,1,5,0.00,'2018-08-16 16:15:58','2018-08-23 16:15:58',2,0,'2018-08-16 16:16:01','2018-08-24 10:41:29',1,''),
	(379,13,1,5,0.00,'2018-08-16 16:15:58','2018-08-23 16:15:58',2,0,'2018-08-16 16:16:01','2018-08-24 10:41:29',1,''),
	(380,14,7,6,0.00,'2018-08-16 16:24:13','2018-08-23 16:24:13',2,0,'2018-08-16 16:24:13','2018-08-24 10:41:29',1,''),
	(381,16,8,7,0.00,'2018-08-16 17:05:06','2018-08-23 17:05:06',2,0,'2018-08-16 17:05:08','2018-08-24 10:41:29',1,''),
	(382,17,8,7,0.00,'2018-08-16 17:05:06','2018-08-23 17:05:06',2,0,'2018-08-16 17:05:08','2018-08-24 10:41:29',1,''),
	(383,18,4,8,0.00,'2018-08-16 17:08:36','2018-08-23 17:08:36',2,0,'2018-08-16 17:08:39','2018-08-24 10:41:29',1,''),
	(384,19,4,8,0.00,'2018-08-16 17:08:36','2018-08-23 17:08:36',2,0,'2018-08-16 17:08:39','2018-08-24 10:41:29',1,''),
	(385,20,4,8,0.00,'2018-08-16 17:08:36','2018-08-23 17:08:36',2,0,'2018-08-16 17:08:39','2018-08-24 10:41:29',1,''),
	(386,18,3,8,0.00,'2018-08-16 17:08:36','2018-08-23 17:08:36',2,333,'2018-08-16 17:08:39','2018-08-24 10:41:29',1,''),
	(387,19,3,8,0.00,'2018-08-16 17:08:36','2018-08-23 17:08:36',2,330,'2018-08-16 17:08:39','2018-08-24 10:41:29',1,''),
	(388,20,3,8,0.00,'2018-08-16 17:08:36','2018-08-23 17:08:36',2,330,'2018-08-16 17:08:39','2018-08-24 10:41:29',1,''),
	(389,21,9,9,0.00,'2018-08-16 17:09:48','2018-08-23 17:09:48',2,0,'2018-08-16 17:09:48','2018-08-24 10:41:29',1,''),
	(390,27,10,12,0.00,'2018-08-16 17:40:39','2018-08-23 17:40:39',2,0,'2018-08-16 17:40:41','2018-08-24 10:41:29',1,''),
	(391,29,11,14,0.00,'2018-08-16 17:57:15','2018-08-23 17:57:15',2,0,'2018-08-16 17:57:16','2018-08-24 10:41:29',1,''),
	(392,30,11,14,0.00,'2018-08-16 17:57:15','2018-08-23 17:57:15',2,0,'2018-08-16 17:57:16','2018-08-24 10:41:29',1,''),
	(393,31,11,14,0.00,'2018-08-16 17:57:15','2018-08-23 17:57:15',2,0,'2018-08-16 17:57:16','2018-08-24 10:41:29',1,''),
	(394,32,12,15,0.00,'2018-08-16 18:05:25','2018-08-23 18:05:25',2,128,'2018-08-16 18:05:26','2018-08-24 10:41:29',1,''),
	(395,33,13,16,0.00,'2018-08-16 18:29:10','2018-08-23 18:29:10',2,2378,'2018-08-16 18:29:12','2018-09-01 14:25:54',1,''),
	(396,39,14,21,0.00,'2018-08-16 19:01:59','2018-08-23 19:01:59',2,50194,'2018-08-16 19:02:01','2018-09-01 13:42:47',1,''),
	(397,40,14,21,0.00,'2018-08-16 19:01:59','2018-08-23 19:01:59',2,50082,'2018-08-16 19:02:01','2018-09-01 13:42:47',1,''),
	(398,43,15,27,0.00,'2018-08-16 19:33:26','2018-08-23 19:33:26',2,554,'2018-08-16 19:33:29','2018-08-24 10:41:29',1,''),
	(399,9,6,30,0.00,'2018-08-16 20:22:17','2018-08-23 20:22:17',2,0,'2018-08-16 20:22:19','2018-08-24 10:41:29',1,''),
	(400,10,6,30,0.00,'2018-08-16 20:22:17','2018-08-23 20:22:17',2,128,'2018-08-16 20:22:19','2018-08-24 10:41:29',1,''),
	(401,11,6,30,0.00,'2018-08-16 20:22:17','2018-08-23 20:22:17',2,126,'2018-08-16 20:22:19','2018-08-24 10:41:29',1,''),
	(402,48,6,30,0.00,'2018-08-16 20:22:17','2018-08-23 20:22:17',2,542,'2018-08-16 20:22:19','2018-08-24 10:41:29',1,''),
	(403,44,16,29,0.00,'2018-08-16 20:22:46','2018-08-23 20:22:46',2,207,'2018-08-16 20:22:46','2018-08-24 10:41:29',1,''),
	(404,45,16,29,0.00,'2018-08-16 20:22:46','2018-08-23 20:22:46',2,214,'2018-08-16 20:22:46','2018-08-24 10:41:29',1,''),
	(405,47,16,29,0.00,'2018-08-16 20:22:46','2018-08-23 20:22:46',2,87,'2018-08-16 20:22:46','2018-08-24 10:41:29',1,''),
	(406,49,17,31,0.00,'2018-08-16 21:00:46','2018-08-23 21:00:46',2,0,'2018-08-16 21:00:48','2018-08-24 10:41:29',1,''),
	(407,50,17,31,0.00,'2018-08-16 21:00:46','2018-08-23 21:00:46',2,0,'2018-08-16 21:00:48','2018-08-24 10:41:29',1,''),
	(408,51,17,31,0.00,'2018-08-16 21:00:46','2018-08-23 21:00:46',2,0,'2018-08-16 21:00:48','2018-08-24 10:41:29',1,''),
	(409,55,18,33,0.00,'2018-08-16 21:07:26','2018-08-23 21:07:26',2,338,'2018-08-16 21:07:28','2018-08-24 10:41:29',1,''),
	(410,56,18,33,0.00,'2018-08-16 21:07:26','2018-08-23 21:07:26',2,338,'2018-08-16 21:07:28','2018-08-24 10:41:29',1,''),
	(411,57,17,34,0.00,'2018-08-16 21:13:01','2018-08-23 21:13:01',2,0,'2018-08-16 21:13:01','2018-08-24 10:41:29',1,''),
	(412,38,2,37,0.00,'2018-08-16 23:37:02','2018-08-23 23:37:02',2,0,'2018-08-16 23:37:04','2018-08-24 10:41:29',1,''),
	(413,42,2,37,0.00,'2018-08-16 23:37:02','2018-08-23 23:37:02',2,0,'2018-08-16 23:37:04','2018-08-24 10:41:29',1,''),
	(414,38,1,37,0.00,'2018-08-16 23:37:02','2018-08-23 23:37:02',2,0,'2018-08-16 23:37:04','2018-08-24 10:41:29',1,''),
	(415,42,1,37,0.00,'2018-08-16 23:37:02','2018-08-23 23:37:02',2,0,'2018-08-16 23:37:04','2018-08-24 10:41:29',1,''),
	(416,42,18,38,0.00,'2018-08-16 23:39:50','2018-08-23 23:39:50',2,369,'2018-08-16 23:39:52','2018-08-24 10:41:29',1,''),
	(417,60,19,43,0.00,'2018-08-17 11:33:08','2018-08-24 11:33:08',2,0,'2018-08-17 11:33:09','2018-08-24 12:00:01',1,''),
	(418,61,19,43,0.00,'2018-08-17 11:33:08','2018-08-24 11:33:08',2,0,'2018-08-17 11:33:09','2018-08-24 12:00:01',1,''),
	(419,64,20,45,0.00,'2018-08-17 11:58:28','2018-08-24 11:58:28',2,880,'2018-08-17 11:58:29','2018-08-24 12:00:01',1,''),
	(420,65,20,45,0.00,'2018-08-17 11:58:28','2018-08-24 11:58:28',2,881,'2018-08-17 11:58:29','2018-08-24 12:00:01',1,''),
	(421,67,21,47,0.00,'2018-08-17 12:33:39','2018-08-24 12:33:39',2,3416,'2018-08-17 12:33:39','2018-09-01 13:32:03',1,''),
	(424,73,22,51,0.00,'2018-08-17 14:31:16','2018-08-24 14:31:16',2,0,'2018-08-17 14:31:18','2018-08-24 15:00:02',1,''),
	(425,74,22,51,0.00,'2018-08-17 14:31:16','2018-08-24 14:31:16',2,0,'2018-08-17 14:31:18','2018-08-24 15:00:02',1,''),
	(426,75,22,51,0.00,'2018-08-17 14:31:16','2018-08-24 14:31:16',2,0,'2018-08-17 14:31:18','2018-08-24 15:00:02',1,''),
	(427,76,22,51,0.00,'2018-08-17 14:31:16','2018-08-24 14:31:16',2,0,'2018-08-17 14:31:18','2018-08-24 15:00:02',1,''),
	(428,77,22,51,0.00,'2018-08-17 14:31:16','2018-08-24 14:31:16',2,0,'2018-08-17 14:31:18','2018-08-24 15:00:02',1,''),
	(429,78,22,51,0.00,'2018-08-17 14:31:16','2018-08-24 14:31:16',2,0,'2018-08-17 14:31:18','2018-08-24 15:00:02',1,''),
	(430,79,22,51,0.00,'2018-08-17 14:31:16','2018-08-24 14:31:16',2,0,'2018-08-17 14:31:18','2018-08-24 15:00:02',1,''),
	(431,80,22,51,0.00,'2018-08-17 14:31:16','2018-08-24 14:31:16',2,0,'2018-08-17 14:31:18','2018-08-24 15:00:02',1,''),
	(432,81,22,51,0.00,'2018-08-17 14:31:16','2018-08-24 14:31:16',2,0,'2018-08-17 14:31:18','2018-08-24 15:00:02',1,''),
	(433,84,8,56,0.00,'2018-08-17 14:54:44','2018-08-24 14:54:44',2,0,'2018-08-17 14:54:47','2018-08-24 15:00:02',1,''),
	(434,85,23,59,0.00,'2018-08-17 15:20:23','2018-08-24 15:20:23',2,811,'2018-08-17 15:20:26','2018-08-24 15:30:01',1,''),
	(435,86,24,60,0.00,'2018-08-17 15:20:47','2018-08-24 15:20:47',2,280,'2018-08-17 15:20:47','2018-08-24 15:30:01',1,''),
	(436,87,24,60,0.00,'2018-08-17 15:20:47','2018-08-24 15:20:47',2,280,'2018-08-17 15:20:47','2018-08-24 15:30:01',1,''),
	(437,91,14,62,0.00,'2018-08-17 16:32:12','2018-08-24 16:32:12',2,18470,'2018-08-17 16:32:13','2018-09-01 13:42:47',1,''),
	(438,91,8,62,0.00,'2018-08-17 16:32:12','2018-08-24 16:32:12',2,0,'2018-08-17 16:32:13','2018-08-24 17:00:02',1,''),
	(440,93,25,67,0.00,'2018-08-17 17:37:38','2018-08-24 17:37:38',2,0,'2018-08-17 17:37:40','2018-08-24 18:00:02',1,''),
	(441,94,25,67,0.00,'2018-08-17 17:37:38','2018-08-24 17:37:38',2,0,'2018-08-17 17:37:40','2018-08-24 18:00:02',1,''),
	(442,95,25,67,0.00,'2018-08-17 17:37:38','2018-08-24 17:37:38',2,0,'2018-08-17 17:37:40','2018-08-24 18:00:02',1,''),
	(443,96,7,69,0.00,'2018-08-17 17:40:38','2018-08-24 17:40:38',2,0,'2018-08-17 17:40:41','2018-08-24 18:00:02',1,''),
	(447,96,7,70,0.00,'2018-08-17 17:44:49','2018-08-24 17:44:49',2,0,'2018-08-17 17:44:51','2018-08-24 18:00:02',1,''),
	(448,97,7,70,0.00,'2018-08-17 17:44:49','2018-08-24 17:44:49',2,0,'2018-08-17 17:44:51','2018-08-24 18:00:02',1,''),
	(449,98,7,70,0.00,'2018-08-17 17:44:49','2018-08-24 17:44:49',2,0,'2018-08-17 17:44:51','2018-08-24 18:00:02',1,''),
	(450,99,7,70,0.00,'2018-08-17 17:44:49','2018-08-24 17:44:49',2,0,'2018-08-17 17:44:51','2018-08-24 18:00:02',1,''),
	(453,102,26,73,0.00,'2018-08-17 18:52:02','2018-08-24 18:52:02',2,0,'2018-08-17 18:52:04','2018-08-24 19:00:01',1,''),
	(454,104,26,76,0.00,'2018-08-17 20:30:44','2018-08-24 20:30:44',2,0,'2018-08-17 20:30:45','2018-08-24 21:00:01',1,''),
	(455,106,26,76,0.00,'2018-08-17 20:30:44','2018-08-24 20:30:44',2,0,'2018-08-17 20:30:45','2018-08-24 21:00:01',1,''),
	(456,107,26,76,0.00,'2018-08-17 20:30:44','2018-08-24 20:30:44',2,0,'2018-08-17 20:30:45','2018-08-24 21:00:01',1,''),
	(457,108,26,76,0.00,'2018-08-17 20:30:44','2018-08-24 20:30:44',2,0,'2018-08-17 20:30:45','2018-08-24 21:00:01',1,''),
	(458,110,28,78,0.00,'2018-08-17 20:43:59','2018-08-24 20:43:59',2,687,'2018-08-17 20:44:02','2018-08-24 21:00:01',1,''),
	(459,112,30,81,35.00,'2018-08-17 21:39:26','2018-08-24 21:39:26',2,75962,'2018-08-17 21:39:27','2018-08-31 17:29:04',1,''),
	(460,113,30,82,0.00,'2018-08-17 21:40:50','2018-08-24 21:40:50',2,173960,'2018-08-17 21:40:51','2018-09-01 00:00:00',1,''),
	(461,130,2,89,0.00,'2018-08-18 14:08:16','2018-08-25 14:08:16',2,0,'2018-08-18 14:08:17','2018-08-25 14:30:02',1,''),
	(462,131,2,89,0.00,'2018-08-18 14:08:16','2018-08-25 14:08:16',2,0,'2018-08-18 14:08:17','2018-08-25 14:30:02',1,''),
	(463,130,1,89,0.00,'2018-08-18 14:08:16','2018-08-25 14:08:16',2,0,'2018-08-18 14:08:17','2018-08-25 14:30:02',1,''),
	(464,131,1,89,0.00,'2018-08-18 14:08:16','2018-08-25 14:08:16',2,0,'2018-08-18 14:08:17','2018-08-25 14:30:02',1,''),
	(467,132,14,90,0.00,'2018-08-18 14:49:32','2018-09-01 14:49:32',2,17672,'2018-08-18 14:49:33','2018-09-01 15:00:02',1,''),
	(524,43,27,95,0.00,'2018-08-19 10:28:07','2018-08-26 10:28:07',2,0,'2018-08-19 10:28:09','2018-08-26 10:30:02',1,''),
	(525,141,31,100,0.00,'2018-08-19 10:44:58','2018-08-26 10:44:58',2,2392,'2018-08-19 10:45:00','2018-09-01 11:43:29',1,''),
	(526,142,31,100,0.00,'2018-08-19 10:44:58','2018-08-26 10:44:58',2,2175,'2018-08-19 10:45:00','2018-09-01 11:43:29',1,''),
	(527,139,31,99,0.00,'2018-08-19 10:45:11','2018-08-26 10:45:11',2,9524,'2018-08-19 10:45:12','2018-09-01 11:43:29',1,''),
	(528,150,33,102,0.00,'2018-08-19 12:04:05','2018-08-26 12:04:05',2,0,'2018-08-19 12:04:06','2018-08-26 12:30:01',1,''),
	(529,151,33,102,0.00,'2018-08-19 12:04:05','2018-08-26 12:04:05',2,0,'2018-08-19 12:04:06','2018-08-26 12:30:01',1,''),
	(563,158,34,109,0.00,'2018-08-19 14:13:31','2018-08-26 14:13:31',2,150,'2018-08-19 14:13:34','2018-08-27 10:53:20',1,''),
	(564,159,34,109,0.00,'2018-08-19 14:13:31','2018-08-26 14:13:31',2,194,'2018-08-19 14:13:34','2018-08-27 10:53:20',1,''),
	(565,164,35,116,0.00,'2018-08-19 15:36:53','2018-08-26 15:36:53',2,0,'2018-08-19 15:36:55','2018-08-26 16:00:02',1,''),
	(566,167,35,116,0.00,'2018-08-19 15:36:53','2018-08-26 15:36:53',2,0,'2018-08-19 15:36:55','2018-08-26 16:00:02',1,''),
	(567,168,35,116,0.00,'2018-08-19 15:36:53','2018-08-26 15:36:53',2,0,'2018-08-19 15:36:55','2018-08-26 16:00:02',1,''),
	(568,32,27,119,0.00,'2018-08-19 15:40:12','2018-08-26 15:40:12',2,0,'2018-08-19 15:40:12','2018-08-26 16:00:01',1,''),
	(569,33,27,119,0.00,'2018-08-19 15:40:12','2018-08-26 15:40:12',2,0,'2018-08-19 15:40:12','2018-08-26 16:00:01',1,''),
	(570,44,27,119,0.00,'2018-08-19 15:40:12','2018-08-26 15:40:12',2,0,'2018-08-19 15:40:12','2018-08-26 16:00:01',1,''),
	(571,47,27,119,0.00,'2018-08-19 15:40:12','2018-08-26 15:40:12',2,0,'2018-08-19 15:40:12','2018-08-26 16:00:01',1,''),
	(572,55,27,119,0.00,'2018-08-19 15:40:12','2018-08-26 15:40:12',2,0,'2018-08-19 15:40:12','2018-08-26 16:00:01',1,''),
	(573,73,27,119,0.00,'2018-08-19 15:40:12','2018-08-26 15:40:12',2,0,'2018-08-19 15:40:12','2018-08-26 16:00:01',1,''),
	(574,76,27,119,0.00,'2018-08-19 15:40:12','2018-08-26 15:40:12',2,0,'2018-08-19 15:40:12','2018-08-26 16:00:01',1,''),
	(575,85,27,119,0.00,'2018-08-19 15:40:12','2018-08-26 15:40:12',2,0,'2018-08-19 15:40:12','2018-08-26 16:00:01',1,''),
	(576,96,27,119,0.00,'2018-08-19 15:40:12','2018-08-26 15:40:12',2,0,'2018-08-19 15:40:12','2018-08-26 16:00:01',1,''),
	(577,98,27,119,0.00,'2018-08-19 15:40:12','2018-08-26 15:40:12',2,0,'2018-08-19 15:40:12','2018-08-26 16:00:01',1,''),
	(578,99,27,119,0.00,'2018-08-19 15:40:12','2018-08-26 15:40:12',2,0,'2018-08-19 15:40:12','2018-08-26 16:00:01',1,''),
	(579,110,27,119,0.00,'2018-08-19 15:40:12','2018-08-26 15:40:12',2,0,'2018-08-19 15:40:12','2018-08-26 16:00:01',1,''),
	(580,165,31,118,0.00,'2018-08-19 15:43:27','2018-08-26 15:43:27',2,9502,'2018-08-19 15:43:29','2018-09-01 11:43:29',1,''),
	(581,169,31,118,0.00,'2018-08-19 15:43:27','2018-08-26 15:43:27',2,9456,'2018-08-19 15:43:29','2018-09-01 11:43:29',1,''),
	(582,170,27,122,0.00,'2018-08-19 15:47:58','2018-08-26 15:47:58',2,0,'2018-08-19 15:48:00','2018-08-26 16:00:01',1,''),
	(583,170,35,121,0.00,'2018-08-19 15:48:08','2018-08-26 15:48:08',2,0,'2018-08-19 15:48:09','2018-08-26 16:00:01',1,''),
	(584,178,36,124,0.00,'2018-08-19 16:16:44','2018-08-26 16:16:44',2,771,'2018-08-19 16:16:46','2018-08-26 16:30:02',1,''),
	(585,178,27,124,0.00,'2018-08-19 16:16:44','2018-08-26 16:16:44',2,0,'2018-08-19 16:16:46','2018-08-26 16:30:02',1,''),
	(586,179,36,125,35.00,'2018-08-19 16:22:41','2018-08-26 16:22:41',2,763,'2018-08-19 16:22:43','2018-08-26 16:30:02',1,''),
	(587,179,27,125,35.00,'2018-08-19 16:22:41','2018-08-26 16:22:41',2,0,'2018-08-19 16:22:43','2018-08-26 16:30:02',1,''),
	(588,182,32,128,0.00,'2018-08-19 17:20:08','2018-08-26 17:20:08',2,0,'2018-08-19 17:20:10','2018-08-26 17:30:01',1,''),
	(589,183,32,128,0.00,'2018-08-19 17:20:08','2018-08-26 17:20:08',2,0,'2018-08-19 17:20:10','2018-08-26 17:30:01',1,''),
	(590,188,32,128,0.00,'2018-08-19 17:20:08','2018-08-26 17:20:08',2,0,'2018-08-19 17:20:10','2018-08-26 17:30:01',1,''),
	(591,194,32,128,0.00,'2018-08-19 17:20:08','2018-08-26 17:20:08',2,0,'2018-08-19 17:20:10','2018-08-26 17:30:01',1,''),
	(592,201,37,129,0.00,'2018-08-19 17:28:32','2018-08-26 17:28:32',2,32,'2018-08-19 17:28:35','2018-08-26 17:30:01',1,''),
	(593,202,37,129,0.00,'2018-08-19 17:28:32','2018-08-26 17:28:32',2,32,'2018-08-19 17:28:35','2018-08-26 17:30:01',1,''),
	(594,203,37,129,0.00,'2018-08-19 17:28:32','2018-08-26 17:28:32',2,32,'2018-08-19 17:28:35','2018-08-26 17:30:01',1,''),
	(595,208,38,133,0.00,'2018-08-19 18:41:40','2018-08-26 18:41:40',2,0,'2018-08-19 18:41:41','2018-08-26 19:00:02',1,''),
	(596,203,38,134,0.00,'2018-08-19 18:42:50','2018-08-26 18:42:50',2,0,'2018-08-19 18:42:53','2018-08-26 19:00:02',1,''),
	(597,209,38,134,0.00,'2018-08-19 18:42:50','2018-08-26 18:42:50',2,0,'2018-08-19 18:42:53','2018-08-26 19:00:02',1,''),
	(598,209,38,135,35.00,'2018-08-19 18:48:25','2018-08-26 18:48:25',2,0,'2018-08-19 18:48:27','2018-08-26 19:00:02',1,''),
	(599,210,38,135,35.00,'2018-08-19 18:48:25','2018-08-26 18:48:25',2,0,'2018-08-19 18:48:27','2018-08-26 19:00:02',1,''),
	(601,215,39,139,0.00,'2018-08-19 20:28:43','2018-08-26 20:28:43',2,0,'2018-08-19 20:28:44','2018-08-26 20:30:01',1,''),
	(602,216,39,139,0.00,'2018-08-19 20:28:43','2018-08-26 20:28:43',2,0,'2018-08-19 20:28:44','2018-08-26 20:30:01',1,''),
	(603,217,39,139,0.00,'2018-08-19 20:28:43','2018-08-26 20:28:43',2,0,'2018-08-19 20:28:44','2018-08-26 20:30:01',1,''),
	(608,231,40,146,0.00,'2018-08-19 22:20:46','2018-08-26 22:20:46',2,81,'2018-08-19 22:20:48','2018-08-26 22:30:02',1,''),
	(609,231,27,146,0.00,'2018-08-19 22:20:46','2018-08-26 22:20:46',2,0,'2018-08-19 22:20:48','2018-08-26 22:30:02',1,''),
	(611,234,2,155,0.00,'2018-08-20 12:45:13','2018-08-27 12:45:13',2,0,'2018-08-20 12:45:15','2018-08-27 13:00:02',1,''),
	(613,211,41,163,70.00,'2018-08-20 14:21:44','2018-09-03 14:21:44',2,0,'2018-08-20 14:21:47','2018-09-03 14:30:02',1,''),
	(619,236,27,181,35.00,'2018-08-20 17:04:43','2018-08-27 17:04:43',2,0,'2018-08-20 17:04:44','2018-08-27 17:30:02',1,''),
	(620,236,19,181,35.00,'2018-08-20 17:04:43','2018-08-27 17:04:43',2,0,'2018-08-20 17:04:44','2018-08-27 17:30:02',1,''),
	(621,236,27,182,35.00,'2018-08-20 17:14:23','2018-08-27 17:14:23',2,0,'2018-08-20 17:14:24','2018-08-27 17:30:02',1,''),
	(622,236,19,182,35.00,'2018-08-20 17:14:23','2018-08-27 17:14:23',2,0,'2018-08-20 17:14:24','2018-08-27 17:30:02',1,''),
	(623,241,42,184,70.00,'2018-08-20 18:14:10','2018-08-27 18:14:10',2,0,'2018-08-20 18:14:11','2018-08-27 18:30:03',1,''),
	(624,242,42,184,70.00,'2018-08-20 18:14:10','2018-08-27 18:14:10',2,0,'2018-08-20 18:14:11','2018-08-27 18:30:03',1,''),
	(625,243,42,184,70.00,'2018-08-20 18:14:10','2018-08-27 18:14:10',2,0,'2018-08-20 18:14:11','2018-08-27 18:30:03',1,''),
	(626,244,42,186,0.00,'2018-08-20 19:04:01','2018-08-27 19:04:01',2,0,'2018-08-20 19:04:03','2018-08-27 19:30:02',1,''),
	(627,247,42,186,0.00,'2018-08-20 19:04:01','2018-08-27 19:04:01',2,0,'2018-08-20 19:04:04','2018-08-27 19:30:02',1,''),
	(630,248,19,191,70.00,'2018-08-20 21:36:17','2018-08-27 21:36:17',2,0,'2018-08-20 21:36:19','2018-08-27 22:00:02',1,''),
	(631,249,19,191,70.00,'2018-08-20 21:36:17','2018-08-27 21:36:17',2,0,'2018-08-20 21:36:19','2018-08-27 22:00:02',1,''),
	(635,251,42,195,0.00,'2018-08-21 13:23:12','2018-08-28 13:23:12',2,0,'2018-08-21 13:23:15','2018-08-28 13:30:02',1,''),
	(636,251,40,195,0.00,'2018-08-21 13:23:12','2018-08-28 13:23:12',2,0,'2018-08-21 13:23:15','2018-08-28 13:30:02',1,''),
	(637,251,37,195,0.00,'2018-08-21 13:23:12','2018-08-28 13:23:12',2,0,'2018-08-21 13:23:15','2018-08-28 13:30:02',1,''),
	(640,115,44,199,35.00,'2018-08-21 14:50:57','2018-08-28 14:50:57',2,0,'2018-08-21 14:51:00','2018-08-28 15:00:02',1,''),
	(641,152,45,200,20.00,'2018-08-21 15:07:28','2018-08-28 15:07:28',2,0,'2018-08-21 15:07:31','2018-08-28 15:30:02',1,''),
	(646,253,43,208,0.00,'2018-08-21 16:33:08','2018-08-28 16:33:08',2,121,'2018-08-21 16:33:11','2018-08-30 11:38:30',1,''),
	(647,253,40,208,0.00,'2018-08-21 16:33:08','2018-08-28 16:33:08',2,0,'2018-08-21 16:33:11','2018-08-28 17:00:05',1,''),
	(648,253,37,208,0.00,'2018-08-21 16:33:08','2018-08-28 16:33:08',2,0,'2018-08-21 16:33:11','2018-08-28 17:00:05',1,''),
	(649,253,34,208,0.00,'2018-08-21 16:33:08','2018-08-28 16:33:08',2,2058,'2018-08-21 16:33:11','2018-08-29 10:58:18',1,''),
	(650,254,2,209,35.00,'2018-08-21 16:33:40','2018-08-28 16:33:40',2,0,'2018-08-21 16:33:41','2018-08-28 17:00:04',1,''),
	(651,254,1,209,35.00,'2018-08-21 16:33:40','2018-08-28 16:33:40',2,0,'2018-08-21 16:33:41','2018-08-28 17:00:04',1,''),
	(652,255,2,210,35.00,'2018-08-21 16:58:57','2018-08-28 16:58:57',2,0,'2018-08-21 16:58:58','2018-08-28 17:00:04',1,''),
	(653,255,1,210,35.00,'2018-08-21 16:58:57','2018-08-28 16:58:57',2,0,'2018-08-21 16:58:58','2018-08-28 17:00:04',1,''),
	(654,255,2,212,35.00,'2018-08-21 17:15:41','2018-08-28 17:15:41',2,0,'2018-08-21 17:15:43','2018-08-28 17:30:02',1,''),
	(655,255,1,212,35.00,'2018-08-21 17:15:41','2018-08-28 17:15:41',2,0,'2018-08-21 17:15:43','2018-08-28 17:30:02',1,''),
	(657,257,46,215,0.00,'2018-08-21 18:18:02','2018-08-28 18:18:02',2,0,'2018-08-21 18:18:05','2018-08-28 18:30:02',1,''),
	(658,257,2,215,0.00,'2018-08-21 18:18:02','2018-08-28 18:18:02',2,0,'2018-08-21 18:18:05','2018-08-28 18:30:02',1,''),
	(659,257,1,215,0.00,'2018-08-21 18:18:02','2018-08-28 18:18:02',2,0,'2018-08-21 18:18:05','2018-08-28 18:30:02',1,''),
	(660,152,46,213,35.00,'2018-08-21 18:18:11','2018-08-28 18:18:11',2,0,'2018-08-21 18:18:14','2018-08-28 18:30:02',1,''),
	(673,211,2,174,0.00,'2018-08-22 12:57:30','2018-08-29 12:57:30',2,0,'2018-08-22 12:57:31','2018-08-29 13:00:02',1,''),
	(674,265,3,224,0.00,'2018-08-22 14:08:33','2018-08-29 14:08:33',2,0,'2018-08-22 14:08:35','2018-08-29 14:30:02',1,''),
	(675,266,3,224,0.00,'2018-08-22 14:08:33','2018-08-29 14:08:33',2,0,'2018-08-22 14:08:35','2018-08-29 14:30:02',1,''),
	(676,269,3,224,0.00,'2018-08-22 14:08:33','2018-08-29 14:08:33',2,0,'2018-08-22 14:08:35','2018-08-29 14:30:02',1,''),
	(677,270,3,224,0.00,'2018-08-22 14:08:33','2018-08-29 14:08:33',2,0,'2018-08-22 14:08:35','2018-08-29 14:30:02',1,''),
	(680,281,19,229,35.00,'2018-08-22 16:52:30','2018-08-29 16:52:30',2,0,'2018-08-22 16:52:31','2018-08-29 17:00:02',1,''),
	(681,275,4,228,0.00,'2018-08-22 16:53:15','2018-08-29 16:53:15',2,176,'2018-08-22 16:53:16','2018-08-29 17:00:02',1,''),
	(682,276,4,228,0.00,'2018-08-22 16:53:15','2018-08-29 16:53:15',2,156,'2018-08-22 16:53:16','2018-08-29 17:00:02',1,''),
	(683,280,46,230,35.00,'2018-08-22 16:53:34','2018-08-29 16:53:34',2,0,'2018-08-22 16:53:34','2018-08-29 17:00:02',1,''),
	(684,300,46,232,35.00,'2018-08-23 09:30:44','2018-08-30 09:30:44',2,0,'2018-08-23 09:30:48','2018-08-30 10:00:02',1,''),
	(685,300,2,232,35.00,'2018-08-23 09:30:44','2018-08-30 09:30:44',2,0,'2018-08-23 09:30:48','2018-08-30 10:00:02',1,''),
	(686,300,1,232,35.00,'2018-08-23 09:30:44','2018-08-30 09:30:44',2,0,'2018-08-23 09:30:48','2018-08-30 10:00:02',1,''),
	(687,301,2,234,35.00,'2018-08-23 10:56:49','2018-08-30 10:56:49',2,0,'2018-08-23 10:56:49','2018-08-30 11:00:01',1,''),
	(688,301,1,234,35.00,'2018-08-23 10:56:49','2018-08-30 10:56:49',2,0,'2018-08-23 10:56:49','2018-08-30 11:00:01',1,''),
	(689,236,19,236,35.00,'2018-08-23 14:01:58','2018-08-30 14:01:58',2,5838,'2018-08-23 14:02:01','2018-08-30 14:30:02',1,''),
	(690,248,19,236,35.00,'2018-08-23 14:01:58','2018-08-30 14:01:58',2,13818,'2018-08-23 14:02:01','2018-08-30 14:30:02',1,''),
	(691,249,19,236,35.00,'2018-08-23 14:01:58','2018-08-30 14:01:58',2,13804,'2018-08-23 14:02:01','2018-08-30 14:30:02',1,''),
	(692,302,2,237,35.00,'2018-08-23 14:29:17','2018-08-30 14:29:17',2,0,'2018-08-23 14:29:20','2018-08-30 14:30:02',1,''),
	(693,302,1,237,35.00,'2018-08-23 14:29:17','2018-08-30 14:29:17',2,0,'2018-08-23 14:29:20','2018-08-30 14:30:02',1,''),
	(694,303,37,240,35.00,'2018-08-23 15:23:17','2018-08-30 15:23:17',2,788,'2018-08-23 15:23:18','2018-09-01 09:40:29',1,''),
	(695,306,37,241,35.00,'2018-08-23 15:26:33','2018-08-30 15:26:33',2,1216,'2018-08-23 15:26:34','2018-09-01 09:40:29',1,''),
	(696,307,37,242,35.00,'2018-08-23 15:34:16','2018-08-30 15:34:16',2,1204,'2018-08-23 15:34:19','2018-09-01 09:40:29',1,''),
	(697,42,42,244,35.00,'2018-08-23 16:04:27','2018-08-30 16:04:27',2,0,'2018-08-23 16:04:28','2018-08-30 16:30:02',1,''),
	(698,236,12,245,35.00,'2018-08-23 16:09:51','2018-08-30 16:09:51',2,0,'2018-08-23 16:09:52','2018-08-30 16:30:01',1,''),
	(700,220,39,248,0.00,'2018-08-23 22:26:14','2018-08-30 22:26:14',2,0,'2018-08-23 22:26:16','2018-08-30 22:30:02',1,''),
	(701,220,38,248,0.00,'2018-08-23 22:26:14','2018-08-30 22:26:14',2,42,'2018-08-23 22:26:16','2018-08-30 22:30:02',1,''),
	(702,220,37,248,0.00,'2018-08-23 22:26:14','2018-08-30 22:26:14',2,782,'2018-08-23 22:26:17','2018-09-01 09:40:29',1,''),
	(703,220,35,248,0.00,'2018-08-23 22:26:14','2018-08-30 22:26:14',2,0,'2018-08-23 22:26:17','2018-08-30 22:30:02',1,''),
	(704,316,46,251,140.00,'2018-08-24 10:21:14','2018-09-07 10:21:14',2,6,'2018-08-24 10:21:15','2018-09-07 10:30:02',1,''),
	(705,320,46,251,140.00,'2018-08-24 10:21:14','2018-09-07 10:21:14',2,6,'2018-08-24 10:21:15','2018-09-07 10:30:02',1,''),
	(706,323,46,254,20.00,'2018-08-24 15:31:17','2018-08-31 15:31:17',2,0,'2018-08-24 15:31:19','2018-08-31 16:00:01',1,''),
	(707,326,34,257,0.00,'2018-08-24 17:07:55','2018-08-31 17:07:55',2,1116,'2018-08-24 17:07:56','2018-08-31 17:30:01',1,''),
	(708,322,46,255,27.86,'2018-08-24 17:08:34','2018-08-31 17:08:34',2,0,'2018-08-24 17:08:35','2018-08-31 17:30:01',1,''),
	(709,324,46,255,27.86,'2018-08-24 17:08:34','2018-08-31 17:08:34',2,0,'2018-08-24 17:08:35','2018-08-31 17:30:01',1,''),
	(710,325,46,255,27.86,'2018-08-24 17:08:34','2018-08-31 17:08:34',2,0,'2018-08-24 17:08:35','2018-08-31 17:30:01',1,''),
	(711,322,45,255,27.86,'2018-08-24 17:08:34','2018-08-31 17:08:34',2,0,'2018-08-24 17:08:35','2018-08-31 17:30:01',1,''),
	(712,324,45,255,27.86,'2018-08-24 17:08:34','2018-08-31 17:08:34',2,0,'2018-08-24 17:08:35','2018-08-31 17:30:01',1,''),
	(713,325,45,255,27.86,'2018-08-24 17:08:34','2018-08-31 17:08:34',2,0,'2018-08-24 17:08:35','2018-08-31 17:30:01',1,''),
	(714,322,43,255,27.86,'2018-08-24 17:08:34','2018-08-31 17:08:34',2,65,'2018-08-24 17:08:35','2018-08-31 17:30:01',1,''),
	(715,324,43,255,27.86,'2018-08-24 17:08:34','2018-08-31 17:08:34',2,328,'2018-08-24 17:08:35','2018-08-31 17:30:01',1,''),
	(716,325,43,255,27.86,'2018-08-24 17:08:34','2018-08-31 17:08:34',2,327,'2018-08-24 17:08:35','2018-08-31 17:30:01',1,''),
	(717,322,40,255,27.86,'2018-08-24 17:08:34','2018-08-31 17:08:34',2,0,'2018-08-24 17:08:35','2018-08-31 17:30:01',1,''),
	(718,324,40,255,27.86,'2018-08-24 17:08:34','2018-08-31 17:08:34',2,0,'2018-08-24 17:08:35','2018-08-31 17:30:01',1,''),
	(719,325,40,255,27.86,'2018-08-24 17:08:34','2018-08-31 17:08:34',2,0,'2018-08-24 17:08:35','2018-08-31 17:30:01',1,''),
	(720,322,38,255,27.86,'2018-08-24 17:08:34','2018-08-31 17:08:34',2,56,'2018-08-24 17:08:35','2018-08-31 17:30:01',1,''),
	(721,324,38,255,27.86,'2018-08-24 17:08:34','2018-08-31 17:08:34',2,54,'2018-08-24 17:08:35','2018-08-31 17:30:01',1,''),
	(722,325,38,255,27.86,'2018-08-24 17:08:34','2018-08-31 17:08:34',2,52,'2018-08-24 17:08:35','2018-08-31 17:30:01',1,''),
	(723,322,36,255,27.86,'2018-08-24 17:08:34','2018-08-31 17:08:34',2,2360,'2018-08-24 17:08:35','2018-09-01 12:04:15',1,''),
	(724,324,36,255,27.86,'2018-08-24 17:08:34','2018-08-31 17:08:34',2,2334,'2018-08-24 17:08:35','2018-09-01 12:04:15',1,''),
	(725,325,36,255,27.86,'2018-08-24 17:08:34','2018-08-31 17:08:34',2,2332,'2018-08-24 17:08:35','2018-09-01 12:04:15',1,''),
	(726,322,29,255,27.86,'2018-08-24 17:08:34','2018-08-31 17:08:34',2,0,'2018-08-24 17:08:35','2018-08-31 17:30:01',1,''),
	(727,324,29,255,27.86,'2018-08-24 17:08:34','2018-08-31 17:08:34',2,0,'2018-08-24 17:08:35','2018-08-31 17:30:01',1,''),
	(728,325,29,255,27.86,'2018-08-24 17:08:34','2018-08-31 17:08:34',2,0,'2018-08-24 17:08:35','2018-08-31 17:30:01',1,''),
	(729,136,46,260,140.00,'2018-08-24 22:09:04','2018-09-07 22:09:04',2,12,'2018-08-24 22:09:08','2018-09-07 22:30:02',1,''),
	(730,327,46,260,140.00,'2018-08-24 22:09:04','2018-09-07 22:09:04',2,12,'2018-08-24 22:09:08','2018-09-07 22:30:02',1,''),
	(731,136,45,260,140.00,'2018-08-24 22:09:04','2018-09-07 22:09:04',2,0,'2018-08-24 22:09:08','2018-09-07 22:30:02',1,''),
	(732,327,45,260,140.00,'2018-08-24 22:09:04','2018-09-07 22:09:04',2,0,'2018-08-24 22:09:08','2018-09-07 22:30:02',1,''),
	(733,136,2,260,140.00,'2018-08-24 22:09:04','2018-09-07 22:09:04',2,635,'2018-08-24 22:09:08','2018-09-07 22:30:02',1,''),
	(734,327,2,260,140.00,'2018-08-24 22:09:04','2018-09-07 22:09:04',2,865,'2018-08-24 22:09:08','2018-09-07 22:30:02',1,''),
	(735,320,46,263,35.00,'2018-08-25 13:17:20','2018-09-01 13:17:20',2,0,'2018-08-25 13:17:26','2018-09-01 13:30:02',1,''),
	(736,334,46,263,35.00,'2018-08-25 13:17:20','2018-09-01 13:17:20',2,0,'2018-08-25 13:17:26','2018-09-01 13:30:02',1,''),
	(737,320,45,263,35.00,'2018-08-25 13:17:20','2018-09-01 13:17:20',2,0,'2018-08-25 13:17:26','2018-09-01 13:30:02',1,''),
	(738,334,45,263,35.00,'2018-08-25 13:17:20','2018-09-01 13:17:20',2,0,'2018-08-25 13:17:26','2018-09-01 13:30:02',1,''),
	(739,320,43,263,35.00,'2018-08-25 13:17:20','2018-09-01 13:17:20',2,56,'2018-08-25 13:17:26','2018-09-01 13:30:02',1,''),
	(740,334,43,263,35.00,'2018-08-25 13:17:20','2018-09-01 13:17:20',2,57,'2018-08-25 13:17:26','2018-09-01 13:30:02',1,''),
	(741,320,42,263,35.00,'2018-08-25 13:17:20','2018-09-01 13:17:20',2,342,'2018-08-25 13:17:26','2018-09-01 13:30:02',1,''),
	(742,334,42,263,35.00,'2018-08-25 13:17:20','2018-09-01 13:17:20',2,882,'2018-08-25 13:17:26','2018-09-01 13:30:02',1,''),
	(743,320,40,263,35.00,'2018-08-25 13:17:20','2018-09-01 13:17:20',2,0,'2018-08-25 13:17:26','2018-09-01 13:30:02',1,''),
	(744,334,40,263,35.00,'2018-08-25 13:17:20','2018-09-01 13:17:20',2,0,'2018-08-25 13:17:26','2018-09-01 13:30:02',1,''),
	(745,320,39,263,35.00,'2018-08-25 13:17:20','2018-09-01 13:17:20',2,0,'2018-08-25 13:17:26','2018-09-01 13:30:02',1,''),
	(746,334,39,263,35.00,'2018-08-25 13:17:20','2018-09-01 13:17:20',2,0,'2018-08-25 13:17:26','2018-09-01 13:30:02',1,''),
	(747,320,38,263,35.00,'2018-08-25 13:17:20','2018-09-01 13:17:20',2,42,'2018-08-25 13:17:26','2018-09-01 13:30:02',1,''),
	(748,334,38,263,35.00,'2018-08-25 13:17:20','2018-09-01 13:17:20',2,52,'2018-08-25 13:17:26','2018-09-01 13:30:02',1,''),
	(749,320,37,263,35.00,'2018-08-25 13:17:20','2018-09-01 13:17:20',2,780,'2018-08-25 13:17:26','2018-09-01 13:30:02',1,''),
	(750,334,37,263,35.00,'2018-08-25 13:17:20','2018-09-01 13:17:20',2,1194,'2018-08-25 13:17:26','2018-09-01 13:30:02',1,''),
	(751,320,36,263,35.00,'2018-08-25 13:17:20','2018-09-01 13:17:20',2,2087,'2018-08-25 13:17:26','2018-09-01 13:30:02',1,''),
	(752,334,36,263,35.00,'2018-08-25 13:17:20','2018-09-01 13:17:20',2,2978,'2018-08-25 13:17:26','2018-09-01 13:30:02',1,''),
	(753,320,35,263,35.00,'2018-08-25 13:17:20','2018-09-01 13:17:20',2,0,'2018-08-25 13:17:26','2018-09-01 13:30:02',1,''),
	(754,334,35,263,35.00,'2018-08-25 13:17:20','2018-09-01 13:17:20',2,0,'2018-08-25 13:17:26','2018-09-01 13:30:02',1,''),
	(755,320,34,263,35.00,'2018-08-25 13:17:20','2018-09-01 13:17:20',2,1260,'2018-08-25 13:17:26','2018-09-01 13:30:02',1,''),
	(756,334,34,263,35.00,'2018-08-25 13:17:20','2018-09-01 13:17:20',2,1012,'2018-08-25 13:17:26','2018-09-01 13:30:02',1,''),
	(757,320,33,263,35.00,'2018-08-25 13:17:20','2018-09-01 13:17:20',2,708,'2018-08-25 13:17:26','2018-09-01 13:30:02',1,''),
	(758,334,33,263,35.00,'2018-08-25 13:17:20','2018-09-01 13:17:20',2,1346,'2018-08-25 13:17:26','2018-09-01 13:30:02',1,''),
	(760,334,32,263,35.00,'2018-08-25 13:17:20','2018-09-01 13:17:20',2,0,'2018-08-25 13:17:26','2018-09-01 13:30:02',1,''),
	(761,320,31,263,35.00,'2018-08-25 13:17:20','2018-09-01 13:17:20',2,8850,'2018-08-25 13:17:26','2018-09-01 13:30:02',1,''),
	(762,334,31,263,35.00,'2018-08-25 13:17:20','2018-09-01 13:17:20',2,2775,'2018-08-25 13:17:26','2018-09-01 13:30:02',1,''),
	(763,320,30,263,35.00,'2018-08-25 13:17:20','2018-09-01 13:17:20',2,51915,'2018-08-25 13:17:26','2018-09-01 13:30:02',1,''),
	(764,334,30,263,35.00,'2018-08-25 13:17:20','2018-09-01 13:17:20',2,84665,'2018-08-25 13:17:26','2018-09-01 13:30:02',1,''),
	(765,320,29,263,35.00,'2018-08-25 13:17:20','2018-09-01 13:17:20',2,0,'2018-08-25 13:17:26','2018-09-01 13:30:02',1,''),
	(766,334,29,263,35.00,'2018-08-25 13:17:20','2018-09-01 13:17:20',2,0,'2018-08-25 13:17:26','2018-09-01 13:30:02',1,''),
	(767,320,28,263,35.00,'2018-08-25 13:17:20','2018-09-01 13:17:20',2,0,'2018-08-25 13:17:27','2018-09-01 13:30:02',1,''),
	(768,334,28,263,35.00,'2018-08-25 13:17:20','2018-09-01 13:17:20',2,0,'2018-08-25 13:17:27','2018-09-01 13:30:02',1,''),
	(769,320,27,263,35.00,'2018-08-25 13:17:20','2018-09-01 13:17:20',2,0,'2018-08-25 13:17:27','2018-09-01 13:30:02',1,''),
	(770,334,27,263,35.00,'2018-08-25 13:17:20','2018-09-01 13:17:20',2,0,'2018-08-25 13:17:27','2018-09-01 13:30:02',1,''),
	(771,320,26,263,35.00,'2018-08-25 13:17:20','2018-09-01 13:17:20',2,1,'2018-08-25 13:17:28','2018-09-01 13:30:02',1,''),
	(772,334,26,263,35.00,'2018-08-25 13:17:20','2018-09-01 13:17:20',2,1,'2018-08-25 13:17:28','2018-09-01 13:30:02',1,''),
	(773,320,25,263,35.00,'2018-08-25 13:17:20','2018-09-01 13:17:20',2,0,'2018-08-25 13:17:28','2018-09-01 13:30:02',1,''),
	(774,334,25,263,35.00,'2018-08-25 13:17:20','2018-09-01 13:17:20',2,0,'2018-08-25 13:17:28','2018-09-01 13:30:02',1,''),
	(775,320,24,263,35.00,'2018-08-25 13:17:20','2018-09-01 13:17:20',2,0,'2018-08-25 13:17:28','2018-09-01 13:30:02',1,''),
	(776,334,24,263,35.00,'2018-08-25 13:17:20','2018-09-01 13:17:20',2,0,'2018-08-25 13:17:28','2018-09-01 13:30:02',1,''),
	(777,320,23,263,35.00,'2018-08-25 13:17:20','2018-09-01 13:17:20',2,0,'2018-08-25 13:17:29','2018-09-01 13:30:02',1,''),
	(778,334,23,263,35.00,'2018-08-25 13:17:20','2018-09-01 13:17:20',2,0,'2018-08-25 13:17:29','2018-09-01 13:30:02',1,''),
	(779,320,22,263,35.00,'2018-08-25 13:17:20','2018-09-01 13:17:20',2,0,'2018-08-25 13:17:29','2018-09-01 13:30:02',1,''),
	(780,334,22,263,35.00,'2018-08-25 13:17:20','2018-09-01 13:17:20',2,0,'2018-08-25 13:17:29','2018-09-01 13:30:02',1,''),
	(781,320,21,263,35.00,'2018-08-25 13:17:20','2018-09-01 13:17:20',2,0,'2018-08-25 13:17:29','2018-09-01 13:30:02',1,''),
	(782,334,21,263,35.00,'2018-08-25 13:17:20','2018-09-01 13:17:20',2,0,'2018-08-25 13:17:29','2018-09-01 13:30:02',1,''),
	(783,320,20,263,35.00,'2018-08-25 13:17:20','2018-09-01 13:17:20',2,0,'2018-08-25 13:17:29','2018-09-01 13:30:02',1,''),
	(784,334,20,263,35.00,'2018-08-25 13:17:20','2018-09-01 13:17:20',2,0,'2018-08-25 13:17:29','2018-09-01 13:30:02',1,''),
	(785,320,19,263,35.00,'2018-08-25 13:17:20','2018-09-01 13:17:20',2,0,'2018-08-25 13:17:30','2018-09-01 13:30:02',1,''),
	(786,334,19,263,35.00,'2018-08-25 13:17:20','2018-09-01 13:17:20',2,0,'2018-08-25 13:17:30','2018-09-01 13:30:02',1,''),
	(787,320,18,263,35.00,'2018-08-25 13:17:20','2018-09-01 13:17:20',2,779,'2018-08-25 13:17:30','2018-09-01 13:30:02',1,''),
	(788,334,18,263,35.00,'2018-08-25 13:17:20','2018-09-01 13:17:20',2,913,'2018-08-25 13:17:30','2018-09-01 13:30:02',1,''),
	(789,320,17,263,35.00,'2018-08-25 13:17:20','2018-09-01 13:17:20',2,456,'2018-08-25 13:17:30','2018-09-01 13:30:02',1,''),
	(790,334,17,263,35.00,'2018-08-25 13:17:20','2018-09-01 13:17:20',2,1178,'2018-08-25 13:17:30','2018-09-01 13:30:02',1,''),
	(791,320,16,263,35.00,'2018-08-25 13:17:20','2018-09-01 13:17:20',2,0,'2018-08-25 13:17:30','2018-09-01 13:30:02',1,''),
	(792,334,16,263,35.00,'2018-08-25 13:17:20','2018-09-01 13:17:20',2,0,'2018-08-25 13:17:30','2018-09-01 13:30:02',1,''),
	(793,320,15,263,35.00,'2018-08-25 13:17:20','2018-09-01 13:17:20',2,307,'2018-08-25 13:17:30','2018-09-01 13:30:02',1,''),
	(794,334,15,263,35.00,'2018-08-25 13:17:20','2018-09-01 13:17:20',2,962,'2018-08-25 13:17:30','2018-09-01 13:30:02',1,''),
	(795,320,14,263,35.00,'2018-08-25 13:17:20','2018-09-01 13:17:20',2,2,'2018-08-25 13:17:30','2018-09-01 13:30:02',1,''),
	(796,334,14,263,35.00,'2018-08-25 13:17:20','2018-09-01 13:17:20',2,1,'2018-08-25 13:17:30','2018-09-01 13:30:02',1,''),
	(797,320,13,263,35.00,'2018-08-25 13:17:20','2018-09-01 13:17:20',2,2856,'2018-08-25 13:17:30','2018-09-01 14:25:54',1,''),
	(798,334,13,263,35.00,'2018-08-25 13:17:20','2018-09-01 13:17:20',2,34046,'2018-08-25 13:17:30','2018-09-01 14:25:54',1,''),
	(799,320,12,263,35.00,'2018-08-25 13:17:20','2018-09-01 13:17:20',2,0,'2018-08-25 13:17:30','2018-09-01 13:30:02',1,''),
	(800,334,12,263,35.00,'2018-08-25 13:17:20','2018-09-01 13:17:20',2,0,'2018-08-25 13:17:30','2018-09-01 13:30:02',1,''),
	(801,320,11,263,35.00,'2018-08-25 13:17:20','2018-09-01 13:17:20',2,0,'2018-08-25 13:17:30','2018-09-01 13:30:02',1,''),
	(802,334,11,263,35.00,'2018-08-25 13:17:20','2018-09-01 13:17:20',2,0,'2018-08-25 13:17:30','2018-09-01 13:30:02',1,''),
	(803,320,10,263,35.00,'2018-08-25 13:17:20','2018-09-01 13:17:20',2,296,'2018-08-25 13:17:30','2018-09-01 13:30:02',1,''),
	(804,334,10,263,35.00,'2018-08-25 13:17:20','2018-09-01 13:17:20',2,512,'2018-08-25 13:17:30','2018-09-01 13:30:02',1,''),
	(805,320,9,263,35.00,'2018-08-25 13:17:20','2018-09-01 13:17:20',2,199,'2018-08-25 13:17:30','2018-09-01 13:30:02',1,''),
	(806,334,9,263,35.00,'2018-08-25 13:17:20','2018-09-01 13:17:20',2,492,'2018-08-25 13:17:30','2018-09-01 13:30:02',1,''),
	(807,320,8,263,35.00,'2018-08-25 13:17:20','2018-09-01 13:17:20',2,0,'2018-08-25 13:17:31','2018-09-01 13:30:02',1,''),
	(808,334,8,263,35.00,'2018-08-25 13:17:20','2018-09-01 13:17:20',2,0,'2018-08-25 13:17:31','2018-09-01 13:30:02',1,''),
	(809,320,7,263,35.00,'2018-08-25 13:17:20','2018-09-01 13:17:20',2,0,'2018-08-25 13:17:31','2018-09-01 13:30:02',1,''),
	(810,334,7,263,35.00,'2018-08-25 13:17:20','2018-09-01 13:17:20',2,0,'2018-08-25 13:17:31','2018-09-01 13:30:02',1,''),
	(811,320,6,263,35.00,'2018-08-25 13:17:20','2018-09-01 13:17:20',2,0,'2018-08-25 13:17:31','2018-09-01 13:30:02',1,''),
	(812,334,6,263,35.00,'2018-08-25 13:17:20','2018-09-01 13:17:20',2,0,'2018-08-25 13:17:31','2018-09-01 13:30:02',1,''),
	(813,320,5,263,35.00,'2018-08-25 13:17:20','2018-09-01 13:17:20',2,476,'2018-08-25 13:17:32','2018-09-01 13:30:02',1,''),
	(814,334,5,263,35.00,'2018-08-25 13:17:20','2018-09-01 13:17:20',2,1170,'2018-08-25 13:17:32','2018-09-01 13:30:02',1,''),
	(815,320,4,263,35.00,'2018-08-25 13:17:20','2018-09-01 13:17:20',2,298,'2018-08-25 13:17:32','2018-09-01 13:30:02',1,''),
	(816,334,4,263,35.00,'2018-08-25 13:17:20','2018-09-01 13:17:20',2,156,'2018-08-25 13:17:32','2018-09-01 13:30:02',1,''),
	(817,320,3,263,35.00,'2018-08-25 13:17:20','2018-09-01 13:17:20',2,0,'2018-08-25 13:17:34','2018-09-01 13:30:02',1,''),
	(818,334,3,263,35.00,'2018-08-25 13:17:20','2018-09-01 13:17:20',2,0,'2018-08-25 13:17:34','2018-09-01 13:30:02',1,''),
	(819,320,2,263,35.00,'2018-08-25 13:17:20','2018-09-01 13:17:20',2,0,'2018-08-25 13:17:34','2018-09-01 13:30:02',1,''),
	(820,334,2,263,35.00,'2018-08-25 13:17:20','2018-09-01 13:17:20',2,0,'2018-08-25 13:17:34','2018-09-01 13:30:02',1,''),
	(821,335,29,269,0.00,'2018-08-25 14:54:53','2018-09-01 14:54:53',2,0,'2018-08-25 14:54:54','2018-09-01 15:00:02',1,''),
	(822,337,29,269,0.00,'2018-08-25 14:54:53','2018-09-01 14:54:53',2,0,'2018-08-25 14:54:54','2018-09-01 15:00:02',1,''),
	(823,215,39,270,35.00,'2018-08-25 15:39:53','2018-09-01 15:39:53',2,0,'2018-08-25 15:39:53','2018-09-01 16:00:02',1,''),
	(824,164,27,271,35.00,'2018-08-25 16:03:36','2018-09-01 16:03:36',2,0,'2018-08-25 16:03:38','2018-09-01 16:30:01',1,''),
	(825,333,46,273,105.00,'2018-08-25 17:16:47','2018-09-01 17:16:47',2,0,'2018-08-25 17:16:49','2018-09-01 17:30:01',1,''),
	(826,333,45,273,105.00,'2018-08-25 17:16:47','2018-09-01 17:16:47',2,0,'2018-08-25 17:16:49','2018-09-01 17:30:01',1,''),
	(827,333,2,273,105.00,'2018-08-25 17:16:47','2018-09-01 17:16:47',2,0,'2018-08-25 17:16:50','2018-09-01 17:30:01',1,''),
	(828,341,40,274,35.00,'2018-08-25 21:45:24','2018-09-01 21:45:24',2,0,'2018-08-25 21:45:27','2018-09-01 22:00:01',1,''),
	(829,333,46,275,105.00,'2018-08-26 11:30:58','2018-09-02 11:30:58',2,0,'2018-08-26 11:31:03','2018-09-02 12:00:02',1,''),
	(830,333,45,275,105.00,'2018-08-26 11:30:58','2018-09-02 11:30:58',2,0,'2018-08-26 11:31:03','2018-09-02 12:00:02',1,''),
	(831,333,43,275,105.00,'2018-08-26 11:30:58','2018-09-02 11:30:58',2,0,'2018-08-26 11:31:03','2018-09-02 12:00:02',1,''),
	(832,333,42,275,105.00,'2018-08-26 11:30:58','2018-09-02 11:30:58',2,342,'2018-08-26 11:31:03','2018-09-02 12:00:02',1,''),
	(833,333,40,275,105.00,'2018-08-26 11:30:58','2018-09-02 11:30:58',2,0,'2018-08-26 11:31:03','2018-09-02 12:00:02',1,''),
	(834,333,39,275,105.00,'2018-08-26 11:30:58','2018-09-02 11:30:58',2,0,'2018-08-26 11:31:03','2018-09-02 12:00:02',1,''),
	(835,333,38,275,105.00,'2018-08-26 11:30:58','2018-09-02 11:30:58',2,40,'2018-08-26 11:31:03','2018-09-02 12:00:02',1,''),
	(836,333,37,275,105.00,'2018-08-26 11:30:58','2018-09-02 11:30:58',2,776,'2018-08-26 11:31:03','2018-09-02 12:00:02',1,''),
	(837,333,36,275,105.00,'2018-08-26 11:30:58','2018-09-02 11:30:58',2,2089,'2018-08-26 11:31:03','2018-09-02 12:00:02',1,''),
	(838,333,35,275,105.00,'2018-08-26 11:30:58','2018-09-02 11:30:58',2,0,'2018-08-26 11:31:03','2018-09-02 12:00:02',1,''),
	(839,333,34,275,105.00,'2018-08-26 11:30:58','2018-09-02 11:30:58',2,1176,'2018-08-26 11:31:03','2018-09-02 12:00:02',1,''),
	(840,333,33,275,105.00,'2018-08-26 11:30:58','2018-09-02 11:30:58',2,708,'2018-08-26 11:31:03','2018-09-02 12:00:02',1,''),
	(841,333,32,275,105.00,'2018-08-26 11:30:58','2018-09-02 11:30:58',2,0,'2018-08-26 11:31:03','2018-09-02 12:00:02',1,''),
	(842,333,31,275,105.00,'2018-08-26 11:30:58','2018-09-02 11:30:58',2,468,'2018-08-26 11:31:03','2018-09-02 12:00:02',1,''),
	(843,333,30,275,105.00,'2018-08-26 11:30:58','2018-09-02 11:30:58',2,7251,'2018-08-26 11:31:03','2018-09-02 12:00:02',1,''),
	(844,333,29,275,105.00,'2018-08-26 11:30:58','2018-09-02 11:30:58',2,0,'2018-08-26 11:31:03','2018-09-02 12:00:02',1,''),
	(845,333,28,275,105.00,'2018-08-26 11:30:58','2018-09-02 11:30:58',2,0,'2018-08-26 11:31:03','2018-09-02 12:00:02',1,''),
	(846,333,27,275,105.00,'2018-08-26 11:30:58','2018-09-02 11:30:58',2,0,'2018-08-26 11:31:03','2018-09-02 12:00:02',1,''),
	(847,333,26,275,105.00,'2018-08-26 11:30:58','2018-09-02 11:30:58',2,0,'2018-08-26 11:31:03','2018-09-02 12:00:02',1,''),
	(848,333,25,275,105.00,'2018-08-26 11:30:58','2018-09-02 11:30:58',2,0,'2018-08-26 11:31:03','2018-09-02 12:00:02',1,''),
	(849,333,24,275,105.00,'2018-08-26 11:30:58','2018-09-02 11:30:58',2,0,'2018-08-26 11:31:03','2018-09-02 12:00:02',1,''),
	(850,333,23,275,105.00,'2018-08-26 11:30:58','2018-09-02 11:30:58',2,0,'2018-08-26 11:31:03','2018-09-02 12:00:02',1,''),
	(851,333,22,275,105.00,'2018-08-26 11:30:58','2018-09-02 11:30:58',2,0,'2018-08-26 11:31:04','2018-09-02 12:00:02',1,''),
	(852,333,21,275,105.00,'2018-08-26 11:30:58','2018-09-02 11:30:58',2,0,'2018-08-26 11:31:05','2018-09-02 12:00:02',1,''),
	(853,333,20,275,105.00,'2018-08-26 11:30:58','2018-09-02 11:30:58',2,0,'2018-08-26 11:31:05','2018-09-02 12:00:02',1,''),
	(854,333,19,275,105.00,'2018-08-26 11:30:58','2018-09-02 11:30:58',2,0,'2018-08-26 11:31:06','2018-09-02 12:00:02',1,''),
	(855,333,18,275,105.00,'2018-08-26 11:30:58','2018-09-02 11:30:58',2,455,'2018-08-26 11:31:06','2018-09-02 12:00:02',1,''),
	(856,333,17,275,105.00,'2018-08-26 11:30:58','2018-09-02 11:30:58',2,456,'2018-08-26 11:31:06','2018-09-02 12:00:02',1,''),
	(857,333,16,275,105.00,'2018-08-26 11:30:58','2018-09-02 11:30:58',2,0,'2018-08-26 11:31:06','2018-09-02 12:00:02',1,''),
	(858,333,15,275,105.00,'2018-08-26 11:30:58','2018-09-02 11:30:58',2,307,'2018-08-26 11:31:06','2018-09-02 12:00:02',1,''),
	(859,333,14,275,105.00,'2018-08-26 11:30:58','2018-09-02 11:30:58',2,0,'2018-08-26 11:31:06','2018-09-02 12:00:02',1,''),
	(860,333,13,275,105.00,'2018-08-26 11:30:58','2018-09-02 11:30:58',2,2817,'2018-08-26 11:31:07','2018-09-02 12:00:02',1,''),
	(861,333,12,275,105.00,'2018-08-26 11:30:58','2018-09-02 11:30:58',2,0,'2018-08-26 11:31:07','2018-09-02 12:00:02',1,''),
	(862,333,11,275,105.00,'2018-08-26 11:30:58','2018-09-02 11:30:58',2,0,'2018-08-26 11:31:07','2018-09-02 12:00:02',1,''),
	(863,333,10,275,105.00,'2018-08-26 11:30:58','2018-09-02 11:30:58',2,143,'2018-08-26 11:31:07','2018-09-02 12:00:02',1,''),
	(864,333,9,275,105.00,'2018-08-26 11:30:58','2018-09-02 11:30:58',2,191,'2018-08-26 11:31:07','2018-09-02 12:00:02',1,''),
	(865,333,8,275,105.00,'2018-08-26 11:30:58','2018-09-02 11:30:58',2,0,'2018-08-26 11:31:07','2018-09-02 12:00:02',1,''),
	(866,333,7,275,105.00,'2018-08-26 11:30:58','2018-09-02 11:30:58',2,0,'2018-08-26 11:31:07','2018-09-02 12:00:02',1,''),
	(867,333,6,275,105.00,'2018-08-26 11:30:58','2018-09-02 11:30:58',2,0,'2018-08-26 11:31:07','2018-09-02 12:00:02',1,''),
	(868,333,5,275,105.00,'2018-08-26 11:30:58','2018-09-02 11:30:58',2,476,'2018-08-26 11:31:07','2018-09-02 12:00:02',1,''),
	(869,333,4,275,105.00,'2018-08-26 11:30:58','2018-09-02 11:30:58',2,136,'2018-08-26 11:31:08','2018-09-02 12:00:02',1,''),
	(870,333,3,275,105.00,'2018-08-26 11:30:58','2018-09-02 11:30:58',2,0,'2018-08-26 11:31:08','2018-09-02 12:00:02',1,''),
	(871,333,2,275,105.00,'2018-08-26 11:30:58','2018-09-02 11:30:58',2,0,'2018-08-26 11:31:08','2018-09-02 12:00:02',1,''),
	(872,333,1,275,105.00,'2018-08-26 11:30:58','2018-09-02 11:30:58',2,0,'2018-08-26 11:31:09','2018-09-02 12:00:02',1,''),
	(873,32,46,276,35.00,'2018-08-26 15:45:55','2018-09-02 15:45:55',2,0,'2018-08-26 15:45:57','2018-09-02 16:00:03',1,''),
	(874,236,46,277,35.00,'2018-08-26 15:48:25','2018-09-02 15:48:25',2,0,'2018-08-26 15:48:29','2018-09-02 16:00:03',1,''),
	(875,343,43,278,35.00,'2018-08-27 10:15:55','2018-09-03 10:15:55',2,0,'2018-08-27 10:16:07','2018-09-03 10:30:02',1,''),
	(876,343,42,278,35.00,'2018-08-27 10:15:55','2018-09-03 10:15:55',2,336,'2018-08-27 10:16:07','2018-09-03 10:30:02',1,''),
	(877,343,40,278,35.00,'2018-08-27 10:15:55','2018-09-03 10:15:55',2,0,'2018-08-27 10:16:07','2018-09-03 10:30:02',1,''),
	(878,343,39,278,35.00,'2018-08-27 10:15:55','2018-09-03 10:15:55',2,0,'2018-08-27 10:16:07','2018-09-03 10:30:02',1,''),
	(879,343,38,278,35.00,'2018-08-27 10:15:55','2018-09-03 10:15:55',2,38,'2018-08-27 10:16:07','2018-09-03 10:30:02',1,''),
	(880,343,37,278,35.00,'2018-08-27 10:15:55','2018-09-03 10:15:55',2,752,'2018-08-27 10:16:07','2018-09-03 10:30:02',1,''),
	(881,343,36,278,35.00,'2018-08-27 10:15:55','2018-09-03 10:15:55',2,2070,'2018-08-27 10:16:07','2018-09-03 10:30:02',1,''),
	(882,343,35,278,35.00,'2018-08-27 10:15:55','2018-09-03 10:15:55',2,0,'2018-08-27 10:16:07','2018-09-03 10:30:02',1,''),
	(883,343,34,278,35.00,'2018-08-27 10:15:55','2018-09-03 10:15:55',2,840,'2018-08-27 10:16:07','2018-09-03 10:30:02',1,''),
	(884,343,33,278,35.00,'2018-08-27 10:15:55','2018-09-03 10:15:55',2,692,'2018-08-27 10:16:07','2018-09-03 10:30:02',1,''),
	(885,343,32,278,35.00,'2018-08-27 10:15:55','2018-09-03 10:15:55',2,0,'2018-08-27 10:16:07','2018-09-03 10:30:02',1,''),
	(886,343,31,278,35.00,'2018-08-27 10:15:55','2018-09-03 10:15:55',2,343,'2018-08-27 10:16:07','2018-09-03 10:30:02',1,''),
	(887,343,30,278,35.00,'2018-08-27 10:15:55','2018-09-03 10:15:55',2,4123,'2018-08-27 10:16:07','2018-09-03 10:30:02',1,''),
	(888,343,29,278,35.00,'2018-08-27 10:15:55','2018-09-03 10:15:55',2,0,'2018-08-27 10:16:07','2018-09-03 10:30:02',1,''),
	(889,343,28,278,35.00,'2018-08-27 10:15:55','2018-09-03 10:15:55',2,0,'2018-08-27 10:16:07','2018-09-03 10:30:02',1,''),
	(890,343,27,278,35.00,'2018-08-27 10:15:55','2018-09-03 10:15:55',2,0,'2018-08-27 10:16:08','2018-09-03 10:30:02',1,''),
	(891,343,26,278,35.00,'2018-08-27 10:15:55','2018-09-03 10:15:55',2,0,'2018-08-27 10:16:08','2018-09-03 10:30:02',1,''),
	(892,343,25,278,35.00,'2018-08-27 10:15:55','2018-09-03 10:15:55',2,0,'2018-08-27 10:16:08','2018-09-03 10:30:02',1,''),
	(893,343,24,278,35.00,'2018-08-27 10:15:55','2018-09-03 10:15:55',2,0,'2018-08-27 10:16:08','2018-09-03 10:30:02',1,''),
	(894,343,23,278,35.00,'2018-08-27 10:15:55','2018-09-03 10:15:55',2,0,'2018-08-27 10:16:08','2018-09-03 10:30:02',1,''),
	(895,343,22,278,35.00,'2018-08-27 10:15:55','2018-09-03 10:15:55',2,0,'2018-08-27 10:16:08','2018-09-03 10:30:02',1,''),
	(896,343,21,278,35.00,'2018-08-27 10:15:55','2018-09-03 10:15:55',2,0,'2018-08-27 10:16:09','2018-09-03 10:30:02',1,''),
	(897,343,20,278,35.00,'2018-08-27 10:15:55','2018-09-03 10:15:55',2,0,'2018-08-27 10:16:09','2018-09-03 10:30:02',1,''),
	(898,343,19,278,35.00,'2018-08-27 10:15:55','2018-09-03 10:15:55',2,0,'2018-08-27 10:16:09','2018-09-03 10:30:02',1,''),
	(899,343,18,278,35.00,'2018-08-27 10:15:55','2018-09-03 10:15:55',2,294,'2018-08-27 10:16:09','2018-09-03 10:30:02',1,''),
	(900,343,17,278,35.00,'2018-08-27 10:15:55','2018-09-03 10:15:55',2,166,'2018-08-27 10:16:09','2018-09-03 10:30:02',1,''),
	(901,343,16,278,35.00,'2018-08-27 10:15:55','2018-09-03 10:15:55',2,0,'2018-08-27 10:16:10','2018-09-03 10:30:02',1,''),
	(902,343,15,278,35.00,'2018-08-27 10:15:55','2018-09-03 10:15:55',2,303,'2018-08-27 10:16:10','2018-09-03 10:30:02',1,''),
	(903,343,14,278,35.00,'2018-08-27 10:15:55','2018-09-03 10:15:55',2,0,'2018-08-27 10:16:10','2018-09-03 10:30:02',1,''),
	(904,343,13,278,35.00,'2018-08-27 10:15:55','2018-09-03 10:15:55',2,2452,'2018-08-27 10:16:10','2018-09-03 10:30:02',1,''),
	(905,343,12,278,35.00,'2018-08-27 10:15:55','2018-09-03 10:15:55',2,0,'2018-08-27 10:16:11','2018-09-03 10:30:02',1,''),
	(906,343,11,278,35.00,'2018-08-27 10:15:55','2018-09-03 10:15:55',2,0,'2018-08-27 10:16:11','2018-09-03 10:30:02',1,''),
	(907,343,10,278,35.00,'2018-08-27 10:15:55','2018-09-03 10:15:55',2,142,'2018-08-27 10:16:11','2018-09-03 10:30:02',1,''),
	(908,343,9,278,35.00,'2018-08-27 10:15:55','2018-09-03 10:15:55',2,185,'2018-08-27 10:16:11','2018-09-03 10:30:02',1,''),
	(909,343,8,278,35.00,'2018-08-27 10:15:55','2018-09-03 10:15:55',2,0,'2018-08-27 10:16:11','2018-09-03 10:30:02',1,''),
	(910,343,7,278,35.00,'2018-08-27 10:15:55','2018-09-03 10:15:55',2,0,'2018-08-27 10:16:11','2018-09-03 10:30:02',1,''),
	(911,343,6,278,35.00,'2018-08-27 10:15:55','2018-09-03 10:15:55',2,0,'2018-08-27 10:16:11','2018-09-03 10:30:02',1,''),
	(912,343,5,278,35.00,'2018-08-27 10:15:55','2018-09-03 10:15:55',2,0,'2018-08-27 10:16:11','2018-09-03 10:30:02',1,''),
	(913,343,4,278,35.00,'2018-08-27 10:15:55','2018-09-03 10:15:55',2,0,'2018-08-27 10:16:11','2018-09-03 10:30:02',1,''),
	(914,343,3,278,35.00,'2018-08-27 10:15:55','2018-09-03 10:15:55',2,0,'2018-08-27 10:16:11','2018-09-03 10:30:02',1,''),
	(915,343,2,278,35.00,'2018-08-27 10:15:55','2018-09-03 10:15:55',2,0,'2018-08-27 10:16:11','2018-09-03 10:30:02',1,''),
	(916,343,1,278,35.00,'2018-08-27 10:15:55','2018-09-03 10:15:55',2,0,'2018-08-27 10:16:12','2018-09-03 10:30:02',1,''),
	(917,334,41,280,35.00,'2018-08-28 10:51:41','2018-09-04 10:51:41',2,885,'2018-08-28 10:51:44','2018-09-04 11:00:02',1,''),
	(918,349,46,282,35.00,'2018-08-28 13:46:45','2018-09-04 13:46:45',2,0,'2018-08-28 13:46:56','2018-09-04 14:00:03',1,''),
	(919,349,43,282,35.00,'2018-08-28 13:46:45','2018-09-04 13:46:45',2,0,'2018-08-28 13:46:56','2018-09-04 14:00:03',1,''),
	(920,349,42,282,35.00,'2018-08-28 13:46:45','2018-09-04 13:46:45',2,336,'2018-08-28 13:46:56','2018-09-04 14:00:03',1,''),
	(921,349,41,282,35.00,'2018-08-28 13:46:45','2018-09-04 13:46:45',2,188,'2018-08-28 13:46:56','2018-09-04 14:00:03',1,''),
	(922,349,39,282,35.00,'2018-08-28 13:46:45','2018-09-04 13:46:45',2,0,'2018-08-28 13:46:56','2018-09-04 14:00:03',1,''),
	(923,349,38,282,35.00,'2018-08-28 13:46:45','2018-09-04 13:46:45',2,38,'2018-08-28 13:46:56','2018-09-04 14:00:03',1,''),
	(924,349,37,282,35.00,'2018-08-28 13:46:45','2018-09-04 13:46:45',2,526,'2018-08-28 13:46:56','2018-09-04 14:00:03',1,''),
	(925,349,36,282,35.00,'2018-08-28 13:46:45','2018-09-04 13:46:45',2,2068,'2018-08-28 13:46:56','2018-09-04 14:00:03',1,''),
	(926,349,35,282,35.00,'2018-08-28 13:46:45','2018-09-04 13:46:45',2,0,'2018-08-28 13:46:56','2018-09-04 14:00:03',1,''),
	(927,349,34,282,35.00,'2018-08-28 13:46:45','2018-09-04 13:46:45',2,296,'2018-08-28 13:46:56','2018-09-04 14:00:03',1,''),
	(928,349,33,282,35.00,'2018-08-28 13:46:45','2018-09-04 13:46:45',2,692,'2018-08-28 13:46:56','2018-09-04 14:00:03',1,''),
	(929,349,32,282,35.00,'2018-08-28 13:46:45','2018-09-04 13:46:45',2,0,'2018-08-28 13:46:56','2018-09-04 14:00:03',1,''),
	(930,349,31,282,35.00,'2018-08-28 13:46:45','2018-09-04 13:46:45',2,318,'2018-08-28 13:46:56','2018-09-04 14:00:03',1,''),
	(931,349,30,282,35.00,'2018-08-28 13:46:45','2018-09-04 13:46:45',2,2657,'2018-08-28 13:46:56','2018-09-04 14:00:03',1,''),
	(932,349,29,282,35.00,'2018-08-28 13:46:45','2018-09-04 13:46:45',2,0,'2018-08-28 13:46:56','2018-09-04 14:00:03',1,''),
	(933,349,28,282,35.00,'2018-08-28 13:46:45','2018-09-04 13:46:45',2,0,'2018-08-28 13:46:56','2018-09-04 14:00:03',1,''),
	(934,349,27,282,35.00,'2018-08-28 13:46:45','2018-09-04 13:46:45',2,0,'2018-08-28 13:46:57','2018-09-04 14:00:03',1,''),
	(935,349,26,282,35.00,'2018-08-28 13:46:45','2018-09-04 13:46:45',2,0,'2018-08-28 13:46:57','2018-09-04 14:00:03',1,''),
	(936,349,25,282,35.00,'2018-08-28 13:46:45','2018-09-04 13:46:45',2,0,'2018-08-28 13:46:58','2018-09-04 14:00:03',1,''),
	(937,349,24,282,35.00,'2018-08-28 13:46:45','2018-09-04 13:46:45',2,0,'2018-08-28 13:46:58','2018-09-04 14:00:03',1,''),
	(938,349,23,282,35.00,'2018-08-28 13:46:45','2018-09-04 13:46:45',2,0,'2018-08-28 13:46:58','2018-09-04 14:00:03',1,''),
	(939,349,22,282,35.00,'2018-08-28 13:46:45','2018-09-04 13:46:45',2,0,'2018-08-28 13:46:58','2018-09-04 14:00:03',1,''),
	(940,349,21,282,35.00,'2018-08-28 13:46:45','2018-09-04 13:46:45',2,0,'2018-08-28 13:46:58','2018-09-04 14:00:03',1,''),
	(941,349,20,282,35.00,'2018-08-28 13:46:45','2018-09-04 13:46:45',2,0,'2018-08-28 13:46:58','2018-09-04 14:00:03',1,''),
	(942,349,19,282,35.00,'2018-08-28 13:46:45','2018-09-04 13:46:45',2,0,'2018-08-28 13:46:58','2018-09-04 14:00:03',1,''),
	(943,349,18,282,35.00,'2018-08-28 13:46:45','2018-09-04 13:46:45',2,0,'2018-08-28 13:46:58','2018-09-04 14:00:03',1,''),
	(944,349,17,282,35.00,'2018-08-28 13:46:45','2018-09-04 13:46:45',2,166,'2018-08-28 13:46:58','2018-09-04 14:00:03',1,''),
	(945,349,16,282,35.00,'2018-08-28 13:46:45','2018-09-04 13:46:45',2,0,'2018-08-28 13:46:58','2018-09-04 14:00:03',1,''),
	(946,349,15,282,35.00,'2018-08-28 13:46:45','2018-09-04 13:46:45',2,303,'2018-08-28 13:46:58','2018-09-04 14:00:03',1,''),
	(947,349,14,282,35.00,'2018-08-28 13:46:45','2018-09-04 13:46:45',2,0,'2018-08-28 13:46:58','2018-09-04 14:00:03',1,''),
	(948,349,13,282,35.00,'2018-08-28 13:46:45','2018-09-04 13:46:45',2,2452,'2018-08-28 13:46:58','2018-09-04 14:00:03',1,''),
	(949,349,12,282,35.00,'2018-08-28 13:46:45','2018-09-04 13:46:45',2,0,'2018-08-28 13:46:58','2018-09-04 14:00:03',1,''),
	(950,349,11,282,35.00,'2018-08-28 13:46:45','2018-09-04 13:46:45',2,0,'2018-08-28 13:46:58','2018-09-04 14:00:03',1,''),
	(951,349,10,282,35.00,'2018-08-28 13:46:45','2018-09-04 13:46:45',2,142,'2018-08-28 13:46:58','2018-09-04 14:00:03',1,''),
	(952,349,9,282,35.00,'2018-08-28 13:46:45','2018-09-04 13:46:45',2,185,'2018-08-28 13:46:58','2018-09-04 14:00:03',1,''),
	(953,349,8,282,35.00,'2018-08-28 13:46:45','2018-09-04 13:46:45',2,0,'2018-08-28 13:46:58','2018-09-04 14:00:03',1,''),
	(954,349,7,282,35.00,'2018-08-28 13:46:45','2018-09-04 13:46:45',2,0,'2018-08-28 13:46:59','2018-09-04 14:00:03',1,''),
	(955,349,6,282,35.00,'2018-08-28 13:46:45','2018-09-04 13:46:45',2,0,'2018-08-28 13:46:59','2018-09-04 14:00:03',1,''),
	(956,349,5,282,35.00,'2018-08-28 13:46:45','2018-09-04 13:46:45',2,0,'2018-08-28 13:46:59','2018-09-04 14:00:03',1,''),
	(957,349,4,282,35.00,'2018-08-28 13:46:45','2018-09-04 13:46:45',2,0,'2018-08-28 13:47:00','2018-09-04 14:00:03',1,''),
	(958,349,3,282,35.00,'2018-08-28 13:46:45','2018-09-04 13:46:45',2,0,'2018-08-28 13:47:00','2018-09-04 14:00:03',1,''),
	(959,349,2,282,35.00,'2018-08-28 13:46:45','2018-09-04 13:46:45',2,0,'2018-08-28 13:47:00','2018-09-04 14:00:03',1,''),
	(960,349,1,282,35.00,'2018-08-28 13:46:45','2018-09-04 13:46:45',2,0,'2018-08-28 13:47:01','2018-09-04 14:00:03',1,''),
	(961,352,1,283,0.00,'2018-08-28 14:59:54','2018-09-04 14:59:54',2,0,'2018-08-28 14:59:57','2018-09-04 15:00:01',1,''),
	(962,354,46,286,70.00,'2018-08-29 12:42:15','2018-09-05 12:42:15',2,0,'2018-08-29 13:38:34','2018-09-05 13:00:02',1,''),
	(963,354,43,287,70.00,'2018-08-29 12:42:23','2018-09-05 12:42:23',2,0,'2018-08-29 13:38:34','2018-09-05 13:00:02',1,''),
	(964,354,34,288,70.00,'2018-08-29 12:42:31','2018-09-05 12:42:31',2,245,'2018-08-29 13:38:34','2018-09-05 13:00:02',1,''),
	(965,271,16,289,35.00,'2018-08-29 12:42:39','2018-09-05 12:42:39',2,480,'2018-08-29 13:38:34','2018-09-05 13:00:02',1,''),
	(966,271,1,290,35.00,'2018-08-29 13:07:34','2018-09-05 13:07:34',2,139,'2018-08-29 13:38:34','2018-09-05 13:30:01',1,''),
	(967,332,41,291,35.00,'2018-08-29 14:12:05','2018-09-05 14:12:05',2,148,'2018-08-29 14:12:08','2018-09-05 14:30:02',1,''),
	(968,332,2,291,35.00,'2018-08-29 14:12:05','2018-09-05 14:12:05',2,123,'2018-08-29 14:12:08','2018-09-05 14:30:02',1,''),
	(969,332,1,291,35.00,'2018-08-29 14:12:05','2018-09-05 14:12:05',2,186,'2018-08-29 14:12:08','2018-09-05 14:30:02',1,''),
	(970,355,41,292,0.00,'2018-08-29 18:12:33','2018-09-05 18:12:33',2,230,'2018-08-29 18:12:34','2018-09-05 18:30:02',1,''),
	(971,355,2,292,0.00,'2018-08-29 18:12:33','2018-09-05 18:12:33',2,123,'2018-08-29 18:12:34','2018-09-05 18:30:02',1,''),
	(972,355,1,292,0.00,'2018-08-29 18:12:33','2018-09-05 18:12:33',2,220,'2018-08-29 18:12:34','2018-09-05 18:30:02',1,''),
	(973,357,39,293,0.00,'2018-08-30 15:20:35','2018-09-06 15:20:35',2,341,'2018-08-30 15:20:37','2018-09-06 15:30:02',1,''),
	(974,357,34,293,0.00,'2018-08-30 15:20:35','2018-09-06 15:20:35',2,617,'2018-08-30 15:20:37','2018-09-06 15:30:02',1,''),
	(975,357,16,293,0.00,'2018-08-30 15:20:35','2018-09-06 15:20:35',2,941,'2018-08-30 15:20:37','2018-09-06 15:30:02',1,''),
	(976,357,14,293,0.00,'2018-08-30 15:20:35','2018-09-06 15:20:35',2,416,'2018-08-30 15:20:37','2018-09-06 15:30:02',1,''),
	(977,358,41,295,35.00,'2018-08-30 15:20:49','2018-09-06 15:20:49',2,325,'2018-08-30 15:20:52','2018-09-06 15:30:02',1,''),
	(978,358,2,295,35.00,'2018-08-30 15:20:49','2018-09-06 15:20:49',2,273,'2018-08-30 15:20:52','2018-09-06 15:30:02',1,''),
	(979,358,1,295,35.00,'2018-08-30 15:20:49','2018-09-06 15:20:49',2,402,'2018-08-30 15:20:52','2018-09-06 15:30:02',1,''),
	(980,359,39,299,35.00,'2018-08-31 13:13:21','2018-09-07 13:13:21',2,1240,'2018-08-31 13:13:22','2018-09-07 13:30:02',1,''),
	(981,211,41,300,0.00,'2018-08-31 15:16:43','2018-09-14 15:16:43',2,11821,'2018-08-31 15:16:45','2018-09-14 15:30:01',1,''),
	(982,360,46,304,35.00,'2018-08-31 16:12:04','2018-09-07 16:12:04',2,12,'2018-08-31 16:12:16','2018-09-07 16:30:02',1,''),
	(983,360,43,304,35.00,'2018-08-31 16:12:04','2018-09-07 16:12:04',2,0,'2018-08-31 16:12:16','2018-09-07 16:30:02',1,''),
	(984,360,42,304,35.00,'2018-08-31 16:12:04','2018-09-07 16:12:04',2,655,'2018-08-31 16:12:16','2018-09-07 16:30:02',1,''),
	(985,360,41,304,35.00,'2018-08-31 16:12:04','2018-09-07 16:12:04',2,788,'2018-08-31 16:12:16','2018-09-07 16:30:02',1,''),
	(986,360,39,304,35.00,'2018-08-31 16:12:04','2018-09-07 16:12:04',2,973,'2018-08-31 16:12:16','2018-09-07 16:30:02',1,''),
	(987,360,38,304,35.00,'2018-08-31 16:12:04','2018-09-07 16:12:04',2,1376,'2018-08-31 16:12:16','2018-09-07 16:30:02',1,''),
	(988,360,37,304,35.00,'2018-08-31 16:12:04','2018-09-07 16:12:04',2,1608,'2018-08-31 16:12:16','2018-09-07 16:30:02',1,''),
	(989,360,36,304,35.00,'2018-08-31 16:12:04','2018-09-07 16:12:04',2,1612,'2018-08-31 16:12:16','2018-09-07 16:30:02',1,''),
	(990,360,35,304,35.00,'2018-08-31 16:12:04','2018-09-07 16:12:04',2,1384,'2018-08-31 16:12:16','2018-09-07 16:30:02',1,''),
	(991,360,34,304,35.00,'2018-08-31 16:12:04','2018-09-07 16:12:04',2,784,'2018-08-31 16:12:16','2018-09-07 16:30:02',1,''),
	(992,360,33,304,35.00,'2018-08-31 16:12:04','2018-09-07 16:12:04',2,1103,'2018-08-31 16:12:16','2018-09-07 16:30:02',1,''),
	(993,360,32,304,35.00,'2018-08-31 16:12:04','2018-09-07 16:12:04',2,0,'2018-08-31 16:12:16','2018-09-07 16:30:02',1,''),
	(994,360,31,304,35.00,'2018-08-31 16:12:04','2018-09-07 16:12:04',2,539,'2018-08-31 16:12:16','2018-09-07 16:30:02',1,''),
	(995,360,30,304,35.00,'2018-08-31 16:12:04','2018-09-07 16:12:04',2,1380,'2018-08-31 16:12:16','2018-09-07 16:30:02',1,''),
	(996,360,29,304,35.00,'2018-08-31 16:12:04','2018-09-07 16:12:04',2,1752,'2018-08-31 16:12:16','2018-09-07 16:30:02',1,''),
	(997,360,28,304,35.00,'2018-08-31 16:12:04','2018-09-07 16:12:04',2,2160,'2018-08-31 16:12:17','2018-09-07 16:30:02',1,''),
	(998,360,27,304,35.00,'2018-08-31 16:12:04','2018-09-07 16:12:04',2,0,'2018-08-31 16:12:17','2018-09-07 16:30:02',1,''),
	(999,360,26,304,35.00,'2018-08-31 16:12:04','2018-09-07 16:12:04',2,0,'2018-08-31 16:12:17','2018-09-07 16:30:02',1,''),
	(1000,360,25,304,35.00,'2018-08-31 16:12:04','2018-09-07 16:12:04',2,1487,'2018-08-31 16:12:18','2018-09-07 16:30:02',1,''),
	(1001,360,24,304,35.00,'2018-08-31 16:12:04','2018-09-07 16:12:04',2,0,'2018-08-31 16:12:18','2018-09-07 16:30:02',1,''),
	(1002,360,23,304,35.00,'2018-08-31 16:12:04','2018-09-07 16:12:04',2,1527,'2018-08-31 16:12:18','2018-09-07 16:30:02',1,''),
	(1003,360,22,304,35.00,'2018-08-31 16:12:04','2018-09-07 16:12:04',2,1603,'2018-08-31 16:12:19','2018-09-07 16:30:02',1,''),
	(1004,360,21,304,35.00,'2018-08-31 16:12:04','2018-09-07 16:12:04',2,110,'2018-08-31 16:12:19','2018-09-07 16:30:02',1,''),
	(1005,360,20,304,35.00,'2018-08-31 16:12:04','2018-09-07 16:12:04',2,0,'2018-08-31 16:12:19','2018-09-07 16:30:02',1,''),
	(1006,360,19,304,35.00,'2018-08-31 16:12:04','2018-09-07 16:12:04',2,1525,'2018-08-31 16:12:19','2018-09-07 16:30:02',1,''),
	(1007,360,18,304,35.00,'2018-08-31 16:12:04','2018-09-07 16:12:04',2,479,'2018-08-31 16:12:19','2018-09-07 16:30:02',1,''),
	(1008,360,17,304,35.00,'2018-08-31 16:12:04','2018-09-07 16:12:04',2,1188,'2018-08-31 16:12:19','2018-09-07 16:30:02',1,''),
	(1009,360,16,304,35.00,'2018-08-31 16:12:04','2018-09-07 16:12:04',2,1310,'2018-08-31 16:12:19','2018-09-07 16:30:02',1,''),
	(1010,360,15,304,35.00,'2018-08-31 16:12:04','2018-09-07 16:12:04',2,1346,'2018-08-31 16:12:19','2018-09-07 16:30:02',1,''),
	(1011,360,14,304,35.00,'2018-08-31 16:12:04','2018-09-07 16:12:04',2,488,'2018-08-31 16:12:19','2018-09-07 16:30:02',1,''),
	(1012,360,13,304,35.00,'2018-08-31 16:12:04','2018-09-07 16:12:04',2,212,'2018-08-31 16:12:19','2018-09-07 16:30:02',1,''),
	(1013,360,12,304,35.00,'2018-08-31 16:12:04','2018-09-07 16:12:04',2,301,'2018-08-31 16:12:19','2018-09-07 16:30:02',1,''),
	(1014,360,11,304,35.00,'2018-08-31 16:12:04','2018-09-07 16:12:04',2,1223,'2018-08-31 16:12:19','2018-09-07 16:30:02',1,''),
	(1015,360,10,304,35.00,'2018-08-31 16:12:04','2018-09-07 16:12:04',2,461,'2018-08-31 16:12:19','2018-09-07 16:30:02',1,''),
	(1016,360,9,304,35.00,'2018-08-31 16:12:04','2018-09-07 16:12:04',2,1049,'2018-08-31 16:12:19','2018-09-07 16:30:02',1,''),
	(1017,360,8,304,35.00,'2018-08-31 16:12:04','2018-09-07 16:12:04',2,1022,'2018-08-31 16:12:20','2018-09-07 16:30:02',1,''),
	(1018,360,7,304,35.00,'2018-08-31 16:12:04','2018-09-07 16:12:04',2,1511,'2018-08-31 16:12:20','2018-09-07 16:30:02',1,''),
	(1019,360,6,304,35.00,'2018-08-31 16:12:04','2018-09-07 16:12:04',2,0,'2018-08-31 16:12:20','2018-09-07 16:30:02',1,''),
	(1020,360,5,304,35.00,'2018-08-31 16:12:04','2018-09-07 16:12:04',2,1614,'2018-08-31 16:12:21','2018-09-07 16:30:02',1,''),
	(1021,360,4,304,35.00,'2018-08-31 16:12:04','2018-09-07 16:12:04',2,347,'2018-08-31 16:12:21','2018-09-07 16:30:02',1,''),
	(1022,360,3,304,35.00,'2018-08-31 16:12:04','2018-09-07 16:12:04',2,966,'2018-08-31 16:12:21','2018-09-07 16:30:02',1,''),
	(1023,360,2,304,35.00,'2018-08-31 16:12:04','2018-09-07 16:12:04',2,596,'2018-08-31 16:12:21','2018-09-07 16:30:02',1,''),
	(1024,360,1,304,35.00,'2018-08-31 16:12:04','2018-09-07 16:12:04',2,920,'2018-08-31 16:12:21','2018-09-07 16:30:02',1,''),
	(1025,326,34,312,0.00,'2018-09-02 13:52:40','2018-09-09 13:52:40',2,1300,'2018-09-02 13:52:42','2018-09-09 14:00:02',1,''),
	(1026,367,43,314,0.00,'2018-09-02 16:41:54','2018-09-09 16:41:54',2,0,'2018-09-02 16:41:57','2018-09-09 17:00:01',1,''),
	(1027,334,46,315,35.00,'2018-09-02 17:02:37','2018-09-09 17:02:37',2,12,'2018-09-02 17:02:48','2018-09-09 17:30:01',1,''),
	(1028,334,43,315,35.00,'2018-09-02 17:02:37','2018-09-09 17:02:37',2,0,'2018-09-02 17:02:48','2018-09-09 17:30:01',1,''),
	(1029,334,42,315,35.00,'2018-09-02 17:02:37','2018-09-09 17:02:37',2,1624,'2018-09-02 17:02:48','2018-09-09 17:30:01',1,''),
	(1030,334,41,315,35.00,'2018-09-02 17:02:37','2018-09-09 17:02:37',2,1051,'2018-09-02 17:02:48','2018-09-09 17:30:01',1,''),
	(1031,334,39,315,35.00,'2018-09-02 17:02:37','2018-09-09 17:02:37',2,1212,'2018-09-02 17:02:48','2018-09-09 17:30:01',1,''),
	(1032,334,38,315,35.00,'2018-09-02 17:02:37','2018-09-09 17:02:37',2,2079,'2018-09-02 17:02:48','2018-09-09 17:30:01',1,''),
	(1033,334,37,315,35.00,'2018-09-02 17:02:37','2018-09-09 17:02:37',2,2462,'2018-09-02 17:02:48','2018-09-09 17:30:01',1,''),
	(1034,334,36,315,35.00,'2018-09-02 17:02:37','2018-09-09 17:02:37',2,1799,'2018-09-02 17:02:48','2018-09-09 17:30:01',1,''),
	(1035,334,35,315,35.00,'2018-09-02 17:02:37','2018-09-09 17:02:37',2,2004,'2018-09-02 17:02:48','2018-09-09 17:30:01',1,''),
	(1036,334,34,315,35.00,'2018-09-02 17:02:37','2018-09-09 17:02:37',2,1300,'2018-09-02 17:02:48','2018-09-09 17:30:01',1,''),
	(1037,334,33,315,35.00,'2018-09-02 17:02:37','2018-09-09 17:02:37',2,1451,'2018-09-02 17:02:48','2018-09-09 17:30:01',1,''),
	(1038,334,32,315,35.00,'2018-09-02 17:02:37','2018-09-09 17:02:37',2,0,'2018-09-02 17:02:48','2018-09-09 17:30:01',1,''),
	(1039,334,31,315,35.00,'2018-09-02 17:02:37','2018-09-09 17:02:37',2,861,'2018-09-02 17:02:48','2018-09-09 17:30:01',1,''),
	(1040,334,30,315,35.00,'2018-09-02 17:02:37','2018-09-09 17:02:37',2,1265,'2018-09-02 17:02:48','2018-09-09 17:30:01',1,''),
	(1041,334,29,315,35.00,'2018-09-02 17:02:37','2018-09-09 17:02:37',2,12806,'2018-09-02 17:02:48','2018-09-09 17:30:01',1,''),
	(1042,334,28,315,35.00,'2018-09-02 17:02:37','2018-09-09 17:02:37',2,12684,'2018-09-02 17:02:48','2018-09-09 17:30:01',1,''),
	(1043,334,27,315,35.00,'2018-09-02 17:02:37','2018-09-09 17:02:37',2,0,'2018-09-02 17:02:48','2018-09-09 17:30:01',1,''),
	(1044,334,26,315,35.00,'2018-09-02 17:02:37','2018-09-09 17:02:37',2,0,'2018-09-02 17:02:48','2018-09-09 17:30:01',1,''),
	(1045,334,25,315,35.00,'2018-09-02 17:02:37','2018-09-09 17:02:37',2,2265,'2018-09-02 17:02:48','2018-09-09 17:30:01',1,''),
	(1046,334,24,315,35.00,'2018-09-02 17:02:37','2018-09-09 17:02:37',2,0,'2018-09-02 17:02:48','2018-09-09 17:30:01',1,''),
	(1047,334,23,315,35.00,'2018-09-02 17:02:37','2018-09-09 17:02:37',2,13696,'2018-09-02 17:02:49','2018-09-09 17:30:01',1,''),
	(1048,334,22,315,35.00,'2018-09-02 17:02:37','2018-09-09 17:02:37',2,2150,'2018-09-02 17:02:49','2018-09-09 17:30:01',1,''),
	(1049,334,21,315,35.00,'2018-09-02 17:02:37','2018-09-09 17:02:37',2,796,'2018-09-02 17:02:49','2018-09-09 17:30:01',1,''),
	(1050,334,20,315,35.00,'2018-09-02 17:02:37','2018-09-09 17:02:37',2,0,'2018-09-02 17:02:49','2018-09-09 17:30:01',1,''),
	(1051,334,19,315,35.00,'2018-09-02 17:02:37','2018-09-09 17:02:37',2,2009,'2018-09-02 17:02:49','2018-09-09 17:30:01',1,''),
	(1052,334,18,315,35.00,'2018-09-02 17:02:37','2018-09-09 17:02:37',2,1430,'2018-09-02 17:02:50','2018-09-09 17:30:01',1,''),
	(1053,334,17,315,35.00,'2018-09-02 17:02:37','2018-09-09 17:02:37',2,2483,'2018-09-02 17:02:50','2018-09-09 17:30:01',1,''),
	(1054,334,16,315,35.00,'2018-09-02 17:02:37','2018-09-09 17:02:37',2,2088,'2018-09-02 17:02:51','2018-09-09 17:30:01',1,''),
	(1055,334,15,315,35.00,'2018-09-02 17:02:37','2018-09-09 17:02:37',2,2071,'2018-09-02 17:02:51','2018-09-09 17:30:01',1,''),
	(1056,334,14,315,35.00,'2018-09-02 17:02:37','2018-09-09 17:02:37',2,1065,'2018-09-02 17:02:51','2018-09-09 17:30:01',1,''),
	(1057,334,13,315,35.00,'2018-09-02 17:02:37','2018-09-09 17:02:37',2,407,'2018-09-02 17:02:51','2018-09-09 17:30:01',1,''),
	(1058,334,12,315,35.00,'2018-09-02 17:02:37','2018-09-09 17:02:37',2,301,'2018-09-02 17:02:51','2018-09-09 17:30:01',1,''),
	(1059,334,11,315,35.00,'2018-09-02 17:02:37','2018-09-09 17:02:37',2,2157,'2018-09-02 17:02:51','2018-09-09 17:30:01',1,''),
	(1060,334,10,315,35.00,'2018-09-02 17:02:37','2018-09-09 17:02:37',2,634,'2018-09-02 17:02:51','2018-09-09 17:30:01',1,''),
	(1061,334,9,315,35.00,'2018-09-02 17:02:37','2018-09-09 17:02:37',2,1356,'2018-09-02 17:02:51','2018-09-09 17:30:01',1,''),
	(1062,334,8,315,35.00,'2018-09-02 17:02:37','2018-09-09 17:02:37',2,1847,'2018-09-02 17:02:51','2018-09-09 17:30:01',1,''),
	(1063,334,7,315,35.00,'2018-09-02 17:02:37','2018-09-09 17:02:37',2,2320,'2018-09-02 17:02:52','2018-09-09 17:30:01',1,''),
	(1064,334,6,315,35.00,'2018-09-02 17:02:37','2018-09-09 17:02:37',2,0,'2018-09-02 17:02:53','2018-09-09 17:30:01',1,''),
	(1065,334,5,315,35.00,'2018-09-02 17:02:37','2018-09-09 17:02:37',2,2622,'2018-09-02 17:02:53','2018-09-09 17:30:01',1,''),
	(1066,334,4,315,35.00,'2018-09-02 17:02:37','2018-09-09 17:02:37',2,690,'2018-09-02 17:02:53','2018-09-09 17:30:01',1,''),
	(1067,334,3,315,35.00,'2018-09-02 17:02:37','2018-09-09 17:02:37',2,1308,'2018-09-02 17:02:53','2018-09-09 17:30:01',1,''),
	(1068,334,2,315,35.00,'2018-09-02 17:02:37','2018-09-09 17:02:37',2,779,'2018-09-02 17:02:53','2018-09-09 17:30:01',1,''),
	(1069,334,1,315,35.00,'2018-09-02 17:02:37','2018-09-09 17:02:37',2,1069,'2018-09-02 17:02:53','2018-09-09 17:30:01',1,''),
	(1070,362,41,316,35.00,'2018-09-02 17:32:14','2018-09-09 17:32:14',2,1051,'2018-09-02 17:32:16','2018-09-09 18:00:03',1,''),
	(1071,362,2,316,35.00,'2018-09-02 17:32:14','2018-09-09 17:32:14',2,779,'2018-09-02 17:32:16','2018-09-09 18:00:03',1,''),
	(1072,362,1,316,35.00,'2018-09-02 17:32:14','2018-09-09 17:32:14',2,1069,'2018-09-02 17:32:16','2018-09-09 18:00:03',1,''),
	(1073,251,46,317,0.00,'2018-09-03 09:07:18','2018-09-10 09:07:18',2,12,'2018-09-03 09:07:19','2018-09-10 09:30:02',1,''),
	(1074,251,41,319,0.00,'2018-09-03 09:07:27','2018-09-10 09:07:27',2,7568,'2018-09-03 09:07:28','2018-09-10 09:30:02',1,''),
	(1075,251,39,319,0.00,'2018-09-03 09:07:27','2018-09-10 09:07:27',2,1615,'2018-09-03 09:07:28','2018-09-10 09:30:02',1,''),
	(1076,251,29,319,0.00,'2018-09-03 09:07:27','2018-09-10 09:07:27',2,23458,'2018-09-03 09:07:28','2018-09-10 09:30:02',1,''),
	(1077,251,27,319,0.00,'2018-09-03 09:07:27','2018-09-10 09:07:27',2,0,'2018-09-03 09:07:29','2018-09-10 09:30:02',1,''),
	(1078,251,25,319,0.00,'2018-09-03 09:07:27','2018-09-10 09:07:27',2,13129,'2018-09-03 09:07:29','2018-09-10 09:30:02',1,''),
	(1079,251,24,319,0.00,'2018-09-03 09:07:27','2018-09-10 09:07:27',2,0,'2018-09-03 09:07:29','2018-09-10 09:30:02',1,''),
	(1080,251,20,319,0.00,'2018-09-03 09:07:27','2018-09-10 09:07:27',2,0,'2018-09-03 09:07:29','2018-09-10 09:30:02',1,''),
	(1081,251,7,319,0.00,'2018-09-03 09:07:27','2018-09-10 09:07:27',2,13216,'2018-09-03 09:07:29','2018-09-10 09:30:02',1,''),
	(1082,369,46,320,0.00,'2018-09-03 11:14:01','2018-09-10 11:14:01',2,12,'2018-09-03 11:14:04','2018-09-10 11:30:02',1,''),
	(1083,369,43,320,0.00,'2018-09-03 11:14:01','2018-09-10 11:14:01',2,0,'2018-09-03 11:14:04','2018-09-10 11:30:02',1,''),
	(1084,369,42,320,0.00,'2018-09-03 11:14:01','2018-09-10 11:14:01',2,2100,'2018-09-03 11:14:04','2018-09-10 11:30:02',1,''),
	(1085,369,39,320,0.00,'2018-09-03 11:14:01','2018-09-10 11:14:01',2,1615,'2018-09-03 11:14:04','2018-09-10 11:30:02',1,''),
	(1086,369,34,320,0.00,'2018-09-03 11:14:01','2018-09-10 11:14:01',2,1669,'2018-09-03 11:14:04','2018-09-10 11:30:02',1,''),
	(1087,369,33,320,0.00,'2018-09-03 11:14:01','2018-09-10 11:14:01',2,1451,'2018-09-03 11:14:04','2018-09-10 11:30:02',1,''),
	(1088,369,17,320,0.00,'2018-09-03 11:14:01','2018-09-10 11:14:01',2,2662,'2018-09-03 11:14:04','2018-09-10 11:30:02',1,''),
	(1089,369,8,320,0.00,'2018-09-03 11:14:01','2018-09-10 11:14:01',2,2140,'2018-09-03 11:14:04','2018-09-10 11:30:02',1,''),
	(1090,371,46,322,35.00,'2018-09-03 14:51:59','2018-09-10 14:51:59',2,143,'2018-09-03 14:52:09','2018-09-10 15:00:03',1,''),
	(1091,371,43,322,35.00,'2018-09-03 14:51:59','2018-09-10 14:51:59',2,0,'2018-09-03 14:52:09','2018-09-10 15:00:03',1,''),
	(1092,371,42,322,35.00,'2018-09-03 14:51:59','2018-09-10 14:51:59',2,2100,'2018-09-03 14:52:09','2018-09-10 15:00:03',1,''),
	(1093,371,41,322,35.00,'2018-09-03 14:51:59','2018-09-10 14:51:59',2,7568,'2018-09-03 14:52:09','2018-09-10 15:00:03',1,''),
	(1094,371,39,322,35.00,'2018-09-03 14:51:59','2018-09-10 14:51:59',2,1615,'2018-09-03 14:52:09','2018-09-10 15:00:03',1,''),
	(1095,371,38,322,35.00,'2018-09-03 14:51:59','2018-09-10 14:51:59',2,2831,'2018-09-03 14:52:09','2018-09-10 15:00:03',1,''),
	(1096,371,37,322,35.00,'2018-09-03 14:51:59','2018-09-10 14:51:59',2,2892,'2018-09-03 14:52:09','2018-09-10 15:00:03',1,''),
	(1097,371,36,322,35.00,'2018-09-03 14:51:59','2018-09-10 14:51:59',2,2170,'2018-09-03 14:52:09','2018-09-10 15:00:03',1,''),
	(1098,371,35,322,35.00,'2018-09-03 14:51:59','2018-09-10 14:51:59',2,13452,'2018-09-03 14:52:09','2018-09-10 15:00:03',1,''),
	(1099,371,34,322,35.00,'2018-09-03 14:51:59','2018-09-10 14:51:59',2,1669,'2018-09-03 14:52:09','2018-09-10 15:00:03',1,''),
	(1100,371,33,322,35.00,'2018-09-03 14:51:59','2018-09-10 14:51:59',2,1451,'2018-09-03 14:52:09','2018-09-10 15:00:03',1,''),
	(1101,371,32,322,35.00,'2018-09-03 14:51:59','2018-09-10 14:51:59',2,0,'2018-09-03 14:52:09','2018-09-10 15:00:03',1,''),
	(1102,371,31,322,35.00,'2018-09-03 14:51:59','2018-09-10 14:51:59',2,1051,'2018-09-03 14:52:09','2018-09-10 15:00:03',1,''),
	(1103,371,30,322,35.00,'2018-09-03 14:51:59','2018-09-10 14:51:59',2,13102,'2018-09-03 14:52:09','2018-09-10 15:00:03',1,''),
	(1104,371,29,322,35.00,'2018-09-03 14:51:59','2018-09-10 14:51:59',2,23580,'2018-09-03 14:52:09','2018-09-10 15:00:03',1,''),
	(1105,371,28,322,35.00,'2018-09-03 14:51:59','2018-09-10 14:51:59',2,12684,'2018-09-03 14:52:09','2018-09-10 15:00:03',1,''),
	(1106,371,27,322,35.00,'2018-09-03 14:51:59','2018-09-10 14:51:59',2,0,'2018-09-03 14:52:09','2018-09-10 15:00:03',1,''),
	(1107,371,26,322,35.00,'2018-09-03 14:51:59','2018-09-10 14:51:59',2,0,'2018-09-03 14:52:10','2018-09-10 15:00:03',1,''),
	(1108,371,25,322,35.00,'2018-09-03 14:51:59','2018-09-10 14:51:59',2,13129,'2018-09-03 14:52:10','2018-09-10 15:00:03',1,''),
	(1109,371,24,322,35.00,'2018-09-03 14:51:59','2018-09-10 14:51:59',2,0,'2018-09-03 14:52:10','2018-09-10 15:00:03',1,''),
	(1110,371,23,322,35.00,'2018-09-03 14:51:59','2018-09-10 14:51:59',2,13696,'2018-09-03 14:52:10','2018-09-10 15:00:03',1,''),
	(1111,371,22,322,35.00,'2018-09-03 14:51:59','2018-09-10 14:51:59',2,2544,'2018-09-03 14:52:11','2018-09-10 15:00:03',1,''),
	(1112,371,21,322,35.00,'2018-09-03 14:51:59','2018-09-10 14:51:59',2,1698,'2018-09-03 14:52:11','2018-09-10 15:00:03',1,''),
	(1113,371,20,322,35.00,'2018-09-03 14:51:59','2018-09-10 14:51:59',2,0,'2018-09-03 14:52:11','2018-09-10 15:00:03',1,''),
	(1114,371,19,322,35.00,'2018-09-03 14:51:59','2018-09-10 14:51:59',2,2367,'2018-09-03 14:52:11','2018-09-10 15:00:03',1,''),
	(1115,371,18,322,35.00,'2018-09-03 14:51:59','2018-09-10 14:51:59',2,12946,'2018-09-03 14:52:12','2018-09-10 15:00:03',1,''),
	(1116,371,17,322,35.00,'2018-09-03 14:51:59','2018-09-10 14:51:59',2,2662,'2018-09-03 14:52:12','2018-09-10 15:00:03',1,''),
	(1117,371,16,322,35.00,'2018-09-03 14:51:59','2018-09-10 14:51:59',2,2498,'2018-09-03 14:52:12','2018-09-10 15:00:03',1,''),
	(1118,371,15,322,35.00,'2018-09-03 14:51:59','2018-09-10 14:51:59',2,2375,'2018-09-03 14:52:12','2018-09-10 15:00:03',1,''),
	(1119,371,14,322,35.00,'2018-09-03 14:51:59','2018-09-10 14:51:59',2,12614,'2018-09-03 14:52:12','2018-09-10 15:00:03',1,''),
	(1120,371,13,322,35.00,'2018-09-03 14:51:59','2018-09-10 14:51:59',2,450,'2018-09-03 14:52:12','2018-09-10 15:00:03',1,''),
	(1121,371,12,322,35.00,'2018-09-03 14:51:59','2018-09-10 14:51:59',2,301,'2018-09-03 14:52:12','2018-09-10 15:00:03',1,''),
	(1122,371,11,322,35.00,'2018-09-03 14:51:59','2018-09-10 14:51:59',2,2157,'2018-09-03 14:52:12','2018-09-10 15:00:03',1,''),
	(1123,371,10,322,35.00,'2018-09-03 14:51:59','2018-09-10 14:51:59',2,1100,'2018-09-03 14:52:12','2018-09-10 15:00:03',1,''),
	(1124,371,9,322,35.00,'2018-09-03 14:51:59','2018-09-10 14:51:59',2,12962,'2018-09-03 14:52:12','2018-09-10 15:00:03',1,''),
	(1125,371,8,322,35.00,'2018-09-03 14:51:59','2018-09-10 14:51:59',2,2241,'2018-09-03 14:52:12','2018-09-10 15:00:03',1,''),
	(1126,371,7,322,35.00,'2018-09-03 14:51:59','2018-09-10 14:51:59',2,13279,'2018-09-03 14:52:12','2018-09-10 15:00:03',1,''),
	(1127,371,6,322,35.00,'2018-09-03 14:51:59','2018-09-10 14:51:59',2,0,'2018-09-03 14:52:12','2018-09-10 15:00:03',1,''),
	(1128,371,5,322,35.00,'2018-09-03 14:51:59','2018-09-10 14:51:59',2,2940,'2018-09-03 14:52:12','2018-09-10 15:00:03',1,''),
	(1129,371,4,322,35.00,'2018-09-03 14:51:59','2018-09-10 14:51:59',2,1097,'2018-09-03 14:52:13','2018-09-10 15:00:03',1,''),
	(1130,371,3,322,35.00,'2018-09-03 14:51:59','2018-09-10 14:51:59',2,1897,'2018-09-03 14:52:14','2018-09-10 15:00:03',1,''),
	(1131,371,2,322,35.00,'2018-09-03 14:51:59','2018-09-10 14:51:59',2,6617,'2018-09-03 14:52:14','2018-09-10 15:00:03',1,''),
	(1132,371,1,322,35.00,'2018-09-03 14:51:59','2018-09-10 14:51:59',2,1069,'2018-09-03 14:52:14','2018-09-10 15:00:03',1,''),
	(1133,372,46,323,35.00,'2018-09-03 14:59:32','2018-09-10 14:59:32',2,143,'2018-09-03 14:59:40','2018-09-10 15:00:03',1,''),
	(1134,372,43,323,35.00,'2018-09-03 14:59:32','2018-09-10 14:59:32',2,0,'2018-09-03 14:59:40','2018-09-10 15:00:03',1,''),
	(1135,372,42,323,35.00,'2018-09-03 14:59:32','2018-09-10 14:59:32',2,2100,'2018-09-03 14:59:40','2018-09-10 15:00:03',1,''),
	(1136,372,41,323,35.00,'2018-09-03 14:59:32','2018-09-10 14:59:32',2,7568,'2018-09-03 14:59:40','2018-09-10 15:00:03',1,''),
	(1137,372,39,323,35.00,'2018-09-03 14:59:32','2018-09-10 14:59:32',2,1615,'2018-09-03 14:59:40','2018-09-10 15:00:03',1,''),
	(1138,372,38,323,35.00,'2018-09-03 14:59:32','2018-09-10 14:59:32',2,2831,'2018-09-03 14:59:40','2018-09-10 15:00:03',1,''),
	(1139,372,37,323,35.00,'2018-09-03 14:59:32','2018-09-10 14:59:32',2,2892,'2018-09-03 14:59:41','2018-09-10 15:00:03',1,''),
	(1140,372,36,323,35.00,'2018-09-03 14:59:32','2018-09-10 14:59:32',2,2170,'2018-09-03 14:59:41','2018-09-10 15:00:03',1,''),
	(1141,372,35,323,35.00,'2018-09-03 14:59:32','2018-09-10 14:59:32',2,13452,'2018-09-03 14:59:41','2018-09-10 15:00:03',1,''),
	(1142,372,34,323,35.00,'2018-09-03 14:59:32','2018-09-10 14:59:32',2,1669,'2018-09-03 14:59:41','2018-09-10 15:00:03',1,''),
	(1143,372,33,323,35.00,'2018-09-03 14:59:32','2018-09-10 14:59:32',2,1451,'2018-09-03 14:59:41','2018-09-10 15:00:03',1,''),
	(1144,372,32,323,35.00,'2018-09-03 14:59:32','2018-09-10 14:59:32',2,0,'2018-09-03 14:59:41','2018-09-10 15:00:03',1,''),
	(1145,372,31,323,35.00,'2018-09-03 14:59:32','2018-09-10 14:59:32',2,1051,'2018-09-03 14:59:41','2018-09-10 15:00:03',1,''),
	(1146,372,30,323,35.00,'2018-09-03 14:59:32','2018-09-10 14:59:32',2,13102,'2018-09-03 14:59:41','2018-09-10 15:00:03',1,''),
	(1147,372,29,323,35.00,'2018-09-03 14:59:32','2018-09-10 14:59:32',2,23580,'2018-09-03 14:59:41','2018-09-10 15:00:03',1,''),
	(1148,372,28,323,35.00,'2018-09-03 14:59:32','2018-09-10 14:59:32',2,12684,'2018-09-03 14:59:41','2018-09-10 15:00:03',1,''),
	(1149,372,27,323,35.00,'2018-09-03 14:59:32','2018-09-10 14:59:32',2,0,'2018-09-03 14:59:41','2018-09-10 15:00:03',1,''),
	(1150,372,26,323,35.00,'2018-09-03 14:59:32','2018-09-10 14:59:32',2,0,'2018-09-03 14:59:41','2018-09-10 15:00:03',1,''),
	(1151,372,25,323,35.00,'2018-09-03 14:59:32','2018-09-10 14:59:32',2,13129,'2018-09-03 14:59:41','2018-09-10 15:00:03',1,''),
	(1152,372,24,323,35.00,'2018-09-03 14:59:32','2018-09-10 14:59:32',2,0,'2018-09-03 14:59:41','2018-09-10 15:00:03',1,''),
	(1153,372,23,323,35.00,'2018-09-03 14:59:32','2018-09-10 14:59:32',2,13696,'2018-09-03 14:59:41','2018-09-10 15:00:03',1,''),
	(1154,372,22,323,35.00,'2018-09-03 14:59:32','2018-09-10 14:59:32',2,2544,'2018-09-03 14:59:42','2018-09-10 15:00:03',1,''),
	(1155,372,21,323,35.00,'2018-09-03 14:59:32','2018-09-10 14:59:32',2,1698,'2018-09-03 14:59:42','2018-09-10 15:00:03',1,''),
	(1156,372,20,323,35.00,'2018-09-03 14:59:32','2018-09-10 14:59:32',2,0,'2018-09-03 14:59:43','2018-09-10 15:00:03',1,''),
	(1157,372,19,323,35.00,'2018-09-03 14:59:32','2018-09-10 14:59:32',2,2367,'2018-09-03 14:59:43','2018-09-10 15:00:03',1,''),
	(1158,372,18,323,35.00,'2018-09-03 14:59:32','2018-09-10 14:59:32',2,12946,'2018-09-03 14:59:43','2018-09-10 15:00:03',1,''),
	(1159,372,17,323,35.00,'2018-09-03 14:59:32','2018-09-10 14:59:32',2,2662,'2018-09-03 14:59:43','2018-09-10 15:00:03',1,''),
	(1160,372,16,323,35.00,'2018-09-03 14:59:32','2018-09-10 14:59:32',2,2498,'2018-09-03 14:59:43','2018-09-10 15:00:03',1,''),
	(1161,372,15,323,35.00,'2018-09-03 14:59:32','2018-09-10 14:59:32',2,2375,'2018-09-03 14:59:43','2018-09-10 15:00:03',1,''),
	(1162,372,14,323,35.00,'2018-09-03 14:59:32','2018-09-10 14:59:32',2,12614,'2018-09-03 14:59:43','2018-09-10 15:00:03',1,''),
	(1163,372,13,323,35.00,'2018-09-03 14:59:32','2018-09-10 14:59:32',2,450,'2018-09-03 14:59:43','2018-09-10 15:00:03',1,''),
	(1164,372,12,323,35.00,'2018-09-03 14:59:32','2018-09-10 14:59:32',2,301,'2018-09-03 14:59:43','2018-09-10 15:00:03',1,''),
	(1165,372,11,323,35.00,'2018-09-03 14:59:32','2018-09-10 14:59:32',2,2157,'2018-09-03 14:59:43','2018-09-10 15:00:03',1,''),
	(1166,372,10,323,35.00,'2018-09-03 14:59:32','2018-09-10 14:59:32',2,1100,'2018-09-03 14:59:43','2018-09-10 15:00:03',1,''),
	(1167,372,9,323,35.00,'2018-09-03 14:59:32','2018-09-10 14:59:32',2,12962,'2018-09-03 14:59:43','2018-09-10 15:00:03',1,''),
	(1168,372,8,323,35.00,'2018-09-03 14:59:32','2018-09-10 14:59:32',2,2241,'2018-09-03 14:59:43','2018-09-10 15:00:03',1,''),
	(1169,372,7,323,35.00,'2018-09-03 14:59:32','2018-09-10 14:59:32',2,13279,'2018-09-03 14:59:43','2018-09-10 15:00:03',1,''),
	(1170,372,6,323,35.00,'2018-09-03 14:59:32','2018-09-10 14:59:32',2,0,'2018-09-03 14:59:43','2018-09-10 15:00:03',1,''),
	(1171,372,5,323,35.00,'2018-09-03 14:59:32','2018-09-10 14:59:32',2,2940,'2018-09-03 14:59:44','2018-09-10 15:00:03',1,''),
	(1172,372,4,323,35.00,'2018-09-03 14:59:32','2018-09-10 14:59:32',2,1097,'2018-09-03 14:59:45','2018-09-10 15:00:03',1,''),
	(1173,372,3,323,35.00,'2018-09-03 14:59:32','2018-09-10 14:59:32',2,1897,'2018-09-03 14:59:45','2018-09-10 15:00:03',1,''),
	(1174,372,2,323,35.00,'2018-09-03 14:59:32','2018-09-10 14:59:32',2,6617,'2018-09-03 14:59:46','2018-09-10 15:00:03',1,''),
	(1175,372,1,323,35.00,'2018-09-03 14:59:32','2018-09-10 14:59:32',2,1069,'2018-09-03 14:59:46','2018-09-10 15:00:03',1,''),
	(1176,42,41,327,0.00,'2018-09-05 11:56:56','2018-09-12 11:56:56',2,11357,'2018-09-05 11:57:00','2018-09-12 12:00:02',1,''),
	(1177,255,41,327,0.00,'2018-09-05 11:56:56','2018-09-12 11:56:56',2,7874,'2018-09-05 11:57:00','2018-09-12 12:00:02',1,''),
	(1178,42,2,327,0.00,'2018-09-05 11:56:56','2018-09-12 11:56:56',2,12899,'2018-09-05 11:57:00','2018-09-12 12:00:02',1,''),
	(1179,255,2,327,0.00,'2018-09-05 11:56:56','2018-09-12 11:56:56',2,6844,'2018-09-05 11:57:00','2018-09-12 12:00:02',1,''),
	(1180,42,1,327,0.00,'2018-09-05 11:56:56','2018-09-12 11:56:56',2,995,'2018-09-05 11:57:00','2018-09-12 12:00:02',1,''),
	(1181,255,1,327,0.00,'2018-09-05 11:56:56','2018-09-12 11:56:56',2,925,'2018-09-05 11:57:00','2018-09-12 12:00:02',1,''),
	(1182,376,46,326,35.00,'2018-09-05 12:08:05','2018-09-12 12:08:05',2,746,'2018-09-05 12:08:07','2018-09-12 12:30:02',1,''),
	(1183,376,39,326,35.00,'2018-09-05 12:08:05','2018-09-12 12:08:05',2,1957,'2018-09-05 12:08:07','2018-09-12 12:30:02',1,''),
	(1184,376,37,326,35.00,'2018-09-05 12:08:05','2018-09-12 12:08:05',2,2779,'2018-09-05 12:08:07','2018-09-12 12:30:02',1,''),
	(1185,376,36,326,35.00,'2018-09-05 12:08:05','2018-09-12 12:08:05',2,2363,'2018-09-05 12:08:07','2018-09-12 12:30:02',1,''),
	(1186,376,32,326,35.00,'2018-09-05 12:08:05','2018-09-12 12:08:05',2,68,'2018-09-05 12:08:07','2018-09-12 12:30:02',1,''),
	(1187,376,29,326,35.00,'2018-09-05 12:08:05','2018-09-12 12:08:05',2,25016,'2018-09-05 12:08:07','2018-09-12 12:30:02',1,''),
	(1188,376,25,326,35.00,'2018-09-05 12:08:05','2018-09-12 12:08:05',2,14035,'2018-09-05 12:08:07','2018-09-12 12:30:02',1,''),
	(1189,376,24,326,35.00,'2018-09-05 12:08:05','2018-09-12 12:08:05',2,214,'2018-09-05 12:08:07','2018-09-12 12:30:02',1,''),
	(1190,119,2,329,35.00,'2018-09-05 12:15:27','2018-09-12 12:15:27',2,6840,'2018-09-05 12:15:30','2018-09-12 12:30:02',1,''),
	(1191,316,2,329,35.00,'2018-09-05 12:15:27','2018-09-12 12:15:27',2,6840,'2018-09-05 12:15:30','2018-09-12 12:30:02',1,''),
	(1192,349,2,329,35.00,'2018-09-05 12:15:27','2018-09-12 12:15:27',2,12895,'2018-09-05 12:15:30','2018-09-12 12:30:02',1,''),
	(1193,386,41,331,30.00,'2018-09-06 10:04:50','2018-09-13 10:04:50',2,7807,'2018-09-06 10:04:51','2018-09-13 10:30:02',1,''),
	(1194,386,2,331,30.00,'2018-09-06 10:04:50','2018-09-13 10:04:50',2,6843,'2018-09-06 10:04:51','2018-09-13 10:30:02',1,''),
	(1196,387,38,333,0.00,'2018-09-06 16:19:01','2018-09-13 16:19:01',2,2615,'2018-09-06 16:19:03','2018-09-13 16:30:02',1,''),
	(1201,394,2,338,35.00,'2018-09-07 16:29:35','2018-09-14 16:29:35',2,6740,'2018-09-07 16:29:36','2018-09-14 16:30:02',1,''),
	(1202,312,41,339,40.00,'2018-09-07 16:38:25','2018-09-14 16:38:25',2,7547,'2018-09-07 16:38:29','2018-09-14 17:00:02',1,''),
	(1203,312,2,339,40.00,'2018-09-07 16:38:25','2018-09-14 16:38:25',2,6738,'2018-09-07 16:38:29','2018-09-14 17:00:02',1,''),
	(1204,312,1,339,40.00,'2018-09-07 16:38:25','2018-09-14 16:38:25',2,111,'2018-09-07 16:38:29','2018-09-14 17:00:02',1,''),
	(1205,280,41,340,35.00,'2018-09-07 16:58:09','2018-09-14 16:58:09',2,7540,'2018-09-07 16:58:12','2018-09-14 17:00:01',1,''),
	(1206,395,41,343,0.00,'2018-09-08 10:48:47','2018-09-15 10:48:47',2,11113,'2018-09-08 10:48:48','2018-09-15 11:00:02',1,''),
	(1207,68,46,341,0.00,'2018-09-08 10:49:39','2018-09-15 10:49:39',2,1684,'2018-09-08 10:49:42','2018-09-15 11:00:02',1,''),
	(1208,69,46,341,0.00,'2018-09-08 10:49:39','2018-09-15 10:49:39',2,1684,'2018-09-08 10:49:42','2018-09-15 11:00:02',1,''),
	(1211,417,46,351,35.00,'2018-09-09 14:41:15','2018-09-16 14:41:15',2,2077,'2018-09-09 14:41:26','2018-09-16 15:00:02',1,''),
	(1212,417,43,351,35.00,'2018-09-09 14:41:15','2018-09-16 14:41:15',2,906,'2018-09-09 14:41:26','2018-09-16 15:00:02',1,''),
	(1213,417,42,351,35.00,'2018-09-09 14:41:15','2018-09-16 14:41:15',2,2510,'2018-09-09 14:41:26','2018-09-16 15:00:02',1,''),
	(1214,417,41,351,35.00,'2018-09-09 14:41:15','2018-09-16 14:41:15',2,1352,'2018-09-09 14:41:26','2018-09-16 15:00:02',1,''),
	(1215,417,39,351,35.00,'2018-09-09 14:41:15','2018-09-16 14:41:15',2,934,'2018-09-09 14:41:26','2018-09-16 15:00:02',1,''),
	(1216,417,38,351,35.00,'2018-09-09 14:41:15','2018-09-16 14:41:15',2,2681,'2018-09-09 14:41:26','2018-09-16 15:00:02',1,''),
	(1217,417,37,351,35.00,'2018-09-09 14:41:15','2018-09-16 14:41:15',2,2167,'2018-09-09 14:41:26','2018-09-16 15:00:02',1,''),
	(1218,417,36,351,35.00,'2018-09-09 14:41:15','2018-09-16 14:41:15',2,1732,'2018-09-09 14:41:26','2018-09-16 15:00:02',1,''),
	(1219,417,35,351,35.00,'2018-09-09 14:41:15','2018-09-16 14:41:15',2,2693,'2018-09-09 14:41:26','2018-09-16 15:00:02',1,''),
	(1220,417,34,351,35.00,'2018-09-09 14:41:15','2018-09-16 14:41:15',2,2614,'2018-09-09 14:41:26','2018-09-16 15:00:02',1,''),
	(1221,417,33,351,35.00,'2018-09-09 14:41:15','2018-09-16 14:41:15',2,1113,'2018-09-09 14:41:26','2018-09-16 15:00:02',1,''),
	(1222,417,32,351,35.00,'2018-09-09 14:41:15','2018-09-16 14:41:15',2,1143,'2018-09-09 14:41:26','2018-09-16 15:00:02',1,''),
	(1223,417,31,351,35.00,'2018-09-09 14:41:15','2018-09-16 14:41:15',2,1566,'2018-09-09 14:41:26','2018-09-16 15:00:02',1,''),
	(1224,417,30,351,35.00,'2018-09-09 14:41:15','2018-09-16 14:41:15',2,13399,'2018-09-09 14:41:26','2018-09-16 15:00:02',1,''),
	(1225,417,29,351,35.00,'2018-09-09 14:41:15','2018-09-16 14:41:15',2,1978,'2018-09-09 14:41:26','2018-09-16 15:00:02',1,''),
	(1226,417,28,351,35.00,'2018-09-09 14:41:15','2018-09-16 14:41:15',2,1387,'2018-09-09 14:41:26','2018-09-16 15:00:02',1,''),
	(1227,417,27,351,35.00,'2018-09-09 14:41:15','2018-09-16 14:41:15',2,166,'2018-09-09 14:41:26','2018-09-16 15:00:02',1,''),
	(1228,417,26,351,35.00,'2018-09-09 14:41:15','2018-09-16 14:41:15',2,257,'2018-09-09 14:41:27','2018-09-16 15:00:02',1,''),
	(1229,417,25,351,35.00,'2018-09-09 14:41:15','2018-09-16 14:41:15',2,2007,'2018-09-09 14:41:27','2018-09-16 15:00:02',1,''),
	(1230,417,24,351,35.00,'2018-09-09 14:41:15','2018-09-16 14:41:15',2,1608,'2018-09-09 14:41:28','2018-09-16 15:00:02',1,''),
	(1231,417,23,351,35.00,'2018-09-09 14:41:15','2018-09-16 14:41:15',2,964,'2018-09-09 14:41:28','2018-09-16 15:00:02',1,''),
	(1232,417,22,351,35.00,'2018-09-09 14:41:15','2018-09-16 14:41:15',2,1803,'2018-09-09 14:41:28','2018-09-16 15:00:02',1,''),
	(1233,417,21,351,35.00,'2018-09-09 14:41:15','2018-09-16 14:41:15',2,5515,'2018-09-09 14:41:28','2018-09-16 15:00:02',1,''),
	(1234,417,20,351,35.00,'2018-09-09 14:41:15','2018-09-16 14:41:15',2,1054,'2018-09-09 14:41:28','2018-09-16 15:00:02',1,''),
	(1235,417,19,351,35.00,'2018-09-09 14:41:15','2018-09-16 14:41:15',2,2315,'2018-09-09 14:41:28','2018-09-16 15:00:02',1,''),
	(1236,417,18,351,35.00,'2018-09-09 14:41:15','2018-09-16 14:41:15',2,2461,'2018-09-09 14:41:28','2018-09-16 15:00:02',1,''),
	(1237,417,17,351,35.00,'2018-09-09 14:41:15','2018-09-16 14:41:15',2,2223,'2018-09-09 14:41:28','2018-09-16 15:00:02',1,''),
	(1238,417,16,351,35.00,'2018-09-09 14:41:15','2018-09-16 14:41:15',2,2657,'2018-09-09 14:41:28','2018-09-16 15:00:02',1,''),
	(1239,417,15,351,35.00,'2018-09-09 14:41:15','2018-09-16 14:41:15',2,1995,'2018-09-09 14:41:28','2018-09-16 15:00:02',1,''),
	(1240,417,14,351,35.00,'2018-09-09 14:41:15','2018-09-16 14:41:15',2,4116,'2018-09-09 14:41:28','2018-09-16 15:00:02',1,''),
	(1241,417,13,351,35.00,'2018-09-09 14:41:15','2018-09-16 14:41:15',2,721,'2018-09-09 14:41:28','2018-09-16 15:00:02',1,''),
	(1242,417,12,351,35.00,'2018-09-09 14:41:15','2018-09-16 14:41:15',2,380,'2018-09-09 14:41:28','2018-09-16 15:00:02',1,''),
	(1243,417,11,351,35.00,'2018-09-09 14:41:15','2018-09-16 14:41:15',2,1307,'2018-09-09 14:41:28','2018-09-16 15:00:02',1,''),
	(1244,417,10,351,35.00,'2018-09-09 14:41:15','2018-09-16 14:41:15',2,3296,'2018-09-09 14:41:28','2018-09-16 15:00:02',1,''),
	(1245,417,9,351,35.00,'2018-09-09 14:41:15','2018-09-16 14:41:15',2,14193,'2018-09-09 14:41:28','2018-09-16 15:00:02',1,''),
	(1246,417,8,351,35.00,'2018-09-09 14:41:15','2018-09-16 14:41:15',2,2099,'2018-09-09 14:41:29','2018-09-16 15:00:02',1,''),
	(1247,417,7,351,35.00,'2018-09-09 14:41:15','2018-09-16 14:41:15',2,13524,'2018-09-09 14:41:29','2018-09-16 15:00:02',1,''),
	(1248,417,6,351,35.00,'2018-09-09 14:41:15','2018-09-16 14:41:15',2,90,'2018-09-09 14:41:30','2018-09-16 15:00:02',1,''),
	(1249,417,5,351,35.00,'2018-09-09 14:41:15','2018-09-16 14:41:15',2,2465,'2018-09-09 14:41:31','2018-09-16 15:00:02',1,''),
	(1250,417,4,351,35.00,'2018-09-09 14:41:15','2018-09-16 14:41:15',2,2964,'2018-09-09 14:41:31','2018-09-16 15:00:02',1,''),
	(1251,417,3,351,35.00,'2018-09-09 14:41:15','2018-09-16 14:41:15',2,577,'2018-09-09 14:41:31','2018-09-16 15:00:02',1,''),
	(1252,417,2,351,35.00,'2018-09-09 14:41:15','2018-09-16 14:41:15',2,1563,'2018-09-09 14:41:31','2018-09-16 15:00:02',1,''),
	(1253,420,46,354,35.00,'2018-09-10 15:07:00','2018-09-17 15:07:00',1,2116,'2018-09-10 15:07:12','2018-09-16 23:46:04',1,''),
	(1254,421,46,354,35.00,'2018-09-10 15:07:00','2018-09-17 15:07:00',1,3013,'2018-09-10 15:07:12','2018-09-16 23:46:04',1,''),
	(1255,420,43,354,35.00,'2018-09-10 15:07:00','2018-09-17 15:07:00',1,1098,'2018-09-10 15:07:12','2018-09-16 20:25:08',1,''),
	(1256,421,43,354,35.00,'2018-09-10 15:07:00','2018-09-17 15:07:00',1,1596,'2018-09-10 15:07:12','2018-09-16 20:25:08',1,''),
	(1257,420,42,354,35.00,'2018-09-10 15:07:00','2018-09-17 15:07:00',1,2316,'2018-09-10 15:07:12','2018-09-16 23:55:46',1,''),
	(1258,421,42,354,35.00,'2018-09-10 15:07:00','2018-09-17 15:07:00',1,3227,'2018-09-10 15:07:12','2018-09-16 23:55:46',1,''),
	(1259,420,41,354,35.00,'2018-09-10 15:07:00','2018-09-17 15:07:00',1,1226,'2018-09-10 15:07:12','2018-09-16 16:36:24',1,''),
	(1260,421,41,354,35.00,'2018-09-10 15:07:00','2018-09-17 15:07:00',1,1522,'2018-09-10 15:07:12','2018-09-16 16:36:24',1,''),
	(1261,420,39,354,35.00,'2018-09-10 15:07:00','2018-09-17 15:07:00',1,833,'2018-09-10 15:07:12','2018-09-16 21:00:54',1,''),
	(1262,421,39,354,35.00,'2018-09-10 15:07:00','2018-09-17 15:07:00',1,1127,'2018-09-10 15:07:12','2018-09-16 21:00:54',1,''),
	(1263,420,38,354,35.00,'2018-09-10 15:07:00','2018-09-17 15:07:00',1,2169,'2018-09-10 15:07:13','2018-09-16 22:00:47',1,''),
	(1264,421,38,354,35.00,'2018-09-10 15:07:00','2018-09-17 15:07:00',1,2248,'2018-09-10 15:07:13','2018-09-16 22:00:47',1,''),
	(1265,420,37,354,35.00,'2018-09-10 15:07:00','2018-09-17 15:07:00',1,1956,'2018-09-10 15:07:13','2018-09-16 20:23:02',1,''),
	(1266,421,37,354,35.00,'2018-09-10 15:07:00','2018-09-17 15:07:00',1,2724,'2018-09-10 15:07:13','2018-09-16 20:23:02',1,''),
	(1267,420,36,354,35.00,'2018-09-10 15:07:00','2018-09-17 15:07:00',1,1565,'2018-09-10 15:07:13','2018-09-17 03:05:24',1,''),
	(1268,421,36,354,35.00,'2018-09-10 15:07:00','2018-09-17 15:07:00',1,2219,'2018-09-10 15:07:13','2018-09-17 03:05:24',1,''),
	(1269,420,35,354,35.00,'2018-09-10 15:07:00','2018-09-17 15:07:00',1,2634,'2018-09-10 15:07:13','2018-09-16 21:00:48',1,''),
	(1270,421,35,354,35.00,'2018-09-10 15:07:00','2018-09-17 15:07:00',1,2706,'2018-09-10 15:07:13','2018-09-16 21:00:48',1,''),
	(1271,420,34,354,35.00,'2018-09-10 15:07:00','2018-09-17 15:07:00',1,2498,'2018-09-10 15:07:13','2018-09-16 21:06:06',1,''),
	(1272,421,34,354,35.00,'2018-09-10 15:07:00','2018-09-17 15:07:00',1,2583,'2018-09-10 15:07:13','2018-09-16 21:06:06',1,''),
	(1273,420,33,354,35.00,'2018-09-10 15:07:00','2018-09-17 15:07:00',1,1222,'2018-09-10 15:07:13','2018-09-16 21:05:42',1,''),
	(1274,421,33,354,35.00,'2018-09-10 15:07:00','2018-09-17 15:07:00',1,1243,'2018-09-10 15:07:13','2018-09-16 21:05:42',1,''),
	(1275,420,32,354,35.00,'2018-09-10 15:07:00','2018-09-17 15:07:00',1,1343,'2018-09-10 15:07:13','2018-09-16 17:50:46',1,''),
	(1276,421,32,354,35.00,'2018-09-10 15:07:00','2018-09-17 15:07:00',1,1955,'2018-09-10 15:07:13','2018-09-16 17:50:46',1,''),
	(1277,420,31,354,35.00,'2018-09-10 15:07:00','2018-09-17 15:07:00',1,1642,'2018-09-10 15:07:13','2018-09-16 20:31:11',1,''),
	(1278,421,31,354,35.00,'2018-09-10 15:07:00','2018-09-17 15:07:00',1,1708,'2018-09-10 15:07:13','2018-09-16 20:31:11',1,''),
	(1279,420,30,354,35.00,'2018-09-10 15:07:00','2018-09-17 15:07:00',1,1686,'2018-09-10 15:07:14','2018-09-17 02:23:17',1,''),
	(1280,421,30,354,35.00,'2018-09-10 15:07:00','2018-09-17 15:07:00',1,1742,'2018-09-10 15:07:14','2018-09-17 02:23:17',1,''),
	(1281,420,29,354,35.00,'2018-09-10 15:07:00','2018-09-17 15:07:00',1,1620,'2018-09-10 15:07:14','2018-09-16 23:00:51',1,''),
	(1282,421,29,354,35.00,'2018-09-10 15:07:00','2018-09-17 15:07:00',1,2387,'2018-09-10 15:07:14','2018-09-16 23:00:51',1,''),
	(1283,420,28,354,35.00,'2018-09-10 15:07:00','2018-09-17 15:07:00',1,1670,'2018-09-10 15:07:14','2018-09-16 23:00:45',1,''),
	(1284,421,28,354,35.00,'2018-09-10 15:07:00','2018-09-17 15:07:00',1,2456,'2018-09-10 15:07:14','2018-09-16 23:00:45',1,''),
	(1285,420,27,354,35.00,'2018-09-10 15:07:00','2018-09-17 15:07:00',1,123,'2018-09-10 15:07:15','2018-09-10 18:44:43',1,''),
	(1286,421,27,354,35.00,'2018-09-10 15:07:00','2018-09-17 15:07:00',1,123,'2018-09-10 15:07:15','2018-09-10 18:44:43',1,''),
	(1287,420,26,354,35.00,'2018-09-10 15:07:00','2018-09-17 15:07:00',1,482,'2018-09-10 15:07:15','2018-09-16 16:36:33',1,''),
	(1288,421,26,354,35.00,'2018-09-10 15:07:00','2018-09-17 15:07:00',1,531,'2018-09-10 15:07:15','2018-09-16 16:36:33',1,''),
	(1289,420,25,354,35.00,'2018-09-10 15:07:00','2018-09-17 15:07:00',1,1704,'2018-09-10 15:07:15','2018-09-17 11:13:42',1,''),
	(1290,421,25,354,35.00,'2018-09-10 15:07:00','2018-09-17 15:07:00',1,2383,'2018-09-10 15:07:15','2018-09-17 11:13:42',1,''),
	(1291,420,24,354,35.00,'2018-09-10 15:07:00','2018-09-17 15:07:00',1,1608,'2018-09-10 15:07:15','2018-09-16 13:30:46',1,''),
	(1292,421,24,354,35.00,'2018-09-10 15:07:00','2018-09-17 15:07:00',1,2342,'2018-09-10 15:07:15','2018-09-16 13:30:46',1,''),
	(1293,420,23,354,35.00,'2018-09-10 15:07:00','2018-09-17 15:07:00',1,964,'2018-09-10 15:07:15','2018-09-15 09:34:22',1,''),
	(1294,421,23,354,35.00,'2018-09-10 15:07:00','2018-09-17 15:07:00',1,1386,'2018-09-10 15:07:15','2018-09-15 09:34:22',1,''),
	(1295,420,22,354,35.00,'2018-09-10 15:07:00','2018-09-17 15:07:00',1,1369,'2018-09-10 15:07:15','2018-09-15 14:50:56',1,''),
	(1296,421,22,354,35.00,'2018-09-10 15:07:00','2018-09-17 15:07:00',1,1866,'2018-09-10 15:07:15','2018-09-15 14:50:56',1,''),
	(1297,420,21,354,35.00,'2018-09-10 15:07:00','2018-09-17 15:07:00',1,5035,'2018-09-10 15:07:15','2018-09-17 00:00:09',1,''),
	(1298,421,21,354,35.00,'2018-09-10 15:07:00','2018-09-17 15:07:00',1,5182,'2018-09-10 15:07:15','2018-09-17 00:00:09',1,''),
	(1299,420,20,354,35.00,'2018-09-10 15:07:00','2018-09-17 15:07:00',1,1279,'2018-09-10 15:07:15','2018-09-16 19:55:46',1,''),
	(1300,421,20,354,35.00,'2018-09-10 15:07:00','2018-09-17 15:07:00',1,1880,'2018-09-10 15:07:15','2018-09-16 19:55:46',1,''),
	(1301,420,19,354,35.00,'2018-09-10 15:07:00','2018-09-17 15:07:00',1,1950,'2018-09-10 15:07:15','2018-09-16 11:59:32',1,''),
	(1302,421,19,354,35.00,'2018-09-10 15:07:00','2018-09-17 15:07:00',1,1986,'2018-09-10 15:07:15','2018-09-16 11:59:32',1,''),
	(1303,420,18,354,35.00,'2018-09-10 15:07:00','2018-09-17 15:07:00',1,2272,'2018-09-10 15:07:16','2018-09-17 00:01:12',1,''),
	(1304,421,18,354,35.00,'2018-09-10 15:07:00','2018-09-17 15:07:00',1,3167,'2018-09-10 15:07:16','2018-09-17 00:01:12',1,''),
	(1305,420,17,354,35.00,'2018-09-10 15:07:00','2018-09-17 15:07:00',1,1736,'2018-09-10 15:07:17','2018-09-16 21:54:59',1,''),
	(1306,421,17,354,35.00,'2018-09-10 15:07:00','2018-09-17 15:07:00',1,2377,'2018-09-10 15:07:17','2018-09-16 21:54:58',1,''),
	(1307,420,16,354,35.00,'2018-09-10 15:07:00','2018-09-17 15:07:00',1,2592,'2018-09-10 15:07:17','2018-09-16 21:30:46',1,''),
	(1308,421,16,354,35.00,'2018-09-10 15:07:00','2018-09-17 15:07:00',1,2675,'2018-09-10 15:07:17','2018-09-16 21:30:46',1,''),
	(1309,420,15,354,35.00,'2018-09-10 15:07:00','2018-09-17 15:07:00',1,1813,'2018-09-10 15:07:17','2018-09-16 21:33:58',1,''),
	(1310,421,15,354,35.00,'2018-09-10 15:07:00','2018-09-17 15:07:00',1,2541,'2018-09-10 15:07:17','2018-09-16 21:33:58',1,''),
	(1311,420,14,354,35.00,'2018-09-10 15:07:00','2018-09-17 15:07:00',1,3480,'2018-09-10 15:07:17','2018-09-16 21:51:01',1,''),
	(1312,421,14,354,35.00,'2018-09-10 15:07:00','2018-09-17 15:07:00',1,4737,'2018-09-10 15:07:17','2018-09-16 21:51:01',1,''),
	(1313,420,13,354,35.00,'2018-09-10 15:07:00','2018-09-17 15:07:00',1,7697,'2018-09-10 15:07:17','2018-09-16 17:25:31',1,''),
	(1314,421,13,354,35.00,'2018-09-10 15:07:00','2018-09-17 15:07:00',1,12458,'2018-09-10 15:07:17','2018-09-16 17:25:31',1,''),
	(1315,420,12,354,35.00,'2018-09-10 15:07:00','2018-09-17 15:07:00',1,380,'2018-09-10 15:07:17','2018-09-16 10:49:28',1,''),
	(1316,421,12,354,35.00,'2018-09-10 15:07:00','2018-09-17 15:07:00',1,546,'2018-09-10 15:07:17','2018-09-16 10:49:28',1,''),
	(1317,420,11,354,35.00,'2018-09-10 15:07:00','2018-09-17 15:07:00',1,1494,'2018-09-10 15:07:17','2018-09-16 19:30:46',1,''),
	(1318,421,11,354,35.00,'2018-09-10 15:07:00','2018-09-17 15:07:00',1,2118,'2018-09-10 15:07:17','2018-09-16 19:30:46',1,''),
	(1319,420,10,354,35.00,'2018-09-10 15:07:00','2018-09-17 15:07:00',1,3196,'2018-09-10 15:07:17','2018-09-17 08:00:59',1,''),
	(1320,421,10,354,35.00,'2018-09-10 15:07:00','2018-09-17 15:07:00',1,3375,'2018-09-10 15:07:17','2018-09-17 08:00:58',1,''),
	(1321,420,9,354,35.00,'2018-09-10 15:07:00','2018-09-17 15:07:00',1,9331,'2018-09-10 15:07:17','2018-09-17 11:17:49',1,''),
	(1322,421,9,354,35.00,'2018-09-10 15:07:00','2018-09-17 15:07:00',1,14647,'2018-09-10 15:07:17','2018-09-17 11:17:49',1,''),
	(1323,420,8,354,35.00,'2018-09-10 15:07:00','2018-09-17 15:07:00',1,1916,'2018-09-10 15:07:18','2018-09-16 21:26:36',1,''),
	(1324,421,8,354,35.00,'2018-09-10 15:07:00','2018-09-17 15:07:00',1,1978,'2018-09-10 15:07:18','2018-09-16 21:26:36',1,''),
	(1325,420,7,354,35.00,'2018-09-10 15:07:00','2018-09-17 15:07:00',1,1877,'2018-09-10 15:07:18','2018-09-17 10:12:04',1,''),
	(1326,421,7,354,35.00,'2018-09-10 15:07:00','2018-09-17 15:07:00',1,2627,'2018-09-10 15:07:18','2018-09-17 10:12:04',1,''),
	(1327,420,6,354,35.00,'2018-09-10 15:07:00','2018-09-17 15:07:00',1,435,'2018-09-10 15:07:18','2018-09-16 21:00:48',1,''),
	(1328,421,6,354,35.00,'2018-09-10 15:07:00','2018-09-17 15:07:00',1,497,'2018-09-10 15:07:18','2018-09-16 21:00:48',1,''),
	(1329,420,5,354,35.00,'2018-09-10 15:07:00','2018-09-17 15:07:00',1,9238,'2018-09-10 15:07:18','2018-09-16 22:42:36',1,''),
	(1330,421,5,354,35.00,'2018-09-10 15:07:00','2018-09-17 15:07:00',1,14626,'2018-09-10 15:07:18','2018-09-16 22:42:36',1,''),
	(1331,420,4,354,35.00,'2018-09-10 15:07:00','2018-09-17 15:07:00',1,2597,'2018-09-10 15:07:18','2018-09-16 21:30:40',1,''),
	(1332,421,4,354,35.00,'2018-09-10 15:07:00','2018-09-17 15:07:00',1,3675,'2018-09-10 15:07:18','2018-09-16 21:30:40',1,''),
	(1333,420,3,354,35.00,'2018-09-10 15:07:00','2018-09-17 15:07:00',1,70,'2018-09-10 15:07:18','2018-09-10 19:16:31',1,''),
	(1334,421,3,354,35.00,'2018-09-10 15:07:00','2018-09-17 15:07:00',1,70,'2018-09-10 15:07:18','2018-09-10 19:16:31',1,''),
	(1335,420,2,354,35.00,'2018-09-10 15:07:00','2018-09-17 15:07:00',1,1389,'2018-09-10 15:07:20','2018-09-16 16:36:15',1,''),
	(1336,421,2,354,35.00,'2018-09-10 15:07:00','2018-09-17 15:07:00',1,1500,'2018-09-10 15:07:20','2018-09-16 16:36:15',1,''),
	(1337,423,46,355,35.00,'2018-09-11 00:17:04','2018-09-18 00:17:04',1,2717,'2018-09-11 00:17:16','2018-09-16 23:46:04',1,''),
	(1338,424,46,355,35.00,'2018-09-11 00:17:04','2018-09-18 00:17:04',1,2717,'2018-09-11 00:17:16','2018-09-16 23:46:04',1,''),
	(1339,423,43,355,35.00,'2018-09-11 00:17:04','2018-09-18 00:17:04',1,1545,'2018-09-11 00:17:16','2018-09-16 20:25:08',1,''),
	(1340,424,43,355,35.00,'2018-09-11 00:17:04','2018-09-18 00:17:04',1,1545,'2018-09-11 00:17:16','2018-09-16 20:25:08',1,''),
	(1341,423,42,355,35.00,'2018-09-11 00:17:04','2018-09-18 00:17:04',1,2926,'2018-09-11 00:17:17','2018-09-16 23:55:46',1,''),
	(1342,424,42,355,35.00,'2018-09-11 00:17:04','2018-09-18 00:17:04',1,2926,'2018-09-11 00:17:17','2018-09-16 23:55:46',1,''),
	(1343,423,41,355,35.00,'2018-09-11 00:17:04','2018-09-18 00:17:04',1,1461,'2018-09-11 00:17:17','2018-09-16 16:36:24',1,''),
	(1344,424,41,355,35.00,'2018-09-11 00:17:04','2018-09-18 00:17:04',1,1461,'2018-09-11 00:17:17','2018-09-16 16:36:24',1,''),
	(1345,423,39,355,35.00,'2018-09-11 00:17:04','2018-09-18 00:17:04',1,926,'2018-09-11 00:17:17','2018-09-16 21:00:54',1,''),
	(1346,424,39,355,35.00,'2018-09-11 00:17:04','2018-09-18 00:17:04',1,926,'2018-09-11 00:17:17','2018-09-16 21:00:54',1,''),
	(1347,423,38,355,35.00,'2018-09-11 00:17:04','2018-09-18 00:17:04',1,1984,'2018-09-11 00:17:17','2018-09-16 22:00:47',1,''),
	(1348,424,38,355,35.00,'2018-09-11 00:17:04','2018-09-18 00:17:04',1,1984,'2018-09-11 00:17:17','2018-09-16 22:00:47',1,''),
	(1349,423,37,355,35.00,'2018-09-11 00:17:04','2018-09-18 00:17:04',1,2497,'2018-09-11 00:17:17','2018-09-16 20:23:02',1,''),
	(1350,424,37,355,35.00,'2018-09-11 00:17:04','2018-09-18 00:17:04',1,2497,'2018-09-11 00:17:17','2018-09-16 20:23:02',1,''),
	(1351,423,36,355,35.00,'2018-09-11 00:17:04','2018-09-18 00:17:04',1,2082,'2018-09-11 00:17:17','2018-09-17 03:05:24',1,''),
	(1352,424,36,355,35.00,'2018-09-11 00:17:04','2018-09-18 00:17:04',1,2082,'2018-09-11 00:17:17','2018-09-17 03:05:24',1,''),
	(1353,423,35,355,35.00,'2018-09-11 00:17:04','2018-09-18 00:17:04',1,2416,'2018-09-11 00:17:17','2018-09-16 21:00:48',1,''),
	(1354,424,35,355,35.00,'2018-09-11 00:17:04','2018-09-18 00:17:04',1,2416,'2018-09-11 00:17:17','2018-09-16 21:00:48',1,''),
	(1355,423,34,355,35.00,'2018-09-11 00:17:04','2018-09-18 00:17:04',1,2339,'2018-09-11 00:17:17','2018-09-16 21:06:06',1,''),
	(1356,424,34,355,35.00,'2018-09-11 00:17:04','2018-09-18 00:17:04',1,2339,'2018-09-11 00:17:17','2018-09-16 21:06:06',1,''),
	(1357,423,33,355,35.00,'2018-09-11 00:17:04','2018-09-18 00:17:04',1,1243,'2018-09-11 00:17:17','2018-09-16 21:05:42',1,''),
	(1358,424,33,355,35.00,'2018-09-11 00:17:04','2018-09-18 00:17:04',1,1243,'2018-09-11 00:17:17','2018-09-16 21:05:42',1,''),
	(1359,423,32,355,35.00,'2018-09-11 00:17:04','2018-09-18 00:17:04',1,1955,'2018-09-11 00:17:17','2018-09-16 17:50:46',1,''),
	(1360,424,32,355,35.00,'2018-09-11 00:17:04','2018-09-18 00:17:04',1,1955,'2018-09-11 00:17:17','2018-09-16 17:50:46',1,''),
	(1361,423,31,355,35.00,'2018-09-11 00:17:04','2018-09-18 00:17:04',1,1581,'2018-09-11 00:17:17','2018-09-16 20:31:11',1,''),
	(1362,424,31,355,35.00,'2018-09-11 00:17:04','2018-09-18 00:17:04',1,1581,'2018-09-11 00:17:17','2018-09-16 20:31:11',1,''),
	(1363,423,30,355,35.00,'2018-09-11 00:17:04','2018-09-18 00:17:04',1,1497,'2018-09-11 00:17:17','2018-09-17 02:23:17',1,''),
	(1364,424,30,355,35.00,'2018-09-11 00:17:04','2018-09-18 00:17:04',1,1497,'2018-09-11 00:17:17','2018-09-17 02:23:17',1,''),
	(1365,423,29,355,35.00,'2018-09-11 00:17:04','2018-09-18 00:17:04',1,2387,'2018-09-11 00:17:17','2018-09-16 23:00:51',1,''),
	(1366,424,29,355,35.00,'2018-09-11 00:17:04','2018-09-18 00:17:04',1,2387,'2018-09-11 00:17:17','2018-09-16 23:00:51',1,''),
	(1367,423,28,355,35.00,'2018-09-11 00:17:04','2018-09-18 00:17:04',1,2456,'2018-09-11 00:17:17','2018-09-16 23:00:45',1,''),
	(1368,424,28,355,35.00,'2018-09-11 00:17:04','2018-09-18 00:17:04',1,2456,'2018-09-11 00:17:17','2018-09-16 23:00:45',1,''),
	(1369,423,27,355,35.00,'2018-09-11 00:17:04','2018-09-18 00:17:04',1,0,'2018-09-11 00:17:17','2018-09-11 00:17:17',1,''),
	(1370,424,27,355,35.00,'2018-09-11 00:17:04','2018-09-18 00:17:04',1,0,'2018-09-11 00:17:17','2018-09-11 00:17:17',1,''),
	(1371,423,26,355,35.00,'2018-09-11 00:17:04','2018-09-18 00:17:04',1,531,'2018-09-11 00:17:17','2018-09-16 16:36:33',1,''),
	(1372,424,26,355,35.00,'2018-09-11 00:17:04','2018-09-18 00:17:04',1,531,'2018-09-11 00:17:17','2018-09-16 16:36:33',1,''),
	(1373,423,25,355,35.00,'2018-09-11 00:17:04','2018-09-18 00:17:04',1,2147,'2018-09-11 00:17:17','2018-09-17 11:13:42',1,''),
	(1374,424,25,355,35.00,'2018-09-11 00:17:04','2018-09-18 00:17:04',1,2147,'2018-09-11 00:17:17','2018-09-17 11:13:42',1,''),
	(1375,423,24,355,35.00,'2018-09-11 00:17:04','2018-09-18 00:17:04',1,2342,'2018-09-11 00:17:17','2018-09-16 13:30:46',1,''),
	(1376,424,24,355,35.00,'2018-09-11 00:17:04','2018-09-18 00:17:04',1,2342,'2018-09-11 00:17:17','2018-09-16 13:30:46',1,''),
	(1377,423,23,355,35.00,'2018-09-11 00:17:04','2018-09-18 00:17:04',1,1386,'2018-09-11 00:17:17','2018-09-15 09:34:22',1,''),
	(1378,424,23,355,35.00,'2018-09-11 00:17:04','2018-09-18 00:17:04',1,1386,'2018-09-11 00:17:17','2018-09-15 09:34:22',1,''),
	(1379,423,22,355,35.00,'2018-09-11 00:17:04','2018-09-18 00:17:04',1,1644,'2018-09-11 00:17:17','2018-09-15 14:50:56',1,''),
	(1380,424,22,355,35.00,'2018-09-11 00:17:04','2018-09-18 00:17:04',1,1644,'2018-09-11 00:17:17','2018-09-15 14:50:56',1,''),
	(1381,423,21,355,35.00,'2018-09-11 00:17:04','2018-09-18 00:17:04',1,4871,'2018-09-11 00:17:17','2018-09-17 00:00:09',1,''),
	(1382,424,21,355,35.00,'2018-09-11 00:17:04','2018-09-18 00:17:04',1,4871,'2018-09-11 00:17:17','2018-09-17 00:00:09',1,''),
	(1383,423,20,355,35.00,'2018-09-11 00:17:04','2018-09-18 00:17:04',1,1880,'2018-09-11 00:17:17','2018-09-16 19:55:46',1,''),
	(1384,424,20,355,35.00,'2018-09-11 00:17:04','2018-09-18 00:17:04',1,1880,'2018-09-11 00:17:17','2018-09-16 19:55:46',1,''),
	(1385,423,19,355,35.00,'2018-09-11 00:17:04','2018-09-18 00:17:04',1,1819,'2018-09-11 00:17:17','2018-09-16 11:59:32',1,''),
	(1386,424,19,355,35.00,'2018-09-11 00:17:04','2018-09-18 00:17:04',1,1819,'2018-09-11 00:17:17','2018-09-16 11:59:32',1,''),
	(1387,423,18,355,35.00,'2018-09-11 00:17:04','2018-09-18 00:17:04',1,2863,'2018-09-11 00:17:18','2018-09-17 00:01:12',1,''),
	(1388,424,18,355,35.00,'2018-09-11 00:17:04','2018-09-18 00:17:04',1,2863,'2018-09-11 00:17:18','2018-09-17 00:01:12',1,''),
	(1389,423,17,355,35.00,'2018-09-11 00:17:04','2018-09-18 00:17:04',1,2132,'2018-09-11 00:17:18','2018-09-16 21:54:58',1,''),
	(1390,424,17,355,35.00,'2018-09-11 00:17:04','2018-09-18 00:17:04',1,2132,'2018-09-11 00:17:18','2018-09-16 21:54:58',1,''),
	(1391,423,16,355,35.00,'2018-09-11 00:17:04','2018-09-18 00:17:04',1,2457,'2018-09-11 00:17:18','2018-09-16 21:30:46',1,''),
	(1392,424,16,355,35.00,'2018-09-11 00:17:04','2018-09-18 00:17:04',1,2457,'2018-09-11 00:17:18','2018-09-16 21:30:46',1,''),
	(1393,423,15,355,35.00,'2018-09-11 00:17:04','2018-09-18 00:17:04',1,2305,'2018-09-11 00:17:18','2018-09-16 21:33:58',1,''),
	(1394,424,15,355,35.00,'2018-09-11 00:17:04','2018-09-18 00:17:04',1,2305,'2018-09-11 00:17:18','2018-09-16 21:33:58',1,''),
	(1395,423,14,355,35.00,'2018-09-11 00:17:04','2018-09-18 00:17:04',1,4425,'2018-09-11 00:17:18','2018-09-16 21:51:01',1,''),
	(1396,424,14,355,35.00,'2018-09-11 00:17:04','2018-09-18 00:17:04',1,4425,'2018-09-11 00:17:18','2018-09-16 21:51:01',1,''),
	(1397,423,13,355,35.00,'2018-09-11 00:17:04','2018-09-18 00:17:04',1,12384,'2018-09-11 00:17:18','2018-09-16 17:25:31',1,''),
	(1398,424,13,355,35.00,'2018-09-11 00:17:04','2018-09-18 00:17:04',1,12384,'2018-09-11 00:17:18','2018-09-16 17:25:31',1,''),
	(1399,423,12,355,35.00,'2018-09-11 00:17:04','2018-09-18 00:17:04',1,546,'2018-09-11 00:17:18','2018-09-16 10:49:28',1,''),
	(1400,424,12,355,35.00,'2018-09-11 00:17:04','2018-09-18 00:17:04',1,546,'2018-09-11 00:17:18','2018-09-16 10:49:28',1,''),
	(1401,423,11,355,35.00,'2018-09-11 00:17:04','2018-09-18 00:17:04',1,2059,'2018-09-11 00:17:18','2018-09-16 19:30:46',1,''),
	(1402,424,11,355,35.00,'2018-09-11 00:17:04','2018-09-18 00:17:04',1,2059,'2018-09-11 00:17:18','2018-09-16 19:30:46',1,''),
	(1403,423,10,355,35.00,'2018-09-11 00:17:04','2018-09-18 00:17:04',1,3066,'2018-09-11 00:17:18','2018-09-17 08:00:58',1,''),
	(1404,424,10,355,35.00,'2018-09-11 00:17:04','2018-09-18 00:17:04',1,3066,'2018-09-11 00:17:18','2018-09-17 08:00:58',1,''),
	(1405,423,9,355,35.00,'2018-09-11 00:17:04','2018-09-18 00:17:04',1,14344,'2018-09-11 00:17:18','2018-09-17 11:17:49',1,''),
	(1406,424,9,355,35.00,'2018-09-11 00:17:04','2018-09-18 00:17:04',1,14344,'2018-09-11 00:17:18','2018-09-17 11:17:49',1,''),
	(1407,423,8,355,35.00,'2018-09-11 00:17:04','2018-09-18 00:17:04',1,1838,'2018-09-11 00:17:18','2018-09-16 21:26:36',1,''),
	(1408,424,8,355,35.00,'2018-09-11 00:17:04','2018-09-18 00:17:04',1,1838,'2018-09-11 00:17:18','2018-09-16 21:26:36',1,''),
	(1409,423,7,355,35.00,'2018-09-11 00:17:04','2018-09-18 00:17:04',1,2400,'2018-09-11 00:17:18','2018-09-17 10:12:04',1,''),
	(1410,424,7,355,35.00,'2018-09-11 00:17:04','2018-09-18 00:17:04',1,2400,'2018-09-11 00:17:18','2018-09-17 10:12:04',1,''),
	(1411,423,6,355,35.00,'2018-09-11 00:17:04','2018-09-18 00:17:04',1,497,'2018-09-11 00:17:18','2018-09-16 21:00:48',1,''),
	(1412,424,6,355,35.00,'2018-09-11 00:17:04','2018-09-18 00:17:04',1,497,'2018-09-11 00:17:18','2018-09-16 21:00:48',1,''),
	(1413,423,5,355,35.00,'2018-09-11 00:17:04','2018-09-18 00:17:04',1,14393,'2018-09-11 00:17:18','2018-09-16 22:42:36',1,''),
	(1414,424,5,355,35.00,'2018-09-11 00:17:04','2018-09-18 00:17:04',1,14393,'2018-09-11 00:17:18','2018-09-16 22:42:36',1,''),
	(1415,423,4,355,35.00,'2018-09-11 00:17:04','2018-09-18 00:17:04',1,3459,'2018-09-11 00:17:18','2018-09-16 21:30:40',1,''),
	(1416,424,4,355,35.00,'2018-09-11 00:17:04','2018-09-18 00:17:04',1,3459,'2018-09-11 00:17:18','2018-09-16 21:30:40',1,''),
	(1417,423,3,355,35.00,'2018-09-11 00:17:04','2018-09-18 00:17:04',1,0,'2018-09-11 00:17:18','2018-09-11 00:17:18',1,''),
	(1418,424,3,355,35.00,'2018-09-11 00:17:04','2018-09-18 00:17:04',1,0,'2018-09-11 00:17:18','2018-09-11 00:17:18',1,''),
	(1419,423,2,355,35.00,'2018-09-11 00:17:04','2018-09-18 00:17:04',1,1446,'2018-09-11 00:17:18','2018-09-16 16:36:15',1,''),
	(1420,424,2,355,35.00,'2018-09-11 00:17:04','2018-09-18 00:17:04',1,1446,'2018-09-11 00:17:18','2018-09-16 16:36:15',1,''),
	(1421,425,41,356,140.00,'2018-09-11 11:35:36','2018-09-18 11:35:36',1,1067,'2018-09-11 11:35:39','2018-09-16 16:36:24',1,''),
	(1422,425,2,356,140.00,'2018-09-11 11:35:36','2018-09-18 11:35:36',1,1196,'2018-09-11 11:35:39','2018-09-16 16:36:15',1,''),
	(1423,425,46,357,140.00,'2018-09-11 11:49:13','2018-09-18 11:49:13',1,1820,'2018-09-11 11:49:21','2018-09-16 23:46:04',1,''),
	(1424,425,43,357,140.00,'2018-09-11 11:49:13','2018-09-18 11:49:13',1,1047,'2018-09-11 11:49:21','2018-09-16 20:25:08',1,''),
	(1425,425,42,357,140.00,'2018-09-11 11:49:13','2018-09-18 11:49:13',1,1940,'2018-09-11 11:49:21','2018-09-16 23:55:46',1,''),
	(1426,425,39,357,140.00,'2018-09-11 11:49:13','2018-09-18 11:49:13',1,543,'2018-09-11 11:49:21','2018-09-16 21:00:54',1,''),
	(1427,425,37,357,140.00,'2018-09-11 11:49:13','2018-09-18 11:49:13',1,1649,'2018-09-11 11:49:21','2018-09-16 20:23:02',1,''),
	(1428,425,36,357,140.00,'2018-09-11 11:49:13','2018-09-18 11:49:13',1,1318,'2018-09-11 11:49:21','2018-09-17 03:05:24',1,''),
	(1429,425,32,357,140.00,'2018-09-11 11:49:13','2018-09-18 11:49:13',1,1343,'2018-09-11 11:49:22','2018-09-16 17:50:46',1,''),
	(1430,425,29,357,140.00,'2018-09-11 11:49:13','2018-09-18 11:49:13',1,1620,'2018-09-11 11:49:22','2018-09-16 23:00:51',1,''),
	(1431,425,28,357,140.00,'2018-09-11 11:49:13','2018-09-18 11:49:13',1,1670,'2018-09-11 11:49:22','2018-09-16 23:00:45',1,''),
	(1432,425,27,357,140.00,'2018-09-11 11:49:13','2018-09-18 11:49:13',1,0,'2018-09-11 11:49:22','2018-09-11 11:49:22',1,''),
	(1433,425,25,357,140.00,'2018-09-11 11:49:13','2018-09-18 11:49:13',1,1383,'2018-09-11 11:49:22','2018-09-17 11:13:42',1,''),
	(1434,425,24,357,140.00,'2018-09-11 11:49:13','2018-09-18 11:49:13',1,1608,'2018-09-11 11:49:22','2018-09-16 13:30:46',1,''),
	(1435,425,23,357,140.00,'2018-09-11 11:49:13','2018-09-18 11:49:13',1,964,'2018-09-11 11:49:22','2018-09-15 09:34:22',1,''),
	(1436,425,22,357,140.00,'2018-09-11 11:49:13','2018-09-18 11:49:13',1,1147,'2018-09-11 11:49:22','2018-09-15 14:50:56',1,''),
	(1437,425,20,357,140.00,'2018-09-11 11:49:13','2018-09-18 11:49:13',1,1279,'2018-09-11 11:49:22','2018-09-16 19:55:46',1,''),
	(1438,425,18,357,140.00,'2018-09-11 11:49:13','2018-09-18 11:49:13',1,1906,'2018-09-11 11:49:22','2018-09-17 00:01:12',1,''),
	(1439,425,17,357,140.00,'2018-09-11 11:49:13','2018-09-18 11:49:13',1,1347,'2018-09-11 11:49:22','2018-09-16 21:54:59',1,''),
	(1440,425,15,357,140.00,'2018-09-11 11:49:13','2018-09-18 11:49:13',1,1560,'2018-09-11 11:49:22','2018-09-16 21:33:58',1,''),
	(1441,425,14,357,140.00,'2018-09-11 11:49:13','2018-09-18 11:49:13',1,2773,'2018-09-11 11:49:22','2018-09-16 21:51:01',1,''),
	(1442,425,13,357,140.00,'2018-09-11 11:49:13','2018-09-18 11:49:13',1,7563,'2018-09-11 11:49:22','2018-09-16 17:25:31',1,''),
	(1443,425,12,357,140.00,'2018-09-11 11:49:13','2018-09-18 11:49:13',1,380,'2018-09-11 11:49:22','2018-09-16 10:49:28',1,''),
	(1444,425,11,357,140.00,'2018-09-11 11:49:13','2018-09-18 11:49:13',1,1329,'2018-09-11 11:49:22','2018-09-16 19:30:46',1,''),
	(1445,425,9,357,140.00,'2018-09-11 11:49:13','2018-09-18 11:49:13',1,8899,'2018-09-11 11:49:22','2018-09-17 11:17:49',1,''),
	(1446,425,7,357,140.00,'2018-09-11 11:49:13','2018-09-18 11:49:13',1,1572,'2018-09-11 11:49:22','2018-09-17 10:12:04',1,''),
	(1447,425,5,357,140.00,'2018-09-11 11:49:13','2018-09-18 11:49:13',1,8930,'2018-09-11 11:49:23','2018-09-16 22:42:36',1,''),
	(1448,425,4,357,140.00,'2018-09-11 11:49:13','2018-09-18 11:49:13',1,2282,'2018-09-11 11:49:23','2018-09-16 21:30:40',1,''),
	(1449,425,3,357,140.00,'2018-09-11 11:49:13','2018-09-18 11:49:13',1,0,'2018-09-11 11:49:24','2018-09-11 11:49:24',1,''),
	(1451,132,46,360,0.00,'2018-09-12 13:11:57','2018-09-26 13:11:57',1,2271,'2018-09-12 13:11:58','2018-09-16 23:46:04',1,''),
	(1452,132,42,360,0.00,'2018-09-12 13:11:57','2018-09-26 13:11:57',1,2314,'2018-09-12 13:11:58','2018-09-16 23:55:46',1,''),
	(1453,132,33,360,0.00,'2018-09-12 13:11:57','2018-09-26 13:11:57',1,914,'2018-09-12 13:11:58','2018-09-16 21:05:42',1,''),
	(1454,132,29,360,0.00,'2018-09-12 13:11:57','2018-09-26 13:11:57',1,2066,'2018-09-12 13:11:58','2018-09-16 23:00:51',1,''),
	(1458,471,46,370,0.00,'2018-09-13 20:38:31','2018-09-20 20:38:31',1,1540,'2018-09-13 20:38:33','2018-09-16 23:46:04',1,''),
	(1459,471,43,370,0.00,'2018-09-13 20:38:31','2018-09-20 20:38:31',1,586,'2018-09-13 20:38:33','2018-09-16 20:25:08',1,''),
	(1460,471,38,370,0.00,'2018-09-13 20:38:31','2018-09-20 20:38:31',1,1156,'2018-09-13 20:38:33','2018-09-16 22:00:47',1,''),
	(1461,471,36,370,0.00,'2018-09-13 20:38:31','2018-09-20 20:38:31',1,1027,'2018-09-13 20:38:33','2018-09-17 03:05:24',1,''),
	(1462,471,29,370,0.00,'2018-09-13 20:38:31','2018-09-20 20:38:31',1,1366,'2018-09-13 20:38:33','2018-09-16 23:00:51',1,''),
	(1463,471,24,370,0.00,'2018-09-13 20:38:31','2018-09-20 20:38:31',1,1193,'2018-09-13 20:38:33','2018-09-16 13:30:46',1,''),
	(1464,215,41,371,35.00,'2018-09-14 16:35:46','2018-09-21 16:35:46',1,402,'2018-09-14 16:35:49','2018-09-16 16:36:24',1,''),
	(1465,479,46,373,70.00,'2018-09-15 13:55:56','2018-09-22 13:55:56',1,515,'2018-09-15 13:56:07','2018-09-16 23:46:04',1,''),
	(1466,479,43,373,70.00,'2018-09-15 13:55:56','2018-09-22 13:55:56',1,314,'2018-09-15 13:56:07','2018-09-16 20:25:08',1,''),
	(1467,479,42,373,70.00,'2018-09-15 13:55:56','2018-09-22 13:55:56',1,528,'2018-09-15 13:56:07','2018-09-16 23:55:46',1,''),
	(1468,479,41,373,70.00,'2018-09-15 13:55:56','2018-09-22 13:55:56',1,252,'2018-09-15 13:56:07','2018-09-16 16:36:24',1,''),
	(1469,479,39,373,70.00,'2018-09-15 13:55:56','2018-09-22 13:55:56',1,413,'2018-09-15 13:56:07','2018-09-16 21:00:54',1,''),
	(1470,479,38,373,70.00,'2018-09-15 13:55:56','2018-09-22 13:55:56',1,539,'2018-09-15 13:56:07','2018-09-16 22:00:47',1,''),
	(1471,479,37,373,70.00,'2018-09-15 13:55:56','2018-09-22 13:55:56',1,410,'2018-09-15 13:56:07','2018-09-16 20:23:02',1,''),
	(1472,479,36,373,70.00,'2018-09-15 13:55:56','2018-09-22 13:55:56',1,481,'2018-09-15 13:56:07','2018-09-17 03:05:24',1,''),
	(1473,479,35,373,70.00,'2018-09-15 13:55:56','2018-09-22 13:55:56',1,509,'2018-09-15 13:56:07','2018-09-16 21:00:48',1,''),
	(1474,479,34,373,70.00,'2018-09-15 13:55:56','2018-09-22 13:55:56',1,599,'2018-09-15 13:56:07','2018-09-16 21:06:06',1,''),
	(1475,479,33,373,70.00,'2018-09-15 13:55:56','2018-09-22 13:55:56',1,141,'2018-09-15 13:56:08','2018-09-16 21:05:42',1,''),
	(1476,479,32,373,70.00,'2018-09-15 13:55:56','2018-09-22 13:55:56',1,248,'2018-09-15 13:56:08','2018-09-16 17:50:46',1,''),
	(1477,479,31,373,70.00,'2018-09-15 13:55:56','2018-09-22 13:55:56',1,460,'2018-09-15 13:56:08','2018-09-16 20:31:11',1,''),
	(1478,479,30,373,70.00,'2018-09-15 13:55:56','2018-09-22 13:55:56',1,394,'2018-09-15 13:56:08','2018-09-17 02:23:17',1,''),
	(1479,479,29,373,70.00,'2018-09-15 13:55:56','2018-09-22 13:55:56',1,480,'2018-09-15 13:56:08','2018-09-16 23:00:51',1,''),
	(1480,479,28,373,70.00,'2018-09-15 13:55:56','2018-09-22 13:55:56',1,481,'2018-09-15 13:56:08','2018-09-16 23:00:45',1,''),
	(1481,479,27,373,70.00,'2018-09-15 13:55:56','2018-09-22 13:55:56',1,0,'2018-09-15 13:56:08','2018-09-15 13:56:08',1,''),
	(1482,479,26,373,70.00,'2018-09-15 13:55:56','2018-09-22 13:55:56',1,342,'2018-09-15 13:56:08','2018-09-16 16:36:33',1,''),
	(1483,479,25,373,70.00,'2018-09-15 13:55:56','2018-09-22 13:55:56',1,379,'2018-09-15 13:56:09','2018-09-17 11:13:42',1,''),
	(1484,479,24,373,70.00,'2018-09-15 13:55:56','2018-09-22 13:55:56',1,295,'2018-09-15 13:56:09','2018-09-16 13:30:46',1,''),
	(1485,479,23,373,70.00,'2018-09-15 13:55:56','2018-09-22 13:55:56',1,0,'2018-09-15 13:56:10','2018-09-15 13:56:10',1,''),
	(1486,479,22,373,70.00,'2018-09-15 13:55:56','2018-09-22 13:55:56',1,20,'2018-09-15 13:56:10','2018-09-15 14:50:56',1,''),
	(1487,479,21,373,70.00,'2018-09-15 13:55:56','2018-09-22 13:55:56',1,1007,'2018-09-15 13:56:10','2018-09-17 00:00:09',1,''),
	(1488,479,20,373,70.00,'2018-09-15 13:55:56','2018-09-22 13:55:56',1,355,'2018-09-15 13:56:10','2018-09-16 19:55:46',1,''),
	(1489,479,19,373,70.00,'2018-09-15 13:55:56','2018-09-22 13:55:56',1,252,'2018-09-15 13:56:10','2018-09-16 11:59:32',1,''),
	(1490,479,18,373,70.00,'2018-09-15 13:55:56','2018-09-22 13:55:56',1,524,'2018-09-15 13:56:10','2018-09-17 00:01:12',1,''),
	(1491,479,17,373,70.00,'2018-09-15 13:55:56','2018-09-22 13:55:56',1,240,'2018-09-15 13:56:11','2018-09-16 21:54:59',1,''),
	(1492,479,16,373,70.00,'2018-09-15 13:55:56','2018-09-22 13:55:56',1,587,'2018-09-15 13:56:11','2018-09-16 21:30:46',1,''),
	(1493,479,15,373,70.00,'2018-09-15 13:55:56','2018-09-22 13:55:56',1,406,'2018-09-15 13:56:11','2018-09-16 21:33:58',1,''),
	(1494,479,14,373,70.00,'2018-09-15 13:55:56','2018-09-22 13:55:56',1,441,'2018-09-15 13:56:11','2018-09-16 21:51:01',1,''),
	(1495,479,13,373,70.00,'2018-09-15 13:55:56','2018-09-22 13:55:56',1,7217,'2018-09-15 13:56:11','2018-09-16 17:25:31',1,''),
	(1496,479,12,373,70.00,'2018-09-15 13:55:56','2018-09-22 13:55:56',1,20,'2018-09-15 13:56:11','2018-09-16 10:49:28',1,''),
	(1497,479,11,373,70.00,'2018-09-15 13:55:56','2018-09-22 13:55:56',1,366,'2018-09-15 13:56:11','2018-09-16 19:30:46',1,''),
	(1498,479,10,373,70.00,'2018-09-15 13:55:56','2018-09-22 13:55:56',1,1257,'2018-09-15 13:56:11','2018-09-17 08:00:59',1,''),
	(1499,479,9,373,70.00,'2018-09-15 13:55:56','2018-09-22 13:55:56',1,7319,'2018-09-15 13:56:11','2018-09-17 11:17:49',1,''),
	(1500,479,8,373,70.00,'2018-09-15 13:55:56','2018-09-22 13:55:56',1,427,'2018-09-15 13:56:13','2018-09-16 21:26:36',1,''),
	(1501,479,7,373,70.00,'2018-09-15 13:55:56','2018-09-22 13:55:56',1,394,'2018-09-15 13:56:14','2018-09-17 10:12:04',1,''),
	(1502,479,6,373,70.00,'2018-09-15 13:55:56','2018-09-22 13:55:56',1,435,'2018-09-15 13:56:14','2018-09-16 21:00:48',1,''),
	(1503,479,5,373,70.00,'2018-09-15 13:55:56','2018-09-22 13:55:56',1,7436,'2018-09-15 13:56:15','2018-09-16 22:42:36',1,''),
	(1504,479,4,373,70.00,'2018-09-15 13:55:56','2018-09-22 13:55:56',1,688,'2018-09-15 13:56:15','2018-09-16 21:30:40',1,''),
	(1505,479,3,373,70.00,'2018-09-15 13:55:56','2018-09-22 13:55:56',1,0,'2018-09-15 13:56:16','2018-09-15 13:56:16',1,''),
	(1506,479,2,373,70.00,'2018-09-15 13:55:56','2018-09-22 13:55:56',1,256,'2018-09-15 13:56:16','2018-09-16 16:36:15',1,''),
	(1507,480,32,378,0.00,'2018-09-15 16:21:25','2018-09-22 16:21:25',1,365,'2018-09-15 16:21:28','2018-09-16 17:50:46',1,''),
	(1508,480,37,375,1.67,'2018-09-15 16:21:58','2018-09-22 16:21:58',1,561,'2018-09-15 16:22:01','2018-09-16 20:23:02',1,''),
	(1509,480,34,375,1.67,'2018-09-15 16:21:58','2018-09-22 16:21:58',1,601,'2018-09-15 16:22:01','2018-09-16 21:06:06',1,''),
	(1510,480,33,375,1.67,'2018-09-15 16:21:58','2018-09-22 16:21:58',1,125,'2018-09-15 16:22:01','2018-09-16 21:05:42',1,''),
	(1511,480,26,375,1.67,'2018-09-15 16:21:58','2018-09-22 16:21:58',1,308,'2018-09-15 16:22:01','2018-09-16 16:36:33',1,''),
	(1512,480,25,375,1.67,'2018-09-15 16:21:58','2018-09-22 16:21:58',1,542,'2018-09-15 16:22:01','2018-09-17 11:13:42',1,''),
	(1513,480,23,375,1.67,'2018-09-15 16:21:58','2018-09-22 16:21:58',1,0,'2018-09-15 16:22:01','2018-09-15 16:22:01',1,''),
	(1514,480,17,375,1.67,'2018-09-15 16:21:58','2018-09-22 16:21:58',1,323,'2018-09-15 16:22:01','2018-09-16 21:54:58',1,''),
	(1515,480,16,375,1.67,'2018-09-15 16:21:58','2018-09-22 16:21:58',1,587,'2018-09-15 16:22:01','2018-09-16 21:30:46',1,''),
	(1516,480,14,375,1.67,'2018-09-15 16:21:58','2018-09-22 16:21:58',1,613,'2018-09-15 16:22:01','2018-09-16 21:51:01',1,''),
	(1517,462,18,381,0.00,'2018-09-15 18:29:53','2018-09-22 18:29:53',1,667,'2018-09-15 18:29:55','2018-09-17 00:01:12',1,''),
	(1518,486,46,382,35.00,'2018-09-15 18:35:51','2018-09-22 18:35:51',1,653,'2018-09-15 18:35:52','2018-09-16 23:46:04',1,''),
	(1519,486,43,382,35.00,'2018-09-15 18:35:51','2018-09-22 18:35:51',1,437,'2018-09-15 18:35:52','2018-09-16 20:25:08',1,''),
	(1520,486,42,382,35.00,'2018-09-15 18:35:51','2018-09-22 18:35:51',1,671,'2018-09-15 18:35:52','2018-09-16 23:55:46',1,''),
	(1521,486,41,382,35.00,'2018-09-15 18:35:51','2018-09-22 18:35:51',1,266,'2018-09-15 18:35:52','2018-09-16 16:36:24',1,''),
	(1522,486,39,382,35.00,'2018-09-15 18:35:51','2018-09-22 18:35:51',1,491,'2018-09-15 18:35:52','2018-09-16 21:00:54',1,''),
	(1523,486,38,382,35.00,'2018-09-15 18:35:51','2018-09-22 18:35:51',1,459,'2018-09-15 18:35:52','2018-09-16 22:00:47',1,''),
	(1524,486,34,382,35.00,'2018-09-15 18:35:51','2018-09-22 18:35:51',1,525,'2018-09-15 18:35:52','2018-09-16 21:06:06',1,''),
	(1525,526,41,390,35.00,'2018-09-17 10:37:27','2018-09-24 10:37:27',1,0,'2018-09-17 10:37:29','2018-09-17 10:37:29',1,'');

/*!40000 ALTER TABLE `plays` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table posters
# ------------------------------------------------------------

DROP TABLE IF EXISTS `posters`;

CREATE TABLE `posters` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `original_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '海报原图',
  `watermark_size` int(11) NOT NULL DEFAULT '150' COMMENT '水印大小(二维码大小)',
  `x` int(11) NOT NULL DEFAULT '0' COMMENT '横坐标',
  `y` int(11) NOT NULL DEFAULT '0' COMMENT '纵坐标',
  `font_size` int(11) NOT NULL DEFAULT '11' COMMENT '字体大小',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '未使用0|使用中1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `posters` WRITE;
/*!40000 ALTER TABLE `posters` DISABLE KEYS */;

INSERT INTO `posters` (`id`, `original_img`, `watermark_size`, `x`, `y`, `font_size`, `status`, `created_at`, `updated_at`)
VALUES
	(1,'original_poster/gkNpELH6w0XtYEAlStycFi4RHOzUcRVoX3KFrvZm.jpeg',100,100,200,10,1,'2018-09-04 11:08:44','2018-09-04 11:09:17');

/*!40000 ALTER TABLE `posters` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table store_display_consume_orders
# ------------------------------------------------------------

DROP TABLE IF EXISTS `store_display_consume_orders`;

CREATE TABLE `store_display_consume_orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `store_display_detail_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `money` double(8,2) NOT NULL COMMENT '消费金额',
  `sale_money` double(8,2) NOT NULL COMMENT '优惠后金额',
  `coupon_ids` json NOT NULL COMMENT '使用的优惠券列表',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `store_display_consume_orders_store_id_index` (`store_id`),
  KEY `store_display_consume_orders_store_display_detail_id_index` (`store_display_detail_id`),
  KEY `store_display_consume_orders_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `store_display_consume_orders` WRITE;
/*!40000 ALTER TABLE `store_display_consume_orders` DISABLE KEYS */;

INSERT INTO `store_display_consume_orders` (`id`, `store_id`, `store_display_detail_id`, `user_id`, `money`, `sale_money`, `coupon_ids`, `created_at`, `updated_at`)
VALUES
	(6,53,1,53,200.00,174.00,'[2]','2018-11-03 14:46:58','2018-11-03 14:46:58');

/*!40000 ALTER TABLE `store_display_consume_orders` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table store_display_coupon_user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `store_display_coupon_user`;

CREATE TABLE `store_display_coupon_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `store_display_coupon_id` int(11) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0可使用状态|1已使用|-1过期',
  `expire_at` date NOT NULL COMMENT '到期日期',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `random` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `store_display_coupon_users_user_id_index` (`user_id`),
  KEY `store_display_coupon_users_store_display_coupon_id_index` (`store_display_coupon_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `store_display_coupon_user` WRITE;
/*!40000 ALTER TABLE `store_display_coupon_user` DISABLE KEYS */;

INSERT INTO `store_display_coupon_user` (`id`, `user_id`, `store_display_coupon_id`, `type`, `expire_at`, `created_at`, `updated_at`, `random`)
VALUES
	(1,53,2,0,'2018-11-29','2018-10-30 13:38:33','2018-11-01 15:11:52','452341'),
	(2,53,4,1,'2018-11-29','2018-10-30 13:38:42','2018-11-03 14:46:58','994321'),
	(3,53,26,0,'2018-12-07','2018-11-07 17:18:06','2018-11-07 17:18:06','173683'),
	(4,53,25,0,'2018-12-07','2018-11-07 17:19:16','2018-11-07 17:19:16','338182');

/*!40000 ALTER TABLE `store_display_coupon_user` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table store_display_coupons
# ------------------------------------------------------------

DROP TABLE IF EXISTS `store_display_coupons`;

CREATE TABLE `store_display_coupons` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL COMMENT '商户用户ID',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '标题',
  `valid_term` int(11) NOT NULL COMMENT '有效期限（天）',
  `money` double(8,2) NOT NULL COMMENT '金额',
  `min_money_limit` double(8,2) NOT NULL DEFAULT '0.00' COMMENT '金额最低要求',
  `is_overlay` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否可叠加',
  `is_show` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否显示',
  `position_limit` int(11) NOT NULL DEFAULT '0' COMMENT '领取数量限制',
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '类型：PBD(满减) | discount(折扣)',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_destroy` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `store_display_coupons_store_id_index` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `store_display_coupons` WRITE;
/*!40000 ALTER TABLE `store_display_coupons` DISABLE KEYS */;

INSERT INTO `store_display_coupons` (`id`, `store_id`, `title`, `valid_term`, `money`, `min_money_limit`, `is_overlay`, `is_show`, `position_limit`, `type`, `created_at`, `updated_at`, `is_destroy`)
VALUES
	(2,53,'折扣券',30,8.70,200.00,0,1,10,'discount','2018-10-27 15:18:45','2018-10-27 15:18:45',0),
	(4,53,'满减券',30,100.00,0.00,0,1,0,'PBD','2018-10-27 15:17:35','2018-10-27 15:17:35',0),
	(16,53,'满减券',30,100.00,0.00,0,1,0,'PBD','2018-10-27 15:17:35','2018-10-27 15:17:35',0),
	(17,53,'满减券',30,100.00,0.00,0,1,0,'PBD','2018-10-27 15:17:35','2018-10-27 15:17:35',0),
	(18,53,'满减券',30,100.00,0.00,0,1,0,'PBD','2018-10-27 15:17:35','2018-10-27 15:17:35',0),
	(22,53,'消息测试券',30,100.00,0.00,0,1,0,'PBD','2018-10-31 14:19:56','2018-10-31 14:19:56',0),
	(23,53,'消息测试券',30,100.00,0.00,0,1,0,'PBD','2018-10-31 14:21:55','2018-10-31 14:21:55',0),
	(24,53,'消息测试券',30,8.00,0.00,0,1,0,'discount','2018-10-31 14:22:22','2018-10-31 14:22:22',0),
	(25,53,'消息车速超',30,100.00,0.00,0,1,0,'PBD','2018-10-31 15:49:03','2018-10-31 15:49:03',0),
	(26,53,'消息车速超',30,100.00,0.00,0,1,0,'PBD','2018-10-31 15:49:06','2018-10-31 15:49:06',0);

/*!40000 ALTER TABLE `store_display_coupons` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table store_display_details
# ------------------------------------------------------------

DROP TABLE IF EXISTS `store_display_details`;

CREATE TABLE `store_display_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '商户名',
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '商户地址',
  `industry_id` int(11) NOT NULL COMMENT '行业分类',
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '联系人',
  `tel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '电话',
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '经度',
  `latitude` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '纬度',
  `poiname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'POI名称',
  `poiaddress` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'POI地址',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '详情',
  `apv_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '审核状态: 0待审核|1审核通过|-1审核失败',
  `apv_result` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '审核结果',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `pv` int(11) NOT NULL DEFAULT '0' COMMENT '页面访问量',
  `avg_evaluation` int(11) NOT NULL DEFAULT '0' COMMENT '评价评价分',
  PRIMARY KEY (`id`),
  KEY `store_display_details_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `store_display_details` WRITE;
/*!40000 ALTER TABLE `store_display_details` DISABLE KEYS */;

INSERT INTO `store_display_details` (`id`, `user_id`, `name`, `address`, `industry_id`, `contact`, `tel`, `longitude`, `latitude`, `poiname`, `poiaddress`, `content`, `apv_status`, `apv_result`, `created_at`, `updated_at`, `pv`, `avg_evaluation`)
VALUES
	(1,53,'开看看','1909090909009',1,'1sfd','18857655087','121.38599','28.3718','温岭市政府','浙江省台州市温岭市人民东路258号','<p>kjlkjlkj</p>',1,'','2018-10-26 10:55:55','2018-11-07 17:19:24',31,0);

/*!40000 ALTER TABLE `store_display_details` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table store_display_evaluations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `store_display_evaluations`;

CREATE TABLE `store_display_evaluations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `store_display_detail_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `score` int(11) NOT NULL DEFAULT '5' COMMENT '评分：最高为5分',
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '评价内容',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `store_display_evaluations_store_display_detail_id_index` (`store_display_detail_id`),
  KEY `store_display_evaluations_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table store_display_followers
# ------------------------------------------------------------

DROP TABLE IF EXISTS `store_display_followers`;

CREATE TABLE `store_display_followers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `follower_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `store_display_followers_user_id_index` (`user_id`),
  KEY `store_display_followers_follower_id_index` (`follower_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `store_display_followers` WRITE;
/*!40000 ALTER TABLE `store_display_followers` DISABLE KEYS */;

INSERT INTO `store_display_followers` (`id`, `user_id`, `follower_id`, `created_at`, `updated_at`)
VALUES
	(7,53,53,NULL,NULL);

/*!40000 ALTER TABLE `store_display_followers` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table store_display_orders
# ------------------------------------------------------------

DROP TABLE IF EXISTS `store_display_orders`;

CREATE TABLE `store_display_orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `trade_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '订单号',
  `months` int(11) NOT NULL COMMENT '续费月数',
  `price` int(11) NOT NULL COMMENT '续费价格（元/月)',
  `pay_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '支付方式',
  `amount` double(8,2) NOT NULL DEFAULT '0.00' COMMENT '订单总额',
  `sale` double(8,2) NOT NULL DEFAULT '0.00' COMMENT '优惠金额',
  `pay` double(8,2) NOT NULL DEFAULT '0.00' COMMENT '支付金额',
  `coupon_ids` json NOT NULL COMMENT '使用的优惠券列表',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '状态：0支付中|1支付完成',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `store_display_orders_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `store_display_orders` WRITE;
/*!40000 ALTER TABLE `store_display_orders` DISABLE KEYS */;

INSERT INTO `store_display_orders` (`id`, `user_id`, `trade_code`, `months`, `price`, `pay_method`, `amount`, `sale`, `pay`, `coupon_ids`, `status`, `created_at`, `updated_at`)
VALUES
	(3,53,'2018102313211791759',12,20,'coin',240.00,0.00,240.00,'[]',1,'2018-10-23 13:21:17','2018-10-23 13:21:17'),
	(4,53,'2018102314084300734',12,20,'balance',240.00,0.00,240.00,'[]',1,'2018-10-23 14:08:43','2018-10-23 14:08:43'),
	(5,53,'2018102314091370980',12,20,'coin',240.00,0.00,240.00,'[]',1,'2018-10-23 14:09:13','2018-10-23 14:09:13');

/*!40000 ALTER TABLE `store_display_orders` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table store_displays
# ------------------------------------------------------------

DROP TABLE IF EXISTS `store_displays`;

CREATE TABLE `store_displays` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否开通',
  `due_time` datetime DEFAULT NULL COMMENT '服务到期时间',
  `renew_price` int(11) NOT NULL DEFAULT '0' COMMENT '续费价格',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `store_displays_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `store_displays` WRITE;
/*!40000 ALTER TABLE `store_displays` DISABLE KEYS */;

INSERT INTO `store_displays` (`id`, `user_id`, `is_active`, `due_time`, `renew_price`, `created_at`, `updated_at`)
VALUES
	(2,53,1,'2021-10-21 14:42:26',20,'2018-10-20 14:42:26','2018-10-23 14:09:13');

/*!40000 ALTER TABLE `store_displays` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table system_funds
# ------------------------------------------------------------

DROP TABLE IF EXISTS `system_funds`;

CREATE TABLE `system_funds` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `money` double(8,2) NOT NULL COMMENT '金额',
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '类型',
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '描述',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `system_funds` WRITE;
/*!40000 ALTER TABLE `system_funds` DISABLE KEYS */;

INSERT INTO `system_funds` (`id`, `money`, `type`, `desc`, `created_at`, `updated_at`)
VALUES
	(1,0.00,'order','广告收益: 设备号「YB000018」','2018-08-16 16:08:48','2018-08-16 16:08:48'),
	(2,0.00,'order','广告收益: 设备号「YB000003」','2018-08-16 16:16:01','2018-08-16 16:16:01'),
	(3,0.00,'order','广告收益: 设备号「YB000019」','2018-08-16 16:24:13','2018-08-16 16:24:13'),
	(4,0.00,'order','广告收益: 设备号「YB000020」','2018-08-16 17:05:08','2018-08-16 17:05:08'),
	(5,0.00,'order','广告收益: 设备号「YB000012」','2018-08-16 17:08:39','2018-08-16 17:08:39'),
	(6,0.00,'order','广告收益: 设备号「YB000013」','2018-08-16 17:08:39','2018-08-16 17:08:39'),
	(7,0.00,'order','广告收益: 设备号「YB000021」','2018-08-16 17:09:48','2018-08-16 17:09:48'),
	(8,0.00,'order','广告收益: 设备号「YB000016」','2018-08-16 17:40:41','2018-08-16 17:40:41'),
	(9,0.00,'order','广告收益: 设备号「YB000022」','2018-08-16 17:57:16','2018-08-16 17:57:16'),
	(10,0.00,'order','广告收益: 设备号「YB000011」','2018-08-16 18:05:26','2018-08-16 18:05:26'),
	(11,0.00,'order','广告收益: 设备号「YB000015」','2018-08-16 18:29:12','2018-08-16 18:29:12'),
	(12,0.00,'order','广告收益: 设备号「YB000023」','2018-08-16 19:02:01','2018-08-16 19:02:01'),
	(13,0.00,'order','广告收益: 设备号「YB000024」','2018-08-16 19:33:29','2018-08-16 19:33:29'),
	(14,0.00,'order','广告收益: 设备号「YB000018」','2018-08-16 20:22:19','2018-08-16 20:22:19'),
	(15,0.00,'order','广告收益: 设备号「YB000010」','2018-08-16 20:22:46','2018-08-16 20:22:46'),
	(16,0.00,'order','广告收益: 设备号「YB000025」','2018-08-16 21:00:48','2018-08-16 21:00:48'),
	(17,0.00,'order','广告收益: 设备号「YB000008」','2018-08-16 21:07:28','2018-08-16 21:07:28'),
	(18,0.00,'order','广告收益: 设备号「YB000025」','2018-08-16 21:13:01','2018-08-16 21:13:01'),
	(19,0.00,'order','广告收益: 设备号「YB000004」','2018-08-16 23:37:04','2018-08-16 23:37:04'),
	(20,0.00,'order','广告收益: 设备号「YB000003」','2018-08-16 23:37:04','2018-08-16 23:37:04'),
	(21,0.00,'order','广告收益: 设备号「YB000008」','2018-08-16 23:39:52','2018-08-16 23:39:52'),
	(22,0.00,'order','广告收益: 设备号「YB000027」','2018-08-17 11:33:09','2018-08-17 11:33:09'),
	(23,0.00,'order','广告收益: 设备号「YB000028」','2018-08-17 11:58:29','2018-08-17 11:58:29'),
	(24,0.00,'order','广告收益: 设备号「YB000029」','2018-08-17 12:33:39','2018-08-17 12:33:39'),
	(25,0.00,'order','广告收益: 设备号「YB000020」','2018-08-17 13:15:28','2018-08-17 13:15:28'),
	(26,0.00,'order','广告收益: 设备号「YB000020」','2018-08-17 13:32:40','2018-08-17 13:32:40'),
	(27,0.00,'order','广告收益: 设备号「YB000030」','2018-08-17 14:31:18','2018-08-17 14:31:18'),
	(28,0.00,'order','广告收益: 设备号「YB000020」','2018-08-17 14:54:47','2018-08-17 14:54:47'),
	(29,0.00,'order','广告收益: 设备号「YB000031」','2018-08-17 15:20:26','2018-08-17 15:20:26'),
	(30,0.00,'order','广告收益: 设备号「YB000032」','2018-08-17 15:20:47','2018-08-17 15:20:47'),
	(31,0.00,'order','广告收益: 设备号「YB000023」','2018-08-17 16:32:13','2018-08-17 16:32:13'),
	(32,0.00,'order','广告收益: 设备号「YB000020」','2018-08-17 16:32:13','2018-08-17 16:32:13'),
	(33,0.00,'order','广告收益: 设备号「YB000003」','2018-08-17 16:37:23','2018-08-17 16:37:23'),
	(34,0.00,'order','广告收益: 设备号「YB000033」','2018-08-17 17:37:40','2018-08-17 17:37:40'),
	(35,0.00,'order','广告收益: 设备号「YB000019」','2018-08-17 17:40:41','2018-08-17 17:40:41'),
	(36,85.00,'order','广告收益: 设备号「YB000024」','2018-08-17 17:41:41','2018-08-17 17:41:41'),
	(37,0.00,'order','广告收益: 设备号「YB000019」','2018-08-17 17:44:51','2018-08-17 17:44:51'),
	(38,0.00,'order','广告收益: 设备号「YB000034」','2018-08-17 18:41:34','2018-08-17 18:41:34'),
	(39,0.00,'order','广告收益: 设备号「YB000034」','2018-08-17 18:44:01','2018-08-17 18:44:01'),
	(40,0.00,'order','广告收益: 设备号「YB000034」','2018-08-17 18:52:04','2018-08-17 18:52:04'),
	(41,0.00,'order','广告收益: 设备号「YB000034」','2018-08-17 20:30:45','2018-08-17 20:30:45'),
	(42,0.00,'order','广告收益: 设备号「YB000036」','2018-08-17 20:44:02','2018-08-17 20:44:02'),
	(43,35.00,'order','广告收益: 设备号「YB000038」','2018-08-17 21:39:27','2018-08-17 21:39:27'),
	(44,0.00,'order','广告收益: 设备号「YB000038」','2018-08-17 21:40:51','2018-08-17 21:40:51'),
	(45,0.00,'order','广告收益: 设备号「YB000004」','2018-08-18 14:08:17','2018-08-18 14:08:17'),
	(46,0.00,'order','广告收益: 设备号「YB000003」','2018-08-18 14:08:17','2018-08-18 14:08:17'),
	(47,0.00,'order','广告收益: 设备号「YB000004」','2018-08-18 14:49:18','2018-08-18 14:49:18'),
	(48,0.00,'order','广告收益: 设备号「YB000003」','2018-08-18 14:49:18','2018-08-18 14:49:18'),
	(49,0.00,'order','广告收益: 设备号「YB000023」','2018-08-18 14:49:33','2018-08-18 14:49:33'),
	(50,0.00,'order','广告收益: 设备号「YB000038」','2018-08-18 18:53:08','2018-08-18 18:53:08'),
	(51,0.00,'order','广告收益: 设备号「YB000037」','2018-08-18 18:53:08','2018-08-18 18:53:08'),
	(52,0.00,'order','广告收益: 设备号「YB000036」','2018-08-18 18:53:08','2018-08-18 18:53:08'),
	(53,0.00,'order','广告收益: 设备号「YB000035」','2018-08-18 18:53:08','2018-08-18 18:53:08'),
	(54,0.00,'order','广告收益: 设备号「YB000034」','2018-08-18 18:53:08','2018-08-18 18:53:08'),
	(55,0.00,'order','广告收益: 设备号「YB000033」','2018-08-18 18:53:08','2018-08-18 18:53:08'),
	(56,0.00,'order','广告收益: 设备号「YB000032」','2018-08-18 18:53:08','2018-08-18 18:53:08'),
	(57,0.00,'order','广告收益: 设备号「YB000031」','2018-08-18 18:53:08','2018-08-18 18:53:08'),
	(58,0.00,'order','广告收益: 设备号「YB000030」','2018-08-18 18:53:08','2018-08-18 18:53:08'),
	(59,0.00,'order','广告收益: 设备号「YB000029」','2018-08-18 18:53:08','2018-08-18 18:53:08'),
	(60,0.00,'order','广告收益: 设备号「YB000028」','2018-08-18 18:53:08','2018-08-18 18:53:08'),
	(61,0.00,'order','广告收益: 设备号「YB000027」','2018-08-18 18:53:08','2018-08-18 18:53:08'),
	(62,0.00,'order','广告收益: 设备号「YB000008」','2018-08-18 18:53:08','2018-08-18 18:53:08'),
	(63,0.00,'order','广告收益: 设备号「YB000025」','2018-08-18 18:53:08','2018-08-18 18:53:08'),
	(64,0.00,'order','广告收益: 设备号「YB000010」','2018-08-18 18:53:08','2018-08-18 18:53:08'),
	(65,0.00,'order','广告收益: 设备号「YB000024」','2018-08-18 18:53:08','2018-08-18 18:53:08'),
	(66,0.00,'order','广告收益: 设备号「YB000023」','2018-08-18 18:53:08','2018-08-18 18:53:08'),
	(67,0.00,'order','广告收益: 设备号「YB000015」','2018-08-18 18:53:08','2018-08-18 18:53:08'),
	(68,0.00,'order','广告收益: 设备号「YB000011」','2018-08-18 18:53:08','2018-08-18 18:53:08'),
	(69,0.00,'order','广告收益: 设备号「YB000022」','2018-08-18 18:53:08','2018-08-18 18:53:08'),
	(70,0.00,'order','广告收益: 设备号「YB000016」','2018-08-18 18:53:08','2018-08-18 18:53:08'),
	(71,0.00,'order','广告收益: 设备号「YB000021」','2018-08-18 18:53:08','2018-08-18 18:53:08'),
	(72,0.00,'order','广告收益: 设备号「YB000020」','2018-08-18 18:53:08','2018-08-18 18:53:08'),
	(73,0.00,'order','广告收益: 设备号「YB000019」','2018-08-18 18:53:08','2018-08-18 18:53:08'),
	(74,0.00,'order','广告收益: 设备号「YB000018」','2018-08-18 18:53:08','2018-08-18 18:53:08'),
	(75,0.00,'order','广告收益: 设备号「YB000009」','2018-08-18 18:53:08','2018-08-18 18:53:08'),
	(76,0.00,'order','广告收益: 设备号「YB000012」','2018-08-18 18:53:08','2018-08-18 18:53:08'),
	(77,0.00,'order','广告收益: 设备号「YB000013」','2018-08-18 18:53:08','2018-08-18 18:53:08'),
	(78,0.00,'order','广告收益: 设备号「YB000035」','2018-08-19 10:28:09','2018-08-19 10:28:09'),
	(79,0.00,'order','广告收益: 设备号「YB000039」','2018-08-19 10:45:00','2018-08-19 10:45:00'),
	(80,0.00,'order','广告收益: 设备号「YB000039」','2018-08-19 10:45:12','2018-08-19 10:45:12'),
	(81,0.00,'order','广告收益: 设备号「YB000041」','2018-08-19 12:04:06','2018-08-19 12:04:06'),
	(82,0.00,'order','广告收益: 设备号「YB000041」','2018-08-19 13:37:38','2018-08-19 13:37:38'),
	(83,0.00,'order','广告收益: 设备号「YB000040」','2018-08-19 13:37:38','2018-08-19 13:37:38'),
	(84,0.00,'order','广告收益: 设备号「YB000039」','2018-08-19 13:37:38','2018-08-19 13:37:38'),
	(85,0.00,'order','广告收益: 设备号「YB000038」','2018-08-19 13:37:38','2018-08-19 13:37:38'),
	(86,0.00,'order','广告收益: 设备号「YB000037」','2018-08-19 13:37:38','2018-08-19 13:37:38'),
	(87,0.00,'order','广告收益: 设备号「YB000036」','2018-08-19 13:37:38','2018-08-19 13:37:38'),
	(88,0.00,'order','广告收益: 设备号「YB000035」','2018-08-19 13:37:38','2018-08-19 13:37:38'),
	(89,0.00,'order','广告收益: 设备号「YB000034」','2018-08-19 13:37:38','2018-08-19 13:37:38'),
	(90,0.00,'order','广告收益: 设备号「YB000033」','2018-08-19 13:37:38','2018-08-19 13:37:38'),
	(91,0.00,'order','广告收益: 设备号「YB000032」','2018-08-19 13:37:38','2018-08-19 13:37:38'),
	(92,0.00,'order','广告收益: 设备号「YB000031」','2018-08-19 13:37:38','2018-08-19 13:37:38'),
	(93,0.00,'order','广告收益: 设备号「YB000030」','2018-08-19 13:37:38','2018-08-19 13:37:38'),
	(94,0.00,'order','广告收益: 设备号「YB000029」','2018-08-19 13:37:38','2018-08-19 13:37:38'),
	(95,0.00,'order','广告收益: 设备号「YB000028」','2018-08-19 13:37:38','2018-08-19 13:37:38'),
	(96,0.00,'order','广告收益: 设备号「YB000027」','2018-08-19 13:37:38','2018-08-19 13:37:38'),
	(97,0.00,'order','广告收益: 设备号「YB000008」','2018-08-19 13:37:38','2018-08-19 13:37:38'),
	(98,0.00,'order','广告收益: 设备号「YB000025」','2018-08-19 13:37:38','2018-08-19 13:37:38'),
	(99,0.00,'order','广告收益: 设备号「YB000010」','2018-08-19 13:37:38','2018-08-19 13:37:38'),
	(100,0.00,'order','广告收益: 设备号「YB000024」','2018-08-19 13:37:38','2018-08-19 13:37:38'),
	(101,0.00,'order','广告收益: 设备号「YB000023」','2018-08-19 13:37:38','2018-08-19 13:37:38'),
	(102,0.00,'order','广告收益: 设备号「YB000015」','2018-08-19 13:37:38','2018-08-19 13:37:38'),
	(103,0.00,'order','广告收益: 设备号「YB000011」','2018-08-19 13:37:38','2018-08-19 13:37:38'),
	(104,0.00,'order','广告收益: 设备号「YB000022」','2018-08-19 13:37:38','2018-08-19 13:37:38'),
	(105,0.00,'order','广告收益: 设备号「YB000016」','2018-08-19 13:37:38','2018-08-19 13:37:38'),
	(106,0.00,'order','广告收益: 设备号「YB000021」','2018-08-19 13:37:38','2018-08-19 13:37:38'),
	(107,0.00,'order','广告收益: 设备号「YB000020」','2018-08-19 13:37:38','2018-08-19 13:37:38'),
	(108,0.00,'order','广告收益: 设备号「YB000019」','2018-08-19 13:37:38','2018-08-19 13:37:38'),
	(109,0.00,'order','广告收益: 设备号「YB000018」','2018-08-19 13:37:38','2018-08-19 13:37:38'),
	(110,0.00,'order','广告收益: 设备号「YB000009」','2018-08-19 13:37:38','2018-08-19 13:37:38'),
	(111,0.00,'order','广告收益: 设备号「YB000012」','2018-08-19 13:37:38','2018-08-19 13:37:38'),
	(112,0.00,'order','广告收益: 设备号「YB000013」','2018-08-19 13:37:38','2018-08-19 13:37:38'),
	(113,0.00,'order','广告收益: 设备号「YB000004」','2018-08-19 13:37:38','2018-08-19 13:37:38'),
	(114,0.00,'order','广告收益: 设备号「YB000003」','2018-08-19 13:37:38','2018-08-19 13:37:38'),
	(115,0.00,'order','广告收益: 设备号「YB000042」','2018-08-19 14:13:34','2018-08-19 14:13:34'),
	(116,0.00,'order','广告收益: 设备号「YB000043」','2018-08-19 15:36:55','2018-08-19 15:36:55'),
	(117,0.00,'order','广告收益: 设备号「YB000035」','2018-08-19 15:40:12','2018-08-19 15:40:12'),
	(118,0.00,'order','广告收益: 设备号「YB000039」','2018-08-19 15:43:29','2018-08-19 15:43:29'),
	(119,0.00,'order','广告收益: 设备号「YB000035」','2018-08-19 15:48:00','2018-08-19 15:48:00'),
	(120,0.00,'order','广告收益: 设备号「YB000043」','2018-08-19 15:48:09','2018-08-19 15:48:09'),
	(121,0.00,'order','广告收益: 设备号「YB000044」','2018-08-19 16:16:46','2018-08-19 16:16:46'),
	(122,0.00,'order','广告收益: 设备号「YB000035」','2018-08-19 16:16:46','2018-08-19 16:16:46'),
	(123,35.00,'order','广告收益: 设备号「YB000044」','2018-08-19 16:22:43','2018-08-19 16:22:43'),
	(124,35.00,'order','广告收益: 设备号「YB000035」','2018-08-19 16:22:43','2018-08-19 16:22:43'),
	(125,0.00,'order','广告收益: 设备号「YB000040」','2018-08-19 17:20:10','2018-08-19 17:20:10'),
	(126,0.00,'order','广告收益: 设备号「YB000045」','2018-08-19 17:28:35','2018-08-19 17:28:35'),
	(127,0.00,'order','广告收益: 设备号「YB000046」','2018-08-19 18:41:41','2018-08-19 18:41:41'),
	(128,0.00,'order','广告收益: 设备号「YB000046」','2018-08-19 18:42:53','2018-08-19 18:42:53'),
	(129,70.00,'order','广告收益: 设备号「YB000046」','2018-08-19 18:48:27','2018-08-19 18:48:27'),
	(130,0.00,'order','广告收益: 设备号「YB000004」','2018-08-19 20:00:55','2018-08-19 20:00:55'),
	(131,0.00,'order','广告收益: 设备号「YB000047」','2018-08-19 20:28:44','2018-08-19 20:28:44'),
	(132,0.00,'order','广告收益: 设备号「YB000048」','2018-08-19 22:01:41','2018-08-19 22:01:41'),
	(133,70.00,'order','广告收益: 设备号「YB000004」','2018-08-19 22:14:38','2018-08-19 22:14:38'),
	(134,0.00,'order','广告收益: 设备号「YB000048」','2018-08-19 22:20:48','2018-08-19 22:20:48'),
	(135,0.00,'order','广告收益: 设备号「YB000035」','2018-08-19 22:20:48','2018-08-19 22:20:48'),
	(136,35.00,'order','广告收益: 设备号「YB000004」','2018-08-19 23:56:38','2018-08-19 23:56:38'),
	(137,20000.00,'league','加盟费: 李小云','2018-08-20 12:31:03','2018-08-20 12:31:03'),
	(138,0.00,'order','广告收益: 设备号「YB000004」','2018-08-20 12:45:15','2018-08-20 12:45:15'),
	(139,35.00,'order','广告收益: 设备号「YB000049」','2018-08-20 12:51:25','2018-08-20 12:51:25'),
	(140,70.00,'order','广告收益: 设备号「YB000049」','2018-08-20 14:21:47','2018-08-20 14:21:47'),
	(141,35.00,'order','广告收益: 设备号「YB000049」','2018-08-20 15:50:20','2018-08-20 15:50:20'),
	(142,35.00,'order','广告收益: 设备号「YB000049」','2018-08-20 15:50:21','2018-08-20 15:50:21'),
	(143,35.00,'order','广告收益: 设备号「YB000049」','2018-08-20 15:50:22','2018-08-20 15:50:22'),
	(144,35.00,'order','广告收益: 设备号「YB000049」','2018-08-20 15:57:43','2018-08-20 15:57:43'),
	(145,35.00,'order','广告收益: 设备号「YB000049」','2018-08-20 16:03:36','2018-08-20 16:03:36'),
	(146,-1000.00,'withdraw','提现: 罗贤斌(46)','2018-08-20 18:55:17','2018-08-20 18:55:17'),
	(147,35.00,'order','广告收益: 设备号「YB000049」','2018-08-20 19:51:41','2018-08-20 19:51:41'),
	(148,35.00,'order','广告收益: 设备号「YB000049」','2018-08-21 11:04:50','2018-08-21 11:04:50'),
	(149,35.00,'order','广告收益: 设备号「YB000049」','2018-08-21 11:04:51','2018-08-21 11:04:51'),
	(150,35.00,'order','广告收益: 设备号「YB000049」','2018-08-21 11:04:53','2018-08-21 11:04:53'),
	(151,35.00,'order','广告收益: 设备号「YB000049」','2018-08-21 13:11:43','2018-08-21 13:11:43'),
	(152,35.00,'order','广告收益: 设备号「YB000049」','2018-08-21 13:11:44','2018-08-21 13:11:44'),
	(153,35.00,'order','广告收益: 设备号「YB000049」','2018-08-21 13:11:44','2018-08-21 13:11:44'),
	(154,35.00,'order','广告收益: 设备号「YB000049」','2018-08-21 13:14:46','2018-08-21 13:14:46'),
	(155,35.00,'order','广告收益: 设备号「YB000049」','2018-08-21 13:23:27','2018-08-21 13:23:27'),
	(156,10000.00,'league','加盟费: 罗来星','2018-08-21 13:53:46','2018-08-21 13:53:46'),
	(157,35.00,'order','广告收益: 设备号「YB000001」','2018-08-21 14:01:22','2018-08-21 14:01:22'),
	(158,35.00,'order','广告收益: 设备号「YB000001」','2018-08-21 14:50:59','2018-08-21 14:50:59'),
	(159,20000.00,'league','加盟费: 熊运升','2018-08-21 15:03:45','2018-08-21 15:03:45'),
	(160,20.00,'order','广告收益: 设备号「YB000002」','2018-08-21 15:07:31','2018-08-21 15:07:31'),
	(161,35.00,'order','广告收益: 设备号「YB000002」','2018-08-21 15:26:53','2018-08-21 15:26:53'),
	(162,35.00,'order','广告收益: 设备号「YB000002」','2018-08-21 15:39:45','2018-08-21 15:39:45'),
	(163,-100.00,'withdraw','提现: 罗贤斌(46)','2018-08-21 15:41:09','2018-08-21 15:41:09'),
	(164,35.00,'order','广告收益: 设备号「YB000058」','2018-08-21 18:18:14','2018-08-21 18:18:14'),
	(165,35.00,'order','广告收益: 设备号「YB000004」','2018-08-21 22:35:57','2018-08-21 22:35:57'),
	(166,35.00,'order','广告收益: 设备号「YB000003」','2018-08-21 22:35:58','2018-08-21 22:35:58'),
	(167,70.00,'order','广告收益: 设备号「YB000059」','2018-08-22 11:49:46','2018-08-22 11:49:46'),
	(168,70.00,'order','广告收益: 设备号「YB000059」','2018-08-22 12:17:32','2018-08-22 12:17:32'),
	(169,70.00,'order','广告收益: 设备号「YB000004」','2018-08-22 12:17:33','2018-08-22 12:17:33'),
	(170,70.00,'order','广告收益: 设备号「YB000003」','2018-08-22 12:17:33','2018-08-22 12:17:33'),
	(171,35.00,'order','广告收益: 设备号「YB000059」','2018-08-22 14:09:02','2018-08-22 14:09:02'),
	(172,35.00,'order','广告收益: 设备号「YB000057」','2018-08-22 16:48:15','2018-08-22 16:48:15'),
	(173,35.00,'order','广告收益: 设备号「YB000057」','2018-08-23 09:30:46','2018-08-23 09:30:46'),
	(174,35.00,'order','广告收益: 设备号「YB000004」','2018-08-23 09:30:47','2018-08-23 09:30:47'),
	(175,35.00,'order','广告收益: 设备号「YB000003」','2018-08-23 09:30:47','2018-08-23 09:30:47'),
	(176,280.00,'order','广告收益: 设备号「YB000057」','2018-08-24 10:21:15','2018-08-24 10:21:15'),
	(177,-100.00,'withdraw','提现: 李大大(55)','2018-08-24 10:49:25','2018-08-24 10:49:25'),
	(178,280.00,'order','广告收益: 设备号「YB000057」','2018-08-24 22:09:06','2018-08-24 22:09:06'),
	(179,280.00,'order','广告收益: 设备号「YB000002」','2018-08-24 22:09:07','2018-08-24 22:09:07'),
	(180,280.00,'order','广告收益: 设备号「YB000004」','2018-08-24 22:09:07','2018-08-24 22:09:07'),
	(181,20000.00,'league','加盟费: 魏皇','2018-08-25 13:06:58','2018-08-25 13:06:58'),
	(182,70.00,'order','广告收益: 设备号「YB000057」','2018-08-25 13:17:23','2018-08-25 13:17:23'),
	(183,70.00,'order','广告收益: 设备号「YB000002」','2018-08-25 13:17:24','2018-08-25 13:17:24'),
	(184,70.00,'order','广告收益: 设备号「YB000055」','2018-08-25 13:17:24','2018-08-25 13:17:24'),
	(185,70.00,'order','广告收益: 设备号「YB000050」','2018-08-25 13:17:24','2018-08-25 13:17:24'),
	(186,70.00,'order','广告收益: 设备号「YB000048」','2018-08-25 13:17:24','2018-08-25 13:17:24'),
	(187,70.00,'order','广告收益: 设备号「YB000053」','2018-08-25 13:17:24','2018-08-25 13:17:24'),
	(188,70.00,'order','广告收益: 设备号「YB000046」','2018-08-25 13:17:25','2018-08-25 13:17:25'),
	(189,70.00,'order','广告收益: 设备号「YB000061」','2018-08-25 13:17:25','2018-08-25 13:17:25'),
	(190,70.00,'order','广告收益: 设备号「YB000044」','2018-08-25 13:17:25','2018-08-25 13:17:25'),
	(191,70.00,'order','广告收益: 设备号「YB000043」','2018-08-25 13:17:25','2018-08-25 13:17:25'),
	(192,70.00,'order','广告收益: 设备号「YB000042」','2018-08-25 13:17:25','2018-08-25 13:17:25'),
	(193,70.00,'order','广告收益: 设备号「YB000041」','2018-08-25 13:17:25','2018-08-25 13:17:25'),
	(194,70.00,'order','广告收益: 设备号「YB000040」','2018-08-25 13:17:25','2018-08-25 13:17:25'),
	(195,70.00,'order','广告收益: 设备号「YB000039」','2018-08-25 13:17:25','2018-08-25 13:17:25'),
	(196,70.00,'order','广告收益: 设备号「YB000038」','2018-08-25 13:17:25','2018-08-25 13:17:25'),
	(197,70.00,'order','广告收益: 设备号「YB000037」','2018-08-25 13:17:25','2018-08-25 13:17:25'),
	(198,70.00,'order','广告收益: 设备号「YB000036」','2018-08-25 13:17:25','2018-08-25 13:17:25'),
	(199,70.00,'order','广告收益: 设备号「YB000035」','2018-08-25 13:17:25','2018-08-25 13:17:25'),
	(200,70.00,'order','广告收益: 设备号「YB000034」','2018-08-25 13:17:25','2018-08-25 13:17:25'),
	(201,70.00,'order','广告收益: 设备号「YB000033」','2018-08-25 13:17:25','2018-08-25 13:17:25'),
	(202,70.00,'order','广告收益: 设备号「YB000032」','2018-08-25 13:17:25','2018-08-25 13:17:25'),
	(203,70.00,'order','广告收益: 设备号「YB000031」','2018-08-25 13:17:25','2018-08-25 13:17:25'),
	(204,70.00,'order','广告收益: 设备号「YB000030」','2018-08-25 13:17:25','2018-08-25 13:17:25'),
	(205,70.00,'order','广告收益: 设备号「YB000029」','2018-08-25 13:17:25','2018-08-25 13:17:25'),
	(206,70.00,'order','广告收益: 设备号「YB000028」','2018-08-25 13:17:25','2018-08-25 13:17:25'),
	(207,70.00,'order','广告收益: 设备号「YB000060」','2018-08-25 13:17:25','2018-08-25 13:17:25'),
	(208,70.00,'order','广告收益: 设备号「YB000008」','2018-08-25 13:17:25','2018-08-25 13:17:25'),
	(209,70.00,'order','广告收益: 设备号「YB000025」','2018-08-25 13:17:25','2018-08-25 13:17:25'),
	(210,70.00,'order','广告收益: 设备号「YB000010」','2018-08-25 13:17:25','2018-08-25 13:17:25'),
	(211,70.00,'order','广告收益: 设备号「YB000024」','2018-08-25 13:17:25','2018-08-25 13:17:25'),
	(212,70.00,'order','广告收益: 设备号「YB000023」','2018-08-25 13:17:25','2018-08-25 13:17:25'),
	(213,70.00,'order','广告收益: 设备号「YB000015」','2018-08-25 13:17:25','2018-08-25 13:17:25'),
	(214,70.00,'order','广告收益: 设备号「YB000011」','2018-08-25 13:17:25','2018-08-25 13:17:25'),
	(215,70.00,'order','广告收益: 设备号「YB000022」','2018-08-25 13:17:25','2018-08-25 13:17:25'),
	(216,70.00,'order','广告收益: 设备号「YB000016」','2018-08-25 13:17:25','2018-08-25 13:17:25'),
	(217,70.00,'order','广告收益: 设备号「YB000021」','2018-08-25 13:17:25','2018-08-25 13:17:25'),
	(218,70.00,'order','广告收益: 设备号「YB000020」','2018-08-25 13:17:25','2018-08-25 13:17:25'),
	(219,70.00,'order','广告收益: 设备号「YB000019」','2018-08-25 13:17:25','2018-08-25 13:17:25'),
	(220,70.00,'order','广告收益: 设备号「YB000018」','2018-08-25 13:17:25','2018-08-25 13:17:25'),
	(221,70.00,'order','广告收益: 设备号「YB000009」','2018-08-25 13:17:25','2018-08-25 13:17:25'),
	(222,70.00,'order','广告收益: 设备号「YB000012」','2018-08-25 13:17:25','2018-08-25 13:17:25'),
	(223,70.00,'order','广告收益: 设备号「YB000013」','2018-08-25 13:17:25','2018-08-25 13:17:25'),
	(224,70.00,'order','广告收益: 设备号「YB000004」','2018-08-25 13:17:25','2018-08-25 13:17:25'),
	(225,105.00,'order','广告收益: 设备号「YB000057」','2018-08-25 17:16:48','2018-08-25 17:16:48'),
	(226,105.00,'order','广告收益: 设备号「YB000002」','2018-08-25 17:16:48','2018-08-25 17:16:48'),
	(227,105.00,'order','广告收益: 设备号「YB000004」','2018-08-25 17:16:49','2018-08-25 17:16:49'),
	(228,105.00,'order','广告收益: 设备号「YB000057」','2018-08-26 11:30:59','2018-08-26 11:30:59'),
	(229,105.00,'order','广告收益: 设备号「YB000002」','2018-08-26 11:31:00','2018-08-26 11:31:00'),
	(230,105.00,'order','广告收益: 设备号「YB000055」','2018-08-26 11:31:01','2018-08-26 11:31:01'),
	(231,105.00,'order','广告收益: 设备号「YB000050」','2018-08-26 11:31:01','2018-08-26 11:31:01'),
	(232,105.00,'order','广告收益: 设备号「YB000064」','2018-08-26 11:31:01','2018-08-26 11:31:01'),
	(233,105.00,'order','广告收益: 设备号「YB000063」','2018-08-26 11:31:01','2018-08-26 11:31:01'),
	(234,105.00,'order','广告收益: 设备号「YB000046」','2018-08-26 11:31:01','2018-08-26 11:31:01'),
	(235,105.00,'order','广告收益: 设备号「YB000061」','2018-08-26 11:31:01','2018-08-26 11:31:01'),
	(236,105.00,'order','广告收益: 设备号「YB000044」','2018-08-26 11:31:01','2018-08-26 11:31:01'),
	(237,105.00,'order','广告收益: 设备号「YB000043」','2018-08-26 11:31:02','2018-08-26 11:31:02'),
	(238,105.00,'order','广告收益: 设备号「YB000042」','2018-08-26 11:31:02','2018-08-26 11:31:02'),
	(239,105.00,'order','广告收益: 设备号「YB000041」','2018-08-26 11:31:02','2018-08-26 11:31:02'),
	(240,105.00,'order','广告收益: 设备号「YB000040」','2018-08-26 11:31:02','2018-08-26 11:31:02'),
	(241,105.00,'order','广告收益: 设备号「YB000039」','2018-08-26 11:31:02','2018-08-26 11:31:02'),
	(242,105.00,'order','广告收益: 设备号「YB000038」','2018-08-26 11:31:02','2018-08-26 11:31:02'),
	(243,105.00,'order','广告收益: 设备号「YB000037」','2018-08-26 11:31:02','2018-08-26 11:31:02'),
	(244,105.00,'order','广告收益: 设备号「YB000036」','2018-08-26 11:31:02','2018-08-26 11:31:02'),
	(245,105.00,'order','广告收益: 设备号「YB000035」','2018-08-26 11:31:02','2018-08-26 11:31:02'),
	(246,105.00,'order','广告收益: 设备号「YB000034」','2018-08-26 11:31:02','2018-08-26 11:31:02'),
	(247,105.00,'order','广告收益: 设备号「YB000033」','2018-08-26 11:31:02','2018-08-26 11:31:02'),
	(248,105.00,'order','广告收益: 设备号「YB000032」','2018-08-26 11:31:02','2018-08-26 11:31:02'),
	(249,105.00,'order','广告收益: 设备号「YB000031」','2018-08-26 11:31:02','2018-08-26 11:31:02'),
	(250,105.00,'order','广告收益: 设备号「YB000030」','2018-08-26 11:31:02','2018-08-26 11:31:02'),
	(251,105.00,'order','广告收益: 设备号「YB000029」','2018-08-26 11:31:02','2018-08-26 11:31:02'),
	(252,105.00,'order','广告收益: 设备号「YB000028」','2018-08-26 11:31:02','2018-08-26 11:31:02'),
	(253,105.00,'order','广告收益: 设备号「YB000060」','2018-08-26 11:31:02','2018-08-26 11:31:02'),
	(254,105.00,'order','广告收益: 设备号「YB000008」','2018-08-26 11:31:02','2018-08-26 11:31:02'),
	(255,105.00,'order','广告收益: 设备号「YB000025」','2018-08-26 11:31:02','2018-08-26 11:31:02'),
	(256,105.00,'order','广告收益: 设备号「YB000010」','2018-08-26 11:31:02','2018-08-26 11:31:02'),
	(257,105.00,'order','广告收益: 设备号「YB000024」','2018-08-26 11:31:02','2018-08-26 11:31:02'),
	(258,105.00,'order','广告收益: 设备号「YB000023」','2018-08-26 11:31:02','2018-08-26 11:31:02'),
	(259,105.00,'order','广告收益: 设备号「YB000015」','2018-08-26 11:31:02','2018-08-26 11:31:02'),
	(260,105.00,'order','广告收益: 设备号「YB000011」','2018-08-26 11:31:02','2018-08-26 11:31:02'),
	(261,105.00,'order','广告收益: 设备号「YB000022」','2018-08-26 11:31:02','2018-08-26 11:31:02'),
	(262,105.00,'order','广告收益: 设备号「YB000016」','2018-08-26 11:31:02','2018-08-26 11:31:02'),
	(263,105.00,'order','广告收益: 设备号「YB000021」','2018-08-26 11:31:02','2018-08-26 11:31:02'),
	(264,105.00,'order','广告收益: 设备号「YB000020」','2018-08-26 11:31:02','2018-08-26 11:31:02'),
	(265,105.00,'order','广告收益: 设备号「YB000019」','2018-08-26 11:31:02','2018-08-26 11:31:02'),
	(266,105.00,'order','广告收益: 设备号「YB000018」','2018-08-26 11:31:02','2018-08-26 11:31:02'),
	(267,105.00,'order','广告收益: 设备号「YB000009」','2018-08-26 11:31:02','2018-08-26 11:31:02'),
	(268,105.00,'order','广告收益: 设备号「YB000012」','2018-08-26 11:31:02','2018-08-26 11:31:02'),
	(269,105.00,'order','广告收益: 设备号「YB000013」','2018-08-26 11:31:02','2018-08-26 11:31:02'),
	(270,105.00,'order','广告收益: 设备号「YB000004」','2018-08-26 11:31:02','2018-08-26 11:31:02'),
	(271,105.00,'order','广告收益: 设备号「YB000003」','2018-08-26 11:31:03','2018-08-26 11:31:03'),
	(272,35.00,'order','广告收益: 设备号「YB000055」','2018-08-27 10:15:58','2018-08-27 10:15:58'),
	(273,35.00,'order','广告收益: 设备号「YB000050」','2018-08-27 10:15:58','2018-08-27 10:15:58'),
	(274,35.00,'order','广告收益: 设备号「YB000064」','2018-08-27 10:15:59','2018-08-27 10:15:59'),
	(275,35.00,'order','广告收益: 设备号「YB000063」','2018-08-27 10:15:59','2018-08-27 10:15:59'),
	(276,35.00,'order','广告收益: 设备号「YB000046」','2018-08-27 10:15:59','2018-08-27 10:15:59'),
	(277,35.00,'order','广告收益: 设备号「YB000061」','2018-08-27 10:15:59','2018-08-27 10:15:59'),
	(278,35.00,'order','广告收益: 设备号「YB000044」','2018-08-27 10:15:59','2018-08-27 10:15:59'),
	(279,35.00,'order','广告收益: 设备号「YB000043」','2018-08-27 10:15:59','2018-08-27 10:15:59'),
	(280,35.00,'order','广告收益: 设备号「YB000042」','2018-08-27 10:15:59','2018-08-27 10:15:59'),
	(281,35.00,'order','广告收益: 设备号「YB000041」','2018-08-27 10:16:00','2018-08-27 10:16:00'),
	(282,35.00,'order','广告收益: 设备号「YB000040」','2018-08-27 10:16:00','2018-08-27 10:16:00'),
	(283,35.00,'order','广告收益: 设备号「YB000039」','2018-08-27 10:16:00','2018-08-27 10:16:00'),
	(284,35.00,'order','广告收益: 设备号「YB000038」','2018-08-27 10:16:00','2018-08-27 10:16:00'),
	(285,35.00,'order','广告收益: 设备号「YB000037」','2018-08-27 10:16:01','2018-08-27 10:16:01'),
	(286,35.00,'order','广告收益: 设备号「YB000036」','2018-08-27 10:16:01','2018-08-27 10:16:01'),
	(287,35.00,'order','广告收益: 设备号「YB000035」','2018-08-27 10:16:01','2018-08-27 10:16:01'),
	(288,35.00,'order','广告收益: 设备号「YB000034」','2018-08-27 10:16:02','2018-08-27 10:16:02'),
	(289,35.00,'order','广告收益: 设备号「YB000033」','2018-08-27 10:16:02','2018-08-27 10:16:02'),
	(290,35.00,'order','广告收益: 设备号「YB000032」','2018-08-27 10:16:02','2018-08-27 10:16:02'),
	(291,35.00,'order','广告收益: 设备号「YB000031」','2018-08-27 10:16:03','2018-08-27 10:16:03'),
	(292,35.00,'order','广告收益: 设备号「YB000030」','2018-08-27 10:16:03','2018-08-27 10:16:03'),
	(293,35.00,'order','广告收益: 设备号「YB000029」','2018-08-27 10:16:03','2018-08-27 10:16:03'),
	(294,35.00,'order','广告收益: 设备号「YB000028」','2018-08-27 10:16:04','2018-08-27 10:16:04'),
	(295,35.00,'order','广告收益: 设备号「YB000060」','2018-08-27 10:16:04','2018-08-27 10:16:04'),
	(296,35.00,'order','广告收益: 设备号「YB000008」','2018-08-27 10:16:04','2018-08-27 10:16:04'),
	(297,35.00,'order','广告收益: 设备号「YB000025」','2018-08-27 10:16:05','2018-08-27 10:16:05'),
	(298,35.00,'order','广告收益: 设备号「YB000010」','2018-08-27 10:16:05','2018-08-27 10:16:05'),
	(299,35.00,'order','广告收益: 设备号「YB000024」','2018-08-27 10:16:05','2018-08-27 10:16:05'),
	(300,35.00,'order','广告收益: 设备号「YB000023」','2018-08-27 10:16:05','2018-08-27 10:16:05'),
	(301,35.00,'order','广告收益: 设备号「YB000015」','2018-08-27 10:16:05','2018-08-27 10:16:05'),
	(302,35.00,'order','广告收益: 设备号「YB000011」','2018-08-27 10:16:06','2018-08-27 10:16:06'),
	(303,35.00,'order','广告收益: 设备号「YB000022」','2018-08-27 10:16:06','2018-08-27 10:16:06'),
	(304,35.00,'order','广告收益: 设备号「YB000016」','2018-08-27 10:16:06','2018-08-27 10:16:06'),
	(305,35.00,'order','广告收益: 设备号「YB000021」','2018-08-27 10:16:06','2018-08-27 10:16:06'),
	(306,35.00,'order','广告收益: 设备号「YB000020」','2018-08-27 10:16:06','2018-08-27 10:16:06'),
	(307,35.00,'order','广告收益: 设备号「YB000019」','2018-08-27 10:16:06','2018-08-27 10:16:06'),
	(308,35.00,'order','广告收益: 设备号「YB000018」','2018-08-27 10:16:06','2018-08-27 10:16:06'),
	(309,35.00,'order','广告收益: 设备号「YB000009」','2018-08-27 10:16:06','2018-08-27 10:16:06'),
	(310,35.00,'order','广告收益: 设备号「YB000012」','2018-08-27 10:16:06','2018-08-27 10:16:06'),
	(311,35.00,'order','广告收益: 设备号「YB000013」','2018-08-27 10:16:06','2018-08-27 10:16:06'),
	(312,35.00,'order','广告收益: 设备号「YB000004」','2018-08-27 10:16:07','2018-08-27 10:16:07'),
	(313,35.00,'order','广告收益: 设备号「YB000003」','2018-08-27 10:16:07','2018-08-27 10:16:07'),
	(314,35.00,'order','广告收益: 设备号「YB000056」','2018-08-28 10:51:43','2018-08-28 10:51:43'),
	(315,50000.00,'league','加盟费: 顾鹏','2018-08-28 13:44:52','2018-08-28 13:44:52'),
	(316,35.00,'order','广告收益: 设备号「YB000057」','2018-08-28 13:46:46','2018-08-28 13:46:46'),
	(317,35.00,'order','广告收益: 设备号「YB000055」','2018-08-28 13:46:47','2018-08-28 13:46:47'),
	(318,35.00,'order','广告收益: 设备号「YB000050」','2018-08-28 13:46:47','2018-08-28 13:46:47'),
	(319,35.00,'order','广告收益: 设备号「YB000056」','2018-08-28 13:46:47','2018-08-28 13:46:47'),
	(320,35.00,'order','广告收益: 设备号「YB000063」','2018-08-28 13:46:47','2018-08-28 13:46:47'),
	(321,35.00,'order','广告收益: 设备号「YB000046」','2018-08-28 13:46:47','2018-08-28 13:46:47'),
	(322,35.00,'order','广告收益: 设备号「YB000061」','2018-08-28 13:46:47','2018-08-28 13:46:47'),
	(323,35.00,'order','广告收益: 设备号「YB000044」','2018-08-28 13:46:47','2018-08-28 13:46:47'),
	(324,35.00,'order','广告收益: 设备号「YB000043」','2018-08-28 13:46:48','2018-08-28 13:46:48'),
	(325,35.00,'order','广告收益: 设备号「YB000042」','2018-08-28 13:46:48','2018-08-28 13:46:48'),
	(326,35.00,'order','广告收益: 设备号「YB000041」','2018-08-28 13:46:48','2018-08-28 13:46:48'),
	(327,35.00,'order','广告收益: 设备号「YB000040」','2018-08-28 13:46:48','2018-08-28 13:46:48'),
	(328,35.00,'order','广告收益: 设备号「YB000039」','2018-08-28 13:46:48','2018-08-28 13:46:48'),
	(329,35.00,'order','广告收益: 设备号「YB000038」','2018-08-28 13:46:48','2018-08-28 13:46:48'),
	(330,35.00,'order','广告收益: 设备号「YB000037」','2018-08-28 13:46:49','2018-08-28 13:46:49'),
	(331,35.00,'order','广告收益: 设备号「YB000036」','2018-08-28 13:46:49','2018-08-28 13:46:49'),
	(332,35.00,'order','广告收益: 设备号「YB000035」','2018-08-28 13:46:50','2018-08-28 13:46:50'),
	(333,35.00,'order','广告收益: 设备号「YB000034」','2018-08-28 13:46:50','2018-08-28 13:46:50'),
	(334,35.00,'order','广告收益: 设备号「YB000033」','2018-08-28 13:46:50','2018-08-28 13:46:50'),
	(335,35.00,'order','广告收益: 设备号「YB000032」','2018-08-28 13:46:51','2018-08-28 13:46:51'),
	(336,35.00,'order','广告收益: 设备号「YB000031」','2018-08-28 13:46:51','2018-08-28 13:46:51'),
	(337,35.00,'order','广告收益: 设备号「YB000030」','2018-08-28 13:46:51','2018-08-28 13:46:51'),
	(338,35.00,'order','广告收益: 设备号「YB000029」','2018-08-28 13:46:51','2018-08-28 13:46:51'),
	(339,35.00,'order','广告收益: 设备号「YB000028」','2018-08-28 13:46:52','2018-08-28 13:46:52'),
	(340,35.00,'order','广告收益: 设备号「YB000060」','2018-08-28 13:46:52','2018-08-28 13:46:52'),
	(341,35.00,'order','广告收益: 设备号「YB000008」','2018-08-28 13:46:52','2018-08-28 13:46:52'),
	(342,35.00,'order','广告收益: 设备号「YB000025」','2018-08-28 13:46:53','2018-08-28 13:46:53'),
	(343,35.00,'order','广告收益: 设备号「YB000010」','2018-08-28 13:46:53','2018-08-28 13:46:53'),
	(344,35.00,'order','广告收益: 设备号「YB000024」','2018-08-28 13:46:53','2018-08-28 13:46:53'),
	(345,35.00,'order','广告收益: 设备号「YB000023」','2018-08-28 13:46:53','2018-08-28 13:46:53'),
	(346,35.00,'order','广告收益: 设备号「YB000015」','2018-08-28 13:46:53','2018-08-28 13:46:53'),
	(347,35.00,'order','广告收益: 设备号「YB000011」','2018-08-28 13:46:53','2018-08-28 13:46:53'),
	(348,35.00,'order','广告收益: 设备号「YB000022」','2018-08-28 13:46:54','2018-08-28 13:46:54'),
	(349,35.00,'order','广告收益: 设备号「YB000016」','2018-08-28 13:46:54','2018-08-28 13:46:54'),
	(350,35.00,'order','广告收益: 设备号「YB000021」','2018-08-28 13:46:54','2018-08-28 13:46:54'),
	(351,35.00,'order','广告收益: 设备号「YB000020」','2018-08-28 13:46:54','2018-08-28 13:46:54'),
	(352,35.00,'order','广告收益: 设备号「YB000019」','2018-08-28 13:46:54','2018-08-28 13:46:54'),
	(353,35.00,'order','广告收益: 设备号「YB000018」','2018-08-28 13:46:55','2018-08-28 13:46:55'),
	(354,35.00,'order','广告收益: 设备号「YB000009」','2018-08-28 13:46:55','2018-08-28 13:46:55'),
	(355,35.00,'order','广告收益: 设备号「YB000012」','2018-08-28 13:46:55','2018-08-28 13:46:55'),
	(356,35.00,'order','广告收益: 设备号「YB000013」','2018-08-28 13:46:55','2018-08-28 13:46:55'),
	(357,35.00,'order','广告收益: 设备号「YB000004」','2018-08-28 13:46:55','2018-08-28 13:46:55'),
	(358,35.00,'order','广告收益: 设备号「YB000003」','2018-08-28 13:46:55','2018-08-28 13:46:55');

/*!40000 ALTER TABLE `system_funds` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table system_logs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `system_logs`;

CREATE TABLE `system_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '描述',
  `status` tinyint(1) NOT NULL COMMENT '状态',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `system_logs` WRITE;
/*!40000 ALTER TABLE `system_logs` DISABLE KEYS */;

INSERT INTO `system_logs` (`id`, `desc`, `status`, `created_at`, `updated_at`)
VALUES
	(1,'[非分段]播放次数统计(vertical): 1406,1405,1322 在 2018-09-16 14:38:43 至 2018-09-16 14:41:59 时间段(196秒)内，播放1次',1,'2018-09-17 11:17:49','2018-09-17 11:17:49'),
	(2,'[非分段]播放次数统计(horizontal): 1499,1445,1321 在 2018-09-16 14:38:43 至 2018-09-16 14:41:59 时间段(196秒)内，播放1次',1,'2018-09-17 11:17:49','2018-09-17 11:17:49'),
	(3,'用户10053，免费使用期（2018-10-18 17:23:41）已过',1,'2018-10-20 14:32:21',NULL),
	(4,'【商户展示功能】用户（10053），服务使用期（2018-10-19 14:39:23）已过',1,'2018-10-20 14:41:16',NULL),
	(5,'【商户展示功能】用户（10053），服务使用期（2018-10-19 14:42:26）已过',1,'2018-10-20 14:42:50',NULL);

/*!40000 ALTER TABLE `system_logs` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table terminal_runtime_logs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `terminal_runtime_logs`;

CREATE TABLE `terminal_runtime_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL COMMENT '统计日期',
  `terminal_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '设备码',
  `start_at` datetime DEFAULT NULL COMMENT '开机时间',
  `statistical_time` int(11) NOT NULL DEFAULT '0' COMMENT '当天累计运行时间(秒)',
  `statistical_number` int(11) NOT NULL DEFAULT '0' COMMENT '统计次数',
  `statistical_logs` json NOT NULL COMMENT '统计日志',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `terminal_runtime_logs` WRITE;
/*!40000 ALTER TABLE `terminal_runtime_logs` DISABLE KEYS */;

INSERT INTO `terminal_runtime_logs` (`id`, `date`, `terminal_code`, `start_at`, `statistical_time`, `statistical_number`, `statistical_logs`, `created_at`, `updated_at`)
VALUES
	(2,'2018-08-31','00000000-03aa-f1bf-ffff-ffff96dde0bf',NULL,100026,2,'["运行时间: 2018-09-01 13:53:32 至 2018-08-31 23:59:59, 共计 50013 秒", "运行时间: 2018-09-01 13:53:32 至 2018-08-31 23:59:59, 共计 50013 秒"]','2018-09-01 13:53:32','2018-09-01 14:32:40'),
	(3,'2018-09-01','00000000-03aa-f1bf-ffff-ffff96dde0bf','2018-09-01 00:00:00',0,0,'[]','2018-09-01 14:32:40','2018-09-01 14:32:40'),
	(4,'2018-09-03','00000000-03aa-f1bf-ffff-ffff96dde0bf',NULL,88,3,'["运行时间: 2018-09-03 13:09:18 至 2018-09-03 13:10:36, 共计 78 秒", "运行时间: 2018-09-03 13:11:44 至 2018-09-03 13:11:50, 共计 6 秒", "运行时间: 2018-09-03 13:13:39 至 2018-09-03 13:13:43, 共计 4 秒"]','2018-09-03 13:09:18','2018-09-03 13:13:43'),
	(5,'2018-09-03','ffffffff-994f-060c-ffff-ffffd533d20c',NULL,21656,2,'["运行时间: 2018-09-03 15:38:19 至 2018-09-03 15:38:50, 共计 31 秒", "运行时间: 2018-09-03 09:40:01 至 2018-09-03 15:40:26, 共计 21625 秒"]','2018-09-03 15:38:19','2018-09-03 15:40:26'),
	(6,'2018-09-05','ffffffff-994f-060c-ffff-ffffd533d20c',NULL,115,19,'["运行时间: 2018-09-05 14:44:12 至 2018-09-05 14:44:46, 共计 34 秒", "运行时间: 2018-09-05 14:47:13 至 2018-09-05 14:47:18, 共计 5 秒", "运行时间: 2018-09-05 14:48:44 至 2018-09-05 14:48:48, 共计 4 秒", "运行时间: 2018-09-05 14:49:34 至 2018-09-05 14:49:39, 共计 5 秒", "运行时间: 2018-09-05 14:50:44 至 2018-09-05 14:50:49, 共计 5 秒", "运行时间: 2018-09-05 14:51:36 至 2018-09-05 14:51:40, 共计 4 秒", "运行时间: 2018-09-05 14:53:01 至 2018-09-05 14:53:06, 共计 5 秒", "运行时间: 2018-09-05 14:54:11 至 2018-09-05 14:54:15, 共计 4 秒", "运行时间: 2018-09-05 14:57:49 至 2018-09-05 14:57:58, 共计 9 秒", "运行时间: 2018-09-05 15:00:19 至 2018-09-05 15:00:23, 共计 4 秒", "运行时间: 2018-09-05 15:02:19 至 2018-09-05 15:02:24, 共计 5 秒", "运行时间: 2018-09-05 15:03:54 至 2018-09-05 15:03:57, 共计 3 秒", "运行时间: 2018-09-05 15:06:08 至 2018-09-05 15:06:13, 共计 5 秒", "运行时间: 2018-09-05 15:09:00 至 2018-09-05 15:09:04, 共计 4 秒", "运行时间: 2018-09-05 15:13:21 至 2018-09-05 15:13:25, 共计 4 秒", "运行时间: 2018-09-05 15:14:39 至 2018-09-05 15:14:43, 共计 4 秒", "运行时间: 2018-09-05 15:17:34 至 2018-09-05 15:17:37, 共计 3 秒", "运行时间: 2018-09-05 15:20:18 至 2018-09-05 15:20:22, 共计 4 秒", "运行时间: 2018-09-05 15:24:29 至 2018-09-05 15:24:33, 共计 4 秒"]','2018-09-05 14:44:12','2018-09-05 15:24:33');

/*!40000 ALTER TABLE `terminal_runtime_logs` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table terminals
# ------------------------------------------------------------

DROP TABLE IF EXISTS `terminals`;

CREATE TABLE `terminals` (
  `id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '终端编号',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '终端名称',
  `serial_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '终端流水号',
  `type` tinyint(4) NOT NULL COMMENT '终端类型：1广告机',
  `volume` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '终端音量',
  `run_state` tinyint(4) NOT NULL COMMENT '终端运行状态：1运行中|2关机|3离线',
  `software_version` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '软件版本',
  `menu_id` int(11) NOT NULL COMMENT '所在目录',
  `screen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '分辨率',
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '纬度',
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '经度',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  UNIQUE KEY `terminals_code_unique` (`code`),
  KEY `terminals_id_index` (`id`),
  KEY `terminals_menu_id_index` (`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `terminals` WRITE;
/*!40000 ALTER TABLE `terminals` DISABLE KEYS */;

INSERT INTO `terminals` (`id`, `code`, `name`, `serial_number`, `type`, `volume`, `run_state`, `software_version`, `menu_id`, `screen`, `latitude`, `longitude`, `created_at`, `updated_at`)
VALUES
	(5,'00000000-01bc-2a87-0000-0000409a8007','SoftwinerEvb','YB000004',1,'0',1,'1.1.0',0,'1080*1920','28.692362','115.870238','2018-08-16 14:42:49','2018-09-17 08:44:27'),
	(12,'00000000-0329-1bfa-ffff-ffffa0374ffa','BTF35','YB000011',1,'0',3,'1.0.9',0,'1080*1920','28.690751','115.846693','2018-08-16 14:42:49','2018-09-17 00:00:02'),
	(54,'00000000-03aa-f1bf-ffff-ffff96dde0bf','BTF35','YB000053',1,'0',0,'1.0.9',0,'','','','2018-08-29 00:00:02','2018-09-17 00:00:02'),
	(19,'00000000-05a7-4e33-ffff-ffffa0857ff3','BTF35','YB000018',1,'0',1,'1.0.9',0,'1080*1920','28.691107','115.85549','2018-08-16 15:50:40','2018-09-17 09:30:31'),
	(69,'00000000-06be-2c52-ffff-ffffa1496c12','BTF35','YB000068',1,'0',1,'1.1.0',0,'1080*1920','28.690762','115.849154','2018-08-31 13:07:24','2018-09-17 08:36:43'),
	(55,'00000000-0802-54d0-ffff-ffffa15ecb50','BTF35','YB000054',1,'0',0,'1.1.0',0,'','','','2018-08-29 00:00:02','2018-09-17 00:00:02'),
	(13,'00000000-0981-5b2f-ffff-ffffa035f2ef','BTF35','YB000012',1,'0',1,'1.0.9',0,'1080*1920','28.692579','115.852086','2018-08-16 14:42:49','2018-09-17 08:05:08'),
	(47,'00000000-0cbf-3e3f-ffff-ffffa157f7ff','BTF35','YB000046',1,'0',1,'1.0.9',0,'1080*1920','28.699151','115.855408','2018-08-19 18:30:50','2018-09-17 10:45:30'),
	(8,'00000000-0de9-51dc-0000-00000f931edc','3280','YB000007',1,'0',0,'1.0.9',0,'','','','2018-08-29 00:00:02','2018-09-17 00:00:02'),
	(1,'00000000-14ea-0211-0000-000034a8ac91','Octopus A83 F1','YB000001',1,'0',0,'4.3.9',0,'1920*1032','40.050196','116.307924','2018-08-16 14:42:49','2018-09-17 00:00:02'),
	(32,'00000000-164a-0c88-ffff-ffffa16bf7c8','BTF35','YB000031',1,'0',3,'1.0.9',0,'1080*1920','28.698374','115.871486','2018-08-17 14:58:02','2018-09-17 00:00:02'),
	(22,'00000000-1a57-0682-ffff-ffffa12be1c2','BTF35','YB000021',1,'0',1,'1.1.0',0,'1080*1920','28.691678','115.850931','2018-08-16 16:58:58','2018-09-17 08:00:29'),
	(20,'00000000-1bf6-4891-ffff-ffffa03dad91','BTF35','YB000019',1,'0',1,'1.0.9',0,'1080*1920','28.692274','115.849712','2018-08-16 16:03:46','2018-09-17 10:32:38'),
	(25,'00000000-2322-8cc0-ffff-ffffa053f340','BTF35','YB000024',1,'0',3,'1.0.9',0,'1080*1920','28.686652','115.857257','2018-08-16 19:20:58','2018-09-17 00:00:02'),
	(68,'00000000-2a5e-504f-ffff-ffffa2f60e0f','BTF35','YB000067',1,'0',1,'1.0.9',0,'1080*1920','22.974468','113.434617','2018-08-29 14:47:42','2018-09-17 00:00:02'),
	(24,'00000000-2dea-3fee-ffff-ffffa03c502e','BTF35','YB000023',1,'0',1,'1.0.9',0,'1080*1920','28.685236','115.860267','2018-08-16 18:36:07','2018-09-17 07:18:26'),
	(18,'00000000-3a04-e5b8-0000-0000643606f8','BTF35','YB000017',1,'0',0,'1.0.9',0,'','','','2018-08-29 15:53:57','2018-09-17 00:00:02'),
	(63,'00000000-4817-cbb7-0000-00007cdd66b7','BTF35','YB000062',1,'0',1,'1.1.0',0,'1080*1920','28.680995','115.846319','2018-08-29 00:00:02','2018-09-17 00:00:02'),
	(51,'00000000-49c8-fc9c-ffff-ffffa148839c','BTF35','YB000050',1,'0',1,'1.0.9',0,'1080*1920','28.693718','115.853587','2018-08-20 13:54:48','2018-09-17 09:36:55'),
	(34,'00000000-4d67-9826-ffff-ffffa09897e6','BTF35','YB000033',1,'0',3,'1.0.9',0,'1080*1920','28.692447','115.849576','2018-08-17 17:03:52','2018-09-17 11:13:40'),
	(64,'00000000-4f03-2107-0000-00001e45a987','BTF35','YB000063',1,'0',3,'1.1.0',0,'1080*1920','28.69084','115.849164','2018-08-25 15:33:05','2018-09-17 00:00:02'),
	(21,'00000000-5394-3f29-ffff-ffffa120f729','BTF35','YB000020',1,'0',3,'1.0.9',0,'1080*1920','28.690773','115.855928','2018-08-16 16:46:05','2018-09-17 00:00:02'),
	(53,'00000000-56d5-06e7-ffff-ffffe0ec17a7','BTF35','YB000052',1,'0',0,'1.1.0',0,'','','','2018-08-29 00:00:02','2018-09-17 00:00:02'),
	(33,'00000000-58b4-7be7-ffff-ffffa07c6a27','BTF35','YB000032',1,'0',3,'1.1.0',0,'1080*1920','28.697988','115.871288','2018-08-17 15:00:42','2018-09-17 00:00:02'),
	(60,'00000000-5af9-7e0b-0000-00000b316c8b','BTF35','YB000059',1,'0',3,'1.1.0',0,'1080*1920','28.644342','115.863914','2018-08-25 21:46:21','2018-09-17 00:00:02'),
	(37,'00000000-64c0-d580-ffff-ffffd52ba280','BTF35','YB000036',1,'0',1,'1.0.9',0,'1080*1920','28.701449','115.865773','2018-08-17 20:33:28','2018-09-17 11:14:31'),
	(9,'00000000-7225-d5c1-ffff-ffffa094f481','BTF35','YB000008',1,'0',1,'1.0.9',0,'1080*1920','28.701059','115.8659','2018-08-16 14:42:49','2018-09-17 10:00:28'),
	(38,'00000000-7a01-125e-ffff-ffffd525b9de','BTF35','YB000037',1,'0',1,'1.0.9',0,'1080*1920','28.701511','115.865818','2018-08-17 20:42:40','2018-09-17 10:00:53'),
	(50,'00000000-7a16-7e4a-ffff-ffffc4aaf64a','BTF35','YB000049',1,'0',0,'1.0.9',0,'','','','2018-08-29 00:00:02','2018-09-17 00:00:02'),
	(70,'ffffffff-86a5-40de-ffff-ffffa148835e','BTF35','YB000069',1,'0',3,'1.1.0',0,'1080*1920','28.688736','115.859457','2018-09-03 13:34:54','2018-09-17 00:00:02'),
	(48,'ffffffff-8993-eb6c-0000-000016dfc92c','BTF35','YB000047',1,'0',0,'1.0.9',0,'','','','2018-08-29 00:00:02','2018-09-17 00:00:02'),
	(23,'ffffffff-912f-3b01-ffff-ffffa11f2741','BTF35','YB000022',1,'0',1,'1.0.9',0,'1080*1920','28.688503','115.849783','2018-08-16 17:30:15','2018-09-17 07:55:16'),
	(56,'ffffffff-921e-8574-ffff-ffffd53f2eb4','BTF35','YB000055',1,'0',1,'1.0.9',0,'1080*1920','28.69928','115.856506','2018-08-20 19:08:43','2018-09-17 11:00:02'),
	(43,'ffffffff-93fc-ed6f-ffff-ffffd539bc6f','BTF35','YB000042',1,'0',1,'1.0.9',0,'1080*1920','28.690192','115.861041','2018-08-19 13:59:02','2018-09-17 10:05:58'),
	(61,'ffffffff-948f-9706-0000-00002f088586','BTF35','YB000060',1,'0.1',3,'1.1.0',0,'1080*1920','28.688666','115.859502','2018-08-23 13:57:14','2018-09-17 00:00:02'),
	(29,'ffffffff-9775-18f4-ffff-ffffd5475ef4','BTF35','YB000028',1,'0',1,'1.0.9',0,'1080*1920','28.704691','115.855996','2018-08-17 11:43:44','2018-09-17 09:35:28'),
	(4,'ffffffff-994f-060c-ffff-ffffd533d20c','BTF35','YB000003',1,'0',1,'1.0.9',0,'1080*1920','28.68094','115.84631','2018-08-16 14:42:49','2018-09-17 09:51:06'),
	(31,'ffffffff-9a10-6533-ffff-ffff96e35533','BTF35','YB000030',1,'0',3,'1.0.9',0,'1080*1920','28.688072','115.86158','2018-08-17 13:19:54','2018-09-17 00:00:02'),
	(30,'ffffffff-9a9a-739f-ffff-ffffa04b525f','BTF35','YB000029',1,'0',1,'1.0.9',0,'1080*1920','28.704494','115.856367','2018-08-17 12:24:04','2018-09-17 00:00:02'),
	(59,'ffffffff-9d4d-cec4-ffff-fffffc6cf1c4','BTF35','YB000058',1,'0',0,'1.1.0',0,'','','','2018-08-29 15:55:09','2018-09-17 00:00:02'),
	(28,'ffffffff-9eb8-f7fc-ffff-ffffdeb5707c','BTF35','YB000027',1,'0',0,'1.0.9',0,'','','','2018-08-29 00:00:02','2018-09-17 00:00:02'),
	(57,'ffffffff-a10c-d26c-ffff-ffffd542d1ac','BTF35','YB000056',1,'0',1,'1.0.9',0,'1080*1920','28.692184','115.869953','2018-08-25 21:46:21','2018-09-17 09:21:47'),
	(42,'ffffffff-abee-7a81-ffff-ffffd540ffc1','BTF35','YB000041',1,'0',3,'1.0.9',0,'1080*1920','28.684134','115.858193','2018-08-19 11:52:02','2018-09-17 00:00:02'),
	(45,'ffffffff-ada9-eb93-ffff-ffffd54e2e93','BTF35','YB000044',1,'0',3,'1.0.9',0,'1080*1920','28.683552','115.838237','2018-08-19 16:05:09','2018-09-17 03:05:23'),
	(15,'ffffffff-af87-12ed-ffff-ffff984457ad','BTF35','YB000014',1,'0',0,'1.0.9',0,'','','','2018-08-29 00:00:02','2018-09-17 00:00:02'),
	(10,'ffffffff-b242-728d-ffff-ffffa0670b8d','BTF35','YB000009',1,'0',1,'1.0.9',0,'1080*1920','28.691562','115.850903','2018-08-16 14:42:49','2018-09-17 09:32:44'),
	(67,'ffffffff-b29d-75bb-ffff-ffffa11264bb','BTF35','YB000066',1,'0',0,'1.0.9',0,'','','','2018-08-29 00:00:02','2018-09-17 00:00:02'),
	(46,'ffffffff-b345-d3bd-0000-00000ba9b2bd','BTF35','YB000045',1,'0',0,'1.0.9',0,'','','','2018-08-29 00:00:02','2018-09-17 00:00:02'),
	(40,'ffffffff-b4a7-48af-ffff-ffffbd4515ef','BTF35','YB000039',1,'0',1,'1.0.9',0,'1080*1920','28.685459','115.847669','2018-08-19 10:24:18','2018-09-17 10:30:28'),
	(27,'ffffffff-b5cc-3361-ffff-fffff6da4361','BTF35','YB000026',1,'0',0,'1.0.9',0,'','','','2018-08-29 00:00:02','2018-09-17 00:00:02'),
	(6,'ffffffff-b688-a7f3-0000-00002ece1e33','DS83X','YB000005',1,'0',0,'1.0.1',0,'','','','2018-08-29 00:00:02','2018-09-17 00:00:02'),
	(71,'ffffffff-bb4d-018e-0000-00005eb5130e','BTF35','YB000070',1,'0',1,'1.1.0',0,'1080*1920','28.683573','115.83889','2018-09-03 14:36:10','2018-09-17 00:00:02'),
	(3,'ffffffff-c1f6-57a4-0000-00007e0f9ce4','3280','YB000002',1,'1',2,'1.0.9',0,'','','','2018-08-29 15:54:16','2018-09-17 00:00:02'),
	(39,'ffffffff-c26b-a5ac-ffff-ffffa08cc66c','BTF35','YB000038',1,'0',3,'1.0.9',0,'1080*1920','28.698163','115.870568','2018-08-17 21:24:08','2018-09-17 02:23:16'),
	(44,'ffffffff-c5d5-4649-ffff-ffffa04067c9','BTF35','YB000043',1,'0',1,'1.0.9',0,'1080*1920','28.683628','115.838977','2018-08-19 15:21:38','2018-09-17 11:00:27'),
	(41,'ffffffff-c631-c435-ffff-ffffa0307df5','BTF35','YB000040',1,'0',1,'1.0.9',0,'1080*1920','28.669883','115.855846','2018-08-19 11:20:11','2018-09-17 08:40:28'),
	(16,'ffffffff-cc18-0b7a-ffff-ffffa037507a','BTF35','YB000015',1,'0',1,'1.0.9',0,'1080*1920','28.681265','115.846796','2018-08-16 14:42:49','2018-09-17 09:10:34'),
	(17,'ffffffff-cc27-e4ba-ffff-ffffa1216b7a','BTF35','YB000016',1,'0',1,'1.0.9',0,'1080*1920','28.691367','115.851903','2018-08-16 14:42:49','2018-09-17 08:05:41'),
	(65,'ffffffff-d44b-1c0f-ffff-ffffe4ee4e8f','BTF35','YB000064',1,'0',1,'1.1.0',0,'1080*1920','28.681021','115.846333','2018-08-25 21:40:41','2018-09-17 00:00:02'),
	(66,'ffffffff-d988-a8c4-ffff-ffffac8697c4','BTF35','YB000065',1,'0',0,'1.1.0',0,'','','','2018-08-29 00:00:02','2018-09-17 00:00:02'),
	(36,'ffffffff-da9a-ae90-ffff-ffffa13ae190','BTF35','YB000035',1,'0',3,'1.0.9',0,'1080*1920','28.691867','115.854812','2018-08-17 19:46:43','2018-09-17 00:00:02'),
	(35,'ffffffff-db34-6858-ffff-ffffd52c8b98','BTF35','YB000034',1,'0',1,'1.0.9',0,'1080*1920','28.692842','115.848225','2018-08-17 18:29:39','2018-09-17 08:44:26'),
	(11,'ffffffff-e01f-b250-ffff-ffffa1586dd0','BTF35','YB000010',1,'0',1,'1.0.9',0,'1080*1920','28.67464','115.857834','2018-08-16 14:42:49','2018-09-17 09:30:28'),
	(58,'ffffffff-e07b-14bc-ffff-ffffa053f33c','BTF35','YB000057',1,'0',3,'1.0.9',0,'1080*1920','28.680965','115.846312','2018-08-21 17:32:01','2018-09-17 00:00:02'),
	(49,'ffffffff-e867-95fc-0000-00007e38527c','BTF35','YB000048',1,'0',0,'1.0.9',0,'','','','2018-08-29 00:00:02','2018-09-17 00:00:02'),
	(26,'ffffffff-eb36-2771-ffff-ffffa03ff2b1','BTF35','YB000025',1,'0',3,'1.0.9',0,'1080*1920','28.691599','115.854498','2018-08-16 20:44:14','2018-09-17 00:00:02'),
	(72,'ffffffff-ecac-d73d-ffff-ffffa12db2fd','BTF35','YB000071',1,'0',3,'1.1.0',0,'1080*1920','28.683663','115.838846','2018-09-03 14:36:10','2018-09-17 00:00:02'),
	(52,'ffffffff-ed87-cbbe-ffff-ffffa33910be','BTF35','YB000051',1,'0',0,'1.0.9',0,'','','','2018-08-29 00:00:02','2018-09-17 00:00:02'),
	(62,'ffffffff-f42d-849d-0000-000044a90ddd','BTF35','YB000061',1,'0',3,'1.1.0',0,'1080*1920','28.683572','115.838894','2018-08-23 15:14:09','2018-09-17 00:00:02'),
	(14,'ffffffff-f878-d236-ffff-ffffa15125f6','BTF35','YB000013',1,'0',3,'1.0.9',0,'1080*1920','28.692454','115.85197','2018-08-16 14:42:49','2018-09-17 00:00:02');

/*!40000 ALTER TABLE `terminals` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '头像',
  `nickname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '昵称',
  `identity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user' COMMENT '身份:user(普通用户)|agent(代理商)|owner(业主)|promoter(推广员)',
  `open_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '微信openid',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `balance` double(8,2) NOT NULL DEFAULT '0.00' COMMENT '余额，用户代理商、场地业主和推广员提现',
  `kuda_coin` int(11) NOT NULL DEFAULT '0' COMMENT '酷达币，用于消费、不可提现',
  `agent_id` int(11) NOT NULL DEFAULT '0' COMMENT '上级代理ID',
  `storaged` int(11) NOT NULL DEFAULT '0' COMMENT '已存储空间(单位: B)',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '实名',
  `tel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '联系电话',
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '地址',
  `operator_id` int(11) NOT NULL DEFAULT '0' COMMENT '运营商ID',
  `is_root_operator` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否是根运营商',
  `league` double(8,2) NOT NULL DEFAULT '0.00' COMMENT '加盟费',
  `num` int(11) NOT NULL COMMENT '用户编号',
  `poster` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '海报',
  `poster_expdate` date DEFAULT NULL COMMENT '海报过期日期',
  `limit_login` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否限制登录',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_open_id_unique` (`open_id`),
  KEY `users_agent_id_index` (`agent_id`),
  KEY `users_operator_id_index` (`operator_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `avatar`, `nickname`, `identity`, `open_id`, `password`, `created_at`, `updated_at`, `balance`, `kuda_coin`, `agent_id`, `storaged`, `name`, `tel`, `address`, `operator_id`, `is_root_operator`, `league`, `num`, `poster`, `poster_expdate`, `limit_login`)
VALUES
	(46,'avatars/10001.png','罗贤斌','agent','oV3d-1jrA84NL62_madiSWinHqoo','$2y$10$w2tWAPjts1flGhYH4/8AhucZXLdrbI132oNhl4rw/APQLwHwviZsO','2018-08-16 14:35:38','2018-08-29 14:11:11',24707.00,110,0,32676120,'罗贤斌','13879169299','江西省南昌市',0,0,0.00,10001,'',NULL,0),
	(47,'avatars/10047.png','沧海一粟','owner','oV3d-1l-aJmh1XWBYgw8hXN5nDQ8','$2y$10$qWvnyNkCUlCDLB1qwvUsheFcwxKmWN2pZtDD4cy1LG5qw/73kguDO','2018-08-16 14:36:16','2018-10-06 16:41:29',229.25,135,0,16855352,'','','',0,0,0.00,10047,'',NULL,0),
	(48,'avatars/10048.png','罗来星','agent','oV3d-1m7u0sVMcKUZqbSVgHUqWWk','$2y$10$wqiaFE9u9TJrlz.EuIdAW.dn/J2rAgsxh6//yW33lqugvaxOe.QAe','2018-08-16 14:49:45','2018-08-28 13:46:55',10524.25,1807,46,9546998,'罗来星','13970819195','江西省南昌市',55,0,10000.00,10048,'',NULL,0),
	(49,'avatars/10049.png','缘','agent','oV3d-1iPaKW54JIVoqRhzegv3g_E','$2y$10$wT2EMoXgeZerCFF6V4TphOBFnrQvW31JECs4WSUbrvvH2Lx0t3d8G','2018-08-16 14:50:34','2018-08-28 13:46:55',1823.50,1915,46,29696320,'熊运升','13879150005','江西省南昌市',48,0,20000.00,10049,'',NULL,0),
	(50,'avatars/10050.png','熊    熊','agent','oV3d-1rZk-hOVh2zz2lJKMEjLgDA','$2y$10$t2imcrn1Z05uWdNiyHES2urqzOM20Gm3u3cvf0tGxV4i9hgZsZKH2','2018-08-16 14:52:33','2018-08-28 13:46:48',11715.00,990,0,27049595,'熊小文','13263009886','江西省南昌市',0,1,0.00,10050,'',NULL,0),
	(51,'avatars/10051.png','赵安进','agent','oV3d-1mX2t4WbZhkGghfq6Uaysj8','$2y$10$FjeWe28abfMQDaLB7bLKLud27m55nzvVODZvhinjYfe/iJztLWuPm','2018-08-16 15:00:44','2018-08-28 13:46:54',371.00,0,0,0,'赵安进','13907098119','江西省南昌市',0,1,0.00,10051,'',NULL,0),
	(52,'avatars/10052.png','凯～卓','owner','oV3d-1qVyldwBGmq_7wxlWfyjbOY','$2y$10$pqXxLROuAVy/CW9goZrCyuS.8zp3xL/uq/a0sXFf/Kiv5he8kYUrC','2018-08-16 15:10:06','2018-08-22 16:43:50',0.00,0,0,11527758,'','','',0,0,0.00,10052,'',NULL,0),
	(53,'avatars/10053.png','Herbert','agent','oV3d-1uJWWPLFCpQfjI0dXUja2AE','$2y$10$Q6NdD0.uPPiP7rcoGYNKRuMpXjOg9OcSCbhkX0u47qweybu0z0.42','2018-08-16 15:31:04','2018-11-08 15:11:33',585.00,595,0,1532101,'kjlkjlj','18857655087','',0,0,0.00,10053,'poster/201809041517091957.jpg','2018-10-03',0),
	(54,'avatars/10054.png','ωσ   叫刘小仙','owner','oV3d-1ubjx0GloDF2_oyVLpSX-dI','$2y$10$rqb37zrKDStF.DJATGw8dulixbv5q.PWSUf.j3c3ag2WDbJmZk7du','2018-08-16 15:36:00','2018-08-16 15:45:26',0.00,0,0,0,'','','',0,0,0.00,10054,'',NULL,0),
	(55,'avatars/10055.png','李大大','agent','oV3d-1ofFGvr0hX_2PB2nucLEaaY','$2y$10$5BIp/zNxUbsnTaKsnN38e.jbwgwMjGaJCgYFYi/5I5u7bjuA3TzEO','2018-08-16 15:40:55','2018-08-28 13:46:53',4854.50,0,46,448690,'李小云','13576906340','江西省南昌市',0,0,20000.00,10055,'',NULL,0),
	(56,'avatars/10056.png','成全','user','oV3d-1hZZkrnwyLgokmJ34bPeg_A','$2y$10$112YOB1tzHFzzCgLm2jbveE9vct8KVasC6I8aQHtnDMUnNxB0022m','2018-08-16 15:54:29','2018-08-19 14:03:07',0.00,0,0,616189,'','','',0,0,0.00,10056,'',NULL,0),
	(57,'avatars/10057.png','黄河^_^','user','oV3d-1ooPDDMdV8OdKuwYtnPq2PU','$2y$10$JfqwzBlVbWFegxMXf33zUOnZedXr/j6UyMwiPvqm/NXZQgpdMJbou','2018-08-16 16:03:29','2018-08-16 16:18:01',0.00,0,0,0,'','','',0,0,0.00,10057,'',NULL,0),
	(58,'avatars/10058.png','我享你南昌店客服','user','oV3d-1hiH-JKWfucEgzEO1a5kr2s','$2y$10$cHkxQx.OhjaZkqjC/8b6YOQPjPEAgulOWAKope35qyrlRog.Mm.9u','2018-08-16 16:16:48','2018-08-17 17:33:31',0.00,0,0,14405,'','','',0,0,0.00,10058,'',NULL,0),
	(59,'avatars/10059.png','荣荣','owner','oV3d-1juP-ahR_cPTOrvCQ_rejjA','$2y$10$mIf1vXp7hhNUT0PgSOIR7eOQEfcFYvH8B1KLGVJRWERP3o5F8HB6O','2018-08-16 16:40:31','2018-08-18 13:46:02',0.00,0,0,756438,'','','',0,0,0.00,10059,'',NULL,0),
	(60,'avatars/10060.png','私房蔡','owner','oV3d-1rNs0omJzCaaJJZUvVbdtVw','$2y$10$fFnphpYw/eE427ANo0Mkg.jnYQZMepypFwlAmMbTAhh/Hf0smxUmq','2018-08-16 16:48:55','2018-08-29 10:11:32',0.00,300,0,491880,'','','',0,0,0.00,10060,'',NULL,0),
	(61,'avatars/10061.png','王建强【南昌车港湾】江西服务商','owner','oV3d-1vbXKMj69XIRXqG4hWKighA','$2y$10$KaWNPLKiQxkg3tlg.IyMbei3uwlEvoj6k6osddSfn03qNlAcJ3z22','2018-08-16 17:17:32','2018-08-16 17:42:37',0.00,0,0,1680716,'','','',0,0,0.00,10061,'',NULL,0),
	(62,'avatars/10062.png','李友新','owner','oV3d-1g8qpKBIaSMGcman3IZuhMQ','$2y$10$o301LSeQ8KLkp720/dvKTesxzTXoRnFjXSgdHH9pSU6xcW0o.95uu','2018-08-16 17:33:17','2018-08-16 17:37:34',0.00,0,0,0,'','','',0,0,0.00,10062,'',NULL,0),
	(63,'avatars/10063.png','张小辉','user','oV3d-1mT53F4VBIslLS1D08Gqwe4','$2y$10$bZ0EIfeiOE6kkmAbmI07Y.sxsrjLnou3XD0QLgiyNzGTJ3KNOL0KC','2018-08-16 17:35:29','2018-08-16 17:35:29',0.00,0,0,0,'','','',0,0,0.00,10063,'',NULL,0),
	(64,'avatars/10064.png','熊亚琴????安迪名车会所????','owner','oV3d-1mWmXErSJyx1TXHpS1gVzsg','$2y$10$O3N2e4ZNxLUs.LnzsPUI2OYsgHFdQKhG/0zyBRelVOKxYflDPlYpK','2018-08-16 17:56:11','2018-08-16 18:02:09',0.00,0,0,0,'','','',0,0,0.00,10064,'',NULL,0),
	(65,'avatars/10065.png','????妙优车南昌旗舰店','owner','oV3d-1vctZSOloWeNJPnWbMh9oLc','$2y$10$cuIS.vbMIq.YIhIhmfT1VOOLl0eSO0/LBVZQRz8tScIIA4pQmyl72','2018-08-16 18:19:49','2018-08-16 18:27:11',0.00,0,0,0,'','','',0,0,0.00,10065,'',NULL,0),
	(66,'avatars/10066.png','艾尼国际万先森','owner','oV3d-1ioJdtkHY0Tw7AcX1OdGzQ8','$2y$10$BbdOqUfXNdnjtMovJGrEpOLb1rR17BJJBgJdbcKxvBxeoMqcCHaOa','2018-08-16 18:36:57','2018-08-18 14:32:36',0.00,0,0,475351,'','','',0,0,0.00,10066,'',NULL,0),
	(67,'avatars/10067.png','AD钙奶','user','oV3d-1kboACxJ_ETSRdWuW5vT_-A','$2y$10$bpT40V3ZE6Hw21aVZVOlieMNVKQHH4merKsXFuGCx9sngXSqC187a','2018-08-16 18:38:11','2018-08-16 18:40:58',0.00,0,0,33610,'','','',0,0,0.00,10067,'',NULL,0),
	(68,'avatars/10068.png','锋来????运转','user','oV3d-1qB0EokhBcgsceBn-k3TlmI','$2y$10$5yv7OBl8H/jerT0.crd4nuk74WPIFo6hByll4dv/Zywq5E2HpQfES','2018-08-16 18:38:30','2018-08-16 18:38:30',0.00,0,0,0,'','','',0,0,0.00,10068,'',NULL,0),
	(69,'avatars/10069.png','OK居家','agent','oV3d-1rdXG14SXpOeJAHRauGd-Mw','$2y$10$yi9F7LfB1CGN9bJ2VvyC5O6wtXMMKEl6xDFPjagzTlndiqCk2U3.a','2018-08-16 19:05:08','2018-08-28 13:46:55',392.00,860,0,1597537,'许克友','18757976119','江西省南昌市',0,1,0.00,10069,'',NULL,0),
	(70,'avatars/10070.png','歲月無聲','owner','oV3d-1usVCnnMH9CX21ZorwID1BQ','$2y$10$wG9LMQdjsmPGdpFjVTPmV.1KtKYSaM5KNvrNujDMvIbU4pi1iWWKO','2018-08-16 19:18:24','2018-08-17 16:24:19',0.00,0,0,8300473,'','','',0,0,0.00,10070,'',NULL,0),
	(71,'avatars/10071.png','张梅','owner','oV3d-1moLesNsWtjupN_bcdArqCc','$2y$10$RRTsMHzsiHpp51LXXAo11O6zmC60FEz0qdYubS0.emW81/DtALBJu','2018-08-16 20:36:46','2018-08-16 20:54:53',0.00,0,0,0,'','','',0,0,0.00,10071,'',NULL,0),
	(72,'avatars/10072.png','顺旺土司','owner','oV3d-1m9S4H2fqZExG4ewMkyLYzI','$2y$10$WCjfjLFgimNXdT0Y9wpyM.EX0eyyOLO0fPLr1r5lQpO5wrq3LYE4S','2018-08-16 20:53:12','2018-08-16 21:05:30',0.00,0,0,0,'','','',0,0,0.00,10072,'',NULL,0),
	(73,'avatars/10073.png','치유 자婷婷','user','oV3d-1nYJ-XAhdiQQns7tsynVCGM','$2y$10$X/Os.Rw0TxulqpnSbCRPmeytl/mz39mXWdHK7enLMAl/D/GYFJ1ga','2018-08-16 20:58:22','2018-08-16 21:01:53',0.00,0,0,1669921,'','','',0,0,0.00,10073,'',NULL,0),
	(74,'avatars/10074.png','！！','user','oV3d-1p6uNTNY1t0Ak-z3VD2eJwQ','$2y$10$TabFPuiLI54xOUIgXzQcT.Y4OmjgplrYl5Ms2AxtdynnfBBlsn9qG','2018-08-17 10:10:18','2018-08-17 10:10:18',0.00,0,0,0,'','','',0,0,0.00,10074,'',NULL,0),
	(75,'avatars/10075.png','','user','oV3d-1ntxuTUgTisMqCSLKoUOiRs','$2y$10$rXatlBVPgsPVA5D8xWT4Ju3hEzdUPKrbpGL0useJU.833gENgv4tW','2018-08-17 10:15:15','2018-08-17 10:20:36',0.00,0,0,223410,'','','',0,0,0.00,10075,'',NULL,0),
	(76,'avatars/10076.png','浅秋','owner','oV3d-1pekTS0f6AQN1pc5lbzr5Eo','$2y$10$3uxTBzsK1gYYkAfMvM5xyeZ9oxVe5IkiUBAUWhzJo2iIek2rRiBxK','2018-08-17 10:15:29','2018-08-17 12:57:27',0.00,0,0,479301,'','','',0,0,0.00,10076,'',NULL,0),
	(79,'avatars/10077.png','天元','agent','oV3d-1jIJ5Yc1eha1Kf0-uY1ChhQ','$2y$10$c2R9afDihdnLt4eYIJXRoOiTHAod/j2QI8ERqyuV5hSRD4vJHUPFO','2018-08-17 11:08:07','2018-08-28 13:44:50',77.00,0,46,0,'顾鹏','13576906340','南昌市',0,0,50000.00,10077,'',NULL,0),
	(80,'avatars/10080.png','熊萍萍','owner','oV3d-1vX93lSGg044suzZd-NJTEQ','$2y$10$yUyI/s/NkVCGwX4XTY17aeJODPzzN04RcmBMuS6M2vLzYKJ/Oc/Y.','2018-08-17 11:28:16','2018-08-17 11:55:32',0.00,0,0,117464,'','','',0,0,0.00,10080,'',NULL,0),
	(81,'avatars/10081.png','小春','user','oV3d-1rwZaIZ9ILfscejWF7MmEBs','$2y$10$3N7XDmh8RRIiSrbCMZT2dutzA4dzMFbyCE9pAaGAmsOCRQlz56bTG','2018-08-17 11:32:53','2018-08-17 11:32:53',0.00,0,0,0,'','','',0,0,0.00,10081,'',NULL,0),
	(82,'avatars/10082.png','刘莉','user','oV3d-1qsn54XpXZnJJANApsl54U4','$2y$10$zqJETXdDhaBcbFOvfNJy9ewDUYbK7p2AQiPy3tABzirJc4G4CIWOW','2018-08-17 11:44:27','2018-08-17 11:44:27',0.00,0,0,0,'','','',0,0,0.00,10082,'',NULL,0),
	(83,'avatars/10083.png','北街九命猫????','user','oV3d-1lWNMnw6w7RrkeEvg4tOwJk','$2y$10$4zcAqjfmTLsnSEDEqPEYBOpTFTxxnXm5jbGpFEUqW79TPIFJj7lvq','2018-08-17 12:22:10','2018-08-17 12:22:10',0.00,0,0,0,'','','',0,0,0.00,10083,'',NULL,0),
	(84,'avatars/10084.png','颐和','owner','oV3d-1lgKYomL-cmVSeGRwSMdWPo','$2y$10$gs2.fJgQYqwJtSd/CHc8feUXJi/VManmONMtPmJAydDmDeAD/Jlxu','2018-08-17 12:24:24','2018-08-17 12:30:33',0.00,0,0,424544,'','','',0,0,0.00,10084,'',NULL,0),
	(85,'avatars/10085.png','周健','user','oV3d-1mw0F97CzhNhmJfm57kbS-A','$2y$10$W/dL8zM7Y7TUSXvMdKCBG..UfoJ6NPOG1L5K/KMb5/YjFSqfLBSBy','2018-08-17 13:19:10','2018-08-17 13:19:10',0.00,0,0,0,'','','',0,0,0.00,10085,'',NULL,0),
	(86,'avatars/10086.png','岳灵生发','owner','oV3d-1hTTqlLri40ac0RxRllSfZE','$2y$10$vagtsWoFYYv3bSK9np6qceqBo4MDKQrv5pfO7XfMgjDZ32TRVmhKy','2018-08-17 13:20:18','2018-08-23 15:24:36',0.00,0,0,220279,'','','',0,0,0.00,10086,'',NULL,0),
	(87,'avatars/10087.png','史志琴13155809068','user','oV3d-1t260-5E1yscWKv1IdGUrH4','$2y$10$SqpIzqnKcve0jHjcwC7tAeo3QYNlIV42p9.vmra58Eo3JQGuKEvWy','2018-08-17 13:23:26','2018-08-17 13:25:59',0.00,0,0,180063,'','','',0,0,0.00,10087,'',NULL,0),
	(88,'avatars/10088.png','酷达传媒，投广告选酷达，全省招商','user','oV3d-1iLHyvTCexNelaZQvx5GBzQ','$2y$10$ou/aGvTaj2wnEsH5IkO0Le8NC7QEXhPtLiSLAfHoL7LIObGjMyY3C','2018-08-17 13:29:52','2018-08-17 13:29:52',0.00,0,0,0,'','','',0,0,0.00,10088,'',NULL,0),
	(89,'avatars/10089.png','名人????鱼小羊','owner','oV3d-1ufxX3jKKzLiQSd5e4qXL2k','$2y$10$2wnehq0kVBbODCsjHR4X6uMv0v3dETFIpb9Sl.UqJy9ZeIYy3pmOG','2018-08-17 15:06:37','2018-08-17 15:16:15',0.00,0,0,0,'','','',0,0,0.00,10089,'',NULL,0),
	(90,'avatars/10090.png','@所有人电竞馆-排排','owner','oV3d-1nFSNf_G56TuAFhJM8vT14s','$2y$10$PKtnnBwKE6lbRPYZOWm1MuZnHBR9tLO1wC0yzqbaPDzcJBSpWrOS6','2018-08-17 15:12:17','2018-08-17 15:18:37',0.00,0,0,0,'','','',0,0,0.00,10090,'',NULL,0),
	(91,'avatars/10091.png','桓桓～～～','owner','oV3d-1kF09AHIH0YYtQv9ZosXq1Q','$2y$10$E4y/N31sIyfb6k2bYghqTuiHqi1LfNsrl/SkIottyMdW3yKySsKja','2018-08-17 15:34:55','2018-08-27 10:23:18',0.00,0,0,0,'','','',0,0,0.00,10091,'',NULL,0),
	(92,'avatars/10092.png','Jodie.漠萱????','owner','oV3d-1tVmfKUr4OuOgaM2dwrKdQQ','$2y$10$xislUTucFnOhBzURmcT2keWrKgjuV78A5Nyc8z4RyjFsSswepL2/y','2018-08-17 17:08:22','2018-08-17 17:55:30',0.00,150,0,388943,'','','',0,0,0.00,10092,'',NULL,0),
	(93,'avatars/10093.png','理邦广告-張樂平','user','oV3d-1gi9PghkraL8RVq9hKptJrM','$2y$10$LhWOKsMZQw/Swum24kWJCetOHtbSJNtwbsz9q66It5ysUnpqJTXiy','2018-08-17 17:15:22','2018-08-21 16:32:08',0.00,130,0,6066043,'','','',0,0,0.00,10093,'',NULL,0),
	(94,'avatars/10094.png','@所有人电竞馆-万征','user','oV3d-1uwiqHyhNLTxGvSemc_gFFg','$2y$10$WX5F/ouemLip0fniqbNV/OHOPcogZ78tPvszh.kLhJzr.T/Pwkoai','2018-08-17 17:59:41','2018-08-17 18:05:40',0.00,0,0,197813,'','','',0,0,0.00,10094,'',NULL,0),
	(95,'avatars/10095.png','信航装饰工程有限公司','user','oV3d-1ljZemzsr8GPslST7iR8Xrw','$2y$10$qkB8uSWhr.HiAuXfTF.xP.2855PBgEBY3vf/S3rXC8FGXopBUkZMq','2018-08-17 18:00:47','2018-08-17 18:00:47',0.00,0,0,0,'','','',0,0,0.00,10095,'',NULL,0),
	(96,'avatars/10096.png','a阿健','owner','oV3d-1ltHLyJeo9XjGjeDvLr6DZw','$2y$10$RSOnrEUHBFl.xqyEi8N2/uHX8bwEpgIANxhldQ6qcTrr82AV4THb2','2018-08-17 18:31:31','2018-08-17 20:21:23',0.00,0,0,1424458,'','','',0,0,0.00,10096,'',NULL,0),
	(97,'avatars/10097.png','????蓉蓉????','owner','oV3d-1nNEoYLzzAFMbUjk6kcVCis','$2y$10$kxLulyBpuaVlSuyGshq0K.8T7qqGuKljKUfkjyaCkw5w.VOGwauSC','2018-08-17 20:22:29','2018-08-17 20:42:18',0.00,0,0,0,'','','',0,0,0.00,10097,'',NULL,0),
	(98,'avatars/10098.png','刘北鼻????','user','oV3d-1pvowt1KA4KahmLcNuomYgc','$2y$10$Ztede2ltHpxBHXhfheQj2O3DEsxQNYBC6D5QF.k.wn4dh660hUsAC','2018-08-17 20:39:08','2018-08-17 20:41:32',0.00,0,0,798078,'','','',0,0,0.00,10098,'',NULL,0),
	(99,'avatars/10099.png','That Girl????','owner','oV3d-1rOCdtk3k69bqyia89_IBhs','$2y$10$uqGcu1hoJunCHgA7S3EwCOMkWvmC.wliOM.U6E1BV/i.bTrG9mnzm','2018-08-17 20:50:22','2018-08-25 13:54:23',0.00,0,0,1957400,'','','',0,0,0.00,10099,'',NULL,0),
	(100,'avatars/10100.png','人的一生，知足就好','user','oV3d-1qkoqybPHIN7ZXdZadM-stU','$2y$10$fO1ghD8XbImDGliAs8tIZueNwvuyeio4si870eIorVCinYiAT5OBe','2018-08-17 21:15:34','2018-08-17 21:15:34',0.00,0,0,0,'','','',0,0,0.00,10100,'',NULL,0),
	(101,'avatars/10101.png','活着就精彩','owner','oV3d-1l5lPQLSsRg0Ru4iSAteat8','$2y$10$N1SgEQUTu9HbnIRRy8eE8OyKhGc6i3nVKgOyng0zQMCrt3JgkjEHu','2018-08-17 21:33:55','2018-08-17 21:36:24',0.00,0,0,0,'','','',0,0,0.00,10101,'',NULL,0),
	(102,'avatars/10102.png','华丽','user','oV3d-1nXK9UlCaWNyueUXkIJxkGA','$2y$10$HuPErVcTNlEmozqsvIyFDOLm/b.xpSZfX9Alwk8IO9kJp0VDzEyhW','2018-08-17 21:50:16','2018-08-17 21:50:16',0.00,0,0,0,'','','',0,0,0.00,10102,'',NULL,0),
	(103,'avatars/10103.png','赵杭俊','user','oV3d-1qJYVH1YzpDw0mbqQMeu0eE','$2y$10$luiM7vSkxMkHrVd.PGr5weVRB85AcgWvC3Q5X.jh/Lgzmdm1ukMJy','2018-08-18 12:33:53','2018-08-18 12:33:53',0.00,0,0,0,'','','',0,0,0.00,10103,'',NULL,0),
	(104,'avatars/10104.png','诚信之人；李宏友','user','oV3d-1m8WM13v1aDx9XrwdiK9jMg','$2y$10$aN7mlnUd1VfRH9MlDRTu3ekFAFk9onGJymnX1MHCBT0JYbsvoEJLa','2018-08-18 12:52:11','2018-08-18 12:52:11',0.00,0,0,0,'','','',0,0,0.00,10104,'',NULL,0),
	(105,'avatars/10105.png','A艾咪 乐太太','user','oV3d-1iaKV__vt4tXpx2Qc-4sgAA','$2y$10$d08vmxYNyo3h4tH/QLHHwOWRguHU8B/ksUufU0GLslP9lD3l0vWYe','2018-08-18 12:54:51','2018-08-18 12:54:51',0.00,0,0,0,'','','',0,0,0.00,10105,'',NULL,0),
	(106,'avatars/10106.png','芍药','user','oV3d-1oEgU5_-mIYsTE9ZPlZaG7E','$2y$10$kdpPBiXAHPX0gpkzKvK5t.uk/qZGd88/wzOjTMpjtfj01xd1Tyb8O','2018-08-18 13:01:53','2018-08-18 13:01:53',0.00,0,0,0,'','','',0,0,0.00,10106,'',NULL,0),
	(107,'avatars/10107.png','阳晟华','user','oV3d-1miYXgDjiLA8U4ezVMRwHAg','$2y$10$36biuZTLATMMJfQa0GkA1OTmclUk4CLBBAbyLtcPne9l7YtRRNi7q','2018-08-18 13:23:02','2018-08-18 13:23:02',0.00,0,0,0,'','','',0,0,0.00,10107,'',NULL,0),
	(108,'avatars/10108.png','兔子???? 钱包-节点股东','owner','oV3d-1uFKT-H3_KtvSDploErCdYo','$2y$10$Iiat3SRF8.C/LK62bvDGlOHYqrG65Ic52QKzilOTa7rzVopizB8XG','2018-08-18 14:35:15','2018-08-19 10:23:37',0.00,0,0,0,'','','',0,0,0.00,10108,'',NULL,0),
	(109,'avatars/10109.png','D17.志安','user','oV3d-1rVcjFFxmcirhM4r9wRMRps','$2y$10$kiEX7BF60Kz.Kk2EEk97rerbChASRxxZ1FyeBplk1uo7qdiawoFe.','2018-08-18 14:37:51','2018-08-18 14:42:10',0.00,0,0,55818,'','','',0,0,0.00,10109,'',NULL,0),
	(110,'avatars/10110.png','海阔天空','user','oV3d-1nS5pwAcqI2jX8NXY6J5Fco','$2y$10$FJSl./9QpN/jA8ga8tKQueKBcmu4PifzGntFv/WSLJ5GhNMH.Z.w6','2018-08-18 16:34:49','2018-08-18 16:34:49',0.00,0,0,0,'','','',0,0,0.00,10110,'',NULL,0),
	(111,'avatars/10111.png','饮水思源','user','oV3d-1oNdiUgsAmxHYyAUJR20eZU','$2y$10$g2P5yvaqappf430yNYn30.xx6uPAlWxWAMh1d4gkFuWSVaBj74m0e','2018-08-18 19:49:24','2018-08-18 19:49:24',0.00,0,0,0,'','','',0,0,0.00,10111,'',NULL,0),
	(112,'avatars/10112.png','万桂林','user','oV3d-1pSsJti9Pz0ryHFgCQudFhU','$2y$10$IBnqdcP87c05HSr/1spNeeOjJw45jNSO/fJNRz9ifW1GredoAWD6S','2018-08-18 23:12:31','2018-08-18 23:12:31',0.00,0,0,0,'','','',0,0,0.00,10112,'',NULL,0),
	(113,'avatars/10113.png','祖祖','owner','oV3d-1qNXVRV3RxZxFcxAOfDnnJ0','$2y$10$Rf1gH/ACfsmcKCEyL/TEW.wBqaWupacneH6NOlVCXJH5EhvAtGH4G','2018-08-19 10:07:31','2018-08-19 15:37:33',0.00,0,0,436246,'','','',0,0,0.00,10113,'',NULL,0),
	(114,'avatars/10114.png','A北京现代????周淑玲18070285339','user','oV3d-1gEKJG8yGc_sWNzJ9UC5Pvo','$2y$10$Q4pL2uFS4eo4pH.mO4hx4uf85F9kupe2K7jwLi8gn3hCBasb10GOW','2018-08-19 11:27:56','2018-08-20 15:35:39',0.00,0,0,6275988,'','','',0,0,0.00,10114,'',NULL,0),
	(115,'avatars/10115.png','占','owner','oV3d-1lD-t3aAa30MT0ZzRZaIKu8','$2y$10$wtE67c35X8sTnmd9CNQEqO4c6dPYUswyRpxpg5JTtb/1maYWenqfe','2018-08-19 11:29:30','2018-08-21 15:52:14',0.00,150,0,1817889,'','','',0,0,0.00,10115,'',NULL,0),
	(116,'avatars/10116.png','涂红丹','owner','oV3d-1p7pRqAINPIt_XB47Nel1x8','$2y$10$V8FbeVT6aFbAwE6bLCUiY.znJkUDqoC9GRXabY1TxX0paF2vtdsPe','2018-08-19 11:50:26','2018-08-19 12:01:30',0.00,0,0,57032,'','','',0,0,0.00,10116,'',NULL,0),
	(117,'avatars/10117.png','夏天','user','oV3d-1vbB7RHzlFLboVEbidfNaPI','$2y$10$nbWt4CUXYEIhg/m3wYmA/uKAY5mq94h3X1DP6cdU6NtEOV5OlQK2y','2018-08-19 13:26:20','2018-08-19 13:26:20',0.00,0,0,0,'','','',0,0,0.00,10117,'',NULL,0),
	(118,'avatars/10118.png','周\'s','owner','oV3d-1vZhU_tz0ubQwhLno1z6xWc','$2y$10$GGA5FY75RbAk47Z7P1iSEus0JshUojIPIktKptfmBiTo.0l0kEVLK','2018-08-19 13:59:37','2018-08-24 17:00:04',0.00,0,0,8145500,'','','',0,0,0.00,10118,'',NULL,0),
	(119,'avatars/10119.png','好宝','owner','oV3d-1pZ5LLj7hp7dvIbkWJWZ-nk','$2y$10$6HRM2YyTnBC.lZyf/mNHeuNCdlKr.N0h9wMAEMdrRvd0aBDAC9z76','2018-08-19 15:30:22','2018-08-21 13:20:01',0.00,0,0,910791,'','','',0,0,0.00,10119,'',NULL,0),
	(120,'avatars/10120.png','简','owner','oV3d-1tN9xTPJAusU5UqcP80octw','$2y$10$skSCOAOz09kg6vivJ7e/dOWtCcHtKJAVtUoRsdqZDNYHwLKtVFpn.','2018-08-19 16:00:04','2018-08-19 16:13:40',0.00,0,0,629286,'','','',0,0,0.00,10120,'',NULL,0),
	(121,'avatars/10121.png','A新建区欧尚云顶健身 陈','owner','oV3d-1k8Y2r2JGPlS3E1M8QoW0OU','$2y$10$8EzZWFy.RPjk4ITQF0F8/.K/.zk5etoPliI2dBY/xtzqrIVWCEDkG','2018-08-19 16:43:23','2018-08-24 16:05:16',0.00,1655,0,2308244,'','','',0,0,0.00,10121,'',NULL,0),
	(122,'avatars/10122.png','（新建区湘椿树餐饮）程彩妹','user','oV3d-1mK5aGHLV-pYXX95pjHDWY4','$2y$10$qoNkSypB1j2DIc8gTbOI3etxja014.KVAhyZ7DaXrakjmPZoaxrh.','2018-08-19 16:57:41','2018-08-19 16:57:41',0.00,0,0,0,'','','',0,0,0.00,10122,'',NULL,0),
	(123,'avatars/10123.png','安近','user','oV3d-1uDqJR0D-lFkfRpPPXPh1Mo','$2y$10$j3ciEqZhFl4KC49Xqd2E3eFln.bYHGWzulMV1XD0R882wwPdC1lwC','2018-08-19 17:36:47','2018-08-19 17:36:47',0.00,0,0,0,'','','',0,0,0.00,10123,'',NULL,0),
	(124,'avatars/10124.png','Mr.ZOU','user','oV3d-1ldMhQYaj0QzRu0m8zFLqiI','$2y$10$EwqljsPUZ0NT5oy/XPTRU.7xUpUNaq5nCNJqHTnT6pg0deGqZ6pOK','2018-08-19 17:47:47','2018-08-19 17:47:47',0.00,0,0,0,'','','',0,0,0.00,10124,'',NULL,0),
	(125,'avatars/10125.png','美少女壮士????','owner','oV3d-1rw9Dl5WFCLR5Ls8PwhaY3c','$2y$10$EQL1X3AlbHM1WiOIB/vSN.Q5P6wK1YSykc4M5F1MLCJlXJnG7GI/C','2018-08-19 18:36:27','2018-08-19 18:37:40',0.00,0,0,0,'','','',0,0,0.00,10125,'',NULL,0),
	(126,'avatars/10126.png','美臣李双双','user','oV3d-1qKH3RJ5v_5JZtefcZAl_qQ','$2y$10$0ERm7wjTqeYS.kfdK1PQu.xR436WeET6ahlwK426R20oo5k7PtjxS','2018-08-19 20:13:53','2018-08-20 17:46:40',0.00,0,0,345692,'','','',0,0,0.00,10126,'',NULL,0),
	(127,'avatars/10127.png','???? ???? 健康美丽精准综合管理','user','oV3d-1ntQBAmRxbNlBsOz_ttO9sA','$2y$10$xVxQLTlDAHb90rybC8wLpeBgqPvCddiGLC8mn7d0ELw9BtKqS0HJC','2018-08-19 20:33:35','2018-08-19 20:36:47',0.00,0,0,165263,'','','',0,0,0.00,10127,'',NULL,0),
	(128,'avatars/10128.png','心似琉璃','user','oV3d-1p2MzbkbKdDlO61T5PHjalE','$2y$10$0mTHYwvTmrwBakhg2DrZpeSLkZAamlcJ.yt.zAB/kC5GZMC0gkcNi','2018-08-19 21:26:54','2018-08-19 21:26:54',0.00,0,0,0,'','','',0,0,0.00,10128,'',NULL,0),
	(129,'avatars/10129.png','Mr樊','owner','oV3d-1sLSzoBLASqKjz1nsNeKPks','$2y$10$w.XXDNzUDi27oqXHql6M5.lP4Kf0Wg1j6JpW48ZHKfbrbxNJ3ZLyK','2018-08-19 21:40:45','2018-08-19 21:58:29',0.00,0,0,249171,'','','',0,0,0.00,10129,'',NULL,0),
	(130,'avatars/10130.png','时过境迁 ，','user','oV3d-1vjZtar2Uc6-eiq9aLUsTlA','$2y$10$caNc3JGcloriRXuErbcNrODCFwbEFm.FJB1h15XEsMJ83EVb3FEV6','2018-08-19 22:29:04','2018-08-19 22:29:04',0.00,0,0,0,'','','',0,0,0.00,10130,'',NULL,0),
	(131,'avatars/10131.png','陈佳宏15727639213','user','oV3d-1jwBSmEKx6ljRBdp5frAgOI','$2y$10$NLgfz/gp94igojSmaAHwau5aeJno2l49KrEc/cNjeJW1OZ9/aHJOK','2018-08-20 09:56:47','2018-08-20 09:56:47',0.00,0,0,0,'','','',0,0,0.00,10131,'',NULL,0),
	(132,'avatars/10132.png','［智慧做事诚信做人］智诚公司～程静18942202121','owner','oV3d-1nQi-E-VZUzJDpCQQFZ_ick','$2y$10$GVkZeh21JRTmkCw.JbA4E.RSX2F6vcH5ZDhpohHOw0qGq19zhLndu','2018-08-20 17:32:21','2018-08-20 17:46:37',0.00,150,0,355334,'','','',0,0,0.00,10132,'',NULL,0),
	(133,'avatars/10133.png','往后余生（莫愁）','user','oV3d-1pu9CXGZor8EYad-R8IRkZE','$2y$10$asAV57i.xsHscuVjcLRIne0V4WOXCJhSanKKJQI0qfg5.45lXN4f2','2018-08-20 17:49:51','2018-08-20 17:49:51',0.00,0,0,0,'','','',0,0,0.00,10133,'',NULL,0),
	(134,'avatars/10134.png','勾','user','oV3d-1quHkbq0OrnI_MBXQ0wEvoY','$2y$10$CmvTHH6z8RcmTDnTQBpuH.DWkolDh0tBFwTT6RlOCuHzjo7fbm5yC','2018-08-20 17:51:34','2018-08-20 17:51:34',0.00,0,0,0,'','','',0,0,0.00,10134,'',NULL,0),
	(135,'avatars/10135.png','领秀邹伟13879161933','owner','oV3d-1tiMvL1dRG2fYkwNWxIyPQI','$2y$10$eHbOgVqiQZVymBYQrCu/EuHKQDwzFfWGwZ/UY0PORWXr6LTaJMNce','2018-08-20 18:07:55','2018-08-20 18:55:02',0.00,0,0,2507455,'','','',0,0,0.00,10135,'',NULL,0),
	(136,'avatars/10136.png','范米','owner','oV3d-1ktDhNFqDEJxLW-cZ9b9iM4','$2y$10$wtiUZtg9gvQPfHk6PehS1uORixMxhbmA0BC3vsbDb4XmODB3nEXDC','2018-08-20 19:09:18','2018-08-20 19:24:49',0.00,0,0,0,'','','',0,0,0.00,10136,'',NULL,0),
	(137,'avatars/10137.png','丶Wxn。','agent','oV3d-1gPH_-4FEcmJPxk5zIlTzzk','$2y$10$6moqdCegO1u5JTUEbA5tL.Jn6xdLRu0lAmvFn7ERFLKrV4EWpsSSS','2018-08-20 22:07:23','2018-08-25 13:06:57',0.00,0,0,0,'魏皇','13697009202','江西省南昌市',50,0,20000.00,10137,'',NULL,0),
	(138,'avatars/10138.png','酷达广告传媒13767020383','user','oV3d-1oeTeRk4_vrorbGka4tawkk','$2y$10$IRwDPc9yBIpUn6DDsYqGaOlE27uH65alje3Y3Igr23MT4HO.LYmJy','2018-08-21 14:02:22','2018-08-21 14:02:22',0.00,0,0,0,'','','',0,0,0.00,10138,'',NULL,0),
	(139,'avatars/10139.png','宜信，红谷滩邓经理','user','oV3d-1hChdXD2M1Hr_37B0SVDAnQ','$2y$10$Ce6zfGRSSirK.Giy.uaSIuyGC8G.QuuI1LX6bs3BUIItqZpLdSR4e','2018-08-21 22:12:37','2018-08-21 22:12:37',0.00,0,0,0,'','','',0,0,0.00,10139,'',NULL,0),
	(140,'avatars/10140.png','瞬、','user','oV3d-1so0V2ZdxXOhaLv9Q1xGrcs','$2y$10$T/L1FIt1vYsxLQjvIJDVlOeMfJv3onrJjbJmTV.3I8o6N0du8JBOq','2018-08-22 09:51:35','2018-08-22 09:51:35',0.00,0,0,0,'','','',0,0,0.00,10140,'',NULL,0),
	(141,'avatars/10141.png','????Lily????','user','oV3d-1oBQP1hNfJ3t-2obWeOm6Ts','$2y$10$1l6isL48MvEoQY81z4VzvuOT2Y2kthW5DSMf/Kg9ll53weIhq2Kci','2018-08-22 14:09:37','2018-08-22 14:15:54',0.00,0,0,283756,'','','',0,0,0.00,10141,'',NULL,0),
	(142,'avatars/10142.png','明月','user','oV3d-1r0YJ-XtVka_CspyE-kEX-4','$2y$10$3xDYcYErcqz8x7awerInru5hT3jz3/AWiSZg6J3OaC5IsHEq5/QEi','2018-08-22 14:57:33','2018-08-22 14:57:33',0.00,0,0,0,'','','',0,0,0.00,10142,'',NULL,0),
	(143,'avatars/10143.png','钟导〖钟良〗','user','oV3d-1ku_uR3fGS9QIUxaEN7gm4k','$2y$10$XKxWaxuWkM6EQYbI7JrFveN51IHINa1FNmu8RMUbWmAPu6apOXC36','2018-08-22 15:31:14','2018-08-22 15:31:14',0.00,0,0,0,'','','',0,0,0.00,10143,'',NULL,0),
	(144,'avatars/10144.png','张','user','oV3d-1hN7ZVGK5gB-ZXf5Vz7tM7o','$2y$10$unfkoyQTjF3BBQP7nLDHluWP8rPYfI2v/HtiJkIrgJmNq1Wm4FfYS','2018-08-22 16:38:44','2018-08-22 16:38:44',0.00,0,0,0,'','','',0,0,0.00,10144,'',NULL,0),
	(145,'avatars/10145.png','文静','user','oV3d-1li9QsRH1wCouj3dJO2x9Jk','$2y$10$jt2/UQ3hNMyj3jZ2bZQVSuFY2Pbmgga15K5uyhMUT1ToqtZexq3n.','2018-08-22 22:41:19','2018-08-22 22:41:19',0.00,0,0,0,'','','',0,0,0.00,10145,'',NULL,0),
	(146,'avatars/10146.png','胡永佳','user','oV3d-1vzxfvVDuBXMJz9ecDv7gTs','$2y$10$4qE2s/3uVP4IPig3PQmqAO6KCDm7i5T3oyLjZHg/jvEojTiw/LqEC','2018-08-23 10:51:31','2018-08-23 10:56:16',0.00,0,0,1554555,'','','',0,0,0.00,10146,'',NULL,0),
	(147,'avatars/10147.png','Wallace','user','oV3d-1s3D0Mwdl8XmA2S266M28AU','$2y$10$6qFWk4L0lHcRkIk5CbnM5uDuSbTs3smx9/Y1KrcKlUu4Mlq5JYEOm','2018-08-23 17:07:16','2018-08-23 17:07:16',0.00,0,0,0,'','','',0,0,0.00,10147,'',NULL,0),
	(148,'avatars/10148.png','Beloved','user','oV3d-1jnSMUtWskr-Z_dmIevxDo0','$2y$10$Ns.nt72uBdoGKADq8ZYci.udsCLYqmKYzFgetf25N7FfVQSxOU/2C','2018-08-24 10:20:53','2018-08-24 10:20:53',0.00,0,0,0,'','','',0,0,0.00,10148,'',NULL,0),
	(149,'avatars/10149.png','凤舞九天','user','oV3d-1tscsxE7r7dtdpHo089SXhU','$2y$10$MBQKXS2MIgeErkHuaX9SL.c2cSTX0v/WO32ZFj0YcuXM.C1UPP5Py','2018-08-24 13:24:36','2018-08-24 13:24:36',0.00,0,0,0,'','','',0,0,0.00,10149,'',NULL,0),
	(150,'avatars/10150.png','袁婷~17379196311','user','oV3d-1pkCYq7ZQXiTSD7G2yA_OJU','$2y$10$iwnkSITvH9b5l0j5wCdAYOH5QwhxpOhILeIczt6iuEg1XY87PvZZm','2018-08-24 15:18:03','2018-08-24 15:31:00',0.00,0,0,202551,'','','',0,0,0.00,10150,'',NULL,0),
	(151,'avatars/10151.png','小手','user','oV3d-1ss8rj6sd6cJqlQM2_c3lY4','$2y$10$91C4WcNgl0OhVGpeD5MJzeeI.jbQau1LqZRMfsJO9senJaaeXmt8q','2018-08-24 15:23:49','2018-08-24 15:23:49',0.00,0,0,0,'','','',0,0,0.00,10151,'',NULL,0),
	(152,'avatars/10152.png','磨落谷子。','user','oV3d-1u53txwHOk6EFZybDEPPKSk','$2y$10$PA8dJFnDhwfDs3q08CcgpeGVgitA0uq7rTVaIPpYojqcQEk0YLLYK','2018-08-24 20:25:51','2018-08-24 20:25:51',0.00,0,0,0,'','','',0,0,0.00,10152,'',NULL,0),
	(153,'avatars/10153.png','呵呵','user','oV3d-1rVDf8lWRvPVvatQBi8rw0M','$2y$10$HeSt2VYZTBSxP5Xs6ga9uubf0CHY2uSDBvNz9YblRwR/MQgbBrOs2','2018-08-24 22:47:14','2018-08-24 22:47:14',0.00,0,0,0,'','','',0,0,0.00,10153,'',NULL,0),
	(154,'avatars/10154.png','弎人行','user','oV3d-1phtcFEg6qFg5_-PzIpW31E','$2y$10$0iN51Q8G2t1m7KLKRbzWRuwna/OAt3mq3w1LkzFrLp6zy0akDL/7y','2018-08-24 22:47:45','2018-08-24 22:47:45',0.00,0,0,0,'','','',0,0,0.00,10154,'',NULL,0),
	(155,'avatars/10155.png','HR-Chen','user','oV3d-1h-L-RoEJhbyod8Y-bHx6YA','$2y$10$cJJw9JML25.FimDIiuKAWe7gbrsKHzoBkddvk13C9ZglPfVXXQI9O','2018-08-24 23:09:48','2018-08-24 23:09:48',0.00,0,0,0,'','','',0,0,0.00,10155,'',NULL,0),
	(156,'avatars/10156.png','A易捷净自助洗车机厂王先生','user','oV3d-1utQUbUSM1bMLqFpu4ExRo4','$2y$10$gfEzvPfS/nbmy..t3zyVPeGvqtAI8QGkHBbGubmq3XT.u/MjZmVUy','2018-08-24 23:55:15','2018-08-24 23:55:15',0.00,0,0,0,'','','',0,0,0.00,10156,'',NULL,0),
	(157,'avatars/10157.png','made in china????','user','oV3d-1nn2KptlIFOSQ2JRHoKk9o0','$2y$10$kPw7l7zYldWjvjckjERB2O/sf8wqWDSf0F.iEiG/88aRKs7/QH1q2','2018-08-25 09:41:06','2018-08-25 09:41:06',0.00,0,0,0,'','','',0,0,0.00,10157,'',NULL,0),
	(158,'avatars/10158.png','歌','user','oV3d-1mTV4Dm3sK5dCSLunQ8atZA','$2y$10$PMJpuR8gYyKFgmTcoFfRTuMmaRTsAftG4BP1adifLFDDND0b479l6','2018-08-25 10:18:59','2018-08-25 10:29:06',0.00,0,0,19920874,'','','',0,0,0.00,10158,'',NULL,0),
	(159,'avatars/10159.png','酷达传媒','user','oV3d-1oixIVt3C32FTXgRAkyVW98','$2y$10$W8LwSBXLAD/vvOTtv5w0fO6s.nL0O7WRguKMoViyNeO5Z7oA63iRi','2018-08-25 10:23:31','2018-08-25 10:23:31',0.00,0,0,0,'','','',0,0,0.00,10159,'',NULL,0),
	(160,'avatars/10160.png','A欧尚云顶健身教练周涛','user','oV3d-1pJIOGzOQ4uqnEbGCv0srlI','$2y$10$EWk1xdsHIzJKarj7N//D0.WQpyM8ThO9g7XOgkp11Xi3ZnEs2wxFC','2018-08-25 11:28:41','2018-08-25 11:28:41',0.00,0,0,0,'','','',0,0,0.00,10160,'',NULL,0),
	(161,'avatars/10161.png','A贷款熊淇13979149286','user','oV3d-1j0HyMocWiC3cRI9xA4DJCQ','$2y$10$FJ2G3A5UDhHpzSzAjhPYke6N3075xq5dzdIcVNcyzsm/g1XQelEWS','2018-08-25 14:46:29','2018-08-25 14:46:29',0.00,0,0,0,'','','',0,0,0.00,10161,'',NULL,0),
	(162,'avatars/10162.png','A 00 阳光  小周','user','oV3d-1nPBaPPfmZlZwrpv4irDq_Y','$2y$10$vo9GffOiZXBlpttM/nA3JuYyFosl6RjoukheWZRpoQJkHixV84uBu','2018-08-25 14:46:32','2018-08-25 14:46:32',0.00,0,0,0,'','','',0,0,0.00,10162,'',NULL,0),
	(163,'avatars/10163.png','万万没想到','user','oV3d-1tukz-ZzZVo-utI9Fw5lan4','$2y$10$pqPCCRmiwbZfoErQuhjxSewE7ObuoUgevF1neZdDn4e9l9bZfNTIC','2018-08-25 16:01:29','2018-08-25 16:01:29',0.00,0,0,0,'','','',0,0,0.00,10163,'',NULL,0),
	(164,'avatars/10164.png','熊小江','user','oV3d-1k2luuuJ2wi3pZKPj6o34Xw','$2y$10$PHvlbVT8CiszQaX/FzTSG.DUwD5vQdqlX0SYgrN6pyCOcCxk/hj0i','2018-08-25 18:42:38','2018-08-25 18:42:38',0.00,0,0,0,'','','',0,0,0.00,10164,'',NULL,0),
	(165,'avatars/10165.png','Same as ever????','user','oV3d-1hZ_ge48504AFRJKxsMR_1o','$2y$10$1WXfrBzU8syLYOeF2naDT.glP0frdjhufmIlWFplrlbPPE0vNSKLa','2018-08-26 13:14:36','2018-08-26 13:14:36',0.00,0,0,0,'','','',0,0,0.00,10165,'',NULL,0),
	(166,'avatars/10166.png','༺ཌༀཉི锦༒峰༃ༀད༻','user','oV3d-1odLK0q9dYVNfgpzVFISeRM','$2y$10$v/04.4MIGUEEZGXTrl5Pse.8FcFkoffscu00VaRJeQY8QLDIzpyrS','2018-08-26 17:43:49','2018-08-26 17:43:49',0.00,0,0,0,'','','',0,0,0.00,10166,'',NULL,0),
	(167,'avatars/10167.png','万通圣人。中医世家18379137806','user','oV3d-1klxgjGvzAMjzzLi-UCb1_c','$2y$10$cPEqjOExCOtd4ttNagNCquYrL9Sx66ZhNC1eEu/C..SgVw57.NRhm','2018-08-26 22:12:59','2018-08-26 22:46:54',0.00,0,0,1640914,'','','',0,0,0.00,10167,'',NULL,0),
	(168,'avatars/10168.png','今日头条^张湘源','user','oV3d-1qezxoLPsTvVcXVHfBO5Ytc','$2y$10$55ynsP8lAvjMc7ahjIL3vOa6sahOMzcODau25Z/rmQnxPzHu342Ky','2018-08-27 11:17:13','2018-08-27 11:17:13',0.00,0,0,0,'','','',0,0,0.00,10168,'',NULL,0),
	(169,'avatars/10169.png','小芯','user','oV3d-1olIXry-dahtvIvJGEie9gw','$2y$10$t6CzDxU6NzYH5IL/s7Uf5OP33vyAFhNfJMdeMPzQIiQn8.L4DWd4W','2018-08-27 11:26:19','2018-08-27 11:26:19',0.00,0,0,0,'','','',0,0,0.00,10169,'',NULL,0),
	(170,'avatars/10170.png','白米粥','user','oV3d-1iuK1PDpIwGwTXuCC9M-dvM','$2y$10$pWJhQCkUOqOLwiHTLovR7uTfeP8sS83YizOXLNbWFK1DclfCpCP3.','2018-08-28 09:54:49','2018-08-28 09:54:49',0.00,0,0,0,'','','',0,0,0.00,10170,'',NULL,0),
	(171,'avatars/10171.png','时华柏','user','oV3d-1l9HL9MtvFhTYDyKT-Yz0zI','$2y$10$2uG6dVpO6/Xzkrk4niVRYOYxkvvtXiH.LuxzyhHZiYHhJ64x1ber.','2018-08-28 12:42:51','2018-08-28 12:42:51',0.00,0,0,0,'','','',0,0,0.00,10171,'',NULL,0),
	(172,'avatars/10172.png','冉江边','user','oV3d-1suL3QQJt6CI4dRobZDviFg','$2y$10$NlrQEsX1jyliJVqwesPOuuoM2YTPpJUzJnzxb7CAm8wS2cdI644Di','2018-08-28 12:43:04','2018-08-28 12:43:04',0.00,0,0,0,'','','',0,0,0.00,10172,'',NULL,0),
	(173,'avatars/10173.png','施聪','user','oV3d-1k1TqUJzUkuY22CwAuqS2lU','$2y$10$Jj4vQhnyAm9UxLnyTvRwAuYxynSZ8QpQmDyxSjFnXGv3xJqnlwmSe','2018-08-28 12:45:57','2018-08-28 12:45:57',0.00,0,0,0,'','','',0,0,0.00,10173,'',NULL,0),
	(174,'avatars/10174.png','半夏微凉','user','oV3d-1iGjbT6LzblDU_PKu6q3zFE','$2y$10$CVSeZj4mUHAVyb33PurSWeQbr2UnbBrzz4ABmtlqyxnMG649ZOukO','2018-08-28 12:46:36','2018-08-28 12:46:36',0.00,0,0,0,'','','',0,0,0.00,10174,'',NULL,0),
	(175,'avatars/10175.png','曹启星','user','oV3d-1ndMIHaMthD08ZscCtDXIoU','$2y$10$6uUNb8rY.e2ASpWK72c6pO8qwK.C9IGelRyCEPkmzFQlifpR8.K/W','2018-08-28 12:46:39','2018-08-28 12:46:39',0.00,0,0,0,'','','',0,0,0.00,10175,'',NULL,0),
	(176,'avatars/10176.png','A赤壁精诚通讯(贴膜，换屏，上号)','user','oV3d-1vmxNeE-xlXCYrlnnkv082Y','$2y$10$RO3h0JfKXo2taewBBwDOUeE9vAQxAAYSq2Eg7HDF/W5X4QcQddlUa','2018-08-28 13:03:24','2018-08-28 13:03:24',0.00,0,0,0,'','','',0,0,0.00,10176,'',NULL,0),
	(177,'avatars/10177.png','独????狼','user','oV3d-1r51ZJ8J5S7P7iEevZc8t00','$2y$10$PUT.Fi743wMNS3lL//QwXeGrvodk7UFFHqRc8Ip4mJyQ0SyX9rMhu','2018-08-28 13:21:01','2018-08-28 13:21:01',0.00,0,0,0,'','','',0,0,0.00,10177,'',NULL,0),
	(178,'avatars/10178.png','胡18665237462','user','oV3d-1h6tPeXlVKfXRG4SNX7L4bc','$2y$10$DPVtC06V5me5UA.rAjGG5OMSp7bruHhmE01tcuXnHT.0vsXo99qI.','2018-08-28 13:41:40','2018-08-28 13:41:40',0.00,0,0,0,'','','',0,0,0.00,10178,'',NULL,0),
	(179,'avatars/10179.png','阳光小伙????','user','oV3d-1sI0AB5aQR6kNQfWg10FcAw','$2y$10$V.P8y3ATszSaotL/pXvFjOEVsqg6.Ek0Eqv4jMi/raK8LQAlkwIJS','2018-08-28 13:55:58','2018-08-28 13:55:58',0.00,0,0,0,'','','',0,0,0.00,10179,'',NULL,0),
	(180,'avatars/10180.png','宝贝¥最爱','user','oV3d-1mR9YsW9M8iedqO8r-TGTUM','$2y$10$KYzqSs.i4FzA8xZpl9QlVeHzKylyajelW/Onxk1KAAoAtNqggNVam','2018-08-28 13:58:33','2018-08-29 11:18:27',0.00,790,0,2172244,'','','',0,0,0.00,10180,'',NULL,0),
	(181,'avatars/10181.png','李贵来-互视达智能硬件董事长','user','oV3d-1kseQkPwJBiW_bY_v9zOpCM','$2y$10$lRcea7T7/.wa.Kg6Qai.Ue0xEGXtGbTnZwAAncwlOSe0eIG07eu76','2018-08-28 14:04:54','2018-08-28 14:04:54',0.00,0,0,0,'','','',0,0,0.00,10181,'',NULL,0),
	(182,'avatars/10182.png','熊成','user','oV3d-1sjxlSjoDrPSmucoKC30qe4','$2y$10$IM.ISrajmkXRstfIcWIE0OzbsE0zbjnvJf1Ib7vULUJQFCm0k9Leu','2018-08-28 14:34:16','2018-08-28 14:39:46',0.00,0,0,348118,'','','',0,0,0.00,10182,'',NULL,0),
	(183,'avatars/10183.png','温超飞','user','oV3d-1t5POENpA4wqX3twOYo50ZI','$2y$10$gUpbsYM0EgPNG55fjMI8BeiDuJ6QnKinHtttpgMTHITTYvC.5BBLG','2018-08-28 14:37:53','2018-08-28 14:37:53',0.00,0,0,0,'','','',0,0,0.00,10183,'',NULL,0),
	(184,'avatars/10184.png','张爱荣17379339468','user','oV3d-1pBIdjCRvXR5CHcFkTLwhB0','$2y$10$9YbfuPfTAfjxD1GoTM0YGu901pSjQ0mDS6xvMPERBK4K2uMuG4WHG','2018-08-28 14:55:28','2018-08-28 14:59:00',0.00,0,0,462060,'','','',0,0,0.00,10184,'',NULL,0),
	(185,'avatars/10185.png','天元','user','oV3d-1q_mJ8qNlK2eybv97qgetxc','$2y$10$j9dGY7vPfSNWdv9CH2JsMOYgXNEiyTdwwL9SjrfcoMdd5UdQwgMdS','2018-08-28 15:04:16','2018-08-28 15:04:16',0.00,0,0,0,'','','',0,0,0.00,10185,'',NULL,0),
	(186,'avatars/10186.png','玉面狐狸','user','oV3d-1sIxYfUCywITjX9llR_pe68','$2y$10$mEPZAbays8bX25S3X70HaO02WNKodCwFbb3Zh8SAfH4aOSLur8sfO','2018-08-28 15:32:49','2018-08-28 15:32:49',0.00,0,0,0,'','','',0,0,0.00,10186,'',NULL,0),
	(187,'avatars/10187.png','談家里','user','oV3d-1iIUELmDQFIi5LY1bZucncI','$2y$10$FP5.D0clOw8smno3i7g8a.nsV91GH6/ayRimTS.9eQDkhI1SiVeWu','2018-08-28 16:02:35','2018-08-28 16:02:35',0.00,0,0,0,'','','',0,0,0.00,10187,'',NULL,0),
	(188,'avatars/10188.png','酷达传媒(设计部)','user','oV3d-1jFBe1PNA60c0j0jJq46R2E','$2y$10$c7/88gBEtDTK0ZYvxKoPAepQC5VM0QGwHuUF4wz8M2ZbIq2kGkRiW','2018-08-28 17:15:44','2018-08-28 17:15:44',0.00,0,0,0,'','','',0,0,0.00,10188,'',NULL,0),
	(189,'avatars/10189.png','人生一串','user','oV3d-1qVkMKq1EqdiUQVqSRbdph8','$2y$10$ZfyGgbKMWLvc0av9hoagDuAopcyVJRarszi3qxwwdrJkN61G1Rruq','2018-08-28 21:23:08','2018-08-28 21:23:38',0.00,0,0,140250,'','','',0,0,0.00,10189,'',NULL,0),
	(190,'avatars/10190.png','阳光%坚强','user','oV3d-1tgtoyML7hPc7cWLbknuLK4','$2y$10$EBtcT/sIXsHoUBphNrur2O5ltUemEopXXWU8Tszh9BH40Y8SxO9.G','2018-08-28 22:30:45','2018-08-28 22:30:45',0.00,0,0,0,'','','',0,0,0.00,10190,'',NULL,0),
	(191,'avatars/10191.png','昼꫞暗','user','oV3d-1qTPpZ01IJH3CUCg5e8GYKo','$2y$10$0yI/h2m8znPjeLWgLfyxJuylN1JM4vWfIYjEvpzNqRMqLcZDNTK1G','2018-08-28 22:38:33','2018-08-28 22:38:33',0.00,0,0,0,'','','',0,0,0.00,10191,'',NULL,0),
	(192,'avatars/10192.png','许华威','user','oV3d-1rwkuD3nc_5MeUTo0Q0V_iM','$2y$10$/4qaKKvVTPZl4lGfiA5Xm.rb.pfERmoN8c2/WYjuewhJkzTmkpMAq','2018-08-29 11:54:57','2018-08-29 11:54:57',0.00,0,0,0,'','','',0,0,0.00,10192,'',NULL,0),
	(193,'avatars/10193.png','璐璐王','user','oV3d-1gIb_Bo-G6f3HTR8omyUpDE','$2y$10$gPKb909arE04RXr6M/DcGeTNu2LOVDUJtx1NWNo37S45mwieuyxeK','2018-08-29 14:07:53','2018-09-13 16:55:40',0.00,0,0,0,'','','',0,0,0.00,10193,'',NULL,1);

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table withdraws
# ------------------------------------------------------------

DROP TABLE IF EXISTS `withdraws`;

CREATE TABLE `withdraws` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `money` double(8,2) NOT NULL COMMENT '提现金额',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态：0（处理中）|1（已完成）|-1（提现失败）',
  `remark` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '备注说明',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `withdraws_user_id_index` (`user_id`),
  KEY `withdraws_account_id_index` (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `withdraws` WRITE;
/*!40000 ALTER TABLE `withdraws` DISABLE KEYS */;

INSERT INTO `withdraws` (`id`, `user_id`, `account_id`, `money`, `status`, `remark`, `created_at`, `updated_at`)
VALUES
	(14,46,6,1000.00,1,'','2018-08-20 18:52:56','2018-08-20 18:55:17'),
	(15,46,6,100.00,-1,'账号不对','2018-08-20 19:03:10','2018-08-20 19:34:04'),
	(16,46,6,100.00,1,'','2018-08-21 15:40:51','2018-08-21 15:41:09'),
	(17,55,7,500.00,-1,'账号不对','2018-08-21 15:47:05','2018-08-21 15:48:05'),
	(18,46,6,1000.00,-1,'账号不对','2018-08-23 09:42:58','2018-08-23 12:12:07'),
	(19,46,6,1000.00,-1,'账号不对','2018-08-24 10:31:13','2018-08-24 10:46:16'),
	(20,55,7,100.00,1,'','2018-08-24 10:47:37','2018-08-24 10:49:25');

/*!40000 ALTER TABLE `withdraws` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
