-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: unikall
-- ------------------------------------------------------
-- Server version	5.7.31-0ubuntu0.18.04.1

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
-- Table structure for table `allies`
--

DROP TABLE IF EXISTS `allies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `allies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `business` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `allies`
--

LOCK TABLES `allies` WRITE;
/*!40000 ALTER TABLE `allies` DISABLE KEYS */;
/*!40000 ALTER TABLE `allies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` longtext,
  `published_at` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles`
--

LOCK TABLES `articles` WRITE;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blogs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext,
  `business` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogs`
--

LOCK TABLES `blogs` WRITE;
/*!40000 ALTER TABLE `blogs` DISABLE KEYS */;
/*!40000 ALTER TABLE `blogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `business_services`
--

DROP TABLE IF EXISTS `business_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `business_services` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `icon` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext,
  `business` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `business_services`
--

LOCK TABLES `business_services` WRITE;
/*!40000 ALTER TABLE `business_services` DISABLE KEYS */;
INSERT INTO `business_services` VALUES (1,NULL,'servicio 13','prueba de servicio 13',NULL,'2020-10-05 22:07:38','2020-10-07 02:40:48');
/*!40000 ALTER TABLE `business_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `businesses`
--

DROP TABLE IF EXISTS `businesses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `businesses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `tagline` varchar(255) DEFAULT NULL,
  `description` longtext,
  `address` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `user` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `zip` decimal(10,2) DEFAULT NULL,
  `product` int(11) DEFAULT NULL,
  `ally` int(11) DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `businesses`
--

LOCK TABLES `businesses` WRITE;
/*!40000 ALTER TABLE `businesses` DISABLE KEYS */;
/*!40000 ALTER TABLE `businesses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `businesses__allies`
--

DROP TABLE IF EXISTS `businesses__allies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `businesses__allies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `business_id` int(11) DEFAULT NULL,
  `ally_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `businesses__allies`
--

LOCK TABLES `businesses__allies` WRITE;
/*!40000 ALTER TABLE `businesses__allies` DISABLE KEYS */;
/*!40000 ALTER TABLE `businesses__allies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `businesses__business_services`
--

DROP TABLE IF EXISTS `businesses__business_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `businesses__business_services` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `business_id` int(11) DEFAULT NULL,
  `business-service_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `businesses__business_services`
--

LOCK TABLES `businesses__business_services` WRITE;
/*!40000 ALTER TABLE `businesses__business_services` DISABLE KEYS */;
/*!40000 ALTER TABLE `businesses__business_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `businesses__top_banners`
--

DROP TABLE IF EXISTS `businesses__top_banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `businesses__top_banners` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `business_id` int(11) DEFAULT NULL,
  `top-banner_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `businesses__top_banners`
--

LOCK TABLES `businesses__top_banners` WRITE;
/*!40000 ALTER TABLE `businesses__top_banners` DISABLE KEYS */;
/*!40000 ALTER TABLE `businesses__top_banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `icon` varchar(255) DEFAULT NULL,
  `product_subcategry` int(11) DEFAULT NULL,
  `subcategory` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (3,'E-commerce','2020-09-24 21:24:18','2020-09-24 21:24:18',NULL,NULL,NULL,NULL),(4,'Events','2020-09-24 21:25:54','2020-09-24 21:25:54',NULL,NULL,NULL,NULL),(5,'Construction','2020-09-24 21:27:12','2020-09-24 21:45:54',NULL,NULL,NULL,NULL),(6,'Lessons','2020-09-24 21:27:27','2020-09-24 21:27:27',NULL,NULL,NULL,NULL),(7,'Technology & Design','2020-09-24 21:27:40','2020-09-24 21:27:40',NULL,NULL,NULL,NULL),(8,'Marketing & Sales','2020-09-24 21:27:57','2020-09-24 21:27:57',NULL,NULL,NULL,NULL),(9,'Beauty & Fashion','2020-09-24 21:28:14','2020-09-24 21:28:14',NULL,NULL,NULL,NULL),(10,'Household Services','2020-09-24 21:28:26','2020-09-24 21:28:26',NULL,NULL,NULL,NULL),(11,'Consulting','2020-09-24 21:28:45','2020-09-24 21:28:45',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configs`
--

DROP TABLE IF EXISTS `configs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `configs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `builder_page` tinyint(1) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configs`
--

LOCK TABLES `configs` WRITE;
/*!40000 ALTER TABLE `configs` DISABLE KEYS */;
INSERT INTO `configs` VALUES (2,0,'init','2020-09-24 20:50:05','2020-09-24 21:00:08');
/*!40000 ALTER TABLE `configs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_store`
--

DROP TABLE IF EXISTS `core_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_store` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext,
  `type` varchar(255) DEFAULT NULL,
  `environment` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_store`
--

LOCK TABLES `core_store` WRITE;
/*!40000 ALTER TABLE `core_store` DISABLE KEYS */;
INSERT INTO `core_store` VALUES (56,'db_model_configs','{\"builder_page\":{\"type\":\"boolean\"},\"name\":{\"type\":\"string\"},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}','object',NULL,NULL),(57,'db_model_subcategories','{\"name\":{\"type\":\"string\"},\"category\":{\"model\":\"category\",\"via\":\"subcategories\"},\"description\":{\"type\":\"string\"},\"layouts\":{\"collection\":\"layout\",\"via\":\"subcategory\",\"isVirtual\":true},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}','object',NULL,NULL),(58,'db_model_subscribers','{\"subscriber_email\":{\"type\":\"email\"},\"business\":{\"model\":\"business\"},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}','object',NULL,NULL),(59,'db_model_core_store','{\"key\":{\"type\":\"string\"},\"value\":{\"type\":\"text\"},\"type\":{\"type\":\"string\"},\"environment\":{\"type\":\"string\"},\"tag\":{\"type\":\"string\"}}','object',NULL,NULL),(60,'db_model_strapi_webhooks','{\"name\":{\"type\":\"string\"},\"url\":{\"type\":\"text\"},\"headers\":{\"type\":\"json\"},\"events\":{\"type\":\"json\"},\"enabled\":{\"type\":\"boolean\"}}','object',NULL,NULL),(61,'db_model_strapi_administrator','{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true,\"required\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false}}','object',NULL,NULL),(62,'db_model_users-permissions_permission','{\"type\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"controller\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"enabled\":{\"type\":\"boolean\",\"required\":true,\"configurable\":false},\"policy\":{\"type\":\"string\",\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"permissions\",\"plugin\":\"users-permissions\",\"configurable\":false}}','object',NULL,NULL),(63,'db_model_allies','{\"logo\":{\"collection\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\",\"files\",\"videos\"],\"plugin\":\"upload\",\"required\":false},\"business\":{\"via\":\"ally\",\"model\":\"business\"},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}','object',NULL,NULL),(64,'db_model_articles','{\"title\":{\"type\":\"string\"},\"content\":{\"type\":\"richtext\"},\"image\":{\"model\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\",\"files\",\"videos\"],\"plugin\":\"upload\",\"required\":false},\"published_at\":{\"type\":\"date\"},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}','object',NULL,NULL),(65,'db_model_blogs','{\"title\":{\"type\":\"string\",\"default\":\"blog title\"},\"description\":{\"type\":\"text\",\"default\":\"blog description goes here...\"},\"image\":{\"model\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\",\"files\",\"videos\"],\"plugin\":\"upload\",\"required\":false},\"business\":{\"via\":\"blogs\",\"model\":\"business\"},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}','object',NULL,NULL),(66,'db_model_business_services','{\"icon\":{\"type\":\"string\"},\"title\":{\"type\":\"string\"},\"description\":{\"type\":\"text\"},\"image\":{\"collection\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\",\"files\",\"videos\"],\"plugin\":\"upload\",\"required\":false},\"business\":{\"via\":\"business_services\",\"model\":\"business\"},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}','object',NULL,NULL),(67,'db_model_businesses','{\"name\":{\"type\":\"string\",\"default\":\"Business\"},\"logo\":{\"model\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\",\"files\",\"videos\"],\"plugin\":\"upload\",\"required\":false},\"tagline\":{\"type\":\"string\",\"default\":\"Your tagline goes here\"},\"description\":{\"type\":\"text\",\"default\":\"Your text goes here ....\"},\"work_images\":{\"collection\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\",\"files\",\"videos\"],\"plugin\":\"upload\",\"required\":false},\"address1\":{\"type\":\"string\",\"default\":\"Addresss goes here\"},\"user\":{\"plugin\":\"users-permissions\",\"model\":\"user\",\"via\":\"business\"},\"testimonials\":{\"collection\":\"testimonial\",\"via\":\"business\",\"isVirtual\":true},\"email\":{\"type\":\"string\",\"default\":\"test@server.com\"},\"phone\":{\"type\":\"string\",\"default\":\"1231231234\"},\"blogs\":{\"collection\":\"blog\",\"via\":\"business\",\"isVirtual\":true},\"address2\":{\"type\":\"string\"},\"city\":{\"type\":\"string\"},\"country\":{\"type\":\"string\"},\"state\":{\"type\":\"string\"},\"zip\":{\"type\":\"decimal\"},\"business_services\":{\"collection\":\"business-services\",\"via\":\"business\",\"isVirtual\":true},\"allies\":{\"collection\":\"allies\",\"attribute\":\"ally\",\"column\":\"id\",\"isVirtual\":true},\"ally\":{\"model\":\"allies\",\"via\":\"business\"},\"products\":{\"collection\":\"product\",\"via\":\"business\",\"isVirtual\":true},\"top_banners\":{\"collection\":\"top-banner\",\"attribute\":\"top-banner\",\"column\":\"id\",\"isVirtual\":true},\"latitude\":{\"type\":\"float\"},\"longitude\":{\"type\":\"float\"},\"galeries\":{\"via\":\"business\",\"collection\":\"galery\",\"isVirtual\":true},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}','object',NULL,NULL),(68,'db_model_categories','{\"name\":{\"type\":\"string\"},\"subcategories\":{\"via\":\"category\",\"collection\":\"subcategory\",\"isVirtual\":true},\"layouts\":{\"collection\":\"layout\",\"via\":\"category\",\"isVirtual\":true},\"description\":{\"type\":\"string\"},\"taglines\":{\"via\":\"category\",\"collection\":\"tagline\",\"isVirtual\":true},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}','object',NULL,NULL),(69,'db_model_layouts','{\"name\":{\"type\":\"string\"},\"preview\":{\"model\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\",\"files\",\"videos\"],\"plugin\":\"upload\",\"required\":false},\"mockup\":{\"model\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\",\"files\",\"videos\"],\"plugin\":\"upload\",\"required\":false},\"category\":{\"via\":\"layouts\",\"model\":\"category\"},\"card\":{\"model\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\",\"files\",\"videos\"],\"plugin\":\"upload\",\"required\":false},\"free\":{\"type\":\"boolean\"},\"subcategory\":{\"via\":\"layouts\",\"model\":\"subcategory\"},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}','object',NULL,NULL),(70,'db_model_product_categories','{\"name\":{\"type\":\"string\"},\"product_subcategories\":{\"via\":\"product_category\",\"collection\":\"product-subcategory\",\"isVirtual\":true},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}','object',NULL,NULL),(71,'db_model_product_subcategories','{\"name\":{\"type\":\"string\"},\"product_category\":{\"model\":\"product-category\",\"via\":\"product_subcategories\"},\"products\":{\"via\":\"product_subcategory\",\"collection\":\"product\",\"isVirtual\":true},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}','object',NULL,NULL),(72,'db_model_products','{\"name\":{\"type\":\"string\"},\"description\":{\"type\":\"text\"},\"price\":{\"type\":\"decimal\"},\"photos\":{\"collection\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\",\"files\",\"videos\"],\"plugin\":\"upload\",\"required\":false},\"quantity\":{\"type\":\"integer\"},\"status\":{\"type\":\"boolean\"},\"business\":{\"via\":\"products\",\"model\":\"business\"},\"product_subcategory\":{\"model\":\"product-subcategory\",\"via\":\"products\"},\"featured\":{\"type\":\"boolean\",\"default\":false},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}','object',NULL,NULL),(73,'db_model_testimonials','{\"title\":{\"type\":\"string\"},\"description\":{\"type\":\"string\"},\"sender\":{\"type\":\"string\"},\"sender_image\":{\"model\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\",\"files\",\"videos\"],\"plugin\":\"upload\",\"required\":false},\"business\":{\"via\":\"testimonials\",\"model\":\"business\"},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}','object',NULL,NULL),(74,'db_model_top_banners','{\"topbannerimage\":{\"model\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\",\"files\",\"videos\"],\"plugin\":\"upload\",\"required\":false},\"business\":{\"model\":\"business\"},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}','object',NULL,NULL),(75,'db_model_upload_file','{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"collection\":\"*\",\"filter\":\"field\",\"configurable\":false},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}','object',NULL,NULL),(76,'db_model_users-permissions_role','{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"collection\":\"permission\",\"via\":\"role\",\"plugin\":\"users-permissions\",\"configurable\":false,\"isVirtual\":true},\"users\":{\"collection\":\"user\",\"via\":\"role\",\"configurable\":false,\"plugin\":\"users-permissions\",\"isVirtual\":true}}','object',NULL,NULL),(77,'db_model_users-permissions_user','{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"users\",\"plugin\":\"users-permissions\",\"configurable\":false},\"fullname\":{\"type\":\"string\"},\"phone\":{\"type\":\"string\"},\"address\":{\"type\":\"string\"},\"city\":{\"type\":\"string\"},\"state\":{\"type\":\"string\"},\"zip\":{\"type\":\"integer\"},\"country\":{\"type\":\"string\"},\"avatar\":{\"model\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\",\"files\",\"videos\"],\"plugin\":\"upload\",\"required\":false},\"business\":{\"via\":\"user\",\"model\":\"business\"},\"layout\":{\"model\":\"layout\"},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}','object',NULL,NULL),(78,'db_model_businesses__allies','{\"business_id\":{\"type\":\"integer\"},\"ally_id\":{\"type\":\"integer\"}}','object',NULL,NULL),(79,'db_model_upload_file_morph','{\"upload_file_id\":{\"type\":\"integer\"},\"related_id\":{\"type\":\"integer\"},\"related_type\":{\"type\":\"text\"},\"field\":{\"type\":\"text\"},\"order\":{\"type\":\"integer\"}}','object',NULL,NULL),(80,'db_model_businesses__top_banners','{\"business_id\":{\"type\":\"integer\"},\"top-banner_id\":{\"type\":\"integer\"}}','object',NULL,NULL),(81,'plugin_documentation_config','{\"restrictedAccess\":false}','object','',''),(82,'plugin_upload_settings','{\"sizeOptimization\":true,\"responsiveDimensions\":true}','object','development',''),(83,'plugin_users-permissions_grant','{\"email\":{\"enabled\":true,\"icon\":\"envelope\"},\"discord\":{\"enabled\":false,\"icon\":\"discord\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/discord/callback\",\"scope\":[\"identify\",\"email\"]},\"facebook\":{\"enabled\":false,\"icon\":\"facebook-square\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/facebook/callback\",\"scope\":[\"email\"]},\"google\":{\"enabled\":false,\"icon\":\"google\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/google/callback\",\"scope\":[\"email\"]},\"github\":{\"enabled\":false,\"icon\":\"github\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/github/callback\",\"scope\":[\"user\",\"user:email\"]},\"microsoft\":{\"enabled\":false,\"icon\":\"windows\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/microsoft/callback\",\"scope\":[\"user.read\"]},\"twitter\":{\"enabled\":false,\"icon\":\"twitter\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/twitter/callback\"},\"instagram\":{\"enabled\":false,\"icon\":\"instagram\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/instagram/callback\"},\"vk\":{\"enabled\":false,\"icon\":\"vk\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/vk/callback\",\"scope\":[\"email\"]},\"twitch\":{\"enabled\":false,\"icon\":\"twitch\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/twitch/callback\",\"scope\":[\"user:read:email\"]}}','object','',''),(84,'plugin_content_manager_configuration_content_types::application::allies.allies','{\"uid\":\"application::allies.allies\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"logo\":{\"edit\":{\"label\":\"Logo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Logo\",\"searchable\":false,\"sortable\":false}},\"business\":{\"edit\":{\"label\":\"Business\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Business\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"logo\",\"created_at\",\"updated_at\"],\"editRelations\":[\"business\"],\"edit\":[[{\"name\":\"logo\",\"size\":6}]]}}','object','',''),(85,'plugin_content_manager_configuration_content_types::application::article.article','{\"uid\":\"application::article.article\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"Title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Title\",\"searchable\":true,\"sortable\":true}},\"content\":{\"edit\":{\"label\":\"Content\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Content\",\"searchable\":false,\"sortable\":false}},\"image\":{\"edit\":{\"label\":\"Image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Image\",\"searchable\":false,\"sortable\":false}},\"published_at\":{\"edit\":{\"label\":\"Published_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Published_at\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"image\",\"published_at\"],\"editRelations\":[],\"edit\":[[{\"name\":\"title\",\"size\":6}],[{\"name\":\"content\",\"size\":12}],[{\"name\":\"image\",\"size\":6},{\"name\":\"published_at\",\"size\":4}]]}}','object','',''),(86,'plugin_content_manager_configuration_content_types::application::blog.blog','{\"uid\":\"application::blog.blog\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"Title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Title\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"image\":{\"edit\":{\"label\":\"Image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Image\",\"searchable\":false,\"sortable\":false}},\"business\":{\"edit\":{\"label\":\"Business\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Business\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"description\",\"image\"],\"editRelations\":[\"business\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"image\",\"size\":6}]]}}','object','',''),(87,'plugin_content_manager_configuration_content_types::application::business-services.business-services','{\"uid\":\"application::business-services.business-services\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"icon\",\"defaultSortBy\":\"icon\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"icon\":{\"edit\":{\"label\":\"Icon\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Icon\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"Title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Title\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"image\":{\"edit\":{\"label\":\"Image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Image\",\"searchable\":false,\"sortable\":false}},\"business\":{\"edit\":{\"label\":\"Business\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Business\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"icon\",\"title\",\"description\"],\"editRelations\":[\"business\"],\"edit\":[[{\"name\":\"icon\",\"size\":6},{\"name\":\"title\",\"size\":6}],[{\"name\":\"description\",\"size\":6},{\"name\":\"image\",\"size\":6}]]}}','object','',''),(88,'plugin_content_manager_configuration_content_types::application::business.business','{\"uid\":\"application::business.business\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"logo\":{\"edit\":{\"label\":\"Logo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Logo\",\"searchable\":false,\"sortable\":false}},\"tagline\":{\"edit\":{\"label\":\"Tagline\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Tagline\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"work_images\":{\"edit\":{\"label\":\"Work_images\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Work_images\",\"searchable\":false,\"sortable\":false}},\"address1\":{\"edit\":{\"label\":\"Address1\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Address1\",\"searchable\":true,\"sortable\":true}},\"user\":{\"edit\":{\"label\":\"User\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"User\",\"searchable\":false,\"sortable\":false}},\"testimonials\":{\"edit\":{\"label\":\"Testimonials\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"title\"},\"list\":{\"label\":\"Testimonials\",\"searchable\":false,\"sortable\":false}},\"email\":{\"edit\":{\"label\":\"Email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Email\",\"searchable\":true,\"sortable\":true}},\"phone\":{\"edit\":{\"label\":\"Phone\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Phone\",\"searchable\":true,\"sortable\":true}},\"blogs\":{\"edit\":{\"label\":\"Blogs\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"title\"},\"list\":{\"label\":\"Blogs\",\"searchable\":false,\"sortable\":false}},\"address2\":{\"edit\":{\"label\":\"Address2\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Address2\",\"searchable\":true,\"sortable\":true}},\"city\":{\"edit\":{\"label\":\"City\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"City\",\"searchable\":true,\"sortable\":true}},\"country\":{\"edit\":{\"label\":\"Country\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Country\",\"searchable\":true,\"sortable\":true}},\"state\":{\"edit\":{\"label\":\"State\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"State\",\"searchable\":true,\"sortable\":true}},\"zip\":{\"edit\":{\"label\":\"Zip\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Zip\",\"searchable\":true,\"sortable\":true}},\"business_services\":{\"edit\":{\"label\":\"Business_services\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"icon\"},\"list\":{\"label\":\"Business_services\",\"searchable\":false,\"sortable\":false}},\"allies\":{\"edit\":{\"label\":\"Allies\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"Allies\",\"searchable\":false,\"sortable\":false}},\"ally\":{\"edit\":{\"label\":\"Ally\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"Ally\",\"searchable\":false,\"sortable\":false}},\"products\":{\"edit\":{\"label\":\"Products\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Products\",\"searchable\":false,\"sortable\":false}},\"top_banners\":{\"edit\":{\"label\":\"Top_banners\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"Top_banners\",\"searchable\":false,\"sortable\":false}},\"latitude\":{\"edit\":{\"label\":\"Latitude\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Latitude\",\"searchable\":true,\"sortable\":true}},\"longitude\":{\"edit\":{\"label\":\"Longitude\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Longitude\",\"searchable\":true,\"sortable\":true}},\"galeries\":{\"edit\":{\"label\":\"Galeries\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"Galeries\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"logo\",\"tagline\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"logo\",\"size\":6}],[{\"name\":\"tagline\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"work_images\",\"size\":6},{\"name\":\"address1\",\"size\":6}],[{\"name\":\"email\",\"size\":6},{\"name\":\"phone\",\"size\":6}],[{\"name\":\"address2\",\"size\":6},{\"name\":\"city\",\"size\":6}],[{\"name\":\"country\",\"size\":6},{\"name\":\"state\",\"size\":6}],[{\"name\":\"zip\",\"size\":4},{\"name\":\"latitude\",\"size\":4},{\"name\":\"longitude\",\"size\":4}]],\"editRelations\":[\"user\",\"testimonials\",\"blogs\",\"business_services\",\"allies\",\"ally\",\"products\",\"top_banners\",\"galeries\"]}}','object','',''),(89,'plugin_content_manager_configuration_content_types::application::category.category','{\"uid\":\"application::category.category\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"subcategories\":{\"edit\":{\"label\":\"Subcategories\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Subcategories\",\"searchable\":false,\"sortable\":false}},\"layouts\":{\"edit\":{\"label\":\"Layouts\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Layouts\",\"searchable\":false,\"sortable\":false}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"taglines\":{\"edit\":{\"label\":\"Taglines\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"text\"},\"list\":{\"label\":\"Taglines\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"created_at\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}]],\"editRelations\":[\"subcategories\",\"layouts\",\"taglines\"]}}','object','',''),(90,'plugin_content_manager_configuration_content_types::application::config.config','{\"uid\":\"application::config.config\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"builder_page\":{\"edit\":{\"label\":\"Builder_page\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Builder_page\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"builder_page\",\"created_at\"],\"editRelations\":[],\"edit\":[[{\"name\":\"builder_page\",\"size\":4},{\"name\":\"name\",\"size\":6}]]}}','object','',''),(91,'plugin_content_manager_configuration_content_types::application::layout.layout','{\"uid\":\"application::layout.layout\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"mockup\":{\"edit\":{\"label\":\"Mockup\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Mockup\",\"searchable\":false,\"sortable\":false}},\"preview\":{\"edit\":{\"label\":\"Preview\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Preview\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"free\":{\"edit\":{\"label\":\"Free\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Free\",\"searchable\":true,\"sortable\":true}},\"card\":{\"edit\":{\"label\":\"Card\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Card\",\"searchable\":false,\"sortable\":false}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}},\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"category\":{\"edit\":{\"label\":\"Category\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Category\",\"searchable\":false,\"sortable\":false}},\"subcategory\":{\"edit\":{\"label\":\"Subcategory\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Subcategory\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"name\",\"free\",\"preview\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"preview\",\"size\":6}],[{\"name\":\"mockup\",\"size\":6},{\"name\":\"card\",\"size\":6}],[{\"name\":\"free\",\"size\":4}]],\"editRelations\":[\"category\",\"subcategory\"]}}','object','',''),(92,'plugin_content_manager_configuration_content_types::application::product-category.product-category','{\"uid\":\"application::product-category.product-category\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"product_subcategories\":{\"edit\":{\"label\":\"Product_subcategories\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Product_subcategories\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"created_at\",\"updated_at\"],\"editRelations\":[\"product_subcategories\"],\"edit\":[[{\"name\":\"name\",\"size\":6}]]}}','object','',''),(93,'plugin_content_manager_configuration_content_types::application::product-subcategory.product-subcategory','{\"uid\":\"application::product-subcategory.product-subcategory\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"product_category\":{\"edit\":{\"label\":\"Product_category\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Product_category\",\"searchable\":false,\"sortable\":false}},\"products\":{\"edit\":{\"label\":\"Products\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Products\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"created_at\",\"updated_at\"],\"editRelations\":[\"product_category\",\"products\"],\"edit\":[[{\"name\":\"name\",\"size\":6}]]}}','object','',''),(94,'plugin_content_manager_configuration_content_types::application::product.product','{\"uid\":\"application::product.product\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"price\":{\"edit\":{\"label\":\"Price\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Price\",\"searchable\":true,\"sortable\":true}},\"photos\":{\"edit\":{\"label\":\"Photos\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Photos\",\"searchable\":false,\"sortable\":false}},\"quantity\":{\"edit\":{\"label\":\"Quantity\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Quantity\",\"searchable\":true,\"sortable\":true}},\"status\":{\"edit\":{\"label\":\"Status\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Status\",\"searchable\":true,\"sortable\":true}},\"business\":{\"edit\":{\"label\":\"Business\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Business\",\"searchable\":false,\"sortable\":false}},\"product_subcategory\":{\"edit\":{\"label\":\"Product_subcategory\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Product_subcategory\",\"searchable\":false,\"sortable\":false}},\"featured\":{\"edit\":{\"label\":\"Featured\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Featured\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"price\"],\"editRelations\":[\"business\",\"product_subcategory\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"price\",\"size\":4},{\"name\":\"photos\",\"size\":6}],[{\"name\":\"quantity\",\"size\":4},{\"name\":\"status\",\"size\":4},{\"name\":\"featured\",\"size\":4}]]}}','object','',''),(95,'plugin_content_manager_configuration_content_types::application::subcategory.subcategory','{\"uid\":\"application::subcategory.subcategory\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"category\":{\"edit\":{\"label\":\"Category\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Category\",\"searchable\":false,\"sortable\":false}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"layouts\":{\"edit\":{\"label\":\"Layouts\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Layouts\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"created_at\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}]],\"editRelations\":[\"category\",\"layouts\"]}}','object','',''),(96,'plugin_content_manager_configuration_content_types::application::subscribers.subscribers','{\"uid\":\"application::subscribers.subscribers\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"subscriber_email\":{\"edit\":{\"label\":\"Subscriber_email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Subscriber_email\",\"searchable\":true,\"sortable\":true}},\"business\":{\"edit\":{\"label\":\"Business\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Business\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"subscriber_email\",\"created_at\",\"updated_at\"],\"edit\":[[{\"name\":\"subscriber_email\",\"size\":6}]],\"editRelations\":[\"business\"]}}','object','',''),(97,'plugin_content_manager_configuration_content_types::application::testimonial.testimonial','{\"uid\":\"application::testimonial.testimonial\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"Title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Title\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"sender\":{\"edit\":{\"label\":\"Sender\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Sender\",\"searchable\":true,\"sortable\":true}},\"sender_image\":{\"edit\":{\"label\":\"Sender_image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Sender_image\",\"searchable\":false,\"sortable\":false}},\"business\":{\"edit\":{\"label\":\"Business\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Business\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"description\",\"sender\"],\"editRelations\":[\"business\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"sender\",\"size\":6},{\"name\":\"sender_image\",\"size\":6}]]}}','object','',''),(98,'plugin_content_manager_configuration_content_types::application::top-banner.top-banner','{\"uid\":\"application::top-banner.top-banner\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"topbannerimage\":{\"edit\":{\"label\":\"Topbannerimage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Topbannerimage\",\"searchable\":false,\"sortable\":false}},\"business\":{\"edit\":{\"label\":\"Business\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Business\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"topbannerimage\",\"created_at\",\"updated_at\"],\"editRelations\":[\"business\"],\"edit\":[[{\"name\":\"topbannerimage\",\"size\":6}]]}}','object','',''),(99,'plugin_content_manager_configuration_content_types::plugins::upload.file','{\"uid\":\"plugins::upload.file\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"alternativeText\":{\"edit\":{\"label\":\"AlternativeText\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"AlternativeText\",\"searchable\":true,\"sortable\":true}},\"caption\":{\"edit\":{\"label\":\"Caption\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Caption\",\"searchable\":true,\"sortable\":true}},\"width\":{\"edit\":{\"label\":\"Width\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Width\",\"searchable\":true,\"sortable\":true}},\"height\":{\"edit\":{\"label\":\"Height\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Height\",\"searchable\":true,\"sortable\":true}},\"formats\":{\"edit\":{\"label\":\"Formats\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Formats\",\"searchable\":false,\"sortable\":false}},\"hash\":{\"edit\":{\"label\":\"Hash\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Hash\",\"searchable\":true,\"sortable\":true}},\"ext\":{\"edit\":{\"label\":\"Ext\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Ext\",\"searchable\":true,\"sortable\":true}},\"mime\":{\"edit\":{\"label\":\"Mime\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Mime\",\"searchable\":true,\"sortable\":true}},\"size\":{\"edit\":{\"label\":\"Size\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Size\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"Url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Url\",\"searchable\":true,\"sortable\":true}},\"previewUrl\":{\"edit\":{\"label\":\"PreviewUrl\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"PreviewUrl\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"Provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Provider\",\"searchable\":true,\"sortable\":true}},\"provider_metadata\":{\"edit\":{\"label\":\"Provider_metadata\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Provider_metadata\",\"searchable\":false,\"sortable\":false}},\"related\":{\"edit\":{\"label\":\"Related\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"Related\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"alternativeText\",\"caption\"],\"editRelations\":[\"related\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"alternativeText\",\"size\":6}],[{\"name\":\"caption\",\"size\":6},{\"name\":\"width\",\"size\":4}],[{\"name\":\"height\",\"size\":4}],[{\"name\":\"formats\",\"size\":12}],[{\"name\":\"hash\",\"size\":6},{\"name\":\"ext\",\"size\":6}],[{\"name\":\"mime\",\"size\":6},{\"name\":\"size\",\"size\":4}],[{\"name\":\"url\",\"size\":6},{\"name\":\"previewUrl\",\"size\":6}],[{\"name\":\"provider\",\"size\":6}],[{\"name\":\"provider_metadata\",\"size\":12}]]}}','object','',''),(100,'plugin_content_manager_configuration_content_types::plugins::users-permissions.permission','{\"uid\":\"plugins::users-permissions.permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"type\",\"defaultSortBy\":\"type\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"Type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Type\",\"searchable\":true,\"sortable\":true}},\"controller\":{\"edit\":{\"label\":\"Controller\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Controller\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"Action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Action\",\"searchable\":true,\"sortable\":true}},\"enabled\":{\"edit\":{\"label\":\"Enabled\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Enabled\",\"searchable\":true,\"sortable\":true}},\"policy\":{\"edit\":{\"label\":\"Policy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Policy\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"type\",\"controller\",\"action\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"type\",\"size\":6},{\"name\":\"controller\",\"size\":6}],[{\"name\":\"action\",\"size\":6},{\"name\":\"enabled\",\"size\":4}],[{\"name\":\"policy\",\"size\":6}]]}}','object','',''),(101,'plugin_content_manager_configuration_content_types::plugins::users-permissions.role','{\"uid\":\"plugins::users-permissions.role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"Type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Type\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"Permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"type\"},\"list\":{\"label\":\"Permissions\",\"searchable\":false,\"sortable\":false}},\"users\":{\"edit\":{\"label\":\"Users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"Users\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"editRelations\":[\"permissions\",\"users\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6}]]}}','object','',''),(102,'plugin_content_manager_configuration_content_types::strapi::administrator','{\"uid\":\"strapi::administrator\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"username\",\"defaultSortBy\":\"username\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"Username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"Email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Email\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"Password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"ResetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"ResetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"blocked\":{\"edit\":{\"label\":\"Blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Blocked\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"username\",\"email\",\"blocked\"],\"editRelations\":[],\"edit\":[[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"blocked\",\"size\":4}]]}}','object','',''),(103,'plugin_content_manager_configuration_content_types::plugins::users-permissions.user','{\"uid\":\"plugins::users-permissions.user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"username\",\"defaultSortBy\":\"username\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"Username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"Email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Email\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"Provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Provider\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"Password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"ResetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"ResetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"confirmed\":{\"edit\":{\"label\":\"Confirmed\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Confirmed\",\"searchable\":true,\"sortable\":true}},\"blocked\":{\"edit\":{\"label\":\"Blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Blocked\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":false,\"sortable\":false}},\"fullname\":{\"edit\":{\"label\":\"Fullname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Fullname\",\"searchable\":true,\"sortable\":true}},\"phone\":{\"edit\":{\"label\":\"Phone\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Phone\",\"searchable\":true,\"sortable\":true}},\"address\":{\"edit\":{\"label\":\"Address\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Address\",\"searchable\":true,\"sortable\":true}},\"city\":{\"edit\":{\"label\":\"City\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"City\",\"searchable\":true,\"sortable\":true}},\"state\":{\"edit\":{\"label\":\"State\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"State\",\"searchable\":true,\"sortable\":true}},\"zip\":{\"edit\":{\"label\":\"Zip\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Zip\",\"searchable\":true,\"sortable\":true}},\"country\":{\"edit\":{\"label\":\"Country\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Country\",\"searchable\":true,\"sortable\":true}},\"avatar\":{\"edit\":{\"label\":\"Avatar\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Avatar\",\"searchable\":false,\"sortable\":false}},\"business\":{\"edit\":{\"label\":\"Business\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Business\",\"searchable\":false,\"sortable\":false}},\"layout\":{\"edit\":{\"label\":\"Layout\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Layout\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"username\",\"email\",\"confirmed\"],\"editRelations\":[\"role\",\"business\",\"layout\"],\"edit\":[[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"confirmed\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4},{\"name\":\"fullname\",\"size\":6}],[{\"name\":\"phone\",\"size\":6},{\"name\":\"address\",\"size\":6}],[{\"name\":\"city\",\"size\":6},{\"name\":\"state\",\"size\":6}],[{\"name\":\"zip\",\"size\":4},{\"name\":\"country\",\"size\":6}],[{\"name\":\"avatar\",\"size\":6}]]}}','object','',''),(104,'plugin_users-permissions_email','{\"reset_password\":{\"display\":\"Email.template.reset_password\",\"icon\":\"sync\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Reset password\",\"message\":\"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>\"}},\"email_confirmation\":{\"display\":\"Email.template.email_confirmation\",\"icon\":\"check-square\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Account confirmation\",\"message\":\"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>\"}}}','object','',''),(105,'plugin_users-permissions_advanced','{\"unique_email\":true,\"allow_register\":true,\"email_confirmation\":false,\"email_confirmation_redirection\":\"/admin/admin\",\"email_reset_password\":\"/admin/admin\",\"default_role\":\"authenticated\"}','object','',''),(106,'db_model_order_items','{\"name\":{\"type\":\"string\"},\"product\":{\"model\":\"product\"},\"order\":{\"model\":\"order\",\"via\":\"order_item\"},\"price\":{\"type\":\"float\"},\"quantity\":{\"type\":\"integer\"},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}','object',NULL,NULL),(107,'db_model_orders','{\"contact_information\":{\"type\":\"string\"},\"name\":{\"type\":\"string\"},\"shipping_address\":{\"type\":\"string\"},\"total\":{\"type\":\"float\"},\"subtotal\":{\"type\":\"float\"},\"discount\":{\"type\":\"decimal\"},\"paid\":{\"type\":\"boolean\",\"default\":false},\"order_item\":{\"via\":\"order\",\"model\":\"order-item\"},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}','object',NULL,NULL),(108,'plugin_content_manager_configuration_content_types::application::order-item.order-item','{\"uid\":\"application::order-item.order-item\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"product\":{\"edit\":{\"label\":\"Product\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Product\",\"searchable\":false,\"sortable\":false}},\"order\":{\"edit\":{\"label\":\"Order\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"contact_information\"},\"list\":{\"label\":\"Order\",\"searchable\":false,\"sortable\":false}},\"price\":{\"edit\":{\"label\":\"Price\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Price\",\"searchable\":true,\"sortable\":true}},\"quantity\":{\"edit\":{\"label\":\"Quantity\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Quantity\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"price\",\"quantity\"],\"editRelations\":[\"product\",\"order\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"price\",\"size\":4}],[{\"name\":\"quantity\",\"size\":4}]]}}','object','',''),(109,'plugin_content_manager_configuration_content_types::application::order.order','{\"uid\":\"application::order.order\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"contact_information\",\"defaultSortBy\":\"contact_information\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"contact_information\":{\"edit\":{\"label\":\"Contact_information\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Contact_information\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"shipping_address\":{\"edit\":{\"label\":\"Shipping_address\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Shipping_address\",\"searchable\":true,\"sortable\":true}},\"total\":{\"edit\":{\"label\":\"Total\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Total\",\"searchable\":true,\"sortable\":true}},\"subtotal\":{\"edit\":{\"label\":\"Subtotal\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Subtotal\",\"searchable\":true,\"sortable\":true}},\"discount\":{\"edit\":{\"label\":\"Discount\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Discount\",\"searchable\":true,\"sortable\":true}},\"paid\":{\"edit\":{\"label\":\"Paid\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Paid\",\"searchable\":true,\"sortable\":true}},\"order_item\":{\"edit\":{\"label\":\"Order_item\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Order_item\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"contact_information\",\"name\",\"shipping_address\"],\"editRelations\":[\"order_item\"],\"edit\":[[{\"name\":\"contact_information\",\"size\":6},{\"name\":\"name\",\"size\":6}],[{\"name\":\"shipping_address\",\"size\":6},{\"name\":\"total\",\"size\":4}],[{\"name\":\"subtotal\",\"size\":4},{\"name\":\"discount\",\"size\":4},{\"name\":\"paid\",\"size\":4}]]}}','object','',''),(110,'db_model_galeries','{\"image\":{\"model\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\",\"files\",\"videos\"],\"plugin\":\"upload\",\"required\":false},\"business\":{\"model\":\"business\",\"via\":\"galeries\"},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}','object',NULL,NULL),(111,'plugin_content_manager_configuration_content_types::application::galery.galery','{\"uid\":\"application::galery.galery\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"image\":{\"edit\":{\"label\":\"Image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Image\",\"searchable\":false,\"sortable\":false}},\"business\":{\"edit\":{\"label\":\"Business\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Business\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"image\",\"created_at\",\"updated_at\"],\"editRelations\":[\"business\"],\"edit\":[[{\"name\":\"image\",\"size\":6}]]}}','object','',''),(112,'db_model_taglines','{\"text\":{\"type\":\"string\"},\"category\":{\"model\":\"category\",\"via\":\"taglines\"},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}','object',NULL,NULL),(113,'plugin_content_manager_configuration_content_types::application::tagline.tagline','{\"uid\":\"application::tagline.tagline\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"text\",\"defaultSortBy\":\"text\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"text\":{\"edit\":{\"label\":\"Text\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Text\",\"searchable\":true,\"sortable\":true}},\"category\":{\"edit\":{\"label\":\"Category\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Category\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"text\",\"created_at\",\"updated_at\"],\"edit\":[[{\"name\":\"text\",\"size\":6}]],\"editRelations\":[\"category\"]}}','object','','');
/*!40000 ALTER TABLE `core_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galeries`
--

DROP TABLE IF EXISTS `galeries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `galeries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `business` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galeries`
--

LOCK TABLES `galeries` WRITE;
/*!40000 ALTER TABLE `galeries` DISABLE KEYS */;
/*!40000 ALTER TABLE `galeries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `layouts`
--

DROP TABLE IF EXISTS `layouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `layouts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `category` int(11) DEFAULT NULL,
  `user` int(11) DEFAULT NULL,
  `free` tinyint(1) DEFAULT NULL,
  `subcategory` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `layouts`
--

LOCK TABLES `layouts` WRITE;
/*!40000 ALTER TABLE `layouts` DISABLE KEYS */;
INSERT INTO `layouts` VALUES (13,'Electronic Store','2020-09-25 08:06:56','2020-09-25 08:07:03',3,NULL,1,46);
/*!40000 ALTER TABLE `layouts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `product` int(11) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_items`
--

LOCK TABLES `order_items` WRITE;
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `contact_information` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `shipping_address` varchar(255) DEFAULT NULL,
  `total` double DEFAULT NULL,
  `subtotal` double DEFAULT NULL,
  `discount` decimal(10,2) DEFAULT NULL,
  `paid` tinyint(1) DEFAULT NULL,
  `order_item` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_categories`
--

DROP TABLE IF EXISTS `product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `product_subcategry` int(11) DEFAULT NULL,
  `product_subcategory` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_categories`
--

LOCK TABLES `product_categories` WRITE;
/*!40000 ALTER TABLE `product_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_subcategories`
--

DROP TABLE IF EXISTS `product_subcategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_subcategories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `product_category` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_subcategories`
--

LOCK TABLES `product_subcategories` WRITE;
/*!40000 ALTER TABLE `product_subcategories` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_subcategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_subcategries`
--

DROP TABLE IF EXISTS `product_subcategries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_subcategries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `product` int(11) DEFAULT NULL,
  `product_category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_subcategries`
--

LOCK TABLES `product_subcategries` WRITE;
/*!40000 ALTER TABLE `product_subcategries` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_subcategries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `subcategory` int(11) DEFAULT NULL,
  `description` longtext,
  `price` decimal(10,2) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `product_subcategory` int(11) DEFAULT NULL,
  `business` int(11) DEFAULT NULL,
  `featured` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_administrator`
--

DROP TABLE IF EXISTS `strapi_administrator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `strapi_administrator` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `resetPasswordToken` varchar(255) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `strapi_administrator_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_administrator`
--

LOCK TABLES `strapi_administrator` WRITE;
/*!40000 ALTER TABLE `strapi_administrator` DISABLE KEYS */;
INSERT INTO `strapi_administrator` VALUES (2,'admin','henryjaimes.peli@gmail.com','$2a$10$dvc1OjqEH6rvc.ypC.PA4ueaxc0.mrbf7XlNGRmijeYibVHA8gAJK',NULL,NULL);
/*!40000 ALTER TABLE `strapi_administrator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_webhooks`
--

DROP TABLE IF EXISTS `strapi_webhooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `strapi_webhooks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `url` longtext,
  `headers` longtext,
  `events` longtext,
  `enabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_webhooks`
--

LOCK TABLES `strapi_webhooks` WRITE;
/*!40000 ALTER TABLE `strapi_webhooks` DISABLE KEYS */;
/*!40000 ALTER TABLE `strapi_webhooks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subcategories`
--

DROP TABLE IF EXISTS `subcategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subcategories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `product` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subcategories`
--

LOCK TABLES `subcategories` WRITE;
/*!40000 ALTER TABLE `subcategories` DISABLE KEYS */;
INSERT INTO `subcategories` VALUES (1,'Photography and Filming',4,'2020-09-24 21:30:01','2020-09-24 21:30:01',NULL,NULL),(2,'Music',4,'2020-09-24 21:30:25','2020-09-24 21:30:25',NULL,NULL),(3,'Food',4,'2020-09-24 21:31:06','2020-09-24 21:31:06',NULL,NULL),(4,'Wedding Planeers',4,'2020-09-24 21:31:18','2020-09-24 21:31:18',NULL,NULL),(5,'Event Decoration',4,'2020-09-24 21:31:33','2020-09-24 21:31:33',NULL,NULL),(6,'Plumber',5,'2020-09-24 21:33:24','2020-09-24 21:45:54',NULL,NULL),(7,'Architect',5,'2020-09-24 21:33:36','2020-09-24 21:45:54',NULL,NULL),(8,'Electrical Technician',5,'2020-09-24 21:33:48','2020-09-24 21:45:54',NULL,NULL),(9,'Builder',5,'2020-09-24 21:34:05','2020-09-24 21:45:54',NULL,NULL),(10,'Painter',5,'2020-09-24 21:34:18','2020-09-24 21:45:54',NULL,NULL),(11,'Gardening & Landscaping',5,'2020-09-24 21:34:30','2020-09-24 21:45:54',NULL,NULL),(13,'Moving Services',5,'2020-09-24 21:35:30','2020-09-24 21:45:54',NULL,NULL),(14,'Music Lessons',6,'2020-09-24 21:36:07','2020-09-24 21:36:07',NULL,NULL),(15,'Personal Trainer',6,'2020-09-24 21:36:29','2020-09-24 21:36:29',NULL,NULL),(16,'Reading & Writing Tutoring',6,'2020-09-24 21:36:45','2020-09-24 21:36:45',NULL,NULL),(17,'Math Tutoring',6,'2020-09-24 21:37:01','2020-09-24 21:37:01',NULL,NULL),(18,'Yoga Instructor',6,'2020-09-24 21:37:11','2020-09-24 21:37:11',NULL,NULL),(19,'Life Coaching',6,'2020-09-24 21:37:33','2020-09-24 21:37:50',NULL,NULL),(20,'Health Coaching',6,'2020-09-24 21:38:08','2020-09-24 21:38:08',NULL,NULL),(21,'Software Development',7,'2020-09-24 21:38:37','2020-09-24 21:38:37',NULL,NULL),(22,'Web & Mobile Development',7,'2020-09-24 21:38:55','2020-09-24 21:38:55',NULL,NULL),(23,'Web & Mobile Design',7,'2020-09-24 21:39:25','2020-09-24 21:39:25',NULL,NULL),(24,'Technical Assistance',7,'2020-09-24 21:39:35','2020-09-24 21:39:35',NULL,NULL),(25,'Graphic Design',7,'2020-09-24 21:39:46','2020-09-24 21:39:46',NULL,NULL),(26,'Illustration',7,'2020-09-24 21:40:44','2020-09-24 21:40:44',NULL,NULL),(27,'SEO & SEM',8,'2020-09-24 21:41:38','2020-09-24 21:41:38',NULL,NULL),(28,'Social Media & Email',8,'2020-09-24 21:41:54','2020-09-24 21:41:54',NULL,NULL),(29,'Market & Customer Research',8,'2020-09-24 21:42:16','2020-09-24 21:42:16',NULL,NULL),(30,'Networking',8,'2020-09-24 21:42:39','2020-09-24 21:42:39',NULL,NULL),(31,'Telemarketing & Telesales',8,'2020-09-24 21:42:53','2020-09-24 21:42:53',NULL,NULL),(32,'Barber',9,'2020-09-24 21:43:21','2020-09-24 21:43:21',NULL,NULL),(33,'Hair Salon',9,'2020-09-24 21:43:33','2020-09-24 21:43:33',NULL,NULL),(34,'Esthetician',9,'2020-09-24 21:43:46','2020-09-24 21:43:46',NULL,NULL),(35,'Manicure & Pedicure',9,'2020-09-24 21:44:01','2020-09-24 21:44:01',NULL,NULL),(36,'Makeup Artists',9,'2020-09-24 21:44:12','2020-09-24 21:44:12',NULL,NULL),(37,'Fashion Designer',9,'2020-09-24 21:44:26','2020-09-24 21:44:26',NULL,NULL),(38,'Seamstress',9,'2020-09-24 21:44:38','2020-09-24 21:44:38',NULL,NULL),(39,'Dry Cleaner',9,'2020-09-24 21:44:53','2020-09-24 21:44:53',NULL,NULL),(40,'Cleaners',10,'2020-09-24 21:46:34','2020-09-24 21:46:34',NULL,NULL),(41,'Pet Care',10,'2020-09-24 21:46:47','2020-09-24 21:46:47',NULL,NULL),(42,'Childcare',10,'2020-09-24 21:47:01','2020-09-24 21:47:01',NULL,NULL),(43,'Elderly Care',10,'2020-09-24 21:47:27','2020-09-24 21:47:27',NULL,NULL),(44,'Business: Real State, Financial Advisor, Insurance Advisor',11,'2020-09-24 21:50:41','2020-09-24 21:50:41',NULL,NULL),(45,'Legal',11,'2020-09-24 21:50:51','2020-09-24 21:50:51',NULL,NULL),(46,'Electronic',3,'2020-09-24 22:51:00','2020-09-24 22:51:00',NULL,NULL);
/*!40000 ALTER TABLE `subcategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscribers`
--

DROP TABLE IF EXISTS `subscribers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscribers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `subscriber_email` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `business` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscribers`
--

LOCK TABLES `subscribers` WRITE;
/*!40000 ALTER TABLE `subscribers` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscribers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taglines`
--

DROP TABLE IF EXISTS `taglines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taglines` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taglines`
--

LOCK TABLES `taglines` WRITE;
/*!40000 ALTER TABLE `taglines` DISABLE KEYS */;
INSERT INTO `taglines` VALUES (1,'To learn a new skill from someone who already does it really well.','2020-10-07 19:17:58','2020-10-07 19:17:58',6),(2,'Longing for news skills? Our approach makes learning easy.','2020-10-07 19:18:12','2020-10-07 19:18:12',6),(3,'Professional teaching that provides a comprehensive education for new skills.','2020-10-07 19:18:29','2020-10-07 19:18:29',6),(4,'Expert consultants who give honest and useful advice.','2020-10-07 19:18:55','2020-10-07 19:18:55',11),(5,'Find the confidence to move forward in whatever you\'re after.','2020-10-07 19:19:20','2020-10-07 19:19:20',11),(6,'Make decisions with ease after our work together.','2020-10-07 19:19:30','2020-10-07 19:19:30',11),(7,'Trustworthy advice you can rely on.','2020-10-07 19:19:41','2020-10-07 19:19:41',11),(8,'Host a memorable special occasion and let us handle all the details.','2020-10-07 19:19:55','2020-10-07 19:19:55',4),(9,'Professional event planning to create the event of your dream, including decor, photos, music, food, and more.','2020-10-07 19:20:10','2020-10-07 19:20:10',4),(10,'Need professional construction help with your next project? We have qualified professionals at affordable rates so you can get the job done!.','2020-10-07 19:20:57','2020-10-07 19:20:57',5),(11,'Find & hire Plumbers, Architects, Electrical Technicians, Builders, Painters, Gardening/Landscaping and Moving Services.','2020-10-07 19:21:10','2020-10-07 19:21:10',5),(12,'Feel good in a trendy wardrobe and beauty look to match.','2020-10-07 19:21:30','2020-10-07 19:21:30',9),(13,'We stay on top of beauty trends to give you fresh looks and ideas for your next night out.','2020-10-07 19:21:41','2020-10-07 19:21:41',9),(14,'We stay on top of wardrobe trends to help you stay stylish when choosing what to wear.','2020-10-07 19:21:52','2020-10-07 19:21:52',9),(15,'We know all about sensitive makeup issues, that\'s why we use natural products while keeping you trendy.','2020-10-07 19:22:03','2020-10-07 19:22:03',9),(16,'Take back free time with hired professionals for your household needs.','2020-10-07 19:22:17','2020-10-07 19:22:17',10),(17,'We keep your home clean so you can enjoy your best moments, even if you\'re making a mess.','2020-10-07 19:22:28','2020-10-07 19:22:28',10),(18,'Feel reassured that everything is handled when you hire professionals for your household needs.','2020-10-07 19:22:39','2020-10-07 19:22:39',10),(19,'We provide a caring and nurturing atmosphere for your children to grow, learn, and play.','2020-10-07 19:23:00','2020-10-07 19:23:00',10),(20,'Enjoy peace of mind knowing your pets are in good hands while you\'re away.','2020-10-07 19:23:10','2020-10-07 19:23:10',10),(21,'Great design, easy-to-use technology to fuel your business.','2020-10-07 19:23:23','2020-10-07 19:23:23',7),(22,'When you need a web design that works for your company, and we have the professional experience to help.','2020-10-07 19:23:33','2020-10-07 19:23:33',7),(23,'When you need professional graphics to showcase the solutions your business provides, we have experience and talents to help.','2020-10-07 19:23:44','2020-10-07 19:23:44',7),(24,'Reach your audience and boost your sales with our professional help.','2020-10-07 19:23:57','2020-10-07 19:23:57',8),(25,'We offer our professional expertise in >> SEO & SEM, Social Media & Email, Market & Customer Research, Networking, Telemarketing & Telesales << to meet your needs for growing your client base.','2020-10-07 19:24:17','2020-10-07 19:24:17',8),(26,'Need more customers? Hire our professional help, our experience with >> SEO & SEM, Social Media & Email, Market & Customer Research, Networking, Telemarketing & Telesales << will drive your results.','2020-10-07 19:24:29','2020-10-07 19:24:29',8),(27,'Buy what you need! It is very easy, fast, and safe.','2020-10-07 19:24:40','2020-10-07 19:24:40',3),(28,'Shop for excellent quality products from where you are! We bring the store to you.','2020-10-07 19:24:51','2020-10-07 19:24:51',3);
/*!40000 ALTER TABLE `taglines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonials`
--

DROP TABLE IF EXISTS `testimonials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testimonials` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `sender` varchar(255) DEFAULT NULL,
  `business` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonials`
--

LOCK TABLES `testimonials` WRITE;
/*!40000 ALTER TABLE `testimonials` DISABLE KEYS */;
/*!40000 ALTER TABLE `testimonials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `top_banners`
--

DROP TABLE IF EXISTS `top_banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `top_banners` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `business` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `top_banners`
--

LOCK TABLES `top_banners` WRITE;
/*!40000 ALTER TABLE `top_banners` DISABLE KEYS */;
/*!40000 ALTER TABLE `top_banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upload_file`
--

DROP TABLE IF EXISTS `upload_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `upload_file` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `alternativeText` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `formats` longtext,
  `hash` varchar(255) NOT NULL,
  `ext` varchar(255) DEFAULT NULL,
  `mime` varchar(255) NOT NULL,
  `size` decimal(10,2) NOT NULL,
  `url` varchar(255) NOT NULL,
  `previewUrl` varchar(255) DEFAULT NULL,
  `provider` varchar(255) NOT NULL,
  `provider_metadata` longtext,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upload_file`
--

LOCK TABLES `upload_file` WRITE;
/*!40000 ALTER TABLE `upload_file` DISABLE KEYS */;
INSERT INTO `upload_file` VALUES (59,'Mockup_e_commerce_2_electronic_store_checkout','','',1920,8568,'{\"thumbnail\":{\"hash\":\"thumbnail_Mockup_e_commerce_2_electronic_store_checkout_627663057e\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"width\":35,\"height\":156,\"size\":2.27,\"path\":null,\"url\":\"/uploads/thumbnail_Mockup_e_commerce_2_electronic_store_checkout_627663057e.jpeg\"},\"large\":{\"hash\":\"large_Mockup_e_commerce_2_electronic_store_checkout_627663057e\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"width\":224,\"height\":1000,\"size\":33.12,\"path\":null,\"url\":\"/uploads/large_Mockup_e_commerce_2_electronic_store_checkout_627663057e.jpeg\"},\"medium\":{\"hash\":\"medium_Mockup_e_commerce_2_electronic_store_checkout_627663057e\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"width\":168,\"height\":750,\"size\":21.43,\"path\":null,\"url\":\"/uploads/medium_Mockup_e_commerce_2_electronic_store_checkout_627663057e.jpeg\"},\"small\":{\"hash\":\"small_Mockup_e_commerce_2_electronic_store_checkout_627663057e\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"width\":112,\"height\":500,\"size\":11.57,\"path\":null,\"url\":\"/uploads/small_Mockup_e_commerce_2_electronic_store_checkout_627663057e.jpeg\"}}','Mockup_e_commerce_2_electronic_store_checkout_627663057e','.jpeg','image/jpeg',1016.40,'/uploads/Mockup_e_commerce_2_electronic_store_checkout_627663057e.jpeg',NULL,'local',NULL,'2020-09-25 08:02:05','2020-09-25 08:02:05'),(60,'Bussines_card_e_commerce_2_electronic_store_checkout','','',798,497,'{\"thumbnail\":{\"hash\":\"thumbnail_Bussines_card_e_commerce_2_electronic_store_checkout_e1d25bc801\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":245,\"height\":153,\"size\":18.31,\"path\":null,\"url\":\"/uploads/thumbnail_Bussines_card_e_commerce_2_electronic_store_checkout_e1d25bc801.png\"},\"medium\":{\"hash\":\"medium_Bussines_card_e_commerce_2_electronic_store_checkout_e1d25bc801\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":750,\"height\":467,\"size\":90.75,\"path\":null,\"url\":\"/uploads/medium_Bussines_card_e_commerce_2_electronic_store_checkout_e1d25bc801.png\"},\"small\":{\"hash\":\"small_Bussines_card_e_commerce_2_electronic_store_checkout_e1d25bc801\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":500,\"height\":311,\"size\":50.66,\"path\":null,\"url\":\"/uploads/small_Bussines_card_e_commerce_2_electronic_store_checkout_e1d25bc801.png\"}}','Bussines_card_e_commerce_2_electronic_store_checkout_e1d25bc801','.png','image/png',43.79,'/uploads/Bussines_card_e_commerce_2_electronic_store_checkout_e1d25bc801.png',NULL,'local',NULL,'2020-09-25 08:04:00','2020-09-25 08:04:00'),(61,'Preview_e_commerce_2_electronic_store_checkout','','',615,339,'{\"thumbnail\":{\"hash\":\"thumbnail_Preview_e_commerce_2_electronic_store_checkout_b1907092d4\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":245,\"height\":135,\"size\":43.82,\"path\":null,\"url\":\"/uploads/thumbnail_Preview_e_commerce_2_electronic_store_checkout_b1907092d4.png\"},\"small\":{\"hash\":\"small_Preview_e_commerce_2_electronic_store_checkout_b1907092d4\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":500,\"height\":276,\"size\":169.33,\"path\":null,\"url\":\"/uploads/small_Preview_e_commerce_2_electronic_store_checkout_b1907092d4.png\"}}','Preview_e_commerce_2_electronic_store_checkout_b1907092d4','.png','image/png',233.49,'/uploads/Preview_e_commerce_2_electronic_store_checkout_b1907092d4.png',NULL,'local',NULL,'2020-09-25 08:05:41','2020-09-25 08:05:41');
/*!40000 ALTER TABLE `upload_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upload_file_morph`
--

DROP TABLE IF EXISTS `upload_file_morph`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `upload_file_morph` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `upload_file_id` int(11) DEFAULT NULL,
  `related_id` int(11) DEFAULT NULL,
  `related_type` longtext,
  `field` longtext,
  `order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=248 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upload_file_morph`
--

LOCK TABLES `upload_file_morph` WRITE;
/*!40000 ALTER TABLE `upload_file_morph` DISABLE KEYS */;
INSERT INTO `upload_file_morph` VALUES (244,61,13,'layouts','preview',1),(245,59,13,'layouts','mockup',1),(246,60,13,'layouts','card',1);
/*!40000 ALTER TABLE `upload_file_morph` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users-permissions_permission`
--

DROP TABLE IF EXISTS `users-permissions_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users-permissions_permission` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `controller` varchar(255) NOT NULL,
  `action` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `policy` varchar(255) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=761 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users-permissions_permission`
--

LOCK TABLES `users-permissions_permission` WRITE;
/*!40000 ALTER TABLE `users-permissions_permission` DISABLE KEYS */;
INSERT INTO `users-permissions_permission` VALUES (375,'application','allies','count',1,'',3),(376,'application','allies','count',1,'',4),(377,'application','allies','create',0,'',4),(378,'application','allies','delete',0,'',4),(379,'application','allies','find',1,'',4),(380,'application','allies','findone',1,'',4),(381,'application','allies','delete',0,'',3),(382,'application','allies','findone',1,'',3),(383,'application','allies','create',0,'',3),(384,'application','allies','find',1,'',3),(385,'application','allies','update',0,'',3),(386,'application','allies','update',0,'',4),(387,'application','article','count',1,'',3),(388,'application','article','count',1,'',4),(389,'application','article','create',0,'',3),(390,'application','article','create',0,'',4),(391,'application','article','delete',0,'',3),(392,'application','article','delete',0,'',4),(393,'application','article','find',1,'',3),(394,'application','article','find',1,'',4),(395,'application','article','findone',1,'',3),(396,'application','article','findone',1,'',4),(397,'application','article','update',0,'',3),(398,'application','article','update',0,'',4),(399,'application','blog','count',1,'',3),(400,'application','blog','count',1,'',4),(401,'application','blog','create',1,'',3),(402,'application','blog','create',0,'',4),(403,'application','blog','delete',1,'',3),(404,'application','blog','delete',0,'',4),(405,'application','blog','find',1,'',3),(406,'application','blog','find',1,'',4),(407,'application','blog','findone',1,'',3),(408,'application','blog','findone',1,'',4),(409,'application','blog','update',1,'',3),(410,'application','blog','update',0,'',4),(411,'application','business-services','count',1,'',3),(412,'application','business-services','count',1,'',4),(413,'application','business-services','create',1,'',3),(414,'application','business-services','create',0,'',4),(415,'application','business-services','delete',1,'',3),(416,'application','business-services','delete',0,'',4),(417,'application','business-services','find',1,'',3),(418,'application','business-services','find',1,'',4),(419,'application','business-services','findone',1,'',3),(420,'application','business-services','findone',1,'',4),(421,'application','business-services','update',1,'',3),(422,'application','business-services','update',0,'',4),(423,'application','business','count',1,'',3),(424,'application','business','count',1,'',4),(425,'application','business','create',1,'',3),(426,'application','business','create',0,'',4),(427,'application','business','delete',1,'',3),(428,'application','business','delete',0,'',4),(429,'application','business','find',1,'',3),(430,'application','business','find',1,'',4),(431,'application','business','findone',1,'',3),(432,'application','business','findone',1,'',4),(433,'application','business','update',1,'',3),(434,'application','business','update',0,'',4),(435,'application','category','count',1,'',3),(436,'application','category','count',1,'',4),(437,'application','category','create',0,'',3),(438,'application','category','create',0,'',4),(439,'application','category','delete',0,'',3),(440,'application','category','delete',0,'',4),(441,'application','category','find',1,'',3),(442,'application','category','find',1,'',4),(443,'application','category','findone',1,'',3),(444,'application','category','findone',1,'',4),(445,'application','category','update',0,'',3),(446,'application','category','update',0,'',4),(447,'application','config','count',1,'',3),(448,'application','config','count',1,'',4),(449,'application','config','create',0,'',3),(450,'application','config','create',0,'',4),(451,'application','config','delete',0,'',3),(452,'application','config','delete',0,'',4),(453,'application','config','find',1,'',3),(454,'application','config','find',1,'',4),(455,'application','config','findone',1,'',3),(456,'application','config','findone',1,'',4),(457,'application','config','update',0,'',3),(458,'application','config','update',0,'',4),(459,'application','layout','count',1,'',3),(460,'application','layout','count',1,'',4),(461,'application','layout','create',0,'',3),(462,'application','layout','create',0,'',4),(463,'application','layout','delete',0,'',3),(464,'application','layout','delete',0,'',4),(465,'application','layout','find',1,'',3),(466,'application','layout','find',1,'',4),(467,'application','layout','findone',1,'',3),(468,'application','layout','findone',1,'',4),(469,'application','layout','update',0,'',3),(470,'application','layout','update',0,'',4),(471,'application','product-category','count',1,'',3),(472,'application','product-category','count',1,'',4),(473,'application','product-category','create',0,'',3),(474,'application','product-category','create',0,'',4),(475,'application','product-category','delete',0,'',3),(476,'application','product-category','delete',0,'',4),(477,'application','product-category','find',1,'',3),(478,'application','product-category','find',1,'',4),(479,'application','product-category','findone',1,'',3),(480,'application','product-category','findone',1,'',4),(481,'application','product-category','update',0,'',3),(482,'application','product-category','update',0,'',4),(483,'application','product-subcategory','count',1,'',3),(484,'application','product-subcategory','count',1,'',4),(485,'application','product-subcategory','create',0,'',3),(486,'application','product-subcategory','create',0,'',4),(487,'application','product-subcategory','delete',0,'',3),(488,'application','product-subcategory','delete',0,'',4),(489,'application','product-subcategory','find',1,'',3),(490,'application','product-subcategory','find',1,'',4),(491,'application','product-subcategory','findone',1,'',3),(492,'application','product-subcategory','findone',1,'',4),(493,'application','product-subcategory','update',0,'',3),(494,'application','product-subcategory','update',0,'',4),(495,'application','product','count',1,'',3),(496,'application','product','count',1,'',4),(497,'application','product','create',1,'',3),(498,'application','product','create',0,'',4),(499,'application','product','delete',1,'',3),(500,'application','product','delete',0,'',4),(501,'application','product','find',1,'',3),(502,'application','product','find',1,'',4),(503,'application','product','findone',1,'',3),(504,'application','product','findone',1,'',4),(505,'application','product','update',1,'',3),(506,'application','product','update',0,'',4),(507,'application','subcategory','count',1,'',3),(508,'application','subcategory','count',1,'',4),(509,'application','subcategory','create',0,'',3),(510,'application','subcategory','create',0,'',4),(511,'application','subcategory','delete',0,'',3),(512,'application','subcategory','delete',0,'',4),(513,'application','subcategory','find',1,'',3),(514,'application','subcategory','find',1,'',4),(515,'application','subcategory','findone',1,'',3),(516,'application','subcategory','findone',1,'',4),(517,'application','subcategory','update',0,'',3),(518,'application','subcategory','update',0,'',4),(519,'application','subscribers','count',1,'',3),(520,'application','subscribers','count',1,'',4),(521,'application','subscribers','create',0,'',3),(522,'application','subscribers','create',0,'',4),(523,'application','subscribers','delete',0,'',3),(524,'application','subscribers','delete',0,'',4),(525,'application','subscribers','find',1,'',3),(526,'application','subscribers','find',1,'',4),(527,'application','subscribers','findone',1,'',3),(528,'application','subscribers','findone',1,'',4),(529,'application','subscribers','update',0,'',3),(530,'application','subscribers','update',0,'',4),(531,'application','testimonial','count',1,'',3),(532,'application','testimonial','count',1,'',4),(533,'application','testimonial','create',0,'',3),(534,'application','testimonial','create',0,'',4),(535,'application','testimonial','delete',0,'',3),(536,'application','testimonial','delete',0,'',4),(537,'application','testimonial','find',1,'',3),(538,'application','testimonial','find',1,'',4),(539,'application','testimonial','findone',1,'',3),(540,'application','testimonial','findone',1,'',4),(541,'application','testimonial','update',0,'',3),(542,'application','testimonial','update',0,'',4),(543,'application','top-banner','count',1,'',3),(544,'application','top-banner','count',1,'',4),(545,'application','top-banner','create',0,'',3),(546,'application','top-banner','create',0,'',4),(547,'application','top-banner','delete',0,'',3),(548,'application','top-banner','delete',0,'',4),(549,'application','top-banner','find',1,'',3),(550,'application','top-banner','find',1,'',4),(551,'application','top-banner','findone',1,'',3),(552,'application','top-banner','findone',1,'',4),(553,'application','top-banner','update',0,'',3),(554,'application','top-banner','update',0,'',4),(555,'content-manager','components','findcomponent',0,'',3),(556,'content-manager','components','findcomponent',0,'',4),(557,'content-manager','components','listcomponents',0,'',3),(558,'content-manager','components','listcomponents',0,'',4),(559,'content-manager','components','updatecomponent',0,'',3),(560,'content-manager','components','updatecomponent',0,'',4),(561,'content-manager','contentmanager','checkuidavailability',0,'',3),(562,'content-manager','contentmanager','checkuidavailability',0,'',4),(563,'content-manager','contentmanager','count',0,'',3),(564,'content-manager','contentmanager','count',0,'',4),(565,'content-manager','contentmanager','create',0,'',3),(566,'content-manager','contentmanager','create',0,'',4),(567,'content-manager','contentmanager','delete',0,'',3),(568,'content-manager','contentmanager','delete',0,'',4),(569,'content-manager','contentmanager','deletemany',0,'',3),(570,'content-manager','contentmanager','deletemany',0,'',4),(571,'content-manager','contentmanager','find',0,'',3),(572,'content-manager','contentmanager','find',0,'',4),(573,'content-manager','contentmanager','findone',0,'',3),(574,'content-manager','contentmanager','findone',0,'',4),(575,'content-manager','contentmanager','generateuid',0,'',3),(576,'content-manager','contentmanager','generateuid',0,'',4),(577,'content-manager','contentmanager','update',0,'',3),(578,'content-manager','contentmanager','update',0,'',4),(579,'content-manager','contenttypes','findcontenttype',0,'',3),(580,'content-manager','contenttypes','findcontenttype',0,'',4),(581,'content-manager','contenttypes','listcontenttypes',0,'',3),(582,'content-manager','contenttypes','listcontenttypes',0,'',4),(583,'content-manager','contenttypes','updatecontenttype',0,'',3),(584,'content-manager','contenttypes','updatecontenttype',0,'',4),(585,'content-type-builder','builder','getreservednames',0,'',3),(586,'content-type-builder','builder','getreservednames',0,'',4),(587,'content-type-builder','componentcategories','deletecategory',0,'',3),(588,'content-type-builder','componentcategories','deletecategory',0,'',4),(589,'content-type-builder','componentcategories','editcategory',0,'',3),(590,'content-type-builder','componentcategories','editcategory',0,'',4),(591,'content-type-builder','components','createcomponent',0,'',3),(592,'content-type-builder','components','createcomponent',0,'',4),(593,'content-type-builder','components','deletecomponent',0,'',3),(594,'content-type-builder','components','deletecomponent',0,'',4),(595,'content-type-builder','components','getcomponent',0,'',3),(596,'content-type-builder','components','getcomponent',0,'',4),(597,'content-type-builder','components','getcomponents',0,'',3),(598,'content-type-builder','components','getcomponents',0,'',4),(599,'content-type-builder','components','updatecomponent',0,'',3),(600,'content-type-builder','components','updatecomponent',0,'',4),(601,'content-type-builder','connections','getconnections',0,'',3),(602,'content-type-builder','connections','getconnections',0,'',4),(603,'content-type-builder','contenttypes','createcontenttype',0,'',3),(604,'content-type-builder','contenttypes','createcontenttype',0,'',4),(605,'content-type-builder','contenttypes','deletecontenttype',0,'',3),(606,'content-type-builder','contenttypes','deletecontenttype',0,'',4),(607,'content-type-builder','contenttypes','getcontenttype',0,'',3),(608,'content-type-builder','contenttypes','getcontenttype',0,'',4),(609,'content-type-builder','contenttypes','getcontenttypes',0,'',3),(610,'content-type-builder','contenttypes','getcontenttypes',0,'',4),(611,'content-type-builder','contenttypes','updatecontenttype',0,'',3),(612,'content-type-builder','contenttypes','updatecontenttype',0,'',4),(613,'documentation','documentation','deletedoc',0,'',3),(614,'documentation','documentation','deletedoc',0,'',4),(615,'documentation','documentation','getinfos',0,'',3),(616,'documentation','documentation','getinfos',0,'',4),(617,'documentation','documentation','index',0,'',3),(618,'documentation','documentation','index',0,'',4),(619,'documentation','documentation','login',0,'',3),(620,'documentation','documentation','login',0,'',4),(621,'documentation','documentation','loginview',0,'',3),(622,'documentation','documentation','loginview',0,'',4),(623,'documentation','documentation','regeneratedoc',0,'',3),(624,'documentation','documentation','regeneratedoc',0,'',4),(625,'documentation','documentation','updatesettings',0,'',3),(626,'documentation','documentation','updatesettings',0,'',4),(627,'email','email','send',0,'',3),(628,'email','email','send',0,'',4),(629,'upload','proxy','uploadproxy',0,'',3),(630,'upload','proxy','uploadproxy',0,'',4),(631,'upload','upload','count',0,'',3),(632,'upload','upload','count',0,'',4),(633,'upload','upload','destroy',0,'',3),(634,'upload','upload','destroy',0,'',4),(635,'upload','upload','find',0,'',3),(636,'upload','upload','find',0,'',4),(637,'upload','upload','findone',0,'',3),(638,'upload','upload','findone',0,'',4),(639,'upload','upload','getsettings',0,'',3),(640,'upload','upload','getsettings',0,'',4),(641,'upload','upload','search',0,'',3),(642,'upload','upload','search',0,'',4),(643,'upload','upload','updatesettings',0,'',3),(644,'upload','upload','updatesettings',0,'',4),(645,'upload','upload','upload',0,'',3),(646,'upload','upload','upload',0,'',4),(647,'users-permissions','auth','callback',0,'',3),(648,'users-permissions','auth','callback',1,'',4),(649,'users-permissions','auth','connect',1,'',3),(650,'users-permissions','auth','connect',1,'',4),(651,'users-permissions','auth','emailconfirmation',0,'',3),(652,'users-permissions','auth','emailconfirmation',1,'',4),(653,'users-permissions','auth','forgotpassword',0,'',3),(654,'users-permissions','auth','forgotpassword',1,'',4),(655,'users-permissions','auth','register',0,'',3),(656,'users-permissions','auth','register',1,'',4),(657,'users-permissions','auth','resetpassword',0,'',3),(658,'users-permissions','auth','resetpassword',0,'',4),(659,'users-permissions','auth','sendemailconfirmation',0,'',3),(660,'users-permissions','auth','sendemailconfirmation',0,'',4),(661,'users-permissions','user','count',0,'',3),(662,'users-permissions','user','count',0,'',4),(663,'users-permissions','user','create',0,'',3),(664,'users-permissions','user','create',0,'',4),(665,'users-permissions','user','destroy',0,'',3),(666,'users-permissions','user','destroy',0,'',4),(667,'users-permissions','user','destroyall',0,'',3),(668,'users-permissions','user','destroyall',0,'',4),(669,'users-permissions','user','find',1,'',3),(670,'users-permissions','user','find',0,'',4),(671,'users-permissions','user','findone',1,'',3),(672,'users-permissions','user','findone',0,'',4),(673,'users-permissions','user','me',1,'',3),(674,'users-permissions','user','me',1,'',4),(675,'users-permissions','user','update',1,'',3),(676,'users-permissions','user','update',0,'',4),(677,'users-permissions','userspermissions','createrole',0,'',3),(678,'users-permissions','userspermissions','createrole',0,'',4),(679,'users-permissions','userspermissions','deleteprovider',0,'',3),(680,'users-permissions','userspermissions','deleteprovider',0,'',4),(681,'users-permissions','userspermissions','deleterole',0,'',3),(682,'users-permissions','userspermissions','deleterole',0,'',4),(683,'users-permissions','userspermissions','getadvancedsettings',0,'',3),(684,'users-permissions','userspermissions','getadvancedsettings',0,'',4),(685,'users-permissions','userspermissions','getemailtemplate',0,'',3),(686,'users-permissions','userspermissions','getemailtemplate',0,'',4),(687,'users-permissions','userspermissions','getpermissions',0,'',3),(688,'users-permissions','userspermissions','getpermissions',0,'',4),(689,'users-permissions','userspermissions','getpolicies',0,'',3),(690,'users-permissions','userspermissions','getpolicies',0,'',4),(691,'users-permissions','userspermissions','getproviders',0,'',3),(692,'users-permissions','userspermissions','getproviders',0,'',4),(693,'users-permissions','userspermissions','getrole',0,'',3),(694,'users-permissions','userspermissions','getrole',0,'',4),(695,'users-permissions','userspermissions','getroles',0,'',3),(696,'users-permissions','userspermissions','getroles',0,'',4),(697,'users-permissions','userspermissions','getroutes',0,'',3),(698,'users-permissions','userspermissions','getroutes',0,'',4),(699,'users-permissions','userspermissions','index',0,'',3),(700,'users-permissions','userspermissions','index',0,'',4),(701,'users-permissions','userspermissions','init',1,'',3),(702,'users-permissions','userspermissions','init',1,'',4),(703,'users-permissions','userspermissions','searchusers',0,'',3),(704,'users-permissions','userspermissions','searchusers',0,'',4),(705,'users-permissions','userspermissions','updateadvancedsettings',0,'',3),(706,'users-permissions','userspermissions','updateadvancedsettings',0,'',4),(707,'users-permissions','userspermissions','updateemailtemplate',0,'',3),(708,'users-permissions','userspermissions','updateemailtemplate',0,'',4),(709,'users-permissions','userspermissions','updateproviders',0,'',3),(710,'users-permissions','userspermissions','updateproviders',0,'',4),(711,'users-permissions','userspermissions','updaterole',0,'',3),(712,'users-permissions','userspermissions','updaterole',0,'',4),(713,'application','order-item','count',1,'',3),(714,'application','order-item','count',1,'',4),(715,'application','order-item','create',1,'',3),(716,'application','order-item','create',0,'',4),(717,'application','order-item','delete',0,'',3),(718,'application','order-item','delete',0,'',4),(719,'application','order-item','find',1,'',3),(720,'application','order-item','find',1,'',4),(721,'application','order-item','findone',1,'',3),(722,'application','order-item','findone',1,'',4),(723,'application','order-item','update',0,'',3),(724,'application','order-item','update',0,'',4),(725,'application','order','count',1,'',3),(726,'application','order','count',0,'',4),(727,'application','order','create',1,'',3),(728,'application','order','create',0,'',4),(729,'application','order','delete',0,'',3),(730,'application','order','delete',0,'',4),(731,'application','order','find',1,'',3),(732,'application','order','find',0,'',4),(733,'application','order','findone',1,'',3),(734,'application','order','findone',0,'',4),(735,'application','order','update',0,'',3),(736,'application','order','update',0,'',4),(737,'application','galery','count',1,'',3),(738,'application','galery','count',1,'',4),(739,'application','galery','create',1,'',3),(740,'application','galery','create',0,'',4),(741,'application','galery','delete',1,'',3),(742,'application','galery','delete',0,'',4),(743,'application','galery','find',1,'',3),(744,'application','galery','find',1,'',4),(745,'application','galery','findone',1,'',3),(746,'application','galery','findone',1,'',4),(747,'application','galery','update',1,'',3),(748,'application','galery','update',0,'',4),(749,'application','tagline','count',1,'',3),(750,'application','tagline','count',1,'',4),(751,'application','tagline','create',0,'',3),(752,'application','tagline','create',0,'',4),(753,'application','tagline','delete',0,'',3),(754,'application','tagline','delete',0,'',4),(755,'application','tagline','find',1,'',3),(756,'application','tagline','find',1,'',4),(757,'application','tagline','findone',1,'',3),(758,'application','tagline','findone',1,'',4),(759,'application','tagline','update',0,'',3),(760,'application','tagline','update',0,'',4);
/*!40000 ALTER TABLE `users-permissions_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users-permissions_role`
--

DROP TABLE IF EXISTS `users-permissions_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users-permissions_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users-permissions_role_type_unique` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users-permissions_role`
--

LOCK TABLES `users-permissions_role` WRITE;
/*!40000 ALTER TABLE `users-permissions_role` DISABLE KEYS */;
INSERT INTO `users-permissions_role` VALUES (3,'Authenticated','Default role given to authenticated user.','authenticated'),(4,'Public','Default role given to unauthenticated user.','public');
/*!40000 ALTER TABLE `users-permissions_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users-permissions_user`
--

DROP TABLE IF EXISTS `users-permissions_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users-permissions_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `resetPasswordToken` varchar(255) DEFAULT NULL,
  `confirmed` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `business` int(11) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `zip` int(11) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `layout` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users-permissions_user_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users-permissions_user`
--

LOCK TABLES `users-permissions_user` WRITE;
/*!40000 ALTER TABLE `users-permissions_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `users-permissions_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-07 16:45:22
