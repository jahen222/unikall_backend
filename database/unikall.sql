-- MySQL dump 10.13  Distrib 5.7.30, for Linux (x86_64)
--
-- Host: localhost    Database: unikall
-- ------------------------------------------------------
-- Server version	5.7.30-0ubuntu0.18.04.1

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_store`
--

LOCK TABLES `core_store` WRITE;
/*!40000 ALTER TABLE `core_store` DISABLE KEYS */;
INSERT INTO `core_store` VALUES (1,'db_model_core_store','{\"key\":{\"type\":\"string\"},\"value\":{\"type\":\"text\"},\"type\":{\"type\":\"string\"},\"environment\":{\"type\":\"string\"},\"tag\":{\"type\":\"string\"}}','object',NULL,NULL),(2,'db_model_users-permissions_permission','{\"type\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"controller\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"enabled\":{\"type\":\"boolean\",\"required\":true,\"configurable\":false},\"policy\":{\"type\":\"string\",\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"permissions\",\"plugin\":\"users-permissions\",\"configurable\":false}}','object',NULL,NULL),(3,'db_model_upload_file','{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"collection\":\"*\",\"filter\":\"field\",\"configurable\":false},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}','object',NULL,NULL),(4,'db_model_strapi_webhooks','{\"name\":{\"type\":\"string\"},\"url\":{\"type\":\"text\"},\"headers\":{\"type\":\"json\"},\"events\":{\"type\":\"json\"},\"enabled\":{\"type\":\"boolean\"}}','object',NULL,NULL),(5,'db_model_upload_file_morph','{\"upload_file_id\":{\"type\":\"integer\"},\"related_id\":{\"type\":\"integer\"},\"related_type\":{\"type\":\"text\"},\"field\":{\"type\":\"text\"},\"order\":{\"type\":\"integer\"}}','object',NULL,NULL),(6,'db_model_users-permissions_role','{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"collection\":\"permission\",\"via\":\"role\",\"plugin\":\"users-permissions\",\"configurable\":false,\"isVirtual\":true},\"users\":{\"collection\":\"user\",\"via\":\"role\",\"configurable\":false,\"plugin\":\"users-permissions\",\"isVirtual\":true}}','object',NULL,NULL),(7,'db_model_strapi_administrator','{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true,\"required\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false}}','object',NULL,NULL),(8,'db_model_users-permissions_user','{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"users\",\"plugin\":\"users-permissions\",\"configurable\":false},\"name\":{\"type\":\"string\"},\"lastname\":{\"type\":\"string\"},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}','object',NULL,NULL),(9,'plugin_upload_settings','{\"sizeOptimization\":true,\"responsiveDimensions\":true}','object','development',''),(10,'plugin_users-permissions_grant','{\"email\":{\"enabled\":true,\"icon\":\"envelope\"},\"discord\":{\"enabled\":false,\"icon\":\"discord\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/discord/callback\",\"scope\":[\"identify\",\"email\"]},\"facebook\":{\"enabled\":false,\"icon\":\"facebook-square\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/facebook/callback\",\"scope\":[\"email\"]},\"google\":{\"enabled\":false,\"icon\":\"google\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/google/callback\",\"scope\":[\"email\"]},\"github\":{\"enabled\":false,\"icon\":\"github\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/github/callback\",\"scope\":[\"user\",\"user:email\"]},\"microsoft\":{\"enabled\":false,\"icon\":\"windows\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/microsoft/callback\",\"scope\":[\"user.read\"]},\"twitter\":{\"enabled\":false,\"icon\":\"twitter\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/twitter/callback\"},\"instagram\":{\"enabled\":false,\"icon\":\"instagram\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/instagram/callback\"},\"vk\":{\"enabled\":false,\"icon\":\"vk\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/vk/callback\",\"scope\":[\"email\"]},\"twitch\":{\"enabled\":false,\"icon\":\"twitch\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/twitch/callback\",\"scope\":[\"user:read:email\"]}}','object','',''),(11,'plugin_content_manager_configuration_content_types::plugins::upload.file','{\"uid\":\"plugins::upload.file\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"alternativeText\":{\"edit\":{\"label\":\"AlternativeText\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"AlternativeText\",\"searchable\":true,\"sortable\":true}},\"caption\":{\"edit\":{\"label\":\"Caption\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Caption\",\"searchable\":true,\"sortable\":true}},\"width\":{\"edit\":{\"label\":\"Width\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Width\",\"searchable\":true,\"sortable\":true}},\"height\":{\"edit\":{\"label\":\"Height\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Height\",\"searchable\":true,\"sortable\":true}},\"formats\":{\"edit\":{\"label\":\"Formats\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Formats\",\"searchable\":false,\"sortable\":false}},\"hash\":{\"edit\":{\"label\":\"Hash\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Hash\",\"searchable\":true,\"sortable\":true}},\"ext\":{\"edit\":{\"label\":\"Ext\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Ext\",\"searchable\":true,\"sortable\":true}},\"mime\":{\"edit\":{\"label\":\"Mime\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Mime\",\"searchable\":true,\"sortable\":true}},\"size\":{\"edit\":{\"label\":\"Size\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Size\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"Url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Url\",\"searchable\":true,\"sortable\":true}},\"previewUrl\":{\"edit\":{\"label\":\"PreviewUrl\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"PreviewUrl\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"Provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Provider\",\"searchable\":true,\"sortable\":true}},\"provider_metadata\":{\"edit\":{\"label\":\"Provider_metadata\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Provider_metadata\",\"searchable\":false,\"sortable\":false}},\"related\":{\"edit\":{\"label\":\"Related\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"Related\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"alternativeText\",\"caption\"],\"editRelations\":[\"related\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"alternativeText\",\"size\":6}],[{\"name\":\"caption\",\"size\":6},{\"name\":\"width\",\"size\":4}],[{\"name\":\"height\",\"size\":4}],[{\"name\":\"formats\",\"size\":12}],[{\"name\":\"hash\",\"size\":6},{\"name\":\"ext\",\"size\":6}],[{\"name\":\"mime\",\"size\":6},{\"name\":\"size\",\"size\":4}],[{\"name\":\"url\",\"size\":6},{\"name\":\"previewUrl\",\"size\":6}],[{\"name\":\"provider\",\"size\":6}],[{\"name\":\"provider_metadata\",\"size\":12}]]}}','object','',''),(12,'plugin_content_manager_configuration_content_types::plugins::users-permissions.permission','{\"uid\":\"plugins::users-permissions.permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"type\",\"defaultSortBy\":\"type\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"Type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Type\",\"searchable\":true,\"sortable\":true}},\"controller\":{\"edit\":{\"label\":\"Controller\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Controller\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"Action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Action\",\"searchable\":true,\"sortable\":true}},\"enabled\":{\"edit\":{\"label\":\"Enabled\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Enabled\",\"searchable\":true,\"sortable\":true}},\"policy\":{\"edit\":{\"label\":\"Policy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Policy\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"type\",\"controller\",\"action\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"type\",\"size\":6},{\"name\":\"controller\",\"size\":6}],[{\"name\":\"action\",\"size\":6},{\"name\":\"enabled\",\"size\":4}],[{\"name\":\"policy\",\"size\":6}]]}}','object','',''),(13,'plugin_content_manager_configuration_content_types::plugins::users-permissions.role','{\"uid\":\"plugins::users-permissions.role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"Type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Type\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"Permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"type\"},\"list\":{\"label\":\"Permissions\",\"searchable\":false,\"sortable\":false}},\"users\":{\"edit\":{\"label\":\"Users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"Users\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"editRelations\":[\"permissions\",\"users\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6}]]}}','object','',''),(14,'plugin_content_manager_configuration_content_types::strapi::administrator','{\"uid\":\"strapi::administrator\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"username\",\"defaultSortBy\":\"username\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"Username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"Email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Email\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"Password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"ResetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"ResetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"blocked\":{\"edit\":{\"label\":\"Blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Blocked\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"username\",\"email\",\"blocked\"],\"editRelations\":[],\"edit\":[[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"blocked\",\"size\":4}]]}}','object','',''),(15,'plugin_content_manager_configuration_content_types::plugins::users-permissions.user','{\"uid\":\"plugins::users-permissions.user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"username\",\"defaultSortBy\":\"username\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"Username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"Email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Email\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"Provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Provider\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"Password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"ResetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"ResetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"confirmed\":{\"edit\":{\"label\":\"Confirmed\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Confirmed\",\"searchable\":true,\"sortable\":true}},\"blocked\":{\"edit\":{\"label\":\"Blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Blocked\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":false,\"sortable\":false}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"lastname\":{\"edit\":{\"label\":\"Lastname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Lastname\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"username\",\"email\",\"confirmed\"],\"edit\":[[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"confirmed\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4},{\"name\":\"name\",\"size\":6}],[{\"name\":\"lastname\",\"size\":6}]],\"editRelations\":[\"role\"]}}','object','',''),(16,'plugin_users-permissions_email','{\"reset_password\":{\"display\":\"Email.template.reset_password\",\"icon\":\"sync\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Reset password\",\"message\":\"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>\"}},\"email_confirmation\":{\"display\":\"Email.template.email_confirmation\",\"icon\":\"check-square\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Account confirmation\",\"message\":\"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>\"}}}','object','',''),(17,'plugin_users-permissions_advanced','{\"unique_email\":true,\"allow_register\":true,\"email_confirmation\":false,\"email_confirmation_redirection\":\"/admin/admin\",\"email_reset_password\":\"/admin/admin\",\"default_role\":\"authenticated\"}','object','',''),(18,'db_model_categories','{\"name\":{\"type\":\"string\"},\"subcategories\":{\"collection\":\"subcategory\",\"via\":\"category\",\"isVirtual\":true},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}','object',NULL,NULL),(19,'db_model_layouts','{\"name\":{\"type\":\"string\"},\"preview\":{\"model\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\",\"files\",\"videos\"],\"plugin\":\"upload\",\"required\":false},\"preview_complete\":{\"model\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\",\"files\",\"videos\"],\"plugin\":\"upload\",\"required\":false},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}','object',NULL,NULL),(20,'db_model_subcategories','{\"name\":{\"type\":\"string\"},\"category\":{\"via\":\"subcategories\",\"model\":\"category\"},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}','object',NULL,NULL),(21,'plugin_content_manager_configuration_content_types::application::category.category','{\"uid\":\"application::category.category\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"subcategories\":{\"edit\":{\"label\":\"Subcategories\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Subcategories\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"created_at\",\"updated_at\"],\"editRelations\":[\"subcategories\"],\"edit\":[[{\"name\":\"name\",\"size\":6}]]}}','object','',''),(22,'plugin_content_manager_configuration_content_types::application::layout.layout','{\"uid\":\"application::layout.layout\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"preview\":{\"edit\":{\"label\":\"Preview\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Preview\",\"searchable\":false,\"sortable\":false}},\"preview_complete\":{\"edit\":{\"label\":\"Preview_complete\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Preview_complete\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"preview\",\"created_at\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"preview\",\"size\":6}],[{\"name\":\"preview_complete\",\"size\":6}]],\"editRelations\":[]}}','object','',''),(23,'plugin_content_manager_configuration_content_types::application::subcategory.subcategory','{\"uid\":\"application::subcategory.subcategory\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"category\":{\"edit\":{\"label\":\"Category\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Category\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"created_at\",\"updated_at\"],\"editRelations\":[\"category\"],\"edit\":[[{\"name\":\"name\",\"size\":6}]]}}','object','','');
/*!40000 ALTER TABLE `core_store` ENABLE KEYS */;
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `layouts`
--

LOCK TABLES `layouts` WRITE;
/*!40000 ALTER TABLE `layouts` DISABLE KEYS */;
INSERT INTO `layouts` VALUES (1,'E commerce','2020-07-17 00:52:47','2020-07-23 01:29:19'),(3,'Marketing & Sales','2020-07-17 00:53:21','2020-07-17 00:53:21'),(4,'Lessons','2020-07-17 00:53:51','2020-07-17 00:53:51'),(5,'Household Services cambiado','2020-07-17 00:54:16','2020-07-24 17:46:14'),(6,'Construction & Home Improvements','2020-07-17 00:54:35','2020-07-17 00:54:35'),(7,'Events','2020-07-17 00:55:06','2020-07-17 00:55:06');
/*!40000 ALTER TABLE `layouts` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_administrator`
--

LOCK TABLES `strapi_administrator` WRITE;
/*!40000 ALTER TABLE `strapi_administrator` DISABLE KEYS */;
INSERT INTO `strapi_administrator` VALUES (1,'admin','admin@unikall.com','$2a$10$S1EEv2rzs9aCpR0dptoMJeL/hP2EUbIGq/yJLoLNSaTzMxeLJVNa.',NULL,NULL);
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subcategories`
--

LOCK TABLES `subcategories` WRITE;
/*!40000 ALTER TABLE `subcategories` DISABLE KEYS */;
/*!40000 ALTER TABLE `subcategories` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upload_file`
--

LOCK TABLES `upload_file` WRITE;
/*!40000 ALTER TABLE `upload_file` DISABLE KEYS */;
INSERT INTO `upload_file` VALUES (1,'Recurso 2-28','','',615,339,'{\"thumbnail\":{\"hash\":\"thumbnail_Recurso_2_28_ac9b97142f\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":245,\"height\":135,\"size\":67.76,\"path\":null,\"url\":\"/uploads/thumbnail_Recurso_2_28_ac9b97142f.png\"},\"small\":{\"hash\":\"small_Recurso_2_28_ac9b97142f\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":500,\"height\":276,\"size\":251.93,\"path\":null,\"url\":\"/uploads/small_Recurso_2_28_ac9b97142f.png\"}}','Recurso_2_28_ac9b97142f','.png','image/png',349.26,'/uploads/Recurso_2_28_ac9b97142f.png',NULL,'local',NULL,'2020-07-17 00:52:32','2020-07-17 00:52:32'),(2,'Recurso 2-26','','',614,339,'{\"thumbnail\":{\"hash\":\"thumbnail_Recurso_2_26_520e3f9db4\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":245,\"height\":135,\"size\":28.28,\"path\":null,\"url\":\"/uploads/thumbnail_Recurso_2_26_520e3f9db4.png\"},\"small\":{\"hash\":\"small_Recurso_2_26_520e3f9db4\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":500,\"height\":276,\"size\":97.06,\"path\":null,\"url\":\"/uploads/small_Recurso_2_26_520e3f9db4.png\"}}','Recurso_2_26_520e3f9db4','.png','image/png',114.00,'/uploads/Recurso_2_26_520e3f9db4.png',NULL,'local',NULL,'2020-07-17 00:52:32','2020-07-17 00:52:32'),(3,'Recurso 2-27','','',615,339,'{\"thumbnail\":{\"hash\":\"thumbnail_Recurso_2_27_8ffbb8056a\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":245,\"height\":135,\"size\":55.2,\"path\":null,\"url\":\"/uploads/thumbnail_Recurso_2_27_8ffbb8056a.png\"},\"small\":{\"hash\":\"small_Recurso_2_27_8ffbb8056a\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":500,\"height\":276,\"size\":212.97,\"path\":null,\"url\":\"/uploads/small_Recurso_2_27_8ffbb8056a.png\"}}','Recurso_2_27_8ffbb8056a','.png','image/png',282.39,'/uploads/Recurso_2_27_8ffbb8056a.png',NULL,'local',NULL,'2020-07-17 00:52:32','2020-07-17 00:52:32'),(4,'Recurso 2-24','','',615,339,'{\"thumbnail\":{\"hash\":\"thumbnail_Recurso_2_24_a8253ef53d\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":245,\"height\":135,\"size\":25.47,\"path\":null,\"url\":\"/uploads/thumbnail_Recurso_2_24_a8253ef53d.png\"},\"small\":{\"hash\":\"small_Recurso_2_24_a8253ef53d\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":500,\"height\":276,\"size\":81.24,\"path\":null,\"url\":\"/uploads/small_Recurso_2_24_a8253ef53d.png\"}}','Recurso_2_24_a8253ef53d','.png','image/png',65.56,'/uploads/Recurso_2_24_a8253ef53d.png',NULL,'local',NULL,'2020-07-17 00:52:32','2020-07-17 00:52:32'),(5,'Recurso 2-29','','',614,339,'{\"thumbnail\":{\"hash\":\"thumbnail_Recurso_2_29_51689075a1\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":245,\"height\":135,\"size\":50.81,\"path\":null,\"url\":\"/uploads/thumbnail_Recurso_2_29_51689075a1.png\"},\"small\":{\"hash\":\"small_Recurso_2_29_51689075a1\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":500,\"height\":276,\"size\":184.65,\"path\":null,\"url\":\"/uploads/small_Recurso_2_29_51689075a1.png\"}}','Recurso_2_29_51689075a1','.png','image/png',241.46,'/uploads/Recurso_2_29_51689075a1.png',NULL,'local',NULL,'2020-07-17 00:52:32','2020-07-17 00:52:32'),(6,'Recurso 2-25','','',615,339,'{\"thumbnail\":{\"hash\":\"thumbnail_Recurso_2_25_f432d3ffd1\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":245,\"height\":135,\"size\":43.82,\"path\":null,\"url\":\"/uploads/thumbnail_Recurso_2_25_f432d3ffd1.png\"},\"small\":{\"hash\":\"small_Recurso_2_25_f432d3ffd1\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":500,\"height\":276,\"size\":169.33,\"path\":null,\"url\":\"/uploads/small_Recurso_2_25_f432d3ffd1.png\"}}','Recurso_2_25_f432d3ffd1','.png','image/png',233.49,'/uploads/Recurso_2_25_f432d3ffd1.png',NULL,'local',NULL,'2020-07-17 00:52:32','2020-07-17 00:52:32'),(7,'layouts-e-commerce-1','','',1080,4256,'{\"thumbnail\":{\"hash\":\"thumbnail_layouts_e_commerce_1_6651a62009\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"width\":40,\"height\":156,\"size\":1.77,\"path\":null,\"url\":\"/uploads/thumbnail_layouts_e_commerce_1_6651a62009.jpeg\"},\"large\":{\"hash\":\"large_layouts_e_commerce_1_6651a62009\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"width\":254,\"height\":1000,\"size\":25.11,\"path\":null,\"url\":\"/uploads/large_layouts_e_commerce_1_6651a62009.jpeg\"},\"medium\":{\"hash\":\"medium_layouts_e_commerce_1_6651a62009\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"width\":190,\"height\":750,\"size\":16.83,\"path\":null,\"url\":\"/uploads/medium_layouts_e_commerce_1_6651a62009.jpeg\"},\"small\":{\"hash\":\"small_layouts_e_commerce_1_6651a62009\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"width\":127,\"height\":500,\"size\":8.86,\"path\":null,\"url\":\"/uploads/small_layouts_e_commerce_1_6651a62009.jpeg\"}}','layouts_e_commerce_1_6651a62009','.jpeg','image/jpeg',248.06,'/uploads/layouts_e_commerce_1_6651a62009.jpeg',NULL,'local',NULL,'2020-07-22 08:08:26','2020-07-22 08:08:26'),(8,'layouts free gym personal train_Mesa de trabajo 1 copia 2','','',1080,4273,'{\"thumbnail\":{\"hash\":\"thumbnail_layouts_free_gym_personal_train_Mesa_de_trabajo_1_copia_2_c92226a833\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"width\":39,\"height\":156,\"size\":2.41,\"path\":null,\"url\":\"/uploads/thumbnail_layouts_free_gym_personal_train_Mesa_de_trabajo_1_copia_2_c92226a833.jpeg\"},\"large\":{\"hash\":\"large_layouts_free_gym_personal_train_Mesa_de_trabajo_1_copia_2_c92226a833\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"width\":253,\"height\":1000,\"size\":36.84,\"path\":null,\"url\":\"/uploads/large_layouts_free_gym_personal_train_Mesa_de_trabajo_1_copia_2_c92226a833.jpeg\"},\"medium\":{\"hash\":\"medium_layouts_free_gym_personal_train_Mesa_de_trabajo_1_copia_2_c92226a833\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"width\":190,\"height\":750,\"size\":24.12,\"path\":null,\"url\":\"/uploads/medium_layouts_free_gym_personal_train_Mesa_de_trabajo_1_copia_2_c92226a833.jpeg\"},\"small\":{\"hash\":\"small_layouts_free_gym_personal_train_Mesa_de_trabajo_1_copia_2_c92226a833\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"width\":126,\"height\":500,\"size\":12.58,\"path\":null,\"url\":\"/uploads/small_layouts_free_gym_personal_train_Mesa_de_trabajo_1_copia_2_c92226a833.jpeg\"}}','layouts_free_gym_personal_train_Mesa_de_trabajo_1_copia_2_c92226a833','.jpeg','image/jpeg',406.62,'/uploads/layouts_free_gym_personal_train_Mesa_de_trabajo_1_copia_2_c92226a833.jpeg',NULL,'local',NULL,'2020-07-22 08:08:26','2020-07-22 08:08:26'),(9,'restaurant-2','','',1080,3993,'{\"thumbnail\":{\"hash\":\"thumbnail_restaurant_2_1fd1155ca1\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"width\":42,\"height\":156,\"size\":2.44,\"path\":null,\"url\":\"/uploads/thumbnail_restaurant_2_1fd1155ca1.jpeg\"},\"large\":{\"hash\":\"large_restaurant_2_1fd1155ca1\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"width\":270,\"height\":1000,\"size\":47.65,\"path\":null,\"url\":\"/uploads/large_restaurant_2_1fd1155ca1.jpeg\"},\"medium\":{\"hash\":\"medium_restaurant_2_1fd1155ca1\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"width\":203,\"height\":750,\"size\":29.14,\"path\":null,\"url\":\"/uploads/medium_restaurant_2_1fd1155ca1.jpeg\"},\"small\":{\"hash\":\"small_restaurant_2_1fd1155ca1\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"width\":135,\"height\":500,\"size\":14.62,\"path\":null,\"url\":\"/uploads/small_restaurant_2_1fd1155ca1.jpeg\"}}','restaurant_2_1fd1155ca1','.jpeg','image/jpeg',501.92,'/uploads/restaurant_2_1fd1155ca1.jpeg',NULL,'local',NULL,'2020-07-22 08:08:26','2020-07-22 08:08:26'),(10,'lessons','','',1080,5292,'{\"thumbnail\":{\"hash\":\"thumbnail_lessons_24211c75aa\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"width\":32,\"height\":156,\"size\":1.96,\"path\":null,\"url\":\"/uploads/thumbnail_lessons_24211c75aa.jpeg\"},\"large\":{\"hash\":\"large_lessons_24211c75aa\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"width\":204,\"height\":1000,\"size\":31.09,\"path\":null,\"url\":\"/uploads/large_lessons_24211c75aa.jpeg\"},\"medium\":{\"hash\":\"medium_lessons_24211c75aa\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"width\":153,\"height\":750,\"size\":20.33,\"path\":null,\"url\":\"/uploads/medium_lessons_24211c75aa.jpeg\"},\"small\":{\"hash\":\"small_lessons_24211c75aa\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"width\":102,\"height\":500,\"size\":10.7,\"path\":null,\"url\":\"/uploads/small_lessons_24211c75aa.jpeg\"}}','lessons_24211c75aa','.jpeg','image/jpeg',438.52,'/uploads/lessons_24211c75aa.jpeg',NULL,'local',NULL,'2020-07-22 08:08:26','2020-07-22 08:08:26'),(11,'layouts','','',1080,5755,'{\"thumbnail\":{\"hash\":\"thumbnail_layouts_8e4e782590\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"width\":29,\"height\":156,\"size\":1.83,\"path\":null,\"url\":\"/uploads/thumbnail_layouts_8e4e782590.jpeg\"},\"large\":{\"hash\":\"large_layouts_8e4e782590\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"width\":188,\"height\":1000,\"size\":29.99,\"path\":null,\"url\":\"/uploads/large_layouts_8e4e782590.jpeg\"},\"medium\":{\"hash\":\"medium_layouts_8e4e782590\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"width\":141,\"height\":750,\"size\":19.38,\"path\":null,\"url\":\"/uploads/medium_layouts_8e4e782590.jpeg\"},\"small\":{\"hash\":\"small_layouts_8e4e782590\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"width\":94,\"height\":500,\"size\":9.92,\"path\":null,\"url\":\"/uploads/small_layouts_8e4e782590.jpeg\"}}','layouts_8e4e782590','.jpeg','image/jpeg',516.07,'/uploads/layouts_8e4e782590.jpeg',NULL,'local',NULL,'2020-07-22 08:08:26','2020-07-22 08:08:26'),(12,'e-commerce-fashion 1','','',1080,4811,'{\"thumbnail\":{\"hash\":\"thumbnail_e_commerce_fashion_1_9290dcb45c\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"width\":35,\"height\":156,\"size\":2.5,\"path\":null,\"url\":\"/uploads/thumbnail_e_commerce_fashion_1_9290dcb45c.jpeg\"},\"large\":{\"hash\":\"large_e_commerce_fashion_1_9290dcb45c\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"width\":224,\"height\":1000,\"size\":35.28,\"path\":null,\"url\":\"/uploads/large_e_commerce_fashion_1_9290dcb45c.jpeg\"},\"medium\":{\"hash\":\"medium_e_commerce_fashion_1_9290dcb45c\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"width\":168,\"height\":750,\"size\":22.72,\"path\":null,\"url\":\"/uploads/medium_e_commerce_fashion_1_9290dcb45c.jpeg\"},\"small\":{\"hash\":\"small_e_commerce_fashion_1_9290dcb45c\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"width\":112,\"height\":500,\"size\":12.04,\"path\":null,\"url\":\"/uploads/small_e_commerce_fashion_1_9290dcb45c.jpeg\"}}','e_commerce_fashion_1_9290dcb45c','.jpeg','image/jpeg',446.55,'/uploads/e_commerce_fashion_1_9290dcb45c.jpeg',NULL,'local',NULL,'2020-07-22 08:08:26','2020-07-22 08:08:26'),(13,'layouts gym_Mesa de trabajo 1 copia','','',2251,10885,'{\"thumbnail\":{\"hash\":\"thumbnail_layouts_gym_Mesa_de_trabajo_1_copia_39b0d05128\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"width\":32,\"height\":156,\"size\":1.96,\"path\":null,\"url\":\"/uploads/thumbnail_layouts_gym_Mesa_de_trabajo_1_copia_39b0d05128.jpeg\"},\"large\":{\"hash\":\"large_layouts_gym_Mesa_de_trabajo_1_copia_39b0d05128\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"width\":207,\"height\":1000,\"size\":35.59,\"path\":null,\"url\":\"/uploads/large_layouts_gym_Mesa_de_trabajo_1_copia_39b0d05128.jpeg\"},\"medium\":{\"hash\":\"medium_layouts_gym_Mesa_de_trabajo_1_copia_39b0d05128\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"width\":155,\"height\":750,\"size\":23.65,\"path\":null,\"url\":\"/uploads/medium_layouts_gym_Mesa_de_trabajo_1_copia_39b0d05128.jpeg\"},\"small\":{\"hash\":\"small_layouts_gym_Mesa_de_trabajo_1_copia_39b0d05128\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"width\":103,\"height\":500,\"size\":12.06,\"path\":null,\"url\":\"/uploads/small_layouts_gym_Mesa_de_trabajo_1_copia_39b0d05128.jpeg\"}}','layouts_gym_Mesa_de_trabajo_1_copia_39b0d05128','.jpeg','image/jpeg',1499.62,'/uploads/layouts_gym_Mesa_de_trabajo_1_copia_39b0d05128.jpeg',NULL,'local',NULL,'2020-07-22 08:08:27','2020-07-22 08:08:27'),(14,'e-commerce-generic-free','','',1920,8568,'{\"thumbnail\":{\"hash\":\"thumbnail_e_commerce_generic_free_9f1f84e732\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"width\":35,\"height\":156,\"size\":2.27,\"path\":null,\"url\":\"/uploads/thumbnail_e_commerce_generic_free_9f1f84e732.jpeg\"},\"large\":{\"hash\":\"large_e_commerce_generic_free_9f1f84e732\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"width\":224,\"height\":1000,\"size\":33.12,\"path\":null,\"url\":\"/uploads/large_e_commerce_generic_free_9f1f84e732.jpeg\"},\"medium\":{\"hash\":\"medium_e_commerce_generic_free_9f1f84e732\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"width\":168,\"height\":750,\"size\":21.43,\"path\":null,\"url\":\"/uploads/medium_e_commerce_generic_free_9f1f84e732.jpeg\"},\"small\":{\"hash\":\"small_e_commerce_generic_free_9f1f84e732\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"width\":112,\"height\":500,\"size\":11.57,\"path\":null,\"url\":\"/uploads/small_e_commerce_generic_free_9f1f84e732.jpeg\"}}','e_commerce_generic_free_9f1f84e732','.jpeg','image/jpeg',1016.40,'/uploads/e_commerce_generic_free_9f1f84e732.jpeg',NULL,'local',NULL,'2020-07-22 08:08:27','2020-07-22 08:08:27');
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upload_file_morph`
--

LOCK TABLES `upload_file_morph` WRITE;
/*!40000 ALTER TABLE `upload_file_morph` DISABLE KEYS */;
INSERT INTO `upload_file_morph` VALUES (16,2,4,'layouts','preview',1),(17,8,4,'layouts','preview_complete',1),(20,5,7,'layouts','preview',1),(21,12,7,'layouts','preview_complete',1),(22,1,6,'layouts','preview',1),(23,11,6,'layouts','preview_complete',1),(24,6,3,'layouts','preview',1),(25,9,3,'layouts','preview_complete',1),(28,4,1,'layouts','preview',1),(29,7,1,'layouts','preview_complete',1),(30,1,5,'layouts','preview',1),(31,10,5,'layouts','preview_complete',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=181 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users-permissions_permission`
--

LOCK TABLES `users-permissions_permission` WRITE;
/*!40000 ALTER TABLE `users-permissions_permission` DISABLE KEYS */;
INSERT INTO `users-permissions_permission` VALUES (1,'content-manager','components','findcomponent',0,'',1),(2,'content-manager','components','findcomponent',0,'',2),(3,'content-manager','components','updatecomponent',0,'',2),(4,'content-manager','components','listcomponents',0,'',1),(5,'content-manager','components','updatecomponent',0,'',1),(6,'content-manager','components','listcomponents',0,'',2),(7,'content-manager','contentmanager','checkuidavailability',0,'',1),(8,'content-manager','contentmanager','checkuidavailability',0,'',2),(9,'content-manager','contentmanager','count',0,'',1),(10,'content-manager','contentmanager','count',0,'',2),(11,'content-manager','contentmanager','create',0,'',1),(12,'content-manager','contentmanager','create',0,'',2),(13,'content-manager','contentmanager','delete',0,'',1),(14,'content-manager','contentmanager','delete',0,'',2),(15,'content-manager','contentmanager','deletemany',0,'',1),(16,'content-manager','contentmanager','deletemany',0,'',2),(17,'content-manager','contentmanager','find',0,'',1),(18,'content-manager','contentmanager','find',0,'',2),(19,'content-manager','contentmanager','findone',0,'',1),(20,'content-manager','contentmanager','findone',0,'',2),(21,'content-manager','contentmanager','generateuid',0,'',1),(22,'content-manager','contentmanager','generateuid',0,'',2),(23,'content-manager','contentmanager','update',0,'',1),(24,'content-manager','contentmanager','update',0,'',2),(25,'content-manager','contenttypes','findcontenttype',0,'',1),(26,'content-manager','contenttypes','findcontenttype',0,'',2),(27,'content-manager','contenttypes','listcontenttypes',0,'',1),(28,'content-manager','contenttypes','listcontenttypes',0,'',2),(29,'content-manager','contenttypes','updatecontenttype',0,'',1),(30,'content-manager','contenttypes','updatecontenttype',0,'',2),(31,'content-type-builder','builder','getreservednames',0,'',1),(32,'content-type-builder','builder','getreservednames',0,'',2),(33,'content-type-builder','componentcategories','deletecategory',0,'',1),(34,'content-type-builder','componentcategories','deletecategory',0,'',2),(35,'content-type-builder','componentcategories','editcategory',0,'',1),(36,'content-type-builder','componentcategories','editcategory',0,'',2),(37,'content-type-builder','components','createcomponent',0,'',1),(38,'content-type-builder','components','createcomponent',0,'',2),(39,'content-type-builder','components','deletecomponent',0,'',1),(40,'content-type-builder','components','deletecomponent',0,'',2),(41,'content-type-builder','components','getcomponent',0,'',1),(42,'content-type-builder','components','getcomponent',0,'',2),(43,'content-type-builder','components','getcomponents',0,'',1),(44,'content-type-builder','components','getcomponents',0,'',2),(45,'content-type-builder','components','updatecomponent',0,'',1),(46,'content-type-builder','components','updatecomponent',0,'',2),(47,'content-type-builder','connections','getconnections',0,'',1),(48,'content-type-builder','connections','getconnections',0,'',2),(49,'content-type-builder','contenttypes','createcontenttype',0,'',1),(50,'content-type-builder','contenttypes','createcontenttype',0,'',2),(51,'content-type-builder','contenttypes','deletecontenttype',0,'',1),(52,'content-type-builder','contenttypes','deletecontenttype',0,'',2),(53,'content-type-builder','contenttypes','getcontenttype',0,'',1),(54,'content-type-builder','contenttypes','getcontenttype',0,'',2),(55,'content-type-builder','contenttypes','getcontenttypes',0,'',1),(56,'content-type-builder','contenttypes','getcontenttypes',0,'',2),(57,'content-type-builder','contenttypes','updatecontenttype',0,'',1),(58,'content-type-builder','contenttypes','updatecontenttype',0,'',2),(59,'email','email','send',0,'',1),(60,'email','email','send',0,'',2),(61,'upload','proxy','uploadproxy',0,'',1),(62,'upload','proxy','uploadproxy',0,'',2),(63,'upload','upload','count',0,'',1),(64,'upload','upload','count',0,'',2),(65,'upload','upload','destroy',0,'',1),(66,'upload','upload','destroy',0,'',2),(67,'upload','upload','find',0,'',1),(68,'upload','upload','find',0,'',2),(69,'upload','upload','findone',0,'',1),(70,'upload','upload','findone',0,'',2),(71,'upload','upload','getsettings',0,'',1),(72,'upload','upload','getsettings',0,'',2),(73,'upload','upload','search',0,'',1),(74,'upload','upload','search',0,'',2),(75,'upload','upload','updatesettings',0,'',1),(76,'upload','upload','updatesettings',0,'',2),(77,'upload','upload','upload',0,'',1),(78,'upload','upload','upload',0,'',2),(79,'users-permissions','auth','callback',0,'',1),(80,'users-permissions','auth','callback',1,'',2),(81,'users-permissions','auth','connect',1,'',1),(82,'users-permissions','auth','connect',1,'',2),(83,'users-permissions','auth','emailconfirmation',0,'',1),(84,'users-permissions','auth','emailconfirmation',1,'',2),(85,'users-permissions','auth','forgotpassword',0,'',1),(86,'users-permissions','auth','forgotpassword',1,'',2),(87,'users-permissions','auth','register',0,'',1),(88,'users-permissions','auth','register',1,'',2),(89,'users-permissions','auth','resetpassword',0,'',1),(90,'users-permissions','auth','resetpassword',0,'',2),(91,'users-permissions','auth','sendemailconfirmation',0,'',1),(92,'users-permissions','auth','sendemailconfirmation',0,'',2),(93,'users-permissions','user','count',0,'',1),(94,'users-permissions','user','count',0,'',2),(95,'users-permissions','user','create',0,'',1),(96,'users-permissions','user','create',0,'',2),(97,'users-permissions','user','destroy',0,'',1),(98,'users-permissions','user','destroy',0,'',2),(99,'users-permissions','user','destroyall',0,'',1),(100,'users-permissions','user','destroyall',0,'',2),(101,'users-permissions','user','find',0,'',1),(102,'users-permissions','user','find',0,'',2),(103,'users-permissions','user','findone',0,'',1),(104,'users-permissions','user','findone',0,'',2),(105,'users-permissions','user','me',1,'',1),(106,'users-permissions','user','me',1,'',2),(107,'users-permissions','user','update',0,'',1),(108,'users-permissions','user','update',0,'',2),(109,'users-permissions','userspermissions','createrole',0,'',1),(110,'users-permissions','userspermissions','createrole',0,'',2),(111,'users-permissions','userspermissions','deleteprovider',0,'',1),(112,'users-permissions','userspermissions','deleteprovider',0,'',2),(113,'users-permissions','userspermissions','deleterole',0,'',1),(114,'users-permissions','userspermissions','deleterole',0,'',2),(115,'users-permissions','userspermissions','getadvancedsettings',0,'',1),(116,'users-permissions','userspermissions','getadvancedsettings',0,'',2),(117,'users-permissions','userspermissions','getemailtemplate',0,'',1),(118,'users-permissions','userspermissions','getemailtemplate',0,'',2),(119,'users-permissions','userspermissions','getpermissions',0,'',1),(120,'users-permissions','userspermissions','getpermissions',0,'',2),(121,'users-permissions','userspermissions','getpolicies',0,'',1),(122,'users-permissions','userspermissions','getpolicies',0,'',2),(123,'users-permissions','userspermissions','getproviders',0,'',1),(124,'users-permissions','userspermissions','getproviders',0,'',2),(125,'users-permissions','userspermissions','getrole',0,'',1),(126,'users-permissions','userspermissions','getrole',0,'',2),(127,'users-permissions','userspermissions','getroles',0,'',1),(128,'users-permissions','userspermissions','getroles',0,'',2),(129,'users-permissions','userspermissions','getroutes',0,'',1),(130,'users-permissions','userspermissions','getroutes',0,'',2),(131,'users-permissions','userspermissions','index',0,'',1),(132,'users-permissions','userspermissions','index',0,'',2),(133,'users-permissions','userspermissions','init',1,'',1),(134,'users-permissions','userspermissions','init',1,'',2),(135,'users-permissions','userspermissions','searchusers',0,'',1),(136,'users-permissions','userspermissions','searchusers',0,'',2),(137,'users-permissions','userspermissions','updateadvancedsettings',0,'',1),(138,'users-permissions','userspermissions','updateadvancedsettings',0,'',2),(139,'users-permissions','userspermissions','updateemailtemplate',0,'',1),(140,'users-permissions','userspermissions','updateemailtemplate',0,'',2),(141,'users-permissions','userspermissions','updateproviders',0,'',1),(142,'users-permissions','userspermissions','updateproviders',0,'',2),(143,'users-permissions','userspermissions','updaterole',0,'',1),(144,'users-permissions','userspermissions','updaterole',0,'',2),(145,'application','category','count',0,'',1),(146,'application','category','count',0,'',2),(147,'application','category','create',0,'',1),(148,'application','category','create',0,'',2),(149,'application','category','delete',0,'',1),(150,'application','category','delete',0,'',2),(151,'application','category','find',1,'',1),(152,'application','category','find',1,'',2),(153,'application','category','findone',1,'',1),(154,'application','category','findone',1,'',2),(155,'application','category','update',0,'',1),(156,'application','category','update',0,'',2),(157,'application','layout','count',0,'',1),(158,'application','layout','count',0,'',2),(159,'application','layout','create',0,'',1),(160,'application','layout','create',0,'',2),(161,'application','layout','delete',0,'',1),(162,'application','layout','delete',0,'',2),(163,'application','layout','find',1,'',1),(164,'application','layout','find',1,'',2),(165,'application','layout','findone',1,'',1),(166,'application','layout','findone',1,'',2),(167,'application','layout','update',0,'',1),(168,'application','layout','update',0,'',2),(169,'application','subcategory','count',0,'',1),(170,'application','subcategory','count',0,'',2),(171,'application','subcategory','create',0,'',1),(172,'application','subcategory','create',0,'',2),(173,'application','subcategory','delete',0,'',1),(174,'application','subcategory','delete',0,'',2),(175,'application','subcategory','find',1,'',1),(176,'application','subcategory','find',1,'',2),(177,'application','subcategory','findone',1,'',1),(178,'application','subcategory','findone',1,'',2),(179,'application','subcategory','update',0,'',1),(180,'application','subcategory','update',0,'',2);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users-permissions_role`
--

LOCK TABLES `users-permissions_role` WRITE;
/*!40000 ALTER TABLE `users-permissions_role` DISABLE KEYS */;
INSERT INTO `users-permissions_role` VALUES (1,'Authenticated','Default role given to authenticated user.','authenticated'),(2,'Public','Default role given to unauthenticated user.','public');
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
  PRIMARY KEY (`id`),
  UNIQUE KEY `users-permissions_user_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users-permissions_user`
--

LOCK TABLES `users-permissions_user` WRITE;
/*!40000 ALTER TABLE `users-permissions_user` DISABLE KEYS */;
INSERT INTO `users-permissions_user` VALUES (20,'jahen222','henryjaimes.peli@gmail.com','local','$2a$10$sheAVXOW4bijhJOq6LJAA.Z1BcGUkGhnZZign4mu562y9R296Afx2',NULL,1,NULL,1,'2020-07-17 09:02:56','2020-07-22 03:10:36',NULL,NULL),(21,'kkkkk','henrhwh@gmail.com','local','$2a$10$vC1rIPgtSd45Mv8H6OPlr.8Ml9TCcXrhrNDSkIjLrryTubXE52cAa',NULL,1,NULL,1,'2020-07-23 01:13:01','2020-07-23 01:13:01',NULL,NULL);
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

-- Dump completed on 2020-07-24 23:16:02
