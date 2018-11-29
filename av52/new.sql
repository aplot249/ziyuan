-- MySQL dump 10.13  Distrib 5.7.23, for Linux (x86_64)
--
-- Host: localhost    Database: newfanqiang
-- ------------------------------------------------------
-- Server version	5.7.23-0ubuntu0.16.04.1

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=97 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can add group',3,'add_group'),(9,'Can change group',3,'change_group'),(10,'Can delete group',3,'delete_group'),(11,'Can view permission',2,'view_permission'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add Bookmark',6,'add_bookmark'),(22,'Can change Bookmark',6,'change_bookmark'),(23,'Can delete Bookmark',6,'delete_bookmark'),(24,'Can add User Setting',7,'add_usersettings'),(25,'Can change User Setting',7,'change_usersettings'),(26,'Can delete User Setting',7,'delete_usersettings'),(27,'Can add User Widget',8,'add_userwidget'),(28,'Can change User Widget',8,'change_userwidget'),(29,'Can delete User Widget',8,'delete_userwidget'),(30,'Can add log entry',9,'add_log'),(31,'Can change log entry',9,'change_log'),(32,'Can delete log entry',9,'delete_log'),(33,'Can view Bookmark',6,'view_bookmark'),(34,'Can view User Setting',7,'view_usersettings'),(35,'Can view User Widget',8,'view_userwidget'),(36,'Can view log entry',9,'view_log'),(37,'Can add captcha store',10,'add_captchastore'),(38,'Can change captcha store',10,'change_captchastore'),(39,'Can delete captcha store',10,'delete_captchastore'),(40,'Can view captcha store',10,'view_captchastore'),(41,'Can add 用户信息',11,'add_userprofile'),(42,'Can change 用户信息',11,'change_userprofile'),(43,'Can delete 用户信息',11,'delete_userprofile'),(44,'Can add 邮箱验证码',12,'add_emailverifyrecord'),(45,'Can change 邮箱验证码',12,'change_emailverifyrecord'),(46,'Can delete 邮箱验证码',12,'delete_emailverifyrecord'),(47,'Can view 用户信息',11,'view_userprofile'),(48,'Can view 邮箱验证码',12,'view_emailverifyrecord'),(49,'Can add 注册码',13,'add_code'),(50,'Can change 注册码',13,'change_code'),(51,'Can delete 注册码',13,'delete_code'),(52,'Can add 用户邀请',14,'add_invitetable'),(53,'Can change 用户邀请',14,'change_invitetable'),(54,'Can delete 用户邀请',14,'delete_invitetable'),(55,'Can add 梭影账号',15,'add_shadowsocksaccount'),(56,'Can change 梭影账号',15,'change_shadowsocksaccount'),(57,'Can delete 梭影账号',15,'delete_shadowsocksaccount'),(58,'Can add 生成梭影账号的模版',16,'add_shadowsockstemplate'),(59,'Can change 生成梭影账号的模版',16,'change_shadowsockstemplate'),(60,'Can delete 生成梭影账号的模版',16,'delete_shadowsockstemplate'),(61,'Can view 注册码',13,'view_code'),(62,'Can view 用户邀请',14,'view_invitetable'),(63,'Can view 梭影账号',15,'view_shadowsocksaccount'),(64,'Can view 生成梭影账号的模版',16,'view_shadowsockstemplate'),(65,'Can add crontab',17,'add_crontabschedule'),(66,'Can change crontab',17,'change_crontabschedule'),(67,'Can delete crontab',17,'delete_crontabschedule'),(68,'Can add interval',18,'add_intervalschedule'),(69,'Can change interval',18,'change_intervalschedule'),(70,'Can delete interval',18,'delete_intervalschedule'),(71,'Can add periodic task',19,'add_periodictask'),(72,'Can change periodic task',19,'change_periodictask'),(73,'Can delete periodic task',19,'delete_periodictask'),(74,'Can add periodic tasks',20,'add_periodictasks'),(75,'Can change periodic tasks',20,'change_periodictasks'),(76,'Can delete periodic tasks',20,'delete_periodictasks'),(77,'Can add task state',21,'add_taskmeta'),(78,'Can change task state',21,'change_taskmeta'),(79,'Can delete task state',21,'delete_taskmeta'),(80,'Can add saved group result',22,'add_tasksetmeta'),(81,'Can change saved group result',22,'change_tasksetmeta'),(82,'Can delete saved group result',22,'delete_tasksetmeta'),(83,'Can add task',23,'add_taskstate'),(84,'Can change task',23,'change_taskstate'),(85,'Can delete task',23,'delete_taskstate'),(86,'Can add worker',24,'add_workerstate'),(87,'Can change worker',24,'change_workerstate'),(88,'Can delete worker',24,'delete_workerstate'),(89,'Can view crontab',17,'view_crontabschedule'),(90,'Can view interval',18,'view_intervalschedule'),(91,'Can view periodic task',19,'view_periodictask'),(92,'Can view periodic tasks',20,'view_periodictasks'),(93,'Can view task state',21,'view_taskmeta'),(94,'Can view saved group result',22,'view_tasksetmeta'),(95,'Can view task',23,'view_taskstate'),(96,'Can view worker',24,'view_workerstate');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `captcha_captchastore`
--

DROP TABLE IF EXISTS `captcha_captchastore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `captcha_captchastore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `challenge` varchar(32) NOT NULL,
  `response` varchar(32) NOT NULL,
  `hashkey` varchar(40) NOT NULL,
  `expiration` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hashkey` (`hashkey`)
) ENGINE=MyISAM AUTO_INCREMENT=948 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `captcha_captchastore`
--

LOCK TABLES `captcha_captchastore` WRITE;
/*!40000 ALTER TABLE `captcha_captchastore` DISABLE KEYS */;
INSERT INTO `captcha_captchastore` VALUES (947,'IARG','iarg','60c7754f7a9bb871b5522ce5cb56f2b59c85a2dc','2018-11-29 04:37:20'),(946,'QKZJ','qkzj','8743de019d569712670fe57185299379f6f20f9c','2018-11-29 04:19:10'),(945,'CZDO','czdo','e0424c0433096d3527d3354bb812d8c28a40b2db','2018-11-28 09:47:38'),(932,'XESB','xesb','d0c68e07ae9f5e2476c10918893817f1cd71ca76','2018-11-28 08:20:11'),(934,'UZVN','uzvn','c1b7e106411588ffec19e4f626e669651d05ef9c','2018-11-28 08:20:33'),(935,'YJAM','yjam','4be29b30d0ac41f948d102531650e9429e4a9c3e','2018-11-28 08:20:36'),(937,'CFPR','cfpr','d26af28fefc89be2c2cd41687fa36ba7fe53c61e','2018-11-28 08:20:48'),(939,'TTYL','ttyl','b45fbc7cdf64d9c5287d75f4523bd495c7e3e687','2018-11-28 08:23:03'),(941,'PCYO','pcyo','c91239380c74968b6b144cccc32789de6ee6c8d7','2018-11-28 08:23:33'),(943,'ZRNB','zrnb','c8dc5d3fe964537e81811fce3e437e58d3722670','2018-11-28 09:23:40'),(944,'DUZQ','duzq','ee7dce9285d34b8ad1dda59413e91ac7b73a7a5b','2018-11-28 09:23:53');
/*!40000 ALTER TABLE `captcha_captchastore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `celery_taskmeta`
--

DROP TABLE IF EXISTS `celery_taskmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `celery_taskmeta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `task_id` varchar(255) NOT NULL,
  `status` varchar(50) NOT NULL,
  `result` longtext,
  `date_done` datetime NOT NULL,
  `traceback` longtext,
  `hidden` tinyint(1) NOT NULL,
  `meta` longtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `task_id` (`task_id`),
  KEY `celery_taskmeta_hidden_23fd02dc` (`hidden`)
) ENGINE=MyISAM AUTO_INCREMENT=119 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `celery_taskmeta`
--

LOCK TABLES `celery_taskmeta` WRITE;
/*!40000 ALTER TABLE `celery_taskmeta` DISABLE KEYS */;
INSERT INTO `celery_taskmeta` VALUES (1,'44e923f1-39e0-4390-9c6a-6154da855f9d','SUCCESS',NULL,'2018-10-30 06:49:05',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(2,'57e13234-dc88-407a-88e8-06263387e394','SUCCESS',NULL,'2018-10-30 06:54:46',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(3,'6d41be50-49eb-496a-8c94-686513997115','SUCCESS',NULL,'2018-10-30 06:58:46',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(4,'e8e21b5c-a86d-4e9f-8692-fca23180916c','SUCCESS',NULL,'2018-10-30 07:01:24',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(5,'b7d0a238-07e5-4cd3-994d-a3795d2fadfe','SUCCESS',NULL,'2018-10-30 07:03:25',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(6,'8cc19b7c-f1cc-4608-9409-57f074510c7d','SUCCESS',NULL,'2018-10-30 07:12:13',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(7,'ccff9528-80c1-4bb7-b15c-845890b95730','SUCCESS',NULL,'2018-10-30 08:54:34',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(8,'cf13cd6b-4dda-44d2-8b3b-433f79d4edb6','SUCCESS',NULL,'2018-10-30 13:58:39',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(9,'73684740-db59-4a0c-a276-16e98bc63ecb','SUCCESS',NULL,'2018-10-30 14:06:47',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(10,'186b3fe4-fd74-45e4-a053-87dc1bd3e72b','SUCCESS',NULL,'2018-10-30 14:19:40',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(11,'68e90410-3d0d-448f-bb07-b00ed99806c0','SUCCESS',NULL,'2018-10-31 03:15:57',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(12,'87165f50-2036-4c5d-9eb3-e45fd4b9e278','SUCCESS',NULL,'2018-10-31 04:20:20',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(13,'8b4fb26f-fe6b-42f5-8793-1f2a89c4f85c','SUCCESS',NULL,'2018-10-31 04:21:36',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(14,'04b264d5-713f-4e99-b3a5-7fb51d075cca','SUCCESS',NULL,'2018-10-31 07:44:01',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(15,'d200fd3a-58ba-4b35-add2-ef5c3f7763ae','SUCCESS',NULL,'2018-11-01 02:02:35',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(16,'0a60b5c0-acb2-412c-9ce8-3976102c1726','SUCCESS',NULL,'2018-11-01 02:07:44',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(17,'b395f29f-e1a5-4b55-a79c-8e5bca06eb8e','SUCCESS',NULL,'2018-11-01 02:08:28',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(18,'23f10914-dbbf-4ab9-ade6-4123434fa039','SUCCESS',NULL,'2018-11-01 02:10:23',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(19,'7d580b12-d265-418a-a6fb-1edd7f4f9cfc','SUCCESS',NULL,'2018-11-01 02:40:04',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(20,'fedf1f09-daad-481b-b9a0-ac754383d6b6','SUCCESS',NULL,'2018-11-01 06:43:28',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(21,'2c91621f-cf0c-482a-8677-0f7b71f30a39','SUCCESS',NULL,'2018-11-01 06:57:22',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(22,'10cb9ec8-2619-4400-9d3e-d991170d30b8','SUCCESS',NULL,'2018-11-01 07:40:14',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(23,'063c641d-46cc-4f56-9325-1543c8477322','SUCCESS',NULL,'2018-11-01 08:44:04',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(24,'623f3968-35a4-4290-b357-297c48169632','SUCCESS',NULL,'2018-11-01 08:48:32',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(25,'0be58d56-0772-4416-bde8-0b0990658798','SUCCESS',NULL,'2018-11-02 03:05:41',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(26,'71032229-e692-4980-bc25-382dfb482c19','SUCCESS',NULL,'2018-11-02 03:10:51',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(27,'edb8e273-d479-4aac-ba52-fafdb09fe244','SUCCESS',NULL,'2018-11-02 04:48:51',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(28,'2230d4a9-9890-416d-8084-abf29d09be0b','SUCCESS',NULL,'2018-11-03 10:12:40',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(29,'d78cc550-13ef-4365-b36b-d3f671a2108a','SUCCESS',NULL,'2018-11-03 10:15:22',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(30,'41a77b79-5092-4b50-bea8-8b4e0c37853c','SUCCESS',NULL,'2018-11-03 14:56:13',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(31,'98e558b0-5798-4fbe-8226-394311fa79b5','SUCCESS',NULL,'2018-11-03 15:00:32',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(32,'f81cd6ee-6f7b-45e1-bcac-6866826c1403','SUCCESS',NULL,'2018-11-05 03:15:14',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(33,'c712f7df-9841-42e0-aac2-ed904776334f','SUCCESS',NULL,'2018-11-05 06:30:03',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(34,'93dcb270-9097-4943-88b9-86b35ed8af1a','SUCCESS',NULL,'2018-11-05 06:32:04',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(35,'43eeb8a1-9a38-4a93-aa92-421835d2ca21','SUCCESS',NULL,'2018-11-05 13:26:04',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(36,'3034d7b4-2f96-4077-a7f2-24e17a9a971a','SUCCESS',NULL,'2018-11-06 04:19:34',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(37,'b77e5792-6b5e-4bb9-a73c-48f730b1e28c','SUCCESS',NULL,'2018-11-06 05:49:08',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(38,'5a9582c7-22f8-4621-a3fd-e3ad04fd892f','SUCCESS',NULL,'2018-11-06 05:55:24',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(39,'2879b330-d173-4a02-aa92-56f53d1f9b10','SUCCESS',NULL,'2018-11-06 05:59:20',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(40,'391bd2ba-7b8b-4553-991f-c3161eac3c8a','SUCCESS',NULL,'2018-11-06 06:03:41',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(41,'3c036b13-53b5-483e-9931-4423d81ca490','SUCCESS',NULL,'2018-11-07 02:35:08',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(42,'72d0a071-2361-4829-b3ca-bdedc56b2ec3','SUCCESS',NULL,'2018-11-07 02:53:18',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(43,'66382c8e-fb6a-4f1e-97c7-fcc589cf6a15','SUCCESS',NULL,'2018-11-07 03:52:22',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(44,'ac4b2596-3c41-4f66-bb24-b29e46712203','SUCCESS',NULL,'2018-11-07 03:58:09',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(45,'a2b329ea-a927-4456-85c4-61932bc6da0f','SUCCESS',NULL,'2018-11-07 09:26:11',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(46,'bad2047f-2c4f-47ab-b520-dd5c7ad70bf9','SUCCESS',NULL,'2018-11-07 09:52:06',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(47,'7d85f1ac-05c2-4938-a009-367b7e52ccca','SUCCESS',NULL,'2018-11-08 06:36:54',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(48,'8c2ca5ac-d7a0-4a06-9d2e-af5fbcb09fae','SUCCESS',NULL,'2018-11-08 06:38:32',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(49,'1d3960bd-a452-4c5c-9e80-c6e178354e28','SUCCESS',NULL,'2018-11-08 08:26:05',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(50,'1471e0d4-bc97-40ae-adc7-85a661d81095','SUCCESS',NULL,'2018-11-08 08:28:28',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(51,'6483a625-7791-424e-be73-8cec464a3d19','SUCCESS',NULL,'2018-11-08 13:17:30',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(52,'c8dfee61-633f-45d5-96a2-e4ebb199bbac','SUCCESS',NULL,'2018-11-08 13:21:28',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(53,'c46f7c41-3166-42a1-8118-dae58c2170ee','SUCCESS',NULL,'2018-11-08 13:36:59',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(54,'5a1f3bdb-c56b-4d11-9f3c-c1cc0df0f050','SUCCESS',NULL,'2018-11-08 13:40:26',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(55,'a152a0be-9801-4470-bfb2-e8340439a717','SUCCESS',NULL,'2018-11-08 15:03:39',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(56,'49d03bdb-00b1-4219-9746-302ad53f7121','SUCCESS',NULL,'2018-11-08 15:08:28',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(57,'560d1f4d-e66c-4434-b9cc-6d3f8f7f501d','SUCCESS',NULL,'2018-11-08 15:28:07',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(58,'e7b1abc5-b11a-4aa5-940e-30c55a0902de','SUCCESS',NULL,'2018-11-11 12:06:30',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(59,'35a3c774-9f66-48f6-873e-9aa01e222aa9','SUCCESS',NULL,'2018-11-11 12:11:07',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(60,'0f1f366b-6c49-45dc-b196-6ae971ae334d','SUCCESS',NULL,'2018-11-12 02:47:26',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(61,'830598d9-c03f-41f2-ae89-c08ce593720d','SUCCESS',NULL,'2018-11-12 02:48:31',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(62,'3fb1d393-6a96-483f-944a-20b53605cbf8','SUCCESS',NULL,'2018-11-12 05:56:52',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(63,'7c15c27a-bf33-40a5-8d7d-8a5e767f07f4','SUCCESS',NULL,'2018-11-12 06:00:15',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(64,'61ac22f6-b202-4d95-8d35-5befd02cf17b','SUCCESS',NULL,'2018-11-12 11:05:17',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(65,'856420eb-8b2e-46bb-be97-67e441d2d681','SUCCESS',NULL,'2018-11-12 11:16:47',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(66,'49eadea0-9b1a-4f09-aa89-ba78519c9ebe','SUCCESS',NULL,'2018-11-13 08:50:24',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(67,'46b72380-c9b3-4338-961a-91919b32c55e','SUCCESS',NULL,'2018-11-13 08:54:09',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(68,'a426ec1f-e9c4-4638-b5bc-bebf273bbf01','SUCCESS',NULL,'2018-11-13 13:40:38',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(69,'562533ce-ce00-406a-b50a-f4ebaa1908c0','SUCCESS',NULL,'2018-11-13 13:46:25',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(70,'71c86abe-5350-4f29-a602-f3fff979867e','SUCCESS',NULL,'2018-11-14 09:25:09',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(71,'05109d7d-9c9b-419f-9435-c5c3561fd12c','SUCCESS',NULL,'2018-11-14 09:27:12',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(72,'6d01352e-22eb-4775-8467-6d13c8ea80dc','SUCCESS',NULL,'2018-11-14 09:50:15',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(73,'7c412d96-5fbe-48ba-8eb5-efc31132ec5e','SUCCESS',NULL,'2018-11-14 13:28:03',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(74,'e3c2eeb8-bf1f-4eef-862c-97d0849af47a','SUCCESS',NULL,'2018-11-15 08:47:47',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(75,'e8a53249-b2fa-467e-a9ba-726860c80e00','SUCCESS',NULL,'2018-11-15 08:54:28',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(76,'826f0d35-565b-43bd-8796-21bd0a7e12a1','SUCCESS',NULL,'2018-11-17 05:05:45',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(77,'ceb56574-2957-4beb-a3fd-70c5ca557d5f','SUCCESS',NULL,'2018-11-17 05:19:49',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(78,'8a5653d5-cd04-4dc3-96a3-f968caba3d15','SUCCESS',NULL,'2018-11-17 07:09:54',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(79,'4b4971f1-612b-44b2-801e-4785c8e8926f','FAILURE','gAJjZXhjZXB0aW9ucwpPU0Vycm9yCnEASyBYCwAAAEJyb2tlbiBwaXBlcQGGcQJScQMu','2018-11-17 07:22:26','Traceback (most recent call last):\n  File \"/usr/local/lib/python3.5/dist-packages/celery/app/trace.py\", line 240, in trace_task\n    R = retval = fun(*args, **kwargs)\n  File \"/usr/local/lib/python3.5/dist-packages/celery/app/trace.py\", line 438, in __protected_call__\n    return self.run(*args, **kwargs)\n  File \"/home/django_fanqiang/apps/users/task.py\", line 26, in tongbu\n    s.send((command).encode())\nBrokenPipeError: [Errno 32] Broken pipe\n',0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(80,'068c312e-8e7e-4641-814f-1f10fcb1e57a','SUCCESS',NULL,'2018-11-18 05:24:16',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(81,'48ef6316-5c8f-498a-9999-28d6ed8bc58b','SUCCESS',NULL,'2018-11-18 14:39:56',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(82,'9c9d4846-94d0-4d6c-8509-7934a0c5df0c','SUCCESS',NULL,'2018-11-18 14:45:21',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(83,'e8dd3f8a-5823-45b1-94ed-c5ca305eb00a','SUCCESS',NULL,'2018-11-19 03:00:52',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(84,'34d46bc3-65a1-4874-8e58-728a0a71e848','SUCCESS',NULL,'2018-11-19 03:06:45',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(85,'064e9b98-be1e-4ceb-a81f-8d8e83220d53','SUCCESS',NULL,'2018-11-19 09:55:23',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(86,'ee4d5809-aa48-49f8-a10e-de340fa56ef4','SUCCESS',NULL,'2018-11-19 10:40:19',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(87,'773515cb-5fa2-402a-9fcf-dc9caf91a50e','SUCCESS',NULL,'2018-11-19 10:47:13',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(88,'cdf9b3d5-f5ca-4c2f-aff2-87f52f0483aa','SUCCESS',NULL,'2018-11-21 03:14:29',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(89,'d33dd51a-2231-47ae-ab06-662a82558258','SUCCESS',NULL,'2018-11-21 03:17:57',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(90,'34987fa7-065e-4291-80bc-c0d43b95b3ba','SUCCESS',NULL,'2018-11-21 07:50:07',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(91,'bf3a67a1-0754-40d5-81e4-8be40c58d315','SUCCESS',NULL,'2018-11-22 14:28:44',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(92,'86064ffc-51b1-4f3b-b7e6-8b969b923e15','SUCCESS',NULL,'2018-11-22 14:35:22',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(93,'b63fade2-925b-451e-a8e3-46745886e01c','SUCCESS',NULL,'2018-11-22 14:43:11',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(94,'8f20a437-5498-4614-8a07-c9d89c6f5f35','SUCCESS',NULL,'2018-11-22 14:45:58',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(95,'adec8bdf-6d3f-41e1-86ba-58671e8a7efe','SUCCESS',NULL,'2018-11-23 03:26:50',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(96,'d572cdf2-a367-4a46-a1a2-91b6c1eee43b','SUCCESS',NULL,'2018-11-24 00:48:24',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(97,'0fe19d5d-5354-4b91-87f1-ddbc0de3f95d','SUCCESS',NULL,'2018-11-24 02:37:28',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(98,'b2700e43-4998-48c8-a370-4fa0ecd30325','SUCCESS',NULL,'2018-11-24 03:03:25',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(99,'5f96d46d-e26a-4b34-bcc7-174c3e17b850','SUCCESS',NULL,'2018-11-24 06:45:03',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(100,'34ce83e2-ced7-4bf0-8405-d7d3f840b135','SUCCESS',NULL,'2018-11-24 10:49:57',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(101,'7facb2ec-8065-49fb-895e-3865658cab0e','SUCCESS',NULL,'2018-11-24 14:09:47',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(102,'74c6b39c-b430-4601-97b9-2555a4b83920','SUCCESS',NULL,'2018-11-24 14:12:42',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(103,'702a9bf0-0508-4db3-b040-b0bef76944a4','FAILURE','gAJjZXhjZXB0aW9ucwpPU0Vycm9yCnEASyBYCwAAAEJyb2tlbiBwaXBlcQGGcQJScQMu','2018-11-24 14:16:04','Traceback (most recent call last):\n  File \"/usr/local/lib/python3.5/dist-packages/celery/app/trace.py\", line 240, in trace_task\n    R = retval = fun(*args, **kwargs)\n  File \"/usr/local/lib/python3.5/dist-packages/celery/app/trace.py\", line 438, in __protected_call__\n    return self.run(*args, **kwargs)\n  File \"/home/django_fanqiang/apps/users/task.py\", line 26, in tongbu\n    s.send((command).encode())\nBrokenPipeError: [Errno 32] Broken pipe\n',0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(104,'788787e3-7e32-4abc-884a-3f44eb819e88','SUCCESS',NULL,'2018-11-24 16:00:12',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(105,'dec7b356-2b08-4b12-b6b4-a433d69ede52','FAILURE','gAJjZXhjZXB0aW9ucwpPU0Vycm9yCnEASyBYCwAAAEJyb2tlbiBwaXBlcQGGcQJScQMu','2018-11-24 16:06:54','Traceback (most recent call last):\n  File \"/usr/local/lib/python3.5/dist-packages/celery/app/trace.py\", line 240, in trace_task\n    R = retval = fun(*args, **kwargs)\n  File \"/usr/local/lib/python3.5/dist-packages/celery/app/trace.py\", line 438, in __protected_call__\n    return self.run(*args, **kwargs)\n  File \"/home/django_fanqiang/apps/users/task.py\", line 26, in tongbu\n    s.send((command).encode())\nBrokenPipeError: [Errno 32] Broken pipe\n',0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(106,'3b81ba7f-5860-405f-b1ef-9e1485e9fc35','SUCCESS',NULL,'2018-11-25 04:42:06',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(107,'fbd777e8-a587-4e18-8c80-bdb5a17e17ec','FAILURE','gAJjZXhjZXB0aW9ucwpPU0Vycm9yCnEASyBYCwAAAEJyb2tlbiBwaXBlcQGGcQJScQMu','2018-11-25 06:10:45','Traceback (most recent call last):\n  File \"/usr/local/lib/python3.5/dist-packages/celery/app/trace.py\", line 240, in trace_task\n    R = retval = fun(*args, **kwargs)\n  File \"/usr/local/lib/python3.5/dist-packages/celery/app/trace.py\", line 438, in __protected_call__\n    return self.run(*args, **kwargs)\n  File \"/home/django_fanqiang/apps/users/task.py\", line 26, in tongbu\n    s.send((command).encode())\nBrokenPipeError: [Errno 32] Broken pipe\n',0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(108,'20575c39-7448-46c7-ae2b-44cefcb57044','SUCCESS',NULL,'2018-11-25 10:12:42',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(109,'10c115d7-408c-4328-aaf4-4dd1e129c411','FAILURE','gAJjZXhjZXB0aW9ucwpPU0Vycm9yCnEASyBYCwAAAEJyb2tlbiBwaXBlcQGGcQJScQMu','2018-11-25 10:16:34','Traceback (most recent call last):\n  File \"/usr/local/lib/python3.5/dist-packages/celery/app/trace.py\", line 240, in trace_task\n    R = retval = fun(*args, **kwargs)\n  File \"/usr/local/lib/python3.5/dist-packages/celery/app/trace.py\", line 438, in __protected_call__\n    return self.run(*args, **kwargs)\n  File \"/home/django_fanqiang/apps/users/task.py\", line 26, in tongbu\n    s.send((command).encode())\nBrokenPipeError: [Errno 32] Broken pipe\n',0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(110,'0a7c1790-4ea7-4d08-a045-e0d8567c8cfe','SUCCESS',NULL,'2018-11-26 05:44:37',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(111,'eb2f8b84-fe99-4e7e-9d88-bfcd985dd812','SUCCESS',NULL,'2018-11-26 12:54:58',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(112,'b4843354-b7ed-42a5-b4be-82772e417343','FAILURE','gAJjZXhjZXB0aW9ucwpPU0Vycm9yCnEASyBYCwAAAEJyb2tlbiBwaXBlcQGGcQJScQMu','2018-11-26 13:08:46','Traceback (most recent call last):\n  File \"/usr/local/lib/python3.5/dist-packages/celery/app/trace.py\", line 240, in trace_task\n    R = retval = fun(*args, **kwargs)\n  File \"/usr/local/lib/python3.5/dist-packages/celery/app/trace.py\", line 438, in __protected_call__\n    return self.run(*args, **kwargs)\n  File \"/home/django_fanqiang/apps/users/task.py\", line 26, in tongbu\n    s.send((command).encode())\nBrokenPipeError: [Errno 32] Broken pipe\n',0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(113,'d72a1ef4-9e67-4efa-8406-b4a5c4a1a4c5','FAILURE','gAJjZXhjZXB0aW9ucwpPU0Vycm9yCnEASyBYCwAAAEJyb2tlbiBwaXBlcQGGcQJScQMu','2018-11-26 13:08:47','Traceback (most recent call last):\n  File \"/usr/local/lib/python3.5/dist-packages/celery/app/trace.py\", line 240, in trace_task\n    R = retval = fun(*args, **kwargs)\n  File \"/usr/local/lib/python3.5/dist-packages/celery/app/trace.py\", line 438, in __protected_call__\n    return self.run(*args, **kwargs)\n  File \"/home/django_fanqiang/apps/users/task.py\", line 26, in tongbu\n    s.send((command).encode())\nBrokenPipeError: [Errno 32] Broken pipe\n',0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(114,'51b979dc-c07b-48e4-9781-c66d97752769','SUCCESS',NULL,'2018-11-28 06:51:31',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(115,'63615ada-9119-4048-a47f-a90bc7b09192','FAILURE','gAJjZXhjZXB0aW9ucwpPU0Vycm9yCnEASyBYCwAAAEJyb2tlbiBwaXBlcQGGcQJScQMu','2018-11-28 06:57:12','Traceback (most recent call last):\n  File \"/usr/local/lib/python3.5/dist-packages/celery/app/trace.py\", line 240, in trace_task\n    R = retval = fun(*args, **kwargs)\n  File \"/usr/local/lib/python3.5/dist-packages/celery/app/trace.py\", line 438, in __protected_call__\n    return self.run(*args, **kwargs)\n  File \"/home/django_fanqiang/apps/users/task.py\", line 26, in tongbu\n    s.send((command).encode())\nBrokenPipeError: [Errno 32] Broken pipe\n',0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(116,'eed1cc3a-e782-4bb5-8a8c-48f41ce74272','SUCCESS',NULL,'2018-11-28 07:04:06',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(117,'a38e9ead-025d-43da-b417-a82eea1f9c0d','FAILURE','gAJjZXhjZXB0aW9ucwpPU0Vycm9yCnEASyBYCwAAAEJyb2tlbiBwaXBlcQGGcQJScQMu','2018-11-28 07:07:54','Traceback (most recent call last):\n  File \"/usr/local/lib/python3.5/dist-packages/celery/app/trace.py\", line 240, in trace_task\n    R = retval = fun(*args, **kwargs)\n  File \"/usr/local/lib/python3.5/dist-packages/celery/app/trace.py\", line 438, in __protected_call__\n    return self.run(*args, **kwargs)\n  File \"/home/django_fanqiang/apps/users/task.py\", line 26, in tongbu\n    s.send((command).encode())\nBrokenPipeError: [Errno 32] Broken pipe\n',0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(118,'63bc6aef-a19e-42c8-9dd3-175ca0998158','SUCCESS',NULL,'2018-11-28 08:18:36',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9');
/*!40000 ALTER TABLE `celery_taskmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `celery_tasksetmeta`
--

DROP TABLE IF EXISTS `celery_tasksetmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `celery_tasksetmeta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `taskset_id` varchar(255) NOT NULL,
  `result` longtext NOT NULL,
  `date_done` datetime NOT NULL,
  `hidden` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `taskset_id` (`taskset_id`),
  KEY `celery_tasksetmeta_hidden_593cfc24` (`hidden`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `celery_tasksetmeta`
--

LOCK TABLES `celery_tasksetmeta` WRITE;
/*!40000 ALTER TABLE `celery_tasksetmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `celery_tasksetmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(2,'auth','permission'),(3,'auth','group'),(4,'contenttypes','contenttype'),(5,'sessions','session'),(6,'xadmin','bookmark'),(7,'xadmin','usersettings'),(8,'xadmin','userwidget'),(9,'xadmin','log'),(10,'captcha','captchastore'),(11,'users','userprofile'),(12,'users','emailverifyrecord'),(13,'jhsfq','code'),(14,'jhsfq','invitetable'),(15,'jhsfq','shadowsocksaccount'),(16,'jhsfq','shadowsockstemplate'),(17,'djcelery','crontabschedule'),(18,'djcelery','intervalschedule'),(19,'djcelery','periodictask'),(20,'djcelery','periodictasks'),(21,'djcelery','taskmeta'),(22,'djcelery','tasksetmeta'),(23,'djcelery','taskstate'),(24,'djcelery','workerstate');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2018-10-30 11:37:48'),(2,'contenttypes','0002_remove_content_type_name','2018-10-30 11:37:48'),(3,'auth','0001_initial','2018-10-30 11:37:49'),(4,'auth','0002_alter_permission_name_max_length','2018-10-30 11:37:49'),(5,'auth','0003_alter_user_email_max_length','2018-10-30 11:37:49'),(6,'auth','0004_alter_user_username_opts','2018-10-30 11:37:49'),(7,'auth','0005_alter_user_last_login_null','2018-10-30 11:37:49'),(8,'auth','0006_require_contenttypes_0002','2018-10-30 11:37:49'),(9,'auth','0007_alter_validators_add_error_messages','2018-10-30 11:37:49'),(10,'auth','0008_alter_user_username_max_length','2018-10-30 11:37:49'),(11,'auth','0009_alter_user_last_name_max_length','2018-10-30 11:37:49'),(12,'users','0001_initial','2018-10-30 11:37:50'),(13,'admin','0001_initial','2018-10-30 11:37:50'),(14,'admin','0002_logentry_remove_auto_add','2018-10-30 11:37:50'),(15,'captcha','0001_initial','2018-10-30 11:37:51'),(16,'djcelery','0001_initial','2018-10-30 11:37:52'),(17,'jhsfq','0001_initial','2018-10-30 11:37:52'),(18,'sessions','0001_initial','2018-10-30 11:37:52'),(19,'xadmin','0001_initial','2018-10-30 11:37:53'),(20,'xadmin','0002_log','2018-10-30 11:37:53'),(21,'xadmin','0003_auto_20160715_0100','2018-10-30 11:37:54');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('arku6j1zgjtgpy3j79wmf6v94yjzvo5v','Zjk0NTdiZDUzNGU5MDA5ZTE3Mjk0N2EyMzE2MTZkNDVjMWI5NmUzYTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImU0MWZhNGE1Mzg1MGRlZTU5NDk2NDE1NTRlNWQ1YjEwYzE1YzY0ZGQiLCJMSVNUX1FVRVJZIjpbWyJqaHNmcSIsInNoYWRvd3NvY2tzdGVtcGxhdGUiXSwiIl19','2018-11-13 12:08:02'),('gamgwzdyhcg1kr2ltgikqydnie1zj2gn','YjY3YmNmN2YzNWQ3YjRmMzA4NmYxNzIzMTBkYjRhZTQ4NjU2ZWE4ZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiTElTVF9RVUVSWSI6W1siamhzZnEiLCJzaGFkb3dzb2Nrc2FjY291bnQiXSwiIl0sIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlNDFmYTRhNTM4NTBkZWU1OTQ5NjQxNTU0ZTVkNWIxMGMxNWM2NGRkIiwibmF2X21lbnUiOiJbe1widGl0bGVcIjogXCJcdTRlYTRcdTYzNjJcdTc1MWZGUVwiLCBcIm1lbnVzXCI6IFt7XCJ0aXRsZVwiOiBcIlx1NzUxZlx1NjIxMFx1NjhhZFx1NWY3MVx1OGQyNlx1NTNmN1x1NzY4NFx1NmEyMVx1NzI0OFwiLCBcImljb25cIjogbnVsbCwgXCJ1cmxcIjogXCIveGFkbWluL2poc2ZxL3NoYWRvd3NvY2tzdGVtcGxhdGUvXCIsIFwib3JkZXJcIjogN30sIHtcInRpdGxlXCI6IFwiXHU2OGFkXHU1ZjcxXHU4ZDI2XHU1M2Y3XCIsIFwiaWNvblwiOiBcImZhIGZhLXBsYW5lXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9qaHNmcS9zaGFkb3dzb2Nrc2FjY291bnQvXCIsIFwib3JkZXJcIjogOH0sIHtcInRpdGxlXCI6IFwiXHU2Y2U4XHU1MThjXHU3ODAxXCIsIFwiaWNvblwiOiBudWxsLCBcInVybFwiOiBcIi94YWRtaW4vamhzZnEvY29kZS9cIiwgXCJvcmRlclwiOiA5fSwge1widGl0bGVcIjogXCJcdTc1MjhcdTYyMzdcdTkwODBcdThiZjdcIiwgXCJpY29uXCI6IG51bGwsIFwidXJsXCI6IFwiL3hhZG1pbi9qaHNmcS9pbnZpdGV0YWJsZS9cIiwgXCJvcmRlclwiOiAxMH1dLCBcImZpcnN0X3VybFwiOiBcIi94YWRtaW4vamhzZnEvc2hhZG93c29ja3N0ZW1wbGF0ZS9cIiwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtcGxhbmVcIn0sIHtcInRpdGxlXCI6IFwiXHU3NTI4XHU2MjM3XCIsIFwibWVudXNcIjogW3tcInRpdGxlXCI6IFwiXHU3NTI4XHU2MjM3XHU0ZmUxXHU2MDZmXCIsIFwiaWNvblwiOiBcImZhIGZhLXVzZXJcIiwgXCJ1cmxcIjogXCIveGFkbWluL3VzZXJzL3VzZXJwcm9maWxlL1wiLCBcIm9yZGVyXCI6IDN9XSwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL3VzZXJzL3VzZXJwcm9maWxlL1wiLCBcImZpcnN0X2ljb25cIjogXCJmYSBmYS11c2VyXCJ9LCB7XCJ0aXRsZVwiOiBcIlx1N2JhMVx1NzQwNlwiLCBcIm1lbnVzXCI6IFt7XCJ0aXRsZVwiOiBcIlx1NjVlNVx1NWZkN1x1OGJiMFx1NWY1NVwiLCBcImljb25cIjogXCJmYSBmYS1jb2dcIiwgXCJ1cmxcIjogXCIveGFkbWluL3hhZG1pbi9sb2cvXCIsIFwib3JkZXJcIjogNn1dLCBcImZpcnN0X3VybFwiOiBcIi94YWRtaW4veGFkbWluL2xvZy9cIiwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtY29nXCJ9LCB7XCJ0aXRsZVwiOiBcIlx1OGJhNFx1OGJjMVx1NTQ4Y1x1NjM4OFx1Njc0M1wiLCBcIm1lbnVzXCI6IFt7XCJ0aXRsZVwiOiBcIlx1N2VjNFwiLCBcImljb25cIjogXCJmYSBmYS1ncm91cFwiLCBcInVybFwiOiBcIi94YWRtaW4vYXV0aC9ncm91cC9cIiwgXCJvcmRlclwiOiAyfSwge1widGl0bGVcIjogXCJcdTY3NDNcdTk2NTBcIiwgXCJpY29uXCI6IFwiZmEgZmEtbG9ja1wiLCBcInVybFwiOiBcIi94YWRtaW4vYXV0aC9wZXJtaXNzaW9uL1wiLCBcIm9yZGVyXCI6IDR9XSwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL2F1dGgvZ3JvdXAvXCIsIFwiZmlyc3RfaWNvblwiOiBcImZhIGZhLWdyb3VwXCJ9XSJ9','2018-12-12 07:21:16'),('srzvx26al5fjd3eobl9scehs7yix9f1u','MTA3Yjc1OTU3YzgzZjE4MDBhMjY3OGYzZTdkZmMwNTJjZTMxZTA0Mzp7Il9hdXRoX3VzZXJfaWQiOiI1NyIsIl9hdXRoX3VzZXJfaGFzaCI6IjEzNmVhYjIxNTU5YTg5NmI2YmEyNjRmNzZlNTY0YTc2NjBmOGY5MmEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIn0=','2018-12-08 14:15:49'),('s8zhypk7z2gxan2zvl50jp31of93r8h7','NmEyMzJiYWQxN2M3NDBlNTQ5MjhhYWI1NjZmNWZiODBiNGIxZDY5Yjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImU0MWZhNGE1Mzg1MGRlZTU5NDk2NDE1NTRlNWQ1YjEwYzE1YzY0ZGQiLCJMSVNUX1FVRVJZIjpbWyJqaHNmcSIsInNoYWRvd3NvY2tzYWNjb3VudCJdLCIiXSwibmF2X21lbnUiOiJbe1wiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi9qaHNmcS9jb2RlL1wiLCBcIm1lbnVzXCI6IFt7XCJvcmRlclwiOiA3LCBcInVybFwiOiBcIi94YWRtaW4vamhzZnEvc2hhZG93c29ja3N0ZW1wbGF0ZS9cIiwgXCJpY29uXCI6IG51bGwsIFwidGl0bGVcIjogXCJcdTc1MWZcdTYyMTBcdTY4YWRcdTVmNzFcdThkMjZcdTUzZjdcdTc2ODRcdTZhMjFcdTcyNDhcIn0sIHtcIm9yZGVyXCI6IDgsIFwidXJsXCI6IFwiL3hhZG1pbi9qaHNmcS9zaGFkb3dzb2Nrc2FjY291bnQvXCIsIFwiaWNvblwiOiBcImZhIGZhLXBsYW5lXCIsIFwidGl0bGVcIjogXCJcdTY4YWRcdTVmNzFcdThkMjZcdTUzZjdcIn0sIHtcIm9yZGVyXCI6IDksIFwidXJsXCI6IFwiL3hhZG1pbi9qaHNmcS9jb2RlL1wiLCBcImljb25cIjogbnVsbCwgXCJ0aXRsZVwiOiBcIlx1NmNlOFx1NTE4Y1x1NzgwMVwifSwge1wib3JkZXJcIjogMTAsIFwidXJsXCI6IFwiL3hhZG1pbi9qaHNmcS9pbnZpdGV0YWJsZS9cIiwgXCJpY29uXCI6IG51bGwsIFwidGl0bGVcIjogXCJcdTc1MjhcdTYyMzdcdTkwODBcdThiZjdcIn1dLCBcInRpdGxlXCI6IFwiXHU0ZWE0XHU2MzYyXHU3NTFmRlFcIiwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtcGxhbmVcIn0sIHtcImZpcnN0X3VybFwiOiBcIi94YWRtaW4vdXNlcnMvdXNlcnByb2ZpbGUvXCIsIFwibWVudXNcIjogW3tcIm9yZGVyXCI6IDMsIFwidXJsXCI6IFwiL3hhZG1pbi91c2Vycy91c2VycHJvZmlsZS9cIiwgXCJpY29uXCI6IFwiZmEgZmEtdXNlclwiLCBcInRpdGxlXCI6IFwiXHU3NTI4XHU2MjM3XHU0ZmUxXHU2MDZmXCJ9XSwgXCJ0aXRsZVwiOiBcIlx1NzUyOFx1NjIzN1wiLCBcImZpcnN0X2ljb25cIjogXCJmYSBmYS11c2VyXCJ9LCB7XCJmaXJzdF91cmxcIjogXCIveGFkbWluL3hhZG1pbi9sb2cvXCIsIFwibWVudXNcIjogW3tcIm9yZGVyXCI6IDYsIFwidXJsXCI6IFwiL3hhZG1pbi94YWRtaW4vbG9nL1wiLCBcImljb25cIjogXCJmYSBmYS1jb2dcIiwgXCJ0aXRsZVwiOiBcIlx1NjVlNVx1NWZkN1x1OGJiMFx1NWY1NVwifV0sIFwidGl0bGVcIjogXCJcdTdiYTFcdTc0MDZcIiwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtY29nXCJ9LCB7XCJmaXJzdF91cmxcIjogXCIveGFkbWluL2F1dGgvZ3JvdXAvXCIsIFwibWVudXNcIjogW3tcIm9yZGVyXCI6IDIsIFwidXJsXCI6IFwiL3hhZG1pbi9hdXRoL2dyb3VwL1wiLCBcImljb25cIjogXCJmYSBmYS1ncm91cFwiLCBcInRpdGxlXCI6IFwiXHU3ZWM0XCJ9LCB7XCJvcmRlclwiOiA0LCBcInVybFwiOiBcIi94YWRtaW4vYXV0aC9wZXJtaXNzaW9uL1wiLCBcImljb25cIjogXCJmYSBmYS1sb2NrXCIsIFwidGl0bGVcIjogXCJcdTY3NDNcdTk2NTBcIn1dLCBcInRpdGxlXCI6IFwiXHU4YmE0XHU4YmMxXHU1NDhjXHU2Mzg4XHU2NzQzXCIsIFwiZmlyc3RfaWNvblwiOiBcImZhIGZhLWdyb3VwXCJ9XSJ9','2018-11-13 06:37:43'),('jfaufuragat2wr5cr2crrw242iiehlc7','NTBkZjJiZDE2ZTUxMGYyZTdiMWU2YzczZTUwZDAxZTVlOGM5ZDU4ZDp7Il9hdXRoX3VzZXJfaWQiOiI1NCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YmEwODQxZjEzNTYwZmJlZWU5YWM5ZGMxZTNkZTJjMWNjZjhhNjg4In0=','2018-12-08 00:51:10'),('766addo3gxe0tzd6n13epidm62smeza7','ZDAyZTAxMjdmNjA1NmI4ZTc1YTI2NDlkZTA4OGJmMTMyYzE2YThjODp7Il9hdXRoX3VzZXJfaGFzaCI6ImMzYmNiMjQwYjE1ZDcxNTA5MTc2OTc5N2ExZGU3MzhlODNmZjQ0ZjQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEzIn0=','2018-11-15 02:05:09'),('1ork8700whtio0lrd630axvalwisj1bh','MjQwNDg2YzVjZGU2MjM1ZDNiMmE5MjcyNzgwMjVhYTBjOTQ1MDc1MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImZlN2JkMWM5YTYzN2MzNjVjNmJlNjIzYzBiMDgxMDkwYzM2ZjM1MWMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjkifQ==','2018-11-13 07:06:43'),('zmtsyk0vdcgcg7izb6139n6wmw2axuxi','NGY5OTI5ZDIzMTJjZWZlZTFlNzEwNzdlZDhlNGZjYTE5Y2IyNjlmMTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxYzQ0NzhhOTVlOGFmMjBkMjdjMzRjMGNlMjVjNzRlNjNhMjZjMzI5IiwiX2F1dGhfdXNlcl9pZCI6IjEwIn0=','2018-11-14 03:15:08'),('3ek3ouqv62y07ivsibknd3fzuc9kucko','Yjg0ZjIxODRiY2RjMTA1YmU1ZTM1ZDkyN2QxNDYwMjc2YzM3ZWM5ODp7Il9hdXRoX3VzZXJfaGFzaCI6IjYzNjQ2Y2Y4OWZmZjkyNjBmNmY5OWM5ZjdkNzU3NjU5ZDM2ZWNkNDciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjIifQ==','2018-11-13 10:26:05'),('asloeumsa3vloalozlae03ptmbuyvfwq','OWRkODA0N2EzMGViOGZmZGRkNTJhNDVhNTM1Y2Q2NjQzZGMyN2ZlMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjQ0ZTUyZTljNjhlN2M2NjAzN2MxMzU1MjU5OWMyZjg2NmM4NGIxYmUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjcifQ==','2018-11-13 12:06:30'),('866qbv4xq7no594d1vwwunsgwd70nmma','OWRkODA0N2EzMGViOGZmZGRkNTJhNDVhNTM1Y2Q2NjQzZGMyN2ZlMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjQ0ZTUyZTljNjhlN2M2NjAzN2MxMzU1MjU5OWMyZjg2NmM4NGIxYmUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjcifQ==','2018-11-13 12:08:55'),('5xq5eswb2ljnz95oqiqdjoehvijci00w','Njc2OGI5ZjY2YWUxYTY2YTdhNTBjOGUzOGZjOTNlMjUzOTU4MDM3NDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiTElTVF9RVUVSWSI6W1siamhzZnEiLCJjb2RlIl0sIiJdLCJuYXZfbWVudSI6Ilt7XCJtZW51c1wiOiBbe1widXJsXCI6IFwiL3hhZG1pbi9qaHNmcS9zaGFkb3dzb2Nrc3RlbXBsYXRlL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiA3LCBcInRpdGxlXCI6IFwiXHU3NTFmXHU2MjEwXHU2OGFkXHU1ZjcxXHU4ZDI2XHU1M2Y3XHU3Njg0XHU2YTIxXHU3MjQ4XCJ9LCB7XCJ1cmxcIjogXCIveGFkbWluL2poc2ZxL3NoYWRvd3NvY2tzYWNjb3VudC9cIiwgXCJpY29uXCI6IFwiZmEgZmEtcGxhbmVcIiwgXCJvcmRlclwiOiA4LCBcInRpdGxlXCI6IFwiXHU2OGFkXHU1ZjcxXHU4ZDI2XHU1M2Y3XCJ9LCB7XCJ1cmxcIjogXCIveGFkbWluL2poc2ZxL2NvZGUvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDksIFwidGl0bGVcIjogXCJcdTZjZThcdTUxOGNcdTc4MDFcIn0sIHtcInVybFwiOiBcIi94YWRtaW4vamhzZnEvaW52aXRldGFibGUvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDEwLCBcInRpdGxlXCI6IFwiXHU3NTI4XHU2MjM3XHU5MDgwXHU4YmY3XCJ9XSwgXCJ0aXRsZVwiOiBcIlx1NGVhNFx1NjM2Mlx1NzUxZkZRXCIsIFwiZmlyc3RfaWNvblwiOiBcImZhIGZhLXBsYW5lXCIsIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi9qaHNmcS9jb2RlL1wifSwge1wibWVudXNcIjogW3tcInVybFwiOiBcIi94YWRtaW4vdXNlcnMvdXNlcnByb2ZpbGUvXCIsIFwiaWNvblwiOiBcImZhIGZhLXVzZXJcIiwgXCJvcmRlclwiOiAzLCBcInRpdGxlXCI6IFwiXHU3NTI4XHU2MjM3XHU0ZmUxXHU2MDZmXCJ9XSwgXCJ0aXRsZVwiOiBcIlx1NzUyOFx1NjIzN1wiLCBcImZpcnN0X2ljb25cIjogXCJmYSBmYS11c2VyXCIsIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi91c2Vycy91c2VycHJvZmlsZS9cIn0sIHtcIm1lbnVzXCI6IFt7XCJ1cmxcIjogXCIveGFkbWluL3hhZG1pbi9sb2cvXCIsIFwiaWNvblwiOiBcImZhIGZhLWNvZ1wiLCBcIm9yZGVyXCI6IDYsIFwidGl0bGVcIjogXCJcdTY1ZTVcdTVmZDdcdThiYjBcdTVmNTVcIn1dLCBcInRpdGxlXCI6IFwiXHU3YmExXHU3NDA2XCIsIFwiZmlyc3RfaWNvblwiOiBcImZhIGZhLWNvZ1wiLCBcImZpcnN0X3VybFwiOiBcIi94YWRtaW4veGFkbWluL2xvZy9cIn0sIHtcIm1lbnVzXCI6IFt7XCJ1cmxcIjogXCIveGFkbWluL2F1dGgvZ3JvdXAvXCIsIFwiaWNvblwiOiBcImZhIGZhLWdyb3VwXCIsIFwib3JkZXJcIjogMiwgXCJ0aXRsZVwiOiBcIlx1N2VjNFwifSwge1widXJsXCI6IFwiL3hhZG1pbi9hdXRoL3Blcm1pc3Npb24vXCIsIFwiaWNvblwiOiBcImZhIGZhLWxvY2tcIiwgXCJvcmRlclwiOiA0LCBcInRpdGxlXCI6IFwiXHU2NzQzXHU5NjUwXCJ9XSwgXCJ0aXRsZVwiOiBcIlx1OGJhNFx1OGJjMVx1NTQ4Y1x1NjM4OFx1Njc0M1wiLCBcImZpcnN0X2ljb25cIjogXCJmYSBmYS1sb2NrXCIsIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi9hdXRoL3Blcm1pc3Npb24vXCJ9XSIsIl9hdXRoX3VzZXJfaGFzaCI6ImU0MWZhNGE1Mzg1MGRlZTU5NDk2NDE1NTRlNWQ1YjEwYzE1YzY0ZGQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIn0=','2018-12-12 06:54:40'),('txfpfio65nfkjclfv68huo06vlguq1xs','YmJhMjJlODg5ZjY2ZjZjNDJjOGIzYTM0YTc4NmU5MDYwZGU0MDI1YTp7Il9hdXRoX3VzZXJfaGFzaCI6ImZiZDAzNzAwMDhjYTc4MWUxZTllNjY1ZTAyYzlmNjcyMDllZmI1NDEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjExIn0=','2018-11-13 14:17:34'),('hy8w01nl2hmma9bkukfdbaj1dt3u24mx','NjYxODVkMWZiZmFiZjQ4MDhhNDVjYzQ5MGYyZmQ0Y2FhMzNiZDU3MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImQ4MWEwMGE3YzVhODYzNDYzM2ZhOTUyNWU5MjgzNDBmMWZmM2I0MDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEyIn0=','2018-11-14 04:21:10'),('gjbn0k5j8kukpgqemurotoz7cx4bn07s','ZGJmNjg0ZWNhZTZkNWQ2MGYwOWEyYjRlZTRhNjBiODg1NDMxYzRkNTp7Il9hdXRoX3VzZXJfaGFzaCI6IjUyNWJkOTQ5ZTIyYTIwNmU1NWMxNDEyNmMxMmM3OWEzZTZmOTM1MDciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjE0In0=','2018-11-15 02:08:33'),('i1fcw0dh6np3tivnkcytjmygoy0v3clr','ZWMyMTM3ZGY4YmFjZjAzMmFiYzk3ODZiZTRlZTAwZDVhM2E0NDU4MDp7Im5hdl9tZW51IjoiW3tcInRpdGxlXCI6IFwiXHU0ZWE0XHU2MzYyXHU3NTFmRlFcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTc1MWZcdTYyMTBcdTY4YWRcdTVmNzFcdThkMjZcdTUzZjdcdTc2ODRcdTZhMjFcdTcyNDhcIiwgXCJpY29uXCI6IG51bGwsIFwidXJsXCI6IFwiL3hhZG1pbi9qaHNmcS9zaGFkb3dzb2Nrc3RlbXBsYXRlL1wiLCBcIm9yZGVyXCI6IDd9LCB7XCJ0aXRsZVwiOiBcIlx1NjhhZFx1NWY3MVx1OGQyNlx1NTNmN1wiLCBcImljb25cIjogXCJmYSBmYS1wbGFuZVwiLCBcInVybFwiOiBcIi94YWRtaW4vamhzZnEvc2hhZG93c29ja3NhY2NvdW50L1wiLCBcIm9yZGVyXCI6IDh9LCB7XCJ0aXRsZVwiOiBcIlx1NmNlOFx1NTE4Y1x1NzgwMVwiLCBcImljb25cIjogbnVsbCwgXCJ1cmxcIjogXCIveGFkbWluL2poc2ZxL2NvZGUvXCIsIFwib3JkZXJcIjogOX0sIHtcInRpdGxlXCI6IFwiXHU3NTI4XHU2MjM3XHU5MDgwXHU4YmY3XCIsIFwiaWNvblwiOiBudWxsLCBcInVybFwiOiBcIi94YWRtaW4vamhzZnEvaW52aXRldGFibGUvXCIsIFwib3JkZXJcIjogMTB9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtcGxhbmVcIiwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL2poc2ZxL3NoYWRvd3NvY2tzdGVtcGxhdGUvXCJ9LCB7XCJ0aXRsZVwiOiBcIlx1NzUyOFx1NjIzN1wiLCBcIm1lbnVzXCI6IFt7XCJ0aXRsZVwiOiBcIlx1NzUyOFx1NjIzN1x1NGZlMVx1NjA2ZlwiLCBcImljb25cIjogXCJmYSBmYS11c2VyXCIsIFwidXJsXCI6IFwiL3hhZG1pbi91c2Vycy91c2VycHJvZmlsZS9cIiwgXCJvcmRlclwiOiAzfV0sIFwiZmlyc3RfaWNvblwiOiBcImZhIGZhLXVzZXJcIiwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL3VzZXJzL3VzZXJwcm9maWxlL1wifSwge1widGl0bGVcIjogXCJcdTdiYTFcdTc0MDZcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTY1ZTVcdTVmZDdcdThiYjBcdTVmNTVcIiwgXCJpY29uXCI6IFwiZmEgZmEtY29nXCIsIFwidXJsXCI6IFwiL3hhZG1pbi94YWRtaW4vbG9nL1wiLCBcIm9yZGVyXCI6IDZ9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtY29nXCIsIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi94YWRtaW4vbG9nL1wifSwge1widGl0bGVcIjogXCJcdThiYTRcdThiYzFcdTU0OGNcdTYzODhcdTY3NDNcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTdlYzRcIiwgXCJpY29uXCI6IFwiZmEgZmEtZ3JvdXBcIiwgXCJ1cmxcIjogXCIveGFkbWluL2F1dGgvZ3JvdXAvXCIsIFwib3JkZXJcIjogMn0sIHtcInRpdGxlXCI6IFwiXHU2NzQzXHU5NjUwXCIsIFwiaWNvblwiOiBcImZhIGZhLWxvY2tcIiwgXCJ1cmxcIjogXCIveGFkbWluL2F1dGgvcGVybWlzc2lvbi9cIiwgXCJvcmRlclwiOiA0fV0sIFwiZmlyc3RfaWNvblwiOiBcImZhIGZhLWxvY2tcIiwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL2F1dGgvcGVybWlzc2lvbi9cIn1dIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJMSVNUX1FVRVJZIjpbWyJqaHNmcSIsInNoYWRvd3NvY2tzdGVtcGxhdGUiXSwiIl0sIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlNDFmYTRhNTM4NTBkZWU1OTQ5NjQxNTU0ZTVkNWIxMGMxNWM2NGRkIn0=','2018-11-15 09:17:11'),('q2wi0luc0xe8yxbhpeu1gzqe8mu7or9j','ODY5OTIzMWMxMWUyYmVjZGRkNmE5NmZiYTdmZDVlNmQ1NjcwY2M2ODp7Il9hdXRoX3VzZXJfaWQiOiIxNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhZGM1YTk5OTA1MzAyNWRkZjJmZDdlMzY2YzM0NjRlZmMyYmM1MGRiIn0=','2018-11-15 08:47:24'),('h858awz4tupi6jzvfie3nh64s5ifyprt','NDc0OTc1ZTYyZmY5YThmMTU0MDFjODc1YzFhZGYxMWU3YWU5NWY0MDp7Il9hdXRoX3VzZXJfaWQiOiIxNiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkZmM1ZGUxMWQwMzcyNDM2YTBlNjhmNjQzMDE1NjljNDBkODhiMTkzIn0=','2018-11-16 03:06:31'),('slj87u057cnfmsedtk462ntt5mi2nk5z','ODY5OTIzMWMxMWUyYmVjZGRkNmE5NmZiYTdmZDVlNmQ1NjcwY2M2ODp7Il9hdXRoX3VzZXJfaWQiOiIxNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhZGM1YTk5OTA1MzAyNWRkZjJmZDdlMzY2YzM0NjRlZmMyYmM1MGRiIn0=','2018-11-17 09:49:04'),('ky1cnstsgv6rh0mddy0u3fhgysm0i1ye','ZjM0M2IyNGRlMGI5ZGRjZGVhNTBkNzAzM2MyMDllZWNhYWNlNmNlZTp7Il9hdXRoX3VzZXJfaWQiOiIxNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyNWI3Y2MxMjc5M2ZmMTVjOGY2YTAyM2UwZTZlMDBmNzQ3OWRlOGU1In0=','2018-11-17 10:13:34'),('tkx7x5jbiv3cqq1munrtf88ctlgwxyjv','MjU2MWIwMTY3ZjZlOTY0YzFkOWQxMWEyYzhjMTZiYzdhMTA3MzE1ZTp7Il9hdXRoX3VzZXJfaWQiOiIxOCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyZjcyMTBhMGIwYjEyMjY1M2I2OGQ3MmUyNTQwZjg2OTBhMWYyNmNlIn0=','2018-11-17 14:57:58'),('do9yddgi6v4svb29jv5g71bnprg3fhod','MWI3MmRmYzhhZDdkNWQ4M2EzMzFkZmRlMTIxZTcyZTE2ZmNiMTY2ZDp7Il9hdXRoX3VzZXJfaWQiOiIyMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxM2FiMzE5YjEwMDFiNzBiZDhiZTljMDNjYzIyY2RkYjM5NTBhNzQ3In0=','2018-11-19 13:26:47'),('d1ty88gbpzmih1j1gqajsn63ah01391d','MGYyYWQxNTQ4NjQ5YjQxYmZlZGE4OTEzNWJlNTBhYTdjMjNhZTUzMTp7Il9hdXRoX3VzZXJfaWQiOiIxOSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkYzNlNjAyNDUxNjIxZjY2YzQwYmI1ZmQ0NGZmYjQ1YzdjOWEzNThlIn0=','2018-11-19 03:22:00'),('bag9a8ejlb9o6clf4sdawrc20mygpj79','ZTExODI1MGFiZDc5OTE5YjI2NDIxNWYzYjBjZTRlZGQ3YzQxMjJmNjp7Il9hdXRoX3VzZXJfaWQiOiIyMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlZGIyZGNiNmFiYjFhNWU1ZmRiMTU1YmE2MThmNTkwZDA3MTZmN2JhIn0=','2018-11-19 06:30:42'),('mlimtc1q7vbb9qb1tssffvx2vh0bq460','NmIxZmQwYTBjYzYwNDg4ZTYyNDg3MDcxMDRiMzNiMjdiOWRmMTk3YTp7Il9hdXRoX3VzZXJfaWQiOiIyMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkY2NhNjdhNDBmYjQ4NGViZWI2ZjgwODE3YjM3M2RlZTc2ZTJjNmM5In0=','2018-11-20 04:19:54'),('1gv3digsbtv8qhyt0zmnd5jds20de6hj','NTgxYWVhZDUxNzlkYTc3Njc3MGI5ZTlkZTE2NmMwMTUzNDNkZmEwOTp7Il9hdXRoX3VzZXJfaWQiOiIyMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2NThiZWJkZGE2ZmQ3NjczZTIzNTdiODM5NTUyMDY5ZjkyOWU5MDdkIn0=','2018-11-20 05:50:47'),('f2ekwzkfssgosu0j6igvfkxp10u73xq0','NmEyZDM2YjhkNjYzYTYwYmU0Y2FlY2QzYWE3YjU0YzRmYjE4NTU2ZTp7Il9hdXRoX3VzZXJfaWQiOiIyNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0MmE3ZTQ0NWZhMGI2MjRmOTk5ZmFhNTE2YzFkNjAyMDVjN2FmOTY1In0=','2018-11-20 05:56:47'),('elvh7qzudrhncr3gmpbpaie3amxs505e','NTgxYWVhZDUxNzlkYTc3Njc3MGI5ZTlkZTE2NmMwMTUzNDNkZmEwOTp7Il9hdXRoX3VzZXJfaWQiOiIyMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2NThiZWJkZGE2ZmQ3NjczZTIzNTdiODM5NTUyMDY5ZjkyOWU5MDdkIn0=','2018-11-20 05:59:04'),('yk0fnr5s9pykbb1nqet1680zeoncs9xd','NmEyZDM2YjhkNjYzYTYwYmU0Y2FlY2QzYWE3YjU0YzRmYjE4NTU2ZTp7Il9hdXRoX3VzZXJfaWQiOiIyNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0MmE3ZTQ0NWZhMGI2MjRmOTk5ZmFhNTE2YzFkNjAyMDVjN2FmOTY1In0=','2018-11-20 06:04:58'),('2rllhfap3nk1chcfwamodbhi7mhxvk0m','YzY3YTViNzcyMjFhN2UzOTlhYWEwYzczOGRjMDVhNGM0Y2Y1ZTNmYjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjRiMWM3Nzk2N2UyMTMxMjJhMjNiZWZlY2Q3Nzg0YTAyMzM4MTEzZGQifQ==','2018-11-20 06:08:15'),('lkb0woeo885sqvrvx26b6uevufb5ggkq','YTUzMGQ4N2UzNTZhZGU0NDczZjQ4NDBiYWFjNzhlNGI4YmIyYzllNjp7Il9hdXRoX3VzZXJfaWQiOiIyNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwYmM3ZThkYWEwNjFkZDFjODliNWRhMGM4ZTUwZDg2NjI5ODQ0ZjgxIn0=','2018-11-21 02:38:35'),('s9g9v51gf0pcv6ql46ljsow1wqojj8lo','OTI0MmI5Nzc3ZTE2OWY4YzU5ZGIwYjUzMDE0ODIyMDAyMThkYWQwOTp7Il9hdXRoX3VzZXJfaWQiOiIyNiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5NzNkZjJhMmZiNGY3Yzk0MWJjOTM0NWQyZmJjNDEyNWI1ZDY3N2E0In0=','2018-11-21 03:54:42'),('9ix0rb78hn578r20bwzz1abp6eb6nvjt','ODdkZDdkODFiNWYyMmY1NGQwZGJmYjdiMjRmMmYyMTM1NjFmZjY2Mzp7Il9hdXRoX3VzZXJfaWQiOiIyNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NTMxYmE5N2MxZjZkYmZkNGI2ODJlZjBmNDYxNWIxMDk5Mjg2MjY2In0=','2018-11-21 09:50:16'),('zv5cljbibhgxq5xk3e5djamnihs5i8ca','MmQ1YmI2Y2ViNmFiYjZkZWNjYzVjZmJmYTFhZTE5NzJjNDRhZjgwMTp7Il9hdXRoX3VzZXJfaWQiOiIyOSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzNzM5YTY2YmUzZThmODAyMTA3ZjIzMGEzMzY2ODVlZjEwNWY1MDdmIn0=','2018-11-22 08:26:56'),('rc2po3irfnv9udh7s6g2p7aum2cki38l','NmM2YWUzN2Y3NTU1ZDNlMmZjZWViMmYxNDU3YWM4MmIyYTVmOTJmNDp7Il9hdXRoX3VzZXJfaWQiOiIyOCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlNWUwNGE1NzRhMGEzNzE3ZTlmNzc0Y2M0ZmVmNmRmYTY5M2VjODNhIn0=','2018-11-22 06:37:19'),('qafjllxzceo87vn2bjodvfkr157xbdx9','OTA2OGNhZjIzMTlkZjBhMjg3ZjY5YTRmZDQ1ZTc2OTgwNjgwZjEyMDp7Il9hdXRoX3VzZXJfaWQiOiIzMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyOWUxYjFjNDI5YzBkNDk2MGZjYTViYjA3MDA5NDY5ZDA1OWE4NjFiIn0=','2018-11-22 13:18:48'),('7049sppod1qha4a04zzaa34v03oeuwoa','OTZlNjJkZmFjMTBmYzNlYWQ2NThkOTFlYjk2YTk2M2Y2ZGQzNWVjOTp7Il9hdXRoX3VzZXJfaWQiOiIzMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmOTUzYzFjZjAwMmYwNjgzYzY5N2E5OTFiODMzZGJlYjc4ODYxZTA5In0=','2018-11-22 13:37:36'),('kxywfyo8uuqrts97zaa9ek3ump241j0n','NDYxMmUxOTBiZDRjOTZjODY0NTc4ZmJlNWVhZGM4ZmYzZGI1Mzg5ZDp7Il9hdXRoX3VzZXJfaWQiOiIzMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4MjgxMTJmNmI3Zjg2MjEzZDM4ZDQyZmUzZDQ1YTk4NmQ4MDcyZDNlIn0=','2018-11-22 15:04:50'),('nnssp68a26tgoqnzmsjndg04c3j72tgx','NDQzY2U5MDJiYjhmYTQ4YmY4ZDE1ZTI2YWQzZGYzYTU5ZmYxZDBjZDp7Il9hdXRoX3VzZXJfaWQiOiIzMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjNjRjNTc1Y2I4NDQ5OWUwNTI0NjliOGQ1ZjRhOTViMWI2MjYxNGVhIn0=','2018-11-22 15:08:56'),('kj47j24wn5uoibvn6opya7ams19stkwe','YTUzMGQ4N2UzNTZhZGU0NDczZjQ4NDBiYWFjNzhlNGI4YmIyYzllNjp7Il9hdXRoX3VzZXJfaWQiOiIyNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwYmM3ZThkYWEwNjFkZDFjODliNWRhMGM4ZTUwZDg2NjI5ODQ0ZjgxIn0=','2018-11-22 15:31:23'),('b4bysdmz5yu616y47y16t3m192r5swik','ZmM2OGU1ZTU3ODMxMzZhODRkNmNjNDg2OGNhZDJiMzAyYTg3ZmYzMzp7Il9hdXRoX3VzZXJfaWQiOiIzNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YmNhZTgyNDcxMmYyZDA5NDUwYjE5NjNiYzliYzJiYWQwNmE5OTA5In0=','2018-11-26 02:48:17'),('c4f6agz21t83xs6lah4ia88u3jk4higs','MmQ1YmI2Y2ViNmFiYjZkZWNjYzVjZmJmYTFhZTE5NzJjNDRhZjgwMTp7Il9hdXRoX3VzZXJfaWQiOiIyOSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzNzM5YTY2YmUzZThmODAyMTA3ZjIzMGEzMzY2ODVlZjEwNWY1MDdmIn0=','2018-11-23 11:48:49'),('ml003790hdu90ybrmkucu8n685mzxq8n','NmM2YWUzN2Y3NTU1ZDNlMmZjZWViMmYxNDU3YWM4MmIyYTVmOTJmNDp7Il9hdXRoX3VzZXJfaWQiOiIyOCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlNWUwNGE1NzRhMGEzNzE3ZTlmNzc0Y2M0ZmVmNmRmYTY5M2VjODNhIn0=','2018-11-25 08:15:07'),('a89l127ebv79klvzu7xvjf1nfayd7lxc','NWE1MTIzNGVlNjBhZTllMmZjOTRjMGIxMzI4MmQ4M2E1OTAzZmQ0MTp7Il9hdXRoX3VzZXJfaWQiOiIzNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMzNlZDA0YTFhM2EwOGVlMjkzODUyN2I4MTE5YWI4OTNkOGYyMjIzIn0=','2018-11-25 12:08:19'),('d11l6s67elreicfit03okkdnarpsercg','OWU3OGVmNDkzOWZjNzc1YzhkZDZmOGY2MDRhZDBlMmJmMTAyZjY2YTp7Il9hdXRoX3VzZXJfaWQiOiIzNiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwMWM4OTk2Y2JhMDZiOTI3Mzc0OGRjYjIxODhhMmMzOTY2YjQ2ZWU4In0=','2018-11-26 05:57:48'),('zme9ffawv848a1bnppefufyyhtkbjec4','MDk3M2MzYWU0YmMyNzA0MzdmMjFiNTk1OTU3MzhkNzE4MzRiZGNhNjp7Il9hdXRoX3VzZXJfaWQiOiIzNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YWRjODViZjQ1MjNiOWZlNGVlNWUzN2M1NWVmNjI5OThkYjM3YjcxIn0=','2018-11-26 11:11:28'),('0ld4optx11pu6pcznsc5e82cm6q1anen','MzgyOTQxNmExYzZkZWY5M2E5M2QwNzhlNDlkOTk5NDY2NGFkZmMzYjp7Il9hdXRoX3VzZXJfaWQiOiIzOCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZmY0NTVlYzM2MTg5NjYxZTJlMzNlN2IyMDgxZTY4NmFmNmY4ZjRlIn0=','2018-11-27 08:52:20'),('2yp6r3w9ejj34so5q4o7r7cavmmhhfce','MzgyOTQxNmExYzZkZWY5M2E5M2QwNzhlNDlkOTk5NDY2NGFkZmMzYjp7Il9hdXRoX3VzZXJfaWQiOiIzOCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZmY0NTVlYzM2MTg5NjYxZTJlMzNlN2IyMDgxZTY4NmFmNmY4ZjRlIn0=','2018-11-27 09:12:26'),('9xpds1qwnxuswxplczkignr5z40sonby','MzgyOTQxNmExYzZkZWY5M2E5M2QwNzhlNDlkOTk5NDY2NGFkZmMzYjp7Il9hdXRoX3VzZXJfaWQiOiIzOCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZmY0NTVlYzM2MTg5NjYxZTJlMzNlN2IyMDgxZTY4NmFmNmY4ZjRlIn0=','2018-11-27 09:14:26'),('f4vwj2ml53fra2fp93vdc0vqhhtukh6u','M2JjZWM3NDQ2MTk5NDE5ODZiMmQyYTlkOTdlYTdkYTE3YjE0M2UwODp7Il9hdXRoX3VzZXJfaWQiOiIzOSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5NjVmZGFiYTQ4Mjc4NjNkMmQ3MDkwMzMxNzUwM2M0N2JlYTIyMmIxIn0=','2018-11-27 13:44:24'),('beiu123hu3wjtzrseckiaurozezsflx3','MzgyOTQxNmExYzZkZWY5M2E5M2QwNzhlNDlkOTk5NDY2NGFkZmMzYjp7Il9hdXRoX3VzZXJfaWQiOiIzOCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZmY0NTVlYzM2MTg5NjYxZTJlMzNlN2IyMDgxZTY4NmFmNmY4ZjRlIn0=','2018-11-28 02:24:54'),('xw28qf2ozk1owx63tfzpy7ajr9uw9igh','ZTA4OTg5MDE1MGQxYzE0ODBiZWQxNGUwZTA5OTUwMWRhZDBlMzBjYzp7Il9hdXRoX3VzZXJfaWQiOiI0MCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiOGQwMDNlNjdkMmIwMDAzOGU3YzMzNTdhMTM3MzMwNzhlN2IzOTA4In0=','2018-11-28 09:25:45'),('ocsej1p6snw01ufiajy6d1lql7nna49p','NDFlYmUxZTNjOTU0MTA3YWQ4ZGUwY2NlZGU1YzE4OGNjODUzYmE3MDp7Il9hdXRoX3VzZXJfaWQiOiI0MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1MmY4OTk1MDA0YTNmZGU3ZGU1OGYzMzYzYzE4MzQxZmQwNTBiN2ZlIn0=','2018-11-28 09:59:54'),('2vc4pvpo7motpyhla90zmxdsusmg6fpk','NDFlYmUxZTNjOTU0MTA3YWQ4ZGUwY2NlZGU1YzE4OGNjODUzYmE3MDp7Il9hdXRoX3VzZXJfaWQiOiI0MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1MmY4OTk1MDA0YTNmZGU3ZGU1OGYzMzYzYzE4MzQxZmQwNTBiN2ZlIn0=','2018-11-28 13:27:21'),('kaxi47h74lkmokx6eoc1ncah6soiu3gf','OGE0ODJjNzk3OTkyZDNiNTZkZGUxZTJlM2MxYjQwNTY2NDhiM2U4Mzp7Il9hdXRoX3VzZXJfaWQiOiIxMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkODFhMDBhN2M1YTg2MzQ2MzNmYTk1MjVlOTI4MzQwZjFmZjNiNDAzIn0=','2018-11-29 01:58:54'),('idp48hg3qxsua29i4r6g8fym1mqyzmn3','YmI1M2RkZTRjMzNlZDRlYTM5OTMwZDc1MjQ2YjIwMTI1YWQwNzIzMjp7Il9hdXRoX3VzZXJfaWQiOiI0MiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjOGM4ZTczZTY2ZTJkN2ZkNzE2OGRmMGYzOGNlYTYwYTE1NDAwYTI4In0=','2018-11-29 08:50:22'),('hzgib7480zwdosjabspuynaujy0ndmpd','YjY3YmNmN2YzNWQ3YjRmMzA4NmYxNzIzMTBkYjRhZTQ4NjU2ZWE4ZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiTElTVF9RVUVSWSI6W1siamhzZnEiLCJzaGFkb3dzb2Nrc2FjY291bnQiXSwiIl0sIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlNDFmYTRhNTM4NTBkZWU1OTQ5NjQxNTU0ZTVkNWIxMGMxNWM2NGRkIiwibmF2X21lbnUiOiJbe1widGl0bGVcIjogXCJcdTRlYTRcdTYzNjJcdTc1MWZGUVwiLCBcIm1lbnVzXCI6IFt7XCJ0aXRsZVwiOiBcIlx1NzUxZlx1NjIxMFx1NjhhZFx1NWY3MVx1OGQyNlx1NTNmN1x1NzY4NFx1NmEyMVx1NzI0OFwiLCBcImljb25cIjogbnVsbCwgXCJ1cmxcIjogXCIveGFkbWluL2poc2ZxL3NoYWRvd3NvY2tzdGVtcGxhdGUvXCIsIFwib3JkZXJcIjogN30sIHtcInRpdGxlXCI6IFwiXHU2OGFkXHU1ZjcxXHU4ZDI2XHU1M2Y3XCIsIFwiaWNvblwiOiBcImZhIGZhLXBsYW5lXCIsIFwidXJsXCI6IFwiL3hhZG1pbi9qaHNmcS9zaGFkb3dzb2Nrc2FjY291bnQvXCIsIFwib3JkZXJcIjogOH0sIHtcInRpdGxlXCI6IFwiXHU2Y2U4XHU1MThjXHU3ODAxXCIsIFwiaWNvblwiOiBudWxsLCBcInVybFwiOiBcIi94YWRtaW4vamhzZnEvY29kZS9cIiwgXCJvcmRlclwiOiA5fSwge1widGl0bGVcIjogXCJcdTc1MjhcdTYyMzdcdTkwODBcdThiZjdcIiwgXCJpY29uXCI6IG51bGwsIFwidXJsXCI6IFwiL3hhZG1pbi9qaHNmcS9pbnZpdGV0YWJsZS9cIiwgXCJvcmRlclwiOiAxMH1dLCBcImZpcnN0X3VybFwiOiBcIi94YWRtaW4vamhzZnEvc2hhZG93c29ja3N0ZW1wbGF0ZS9cIiwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtcGxhbmVcIn0sIHtcInRpdGxlXCI6IFwiXHU3NTI4XHU2MjM3XCIsIFwibWVudXNcIjogW3tcInRpdGxlXCI6IFwiXHU3NTI4XHU2MjM3XHU0ZmUxXHU2MDZmXCIsIFwiaWNvblwiOiBcImZhIGZhLXVzZXJcIiwgXCJ1cmxcIjogXCIveGFkbWluL3VzZXJzL3VzZXJwcm9maWxlL1wiLCBcIm9yZGVyXCI6IDN9XSwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL3VzZXJzL3VzZXJwcm9maWxlL1wiLCBcImZpcnN0X2ljb25cIjogXCJmYSBmYS11c2VyXCJ9LCB7XCJ0aXRsZVwiOiBcIlx1N2JhMVx1NzQwNlwiLCBcIm1lbnVzXCI6IFt7XCJ0aXRsZVwiOiBcIlx1NjVlNVx1NWZkN1x1OGJiMFx1NWY1NVwiLCBcImljb25cIjogXCJmYSBmYS1jb2dcIiwgXCJ1cmxcIjogXCIveGFkbWluL3hhZG1pbi9sb2cvXCIsIFwib3JkZXJcIjogNn1dLCBcImZpcnN0X3VybFwiOiBcIi94YWRtaW4veGFkbWluL2xvZy9cIiwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtY29nXCJ9LCB7XCJ0aXRsZVwiOiBcIlx1OGJhNFx1OGJjMVx1NTQ4Y1x1NjM4OFx1Njc0M1wiLCBcIm1lbnVzXCI6IFt7XCJ0aXRsZVwiOiBcIlx1N2VjNFwiLCBcImljb25cIjogXCJmYSBmYS1ncm91cFwiLCBcInVybFwiOiBcIi94YWRtaW4vYXV0aC9ncm91cC9cIiwgXCJvcmRlclwiOiAyfSwge1widGl0bGVcIjogXCJcdTY3NDNcdTk2NTBcIiwgXCJpY29uXCI6IFwiZmEgZmEtbG9ja1wiLCBcInVybFwiOiBcIi94YWRtaW4vYXV0aC9wZXJtaXNzaW9uL1wiLCBcIm9yZGVyXCI6IDR9XSwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL2F1dGgvZ3JvdXAvXCIsIFwiZmlyc3RfaWNvblwiOiBcImZhIGZhLWdyb3VwXCJ9XSJ9','2018-12-09 10:14:49'),('wlfrc8sd3ekht5htqhhxre50f49xuhen','YTRhZjZmZDkzMzVhMTRmODJlOTVmMTI0ODJjNGI0ZTA1MzVhNDM2NDp7Il9hdXRoX3VzZXJfaWQiOiI0MyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0MDM0MWJiYjVhZmE1ZTY0YzE1NGU0MWVmM2Y2NDdkY2IwNWRhNThjIn0=','2018-12-01 05:11:16'),('4n5ajyz0n7ya61nmlrsqdjnfwb7bgc89','MjQ0ZTY2NTU5ZmZhNjczN2NiZGI0OTY0NDBkNTcyZWMyMDY0N2NkMTp7Il9hdXRoX3VzZXJfaWQiOiI0NCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMzJhZGU0OTY0YTdiMjlhMTFkZTZjZGYwNDg2MDg5NmJmZWMyZjY1In0=','2018-12-01 07:11:04'),('cwix6n0m43757jj0kn135indny8hbp28','MjQ0ZTY2NTU5ZmZhNjczN2NiZGI0OTY0NDBkNTcyZWMyMDY0N2NkMTp7Il9hdXRoX3VzZXJfaWQiOiI0NCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMzJhZGU0OTY0YTdiMjlhMTFkZTZjZGYwNDg2MDg5NmJmZWMyZjY1In0=','2018-12-01 07:56:45'),('76o7wydu1ua6c1a9bpy8b8bfpurt2ycp','YzY3YTViNzcyMjFhN2UzOTlhYWEwYzczOGRjMDVhNGM0Y2Y1ZTNmYjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjRiMWM3Nzk2N2UyMTMxMjJhMjNiZWZlY2Q3Nzg0YTAyMzM4MTEzZGQifQ==','2018-12-01 10:06:21'),('8a9ckav3wqy5mu448kjfutfh4vbvmoks','ZGE2MTVhYzA3Mjg4ZGRhODZiNTVjOGUyOWNlNTljNGRkMDVhYTQzODp7Il9hdXRoX3VzZXJfaWQiOiI0NSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwOGFjN2FlMmEyMWVhMmVjZmI0NDdhNmZjZjRmMzdmNjc1NTY3NzM4In0=','2018-12-02 05:27:09'),('i9sss9mj5xqgrcy8h3d6oza4q6apa7x4','ZmY5YWJhOGY0MjIxZGU2MmVkNmVkYzZlOWUwZjU1MmY2ZTNhZjlhMzp7Il9hdXRoX3VzZXJfaWQiOiI0NiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5NGNkYzUwMjU2NWVmNjFkMTNlMTNjM2M5ODg5MWUxY2RiODFkNzBiIn0=','2018-12-02 14:41:41'),('0efb9mq0uo0i9p2xp3mgdevqbesx3kk7','M2U1M2EyYTVmNzYxMjBmMGI2MzhmMWFjYTE1ZDllZjQ4MmI4YzA0NDp7Il9hdXRoX3VzZXJfaWQiOiI0NyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3Y2FlNjM4ODBhMmI5NjJkMDc1Mzg4NTZkOTdkYTE4YjhlMjU0ZTQyIn0=','2018-12-03 03:03:18'),('5ajowj957ihqfs7wilckr4mer3e9gffs','NDFlYmUxZTNjOTU0MTA3YWQ4ZGUwY2NlZGU1YzE4OGNjODUzYmE3MDp7Il9hdXRoX3VzZXJfaWQiOiI0MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1MmY4OTk1MDA0YTNmZGU3ZGU1OGYzMzYzYzE4MzQxZmQwNTBiN2ZlIn0=','2018-12-03 09:57:04'),('sywz4q1bi1eddhmhl7b4jlqk7knm3gxs','NjBmZjkxN2I5MWQwYjk2NWQ0YzY5NTkzOWJlYzJkODAzNTkxNzhmMTp7Il9hdXRoX3VzZXJfaWQiOiI0OCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwMDNkODRlNDhmNDlkODI1MTIyNTQyNjI2YmFlMmRjMGE5ZDZhZGNlIn0=','2018-12-03 10:41:44'),('izqdl176wpcdbv3ozdpdblbxldbuvk9k','NjBmZjkxN2I5MWQwYjk2NWQ0YzY5NTkzOWJlYzJkODAzNTkxNzhmMTp7Il9hdXRoX3VzZXJfaWQiOiI0OCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwMDNkODRlNDhmNDlkODI1MTIyNTQyNjI2YmFlMmRjMGE5ZDZhZGNlIn0=','2018-12-03 10:47:06'),('lwe384qwp8wtebv8dcp1k1kqfmo7alkp','ZDk5YzQxOTJkOWM0YzI1MzhkYTlkZDIwMTBlZWQyNjU2MjZkYjE0ZDp7Il9hdXRoX3VzZXJfaWQiOiI0OSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1Y2VjMjMzYmE5OGY0OTQxYmZjY2E1MzlhNDc0NjNhM2NlMWNhZjY4In0=','2018-12-05 03:17:06'),('vf3e3yphcmks4cacjlf61n616unljnfg','ZWRkMTg0OTJlYjY3YTQ4OWU1NjMxNDE2OTYyMTJhNWQ4OWYzNzZlNzp7Il9hdXRoX3VzZXJfaWQiOiI1MCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMWUyOTU5YzQ5ODc2MjZhZDU0ZGZjNWZmYzNlYTgxZWYwOTViYzE2In0=','2018-12-05 07:51:49'),('a8p2ekudhisn1bta31alrxgs7ximxezu','OTYzYzk2NDBlYWM1MjM2YTQ0ZTY1ZTI2YjVlOWVhMjRjNGZjNWRhMjp7Il9hdXRoX3VzZXJfaWQiOiI1MiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0YWI2NzcwNDljNmNjZWNiMmM0Y2VkM2U1ODQ2MWQ4OTBjMDA1ZDBlIn0=','2018-12-06 14:43:44'),('853iimxvost149j4ko3talczm0i6djik','MzY4Y2JhMGQ4ODNjNTg3ODc2M2UzYjQ0NzhiYmM4NmNmNzdmNGM5NTp7Il9hdXRoX3VzZXJfaWQiOiI1MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZTQwMzQxODI0MjZmNTQ5MjQ4MDVkOGVhNjk4ZWI3OWFjYzhlZmJiIn0=','2018-12-06 14:30:18'),('w07zo1v7z4hl79e4wc3272n2nat9hq1e','MzY4Y2JhMGQ4ODNjNTg3ODc2M2UzYjQ0NzhiYmM4NmNmNzdmNGM5NTp7Il9hdXRoX3VzZXJfaWQiOiI1MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZTQwMzQxODI0MjZmNTQ5MjQ4MDVkOGVhNjk4ZWI3OWFjYzhlZmJiIn0=','2018-12-06 14:54:16'),('zt2hy15nc7j9x90okt8yt139swrqu1fw','MzY4Y2JhMGQ4ODNjNTg3ODc2M2UzYjQ0NzhiYmM4NmNmNzdmNGM5NTp7Il9hdXRoX3VzZXJfaWQiOiI1MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZTQwMzQxODI0MjZmNTQ5MjQ4MDVkOGVhNjk4ZWI3OWFjYzhlZmJiIn0=','2018-12-06 15:05:26'),('21u2c799nzwu260m2jyichcawxaqp2k0','ZmY3NzFjZDQ3YjcyMDkxMjlkMTBhMjAwZTQ5ZjJmNzI0Y2UxYTMwYjp7Il9hdXRoX3VzZXJfaWQiOiI1MyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2NjgzZGE4OTc1MTQ2YTk2YThlNDljNTU3Y2Y2MWE1MmQ1M2Q2NDhiIn0=','2018-12-07 03:27:43'),('ypcgzlk47skb4e1xq9smhq2guy4t3kjj','ZGRhZGUyN2QzM2FiODY3Njg5MTdmYTYxZWZkOTdmODFiMzBmOGQwMjp7Il9hdXRoX3VzZXJfaWQiOiI0OSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhNzNiNGU1MjAyMTkyYThlNGNkNTljMzg2ZmI3NzhmMTcyOGI4YmNkIn0=','2018-12-08 02:46:11'),('ta381vtdwtt07ewfudbroucwcy0iekvp','ZTFjZTI0MjRmNDA3Y2QxNmVkZjdhOWRmMGNlNzNiMTM5NWVlMjM5Yjp7Il9hdXRoX3VzZXJfaWQiOiI1NSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYjExYTFhOWVkNmE2N2FlM2U4YjdmNzNiMDQ5Nzk4MTg4MTMyMGQ5In0=','2018-12-08 06:44:46'),('pk5n4mm5rxqzm63spb6klqs7c2jfiqqx','ZTFjZTI0MjRmNDA3Y2QxNmVkZjdhOWRmMGNlNzNiMTM5NWVlMjM5Yjp7Il9hdXRoX3VzZXJfaWQiOiI1NSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYjExYTFhOWVkNmE2N2FlM2U4YjdmNzNiMDQ5Nzk4MTg4MTMyMGQ5In0=','2018-12-08 09:23:06'),('es6c7d4sqsqex1hrn50h869yi8a5jwji','MzU2NmY3NDMyNjRiMWRlNGZjMmIwYmQ4N2MxZWQ0ZDc4Nzk4ZjRjNDp7Il9hdXRoX3VzZXJfaWQiOiI1OCIsIl9hdXRoX3VzZXJfaGFzaCI6IjhlNzgyYWUyYWRlZWU0MjVhZTVhYmExZjA4YzU1YTMyNjk2NzIzNmEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIn0=','2018-12-08 16:01:00'),('gtqgs5ks56abmllv2c5jy2ty3tuko0z9','YzYwNTBmMGZlNGJiZTBhYWYxM2ZjYjA1Njg5NDVlZDNhNjBlNTA4NTp7Il9hdXRoX3VzZXJfaWQiOiI1OSIsIl9hdXRoX3VzZXJfaGFzaCI6ImVlNjcxNjNkYThlZjRkNjJkZTllM2U3YmE5NjdiNzk3NzdlMTJhMzUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIn0=','2018-12-09 04:43:42'),('wiqjv55u6414mpirzzsmt4odfm0gh5nu','YzYwNTBmMGZlNGJiZTBhYWYxM2ZjYjA1Njg5NDVlZDNhNjBlNTA4NTp7Il9hdXRoX3VzZXJfaWQiOiI1OSIsIl9hdXRoX3VzZXJfaGFzaCI6ImVlNjcxNjNkYThlZjRkNjJkZTllM2U3YmE5NjdiNzk3NzdlMTJhMzUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIn0=','2018-12-09 06:10:32'),('n2y8qz0u4kemlhrxbx5eaq7jg94y7nit','NzYxZWY1MDAxODBiY2U4MzAxNzdhYWEzNzIzN2E1MjgxODQ3Njg5Mjp7Il9hdXRoX3VzZXJfaWQiOiI2MCIsIl9hdXRoX3VzZXJfaGFzaCI6IjRmMDU3OWQ1MDFlZjQ1ZTEwYjkzNGU1OTNkNjk0YjQ5YTQ4MDJkMTciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIn0=','2018-12-09 10:14:14'),('nrmnn3090ti7kb4h2nzncinufvmdunq3','YzFlNWZiYTE5ZTEyZDM2MmM1MzQ3ZWFjMTdmYWU1NTIxN2ZlOGIzYTp7Il9hdXRoX3VzZXJfaWQiOiI2MyIsIl9hdXRoX3VzZXJfaGFzaCI6ImRmMTMyZDUyMWZjYzg2ODE3NjNmYTBhYmIzY2RkNWRhMThkZmFjNWIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIn0=','2018-12-12 06:52:00'),('tqhw7tov7ycdqby1ch8gbdy59gsqpmjg','ZGQ5YWY3ODk1YjY2MzU2YzlmN2ZkNDRkOWRlNjE0ZmFhOWNjZTkxZTp7Il9hdXRoX3VzZXJfaWQiOiIyOCIsIl9hdXRoX3VzZXJfaGFzaCI6ImU1ZTA0YTU3NGEwYTM3MTdlOWY3NzRjYzRmZWY2ZGZhNjkzZWM4M2EiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIn0=','2018-12-10 00:48:17'),('l8w1vqmq2d4wi1nwl0r6iarxeent77gn','ZGQ5YWY3ODk1YjY2MzU2YzlmN2ZkNDRkOWRlNjE0ZmFhOWNjZTkxZTp7Il9hdXRoX3VzZXJfaWQiOiIyOCIsIl9hdXRoX3VzZXJfaGFzaCI6ImU1ZTA0YTU3NGEwYTM3MTdlOWY3NzRjYzRmZWY2ZGZhNjkzZWM4M2EiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIn0=','2018-12-10 01:42:59'),('6fdt6p009u4mr7f8snotmp6lol4tvxuv','ODZlZjM3YjgxZjBmNWZmY2ZjNGZjOTA4YWJjYjdlNjJhODFkZjY4YTp7Il9hdXRoX3VzZXJfaWQiOiI2MiIsIl9hdXRoX3VzZXJfaGFzaCI6ImI1NGYwMWEyZTYzZjQzYmFmNWU1NDI0OWExYjc1ZDlhOTM5ZWQyZGIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIn0=','2018-12-10 13:23:14'),('05jcacttq498e3iaxsb7c5ecs5muhjzk','NzhmMmIyZDRjZjM1YWVjY2M1MGU5NzY1ZTU2NWFjZDEyNzYyMTU5OTp7Il9hdXRoX3VzZXJfaWQiOiI2NSIsIl9hdXRoX3VzZXJfaGFzaCI6IjVkZmExM2Q4YmNhODU1M2I3YmIzZjg0ZWI3MmE2MGZiOWQ1OTAwNTMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIn0=','2018-12-12 08:19:10'),('7tva129ltznf79r5dzaspz54g8dytqui','M2FjMDQ1ODg5MjY3NjVjZjY2NzBlZTA5NjM4MmQ2NjI0ODA5YzgzMDp7Il9hdXRoX3VzZXJfaWQiOiI2NCIsIl9hdXRoX3VzZXJfaGFzaCI6ImZjYTMyNTA5YjQwNTlhMmRkZDYzMDdiOTA4ZjM4OTdmY2NiYjNjYTAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIn0=','2018-12-12 07:05:23');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djcelery_crontabschedule`
--

DROP TABLE IF EXISTS `djcelery_crontabschedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djcelery_crontabschedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `minute` varchar(64) NOT NULL,
  `hour` varchar(64) NOT NULL,
  `day_of_week` varchar(64) NOT NULL,
  `day_of_month` varchar(64) NOT NULL,
  `month_of_year` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djcelery_crontabschedule`
--

LOCK TABLES `djcelery_crontabschedule` WRITE;
/*!40000 ALTER TABLE `djcelery_crontabschedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `djcelery_crontabschedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djcelery_intervalschedule`
--

DROP TABLE IF EXISTS `djcelery_intervalschedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djcelery_intervalschedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `every` int(11) NOT NULL,
  `period` varchar(24) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djcelery_intervalschedule`
--

LOCK TABLES `djcelery_intervalschedule` WRITE;
/*!40000 ALTER TABLE `djcelery_intervalschedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `djcelery_intervalschedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djcelery_periodictask`
--

DROP TABLE IF EXISTS `djcelery_periodictask`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djcelery_periodictask` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `task` varchar(200) NOT NULL,
  `args` longtext NOT NULL,
  `kwargs` longtext NOT NULL,
  `queue` varchar(200) DEFAULT NULL,
  `exchange` varchar(200) DEFAULT NULL,
  `routing_key` varchar(200) DEFAULT NULL,
  `expires` datetime DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `last_run_at` datetime DEFAULT NULL,
  `total_run_count` int(10) unsigned NOT NULL,
  `date_changed` datetime NOT NULL,
  `description` longtext NOT NULL,
  `crontab_id` int(11) DEFAULT NULL,
  `interval_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `djcelery_periodictask_crontab_id_75609bab` (`crontab_id`),
  KEY `djcelery_periodictask_interval_id_b426ab02` (`interval_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djcelery_periodictask`
--

LOCK TABLES `djcelery_periodictask` WRITE;
/*!40000 ALTER TABLE `djcelery_periodictask` DISABLE KEYS */;
/*!40000 ALTER TABLE `djcelery_periodictask` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djcelery_periodictasks`
--

DROP TABLE IF EXISTS `djcelery_periodictasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djcelery_periodictasks` (
  `ident` smallint(6) NOT NULL,
  `last_update` datetime NOT NULL,
  PRIMARY KEY (`ident`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djcelery_periodictasks`
--

LOCK TABLES `djcelery_periodictasks` WRITE;
/*!40000 ALTER TABLE `djcelery_periodictasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `djcelery_periodictasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djcelery_taskstate`
--

DROP TABLE IF EXISTS `djcelery_taskstate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djcelery_taskstate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state` varchar(64) NOT NULL,
  `task_id` varchar(36) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `tstamp` datetime NOT NULL,
  `args` longtext,
  `kwargs` longtext,
  `eta` datetime DEFAULT NULL,
  `expires` datetime DEFAULT NULL,
  `result` longtext,
  `traceback` longtext,
  `runtime` double DEFAULT NULL,
  `retries` int(11) NOT NULL,
  `hidden` tinyint(1) NOT NULL,
  `worker_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `task_id` (`task_id`),
  KEY `djcelery_taskstate_state_53543be4` (`state`),
  KEY `djcelery_taskstate_name_8af9eded` (`name`),
  KEY `djcelery_taskstate_tstamp_4c3f93a1` (`tstamp`),
  KEY `djcelery_taskstate_hidden_c3905e57` (`hidden`),
  KEY `djcelery_taskstate_worker_id_f7f57a05` (`worker_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djcelery_taskstate`
--

LOCK TABLES `djcelery_taskstate` WRITE;
/*!40000 ALTER TABLE `djcelery_taskstate` DISABLE KEYS */;
/*!40000 ALTER TABLE `djcelery_taskstate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djcelery_workerstate`
--

DROP TABLE IF EXISTS `djcelery_workerstate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djcelery_workerstate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hostname` varchar(255) NOT NULL,
  `last_heartbeat` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hostname` (`hostname`),
  KEY `djcelery_workerstate_last_heartbeat_4539b544` (`last_heartbeat`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djcelery_workerstate`
--

LOCK TABLES `djcelery_workerstate` WRITE;
/*!40000 ALTER TABLE `djcelery_workerstate` DISABLE KEYS */;
/*!40000 ALTER TABLE `djcelery_workerstate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jhsfq_code`
--

DROP TABLE IF EXISTS `jhsfq_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jhsfq_code` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jhsfq_code`
--

LOCK TABLES `jhsfq_code` WRITE;
/*!40000 ALTER TABLE `jhsfq_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `jhsfq_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jhsfq_invitetable`
--

DROP TABLE IF EXISTS `jhsfq_invitetable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jhsfq_invitetable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invitedby` varchar(20) NOT NULL,
  `invitedwho` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jhsfq_invitetable`
--

LOCK TABLES `jhsfq_invitetable` WRITE;
/*!40000 ALTER TABLE `jhsfq_invitetable` DISABLE KEYS */;
INSERT INTO `jhsfq_invitetable` VALUES (1,'liwanying','wangfubing');
/*!40000 ALTER TABLE `jhsfq_invitetable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jhsfq_shadowsocksaccount`
--

DROP TABLE IF EXISTS `jhsfq_shadowsocksaccount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jhsfq_shadowsocksaccount` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `starttime` datetime NOT NULL,
  `validdays` int(11) NOT NULL,
  `is_expired` tinyint(1) NOT NULL,
  `domain` varchar(50) NOT NULL,
  `port` int(11) NOT NULL,
  `passwd` varchar(50) NOT NULL,
  `sslink` varchar(200) NOT NULL,
  `useremail` varchar(50) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jhsfq_shadowsocksaccount`
--

LOCK TABLES `jhsfq_shadowsocksaccount` WRITE;
/*!40000 ALTER TABLE `jhsfq_shadowsocksaccount` DISABLE KEYS */;
INSERT INTO `jhsfq_shadowsocksaccount` VALUES (1,'2018-10-29 11:30:35',90,0,'liuxueshengfq.tk',2391,'laoxueyi@126.com','ss://YWVzLTI1Ni1jZmI6bGFveHVleWlAMTI2LmNvbUBsaXV4dWVzaGVuZ2ZxLnRrOjIzOTE=','laoxueyi@126.com','Sherry'),(2,'2018-10-29 12:39:09',180,0,'liuxueshengfq.tk',2392,'372772366@qq.com','ss://YWVzLTI1Ni1jZmI6MzcyNzcyMzY2QHFxLmNvbUBsaXV4dWVzaGVuZ2ZxLnRrOjIzOTI=','372772366@qq.com','lizehao'),(3,'2018-10-29 13:15:03',180,0,'liuxueshengfqq.tk',2393,'1226928348@qq.com','ss://YWVzLTI1Ni1jZmI6MTIyNjkyODM0OEBxcS5jb21AbGl1eHVlc2hlbmdmcS50azoyMzkz','1226928348@qq.com','chen'),(4,'2018-10-29 14:19:11',180,0,'liuxueshengfq.tk',2394,'1123860912@qq.com','ss://YWVzLTI1Ni1jZmI6MTEyMzg2MDkxMkBxcS5jb21AbGl1eHVlc2hlbmdmcS50azoyMzk0','1123860912@qq.com','josiepink9'),(5,'2018-10-29 16:57:11',180,0,'liuxueeshengfq.tk',2395,'734385477@qq.com','ss://YWVzLTI1Ni1jZmI6NzM0Mzg1NDc3QHFxLmNvbUBsaXV4dWVzaGVuZ2ZxLnRrOjIzOTU=','734385477@qq.com','tt734385477'),(6,'2018-10-30 03:24:04',365,0,'liuxueshengfq.tk',2396,'2274690045@qq.com','ss://YWVzLTI1Ni1jZmI6MjI3NDY5MDA0NUBxcS5jb21AbGl1eHVlc2hlbmdmcS50azoyMzk2','2274690045@qq.com','sandy1030'),(8,'2018-10-30 14:19:40',365,0,'liuxueshengfq.tk',2397,'549655073@qq.com','ss://YWVzLTI1Ni1jZmI6NTQ5NjU1MDczQHFxLmNvbUBsaXV4dWVzaGVuZ2ZxLnRrOjIzOTc=','549655073@qq.com','Suki'),(9,'2018-10-31 03:15:56',180,0,'liuxueshengfq.tk',2398,'371269864@qq.com','ss://YWVzLTI1Ni1jZmI6MzcxMjY5ODY0QHFxLmNvbUBsaXV4dWVzaGVuZ2ZxLnRrOjIzOTg=','371269864@qq.com','eyori'),(10,'2018-10-31 04:21:36',180,0,'liuxueshengfq.tk',2399,'ldgfyw@163.com','ss://YWVzLTI1Ni1jZmI6bGRnZnl3QDE2My5jb21AbGl1eHVlc2hlbmdmcS50azoyMzk5','ldgfyw@163.com','ken205360'),(11,'2018-11-01 02:08:28',180,0,'liuxueshengfq.tk',2400,'295583150@qq.com','ss://YWVzLTI1Ni1jZmI6Mjk1NTgzMTUwQHFxLmNvbUBsaXV4dWVzaGVuZ2ZxLnRrOjI0MDA=','295583150@qq.com','adttree'),(12,'2018-11-01 02:10:23',180,0,'liuxueshengfq.tk',2401,'409521419@qq.com','ss://YWVzLTI1Ni1jZmI6NDA5NTIxNDE5QHFxLmNvbUBsaXV4dWVzaGVuZ2ZxLnRrOjI0MDE=','409521419@qq.com','l8874626'),(14,'2018-11-02 04:48:50',30,0,'liuxueshengfq.tk',2356,'1010351486@qq.com','ss://YWVzLTI1Ni1jZmI6MTAxMDM1MTQ4NkBxcS5jb21AbGl1eHVlc2hlbmdmcS50azoyMzU2','1010351486@qq.com','admin'),(15,'2018-11-01 08:48:31',120,0,'liuxueshengfq.tk',2357,'940127950@qq.com','ss://YWVzLTI1Ni1jZmI6OTQwMTI3OTUwQHFxLmNvbUBsaXV4dWVzaGVuZ2ZxLnRrOjIzNTc=','940127950@qq.com','liwanying'),(16,'2018-11-02 03:10:50',183,0,'liuxueshengfq.tk',2358,'837975841@qq.com','ss://YWVzLTI1Ni1jZmI6ODM3OTc1ODQxQHFxLmNvbUBsaXV4dWVzaGVuZ2ZxLnRrOjIzNTg=','837975841@qq.com','angliu17'),(17,'2018-11-03 10:15:22',183,0,'liuxueshengfq.tk',2382,'1500548857@qq.com','ss://YWVzLTI1Ni1jZmI6MTUwMDU0ODg1N0BxcS5jb21AbGl1eHVlc2hlbmdmcS50azoyMzgy','1500548857@qq.com','ccccc'),(18,'2018-11-03 15:00:31',90,0,'liuxueshengfq.tk',2366,'1032879737@qq.com','ss://YWVzLTI1Ni1jZmI6MTAzMjg3OTczN0BxcS5jb21AbGl1eHVlc2hlbmdmcS50azoyMzY2','1032879737@qq.com','cici'),(19,'2018-11-05 06:32:02',180,0,'us.jiaohuanshengfq.tk',2333,'957960616@qq.com','ss://YWVzLTI1Ni1jZmI6OTU3OTYwNjE2QHFxLmNvbUB1cy5qaWFvaHVhbnNoZW5nZnEudGs6MjMzMw==','957960616@qq.com','c957960616'),(20,'2018-11-06 05:59:19',365,0,'us.jiaohuanshengfq.tk',2338,'zzkuaile99@126.com','ss://YWVzLTI1Ni1jZmI6enprdWFpbGU5OUAxMjYuY29tQHVzLmppYW9odWFuc2hlbmdmcS50azoyMzM4','zzkuaile99@126.com','yuandian024680'),(21,'2018-11-06 06:03:41',183,0,'us.jiaohuanshengfq.tk',2340,'284534429@qq.com','ss://YWVzLTI1Ni1jZmI6Mjg0NTM0NDI5QHFxLmNvbUB1cy5qaWFvaHVhbnNoZW5nZnEudGs6MjM0MA==','284534429@qq.com','yoyo'),(22,'2018-11-07 02:53:17',90,0,'us.jiaohuanshengfq.tk',2341,'471243622@qq.com','ss://YWVzLTI1Ni1jZmI6NDcxMjQzNjIyQHFxLmNvbUB1cy5qaWFvaHVhbnNoZW5nZnEudGs6MjM0MQ==','471243622@qq.com','Linyan'),(23,'2018-11-07 03:58:08',183,0,'us.jiaohuanshengfq.tk',2342,'65516398@qq.com','ss://YWVzLTI1Ni1jZmI6NjU1MTYzOThAcXEuY29tQHVzLmppYW9odWFuc2hlbmdmcS50azoyMzQy','65516398@qq.com','kkvzyi'),(24,'2018-11-07 09:52:05',183,0,'us.jiaohuanshengfq.tk',2348,'943325546@qq.com','ss://YWVzLTI1Ni1jZmI6OTQzMzI1NTQ2QHFxLmNvbUB1cy5qaWFvaHVhbnNoZW5nZnEudGs6MjM0OA==','943325546@qq.com','Asthvdnina'),(25,'2018-11-08 06:38:31',365,0,'us.jiaohuanshengfq.tk',2357,'1109876099@qq.com','ss://YWVzLTI1Ni1jZmI6MTEwOTg3NjA5OUBxcS5jb21AdXMuamlhb2h1YW5zaGVuZ2ZxLnRrOjIzNTc=','1109876099@qq.com','mochen'),(26,'2018-11-08 08:28:27',90,0,'us.jiaohuanshengfq.tk',2361,'761522080@qq.com','ss://YWVzLTI1Ni1jZmI6NzYxNTIyMDgwQHFxLmNvbUB1cy5qaWFvaHVhbnNoZW5nZnEudGs6MjM2MQ==','761522080@qq.com','tuantuan'),(27,'2018-11-08 13:21:27',183,0,'us.jiaohuanshengfq.tk',2362,'1002757334@qq.com','ss://YWVzLTI1Ni1jZmI6MTAwMjc1NzMzNEBxcS5jb21AdXMuamlhb2h1YW5zaGVuZ2ZxLnRrOjIzNjI=','1002757334@qq.com','Vic'),(28,'2018-11-08 13:40:25',90,0,'us.jiaohuanshengfq.tk',2363,'rooooosielu@126.com','ss://YWVzLTI1Ni1jZmI6cm9vb29vc2llbHVAMTI2LmNvbUB1cy5qaWFvaHVhbnNoZW5nZnEudGs6MjM2Mw==','rooooosielu@126.com','ROoooosielu'),(29,'2018-11-08 15:28:07',90,0,'us.jiaohuanshengfq.tk',2364,'1939304378@qq.com','ss://YWVzLTI1Ni1jZmI6MTkzOTMwNDM3OEBxcS5jb21AdXMuamlhb2h1YW5zaGVuZ2ZxLnRrOjIzNjQ=','1939304378@qq.com','canon'),(30,'2018-11-11 12:11:06',90,0,'us.jiaohuanshengfq.tk',2369,'1243731260@qq.com','ss://YWVzLTI1Ni1jZmI6MTI0MzczMTI2MEBxcS5jb21AdXMuamlhb2h1YW5zaGVuZ2ZxLnRrOjIzNjk=','1243731260@qq.com','Marie'),(31,'2018-11-12 02:48:31',180,0,'us.jiaohuanshengfq.tk',2370,'539804989@qq.com','ss://YWVzLTI1Ni1jZmI6NTM5ODA0OTg5QHFxLmNvbUB1cy5qaWFvaHVhbnNoZW5nZnEudGs6MjM3MA==','539804989@qq.com','sunjiayi'),(32,'2018-11-12 06:00:14',90,0,'us.jiaohuanshengfq.tk',2371,'353649064@qq.com','ss://YWVzLTI1Ni1jZmI6MzUzNjQ5MDY0QHFxLmNvbUB1cy5qaWFvaHVhbnNoZW5nZnEudGs6MjM3MQ==','353649064@qq.com','ripplewhite'),(33,'2018-11-12 11:16:47',183,0,'us.jiaohuanshengfq.tk',2372,'339140450@qq.com','ss://YWVzLTI1Ni1jZmI6MzM5MTQwNDUwQHFxLmNvbUB1cy5qaWFvaHVhbnNoZW5nZnEudGs6MjM3Mg==','339140450@qq.com','Pan'),(34,'2018-11-13 08:54:08',180,0,'us.jiaohuanshengfq.tk',2373,'1228058783@qq.com','ss://YWVzLTI1Ni1jZmI6MTIyODA1ODc4M0BxcS5jb21AdXMuamlhb2h1YW5zaGVuZ2ZxLnRrOjIzNzM=','1228058783@qq.com','Listen'),(35,'2018-11-13 13:46:25',183,0,'us.jiaohuanshengfq.tk',2374,'553781330@qq.com','ss://YWVzLTI1Ni1jZmI6NTUzNzgxMzMwQHFxLmNvbUB1cy5qaWFvaHVhbnNoZW5nZnEudGs6MjM3NA==','553781330@qq.com','Deus'),(36,'2018-11-14 09:27:11',183,0,'us.jiaohuanshengfq.tk',2375,'29304953@qq.com','ss://YWVzLTI1Ni1jZmI6MjkzMDQ5NTNAcXEuY29tQHVzLmppYW9odWFuc2hlbmdmcS50azoyMzc1','29304953@qq.com','sean2218245'),(37,'2018-11-14 13:28:02',365,0,'us.jiaohuanshengfq.tk',2376,'281396346@qq.com','ss://YWVzLTI1Ni1jZmI6MjgxMzk2MzQ2QHFxLmNvbUB1cy5qaWFvaHVhbnNoZW5nZnEudGs6MjM3Ng==','281396346@qq.com','shanghaiexpo'),(38,'2018-11-15 08:54:28',183,0,'us.jiaohuanshengfq.tk',2377,'7663787@qq.com','ss://YWVzLTI1Ni1jZmI6NzY2Mzc4N0BxcS5jb21AdXMuamlhb2h1YW5zaGVuZ2ZxLnRrOjIzNzc=','7663787@qq.com','youlan'),(39,'2018-11-17 05:19:49',365,0,'us.jiaohuanshengfq.tk',2379,'mengfei421@sohu.com','ss://YWVzLTI1Ni1jZmI6bWVuZ2ZlaTQyMUBzb2h1LmNvbUB1cy5qaWFvaHVhbnNoZW5nZnEudGs6MjM3OQ==','mengfei421@sohu.com','pangda925'),(40,'2018-11-17 07:20:16',365,0,'us.jiaohuanshengfq.tk',2380,'1625983871@qq.com','ss://YWVzLTI1Ni1jZmI6MTYyNTk4Mzg3MUBxcS5jb21AdXMuamlhb2h1YW5zaGVuZ2ZxLnRrOjIzODA=','1625983871@qq.com','Florence'),(41,'2018-11-18 14:45:20',150,0,'us.jiaohuanshengfq.tk',2381,'843552346@qq.com','ss://YWVzLTI1Ni1jZmI6ODQzNTUyMzQ2QHFxLmNvbUB1cy5qaWFvaHVhbnNoZW5nZnEudGs6MjM4MQ==','843552346@qq.com','fljfang'),(42,'2018-11-19 03:06:44',365,0,'us.jiaohuanshengfq.tk',2382,'617346538@qq.com','ss://YWVzLTI1Ni1jZmI6NjE3MzQ2NTM4QHFxLmNvbUB1cy5qaWFvaHVhbnNoZW5nZnEudGs6MjM4Mg==','617346538@qq.com','zcc'),(43,'2018-11-19 10:47:13',183,0,'us.jiaohuanshengfq.tk',2383,'763667470@qq.com','ss://YWVzLTI1Ni1jZmI6NzYzNjY3NDcwQHFxLmNvbUB1cy5qaWFvaHVhbnNoZW5nZnEudGs6MjM4Mw==','763667470@qq.com','kkkk123321'),(44,'2018-11-21 03:17:56',90,0,'us.jiaohuanshengfq.tk',2384,'173263826@qq.com','ss://YWVzLTI1Ni1jZmI6MTczMjYzODI2QHFxLmNvbUB1cy5qaWFvaHVhbnNoZW5nZnEudGs6MjM4NA==','173263826@qq.com','steven'),(45,'2018-11-22 14:35:22',90,0,'jiaohuanshengfq.tk',2592,'674415126@qq.com','ss://YWVzLTI1Ni1jZmI6Njc0NDE1MTI2QHFxLmNvbUBqaWFvaHVhbnNoZW5nZnEudGs6MjU5Mg==','674415126@qq.com','davina'),(46,'2018-11-22 14:45:00',90,0,'us.jiaohuanshengfq.tk',2592,'lisa97418@sina.com','ss://YWVzLTI1Ni1jZmI6bGlzYTk3NDE4QHNpbmEuY29tQGppYW9odWFuc2hlbmdmcS50azoyNTky','lisa97418@sina.com','Lisa'),(47,'2018-11-24 06:45:03',90,0,'jiaohuanshengfq.tk',2592,'460843005@qq.com','ss://YWVzLTI1Ni1jZmI6NDYwODQzMDA1QHFxLmNvbUBqaWFvaHVhbnNoZW5nZnEudGs6MjU5Mg==','460843005@qq.com','jhsfq'),(48,'2018-11-24 14:16:04',365,0,'jiaohuanshengfq.tk',2592,'xianjianwxz@126.com','ss://YWVzLTI1Ni1jZmI6eGlhbmppYW53eHpAMTI2LmNvbUBqaWFvaHVhbnNoZW5nZnEudGs6MjU5Mg==','xianjianwxz@126.com','weekswxz'),(49,'2018-11-24 16:06:54',183,0,'jiaohuanshengfq.tk',2592,'1751328329@qq.com','ss://YWVzLTI1Ni1jZmI6MTc1MTMyODMyOUBxcS5jb21Aamlhb2h1YW5zaGVuZ2ZxLnRrOjI1OTI=','1751328329@qq.com','1751328329'),(50,'2018-11-25 06:10:45',365,0,'jiaohuanshengfq.tk',2335,'1487088745@qq.com','ss://YWVzLTI1Ni1jZmI6MTQ4NzA4ODc0NUBxcS5jb21Aamlhb2h1YW5zaGVuZ2ZxLnRrOjIzMzU=','1487088745@qq.com','bitao'),(51,'2018-11-25 10:16:33',183,0,'jiaohuanshengfq.tk',2335,'739615592@qq.com','ss://YWVzLTI1Ni1jZmI6NzM5NjE1NTkyQHFxLmNvbUBqaWFvaHVhbnNoZW5nZnEudGs6MjMzNQ==','739615592@qq.com','15868133486'),(52,'2018-11-26 13:08:46',365,0,'jiaohuanshengfq.tk',2335,'2258507448@qq.com','ss://YWVzLTI1Ni1jZmI6MjI1ODUwNzQ0OEBxcS5jb21Aamlhb2h1YW5zaGVuZ2ZxLnRrOjIzMzU=','2258507448@qq.com','Lynn'),(53,'2018-11-26 13:08:46',365,0,'jiaohuanshengfq.tk',2335,'2258507448@qq.com','ss://YWVzLTI1Ni1jZmI6MjI1ODUwNzQ0OEBxcS5jb21Aamlhb2h1YW5zaGVuZ2ZxLnRrOjIzMzU=','2258507448@qq.com','Lynn'),(54,'2018-11-28 06:57:12',365,0,'jiaohuanshengfq.tk',2335,'443910061@qq.com','ss://YWVzLTI1Ni1jZmI6NDQzOTEwMDYxQHFxLmNvbUBqaWFvaHVhbnNoZW5nZnEudGs6MjMzNQ==','443910061@qq.com','mcdull'),(55,'2018-11-28 07:07:54',60,0,'jiaohuanshengfq.tk',2335,'705055841@qq.com','ss://YWVzLTI1Ni1jZmI6NzA1MDU1ODQxQHFxLmNvbUBqaWFvaHVhbnNoZW5nZnEudGs6MjMzNQ==','705055841@qq.com','EleanorWu');
/*!40000 ALTER TABLE `jhsfq_shadowsocksaccount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jhsfq_shadowsockstemplate`
--

DROP TABLE IF EXISTS `jhsfq_shadowsockstemplate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jhsfq_shadowsockstemplate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tem_ip` char(39) NOT NULL,
  `tem_domain` varchar(30) NOT NULL,
  `tem_index` int(11) NOT NULL,
  `tem_maxport` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jhsfq_shadowsockstemplate`
--

LOCK TABLES `jhsfq_shadowsockstemplate` WRITE;
/*!40000 ALTER TABLE `jhsfq_shadowsockstemplate` DISABLE KEYS */;
INSERT INTO `jhsfq_shadowsockstemplate` VALUES (1,'104.168.88.252','liuxueshengfq.tk',6,2367),(2,'107.172.207.23','us.jiaohuanshengfq.tk',7,2385),(3,'107.174.221.167','jiaohuanshengfq.tk',8,2335);
/*!40000 ALTER TABLE `jhsfq_shadowsockstemplate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_emailverifyrecord`
--

DROP TABLE IF EXISTS `users_emailverifyrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_emailverifyrecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `send_type` varchar(60) NOT NULL,
  `send_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_emailverifyrecord`
--

LOCK TABLES `users_emailverifyrecord` WRITE;
/*!40000 ALTER TABLE `users_emailverifyrecord` DISABLE KEYS */;
INSERT INTO `users_emailverifyrecord` VALUES (1,'xPhoy5S9LTnkBjg1iwjz','946563239@qq.com','forget','2018-10-30 06:49:01'),(2,'y5RNX0a7i4sMKAzKaRGg','1010351486@qq.com','forget','2018-10-30 06:54:43'),(3,'gcXj5JRujMSgQO97t446','3232584441@qq.com','register','2018-10-30 06:58:43'),(4,'9AU4Q6IS8EQBYTSzhasD','3232584441@qq.com','forget','2018-10-30 07:01:21'),(5,'wfQ7MeuYrRfacZI02B19','3232584441@qq.com','forget','2018-10-30 07:03:22'),(6,'rbelQDdHtSdIvuD0c7Cb','371269864@qq.com','register','2018-10-30 08:54:31'),(7,'kSokDpnSilstKAVmC3M7','549655073@qq.com','register','2018-10-30 13:58:35'),(8,'slbUmLCvWZuDxkC6ZYC4','549655073@qq.com','forget','2018-10-30 14:06:44'),(9,'37DHxbQDncb9dVT7zOvs','ldgfyw@163.com','register','2018-10-31 04:20:17'),(10,'1ziWY36FezkIAplkKlNI','1010351486@qq.com','forget','2018-10-31 07:43:57'),(11,'1iifa5XRh0WsmoAJT4Bu','295583150@qq.com','register','2018-11-01 02:02:31'),(12,'hReHzsFkC68LSG6KzstH','409521419@qq.com','register','2018-11-01 02:07:41'),(13,'EXlFV5dAOrGjK1dKDVbM','940127950@qq.com','register','2018-11-01 08:44:01'),(14,'HJxuCKBD08zkrTO1gxui','837975841@qq.com','register','2018-11-02 03:05:38'),(15,'DLVl7YXRbvjwqC1KCsmx','1500548857@qq.com','register','2018-11-03 10:12:37'),(16,'0o5QTfuyHWIKJxGM87Rn','1032879737@qq.com','register','2018-11-03 14:56:07'),(17,'XZQQzLn6EOoGISo16vOR','544348124@qq.com','register','2018-11-05 03:15:11'),(18,'qTdaiNK2KKm2mmNLkjKD','957960616@qq.com','register','2018-11-05 06:29:58'),(19,'Dh4FvTz7NCoKprZuY19t','chicdx@qq.com','register','2018-11-05 13:26:01'),(20,'Ubo39l93bQ4NyFuKO8wU','2322564593@qq.com','register','2018-11-06 04:19:30'),(21,'T3XE4V05YR3QEkO8EPlo','zzkuaile99@126.com','register','2018-11-06 05:49:03'),(22,'bY4aKVgXeyecC7GmCdKF','284534429@qq.com','register','2018-11-06 05:55:20'),(23,'iHGLEvhELKbjkuWXgZFY','471243622@qq.com','register','2018-11-07 02:35:04'),(24,'ZHW0RFE62Cjm9FVlMwAk','65516398@qq.com','register','2018-11-07 03:52:19'),(25,'3YfzvyGXEcjLev5jQWx0','943325546@qq.com','register','2018-11-07 09:26:08'),(26,'1KFrnPj1SG6JINHRv46d','1109876099@qq.com','register','2018-11-08 06:36:51'),(27,'NUKIaiuhOdImlklXV6gA','761522080@qq.com','register','2018-11-08 08:25:57'),(28,'YyG88ccnQ35a5lwkgQbh','1002757334@qq.com','register','2018-11-08 13:17:27'),(29,'cnRBFjtPYPZYaVZSp29b','rooooosielu@126.com','register','2018-11-08 13:36:56'),(30,'QMDJ9dQ6LeCmPmUrR280','1939304378@qq.com','register','2018-11-08 15:03:36'),(31,'T5aN3IjhrPyFzDSnTgSZ','2270578188@qq.com','register','2018-11-08 15:08:25'),(32,'Thypo8faz25M889pZPsc','1243731260@qq.com','register','2018-11-11 12:06:27'),(33,'HoSikx81TRZ7n5iOCk4t','539804989@qq.com','register','2018-11-12 02:47:21'),(34,'5tV0zirWFVL1MNdgF3Yj','353649064@qq.com','register','2018-11-12 05:56:49'),(35,'Bm8dMSwxzC5cBJjUckGe','339140450@qq.com','register','2018-11-12 11:05:14'),(36,'huPBvSTG5SGy6zKDp7Gp','1228058783@qq.com','register','2018-11-13 08:50:21'),(37,'pG2i5nyogLuRAJFOaCxE','553781330@qq.com','register','2018-11-13 13:40:35'),(38,'l27eZEzTGzePAwKmRzXz','29304953@qq.com','register','2018-11-14 09:25:05'),(39,'wy8SH2oMIlwRpjy7GIVR','281396346@qq.com','register','2018-11-14 09:50:11'),(40,'kxL9vKXEZKly2Ar0BevA','7663787@qq.com','register','2018-11-15 08:47:44'),(41,'sHFbDutL9CoIA4v6JmTa','mengfei421@sohu.com','register','2018-11-17 05:05:41'),(42,'Pxh4U25XxnyTIM14FVRG','1625983871@qq.com','register','2018-11-17 07:09:50'),(43,'wO3PwcwUeSRrDYtGpUtL','laiyan6@163.com','register','2018-11-18 05:24:12'),(44,'bqfnQ0khlPnp1PMbXDJw','843552346@qq.com','register','2018-11-18 14:39:53'),(45,'s8fXuUUQLJXmifCK8fn8','617346538@qq.com','register','2018-11-19 03:00:49'),(46,'rP70lU3so6VZVVNhSEd0','281396346@qq.com','forget','2018-11-19 09:55:19'),(47,'VbFkPgBKjRVYSNU1C27c','763667470@qq.com','register','2018-11-19 10:40:15'),(48,'TzrTnKinZ5K6f3TdVIQY','173263826@qq.com','register','2018-11-21 03:14:25'),(49,'Gef4xP6ULLMhEbNYo1fh','568592967@qq.com','register','2018-11-21 07:50:04'),(50,'sihOEquMEsQ2M2rnAbQ1','674415126@qq.com','register','2018-11-22 14:28:40'),(51,'Uv1dciKXUMa5xtxwvJdp','lisa97418@sina.com','register','2018-11-22 14:43:07'),(52,'GU68fjEc0CG8xOVAgru2','1280016215@qq.com','register','2018-11-23 03:26:46'),(53,'bOjGBZlo4GKb1begtaAs','524544679@qq.com','register','2018-11-24 00:48:21'),(54,'HO8qqxbwUMceXEnBWxHt','173263826@qq.com','forget','2018-11-24 02:37:25'),(55,'VtgZQCsOuPKwLlE3h1cl','460843005@qq.com','register','2018-11-24 03:03:22'),(56,'3dIipVNscZxmgZbTmcXQ','1010351486@qq.com','forget','2018-11-24 10:49:54'),(57,'85eudZ6mNZqMbqxth0gK','xianjianwxz@126.c0m','register','2018-11-24 14:09:44'),(58,'9QRNlZ5E47DcirKgSVQS','xianjianwxz@126.com','register','2018-11-24 14:12:38'),(59,'AyKMS6vO8aV9kNVYSbqb','1751328329@qq.com','register','2018-11-24 16:00:10'),(60,'LAICkVyKe4u1SVgBIeUN','1487088745@qq.com','register','2018-11-25 04:42:03'),(61,'9iFfO0B6baIY3iw6OOGX','739615592@qq.com','register','2018-11-25 10:12:38'),(62,'BzrIVyvUfnRNugOoOOWV','1007948980@qq.com','register','2018-11-26 05:44:34'),(63,'5CyHvqLdDIKEAzLtYV7F','2258507448@qq.com','register','2018-11-26 12:54:55'),(64,'WeEgxTLAbqaRHNLwKXSV','443910061@qq.com','register','2018-11-28 06:51:27'),(65,'hwg8ifcKaU0MMGGsWSta','705055841@qq.com','register','2018-11-28 07:04:02'),(66,'cBychbkH6QdqYpf1Mv5H','15008246873@163.com','register','2018-11-28 08:18:33');
/*!40000 ALTER TABLE `users_emailverifyrecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_userprofile`
--

DROP TABLE IF EXISTS `users_userprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_userprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  `nick_name` varchar(50) NOT NULL,
  `birthday` date DEFAULT NULL,
  `gender` varchar(10) NOT NULL,
  `school` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_userprofile`
--

LOCK TABLES `users_userprofile` WRITE;
/*!40000 ALTER TABLE `users_userprofile` DISABLE KEYS */;
INSERT INTO `users_userprofile` VALUES (1,'pbkdf2_sha256$100000$bMa7PGUOVhHc$gCnJ18+5b3nFSPdWFaXOqsEaK4M2o9E8AaRscwFmkWQ=','2018-11-26 14:13:21',1,'admin','','','1010351486@qq.com',1,1,'2018-10-30 11:39:00','HH',NULL,'female','好久好久','image/2018/10/下载.jpg'),(2,'pbkdf2_sha256$100000$9cMTmfIr2msc$n7oHCjonqfIRH2OsgZTNaJaqQRwqhDNl17QPfLRaVzk=','2018-10-30 10:26:05',0,'Sherry','','','laoxueyi@126.com',0,1,'2018-10-29 11:22:00','',NULL,'','',''),(3,'pbkdf2_sha256$100000$H62vlxNkijF9$XlINft+Usww3cgr6izVo+j20V6bN4PmQ753DiP05AUM=','2018-11-17 10:06:21',0,'lizehao','','','372772366@qq.com',0,1,'2018-10-29 12:35:52','',NULL,'','',''),(4,'pbkdf2_sha256$100000$0mKHbeWggSmv$DQGfj1Hkg44ZNsBYyA0IPtD8e6Dd51M+zvmJtNCVXWA=','2018-10-29 13:23:52',0,'chen','','','1226928348@qq.com',0,1,'2018-10-29 13:06:06','',NULL,'','',''),(5,'pbkdf2_sha256$100000$TBjqm4tB7wDR$J/2NdfHGqB2v2gMlc4kunDprwqZ8NdtdE8044huuQt4=','2018-10-29 14:16:12',0,'josiepink9','','','1123860912@qq.com',0,1,'2018-10-29 13:47:55','',NULL,'','',''),(6,'pbkdf2_sha256$100000$yFWhsISeP5NK$5HezHQsNTa45N6DhDEraXU8wU8EAyB4l8ZW+I1MOF7A=','2018-10-29 16:49:11',0,'tt734385477','','','734385477@qq.com',0,1,'2018-10-29 16:48:09','',NULL,'','',''),(7,'pbkdf2_sha256$100000$g9dyERNc9YC5$b057F4oEtZ9Lf973sPRGziG/x08G+DE5CfIwMnnLZ/A=','2018-10-30 12:08:55',0,'sandy1030','','','2274690045@qq.com',0,1,'2018-10-30 03:19:59','',NULL,'','',''),(11,'pbkdf2_sha256$100000$qa8Qtqt6tMr8$NBCbrgGhdSjMSyOf39iK9ePFWq5anAdmJv28oLDt14s=','2018-10-30 14:17:34',0,'Suki','','','549655073@qq.com',0,1,'2018-10-30 13:58:35','',NULL,'female','','image/default.png'),(10,'pbkdf2_sha256$100000$C9LLvCDo8bYh$wOttTAp0MfXQh/CO/srtSARUSyg0WVqkL3rl2UXeepA=','2018-10-31 03:15:08',0,'eyori','','','371269864@qq.com',0,1,'2018-10-30 08:54:31','',NULL,'female','','image/default.png'),(12,'pbkdf2_sha256$100000$XC4vVG1CzvZL$JD+MjNqTKvHb0yFfVO6r8DIH2nnDIJr232YHmsouNoQ=','2018-11-15 01:58:54',0,'ken205360','','','ldgfyw@163.com',0,1,'2018-10-31 04:20:17','',NULL,'female','','image/default.png'),(13,'pbkdf2_sha256$100000$xPxUaBH12CyD$b5YwbD8hNZPht7fy4U4EWb4W16r+qhpoWV1ctpWdTgs=','2018-11-01 02:05:09',0,'adttree','','','295583150@qq.com',0,1,'2018-11-01 02:02:31','',NULL,'female','','image/default.png'),(14,'pbkdf2_sha256$100000$MK9kehbQj7zg$yq+rN+F5xzrxwoXZCb/v2wBMD1QfZeZgzupUBNloBTw=','2018-11-01 02:08:33',0,'l8874626','','','409521419@qq.com',0,1,'2018-11-01 02:07:41','',NULL,'female','','image/default.png'),(15,'pbkdf2_sha256$100000$6EIG5dayIMk6$a3v+hHmklL27sgMmKi/NO2g75Zqq9rWw+quzTLjonK0=','2018-11-03 09:49:04',0,'liwanying','','','940127950@qq.com',0,1,'2018-11-01 08:44:00','',NULL,'female','','image/default.png'),(16,'pbkdf2_sha256$100000$wXkNVjSSkEmr$qmOePwtkqb6RAISPOFhLWhG4LeGC+5y/ScXk/EmzK4c=','2018-11-02 03:06:31',0,'angliu17','','','837975841@qq.com',0,1,'2018-11-02 03:05:37','',NULL,'female','','image/default.png'),(17,'pbkdf2_sha256$100000$QnymHFZWcUCd$GCwj03HDPTRbJBi3DreJmN8D1As6RoyJ+WyYDLAvBRc=','2018-11-03 10:13:34',0,'ccccc','','','1500548857@qq.com',0,1,'2018-11-03 10:12:37','',NULL,'female','','image/default.png'),(18,'pbkdf2_sha256$100000$VAyOjbFspYJD$glnc62Sk2Fp1pd4HJr3o+owFrXwkZWg30Ob5SEOg7dI=','2018-11-03 14:57:58',0,'cici','','','1032879737@qq.com',0,1,'2018-11-03 14:56:07','',NULL,'female','','image/default.png'),(19,'pbkdf2_sha256$100000$2dqbTfCpMVbs$yK+Xi9OFlt6uSk1a9yOn3z3fsrSixwKb4kl7a9LFauE=','2018-11-05 03:22:00',0,'whalegreen','','','544348124@qq.com',0,1,'2018-11-05 03:15:11','',NULL,'female','','image/default.png'),(20,'pbkdf2_sha256$100000$ybPovFKgAknw$vLmSjbEDdetj+YPAIqn3IeiaXAYJnBQhJoj4FKH3Ebc=','2018-11-05 06:30:42',0,'c957960616','','','957960616@qq.com',0,1,'2018-11-05 06:29:58','',NULL,'female','','image/default.png'),(21,'pbkdf2_sha256$100000$P4ALiVoOdS1a$apZEPx4roq4urOFyApQP4O6mFXEcc7DSqCf5tkTdu3o=','2018-11-05 13:26:47',0,'chicdx','','','chicdx@qq.com',0,1,'2018-11-05 13:26:00','',NULL,'female','','image/default.png'),(22,'pbkdf2_sha256$100000$q6GlGS4nmSGE$NxFbc5FfZ7Y3pqHo+BplH6ceHGNl1J50Ap9JcZAG5Uk=','2018-11-06 04:19:54',0,'keyixuan','','','2322564593@qq.com',0,1,'2018-11-06 04:19:30','',NULL,'female','','image/default.png'),(23,'pbkdf2_sha256$100000$RdYrMbAgxHe2$4Q0hP30rotHLuSWDmrM9qyXXn7hUoseUNHJcycFwqfc=','2018-11-06 05:59:04',0,'yuandian024680','','','zzkuaile99@126.com',0,1,'2018-11-06 05:49:03','',NULL,'female','','image/default.png'),(24,'pbkdf2_sha256$100000$6tVlX0ELApAS$cFF9Cf3TCrmRPPxUW8rLeQ3hr5L0rpsbli7K6HbIzkE=','2018-11-06 06:04:58',0,'yoyo','','','284534429@qq.com',0,1,'2018-11-06 05:55:20','',NULL,'female','','image/default.png'),(25,'pbkdf2_sha256$100000$UfSODeiH5cVl$IC2/rR+V3FPc1boqvVgR7TJsVQEVyNVTM8DZjfo0700=','2018-11-08 15:31:23',0,'Linyan','','','471243622@qq.com',0,1,'2018-11-07 02:35:04','',NULL,'female','','image/default.png'),(26,'pbkdf2_sha256$100000$DIq9bHER8wwF$HZ0EDAc3QR9QL5YNXgXXoC4vyk/4TZPam9Q4Ge85Osc=','2018-11-07 03:54:42',0,'kkvzyi','','','65516398@qq.com',0,1,'2018-11-07 03:52:18','',NULL,'female','','image/default.png'),(27,'pbkdf2_sha256$100000$eyJdAH3nTI4E$9IQcC7NWjUOS4I9ctNLFHxGHPchB9/myn70dbya4wxw=','2018-11-07 09:50:16',0,'Asthvdnina','','','943325546@qq.com',0,1,'2018-11-07 09:26:08','',NULL,'female','','image/default.png'),(28,'pbkdf2_sha256$100000$9OXbjuQZQOh0$zcZlMwFbW0I5zSEu2nluXziTuYa6LK0CsnaaHmPBGdk=','2018-11-26 01:42:59',0,'mochen','','','1109876099@qq.com',0,1,'2018-11-08 06:36:51','',NULL,'female','','image/default.png'),(29,'pbkdf2_sha256$100000$rjdUMPArNmSM$Ci2wZCnkmGm5YQMlNOb6n+4JkF3O+0HKDRFhEo4g6UI=','2018-11-09 11:48:49',0,'tuantuan','','','761522080@qq.com',0,1,'2018-11-08 08:25:57','',NULL,'female','','image/default.png'),(30,'pbkdf2_sha256$100000$sLBrIpAV4FDI$gLpJ3R5v0vc93YTfwHdMI4XdBL1mVeavhRBaVvlJcoY=','2018-11-08 13:18:48',0,'Vic','','','1002757334@qq.com',0,1,'2018-11-08 13:17:26','',NULL,'female','','image/default.png'),(31,'pbkdf2_sha256$100000$9r2vuEnrkM0T$egZrAw0L/AJF1JFFoVzoA7tllcFKmZIOL4cYu3T/gYw=','2018-11-08 13:37:36',0,'ROoooosielu','','','rooooosielu@126.com',0,1,'2018-11-08 13:36:56','',NULL,'female','','image/default.png'),(32,'pbkdf2_sha256$100000$AtUltbSJNp0v$myQc3GzSDJV4dbj0/XnvHq+o9PTxHotT9WMmkJPtGKA=','2018-11-08 15:04:50',0,'canon','','','1939304378@qq.com',0,1,'2018-11-08 15:03:36','',NULL,'female','','image/default.png'),(33,'pbkdf2_sha256$100000$fEvXhXUHUxDQ$yvQZkmlavrLPUvi4jYcJMuJjaDUvfqlACpLxKouBEdo=','2018-11-08 15:08:56',0,'Gsire','','','2270578188@qq.com',0,1,'2018-11-08 15:08:24','',NULL,'female','','image/default.png'),(34,'pbkdf2_sha256$100000$70xqecnm4HdI$usOS3hacL4rXY8Ul0H/Vn91eQNkQ+mhPxFRDrX/Lyo0=','2018-11-11 12:08:19',0,'Marie','','','1243731260@qq.com',0,1,'2018-11-11 12:06:26','',NULL,'female','','image/default.png'),(35,'pbkdf2_sha256$100000$WuT2LuepAIoW$fgAvEyB4fcPVrqE5sN5CDEe2tqx0J+bYxb9Cf2efn08=','2018-11-12 02:48:17',0,'sunjiayi','','','539804989@qq.com',0,1,'2018-11-12 02:47:21','',NULL,'female','','image/default.png'),(36,'pbkdf2_sha256$100000$36lgiYfOhhXl$hQTl6ImLylE6i+6n8RSf6Hhig7DU51CXLKLf5W066Hg=','2018-11-12 05:57:48',0,'ripplewhite','','','353649064@qq.com',0,1,'2018-11-12 05:56:49','',NULL,'female','','image/default.png'),(37,'pbkdf2_sha256$100000$6oJ1j7DdYMQg$l5xJDIDE70w5HJunoSTRJYTqlcmFxO8/baSU++m5+xE=','2018-11-12 11:11:28',0,'Pan','','','339140450@qq.com',0,1,'2018-11-12 11:05:14','',NULL,'female','','image/default.png'),(38,'pbkdf2_sha256$100000$cdI2LTDTakk6$tPIskdOv9K/SBf0Z6E5elNZyzI7dzwHo2vPQna1MWEM=','2018-11-14 02:24:54',0,'Listen','','','1228058783@qq.com',0,1,'2018-11-13 08:50:21','',NULL,'female','','image/default.png'),(39,'pbkdf2_sha256$100000$VpI9UM2OstFR$pDfoW2mZXwKQzrTTBVAGqijqxEzAi5q3w5g0tKOfmm0=','2018-11-13 13:44:24',0,'Deus','','','553781330@qq.com',0,1,'2018-11-13 13:40:34','',NULL,'female','','image/default.png'),(40,'pbkdf2_sha256$100000$fqLTWikmwdSP$1QWS+bO3Ogzqp+8cl5L8TOn1/iunHeGtrZmPF3uHNVw=','2018-11-14 09:25:45',0,'sean2218245','','','29304953@qq.com',0,1,'2018-11-14 09:25:04','',NULL,'female','','image/default.png'),(41,'pbkdf2_sha256$100000$tvjxuz8G8REK$vBCkm/ADN3EGUQKkAM5Rz/fVfE51nIe9CmtsoUuMdlw=','2018-11-19 09:57:04',0,'shanghaiexpo','','','281396346@qq.com',0,1,'2018-11-14 09:50:11','',NULL,'female','','image/default.png'),(42,'pbkdf2_sha256$100000$BJruoCFaRvy7$mOQsVDY5kHXoTz/sUrxoiNe9tzRbCxmfgDjLxGeY3CU=','2018-11-15 08:50:22',0,'youlan','','','7663787@qq.com',0,1,'2018-11-15 08:47:44','',NULL,'female','','image/default.png'),(43,'pbkdf2_sha256$100000$ZtZuSBPzW1VZ$VgvUBTIb9mviRrjHo/gFtrSwWFnDDwGTQ8nnnS2ICKo=','2018-11-17 05:11:16',0,'pangda925','','','mengfei421@sohu.com',0,1,'2018-11-17 05:05:41','',NULL,'female','','image/default.png'),(44,'pbkdf2_sha256$100000$sI6FY8OjXJh1$EPib3BN96yp/+Wpl9xtm8I+z1XCKwjE8unye8B5Xu1k=','2018-11-17 07:56:45',0,'Florence','','','1625983871@qq.com',0,1,'2018-11-17 07:09:50','',NULL,'female','','image/default.png'),(45,'pbkdf2_sha256$100000$mSRXsCnPRkVF$1dxmZ/1KDWCNWRx/B4khTXeHHs3M0cK70IJ78s3CAUM=','2018-11-18 05:27:09',0,'kkkblabla','','','laiyan6@163.com',0,1,'2018-11-18 05:24:12','',NULL,'female','','image/default.png'),(46,'pbkdf2_sha256$100000$C2DK7HsB7okO$VBvCIfIk1T8TIPSNGLZemzr0K4rSeBdnHFQoHI3P3n8=','2018-11-18 14:41:40',0,'fljfang','','','843552346@qq.com',0,1,'2018-11-18 14:39:52','',NULL,'female','','image/default.png'),(47,'pbkdf2_sha256$100000$rHO5KRN03erk$D/no0uAdFB1tmpsZ77Wtw2GDN73YsxpSuRM4ibC89xU=','2018-11-19 03:03:18',0,'zcc','','','617346538@qq.com',0,1,'2018-11-19 03:00:49','',NULL,'female','','image/default.png'),(48,'pbkdf2_sha256$100000$MrfD3PgZFbqW$8+vEJ+QQlzBsg9nPfWul4F+2FEgkDQQTF9v7XasGiBI=','2018-11-19 10:47:06',0,'kkkk123321','','','763667470@qq.com',0,1,'2018-11-19 10:40:14','',NULL,'female','','image/default.png'),(49,'pbkdf2_sha256$100000$NcoF7s2QCFd6$53yXxfzsMgBTZhmCm7kg/GJ+sfPBSDMYGCltTlfyaAE=','2018-11-24 02:46:11',0,'steven','','','173263826@qq.com',0,1,'2018-11-21 03:14:25','',NULL,'female','','image/default.png'),(50,'pbkdf2_sha256$100000$bX70S1orJUCK$wDVCszDPiuvhbQMecfpPzVMDkEw85Z8m0MeXq4XALO0=','2018-11-21 07:51:49',0,'845936','','','568592967@qq.com',0,1,'2018-11-21 07:50:03','',NULL,'female','','image/default.png'),(51,'pbkdf2_sha256$100000$8kP3MYO4Qw2I$dnTWixZS1OaQuqr6/sILaw9e1Byyzyk65ILYS7N+l9s=','2018-11-22 15:05:26',0,'davina','','','674415126@qq.com',0,1,'2018-11-22 14:28:39','',NULL,'female','','image/default.png'),(52,'pbkdf2_sha256$100000$F7ey6UUsgnso$M7ln8FybfFRMrg79Wc/RM4/c46sbfIsPcCqswzPEm20=','2018-11-22 14:43:44',0,'Lisa','','','lisa97418@sina.com',0,1,'2018-11-22 14:43:07','',NULL,'female','','image/default.png'),(53,'pbkdf2_sha256$100000$hsvbHlZ9BH0I$KX5mYMx0itjQdqJru2x9aozrm2DpPQ/sed0dMe938GY=','2018-11-23 03:27:43',0,'wangfubing','','','1280016215@qq.com',0,1,'2018-11-23 03:26:46','',NULL,'female','','image/default.png'),(54,'pbkdf2_sha256$100000$xMmaH3Td9AT8$0N+EE+DSeHPZ0Xaj5VCBW4BvTuIegx8MnKV68c33Koo=','2018-11-24 00:51:10',0,'XUU','','','524544679@qq.com',0,1,'2018-11-24 00:48:21','',NULL,'female','','image/default.png'),(55,'pbkdf2_sha256$100000$gt6jSgtiabSi$zXM9epRyJGSZXpIR1FqE/uhGzapx92ioTvdCxmN7qB0=','2018-11-24 09:23:06',0,'jhsfq','','','460843005@qq.com',0,1,'2018-11-24 03:03:22','',NULL,'female','','image/default.png'),(57,'pbkdf2_sha256$100000$vcjaWKOZGgV6$FmWCnnf2skK/dDjn8S3EuAMYpk1IPq83g6TUwpqqx+s=','2018-11-24 14:15:49',0,'weekswxz','','','xianjianwxz@126.com',0,1,'2018-11-24 14:12:38','',NULL,'female','','image/default.png'),(58,'pbkdf2_sha256$100000$qQzTaeP12oVe$yuZdiP9fFgvvc5sce6dDhan01M8Rjn2AGUJQh85gi1w=','2018-11-24 16:01:00',0,'1751328329','','','1751328329@qq.com',0,1,'2018-11-24 16:00:09','',NULL,'female','','image/default.png'),(59,'pbkdf2_sha256$100000$fDgmjARVivdg$3xCi4pc4MHZ2Phaab6MaIL+I6W8UkNkQLRRORHrDIi4=','2018-11-25 06:10:32',0,'bitao','','','1487088745@qq.com',0,1,'2018-11-25 04:42:03','',NULL,'female','','image/default.png'),(60,'pbkdf2_sha256$100000$Xm70xIrgFdnM$olL8z7YEkPJ5JbaME2WBA/9+XwOm0SBHKenaupnafTc=','2018-11-25 10:14:14',0,'15868133486','','','739615592@qq.com',0,1,'2018-11-25 10:12:37','',NULL,'female','','image/default.png'),(61,'pbkdf2_sha256$100000$4tumGNvTw27S$4V4mFRHKtwsOUaBkjpcB/b0m6Y6/fU4P8MOXqM0tBwg=',NULL,0,'mgtctop','','','1007948980@qq.com',0,1,'2018-11-26 05:44:33','',NULL,'female','','image/default.png'),(62,'pbkdf2_sha256$100000$IumTT5YprB4K$ETb/DdtGWe5Gf5583BC2Kgkx9LUBopJ83OHqgh+YL1s=','2018-11-26 13:23:14',0,'Lynn','','','2258507448@qq.com',0,1,'2018-11-26 12:54:55','',NULL,'female','','image/default.png'),(63,'pbkdf2_sha256$100000$LPCuucCBaZxE$YGyOr++qMykYqJ3Le/XGqnISb1kL5WcyITPwg0fNVaQ=','2018-11-28 06:52:00',0,'mcdull','','','443910061@qq.com',0,1,'2018-11-28 06:51:27','',NULL,'female','','image/default.png'),(64,'pbkdf2_sha256$100000$8Ucp7lQrDlyh$wcQubPErirMz/2ajOb3f2QT5wWbnGA1h1KJ80slXidA=','2018-11-28 07:05:23',0,'EleanorWu','','','705055841@qq.com',0,1,'2018-11-28 07:04:01','',NULL,'female','','image/default.png'),(65,'pbkdf2_sha256$100000$r0n4aRb7AelL$UNJOR1MBsIkx2o/y0qbhbai2FjrGHrW060PdmxgoPU0=','2018-11-28 08:19:10',0,'turanfor','','','15008246873@163.com',0,1,'2018-11-28 08:18:32','',NULL,'female','','image/default.png');
/*!40000 ALTER TABLE `users_userprofile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_userprofile_groups`
--

DROP TABLE IF EXISTS `users_userprofile_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_userprofile_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_userprofile_groups_userprofile_id_group_id_823cf2fc_uniq` (`userprofile_id`,`group_id`),
  KEY `users_userprofile_groups_userprofile_id_a4496a80` (`userprofile_id`),
  KEY `users_userprofile_groups_group_id_3de53dbf` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_userprofile_groups`
--

LOCK TABLES `users_userprofile_groups` WRITE;
/*!40000 ALTER TABLE `users_userprofile_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_userprofile_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_userprofile_user_permissions`
--

DROP TABLE IF EXISTS `users_userprofile_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_userprofile_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_userprofile_user_p_userprofile_id_permissio_d0215190_uniq` (`userprofile_id`,`permission_id`),
  KEY `users_userprofile_user_permissions_userprofile_id_34544737` (`userprofile_id`),
  KEY `users_userprofile_user_permissions_permission_id_393136b6` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_userprofile_user_permissions`
--

LOCK TABLES `users_userprofile_user_permissions` WRITE;
/*!40000 ALTER TABLE `users_userprofile_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_userprofile_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xadmin_bookmark`
--

DROP TABLE IF EXISTS `xadmin_bookmark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xadmin_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `url_name` varchar(64) NOT NULL,
  `query` varchar(1000) NOT NULL,
  `is_share` tinyint(1) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_bookmark_content_type_id_60941679` (`content_type_id`),
  KEY `xadmin_bookmark_user_id_42d307fc` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xadmin_bookmark`
--

LOCK TABLES `xadmin_bookmark` WRITE;
/*!40000 ALTER TABLE `xadmin_bookmark` DISABLE KEYS */;
/*!40000 ALTER TABLE `xadmin_bookmark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xadmin_log`
--

DROP TABLE IF EXISTS `xadmin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xadmin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `ip_addr` char(39) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` varchar(32) NOT NULL,
  `message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_log_content_type_id_2a6cb852` (`content_type_id`),
  KEY `xadmin_log_user_id_bb16a176` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=77 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xadmin_log`
--

LOCK TABLES `xadmin_log` WRITE;
/*!40000 ALTER TABLE `xadmin_log` DISABLE KEYS */;
INSERT INTO `xadmin_log` VALUES (1,'2018-10-30 06:40:00','221.11.32.134','1','admin chart widget','delete','',8,1),(2,'2018-10-30 06:51:56','221.11.32.134',NULL,'','delete','批量删除 1 个 用户信息',NULL,1),(3,'2018-10-30 06:53:07','221.11.32.134','1','admin','change','修改 last_login，email，nick_name，school 和 image',11,1),(4,'2018-10-30 07:07:10','221.11.32.134',NULL,'','delete','批量删除 1 个 用户信息',NULL,1),(5,'2018-10-30 07:12:02','221.11.32.134','1','qazws1','create','已添加。',13,1),(6,'2018-10-30 07:13:40','221.11.32.134',NULL,'','delete','批量删除 1 个 梭影账号',NULL,1),(7,'2018-10-30 07:14:00','221.11.32.134','1','liuxueshengfq.tk','change','修改 tem_maxport',16,1),(8,'2018-10-30 13:51:35','223.104.11.85','2','qazws180','create','已添加。',13,1),(9,'2018-10-30 14:19:04','223.104.11.85','3','sukii365','create','已添加。',13,1),(10,'2018-10-31 04:20:30','223.104.11.85','4','henka180','create','已添加。',13,1),(11,'2018-11-01 01:54:52','221.11.32.135','1','liuxueshengfq.tk','change','修改 tem_maxport',16,1),(12,'2018-11-01 02:07:56','221.11.32.135','5','qingn180','create','已添加。',13,1),(13,'2018-11-01 02:09:34','221.11.32.135','6','mingm180','create','已添加。',13,1),(14,'2018-11-01 02:38:48','221.11.32.135','1','liuxueshengfq.tk','change','修改 tem_maxport',16,1),(15,'2018-11-01 02:39:53','221.11.32.135','7','qazws1','create','已添加。',13,1),(16,'2018-11-01 02:42:17','221.11.32.135','1','liuxueshengfq.tk','change','修改 tem_maxport',16,1),(17,'2018-11-01 02:42:48','221.11.32.135',NULL,'','delete','批量删除 1 个 梭影账号',NULL,1),(18,'2018-11-01 06:43:01','221.11.32.135','8','qazws1','create','已添加。',13,1),(19,'2018-11-01 06:44:37','221.11.32.135','14','admin','change','修改 starttime',15,1),(20,'2018-11-01 06:52:37','221.11.32.135','14','admin','change','修改 is_expired',15,1),(21,'2018-11-01 06:57:09','221.11.32.135','9','qazws1','create','已添加。',13,1),(22,'2018-11-01 07:36:21','221.11.32.135','14','admin','change','修改 starttime',15,1),(23,'2018-11-01 07:39:54','221.11.32.135','10','qazws1','create','已添加。',13,1),(24,'2018-11-01 08:37:31','221.11.32.135','2','us.jiaohuanshengfq.tk','change','修改 tem_maxport',16,1),(25,'2018-11-01 08:48:15','221.11.32.135','11','nihao120','create','已添加。',13,1),(26,'2018-11-01 08:56:15','221.11.32.135','2','us.jiaohuanshengfq.tk','change','没有字段被修改。',16,1),(27,'2018-11-02 03:09:06','223.104.11.85','12','nanan183','create','已添加。',13,1),(28,'2018-11-02 04:48:21','223.104.11.85','13','qazws30','create','已添加。',13,1),(29,'2018-11-03 10:14:54','223.104.11.85','14','zxcvb183','create','已添加。',13,1),(30,'2018-11-03 14:59:54','223.104.11.85','15','honey90','create','已添加。',13,1),(31,'2018-11-03 15:45:39','223.104.11.85','2','us.jiaohuanshengfq.tk','change','修改 tem_index',16,1),(32,'2018-11-05 06:31:40','223.104.11.85','16','tande180','create','已添加。',13,1),(33,'2018-11-06 05:58:50','221.11.32.133','17','heita365','create','已添加。',13,1),(34,'2018-11-06 06:02:46','223.104.11.85','18','yoyoy183','create','已添加。',13,1),(35,'2018-11-07 02:52:35','221.11.32.133','19','cheer90','create','已添加。',13,1),(36,'2018-11-07 03:57:46','221.11.32.133','20','cheng183','create','已添加。',13,1),(37,'2018-11-07 09:51:27','223.104.11.85','21','dnina183','create','已添加。',13,1),(38,'2018-11-08 06:37:51','223.104.11.85','22','qazws365','create','已添加。',13,1),(39,'2018-11-08 08:28:02','223.104.11.85','23','lying90','create','已添加。',13,1),(40,'2018-11-08 13:20:42','117.136.87.107','24','victy183','create','已添加。',13,1),(41,'2018-11-08 13:20:42','117.136.87.107','25','victy183','create','已添加。',13,1),(42,'2018-11-08 13:20:54','117.136.87.107',NULL,'','delete','批量删除 1 个 注册码',NULL,1),(43,'2018-11-08 13:39:46','117.136.87.107','26','huaro90','create','已添加。',13,1),(44,'2018-11-08 15:27:21','221.11.32.133','27','canon90','create','已添加。',13,1),(45,'2018-11-11 12:10:34','117.136.87.92','28','yamin90','create','已添加。',13,1),(46,'2018-11-12 02:35:35','221.11.32.135','29','moguo180','create','已添加。',13,1),(47,'2018-11-12 05:58:59','117.136.86.65','30','riple90','create','已添加。',13,1),(48,'2018-11-12 11:09:15','117.136.86.65','31','balal183','create','已添加。',13,1),(49,'2018-11-12 11:09:16','117.136.86.65','32','balal183','create','已添加。',13,1),(50,'2018-11-12 11:16:11','117.136.86.65',NULL,'','delete','批量删除 1 个 注册码',NULL,1),(51,'2018-11-13 08:53:16','117.136.86.65','33','lixin180','create','已添加。',13,1),(52,'2018-11-13 13:46:00','117.136.86.65','34','desuy183','create','已添加。',13,1),(53,'2018-11-14 09:26:41','117.136.86.65','35','mifen183','create','已添加。',13,1),(54,'2018-11-14 10:31:54','117.136.86.65','36','tinay365','create','已添加。',13,1),(55,'2018-11-15 08:53:18','117.136.50.216','37','youan183','create','已添加。',13,1),(56,'2018-11-17 05:19:09','113.143.51.197','38','panda365','create','已添加。',13,1),(57,'2018-11-17 07:19:17','117.136.87.87','39','florn365','create','已添加。',13,1),(58,'2018-11-18 14:43:42','221.11.32.134','40','qwert150','create','已添加。',13,1),(59,'2018-11-19 03:06:20','221.11.32.134','41','yiran365','create','已添加。',13,1),(60,'2018-11-19 10:46:19','117.136.25.207','42','dolor183','create','已添加。',13,1),(61,'2018-11-21 03:17:17','221.11.32.134','43','steve90','create','已添加。',13,1),(62,'2018-11-21 08:01:15','221.11.32.134','3','jiaohuanshengfq.tk','change','修改 tem_index',16,1),(63,'2018-11-22 14:34:51','221.11.32.134','44','hello90','create','已添加。',13,1),(64,'2018-11-22 14:45:20','221.11.32.134','45','lisac90','create','已添加。',13,1),(65,'2018-11-22 15:07:32','221.11.32.135','46','Lisa','change','修改 starttime 和 domain',15,1),(66,'2018-11-24 04:48:53','117.136.25.207','46','zengh90','create','已添加。',13,1),(67,'2018-11-24 14:11:54','221.11.32.135',NULL,'','delete','批量删除 1 个 用户信息',NULL,1),(68,'2018-11-24 14:15:36','221.11.32.135','47','zixin365','create','已添加。',13,1),(69,'2018-11-24 16:06:27','221.11.32.134','48','huoha183','create','已添加。',13,1),(70,'2018-11-25 04:59:41','221.11.32.135','3','jiaohuanshengfq.tk','change','修改 tem_maxport',16,1),(71,'2018-11-25 05:00:16','221.11.32.135','49','bitao183','create','已添加。',13,1),(72,'2018-11-25 05:01:05','221.11.32.135','49','bitao365','change','修改 code',13,1),(73,'2018-11-25 10:15:54','117.136.25.207','50','kuizi183','create','已添加。',13,1),(74,'2018-11-26 13:03:17','117.136.86.193','51','lynnh365','create','已添加。',13,1),(75,'2018-11-28 06:54:25','221.11.32.136','52','maido365','create','已添加。',13,1),(76,'2018-11-28 07:07:13','107.174.221.167','53','elean60','create','已添加。',13,1);
/*!40000 ALTER TABLE `xadmin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xadmin_usersettings`
--

DROP TABLE IF EXISTS `xadmin_usersettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xadmin_usersettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(256) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_usersettings_user_id_edeabe4a` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xadmin_usersettings`
--

LOCK TABLES `xadmin_usersettings` WRITE;
/*!40000 ALTER TABLE `xadmin_usersettings` DISABLE KEYS */;
INSERT INTO `xadmin_usersettings` VALUES (1,'dashboard:home:pos','',1);
/*!40000 ALTER TABLE `xadmin_usersettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xadmin_userwidget`
--

DROP TABLE IF EXISTS `xadmin_userwidget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xadmin_userwidget` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` varchar(256) NOT NULL,
  `widget_type` varchar(50) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_userwidget_user_id_c159233a` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xadmin_userwidget`
--

LOCK TABLES `xadmin_userwidget` WRITE;
/*!40000 ALTER TABLE `xadmin_userwidget` DISABLE KEYS */;
/*!40000 ALTER TABLE `xadmin_userwidget` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-29 12:50:47
