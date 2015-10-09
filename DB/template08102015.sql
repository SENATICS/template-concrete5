-- MySQL dump 10.13  Distrib 5.1.73, for redhat-linux-gnu (x86_64)
--
-- Host: localhost    Database: concrete5752
-- ------------------------------------------------------
-- Server version	5.1.73

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
-- Table structure for table `AreaLayoutColumns`
--

DROP TABLE IF EXISTS `AreaLayoutColumns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AreaLayoutColumns` (
  `arLayoutColumnID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `arLayoutID` int(10) unsigned NOT NULL DEFAULT '0',
  `arLayoutColumnIndex` int(10) unsigned NOT NULL DEFAULT '0',
  `arID` int(10) unsigned NOT NULL DEFAULT '0',
  `arLayoutColumnDisplayID` int(11) DEFAULT '0',
  PRIMARY KEY (`arLayoutColumnID`),
  KEY `arLayoutID` (`arLayoutID`,`arLayoutColumnIndex`),
  KEY `arID` (`arID`),
  KEY `arLayoutColumnDisplayID` (`arLayoutColumnDisplayID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AreaLayoutColumns`
--

LOCK TABLES `AreaLayoutColumns` WRITE;
/*!40000 ALTER TABLE `AreaLayoutColumns` DISABLE KEYS */;
INSERT INTO `AreaLayoutColumns` VALUES (1,1,0,137,1),(2,1,1,138,2),(3,2,0,147,3),(4,2,1,148,4),(5,3,0,149,5),(6,3,1,150,6),(7,4,0,235,7),(8,4,1,236,8),(9,5,0,237,9),(10,5,1,238,10),(11,6,0,239,11),(12,6,1,240,12),(13,7,0,241,13),(14,7,1,242,14),(15,8,0,243,15),(16,8,1,244,16),(17,8,2,245,17),(18,9,0,246,18),(19,9,1,247,19),(20,10,0,296,20);
/*!40000 ALTER TABLE `AreaLayoutColumns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AreaLayoutCustomColumns`
--

DROP TABLE IF EXISTS `AreaLayoutCustomColumns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AreaLayoutCustomColumns` (
  `arLayoutColumnID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `arLayoutColumnWidth` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`arLayoutColumnID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AreaLayoutCustomColumns`
--

LOCK TABLES `AreaLayoutCustomColumns` WRITE;
/*!40000 ALTER TABLE `AreaLayoutCustomColumns` DISABLE KEYS */;
INSERT INTO `AreaLayoutCustomColumns` VALUES (1,'681'),(2,'312'),(3,'678'),(4,'315'),(5,'207'),(6,'786'),(7,'164'),(8,'829'),(9,'164'),(10,'829'),(11,'165'),(12,'828'),(13,'164'),(14,'829'),(15,'0'),(16,'0'),(17,'0'),(18,'0'),(19,'0'),(20,'0');
/*!40000 ALTER TABLE `AreaLayoutCustomColumns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AreaLayoutPresets`
--

DROP TABLE IF EXISTS `AreaLayoutPresets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AreaLayoutPresets` (
  `arLayoutPresetID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `arLayoutID` int(10) unsigned NOT NULL DEFAULT '0',
  `arLayoutPresetName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`arLayoutPresetID`),
  KEY `arLayoutID` (`arLayoutID`),
  KEY `arLayoutPresetName` (`arLayoutPresetName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AreaLayoutPresets`
--

LOCK TABLES `AreaLayoutPresets` WRITE;
/*!40000 ALTER TABLE `AreaLayoutPresets` DISABLE KEYS */;
/*!40000 ALTER TABLE `AreaLayoutPresets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AreaLayoutThemeGridColumns`
--

DROP TABLE IF EXISTS `AreaLayoutThemeGridColumns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AreaLayoutThemeGridColumns` (
  `arLayoutColumnID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `arLayoutColumnSpan` int(10) unsigned DEFAULT '0',
  `arLayoutColumnOffset` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`arLayoutColumnID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AreaLayoutThemeGridColumns`
--

LOCK TABLES `AreaLayoutThemeGridColumns` WRITE;
/*!40000 ALTER TABLE `AreaLayoutThemeGridColumns` DISABLE KEYS */;
/*!40000 ALTER TABLE `AreaLayoutThemeGridColumns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AreaLayouts`
--

DROP TABLE IF EXISTS `AreaLayouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AreaLayouts` (
  `arLayoutID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `arLayoutSpacing` int(10) unsigned NOT NULL DEFAULT '0',
  `arLayoutIsCustom` tinyint(1) NOT NULL DEFAULT '0',
  `arLayoutIsPreset` tinyint(1) NOT NULL DEFAULT '0',
  `arLayoutMaxColumns` int(10) unsigned NOT NULL DEFAULT '0',
  `arLayoutUsesThemeGridFramework` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`arLayoutID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AreaLayouts`
--

LOCK TABLES `AreaLayouts` WRITE;
/*!40000 ALTER TABLE `AreaLayouts` DISABLE KEYS */;
INSERT INTO `AreaLayouts` VALUES (1,11,1,0,0,0),(2,0,1,0,0,0),(3,3,1,0,0,0),(4,10,1,0,0,0),(5,10,1,0,0,0),(6,10,1,0,0,0),(7,10,1,0,0,0),(8,10,0,0,0,0),(9,25,0,0,0,0),(10,0,0,0,0,0);
/*!40000 ALTER TABLE `AreaLayouts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AreaLayoutsUsingPresets`
--

DROP TABLE IF EXISTS `AreaLayoutsUsingPresets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AreaLayoutsUsingPresets` (
  `arLayoutID` int(10) unsigned NOT NULL,
  `preset` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`arLayoutID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AreaLayoutsUsingPresets`
--

LOCK TABLES `AreaLayoutsUsingPresets` WRITE;
/*!40000 ALTER TABLE `AreaLayoutsUsingPresets` DISABLE KEYS */;
/*!40000 ALTER TABLE `AreaLayoutsUsingPresets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AreaPermissionAssignments`
--

DROP TABLE IF EXISTS `AreaPermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AreaPermissionAssignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`arHandle`,`pkID`,`paID`),
  KEY `paID` (`paID`),
  KEY `pkID` (`pkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AreaPermissionAssignments`
--

LOCK TABLES `AreaPermissionAssignments` WRITE;
/*!40000 ALTER TABLE `AreaPermissionAssignments` DISABLE KEYS */;
INSERT INTO `AreaPermissionAssignments` VALUES (176,'Titulo',22,1),(176,'Titulo',23,1),(182,'Titulo',23,1),(176,'Titulo',24,2),(176,'Titulo',25,2),(176,'Titulo',26,2),(176,'Titulo',28,2),(182,'Titulo',24,2),(182,'Titulo',22,9),(182,'Titulo',25,9),(182,'Titulo',26,9),(182,'Titulo',27,9),(182,'Titulo',28,9),(182,'Titulo',29,9),(176,'Titulo',21,138),(176,'Titulo',27,139),(176,'Titulo',29,139),(182,'Titulo',21,158);
/*!40000 ALTER TABLE `AreaPermissionAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AreaPermissionBlockTypeAccessList`
--

DROP TABLE IF EXISTS `AreaPermissionBlockTypeAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AreaPermissionBlockTypeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AreaPermissionBlockTypeAccessList`
--

LOCK TABLES `AreaPermissionBlockTypeAccessList` WRITE;
/*!40000 ALTER TABLE `AreaPermissionBlockTypeAccessList` DISABLE KEYS */;
/*!40000 ALTER TABLE `AreaPermissionBlockTypeAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AreaPermissionBlockTypeAccessListCustom`
--

DROP TABLE IF EXISTS `AreaPermissionBlockTypeAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AreaPermissionBlockTypeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `btID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`btID`),
  KEY `peID` (`peID`),
  KEY `btID` (`btID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AreaPermissionBlockTypeAccessListCustom`
--

LOCK TABLES `AreaPermissionBlockTypeAccessListCustom` WRITE;
/*!40000 ALTER TABLE `AreaPermissionBlockTypeAccessListCustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `AreaPermissionBlockTypeAccessListCustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Areas`
--

DROP TABLE IF EXISTS `Areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Areas` (
  `arID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `arOverrideCollectionPermissions` tinyint(1) NOT NULL DEFAULT '0',
  `arInheritPermissionsFromAreaOnCID` int(10) unsigned NOT NULL DEFAULT '0',
  `arIsGlobal` tinyint(1) NOT NULL DEFAULT '0',
  `arParentID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`arID`),
  KEY `arIsGlobal` (`arIsGlobal`),
  KEY `cID` (`cID`),
  KEY `arHandle` (`arHandle`),
  KEY `arParentID` (`arParentID`)
) ENGINE=InnoDB AUTO_INCREMENT=339 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Areas`
--

LOCK TABLES `Areas` WRITE;
/*!40000 ALTER TABLE `Areas` DISABLE KEYS */;
INSERT INTO `Areas` VALUES (1,126,'Main',0,0,0,0),(2,127,'Primary',0,0,0,0),(3,127,'Secondary 1',0,0,0,0),(4,127,'Secondary 2',0,0,0,0),(5,127,'Secondary 3',0,0,0,0),(6,127,'Secondary 4',0,0,0,0),(7,127,'Secondary 5',0,0,0,0),(8,144,'Main',0,0,0,0),(9,145,'Main',0,0,0,0),(10,1,'Header Site Title',0,0,1,0),(11,146,'Main',0,0,0,0),(12,1,'Header Navigation',0,0,1,0),(13,1,'Main',0,0,0,0),(14,1,'Page Footer',0,0,0,0),(15,147,'Main',0,0,0,0),(16,1,'Footer Legal',0,0,1,0),(17,148,'Main',0,0,0,0),(18,1,'Footer Navigation',0,0,1,0),(19,149,'Main',0,0,0,0),(20,1,'Footer Contact',0,0,1,0),(21,150,'Main',0,0,0,0),(22,1,'Header Search',0,0,1,0),(23,151,'Main',0,0,0,0),(24,1,'Footer Site Title',0,0,1,0),(25,152,'Main',0,0,0,0),(26,1,'Footer Social',0,0,1,0),(27,153,'Main',0,0,0,0),(28,161,'Main',0,0,0,0),(29,1,'Search',0,0,1,0),(30,1,'Slider',0,0,0,0),(31,1,'Contenido A',0,0,0,0),(32,1,'Contenido B',0,0,0,0),(33,163,'Header Site Title',0,0,1,0),(34,163,'Search',0,0,1,0),(35,163,'Header Navigation',0,0,1,0),(36,163,'Titulo',0,0,0,0),(37,163,'Contenido',0,0,0,0),(38,163,'Footer Contact',0,0,1,0),(39,163,'Footer Navigation',0,0,1,0),(40,163,'Footer Legal',0,0,1,0),(41,164,'Header Site Title',0,0,1,0),(42,164,'Search',0,0,1,0),(43,164,'Header Navigation',0,0,1,0),(44,164,'Titulo',0,0,0,0),(45,164,'Contenido',0,0,0,0),(46,164,'Footer Contact',0,0,1,0),(47,164,'Footer Navigation',0,0,1,0),(48,164,'Footer Legal',0,0,1,0),(49,165,'Header Site Title',0,0,1,0),(50,165,'Search',0,0,1,0),(51,165,'Header Navigation',0,0,1,0),(52,165,'Titulo',0,0,0,0),(53,165,'Contenido',0,0,0,0),(54,165,'Footer Contact',0,0,1,0),(55,165,'Footer Navigation',0,0,1,0),(56,165,'Footer Legal',0,0,1,0),(57,166,'Header Site Title',0,0,1,0),(58,166,'Search',0,0,1,0),(59,166,'Header Navigation',0,0,1,0),(60,166,'Titulo',0,0,0,0),(61,166,'Contenido',0,0,0,0),(62,166,'Footer Contact',0,0,1,0),(63,166,'Footer Navigation',0,0,1,0),(64,166,'Footer Legal',0,0,1,0),(65,167,'Header Site Title',0,0,1,0),(66,167,'Search',0,0,1,0),(67,167,'Header Navigation',0,0,1,0),(68,167,'Titulo',0,0,0,0),(69,167,'Contenido',0,0,0,0),(70,167,'Footer Contact',0,0,1,0),(71,167,'Footer Navigation',0,0,1,0),(72,167,'Footer Legal',0,0,1,0),(73,168,'Header Site Title',0,0,1,0),(74,168,'Search',0,0,1,0),(75,168,'Header Navigation',0,0,1,0),(76,168,'Titulo',0,0,0,0),(77,168,'Contenido',0,0,0,0),(78,168,'Footer Contact',0,0,1,0),(79,168,'Footer Navigation',0,0,1,0),(80,168,'Footer Legal',0,0,1,0),(81,169,'Header Site Title',0,0,1,0),(82,169,'Search',0,0,1,0),(83,169,'Header Navigation',0,0,1,0),(84,169,'Titulo',0,0,0,0),(85,169,'Contenido',0,0,0,0),(86,169,'Footer Contact',0,0,1,0),(87,169,'Footer Navigation',0,0,1,0),(88,169,'Footer Legal',0,0,1,0),(89,170,'Header Site Title',0,0,1,0),(90,170,'Search',0,0,1,0),(91,170,'Header Navigation',0,0,1,0),(92,170,'Titulo',0,0,0,0),(93,170,'Contenido',0,0,0,0),(94,170,'Footer Contact',0,0,1,0),(95,170,'Footer Navigation',0,0,1,0),(96,170,'Footer Legal',0,0,1,0),(97,171,'Header Site Title',0,0,1,0),(98,171,'Search',0,0,1,0),(99,171,'Header Navigation',0,0,1,0),(100,171,'Titulo',0,0,0,0),(101,171,'Contenido',0,0,0,0),(102,171,'Footer Contact',0,0,1,0),(103,171,'Footer Navigation',0,0,1,0),(104,171,'Footer Legal',0,0,1,0),(105,172,'Header Site Title',0,0,1,0),(106,172,'Search',0,0,1,0),(107,172,'Header Navigation',0,0,1,0),(108,172,'Titulo',0,0,0,0),(109,172,'Contenido',0,0,0,0),(110,172,'Footer Contact',0,0,1,0),(111,172,'Footer Navigation',0,0,1,0),(112,172,'Footer Legal',0,0,1,0),(113,173,'Header Site Title',0,0,1,0),(114,173,'Search',0,0,1,0),(115,173,'Header Navigation',0,0,1,0),(116,173,'Titulo',0,0,0,0),(117,173,'Contenido',0,0,0,0),(118,173,'Footer Contact',0,0,1,0),(119,173,'Footer Navigation',0,0,1,0),(120,173,'Footer Legal',0,0,1,0),(121,174,'Header Site Title',0,0,1,0),(122,174,'Search',0,0,1,0),(123,174,'Header Navigation',0,0,1,0),(124,174,'Titulo',0,0,0,0),(125,174,'Contenido',0,0,0,0),(126,174,'Footer Contact',0,0,1,0),(127,174,'Footer Navigation',0,0,1,0),(128,174,'Footer Legal',0,0,1,0),(129,175,'Header Site Title',0,0,1,0),(130,175,'Search',0,0,1,0),(131,175,'Header Navigation',0,0,1,0),(132,175,'Titulo',0,0,0,0),(133,175,'Contenido',0,0,0,0),(134,175,'Footer Contact',0,0,1,0),(135,175,'Footer Navigation',0,0,1,0),(136,175,'Footer Legal',0,0,1,0),(137,1,'Contenido A : 1',0,0,0,31),(138,1,'Contenido A : 2',0,0,0,31),(139,176,'Header Site Title',0,0,1,0),(140,176,'Search',0,0,1,0),(141,176,'Header Navigation',0,0,1,0),(142,176,'Titulo',1,0,0,0),(143,176,'Contenido',0,0,0,0),(144,176,'Footer Contact',0,0,1,0),(145,176,'Footer Navigation',0,0,1,0),(146,176,'Footer Legal',0,0,1,0),(147,176,'Titulo : 3',0,0,0,142),(148,176,'Titulo : 4',0,0,0,142),(149,176,'Contenido : 5',0,0,0,143),(150,176,'Contenido : 6',0,0,0,143),(151,177,'Contenido',0,0,0,0),(152,177,'Header Site Title',0,0,1,0),(153,177,'Search',0,0,1,0),(154,177,'Header Navigation',0,0,1,0),(155,177,'Titulo',0,0,0,0),(156,177,'Titulo : 3',0,0,0,155),(157,177,'Titulo : 4',0,0,0,155),(158,177,'Contenido : 5',0,0,0,151),(159,177,'Contenido : 6',0,0,0,151),(160,177,'Footer Contact',0,0,1,0),(161,177,'Footer Navigation',0,0,1,0),(162,177,'Footer Legal',0,0,1,0),(163,178,'Contenido',0,0,0,0),(164,178,'Header Site Title',0,0,1,0),(165,178,'Search',0,0,1,0),(166,178,'Header Navigation',0,0,1,0),(167,178,'Titulo',0,176,0,0),(168,178,'Titulo : 3',0,0,0,167),(169,178,'Titulo : 4',0,0,0,167),(170,178,'Contenido : 5',0,0,0,163),(171,178,'Contenido : 6',0,0,0,163),(172,178,'Footer Contact',0,0,1,0),(173,178,'Footer Navigation',0,0,1,0),(174,178,'Footer Legal',0,0,1,0),(175,179,'Contenido',0,0,0,0),(176,179,'Header Site Title',0,0,1,0),(177,179,'Search',0,0,1,0),(178,179,'Header Navigation',0,0,1,0),(179,179,'Titulo',0,0,0,0),(180,179,'Titulo : 3',0,0,0,179),(181,179,'Titulo : 4',0,0,0,179),(182,179,'Contenido : 5',0,0,0,175),(183,179,'Contenido : 6',0,0,0,175),(184,179,'Footer Contact',0,0,1,0),(185,179,'Footer Navigation',0,0,1,0),(186,179,'Footer Legal',0,0,1,0),(187,180,'Header Site Title',0,0,1,0),(188,180,'Search',0,0,1,0),(189,180,'Header Navigation',0,0,1,0),(190,180,'Titulo',0,0,0,0),(191,180,'Titulo : 3',0,0,0,190),(192,180,'Titulo : 4',0,0,0,190),(193,180,'Contenido',0,0,0,0),(194,180,'Contenido : 5',0,0,0,193),(195,180,'Contenido : 6',0,0,0,193),(196,180,'Footer Contact',0,0,1,0),(197,180,'Footer Navigation',0,0,1,0),(198,180,'Footer Legal',0,0,1,0),(199,181,'Header Site Title',0,0,1,0),(200,181,'Search',0,0,1,0),(201,181,'Header Navigation',0,0,1,0),(202,181,'Titulo',0,0,0,0),(203,181,'Titulo : 3',0,0,0,202),(204,181,'Titulo : 4',0,0,0,202),(205,181,'Contenido',0,0,0,0),(206,181,'Contenido : 5',0,0,0,205),(207,181,'Contenido : 6',0,0,0,205),(208,181,'Footer Contact',0,0,1,0),(209,181,'Footer Navigation',0,0,1,0),(210,181,'Footer Legal',0,0,1,0),(211,182,'Contenido',0,0,0,0),(212,182,'Header Site Title',0,0,1,0),(213,182,'Search',0,0,1,0),(214,182,'Header Navigation',0,0,1,0),(215,182,'Titulo',1,0,0,0),(216,182,'Titulo : 3',0,0,0,215),(217,182,'Titulo : 4',0,0,0,215),(218,182,'Contenido : 5',0,0,0,211),(219,182,'Contenido : 6',0,0,0,211),(220,182,'Footer Contact',0,0,1,0),(221,182,'Footer Navigation',0,0,1,0),(222,182,'Footer Legal',0,0,1,0),(223,183,'Header Site Title',0,0,1,0),(224,183,'Search',0,0,1,0),(225,183,'Header Navigation',0,0,1,0),(226,183,'Titulo',0,182,0,0),(227,183,'Titulo : 3',0,0,0,226),(228,183,'Titulo : 4',0,0,0,226),(229,183,'Contenido',0,0,0,0),(230,183,'Contenido : 5',0,0,0,229),(231,183,'Contenido : 6',0,0,0,229),(232,183,'Footer Contact',0,0,1,0),(233,183,'Footer Navigation',0,0,1,0),(234,183,'Footer Legal',0,0,1,0),(235,166,'Contenido : 7',0,0,0,61),(236,166,'Contenido : 8',0,0,0,61),(237,167,'Contenido : 9',0,0,0,69),(238,167,'Contenido : 10',0,0,0,69),(239,168,'Contenido : 11',0,0,0,77),(240,168,'Contenido : 12',0,0,0,77),(241,169,'Contenido : 13',0,0,0,85),(242,169,'Contenido : 14',0,0,0,85),(243,166,'Contenido : 8 : 15',0,0,0,236),(244,166,'Contenido : 8 : 16',0,0,0,236),(245,166,'Contenido : 8 : 17',0,0,0,236),(246,172,'Contenido : 18',0,0,0,109),(247,172,'Contenido : 19',0,0,0,109),(272,186,'Contenido',0,0,0,0),(273,186,'Header Site Title',0,0,1,0),(274,186,'Search',0,0,1,0),(275,186,'Header Navigation',0,0,1,0),(276,186,'Titulo',0,176,0,0),(277,186,'Titulo : 3',0,0,0,276),(278,186,'Titulo : 4',0,0,0,276),(279,186,'Contenido : 5',0,0,0,272),(280,186,'Contenido : 6',0,0,0,272),(281,186,'Footer Contact',0,0,1,0),(282,186,'Footer Navigation',0,0,1,0),(283,186,'Footer Legal',0,0,1,0),(284,187,'Contenido',0,0,0,0),(285,187,'Header Site Title',0,0,1,0),(286,187,'Search',0,0,1,0),(287,187,'Header Navigation',0,0,1,0),(288,187,'Titulo',0,0,0,0),(289,187,'Titulo : 3',0,0,0,288),(290,187,'Titulo : 4',0,0,0,288),(291,187,'Contenido : 5',0,0,0,284),(292,187,'Contenido : 6',0,0,0,284),(293,187,'Footer Contact',0,0,1,0),(294,187,'Footer Navigation',0,0,1,0),(295,187,'Footer Legal',0,0,1,0),(296,186,'Titulo : 3 : 20',0,0,0,277),(297,188,'Header Site Title',0,0,1,0),(298,188,'Search',0,0,1,0),(299,188,'Header Navigation',0,0,1,0),(300,188,'Titulo',0,0,0,0),(301,188,'Titulo : 3',0,0,0,300),(302,188,'Titulo : 4',0,0,0,300),(303,188,'Contenido',0,0,0,0),(304,188,'Contenido : 5',0,0,0,303),(305,188,'Contenido : 6',0,0,0,303),(306,188,'Footer Contact',0,0,1,0),(307,188,'Footer Navigation',0,0,1,0),(308,188,'Footer Legal',0,0,1,0),(309,189,'Header Site Title',0,0,1,0),(310,189,'Search',0,0,1,0),(311,189,'Header Navigation',0,0,1,0),(312,189,'Titulo',0,182,0,0),(313,189,'Titulo : 3',0,0,0,312),(314,189,'Titulo : 4',0,0,0,312),(315,189,'Contenido',0,0,0,0),(316,189,'Footer Contact',0,0,1,0),(317,189,'Footer Navigation',0,0,1,0),(318,189,'Footer Legal',0,0,1,0),(319,190,'Contenido',0,0,0,0),(320,190,'Header Site Title',0,0,1,0),(321,190,'Search',0,0,1,0),(322,190,'Header Navigation',0,0,1,0),(323,190,'Titulo',0,176,0,0),(324,190,'Titulo : 3',0,0,0,323),(325,190,'Titulo : 4',0,0,0,323),(326,190,'Contenido : 5',0,0,0,319),(327,190,'Contenido : 6',0,0,0,319),(328,190,'Footer Contact',0,0,1,0),(329,190,'Footer Navigation',0,0,1,0),(330,190,'Footer Legal',0,0,1,0),(331,191,'Header Site Title',0,0,1,0),(332,191,'Search',0,0,1,0),(333,191,'Header Navigation',0,0,1,0),(334,191,'Titulo',0,0,0,0),(335,191,'Contenido',0,0,0,0),(336,191,'Footer Contact',0,0,1,0),(337,191,'Footer Navigation',0,0,1,0),(338,191,'Footer Legal',0,0,1,0);
/*!40000 ALTER TABLE `Areas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AttributeKeyCategories`
--

DROP TABLE IF EXISTS `AttributeKeyCategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AttributeKeyCategories` (
  `akCategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akCategoryHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `akCategoryAllowSets` smallint(6) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`akCategoryID`),
  KEY `akCategoryHandle` (`akCategoryHandle`),
  KEY `pkgID` (`pkgID`,`akCategoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AttributeKeyCategories`
--

LOCK TABLES `AttributeKeyCategories` WRITE;
/*!40000 ALTER TABLE `AttributeKeyCategories` DISABLE KEYS */;
INSERT INTO `AttributeKeyCategories` VALUES (1,'collection',1,NULL),(2,'user',1,NULL),(3,'file',1,NULL);
/*!40000 ALTER TABLE `AttributeKeyCategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AttributeKeys`
--

DROP TABLE IF EXISTS `AttributeKeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AttributeKeys` (
  `akID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `akName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `akIsSearchable` tinyint(1) NOT NULL DEFAULT '0',
  `akIsSearchableIndexed` tinyint(1) NOT NULL DEFAULT '0',
  `akIsAutoCreated` tinyint(1) NOT NULL DEFAULT '0',
  `akIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `akIsColumnHeader` tinyint(1) NOT NULL DEFAULT '0',
  `akIsEditable` tinyint(1) NOT NULL DEFAULT '0',
  `atID` int(10) unsigned DEFAULT NULL,
  `akCategoryID` int(10) unsigned DEFAULT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`akID`),
  UNIQUE KEY `akHandle` (`akHandle`,`akCategoryID`),
  KEY `akCategoryID` (`akCategoryID`),
  KEY `atID` (`atID`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AttributeKeys`
--

LOCK TABLES `AttributeKeys` WRITE;
/*!40000 ALTER TABLE `AttributeKeys` DISABLE KEYS */;
INSERT INTO `AttributeKeys` VALUES (1,'meta_title','Meta Title',1,1,1,0,0,1,1,1,0),(2,'meta_description','Meta Description',1,1,1,0,0,1,2,1,0),(3,'meta_keywords','Meta Keywords',1,1,1,0,0,1,2,1,0),(4,'icon_dashboard','Dashboard Icon',0,0,1,1,0,1,2,1,0),(5,'exclude_nav','Exclude From Nav',1,1,1,0,0,1,3,1,0),(6,'exclude_page_list','Exclude From Page List',1,1,1,0,0,1,3,1,0),(7,'header_extra_content','Header Extra Content',1,1,1,0,0,1,2,1,0),(8,'tags','Tags',1,1,1,0,0,1,8,1,0),(9,'is_featured','Is Featured',1,0,1,0,0,1,3,1,0),(10,'exclude_search_index','Exclude From Search Index',1,1,1,0,0,1,3,1,0),(11,'exclude_sitemapxml','Exclude From sitemap.xml',1,1,1,0,0,1,3,1,0),(12,'profile_private_messages_enabled','I would like to receive private messages.',1,0,0,0,0,1,3,2,0),(13,'profile_private_messages_notification_enabled','Send me email notifications when I receive a private message.',1,0,0,0,0,1,3,2,0),(14,'width','Width',1,1,1,0,0,1,6,3,0),(15,'height','Height',1,1,1,0,0,1,6,3,0),(16,'account_profile_links','Personal Links',0,0,0,0,0,1,11,2,0),(17,'duration','Duration',1,1,1,0,0,1,6,3,0),(18,'thumbnail','Miniatura',1,1,0,0,0,1,5,1,0);
/*!40000 ALTER TABLE `AttributeKeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AttributeSetKeys`
--

DROP TABLE IF EXISTS `AttributeSetKeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AttributeSetKeys` (
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `asID` int(10) unsigned NOT NULL DEFAULT '0',
  `displayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`akID`,`asID`),
  KEY `asID` (`asID`,`displayOrder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AttributeSetKeys`
--

LOCK TABLES `AttributeSetKeys` WRITE;
/*!40000 ALTER TABLE `AttributeSetKeys` DISABLE KEYS */;
INSERT INTO `AttributeSetKeys` VALUES (1,1,1),(2,1,2),(7,1,3),(11,1,4),(9,2,1),(5,2,2),(6,2,3),(10,2,4),(8,2,5);
/*!40000 ALTER TABLE `AttributeSetKeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AttributeSets`
--

DROP TABLE IF EXISTS `AttributeSets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AttributeSets` (
  `asID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `asHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `akCategoryID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `asIsLocked` tinyint(1) NOT NULL DEFAULT '1',
  `asDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`asID`),
  KEY `asHandle` (`asHandle`),
  KEY `akCategoryID` (`akCategoryID`,`asDisplayOrder`),
  KEY `pkgID` (`pkgID`,`asID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AttributeSets`
--

LOCK TABLES `AttributeSets` WRITE;
/*!40000 ALTER TABLE `AttributeSets` DISABLE KEYS */;
INSERT INTO `AttributeSets` VALUES (1,'SEO','seo',1,0,0,0),(2,'Navigation and Indexing','navigation',1,0,0,1);
/*!40000 ALTER TABLE `AttributeSets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AttributeTypeCategories`
--

DROP TABLE IF EXISTS `AttributeTypeCategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AttributeTypeCategories` (
  `atID` int(10) unsigned NOT NULL DEFAULT '0',
  `akCategoryID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`atID`,`akCategoryID`),
  KEY `akCategoryID` (`akCategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AttributeTypeCategories`
--

LOCK TABLES `AttributeTypeCategories` WRITE;
/*!40000 ALTER TABLE `AttributeTypeCategories` DISABLE KEYS */;
INSERT INTO `AttributeTypeCategories` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(10,1),(1,2),(2,2),(3,2),(4,2),(6,2),(8,2),(9,2),(10,2),(11,2),(1,3),(2,3),(3,3),(4,3),(6,3),(7,3),(8,3),(10,3);
/*!40000 ALTER TABLE `AttributeTypeCategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AttributeTypes`
--

DROP TABLE IF EXISTS `AttributeTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AttributeTypes` (
  `atID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `atHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `atName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`atID`),
  UNIQUE KEY `atHandle` (`atHandle`),
  KEY `pkgID` (`pkgID`,`atID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AttributeTypes`
--

LOCK TABLES `AttributeTypes` WRITE;
/*!40000 ALTER TABLE `AttributeTypes` DISABLE KEYS */;
INSERT INTO `AttributeTypes` VALUES (1,'text','Text',0),(2,'textarea','Text Area',0),(3,'boolean','Checkbox',0),(4,'date_time','Date/Time',0),(5,'image_file','Image/File',0),(6,'number','Number',0),(7,'rating','Rating',0),(8,'select','Select',0),(9,'address','Address',0),(10,'topics','Topics',0),(11,'social_links','Social Links',0);
/*!40000 ALTER TABLE `AttributeTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AttributeValues`
--

DROP TABLE IF EXISTS `AttributeValues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AttributeValues` (
  `avID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akID` int(10) unsigned DEFAULT NULL,
  `avDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `uID` int(10) unsigned DEFAULT NULL,
  `atID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`avID`),
  KEY `akID` (`akID`),
  KEY `uID` (`uID`),
  KEY `atID` (`atID`)
) ENGINE=InnoDB AUTO_INCREMENT=186 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AttributeValues`
--

LOCK TABLES `AttributeValues` WRITE;
/*!40000 ALTER TABLE `AttributeValues` DISABLE KEYS */;
INSERT INTO `AttributeValues` VALUES (1,4,'2015-09-21 11:28:21',1,2),(2,3,'2015-09-21 11:28:21',1,2),(3,3,'2015-09-21 11:28:21',1,2),(4,3,'2015-09-21 11:28:21',1,2),(5,3,'2015-09-21 11:28:22',1,2),(6,3,'2015-09-21 11:28:22',1,2),(7,3,'2015-09-21 11:28:22',1,2),(8,3,'2015-09-21 11:28:22',1,2),(9,5,'2015-09-21 11:28:22',1,3),(10,3,'2015-09-21 11:28:22',1,2),(11,3,'2015-09-21 11:28:23',1,2),(12,3,'2015-09-21 11:28:23',1,2),(13,3,'2015-09-21 11:28:23',1,2),(14,3,'2015-09-21 11:28:23',1,2),(15,3,'2015-09-21 11:28:23',1,2),(16,5,'2015-09-21 11:28:24',1,3),(17,3,'2015-09-21 11:28:24',1,2),(18,5,'2015-09-21 11:28:24',1,3),(19,3,'2015-09-21 11:28:24',1,2),(20,3,'2015-09-21 11:28:24',1,2),(21,3,'2015-09-21 11:28:25',1,2),(22,3,'2015-09-21 11:28:25',1,2),(23,3,'2015-09-21 11:28:25',1,2),(24,3,'2015-09-21 11:28:25',1,2),(25,3,'2015-09-21 11:28:25',1,2),(26,3,'2015-09-21 11:28:25',1,2),(27,3,'2015-09-21 11:28:26',1,2),(28,5,'2015-09-21 11:28:26',1,3),(29,5,'2015-09-21 11:28:26',1,3),(30,5,'2015-09-21 11:28:26',1,3),(31,5,'2015-09-21 11:28:26',1,3),(32,5,'2015-09-21 11:28:26',1,3),(33,5,'2015-09-21 11:28:27',1,3),(34,5,'2015-09-21 11:28:27',1,3),(35,5,'2015-09-21 11:28:27',1,3),(36,3,'2015-09-21 11:28:27',1,2),(37,3,'2015-09-21 11:28:27',1,2),(38,3,'2015-09-21 11:28:27',1,2),(39,4,'2015-09-21 11:28:28',1,2),(40,3,'2015-09-21 11:28:28',1,2),(41,3,'2015-09-21 11:28:28',1,2),(42,5,'2015-09-21 11:28:28',1,3),(43,10,'2015-09-21 11:28:28',1,3),(44,3,'2015-09-21 11:28:28',1,2),(45,3,'2015-09-21 11:28:29',1,2),(46,3,'2015-09-21 11:28:29',1,2),(47,5,'2015-09-21 11:28:29',1,3),(48,3,'2015-09-21 11:28:29',1,2),(49,3,'2015-09-21 11:28:29',1,2),(50,3,'2015-09-21 11:28:30',1,2),(51,5,'2015-09-21 11:28:30',1,3),(52,3,'2015-09-21 11:28:30',1,2),(53,3,'2015-09-21 11:28:30',1,2),(54,3,'2015-09-21 11:28:30',1,2),(55,3,'2015-09-21 11:28:30',1,2),(56,3,'2015-09-21 11:28:31',1,2),(57,3,'2015-09-21 11:28:31',1,2),(58,3,'2015-09-21 11:28:31',1,2),(59,3,'2015-09-21 11:28:31',1,2),(60,3,'2015-09-21 11:28:32',1,2),(61,3,'2015-09-21 11:28:32',1,2),(62,3,'2015-09-21 11:28:32',1,2),(63,3,'2015-09-21 11:28:32',1,2),(64,3,'2015-09-21 11:28:32',1,2),(65,3,'2015-09-21 11:28:32',1,2),(66,3,'2015-09-21 11:28:33',1,2),(67,3,'2015-09-21 11:28:33',1,2),(68,3,'2015-09-21 11:28:33',1,2),(69,3,'2015-09-21 11:28:33',1,2),(70,3,'2015-09-21 11:28:33',1,2),(71,3,'2015-09-21 11:28:34',1,2),(72,3,'2015-09-21 11:28:34',1,2),(73,3,'2015-09-21 11:28:34',1,2),(74,3,'2015-09-21 11:28:34',1,2),(75,3,'2015-09-21 11:28:34',1,2),(76,3,'2015-09-21 11:28:34',1,2),(77,3,'2015-09-21 11:28:35',1,2),(78,3,'2015-09-21 11:28:35',1,2),(79,3,'2015-09-21 11:28:35',1,2),(80,3,'2015-09-21 11:28:35',1,2),(81,3,'2015-09-21 11:28:35',1,2),(82,3,'2015-09-21 11:28:35',1,2),(83,3,'2015-09-21 11:28:36',1,2),(84,3,'2015-09-21 11:28:36',1,2),(85,3,'2015-09-21 11:28:36',1,2),(86,3,'2015-09-21 11:28:36',1,2),(87,3,'2015-09-21 11:28:36',1,2),(88,3,'2015-09-21 11:28:36',1,2),(89,3,'2015-09-21 11:28:37',1,2),(90,3,'2015-09-21 11:28:37',1,2),(91,3,'2015-09-21 11:28:37',1,2),(92,3,'2015-09-21 11:28:37',1,2),(93,3,'2015-09-21 11:28:38',1,2),(94,3,'2015-09-21 11:28:38',1,2),(95,3,'2015-09-21 11:28:38',1,2),(96,3,'2015-09-21 11:28:38',1,2),(97,3,'2015-09-21 11:28:38',1,2),(98,10,'2015-09-21 11:28:38',1,3),(99,3,'2015-09-21 11:28:39',1,2),(100,3,'2015-09-21 11:28:39',1,2),(101,3,'2015-09-21 11:28:39',1,2),(102,3,'2015-09-21 11:28:39',1,2),(103,3,'2015-09-21 11:28:39',1,2),(104,3,'2015-09-21 11:28:39',1,2),(105,3,'2015-09-21 11:28:40',1,2),(106,5,'2015-09-21 11:28:40',1,3),(107,5,'2015-09-21 11:28:42',1,3),(108,10,'2015-09-21 11:28:42',1,3),(109,4,'2015-09-21 11:28:50',1,2),(110,4,'2015-09-21 11:28:50',1,2),(111,4,'2015-09-21 11:28:51',1,2),(112,4,'2015-09-21 11:28:51',1,2),(113,14,'2015-09-21 13:46:15',1,6),(114,15,'2015-09-21 13:46:16',1,6),(115,14,'2015-09-21 14:07:16',1,6),(116,15,'2015-09-21 14:07:16',1,6),(117,1,'2015-09-21 14:08:52',1,1),(118,2,'2015-09-21 14:08:52',1,2),(119,7,'2015-09-21 14:08:52',1,2),(120,11,'2015-09-21 14:08:52',1,3),(121,5,'2015-09-21 14:19:00',1,3),(122,5,'2015-09-21 14:19:39',1,3),(123,5,'2015-09-21 14:20:26',1,3),(124,5,'2015-09-21 14:20:38',1,3),(125,5,'2015-09-21 14:21:02',1,3),(126,5,'2015-09-21 14:21:27',1,3),(127,5,'2015-09-21 14:21:53',1,3),(128,5,'2015-09-21 14:22:49',1,3),(129,5,'2015-09-21 14:23:19',1,3),(130,5,'2015-09-21 14:23:52',1,3),(131,5,'2015-09-21 14:24:13',1,3),(132,5,'2015-09-21 14:24:32',1,3),(133,5,'2015-09-21 14:25:41',1,3),(134,14,'2015-09-21 14:30:20',1,6),(135,15,'2015-09-21 14:30:20',1,6),(136,14,'2015-09-21 14:30:21',1,6),(137,15,'2015-09-21 14:30:21',1,6),(138,14,'2015-09-21 14:30:22',1,6),(139,15,'2015-09-21 14:30:22',1,6),(140,14,'2015-09-21 14:30:23',1,6),(141,15,'2015-09-21 14:30:24',1,6),(142,14,'2015-09-21 14:30:25',1,6),(143,15,'2015-09-21 14:30:25',1,6),(144,14,'2015-09-21 14:31:05',1,6),(145,15,'2015-09-21 14:31:06',1,6),(146,14,'2015-09-21 14:31:10',1,6),(147,15,'2015-09-21 14:31:10',1,6),(148,14,'2015-09-21 14:32:11',1,6),(149,15,'2015-09-21 14:32:11',1,6),(150,14,'2015-09-21 14:32:42',1,6),(151,15,'2015-09-21 14:32:42',1,6),(152,14,'2015-09-21 14:40:39',1,6),(153,15,'2015-09-21 14:40:39',1,6),(154,14,'2015-09-21 14:42:47',1,6),(155,15,'2015-09-21 14:42:47',1,6),(156,5,'2015-09-21 14:46:16',1,3),(157,18,'2015-09-21 14:55:12',1,5),(158,18,'2015-09-21 14:59:38',1,5),(159,18,'2015-09-21 15:00:14',1,5),(160,18,'2015-09-21 15:00:35',1,5),(161,18,'2015-09-22 07:04:39',1,5),(162,18,'2015-09-22 07:08:32',1,5),(163,18,'2015-09-23 07:44:59',1,5),(164,18,'2015-09-23 07:48:44',1,5),(165,14,'2015-09-23 08:44:28',1,6),(166,15,'2015-09-23 08:44:29',1,6),(167,14,'2015-09-23 08:51:20',1,6),(168,15,'2015-09-23 08:51:20',1,6),(169,12,'2015-09-23 09:22:02',1,3),(170,13,'2015-09-23 09:22:02',1,3),(171,12,'2015-09-23 09:22:42',1,3),(172,13,'2015-09-23 09:22:42',1,3),(173,18,'2015-09-23 09:59:20',1,5),(174,18,'2015-09-23 10:06:37',1,5),(175,18,'2015-09-23 10:10:36',1,5),(176,18,'2015-09-23 10:20:02',2,5),(177,18,'2015-09-23 10:22:22',2,5),(178,18,'2015-09-23 10:24:36',2,5),(179,18,'2015-09-23 10:24:42',2,5),(180,18,'2015-09-23 10:30:34',2,5),(181,18,'2015-09-23 10:50:08',2,5),(182,18,'2015-09-23 11:06:27',1,5),(183,18,'2015-09-23 11:09:55',1,5),(184,18,'2015-09-23 11:11:50',1,5),(185,5,'2015-10-07 10:06:51',1,3);
/*!40000 ALTER TABLE `AttributeValues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AuthenticationTypes`
--

DROP TABLE IF EXISTS `AuthenticationTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AuthenticationTypes` (
  `authTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `authTypeHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `authTypeName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `authTypeIsEnabled` tinyint(1) NOT NULL,
  `authTypeDisplayOrder` int(10) unsigned DEFAULT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`authTypeID`),
  UNIQUE KEY `authTypeHandle` (`authTypeHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AuthenticationTypes`
--

LOCK TABLES `AuthenticationTypes` WRITE;
/*!40000 ALTER TABLE `AuthenticationTypes` DISABLE KEYS */;
INSERT INTO `AuthenticationTypes` VALUES (1,'concrete','Standard',1,0,0),(2,'community','concrete5.org',0,0,0),(3,'facebook','Facebook',0,0,0),(4,'twitter','Twitter',0,0,0),(5,'google','Google',0,0,0);
/*!40000 ALTER TABLE `AuthenticationTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BannedWords`
--

DROP TABLE IF EXISTS `BannedWords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BannedWords` (
  `bwID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bannedWord` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`bwID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BannedWords`
--

LOCK TABLES `BannedWords` WRITE;
/*!40000 ALTER TABLE `BannedWords` DISABLE KEYS */;
INSERT INTO `BannedWords` VALUES (1,'fuck'),(2,'shit'),(3,'bitch'),(4,'ass');
/*!40000 ALTER TABLE `BannedWords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BasicWorkflowPermissionAssignments`
--

DROP TABLE IF EXISTS `BasicWorkflowPermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BasicWorkflowPermissionAssignments` (
  `wfID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`wfID`,`pkID`,`paID`),
  KEY `pkID` (`pkID`),
  KEY `paID` (`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BasicWorkflowPermissionAssignments`
--

LOCK TABLES `BasicWorkflowPermissionAssignments` WRITE;
/*!40000 ALTER TABLE `BasicWorkflowPermissionAssignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `BasicWorkflowPermissionAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BasicWorkflowProgressData`
--

DROP TABLE IF EXISTS `BasicWorkflowProgressData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BasicWorkflowProgressData` (
  `wpID` int(10) unsigned NOT NULL DEFAULT '0',
  `uIDStarted` int(10) unsigned NOT NULL DEFAULT '0',
  `uIDCompleted` int(10) unsigned NOT NULL DEFAULT '0',
  `wpDateCompleted` datetime DEFAULT NULL,
  PRIMARY KEY (`wpID`),
  KEY `uIDStarted` (`uIDStarted`),
  KEY `uIDCompleted` (`uIDCompleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BasicWorkflowProgressData`
--

LOCK TABLES `BasicWorkflowProgressData` WRITE;
/*!40000 ALTER TABLE `BasicWorkflowProgressData` DISABLE KEYS */;
/*!40000 ALTER TABLE `BasicWorkflowProgressData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlockFeatureAssignments`
--

DROP TABLE IF EXISTS `BlockFeatureAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlockFeatureAssignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `faID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`faID`),
  KEY `faID` (`faID`,`cID`,`cvID`),
  KEY `bID` (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlockFeatureAssignments`
--

LOCK TABLES `BlockFeatureAssignments` WRITE;
/*!40000 ALTER TABLE `BlockFeatureAssignments` DISABLE KEYS */;
INSERT INTO `BlockFeatureAssignments` VALUES (145,2,11,1),(145,3,11,1),(145,4,11,1),(161,6,17,2),(161,7,17,2),(161,8,17,2),(161,9,17,2),(1,13,30,3),(1,14,30,3),(1,15,30,3),(1,16,30,3),(1,17,30,3),(1,18,30,3),(1,19,30,3),(1,20,30,3),(1,21,30,3),(1,22,30,3),(1,23,30,3),(1,24,30,3),(1,25,30,3),(1,26,30,3),(1,27,30,3),(1,28,30,3),(1,29,30,3),(149,2,33,4),(167,3,99,5),(161,10,109,6),(145,5,167,7);
/*!40000 ALTER TABLE `BlockFeatureAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlockPermissionAssignments`
--

DROP TABLE IF EXISTS `BlockPermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlockPermissionAssignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`pkID`,`paID`),
  KEY `bID` (`bID`),
  KEY `pkID` (`pkID`),
  KEY `paID` (`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlockPermissionAssignments`
--

LOCK TABLES `BlockPermissionAssignments` WRITE;
/*!40000 ALTER TABLE `BlockPermissionAssignments` DISABLE KEYS */;
INSERT INTO `BlockPermissionAssignments` VALUES (176,1,35,30,138),(176,1,35,31,144),(176,1,35,32,144),(176,1,35,33,144),(176,1,35,34,144),(176,1,35,35,144),(176,1,35,36,144),(176,1,35,37,139),(176,1,35,38,139),(182,1,35,30,158),(182,1,35,31,9),(182,1,35,32,9),(182,1,35,33,9),(182,1,35,34,9),(182,1,35,35,9),(182,1,35,36,9),(182,1,35,37,9),(182,1,35,38,9),(190,1,35,30,138),(190,1,35,31,144),(190,1,35,32,144),(190,1,35,33,144),(190,1,35,34,144),(190,1,35,35,144),(190,1,35,36,144),(190,1,35,37,139),(190,1,35,38,139),(190,2,35,30,138),(190,2,35,31,144),(190,2,35,32,144),(190,2,35,33,144),(190,2,35,34,144),(190,2,35,35,144),(190,2,35,36,144),(190,2,35,37,139),(190,2,35,38,139),(190,3,35,30,138),(190,3,35,31,144),(190,3,35,32,144),(190,3,35,33,144),(190,3,35,34,144),(190,3,35,35,144),(190,3,35,36,144),(190,3,35,37,139),(190,3,35,38,139),(190,4,35,30,138),(190,4,35,31,144),(190,4,35,32,144),(190,4,35,33,144),(190,4,35,34,144),(190,4,35,35,144),(190,4,35,36,144),(190,4,35,37,139),(190,4,35,38,139),(176,1,36,30,138),(176,1,36,31,147),(176,1,36,32,147),(176,1,36,33,147),(176,1,36,34,147),(176,1,36,35,147),(176,1,36,36,147),(176,1,36,37,139),(176,1,36,38,139),(182,1,36,30,158),(182,1,36,31,9),(182,1,36,32,9),(182,1,36,33,9),(182,1,36,34,9),(182,1,36,35,9),(182,1,36,36,9),(182,1,36,37,9),(182,1,36,38,9),(190,1,36,30,138),(190,1,36,31,147),(190,1,36,32,147),(190,1,36,33,147),(190,1,36,34,147),(190,1,36,35,147),(190,1,36,36,147),(190,1,36,37,139),(190,1,36,38,139),(190,2,36,30,138),(190,2,36,31,147),(190,2,36,32,147),(190,2,36,33,147),(190,2,36,34,147),(190,2,36,35,147),(190,2,36,36,147),(190,2,36,37,139),(190,2,36,38,139),(190,3,36,30,138),(190,3,36,31,147),(190,3,36,32,147),(190,3,36,33,147),(190,3,36,34,147),(190,3,36,35,147),(190,3,36,36,147),(190,3,36,37,139),(190,3,36,38,139),(190,4,36,30,138),(190,4,36,31,147),(190,4,36,32,147),(190,4,36,33,147),(190,4,36,34,147),(190,4,36,35,147),(190,4,36,36,147),(190,4,36,37,139),(190,4,36,38,139),(176,1,37,30,138),(176,1,37,31,145),(176,1,37,32,145),(176,1,37,33,145),(176,1,37,34,145),(176,1,37,35,145),(176,1,37,36,145),(176,1,37,37,139),(176,1,37,38,139),(182,1,37,30,158),(182,1,37,31,9),(182,1,37,32,9),(182,1,37,33,9),(182,1,37,34,9),(182,1,37,35,9),(182,1,37,36,9),(182,1,37,37,9),(182,1,37,38,9),(190,1,37,30,138),(190,1,37,31,145),(190,1,37,32,145),(190,1,37,33,145),(190,1,37,34,145),(190,1,37,35,145),(190,1,37,36,145),(190,1,37,37,139),(190,1,37,38,139),(190,2,37,30,138),(190,2,37,31,145),(190,2,37,32,145),(190,2,37,33,145),(190,2,37,34,145),(190,2,37,35,145),(190,2,37,36,145),(190,2,37,37,139),(190,2,37,38,139),(190,3,37,30,138),(190,3,37,31,145),(190,3,37,32,145),(190,3,37,33,145),(190,3,37,34,145),(190,3,37,35,145),(190,3,37,36,145),(190,3,37,37,139),(190,3,37,38,139),(190,4,37,30,138),(190,4,37,31,145),(190,4,37,32,145),(190,4,37,33,145),(190,4,37,34,145),(190,4,37,35,145),(190,4,37,36,145),(190,4,37,37,139),(190,4,37,38,139);
/*!40000 ALTER TABLE `BlockPermissionAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlockRelations`
--

DROP TABLE IF EXISTS `BlockRelations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlockRelations` (
  `brID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `originalBID` int(10) unsigned NOT NULL DEFAULT '0',
  `relationType` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`brID`),
  KEY `bID` (`bID`),
  KEY `originalBID` (`originalBID`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlockRelations`
--

LOCK TABLES `BlockRelations` WRITE;
/*!40000 ALTER TABLE `BlockRelations` DISABLE KEYS */;
INSERT INTO `BlockRelations` VALUES (1,13,12,'DUPLICATE'),(2,14,13,'DUPLICATE'),(3,15,14,'DUPLICATE'),(4,18,15,'DUPLICATE'),(5,23,18,'DUPLICATE'),(6,25,24,'DUPLICATE'),(7,26,25,'DUPLICATE'),(8,66,65,'DUPLICATE'),(10,71,26,'DUPLICATE'),(11,72,71,'DUPLICATE'),(12,78,77,'DUPLICATE'),(13,83,82,'DUPLICATE'),(14,97,94,'DUPLICATE'),(15,98,94,'DUPLICATE'),(16,101,100,'DUPLICATE'),(17,109,17,'DUPLICATE'),(18,110,72,'DUPLICATE'),(19,162,161,'DUPLICATE'),(20,163,28,'DUPLICATE'),(21,164,83,'DUPLICATE'),(22,165,77,'DUPLICATE'),(23,166,108,'DUPLICATE'),(24,167,11,'DUPLICATE'),(25,169,110,'DUPLICATE');
/*!40000 ALTER TABLE `BlockRelations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlockTypePermissionBlockTypeAccessList`
--

DROP TABLE IF EXISTS `BlockTypePermissionBlockTypeAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlockTypePermissionBlockTypeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlockTypePermissionBlockTypeAccessList`
--

LOCK TABLES `BlockTypePermissionBlockTypeAccessList` WRITE;
/*!40000 ALTER TABLE `BlockTypePermissionBlockTypeAccessList` DISABLE KEYS */;
/*!40000 ALTER TABLE `BlockTypePermissionBlockTypeAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlockTypePermissionBlockTypeAccessListCustom`
--

DROP TABLE IF EXISTS `BlockTypePermissionBlockTypeAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlockTypePermissionBlockTypeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `btID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`btID`),
  KEY `peID` (`peID`),
  KEY `btID` (`btID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlockTypePermissionBlockTypeAccessListCustom`
--

LOCK TABLES `BlockTypePermissionBlockTypeAccessListCustom` WRITE;
/*!40000 ALTER TABLE `BlockTypePermissionBlockTypeAccessListCustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `BlockTypePermissionBlockTypeAccessListCustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlockTypeSetBlockTypes`
--

DROP TABLE IF EXISTS `BlockTypeSetBlockTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlockTypeSetBlockTypes` (
  `btID` int(10) unsigned NOT NULL DEFAULT '0',
  `btsID` int(10) unsigned NOT NULL DEFAULT '0',
  `displayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`btID`,`btsID`),
  KEY `btsID` (`btsID`,`displayOrder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlockTypeSetBlockTypes`
--

LOCK TABLES `BlockTypeSetBlockTypes` WRITE;
/*!40000 ALTER TABLE `BlockTypeSetBlockTypes` DISABLE KEYS */;
INSERT INTO `BlockTypeSetBlockTypes` VALUES (12,1,0),(25,1,1),(27,1,2),(15,1,3),(26,1,4),(19,1,5),(11,2,0),(18,2,1),(28,2,2),(30,2,3),(29,2,4),(13,2,5),(36,2,6),(20,2,7),(31,2,8),(35,2,9),(17,3,0),(32,3,1),(14,3,2),(34,4,0),(5,4,1),(21,4,2),(22,4,3),(23,4,4),(16,5,0),(33,5,1),(37,5,2),(38,5,3),(24,5,4);
/*!40000 ALTER TABLE `BlockTypeSetBlockTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlockTypeSets`
--

DROP TABLE IF EXISTS `BlockTypeSets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlockTypeSets` (
  `btsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `btsName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `btsHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `btsDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`btsID`),
  UNIQUE KEY `btsHandle` (`btsHandle`),
  KEY `btsDisplayOrder` (`btsDisplayOrder`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlockTypeSets`
--

LOCK TABLES `BlockTypeSets` WRITE;
/*!40000 ALTER TABLE `BlockTypeSets` DISABLE KEYS */;
INSERT INTO `BlockTypeSets` VALUES (1,'Basic','basic',0,0),(2,'Navigation','navigation',0,0),(3,'Forms','form',0,0),(4,'Social Networking','social',0,0),(5,'Multimedia','multimedia',0,0);
/*!40000 ALTER TABLE `BlockTypeSets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlockTypes`
--

DROP TABLE IF EXISTS `BlockTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlockTypes` (
  `btID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `btHandle` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `btName` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `btDescription` text COLLATE utf8_unicode_ci,
  `btCopyWhenPropagate` tinyint(1) NOT NULL DEFAULT '0',
  `btIncludeAll` tinyint(1) NOT NULL DEFAULT '0',
  `btIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `btSupportsInlineAdd` tinyint(1) NOT NULL DEFAULT '0',
  `btSupportsInlineEdit` tinyint(1) NOT NULL DEFAULT '0',
  `btIgnorePageThemeGridFrameworkContainer` tinyint(1) NOT NULL DEFAULT '0',
  `btDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `btInterfaceWidth` int(10) unsigned NOT NULL DEFAULT '400',
  `btInterfaceHeight` int(10) unsigned NOT NULL DEFAULT '400',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`btID`),
  UNIQUE KEY `btHandle` (`btHandle`),
  KEY `btDisplayOrder` (`btDisplayOrder`,`btName`,`btID`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlockTypes`
--

LOCK TABLES `BlockTypes` WRITE;
/*!40000 ALTER TABLE `BlockTypes` DISABLE KEYS */;
INSERT INTO `BlockTypes` VALUES (1,'core_area_layout','Area Layout','Proxy block for area layouts.',0,0,1,1,1,0,0,400,400,0),(2,'core_page_type_composer_control_output','Composer Control','Proxy block for blocks that need to be output through composer.',0,0,1,0,0,0,0,400,400,0),(3,'core_scrapbook_display','Scrapbook Display','Proxy block for blocks pasted through the scrapbook.',0,0,1,0,0,0,0,400,400,0),(4,'core_stack_display','Stack Display','Proxy block for stacks added through the UI.',0,0,1,0,0,0,0,400,400,0),(5,'core_conversation','Conversation','Displays conversations on a page.',1,0,0,0,0,0,26,400,400,0),(6,'dashboard_featured_addon','Dashboard Featured Add-On','Features an add-on from concrete5.org.',0,0,1,0,0,0,0,300,100,0),(7,'dashboard_featured_theme','Dashboard Featured Theme','Features a theme from concrete5.org.',0,0,1,0,0,0,0,300,100,0),(8,'dashboard_newsflow_latest','Dashboard Newsflow Latest','Grabs the latest newsflow data from concrete5.org.',0,0,1,0,0,0,0,400,400,0),(9,'dashboard_app_status','Dashboard App Status','Displays update and welcome back information on your dashboard.',0,0,1,0,0,0,0,400,400,0),(10,'dashboard_site_activity','Dashboard Site Activity','Displays a summary of website activity.',0,0,1,0,0,0,0,400,400,0),(11,'autonav','Auto-Nav','Creates navigation trees and sitemaps.',0,0,0,0,0,0,27,800,350,0),(12,'content','Content','HTML/WYSIWYG Editor Content.',0,0,0,1,1,0,28,600,465,0),(13,'date_navigation','Date Navigation','Displays a list of months to filter a page list by.',0,0,0,0,0,0,29,400,450,0),(14,'external_form','External Form','Include external forms in the filesystem and place them on pages.',0,0,0,0,0,0,38,370,175,0),(15,'file','File','Link to files stored in the asset library.',0,0,0,0,0,0,37,300,320,0),(16,'page_attribute_display','Page Attribute Display','Displays the value of a page attribute for the current page.',0,0,0,0,0,0,36,500,365,0),(17,'form','Form','Build simple forms and surveys.',0,0,0,0,0,0,35,420,430,0),(18,'page_title','Page Title','Displays a Page\'s Title',0,0,0,0,0,0,34,400,400,0),(19,'feature','Feature','Displays an icon, a title, and a short paragraph description.',0,0,0,0,0,0,33,400,520,0),(20,'topic_list','Topic List','Displays a list of your site\'s topics, allowing you to click on them to filter a page list.',0,0,0,0,0,0,32,400,400,0),(21,'social_links','Social Links','Allows users to add social icons to their website',0,0,0,0,0,0,31,400,400,0),(22,'testimonial','Testimonial','Displays a quote or paragraph next to biographical information and a person\'s picture.',0,0,0,0,0,0,30,450,560,0),(23,'share_this_page','Share This Page','Allows users to share this page with social networks.',0,0,0,0,0,0,25,400,400,0),(24,'google_map','Google Map','Enter an address and a Google Map of that location will be placed in your page.',0,0,0,0,0,0,24,400,320,0),(25,'html','HTML','For adding HTML by hand.',0,0,0,0,0,1,23,600,500,0),(26,'horizontal_rule','Horizontal Rule','Adds a thin hairline horizontal divider to the page.',0,0,0,0,0,1,10,400,400,0),(27,'image','Image','Adds images and onstates from the library to pages.',0,0,0,0,0,0,9,400,550,0),(28,'faq','FAQ','Frequently Asked Questions Block',0,0,0,0,0,0,8,600,465,0),(29,'next_previous','Next & Previous Nav','Navigate through sibling pages.',0,0,0,0,0,0,7,430,400,0),(30,'page_list','Page List','List pages based on type, area.',0,0,0,0,0,0,6,800,350,0),(31,'rss_displayer','RSS Displayer','Fetch, parse and display the contents of an RSS or Atom feed.',0,0,0,0,0,0,5,400,550,0),(32,'search','Search','Add a search box to your site.',0,0,0,0,0,0,4,400,420,0),(33,'image_slider','Image Slider','Display your images and captions in an attractive slideshow format.',0,0,0,0,0,1,3,600,465,0),(34,'survey','Survey','Provide a simple survey, along with results in a pie chart format.',0,0,0,0,0,0,2,420,400,0),(35,'switch_language','Switch Language','Adds a front-end language switcher to your website.',0,0,0,0,0,0,11,500,150,0),(36,'tags','Tags','List pages based on type, area.',0,0,0,0,0,0,12,450,439,0),(37,'video','Video Player','Embeds uploaded video into a web page. Supports WebM, Ogg, and Quicktime/MPEG4 formats.',0,0,0,0,0,0,13,320,270,0),(38,'youtube','YouTube Video','Embeds a YouTube Video in your web page.',0,0,0,0,0,0,22,400,430,0),(39,'generarmapa','Mapas','Administrador de los mapas',0,0,0,0,0,0,21,1050,600,0),(40,'listaritems','Galería de Fotos','Despliega una lista de Imagenes Dinamicas!!',0,0,0,0,0,1,20,1024,600,0),(42,'agregarslider','Slider de Fotos','Despliega tus imagenes o noticias en un Slider de Fotos!!',0,0,0,0,0,1,19,700,500,0),(43,'generarcalendario','Calendario','Administrador del Calendario',0,0,0,0,0,0,18,1024,750,0),(44,'boton','Boton','Agrega un Boton al sitio web',0,0,0,0,0,0,17,950,400,0),(51,'listartramites','Lista de Tramites','Despliega una lista de Trámites que la Institución Ofrece!!',0,0,0,0,0,1,16,1024,750,0),(52,'leytransparencia','Ley 5189/14','Administrador de la Ley Transparencia 5189/14',0,0,0,0,0,0,15,600,500,0),(53,'transparenciaactiva','Transparencia Activa','Administrador de Transparencia Activa permite insertar por cada bloque un conjunto de archivos del mismo tema, y asociarle un Autor del mismo como asi tambien indicar a que mes corresponde',0,0,0,0,0,0,14,1024,600,0),(54,'iframe','Iframe Popup','Agrega un Popup con Iframe',0,0,0,0,0,0,1,400,550,0);
/*!40000 ALTER TABLE `BlockTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Blocks`
--

DROP TABLE IF EXISTS `Blocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Blocks` (
  `bID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bName` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `bDateModified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `bFilename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bIsActive` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `btID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned DEFAULT NULL,
  `btCachedBlockRecord` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`bID`),
  KEY `btID` (`btID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB AUTO_INCREMENT=170 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Blocks`
--

LOCK TABLES `Blocks` WRITE;
/*!40000 ALTER TABLE `Blocks` DISABLE KEYS */;
INSERT INTO `Blocks` VALUES (1,'','2015-09-21 11:28:40','2015-09-21 11:28:40',NULL,'0',12,1,NULL),(2,'','2015-09-21 11:28:40','2015-09-21 11:28:40',NULL,'0',9,1,NULL),(3,'','2015-09-21 11:28:40','2015-09-21 11:28:40',NULL,'0',10,1,NULL),(4,'','2015-09-21 11:28:40','2015-09-21 11:28:40',NULL,'0',8,1,NULL),(5,'','2015-09-21 11:28:41','2015-09-21 11:28:41',NULL,'0',8,1,NULL),(6,'','2015-09-21 11:28:41','2015-09-21 11:28:41',NULL,'0',7,1,NULL),(7,'','2015-09-21 11:28:41','2015-09-21 11:28:41',NULL,'0',6,1,NULL),(8,'','2015-09-21 11:28:41','2015-09-21 11:28:41',NULL,'0',8,1,NULL),(9,'','2015-09-21 11:28:54','2015-09-21 11:28:54',NULL,'0',2,1,NULL),(10,'','2015-09-21 13:34:34','2015-09-21 13:34:34',NULL,'0',12,1,NULL),(11,'','2015-09-21 13:47:05','2015-09-21 13:47:05',NULL,'0',27,1,NULL),(12,'','2015-09-21 13:54:36','2015-09-21 13:54:36',NULL,'0',32,1,NULL),(13,'','2015-09-21 13:57:01','2015-09-21 13:57:02',NULL,'1',32,1,NULL),(14,'','2015-09-21 13:57:08','2015-09-21 13:57:08',NULL,'1',32,1,NULL),(15,'','2015-09-21 13:57:30','2015-09-21 13:57:30',NULL,'1',32,1,NULL),(16,'','2015-09-21 13:59:53','2015-09-21 13:59:53',NULL,'0',11,1,NULL),(17,'','2015-09-21 14:07:22','2015-09-21 14:07:22',NULL,'0',27,1,NULL),(18,'','2015-09-21 14:07:53','2015-09-21 14:07:54','Estilo A','1',32,1,NULL),(19,'','2015-09-21 14:08:15','2015-09-21 14:08:21','SENATICs.php','0',11,1,NULL),(20,'','2015-09-21 14:15:23','2015-09-21 14:15:34','SENATICs.php','0',11,1,NULL),(21,'','2015-09-21 14:18:03','2015-09-21 14:18:03',NULL,'0',18,1,NULL),(22,'','2015-09-21 14:26:27','2015-09-21 14:26:39','Estilo A','0',32,1,NULL),(23,'','2015-09-21 14:27:08','2015-09-21 14:27:08','Estilo A','1',32,1,NULL),(24,'','2015-09-21 14:30:38','2015-09-21 14:30:38',NULL,'0',42,1,NULL),(25,'','2015-09-21 14:33:05','2015-09-21 14:33:05',NULL,'1',42,1,NULL),(26,'','2015-09-21 14:34:52','2015-09-21 14:34:52',NULL,'1',42,1,NULL),(27,'','2015-09-21 14:37:37','2015-09-21 14:37:37',NULL,'0',1,1,NULL),(28,'','2015-09-21 14:38:41','2015-09-21 14:38:41',NULL,'0',52,1,NULL),(29,'','2015-09-21 14:40:01','2015-09-21 14:40:01',NULL,'0',12,1,NULL),(30,'','2015-09-21 14:40:54','2015-09-21 14:40:54',NULL,'0',27,1,NULL),(31,'','2015-09-21 14:41:32','2015-09-21 14:41:32',NULL,'0',25,1,NULL),(32,'','2015-09-21 14:42:05','2015-09-21 14:42:05',NULL,'0',12,1,NULL),(33,'','2015-09-21 14:43:32','2015-09-21 14:43:32',NULL,'0',27,1,NULL),(34,'','2015-09-21 14:48:09','2015-09-21 14:48:09',NULL,'0',1,1,NULL),(35,'','2015-09-21 14:48:21','2015-09-21 14:48:21',NULL,'0',18,1,NULL),(36,'','2015-09-21 14:48:50','2015-09-21 14:49:10','','0',16,1,NULL),(37,'','2015-09-21 14:49:39','2015-09-21 14:49:48','Camino de Miga.php','0',11,1,NULL),(38,'','2015-09-21 14:50:03','2015-09-21 14:50:03',NULL,'0',2,1,NULL),(39,'','2015-09-21 14:50:09','2015-09-21 14:50:09',NULL,'0',26,1,NULL),(40,'','2015-09-21 14:50:23','2015-09-21 14:52:19',NULL,'0',1,1,NULL),(41,'','2015-09-21 14:50:38','2015-09-21 14:51:23',NULL,'0',12,1,NULL),(42,'','2015-09-21 14:51:45','2015-09-21 14:52:09','','0',23,1,NULL),(43,'','2015-09-21 14:53:14','2015-09-21 14:53:14',NULL,'0',12,1,NULL),(44,'','2015-09-21 14:53:59','2015-09-21 14:54:56','SENATICs Estilo E [3 col] (Estilo Albumes-Slide)','0',30,1,NULL),(53,'','2015-09-21 14:55:56','2015-09-21 14:55:56',NULL,'0',12,1,NULL),(54,'','2015-09-21 14:57:24','2015-09-21 14:57:55','SENATICs Estilo C [img small] (Lista Horizontal)','0',30,1,NULL),(55,'','2015-09-21 14:59:02','2015-09-21 14:59:13','SENATICs Estilo C [img big] (Lista Horizontal)','0',30,1,NULL),(62,'','2015-09-21 15:00:11','2015-09-21 15:00:11',NULL,'0',12,1,NULL),(63,'','2015-09-21 15:00:14','2015-09-21 15:00:14',NULL,'0',12,1,NULL),(64,'','2015-09-21 15:00:35','2015-09-21 15:00:35',NULL,'0',12,1,NULL),(65,'','2015-09-21 15:02:17','2015-09-21 15:02:27',NULL,'0',44,1,NULL),(66,'','2015-09-21 15:03:05','2015-09-21 15:03:05',NULL,'1',44,1,NULL),(67,'','2015-09-21 15:05:34','2015-09-21 15:05:34',NULL,'0',25,1,NULL),(69,'','2015-09-22 07:04:39','2015-09-22 07:04:39',NULL,'0',12,1,NULL),(70,'','2015-09-22 07:08:33','2015-09-22 07:08:33',NULL,'0',12,1,NULL),(71,'','2015-09-23 07:28:01','2015-09-23 07:29:39','','1',42,1,NULL),(72,'','2015-09-23 07:30:03','2015-09-23 07:32:44','Detalles a la izquierda.php','1',42,1,NULL),(77,'','2015-09-23 07:43:49','2015-09-23 07:43:49',NULL,'0',40,1,NULL),(78,'','2015-09-23 07:46:35','2015-09-23 07:46:35',NULL,'1',40,1,NULL),(79,'','2015-09-23 07:48:00','2015-09-23 07:48:11','SENATICs Estilo D [3 col] (Estilo Albumes)','0',30,1,NULL),(82,'','2015-09-23 08:15:16','2015-09-23 08:34:36','','0',53,1,NULL),(83,'','2015-09-23 08:19:20','2015-09-23 08:33:01','','1',53,1,NULL),(84,'','2015-09-23 08:20:56','2015-09-23 08:21:10','SENATICs Estilo B (Lista Horizontal - Simple)','0',30,1,NULL),(85,'','2015-09-23 08:36:05','2015-09-23 08:36:05',NULL,'0',1,1,NULL),(86,'','2015-09-23 08:36:41','2015-09-23 08:36:52','Menu lateral.php','0',11,1,NULL),(87,'','2015-09-23 08:37:23','2015-09-23 08:37:23',NULL,'0',1,1,NULL),(88,'','2015-09-23 08:37:29','2015-09-23 08:37:29',NULL,'0',3,1,NULL),(89,'','2015-09-23 08:39:24','2015-09-23 08:39:24',NULL,'0',1,1,NULL),(90,'','2015-09-23 08:39:28','2015-09-23 08:39:28',NULL,'0',3,1,NULL),(91,'','2015-09-23 08:39:55','2015-09-23 08:39:55',NULL,'0',1,1,NULL),(92,'','2015-09-23 08:40:02','2015-09-23 08:40:02',NULL,'0',3,1,NULL),(93,'','2015-09-23 08:40:40','2015-09-23 08:40:40',NULL,'0',1,1,NULL),(94,'','2015-09-23 08:41:30','2015-09-23 08:42:23','Estilo A','0',19,1,NULL),(97,'','2015-09-23 08:43:24','2015-09-23 08:43:24','Estilo A','1',19,1,NULL),(98,'','2015-09-23 08:43:43','2015-09-23 08:43:44','Estilo A','1',19,1,NULL),(99,'','2015-09-23 08:44:37','2015-09-23 08:45:00','','0',27,1,NULL),(100,'','2015-09-23 08:46:20','2015-09-23 08:46:20',NULL,'0',43,1,NULL),(101,'','2015-09-23 08:47:32','2015-09-23 08:47:43',NULL,'1',43,1,NULL),(102,'','2015-09-23 08:48:52','2015-09-23 08:48:52',NULL,'0',1,1,NULL),(103,'','2015-09-23 08:49:56','2015-09-23 08:49:56',NULL,'0',17,1,NULL),(104,'','2015-09-23 08:51:36','2015-09-23 08:51:36',NULL,'0',12,1,NULL),(105,'','2015-09-23 09:03:16','2015-09-23 09:03:16',NULL,'0',39,1,NULL),(106,'','2015-09-23 09:04:53','2015-09-23 09:05:07','SENATICs Estilo E [3 col] (Estilo Albumes-Slide)','0',30,1,NULL),(107,'','2015-09-23 09:05:31','2015-09-23 09:05:31',NULL,'0',12,1,NULL),(108,'','2015-09-23 09:10:02','2015-09-23 09:10:02',NULL,'0',51,1,NULL),(109,'','2015-09-23 09:10:57','2015-09-23 09:10:58','','1',27,1,NULL),(110,'','2015-09-23 09:11:32','2015-09-23 09:11:32','Detalles a la izquierda.php','1',42,1,NULL),(126,'','2015-09-23 10:08:17','2015-09-23 10:08:17',NULL,'0',12,1,NULL),(127,'','2015-09-23 10:10:36','2015-09-23 10:10:49',NULL,'0',12,1,NULL),(140,'','2015-09-23 10:24:23','2015-09-23 10:24:23',NULL,'0',12,2,NULL),(141,'','2015-09-23 10:24:37','2015-09-23 10:24:37',NULL,'0',12,2,NULL),(143,'','2015-09-23 10:24:51','2015-09-23 10:24:51',NULL,'0',12,2,NULL),(144,'','2015-09-23 10:27:57','2015-09-23 10:27:57',NULL,'0',1,2,NULL),(145,'','2015-09-23 10:30:34','2015-09-23 10:30:34',NULL,'0',12,2,NULL),(157,'','2015-09-23 11:07:28','2015-09-23 11:07:28',NULL,'0',12,1,NULL),(159,'','2015-09-23 11:09:57','2015-09-23 11:09:57',NULL,'0',12,1,NULL),(161,'','2015-09-23 11:11:54','2015-09-23 11:11:54',NULL,'0',12,1,NULL),(162,'','2015-09-23 11:12:41','2015-09-23 11:12:41',NULL,'1',12,1,NULL),(163,'','2015-09-23 11:13:49','2015-09-23 11:13:49',NULL,'1',52,1,NULL),(164,'','2015-09-23 11:14:45','2015-09-23 11:14:45','','1',53,1,NULL),(165,'','2015-09-23 11:16:24','2015-09-23 11:18:28',NULL,'1',40,1,NULL),(166,'','2015-10-05 09:28:13','2015-10-05 09:28:13',NULL,'1',51,1,NULL),(167,'','2015-10-05 09:28:48','2015-10-05 09:28:48',NULL,'1',27,1,NULL),(168,'','2015-10-08 05:43:08','2015-10-08 05:43:08',NULL,'0',26,1,NULL),(169,'','2015-10-08 13:31:41','2015-10-08 13:31:41','','1',42,1,NULL);
/*!40000 ALTER TABLE `Blocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionAttributeValues`
--

DROP TABLE IF EXISTS `CollectionAttributeValues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionAttributeValues` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `avID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`akID`),
  KEY `akID` (`akID`),
  KEY `avID` (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionAttributeValues`
--

LOCK TABLES `CollectionAttributeValues` WRITE;
/*!40000 ALTER TABLE `CollectionAttributeValues` DISABLE KEYS */;
INSERT INTO `CollectionAttributeValues` VALUES (2,1,4,1),(3,1,3,2),(4,1,3,3),(5,1,3,4),(6,1,3,5),(8,1,3,6),(9,1,3,7),(10,1,3,8),(11,1,5,9),(11,1,3,10),(12,1,3,11),(13,1,3,12),(14,1,3,13),(15,1,3,14),(16,1,3,15),(16,1,5,16),(17,1,3,17),(17,1,5,18),(19,1,3,19),(20,1,3,20),(22,1,3,21),(23,1,3,22),(24,1,3,23),(25,1,3,24),(26,1,3,25),(28,1,3,26),(29,1,3,27),(29,1,5,28),(31,1,5,29),(32,1,5,30),(33,1,5,31),(34,1,5,32),(35,1,5,33),(36,1,5,34),(38,1,5,35),(39,1,3,36),(40,1,3,37),(41,1,3,38),(43,1,4,39),(44,1,3,40),(48,1,3,41),(50,1,5,42),(50,1,10,43),(50,1,3,44),(51,1,3,45),(52,1,3,46),(53,1,5,47),(54,1,3,48),(55,1,3,49),(56,1,3,50),(56,1,5,51),(57,1,3,52),(58,1,3,53),(59,1,3,54),(61,1,3,55),(62,1,3,56),(63,1,3,57),(64,1,3,58),(65,1,3,59),(66,1,3,60),(67,1,3,61),(68,1,3,62),(74,1,3,63),(75,1,3,64),(76,1,3,65),(77,1,3,66),(78,1,3,67),(80,1,3,68),(81,1,3,69),(82,1,3,70),(83,1,3,71),(85,1,3,72),(86,1,3,73),(87,1,3,74),(88,1,3,75),(90,1,3,76),(91,1,3,77),(94,1,3,78),(95,1,3,79),(96,1,3,80),(97,1,3,81),(99,1,3,82),(100,1,3,83),(101,1,3,84),(102,1,3,85),(103,1,3,86),(104,1,3,87),(105,1,3,88),(106,1,3,89),(107,1,3,90),(108,1,3,91),(109,1,3,92),(110,1,3,93),(112,1,3,94),(113,1,3,95),(114,1,3,96),(115,1,3,97),(117,1,10,98),(118,1,3,99),(119,1,3,100),(120,1,3,101),(121,1,3,102),(122,1,3,103),(123,1,3,104),(125,1,3,105),(126,1,5,106),(127,1,5,107),(127,1,10,108),(128,1,4,109),(129,1,4,110),(130,1,4,111),(133,1,4,112),(1,6,1,117),(1,7,1,117),(1,8,1,117),(1,9,1,117),(1,10,1,117),(1,11,1,117),(1,12,1,117),(1,13,1,117),(1,14,1,117),(1,15,1,117),(1,16,1,117),(1,17,1,117),(1,18,1,117),(1,19,1,117),(1,20,1,117),(1,21,1,117),(1,22,1,117),(1,23,1,117),(1,24,1,117),(1,25,1,117),(1,26,1,117),(1,27,1,117),(1,28,1,117),(1,29,1,117),(1,6,2,118),(1,7,2,118),(1,8,2,118),(1,9,2,118),(1,10,2,118),(1,11,2,118),(1,12,2,118),(1,13,2,118),(1,14,2,118),(1,15,2,118),(1,16,2,118),(1,17,2,118),(1,18,2,118),(1,19,2,118),(1,20,2,118),(1,21,2,118),(1,22,2,118),(1,23,2,118),(1,24,2,118),(1,25,2,118),(1,26,2,118),(1,27,2,118),(1,28,2,118),(1,29,2,118),(1,6,7,119),(1,7,7,119),(1,8,7,119),(1,9,7,119),(1,10,7,119),(1,11,7,119),(1,12,7,119),(1,13,7,119),(1,14,7,119),(1,15,7,119),(1,16,7,119),(1,17,7,119),(1,18,7,119),(1,19,7,119),(1,20,7,119),(1,21,7,119),(1,22,7,119),(1,23,7,119),(1,24,7,119),(1,25,7,119),(1,26,7,119),(1,27,7,119),(1,28,7,119),(1,29,7,119),(1,6,11,120),(1,7,11,120),(1,8,11,120),(1,9,11,120),(1,10,11,120),(1,11,11,120),(1,12,11,120),(1,13,11,120),(1,14,11,120),(1,15,11,120),(1,16,11,120),(1,17,11,120),(1,18,11,120),(1,19,11,120),(1,20,11,120),(1,21,11,120),(1,22,11,120),(1,23,11,120),(1,24,11,120),(1,25,11,120),(1,26,11,120),(1,27,11,120),(1,28,11,120),(1,29,11,120),(164,1,5,121),(165,1,5,122),(165,2,5,123),(165,3,5,123),(166,1,5,124),(166,2,5,124),(166,3,5,124),(167,1,5,125),(167,2,5,125),(167,3,5,125),(168,1,5,126),(168,2,5,126),(169,1,5,127),(169,2,5,127),(170,1,5,128),(170,2,5,128),(170,3,5,128),(171,1,5,129),(171,2,5,129),(172,1,5,130),(172,2,5,130),(172,3,5,130),(173,1,5,131),(173,2,5,131),(173,3,5,131),(174,1,5,132),(174,2,5,132),(175,1,5,133),(175,2,5,133),(176,1,5,156),(177,1,5,156),(177,2,5,156),(177,3,5,156),(177,4,5,156),(178,1,5,156),(178,2,5,156),(178,3,5,156),(178,4,5,156),(179,1,5,156),(180,1,5,156),(180,2,5,156),(181,1,5,156),(182,1,5,156),(183,1,5,156),(183,2,5,156),(183,3,5,156),(183,4,5,156),(183,5,5,156),(186,1,5,156),(186,2,5,156),(186,3,5,156),(187,1,5,156),(188,1,5,156),(188,2,5,156),(189,1,5,156),(189,2,5,156),(189,3,5,156),(190,1,5,156),(190,2,5,156),(190,3,5,156),(190,4,5,156),(177,1,18,157),(178,1,18,158),(178,2,18,159),(177,2,18,160),(177,3,18,161),(177,4,18,162),(180,1,18,163),(180,2,18,163),(181,1,18,164),(178,3,18,174),(178,4,18,175),(186,2,18,178),(187,1,18,179),(186,3,18,180),(188,1,18,181),(188,2,18,181),(190,3,18,184),(190,4,18,184),(191,1,5,185);
/*!40000 ALTER TABLE `CollectionAttributeValues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionSearchIndexAttributes`
--

DROP TABLE IF EXISTS `CollectionSearchIndexAttributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionSearchIndexAttributes` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `ak_meta_title` longtext COLLATE utf8_unicode_ci,
  `ak_meta_description` longtext COLLATE utf8_unicode_ci,
  `ak_meta_keywords` longtext COLLATE utf8_unicode_ci,
  `ak_icon_dashboard` longtext COLLATE utf8_unicode_ci,
  `ak_exclude_nav` tinyint(1) DEFAULT '0',
  `ak_exclude_page_list` tinyint(1) DEFAULT '0',
  `ak_header_extra_content` longtext COLLATE utf8_unicode_ci,
  `ak_tags` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ak_is_featured` tinyint(1) DEFAULT '0',
  `ak_exclude_search_index` tinyint(1) DEFAULT '0',
  `ak_exclude_sitemapxml` tinyint(1) DEFAULT '0',
  `ak_thumbnail` int(11) DEFAULT '0',
  PRIMARY KEY (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionSearchIndexAttributes`
--

LOCK TABLES `CollectionSearchIndexAttributes` WRITE;
/*!40000 ALTER TABLE `CollectionSearchIndexAttributes` DISABLE KEYS */;
INSERT INTO `CollectionSearchIndexAttributes` VALUES (1,'','',NULL,NULL,0,0,'',NULL,0,0,0,0),(2,NULL,NULL,NULL,'fa fa-th-large',0,0,NULL,NULL,0,0,0,0),(3,NULL,NULL,'pages, add page, delete page, copy, move, alias',NULL,0,0,NULL,NULL,0,0,0,0),(4,NULL,NULL,'pages, add page, delete page, copy, move, alias',NULL,0,0,NULL,NULL,0,0,0,0),(5,NULL,NULL,'pages, add page, delete page, copy, move, alias, bulk',NULL,0,0,NULL,NULL,0,0,0,0),(6,NULL,NULL,'find page, search page, search, find, pages, sitemap',NULL,0,0,NULL,NULL,0,0,0,0),(8,NULL,NULL,'add file, delete file, copy, move, alias, resize, crop, rename, images, title, attribute',NULL,0,0,NULL,NULL,0,0,0,0),(9,NULL,NULL,'file, file attributes, title, attribute, description, rename',NULL,0,0,NULL,NULL,0,0,0,0),(10,NULL,NULL,'files, category, categories',NULL,0,0,NULL,NULL,0,0,0,0),(11,NULL,NULL,'new file set',NULL,1,0,NULL,NULL,0,0,0,0),(12,NULL,NULL,'users, groups, people, find, delete user, remove user, change password, password',NULL,0,0,NULL,NULL,0,0,0,0),(13,NULL,NULL,'find, search, people, delete user, remove user, change password, password',NULL,0,0,NULL,NULL,0,0,0,0),(14,NULL,NULL,'user, group, people, permissions, expire, badges',NULL,0,0,NULL,NULL,0,0,0,0),(15,NULL,NULL,'user attributes, user data, gather data, registration data',NULL,0,0,NULL,NULL,0,0,0,0),(16,NULL,NULL,'new user, create',NULL,1,0,NULL,NULL,0,0,0,0),(17,NULL,NULL,'new user group, new group, group, create',NULL,1,0,NULL,NULL,0,0,0,0),(19,NULL,NULL,'group set',NULL,0,0,NULL,NULL,0,0,0,0),(20,NULL,NULL,'community, points, karma',NULL,0,0,NULL,NULL,0,0,0,0),(22,NULL,NULL,'action, community actions',NULL,0,0,NULL,NULL,0,0,0,0),(23,NULL,NULL,'forms, log, error, email, mysql, exception, survey',NULL,0,0,NULL,NULL,0,0,0,0),(24,NULL,NULL,'forms, questions, response, data',NULL,0,0,NULL,NULL,0,0,0,0),(25,NULL,NULL,'questions, quiz, response',NULL,0,0,NULL,NULL,0,0,0,0),(26,NULL,NULL,'forms, log, error, email, mysql, exception, survey, history',NULL,0,0,NULL,NULL,0,0,0,0),(28,NULL,NULL,'new theme, theme, active theme, change theme, template, css',NULL,0,0,NULL,NULL,0,0,0,0),(29,NULL,NULL,'page types',NULL,1,0,NULL,NULL,0,0,0,0),(31,NULL,NULL,NULL,NULL,1,0,NULL,NULL,0,0,0,0),(32,NULL,NULL,NULL,NULL,1,0,NULL,NULL,0,0,0,0),(33,NULL,NULL,NULL,NULL,1,0,NULL,NULL,0,0,0,0),(34,NULL,NULL,NULL,NULL,1,0,NULL,NULL,0,0,0,0),(35,NULL,NULL,NULL,NULL,1,0,NULL,NULL,0,0,0,0),(36,NULL,NULL,NULL,NULL,1,0,NULL,NULL,0,0,0,0),(38,NULL,NULL,NULL,NULL,1,0,NULL,NULL,0,0,0,0),(39,NULL,NULL,'page attributes, custom',NULL,0,0,NULL,NULL,0,0,0,0),(40,NULL,NULL,'single, page, custom, application',NULL,0,0,NULL,NULL,0,0,0,0),(41,NULL,NULL,'atom, rss, feed, syndication',NULL,0,0,NULL,NULL,0,0,0,0),(43,NULL,NULL,NULL,'icon-bullhorn',0,0,NULL,NULL,0,0,0,0),(44,NULL,NULL,'add workflow, remove workflow',NULL,0,0,NULL,NULL,0,0,0,0),(48,NULL,NULL,'stacks, reusable content, scrapbook, copy, paste, paste block, copy block, site name, logo',NULL,0,0,NULL,NULL,0,0,0,0),(50,NULL,NULL,'edit stacks, view stacks, all stacks',NULL,1,0,NULL,NULL,0,1,0,0),(51,NULL,NULL,'block, refresh, custom',NULL,0,0,NULL,NULL,0,0,0,0),(52,NULL,NULL,'add-on, addon, add on, package, app, ecommerce, discussions, forums, themes, templates, blocks',NULL,0,0,NULL,NULL,0,0,0,0),(53,NULL,NULL,NULL,NULL,1,0,NULL,NULL,0,0,0,0),(54,NULL,NULL,'add-on, addon, ecommerce, install, discussions, forums, themes, templates, blocks',NULL,0,0,NULL,NULL,0,0,0,0),(55,NULL,NULL,'update, upgrade',NULL,0,0,NULL,NULL,0,0,0,0),(56,NULL,NULL,'concrete5.org, my account, marketplace',NULL,1,0,NULL,NULL,0,0,0,0),(57,NULL,NULL,'buy theme, new theme, marketplace, template',NULL,0,0,NULL,NULL,0,0,0,0),(58,NULL,NULL,'buy addon, buy add on, buy add-on, purchase addon, purchase add on, purchase add-on, find addon, new addon, marketplace',NULL,0,0,NULL,NULL,0,0,0,0),(59,NULL,NULL,'dashboard, configuration',NULL,0,0,NULL,NULL,0,0,0,0),(61,NULL,NULL,'website name, title',NULL,0,0,NULL,NULL,0,0,0,0),(62,NULL,NULL,'accessibility, easy mode',NULL,0,0,NULL,NULL,0,0,0,0),(63,NULL,NULL,'sharing, facebook, twitter',NULL,0,0,NULL,NULL,0,0,0,0),(64,NULL,NULL,'logo, favicon, iphone, icon, bookmark',NULL,0,0,NULL,NULL,0,0,0,0),(65,NULL,NULL,'tinymce, content block, fonts, editor, content, overlay',NULL,0,0,NULL,NULL,0,0,0,0),(66,NULL,NULL,'translate, translation, internationalization, multilingual',NULL,0,0,NULL,NULL,0,0,0,0),(67,NULL,NULL,'timezone, profile, locale',NULL,0,0,NULL,NULL,0,0,0,0),(68,NULL,NULL,'multilingual, localization, internationalization, i18n',NULL,0,0,NULL,NULL,0,0,0,0),(74,NULL,NULL,'vanity, pretty url, redirection, hostname, canonical, seo, pageview, view',NULL,0,0,NULL,NULL,0,0,0,0),(75,NULL,NULL,'bulk, seo, change keywords, engine, optimization, search',NULL,0,0,NULL,NULL,0,0,0,0),(76,NULL,NULL,'traffic, statistics, google analytics, quant, pageviews, hits',NULL,0,0,NULL,NULL,0,0,0,0),(77,NULL,NULL,'pretty, slug',NULL,0,0,NULL,NULL,0,0,0,0),(78,NULL,NULL,'configure search, site search, search option',NULL,0,0,NULL,NULL,0,0,0,0),(80,NULL,NULL,'file options, file manager, upload, modify',NULL,0,0,NULL,NULL,0,0,0,0),(81,NULL,NULL,'security, files, media, extension, manager, upload',NULL,0,0,NULL,NULL,0,0,0,0),(82,NULL,NULL,'images, picture, responsive, retina',NULL,0,0,NULL,NULL,0,0,0,0),(83,NULL,NULL,'security, alternate storage, hide files',NULL,0,0,NULL,NULL,0,0,0,0),(85,NULL,NULL,'cache option, change cache, override, turn on cache, turn off cache, no cache, page cache, caching',NULL,0,0,NULL,NULL,0,0,0,0),(86,NULL,NULL,'cache option, turn off cache, no cache, page cache, caching',NULL,0,0,NULL,NULL,0,0,0,0),(87,NULL,NULL,'index search, reindex search, build sitemap, sitemap.xml, clear old versions, page versions, remove old',NULL,0,0,NULL,NULL,0,0,0,0),(88,NULL,NULL,'queries, database, mysql',NULL,0,0,NULL,NULL,0,0,0,0),(90,NULL,NULL,'editors, hide site, offline, private, public, access',NULL,0,0,NULL,NULL,0,0,0,0),(91,NULL,NULL,'security, actions, administrator, admin, package, marketplace, search',NULL,0,0,NULL,NULL,0,0,0,0),(94,NULL,NULL,'security, lock ip, lock out, block ip, address, restrict, access',NULL,0,0,NULL,NULL,0,0,0,0),(95,NULL,NULL,'security, registration',NULL,0,0,NULL,NULL,0,0,0,0),(96,NULL,NULL,'antispam, block spam, security',NULL,0,0,NULL,NULL,0,0,0,0),(97,NULL,NULL,'lock site, under construction, hide, hidden',NULL,0,0,NULL,NULL,0,0,0,0),(99,NULL,NULL,'profile, login, redirect, specific, dashboard, administrators',NULL,0,0,NULL,NULL,0,0,0,0),(100,NULL,NULL,'member profile, member page, community, forums, social, avatar',NULL,0,0,NULL,NULL,0,0,0,0),(101,NULL,NULL,'signup, new user, community, public registration, public, registration',NULL,0,0,NULL,NULL,0,0,0,0),(102,NULL,NULL,'auth, authentication, types, oauth, facebook, login, registration',NULL,0,0,NULL,NULL,0,0,0,0),(103,NULL,NULL,'smtp, mail settings',NULL,0,0,NULL,NULL,0,0,0,0),(104,NULL,NULL,'email server, mail settings, mail configuration, external, internal',NULL,0,0,NULL,NULL,0,0,0,0),(105,NULL,NULL,'test smtp, test mail',NULL,0,0,NULL,NULL,0,0,0,0),(106,NULL,NULL,'email server, mail settings, mail configuration, private message, message system, import, email, message',NULL,0,0,NULL,NULL,0,0,0,0),(107,NULL,NULL,'conversations',NULL,0,0,NULL,NULL,0,0,0,0),(108,NULL,NULL,'conversations',NULL,0,0,NULL,NULL,0,0,0,0),(109,NULL,NULL,'conversations ratings, ratings, community, community points',NULL,0,0,NULL,NULL,0,0,0,0),(110,NULL,NULL,'conversations bad words, banned words, banned, bad words, bad, words, list',NULL,0,0,NULL,NULL,0,0,0,0),(112,NULL,NULL,'attribute configuration',NULL,0,0,NULL,NULL,0,0,0,0),(113,NULL,NULL,'attributes, sets',NULL,0,0,NULL,NULL,0,0,0,0),(114,NULL,NULL,'attributes, types',NULL,0,0,NULL,NULL,0,0,0,0),(115,NULL,NULL,'topics, tags, taxonomy',NULL,0,0,NULL,NULL,0,0,0,0),(117,NULL,NULL,NULL,NULL,0,0,NULL,NULL,0,1,0,0),(118,NULL,NULL,'overrides, system info, debug, support, help',NULL,0,0,NULL,NULL,0,0,0,0),(119,NULL,NULL,'errors, exceptions, develop, support, help',NULL,0,0,NULL,NULL,0,0,0,0),(120,NULL,NULL,'email, logging, logs, smtp, pop, errors, mysql, log',NULL,0,0,NULL,NULL,0,0,0,0),(121,NULL,NULL,'network, proxy server',NULL,0,0,NULL,NULL,0,0,0,0),(122,NULL,NULL,'database, entities, doctrine, orm',NULL,0,0,NULL,NULL,0,0,0,0),(123,NULL,NULL,'export, backup, database, sql, mysql, encryption, restore',NULL,0,0,NULL,NULL,0,0,0,0),(125,NULL,NULL,'upgrade, new version, update',NULL,0,0,NULL,NULL,0,0,0,0),(126,NULL,NULL,NULL,NULL,1,0,NULL,NULL,0,0,0,0),(127,NULL,NULL,NULL,NULL,1,0,NULL,NULL,0,1,0,0),(128,NULL,NULL,NULL,'fa fa-edit',0,0,NULL,NULL,0,0,0,0),(129,NULL,NULL,NULL,'fa fa-trash-o',0,0,NULL,NULL,0,0,0,0),(130,NULL,NULL,NULL,'fa fa-th',0,0,NULL,NULL,0,0,0,0),(133,NULL,NULL,NULL,'fa fa-briefcase',0,0,NULL,NULL,0,0,0,0),(145,NULL,NULL,NULL,NULL,0,0,NULL,NULL,0,0,0,0),(146,NULL,NULL,NULL,NULL,0,0,NULL,NULL,0,0,0,0),(147,NULL,NULL,NULL,NULL,0,0,NULL,NULL,0,0,0,0),(148,NULL,NULL,NULL,NULL,0,0,NULL,NULL,0,0,0,0),(149,NULL,NULL,NULL,NULL,0,0,NULL,NULL,0,0,0,0),(161,NULL,NULL,NULL,NULL,0,0,NULL,NULL,0,0,0,0),(164,NULL,NULL,NULL,NULL,0,0,NULL,NULL,0,0,0,0),(165,NULL,NULL,NULL,NULL,0,0,NULL,NULL,0,0,0,0),(166,NULL,NULL,NULL,NULL,0,0,NULL,NULL,0,0,0,0),(167,NULL,NULL,NULL,NULL,0,0,NULL,NULL,0,0,0,0),(168,NULL,NULL,NULL,NULL,0,0,NULL,NULL,0,0,0,0),(169,NULL,NULL,NULL,NULL,0,0,NULL,NULL,0,0,0,0),(170,NULL,NULL,NULL,NULL,0,0,NULL,NULL,0,0,0,0),(171,NULL,NULL,NULL,NULL,0,0,NULL,NULL,0,0,0,0),(172,NULL,NULL,NULL,NULL,0,0,NULL,NULL,0,0,0,0),(173,NULL,NULL,NULL,NULL,0,0,NULL,NULL,0,0,0,0),(174,NULL,NULL,NULL,NULL,0,0,NULL,NULL,0,0,0,0),(175,NULL,NULL,NULL,NULL,1,0,NULL,NULL,0,0,0,0),(177,NULL,NULL,NULL,NULL,1,0,NULL,NULL,0,0,0,6),(178,NULL,NULL,NULL,NULL,1,0,NULL,NULL,0,0,0,5),(180,NULL,NULL,NULL,NULL,1,0,NULL,NULL,0,0,0,6),(181,NULL,NULL,NULL,NULL,1,0,NULL,NULL,0,0,0,5),(183,NULL,NULL,NULL,NULL,1,0,NULL,NULL,0,0,0,0),(186,NULL,NULL,NULL,NULL,1,0,NULL,NULL,0,0,0,0),(188,NULL,NULL,NULL,NULL,1,0,NULL,NULL,0,0,0,4),(189,NULL,NULL,NULL,NULL,1,0,NULL,NULL,0,0,0,0),(190,NULL,NULL,NULL,NULL,1,0,NULL,NULL,0,0,0,4);
/*!40000 ALTER TABLE `CollectionSearchIndexAttributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionVersionAreaStyles`
--

DROP TABLE IF EXISTS `CollectionVersionAreaStyles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersionAreaStyles` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `issID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`arHandle`),
  KEY `issID` (`issID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionVersionAreaStyles`
--

LOCK TABLES `CollectionVersionAreaStyles` WRITE;
/*!40000 ALTER TABLE `CollectionVersionAreaStyles` DISABLE KEYS */;
/*!40000 ALTER TABLE `CollectionVersionAreaStyles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionVersionBlockStyles`
--

DROP TABLE IF EXISTS `CollectionVersionBlockStyles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersionBlockStyles` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `issID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`),
  KEY `bID` (`bID`,`issID`),
  KEY `issID` (`issID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionVersionBlockStyles`
--

LOCK TABLES `CollectionVersionBlockStyles` WRITE;
/*!40000 ALTER TABLE `CollectionVersionBlockStyles` DISABLE KEYS */;
INSERT INTO `CollectionVersionBlockStyles` VALUES (176,1,36,'Titulo : 4',2),(177,1,36,'Titulo : 4',2),(177,2,36,'Titulo : 4',2),(177,3,36,'Titulo : 4',2),(177,4,36,'Titulo : 4',2),(178,1,36,'Titulo : 4',2),(178,2,36,'Titulo : 4',2),(178,3,36,'Titulo : 4',2),(178,4,36,'Titulo : 4',2),(179,1,36,'Titulo : 4',2),(180,1,36,'Titulo : 4',2),(180,2,36,'Titulo : 4',2),(181,1,36,'Titulo : 4',2),(182,1,36,'Titulo : 4',2),(183,1,36,'Titulo : 4',2),(183,2,36,'Titulo : 4',2),(183,3,36,'Titulo : 4',2),(183,4,36,'Titulo : 4',2),(183,5,36,'Titulo : 4',2),(186,1,36,'Titulo : 4',2),(186,2,36,'Titulo : 4',2),(186,3,36,'Titulo : 4',2),(187,1,36,'Titulo : 4',2),(188,1,36,'Titulo : 4',2),(188,2,36,'Titulo : 4',2),(189,1,36,'Titulo : 4',2),(189,2,36,'Titulo : 4',2),(189,3,36,'Titulo : 4',2),(190,1,36,'Titulo : 4',2),(190,2,36,'Titulo : 4',2),(190,3,36,'Titulo : 4',2),(190,4,36,'Titulo : 4',2),(176,1,42,'Contenido : 6',4),(177,1,42,'Contenido : 6',4),(177,2,42,'Contenido : 6',4),(177,3,42,'Contenido : 6',4),(177,4,42,'Contenido : 6',4),(178,1,42,'Contenido : 6',4),(178,2,42,'Contenido : 6',4),(178,3,42,'Contenido : 6',4),(178,4,42,'Contenido : 6',4),(179,1,42,'Contenido : 6',4),(180,1,42,'Contenido : 6',4),(180,2,42,'Contenido : 6',4),(181,1,42,'Contenido : 6',4),(183,1,42,'Contenido : 6',4),(183,2,42,'Contenido : 6',4),(183,3,42,'Contenido : 6',4),(186,1,42,'Contenido : 6',4),(186,2,42,'Contenido : 6',4),(186,3,42,'Contenido : 6',4),(187,1,42,'Contenido : 6',4),(188,1,42,'Contenido : 6',4),(188,2,42,'Contenido : 6',4),(190,1,42,'Contenido : 6',4),(190,2,42,'Contenido : 6',4),(190,3,42,'Contenido : 6',4),(190,4,42,'Contenido : 6',4),(183,1,82,'Contenido',6),(183,2,83,'Contenido',6),(167,3,99,'Contenido : 10',7),(161,10,109,'Main',8);
/*!40000 ALTER TABLE `CollectionVersionBlockStyles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionVersionBlocks`
--

DROP TABLE IF EXISTS `CollectionVersionBlocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersionBlocks` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cbDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `isOriginal` tinyint(1) NOT NULL DEFAULT '0',
  `cbOverrideAreaPermissions` tinyint(1) NOT NULL DEFAULT '0',
  `cbIncludeAll` tinyint(1) NOT NULL DEFAULT '0',
  `cbOverrideBlockTypeCacheSettings` tinyint(1) NOT NULL DEFAULT '0',
  `cbOverrideBlockTypeContainerSettings` tinyint(1) NOT NULL DEFAULT '0',
  `cbEnableBlockContainer` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`),
  KEY `bID` (`bID`,`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionVersionBlocks`
--

LOCK TABLES `CollectionVersionBlocks` WRITE;
/*!40000 ALTER TABLE `CollectionVersionBlocks` DISABLE KEYS */;
INSERT INTO `CollectionVersionBlocks` VALUES (1,9,24,'Slider',0,1,0,0,0,0,0),(1,10,25,'Slider',0,1,0,0,0,0,0),(1,11,26,'Slider',0,1,0,0,0,0,0),(1,12,26,'Slider',0,0,0,0,0,0,0),(1,12,27,'Contenido A',0,1,0,0,0,0,0),(1,12,28,'Contenido A : 2',1,1,0,0,0,0,0),(1,13,26,'Slider',0,0,0,0,0,0,0),(1,13,27,'Contenido A',0,0,0,0,0,0,0),(1,13,28,'Contenido A : 2',1,0,0,0,0,0,0),(1,13,29,'Contenido A : 1',0,1,0,0,0,0,0),(1,13,30,'Contenido A : 2',2,1,0,0,0,0,0),(1,14,26,'Slider',0,0,0,0,0,0,0),(1,14,27,'Contenido A',0,0,0,0,0,0,0),(1,14,28,'Contenido A : 2',1,0,0,0,0,0,0),(1,14,29,'Contenido A : 1',0,0,0,0,0,0,0),(1,14,30,'Contenido A : 2',2,0,0,0,0,0,0),(1,15,26,'Slider',0,0,0,0,0,0,0),(1,15,27,'Contenido A',0,0,0,0,0,0,0),(1,15,28,'Contenido A : 2',1,0,0,0,0,0,0),(1,15,29,'Contenido A : 1',0,0,0,0,0,0,0),(1,15,30,'Contenido A : 2',2,0,0,0,0,0,0),(1,15,54,'Contenido A : 1',1,1,0,0,0,0,0),(1,16,26,'Slider',0,0,0,0,0,0,0),(1,16,27,'Contenido A',0,0,0,0,0,0,0),(1,16,28,'Contenido A : 2',1,0,0,0,0,0,0),(1,16,29,'Contenido A : 1',0,0,0,0,0,0,0),(1,16,30,'Contenido A : 2',2,0,0,0,0,0,0),(1,16,54,'Contenido A : 1',1,0,0,0,0,0,0),(1,16,65,'Contenido A : 1',2,1,0,0,0,0,0),(1,17,26,'Slider',0,0,0,0,0,0,0),(1,17,27,'Contenido A',0,0,0,0,0,0,0),(1,17,28,'Contenido A : 2',1,0,0,0,0,0,0),(1,17,29,'Contenido A : 1',0,0,0,0,0,0,0),(1,17,30,'Contenido A : 2',2,0,0,0,0,0,0),(1,17,54,'Contenido A : 1',1,0,0,0,0,0,0),(1,17,66,'Contenido A : 1',2,1,0,0,0,0,0),(1,18,26,'Slider',0,0,0,0,0,0,0),(1,18,27,'Contenido A',0,0,0,0,0,0,0),(1,18,28,'Contenido A : 2',1,0,0,0,0,0,0),(1,18,29,'Contenido A : 1',0,0,0,0,0,0,0),(1,18,30,'Contenido A : 2',2,0,0,0,0,0,0),(1,18,54,'Contenido A : 1',1,0,0,0,0,0,0),(1,18,66,'Contenido A : 1',2,0,0,0,0,0,0),(1,18,67,'Contenido A : 2',3,1,0,0,0,0,0),(1,19,27,'Contenido A',0,0,0,0,0,0,0),(1,19,28,'Contenido A : 2',0,0,0,0,0,0,0),(1,19,29,'Contenido A : 1',0,0,0,0,0,0,0),(1,19,30,'Contenido A : 2',2,0,0,0,0,0,0),(1,19,54,'Contenido A : 1',1,0,0,0,0,0,0),(1,19,66,'Contenido A : 1',2,0,0,0,0,0,0),(1,19,67,'Contenido A : 2',3,0,0,0,0,0,0),(1,19,71,'Slider',0,1,0,0,0,0,0),(1,20,27,'Contenido A',0,0,0,0,0,0,0),(1,20,28,'Contenido A : 2',0,0,0,0,0,0,0),(1,20,29,'Contenido A : 1',0,0,0,0,0,0,0),(1,20,30,'Contenido A : 2',2,0,0,0,0,0,0),(1,20,54,'Contenido A : 1',1,0,0,0,0,0,0),(1,20,66,'Contenido A : 1',2,0,0,0,0,0,0),(1,20,67,'Contenido A : 2',3,0,0,0,0,0,0),(1,20,72,'Slider',0,1,0,0,0,0,0),(1,21,27,'Contenido A',0,0,0,0,0,0,0),(1,21,28,'Contenido A : 2',0,0,0,0,0,0,0),(1,21,29,'Contenido A : 1',0,0,0,0,0,0,0),(1,21,30,'Contenido A : 2',2,0,0,0,0,0,0),(1,21,54,'Contenido A : 1',1,0,0,0,0,0,0),(1,21,66,'Contenido A : 1',2,0,0,0,0,0,0),(1,21,67,'Contenido A : 2',3,0,0,0,0,0,0),(1,21,72,'Slider',0,0,0,0,0,0,0),(1,22,27,'Contenido A',0,0,0,0,0,0,0),(1,22,28,'Contenido A : 2',0,0,0,0,0,0,0),(1,22,29,'Contenido A : 1',0,0,0,0,0,0,0),(1,22,30,'Contenido A : 2',2,0,0,0,0,0,0),(1,22,54,'Contenido A : 1',1,0,0,0,0,0,0),(1,22,66,'Contenido A : 1',2,0,0,0,0,0,0),(1,22,67,'Contenido A : 2',3,0,0,0,0,0,0),(1,22,72,'Slider',0,0,0,0,0,0,0),(1,22,106,'Contenido B',1,1,0,0,0,0,0),(1,22,107,'Contenido B',0,1,0,0,0,0,0),(1,23,27,'Contenido A',0,0,0,0,0,0,0),(1,23,28,'Contenido A : 2',0,0,0,0,0,0,0),(1,23,29,'Contenido A : 1',0,0,0,0,0,0,0),(1,23,30,'Contenido A : 2',2,0,0,0,0,0,0),(1,23,54,'Contenido A : 1',1,0,0,0,0,0,0),(1,23,66,'Contenido A : 1',2,0,0,0,0,0,0),(1,23,67,'Contenido A : 2',3,0,0,0,0,0,0),(1,23,72,'Slider',0,0,0,0,0,0,0),(1,23,106,'Contenido B',1,0,0,0,0,0,0),(1,23,107,'Contenido B',0,0,0,0,0,0,0),(1,24,27,'Contenido A',0,0,0,0,0,0,0),(1,24,28,'Contenido A : 2',0,0,0,0,0,0,0),(1,24,29,'Contenido A : 1',0,0,0,0,0,0,0),(1,24,30,'Contenido A : 2',2,0,0,0,0,0,0),(1,24,54,'Contenido A : 1',1,0,0,0,0,0,0),(1,24,66,'Contenido A : 1',2,0,0,0,0,0,0),(1,24,67,'Contenido A : 2',3,0,0,0,0,0,0),(1,24,106,'Contenido B',1,0,0,0,0,0,0),(1,24,107,'Contenido B',0,0,0,0,0,0,0),(1,24,110,'Slider',0,1,0,0,0,0,0),(1,25,27,'Contenido A',0,0,0,0,0,0,0),(1,25,29,'Contenido A : 1',0,0,0,0,0,0,0),(1,25,30,'Contenido A : 2',2,0,0,0,0,0,0),(1,25,54,'Contenido A : 1',1,0,0,0,0,0,0),(1,25,66,'Contenido A : 1',2,0,0,0,0,0,0),(1,25,67,'Contenido A : 2',3,0,0,0,0,0,0),(1,25,106,'Contenido B',1,0,0,0,0,0,0),(1,25,107,'Contenido B',0,0,0,0,0,0,0),(1,25,110,'Slider',0,0,0,0,0,0,0),(1,25,163,'Contenido A : 2',1,1,0,0,0,0,0),(1,26,27,'Contenido A',0,0,0,0,0,0,0),(1,26,29,'Contenido A : 1',0,0,0,0,0,0,0),(1,26,30,'Contenido A : 2',2,0,0,0,0,0,0),(1,26,54,'Contenido A : 1',1,0,0,0,0,0,0),(1,26,66,'Contenido A : 1',2,0,0,0,0,0,0),(1,26,67,'Contenido A : 2',3,0,0,0,0,0,0),(1,26,106,'Contenido B',1,0,0,0,0,0,0),(1,26,107,'Contenido B',0,0,0,0,0,0,0),(1,26,110,'Slider',0,0,0,0,0,0,0),(1,26,163,'Contenido A : 2',1,0,0,0,0,0,0),(1,27,27,'Contenido A',0,0,0,0,0,0,0),(1,27,29,'Contenido A : 1',1,0,0,0,0,0,0),(1,27,30,'Contenido A : 2',2,0,0,0,0,0,0),(1,27,54,'Contenido A : 1',2,0,0,0,0,0,0),(1,27,66,'Contenido A : 1',3,0,0,0,0,0,0),(1,27,67,'Contenido A : 2',3,0,0,0,0,0,0),(1,27,106,'Contenido B',1,0,0,0,0,0,0),(1,27,107,'Contenido B',0,0,0,0,0,0,0),(1,27,110,'Slider',0,0,0,0,0,0,0),(1,27,163,'Contenido A : 2',1,0,0,0,0,0,0),(1,27,168,'Contenido A : 1',0,1,0,0,0,0,0),(1,28,27,'Contenido A',0,0,0,0,0,0,0),(1,28,29,'Contenido A : 1',1,0,0,0,0,0,0),(1,28,30,'Contenido A : 2',2,0,0,0,0,0,0),(1,28,54,'Contenido A : 1',2,0,0,0,0,0,0),(1,28,66,'Contenido A : 1',3,0,0,0,0,0,0),(1,28,67,'Contenido A : 2',3,0,0,0,0,0,0),(1,28,106,'Contenido B',1,0,0,0,0,0,0),(1,28,107,'Contenido B',0,0,0,0,0,0,0),(1,28,110,'Slider',0,0,0,0,0,0,0),(1,28,163,'Contenido A : 2',1,0,0,0,0,0,0),(1,28,168,'Contenido A : 2',0,0,0,0,0,0,0),(1,29,27,'Contenido A',0,0,0,0,0,0,0),(1,29,29,'Contenido A : 1',0,0,0,0,0,0,0),(1,29,30,'Contenido A : 2',2,0,0,0,0,0,0),(1,29,54,'Contenido A : 1',1,0,0,0,0,0,0),(1,29,66,'Contenido A : 1',2,0,0,0,0,0,0),(1,29,67,'Contenido A : 2',3,0,0,0,0,0,0),(1,29,106,'Contenido B',1,0,0,0,0,0,0),(1,29,107,'Contenido B',0,0,0,0,0,0,0),(1,29,163,'Contenido A : 2',1,0,0,0,0,0,0),(1,29,168,'Contenido A : 2',0,0,0,0,0,0,0),(1,29,169,'Slider',0,1,0,0,0,0,0),(126,1,1,'Main',0,1,0,0,0,0,0),(127,1,2,'Primary',0,1,0,0,0,0,0),(127,1,3,'Primary',1,1,0,0,0,0,0),(127,1,4,'Secondary 1',0,1,0,0,0,0,0),(127,1,5,'Secondary 2',0,1,0,0,0,0,0),(127,1,6,'Secondary 3',0,1,0,0,0,0,0),(127,1,7,'Secondary 4',0,1,0,0,0,0,0),(127,1,8,'Secondary 5',0,1,0,0,0,0,0),(144,1,9,'Main',0,1,0,0,0,0,0),(145,2,11,'Main',0,1,0,0,0,0,0),(145,3,11,'Main',0,0,0,0,0,0,0),(145,3,16,'Main',1,1,0,0,0,0,0),(145,4,11,'Main',0,0,0,0,0,0,0),(145,5,167,'Main',0,1,0,0,0,0,0),(146,2,19,'Main',0,1,0,0,0,0,0),(146,3,19,'Main',0,0,0,0,0,0,0),(146,5,20,'Main',0,1,0,0,0,0,0),(146,6,20,'Main',0,0,0,0,0,0,0),(147,2,32,'Main',0,1,0,0,0,0,0),(148,2,31,'Main',0,1,0,0,0,0,0),(149,2,33,'Main',0,1,0,0,0,0,0),(153,1,10,'Main',0,1,0,0,0,0,0),(161,2,12,'Main',0,1,0,0,0,0,0),(161,3,13,'Main',0,1,0,0,0,0,0),(161,4,14,'Main',0,1,0,0,0,0,0),(161,5,15,'Main',1,1,0,0,0,0,0),(161,6,15,'Main',1,0,0,0,0,0,0),(161,6,17,'Main',0,1,0,0,0,0,0),(161,7,17,'Main',0,0,0,0,0,0,0),(161,7,18,'Main',1,1,0,0,0,0,0),(161,8,17,'Main',0,0,0,0,0,0,0),(161,8,23,'Main',1,1,0,0,0,0,0),(161,9,17,'Main',0,0,0,0,0,0,0),(161,9,23,'Main',1,0,0,0,0,0,0),(161,10,23,'Main',1,0,0,0,0,0,0),(161,10,109,'Main',0,1,0,0,0,0,0),(163,1,21,'Titulo',0,1,0,0,0,0,0),(164,1,21,'Titulo',0,0,0,0,0,0,0),(165,1,21,'Titulo',0,0,0,0,0,0,0),(165,2,21,'Titulo',0,0,0,0,0,0,0),(165,3,21,'Titulo',0,0,0,0,0,0,0),(165,3,55,'Contenido',0,1,0,0,0,0,0),(166,1,21,'Titulo',0,0,0,0,0,0,0),(166,2,21,'Titulo',0,0,0,0,0,0,0),(166,2,85,'Contenido',0,1,0,0,0,0,0),(166,2,86,'Contenido : 7',0,1,0,0,0,0,0),(166,3,21,'Titulo',0,0,0,0,0,0,0),(166,3,85,'Contenido',0,0,0,0,0,0,0),(166,3,86,'Contenido : 7',0,0,0,0,0,0,0),(166,3,93,'Contenido : 8',0,1,0,0,0,0,0),(166,3,94,'Contenido : 8 : 15',0,1,0,0,0,0,0),(166,3,97,'Contenido : 8 : 16',0,1,0,0,0,0,0),(166,3,98,'Contenido : 8 : 17',0,1,0,0,0,0,0),(167,1,21,'Titulo',0,0,0,0,0,0,0),(167,2,21,'Titulo',0,0,0,0,0,0,0),(167,2,87,'Contenido',0,1,0,0,0,0,0),(167,2,88,'Contenido : 9',0,1,0,0,0,0,0),(167,3,21,'Titulo',0,0,0,0,0,0,0),(167,3,87,'Contenido',0,0,0,0,0,0,0),(167,3,88,'Contenido : 9',0,0,0,0,0,0,0),(167,3,99,'Contenido : 10',0,1,0,0,0,0,0),(168,1,21,'Titulo',0,0,0,0,0,0,0),(168,2,21,'Titulo',0,0,0,0,0,0,0),(168,2,89,'Contenido',0,1,0,0,0,0,0),(168,2,90,'Contenido : 11',0,1,0,0,0,0,0),(169,1,21,'Titulo',0,0,0,0,0,0,0),(169,2,21,'Titulo',0,0,0,0,0,0,0),(169,2,91,'Contenido',0,1,0,0,0,0,0),(169,2,92,'Contenido : 13',0,1,0,0,0,0,0),(170,1,21,'Titulo',0,0,0,0,0,0,0),(170,2,21,'Titulo',0,0,0,0,0,0,0),(170,2,100,'Contenido',0,1,0,0,0,0,0),(170,3,21,'Titulo',0,0,0,0,0,0,0),(170,3,101,'Contenido',0,1,0,0,0,0,0),(171,1,21,'Titulo',0,0,0,0,0,0,0),(171,2,21,'Titulo',0,0,0,0,0,0,0),(171,2,79,'Contenido',0,1,0,0,0,0,0),(172,1,21,'Titulo',0,0,0,0,0,0,0),(172,2,21,'Titulo',0,0,0,0,0,0,0),(172,2,102,'Contenido',0,1,0,0,0,0,0),(172,2,103,'Contenido : 18',0,1,0,0,0,0,0),(172,3,21,'Titulo',0,0,0,0,0,0,0),(172,3,102,'Contenido',0,0,0,0,0,0,0),(172,3,103,'Contenido : 18',0,0,0,0,0,0,0),(172,3,104,'Contenido : 19',0,1,0,0,0,0,0),(172,3,105,'Contenido',1,1,0,0,0,0,0),(173,1,21,'Titulo',0,0,0,0,0,0,0),(173,2,21,'Titulo',0,0,0,0,0,0,0),(173,2,108,'Contenido',0,1,0,0,0,0,0),(173,3,21,'Titulo',0,0,0,0,0,0,0),(173,3,166,'Contenido',0,1,0,0,0,0,0),(174,1,21,'Titulo',0,0,0,0,0,0,0),(174,2,21,'Titulo',0,0,0,0,0,0,0),(174,2,84,'Contenido',0,1,0,0,0,0,0),(175,1,21,'Titulo',0,0,0,0,0,0,0),(175,2,21,'Titulo',0,0,0,0,0,0,0),(175,2,22,'Contenido',0,1,0,0,0,0,0),(176,1,34,'Titulo',0,1,0,0,0,0,0),(176,1,35,'Titulo : 3',0,1,1,0,0,0,0),(176,1,36,'Titulo : 4',0,1,1,0,0,0,0),(176,1,37,'Titulo : 3',1,1,1,0,0,0,0),(176,1,38,'Contenido',0,1,0,0,0,0,0),(176,1,39,'Contenido',1,1,0,0,0,0,0),(176,1,40,'Contenido',2,1,0,0,0,0,0),(176,1,41,'Contenido : 5',0,1,0,0,0,0,0),(176,1,42,'Contenido : 6',0,1,0,0,0,0,0),(176,1,43,'Contenido',3,1,0,0,0,0,0),(176,1,44,'Contenido',4,1,0,0,0,0,0),(177,1,34,'Titulo',0,0,0,0,0,0,0),(177,1,35,'Titulo : 3',0,0,0,0,0,0,0),(177,1,36,'Titulo : 4',0,0,0,0,0,0,0),(177,1,37,'Titulo : 3',1,0,0,0,0,0,0),(177,1,39,'Contenido',1,0,0,0,0,0,0),(177,1,40,'Contenido',2,0,0,0,0,0,0),(177,1,41,'Contenido : 5',0,0,0,0,0,0,0),(177,1,42,'Contenido : 6',0,0,0,0,0,0,0),(177,1,43,'Contenido',3,0,0,0,0,0,0),(177,1,44,'Contenido',4,0,0,0,0,0,0),(177,1,53,'Contenido',0,1,0,0,0,0,0),(177,2,34,'Titulo',0,0,0,0,0,0,0),(177,2,35,'Titulo : 3',0,0,0,0,0,0,0),(177,2,36,'Titulo : 4',0,0,0,0,0,0,0),(177,2,37,'Titulo : 3',1,0,0,0,0,0,0),(177,2,39,'Contenido',1,0,0,0,0,0,0),(177,2,40,'Contenido',2,0,0,0,0,0,0),(177,2,41,'Contenido : 5',0,0,0,0,0,0,0),(177,2,42,'Contenido : 6',0,0,0,0,0,0,0),(177,2,43,'Contenido',3,0,0,0,0,0,0),(177,2,44,'Contenido',4,0,0,0,0,0,0),(177,2,64,'Contenido',0,1,0,0,0,0,0),(177,3,34,'Titulo',0,0,0,0,0,0,0),(177,3,35,'Titulo : 3',0,0,0,0,0,0,0),(177,3,36,'Titulo : 4',0,0,0,0,0,0,0),(177,3,37,'Titulo : 3',1,0,0,0,0,0,0),(177,3,39,'Contenido',1,0,0,0,0,0,0),(177,3,40,'Contenido',2,0,0,0,0,0,0),(177,3,41,'Contenido : 5',0,0,0,0,0,0,0),(177,3,42,'Contenido : 6',0,0,0,0,0,0,0),(177,3,43,'Contenido',3,0,0,0,0,0,0),(177,3,44,'Contenido',4,0,0,0,0,0,0),(177,3,69,'Contenido',0,1,0,0,0,0,0),(177,4,34,'Titulo',0,0,0,0,0,0,0),(177,4,35,'Titulo : 3',0,0,0,0,0,0,0),(177,4,36,'Titulo : 4',0,0,0,0,0,0,0),(177,4,37,'Titulo : 3',1,0,0,0,0,0,0),(177,4,39,'Contenido',1,0,0,0,0,0,0),(177,4,40,'Contenido',2,0,0,0,0,0,0),(177,4,41,'Contenido : 5',0,0,0,0,0,0,0),(177,4,42,'Contenido : 6',0,0,0,0,0,0,0),(177,4,43,'Contenido',3,0,0,0,0,0,0),(177,4,44,'Contenido',4,0,0,0,0,0,0),(177,4,70,'Contenido',0,1,0,0,0,0,0),(178,1,34,'Titulo',0,0,0,0,0,0,0),(178,1,35,'Titulo : 3',0,0,0,0,0,0,0),(178,1,36,'Titulo : 4',0,0,0,0,0,0,0),(178,1,37,'Titulo : 3',1,0,0,0,0,0,0),(178,1,39,'Contenido',1,0,0,0,0,0,0),(178,1,40,'Contenido',2,0,0,0,0,0,0),(178,1,41,'Contenido : 5',0,0,0,0,0,0,0),(178,1,42,'Contenido : 6',0,0,0,0,0,0,0),(178,1,43,'Contenido',3,0,0,0,0,0,0),(178,1,44,'Contenido',4,0,0,0,0,0,0),(178,1,62,'Contenido',0,1,0,0,0,0,0),(178,2,34,'Titulo',0,0,0,0,0,0,0),(178,2,35,'Titulo : 3',0,0,0,0,0,0,0),(178,2,36,'Titulo : 4',0,0,0,0,0,0,0),(178,2,37,'Titulo : 3',1,0,0,0,0,0,0),(178,2,39,'Contenido',1,0,0,0,0,0,0),(178,2,40,'Contenido',2,0,0,0,0,0,0),(178,2,41,'Contenido : 5',0,0,0,0,0,0,0),(178,2,42,'Contenido : 6',0,0,0,0,0,0,0),(178,2,43,'Contenido',3,0,0,0,0,0,0),(178,2,44,'Contenido',4,0,0,0,0,0,0),(178,2,63,'Contenido',0,1,0,0,0,0,0),(178,3,34,'Titulo',0,0,0,0,0,0,0),(178,3,35,'Titulo : 3',0,0,0,0,0,0,0),(178,3,36,'Titulo : 4',0,0,0,0,0,0,0),(178,3,37,'Titulo : 3',1,0,0,0,0,0,0),(178,3,39,'Contenido',1,0,0,0,0,0,0),(178,3,40,'Contenido',2,0,0,0,0,0,0),(178,3,41,'Contenido : 5',0,0,0,0,0,0,0),(178,3,42,'Contenido : 6',0,0,0,0,0,0,0),(178,3,43,'Contenido',3,0,0,0,0,0,0),(178,3,44,'Contenido',4,0,0,0,0,0,0),(178,3,126,'Contenido',0,1,0,0,0,0,0),(178,4,34,'Titulo',0,0,0,0,0,0,0),(178,4,35,'Titulo : 3',0,0,0,0,0,0,0),(178,4,36,'Titulo : 4',0,0,0,0,0,0,0),(178,4,37,'Titulo : 3',1,0,0,0,0,0,0),(178,4,39,'Contenido',1,0,0,0,0,0,0),(178,4,40,'Contenido',2,0,0,0,0,0,0),(178,4,41,'Contenido : 5',0,0,0,0,0,0,0),(178,4,42,'Contenido : 6',0,0,0,0,0,0,0),(178,4,43,'Contenido',3,0,0,0,0,0,0),(178,4,44,'Contenido',4,0,0,0,0,0,0),(178,4,127,'Contenido',0,1,0,0,0,0,0),(179,1,34,'Titulo',0,0,0,0,0,0,0),(179,1,35,'Titulo : 3',0,0,0,0,0,0,0),(179,1,36,'Titulo : 4',0,0,0,0,0,0,0),(179,1,37,'Titulo : 3',1,0,0,0,0,0,0),(179,1,39,'Contenido',1,0,0,0,0,0,0),(179,1,40,'Contenido',2,0,0,0,0,0,0),(179,1,41,'Contenido : 5',0,0,0,0,0,0,0),(179,1,42,'Contenido : 6',0,0,0,0,0,0,0),(179,1,43,'Contenido',3,0,0,0,0,0,0),(179,1,44,'Contenido',4,0,0,0,0,0,0),(179,1,77,'Contenido',0,1,0,0,0,0,0),(180,1,34,'Titulo',0,0,0,0,0,0,0),(180,1,35,'Titulo : 3',0,0,0,0,0,0,0),(180,1,36,'Titulo : 4',0,0,0,0,0,0,0),(180,1,37,'Titulo : 3',1,0,0,0,0,0,0),(180,1,39,'Contenido',1,0,0,0,0,0,0),(180,1,40,'Contenido',2,0,0,0,0,0,0),(180,1,41,'Contenido : 5',0,0,0,0,0,0,0),(180,1,42,'Contenido : 6',0,0,0,0,0,0,0),(180,1,43,'Contenido',3,0,0,0,0,0,0),(180,1,44,'Contenido',4,0,0,0,0,0,0),(180,1,77,'Contenido',0,0,0,0,0,0,0),(180,2,34,'Titulo',0,0,0,0,0,0,0),(180,2,35,'Titulo : 3',0,0,0,0,0,0,0),(180,2,36,'Titulo : 4',0,0,0,0,0,0,0),(180,2,37,'Titulo : 3',1,0,0,0,0,0,0),(180,2,39,'Contenido',1,0,0,0,0,0,0),(180,2,40,'Contenido',2,0,0,0,0,0,0),(180,2,41,'Contenido : 5',0,0,0,0,0,0,0),(180,2,42,'Contenido : 6',0,0,0,0,0,0,0),(180,2,43,'Contenido',3,0,0,0,0,0,0),(180,2,44,'Contenido',4,0,0,0,0,0,0),(180,2,78,'Contenido',0,1,0,0,0,0,0),(181,1,34,'Titulo',0,0,0,0,0,0,0),(181,1,35,'Titulo : 3',0,0,0,0,0,0,0),(181,1,36,'Titulo : 4',0,0,0,0,0,0,0),(181,1,37,'Titulo : 3',1,0,0,0,0,0,0),(181,1,39,'Contenido',1,0,0,0,0,0,0),(181,1,40,'Contenido',2,0,0,0,0,0,0),(181,1,41,'Contenido : 5',0,0,0,0,0,0,0),(181,1,42,'Contenido : 6',0,0,0,0,0,0,0),(181,1,43,'Contenido',3,0,0,0,0,0,0),(181,1,44,'Contenido',4,0,0,0,0,0,0),(181,1,77,'Contenido',0,0,0,0,0,0,0),(182,1,34,'Titulo',0,0,0,0,0,0,0),(182,1,35,'Titulo : 3',0,0,1,0,0,0,0),(182,1,36,'Titulo : 4',0,0,1,0,0,0,0),(182,1,37,'Titulo : 3',1,0,1,0,0,0,0),(182,1,82,'Contenido',0,1,0,0,0,0,0),(183,1,34,'Titulo',0,0,0,0,0,0,0),(183,1,35,'Titulo : 3',0,0,0,0,0,0,0),(183,1,36,'Titulo : 4',0,0,0,0,0,0,0),(183,1,37,'Titulo : 3',1,0,0,0,0,0,0),(183,1,39,'Contenido',1,0,0,0,0,0,0),(183,1,40,'Contenido',2,0,0,0,0,0,0),(183,1,41,'Contenido : 5',0,0,0,0,0,0,0),(183,1,42,'Contenido : 6',0,0,0,0,0,0,0),(183,1,43,'Contenido',3,0,0,0,0,0,0),(183,1,44,'Contenido',4,0,0,0,0,0,0),(183,1,82,'Contenido',0,0,0,0,0,0,0),(183,2,34,'Titulo',0,0,0,0,0,0,0),(183,2,35,'Titulo : 3',0,0,0,0,0,0,0),(183,2,36,'Titulo : 4',0,0,0,0,0,0,0),(183,2,37,'Titulo : 3',1,0,0,0,0,0,0),(183,2,39,'Contenido',1,0,0,0,0,0,0),(183,2,40,'Contenido',2,0,0,0,0,0,0),(183,2,41,'Contenido : 5',0,0,0,0,0,0,0),(183,2,42,'Contenido : 6',0,0,0,0,0,0,0),(183,2,43,'Contenido',3,0,0,0,0,0,0),(183,2,44,'Contenido',4,0,0,0,0,0,0),(183,2,83,'Contenido',0,1,0,0,0,0,0),(183,3,34,'Titulo',0,0,0,0,0,0,0),(183,3,35,'Titulo : 3',0,0,0,0,0,0,0),(183,3,36,'Titulo : 4',0,0,0,0,0,0,0),(183,3,37,'Titulo : 3',1,0,0,0,0,0,0),(183,3,39,'Contenido',1,0,0,0,0,0,0),(183,3,40,'Contenido',2,0,0,0,0,0,0),(183,3,41,'Contenido : 5',0,0,0,0,0,0,0),(183,3,42,'Contenido : 6',0,0,0,0,0,0,0),(183,3,43,'Contenido',3,0,0,0,0,0,0),(183,3,44,'Contenido',4,0,0,0,0,0,0),(183,3,83,'Contenido',0,0,0,0,0,0,0),(183,4,34,'Titulo',0,0,0,0,0,0,0),(183,4,35,'Titulo : 3',0,0,0,0,0,0,0),(183,4,36,'Titulo : 4',0,0,0,0,0,0,0),(183,4,37,'Titulo : 3',1,0,0,0,0,0,0),(183,4,83,'Contenido',0,0,0,0,0,0,0),(183,5,34,'Titulo',0,0,0,0,0,0,0),(183,5,35,'Titulo : 3',0,0,0,0,0,0,0),(183,5,36,'Titulo : 4',0,0,0,0,0,0,0),(183,5,37,'Titulo : 3',1,0,0,0,0,0,0),(183,5,164,'Contenido',0,1,0,0,0,0,0),(186,1,34,'Titulo',0,0,0,0,0,0,0),(186,1,35,'Titulo : 3',0,0,0,0,0,0,0),(186,1,36,'Titulo : 4',0,0,0,0,0,0,0),(186,1,37,'Titulo : 3',1,0,0,0,0,0,0),(186,1,39,'Contenido',1,0,0,0,0,0,0),(186,1,40,'Contenido',2,0,0,0,0,0,0),(186,1,41,'Contenido : 5',0,0,0,0,0,0,0),(186,1,42,'Contenido : 6',0,0,0,0,0,0,0),(186,1,43,'Contenido',3,0,0,0,0,0,0),(186,1,44,'Contenido',4,0,0,0,0,0,0),(186,1,140,'Contenido',0,1,0,0,0,0,0),(186,2,34,'Titulo',0,0,0,0,0,0,0),(186,2,35,'Titulo : 3',0,0,0,0,0,0,0),(186,2,36,'Titulo : 4',0,0,0,0,0,0,0),(186,2,37,'Titulo : 3',1,0,0,0,0,0,0),(186,2,39,'Contenido',1,0,0,0,0,0,0),(186,2,40,'Contenido',2,0,0,0,0,0,0),(186,2,41,'Contenido : 5',0,0,0,0,0,0,0),(186,2,42,'Contenido : 6',0,0,0,0,0,0,0),(186,2,43,'Contenido',3,0,0,0,0,0,0),(186,2,44,'Contenido',4,0,0,0,0,0,0),(186,2,141,'Contenido',0,1,0,0,0,0,0),(186,3,34,'Titulo',0,0,0,0,0,0,0),(186,3,35,'Titulo : 3',0,0,0,0,0,0,0),(186,3,36,'Titulo : 4',0,0,0,0,0,0,0),(186,3,37,'Titulo : 3',1,0,0,0,0,0,0),(186,3,39,'Contenido',1,0,0,0,0,0,0),(186,3,40,'Contenido',2,0,0,0,0,0,0),(186,3,41,'Contenido : 5',0,0,0,0,0,0,0),(186,3,42,'Contenido : 6',0,0,0,0,0,0,0),(186,3,43,'Contenido',3,0,0,0,0,0,0),(186,3,44,'Contenido',4,0,0,0,0,0,0),(186,3,144,'Titulo : 3',2,1,0,0,0,0,0),(186,3,145,'Contenido',0,1,0,0,0,0,0),(187,1,34,'Titulo',0,0,0,0,0,0,0),(187,1,35,'Titulo : 3',0,0,0,0,0,0,0),(187,1,36,'Titulo : 4',0,0,0,0,0,0,0),(187,1,37,'Titulo : 3',1,0,0,0,0,0,0),(187,1,39,'Contenido',1,0,0,0,0,0,0),(187,1,40,'Contenido',2,0,0,0,0,0,0),(187,1,41,'Contenido : 5',0,0,0,0,0,0,0),(187,1,42,'Contenido : 6',0,0,0,0,0,0,0),(187,1,43,'Contenido',3,0,0,0,0,0,0),(187,1,44,'Contenido',4,0,0,0,0,0,0),(187,1,143,'Contenido',0,1,0,0,0,0,0),(188,1,34,'Titulo',0,0,0,0,0,0,0),(188,1,35,'Titulo : 3',0,0,0,0,0,0,0),(188,1,36,'Titulo : 4',0,0,0,0,0,0,0),(188,1,37,'Titulo : 3',1,0,0,0,0,0,0),(188,1,39,'Contenido',1,0,0,0,0,0,0),(188,1,40,'Contenido',2,0,0,0,0,0,0),(188,1,41,'Contenido : 5',0,0,0,0,0,0,0),(188,1,42,'Contenido : 6',0,0,0,0,0,0,0),(188,1,43,'Contenido',3,0,0,0,0,0,0),(188,1,44,'Contenido',4,0,0,0,0,0,0),(188,1,77,'Contenido',0,0,0,0,0,0,0),(188,2,34,'Titulo',0,0,0,0,0,0,0),(188,2,35,'Titulo : 3',0,0,0,0,0,0,0),(188,2,36,'Titulo : 4',0,0,0,0,0,0,0),(188,2,37,'Titulo : 3',1,0,0,0,0,0,0),(188,2,39,'Contenido',1,0,0,0,0,0,0),(188,2,40,'Contenido',2,0,0,0,0,0,0),(188,2,41,'Contenido : 5',0,0,0,0,0,0,0),(188,2,42,'Contenido : 6',0,0,0,0,0,0,0),(188,2,43,'Contenido',3,0,0,0,0,0,0),(188,2,44,'Contenido',4,0,0,0,0,0,0),(188,2,165,'Contenido',0,1,0,0,0,0,0),(189,1,34,'Titulo',0,0,0,0,0,0,0),(189,1,35,'Titulo : 3',0,0,0,0,0,0,0),(189,1,36,'Titulo : 4',0,0,0,0,0,0,0),(189,1,37,'Titulo : 3',1,0,0,0,0,0,0),(189,1,82,'Contenido',0,0,0,0,0,0,0),(189,2,34,'Titulo',0,0,0,0,0,0,0),(189,2,35,'Titulo : 3',0,0,0,0,0,0,0),(189,2,36,'Titulo : 4',0,0,0,0,0,0,0),(189,2,37,'Titulo : 3',1,0,0,0,0,0,0),(189,2,82,'Contenido',0,0,0,0,0,0,0),(189,3,34,'Titulo',0,0,0,0,0,0,0),(189,3,35,'Titulo : 3',0,0,0,0,0,0,0),(189,3,36,'Titulo : 4',0,0,0,0,0,0,0),(189,3,37,'Titulo : 3',1,0,0,0,0,0,0),(189,3,82,'Contenido',0,0,0,0,0,0,0),(190,1,34,'Titulo',0,0,0,0,0,0,0),(190,1,35,'Titulo : 3',0,0,1,0,0,0,0),(190,1,36,'Titulo : 4',0,0,1,0,0,0,0),(190,1,37,'Titulo : 3',1,0,1,0,0,0,0),(190,1,39,'Contenido',1,0,0,0,0,0,0),(190,1,40,'Contenido',2,0,0,0,0,0,0),(190,1,41,'Contenido : 5',0,0,0,0,0,0,0),(190,1,42,'Contenido : 6',0,0,0,0,0,0,0),(190,1,43,'Contenido',3,0,0,0,0,0,0),(190,1,44,'Contenido',4,0,0,0,0,0,0),(190,1,157,'Contenido',0,1,0,0,0,0,0),(190,2,34,'Titulo',0,0,0,0,0,0,0),(190,2,35,'Titulo : 3',0,0,1,0,0,0,0),(190,2,36,'Titulo : 4',0,0,1,0,0,0,0),(190,2,37,'Titulo : 3',1,0,1,0,0,0,0),(190,2,39,'Contenido',1,0,0,0,0,0,0),(190,2,40,'Contenido',2,0,0,0,0,0,0),(190,2,41,'Contenido : 5',0,0,0,0,0,0,0),(190,2,42,'Contenido : 6',0,0,0,0,0,0,0),(190,2,43,'Contenido',3,0,0,0,0,0,0),(190,2,44,'Contenido',4,0,0,0,0,0,0),(190,2,159,'Contenido',0,1,0,0,0,0,0),(190,3,34,'Titulo',0,0,0,0,0,0,0),(190,3,35,'Titulo : 3',0,0,1,0,0,0,0),(190,3,36,'Titulo : 4',0,0,1,0,0,0,0),(190,3,37,'Titulo : 3',1,0,1,0,0,0,0),(190,3,39,'Contenido',1,0,0,0,0,0,0),(190,3,40,'Contenido',2,0,0,0,0,0,0),(190,3,41,'Contenido : 5',0,0,0,0,0,0,0),(190,3,42,'Contenido : 6',0,0,0,0,0,0,0),(190,3,43,'Contenido',3,0,0,0,0,0,0),(190,3,44,'Contenido',4,0,0,0,0,0,0),(190,3,161,'Contenido',0,1,0,0,0,0,0),(190,4,34,'Titulo',0,0,0,0,0,0,0),(190,4,35,'Titulo : 3',0,0,1,0,0,0,0),(190,4,36,'Titulo : 4',0,0,1,0,0,0,0),(190,4,37,'Titulo : 3',1,0,1,0,0,0,0),(190,4,39,'Contenido',1,0,0,0,0,0,0),(190,4,40,'Contenido',2,0,0,0,0,0,0),(190,4,41,'Contenido : 5',0,0,0,0,0,0,0),(190,4,42,'Contenido : 6',0,0,0,0,0,0,0),(190,4,43,'Contenido',3,0,0,0,0,0,0),(190,4,44,'Contenido',4,0,0,0,0,0,0),(190,4,162,'Contenido',0,1,0,0,0,0,0),(191,1,21,'Titulo',0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `CollectionVersionBlocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionVersionBlocksCacheSettings`
--

DROP TABLE IF EXISTS `CollectionVersionBlocksCacheSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersionBlocksCacheSettings` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `btCacheBlockOutput` tinyint(1) NOT NULL DEFAULT '0',
  `btCacheBlockOutputOnPost` tinyint(1) NOT NULL DEFAULT '0',
  `btCacheBlockOutputForRegisteredUsers` tinyint(1) NOT NULL DEFAULT '0',
  `btCacheBlockOutputLifetime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`),
  KEY `bID` (`bID`,`cID`,`cvID`,`arHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionVersionBlocksCacheSettings`
--

LOCK TABLES `CollectionVersionBlocksCacheSettings` WRITE;
/*!40000 ALTER TABLE `CollectionVersionBlocksCacheSettings` DISABLE KEYS */;
/*!40000 ALTER TABLE `CollectionVersionBlocksCacheSettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionVersionBlocksOutputCache`
--

DROP TABLE IF EXISTS `CollectionVersionBlocksOutputCache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersionBlocksOutputCache` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `btCachedBlockOutput` longtext COLLATE utf8_unicode_ci,
  `btCachedBlockOutputExpires` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`),
  KEY `bID` (`bID`,`cID`,`cvID`,`arHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionVersionBlocksOutputCache`
--

LOCK TABLES `CollectionVersionBlocksOutputCache` WRITE;
/*!40000 ALTER TABLE `CollectionVersionBlocksOutputCache` DISABLE KEYS */;
/*!40000 ALTER TABLE `CollectionVersionBlocksOutputCache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionVersionFeatureAssignments`
--

DROP TABLE IF EXISTS `CollectionVersionFeatureAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersionFeatureAssignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `faID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`faID`),
  KEY `faID` (`faID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionVersionFeatureAssignments`
--

LOCK TABLES `CollectionVersionFeatureAssignments` WRITE;
/*!40000 ALTER TABLE `CollectionVersionFeatureAssignments` DISABLE KEYS */;
INSERT INTO `CollectionVersionFeatureAssignments` VALUES (145,2,1),(145,3,1),(145,4,1),(161,6,2),(161,7,2),(161,8,2),(161,9,2),(1,13,3),(1,14,3),(1,15,3),(1,16,3),(1,17,3),(1,18,3),(1,19,3),(1,20,3),(1,21,3),(1,22,3),(1,23,3),(1,24,3),(1,25,3),(1,26,3),(1,27,3),(1,28,3),(1,29,3),(149,2,4),(167,3,5),(161,10,6),(145,5,7);
/*!40000 ALTER TABLE `CollectionVersionFeatureAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionVersionRelatedEdits`
--

DROP TABLE IF EXISTS `CollectionVersionRelatedEdits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersionRelatedEdits` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `cRelationID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvRelationID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`cRelationID`,`cvRelationID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionVersionRelatedEdits`
--

LOCK TABLES `CollectionVersionRelatedEdits` WRITE;
/*!40000 ALTER TABLE `CollectionVersionRelatedEdits` DISABLE KEYS */;
/*!40000 ALTER TABLE `CollectionVersionRelatedEdits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionVersionThemeCustomStyles`
--

DROP TABLE IF EXISTS `CollectionVersionThemeCustomStyles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersionThemeCustomStyles` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `pThemeID` int(10) unsigned NOT NULL DEFAULT '0',
  `scvlID` int(10) unsigned DEFAULT '0',
  `preset` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sccRecordID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`pThemeID`),
  KEY `pThemeID` (`pThemeID`),
  KEY `scvlID` (`scvlID`),
  KEY `sccRecordID` (`sccRecordID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionVersionThemeCustomStyles`
--

LOCK TABLES `CollectionVersionThemeCustomStyles` WRITE;
/*!40000 ALTER TABLE `CollectionVersionThemeCustomStyles` DISABLE KEYS */;
/*!40000 ALTER TABLE `CollectionVersionThemeCustomStyles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionVersions`
--

DROP TABLE IF EXISTS `CollectionVersions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersions` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `cvName` text COLLATE utf8_unicode_ci,
  `cvHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cvDescription` text COLLATE utf8_unicode_ci,
  `cvDatePublic` datetime DEFAULT NULL,
  `cvDateCreated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cvComments` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cvIsApproved` tinyint(1) NOT NULL DEFAULT '0',
  `cvIsNew` tinyint(1) NOT NULL DEFAULT '0',
  `cvAuthorUID` int(10) unsigned DEFAULT NULL,
  `cvApproverUID` int(10) unsigned DEFAULT NULL,
  `pThemeID` int(10) unsigned NOT NULL DEFAULT '0',
  `pTemplateID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvActivateDatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`cID`,`cvID`),
  KEY `cvIsApproved` (`cvIsApproved`),
  KEY `cvAuthorUID` (`cvAuthorUID`),
  KEY `cvApproverUID` (`cvApproverUID`),
  KEY `pThemeID` (`pThemeID`),
  KEY `pTemplateID` (`pTemplateID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionVersions`
--

LOCK TABLES `CollectionVersions` WRITE;
/*!40000 ALTER TABLE `CollectionVersions` DISABLE KEYS */;
INSERT INTO `CollectionVersions` VALUES (1,1,'Home','home','','2015-09-21 11:26:34','2015-09-21 11:26:34','Initial Version',0,0,1,NULL,2,5,NULL),(1,2,'Home','home','','2015-09-21 11:26:34','2015-09-21 13:37:42','Nueva Version 2',0,0,1,1,2,9,NULL),(1,3,'Home','home','','2015-09-21 11:26:34','2015-09-21 13:47:05','Version 3',0,0,1,1,2,9,NULL),(1,4,'Home','home','','2015-09-21 11:26:34','2015-09-21 13:57:01','Version 4',0,0,1,1,2,9,NULL),(1,5,'Home','home','','2015-09-21 11:26:34','2015-09-21 13:59:53','Version 5',0,0,1,1,2,9,NULL),(1,6,'Portada','portada','','2015-09-21 11:26:00','2015-09-21 14:08:36','Nueva Version 6',0,0,1,1,2,9,NULL),(1,7,'Portada','portada','','2015-09-21 11:26:00','2015-09-21 14:14:40','Version 7',0,0,1,1,2,9,NULL),(1,8,'Portada','portada','','2015-09-21 11:26:00','2015-09-21 14:15:23','Version 8',0,0,1,1,2,9,NULL),(1,9,'Portada','portada','','2015-09-21 11:26:00','2015-09-21 14:30:37','Version 9',0,0,1,1,2,9,NULL),(1,10,'Portada','portada','','2015-09-21 11:26:00','2015-09-21 14:33:04','Version 10',0,0,1,1,2,9,NULL),(1,11,'Portada','portada','','2015-09-21 11:26:00','2015-09-21 14:34:52','Version 11',0,0,1,1,2,9,NULL),(1,12,'Portada','portada','','2015-09-21 11:26:00','2015-09-21 14:37:36','Version 12',0,0,1,1,2,9,NULL),(1,13,'Portada','portada','','2015-09-21 11:26:00','2015-09-21 14:40:01','Version 13',0,0,1,1,2,9,NULL),(1,14,'Portada','portada','','2015-09-21 11:26:00','2015-09-21 14:41:32','Version 14',0,0,1,1,2,9,NULL),(1,15,'Portada','portada','','2015-09-21 11:26:00','2015-09-21 14:57:23','Version 15',0,0,1,1,2,9,NULL),(1,16,'Portada','portada','','2015-09-21 11:26:00','2015-09-21 15:02:17','Version 16',0,0,1,1,2,9,NULL),(1,17,'Portada','portada','','2015-09-21 11:26:00','2015-09-21 15:03:04','Version 17',0,0,1,1,2,9,NULL),(1,18,'Portada','portada','','2015-09-21 11:26:00','2015-09-21 15:05:33','Version 18',0,0,1,1,2,9,NULL),(1,19,'Portada','portada','','2015-09-21 11:26:00','2015-09-23 07:28:00','Version 19',0,0,1,1,2,9,NULL),(1,20,'Portada','portada','','2015-09-21 11:26:00','2015-09-23 07:29:39','Version 20',0,0,1,1,2,9,NULL),(1,21,'Portada','portada','','2015-09-21 11:26:00','2015-09-23 07:32:43','Version 21',0,0,1,1,2,9,NULL),(1,22,'Portada','portada','','2015-09-21 11:26:00','2015-09-23 09:04:52','Version 22',0,0,1,1,2,9,NULL),(1,23,'Portada','portada','','2015-09-21 11:26:00','2015-09-23 09:10:57','Version 23',0,0,1,1,2,9,NULL),(1,24,'Portada','portada','','2015-09-21 11:26:00','2015-09-23 09:11:31','Version 24',0,0,1,1,2,9,NULL),(1,25,'Portada','portada','','2015-09-21 11:26:00','2015-09-23 11:13:48','Version 25',0,0,1,1,2,9,NULL),(1,26,'Portada','portada','','2015-09-21 11:26:00','2015-10-05 09:28:48','Version 26',0,0,1,1,2,9,NULL),(1,27,'Portada','portada','','2015-09-21 11:26:00','2015-10-08 05:43:08','Version 27',0,0,1,1,2,9,NULL),(1,28,'Portada','portada','','2015-09-21 11:26:00','2015-10-08 05:43:34','Version 28',0,0,1,1,2,9,NULL),(1,29,'Portada','portada','','2015-09-21 11:26:00','2015-10-08 13:31:41','Version 29',1,0,1,1,2,9,NULL),(2,1,'Dashboard','dashboard','','2015-09-21 11:27:06','2015-09-21 11:27:06','Initial Version',1,0,1,NULL,2,0,NULL),(3,1,'Sitemap','sitemap','Whole world at a glance.','2015-09-21 11:27:06','2015-09-21 11:27:06','Initial Version',1,0,1,NULL,2,0,NULL),(4,1,'Full Sitemap','full','','2015-09-21 11:27:07','2015-09-21 11:27:07','Initial Version',1,0,1,NULL,2,0,NULL),(5,1,'Flat View','explore','','2015-09-21 11:27:07','2015-09-21 11:27:07','Initial Version',1,0,1,NULL,2,0,NULL),(6,1,'Page Search','search','','2015-09-21 11:27:08','2015-09-21 11:27:08','Initial Version',1,0,1,NULL,2,0,NULL),(7,1,'Files','files','All documents and images.','2015-09-21 11:27:08','2015-09-21 11:27:08','Initial Version',1,0,1,NULL,2,0,NULL),(8,1,'File Manager','search','','2015-09-21 11:27:09','2015-09-21 11:27:09','Initial Version',1,0,1,NULL,2,0,NULL),(9,1,'Attributes','attributes','','2015-09-21 11:27:09','2015-09-21 11:27:09','Initial Version',1,0,1,NULL,2,0,NULL),(10,1,'File Sets','sets','','2015-09-21 11:27:10','2015-09-21 11:27:10','Initial Version',1,0,1,NULL,2,0,NULL),(11,1,'Add File Set','add_set','','2015-09-21 11:27:10','2015-09-21 11:27:10','Initial Version',1,0,1,NULL,2,0,NULL),(12,1,'Members','users','Add and manage the user accounts and groups on your website.','2015-09-21 11:27:11','2015-09-21 11:27:11','Initial Version',1,0,1,NULL,2,0,NULL),(13,1,'Search Users','search','','2015-09-21 11:27:11','2015-09-21 11:27:11','Initial Version',1,0,1,NULL,2,0,NULL),(14,1,'User Groups','groups','','2015-09-21 11:27:12','2015-09-21 11:27:12','Initial Version',1,0,1,NULL,2,0,NULL),(15,1,'Attributes','attributes','','2015-09-21 11:27:12','2015-09-21 11:27:12','Initial Version',1,0,1,NULL,2,0,NULL),(16,1,'Add User','add','','2015-09-21 11:27:13','2015-09-21 11:27:13','Initial Version',1,0,1,NULL,2,0,NULL),(17,1,'Add Group','add_group','','2015-09-21 11:27:13','2015-09-21 11:27:13','Initial Version',1,0,1,NULL,2,0,NULL),(18,1,'Move Multiple Groups','bulkupdate','','2015-09-21 11:27:14','2015-09-21 11:27:14','Initial Version',1,0,1,NULL,2,0,NULL),(19,1,'Group Sets','group_sets','','2015-09-21 11:27:15','2015-09-21 11:27:15','Initial Version',1,0,1,NULL,2,0,NULL),(20,1,'Community Points','points',NULL,'2015-09-21 11:27:15','2015-09-21 11:27:15','Initial Version',1,0,1,NULL,2,0,NULL),(21,1,'Assign Points','assign',NULL,'2015-09-21 11:27:16','2015-09-21 11:27:16','Initial Version',1,0,1,NULL,2,0,NULL),(22,1,'Actions','actions',NULL,'2015-09-21 11:27:17','2015-09-21 11:27:17','Initial Version',1,0,1,NULL,2,0,NULL),(23,1,'Reports','reports','Get data from forms and logs.','2015-09-21 11:27:17','2015-09-21 11:27:17','Initial Version',1,0,1,NULL,2,0,NULL),(24,1,'Form Results','forms','Get submission data.','2015-09-21 11:27:18','2015-09-21 11:27:18','Initial Version',1,0,1,NULL,2,0,NULL),(25,1,'Surveys','surveys','','2015-09-21 11:27:18','2015-09-21 11:27:18','Initial Version',1,0,1,NULL,2,0,NULL),(26,1,'Logs','logs','','2015-09-21 11:27:19','2015-09-21 11:27:19','Initial Version',1,0,1,NULL,2,0,NULL),(27,1,'Pages & Themes','pages','Reskin your site.','2015-09-21 11:27:19','2015-09-21 11:27:19','Initial Version',1,0,1,NULL,2,0,NULL),(28,1,'Themes','themes','Reskin your site.','2015-09-21 11:27:20','2015-09-21 11:27:20','Initial Version',1,0,1,NULL,2,0,NULL),(29,1,'Inspect','inspect','','2015-09-21 11:27:20','2015-09-21 11:27:20','Initial Version',1,0,1,NULL,2,0,NULL),(30,1,'Page Types','types','','2015-09-21 11:27:21','2015-09-21 11:27:21','Initial Version',1,0,1,NULL,2,0,NULL),(31,1,'Organize Page Type Order','organize','','2015-09-21 11:27:22','2015-09-21 11:27:22','Initial Version',1,0,1,NULL,2,0,NULL),(32,1,'Add Page Type','add','','2015-09-21 11:27:22','2015-09-21 11:27:22','Initial Version',1,0,1,NULL,2,0,NULL),(33,1,'Compose Form','form','','2015-09-21 11:27:23','2015-09-21 11:27:23','Initial Version',1,0,1,NULL,2,0,NULL),(34,1,'Defaults and Output','output','','2015-09-21 11:27:23','2015-09-21 11:27:23','Initial Version',1,0,1,NULL,2,0,NULL),(35,1,'Page Type Attributes','attributes','','2015-09-21 11:27:24','2015-09-21 11:27:24','Initial Version',1,0,1,NULL,2,0,NULL),(36,1,'Page Type Permissions','permissions','','2015-09-21 11:27:24','2015-09-21 11:27:24','Initial Version',1,0,1,NULL,2,0,NULL),(37,1,'Page Templates','templates','Form factors for pages in your site.','2015-09-21 11:27:25','2015-09-21 11:27:25','Initial Version',1,0,1,NULL,2,0,NULL),(38,1,'Add Page Template','add','Add page templates to your site.','2015-09-21 11:27:26','2015-09-21 11:27:26','Initial Version',1,0,1,NULL,2,0,NULL),(39,1,'Attributes','attributes','','2015-09-21 11:27:26','2015-09-21 11:27:26','Initial Version',1,0,1,NULL,2,0,NULL),(40,1,'Single Pages','single','','2015-09-21 11:27:27','2015-09-21 11:27:27','Initial Version',1,0,1,NULL,2,0,NULL),(41,1,'RSS Feeds','feeds','','2015-09-21 11:27:27','2015-09-21 11:27:27','Initial Version',1,0,1,NULL,2,0,NULL),(42,1,'Conversations','conversations','','2015-09-21 11:27:28','2015-09-21 11:27:28','Initial Version',1,0,1,NULL,2,0,NULL),(43,1,'Messages','messages','','2015-09-21 11:27:29','2015-09-21 11:27:29','Initial Version',1,0,1,NULL,2,0,NULL),(44,1,'Workflow','workflow','','2015-09-21 11:27:29','2015-09-21 11:27:29','Initial Version',1,0,1,NULL,2,0,NULL),(45,1,'Waiting for Me','me','','2015-09-21 11:27:30','2015-09-21 11:27:30','Initial Version',1,0,1,NULL,2,0,NULL),(46,1,'Workflow List','workflows','','2015-09-21 11:27:30','2015-09-21 11:27:30','Initial Version',1,0,1,NULL,2,0,NULL),(47,1,'Stacks & Blocks','blocks','Manage sitewide content and administer block types.','2015-09-21 11:27:31','2015-09-21 11:27:31','Initial Version',1,0,1,NULL,2,0,NULL),(48,1,'Stacks','stacks','Share content across your site.','2015-09-21 11:27:31','2015-09-21 11:27:31','Initial Version',1,0,1,NULL,2,0,NULL),(49,1,'Block & Stack Permissions','permissions','Control who can add blocks and stacks on your site.','2015-09-21 11:27:32','2015-09-21 11:27:32','Initial Version',1,0,1,NULL,2,0,NULL),(50,1,'Stack List','list','','2015-09-21 11:27:32','2015-09-21 11:27:32','Initial Version',1,0,1,NULL,2,0,NULL),(51,1,'Block Types','types','Manage the installed block types in your site.','2015-09-21 11:27:33','2015-09-21 11:27:33','Initial Version',1,0,1,NULL,2,0,NULL),(52,1,'Extend concrete5','extend','','2015-09-21 11:27:33','2015-09-21 11:27:33','Initial Version',1,0,1,NULL,2,0,NULL),(53,1,'Dashboard','news','','2015-09-21 11:27:34','2015-09-21 11:27:34','Initial Version',1,0,1,NULL,2,0,NULL),(54,1,'Add Functionality','install','Install add-ons & themes.','2015-09-21 11:27:35','2015-09-21 11:27:35','Initial Version',1,0,1,NULL,2,0,NULL),(55,1,'Update Add-Ons','update','Update your installed packages.','2015-09-21 11:27:36','2015-09-21 11:27:36','Initial Version',1,0,1,NULL,2,0,NULL),(56,1,'Connect to the Community','connect','Connect to the concrete5 community.','2015-09-21 11:27:36','2015-09-21 11:27:36','Initial Version',1,0,1,NULL,2,0,NULL),(57,1,'Get More Themes','themes','Download themes from concrete5.org.','2015-09-21 11:27:36','2015-09-21 11:27:36','Initial Version',1,0,1,NULL,2,0,NULL),(58,1,'Get More Add-Ons','addons','Download add-ons from concrete5.org.','2015-09-21 11:27:37','2015-09-21 11:27:37','Initial Version',1,0,1,NULL,2,0,NULL),(59,1,'System & Settings','system','Secure and setup your site.','2015-09-21 11:27:38','2015-09-21 11:27:38','Initial Version',1,0,1,NULL,2,0,NULL),(60,1,'Basics','basics','Basic information about your website.','2015-09-21 11:27:39','2015-09-21 11:27:39','Initial Version',1,0,1,NULL,2,0,NULL),(61,1,'Site Name','name','','2015-09-21 11:27:39','2015-09-21 11:27:39','Initial Version',1,0,1,NULL,2,0,NULL),(62,1,'Accessibility','accessibility','','2015-09-21 11:27:40','2015-09-21 11:27:40','Initial Version',1,0,1,NULL,2,0,NULL),(63,1,'Social Links','social','','2015-09-21 11:27:40','2015-09-21 11:27:40','Initial Version',1,0,1,NULL,2,0,NULL),(64,1,'Bookmark Icons','icons','Bookmark icon and mobile home screen icon setup.','2015-09-21 11:27:41','2015-09-21 11:27:41','Initial Version',1,0,1,NULL,2,0,NULL),(65,1,'Rich Text Editor','editor','','2015-09-21 11:27:41','2015-09-21 11:27:41','Initial Version',1,0,1,NULL,2,0,NULL),(66,1,'Languages','multilingual','','2015-09-21 11:27:42','2015-09-21 11:27:42','Initial Version',1,0,1,NULL,2,0,NULL),(67,1,'Time Zone','timezone','','2015-09-21 11:27:42','2015-09-21 11:27:42','Initial Version',1,0,1,NULL,2,0,NULL),(68,1,'Multilingual','multilingual','Run your site in multiple languages.','2015-09-21 11:27:43','2015-09-21 11:27:43','Initial Version',1,0,1,NULL,2,0,NULL),(69,1,'Multilingual Setup','setup','','2015-09-21 11:27:44','2015-09-21 11:27:44','Initial Version',1,0,1,NULL,2,0,NULL),(70,1,'Copy Languages','copy','','2015-09-21 11:27:44','2015-09-21 11:27:44','Initial Version',1,0,1,NULL,2,0,NULL),(71,1,'Page Report','page_report','','2015-09-21 11:27:45','2015-09-21 11:27:45','Initial Version',1,0,1,NULL,2,0,NULL),(72,1,'Translate Site Interface','translate_interface','','2015-09-21 11:27:45','2015-09-21 11:27:45','Initial Version',1,0,1,NULL,2,0,NULL),(73,1,'SEO & Statistics','seo','Enable pretty URLs and tracking codes.','2015-09-21 11:27:46','2015-09-21 11:27:46','Initial Version',1,0,1,NULL,2,0,NULL),(74,1,'URLs and Redirection','urls','','2015-09-21 11:27:46','2015-09-21 11:27:46','Initial Version',1,0,1,NULL,2,0,NULL),(75,1,'Bulk SEO Updater','bulk','','2015-09-21 11:27:47','2015-09-21 11:27:47','Initial Version',1,0,1,NULL,2,0,NULL),(76,1,'Tracking Codes','codes','','2015-09-21 11:27:47','2015-09-21 11:27:47','Initial Version',1,0,1,NULL,2,0,NULL),(77,1,'Excluded URL Word List','excluded','','2015-09-21 11:27:48','2015-09-21 11:27:48','Initial Version',1,0,1,NULL,2,0,NULL),(78,1,'Search Index','searchindex','','2015-09-21 11:27:48','2015-09-21 11:27:48','Initial Version',1,0,1,NULL,2,0,NULL),(79,1,'Files','files','','2015-09-21 11:27:49','2015-09-21 11:27:49','Initial Version',1,0,1,NULL,2,0,NULL),(80,1,'File Manager Permissions','permissions','','2015-09-21 11:27:49','2015-09-21 11:27:49','Initial Version',1,0,1,NULL,2,0,NULL),(81,1,'Allowed File Types','filetypes','','2015-09-21 11:27:50','2015-09-21 11:27:50','Initial Version',1,0,1,NULL,2,0,NULL),(82,1,'Thumbnails','thumbnails','','2015-09-21 11:27:50','2015-09-21 11:27:50','Initial Version',1,0,1,NULL,2,0,NULL),(83,1,'File Storage Locations','storage','','2015-09-21 11:27:51','2015-09-21 11:27:51','Initial Version',1,0,1,NULL,2,0,NULL),(84,1,'Optimization','optimization','Keep your site running well.','2015-09-21 11:27:52','2015-09-21 11:27:52','Initial Version',1,0,1,NULL,2,0,NULL),(85,1,'Cache & Speed Settings','cache','','2015-09-21 11:27:52','2015-09-21 11:27:52','Initial Version',1,0,1,NULL,2,0,NULL),(86,1,'Clear Cache','clearcache','','2015-09-21 11:27:53','2015-09-21 11:27:53','Initial Version',1,0,1,NULL,2,0,NULL),(87,1,'Automated Jobs','jobs','','2015-09-21 11:27:53','2015-09-21 11:27:53','Initial Version',1,0,1,NULL,2,0,NULL),(88,1,'Database Query Log','query_log','','2015-09-21 11:27:54','2015-09-21 11:27:54','Initial Version',1,0,1,NULL,2,0,NULL),(89,1,'Permissions & Access','permissions','Control who sees and edits your site.','2015-09-21 11:27:55','2015-09-21 11:27:55','Initial Version',1,0,1,NULL,2,0,NULL),(90,1,'Site Access','site','','2015-09-21 11:27:55','2015-09-21 11:27:55','Initial Version',1,0,1,NULL,2,0,NULL),(91,1,'Task Permissions','tasks','','2015-09-21 11:27:56','2015-09-21 11:27:56','Initial Version',1,0,1,NULL,2,0,NULL),(92,1,'User Permissions','users','','2015-09-21 11:27:56','2015-09-21 11:27:56','Initial Version',1,0,1,NULL,2,0,NULL),(93,1,'Advanced Permissions','advanced','','2015-09-21 11:27:57','2015-09-21 11:27:57','Initial Version',1,0,1,NULL,2,0,NULL),(94,1,'IP Blacklist','blacklist','','2015-09-21 11:27:58','2015-09-21 11:27:58','Initial Version',1,0,1,NULL,2,0,NULL),(95,1,'Captcha Setup','captcha','','2015-09-21 11:27:58','2015-09-21 11:27:58','Initial Version',1,0,1,NULL,2,0,NULL),(96,1,'Spam Control','antispam','','2015-09-21 11:27:59','2015-09-21 11:27:59','Initial Version',1,0,1,NULL,2,0,NULL),(97,1,'Maintenance Mode','maintenance','','2015-09-21 11:28:00','2015-09-21 11:28:00','Initial Version',1,0,1,NULL,2,0,NULL),(98,1,'Login & Registration','registration','Change login behaviors and setup public profiles.','2015-09-21 11:28:00','2015-09-21 11:28:00','Initial Version',1,0,1,NULL,2,0,NULL),(99,1,'Login Destination','postlogin','','2015-09-21 11:28:01','2015-09-21 11:28:01','Initial Version',1,0,1,NULL,2,0,NULL),(100,1,'Public Profiles','profiles','','2015-09-21 11:28:01','2015-09-21 11:28:01','Initial Version',1,0,1,NULL,2,0,NULL),(101,1,'Public Registration','open','','2015-09-21 11:28:02','2015-09-21 11:28:02','Initial Version',1,0,1,NULL,2,0,NULL),(102,1,'Authentication Types','authentication','','2015-09-21 11:28:03','2015-09-21 11:28:03','Initial Version',1,0,1,NULL,2,0,NULL),(103,1,'Email','mail','Control how your site send and processes mail.','2015-09-21 11:28:03','2015-09-21 11:28:03','Initial Version',1,0,1,NULL,2,0,NULL),(104,1,'SMTP Method','method','','2015-09-21 11:28:04','2015-09-21 11:28:04','Initial Version',1,0,1,NULL,2,0,NULL),(105,1,'Test Mail Settings','test','','2015-09-21 11:28:05','2015-09-21 11:28:05','Initial Version',1,0,1,NULL,2,0,NULL),(106,1,'Email Importers','importers','','2015-09-21 11:28:05','2015-09-21 11:28:05','Initial Version',1,0,1,NULL,2,0,NULL),(107,1,'Conversations','conversations','Manage your conversations settings','2015-09-21 11:28:06','2015-09-21 11:28:06','Initial Version',1,0,1,NULL,2,0,NULL),(108,1,'Settings','settings','','2015-09-21 11:28:06','2015-09-21 11:28:06','Initial Version',1,0,1,NULL,2,0,NULL),(109,1,'Community Points','points','','2015-09-21 11:28:07','2015-09-21 11:28:07','Initial Version',1,0,1,NULL,2,0,NULL),(110,1,'Banned Words','bannedwords','','2015-09-21 11:28:07','2015-09-21 11:28:07','Initial Version',1,0,1,NULL,2,0,NULL),(111,1,'Conversation Permissions','permissions','','2015-09-21 11:28:08','2015-09-21 11:28:08','Initial Version',1,0,1,NULL,2,0,NULL),(112,1,'Attributes','attributes','Setup attributes for pages, users, files and more.','2015-09-21 11:28:08','2015-09-21 11:28:08','Initial Version',1,0,1,NULL,2,0,NULL),(113,1,'Sets','sets','Group attributes into sets for easier organization','2015-09-21 11:28:09','2015-09-21 11:28:09','Initial Version',1,0,1,NULL,2,0,NULL),(114,1,'Types','types','Choose which attribute types are available for different items.','2015-09-21 11:28:10','2015-09-21 11:28:10','Initial Version',1,0,1,NULL,2,0,NULL),(115,1,'Topics','topics','','2015-09-21 11:28:10','2015-09-21 11:28:10','Initial Version',1,0,1,NULL,2,0,NULL),(116,1,'Add Topic Tree','add','','2015-09-21 11:28:11','2015-09-21 11:28:11','Initial Version',1,0,1,NULL,2,0,NULL),(117,1,'Environment','environment','Advanced settings for web developers.','2015-09-21 11:28:11','2015-09-21 11:28:11','Initial Version',1,0,1,NULL,2,0,NULL),(118,1,'Environment Information','info','','2015-09-21 11:28:12','2015-09-21 11:28:12','Initial Version',1,0,1,NULL,2,0,NULL),(119,1,'Debug Settings','debug','','2015-09-21 11:28:12','2015-09-21 11:28:12','Initial Version',1,0,1,NULL,2,0,NULL),(120,1,'Logging Settings','logging','','2015-09-21 11:28:13','2015-09-21 11:28:13','Initial Version',1,0,1,NULL,2,0,NULL),(121,1,'Proxy Server','proxy','','2015-09-21 11:28:14','2015-09-21 11:28:14','Initial Version',1,0,1,NULL,2,0,NULL),(122,1,'Database Entities','entities','','2015-09-21 11:28:14','2015-09-21 11:28:14','Initial Version',1,0,1,NULL,2,0,NULL),(123,1,'Backup & Restore','backup','Backup or restore your website.','2015-09-21 11:28:15','2015-09-21 11:28:15','Initial Version',1,0,1,NULL,2,0,NULL),(124,1,'Backup Database','backup','','2015-09-21 11:28:16','2015-09-21 11:28:16','Initial Version',1,0,1,NULL,2,0,NULL),(125,1,'Update concrete5','update','','2015-09-21 11:28:16','2015-09-21 11:28:16','Initial Version',1,0,1,NULL,2,0,NULL),(126,1,'Welcome to concrete5','welcome','Learn about how to use concrete5, how to develop for concrete5, and get general help.','2015-09-21 11:28:20','2015-09-21 11:28:20','Initial Version',1,0,1,NULL,2,4,NULL),(127,1,'Customize Dashboard Home','home','','2015-09-21 11:28:20','2015-09-21 11:28:20','Initial Version',1,0,1,NULL,2,2,NULL),(128,1,'Drafts','!drafts','','2015-09-21 11:28:42','2015-09-21 11:28:42','Initial Version',1,0,1,NULL,2,0,NULL),(129,1,'Trash','!trash','','2015-09-21 11:28:43','2015-09-21 11:28:43','Initial Version',1,0,1,NULL,2,0,NULL),(130,1,'Stacks','!stacks','','2015-09-21 11:28:43','2015-09-21 11:28:43','Initial Version',1,0,1,NULL,2,0,NULL),(131,1,'Login','login','','2015-09-21 11:28:44','2015-09-21 11:28:44','Initial Version',1,0,1,NULL,2,0,NULL),(132,1,'Register','register','','2015-09-21 11:28:44','2015-09-21 11:28:44','Initial Version',1,0,1,NULL,2,0,NULL),(133,1,'My Account','account','','2015-09-21 11:28:45','2015-09-21 11:28:45','Initial Version',1,0,1,NULL,2,0,NULL),(134,1,'Edit Profile','edit_profile','Edit your user profile and change password.','2015-09-21 11:28:45','2015-09-21 11:28:45','Initial Version',1,0,1,NULL,2,0,NULL),(135,1,'Profile Picture','avatar','Specify a new image attached to posts or edits.','2015-09-21 11:28:46','2015-09-21 11:28:46','Initial Version',1,0,1,NULL,2,0,NULL),(136,1,'Messages','messages','Inbox for site-specific messages.','2015-09-21 11:28:46','2015-09-21 11:28:46','Initial Version',1,0,1,NULL,2,0,NULL),(137,1,'Inbox','inbox','','2015-09-21 11:28:47','2015-09-21 11:28:47','Initial Version',1,0,1,NULL,2,0,NULL),(138,1,'Members','members','','2015-09-21 11:28:47','2015-09-21 11:28:47','Initial Version',1,0,1,NULL,2,0,NULL),(139,1,'View Profile','profile','','2015-09-21 11:28:47','2015-09-21 11:28:47','Initial Version',1,0,1,NULL,2,0,NULL),(140,1,'Directory','directory','','2015-09-21 11:28:48','2015-09-21 11:28:48','Initial Version',1,0,1,NULL,2,0,NULL),(141,1,'Page Not Found','page_not_found','','2015-09-21 11:28:48','2015-09-21 11:28:48','Initial Version',1,0,1,NULL,2,0,NULL),(142,1,'Page Forbidden','page_forbidden','','2015-09-21 11:28:49','2015-09-21 11:28:49','Initial Version',1,0,1,NULL,2,0,NULL),(143,1,'Download File','download_file','','2015-09-21 11:28:49','2015-09-21 11:28:49','Initial Version',1,0,1,NULL,2,0,NULL),(144,1,'',NULL,NULL,'2015-09-21 11:28:53','2015-09-21 11:28:53','Initial Version',1,0,NULL,NULL,0,5,NULL),(145,1,'Header Site Title','header-site-title',NULL,'2015-09-21 11:29:44','2015-09-21 11:29:44','Initial Version',0,0,1,NULL,2,0,NULL),(145,2,'Header Site Title','header-site-title',NULL,'2015-09-21 11:29:44','2015-09-21 13:47:05','Nueva Version 2',0,0,1,1,2,0,NULL),(145,3,'Header Site Title','header-site-title',NULL,'2015-09-21 11:29:44','2015-09-21 13:59:53','Nueva Version 3',0,0,1,1,2,0,NULL),(145,4,'Header Site Title','header-site-title',NULL,'2015-09-21 11:29:44','2015-09-21 14:00:02','Nueva Version 4',0,0,1,1,2,0,NULL),(145,5,'Header Site Title','header-site-title',NULL,'2015-09-21 11:29:44','2015-10-05 09:28:48','Nueva Version 5',1,0,1,1,2,0,NULL),(146,1,'Header Navigation','header-navigation',NULL,'2015-09-21 11:29:45','2015-09-21 11:29:45','Initial Version',0,0,1,NULL,2,0,NULL),(146,2,'Header Navigation','header-navigation',NULL,'2015-09-21 11:29:45','2015-09-21 14:08:15','Nueva Version 2',0,0,1,1,2,0,NULL),(146,3,'Header Navigation','header-navigation',NULL,'2015-09-21 11:29:45','2015-09-21 14:08:21','Nueva Version 3',0,0,1,1,2,0,NULL),(146,4,'Header Navigation','header-navigation',NULL,'2015-09-21 11:29:45','2015-09-21 14:14:40','Nueva Version 4',0,0,1,1,2,0,NULL),(146,5,'Header Navigation','header-navigation',NULL,'2015-09-21 11:29:45','2015-09-21 14:15:23','Nueva Version 5',0,0,1,1,2,0,NULL),(146,6,'Header Navigation','header-navigation',NULL,'2015-09-21 11:29:45','2015-09-21 14:15:34','Nueva Version 6',1,0,1,1,2,0,NULL),(147,1,'Footer Legal','footer-legal',NULL,'2015-09-21 11:29:45','2015-09-21 11:29:45','Initial Version',0,0,1,NULL,2,0,NULL),(147,2,'Footer Legal','footer-legal',NULL,'2015-09-21 11:29:45','2015-09-21 14:42:05','Nueva Version 2',1,0,1,1,2,0,NULL),(148,1,'Footer Navigation','footer-navigation',NULL,'2015-09-21 11:29:46','2015-09-21 11:29:46','Initial Version',0,0,1,NULL,2,0,NULL),(148,2,'Footer Navigation','footer-navigation',NULL,'2015-09-21 11:29:46','2015-09-21 14:41:32','Nueva Version 2',1,0,1,1,2,0,NULL),(149,1,'Footer Contact','footer-contact',NULL,'2015-09-21 11:29:46','2015-09-21 11:29:46','Initial Version',0,0,1,NULL,2,0,NULL),(149,2,'Footer Contact','footer-contact',NULL,'2015-09-21 11:29:46','2015-09-21 14:43:32','Nueva Version 2',1,0,1,1,2,0,NULL),(150,1,'Header Search','header-search',NULL,'2015-09-21 11:30:06','2015-09-21 11:30:06','Initial Version',1,0,1,NULL,2,0,NULL),(151,1,'Footer Site Title','footer-site-title',NULL,'2015-09-21 11:30:06','2015-09-21 11:30:06','Initial Version',1,0,1,NULL,2,0,NULL),(152,1,'Footer Social','footer-social',NULL,'2015-09-21 11:30:07','2015-09-21 11:30:07','Initial Version',1,0,1,NULL,2,0,NULL),(153,1,'','',NULL,'2015-09-21 13:34:33','2015-09-21 13:34:33','Initial Version',0,1,1,NULL,2,5,NULL),(161,1,'Search','search',NULL,'2015-09-21 13:38:11','2015-09-21 13:38:11','Initial Version',0,0,1,NULL,2,0,NULL),(161,2,'Search','search',NULL,'2015-09-21 13:38:11','2015-09-21 13:54:36','Nueva Version 2',0,0,1,1,2,0,NULL),(161,3,'Search','search',NULL,'2015-09-21 13:38:11','2015-09-21 13:57:01','Nueva Version 3',0,0,1,1,2,0,NULL),(161,4,'Search','search',NULL,'2015-09-21 13:38:11','2015-09-21 13:57:08','Nueva Version 4',0,0,1,1,2,0,NULL),(161,5,'Search','search',NULL,'2015-09-21 13:38:11','2015-09-21 13:57:30','Nueva Version 5',0,0,1,1,2,0,NULL),(161,6,'Search','search',NULL,'2015-09-21 13:38:11','2015-09-21 14:07:22','Nueva Version 6',0,0,1,1,2,0,NULL),(161,7,'Search','search',NULL,'2015-09-21 13:38:11','2015-09-21 14:07:53','Nueva Version 7',0,0,1,1,2,0,NULL),(161,8,'Search','search',NULL,'2015-09-21 13:38:11','2015-09-21 14:27:07','Nueva Version 8',0,0,1,1,2,0,NULL),(161,9,'Search','search',NULL,'2015-09-21 13:38:11','2015-09-22 07:06:02','Nueva Version 9',0,0,1,1,2,0,NULL),(161,10,'Search','search',NULL,'2015-09-21 13:38:11','2015-09-23 09:10:57','Nueva Version 10',1,0,1,1,2,0,NULL),(163,1,'',NULL,NULL,'2015-09-21 14:17:43','2015-09-21 14:17:43','Initial Version',1,0,NULL,NULL,0,10,NULL),(164,1,'Institución','institucion','','2015-09-21 14:18:59','2015-09-21 14:18:59','Initial Version',1,0,1,1,2,10,NULL),(165,1,'Noticias','noticias','','2015-09-21 14:19:39','2015-09-21 14:19:39','Initial Version',0,0,1,1,2,10,NULL),(165,2,'Noticias','noticias','','2015-09-21 14:19:00','2015-09-21 14:20:25','Nueva Version 2',0,0,1,1,2,10,NULL),(165,3,'Noticias','noticias','','2015-09-21 14:19:00','2015-09-21 14:59:02','Version 3',1,0,1,1,2,10,NULL),(166,1,'Misión y Visión','mision-y-vision','','2015-09-21 14:20:37','2015-09-21 14:20:37','Initial Version',0,0,1,1,2,10,NULL),(166,2,'Misión y Visión','mision-y-vision','','2015-09-21 14:20:37','2015-09-23 08:36:05','Version 2',0,0,1,1,2,10,NULL),(166,3,'Misión y Visión','mision-y-vision','','2015-09-21 14:20:37','2015-09-23 08:40:39','Version 3',1,0,1,1,2,10,NULL),(167,1,'Organigrama','organigrama','','2015-09-21 14:21:02','2015-09-21 14:21:02','Initial Version',0,0,1,1,2,10,NULL),(167,2,'Organigrama','organigrama','','2015-09-21 14:21:02','2015-09-23 08:37:23','Version 2',0,0,1,1,2,10,NULL),(167,3,'Organigrama','organigrama','','2015-09-21 14:21:02','2015-09-23 08:44:36','Version 3',1,0,1,1,2,10,NULL),(168,1,'Marco Legal','marco-legal','','2015-09-21 14:21:26','2015-09-21 14:21:26','Initial Version',0,0,1,1,2,10,NULL),(168,2,'Marco Legal','marco-legal','','2015-09-21 14:21:26','2015-09-23 08:39:24','Version 2',1,0,1,1,2,10,NULL),(169,1,'Autoridades','autoridades','','2015-09-21 14:21:53','2015-09-21 14:21:53','Initial Version',0,0,1,1,2,10,NULL),(169,2,'Autoridades','autoridades','','2015-09-21 14:21:53','2015-09-23 08:39:55','Version 2',1,0,1,1,2,10,NULL),(170,1,'Agenda','agenda','','2015-09-21 14:22:49','2015-09-21 14:22:49','Initial Version',0,0,1,1,2,10,NULL),(170,2,'Agenda','agenda','','2015-09-21 14:22:49','2015-09-23 08:46:20','Version 2',0,0,1,1,2,10,NULL),(170,3,'Agenda','agenda','','2015-09-21 14:22:49','2015-09-23 08:47:32','Version 3',1,0,1,1,2,10,NULL),(171,1,'Galería','galeria','','2015-09-21 14:23:19','2015-09-21 14:23:19','Initial Version',0,0,1,1,2,10,NULL),(171,2,'Galería','galeria','','2015-09-21 14:23:19','2015-09-23 07:48:00','Version 2',1,0,1,1,2,10,NULL),(172,1,'Contacto','contacto','','2015-09-21 14:23:51','2015-09-21 14:23:51','Initial Version',0,0,1,1,2,10,NULL),(172,2,'Contacto','contacto','','2015-09-21 14:23:51','2015-09-23 08:48:52','Version 2',0,0,1,1,2,10,NULL),(172,3,'Contacto','contacto','','2015-09-21 14:23:51','2015-09-23 08:51:36','Version 3',1,0,1,1,2,10,NULL),(173,1,'Trámites','tramites','','2015-09-21 14:24:13','2015-09-21 14:24:13','Initial Version',0,0,1,1,2,10,NULL),(173,2,'Trámites','tramites','','2015-09-21 14:24:13','2015-09-23 09:10:02','Version 2',0,0,1,1,2,10,NULL),(173,3,'Trámites','tramites','','2015-09-21 14:24:13','2015-10-05 09:28:13','Version 3',1,0,1,1,2,10,NULL),(174,1,'Transparencia','transparencia','','2015-09-21 14:24:31','2015-09-21 14:24:31','Initial Version',0,0,1,1,2,10,NULL),(174,2,'Transparencia','transparencia','','2015-09-21 14:24:31','2015-09-23 08:20:56','Version 2',1,0,1,1,2,10,NULL),(175,1,'Buscador','buscador','','2015-09-21 14:25:41','2015-09-21 14:25:41','Initial Version',0,0,1,1,2,10,NULL),(175,2,'Buscador','buscador','','2015-09-21 14:25:41','2015-09-21 14:26:27','Version 2',1,0,1,1,2,10,NULL),(176,1,'','',NULL,'2015-09-21 14:17:43','2015-09-21 14:44:36','Initial Version',1,0,NULL,NULL,0,10,NULL),(177,1,'Titulo de la Noticia','titulo-de-la-noticia','Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.\n','2015-09-21 14:55:11','2015-09-21 14:55:11','Initial Version',0,0,1,1,2,10,NULL),(177,2,'Titulo de la Noticia 1','titulo-de-la-noticia','Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.\n','2015-09-21 14:55:11','2015-09-21 15:00:34','Nueva Version 2',0,0,1,1,2,10,NULL),(177,3,'Titulo de la Noticia 1','titulo-de-la-noticia','Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.\n','2015-09-21 14:55:11','2015-09-22 07:04:38','Version 3',1,0,1,1,2,10,NULL),(177,4,'Titulo de la Noticia 1','titulo-de-la-noticia','Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.\n','2015-09-21 14:55:11','2015-09-22 07:08:32','Nueva Version 4',0,1,1,NULL,2,10,NULL),(178,1,'Titulo de la Noticia 2','titulo-de-la-noticia-2','Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.\n','2015-09-21 14:59:38','2015-09-21 14:59:38','Initial Version',0,0,1,1,2,10,NULL),(178,2,'Titulo de la Noticia 2','titulo-de-la-noticia-2','Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.\n','2015-09-21 14:59:38','2015-09-21 15:00:13','Nueva Version 2',0,0,1,1,2,10,NULL),(178,3,'Titulo de la Noticia 2','titulo-de-la-noticia-2','Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.\n','2015-09-21 14:59:38','2015-09-23 10:06:36','Nueva Version 3',0,0,1,1,2,10,NULL),(178,4,'Titulo de la Noticia 2','titulo-de-la-noticia-2','Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum\n','2015-09-21 14:59:38','2015-09-23 10:10:36','Version 4',1,0,1,1,2,10,NULL),(179,1,'','',NULL,'2015-09-21 14:17:43','2015-09-23 07:34:26','Initial Version',1,0,NULL,NULL,0,10,NULL),(180,1,'Titulo del Álbum 1','titulo-del-album-1','Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.\n','2015-09-23 07:44:58','2015-09-23 07:44:58','Initial Version',0,0,1,1,2,10,NULL),(180,2,'Titulo del Álbum 1','titulo-del-album-1','Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.\n','2015-09-23 07:44:58','2015-09-23 07:46:34','Version 2',1,0,1,1,2,10,NULL),(181,1,'Titulo del Álbum 2','titulo-del-album-2','Es un hecho establecido hace demasiado tiempo que un lector se distraerá con el contenido del texto de un sitio mientras que mira su diseño. El punto de usar Lorem Ipsum es que tiene una distribución más o menos normal de las letras, al contrario de usar textos como por ejemplo \"Contenido aquí, contenido aquí\". Estos textos hacen parecerlo un español que se puede leer. Muchos paquetes de autoedición y editores de páginas web usan el Lorem Ipsum como su texto por defecto, y al hacer una búsqueda de \"Lorem Ipsum\" va a dar por resultado muchos sitios web que usan este texto si se encuentran en estado de desarrollo. Muchas versiones han evolucionado a través de los años, algunas veces por accidente, otras veces a propósito (por ejemplo insertándole humor y cosas por el estilo).\n','2015-09-23 07:48:42','2015-09-23 07:48:42','Initial Version',1,0,1,1,2,10,NULL),(182,1,'','',NULL,'2015-09-21 14:17:43','2015-09-23 07:51:18','Initial Version',1,0,NULL,NULL,0,10,NULL),(183,1,'Enero / 2015','enero-2015',NULL,'2015-09-01 05:08:00','2015-09-23 08:17:55','Initial Version',0,0,1,1,2,10,NULL),(183,2,'Enero / 2015','enero-2015',NULL,'2015-09-01 05:08:00','2015-09-23 08:19:19','Version 2',0,0,1,1,2,10,NULL),(183,3,'Enero / 2015','enero-2015',NULL,'2015-09-01 05:08:00','2015-09-23 08:33:01','Version 3',0,0,1,1,2,10,NULL),(183,4,'Enero / 2015','enero-2015',NULL,'2015-09-01 05:08:00','2015-09-23 08:33:44','Version 4',0,0,1,1,2,10,NULL),(183,5,'Enero / 2015','enero-2015',NULL,'2015-09-01 05:08:00','2015-09-23 11:14:45','Version 5',1,0,1,1,2,10,NULL),(186,1,'Noticia 3','noticia-3','asdasd','2015-09-23 10:22:21','2015-09-23 10:22:21','Initial Version',0,0,2,2,2,10,NULL),(186,2,'Noticia 3','noticia-3','asdasd','2015-09-23 10:22:21','2015-09-23 10:24:36','Nueva Version 2',1,0,2,2,2,10,NULL),(186,3,'Noticia 3','noticia-3','asdasd','2015-09-23 10:22:21','2015-09-23 10:27:56','Nueva Version 3',0,1,2,NULL,2,10,NULL),(187,1,'','','','2015-09-23 10:24:41','2015-09-23 10:24:41','Initial Version',0,1,2,NULL,2,10,NULL),(188,1,'Titulo del Álbum 3','titulo-del-album-3','','2015-09-23 10:50:07','2015-09-23 10:50:07','Initial Version',0,0,2,2,2,10,NULL),(188,2,'Titulo del Álbum 3','titulo-del-album-3','','2015-09-23 10:50:07','2015-09-23 11:16:23','Version 2',1,0,1,1,2,10,NULL),(189,1,'Febrero / 2015','febrero-2015',NULL,'2015-09-23 10:59:00','2015-09-23 10:59:13','Initial Version',0,0,3,3,2,10,NULL),(189,2,'Febrero / 2015','febrero-2015',NULL,'2015-09-23 10:59:00','2015-09-23 11:01:18','Nueva Version 2',0,0,1,3,2,10,NULL),(189,3,'Febrero / 2015','febrero-2015',NULL,'2015-09-23 10:59:00','2015-09-23 11:01:28','Nueva Version 3',1,0,1,1,2,10,NULL),(190,1,'Titulo de la Noticia 3','titulo-de-la-noticia-3','Hay muchas variaciones de los pasajes de Lorem Ipsum disponibles, pero la mayoría sufrió alteraciones en alguna manera, ya sea porque se le agregó humor, o palabras aleatorias que no parecen ni un poco creíbles. Si vas a utilizar un pasaje de Lorem Ipsum, necesitás estar seguro de que no hay nada avergonzante escondido en el medio del texto. Todos los generadores de Lorem Ipsum que se encuentran en Internet tienden a repetir trozos predefinidos cuando sea necesario, haciendo a este el único generador verdadero (válido) en la Internet. Usa un diccionario de mas de 200 palabras provenientes del latín, combinadas con estructuras muy útiles de sentencias, para generar texto de Lorem Ipsum que parezca razonable. Este Lorem Ipsum generado siempre estará libre de repeticiones, humor agregado o palabras no características del lenguaje, etc.\n','2015-09-23 11:06:25','2015-09-23 11:06:25','Initial Version',0,0,1,1,2,10,NULL),(190,2,'Titulo de la Noticia 3','titulo-de-la-noticia-3','Hay muchas variaciones de los pasajes de Lorem Ipsum disponibles, pero la mayoría sufrió alteraciones en alguna manera, ya sea porque se le agregó humor, o palabras aleatorias que no parecen ni un poco creíbles. Si vas a utilizar un pasaje de Lorem Ipsum, necesitás estar seguro de que no hay nada avergonzante escondido en el medio del texto. Todos los generadores de Lorem Ipsum que se encuentran en Internet tienden a repetir trozos predefinidos cuando sea necesario, haciendo a este el único generador verdadero (válido) en la Internet. Usa un diccionario de mas de 200 palabras provenientes del latín, combinadas con estructuras muy útiles de sentencias, para generar texto de Lorem Ipsum que parezca razonable. Este Lorem Ipsum generado siempre estará libre de repeticiones, humor agregado o palabras no características del lenguaje, etc.\n','2015-09-23 11:06:25','2015-09-23 11:09:53','Nueva Version 2',0,0,1,1,2,10,NULL),(190,3,'Titulo de la Noticia 3','titulo-de-la-noticia-3','Hay muchas variaciones de los pasajes de Lorem Ipsum disponibles, pero la mayoría sufrió alteraciones en alguna manera, ya sea porque se le agregó humor, o palabras aleatorias que no parecen ni un poco creíbles. Si vas a utilizar un pasaje de Lorem Ipsum, necesitás estar seguro de que no hay nada avergonzante escondido en el medio del texto. Todos los generadores de Lorem Ipsum que se encuentran en Internet tienden a repetir trozos predefinidos cuando sea necesario, haciendo a este el único generador verdadero (válido) en la Internet. Usa un diccionario de mas de 200 palabras provenientes del latín, combinadas con estructuras muy útiles de sentencias, para generar texto de Lorem Ipsum que parezca razonable. Este Lorem Ipsum generado siempre estará libre de repeticiones, humor agregado o palabras no características del lenguaje, etc.\n','2015-09-23 11:06:25','2015-09-23 11:11:49','Nueva Version 3',0,0,1,1,2,10,NULL),(190,4,'Titulo de la Noticia 3','titulo-de-la-noticia-3','Hay muchas variaciones de los pasajes de Lorem Ipsum disponibles, pero la mayoría sufrió alteraciones en alguna manera, ya sea porque se le agregó humor, o palabras aleatorias que no parecen ni un poco creíbles. Si vas a utilizar un pasaje de Lorem Ipsum, necesitás estar seguro de que no hay nada avergonzante escondido en el medio del texto. Todos los generadores de Lorem Ipsum que se encuentran en Internet tienden a repetir trozos predefinidos cuando sea necesario, haciendo a este el único generador verdadero (válido) en la Internet. Usa un diccionario de mas de 200 palabras provenientes del latín, combinadas con estructuras muy útiles de sentencias, para generar texto de Lorem Ipsum que parezca razonable. Este Lorem Ipsum generado siempre estará libre de repeticiones, humor agregado o palabras no características del lenguaje, etc.\n','2015-09-23 11:06:25','2015-09-23 11:12:39','Version 4',1,0,1,1,2,10,NULL),(191,1,'Educación Superior','educacion-superior','','2015-10-07 10:06:50','2015-10-07 10:06:50','Initial Version',0,1,1,NULL,2,10,NULL);
/*!40000 ALTER TABLE `CollectionVersions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Collections`
--

DROP TABLE IF EXISTS `Collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Collections` (
  `cID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cDateModified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`cID`),
  KEY `cIDDateModified` (`cID`,`cDateModified`),
  KEY `cDateModified` (`cDateModified`),
  KEY `cDateAdded` (`cDateAdded`)
) ENGINE=InnoDB AUTO_INCREMENT=192 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Collections`
--

LOCK TABLES `Collections` WRITE;
/*!40000 ALTER TABLE `Collections` DISABLE KEYS */;
INSERT INTO `Collections` VALUES (1,'2015-09-21 11:26:34','2015-10-08 13:31:44','home'),(2,'2015-09-21 11:27:06','2015-09-21 11:27:06','dashboard'),(3,'2015-09-21 11:27:06','2015-09-21 11:27:07','sitemap'),(4,'2015-09-21 11:27:07','2015-09-21 11:27:07','full'),(5,'2015-09-21 11:27:07','2015-09-21 11:27:08','explore'),(6,'2015-09-21 11:27:08','2015-09-21 11:27:08','search'),(7,'2015-09-21 11:27:08','2015-09-21 11:27:09','files'),(8,'2015-09-21 11:27:09','2015-09-21 11:27:09','search'),(9,'2015-09-21 11:27:09','2015-09-21 11:27:10','attributes'),(10,'2015-09-21 11:27:10','2015-09-21 11:27:10','sets'),(11,'2015-09-21 11:27:10','2015-09-21 11:27:11','add_set'),(12,'2015-09-21 11:27:11','2015-09-21 11:27:11','users'),(13,'2015-09-21 11:27:11','2015-09-21 11:27:12','search'),(14,'2015-09-21 11:27:12','2015-09-21 11:27:12','groups'),(15,'2015-09-21 11:27:12','2015-09-21 11:27:13','attributes'),(16,'2015-09-21 11:27:13','2015-09-21 11:27:13','add'),(17,'2015-09-21 11:27:13','2015-09-21 11:27:14','add_group'),(18,'2015-09-21 11:27:14','2015-09-21 11:27:14','bulkupdate'),(19,'2015-09-21 11:27:15','2015-09-21 11:27:15','group_sets'),(20,'2015-09-21 11:27:15','2015-09-21 11:27:16','points'),(21,'2015-09-21 11:27:16','2015-09-21 11:27:16','assign'),(22,'2015-09-21 11:27:17','2015-09-21 11:27:17','actions'),(23,'2015-09-21 11:27:17','2015-09-21 11:27:17','reports'),(24,'2015-09-21 11:27:18','2015-09-21 11:27:18','forms'),(25,'2015-09-21 11:27:18','2015-09-21 11:27:18','surveys'),(26,'2015-09-21 11:27:19','2015-09-21 11:27:19','logs'),(27,'2015-09-21 11:27:19','2015-09-21 11:27:20','pages'),(28,'2015-09-21 11:27:20','2015-09-21 11:27:20','themes'),(29,'2015-09-21 11:27:20','2015-09-21 11:27:21','inspect'),(30,'2015-09-21 11:27:21','2015-09-21 11:27:21','types'),(31,'2015-09-21 11:27:22','2015-09-21 11:27:22','organize'),(32,'2015-09-21 11:27:22','2015-09-21 11:27:22','add'),(33,'2015-09-21 11:27:23','2015-09-21 11:27:23','form'),(34,'2015-09-21 11:27:23','2015-09-21 11:27:24','output'),(35,'2015-09-21 11:27:24','2015-09-21 11:27:24','attributes'),(36,'2015-09-21 11:27:24','2015-09-21 11:27:25','permissions'),(37,'2015-09-21 11:27:25','2015-09-21 11:27:25','templates'),(38,'2015-09-21 11:27:26','2015-09-21 11:27:26','add'),(39,'2015-09-21 11:27:26','2015-09-21 11:27:26','attributes'),(40,'2015-09-21 11:27:27','2015-09-21 11:27:27','single'),(41,'2015-09-21 11:27:27','2015-09-21 11:27:28','feeds'),(42,'2015-09-21 11:27:28','2015-09-21 11:27:28','conversations'),(43,'2015-09-21 11:27:29','2015-09-21 11:27:29','messages'),(44,'2015-09-21 11:27:29','2015-09-21 11:27:30','workflow'),(45,'2015-09-21 11:27:30','2015-09-21 11:27:30','me'),(46,'2015-09-21 11:27:30','2015-09-21 11:27:30','workflows'),(47,'2015-09-21 11:27:31','2015-09-21 11:27:31','blocks'),(48,'2015-09-21 11:27:31','2015-09-21 11:27:32','stacks'),(49,'2015-09-21 11:27:32','2015-09-21 11:27:32','permissions'),(50,'2015-09-21 11:27:32','2015-09-21 11:27:33','list'),(51,'2015-09-21 11:27:33','2015-09-21 11:27:33','types'),(52,'2015-09-21 11:27:33','2015-09-21 11:27:34','extend'),(53,'2015-09-21 11:27:34','2015-09-21 11:27:35','news'),(54,'2015-09-21 11:27:35','2015-09-21 11:27:35','install'),(55,'2015-09-21 11:27:36','2015-09-21 11:27:36','update'),(56,'2015-09-21 11:27:36','2015-09-21 11:27:36','connect'),(57,'2015-09-21 11:27:36','2015-09-21 11:27:37','themes'),(58,'2015-09-21 11:27:37','2015-09-21 11:27:37','addons'),(59,'2015-09-21 11:27:38','2015-09-21 11:27:39','system'),(60,'2015-09-21 11:27:39','2015-09-21 11:27:39','basics'),(61,'2015-09-21 11:27:39','2015-09-21 11:27:39','name'),(62,'2015-09-21 11:27:40','2015-09-21 11:27:40','accessibility'),(63,'2015-09-21 11:27:40','2015-09-21 11:27:40','social'),(64,'2015-09-21 11:27:41','2015-09-21 11:27:41','icons'),(65,'2015-09-21 11:27:41','2015-09-21 11:27:42','editor'),(66,'2015-09-21 11:27:42','2015-09-21 11:27:42','multilingual'),(67,'2015-09-21 11:27:42','2015-09-21 11:27:43','timezone'),(68,'2015-09-21 11:27:43','2015-09-21 11:27:44','multilingual'),(69,'2015-09-21 11:27:44','2015-09-21 11:27:44','setup'),(70,'2015-09-21 11:27:44','2015-09-21 11:27:45','copy'),(71,'2015-09-21 11:27:45','2015-09-21 11:27:45','page_report'),(72,'2015-09-21 11:27:45','2015-09-21 11:27:46','translate_interface'),(73,'2015-09-21 11:27:46','2015-09-21 11:27:46','seo'),(74,'2015-09-21 11:27:46','2015-09-21 11:27:47','urls'),(75,'2015-09-21 11:27:47','2015-09-21 11:27:47','bulk'),(76,'2015-09-21 11:27:47','2015-09-21 11:27:48','codes'),(77,'2015-09-21 11:27:48','2015-09-21 11:27:48','excluded'),(78,'2015-09-21 11:27:48','2015-09-21 11:27:49','searchindex'),(79,'2015-09-21 11:27:49','2015-09-21 11:27:49','files'),(80,'2015-09-21 11:27:49','2015-09-21 11:27:50','permissions'),(81,'2015-09-21 11:27:50','2015-09-21 11:27:50','filetypes'),(82,'2015-09-21 11:27:50','2015-09-21 11:27:51','thumbnails'),(83,'2015-09-21 11:27:51','2015-09-21 11:27:51','storage'),(84,'2015-09-21 11:27:52','2015-09-21 11:27:52','optimization'),(85,'2015-09-21 11:27:52','2015-09-21 11:27:52','cache'),(86,'2015-09-21 11:27:53','2015-09-21 11:27:53','clearcache'),(87,'2015-09-21 11:27:53','2015-09-21 11:27:54','jobs'),(88,'2015-09-21 11:27:54','2015-09-21 11:27:54','query_log'),(89,'2015-09-21 11:27:55','2015-09-21 11:27:55','permissions'),(90,'2015-09-21 11:27:55','2015-09-21 11:27:56','site'),(91,'2015-09-21 11:27:56','2015-09-21 11:27:56','tasks'),(92,'2015-09-21 11:27:56','2015-09-21 11:27:57','users'),(93,'2015-09-21 11:27:57','2015-09-21 11:27:58','advanced'),(94,'2015-09-21 11:27:58','2015-09-21 11:27:58','blacklist'),(95,'2015-09-21 11:27:58','2015-09-21 11:27:59','captcha'),(96,'2015-09-21 11:27:59','2015-09-21 11:27:59','antispam'),(97,'2015-09-21 11:28:00','2015-09-21 11:28:00','maintenance'),(98,'2015-09-21 11:28:00','2015-09-21 11:28:01','registration'),(99,'2015-09-21 11:28:01','2015-09-21 11:28:01','postlogin'),(100,'2015-09-21 11:28:01','2015-09-21 11:28:02','profiles'),(101,'2015-09-21 11:28:02','2015-09-21 11:28:02','open'),(102,'2015-09-21 11:28:03','2015-09-21 11:28:03','authentication'),(103,'2015-09-21 11:28:03','2015-09-21 11:28:04','mail'),(104,'2015-09-21 11:28:04','2015-09-21 11:28:05','method'),(105,'2015-09-21 11:28:05','2015-09-21 11:28:05','test'),(106,'2015-09-21 11:28:05','2015-09-21 11:28:05','importers'),(107,'2015-09-21 11:28:06','2015-09-21 11:28:06','conversations'),(108,'2015-09-21 11:28:06','2015-09-21 11:28:07','settings'),(109,'2015-09-21 11:28:07','2015-09-21 11:28:07','points'),(110,'2015-09-21 11:28:07','2015-09-21 11:28:08','bannedwords'),(111,'2015-09-21 11:28:08','2015-09-21 11:28:08','permissions'),(112,'2015-09-21 11:28:08','2015-09-21 11:28:09','attributes'),(113,'2015-09-21 11:28:09','2015-09-21 11:28:10','sets'),(114,'2015-09-21 11:28:10','2015-09-21 11:28:10','types'),(115,'2015-09-21 11:28:10','2015-09-21 11:28:10','topics'),(116,'2015-09-21 11:28:11','2015-09-21 11:28:11','add'),(117,'2015-09-21 11:28:11','2015-09-21 11:28:12','environment'),(118,'2015-09-21 11:28:12','2015-09-21 11:28:12','info'),(119,'2015-09-21 11:28:12','2015-09-21 11:28:13','debug'),(120,'2015-09-21 11:28:13','2015-09-21 11:28:13','logging'),(121,'2015-09-21 11:28:14','2015-09-21 11:28:14','proxy'),(122,'2015-09-21 11:28:14','2015-09-21 11:28:15','entities'),(123,'2015-09-21 11:28:15','2015-09-21 11:28:16','backup'),(124,'2015-09-21 11:28:16','2015-09-21 11:28:16','backup'),(125,'2015-09-21 11:28:16','2015-09-21 11:28:17','update'),(126,'2015-09-21 11:28:20','2015-09-21 11:28:20','welcome'),(127,'2015-09-21 11:28:20','2015-09-21 11:28:20','home'),(128,'2015-09-21 11:28:42','2015-09-21 11:28:43','!drafts'),(129,'2015-09-21 11:28:43','2015-09-21 11:28:43','!trash'),(130,'2015-09-21 11:28:43','2015-09-21 11:28:44','!stacks'),(131,'2015-09-21 11:28:44','2015-09-21 11:28:44','login'),(132,'2015-09-21 11:28:44','2015-09-21 11:28:45','register'),(133,'2015-09-21 11:28:45','2015-09-21 11:28:45','account'),(134,'2015-09-21 11:28:45','2015-09-21 11:28:46','edit_profile'),(135,'2015-09-21 11:28:46','2015-09-21 11:28:46','avatar'),(136,'2015-09-21 11:28:46','2015-09-21 11:28:47','messages'),(137,'2015-09-21 11:28:47','2015-09-21 11:28:47','inbox'),(138,'2015-09-21 11:28:47','2015-09-21 11:28:47','members'),(139,'2015-09-21 11:28:47','2015-09-21 11:28:48','profile'),(140,'2015-09-21 11:28:48','2015-09-21 11:28:48','directory'),(141,'2015-09-21 11:28:48','2015-09-21 11:28:49','page_not_found'),(142,'2015-09-21 11:28:49','2015-09-21 11:28:49','page_forbidden'),(143,'2015-09-21 11:28:49','2015-09-21 11:28:50','download_file'),(144,'2015-09-21 11:28:53','2015-09-21 11:28:53',NULL),(145,'2015-09-21 11:29:44','2015-10-05 09:28:50','header-site-title'),(146,'2015-09-21 11:29:45','2015-09-21 14:15:41','header-navigation'),(147,'2015-09-21 11:29:45','2015-09-21 14:43:36','footer-legal'),(148,'2015-09-21 11:29:46','2015-09-21 14:43:37','footer-navigation'),(149,'2015-09-21 11:29:46','2015-09-21 14:43:37','footer-contact'),(150,'2015-09-21 11:30:06','2015-09-21 11:30:06','header-search'),(151,'2015-09-21 11:30:06','2015-09-21 11:30:06','footer-site-title'),(152,'2015-09-21 11:30:07','2015-09-21 11:30:07','footer-social'),(153,'2015-09-21 13:34:33','2015-09-21 13:34:33',''),(161,'2015-09-21 13:38:11','2015-09-23 09:11:01','search'),(163,'2015-09-21 14:17:43','2015-09-21 14:17:43',NULL),(164,'2015-09-21 14:18:59','2015-09-21 14:19:27',''),(165,'2015-09-21 14:19:39','2015-09-21 14:59:16',''),(166,'2015-09-21 14:20:37','2015-09-23 08:43:47',''),(167,'2015-09-21 14:21:02','2015-09-23 08:45:03',''),(168,'2015-09-21 14:21:26','2015-09-23 08:39:32',''),(169,'2015-09-21 14:21:53','2015-09-23 08:40:10',''),(170,'2015-09-21 14:22:49','2015-09-23 08:47:54',''),(171,'2015-09-21 14:23:19','2015-09-23 07:48:15',''),(172,'2015-09-21 14:23:51','2015-09-23 09:03:33',''),(173,'2015-09-21 14:24:13','2015-10-05 09:28:17',''),(174,'2015-09-21 14:24:31','2015-09-23 08:21:17',''),(175,'2015-09-21 14:25:41','2015-09-21 14:27:10',''),(176,'2015-09-21 14:44:35','2015-09-21 14:44:35',NULL),(177,'2015-09-21 14:55:11','2015-09-22 07:08:32',''),(178,'2015-09-21 14:59:38','2015-09-23 10:18:57',''),(179,'2015-09-23 07:34:25','2015-09-23 07:34:26',NULL),(180,'2015-09-23 07:44:58','2015-09-23 07:46:41',''),(181,'2015-09-23 07:48:42','2015-09-23 07:49:17',''),(182,'2015-09-23 07:51:17','2015-09-23 07:51:18',NULL),(183,'2015-09-23 08:17:55','2015-09-23 11:14:52',''),(186,'2015-09-23 10:22:21','2015-09-23 10:30:37',''),(187,'2015-09-23 10:24:41','2015-09-23 10:25:18',''),(188,'2015-09-23 10:50:07','2015-09-23 11:18:33',''),(189,'2015-09-23 10:59:13','2015-09-23 11:43:40',''),(190,'2015-09-23 11:06:25','2015-09-23 11:12:46',''),(191,'2015-10-07 10:06:50','2015-10-07 10:13:06','');
/*!40000 ALTER TABLE `Collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Config`
--

DROP TABLE IF EXISTS `Config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Config` (
  `configNamespace` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `configGroup` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configItem` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configValue` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`configNamespace`,`configGroup`,`configItem`),
  KEY `configGroup` (`configGroup`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Config`
--

LOCK TABLES `Config` WRITE;
/*!40000 ALTER TABLE `Config` DISABLE KEYS */;
INSERT INTO `Config` VALUES ('','concrete','security.token.encryption','UwSVI4iT1rgcqyEjZ5XDx8YBfkJ3Zpi299wSeIc5Zr8peZ8LnO0A5u2GOVwb8Tvk'),('','concrete','security.token.jobs','7Dbbf2e1hLhuwmvp8KwacAWNl4SRVAr6ftLqozraW5rziRPe6ZiMpVB1jFTTjbEh'),('','concrete','security.token.validation','r1BIM2JzCVvYN9Bv6q6KUsWmli9gjYt6IUkrB5J8kFBBLvatvNN5HQKVLwHEwutO');
/*!40000 ALTER TABLE `Config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ConfigStore`
--

DROP TABLE IF EXISTS `ConfigStore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConfigStore` (
  `cfKey` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cfValue` longtext COLLATE utf8_unicode_ci,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cfKey`,`uID`),
  KEY `uID` (`uID`,`cfKey`),
  KEY `pkgID` (`pkgID`,`cfKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ConfigStore`
--

LOCK TABLES `ConfigStore` WRITE;
/*!40000 ALTER TABLE `ConfigStore` DISABLE KEYS */;
INSERT INTO `ConfigStore` VALUES ('MAIN_HELP_LAST_VIEWED','2015-09-21 15:29:46','1442849386',1,0),('MAIN_HELP_LAST_VIEWED','2015-09-23 13:29:20','1443014960',2,0),('MAIN_HELP_LAST_VIEWED','2015-09-23 14:58:20','1443020300',3,0),('NEWSFLOW_LAST_VIEWED','2015-09-21 15:28:56','1444325461',1,0);
/*!40000 ALTER TABLE `ConfigStore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ConversationDiscussions`
--

DROP TABLE IF EXISTS `ConversationDiscussions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConversationDiscussions` (
  `cnvDiscussionID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cnvDiscussionDateCreated` datetime NOT NULL,
  `cID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`cnvDiscussionID`),
  KEY `cID` (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ConversationDiscussions`
--

LOCK TABLES `ConversationDiscussions` WRITE;
/*!40000 ALTER TABLE `ConversationDiscussions` DISABLE KEYS */;
/*!40000 ALTER TABLE `ConversationDiscussions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ConversationEditors`
--

DROP TABLE IF EXISTS `ConversationEditors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConversationEditors` (
  `cnvEditorID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cnvEditorHandle` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnvEditorName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnvEditorIsActive` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cnvEditorID`),
  KEY `pkgID` (`pkgID`,`cnvEditorHandle`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ConversationEditors`
--

LOCK TABLES `ConversationEditors` WRITE;
/*!40000 ALTER TABLE `ConversationEditors` DISABLE KEYS */;
INSERT INTO `ConversationEditors` VALUES (1,'plain_text','Plain Text',1,0),(2,'markdown','Markdown',0,0),(3,'redactor','Redactor',0,0);
/*!40000 ALTER TABLE `ConversationEditors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ConversationFeatureDetailAssignments`
--

DROP TABLE IF EXISTS `ConversationFeatureDetailAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConversationFeatureDetailAssignments` (
  `faID` int(10) unsigned NOT NULL DEFAULT '0',
  `cnvID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`faID`),
  KEY `cnvID` (`cnvID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ConversationFeatureDetailAssignments`
--

LOCK TABLES `ConversationFeatureDetailAssignments` WRITE;
/*!40000 ALTER TABLE `ConversationFeatureDetailAssignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `ConversationFeatureDetailAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ConversationFlaggedMessageTypes`
--

DROP TABLE IF EXISTS `ConversationFlaggedMessageTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConversationFlaggedMessageTypes` (
  `cnvMessageFlagTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cnvMessageFlagTypeHandle` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`cnvMessageFlagTypeID`),
  UNIQUE KEY `cnvMessageFlagTypeHandle` (`cnvMessageFlagTypeHandle`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ConversationFlaggedMessageTypes`
--

LOCK TABLES `ConversationFlaggedMessageTypes` WRITE;
/*!40000 ALTER TABLE `ConversationFlaggedMessageTypes` DISABLE KEYS */;
INSERT INTO `ConversationFlaggedMessageTypes` VALUES (1,'spam');
/*!40000 ALTER TABLE `ConversationFlaggedMessageTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ConversationFlaggedMessages`
--

DROP TABLE IF EXISTS `ConversationFlaggedMessages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConversationFlaggedMessages` (
  `cnvMessageID` int(10) unsigned NOT NULL,
  `cnvMessageFlagTypeID` int(11) DEFAULT NULL,
  PRIMARY KEY (`cnvMessageID`),
  KEY `cnvMessageFlagTypeID` (`cnvMessageFlagTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ConversationFlaggedMessages`
--

LOCK TABLES `ConversationFlaggedMessages` WRITE;
/*!40000 ALTER TABLE `ConversationFlaggedMessages` DISABLE KEYS */;
/*!40000 ALTER TABLE `ConversationFlaggedMessages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ConversationMessageAttachments`
--

DROP TABLE IF EXISTS `ConversationMessageAttachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConversationMessageAttachments` (
  `cnvMessageAttachmentID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cnvMessageID` int(11) DEFAULT NULL,
  `fID` int(11) DEFAULT NULL,
  PRIMARY KEY (`cnvMessageAttachmentID`),
  KEY `cnvMessageID` (`cnvMessageID`),
  KEY `fID` (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ConversationMessageAttachments`
--

LOCK TABLES `ConversationMessageAttachments` WRITE;
/*!40000 ALTER TABLE `ConversationMessageAttachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `ConversationMessageAttachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ConversationMessageRatings`
--

DROP TABLE IF EXISTS `ConversationMessageRatings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConversationMessageRatings` (
  `cnvMessageRatingID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cnvMessageID` int(10) unsigned DEFAULT NULL,
  `cnvRatingTypeID` int(10) unsigned NOT NULL DEFAULT '0',
  `cnvMessageRatingIP` tinyblob,
  `timestamp` datetime DEFAULT NULL,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cnvMessageRatingID`),
  KEY `cnvMessageID` (`cnvMessageID`,`cnvRatingTypeID`),
  KEY `cnvRatingTypeID` (`cnvRatingTypeID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ConversationMessageRatings`
--

LOCK TABLES `ConversationMessageRatings` WRITE;
/*!40000 ALTER TABLE `ConversationMessageRatings` DISABLE KEYS */;
/*!40000 ALTER TABLE `ConversationMessageRatings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ConversationMessages`
--

DROP TABLE IF EXISTS `ConversationMessages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConversationMessages` (
  `cnvMessageID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cnvID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `cnvEditorID` int(10) unsigned NOT NULL DEFAULT '0',
  `cnvMessageAuthorName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnvMessageAuthorEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnvMessageAuthorWebsite` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnvMessageSubmitIP` tinyblob,
  `cnvMessageSubmitUserAgent` longtext COLLATE utf8_unicode_ci,
  `cnvMessageLevel` int(10) unsigned NOT NULL DEFAULT '0',
  `cnvMessageParentID` int(10) unsigned NOT NULL DEFAULT '0',
  `cnvMessageDateCreated` datetime DEFAULT NULL,
  `cnvMessageSubject` text COLLATE utf8_unicode_ci,
  `cnvMessageBody` text COLLATE utf8_unicode_ci,
  `cnvIsMessageDeleted` tinyint(1) NOT NULL DEFAULT '0',
  `cnvIsMessageApproved` tinyint(1) NOT NULL DEFAULT '0',
  `cnvMessageTotalRatingScore` bigint(20) DEFAULT '0',
  PRIMARY KEY (`cnvMessageID`),
  KEY `cnvID` (`cnvID`),
  KEY `cnvMessageParentID` (`cnvMessageParentID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ConversationMessages`
--

LOCK TABLES `ConversationMessages` WRITE;
/*!40000 ALTER TABLE `ConversationMessages` DISABLE KEYS */;
/*!40000 ALTER TABLE `ConversationMessages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ConversationPermissionAddMessageAccessList`
--

DROP TABLE IF EXISTS `ConversationPermissionAddMessageAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConversationPermissionAddMessageAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'A',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ConversationPermissionAddMessageAccessList`
--

LOCK TABLES `ConversationPermissionAddMessageAccessList` WRITE;
/*!40000 ALTER TABLE `ConversationPermissionAddMessageAccessList` DISABLE KEYS */;
/*!40000 ALTER TABLE `ConversationPermissionAddMessageAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ConversationPermissionAssignments`
--

DROP TABLE IF EXISTS `ConversationPermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConversationPermissionAssignments` (
  `cnvID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cnvID`,`pkID`,`paID`),
  KEY `paID` (`paID`),
  KEY `pkID` (`pkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ConversationPermissionAssignments`
--

LOCK TABLES `ConversationPermissionAssignments` WRITE;
/*!40000 ALTER TABLE `ConversationPermissionAssignments` DISABLE KEYS */;
INSERT INTO `ConversationPermissionAssignments` VALUES (0,66,93),(0,67,94),(0,70,95),(0,69,96),(0,71,97),(0,68,98),(0,72,99),(0,73,100);
/*!40000 ALTER TABLE `ConversationPermissionAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ConversationRatingTypes`
--

DROP TABLE IF EXISTS `ConversationRatingTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConversationRatingTypes` (
  `cnvRatingTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cnvRatingTypeHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnvRatingTypeName` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnvRatingTypeCommunityPoints` int(11) DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cnvRatingTypeID`),
  UNIQUE KEY `cnvRatingTypeHandle` (`cnvRatingTypeHandle`),
  KEY `pkgID` (`pkgID`,`cnvRatingTypeHandle`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ConversationRatingTypes`
--

LOCK TABLES `ConversationRatingTypes` WRITE;
/*!40000 ALTER TABLE `ConversationRatingTypes` DISABLE KEYS */;
INSERT INTO `ConversationRatingTypes` VALUES (1,'up_vote','Up Vote',1,0),(2,'down_vote','Down Vote',0,0);
/*!40000 ALTER TABLE `ConversationRatingTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ConversationSubscriptions`
--

DROP TABLE IF EXISTS `ConversationSubscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConversationSubscriptions` (
  `cnvID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(1) COLLATE utf8_unicode_ci DEFAULT 'S',
  PRIMARY KEY (`cnvID`,`uID`),
  KEY `cnvID` (`cnvID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ConversationSubscriptions`
--

LOCK TABLES `ConversationSubscriptions` WRITE;
/*!40000 ALTER TABLE `ConversationSubscriptions` DISABLE KEYS */;
INSERT INTO `ConversationSubscriptions` VALUES (0,1,'S');
/*!40000 ALTER TABLE `ConversationSubscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Conversations`
--

DROP TABLE IF EXISTS `Conversations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Conversations` (
  `cnvID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned DEFAULT '0',
  `cnvDateCreated` datetime NOT NULL,
  `cnvDateLastMessage` datetime DEFAULT NULL,
  `cnvParentMessageID` int(10) unsigned DEFAULT '0',
  `cnvAttachmentsEnabled` tinyint(1) NOT NULL DEFAULT '1',
  `cnvMessagesTotal` int(10) unsigned DEFAULT '0',
  `cnvOverrideGlobalPermissions` tinyint(1) DEFAULT '0',
  `cnvAttachmentOverridesEnabled` tinyint(1) NOT NULL DEFAULT '0',
  `cnvMaxFilesGuest` int(11) DEFAULT '0',
  `cnvMaxFilesRegistered` int(11) DEFAULT '0',
  `cnvMaxFileSizeGuest` int(11) DEFAULT '0',
  `cnvMaxFileSizeRegistered` int(11) DEFAULT '0',
  `cnvFileExtensions` text COLLATE utf8_unicode_ci,
  `cnvNotificationOverridesEnabled` tinyint(1) NOT NULL DEFAULT '0',
  `cnvEnableSubscription` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`cnvID`),
  KEY `cID` (`cID`),
  KEY `cnvParentMessageID` (`cnvParentMessageID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Conversations`
--

LOCK TABLES `Conversations` WRITE;
/*!40000 ALTER TABLE `Conversations` DISABLE KEYS */;
/*!40000 ALTER TABLE `Conversations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DownloadStatistics`
--

DROP TABLE IF EXISTS `DownloadStatistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DownloadStatistics` (
  `dsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fID` int(10) unsigned NOT NULL,
  `fvID` int(10) unsigned NOT NULL,
  `uID` int(10) unsigned NOT NULL,
  `rcID` int(10) unsigned NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`dsID`),
  KEY `fID` (`fID`,`timestamp`),
  KEY `fvID` (`fID`,`fvID`),
  KEY `uID` (`uID`),
  KEY `rcID` (`rcID`),
  KEY `timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DownloadStatistics`
--

LOCK TABLES `DownloadStatistics` WRITE;
/*!40000 ALTER TABLE `DownloadStatistics` DISABLE KEYS */;
/*!40000 ALTER TABLE `DownloadStatistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FeatureAssignments`
--

DROP TABLE IF EXISTS `FeatureAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FeatureAssignments` (
  `faID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `feID` int(10) unsigned DEFAULT NULL,
  `fcID` int(10) unsigned DEFAULT NULL,
  `fdObject` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`faID`),
  KEY `feID` (`feID`),
  KEY `fcID` (`fcID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FeatureAssignments`
--

LOCK TABLES `FeatureAssignments` WRITE;
/*!40000 ALTER TABLE `FeatureAssignments` DISABLE KEYS */;
INSERT INTO `FeatureAssignments` VALUES (1,5,1,'O:40:\"Concrete\\Core\\Feature\\Detail\\ImageDetail\":5:{s:6:\"\0*\0src\";s:62:\"/concrete5.7.5.2/application/files/4714/4285/7575/Logotipo.png\";s:8:\"\0*\0width\";d:400;s:9:\"\0*\0height\";d:140;s:7:\"\0*\0item\";N;s:5:\"error\";s:0:\"\";}'),(2,5,1,'O:40:\"Concrete\\Core\\Feature\\Detail\\ImageDetail\":5:{s:6:\"\0*\0src\";s:85:\"/concrete5.7.5.2/application/files/1114/4285/8836/Gobierno-Logo-Espanol---Guarani.png\";s:8:\"\0*\0width\";d:244;s:9:\"\0*\0height\";d:95;s:7:\"\0*\0item\";N;s:5:\"error\";s:0:\"\";}'),(3,5,1,'O:40:\"Concrete\\Core\\Feature\\Detail\\ImageDetail\":5:{s:6:\"\0*\0src\";s:69:\"/concrete5.7.5.2/application/files/5214/4286/0839/Paraguay-gov-py.jpg\";s:8:\"\0*\0width\";d:450;s:9:\"\0*\0height\";d:200;s:7:\"\0*\0item\";N;s:5:\"error\";s:0:\"\";}'),(4,5,1,'O:40:\"Concrete\\Core\\Feature\\Detail\\ImageDetail\":5:{s:6:\"\0*\0src\";s:86:\"/concrete5.7.5.2/application/files/4614/4286/0967/Logo-de-la-SENATICS-en-alfacolor.png\";s:8:\"\0*\0width\";d:300;s:9:\"\0*\0height\";d:64;s:7:\"\0*\0item\";N;s:5:\"error\";s:0:\"\";}'),(5,5,1,'O:40:\"Concrete\\Core\\Feature\\Detail\\ImageDetail\":5:{s:6:\"\0*\0src\";s:65:\"/concrete5.7.5.2/application/files/8814/4301/2268/Organigrama.jpg\";s:8:\"\0*\0width\";d:2072;s:9:\"\0*\0height\";d:1242;s:7:\"\0*\0item\";N;s:5:\"error\";s:0:\"\";}'),(6,5,1,'O:40:\"Concrete\\Core\\Feature\\Detail\\ImageDetail\":5:{s:6:\"\0*\0src\";s:85:\"/concrete5.7.5.2/application/files/1114/4285/8836/Gobierno-Logo-Espanol---Guarani.png\";s:8:\"\0*\0width\";d:244;s:9:\"\0*\0height\";d:95;s:7:\"\0*\0item\";N;s:5:\"error\";s:0:\"\";}'),(7,5,1,'O:40:\"Concrete\\Core\\Feature\\Detail\\ImageDetail\":5:{s:6:\"\0*\0src\";s:46:\"/application/files/4714/4285/7575/Logotipo.png\";s:8:\"\0*\0width\";d:400;s:9:\"\0*\0height\";d:140;s:7:\"\0*\0item\";N;s:5:\"error\";s:0:\"\";}');
/*!40000 ALTER TABLE `FeatureAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FeatureCategories`
--

DROP TABLE IF EXISTS `FeatureCategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FeatureCategories` (
  `fcID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fcHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`fcID`),
  UNIQUE KEY `fcHandle` (`fcHandle`),
  KEY `pkgID` (`pkgID`,`fcID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FeatureCategories`
--

LOCK TABLES `FeatureCategories` WRITE;
/*!40000 ALTER TABLE `FeatureCategories` DISABLE KEYS */;
INSERT INTO `FeatureCategories` VALUES (1,'collection_version',0),(2,'gathering_item',0);
/*!40000 ALTER TABLE `FeatureCategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Features`
--

DROP TABLE IF EXISTS `Features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Features` (
  `feID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `feHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `feScore` int(11) NOT NULL DEFAULT '1',
  `feHasCustomClass` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`feID`),
  UNIQUE KEY `feHandle` (`feHandle`),
  KEY `pkgID` (`pkgID`,`feID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Features`
--

LOCK TABLES `Features` WRITE;
/*!40000 ALTER TABLE `Features` DISABLE KEYS */;
INSERT INTO `Features` VALUES (1,'title',1,0,0),(2,'link',1,0,0),(3,'author',1,0,0),(4,'date_time',1,0,0),(5,'image',500,1,0),(6,'conversation',10,1,0),(7,'description',1,0,0),(8,'featured',1000,0,0);
/*!40000 ALTER TABLE `Features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileAttributeValues`
--

DROP TABLE IF EXISTS `FileAttributeValues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileAttributeValues` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `avID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`fID`,`fvID`,`akID`),
  KEY `akID` (`akID`),
  KEY `avID` (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileAttributeValues`
--

LOCK TABLES `FileAttributeValues` WRITE;
/*!40000 ALTER TABLE `FileAttributeValues` DISABLE KEYS */;
INSERT INTO `FileAttributeValues` VALUES (1,1,14,113),(1,1,15,114),(2,1,14,115),(2,1,15,116),(3,1,14,134),(3,1,15,135),(4,1,14,136),(4,1,15,137),(5,1,14,138),(5,1,15,139),(6,1,14,140),(6,1,15,141),(7,1,14,142),(7,1,15,143),(8,1,14,144),(8,1,15,145),(9,1,14,146),(9,1,15,147),(8,2,14,148),(8,2,15,149),(9,2,14,150),(9,2,15,151),(11,1,14,152),(11,1,15,153),(12,1,14,154),(12,1,15,155),(13,1,14,165),(13,1,15,166),(14,1,14,167),(14,1,15,168);
/*!40000 ALTER TABLE `FileAttributeValues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileImageThumbnailTypes`
--

DROP TABLE IF EXISTS `FileImageThumbnailTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileImageThumbnailTypes` (
  `ftTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ftTypeHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ftTypeName` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ftTypeWidth` int(11) NOT NULL DEFAULT '0',
  `ftTypeHeight` int(11) DEFAULT NULL,
  `ftTypeIsRequired` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ftTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileImageThumbnailTypes`
--

LOCK TABLES `FileImageThumbnailTypes` WRITE;
/*!40000 ALTER TABLE `FileImageThumbnailTypes` DISABLE KEYS */;
INSERT INTO `FileImageThumbnailTypes` VALUES (1,'file_manager_listing','File Manager Thumbnails',60,60,1),(2,'file_manager_detail','File Manager Detail Thumbnails',400,NULL,1);
/*!40000 ALTER TABLE `FileImageThumbnailTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FilePermissionAssignments`
--

DROP TABLE IF EXISTS `FilePermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FilePermissionAssignments` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fID`,`pkID`,`paID`),
  KEY `pkID` (`pkID`),
  KEY `paID` (`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FilePermissionAssignments`
--

LOCK TABLES `FilePermissionAssignments` WRITE;
/*!40000 ALTER TABLE `FilePermissionAssignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `FilePermissionAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FilePermissionFileTypes`
--

DROP TABLE IF EXISTS `FilePermissionFileTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FilePermissionFileTypes` (
  `extension` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `fsID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fsID`,`gID`,`uID`,`extension`),
  KEY `gID` (`gID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FilePermissionFileTypes`
--

LOCK TABLES `FilePermissionFileTypes` WRITE;
/*!40000 ALTER TABLE `FilePermissionFileTypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `FilePermissionFileTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileSearchIndexAttributes`
--

DROP TABLE IF EXISTS `FileSearchIndexAttributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileSearchIndexAttributes` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `ak_width` decimal(14,4) DEFAULT '0.0000',
  `ak_height` decimal(14,4) DEFAULT '0.0000',
  `ak_duration` decimal(14,4) DEFAULT '0.0000',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileSearchIndexAttributes`
--

LOCK TABLES `FileSearchIndexAttributes` WRITE;
/*!40000 ALTER TABLE `FileSearchIndexAttributes` DISABLE KEYS */;
INSERT INTO `FileSearchIndexAttributes` VALUES (1,'400.0000','140.0000','0.0000'),(2,'244.0000','95.0000','0.0000'),(3,'1000.0000','672.0000','0.0000'),(4,'1000.0000','672.0000','0.0000'),(5,'1000.0000','672.0000','0.0000'),(6,'1000.0000','672.0000','0.0000'),(7,'1600.0000','1130.0000','0.0000'),(8,'1000.0000','300.0000','0.0000'),(9,'1000.0000','300.0000','0.0000'),(10,'0.0000','0.0000','0.0000'),(11,'450.0000','200.0000','0.0000'),(12,'300.0000','64.0000','0.0000'),(13,'2072.0000','1242.0000','0.0000'),(14,'700.0000','150.0000','0.0000'),(15,'0.0000','0.0000','0.0000');
/*!40000 ALTER TABLE `FileSearchIndexAttributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileSetFiles`
--

DROP TABLE IF EXISTS `FileSetFiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileSetFiles` (
  `fsfID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fID` int(10) unsigned NOT NULL,
  `fsID` int(10) unsigned NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fsDisplayOrder` int(10) unsigned NOT NULL,
  PRIMARY KEY (`fsfID`),
  KEY `fID` (`fID`),
  KEY `fsID` (`fsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileSetFiles`
--

LOCK TABLES `FileSetFiles` WRITE;
/*!40000 ALTER TABLE `FileSetFiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `FileSetFiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileSetPermissionAssignments`
--

DROP TABLE IF EXISTS `FileSetPermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileSetPermissionAssignments` (
  `fsID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fsID`,`pkID`,`paID`),
  KEY `paID` (`paID`),
  KEY `pkID` (`pkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileSetPermissionAssignments`
--

LOCK TABLES `FileSetPermissionAssignments` WRITE;
/*!40000 ALTER TABLE `FileSetPermissionAssignments` DISABLE KEYS */;
INSERT INTO `FileSetPermissionAssignments` VALUES (0,41,35),(0,45,40),(0,39,130),(0,44,131),(0,40,166),(0,42,166),(0,43,166),(0,46,166),(0,47,166);
/*!40000 ALTER TABLE `FileSetPermissionAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileSetPermissionFileTypeAccessList`
--

DROP TABLE IF EXISTS `FileSetPermissionFileTypeAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileSetPermissionFileTypeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileSetPermissionFileTypeAccessList`
--

LOCK TABLES `FileSetPermissionFileTypeAccessList` WRITE;
/*!40000 ALTER TABLE `FileSetPermissionFileTypeAccessList` DISABLE KEYS */;
INSERT INTO `FileSetPermissionFileTypeAccessList` VALUES (132,1,'A'),(132,7,'A');
/*!40000 ALTER TABLE `FileSetPermissionFileTypeAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileSetPermissionFileTypeAccessListCustom`
--

DROP TABLE IF EXISTS `FileSetPermissionFileTypeAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileSetPermissionFileTypeAccessListCustom` (
  `extension` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`extension`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileSetPermissionFileTypeAccessListCustom`
--

LOCK TABLES `FileSetPermissionFileTypeAccessListCustom` WRITE;
/*!40000 ALTER TABLE `FileSetPermissionFileTypeAccessListCustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `FileSetPermissionFileTypeAccessListCustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileSetSavedSearches`
--

DROP TABLE IF EXISTS `FileSetSavedSearches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileSetSavedSearches` (
  `fsID` int(10) unsigned NOT NULL DEFAULT '0',
  `fsSearchRequest` text COLLATE utf8_unicode_ci,
  `fsResultColumns` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`fsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileSetSavedSearches`
--

LOCK TABLES `FileSetSavedSearches` WRITE;
/*!40000 ALTER TABLE `FileSetSavedSearches` DISABLE KEYS */;
/*!40000 ALTER TABLE `FileSetSavedSearches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileSets`
--

DROP TABLE IF EXISTS `FileSets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileSets` (
  `fsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fsName` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `fsType` smallint(6) NOT NULL,
  `fsOverrideGlobalPermissions` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`fsID`),
  KEY `uID` (`uID`,`fsType`,`fsName`),
  KEY `fsName` (`fsName`),
  KEY `fsType` (`fsType`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileSets`
--

LOCK TABLES `FileSets` WRITE;
/*!40000 ALTER TABLE `FileSets` DISABLE KEYS */;
INSERT INTO `FileSets` VALUES (1,'prueba',0,1,0);
/*!40000 ALTER TABLE `FileSets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileStorageLocationTypes`
--

DROP TABLE IF EXISTS `FileStorageLocationTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileStorageLocationTypes` (
  `fslTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fslTypeHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fslTypeName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fslTypeID`),
  UNIQUE KEY `fslTypeHandle` (`fslTypeHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileStorageLocationTypes`
--

LOCK TABLES `FileStorageLocationTypes` WRITE;
/*!40000 ALTER TABLE `FileStorageLocationTypes` DISABLE KEYS */;
INSERT INTO `FileStorageLocationTypes` VALUES (1,'default','Default',0),(2,'local','Local',0);
/*!40000 ALTER TABLE `FileStorageLocationTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileStorageLocations`
--

DROP TABLE IF EXISTS `FileStorageLocations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileStorageLocations` (
  `fslID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fslName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fslConfiguration` longtext COLLATE utf8_unicode_ci NOT NULL,
  `fslIsDefault` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fslID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileStorageLocations`
--

LOCK TABLES `FileStorageLocations` WRITE;
/*!40000 ALTER TABLE `FileStorageLocations` DISABLE KEYS */;
INSERT INTO `FileStorageLocations` VALUES (1,'Default','O:69:\"Concrete\\Core\\File\\StorageLocation\\Configuration\\DefaultConfiguration\":1:{s:10:\"\0*\0default\";b:1;}',1);
/*!40000 ALTER TABLE `FileStorageLocations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileVersionLog`
--

DROP TABLE IF EXISTS `FileVersionLog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileVersionLog` (
  `fvlID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvUpdateTypeID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `fvUpdateTypeAttributeID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fvlID`),
  KEY `fvID` (`fID`,`fvID`,`fvlID`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileVersionLog`
--

LOCK TABLES `FileVersionLog` WRITE;
/*!40000 ALTER TABLE `FileVersionLog` DISABLE KEYS */;
INSERT INTO `FileVersionLog` VALUES (1,1,1,5,14),(2,1,1,5,15),(3,2,1,5,14),(4,2,1,5,15),(5,3,1,5,14),(6,3,1,5,15),(7,4,1,5,14),(8,4,1,5,15),(9,5,1,5,14),(10,5,1,5,15),(11,6,1,5,14),(12,6,1,5,15),(13,7,1,5,14),(14,7,1,5,15),(15,8,1,1,0),(16,8,1,5,14),(17,8,1,5,15),(18,9,1,1,0),(19,9,1,5,14),(20,9,1,5,15),(21,8,1,2,0),(22,9,1,2,0),(23,8,2,1,0),(24,8,2,5,14),(25,8,2,5,15),(26,9,2,1,0),(27,9,2,5,14),(28,9,2,5,15),(29,11,1,5,14),(30,11,1,5,15),(31,12,1,5,14),(32,12,1,5,15),(33,13,1,5,14),(34,13,1,5,15),(35,14,1,5,14),(36,14,1,5,15);
/*!40000 ALTER TABLE `FileVersionLog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileVersions`
--

DROP TABLE IF EXISTS `FileVersions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileVersions` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvFilename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fvPrefix` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fvGenericType` smallint(5) unsigned NOT NULL DEFAULT '0',
  `fvSize` int(10) unsigned NOT NULL DEFAULT '0',
  `fvTitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fvDescription` text COLLATE utf8_unicode_ci,
  `fvTags` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fvIsApproved` int(10) unsigned NOT NULL DEFAULT '1',
  `fvDateAdded` datetime DEFAULT NULL,
  `fvApproverUID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvAuthorUID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvActivateDatetime` datetime DEFAULT NULL,
  `fvHasListingThumbnail` tinyint(1) NOT NULL DEFAULT '0',
  `fvHasDetailThumbnail` tinyint(1) NOT NULL DEFAULT '0',
  `fvExtension` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fvType` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fID`,`fvID`),
  KEY `fvExtension` (`fvExtension`),
  KEY `fvType` (`fvType`),
  KEY `fvFilename` (`fvFilename`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileVersions`
--

LOCK TABLES `FileVersions` WRITE;
/*!40000 ALTER TABLE `FileVersions` DISABLE KEYS */;
INSERT INTO `FileVersions` VALUES (1,1,'Logotipo.png','471442857575',0,3424,'Logotipo.png','','',1,'2015-09-21 13:46:15',1,1,'2015-09-21 13:46:15',1,0,'png',1),(2,1,'Gobierno-Logo-Espanol---Guarani.png','111442858836',0,13422,'Gobierno-Logo-Espanol---Guarani.png','','',1,'2015-09-21 14:07:16',1,1,'2015-09-21 14:07:16',1,0,'png',1),(3,1,'4.jpg','991442860220',0,435349,'4.jpg','','',1,'2015-09-21 14:30:20',1,1,'2015-09-21 14:30:20',1,1,'jpg',1),(4,1,'3.jpg','591442860221',0,450200,'3.jpg','','',1,'2015-09-21 14:30:21',1,1,'2015-09-21 14:30:21',1,1,'jpg',1),(5,1,'2.png','301442860222',0,610187,'2.png','','',1,'2015-09-21 14:30:22',1,1,'2015-09-21 14:30:22',1,1,'png',1),(6,1,'1.png','351442860223',0,702106,'1.png','','',1,'2015-09-21 14:30:23',1,1,'2015-09-21 14:30:23',1,1,'png',1),(7,1,'Portada_Campus_SENATICs-Concrete5.jpg','621442860225',0,678892,'Portada_Campus_SENATICs-(Concrete5).jpg','','',1,'2015-09-21 14:30:25',1,1,'2015-09-21 14:30:25',1,1,'jpg',1),(8,1,'1.png','371442860265',0,702106,'Slider-1.png','','',0,'2015-09-21 14:30:23',1,1,'2015-09-21 14:30:23',1,1,'png',1),(8,2,'1.png','981442860331',0,437751,'Slider-1.png','','',1,'2015-09-21 14:32:11',1,1,'2015-09-21 14:30:23',1,1,'png',1),(9,1,'2.png','721442860269',0,610187,'Slider-2.png','','',0,'2015-09-21 14:30:22',1,1,'2015-09-21 14:30:22',1,1,'png',1),(9,2,'2.png','921442860362',0,346411,'Slider-2.png','','',1,'2015-09-21 14:32:42',1,1,'2015-09-21 14:30:22',1,1,'png',1),(10,1,'PDF.pdf','971442860700',0,0,'PDF.pdf','','',1,'2015-09-21 14:38:20',1,1,'2015-09-21 14:38:20',0,0,'pdf',5),(11,1,'Paraguay-gov-py.jpg','521442860839',0,26593,'Paraguay-gov-py.jpg','','',1,'2015-09-21 14:40:39',1,1,'2015-09-21 14:40:39',1,1,'jpg',1),(12,1,'Logo-de-la-SENATICS-en-alfacolor.png','461442860967',0,11340,'Logo-de-la-SENATICS-en-alfacolor.png','','',1,'2015-09-21 14:42:47',1,1,'2015-09-21 14:42:47',1,0,'png',1),(13,1,'Organigrama.jpg','881443012268',0,386183,'Organigrama.jpg','','',1,'2015-09-23 08:44:28',1,1,'2015-09-23 08:44:28',1,1,'jpg',1),(14,1,'Logo-SENATICs.png','331443012680',0,20265,'Logo-SENATICs.png','','',1,'2015-09-23 08:51:20',1,1,'2015-09-23 08:51:20',1,1,'png',1),(15,1,'icono_gobierno.ico','991444325714',0,509,'icono_gobierno.ico','','',1,'2015-10-08 13:35:14',1,1,'2015-10-08 13:35:14',0,0,'ico',1);
/*!40000 ALTER TABLE `FileVersions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Files`
--

DROP TABLE IF EXISTS `Files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Files` (
  `fID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fDateAdded` datetime DEFAULT NULL,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `fslID` int(10) unsigned NOT NULL DEFAULT '0',
  `ocID` int(10) unsigned NOT NULL DEFAULT '0',
  `fOverrideSetPermissions` tinyint(1) NOT NULL DEFAULT '0',
  `fPassword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`fID`,`uID`,`fslID`),
  KEY `uID` (`uID`),
  KEY `fslID` (`fslID`),
  KEY `ocID` (`ocID`),
  KEY `fOverrideSetPermissions` (`fOverrideSetPermissions`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Files`
--

LOCK TABLES `Files` WRITE;
/*!40000 ALTER TABLE `Files` DISABLE KEYS */;
INSERT INTO `Files` VALUES (1,'2015-09-21 13:46:15',1,1,0,0,NULL),(2,'2015-09-21 14:07:16',1,1,0,0,NULL),(3,'2015-09-21 14:30:20',1,1,0,0,NULL),(4,'2015-09-21 14:30:21',1,1,0,0,NULL),(5,'2015-09-21 14:30:22',1,1,0,0,NULL),(6,'2015-09-21 14:30:23',1,1,0,0,'123456'),(7,'2015-09-21 14:30:25',1,1,0,0,NULL),(8,'2015-09-21 14:31:05',1,1,0,0,NULL),(9,'2015-09-21 14:31:09',1,1,0,0,NULL),(10,'2015-09-21 14:38:20',1,1,0,0,NULL),(11,'2015-09-21 14:40:39',1,1,0,0,NULL),(12,'2015-09-21 14:42:47',1,1,0,0,NULL),(13,'2015-09-23 08:44:28',1,1,0,0,NULL),(14,'2015-09-23 08:51:20',1,1,0,0,NULL),(15,'2015-10-08 13:35:14',1,1,0,0,NULL);
/*!40000 ALTER TABLE `Files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GatheringConfiguredDataSources`
--

DROP TABLE IF EXISTS `GatheringConfiguredDataSources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GatheringConfiguredDataSources` (
  `gcsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gaID` int(10) unsigned DEFAULT NULL,
  `gasID` int(10) unsigned DEFAULT NULL,
  `gcdObject` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`gcsID`),
  KEY `gaID` (`gaID`),
  KEY `gasID` (`gasID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GatheringConfiguredDataSources`
--

LOCK TABLES `GatheringConfiguredDataSources` WRITE;
/*!40000 ALTER TABLE `GatheringConfiguredDataSources` DISABLE KEYS */;
/*!40000 ALTER TABLE `GatheringConfiguredDataSources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GatheringDataSources`
--

DROP TABLE IF EXISTS `GatheringDataSources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GatheringDataSources` (
  `gasID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gasName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gasHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `gasDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gasID`),
  UNIQUE KEY `gasHandle` (`gasHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GatheringDataSources`
--

LOCK TABLES `GatheringDataSources` WRITE;
/*!40000 ALTER TABLE `GatheringDataSources` DISABLE KEYS */;
INSERT INTO `GatheringDataSources` VALUES (1,'Site Page','page',0,0),(2,'RSS Feed','rss_feed',0,1),(3,'Flickr Feed','flickr_feed',0,2),(4,'Twitter','twitter',0,3);
/*!40000 ALTER TABLE `GatheringDataSources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GatheringItemFeatureAssignments`
--

DROP TABLE IF EXISTS `GatheringItemFeatureAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GatheringItemFeatureAssignments` (
  `gafaID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gaiID` int(10) unsigned DEFAULT NULL,
  `faID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`gafaID`),
  KEY `gaiID` (`gaiID`,`faID`),
  KEY `faID` (`faID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GatheringItemFeatureAssignments`
--

LOCK TABLES `GatheringItemFeatureAssignments` WRITE;
/*!40000 ALTER TABLE `GatheringItemFeatureAssignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `GatheringItemFeatureAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GatheringItemSelectedTemplates`
--

DROP TABLE IF EXISTS `GatheringItemSelectedTemplates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GatheringItemSelectedTemplates` (
  `gaiID` int(10) unsigned NOT NULL DEFAULT '0',
  `gatID` int(10) unsigned NOT NULL DEFAULT '0',
  `gatTypeID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`gaiID`,`gatID`),
  UNIQUE KEY `gatUniqueKey` (`gaiID`,`gatTypeID`),
  KEY `gatTypeID` (`gatTypeID`),
  KEY `gatID` (`gatID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GatheringItemSelectedTemplates`
--

LOCK TABLES `GatheringItemSelectedTemplates` WRITE;
/*!40000 ALTER TABLE `GatheringItemSelectedTemplates` DISABLE KEYS */;
/*!40000 ALTER TABLE `GatheringItemSelectedTemplates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GatheringItemTemplateFeatures`
--

DROP TABLE IF EXISTS `GatheringItemTemplateFeatures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GatheringItemTemplateFeatures` (
  `gfeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gatID` int(10) unsigned DEFAULT NULL,
  `feID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`gfeID`),
  KEY `gatID` (`gatID`),
  KEY `feID` (`feID`,`gatID`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GatheringItemTemplateFeatures`
--

LOCK TABLES `GatheringItemTemplateFeatures` WRITE;
/*!40000 ALTER TABLE `GatheringItemTemplateFeatures` DISABLE KEYS */;
INSERT INTO `GatheringItemTemplateFeatures` VALUES (4,1,1),(10,2,1),(13,3,1),(16,4,1),(19,5,1),(23,7,1),(29,11,1),(33,12,1),(37,13,1),(42,14,1),(47,15,1),(53,17,1),(56,18,1),(63,21,1),(64,22,1),(3,1,2),(9,2,2),(12,3,2),(15,4,2),(18,5,2),(21,6,2),(25,8,2),(27,9,2),(41,13,3),(46,14,3),(51,16,3),(55,17,3),(62,20,3),(66,22,3),(2,1,4),(8,2,4),(14,4,4),(17,5,4),(31,11,4),(35,12,4),(39,13,4),(44,14,4),(61,20,4),(5,1,5),(22,6,5),(24,8,5),(26,9,5),(28,10,5),(32,11,5),(36,12,5),(40,13,5),(45,14,5),(49,15,5),(50,16,5),(59,19,5),(65,22,5),(20,5,6),(1,1,7),(7,2,7),(11,3,7),(30,11,7),(34,12,7),(38,13,7),(43,14,7),(48,15,7),(52,16,7),(54,17,7),(57,18,7),(58,19,7),(60,20,7),(6,1,8);
/*!40000 ALTER TABLE `GatheringItemTemplateFeatures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GatheringItemTemplateTypes`
--

DROP TABLE IF EXISTS `GatheringItemTemplateTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GatheringItemTemplateTypes` (
  `gatTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gatTypeHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gatTypeID`),
  UNIQUE KEY `gatTypeHandle` (`gatTypeHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GatheringItemTemplateTypes`
--

LOCK TABLES `GatheringItemTemplateTypes` WRITE;
/*!40000 ALTER TABLE `GatheringItemTemplateTypes` DISABLE KEYS */;
INSERT INTO `GatheringItemTemplateTypes` VALUES (1,'tile',0),(2,'detail',0);
/*!40000 ALTER TABLE `GatheringItemTemplateTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GatheringItemTemplates`
--

DROP TABLE IF EXISTS `GatheringItemTemplates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GatheringItemTemplates` (
  `gatID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gatHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gatName` text COLLATE utf8_unicode_ci,
  `gatHasCustomClass` tinyint(1) NOT NULL DEFAULT '0',
  `gatFixedSlotWidth` int(10) unsigned DEFAULT '0',
  `gatFixedSlotHeight` int(10) unsigned DEFAULT '0',
  `gatForceDefault` int(10) unsigned DEFAULT '0',
  `pkgID` int(10) unsigned DEFAULT NULL,
  `gatTypeID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`gatID`),
  UNIQUE KEY `gatHandle` (`gatHandle`,`gatTypeID`),
  KEY `gatTypeID` (`gatTypeID`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GatheringItemTemplates`
--

LOCK TABLES `GatheringItemTemplates` WRITE;
/*!40000 ALTER TABLE `GatheringItemTemplates` DISABLE KEYS */;
INSERT INTO `GatheringItemTemplates` VALUES (1,'featured','Featured Item',0,6,2,1,0,1),(2,'title_date_description','Title Date & Description',0,0,0,0,0,1),(3,'title_description','Title & Description',0,0,0,0,0,1),(4,'title_date','Title & Date',0,0,0,0,0,1),(5,'title_date_comments','Title, Date & Comments',1,0,0,0,0,1),(6,'thumbnail','Thumbnail',0,0,0,0,0,1),(7,'basic','Basic',0,0,0,0,0,2),(8,'image_sharing_link','Image Sharing Link',0,0,0,0,0,2),(9,'image_conversation','Image Conversation',0,0,0,0,0,2),(10,'image','Large Image',0,0,0,0,0,2),(11,'masthead_image_left','Masthead Image Left',0,0,0,0,0,1),(12,'masthead_image_right','Masthead Image Right',0,0,0,0,0,1),(13,'masthead_image_byline_right','Masthead Image Byline Right',0,0,0,0,0,1),(14,'masthead_image_byline_left','Masthead Image Byline Left',0,0,0,0,0,1),(15,'image_masthead_description_center','Image Masthead Description Center',0,0,0,0,0,1),(16,'image_byline_description_center','Image Byline Description Center',0,0,0,0,0,1),(17,'masthead_byline_description','Masthead Byline Description',0,0,0,0,0,1),(18,'masthead_description','Masthead Description',0,0,0,0,0,1),(19,'thumbnail_description_center','Thumbnail & Description Center',0,0,0,0,0,1),(20,'tweet','Tweet',0,0,0,0,0,1),(21,'vimeo','Vimeo',0,0,0,0,0,1),(22,'image_overlay_headline','Image Overlay Headline',0,0,0,0,0,1);
/*!40000 ALTER TABLE `GatheringItemTemplates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GatheringItems`
--

DROP TABLE IF EXISTS `GatheringItems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GatheringItems` (
  `gaiID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gaID` int(10) unsigned DEFAULT NULL,
  `gasID` int(10) unsigned DEFAULT NULL,
  `gaiDateTimeCreated` datetime NOT NULL,
  `gaiPublicDateTime` datetime NOT NULL,
  `gaiTitle` text COLLATE utf8_unicode_ci,
  `gaiSlotWidth` int(10) unsigned DEFAULT '1',
  `gaiSlotHeight` int(10) unsigned DEFAULT '1',
  `gaiKey` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gaiBatchDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `gaiBatchTimestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `gaiIsDeleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`gaiID`),
  UNIQUE KEY `gaiUniqueKey` (`gaiKey`,`gasID`,`gaID`),
  KEY `gaID` (`gaID`,`gaiBatchTimestamp`),
  KEY `gasID` (`gasID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GatheringItems`
--

LOCK TABLES `GatheringItems` WRITE;
/*!40000 ALTER TABLE `GatheringItems` DISABLE KEYS */;
/*!40000 ALTER TABLE `GatheringItems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GatheringPermissionAssignments`
--

DROP TABLE IF EXISTS `GatheringPermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GatheringPermissionAssignments` (
  `gaID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gaID`,`pkID`,`paID`),
  KEY `pkID` (`pkID`),
  KEY `paID` (`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GatheringPermissionAssignments`
--

LOCK TABLES `GatheringPermissionAssignments` WRITE;
/*!40000 ALTER TABLE `GatheringPermissionAssignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `GatheringPermissionAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Gatherings`
--

DROP TABLE IF EXISTS `Gatherings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Gatherings` (
  `gaID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gaDateCreated` datetime NOT NULL,
  `gaDateLastUpdated` datetime NOT NULL,
  PRIMARY KEY (`gaID`),
  KEY `gaDateLastUpdated` (`gaDateLastUpdated`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Gatherings`
--

LOCK TABLES `Gatherings` WRITE;
/*!40000 ALTER TABLE `Gatherings` DISABLE KEYS */;
/*!40000 ALTER TABLE `Gatherings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GroupSetGroups`
--

DROP TABLE IF EXISTS `GroupSetGroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GroupSetGroups` (
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `gsID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gID`,`gsID`),
  KEY `gsID` (`gsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GroupSetGroups`
--

LOCK TABLES `GroupSetGroups` WRITE;
/*!40000 ALTER TABLE `GroupSetGroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `GroupSetGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GroupSets`
--

DROP TABLE IF EXISTS `GroupSets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GroupSets` (
  `gsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gsName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gsID`),
  KEY `gsName` (`gsName`),
  KEY `pkgID` (`pkgID`,`gsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GroupSets`
--

LOCK TABLES `GroupSets` WRITE;
/*!40000 ALTER TABLE `GroupSets` DISABLE KEYS */;
/*!40000 ALTER TABLE `GroupSets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Groups`
--

DROP TABLE IF EXISTS `Groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Groups` (
  `gID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gName` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `gDescription` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gUserExpirationIsEnabled` tinyint(1) NOT NULL DEFAULT '0',
  `gUserExpirationMethod` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gUserExpirationSetDateTime` datetime DEFAULT NULL,
  `gUserExpirationInterval` int(10) unsigned NOT NULL DEFAULT '0',
  `gUserExpirationAction` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gIsBadge` tinyint(1) NOT NULL DEFAULT '0',
  `gBadgeFID` int(10) unsigned NOT NULL DEFAULT '0',
  `gBadgeDescription` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gBadgeCommunityPointValue` int(11) NOT NULL DEFAULT '0',
  `gIsAutomated` tinyint(1) NOT NULL DEFAULT '0',
  `gCheckAutomationOnRegister` tinyint(1) NOT NULL DEFAULT '0',
  `gCheckAutomationOnLogin` tinyint(1) NOT NULL DEFAULT '0',
  `gCheckAutomationOnJobRun` tinyint(1) NOT NULL DEFAULT '0',
  `gPath` text COLLATE utf8_unicode_ci,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gID`),
  KEY `gName` (`gName`),
  KEY `gBadgeFID` (`gBadgeFID`),
  KEY `pkgID` (`pkgID`),
  KEY `gPath` (`gPath`(255))
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Groups`
--

LOCK TABLES `Groups` WRITE;
/*!40000 ALTER TABLE `Groups` DISABLE KEYS */;
INSERT INTO `Groups` VALUES (1,'Guest','The guest group represents unregistered visitors to your site.',0,NULL,NULL,0,NULL,0,0,NULL,0,0,0,0,0,'/Guest',0),(2,'Registered Users','The registered users group represents all user accounts.',0,NULL,NULL,0,NULL,0,0,NULL,0,0,0,0,0,'/Registered Users',0),(3,'Administrators','',0,NULL,NULL,0,NULL,0,0,NULL,0,0,0,0,0,'/Administrators',0),(4,'Prensa','Encargada de publicar noticias. Tendrá acceso al mapa del sitio y al administrador de archivos',0,NULL,NULL,0,NULL,0,0,NULL,0,0,0,0,0,'/Prensa',0),(5,'Transparencia','Encargada de publicar las leyes referentes al cumplimiento del estado (Ley 5189/14 y 5282)',0,NULL,NULL,0,NULL,0,0,NULL,0,0,0,0,0,'/Transparencia',0);
/*!40000 ALTER TABLE `Groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JobSetJobs`
--

DROP TABLE IF EXISTS `JobSetJobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JobSetJobs` (
  `jsID` int(10) unsigned NOT NULL DEFAULT '0',
  `jID` int(10) unsigned NOT NULL DEFAULT '0',
  `jRunOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`jsID`,`jID`),
  KEY `jID` (`jID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JobSetJobs`
--

LOCK TABLES `JobSetJobs` WRITE;
/*!40000 ALTER TABLE `JobSetJobs` DISABLE KEYS */;
INSERT INTO `JobSetJobs` VALUES (1,1,0),(1,4,0),(1,5,0),(1,6,0),(1,7,0);
/*!40000 ALTER TABLE `JobSetJobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JobSets`
--

DROP TABLE IF EXISTS `JobSets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JobSets` (
  `jsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jsName` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `jDateLastRun` datetime DEFAULT NULL,
  `isScheduled` smallint(6) NOT NULL DEFAULT '0',
  `scheduledInterval` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'days',
  `scheduledValue` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`jsID`),
  KEY `pkgID` (`pkgID`),
  KEY `jsName` (`jsName`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JobSets`
--

LOCK TABLES `JobSets` WRITE;
/*!40000 ALTER TABLE `JobSets` DISABLE KEYS */;
INSERT INTO `JobSets` VALUES (1,'Default',0,NULL,0,'days',0);
/*!40000 ALTER TABLE `JobSets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Jobs`
--

DROP TABLE IF EXISTS `Jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Jobs` (
  `jID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `jDescription` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `jDateInstalled` datetime DEFAULT NULL,
  `jDateLastRun` datetime DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `jLastStatusText` longtext COLLATE utf8_unicode_ci,
  `jLastStatusCode` smallint(6) NOT NULL DEFAULT '0',
  `jStatus` varchar(14) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'ENABLED',
  `jHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `jNotUninstallable` smallint(6) NOT NULL DEFAULT '0',
  `isScheduled` smallint(6) NOT NULL DEFAULT '0',
  `scheduledInterval` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'days',
  `scheduledValue` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`jID`),
  UNIQUE KEY `jHandle` (`jHandle`),
  KEY `pkgID` (`pkgID`),
  KEY `isScheduled` (`isScheduled`,`jDateLastRun`,`jID`),
  KEY `jDateLastRun` (`jDateLastRun`,`jID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Jobs`
--

LOCK TABLES `Jobs` WRITE;
/*!40000 ALTER TABLE `Jobs` DISABLE KEYS */;
INSERT INTO `Jobs` VALUES (1,'Index Search Engine - Updates','Index the site to allow searching to work quickly and accurately. Only reindexes pages that have changed since last indexing.','2015-09-21 11:27:05',NULL,0,NULL,0,'ENABLED','index_search',1,0,'days',0),(2,'Index Search Engine - All','Empties the page search index and reindexes all pages.','2015-09-21 11:27:05',NULL,0,NULL,0,'ENABLED','index_search_all',1,0,'days',0),(3,'Check Automated Groups','Automatically add users to groups and assign badges.','2015-09-21 11:27:05',NULL,0,NULL,0,'ENABLED','check_automated_groups',0,0,'days',0),(4,'Generate the sitemap.xml file','Generate the sitemap.xml file that search engines use to crawl your site.','2015-09-21 11:27:05',NULL,0,NULL,0,'ENABLED','generate_sitemap',0,0,'days',0),(5,'Process Email Posts','Polls an email account and grabs private messages/postings that are sent there..','2015-09-21 11:27:05',NULL,0,NULL,0,'ENABLED','process_email',0,0,'days',0),(6,'Remove Old Page Versions','Removes all except the 10 most recent page versions for each page.','2015-09-21 11:27:05',NULL,0,NULL,0,'ENABLED','remove_old_page_versions',0,0,'days',0),(7,'Update Gatherings','Loads new items into gatherings.','2015-09-21 11:27:05',NULL,0,NULL,0,'ENABLED','update_gatherings',0,0,'days',0);
/*!40000 ALTER TABLE `Jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JobsLog`
--

DROP TABLE IF EXISTS `JobsLog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JobsLog` (
  `jlID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jID` int(10) unsigned NOT NULL,
  `jlMessage` longtext COLLATE utf8_unicode_ci NOT NULL,
  `jlTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `jlError` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`jlID`),
  KEY `jID` (`jID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JobsLog`
--

LOCK TABLES `JobsLog` WRITE;
/*!40000 ALTER TABLE `JobsLog` DISABLE KEYS */;
/*!40000 ALTER TABLE `JobsLog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Logs`
--

DROP TABLE IF EXISTS `Logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Logs` (
  `logID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `channel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` int(10) unsigned NOT NULL,
  `message` longtext COLLATE utf8_unicode_ci,
  `uID` int(10) unsigned DEFAULT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`logID`),
  KEY `channel` (`channel`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Logs`
--

LOCK TABLES `Logs` WRITE;
/*!40000 ALTER TABLE `Logs` DISABLE KEYS */;
INSERT INTO `Logs` VALUES (1,'application',1442857034,'Pagina \"\" en la ruta  \"\" borrada',1,100),(2,'application',1442857034,'Pagina \"\" en la ruta  \"\" borrada',1,100),(3,'application',1442857035,'Pagina \"\" en la ruta  \"\" borrada',1,100),(4,'application',1442857035,'Pagina \"\" en la ruta  \"\" borrada',1,100),(5,'application',1442857036,'Pagina \"\" en la ruta  \"\" borrada',1,100),(6,'application',1442857036,'Pagina \"\" en la ruta  \"\" borrada',1,100),(7,'application',1442857037,'Pagina \"\" en la ruta  \"\" borrada',1,100),(8,'application',1442857576,'Image Inspector',1,200),(9,'application',1442858836,'Image Inspector',1,200),(10,'application',1442859356,'Pagina \"\" en la ruta  \"\" borrada',1,100),(11,'application',1442860221,'Image Inspector',1,200),(12,'application',1442860222,'Image Inspector',1,200),(13,'application',1442860223,'Image Inspector',1,200),(14,'application',1442860224,'Image Inspector',1,200),(15,'application',1442860225,'Image Inspector',1,200),(16,'application',1442860266,'Image Inspector',1,200),(17,'application',1442860270,'Image Inspector',1,200),(18,'application',1442860331,'Image Inspector',1,200),(19,'application',1442860363,'Image Inspector',1,200),(20,'application',1442860839,'Image Inspector',1,200),(21,'application',1442860968,'Image Inspector',1,200),(22,'application',1443012269,'Image Inspector',1,200),(23,'application',1443012680,'Image Inspector',1,200),(24,'application',1443016924,'Pagina \"Noticia 3\" en la ruta \"/noticias/noticia-3\" enviada a la basura',1,100),(25,'application',1443018107,'Pagina \"\" en la ruta \"/!drafts/185\" enviada a la basura',1,100),(26,'application',1443018124,'Pagina \"\" en la ruta  \"/!trash/185\" borrada',1,100),(27,'application',1443018125,'Pagina \"Noticia 3\" en la ruta  \"/!trash/noticia-3\" borrada',1,100),(28,'application',1443018318,'Pagina \"\" en la ruta \"/!drafts/187\" enviada a la basura',2,100),(29,'application',1443018636,'Pagina \"Noticia 3\" en la ruta \"/noticias/noticia-3\" enviada a la basura',2,100),(30,'exceptions',1443207007,'Exception Occurred: /var/www/html/concrete/src/Utility/Service/Text.php:136 htmlentities(): Invalid multibyte sequence in argument (2)\n',0,600),(31,'exceptions',1443587394,'Exception Occurred: /var/www/html/concrete/controllers/page_types/core_stack.php:30 Call to undefined method Concrete\\Core\\View\\View::setCollectionObject() (1)\n',0,600),(32,'exceptions',1443608821,'Exception Occurred: /var/www/html/concrete/src/Block/BlockType/BlockType.php:733 Class \'\\Concrete\\Block\\Agregararchivo\\Controller\' not found (1)\n',1,600),(33,'exceptions',1443608826,'Exception Occurred: /var/www/html/concrete/src/Block/BlockType/BlockType.php:733 Class \'\\Concrete\\Block\\Agregararchivo\\Controller\' not found (1)\n',1,600),(34,'exceptions',1443608828,'Exception Occurred: /var/www/html/concrete/src/Block/BlockType/BlockType.php:733 Class \'\\Concrete\\Block\\Agregararchivo\\Controller\' not found (1)\n',1,600),(35,'exceptions',1444047318,'Exception Occurred: /var/www/html/concrete/controllers/page_types/core_stack.php:30 Call to undefined method Concrete\\Core\\View\\View::setCollectionObject() (1)\n',0,600),(36,'exceptions',1444133886,'Exception Occurred: /var/www/html/concrete/controllers/page_types/core_stack.php:30 Call to undefined method Concrete\\Core\\View\\View::setCollectionObject() (1)\n',0,600),(37,'exceptions',1444313985,'Exception Occurred: /var/www/html/concrete/controllers/page_types/core_stack.php:30 Call to undefined method Concrete\\Core\\View\\View::setCollectionObject() (1)\n',0,600);
/*!40000 ALTER TABLE `Logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MailImporters`
--

DROP TABLE IF EXISTS `MailImporters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MailImporters` (
  `miID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `miHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `miServer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `miUsername` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `miPassword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `miEncryption` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `miIsEnabled` tinyint(1) NOT NULL DEFAULT '0',
  `miEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `miPort` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned DEFAULT NULL,
  `miConnectionMethod` varchar(8) COLLATE utf8_unicode_ci DEFAULT 'POP',
  PRIMARY KEY (`miID`),
  UNIQUE KEY `miHandle` (`miHandle`),
  KEY `pkgID` (`pkgID`,`miID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MailImporters`
--

LOCK TABLES `MailImporters` WRITE;
/*!40000 ALTER TABLE `MailImporters` DISABLE KEYS */;
INSERT INTO `MailImporters` VALUES (1,'private_message','',NULL,NULL,NULL,0,'',0,0,'POP');
/*!40000 ALTER TABLE `MailImporters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MailValidationHashes`
--

DROP TABLE IF EXISTS `MailValidationHashes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MailValidationHashes` (
  `mvhID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `miID` int(10) unsigned NOT NULL DEFAULT '0',
  `email` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `mHash` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `mDateGenerated` int(10) unsigned NOT NULL DEFAULT '0',
  `mDateRedeemed` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`mvhID`),
  UNIQUE KEY `mHash` (`mHash`),
  KEY `miID` (`miID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MailValidationHashes`
--

LOCK TABLES `MailValidationHashes` WRITE;
/*!40000 ALTER TABLE `MailValidationHashes` DISABLE KEYS */;
/*!40000 ALTER TABLE `MailValidationHashes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MultilingualPageRelations`
--

DROP TABLE IF EXISTS `MultilingualPageRelations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MultilingualPageRelations` (
  `mpRelationID` int(10) unsigned NOT NULL DEFAULT '0',
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `mpLanguage` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mpLocale` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`mpRelationID`,`cID`,`mpLocale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MultilingualPageRelations`
--

LOCK TABLES `MultilingualPageRelations` WRITE;
/*!40000 ALTER TABLE `MultilingualPageRelations` DISABLE KEYS */;
/*!40000 ALTER TABLE `MultilingualPageRelations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MultilingualSections`
--

DROP TABLE IF EXISTS `MultilingualSections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MultilingualSections` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `msLanguage` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `msCountry` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `msNumPlurals` int(11) NOT NULL DEFAULT '2',
  `msPluralRule` varchar(400) COLLATE utf8_unicode_ci NOT NULL DEFAULT '(n != 1)',
  `msPluralCases` varchar(1000) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'one@1\nother@0, 2~16, 100, 1000, 10000, 100000, 1000000, …',
  PRIMARY KEY (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MultilingualSections`
--

LOCK TABLES `MultilingualSections` WRITE;
/*!40000 ALTER TABLE `MultilingualSections` DISABLE KEYS */;
/*!40000 ALTER TABLE `MultilingualSections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MultilingualTranslations`
--

DROP TABLE IF EXISTS `MultilingualTranslations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MultilingualTranslations` (
  `mtID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mtSectionID` int(10) unsigned NOT NULL DEFAULT '0',
  `msgid` text COLLATE utf8_unicode_ci NOT NULL,
  `msgidPlural` text COLLATE utf8_unicode_ci,
  `msgstr` text COLLATE utf8_unicode_ci,
  `msgstrPlurals` text COLLATE utf8_unicode_ci,
  `context` text COLLATE utf8_unicode_ci,
  `comments` text COLLATE utf8_unicode_ci,
  `reference` text COLLATE utf8_unicode_ci,
  `flags` text COLLATE utf8_unicode_ci,
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`mtID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MultilingualTranslations`
--

LOCK TABLES `MultilingualTranslations` WRITE;
/*!40000 ALTER TABLE `MultilingualTranslations` DISABLE KEYS */;
/*!40000 ALTER TABLE `MultilingualTranslations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OauthUserMap`
--

DROP TABLE IF EXISTS `OauthUserMap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OauthUserMap` (
  `user_id` int(10) unsigned NOT NULL,
  `namespace` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `binding` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`user_id`,`namespace`),
  UNIQUE KEY `oauth_binding` (`binding`,`namespace`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OauthUserMap`
--

LOCK TABLES `OauthUserMap` WRITE;
/*!40000 ALTER TABLE `OauthUserMap` DISABLE KEYS */;
/*!40000 ALTER TABLE `OauthUserMap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Packages`
--

DROP TABLE IF EXISTS `Packages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Packages` (
  `pkgID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pkgName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `pkgDescription` text COLLATE utf8_unicode_ci,
  `pkgDateInstalled` datetime NOT NULL,
  `pkgIsInstalled` tinyint(1) NOT NULL DEFAULT '1',
  `pkgVersion` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pkgAvailableVersion` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`pkgID`),
  UNIQUE KEY `pkgHandle` (`pkgHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Packages`
--

LOCK TABLES `Packages` WRITE;
/*!40000 ALTER TABLE `Packages` DISABLE KEYS */;
/*!40000 ALTER TABLE `Packages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageFeeds`
--

DROP TABLE IF EXISTS `PageFeeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageFeeds` (
  `pfID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cParentID` int(10) unsigned NOT NULL DEFAULT '1',
  `pfTitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pfHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pfDescription` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pfIncludeAllDescendents` tinyint(1) NOT NULL DEFAULT '0',
  `pfContentToDisplay` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  `pfAreaHandleToDisplay` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customTopicAttributeKeyHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customTopicTreeNodeID` int(10) unsigned NOT NULL DEFAULT '0',
  `pfDisplayAliases` tinyint(1) NOT NULL DEFAULT '0',
  `ptID` smallint(5) unsigned DEFAULT NULL,
  `pfDisplayFeaturedOnly` tinyint(1) DEFAULT '0',
  `iconFID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pfID`),
  UNIQUE KEY `pfHandle` (`pfHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageFeeds`
--

LOCK TABLES `PageFeeds` WRITE;
/*!40000 ALTER TABLE `PageFeeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `PageFeeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PagePaths`
--

DROP TABLE IF EXISTS `PagePaths`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePaths` (
  `ppID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned DEFAULT '0',
  `cPath` text COLLATE utf8_unicode_ci NOT NULL,
  `ppIsCanonical` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `ppGeneratedFromURLSlugs` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ppID`),
  KEY `cID` (`cID`),
  KEY `ppIsCanonical` (`ppIsCanonical`),
  KEY `cPath` (`cPath`(255))
) ENGINE=InnoDB AUTO_INCREMENT=181 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PagePaths`
--

LOCK TABLES `PagePaths` WRITE;
/*!40000 ALTER TABLE `PagePaths` DISABLE KEYS */;
INSERT INTO `PagePaths` VALUES (1,2,'/dashboard','1',1),(2,3,'/dashboard/sitemap','1',1),(3,4,'/dashboard/sitemap/full','1',1),(4,5,'/dashboard/sitemap/explore','1',1),(5,6,'/dashboard/sitemap/search','1',1),(6,7,'/dashboard/files','1',1),(7,8,'/dashboard/files/search','1',1),(8,9,'/dashboard/files/attributes','1',1),(9,10,'/dashboard/files/sets','1',1),(10,11,'/dashboard/files/add_set','1',1),(11,12,'/dashboard/users','1',1),(12,13,'/dashboard/users/search','1',1),(13,14,'/dashboard/users/groups','1',1),(14,15,'/dashboard/users/attributes','1',1),(15,16,'/dashboard/users/add','1',1),(16,17,'/dashboard/users/add_group','1',1),(17,18,'/dashboard/users/groups/bulkupdate','1',1),(18,19,'/dashboard/users/group_sets','1',1),(19,20,'/dashboard/users/points','1',1),(20,21,'/dashboard/users/points/assign','1',1),(21,22,'/dashboard/users/points/actions','1',1),(22,23,'/dashboard/reports','1',1),(23,24,'/dashboard/reports/forms','1',1),(24,25,'/dashboard/reports/surveys','1',1),(25,26,'/dashboard/reports/logs','1',1),(26,27,'/dashboard/pages','1',1),(27,28,'/dashboard/pages/themes','1',1),(28,29,'/dashboard/pages/themes/inspect','1',1),(29,30,'/dashboard/pages/types','1',1),(30,31,'/dashboard/pages/types/organize','1',1),(31,32,'/dashboard/pages/types/add','1',1),(32,33,'/dashboard/pages/types/form','1',1),(33,34,'/dashboard/pages/types/output','1',1),(34,35,'/dashboard/pages/types/attributes','1',1),(35,36,'/dashboard/pages/types/permissions','1',1),(36,37,'/dashboard/pages/templates','1',1),(37,38,'/dashboard/pages/templates/add','1',1),(38,39,'/dashboard/pages/attributes','1',1),(39,40,'/dashboard/pages/single','1',1),(40,41,'/dashboard/pages/feeds','1',1),(41,42,'/dashboard/conversations','1',1),(42,43,'/dashboard/conversations/messages','1',1),(43,44,'/dashboard/workflow','1',1),(44,45,'/dashboard/workflow/me','1',1),(45,46,'/dashboard/workflow/workflows','1',1),(46,47,'/dashboard/blocks','1',1),(47,48,'/dashboard/blocks/stacks','1',1),(48,49,'/dashboard/blocks/permissions','1',1),(49,50,'/dashboard/blocks/stacks/list','1',1),(50,51,'/dashboard/blocks/types','1',1),(51,52,'/dashboard/extend','1',1),(52,53,'/dashboard/news','1',1),(53,54,'/dashboard/extend/install','1',1),(54,55,'/dashboard/extend/update','1',1),(55,56,'/dashboard/extend/connect','1',1),(56,57,'/dashboard/extend/themes','1',1),(57,58,'/dashboard/extend/addons','1',1),(58,59,'/dashboard/system','1',1),(59,60,'/dashboard/system/basics','1',1),(60,61,'/dashboard/system/basics/name','1',1),(61,62,'/dashboard/system/basics/accessibility','1',1),(62,63,'/dashboard/system/basics/social','1',1),(63,64,'/dashboard/system/basics/icons','1',1),(64,65,'/dashboard/system/basics/editor','1',1),(65,66,'/dashboard/system/basics/multilingual','1',1),(66,67,'/dashboard/system/basics/timezone','1',1),(67,68,'/dashboard/system/multilingual','1',1),(68,69,'/dashboard/system/multilingual/setup','1',1),(69,70,'/dashboard/system/multilingual/copy','1',1),(70,71,'/dashboard/system/multilingual/page_report','1',1),(71,72,'/dashboard/system/multilingual/translate_interface','1',1),(72,73,'/dashboard/system/seo','1',1),(73,74,'/dashboard/system/seo/urls','1',1),(74,75,'/dashboard/system/seo/bulk','1',1),(75,76,'/dashboard/system/seo/codes','1',1),(76,77,'/dashboard/system/seo/excluded','1',1),(77,78,'/dashboard/system/seo/searchindex','1',1),(78,79,'/dashboard/system/files','1',1),(79,80,'/dashboard/system/files/permissions','1',1),(80,81,'/dashboard/system/files/filetypes','1',1),(81,82,'/dashboard/system/files/thumbnails','1',1),(82,83,'/dashboard/system/files/storage','1',1),(83,84,'/dashboard/system/optimization','1',1),(84,85,'/dashboard/system/optimization/cache','1',1),(85,86,'/dashboard/system/optimization/clearcache','1',1),(86,87,'/dashboard/system/optimization/jobs','1',1),(87,88,'/dashboard/system/optimization/query_log','1',1),(88,89,'/dashboard/system/permissions','1',1),(89,90,'/dashboard/system/permissions/site','1',1),(90,91,'/dashboard/system/permissions/tasks','1',1),(91,92,'/dashboard/system/permissions/users','1',1),(92,93,'/dashboard/system/permissions/advanced','1',1),(93,94,'/dashboard/system/permissions/blacklist','1',1),(94,95,'/dashboard/system/permissions/captcha','1',1),(95,96,'/dashboard/system/permissions/antispam','1',1),(96,97,'/dashboard/system/permissions/maintenance','1',1),(97,98,'/dashboard/system/registration','1',1),(98,99,'/dashboard/system/registration/postlogin','1',1),(99,100,'/dashboard/system/registration/profiles','1',1),(100,101,'/dashboard/system/registration/open','1',1),(101,102,'/dashboard/system/registration/authentication','1',1),(102,103,'/dashboard/system/mail','1',1),(103,104,'/dashboard/system/mail/method','1',1),(104,105,'/dashboard/system/mail/method/test','1',1),(105,106,'/dashboard/system/mail/importers','1',1),(106,107,'/dashboard/system/conversations','1',1),(107,108,'/dashboard/system/conversations/settings','1',1),(108,109,'/dashboard/system/conversations/points','1',1),(109,110,'/dashboard/system/conversations/bannedwords','1',1),(110,111,'/dashboard/system/conversations/permissions','1',1),(111,112,'/dashboard/system/attributes','1',1),(112,113,'/dashboard/system/attributes/sets','1',1),(113,114,'/dashboard/system/attributes/types','1',1),(114,115,'/dashboard/system/attributes/topics','1',1),(115,116,'/dashboard/system/attributes/topics/add','1',1),(116,117,'/dashboard/system/environment','1',1),(117,118,'/dashboard/system/environment/info','1',1),(118,119,'/dashboard/system/environment/debug','1',1),(119,120,'/dashboard/system/environment/logging','1',1),(120,121,'/dashboard/system/environment/proxy','1',1),(121,122,'/dashboard/system/environment/entities','1',1),(122,123,'/dashboard/system/backup','1',1),(123,124,'/dashboard/system/backup/backup','1',1),(124,125,'/dashboard/system/backup/update','1',1),(125,126,'/dashboard/welcome','1',1),(126,127,'/dashboard/home','1',1),(127,128,'/!drafts','1',1),(128,129,'/!trash','1',1),(129,130,'/!stacks','1',1),(130,131,'/login','1',1),(131,132,'/register','1',1),(132,133,'/account','1',1),(133,134,'/account/edit_profile','1',1),(134,135,'/account/avatar','1',1),(135,136,'/account/messages','1',1),(136,137,'/account/messages/inbox','1',1),(137,138,'/members','1',1),(138,139,'/members/profile','1',1),(139,140,'/members/directory','1',1),(140,141,'/page_not_found','1',1),(141,142,'/page_forbidden','1',1),(142,143,'/download_file','1',1),(143,145,'/!stacks/header-site-title','1',1),(144,146,'/!stacks/header-navigation','1',1),(145,147,'/!stacks/footer-legal','1',1),(146,148,'/!stacks/footer-navigation','1',1),(147,149,'/!stacks/footer-contact','1',1),(148,150,'/!stacks/header-search','1',1),(149,151,'/!stacks/footer-site-title','1',1),(150,152,'/!stacks/footer-social','1',1),(151,153,'/!drafts/153','1',1),(152,161,'/!stacks/search','1',1),(153,164,'/institucion','1',1),(154,165,'/noticias','1',1),(155,166,'/institucion/mision-y-vision','1',1),(156,167,'/institucion/organigrama','1',1),(157,168,'/institucion/marco-legal','1',1),(158,169,'/institucion/autoridades','1',1),(159,170,'/agenda','1',1),(160,171,'/galeria','1',1),(161,172,'/contacto','1',1),(162,173,'/tramites','1',1),(163,174,'/transparencia','1',1),(164,175,'/buscador','1',1),(165,176,'/176','1',1),(166,177,'/noticias/titulo-de-la-noticia','1',1),(167,178,'/noticias/titulo-de-la-noticia-2','1',1),(168,179,'/179','1',1),(169,180,'/galeria/titulo-del-album-1','1',1),(170,181,'/galeria/titulo-del-album-2','1',1),(171,182,'/182','1',1),(172,183,'/transparencia/enero-2015','1',1),(175,186,'/!trash/noticia-3','1',1),(176,187,'/!trash/187','1',1),(177,188,'/galeria/titulo-del-album-3','1',1),(178,189,'/transparencia/febrero-2015','1',1),(179,190,'/noticias/titulo-de-la-noticia-3','1',1),(180,191,'/!drafts/191','1',1);
/*!40000 ALTER TABLE `PagePaths` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PagePermissionAssignments`
--

DROP TABLE IF EXISTS `PagePermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePermissionAssignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`pkID`,`paID`),
  KEY `paID` (`paID`,`pkID`),
  KEY `pkID` (`pkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PagePermissionAssignments`
--

LOCK TABLES `PagePermissionAssignments` WRITE;
/*!40000 ALTER TABLE `PagePermissionAssignments` DISABLE KEYS */;
INSERT INTO `PagePermissionAssignments` VALUES (1,1,108),(2,1,169),(12,1,116),(23,1,111),(27,1,117),(42,1,112),(44,1,118),(47,1,115),(52,1,114),(59,1,113),(128,1,63),(131,1,60),(132,1,61),(165,1,108),(171,1,108),(174,1,108),(176,1,138),(179,1,149),(182,1,158),(1,2,43),(128,2,165),(165,2,43),(171,2,43),(174,2,43),(176,2,139),(179,2,9),(182,2,9),(1,3,160),(2,3,122),(128,3,65),(165,3,161),(171,3,162),(174,3,160),(176,3,140),(179,3,155),(182,3,157),(1,4,45),(128,4,66),(165,4,45),(171,4,45),(174,4,45),(176,4,140),(179,4,155),(182,4,157),(1,5,46),(128,5,165),(165,5,46),(171,5,46),(174,5,46),(176,5,140),(179,5,155),(182,5,157),(1,6,47),(128,6,165),(165,6,47),(171,6,47),(174,6,47),(176,6,140),(179,6,155),(182,6,157),(1,7,48),(128,7,69),(165,7,48),(171,7,48),(174,7,48),(176,7,140),(179,7,155),(182,7,157),(1,8,50),(128,8,70),(165,8,50),(171,8,50),(174,8,50),(176,8,139),(179,8,9),(182,8,9),(1,9,51),(128,9,165),(165,9,51),(171,9,51),(174,9,51),(176,9,139),(179,9,9),(182,9,9),(1,10,52),(128,10,165),(165,10,52),(171,10,52),(174,10,52),(176,10,139),(179,10,9),(182,10,9),(1,11,53),(128,11,73),(165,11,53),(171,11,53),(174,11,53),(176,11,139),(179,11,9),(182,11,9),(1,12,54),(128,12,165),(165,12,54),(171,12,54),(174,12,54),(176,12,140),(179,12,155),(182,12,157),(1,13,55),(128,13,165),(165,13,55),(171,13,55),(174,13,55),(176,13,139),(179,13,9),(182,13,9),(1,14,56),(128,14,165),(165,14,56),(171,14,56),(174,14,56),(176,14,140),(179,14,155),(182,14,157),(1,15,57),(128,15,77),(165,15,143),(171,15,120),(174,15,170),(176,15,139),(179,15,155),(182,15,157),(1,16,58),(128,16,78),(165,16,58),(171,16,58),(174,16,58),(176,16,140),(179,16,155),(182,16,157),(1,17,59),(128,17,79),(165,17,59),(171,17,59),(174,17,59),(176,17,139),(179,17,9),(182,17,9),(1,18,49),(165,18,49),(171,18,49),(174,18,49),(176,18,140),(179,18,155),(182,18,157);
/*!40000 ALTER TABLE `PagePermissionAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PagePermissionPageTypeAccessList`
--

DROP TABLE IF EXISTS `PagePermissionPageTypeAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePermissionPageTypeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `externalLink` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PagePermissionPageTypeAccessList`
--

LOCK TABLES `PagePermissionPageTypeAccessList` WRITE;
/*!40000 ALTER TABLE `PagePermissionPageTypeAccessList` DISABLE KEYS */;
INSERT INTO `PagePermissionPageTypeAccessList` VALUES (143,1,'A',1),(143,7,'A',1),(164,1,'A',1),(164,8,'A',1),(170,1,'A',1),(170,8,'A',1);
/*!40000 ALTER TABLE `PagePermissionPageTypeAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PagePermissionPageTypeAccessListCustom`
--

DROP TABLE IF EXISTS `PagePermissionPageTypeAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePermissionPageTypeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`ptID`),
  KEY `peID` (`peID`),
  KEY `ptID` (`ptID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PagePermissionPageTypeAccessListCustom`
--

LOCK TABLES `PagePermissionPageTypeAccessListCustom` WRITE;
/*!40000 ALTER TABLE `PagePermissionPageTypeAccessListCustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `PagePermissionPageTypeAccessListCustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PagePermissionPropertyAccessList`
--

DROP TABLE IF EXISTS `PagePermissionPropertyAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePermissionPropertyAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `name` tinyint(1) DEFAULT '0',
  `publicDateTime` tinyint(1) DEFAULT '0',
  `uID` tinyint(1) DEFAULT '0',
  `description` tinyint(1) DEFAULT '0',
  `paths` tinyint(1) DEFAULT '0',
  `attributePermission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PagePermissionPropertyAccessList`
--

LOCK TABLES `PagePermissionPropertyAccessList` WRITE;
/*!40000 ALTER TABLE `PagePermissionPropertyAccessList` DISABLE KEYS */;
/*!40000 ALTER TABLE `PagePermissionPropertyAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PagePermissionPropertyAttributeAccessListCustom`
--

DROP TABLE IF EXISTS `PagePermissionPropertyAttributeAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePermissionPropertyAttributeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`akID`),
  KEY `peID` (`peID`),
  KEY `akID` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PagePermissionPropertyAttributeAccessListCustom`
--

LOCK TABLES `PagePermissionPropertyAttributeAccessListCustom` WRITE;
/*!40000 ALTER TABLE `PagePermissionPropertyAttributeAccessListCustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `PagePermissionPropertyAttributeAccessListCustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PagePermissionThemeAccessList`
--

DROP TABLE IF EXISTS `PagePermissionThemeAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePermissionThemeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PagePermissionThemeAccessList`
--

LOCK TABLES `PagePermissionThemeAccessList` WRITE;
/*!40000 ALTER TABLE `PagePermissionThemeAccessList` DISABLE KEYS */;
/*!40000 ALTER TABLE `PagePermissionThemeAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PagePermissionThemeAccessListCustom`
--

DROP TABLE IF EXISTS `PagePermissionThemeAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePermissionThemeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `pThemeID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`pThemeID`),
  KEY `peID` (`peID`),
  KEY `pThemeID` (`pThemeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PagePermissionThemeAccessListCustom`
--

LOCK TABLES `PagePermissionThemeAccessListCustom` WRITE;
/*!40000 ALTER TABLE `PagePermissionThemeAccessListCustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `PagePermissionThemeAccessListCustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageSearchIndex`
--

DROP TABLE IF EXISTS `PageSearchIndex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageSearchIndex` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `content` longtext COLLATE utf8_unicode_ci,
  `cName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cDescription` text COLLATE utf8_unicode_ci,
  `cPath` text COLLATE utf8_unicode_ci,
  `cDatePublic` datetime DEFAULT NULL,
  `cDateLastIndexed` datetime DEFAULT NULL,
  `cDateLastSitemapped` datetime DEFAULT NULL,
  `cRequiresReindex` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`cID`),
  KEY `cDateLastIndexed` (`cDateLastIndexed`),
  KEY `cDateLastSitemapped` (`cDateLastSitemapped`),
  KEY `cRequiresReindex` (`cRequiresReindex`),
  FULLTEXT KEY `cName` (`cName`),
  FULLTEXT KEY `cDescription` (`cDescription`),
  FULLTEXT KEY `content` (`content`),
  FULLTEXT KEY `content2` (`cName`,`cDescription`,`content`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageSearchIndex`
--

LOCK TABLES `PageSearchIndex` WRITE;
/*!40000 ALTER TABLE `PageSearchIndex` DISABLE KEYS */;
INSERT INTO `PageSearchIndex` VALUES (2,'','Dashboard','','/dashboard','2015-09-21 11:27:06','2015-09-21 11:28:21',NULL,0),(3,'','Sitemap','Whole world at a glance.','/dashboard/sitemap','2015-09-21 11:27:06','2015-09-21 11:28:21',NULL,0),(4,'','Full Sitemap','','/dashboard/sitemap/full','2015-09-21 11:27:07','2015-09-21 11:28:21',NULL,0),(5,'','Flat View','','/dashboard/sitemap/explore','2015-09-21 11:27:07','2015-09-21 11:28:22',NULL,0),(6,'','Page Search','','/dashboard/sitemap/search','2015-09-21 11:27:08','2015-09-21 11:28:22',NULL,0),(8,'','File Manager','','/dashboard/files/search','2015-09-21 11:27:09','2015-09-21 11:28:22',NULL,0),(9,'','Attributes','','/dashboard/files/attributes','2015-09-21 11:27:09','2015-09-21 11:28:22',NULL,0),(10,'','File Sets','','/dashboard/files/sets','2015-09-21 11:27:10','2015-09-21 11:28:22',NULL,0),(11,'','Add File Set','','/dashboard/files/add_set','2015-09-21 11:27:10','2015-09-21 11:28:23',NULL,0),(12,'','Members','Add and manage the user accounts and groups on your website.','/dashboard/users','2015-09-21 11:27:11','2015-09-21 11:28:23',NULL,0),(13,'','Search Users','','/dashboard/users/search','2015-09-21 11:27:11','2015-09-21 11:28:23',NULL,0),(14,'','User Groups','','/dashboard/users/groups','2015-09-21 11:27:12','2015-09-21 11:28:23',NULL,0),(15,'','Attributes','','/dashboard/users/attributes','2015-09-21 11:27:12','2015-09-21 11:28:23',NULL,0),(16,'','Add User','','/dashboard/users/add','2015-09-21 11:27:13','2015-09-21 11:28:24',NULL,0),(17,'','Add Group','','/dashboard/users/add_group','2015-09-21 11:27:13','2015-09-21 11:28:24',NULL,0),(19,'','Group Sets','','/dashboard/users/group_sets','2015-09-21 11:27:15','2015-09-21 11:28:24',NULL,0),(20,'','Community Points',NULL,'/dashboard/users/points','2015-09-21 11:27:15','2015-09-21 11:28:25',NULL,0),(22,'','Actions',NULL,'/dashboard/users/points/actions','2015-09-21 11:27:17','2015-09-21 11:28:25',NULL,0),(23,'','Reports','Get data from forms and logs.','/dashboard/reports','2015-09-21 11:27:17','2015-09-21 11:28:25',NULL,0),(24,'','Form Results','Get submission data.','/dashboard/reports/forms','2015-09-21 11:27:18','2015-09-21 11:28:25',NULL,0),(25,'','Surveys','','/dashboard/reports/surveys','2015-09-21 11:27:18','2015-09-21 11:28:25',NULL,0),(26,'','Logs','','/dashboard/reports/logs','2015-09-21 11:27:19','2015-09-21 11:28:25',NULL,0),(28,'','Themes','Reskin your site.','/dashboard/pages/themes','2015-09-21 11:27:20','2015-09-21 11:28:26',NULL,0),(29,'','Inspect','','/dashboard/pages/themes/inspect','2015-09-21 11:27:20','2015-09-21 11:28:26',NULL,0),(31,'','Organize Page Type Order','','/dashboard/pages/types/organize','2015-09-21 11:27:22','2015-09-21 11:28:26',NULL,0),(32,'','Add Page Type','','/dashboard/pages/types/add','2015-09-21 11:27:22','2015-09-21 11:28:26',NULL,0),(33,'','Compose Form','','/dashboard/pages/types/form','2015-09-21 11:27:23','2015-09-21 11:28:26',NULL,0),(34,'','Defaults and Output','','/dashboard/pages/types/output','2015-09-21 11:27:23','2015-09-21 11:28:27',NULL,0),(35,'','Page Type Attributes','','/dashboard/pages/types/attributes','2015-09-21 11:27:24','2015-09-21 11:28:27',NULL,0),(36,'','Page Type Permissions','','/dashboard/pages/types/permissions','2015-09-21 11:27:24','2015-09-21 11:28:27',NULL,0),(38,'','Add Page Template','Add page templates to your site.','/dashboard/pages/templates/add','2015-09-21 11:27:26','2015-09-21 11:28:27',NULL,0),(39,'','Attributes','','/dashboard/pages/attributes','2015-09-21 11:27:26','2015-09-21 11:28:27',NULL,0),(40,'','Single Pages','','/dashboard/pages/single','2015-09-21 11:27:27','2015-09-21 11:28:27',NULL,0),(41,'','RSS Feeds','','/dashboard/pages/feeds','2015-09-21 11:27:27','2015-09-21 11:28:28',NULL,0),(43,'','Messages','','/dashboard/conversations/messages','2015-09-21 11:27:29','2015-09-21 11:28:28',NULL,0),(44,'','Workflow','','/dashboard/workflow','2015-09-21 11:27:29','2015-09-21 11:28:28',NULL,0),(48,'','Stacks','Share content across your site.','/dashboard/blocks/stacks','2015-09-21 11:27:31','2015-09-21 11:28:28',NULL,0),(50,'','Stack List','','/dashboard/blocks/stacks/list','2015-09-21 11:27:32','2015-09-21 11:28:29',NULL,0),(51,'','Block Types','Manage the installed block types in your site.','/dashboard/blocks/types','2015-09-21 11:27:33','2015-09-21 11:28:29',NULL,0),(52,'','Extend concrete5','','/dashboard/extend','2015-09-21 11:27:33','2015-09-21 11:28:29',NULL,0),(53,'','Dashboard','','/dashboard/news','2015-09-21 11:27:34','2015-09-21 11:28:29',NULL,0),(54,'','Add Functionality','Install add-ons & themes.','/dashboard/extend/install','2015-09-21 11:27:35','2015-09-21 11:28:29',NULL,0),(55,'','Update Add-Ons','Update your installed packages.','/dashboard/extend/update','2015-09-21 11:27:36','2015-09-21 11:28:30',NULL,0),(56,'','Connect to the Community','Connect to the concrete5 community.','/dashboard/extend/connect','2015-09-21 11:27:36','2015-09-21 11:28:30',NULL,0),(57,'','Get More Themes','Download themes from concrete5.org.','/dashboard/extend/themes','2015-09-21 11:27:36','2015-09-21 11:28:30',NULL,0),(58,'','Get More Add-Ons','Download add-ons from concrete5.org.','/dashboard/extend/addons','2015-09-21 11:27:37','2015-09-21 11:28:30',NULL,0),(59,'','System & Settings','Secure and setup your site.','/dashboard/system','2015-09-21 11:27:38','2015-09-21 11:28:30',NULL,0),(61,'','Site Name','','/dashboard/system/basics/name','2015-09-21 11:27:39','2015-09-21 11:28:31',NULL,0),(62,'','Accessibility','','/dashboard/system/basics/accessibility','2015-09-21 11:27:40','2015-09-21 11:28:31',NULL,0),(63,'','Social Links','','/dashboard/system/basics/social','2015-09-21 11:27:40','2015-09-21 11:28:31',NULL,0),(64,'','Bookmark Icons','Bookmark icon and mobile home screen icon setup.','/dashboard/system/basics/icons','2015-09-21 11:27:41','2015-09-21 11:28:31',NULL,0),(65,'','Rich Text Editor','','/dashboard/system/basics/editor','2015-09-21 11:27:41','2015-09-21 11:28:32',NULL,0),(66,'','Languages','','/dashboard/system/basics/multilingual','2015-09-21 11:27:42','2015-09-21 11:28:32',NULL,0),(67,'','Time Zone','','/dashboard/system/basics/timezone','2015-09-21 11:27:42','2015-09-21 11:28:32',NULL,0),(68,'','Multilingual','Run your site in multiple languages.','/dashboard/system/multilingual','2015-09-21 11:27:43','2015-09-21 11:28:32',NULL,0),(74,'','URLs and Redirection','','/dashboard/system/seo/urls','2015-09-21 11:27:46','2015-09-21 11:28:32',NULL,0),(75,'','Bulk SEO Updater','','/dashboard/system/seo/bulk','2015-09-21 11:27:47','2015-09-21 11:28:32',NULL,0),(76,'','Tracking Codes','','/dashboard/system/seo/codes','2015-09-21 11:27:47','2015-09-21 11:28:33',NULL,0),(77,'','Excluded URL Word List','','/dashboard/system/seo/excluded','2015-09-21 11:27:48','2015-09-21 11:28:33',NULL,0),(78,'','Search Index','','/dashboard/system/seo/searchindex','2015-09-21 11:27:48','2015-09-21 11:28:33',NULL,0),(80,'','File Manager Permissions','','/dashboard/system/files/permissions','2015-09-21 11:27:49','2015-09-21 11:28:33',NULL,0),(81,'','Allowed File Types','','/dashboard/system/files/filetypes','2015-09-21 11:27:50','2015-09-21 11:28:33',NULL,0),(82,'','Thumbnails','','/dashboard/system/files/thumbnails','2015-09-21 11:27:50','2015-09-21 11:28:34',NULL,0),(83,'','File Storage Locations','','/dashboard/system/files/storage','2015-09-21 11:27:51','2015-09-21 11:28:34',NULL,0),(85,'','Cache & Speed Settings','','/dashboard/system/optimization/cache','2015-09-21 11:27:52','2015-09-21 11:28:34',NULL,0),(86,'','Clear Cache','','/dashboard/system/optimization/clearcache','2015-09-21 11:27:53','2015-09-21 11:28:34',NULL,0),(87,'','Automated Jobs','','/dashboard/system/optimization/jobs','2015-09-21 11:27:53','2015-09-21 11:28:34',NULL,0),(88,'','Database Query Log','','/dashboard/system/optimization/query_log','2015-09-21 11:27:54','2015-09-21 11:28:34',NULL,0),(90,'','Site Access','','/dashboard/system/permissions/site','2015-09-21 11:27:55','2015-09-21 11:28:35',NULL,0),(91,'','Task Permissions','','/dashboard/system/permissions/tasks','2015-09-21 11:27:56','2015-09-21 11:28:35',NULL,0),(94,'','IP Blacklist','','/dashboard/system/permissions/blacklist','2015-09-21 11:27:58','2015-09-21 11:28:35',NULL,0),(95,'','Captcha Setup','','/dashboard/system/permissions/captcha','2015-09-21 11:27:58','2015-09-21 11:28:35',NULL,0),(96,'','Spam Control','','/dashboard/system/permissions/antispam','2015-09-21 11:27:59','2015-09-21 11:28:35',NULL,0),(97,'','Maintenance Mode','','/dashboard/system/permissions/maintenance','2015-09-21 11:28:00','2015-09-21 11:28:35',NULL,0),(99,'','Login Destination','','/dashboard/system/registration/postlogin','2015-09-21 11:28:01','2015-09-21 11:28:36',NULL,0),(100,'','Public Profiles','','/dashboard/system/registration/profiles','2015-09-21 11:28:01','2015-09-21 11:28:36',NULL,0),(101,'','Public Registration','','/dashboard/system/registration/open','2015-09-21 11:28:02','2015-09-21 11:28:36',NULL,0),(102,'','Authentication Types','','/dashboard/system/registration/authentication','2015-09-21 11:28:03','2015-09-21 11:28:36',NULL,0),(103,'','Email','Control how your site send and processes mail.','/dashboard/system/mail','2015-09-21 11:28:03','2015-09-21 11:28:36',NULL,0),(104,'','SMTP Method','','/dashboard/system/mail/method','2015-09-21 11:28:04','2015-09-21 11:28:36',NULL,0),(105,'','Test Mail Settings','','/dashboard/system/mail/method/test','2015-09-21 11:28:05','2015-09-21 11:28:37',NULL,0),(106,'','Email Importers','','/dashboard/system/mail/importers','2015-09-21 11:28:05','2015-09-21 11:28:37',NULL,0),(107,'','Conversations','Manage your conversations settings','/dashboard/system/conversations','2015-09-21 11:28:06','2015-09-21 11:28:37',NULL,0),(108,'','Settings','','/dashboard/system/conversations/settings','2015-09-21 11:28:06','2015-09-21 11:28:37',NULL,0),(109,'','Community Points','','/dashboard/system/conversations/points','2015-09-21 11:28:07','2015-09-21 11:28:38',NULL,0),(110,'','Banned Words','','/dashboard/system/conversations/bannedwords','2015-09-21 11:28:07','2015-09-21 11:28:38',NULL,0),(112,'','Attributes','Setup attributes for pages, users, files and more.','/dashboard/system/attributes','2015-09-21 11:28:08','2015-09-21 11:28:38',NULL,0),(113,'','Sets','Group attributes into sets for easier organization','/dashboard/system/attributes/sets','2015-09-21 11:28:09','2015-09-21 11:28:38',NULL,0),(114,'','Types','Choose which attribute types are available for different items.','/dashboard/system/attributes/types','2015-09-21 11:28:10','2015-09-21 11:28:38',NULL,0),(115,'','Topics','','/dashboard/system/attributes/topics','2015-09-21 11:28:10','2015-09-21 11:28:38',NULL,0),(117,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(118,'','Environment Information','','/dashboard/system/environment/info','2015-09-21 11:28:12','2015-09-21 11:28:39',NULL,0),(119,'','Debug Settings','','/dashboard/system/environment/debug','2015-09-21 11:28:12','2015-09-21 11:28:39',NULL,0),(120,'','Logging Settings','','/dashboard/system/environment/logging','2015-09-21 11:28:13','2015-09-21 11:28:39',NULL,0),(121,'','Proxy Server','','/dashboard/system/environment/proxy','2015-09-21 11:28:14','2015-09-21 11:28:39',NULL,0),(122,'','Database Entities','','/dashboard/system/environment/entities','2015-09-21 11:28:14','2015-09-21 11:28:39',NULL,0),(123,'','Backup & Restore','Backup or restore your website.','/dashboard/system/backup','2015-09-21 11:28:15','2015-09-21 11:28:40',NULL,0),(125,'','Update concrete5','','/dashboard/system/backup/update','2015-09-21 11:28:16','2015-09-21 11:28:40',NULL,0),(126,'                                        ','Welcome to concrete5','Learn about how to use concrete5, how to develop for concrete5, and get general help.','/dashboard/welcome','2015-09-21 11:28:20','2015-09-21 11:28:40',NULL,0),(127,'','Customize Dashboard Home','','/dashboard/home','2015-09-21 11:28:20','2015-09-21 11:28:42',NULL,0),(128,'','Drafts','','/!drafts','2015-09-21 11:28:42','2015-09-21 11:28:50',NULL,0),(129,'','Trash','','/!trash','2015-09-21 11:28:43','2015-09-21 11:28:51',NULL,0),(130,'','Stacks','','/!stacks','2015-09-21 11:28:43','2015-09-21 11:28:51',NULL,0),(133,'','My Account','','/account','2015-09-21 11:28:45','2015-09-21 11:28:51',NULL,0),(1,'description Noticias  \r\n(function(d, s, id) {\r\n  var js, fjs = d.getElementsByTagName(s)[0];\r\n  if (d.getElementById(id)) return;\r\n  js = d.createElement(s); js.id = id;\r\n  js.src = \"//connect.facebook.net/es_LA/sdk.js#xfbml=1&version=v2.4\";\r\n  fjs.parentNode.insertBefore(js, fjs);\r\n}(document, \'script\', \'facebook-jssdk\'));\r\nSENATICs Paraguay   Galería de foto Titulo del Slider 1  Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta)     ','Portada','',NULL,'2015-09-21 11:26:00','2015-10-08 13:31:45',NULL,0),(145,'','Header Site Title',NULL,'/!stacks/header-site-title','2015-09-21 11:29:44','2015-10-05 09:28:51',NULL,0),(161,'','Search',NULL,'/!stacks/search','2015-09-21 13:38:11','2015-09-23 09:11:01',NULL,0),(146,'','Header Navigation',NULL,'/!stacks/header-navigation','2015-09-21 11:29:45','2015-09-21 14:15:41',NULL,0),(164,'','Institución','','/institucion','2015-09-21 14:18:59','2015-09-21 14:19:29',NULL,0),(165,'','Noticias','','/noticias','2015-09-21 14:19:00','2015-09-21 14:59:18',NULL,0),(166,'Misión  Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.  Visión  Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.  Objetivos  Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.  ','Misión y Visión','','/institucion/mision-y-vision','2015-09-21 14:20:37','2015-09-23 08:43:48',NULL,0),(167,'','Organigrama','','/institucion/organigrama','2015-09-21 14:21:02','2015-09-23 08:45:05',NULL,0),(168,'','Marco Legal','','/institucion/marco-legal','2015-09-21 14:21:26','2015-09-23 08:39:34',NULL,0),(169,'','Autoridades','','/institucion/autoridades','2015-09-21 14:21:53','2015-09-23 08:40:11',NULL,0),(170,'','Agenda','','/agenda','2015-09-21 14:22:49','2015-09-23 08:47:55',NULL,0),(171,'','Galería','','/galeria','2015-09-21 14:23:19','2015-09-23 07:48:17',NULL,0),(172,'  Secretaría Nacional de Tecnología de la Información y ComunicaciónDiección: Complejo Santos E2 - Gral. Santos 1170 c/ ConcordiaTelefono: (+595 21) 201-014 / 201-813Asuncion - Paraguay ','Contacto','','/contacto','2015-09-21 14:23:51','2015-09-23 09:03:36',NULL,0),(173,'Titulo del Trámite http://www.senatics.gov.py <p><strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estÃ¡ndar de las industrias desde el aÃ±o 1500</p> SENATICs servicio box my house comunicacion@senatics.gov.py (+59521) 211014 <p>Facebook, Twitter</p> total indefensos ciudadanos <p><strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estÃ¡ndar de las industrias desde el aÃ±o 1500</p> servicio, tramite, testeo documentación 1 hs Gratuito No requiere Lunes a Viernes tramite@senatics.gov.py <p><strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estÃ¡ndar de las industrias desde el aÃ±o 1500</p>   ','Trámites','','/tramites','2015-09-21 14:24:13','2015-10-05 09:28:18',NULL,0),(174,'','Transparencia','','/transparencia','2015-09-21 14:24:31','2015-09-23 08:21:19',NULL,0),(175,'','Buscador','','/buscador','2015-09-21 14:25:41','2015-09-21 14:27:13',NULL,0),(147,' Portal construido conjuntamente con la SENATICs      2015 Secretaría Nacional de Tecnologías de la Información y Comunicación    ','Footer Legal',NULL,'/!stacks/footer-legal','2015-09-21 11:29:45','2015-09-21 14:43:37',NULL,0),(148,'Enlaces de Interes\r\n\r\n  \r\n    Secretaría de Acción Social (SAS)\r\n    Fondo Nacional de la Cultura y las Artes (FONDEC)\r\n    Secretaría de Desarrollo para Repatriados y Refugiados Connacionales\r\n    Instituto Nacional de Desarrollo Rural y de la Tierra (INDERT)\r\n  \r\n \r\n\r\n  \r\n    Instituto Forestal Nacional (INFONA)\r\n    Secretaría de Información y Comunicación (SICOM)\r\n    Instituto Paraguayo del Indigena (INDI)\r\n    Ministerio de Industria y Comercio (MIC)\r\n    Ministerio de Hacienda (MH)\r\n    Secretaría Nacional de Deportes (SND)\r\n  \r\n  ','Footer Navigation',NULL,'/!stacks/footer-navigation','2015-09-21 11:29:46','2015-09-21 14:43:37',NULL,0),(149,'','Footer Contact',NULL,'/!stacks/footer-contact','2015-09-21 11:29:46','2015-09-21 14:43:37',NULL,0),(177,' Compartir esta noticia  Últimas Noticias Publicadas   Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.     ','Titulo de la Noticia 1','Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.\n','/noticias/titulo-de-la-noticia','2015-09-21 14:55:11','2015-09-22 07:07:10',NULL,0),(178,' Compartir esta noticia  Últimas Noticias Publicadas  Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.  Es un hecho establecido hace demasiado tiempo que un lector se distraerá con el contenido del texto de un sitio mientras que mira su diseño. El punto de usar Lorem Ipsum es que tiene una distribución más o menos normal de las letras, al contrario de usar textos como por ejemplo \"Contenido aquí, contenido aquí\". Estos textos hacen parecerlo un español que se puede leer. Muchos paquetes de autoedición y editores de páginas web usan el Lorem Ipsum como su texto por defecto, y al hacer una búsqueda de \"Lorem Ipsum\" va a dar por resultado muchos sitios web que usan este texto si se encuentran en estado de desarrollo. Muchas versiones han evolucionado a través de los años, algunas veces por accidente, otras veces a propósito (por ejemplo insertándole humor y cosas por el estilo).  Al contrario del pensamiento popular, el texto de Lorem Ipsum no es simplemente texto aleatorio. Tiene sus raices en una pieza cl´sica de la literatura del Latin, que data del año 45 antes de Cristo, haciendo que este adquiera mas de 2000 años de antiguedad. Richard McClintock, un profesor de Latin de la Universidad de Hampden-Sydney en Virginia, encontró una de las palabras más oscuras de la lengua del latín, \"consecteur\", en un pasaje de Lorem Ipsum, y al seguir leyendo distintos textos del latín, descubrió la fuente indudable. Lorem Ipsum viene de las secciones 1.10.32 y 1.10.33 de \"de Finnibus Bonorum et Malorum\" (Los Extremos del Bien y El Mal) por Cicero, escrito en el año 45 antes de Cristo. Este libro es un tratado de teoría de éticas, muy popular durante el Renacimiento. La primera linea del Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", viene de una linea en la sección 1.10.32.  ','Titulo de la Noticia 2','Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum\n','/noticias/titulo-de-la-noticia-2','2015-09-21 14:59:38','2015-09-23 10:18:58',NULL,0),(180,' Compartir esta noticia  Últimas Noticias Publicadas       Titulo de la Foto 1   ','Titulo del Álbum 1','Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.\n','/galeria/titulo-del-album-1','2015-09-23 07:44:58','2015-09-23 07:46:47',NULL,0),(181,' Compartir esta noticia  Últimas Noticias Publicadas ','Titulo del Álbum 2','Es un hecho establecido hace demasiado tiempo que un lector se distraerá con el contenido del texto de un sitio mientras que mira su diseño. El punto de usar Lorem Ipsum es que tiene una distribución más o menos normal de las letras, al contrario de usar textos como por ejemplo \"Contenido aquí, contenido aquí\". Estos textos hacen parecerlo un español que se puede leer. Muchos paquetes de autoedición y editores de páginas web usan el Lorem Ipsum como su texto por defecto, y al hacer una búsqueda de \"Lorem Ipsum\" va a dar por resultado muchos sitios web que usan este texto si se encuentran en estado de desarrollo. Muchas versiones han evolucionado a través de los años, algunas veces por accidente, otras veces a propósito (por ejemplo insertándole humor y cosas por el estilo).\n','/galeria/titulo-del-album-2','2015-09-23 07:48:42','2015-09-23 07:49:19',NULL,0),(183,'','Enero / 2015',NULL,'/transparencia/enero-2015','2015-09-01 05:08:00','2015-09-23 11:14:55',NULL,0),(186,' Compartir esta noticia  Últimas Noticias Publicadas  asdasdaswd  ','Noticia 3','asdasd','/noticias/noticia-3','2015-09-23 10:22:21','2015-09-23 10:25:28',NULL,0),(188,' Compartir esta noticia  Últimas Noticias Publicadas     Titulo de la Foto <p>y descripción de la fotografia</p>    <p>Solo descripcion de la imagen</p>           Titulo de la Foto   ','Titulo del Álbum 3','','/galeria/titulo-del-album-3','2015-09-23 10:50:07','2015-09-23 11:18:36',NULL,0),(189,'','Febrero / 2015',NULL,'/transparencia/febrero-2015','2015-09-23 10:59:00','2015-09-23 11:43:41',NULL,0),(190,' Compartir esta noticia  Últimas Noticias Publicadas  Hay muchas variaciones de los pasajes de Lorem Ipsum disponibles, pero la mayoría sufrió alteraciones en alguna manera, ya sea porque se le agregó humor, o palabras aleatorias que no parecen ni un poco creíbles. Si vas a utilizar un pasaje de Lorem Ipsum, necesitás estar seguro de que no hay nada avergonzante escondido en el medio del texto. Todos los generadores de Lorem Ipsum que se encuentran en Internet tienden a repetir trozos predefinidos cuando sea necesario, haciendo a este el único generador verdadero (válido) en la Internet. Usa un diccionario de mas de 200 palabras provenientes del latín, combinadas con estructuras muy útiles de sentencias, para generar texto de Lorem Ipsum que parezca razonable. Este Lorem Ipsum generado siempre estará libre de repeticiones, humor agregado o palabras no características del lenguaje, etc.   Hay muchas variaciones de los pasajes de Lorem Ipsum disponibles, pero la mayoría sufrió alteraciones en alguna manera, ya sea porque se le agregó humor, o palabras aleatorias que no parecen ni un poco creíbles. Si vas a utilizar un pasaje de Lorem Ipsum, necesitás estar seguro de que no hay nada avergonzante escondido en el medio del texto. Todos los generadores de Lorem Ipsum que se encuentran en Internet tienden a repetir trozos predefinidos cuando sea necesario, haciendo a este el único generador verdadero (válido) en la Internet. Usa un diccionario de mas de 200 palabras provenientes del latín, combinadas con estructuras muy útiles de sentencias, para generar texto de Lorem Ipsum que parezca razonable. Este Lorem Ipsum generado siempre estará libre de repeticiones, humor agregado o palabras no características del lenguaje, etc.  Hay muchas variaciones de los pasajes de Lorem Ipsum disponibles, pero la mayoría sufrió alteraciones en alguna manera, ya sea porque se le agregó humor, o palabras aleatorias que no parecen ni un poco creíbles. Si vas a utilizar un pasaje de Lorem Ipsum, necesitás estar seguro de que no hay nada avergonzante escondido en el medio del texto. Todos los generadores de Lorem Ipsum que se encuentran en Internet tienden a repetir trozos predefinidos cuando sea necesario, haciendo a este el único generador verdadero (válido) en la Internet. Usa un diccionario de mas de 200 palabras provenientes del latín, combinadas con estructuras muy útiles de sentencias, para generar texto de Lorem Ipsum que parezca razonable. Este Lorem Ipsum generado siempre estará libre de repeticiones, humor agregado o palabras no características del lenguaje, etc.Hay muchas variaciones de los pasajes de Lorem Ipsum disponibles, pero la mayoría sufrió alteraciones en alguna manera, ya sea porque se le agregó humor, o palabras aleatorias que no parecen ni un poco creíbles. Si vas a utilizar un pasaje de Lorem Ipsum, necesitás estar seguro de que no hay nada avergonzante escondido en el medio del texto. Todos los generadores de Lorem Ipsum que se encuentran en Internet tienden a repetir trozos predefinidos cuando sea necesario, haciendo a este el único generador verdadero (válido) en la Internet. Usa un diccionario de mas de 200 palabras provenientes del latín, combinadas con estructuras muy útiles de sentencias, para generar texto de Lorem Ipsum que parezca razonable. Este Lorem Ipsum generado siempre estará libre de repeticiones, humor agregado o palabras no características del lenguaje, etc.  ','Titulo de la Noticia 3','Hay muchas variaciones de los pasajes de Lorem Ipsum disponibles, pero la mayoría sufrió alteraciones en alguna manera, ya sea porque se le agregó humor, o palabras aleatorias que no parecen ni un poco creíbles. Si vas a utilizar un pasaje de Lorem Ipsum, necesitás estar seguro de que no hay nada avergonzante escondido en el medio del texto. Todos los generadores de Lorem Ipsum que se encuentran en Internet tienden a repetir trozos predefinidos cuando sea necesario, haciendo a este el único generador verdadero (válido) en la Internet. Usa un diccionario de mas de 200 palabras provenientes del latín, combinadas con estructuras muy útiles de sentencias, para generar texto de Lorem Ipsum que parezca razonable. Este Lorem Ipsum generado siempre estará libre de repeticiones, humor agregado o palabras no características del lenguaje, etc.\n','/noticias/titulo-de-la-noticia-3','2015-09-23 11:06:25','2015-09-23 11:12:50',NULL,0);
/*!40000 ALTER TABLE `PageSearchIndex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageTemplates`
--

DROP TABLE IF EXISTS `PageTemplates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageTemplates` (
  `pTemplateID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pTemplateHandle` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `pTemplateIcon` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pTemplateName` varchar(90) COLLATE utf8_unicode_ci NOT NULL,
  `pTemplateIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pTemplateID`),
  UNIQUE KEY `pTemplateHandle` (`pTemplateHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageTemplates`
--

LOCK TABLES `PageTemplates` WRITE;
/*!40000 ALTER TABLE `PageTemplates` DISABLE KEYS */;
INSERT INTO `PageTemplates` VALUES (1,'core_stack','','Stack',1,0),(2,'dashboard_primary_five','','Dashboard Primary + Five',1,0),(3,'dashboard_header_four_col','','Dashboard Header + Four Column',1,0),(4,'dashboard_full','','Dashboard Full',1,0),(5,'full','full.png','Full',0,0),(6,'left_sidebar','left_sidebar.png','Left Sidebar',0,0),(7,'right_sidebar','right_sidebar.png','Right Sidebar',0,0),(8,'blank','blank.png','Blank',0,0),(9,'index','full.png','Index',0,0),(10,'pagina','full.png','Pagina',0,0),(11,'paginasimple','full.png','Paginasimple',0,0);
/*!40000 ALTER TABLE `PageTemplates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageThemeCustomStyles`
--

DROP TABLE IF EXISTS `PageThemeCustomStyles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageThemeCustomStyles` (
  `pThemeID` int(10) unsigned NOT NULL DEFAULT '0',
  `scvlID` int(10) unsigned DEFAULT '0',
  `preset` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sccRecordID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`pThemeID`),
  KEY `scvlID` (`scvlID`),
  KEY `sccRecordID` (`sccRecordID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageThemeCustomStyles`
--

LOCK TABLES `PageThemeCustomStyles` WRITE;
/*!40000 ALTER TABLE `PageThemeCustomStyles` DISABLE KEYS */;
/*!40000 ALTER TABLE `PageThemeCustomStyles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageThemes`
--

DROP TABLE IF EXISTS `PageThemes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageThemes` (
  `pThemeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pThemeHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `pThemeName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pThemeDescription` text COLLATE utf8_unicode_ci,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `pThemeHasCustomClass` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pThemeID`),
  UNIQUE KEY `ptHandle` (`pThemeHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageThemes`
--

LOCK TABLES `PageThemes` WRITE;
/*!40000 ALTER TABLE `PageThemes` DISABLE KEYS */;
INSERT INTO `PageThemes` VALUES (2,'TemplateV2','SENATICs-UI - V2','Template SENATICs',0,0);
/*!40000 ALTER TABLE `PageThemes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageTypeComposerControlTypes`
--

DROP TABLE IF EXISTS `PageTypeComposerControlTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageTypeComposerControlTypes` (
  `ptComposerControlTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ptComposerControlTypeHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ptComposerControlTypeName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ptComposerControlTypeID`),
  UNIQUE KEY `ptComposerControlTypeHandle` (`ptComposerControlTypeHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageTypeComposerControlTypes`
--

LOCK TABLES `PageTypeComposerControlTypes` WRITE;
/*!40000 ALTER TABLE `PageTypeComposerControlTypes` DISABLE KEYS */;
INSERT INTO `PageTypeComposerControlTypes` VALUES (1,'core_page_property','Built-In Property',0),(2,'collection_attribute','Custom Attribute',0),(3,'block','Block',0);
/*!40000 ALTER TABLE `PageTypeComposerControlTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageTypeComposerFormLayoutSetControls`
--

DROP TABLE IF EXISTS `PageTypeComposerFormLayoutSetControls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageTypeComposerFormLayoutSetControls` (
  `ptComposerFormLayoutSetControlID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ptComposerFormLayoutSetID` int(10) unsigned DEFAULT '0',
  `ptComposerControlTypeID` int(10) unsigned DEFAULT '0',
  `ptComposerControlObject` longtext COLLATE utf8_unicode_ci,
  `ptComposerFormLayoutSetControlDisplayOrder` int(10) unsigned DEFAULT '0',
  `ptComposerFormLayoutSetControlCustomLabel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ptComposerFormLayoutSetControlCustomTemplate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ptComposerFormLayoutSetControlDescription` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ptComposerFormLayoutSetControlRequired` int(11) DEFAULT '0',
  PRIMARY KEY (`ptComposerFormLayoutSetControlID`),
  KEY `ptComposerControlTypeID` (`ptComposerControlTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageTypeComposerFormLayoutSetControls`
--

LOCK TABLES `PageTypeComposerFormLayoutSetControls` WRITE;
/*!40000 ALTER TABLE `PageTypeComposerFormLayoutSetControls` DISABLE KEYS */;
INSERT INTO `PageTypeComposerFormLayoutSetControls` VALUES (5,2,1,'O:78:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\NameCorePageProperty\":9:{s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:1;s:17:\"\0*\0propertyHandle\";s:4:\"name\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:4:\"name\";s:24:\"\0*\0ptComposerControlName\";s:19:\"Nombre de la pagina\";s:27:\"\0*\0ptComposerControlIconSRC\";s:50:\"/concrete5.7.5.2/concrete/attributes/text/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',0,NULL,NULL,NULL,1),(6,2,1,'O:81:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\UrlSlugCorePageProperty\":9:{s:17:\"\0*\0propertyHandle\";s:8:\"url_slug\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:8:\"url_slug\";s:24:\"\0*\0ptComposerControlName\";s:8:\"URL slug\";s:27:\"\0*\0ptComposerControlIconSRC\";s:50:\"/concrete5.7.5.2/concrete/attributes/text/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',1,'URL (Automatica)','','',0),(7,2,1,'O:85:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\DescriptionCorePageProperty\":9:{s:17:\"\0*\0propertyHandle\";s:11:\"description\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:11:\"description\";s:24:\"\0*\0ptComposerControlName\";s:11:\"Descripcion\";s:27:\"\0*\0ptComposerControlIconSRC\";s:54:\"/concrete5.7.5.2/concrete/attributes/textarea/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',2,NULL,NULL,NULL,0),(8,2,1,'O:87:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\PublishTargetCorePageProperty\":9:{s:17:\"\0*\0propertyHandle\";s:14:\"publish_target\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:14:\"publish_target\";s:24:\"\0*\0ptComposerControlName\";s:13:\"Page Location\";s:27:\"\0*\0ptComposerControlIconSRC\";s:56:\"/concrete5.7.5.2/concrete/attributes/image_file/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',3,'Ubicación dentro del Mapa del Sitio','','',0),(9,2,2,'O:67:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CollectionAttributeControl\":10:{s:7:\"\0*\0akID\";s:1:\"5\";s:5:\"\0*\0ak\";b:0;s:30:\"\0*\0ptComposerControlTypeHandle\";s:20:\"collection_attribute\";s:30:\"\0*\0ptComposerControlIdentifier\";s:1:\"5\";s:24:\"\0*\0ptComposerControlName\";s:14:\"Excluir de Nav\";s:27:\"\0*\0ptComposerControlIconSRC\";s:53:\"/concrete5.7.5.2/concrete/attributes/boolean/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',4,'Excluir del Menú Principal','','',0),(10,3,1,'O:78:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\NameCorePageProperty\":10:{s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:1;s:17:\"\0*\0propertyHandle\";s:4:\"name\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:4:\"name\";s:24:\"\0*\0ptComposerControlName\";s:19:\"Nombre de la pagina\";s:27:\"\0*\0ptComposerControlIconSRC\";s:50:\"/concrete5.7.5.2/concrete/attributes/text/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";s:36:\"ptComposerFormLayoutSetControlObject\";O:53:\"Concrete\\Core\\Page\\Type\\Composer\\FormLayoutSetControl\":11:{s:23:\"\0*\0ptTargetParentPageID\";i:0;s:5:\"error\";s:0:\"\";s:32:\"ptComposerFormLayoutSetControlID\";s:1:\"5\";s:25:\"ptComposerFormLayoutSetID\";s:1:\"2\";s:23:\"ptComposerControlTypeID\";s:1:\"1\";s:23:\"ptComposerControlObject\";r:1;s:42:\"ptComposerFormLayoutSetControlDisplayOrder\";s:1:\"0\";s:41:\"ptComposerFormLayoutSetControlCustomLabel\";N;s:44:\"ptComposerFormLayoutSetControlCustomTemplate\";N;s:41:\"ptComposerFormLayoutSetControlDescription\";N;s:38:\"ptComposerFormLayoutSetControlRequired\";s:1:\"1\";}}',0,'Titulo de la Noticia','','',1),(11,3,1,'O:81:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\UrlSlugCorePageProperty\":10:{s:17:\"\0*\0propertyHandle\";s:8:\"url_slug\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:8:\"url_slug\";s:24:\"\0*\0ptComposerControlName\";s:8:\"URL slug\";s:27:\"\0*\0ptComposerControlIconSRC\";s:50:\"/concrete5.7.5.2/concrete/attributes/text/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";s:36:\"ptComposerFormLayoutSetControlObject\";O:53:\"Concrete\\Core\\Page\\Type\\Composer\\FormLayoutSetControl\":11:{s:23:\"\0*\0ptTargetParentPageID\";i:0;s:5:\"error\";s:0:\"\";s:32:\"ptComposerFormLayoutSetControlID\";s:1:\"6\";s:25:\"ptComposerFormLayoutSetID\";s:1:\"2\";s:23:\"ptComposerControlTypeID\";s:1:\"1\";s:23:\"ptComposerControlObject\";r:1;s:42:\"ptComposerFormLayoutSetControlDisplayOrder\";s:1:\"1\";s:41:\"ptComposerFormLayoutSetControlCustomLabel\";s:16:\"URL (Automatica)\";s:44:\"ptComposerFormLayoutSetControlCustomTemplate\";s:0:\"\";s:41:\"ptComposerFormLayoutSetControlDescription\";s:0:\"\";s:38:\"ptComposerFormLayoutSetControlRequired\";s:1:\"0\";}}',1,'URL (Automatica)','','',0),(12,3,1,'O:85:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\DescriptionCorePageProperty\":10:{s:17:\"\0*\0propertyHandle\";s:11:\"description\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:11:\"description\";s:24:\"\0*\0ptComposerControlName\";s:11:\"Descripcion\";s:27:\"\0*\0ptComposerControlIconSRC\";s:54:\"/concrete5.7.5.2/concrete/attributes/textarea/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";s:36:\"ptComposerFormLayoutSetControlObject\";O:53:\"Concrete\\Core\\Page\\Type\\Composer\\FormLayoutSetControl\":11:{s:23:\"\0*\0ptTargetParentPageID\";i:0;s:5:\"error\";s:0:\"\";s:32:\"ptComposerFormLayoutSetControlID\";s:1:\"7\";s:25:\"ptComposerFormLayoutSetID\";s:1:\"2\";s:23:\"ptComposerControlTypeID\";s:1:\"1\";s:23:\"ptComposerControlObject\";r:1;s:42:\"ptComposerFormLayoutSetControlDisplayOrder\";s:1:\"2\";s:41:\"ptComposerFormLayoutSetControlCustomLabel\";N;s:44:\"ptComposerFormLayoutSetControlCustomTemplate\";N;s:41:\"ptComposerFormLayoutSetControlDescription\";N;s:38:\"ptComposerFormLayoutSetControlRequired\";s:1:\"0\";}}',2,'Descripción corta','','',0),(15,3,3,'O:53:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\BlockControl\":12:{s:7:\"\0*\0btID\";i:12;s:30:\"\0*\0ptComposerControlTypeHandle\";s:5:\"block\";s:5:\"\0*\0bt\";b:0;s:4:\"\0*\0b\";b:0;s:13:\"\0*\0controller\";N;s:30:\"\0*\0ptComposerControlIdentifier\";i:12;s:24:\"\0*\0ptComposerControlName\";s:9:\"contenido\";s:27:\"\0*\0ptComposerControlIconSRC\";s:49:\"/concrete5.7.5.2/concrete/blocks/content/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',4,'El Contenido','','',0),(16,3,2,'O:67:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CollectionAttributeControl\":10:{s:7:\"\0*\0akID\";s:2:\"18\";s:5:\"\0*\0ak\";b:0;s:30:\"\0*\0ptComposerControlTypeHandle\";s:20:\"collection_attribute\";s:30:\"\0*\0ptComposerControlIdentifier\";s:2:\"18\";s:24:\"\0*\0ptComposerControlName\";s:9:\"Miniatura\";s:27:\"\0*\0ptComposerControlIconSRC\";s:56:\"/concrete5.7.5.2/concrete/attributes/image_file/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',3,'Imagen de Portada','','',0),(17,4,1,'O:78:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\NameCorePageProperty\":10:{s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:1;s:17:\"\0*\0propertyHandle\";s:4:\"name\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:4:\"name\";s:24:\"\0*\0ptComposerControlName\";s:19:\"Nombre de la pagina\";s:27:\"\0*\0ptComposerControlIconSRC\";s:50:\"/concrete5.7.5.2/concrete/attributes/text/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";s:36:\"ptComposerFormLayoutSetControlObject\";O:53:\"Concrete\\Core\\Page\\Type\\Composer\\FormLayoutSetControl\":11:{s:23:\"\0*\0ptTargetParentPageID\";i:0;s:5:\"error\";s:0:\"\";s:32:\"ptComposerFormLayoutSetControlID\";s:2:\"10\";s:25:\"ptComposerFormLayoutSetID\";s:1:\"3\";s:23:\"ptComposerControlTypeID\";s:1:\"1\";s:23:\"ptComposerControlObject\";r:1;s:42:\"ptComposerFormLayoutSetControlDisplayOrder\";s:1:\"0\";s:41:\"ptComposerFormLayoutSetControlCustomLabel\";s:20:\"Titulo de la Noticia\";s:44:\"ptComposerFormLayoutSetControlCustomTemplate\";s:0:\"\";s:41:\"ptComposerFormLayoutSetControlDescription\";s:0:\"\";s:38:\"ptComposerFormLayoutSetControlRequired\";s:1:\"1\";}}',0,'Titulo de la Galería','','',1),(19,4,2,'O:67:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CollectionAttributeControl\":11:{s:7:\"\0*\0akID\";s:2:\"18\";s:5:\"\0*\0ak\";O:41:\"Concrete\\Core\\Attribute\\Key\\CollectionKey\":15:{s:29:\"\0*\0searchIndexFieldDefinition\";a:2:{s:7:\"columns\";a:1:{i:0;a:3:{s:4:\"name\";s:3:\"cID\";s:4:\"type\";s:7:\"integer\";s:7:\"options\";a:3:{s:8:\"unsigned\";b:1;s:7:\"default\";i:0;s:7:\"notnull\";b:1;}}}s:7:\"primary\";a:1:{i:0;s:3:\"cID\";}}s:7:\"\0*\0akID\";s:2:\"18\";s:5:\"error\";s:0:\"\";s:8:\"akHandle\";s:9:\"thumbnail\";s:6:\"akName\";s:9:\"Miniatura\";s:12:\"akCategoryID\";s:1:\"1\";s:12:\"akIsInternal\";s:1:\"0\";s:12:\"akIsEditable\";s:1:\"1\";s:14:\"akIsSearchable\";s:1:\"1\";s:21:\"akIsSearchableIndexed\";s:1:\"1\";s:15:\"akIsAutoCreated\";s:1:\"0\";s:16:\"akIsColumnHeader\";s:1:\"0\";s:4:\"atID\";s:1:\"5\";s:8:\"atHandle\";s:10:\"image_file\";s:5:\"pkgID\";s:1:\"0\";}s:30:\"\0*\0ptComposerControlTypeHandle\";s:20:\"collection_attribute\";s:30:\"\0*\0ptComposerControlIdentifier\";s:2:\"18\";s:24:\"\0*\0ptComposerControlName\";s:9:\"Miniatura\";s:27:\"\0*\0ptComposerControlIconSRC\";s:56:\"/concrete5.7.5.2/concrete/attributes/image_file/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";s:36:\"ptComposerFormLayoutSetControlObject\";O:53:\"Concrete\\Core\\Page\\Type\\Composer\\FormLayoutSetControl\":11:{s:23:\"\0*\0ptTargetParentPageID\";i:0;s:5:\"error\";s:0:\"\";s:32:\"ptComposerFormLayoutSetControlID\";s:2:\"16\";s:25:\"ptComposerFormLayoutSetID\";s:1:\"3\";s:23:\"ptComposerControlTypeID\";s:1:\"2\";s:23:\"ptComposerControlObject\";r:1;s:42:\"ptComposerFormLayoutSetControlDisplayOrder\";s:1:\"2\";s:41:\"ptComposerFormLayoutSetControlCustomLabel\";N;s:44:\"ptComposerFormLayoutSetControlCustomTemplate\";N;s:41:\"ptComposerFormLayoutSetControlDescription\";N;s:38:\"ptComposerFormLayoutSetControlRequired\";s:1:\"0\";}}',2,'Imagen de Portada','','',0),(20,4,1,'O:85:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\DescriptionCorePageProperty\":10:{s:17:\"\0*\0propertyHandle\";s:11:\"description\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:11:\"description\";s:24:\"\0*\0ptComposerControlName\";s:11:\"Descripcion\";s:27:\"\0*\0ptComposerControlIconSRC\";s:54:\"/concrete5.7.5.2/concrete/attributes/textarea/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";s:36:\"ptComposerFormLayoutSetControlObject\";O:53:\"Concrete\\Core\\Page\\Type\\Composer\\FormLayoutSetControl\":11:{s:23:\"\0*\0ptTargetParentPageID\";i:0;s:5:\"error\";s:0:\"\";s:32:\"ptComposerFormLayoutSetControlID\";s:2:\"12\";s:25:\"ptComposerFormLayoutSetID\";s:1:\"3\";s:23:\"ptComposerControlTypeID\";s:1:\"1\";s:23:\"ptComposerControlObject\";r:1;s:42:\"ptComposerFormLayoutSetControlDisplayOrder\";s:1:\"3\";s:41:\"ptComposerFormLayoutSetControlCustomLabel\";s:18:\"Descripción corta\";s:44:\"ptComposerFormLayoutSetControlCustomTemplate\";s:0:\"\";s:41:\"ptComposerFormLayoutSetControlDescription\";s:0:\"\";s:38:\"ptComposerFormLayoutSetControlRequired\";s:1:\"0\";}}',1,'Descripción corta','','',0),(22,5,1,'O:78:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\NameCorePageProperty\":10:{s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:1;s:17:\"\0*\0propertyHandle\";s:4:\"name\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:4:\"name\";s:24:\"\0*\0ptComposerControlName\";s:19:\"Nombre de la pagina\";s:27:\"\0*\0ptComposerControlIconSRC\";s:50:\"/concrete5.7.5.2/concrete/attributes/text/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";s:36:\"ptComposerFormLayoutSetControlObject\";O:53:\"Concrete\\Core\\Page\\Type\\Composer\\FormLayoutSetControl\":11:{s:23:\"\0*\0ptTargetParentPageID\";i:0;s:5:\"error\";s:0:\"\";s:32:\"ptComposerFormLayoutSetControlID\";s:2:\"10\";s:25:\"ptComposerFormLayoutSetID\";s:1:\"3\";s:23:\"ptComposerControlTypeID\";s:1:\"1\";s:23:\"ptComposerControlObject\";r:1;s:42:\"ptComposerFormLayoutSetControlDisplayOrder\";s:1:\"0\";s:41:\"ptComposerFormLayoutSetControlCustomLabel\";s:20:\"Titulo de la Noticia\";s:44:\"ptComposerFormLayoutSetControlCustomTemplate\";s:0:\"\";s:41:\"ptComposerFormLayoutSetControlDescription\";s:0:\"\";s:38:\"ptComposerFormLayoutSetControlRequired\";s:1:\"1\";}}',0,'Titulo de publicación','','Ej: Mes / Año',1),(27,5,1,'O:82:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\DateTimeCorePageProperty\":9:{s:17:\"\0*\0propertyHandle\";s:9:\"date_time\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:9:\"date_time\";s:24:\"\0*\0ptComposerControlName\";s:18:\"Fecha/Hora Publica\";s:27:\"\0*\0ptComposerControlIconSRC\";s:55:\"/concrete5.7.5.2/concrete/attributes/date_time/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',1,'Fecha / Hora de publicación','','',0),(28,5,1,'O:78:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\UserCorePageProperty\":9:{s:17:\"\0*\0propertyHandle\";s:4:\"user\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:4:\"user\";s:24:\"\0*\0ptComposerControlName\";s:7:\"Usuario\";s:27:\"\0*\0ptComposerControlIconSRC\";s:50:\"/concrete5.7.5.2/concrete/attributes/text/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',2,'','','Autor de la publicación',0);
/*!40000 ALTER TABLE `PageTypeComposerFormLayoutSetControls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageTypeComposerFormLayoutSets`
--

DROP TABLE IF EXISTS `PageTypeComposerFormLayoutSets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageTypeComposerFormLayoutSets` (
  `ptComposerFormLayoutSetID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ptID` int(10) unsigned DEFAULT '0',
  `ptComposerFormLayoutSetName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ptComposerFormLayoutSetDescription` text COLLATE utf8_unicode_ci,
  `ptComposerFormLayoutSetDisplayOrder` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`ptComposerFormLayoutSetID`),
  KEY `ptID` (`ptID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageTypeComposerFormLayoutSets`
--

LOCK TABLES `PageTypeComposerFormLayoutSets` WRITE;
/*!40000 ALTER TABLE `PageTypeComposerFormLayoutSets` DISABLE KEYS */;
INSERT INTO `PageTypeComposerFormLayoutSets` VALUES (2,7,'Configuración Básica de la Página','',0),(3,8,'Configuración Básica de la Noticia','',0),(4,9,'Configuración Básica de la Galería','',0),(5,10,'Configuración Básica de la Noticia','',0);
/*!40000 ALTER TABLE `PageTypeComposerFormLayoutSets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageTypeComposerOutputBlocks`
--

DROP TABLE IF EXISTS `PageTypeComposerOutputBlocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageTypeComposerOutputBlocks` (
  `ptComposerOutputBlockID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cbDisplayOrder` int(10) unsigned DEFAULT '0',
  `ptComposerFormLayoutSetControlID` int(10) unsigned NOT NULL DEFAULT '0',
  `bID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`ptComposerOutputBlockID`),
  KEY `cID` (`cID`),
  KEY `bID` (`bID`,`cID`),
  KEY `ptComposerFormLayoutSetControlID` (`ptComposerFormLayoutSetControlID`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageTypeComposerOutputBlocks`
--

LOCK TABLES `PageTypeComposerOutputBlocks` WRITE;
/*!40000 ALTER TABLE `PageTypeComposerOutputBlocks` DISABLE KEYS */;
INSERT INTO `PageTypeComposerOutputBlocks` VALUES (1,153,'Main',0,6,10),(21,177,'Contenido',5,15,70),(30,184,'Contenido',5,15,119),(38,178,'Contenido',5,15,127),(39,185,'Contenido',5,15,128),(54,187,'Contenido',5,15,143),(55,186,'Contenido',5,15,145),(71,190,'Contenido',5,15,161),(72,190,'Contenido',5,15,162);
/*!40000 ALTER TABLE `PageTypeComposerOutputBlocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageTypeComposerOutputControls`
--

DROP TABLE IF EXISTS `PageTypeComposerOutputControls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageTypeComposerOutputControls` (
  `ptComposerOutputControlID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pTemplateID` int(10) unsigned DEFAULT '0',
  `ptID` int(10) unsigned DEFAULT '0',
  `ptComposerFormLayoutSetControlID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`ptComposerOutputControlID`),
  KEY `pTemplateID` (`pTemplateID`,`ptComposerFormLayoutSetControlID`),
  KEY `ptID` (`ptID`),
  KEY `ptComposerFormLayoutSetControlID` (`ptComposerFormLayoutSetControlID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageTypeComposerOutputControls`
--

LOCK TABLES `PageTypeComposerOutputControls` WRITE;
/*!40000 ALTER TABLE `PageTypeComposerOutputControls` DISABLE KEYS */;
INSERT INTO `PageTypeComposerOutputControls` VALUES (1,10,8,15);
/*!40000 ALTER TABLE `PageTypeComposerOutputControls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageTypePageTemplateDefaultPages`
--

DROP TABLE IF EXISTS `PageTypePageTemplateDefaultPages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageTypePageTemplateDefaultPages` (
  `pTemplateID` int(10) unsigned NOT NULL DEFAULT '0',
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  `cID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`pTemplateID`,`ptID`),
  KEY `ptID` (`ptID`),
  KEY `cID` (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageTypePageTemplateDefaultPages`
--

LOCK TABLES `PageTypePageTemplateDefaultPages` WRITE;
/*!40000 ALTER TABLE `PageTypePageTemplateDefaultPages` DISABLE KEYS */;
INSERT INTO `PageTypePageTemplateDefaultPages` VALUES (10,6,162),(10,7,163),(10,8,176),(10,9,179),(10,10,182);
/*!40000 ALTER TABLE `PageTypePageTemplateDefaultPages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageTypePageTemplates`
--

DROP TABLE IF EXISTS `PageTypePageTemplates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageTypePageTemplates` (
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  `pTemplateID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ptID`,`pTemplateID`),
  KEY `pTemplateID` (`pTemplateID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageTypePageTemplates`
--

LOCK TABLES `PageTypePageTemplates` WRITE;
/*!40000 ALTER TABLE `PageTypePageTemplates` DISABLE KEYS */;
INSERT INTO `PageTypePageTemplates` VALUES (7,10),(8,10),(9,10),(10,10);
/*!40000 ALTER TABLE `PageTypePageTemplates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageTypePermissionAssignments`
--

DROP TABLE IF EXISTS `PageTypePermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageTypePermissionAssignments` (
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ptID`,`pkID`,`paID`),
  KEY `pkID` (`pkID`),
  KEY `ptID` (`ptID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageTypePermissionAssignments`
--

LOCK TABLES `PageTypePermissionAssignments` WRITE;
/*!40000 ALTER TABLE `PageTypePermissionAssignments` DISABLE KEYS */;
INSERT INTO `PageTypePermissionAssignments` VALUES (1,59,9),(2,59,9),(3,59,9),(4,59,9),(5,59,9),(6,59,9),(7,59,9),(8,59,141),(9,59,156),(10,59,157),(1,60,9),(2,60,9),(3,60,9),(4,60,9),(5,60,9),(6,60,9),(7,60,9),(8,60,9),(9,60,9),(10,60,9),(1,61,9),(2,61,9),(3,61,9),(4,61,9),(5,61,9),(6,61,9),(7,61,9),(8,61,9),(9,61,9),(10,61,9),(1,62,9),(2,62,9),(3,62,9),(4,62,9),(5,62,9),(6,62,9),(7,62,9),(8,62,9),(9,62,9),(10,62,9),(1,63,26),(2,63,27),(3,63,28),(4,63,29),(5,63,30),(6,63,101),(7,63,102),(8,63,102),(9,63,102),(10,63,102);
/*!40000 ALTER TABLE `PageTypePermissionAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageTypePublishTargetTypes`
--

DROP TABLE IF EXISTS `PageTypePublishTargetTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageTypePublishTargetTypes` (
  `ptPublishTargetTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ptPublishTargetTypeHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ptPublishTargetTypeName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ptPublishTargetTypeID`),
  KEY `ptPublishTargetTypeHandle` (`ptPublishTargetTypeHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageTypePublishTargetTypes`
--

LOCK TABLES `PageTypePublishTargetTypes` WRITE;
/*!40000 ALTER TABLE `PageTypePublishTargetTypes` DISABLE KEYS */;
INSERT INTO `PageTypePublishTargetTypes` VALUES (1,'parent_page','Always publish below a certain page',0),(2,'page_type','Choose from pages of a certain type',0),(3,'all','Choose from all pages when publishing',0);
/*!40000 ALTER TABLE `PageTypePublishTargetTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageTypes`
--

DROP TABLE IF EXISTS `PageTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageTypes` (
  `ptID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ptName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ptHandle` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `ptPublishTargetTypeID` int(10) unsigned DEFAULT NULL,
  `ptDefaultPageTemplateID` int(10) unsigned DEFAULT NULL,
  `ptAllowedPageTemplates` varchar(1) COLLATE utf8_unicode_ci DEFAULT 'A',
  `ptIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `ptIsFrequentlyAdded` tinyint(1) NOT NULL DEFAULT '1',
  `ptDisplayOrder` int(10) unsigned DEFAULT NULL,
  `ptLaunchInComposer` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `ptPublishTargetObject` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ptID`),
  UNIQUE KEY `ptHandle` (`ptHandle`),
  KEY `pkgID` (`pkgID`,`ptID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageTypes`
--

LOCK TABLES `PageTypes` WRITE;
/*!40000 ALTER TABLE `PageTypes` DISABLE KEYS */;
INSERT INTO `PageTypes` VALUES (1,'Stack','core_stack',3,0,'A',1,0,0,0,0,'O:68:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration\":5:{s:21:\"\0*\0selectorFormFactor\";N;s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"3\";s:25:\"ptPublishTargetTypeHandle\";s:3:\"all\";s:9:\"pkgHandle\";b:0;}'),(2,'Stack Category','core_stack_category',3,0,'A',1,0,1,0,0,'O:68:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration\":5:{s:21:\"\0*\0selectorFormFactor\";N;s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"3\";s:25:\"ptPublishTargetTypeHandle\";s:3:\"all\";s:9:\"pkgHandle\";b:0;}'),(3,'Dashboard Primary + Five','dashboard_primary_five',3,0,'A',1,0,2,0,0,'O:68:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration\":5:{s:21:\"\0*\0selectorFormFactor\";N;s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"3\";s:25:\"ptPublishTargetTypeHandle\";s:3:\"all\";s:9:\"pkgHandle\";b:0;}'),(4,'Dashboard Header + Four Column','dashboard_header_four_col',3,0,'A',1,0,3,0,0,'O:68:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration\":5:{s:21:\"\0*\0selectorFormFactor\";N;s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"3\";s:25:\"ptPublishTargetTypeHandle\";s:3:\"all\";s:9:\"pkgHandle\";b:0;}'),(5,'Dashboard Full','dashboard_full',3,0,'A',1,0,4,0,0,'O:68:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration\":5:{s:21:\"\0*\0selectorFormFactor\";N;s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"3\";s:25:\"ptPublishTargetTypeHandle\";s:3:\"all\";s:9:\"pkgHandle\";b:0;}'),(7,'Página en blanco','pagina',3,10,'C',0,1,0,1,0,'O:68:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration\":5:{s:21:\"\0*\0selectorFormFactor\";s:15:\"sitemap_in_page\";s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"3\";s:25:\"ptPublishTargetTypeHandle\";s:3:\"all\";s:9:\"pkgHandle\";b:0;}'),(8,'Publicador de Noticias','noticias',1,10,'C',0,1,1,1,0,'O:75:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\ParentPageConfiguration\":5:{s:12:\"\0*\0cParentID\";s:3:\"165\";s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"1\";s:25:\"ptPublishTargetTypeHandle\";s:11:\"parent_page\";s:9:\"pkgHandle\";b:0;}'),(9,'Publicador de Galería','galeria',1,10,'C',0,1,2,1,0,'O:75:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\ParentPageConfiguration\":5:{s:12:\"\0*\0cParentID\";s:3:\"171\";s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"1\";s:25:\"ptPublishTargetTypeHandle\";s:11:\"parent_page\";s:9:\"pkgHandle\";b:0;}'),(10,'Publicador de Transparencia','transparencia',1,10,'C',0,1,3,1,0,'O:75:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\ParentPageConfiguration\":5:{s:12:\"\0*\0cParentID\";s:3:\"174\";s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"1\";s:25:\"ptPublishTargetTypeHandle\";s:11:\"parent_page\";s:9:\"pkgHandle\";b:0;}');
/*!40000 ALTER TABLE `PageTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageWorkflowProgress`
--

DROP TABLE IF EXISTS `PageWorkflowProgress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageWorkflowProgress` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `wpID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`wpID`),
  KEY `wpID` (`wpID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageWorkflowProgress`
--

LOCK TABLES `PageWorkflowProgress` WRITE;
/*!40000 ALTER TABLE `PageWorkflowProgress` DISABLE KEYS */;
/*!40000 ALTER TABLE `PageWorkflowProgress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pages`
--

DROP TABLE IF EXISTS `Pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Pages` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  `cIsTemplate` tinyint(1) NOT NULL DEFAULT '0',
  `uID` int(10) unsigned DEFAULT NULL,
  `cIsCheckedOut` tinyint(1) NOT NULL DEFAULT '0',
  `cCheckedOutUID` int(10) unsigned DEFAULT NULL,
  `cCheckedOutDatetime` datetime DEFAULT NULL,
  `cCheckedOutDatetimeLastEdit` datetime DEFAULT NULL,
  `cOverrideTemplatePermissions` tinyint(1) NOT NULL DEFAULT '1',
  `cInheritPermissionsFromCID` int(10) unsigned NOT NULL DEFAULT '0',
  `cInheritPermissionsFrom` varchar(8) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'PARENT',
  `cFilename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cPointerID` int(10) unsigned NOT NULL DEFAULT '0',
  `cPointerExternalLink` longtext COLLATE utf8_unicode_ci,
  `cPointerExternalLinkNewWindow` tinyint(1) NOT NULL DEFAULT '0',
  `cIsActive` tinyint(1) NOT NULL DEFAULT '1',
  `cChildren` int(10) unsigned NOT NULL DEFAULT '0',
  `cDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `cParentID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `cDraftTargetParentPageID` int(10) unsigned NOT NULL DEFAULT '0',
  `cCacheFullPageContent` smallint(6) NOT NULL DEFAULT '-1',
  `cCacheFullPageContentOverrideLifetime` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `cCacheFullPageContentLifetimeCustom` int(10) unsigned NOT NULL DEFAULT '0',
  `cIsSystemPage` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`ptID`),
  KEY `cParentID` (`cParentID`),
  KEY `cIsActive` (`cID`,`cIsActive`),
  KEY `cCheckedOutUID` (`cCheckedOutUID`),
  KEY `uID` (`uID`,`cPointerID`),
  KEY `cPointerID` (`cPointerID`,`cDisplayOrder`),
  KEY `cIsTemplate` (`cID`,`cIsTemplate`),
  KEY `cIsSystemPage` (`cID`,`cIsSystemPage`),
  KEY `pkgID` (`pkgID`),
  KEY `cParentMaxDisplay` (`cParentID`,`cDisplayOrder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pages`
--

LOCK TABLES `Pages` WRITE;
/*!40000 ALTER TABLE `Pages` DISABLE KEYS */;
INSERT INTO `Pages` VALUES (1,0,0,1,0,NULL,NULL,NULL,1,1,'OVERRIDE',NULL,0,NULL,0,1,22,0,0,0,0,-1,'0',0,0),(2,0,0,1,0,NULL,NULL,NULL,1,2,'OVERRIDE','/dashboard/view.php',0,NULL,0,1,13,0,0,0,0,-1,'0',0,1),(3,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/sitemap/view.php',0,NULL,0,1,3,0,2,0,0,-1,'0',0,1),(4,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/sitemap/full.php',0,NULL,0,1,0,0,3,0,0,-1,'0',0,1),(5,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/sitemap/explore.php',0,NULL,0,1,0,1,3,0,0,-1,'0',0,1),(6,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/sitemap/search.php',0,NULL,0,1,0,2,3,0,0,-1,'0',0,1),(7,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/files/view.php',0,NULL,0,1,4,1,2,0,0,-1,'0',0,1),(8,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/files/search.php',0,NULL,0,1,0,0,7,0,0,-1,'0',0,1),(9,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/files/attributes.php',0,NULL,0,1,0,1,7,0,0,-1,'0',0,1),(10,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/files/sets.php',0,NULL,0,1,0,2,7,0,0,-1,'0',0,1),(11,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/files/add_set.php',0,NULL,0,1,0,3,7,0,0,-1,'0',0,1),(12,0,0,1,0,NULL,NULL,NULL,1,12,'OVERRIDE','/dashboard/users/view.php',0,NULL,0,1,7,2,2,0,0,-1,'0',0,1),(13,0,0,1,0,NULL,NULL,NULL,1,12,'PARENT','/dashboard/users/search.php',0,NULL,0,1,0,0,12,0,0,-1,'0',0,1),(14,0,0,1,0,NULL,NULL,NULL,1,12,'PARENT','/dashboard/users/groups.php',0,NULL,0,1,1,1,12,0,0,-1,'0',0,1),(15,0,0,1,0,NULL,NULL,NULL,1,12,'PARENT','/dashboard/users/attributes.php',0,NULL,0,1,0,2,12,0,0,-1,'0',0,1),(16,0,0,1,0,NULL,NULL,NULL,1,12,'PARENT','/dashboard/users/add.php',0,NULL,0,1,0,3,12,0,0,-1,'0',0,1),(17,0,0,1,0,NULL,NULL,NULL,1,12,'PARENT','/dashboard/users/add_group.php',0,NULL,0,1,0,4,12,0,0,-1,'0',0,1),(18,0,0,1,0,NULL,NULL,NULL,1,12,'PARENT','/dashboard/users/groups/bulkupdate.php',0,NULL,0,1,0,0,14,0,0,-1,'0',0,1),(19,0,0,1,0,NULL,NULL,NULL,1,12,'PARENT','/dashboard/users/group_sets.php',0,NULL,0,1,0,5,12,0,0,-1,'0',0,1),(20,0,0,1,0,NULL,NULL,NULL,1,12,'PARENT','/dashboard/users/points/view.php',0,NULL,0,1,2,6,12,0,0,-1,'0',0,1),(21,0,0,1,0,NULL,NULL,NULL,1,12,'PARENT','/dashboard/users/points/assign.php',0,NULL,0,1,0,0,20,0,0,-1,'0',0,1),(22,0,0,1,0,NULL,NULL,NULL,1,12,'PARENT','/dashboard/users/points/actions.php',0,NULL,0,1,0,1,20,0,0,-1,'0',0,1),(23,0,0,1,0,NULL,NULL,NULL,1,23,'OVERRIDE','/dashboard/reports.php',0,NULL,0,1,3,3,2,0,0,-1,'0',0,1),(24,0,0,1,0,NULL,NULL,NULL,1,23,'PARENT','/dashboard/reports/forms.php',0,NULL,0,1,0,0,23,0,0,-1,'0',0,1),(25,0,0,1,0,NULL,NULL,NULL,1,23,'PARENT','/dashboard/reports/surveys.php',0,NULL,0,1,0,1,23,0,0,-1,'0',0,1),(26,0,0,1,0,NULL,NULL,NULL,1,23,'PARENT','/dashboard/reports/logs.php',0,NULL,0,1,0,2,23,0,0,-1,'0',0,1),(27,0,0,1,0,NULL,NULL,NULL,1,27,'OVERRIDE','/dashboard/pages/view.php',0,NULL,0,1,6,4,2,0,0,-1,'0',0,1),(28,0,0,1,0,NULL,NULL,NULL,1,27,'PARENT','/dashboard/pages/themes/view.php',0,NULL,0,1,1,0,27,0,0,-1,'0',0,1),(29,0,0,1,0,NULL,NULL,NULL,1,27,'PARENT','/dashboard/pages/themes/inspect.php',0,NULL,0,1,0,0,28,0,0,-1,'0',0,1),(30,0,0,1,0,NULL,NULL,NULL,1,27,'PARENT','/dashboard/pages/types/view.php',0,NULL,0,1,6,1,27,0,0,-1,'0',0,1),(31,0,0,1,0,NULL,NULL,NULL,1,27,'PARENT','/dashboard/pages/types/organize.php',0,NULL,0,1,0,0,30,0,0,-1,'0',0,1),(32,0,0,1,0,NULL,NULL,NULL,1,27,'PARENT','/dashboard/pages/types/add.php',0,NULL,0,1,0,1,30,0,0,-1,'0',0,1),(33,0,0,1,0,NULL,NULL,NULL,1,27,'PARENT','/dashboard/pages/types/form.php',0,NULL,0,1,0,2,30,0,0,-1,'0',0,1),(34,0,0,1,0,NULL,NULL,NULL,1,27,'PARENT','/dashboard/pages/types/output.php',0,NULL,0,1,0,3,30,0,0,-1,'0',0,1),(35,0,0,1,0,NULL,NULL,NULL,1,27,'PARENT','/dashboard/pages/types/attributes.php',0,NULL,0,1,0,4,30,0,0,-1,'0',0,1),(36,0,0,1,0,NULL,NULL,NULL,1,27,'PARENT','/dashboard/pages/types/permissions.php',0,NULL,0,1,0,5,30,0,0,-1,'0',0,1),(37,0,0,1,0,NULL,NULL,NULL,1,27,'PARENT','/dashboard/pages/templates/view.php',0,NULL,0,1,1,2,27,0,0,-1,'0',0,1),(38,0,0,1,0,NULL,NULL,NULL,1,27,'PARENT','/dashboard/pages/templates/add.php',0,NULL,0,1,0,0,37,0,0,-1,'0',0,1),(39,0,0,1,0,NULL,NULL,NULL,1,27,'PARENT','/dashboard/pages/attributes.php',0,NULL,0,1,0,3,27,0,0,-1,'0',0,1),(40,0,0,1,0,NULL,NULL,NULL,1,27,'PARENT','/dashboard/pages/single.php',0,NULL,0,1,0,4,27,0,0,-1,'0',0,1),(41,0,0,1,0,NULL,NULL,NULL,1,27,'PARENT','/dashboard/pages/feeds.php',0,NULL,0,1,0,5,27,0,0,-1,'0',0,1),(42,0,0,1,0,NULL,NULL,NULL,1,42,'OVERRIDE','/dashboard/conversations/view.php',0,NULL,0,1,1,5,2,0,0,-1,'0',0,1),(43,0,0,1,0,NULL,NULL,NULL,1,42,'PARENT','/dashboard/conversations/messages.php',0,NULL,0,1,0,0,42,0,0,-1,'0',0,1),(44,0,0,1,0,NULL,NULL,NULL,1,44,'OVERRIDE','/dashboard/workflow/view.php',0,NULL,0,1,2,6,2,0,0,-1,'0',0,1),(45,0,0,1,0,NULL,NULL,NULL,1,44,'PARENT','/dashboard/workflow/me.php',0,NULL,0,1,0,0,44,0,0,-1,'0',0,1),(46,0,0,1,0,NULL,NULL,NULL,1,44,'PARENT','/dashboard/workflow/workflows.php',0,NULL,0,1,0,1,44,0,0,-1,'0',0,1),(47,0,0,1,0,NULL,NULL,NULL,1,47,'OVERRIDE','/dashboard/blocks/view.php',0,NULL,0,1,3,7,2,0,0,-1,'0',0,1),(48,0,0,1,0,NULL,NULL,NULL,1,47,'PARENT','/dashboard/blocks/stacks/view.php',0,NULL,0,1,1,0,47,0,0,-1,'0',0,1),(49,0,0,1,0,NULL,NULL,NULL,1,47,'PARENT','/dashboard/blocks/permissions.php',0,NULL,0,1,0,1,47,0,0,-1,'0',0,1),(50,0,0,1,0,NULL,NULL,NULL,1,47,'PARENT','/dashboard/blocks/stacks/list/view.php',0,NULL,0,1,0,0,48,0,0,-1,'0',0,1),(51,0,0,1,0,NULL,NULL,NULL,1,47,'PARENT','/dashboard/blocks/types/view.php',0,NULL,0,1,0,2,47,0,0,-1,'0',0,1),(52,0,0,1,0,NULL,NULL,NULL,1,52,'OVERRIDE','/dashboard/extend/view.php',0,NULL,0,1,5,8,2,0,0,-1,'0',0,1),(53,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/news.php',0,NULL,0,1,0,9,2,0,0,-1,'0',0,1),(54,0,0,1,0,NULL,NULL,NULL,1,52,'PARENT','/dashboard/extend/install.php',0,NULL,0,1,0,0,52,0,0,-1,'0',0,1),(55,0,0,1,0,NULL,NULL,NULL,1,52,'PARENT','/dashboard/extend/update.php',0,NULL,0,1,0,1,52,0,0,-1,'0',0,1),(56,0,0,1,0,NULL,NULL,NULL,1,52,'PARENT','/dashboard/extend/connect.php',0,NULL,0,1,0,2,52,0,0,-1,'0',0,1),(57,0,0,1,0,NULL,NULL,NULL,1,52,'PARENT','/dashboard/extend/themes.php',0,NULL,0,1,0,3,52,0,0,-1,'0',0,1),(58,0,0,1,0,NULL,NULL,NULL,1,52,'PARENT','/dashboard/extend/addons.php',0,NULL,0,1,0,4,52,0,0,-1,'0',0,1),(59,0,0,1,0,NULL,NULL,NULL,1,59,'OVERRIDE','/dashboard/system/view.php',0,NULL,0,1,12,10,2,0,0,-1,'0',0,1),(60,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/basics/view.php',0,NULL,0,1,7,0,59,0,0,-1,'0',0,1),(61,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/basics/name.php',0,NULL,0,1,0,0,60,0,0,-1,'0',0,1),(62,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/basics/accessibility.php',0,NULL,0,1,0,1,60,0,0,-1,'0',0,1),(63,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/basics/social.php',0,NULL,0,1,0,2,60,0,0,-1,'0',0,1),(64,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/basics/icons.php',0,NULL,0,1,0,3,60,0,0,-1,'0',0,1),(65,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/basics/editor.php',0,NULL,0,1,0,4,60,0,0,-1,'0',0,1),(66,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/basics/multilingual/view.php',0,NULL,0,1,0,5,60,0,0,-1,'0',0,1),(67,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/basics/timezone.php',0,NULL,0,1,0,6,60,0,0,-1,'0',0,1),(68,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/multilingual/view.php',0,NULL,0,1,4,1,59,0,0,-1,'0',0,1),(69,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/multilingual/setup.php',0,NULL,0,1,0,0,68,0,0,-1,'0',0,1),(70,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/multilingual/copy.php',0,NULL,0,1,0,1,68,0,0,-1,'0',0,1),(71,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/multilingual/page_report.php',0,NULL,0,1,0,2,68,0,0,-1,'0',0,1),(72,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/multilingual/translate_interface.php',0,NULL,0,1,0,3,68,0,0,-1,'0',0,1),(73,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/seo/view.php',0,NULL,0,1,5,2,59,0,0,-1,'0',0,1),(74,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/seo/urls.php',0,NULL,0,1,0,0,73,0,0,-1,'0',0,1),(75,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/seo/bulk.php',0,NULL,0,1,0,1,73,0,0,-1,'0',0,1),(76,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/seo/codes.php',0,NULL,0,1,0,2,73,0,0,-1,'0',0,1),(77,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/seo/excluded.php',0,NULL,0,1,0,3,73,0,0,-1,'0',0,1),(78,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/seo/searchindex.php',0,NULL,0,1,0,4,73,0,0,-1,'0',0,1),(79,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/files/view.php',0,NULL,0,1,4,3,59,0,0,-1,'0',0,1),(80,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/files/permissions.php',0,NULL,0,1,0,0,79,0,0,-1,'0',0,1),(81,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/files/filetypes.php',0,NULL,0,1,0,1,79,0,0,-1,'0',0,1),(82,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/files/thumbnails.php',0,NULL,0,1,0,2,79,0,0,-1,'0',0,1),(83,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/files/storage.php',0,NULL,0,1,0,3,79,0,0,-1,'0',0,1),(84,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/optimization/view.php',0,NULL,0,1,4,4,59,0,0,-1,'0',0,1),(85,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/optimization/cache.php',0,NULL,0,1,0,0,84,0,0,-1,'0',0,1),(86,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/optimization/clearcache.php',0,NULL,0,1,0,1,84,0,0,-1,'0',0,1),(87,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/optimization/jobs.php',0,NULL,0,1,0,2,84,0,0,-1,'0',0,1),(88,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/optimization/query_log.php',0,NULL,0,1,0,3,84,0,0,-1,'0',0,1),(89,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/permissions/view.php',0,NULL,0,1,8,5,59,0,0,-1,'0',0,1),(90,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/permissions/site.php',0,NULL,0,1,0,0,89,0,0,-1,'0',0,1),(91,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/permissions/tasks.php',0,NULL,0,1,0,1,89,0,0,-1,'0',0,1),(92,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/permissions/users.php',0,NULL,0,1,0,2,89,0,0,-1,'0',0,1),(93,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/permissions/advanced.php',0,NULL,0,1,0,3,89,0,0,-1,'0',0,1),(94,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/permissions/blacklist.php',0,NULL,0,1,0,4,89,0,0,-1,'0',0,1),(95,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/permissions/captcha.php',0,NULL,0,1,0,5,89,0,0,-1,'0',0,1),(96,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/permissions/antispam.php',0,NULL,0,1,0,6,89,0,0,-1,'0',0,1),(97,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/permissions/maintenance.php',0,NULL,0,1,0,7,89,0,0,-1,'0',0,1),(98,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/registration/view.php',0,NULL,0,1,4,6,59,0,0,-1,'0',0,1),(99,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/registration/postlogin.php',0,NULL,0,1,0,0,98,0,0,-1,'0',0,1),(100,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/registration/profiles.php',0,NULL,0,1,0,1,98,0,0,-1,'0',0,1),(101,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/registration/open.php',0,NULL,0,1,0,2,98,0,0,-1,'0',0,1),(102,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/registration/authentication.php',0,NULL,0,1,0,3,98,0,0,-1,'0',0,1),(103,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/mail/view.php',0,NULL,0,1,2,7,59,0,0,-1,'0',0,1),(104,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/mail/method.php',0,NULL,0,1,1,0,103,0,0,-1,'0',0,1),(105,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/mail/method/test.php',0,NULL,0,1,0,0,104,0,0,-1,'0',0,1),(106,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/mail/importers.php',0,NULL,0,1,0,1,103,0,0,-1,'0',0,1),(107,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/conversations/view.php',0,NULL,0,1,4,8,59,0,0,-1,'0',0,1),(108,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/conversations/settings.php',0,NULL,0,1,0,0,107,0,0,-1,'0',0,1),(109,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/conversations/points.php',0,NULL,0,1,0,1,107,0,0,-1,'0',0,1),(110,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/conversations/bannedwords.php',0,NULL,0,1,0,2,107,0,0,-1,'0',0,1),(111,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/conversations/permissions.php',0,NULL,0,1,0,3,107,0,0,-1,'0',0,1),(112,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/attributes/view.php',0,NULL,0,1,3,9,59,0,0,-1,'0',0,1),(113,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/attributes/sets.php',0,NULL,0,1,0,0,112,0,0,-1,'0',0,1),(114,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/attributes/types.php',0,NULL,0,1,0,1,112,0,0,-1,'0',0,1),(115,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/attributes/topics/view.php',0,NULL,0,1,1,2,112,0,0,-1,'0',0,1),(116,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/attributes/topics/add.php',0,NULL,0,1,0,0,115,0,0,-1,'0',0,1),(117,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/environment/view.php',0,NULL,0,1,5,10,59,0,0,-1,'0',0,1),(118,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/environment/info.php',0,NULL,0,1,0,0,117,0,0,-1,'0',0,1),(119,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/environment/debug.php',0,NULL,0,1,0,1,117,0,0,-1,'0',0,1),(120,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/environment/logging.php',0,NULL,0,1,0,2,117,0,0,-1,'0',0,1),(121,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/environment/proxy.php',0,NULL,0,1,0,3,117,0,0,-1,'0',0,1),(122,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/environment/entities.php',0,NULL,0,1,0,4,117,0,0,-1,'0',0,1),(123,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/backup/view.php',0,NULL,0,1,2,11,59,0,0,-1,'0',0,1),(124,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/backup/backup.php',0,NULL,0,1,0,0,123,0,0,-1,'0',0,1),(125,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/backup/update.php',0,NULL,0,1,0,1,123,0,0,-1,'0',0,1),(126,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT',NULL,0,NULL,0,1,0,11,2,0,0,-1,'0',0,1),(127,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT',NULL,0,NULL,0,1,0,12,2,0,0,-1,'0',0,1),(128,0,0,1,0,NULL,NULL,NULL,1,128,'OVERRIDE','/!drafts/view.php',0,NULL,0,1,2,0,0,0,0,-1,'0',0,1),(129,0,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/!trash/view.php',0,NULL,0,1,2,0,0,0,0,-1,'0',0,1),(130,0,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/!stacks/view.php',0,NULL,0,1,9,0,0,0,0,-1,'0',0,1),(131,0,0,1,0,NULL,NULL,NULL,1,131,'OVERRIDE','/login.php',0,NULL,0,1,0,0,0,0,0,-1,'0',0,1),(132,0,0,1,0,NULL,NULL,NULL,1,132,'OVERRIDE','/register.php',0,NULL,0,1,0,0,0,0,0,-1,'0',0,1),(133,0,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/account/view.php',0,NULL,0,1,3,0,0,0,0,-1,'0',0,1),(134,0,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/account/edit_profile.php',0,NULL,0,1,0,0,133,0,0,-1,'0',0,1),(135,0,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/account/avatar.php',0,NULL,0,1,0,1,133,0,0,-1,'0',0,1),(136,0,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/account/messages/view.php',0,NULL,0,1,1,2,133,0,0,-1,'0',0,1),(137,0,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/account/messages/inbox.php',0,NULL,0,1,0,0,136,0,0,-1,'0',0,1),(138,0,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/members/view.php',0,NULL,0,1,2,0,1,0,0,-1,'0',0,1),(139,0,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/members/profile.php',0,NULL,0,1,0,0,138,0,0,-1,'0',0,1),(140,0,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/members/directory.php',0,NULL,0,1,0,1,138,0,0,-1,'0',0,1),(141,0,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/page_not_found.php',0,NULL,0,1,0,1,0,0,0,-1,'0',0,1),(142,0,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/page_forbidden.php',0,NULL,0,1,0,1,0,0,0,-1,'0',0,1),(143,0,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/download_file.php',0,NULL,0,1,0,1,1,0,0,-1,'0',0,1),(144,6,1,NULL,0,NULL,NULL,NULL,1,144,'OVERRIDE',NULL,0,NULL,0,1,0,0,0,0,0,-1,'0',0,0),(145,1,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,0,130,0,0,-1,'0',0,1),(146,1,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,1,130,0,0,-1,'0',0,1),(147,1,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,2,130,0,0,-1,'0',0,1),(148,1,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,3,130,0,0,-1,'0',0,1),(149,1,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,4,130,0,0,-1,'0',0,1),(150,1,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,5,130,0,0,-1,'0',0,1),(151,1,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,6,130,0,0,-1,'0',0,1),(152,1,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,7,130,0,0,-1,'0',0,1),(153,6,0,1,0,NULL,NULL,NULL,1,128,'PARENT',NULL,0,NULL,0,0,0,0,128,0,0,-1,'0',0,1),(161,1,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,8,130,0,0,-1,'0',0,1),(163,7,1,NULL,0,NULL,NULL,NULL,1,163,'OVERRIDE',NULL,0,NULL,0,1,0,0,0,0,0,-1,'0',0,0),(164,7,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,4,2,1,0,1,-1,'0',0,0),(165,7,0,1,0,NULL,NULL,NULL,0,165,'OVERRIDE',NULL,0,NULL,0,1,3,3,1,0,1,-1,'0',0,0),(166,7,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,2,164,0,164,-1,'0',0,0),(167,7,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,3,164,0,164,-1,'0',0,0),(168,7,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,4,164,0,164,-1,'0',0,0),(169,7,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,5,164,0,164,-1,'0',0,0),(170,7,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,4,1,0,1,-1,'0',0,0),(171,7,0,1,0,NULL,NULL,NULL,0,171,'OVERRIDE',NULL,0,NULL,0,1,3,5,1,0,1,-1,'0',0,0),(172,7,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,6,1,0,1,-1,'0',0,0),(173,7,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,7,1,0,1,-1,'0',0,0),(174,7,0,1,0,NULL,NULL,NULL,0,174,'OVERRIDE',NULL,0,NULL,0,1,2,8,1,0,1,-1,'0',0,0),(175,7,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,9,1,0,1,-1,'0',0,0),(176,8,1,1,0,NULL,NULL,NULL,1,176,'OVERRIDE',NULL,0,NULL,0,1,0,10,0,0,0,-1,'0',0,0),(177,8,0,1,0,NULL,NULL,NULL,1,165,'PARENT',NULL,0,NULL,0,1,0,2,165,0,165,-1,'0',0,0),(178,8,0,1,0,NULL,NULL,NULL,1,176,'TEMPLATE',NULL,0,NULL,0,1,0,3,165,0,165,-1,'0',0,0),(179,9,1,1,0,NULL,NULL,NULL,1,179,'OVERRIDE',NULL,0,NULL,0,1,0,11,0,0,0,-1,'0',0,0),(180,9,0,1,0,NULL,NULL,NULL,1,171,'PARENT',NULL,0,NULL,0,1,0,2,171,0,171,-1,'0',0,0),(181,9,0,1,0,NULL,NULL,NULL,1,171,'PARENT',NULL,0,NULL,0,1,0,3,171,0,171,-1,'0',0,0),(182,10,1,1,0,NULL,NULL,NULL,1,182,'OVERRIDE',NULL,0,NULL,0,1,0,11,0,0,0,-1,'0',0,0),(183,10,0,1,0,NULL,NULL,NULL,1,182,'TEMPLATE',NULL,0,NULL,0,1,0,2,174,0,174,-1,'0',0,0),(186,8,0,2,0,NULL,NULL,NULL,1,1,'TEMPLATE',NULL,0,NULL,0,0,0,5,129,0,165,-1,'0',0,1),(187,8,0,2,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,0,0,2,129,0,165,-1,'0',0,1),(188,9,0,2,0,NULL,NULL,NULL,1,179,'TEMPLATE',NULL,0,NULL,0,1,0,4,171,0,171,-1,'0',0,0),(189,10,0,3,0,NULL,NULL,NULL,1,182,'TEMPLATE',NULL,0,NULL,0,1,0,3,174,0,174,-1,'0',0,0),(190,8,0,1,0,NULL,NULL,NULL,1,176,'TEMPLATE',NULL,0,NULL,0,1,0,4,165,0,165,-1,'0',0,0),(191,7,0,1,0,NULL,NULL,NULL,1,128,'PARENT',NULL,0,NULL,0,0,0,1,128,0,1,-1,'0',0,1);
/*!40000 ALTER TABLE `Pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAccess`
--

DROP TABLE IF EXISTS `PermissionAccess`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccess` (
  `paID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `paIsInUse` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`)
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAccess`
--

LOCK TABLES `PermissionAccess` WRITE;
/*!40000 ALTER TABLE `PermissionAccess` DISABLE KEYS */;
INSERT INTO `PermissionAccess` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(36,1),(37,1),(38,1),(39,1),(40,1),(41,1),(42,1),(43,1),(44,1),(45,1),(46,1),(47,1),(48,1),(49,1),(50,1),(51,1),(52,1),(53,1),(54,1),(55,1),(56,1),(57,1),(58,1),(59,1),(60,1),(61,1),(62,1),(63,1),(64,1),(65,1),(66,1),(67,1),(68,1),(69,1),(70,1),(71,1),(72,1),(73,1),(74,1),(75,1),(76,1),(77,1),(78,1),(79,1),(80,1),(81,1),(82,1),(83,1),(84,1),(85,1),(86,1),(87,1),(88,1),(89,1),(90,1),(91,1),(92,1),(93,1),(94,1),(95,1),(96,1),(97,1),(98,1),(99,1),(100,1),(101,1),(102,1),(103,1),(104,1),(105,1),(106,1),(107,1),(108,1),(109,0),(110,1),(111,1),(112,1),(113,1),(114,1),(115,1),(116,1),(117,1),(118,1),(119,1),(120,1),(121,1),(122,1),(123,0),(124,1),(125,1),(126,0),(127,0),(128,0),(129,1),(130,1),(131,1),(132,1),(133,1),(134,1),(135,0),(136,0),(137,0),(138,1),(139,1),(140,1),(141,1),(142,1),(143,1),(144,1),(145,1),(146,0),(147,1),(148,0),(149,1),(150,0),(151,0),(152,0),(153,0),(154,0),(155,1),(156,1),(157,1),(158,1),(159,0),(160,1),(161,1),(162,1),(163,0),(164,0),(165,1),(166,1),(167,1),(168,1),(169,1),(170,1);
/*!40000 ALTER TABLE `PermissionAccess` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAccessEntities`
--

DROP TABLE IF EXISTS `PermissionAccessEntities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccessEntities` (
  `peID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `petID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`peID`),
  KEY `petID` (`petID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAccessEntities`
--

LOCK TABLES `PermissionAccessEntities` WRITE;
/*!40000 ALTER TABLE `PermissionAccessEntities` DISABLE KEYS */;
INSERT INTO `PermissionAccessEntities` VALUES (1,1),(3,1),(5,1),(7,1),(8,1),(2,5),(6,6),(4,7);
/*!40000 ALTER TABLE `PermissionAccessEntities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAccessEntityGroupSets`
--

DROP TABLE IF EXISTS `PermissionAccessEntityGroupSets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccessEntityGroupSets` (
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `gsID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`peID`,`gsID`),
  KEY `gsID` (`gsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAccessEntityGroupSets`
--

LOCK TABLES `PermissionAccessEntityGroupSets` WRITE;
/*!40000 ALTER TABLE `PermissionAccessEntityGroupSets` DISABLE KEYS */;
/*!40000 ALTER TABLE `PermissionAccessEntityGroupSets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAccessEntityGroups`
--

DROP TABLE IF EXISTS `PermissionAccessEntityGroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccessEntityGroups` (
  `pegID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pegID`),
  KEY `peID` (`peID`),
  KEY `gID` (`gID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAccessEntityGroups`
--

LOCK TABLES `PermissionAccessEntityGroups` WRITE;
/*!40000 ALTER TABLE `PermissionAccessEntityGroups` DISABLE KEYS */;
INSERT INTO `PermissionAccessEntityGroups` VALUES (1,1,3),(2,3,1),(3,5,2),(4,7,4),(5,8,5);
/*!40000 ALTER TABLE `PermissionAccessEntityGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAccessEntityTypeCategories`
--

DROP TABLE IF EXISTS `PermissionAccessEntityTypeCategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccessEntityTypeCategories` (
  `petID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkCategoryID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`petID`,`pkCategoryID`),
  KEY `pkCategoryID` (`pkCategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAccessEntityTypeCategories`
--

LOCK TABLES `PermissionAccessEntityTypeCategories` WRITE;
/*!40000 ALTER TABLE `PermissionAccessEntityTypeCategories` DISABLE KEYS */;
INSERT INTO `PermissionAccessEntityTypeCategories` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(1,4),(2,4),(3,4),(4,4),(1,5),(2,5),(3,5),(4,5),(6,5),(1,6),(2,6),(3,6),(4,6),(6,6),(1,7),(2,7),(3,7),(4,7),(1,8),(2,8),(3,8),(4,8),(1,9),(2,9),(3,9),(4,9),(1,10),(2,10),(3,10),(4,10),(1,11),(2,11),(3,11),(4,11),(1,12),(2,12),(3,12),(4,12),(1,13),(2,13),(3,13),(4,13),(1,14),(2,14),(3,14),(4,14),(5,14),(1,15),(2,15),(3,15),(4,15),(1,16),(2,16),(3,16),(4,16),(1,17),(2,17),(3,17),(4,17),(1,18),(2,18),(3,18),(4,18),(1,19),(2,19),(3,19),(4,19),(7,19),(1,20),(2,20),(3,20),(4,20),(7,20),(1,21),(2,21),(4,21);
/*!40000 ALTER TABLE `PermissionAccessEntityTypeCategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAccessEntityTypes`
--

DROP TABLE IF EXISTS `PermissionAccessEntityTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccessEntityTypes` (
  `petID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `petHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `petName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`petID`),
  UNIQUE KEY `petHandle` (`petHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAccessEntityTypes`
--

LOCK TABLES `PermissionAccessEntityTypes` WRITE;
/*!40000 ALTER TABLE `PermissionAccessEntityTypes` DISABLE KEYS */;
INSERT INTO `PermissionAccessEntityTypes` VALUES (1,'group','Group',0),(2,'user','User',0),(3,'group_set','Group Set',0),(4,'group_combination','Group Combination',0),(5,'page_owner','Page Owner',0),(6,'file_uploader','File Uploader',0),(7,'conversation_message_author','Message Author',0);
/*!40000 ALTER TABLE `PermissionAccessEntityTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAccessEntityUsers`
--

DROP TABLE IF EXISTS `PermissionAccessEntityUsers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccessEntityUsers` (
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`peID`,`uID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAccessEntityUsers`
--

LOCK TABLES `PermissionAccessEntityUsers` WRITE;
/*!40000 ALTER TABLE `PermissionAccessEntityUsers` DISABLE KEYS */;
/*!40000 ALTER TABLE `PermissionAccessEntityUsers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAccessList`
--

DROP TABLE IF EXISTS `PermissionAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `pdID` int(10) unsigned NOT NULL DEFAULT '0',
  `accessType` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`),
  KEY `accessType` (`accessType`),
  KEY `peID` (`peID`),
  KEY `peID_accessType` (`peID`,`accessType`),
  KEY `pdID` (`pdID`),
  KEY `permissionAccessDuration` (`paID`,`pdID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAccessList`
--

LOCK TABLES `PermissionAccessList` WRITE;
/*!40000 ALTER TABLE `PermissionAccessList` DISABLE KEYS */;
INSERT INTO `PermissionAccessList` VALUES (1,1,0,10),(2,1,0,10),(3,1,0,10),(4,1,0,10),(5,1,0,10),(6,1,0,10),(7,1,0,10),(8,1,0,10),(9,1,0,10),(10,1,0,10),(11,1,0,10),(12,1,0,10),(13,1,0,10),(14,1,0,10),(15,1,0,10),(16,1,0,10),(17,1,0,10),(18,1,0,10),(19,1,0,10),(20,1,0,10),(21,1,0,10),(22,1,0,10),(23,1,0,10),(24,1,0,10),(25,1,0,10),(26,2,0,10),(27,2,0,10),(28,2,0,10),(29,2,0,10),(30,2,0,10),(31,2,0,10),(32,3,0,10),(33,1,0,10),(33,3,0,10),(34,1,0,10),(35,1,0,10),(36,1,0,10),(37,1,0,10),(38,1,0,10),(39,1,0,10),(40,1,0,10),(41,1,0,10),(42,3,0,10),(43,1,0,10),(44,1,0,10),(45,1,0,10),(46,1,0,10),(47,1,0,10),(48,1,0,10),(49,1,0,10),(50,1,0,10),(51,1,0,10),(52,1,0,10),(53,1,0,10),(54,1,0,10),(55,1,0,10),(56,1,0,10),(57,1,0,10),(58,1,0,10),(59,1,0,10),(60,3,0,10),(61,3,0,10),(62,1,0,10),(63,3,0,10),(64,1,0,10),(65,1,0,10),(66,1,0,10),(67,1,0,10),(68,1,0,10),(69,1,0,10),(70,1,0,10),(71,1,0,10),(72,1,0,10),(73,1,0,10),(74,1,0,10),(75,1,0,10),(76,1,0,10),(77,1,0,10),(78,1,0,10),(79,1,0,10),(80,1,0,10),(80,2,0,10),(81,1,0,10),(81,2,0,10),(82,1,0,10),(82,2,0,10),(83,1,0,10),(83,2,0,10),(84,1,0,10),(84,2,0,10),(85,1,0,10),(85,2,0,10),(86,1,0,10),(86,2,0,10),(87,1,0,10),(87,2,0,10),(88,1,0,10),(89,1,0,10),(90,1,0,10),(91,1,0,10),(92,1,0,10),(93,3,0,10),(94,3,0,10),(95,1,0,10),(95,4,0,10),(96,1,0,10),(96,4,0,10),(97,1,0,10),(97,5,0,10),(98,1,0,10),(99,1,0,10),(100,1,0,10),(101,2,0,10),(102,2,0,10),(103,2,0,10),(104,1,0,10),(105,2,0,10),(106,2,0,10),(108,3,0,10),(109,1,0,10),(110,1,0,10),(110,7,0,10),(111,1,0,10),(112,1,0,10),(113,1,0,10),(114,1,0,10),(115,1,0,10),(116,1,0,10),(117,1,0,10),(118,1,0,10),(119,1,0,10),(119,7,0,10),(120,1,0,10),(120,7,0,10),(121,7,0,10),(123,1,0,10),(123,3,0,10),(124,1,0,10),(128,1,0,10),(130,3,0,10),(131,1,0,10),(132,1,0,10),(132,7,0,10),(133,1,0,10),(133,7,0,10),(134,1,0,10),(134,7,0,10),(135,3,0,10),(136,3,0,10),(138,3,0,10),(139,1,0,10),(140,1,0,10),(140,7,0,10),(141,1,0,10),(141,7,0,10),(142,1,0,10),(142,2,0,10),(142,7,0,10),(143,1,0,10),(143,7,0,10),(144,1,0,10),(145,1,0,10),(146,3,0,10),(147,1,0,10),(148,1,0,10),(148,7,0,10),(149,3,0,10),(150,1,0,10),(151,1,0,10),(152,1,0,10),(153,1,0,10),(154,1,0,10),(155,1,0,10),(155,7,0,10),(156,1,0,10),(156,7,0,10),(157,1,0,10),(157,8,0,10),(158,3,0,10),(159,1,0,10),(160,1,0,10),(160,7,0,10),(160,8,0,10),(161,1,0,10),(161,7,0,10),(161,8,0,10),(162,1,0,10),(162,7,0,10),(162,8,0,10),(163,1,0,10),(163,7,0,10),(164,1,0,10),(164,8,0,10),(165,1,0,10),(165,2,0,10),(165,7,0,10),(165,8,0,10),(166,1,0,10),(166,7,0,10),(166,8,0,10),(167,1,0,10),(167,7,0,10),(167,8,0,10),(168,1,0,10),(169,1,0,10),(169,7,0,10),(169,8,0,10),(170,1,0,10),(170,8,0,10);
/*!40000 ALTER TABLE `PermissionAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAccessWorkflows`
--

DROP TABLE IF EXISTS `PermissionAccessWorkflows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccessWorkflows` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `wfID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`wfID`),
  KEY `wfID` (`wfID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAccessWorkflows`
--

LOCK TABLES `PermissionAccessWorkflows` WRITE;
/*!40000 ALTER TABLE `PermissionAccessWorkflows` DISABLE KEYS */;
/*!40000 ALTER TABLE `PermissionAccessWorkflows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAssignments`
--

DROP TABLE IF EXISTS `PermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAssignments` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`pkID`),
  KEY `pkID` (`pkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAssignments`
--

LOCK TABLES `PermissionAssignments` WRITE;
/*!40000 ALTER TABLE `PermissionAssignments` DISABLE KEYS */;
INSERT INTO `PermissionAssignments` VALUES (1,19),(2,20),(3,74),(4,75),(5,76),(6,78),(7,79),(8,80),(9,86),(10,87),(168,88),(167,89),(12,90),(13,91),(14,92),(15,93),(16,94),(17,95),(18,96),(19,97),(20,98),(21,99),(22,100),(23,101),(24,102),(25,103);
/*!40000 ALTER TABLE `PermissionAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionDurationObjects`
--

DROP TABLE IF EXISTS `PermissionDurationObjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionDurationObjects` (
  `pdID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pdObject` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`pdID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionDurationObjects`
--

LOCK TABLES `PermissionDurationObjects` WRITE;
/*!40000 ALTER TABLE `PermissionDurationObjects` DISABLE KEYS */;
INSERT INTO `PermissionDurationObjects` VALUES (1,'O:33:\"Concrete\\Core\\Permission\\Duration\":11:{s:7:\"\0*\0pdID\";s:1:\"1\";s:12:\"\0*\0startDate\";s:19:\"2015-09-22 07:10:00\";s:10:\"\0*\0endDate\";s:19:\"2015-09-22 07:10:00\";s:18:\"\0*\0startDateAllDay\";i:0;s:16:\"\0*\0endDateAllDay\";i:0;s:15:\"\0*\0repeatPeriod\";i:0;s:23:\"\0*\0repeatPeriodWeekDays\";N;s:17:\"\0*\0repeatEveryNum\";N;s:16:\"\0*\0repeatMonthBy\";N;s:25:\"\0*\0repeatMonthLastWeekday\";N;s:18:\"\0*\0repeatPeriodEnd\";N;}');
/*!40000 ALTER TABLE `PermissionDurationObjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionKeyCategories`
--

DROP TABLE IF EXISTS `PermissionKeyCategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionKeyCategories` (
  `pkCategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pkCategoryHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`pkCategoryID`),
  UNIQUE KEY `pkCategoryHandle` (`pkCategoryHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionKeyCategories`
--

LOCK TABLES `PermissionKeyCategories` WRITE;
/*!40000 ALTER TABLE `PermissionKeyCategories` DISABLE KEYS */;
INSERT INTO `PermissionKeyCategories` VALUES (1,'page',NULL),(2,'single_page',NULL),(3,'stack',NULL),(4,'user',NULL),(5,'file_set',NULL),(6,'file',NULL),(7,'area',NULL),(8,'block_type',NULL),(9,'block',NULL),(10,'admin',NULL),(11,'sitemap',NULL),(12,'marketplace_newsflow',NULL),(13,'basic_workflow',NULL),(14,'page_type',NULL),(15,'gathering',NULL),(16,'group_tree_node',NULL),(17,'topic_category_tree_node',NULL),(18,'topic_tree_node',NULL),(19,'conversation',NULL),(20,'conversation_message',NULL),(21,'multilingual_section',NULL);
/*!40000 ALTER TABLE `PermissionKeyCategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionKeys`
--

DROP TABLE IF EXISTS `PermissionKeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionKeys` (
  `pkID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pkHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkCanTriggerWorkflow` tinyint(1) NOT NULL DEFAULT '0',
  `pkHasCustomClass` tinyint(1) NOT NULL DEFAULT '0',
  `pkDescription` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pkCategoryID` int(10) unsigned DEFAULT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`pkID`),
  UNIQUE KEY `akHandle` (`pkHandle`),
  KEY `pkCategoryID` (`pkCategoryID`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionKeys`
--

LOCK TABLES `PermissionKeys` WRITE;
/*!40000 ALTER TABLE `PermissionKeys` DISABLE KEYS */;
INSERT INTO `PermissionKeys` VALUES (1,'view_page','View',0,0,'Can see a page exists and read its content.',1,0),(2,'view_page_versions','View Versions',0,0,'Can view the page versions dialog and read past versions of a page.',1,0),(3,'view_page_in_sitemap','View Page in Sitemap',0,0,'Controls whether a user can see a page in the sitemap or intelligent search.',1,0),(4,'preview_page_as_user','Preview Page As User',0,0,'Ability to see what this page will look like at a specific time in the future as a specific user.',1,0),(5,'edit_page_properties','Edit Properties',0,1,'Ability to change anything in the Page Properties menu.',1,0),(6,'edit_page_contents','Edit Contents',0,0,'Ability to make edits to at least some of the content in the page. You can lock down different block areas and specific blocks by clicking Permissions on them as well. ',1,0),(7,'edit_page_speed_settings','Edit Speed Settings',0,0,'Ability to change caching settings.',1,0),(8,'edit_page_theme','Change Theme',0,1,'Ability to change just the theme for this page.',1,0),(9,'edit_page_template','Change Page Template',0,0,'Ability to change just the page template for this page.',1,0),(10,'edit_page_page_type','Edit Page Type',0,0,'Change the type of an existing page.',1,0),(11,'edit_page_permissions','Edit Permissions',1,0,'Ability to change permissions for this page. Warning: by granting this a user could give themselves more access.',1,0),(12,'delete_page','Delete',1,0,'Ability to move this page to the site\'s Trash.',1,0),(13,'delete_page_versions','Delete Versions',1,0,'Ability to remove old versions of this page.',1,0),(14,'approve_page_versions','Approve Changes',1,0,'Can publish an unapproved version of the page.',1,0),(15,'add_subpage','Add Sub-Page',0,1,'Can add a page beneath the current page.',1,0),(16,'move_or_copy_page','Move or Copy Page',1,0,'Can move or copy this page to another location.',1,0),(17,'schedule_page_contents_guest_access','Schedule Guest Access',0,0,'Can control scheduled guest access to this page.',1,0),(18,'edit_page_multilingual_settings','Edit Multilingual Settings',0,0,'Controls whether a user can see the multilingual settings menu, re-map a page or set a page as ignored in multilingual settings.',1,0),(19,'add_block','Add Block',0,1,'Can add a block to any area on the site. If someone is added here they can add blocks to any area (unless that area has permissions that override these global permissions.)',8,0),(20,'add_stack','Add Stack',0,0,'Can add a stack or block from a stack to any area on the site. If someone is added here they can add stacks to any area (unless that area has permissions that override these global permissions.)',8,0),(21,'view_area','View Area',0,0,'Can view the area and its contents.',7,0),(22,'edit_area_contents','Edit Area Contents',0,0,'Can edit blocks within this area.',7,0),(23,'add_block_to_area','Add Block to Area',0,1,'Can add blocks to this area. This setting overrides the global Add Block permission for this area.',7,0),(24,'add_stack_to_area','Add Stack to Area',0,0,'Can add stacks to this area. This setting overrides the global Add Stack permission for this area.',7,0),(25,'add_layout_to_area','Add Layouts to Area',0,0,'Controls whether users get the ability to add layouts to a particular area.',7,0),(26,'edit_area_design','Edit Area Design',0,0,'Controls whether users see design controls and can modify an area\'s custom CSS.',7,0),(27,'edit_area_permissions','Edit Area Permissions',0,0,'Controls whether users can access the permissions on an area. Custom area permissions could override those of the page.',7,0),(28,'delete_area_contents','Delete Area Contents',0,0,'Controls whether users can delete blocks from this area.',7,0),(29,'schedule_area_contents_guest_access','Schedule Guest Access',0,0,'Controls whether users can schedule guest access permissions on blocks in this area. Guest Access is a shortcut for granting permissions just to the Guest Group.',7,0),(30,'view_block','View Block',0,0,'Controls whether users can view this block in the page.',9,0),(31,'edit_block','Edit Block',0,0,'Controls whether users can edit this block. This overrides any area or page permissions.',9,0),(32,'edit_block_custom_template','Change Custom Template',0,0,'Controls whether users can change the custom template on this block. This overrides any area or page permissions.',9,0),(33,'edit_block_cache_settings','Edit Cache Settings',0,0,'Controls whether users can change the block cache settings for this block instance.',9,0),(34,'edit_block_name','Edit Name',0,0,'Controls whether users can change the block\'s name (rarely used.)',9,0),(35,'delete_block','Delete Block',0,0,'Controls whether users can delete this block. This overrides any area or page permissions.',9,0),(36,'edit_block_design','Edit Design',0,0,'Controls whether users can set custom design properties or CSS on this block.',9,0),(37,'edit_block_permissions','Edit Permissions',0,0,'Controls whether users can change permissions on this block, potentially granting themselves or others greater access.',9,0),(38,'schedule_guest_access','Schedule Guest Access',0,0,'Controls whether users can schedule guest access permissions on this block. Guest Access is a shortcut for granting permissions just to the Guest Group.',9,0),(39,'view_file_set_file','View Files',0,0,'Can view and download files in the site.',5,0),(40,'search_file_set','Search Files in File Manager',0,0,'Can access the file manager',5,0),(41,'edit_file_set_file_properties','Edit File Properties',0,0,'Can edit a file\'s properties.',5,0),(42,'edit_file_set_file_contents','Edit File Contents',0,0,'Can edit or replace files in set.',5,0),(43,'copy_file_set_files','Copy File',0,0,'Can copy files in file set.',5,0),(44,'edit_file_set_permissions','Edit File Access',0,0,'Can edit access to file sets.',5,0),(45,'delete_file_set','Delete File Set',0,0,'Can delete file set.',5,0),(46,'delete_file_set_files','Delete File',0,0,'Can delete files in set.',5,0),(47,'add_file','Add File',0,1,'Can add files to set.',5,0),(48,'view_file','View Files',0,0,'Can view and download files.',6,0),(49,'view_file_in_file_manager','View File in File Manager',0,0,'Can access the File Manager.',6,0),(50,'edit_file_properties','Edit File Properties',0,0,'Can edit a file\'s properties.',6,0),(51,'edit_file_contents','Edit File Contents',0,0,'Can edit or replace files.',6,0),(52,'copy_file','Copy File',0,0,'Can copy file.',6,0),(53,'edit_file_permissions','Edit File Access',0,0,'Can edit access to file.',6,0),(54,'delete_file','Delete File',0,0,'Can delete file.',6,0),(55,'approve_basic_workflow_action','Approve or Deny',0,0,'Grant ability to approve workflow.',13,0),(56,'notify_on_basic_workflow_entry','Notify on Entry',0,0,'Notify approvers that a change has entered the workflow.',13,0),(57,'notify_on_basic_workflow_approve','Notify on Approve',0,0,'Notify approvers that a change has been approved.',13,0),(58,'notify_on_basic_workflow_deny','Notify on Deny',0,0,'Notify approvers that a change has been denied.',13,0),(59,'add_page_type','Add Pages of This Type',0,0,'',14,0),(60,'edit_page_type','Edit Page Type',0,0,'',14,0),(61,'delete_page_type','Delete Page Type',0,0,'',14,0),(62,'edit_page_type_permissions','Edit Page Type Permissions',0,0,'',14,0),(63,'edit_page_type_drafts','Edit Page Type Drafts',0,0,'',14,0),(64,'view_topic_tree_node','View Topic Tree Node',0,0,'',18,0),(65,'view_topic_category_tree_node','View Topic Category Tree Node',0,0,'',17,0),(66,'add_conversation_message','Add Message to Conversation',0,1,'',19,0),(67,'add_conversation_message_attachments','Add Message Attachments',0,0,'',19,0),(68,'edit_conversation_permissions','Edit Conversation Permissions',0,0,'',19,0),(69,'delete_conversation_message','Delete Message',0,0,'',19,0),(70,'edit_conversation_message','Edit Message',0,0,'',19,0),(71,'rate_conversation_message','Rate Message',0,0,'',19,0),(72,'flag_conversation_message','Flag Message',0,0,'',19,0),(73,'approve_conversation_message','Approve Message',0,0,'',19,0),(74,'edit_user_properties','Edit User Details',0,1,NULL,4,0),(75,'view_user_attributes','View User Attributes',0,1,NULL,4,0),(76,'activate_user','Activate/Deactivate User',0,0,NULL,4,0),(77,'sudo','Sign in as User',0,0,NULL,4,0),(78,'upgrade','Upgrade concrete5',0,0,NULL,10,0),(79,'access_group_search','Access Group Search',0,0,NULL,4,0),(80,'delete_user','Delete User',0,0,NULL,4,0),(81,'search_users_in_group','Search User Group',0,0,NULL,16,0),(82,'edit_group','Edit Group',0,0,NULL,16,0),(83,'assign_group','Assign Group',0,0,NULL,16,0),(84,'add_sub_group','Add Child Group',0,0,NULL,16,0),(85,'edit_group_permissions','Edit Group Permissions',0,0,NULL,16,0),(86,'access_page_type_permissions','Access Page Type Permissions',0,0,NULL,10,0),(87,'backup','Perform Backups',0,0,NULL,10,0),(88,'access_task_permissions','Access Task Permissions',0,0,NULL,10,0),(89,'access_sitemap','Access Sitemap',0,0,NULL,11,0),(90,'access_page_defaults','Access Page Type Defaults',0,0,NULL,10,0),(91,'customize_themes','Customize Themes',0,0,NULL,10,0),(92,'manage_layout_presets','Manage Layout Presets',0,0,NULL,10,0),(93,'empty_trash','Empty Trash',0,0,NULL,10,0),(94,'add_topic_tree','Add Topic Tree',0,0,NULL,10,0),(95,'remove_topic_tree','Remove Topic Tree',0,0,NULL,10,0),(96,'view_in_maintenance_mode','View Site in Maintenance Mode',0,0,'Ability to see and use the website when concrete5 is in maintenance mode.',10,0),(97,'uninstall_packages','Uninstall Packages',0,0,NULL,12,0),(98,'install_packages','Install Packages',0,0,NULL,12,0),(99,'view_newsflow','View Newsflow',0,0,NULL,12,0),(100,'access_user_search_export','Export Site Users',0,0,'Controls whether a user can export site users or not',4,0),(101,'access_user_search','Access User Search',0,0,'Controls whether a user can view the search user interface.',4,0),(102,'edit_gatherings','Edit Gatherings',0,0,'Can edit the footprint and items in all gatherings.',10,0),(103,'edit_gathering_items','Edit Gathering Items',0,0,'',15,0);
/*!40000 ALTER TABLE `PermissionKeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PileContents`
--

DROP TABLE IF EXISTS `PileContents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PileContents` (
  `pcID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pID` int(10) unsigned NOT NULL DEFAULT '0',
  `itemID` int(10) unsigned NOT NULL DEFAULT '0',
  `itemType` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(10) unsigned NOT NULL DEFAULT '1',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `displayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pcID`),
  KEY `pID` (`pID`,`displayOrder`),
  KEY `itemID` (`itemID`),
  KEY `itemType` (`itemType`,`itemID`,`pID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PileContents`
--

LOCK TABLES `PileContents` WRITE;
/*!40000 ALTER TABLE `PileContents` DISABLE KEYS */;
/*!40000 ALTER TABLE `PileContents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Piles`
--

DROP TABLE IF EXISTS `Piles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Piles` (
  `pID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uID` int(10) unsigned DEFAULT NULL,
  `isDefault` tinyint(1) NOT NULL DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`pID`),
  KEY `uID` (`uID`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Piles`
--

LOCK TABLES `Piles` WRITE;
/*!40000 ALTER TABLE `Piles` DISABLE KEYS */;
INSERT INTO `Piles` VALUES (1,1,1,'2015-09-21 15:30:08',NULL,'READY'),(2,2,1,'2015-09-23 14:27:58',NULL,'READY');
/*!40000 ALTER TABLE `Piles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QueueMessages`
--

DROP TABLE IF EXISTS `QueueMessages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QueueMessages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `queue_id` int(10) unsigned NOT NULL,
  `handle` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` longtext COLLATE utf8_unicode_ci NOT NULL,
  `md5` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `timeout` decimal(14,0) DEFAULT NULL,
  `created` int(10) unsigned NOT NULL,
  PRIMARY KEY (`message_id`),
  UNIQUE KEY `message_handle` (`handle`),
  KEY `message_queueid` (`queue_id`),
  CONSTRAINT `QueueMessages_ibfk_1` FOREIGN KEY (`queue_id`) REFERENCES `Queues` (`queue_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QueueMessages`
--

LOCK TABLES `QueueMessages` WRITE;
/*!40000 ALTER TABLE `QueueMessages` DISABLE KEYS */;
/*!40000 ALTER TABLE `QueueMessages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QueuePageDuplicationRelations`
--

DROP TABLE IF EXISTS `QueuePageDuplicationRelations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QueuePageDuplicationRelations` (
  `queue_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `originalCID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`originalCID`),
  KEY `originalCID` (`originalCID`,`queue_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QueuePageDuplicationRelations`
--

LOCK TABLES `QueuePageDuplicationRelations` WRITE;
/*!40000 ALTER TABLE `QueuePageDuplicationRelations` DISABLE KEYS */;
/*!40000 ALTER TABLE `QueuePageDuplicationRelations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Queues`
--

DROP TABLE IF EXISTS `Queues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Queues` (
  `queue_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `queue_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `timeout` int(10) unsigned NOT NULL DEFAULT '30',
  PRIMARY KEY (`queue_id`),
  KEY `queue_name` (`queue_name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Queues`
--

LOCK TABLES `Queues` WRITE;
/*!40000 ALTER TABLE `Queues` DISABLE KEYS */;
/*!40000 ALTER TABLE `Queues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Sessions`
--

DROP TABLE IF EXISTS `Sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Sessions` (
  `sessionID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sessionValue` text COLLATE utf8_unicode_ci NOT NULL,
  `sessionTime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`sessionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Sessions`
--

LOCK TABLES `Sessions` WRITE;
/*!40000 ALTER TABLE `Sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `Sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SignupRequests`
--

DROP TABLE IF EXISTS `SignupRequests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SignupRequests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ipFrom` tinyblob,
  `date_access` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `ipFrom` (`ipFrom`(32))
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SignupRequests`
--

LOCK TABLES `SignupRequests` WRITE;
/*!40000 ALTER TABLE `SignupRequests` DISABLE KEYS */;
INSERT INTO `SignupRequests` VALUES (1,'0afffe43','2015-09-21 18:14:18'),(2,'0afffe43','2015-09-23 13:42:05'),(3,'0afffe43','2015-09-23 13:42:07'),(4,'0afffe4a','2015-09-24 15:38:50'),(5,'0afffe4a','2015-09-24 15:38:52'),(6,'0afffe4a','2015-09-24 15:38:56'),(7,'0afffe4a','2015-09-24 15:39:03'),(8,'0afffe4a','2015-09-24 15:39:08');
/*!40000 ALTER TABLE `SignupRequests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SocialLinks`
--

DROP TABLE IF EXISTS `SocialLinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SocialLinks` (
  `slID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ssHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`slID`),
  UNIQUE KEY `ssHandle` (`ssHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SocialLinks`
--

LOCK TABLES `SocialLinks` WRITE;
/*!40000 ALTER TABLE `SocialLinks` DISABLE KEYS */;
/*!40000 ALTER TABLE `SocialLinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Stacks`
--

DROP TABLE IF EXISTS `Stacks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Stacks` (
  `stID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `stName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `stType` int(10) unsigned NOT NULL DEFAULT '0',
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `stMultilingualSection` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`stID`),
  KEY `stType` (`stType`),
  KEY `stName` (`stName`),
  KEY `cID` (`cID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Stacks`
--

LOCK TABLES `Stacks` WRITE;
/*!40000 ALTER TABLE `Stacks` DISABLE KEYS */;
INSERT INTO `Stacks` VALUES (1,'Header Site Title',20,145,0),(2,'Header Navigation',20,146,0),(3,'Footer Legal',20,147,0),(4,'Footer Navigation',20,148,0),(5,'Footer Contact',20,149,0),(6,'Header Search',20,150,0),(7,'Footer Site Title',20,151,0),(8,'Footer Social',20,152,0),(9,'Search',20,161,0);
/*!40000 ALTER TABLE `Stacks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StyleCustomizerCustomCssRecords`
--

DROP TABLE IF EXISTS `StyleCustomizerCustomCssRecords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StyleCustomizerCustomCssRecords` (
  `sccRecordID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`sccRecordID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StyleCustomizerCustomCssRecords`
--

LOCK TABLES `StyleCustomizerCustomCssRecords` WRITE;
/*!40000 ALTER TABLE `StyleCustomizerCustomCssRecords` DISABLE KEYS */;
/*!40000 ALTER TABLE `StyleCustomizerCustomCssRecords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StyleCustomizerInlineStylePresets`
--

DROP TABLE IF EXISTS `StyleCustomizerInlineStylePresets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StyleCustomizerInlineStylePresets` (
  `pssPresetID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pssPresetName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `issID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pssPresetID`),
  KEY `issID` (`issID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StyleCustomizerInlineStylePresets`
--

LOCK TABLES `StyleCustomizerInlineStylePresets` WRITE;
/*!40000 ALTER TABLE `StyleCustomizerInlineStylePresets` DISABLE KEYS */;
/*!40000 ALTER TABLE `StyleCustomizerInlineStylePresets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StyleCustomizerInlineStyleSets`
--

DROP TABLE IF EXISTS `StyleCustomizerInlineStyleSets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StyleCustomizerInlineStyleSets` (
  `issID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `backgroundColor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `backgroundImageFileID` int(11) DEFAULT NULL,
  `backgroundRepeat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `borderWidth` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `borderColor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `borderStyle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `borderRadius` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `baseFontSize` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alignment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `textColor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `linkColor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paddingTop` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paddingBottom` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paddingLeft` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paddingRight` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `marginTop` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `marginBottom` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `marginLeft` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `marginRight` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rotate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `boxShadowHorizontal` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `boxShadowVertical` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `boxShadowBlur` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `boxShadowSpread` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `boxShadowColor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customClass` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hideOnExtraSmallDevice` tinyint(1) DEFAULT NULL,
  `hideOnSmallDevice` tinyint(1) DEFAULT NULL,
  `hideOnMediumDevice` tinyint(1) DEFAULT NULL,
  `hideOnLargeDevice` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`issID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StyleCustomizerInlineStyleSets`
--

LOCK TABLES `StyleCustomizerInlineStyleSets` WRITE;
/*!40000 ALTER TABLE `StyleCustomizerInlineStyleSets` DISABLE KEYS */;
INSERT INTO `StyleCustomizerInlineStyleSets` VALUES (1,NULL,0,'no-repeat',NULL,NULL,NULL,NULL,NULL,'left',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0),(2,NULL,0,'no-repeat',NULL,NULL,NULL,NULL,NULL,'right',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0),(3,NULL,0,'no-repeat',NULL,NULL,NULL,NULL,'22px',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0),(4,NULL,0,'no-repeat',NULL,NULL,NULL,NULL,'22px',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'10px',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0),(5,NULL,0,'no-repeat',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'animated zoomInUp',0,0,0,0),(6,NULL,0,'no-repeat',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'animated tada',0,0,0,0),(7,NULL,0,'no-repeat',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'animated fadeInUp',0,0,0,0),(8,NULL,0,'no-repeat',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'invisible_smartphone',0,0,0,0);
/*!40000 ALTER TABLE `StyleCustomizerInlineStyleSets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StyleCustomizerValueLists`
--

DROP TABLE IF EXISTS `StyleCustomizerValueLists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StyleCustomizerValueLists` (
  `scvlID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`scvlID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StyleCustomizerValueLists`
--

LOCK TABLES `StyleCustomizerValueLists` WRITE;
/*!40000 ALTER TABLE `StyleCustomizerValueLists` DISABLE KEYS */;
/*!40000 ALTER TABLE `StyleCustomizerValueLists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StyleCustomizerValues`
--

DROP TABLE IF EXISTS `StyleCustomizerValues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StyleCustomizerValues` (
  `scvID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `scvlID` int(10) unsigned DEFAULT NULL,
  `value` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`scvID`),
  KEY `scvlID` (`scvlID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StyleCustomizerValues`
--

LOCK TABLES `StyleCustomizerValues` WRITE;
/*!40000 ALTER TABLE `StyleCustomizerValues` DISABLE KEYS */;
/*!40000 ALTER TABLE `StyleCustomizerValues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SystemAntispamLibraries`
--

DROP TABLE IF EXISTS `SystemAntispamLibraries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SystemAntispamLibraries` (
  `saslHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `saslName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `saslIsActive` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`saslHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SystemAntispamLibraries`
--

LOCK TABLES `SystemAntispamLibraries` WRITE;
/*!40000 ALTER TABLE `SystemAntispamLibraries` DISABLE KEYS */;
/*!40000 ALTER TABLE `SystemAntispamLibraries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SystemCaptchaLibraries`
--

DROP TABLE IF EXISTS `SystemCaptchaLibraries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SystemCaptchaLibraries` (
  `sclHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `sclName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sclIsActive` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`sclHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SystemCaptchaLibraries`
--

LOCK TABLES `SystemCaptchaLibraries` WRITE;
/*!40000 ALTER TABLE `SystemCaptchaLibraries` DISABLE KEYS */;
INSERT INTO `SystemCaptchaLibraries` VALUES ('securimage','SecurImage (Default)',1,0);
/*!40000 ALTER TABLE `SystemCaptchaLibraries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SystemContentEditorSnippets`
--

DROP TABLE IF EXISTS `SystemContentEditorSnippets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SystemContentEditorSnippets` (
  `scsHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `scsName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `scsIsActive` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`scsHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SystemContentEditorSnippets`
--

LOCK TABLES `SystemContentEditorSnippets` WRITE;
/*!40000 ALTER TABLE `SystemContentEditorSnippets` DISABLE KEYS */;
INSERT INTO `SystemContentEditorSnippets` VALUES ('page_name','Page Name',1,0),('user_name','User Name',1,0);
/*!40000 ALTER TABLE `SystemContentEditorSnippets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SystemDatabaseMigrations`
--

DROP TABLE IF EXISTS `SystemDatabaseMigrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SystemDatabaseMigrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SystemDatabaseMigrations`
--

LOCK TABLES `SystemDatabaseMigrations` WRITE;
/*!40000 ALTER TABLE `SystemDatabaseMigrations` DISABLE KEYS */;
INSERT INTO `SystemDatabaseMigrations` VALUES ('20150731000000');
/*!40000 ALTER TABLE `SystemDatabaseMigrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SystemDatabaseQueryLog`
--

DROP TABLE IF EXISTS `SystemDatabaseQueryLog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SystemDatabaseQueryLog` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `query` text COLLATE utf8_unicode_ci,
  `params` text COLLATE utf8_unicode_ci,
  `executionMS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SystemDatabaseQueryLog`
--

LOCK TABLES `SystemDatabaseQueryLog` WRITE;
/*!40000 ALTER TABLE `SystemDatabaseQueryLog` DISABLE KEYS */;
/*!40000 ALTER TABLE `SystemDatabaseQueryLog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TopicTrees`
--

DROP TABLE IF EXISTS `TopicTrees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TopicTrees` (
  `treeID` int(10) unsigned NOT NULL DEFAULT '0',
  `topicTreeName` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`treeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TopicTrees`
--

LOCK TABLES `TopicTrees` WRITE;
/*!40000 ALTER TABLE `TopicTrees` DISABLE KEYS */;
/*!40000 ALTER TABLE `TopicTrees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TreeCategoryNodes`
--

DROP TABLE IF EXISTS `TreeCategoryNodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TreeCategoryNodes` (
  `treeNodeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `treeNodeCategoryName` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`treeNodeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TreeCategoryNodes`
--

LOCK TABLES `TreeCategoryNodes` WRITE;
/*!40000 ALTER TABLE `TreeCategoryNodes` DISABLE KEYS */;
/*!40000 ALTER TABLE `TreeCategoryNodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TreeGroupNodes`
--

DROP TABLE IF EXISTS `TreeGroupNodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TreeGroupNodes` (
  `treeNodeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`treeNodeID`),
  KEY `gID` (`gID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TreeGroupNodes`
--

LOCK TABLES `TreeGroupNodes` WRITE;
/*!40000 ALTER TABLE `TreeGroupNodes` DISABLE KEYS */;
INSERT INTO `TreeGroupNodes` VALUES (2,1),(3,2),(4,3),(5,4),(6,5);
/*!40000 ALTER TABLE `TreeGroupNodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TreeNodePermissionAssignments`
--

DROP TABLE IF EXISTS `TreeNodePermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TreeNodePermissionAssignments` (
  `treeNodeID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`treeNodeID`,`pkID`,`paID`),
  KEY `pkID` (`pkID`),
  KEY `paID` (`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TreeNodePermissionAssignments`
--

LOCK TABLES `TreeNodePermissionAssignments` WRITE;
/*!40000 ALTER TABLE `TreeNodePermissionAssignments` DISABLE KEYS */;
INSERT INTO `TreeNodePermissionAssignments` VALUES (1,81,88),(1,82,89),(1,83,90),(1,84,91),(1,85,92);
/*!40000 ALTER TABLE `TreeNodePermissionAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TreeNodeTypes`
--

DROP TABLE IF EXISTS `TreeNodeTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TreeNodeTypes` (
  `treeNodeTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `treeNodeTypeHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `pkgID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`treeNodeTypeID`),
  UNIQUE KEY `treeNodeTypeHandle` (`treeNodeTypeHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TreeNodeTypes`
--

LOCK TABLES `TreeNodeTypes` WRITE;
/*!40000 ALTER TABLE `TreeNodeTypes` DISABLE KEYS */;
INSERT INTO `TreeNodeTypes` VALUES (1,'group',0),(2,'topic_category',0),(3,'topic',0);
/*!40000 ALTER TABLE `TreeNodeTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TreeNodes`
--

DROP TABLE IF EXISTS `TreeNodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TreeNodes` (
  `treeNodeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `treeNodeTypeID` int(10) unsigned DEFAULT '0',
  `treeID` int(10) unsigned DEFAULT '0',
  `treeNodeParentID` int(10) unsigned DEFAULT '0',
  `treeNodeDisplayOrder` int(10) unsigned DEFAULT '0',
  `treeNodeOverridePermissions` tinyint(1) DEFAULT '0',
  `inheritPermissionsFromTreeNodeID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`treeNodeID`),
  KEY `treeNodeParentID` (`treeNodeParentID`),
  KEY `treeNodeTypeID` (`treeNodeTypeID`),
  KEY `treeID` (`treeID`),
  KEY `inheritPermissionsFromTreeNodeID` (`inheritPermissionsFromTreeNodeID`,`treeNodeID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TreeNodes`
--

LOCK TABLES `TreeNodes` WRITE;
/*!40000 ALTER TABLE `TreeNodes` DISABLE KEYS */;
INSERT INTO `TreeNodes` VALUES (1,1,1,0,0,1,1),(2,1,1,1,0,0,1),(3,1,1,1,1,0,1),(4,1,1,1,2,0,1),(5,1,1,1,3,0,1),(6,1,1,1,4,0,1);
/*!40000 ALTER TABLE `TreeNodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TreeTopicNodes`
--

DROP TABLE IF EXISTS `TreeTopicNodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TreeTopicNodes` (
  `treeNodeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `treeNodeTopicName` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`treeNodeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TreeTopicNodes`
--

LOCK TABLES `TreeTopicNodes` WRITE;
/*!40000 ALTER TABLE `TreeTopicNodes` DISABLE KEYS */;
/*!40000 ALTER TABLE `TreeTopicNodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TreeTypes`
--

DROP TABLE IF EXISTS `TreeTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TreeTypes` (
  `treeTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `treeTypeHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `pkgID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`treeTypeID`),
  UNIQUE KEY `treeTypeHandle` (`treeTypeHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TreeTypes`
--

LOCK TABLES `TreeTypes` WRITE;
/*!40000 ALTER TABLE `TreeTypes` DISABLE KEYS */;
INSERT INTO `TreeTypes` VALUES (1,'group',0),(2,'topic',0);
/*!40000 ALTER TABLE `TreeTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Trees`
--

DROP TABLE IF EXISTS `Trees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Trees` (
  `treeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `treeTypeID` int(10) unsigned DEFAULT '0',
  `treeDateAdded` datetime DEFAULT NULL,
  `rootTreeNodeID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`treeID`),
  KEY `treeTypeID` (`treeTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Trees`
--

LOCK TABLES `Trees` WRITE;
/*!40000 ALTER TABLE `Trees` DISABLE KEYS */;
INSERT INTO `Trees` VALUES (1,1,'2015-09-21 11:26:18',1);
/*!40000 ALTER TABLE `Trees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserAttributeKeys`
--

DROP TABLE IF EXISTS `UserAttributeKeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserAttributeKeys` (
  `akID` int(10) unsigned NOT NULL,
  `uakProfileDisplay` tinyint(1) NOT NULL DEFAULT '0',
  `uakMemberListDisplay` tinyint(1) NOT NULL DEFAULT '0',
  `uakProfileEdit` tinyint(1) NOT NULL DEFAULT '1',
  `uakProfileEditRequired` tinyint(1) NOT NULL DEFAULT '0',
  `uakRegisterEdit` tinyint(1) NOT NULL DEFAULT '0',
  `uakRegisterEditRequired` tinyint(1) NOT NULL DEFAULT '0',
  `displayOrder` int(10) unsigned DEFAULT '0',
  `uakIsActive` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserAttributeKeys`
--

LOCK TABLES `UserAttributeKeys` WRITE;
/*!40000 ALTER TABLE `UserAttributeKeys` DISABLE KEYS */;
INSERT INTO `UserAttributeKeys` VALUES (12,0,0,1,0,1,0,1,1),(13,0,0,1,0,1,0,2,1),(16,0,0,0,0,0,0,3,1);
/*!40000 ALTER TABLE `UserAttributeKeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserAttributeValues`
--

DROP TABLE IF EXISTS `UserAttributeValues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserAttributeValues` (
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `avID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`uID`,`akID`),
  KEY `akID` (`akID`),
  KEY `avID` (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserAttributeValues`
--

LOCK TABLES `UserAttributeValues` WRITE;
/*!40000 ALTER TABLE `UserAttributeValues` DISABLE KEYS */;
INSERT INTO `UserAttributeValues` VALUES (2,12,169),(2,13,170),(3,12,171),(3,13,172);
/*!40000 ALTER TABLE `UserAttributeValues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserBannedIPs`
--

DROP TABLE IF EXISTS `UserBannedIPs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserBannedIPs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ipFrom` tinyblob,
  `ipTo` tinyblob,
  `banCode` tinyint(1) NOT NULL DEFAULT '1',
  `expires` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `isManual` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ipFrom` (`ipFrom`(32),`ipTo`(32))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserBannedIPs`
--

LOCK TABLES `UserBannedIPs` WRITE;
/*!40000 ALTER TABLE `UserBannedIPs` DISABLE KEYS */;
INSERT INTO `UserBannedIPs` VALUES (1,'0afffe4a','0',1,'2015-09-24 11:49:08',0);
/*!40000 ALTER TABLE `UserBannedIPs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserGroups`
--

DROP TABLE IF EXISTS `UserGroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserGroups` (
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `ugEntered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`uID`,`gID`),
  KEY `uID` (`uID`),
  KEY `gID` (`gID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserGroups`
--

LOCK TABLES `UserGroups` WRITE;
/*!40000 ALTER TABLE `UserGroups` DISABLE KEYS */;
INSERT INTO `UserGroups` VALUES (2,4,'2015-09-23 09:22:03'),(3,5,'2015-09-23 09:22:42');
/*!40000 ALTER TABLE `UserGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPermissionEditPropertyAccessList`
--

DROP TABLE IF EXISTS `UserPermissionEditPropertyAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPermissionEditPropertyAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `uName` tinyint(1) DEFAULT '0',
  `uEmail` tinyint(1) DEFAULT '0',
  `uPassword` tinyint(1) DEFAULT '0',
  `uAvatar` tinyint(1) DEFAULT '0',
  `uTimezone` tinyint(1) DEFAULT '0',
  `uDefaultLanguage` tinyint(1) DEFAULT '0',
  `attributePermission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPermissionEditPropertyAccessList`
--

LOCK TABLES `UserPermissionEditPropertyAccessList` WRITE;
/*!40000 ALTER TABLE `UserPermissionEditPropertyAccessList` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserPermissionEditPropertyAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPermissionEditPropertyAttributeAccessListCustom`
--

DROP TABLE IF EXISTS `UserPermissionEditPropertyAttributeAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPermissionEditPropertyAttributeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`akID`),
  KEY `peID` (`peID`),
  KEY `akID` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPermissionEditPropertyAttributeAccessListCustom`
--

LOCK TABLES `UserPermissionEditPropertyAttributeAccessListCustom` WRITE;
/*!40000 ALTER TABLE `UserPermissionEditPropertyAttributeAccessListCustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserPermissionEditPropertyAttributeAccessListCustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPermissionViewAttributeAccessList`
--

DROP TABLE IF EXISTS `UserPermissionViewAttributeAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPermissionViewAttributeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPermissionViewAttributeAccessList`
--

LOCK TABLES `UserPermissionViewAttributeAccessList` WRITE;
/*!40000 ALTER TABLE `UserPermissionViewAttributeAccessList` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserPermissionViewAttributeAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPermissionViewAttributeAccessListCustom`
--

DROP TABLE IF EXISTS `UserPermissionViewAttributeAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPermissionViewAttributeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`akID`),
  KEY `peID` (`peID`),
  KEY `akID` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPermissionViewAttributeAccessListCustom`
--

LOCK TABLES `UserPermissionViewAttributeAccessListCustom` WRITE;
/*!40000 ALTER TABLE `UserPermissionViewAttributeAccessListCustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserPermissionViewAttributeAccessListCustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPointActions`
--

DROP TABLE IF EXISTS `UserPointActions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPointActions` (
  `upaID` int(11) NOT NULL AUTO_INCREMENT,
  `upaHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `upaName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `upaDefaultPoints` int(11) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `upaHasCustomClass` tinyint(1) NOT NULL DEFAULT '0',
  `upaIsActive` tinyint(1) NOT NULL DEFAULT '1',
  `gBadgeID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`upaID`),
  UNIQUE KEY `upaHandle` (`upaHandle`),
  KEY `pkgID` (`pkgID`),
  KEY `gBBadgeID` (`gBadgeID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPointActions`
--

LOCK TABLES `UserPointActions` WRITE;
/*!40000 ALTER TABLE `UserPointActions` DISABLE KEYS */;
INSERT INTO `UserPointActions` VALUES (1,'won_badge','Won a Badge',5,0,1,1,0);
/*!40000 ALTER TABLE `UserPointActions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPointHistory`
--

DROP TABLE IF EXISTS `UserPointHistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPointHistory` (
  `upID` int(11) NOT NULL AUTO_INCREMENT,
  `upuID` int(11) NOT NULL DEFAULT '0',
  `upaID` int(11) DEFAULT '0',
  `upPoints` int(11) DEFAULT '0',
  `object` longtext COLLATE utf8_unicode_ci,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`upID`),
  KEY `upuID` (`upuID`),
  KEY `upaID` (`upaID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPointHistory`
--

LOCK TABLES `UserPointHistory` WRITE;
/*!40000 ALTER TABLE `UserPointHistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserPointHistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPrivateMessages`
--

DROP TABLE IF EXISTS `UserPrivateMessages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPrivateMessages` (
  `msgID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uAuthorID` int(10) unsigned NOT NULL DEFAULT '0',
  `msgDateCreated` datetime NOT NULL,
  `msgSubject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `msgBody` text COLLATE utf8_unicode_ci,
  `uToID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`msgID`),
  KEY `uAuthorID` (`uAuthorID`,`msgDateCreated`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPrivateMessages`
--

LOCK TABLES `UserPrivateMessages` WRITE;
/*!40000 ALTER TABLE `UserPrivateMessages` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserPrivateMessages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPrivateMessagesTo`
--

DROP TABLE IF EXISTS `UserPrivateMessagesTo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPrivateMessagesTo` (
  `msgID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `uAuthorID` int(10) unsigned NOT NULL DEFAULT '0',
  `msgMailboxID` int(11) NOT NULL,
  `msgIsNew` tinyint(1) NOT NULL DEFAULT '0',
  `msgIsUnread` tinyint(1) NOT NULL DEFAULT '0',
  `msgIsReplied` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`msgID`,`uID`,`uAuthorID`,`msgMailboxID`),
  KEY `uID` (`uID`),
  KEY `uAuthorID` (`uAuthorID`),
  KEY `msgFolderID` (`msgMailboxID`),
  KEY `msgIsNew` (`msgIsNew`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPrivateMessagesTo`
--

LOCK TABLES `UserPrivateMessagesTo` WRITE;
/*!40000 ALTER TABLE `UserPrivateMessagesTo` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserPrivateMessagesTo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserSearchIndexAttributes`
--

DROP TABLE IF EXISTS `UserSearchIndexAttributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserSearchIndexAttributes` (
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `ak_profile_private_messages_enabled` tinyint(1) DEFAULT '0',
  `ak_profile_private_messages_notification_enabled` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserSearchIndexAttributes`
--

LOCK TABLES `UserSearchIndexAttributes` WRITE;
/*!40000 ALTER TABLE `UserSearchIndexAttributes` DISABLE KEYS */;
INSERT INTO `UserSearchIndexAttributes` VALUES (2,1,1),(3,1,1);
/*!40000 ALTER TABLE `UserSearchIndexAttributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserValidationHashes`
--

DROP TABLE IF EXISTS `UserValidationHashes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserValidationHashes` (
  `uvhID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uID` int(10) unsigned DEFAULT NULL,
  `uHash` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` smallint(5) unsigned NOT NULL DEFAULT '0',
  `uDateGenerated` int(10) unsigned NOT NULL DEFAULT '0',
  `uDateRedeemed` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uvhID`),
  KEY `uID` (`uID`,`type`),
  KEY `uHash` (`uHash`,`type`),
  KEY `uDateGenerated` (`uDateGenerated`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserValidationHashes`
--

LOCK TABLES `UserValidationHashes` WRITE;
/*!40000 ALTER TABLE `UserValidationHashes` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserValidationHashes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Users` (
  `uID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uName` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `uEmail` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `uPassword` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `uIsActive` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `uIsValidated` tinyint(1) NOT NULL DEFAULT '-1',
  `uIsFullRecord` tinyint(1) NOT NULL DEFAULT '1',
  `uDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `uLastPasswordChange` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `uHasAvatar` tinyint(1) NOT NULL DEFAULT '0',
  `uLastOnline` int(10) unsigned NOT NULL DEFAULT '0',
  `uLastLogin` int(10) unsigned NOT NULL DEFAULT '0',
  `uLastIP` tinyblob,
  `uPreviousLogin` int(10) unsigned DEFAULT '0',
  `uNumLogins` int(10) unsigned NOT NULL DEFAULT '0',
  `uLastAuthTypeID` int(10) unsigned NOT NULL DEFAULT '0',
  `uTimezone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uDefaultLanguage` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uID`),
  UNIQUE KEY `uName` (`uName`),
  KEY `uEmail` (`uEmail`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES (1,'senatics','comunicacion@senatics.gov.py','$2a$12$/nHFjjV5D8z9hVoXiha91.st2rbJ6M47Va7mU/WXcPSVWnlcsF0fe','1',-1,1,'2015-09-21 11:26:19','2015-09-23 09:13:14',0,1444325627,1444325472,'c0a8c9fe',1444297378,21,1,NULL,NULL),(2,'prensa','prensa@tudominio.gov.py','$2a$12$x91B5OPugjyhRSNaDGsQsOvoXj.uRqOdOjAg6ppjSVINyCHd0j14u','1',-1,1,'2015-09-23 09:22:02','2015-09-23 09:22:02',0,1443020224,1443014681,'0afffe43',0,1,1,NULL,'es_MX'),(3,'transparencia','transparencia@tudominio.gov.py','$2a$12$uP83QGRCjRREjc5kV6GGPuyPjl/vI5suJ721tVnEqrAFWJagp4z72','1',-1,1,'2015-09-23 09:22:41','2015-09-23 09:22:41',0,1443020392,1443020238,'0afffe43',0,1,1,NULL,'es_MX');
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WorkflowProgress`
--

DROP TABLE IF EXISTS `WorkflowProgress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WorkflowProgress` (
  `wpID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wpCategoryID` int(10) unsigned DEFAULT NULL,
  `wfID` int(10) unsigned NOT NULL DEFAULT '0',
  `wpApproved` tinyint(1) NOT NULL DEFAULT '0',
  `wpDateAdded` datetime DEFAULT NULL,
  `wpDateLastAction` datetime DEFAULT NULL,
  `wpCurrentStatus` int(11) NOT NULL DEFAULT '0',
  `wrID` int(11) NOT NULL DEFAULT '0',
  `wpIsCompleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`wpID`),
  KEY `wpCategoryID` (`wpCategoryID`),
  KEY `wfID` (`wfID`),
  KEY `wrID` (`wrID`,`wpID`,`wpIsCompleted`)
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WorkflowProgress`
--

LOCK TABLES `WorkflowProgress` WRITE;
/*!40000 ALTER TABLE `WorkflowProgress` DISABLE KEYS */;
/*!40000 ALTER TABLE `WorkflowProgress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WorkflowProgressCategories`
--

DROP TABLE IF EXISTS `WorkflowProgressCategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WorkflowProgressCategories` (
  `wpCategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wpCategoryHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`wpCategoryID`),
  UNIQUE KEY `wpCategoryHandle` (`wpCategoryHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WorkflowProgressCategories`
--

LOCK TABLES `WorkflowProgressCategories` WRITE;
/*!40000 ALTER TABLE `WorkflowProgressCategories` DISABLE KEYS */;
INSERT INTO `WorkflowProgressCategories` VALUES (1,'page',NULL),(2,'file',NULL),(3,'user',NULL);
/*!40000 ALTER TABLE `WorkflowProgressCategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WorkflowProgressHistory`
--

DROP TABLE IF EXISTS `WorkflowProgressHistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WorkflowProgressHistory` (
  `wphID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wpID` int(10) unsigned NOT NULL DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `object` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`wphID`),
  KEY `wpID` (`wpID`,`timestamp`)
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WorkflowProgressHistory`
--

LOCK TABLES `WorkflowProgressHistory` WRITE;
/*!40000 ALTER TABLE `WorkflowProgressHistory` DISABLE KEYS */;
INSERT INTO `WorkflowProgressHistory` VALUES (1,1,'2015-09-21 17:37:42','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:1:\"1\";}'),(2,2,'2015-09-21 17:56:03','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:1:\"2\";}'),(3,3,'2015-09-21 17:57:35','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"4\";s:4:\"wrID\";s:1:\"3\";}'),(4,1,'2015-09-21 18:08:24','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"5\";s:4:\"wrID\";s:1:\"1\";}'),(5,2,'2015-09-21 18:09:00','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"6\";s:4:\"wrID\";s:1:\"2\";}'),(6,3,'2015-09-21 18:14:42','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"7\";s:4:\"wrID\";s:1:\"3\";}'),(7,4,'2015-09-21 18:15:41','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"8\";s:4:\"wrID\";s:1:\"4\";}'),(8,5,'2015-09-21 18:19:27','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"164\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:1:\"5\";}'),(9,6,'2015-09-21 18:19:57','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"165\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:1:\"6\";}'),(10,7,'2015-09-21 18:20:26','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"165\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:1:\"7\";}'),(11,8,'2015-09-21 18:20:56','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"166\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:1:\"8\";}'),(12,9,'2015-09-21 18:21:20','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"167\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:1:\"9\";}'),(13,10,'2015-09-21 18:21:45','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"168\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"10\";}'),(14,11,'2015-09-21 18:22:05','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"169\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"11\";}'),(15,12,'2015-09-21 18:23:09','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"170\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"12\";}'),(16,13,'2015-09-21 18:23:41','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"171\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"13\";}'),(17,14,'2015-09-21 18:24:07','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"172\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"14\";}'),(18,15,'2015-09-21 18:24:26','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"173\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"15\";}'),(19,16,'2015-09-21 18:24:49','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"174\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"16\";}'),(20,17,'2015-09-21 18:25:56','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"175\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"17\";}'),(21,18,'2015-09-21 18:27:10','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"175\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"18\";}'),(22,19,'2015-09-21 18:30:43','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"9\";s:4:\"wrID\";s:2:\"19\";}'),(23,20,'2015-09-21 18:33:10','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"10\";s:4:\"wrID\";s:2:\"20\";}'),(24,21,'2015-09-21 18:34:57','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"11\";s:4:\"wrID\";s:2:\"21\";}'),(25,22,'2015-09-21 18:38:44','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"12\";s:4:\"wrID\";s:2:\"22\";}'),(26,23,'2015-09-21 18:41:03','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"13\";s:4:\"wrID\";s:2:\"23\";}'),(27,24,'2015-09-21 18:43:36','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"14\";s:4:\"wrID\";s:2:\"24\";}'),(28,25,'2015-09-21 18:55:57','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"177\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"25\";}'),(29,26,'2015-09-21 18:58:01','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"15\";s:4:\"wrID\";s:2:\"26\";}'),(30,27,'2015-09-21 18:59:16','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"165\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:2:\"27\";}'),(31,28,'2015-09-21 19:00:12','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"178\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"28\";}'),(32,29,'2015-09-21 19:00:15','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"178\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"29\";}'),(33,30,'2015-09-21 19:00:36','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"177\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"30\";}'),(34,31,'2015-09-21 19:02:33','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"16\";s:4:\"wrID\";s:2:\"31\";}'),(35,32,'2015-09-21 19:03:07','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"17\";s:4:\"wrID\";s:2:\"32\";}'),(36,33,'2015-09-21 19:05:40','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"18\";s:4:\"wrID\";s:2:\"33\";}'),(37,34,'2015-09-22 11:07:09','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"177\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:2:\"34\";}'),(38,35,'2015-09-23 11:28:07','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"19\";s:4:\"wrID\";s:2:\"35\";}'),(39,36,'2015-09-23 11:30:12','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"20\";s:4:\"wrID\";s:2:\"36\";}'),(40,37,'2015-09-23 11:32:48','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"21\";s:4:\"wrID\";s:2:\"37\";}'),(41,38,'2015-09-23 11:45:46','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"180\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"38\";}'),(42,39,'2015-09-23 11:46:41','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"180\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"39\";}'),(43,40,'2015-09-23 11:48:15','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"171\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"40\";}'),(44,41,'2015-09-23 11:49:17','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"181\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"41\";}'),(45,42,'2015-09-23 12:18:26','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"183\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"42\";}'),(46,43,'2015-09-23 12:19:24','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"183\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"43\";}'),(47,44,'2015-09-23 12:21:17','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"174\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"44\";}'),(48,45,'2015-09-23 12:33:10','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"183\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:2:\"45\";}'),(49,46,'2015-09-23 12:33:55','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"183\";s:4:\"cvID\";s:1:\"4\";s:4:\"wrID\";s:2:\"46\";}'),(50,47,'2015-09-23 12:37:02','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"166\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"47\";}'),(51,48,'2015-09-23 12:37:33','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"167\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"48\";}'),(52,49,'2015-09-23 12:39:32','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"168\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"49\";}'),(53,50,'2015-09-23 12:40:09','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"169\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"50\";}'),(54,51,'2015-09-23 12:43:47','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"166\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:2:\"51\";}'),(55,52,'2015-09-23 12:45:03','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"167\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:2:\"52\";}'),(56,53,'2015-09-23 12:46:27','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"170\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"53\";}'),(57,54,'2015-09-23 12:47:54','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"170\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:2:\"54\";}'),(58,55,'2015-09-23 12:50:04','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"172\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"55\";}'),(59,56,'2015-09-23 13:03:32','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"172\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:2:\"56\";}'),(60,57,'2015-09-23 13:05:34','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"22\";s:4:\"wrID\";s:2:\"57\";}'),(61,58,'2015-09-23 13:10:09','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"173\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"58\";}'),(62,59,'2015-09-23 13:11:01','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"23\";s:4:\"wrID\";s:2:\"59\";}'),(63,60,'2015-09-23 13:11:35','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"24\";s:4:\"wrID\";s:2:\"60\";}'),(64,61,'2015-09-23 13:23:48','O:59:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:1:\"1\";s:13:\"permissionSet\";O:28:\"Concrete\\Core\\Permission\\Set\":2:{s:14:\"\0*\0permissions\";a:18:{i:1;s:3:\"107\";i:2;s:2:\"43\";i:3;s:2:\"44\";i:4;s:2:\"45\";i:5;s:2:\"46\";i:6;s:2:\"47\";i:7;s:2:\"48\";i:8;s:2:\"50\";i:9;s:2:\"51\";i:10;s:2:\"52\";i:11;s:2:\"53\";i:12;s:2:\"54\";i:13;s:2:\"55\";i:14;s:2:\"56\";i:15;s:2:\"57\";i:16;s:2:\"58\";i:17;s:2:\"59\";i:18;s:2:\"49\";}s:19:\"\0*\0pkCategoryHandle\";s:4:\"page\";}s:4:\"wrID\";s:2:\"61\";}'),(65,62,'2015-09-23 13:24:26','O:59:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:1:\"1\";s:13:\"permissionSet\";O:28:\"Concrete\\Core\\Permission\\Set\":2:{s:14:\"\0*\0permissions\";a:18:{i:1;s:3:\"108\";i:2;s:2:\"43\";i:3;s:2:\"44\";i:4;s:2:\"45\";i:5;s:2:\"46\";i:6;s:2:\"47\";i:7;s:2:\"48\";i:8;s:2:\"50\";i:9;s:2:\"51\";i:10;s:2:\"52\";i:11;s:2:\"53\";i:12;s:2:\"54\";i:13;s:2:\"55\";i:14;s:2:\"56\";i:15;s:2:\"57\";i:16;s:2:\"58\";i:17;s:2:\"59\";i:18;s:2:\"49\";}s:19:\"\0*\0pkCategoryHandle\";s:4:\"page\";}s:4:\"wrID\";s:2:\"62\";}'),(66,63,'2015-09-23 13:28:33','O:59:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:1:\"2\";s:13:\"permissionSet\";O:28:\"Concrete\\Core\\Permission\\Set\":2:{s:14:\"\0*\0permissions\";a:18:{i:1;s:3:\"110\";i:2;s:1:\"0\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:1:\"0\";i:7;s:1:\"0\";i:8;s:1:\"0\";i:9;s:1:\"0\";i:10;s:1:\"0\";i:11;s:1:\"0\";i:12;s:1:\"0\";i:13;s:1:\"0\";i:14;s:1:\"0\";i:15;s:1:\"0\";i:16;s:1:\"0\";i:17;s:1:\"0\";i:18;s:1:\"0\";}s:19:\"\0*\0pkCategoryHandle\";s:4:\"page\";}s:4:\"wrID\";s:2:\"63\";}'),(67,64,'2015-09-23 13:29:49','O:70:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsInheritanceRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:2:\"23\";s:11:\"inheritance\";s:8:\"OVERRIDE\";s:4:\"wrID\";s:2:\"64\";}'),(68,65,'2015-09-23 13:29:55','O:59:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:2:\"23\";s:13:\"permissionSet\";O:28:\"Concrete\\Core\\Permission\\Set\":2:{s:14:\"\0*\0permissions\";a:18:{i:1;s:3:\"111\";i:2;s:1:\"0\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:1:\"0\";i:7;s:1:\"0\";i:8;s:1:\"0\";i:9;s:1:\"0\";i:10;s:1:\"0\";i:11;s:1:\"0\";i:12;s:1:\"0\";i:13;s:1:\"0\";i:14;s:1:\"0\";i:15;s:1:\"0\";i:16;s:1:\"0\";i:17;s:1:\"0\";i:18;s:1:\"0\";}s:19:\"\0*\0pkCategoryHandle\";s:4:\"page\";}s:4:\"wrID\";s:2:\"65\";}'),(69,66,'2015-09-23 13:30:32','O:70:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsInheritanceRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:2:\"42\";s:11:\"inheritance\";s:8:\"OVERRIDE\";s:4:\"wrID\";s:2:\"66\";}'),(70,67,'2015-09-23 13:30:35','O:59:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:2:\"42\";s:13:\"permissionSet\";O:28:\"Concrete\\Core\\Permission\\Set\":2:{s:14:\"\0*\0permissions\";a:18:{i:1;s:3:\"110\";i:2;s:1:\"0\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:1:\"0\";i:7;s:1:\"0\";i:8;s:1:\"0\";i:9;s:1:\"0\";i:10;s:1:\"0\";i:11;s:1:\"0\";i:12;s:1:\"0\";i:13;s:1:\"0\";i:14;s:1:\"0\";i:15;s:1:\"0\";i:16;s:1:\"0\";i:17;s:1:\"0\";i:18;s:1:\"0\";}s:19:\"\0*\0pkCategoryHandle\";s:4:\"page\";}s:4:\"wrID\";s:2:\"67\";}'),(71,68,'2015-09-23 13:30:56','O:59:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:2:\"42\";s:13:\"permissionSet\";O:28:\"Concrete\\Core\\Permission\\Set\":2:{s:14:\"\0*\0permissions\";a:18:{i:1;s:3:\"112\";i:2;s:1:\"0\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:1:\"0\";i:7;s:1:\"0\";i:8;s:1:\"0\";i:9;s:1:\"0\";i:10;s:1:\"0\";i:11;s:1:\"0\";i:12;s:1:\"0\";i:13;s:1:\"0\";i:14;s:1:\"0\";i:15;s:1:\"0\";i:16;s:1:\"0\";i:17;s:1:\"0\";i:18;s:1:\"0\";}s:19:\"\0*\0pkCategoryHandle\";s:4:\"page\";}s:4:\"wrID\";s:2:\"68\";}'),(72,69,'2015-09-23 13:31:18','O:70:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsInheritanceRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:2:\"59\";s:11:\"inheritance\";s:8:\"OVERRIDE\";s:4:\"wrID\";s:2:\"69\";}'),(73,70,'2015-09-23 13:31:33','O:59:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:2:\"59\";s:13:\"permissionSet\";O:28:\"Concrete\\Core\\Permission\\Set\":2:{s:14:\"\0*\0permissions\";a:18:{i:1;s:3:\"113\";i:2;s:1:\"0\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:1:\"0\";i:7;s:1:\"0\";i:8;s:1:\"0\";i:9;s:1:\"0\";i:10;s:1:\"0\";i:11;s:1:\"0\";i:12;s:1:\"0\";i:13;s:1:\"0\";i:14;s:1:\"0\";i:15;s:1:\"0\";i:16;s:1:\"0\";i:17;s:1:\"0\";i:18;s:1:\"0\";}s:19:\"\0*\0pkCategoryHandle\";s:4:\"page\";}s:4:\"wrID\";s:2:\"70\";}'),(74,71,'2015-09-23 13:32:00','O:70:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsInheritanceRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:2:\"52\";s:11:\"inheritance\";s:8:\"OVERRIDE\";s:4:\"wrID\";s:2:\"71\";}'),(75,72,'2015-09-23 13:32:11','O:59:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:2:\"52\";s:13:\"permissionSet\";O:28:\"Concrete\\Core\\Permission\\Set\":2:{s:14:\"\0*\0permissions\";a:18:{i:1;s:3:\"114\";i:2;s:1:\"0\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:1:\"0\";i:7;s:1:\"0\";i:8;s:1:\"0\";i:9;s:1:\"0\";i:10;s:1:\"0\";i:11;s:1:\"0\";i:12;s:1:\"0\";i:13;s:1:\"0\";i:14;s:1:\"0\";i:15;s:1:\"0\";i:16;s:1:\"0\";i:17;s:1:\"0\";i:18;s:1:\"0\";}s:19:\"\0*\0pkCategoryHandle\";s:4:\"page\";}s:4:\"wrID\";s:2:\"72\";}'),(76,73,'2015-09-23 13:32:22','O:70:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsInheritanceRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:2:\"47\";s:11:\"inheritance\";s:8:\"OVERRIDE\";s:4:\"wrID\";s:2:\"73\";}'),(77,74,'2015-09-23 13:32:24','O:59:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:2:\"47\";s:13:\"permissionSet\";O:28:\"Concrete\\Core\\Permission\\Set\":2:{s:14:\"\0*\0permissions\";a:18:{i:1;s:3:\"110\";i:2;s:1:\"0\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:1:\"0\";i:7;s:1:\"0\";i:8;s:1:\"0\";i:9;s:1:\"0\";i:10;s:1:\"0\";i:11;s:1:\"0\";i:12;s:1:\"0\";i:13;s:1:\"0\";i:14;s:1:\"0\";i:15;s:1:\"0\";i:16;s:1:\"0\";i:17;s:1:\"0\";i:18;s:1:\"0\";}s:19:\"\0*\0pkCategoryHandle\";s:4:\"page\";}s:4:\"wrID\";s:2:\"74\";}'),(78,75,'2015-09-23 13:32:41','O:59:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:2:\"47\";s:13:\"permissionSet\";O:28:\"Concrete\\Core\\Permission\\Set\":2:{s:14:\"\0*\0permissions\";a:18:{i:1;s:3:\"115\";i:2;s:1:\"0\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:1:\"0\";i:7;s:1:\"0\";i:8;s:1:\"0\";i:9;s:1:\"0\";i:10;s:1:\"0\";i:11;s:1:\"0\";i:12;s:1:\"0\";i:13;s:1:\"0\";i:14;s:1:\"0\";i:15;s:1:\"0\";i:16;s:1:\"0\";i:17;s:1:\"0\";i:18;s:1:\"0\";}s:19:\"\0*\0pkCategoryHandle\";s:4:\"page\";}s:4:\"wrID\";s:2:\"75\";}'),(79,76,'2015-09-23 13:34:48','O:70:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsInheritanceRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:2:\"12\";s:11:\"inheritance\";s:8:\"OVERRIDE\";s:4:\"wrID\";s:2:\"76\";}'),(80,77,'2015-09-23 13:34:57','O:59:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:2:\"12\";s:13:\"permissionSet\";O:28:\"Concrete\\Core\\Permission\\Set\":2:{s:14:\"\0*\0permissions\";a:18:{i:1;s:3:\"116\";i:2;s:1:\"0\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:1:\"0\";i:7;s:1:\"0\";i:8;s:1:\"0\";i:9;s:1:\"0\";i:10;s:1:\"0\";i:11;s:1:\"0\";i:12;s:1:\"0\";i:13;s:1:\"0\";i:14;s:1:\"0\";i:15;s:1:\"0\";i:16;s:1:\"0\";i:17;s:1:\"0\";i:18;s:1:\"0\";}s:19:\"\0*\0pkCategoryHandle\";s:4:\"page\";}s:4:\"wrID\";s:2:\"77\";}'),(81,78,'2015-09-23 13:35:04','O:70:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsInheritanceRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:2:\"27\";s:11:\"inheritance\";s:8:\"OVERRIDE\";s:4:\"wrID\";s:2:\"78\";}'),(82,79,'2015-09-23 13:35:05','O:59:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:2:\"27\";s:13:\"permissionSet\";O:28:\"Concrete\\Core\\Permission\\Set\":2:{s:14:\"\0*\0permissions\";a:18:{i:1;s:3:\"110\";i:2;s:1:\"0\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:1:\"0\";i:7;s:1:\"0\";i:8;s:1:\"0\";i:9;s:1:\"0\";i:10;s:1:\"0\";i:11;s:1:\"0\";i:12;s:1:\"0\";i:13;s:1:\"0\";i:14;s:1:\"0\";i:15;s:1:\"0\";i:16;s:1:\"0\";i:17;s:1:\"0\";i:18;s:1:\"0\";}s:19:\"\0*\0pkCategoryHandle\";s:4:\"page\";}s:4:\"wrID\";s:2:\"79\";}'),(83,80,'2015-09-23 13:35:16','O:59:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:2:\"27\";s:13:\"permissionSet\";O:28:\"Concrete\\Core\\Permission\\Set\":2:{s:14:\"\0*\0permissions\";a:18:{i:1;s:3:\"117\";i:2;s:1:\"0\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:1:\"0\";i:7;s:1:\"0\";i:8;s:1:\"0\";i:9;s:1:\"0\";i:10;s:1:\"0\";i:11;s:1:\"0\";i:12;s:1:\"0\";i:13;s:1:\"0\";i:14;s:1:\"0\";i:15;s:1:\"0\";i:16;s:1:\"0\";i:17;s:1:\"0\";i:18;s:1:\"0\";}s:19:\"\0*\0pkCategoryHandle\";s:4:\"page\";}s:4:\"wrID\";s:2:\"80\";}'),(84,81,'2015-09-23 13:35:22','O:70:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsInheritanceRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:2:\"44\";s:11:\"inheritance\";s:8:\"OVERRIDE\";s:4:\"wrID\";s:2:\"81\";}'),(85,82,'2015-09-23 13:35:27','O:59:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:2:\"44\";s:13:\"permissionSet\";O:28:\"Concrete\\Core\\Permission\\Set\":2:{s:14:\"\0*\0permissions\";a:18:{i:1;s:3:\"118\";i:2;s:1:\"0\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:1:\"0\";i:7;s:1:\"0\";i:8;s:1:\"0\";i:9;s:1:\"0\";i:10;s:1:\"0\";i:11;s:1:\"0\";i:12;s:1:\"0\";i:13;s:1:\"0\";i:14;s:1:\"0\";i:15;s:1:\"0\";i:16;s:1:\"0\";i:17;s:1:\"0\";i:18;s:1:\"0\";}s:19:\"\0*\0pkCategoryHandle\";s:4:\"page\";}s:4:\"wrID\";s:2:\"82\";}'),(86,83,'2015-09-23 13:37:38','O:59:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:1:\"1\";s:13:\"permissionSet\";O:28:\"Concrete\\Core\\Permission\\Set\":2:{s:14:\"\0*\0permissions\";a:18:{i:1;s:3:\"108\";i:2;s:2:\"43\";i:3;s:3:\"120\";i:4;s:2:\"45\";i:5;s:2:\"46\";i:6;s:2:\"47\";i:7;s:2:\"48\";i:8;s:2:\"50\";i:9;s:2:\"51\";i:10;s:2:\"52\";i:11;s:2:\"53\";i:12;s:2:\"54\";i:13;s:2:\"55\";i:14;s:2:\"56\";i:15;s:2:\"57\";i:16;s:2:\"58\";i:17;s:2:\"59\";i:18;s:2:\"49\";}s:19:\"\0*\0pkCategoryHandle\";s:4:\"page\";}s:4:\"wrID\";s:2:\"83\";}'),(87,84,'2015-09-23 13:38:39','O:59:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:1:\"2\";s:13:\"permissionSet\";O:28:\"Concrete\\Core\\Permission\\Set\":2:{s:14:\"\0*\0permissions\";a:18:{i:1;s:3:\"110\";i:2;s:1:\"0\";i:3;s:3:\"121\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:1:\"0\";i:7;s:1:\"0\";i:8;s:1:\"0\";i:9;s:1:\"0\";i:10;s:1:\"0\";i:11;s:1:\"0\";i:12;s:1:\"0\";i:13;s:1:\"0\";i:14;s:1:\"0\";i:15;s:1:\"0\";i:16;s:1:\"0\";i:17;s:1:\"0\";i:18;s:1:\"0\";}s:19:\"\0*\0pkCategoryHandle\";s:4:\"page\";}s:4:\"wrID\";s:2:\"84\";}'),(88,85,'2015-09-23 13:39:20','O:59:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:1:\"2\";s:13:\"permissionSet\";O:28:\"Concrete\\Core\\Permission\\Set\":2:{s:14:\"\0*\0permissions\";a:18:{i:1;s:3:\"110\";i:2;s:1:\"0\";i:3;s:3:\"122\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:1:\"0\";i:7;s:1:\"0\";i:8;s:1:\"0\";i:9;s:1:\"0\";i:10;s:1:\"0\";i:11;s:1:\"0\";i:12;s:1:\"0\";i:13;s:1:\"0\";i:14;s:1:\"0\";i:15;s:1:\"0\";i:16;s:1:\"0\";i:17;s:1:\"0\";i:18;s:1:\"0\";}s:19:\"\0*\0pkCategoryHandle\";s:4:\"page\";}s:4:\"wrID\";s:2:\"85\";}'),(89,86,'2015-09-23 13:54:06','O:70:\"Concrete\\Core\\Workflow\\Request\\ChangeSubpageDefaultsInheritanceRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:3:\"165\";s:11:\"inheritance\";s:1:\"0\";s:4:\"wrID\";s:2:\"86\";}'),(90,87,'2015-09-23 13:55:48','O:70:\"Concrete\\Core\\Workflow\\Request\\ChangeSubpageDefaultsInheritanceRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:3:\"165\";s:11:\"inheritance\";s:1:\"1\";s:4:\"wrID\";s:2:\"87\";}'),(91,88,'2015-09-23 13:55:53','O:70:\"Concrete\\Core\\Workflow\\Request\\ChangeSubpageDefaultsInheritanceRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:3:\"165\";s:11:\"inheritance\";s:1:\"0\";s:4:\"wrID\";s:2:\"88\";}'),(92,89,'2015-09-23 13:56:05','O:70:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsInheritanceRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:3:\"165\";s:11:\"inheritance\";s:8:\"OVERRIDE\";s:4:\"wrID\";s:2:\"89\";}'),(93,90,'2015-09-23 13:56:42','O:70:\"Concrete\\Core\\Workflow\\Request\\ChangeSubpageDefaultsInheritanceRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:3:\"165\";s:11:\"inheritance\";s:1:\"1\";s:4:\"wrID\";s:2:\"90\";}'),(94,91,'2015-09-23 13:56:47','O:70:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsInheritanceRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:3:\"165\";s:11:\"inheritance\";s:8:\"TEMPLATE\";s:4:\"wrID\";s:2:\"91\";}'),(95,92,'2015-09-23 13:56:57','O:59:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:3:\"165\";s:13:\"permissionSet\";O:28:\"Concrete\\Core\\Permission\\Set\":2:{s:14:\"\0*\0permissions\";a:18:{i:1;s:1:\"0\";i:2;s:1:\"0\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:1:\"0\";i:7;s:1:\"0\";i:8;s:1:\"0\";i:9;s:1:\"0\";i:10;s:1:\"0\";i:11;s:1:\"0\";i:12;s:1:\"0\";i:13;s:1:\"0\";i:14;s:1:\"0\";i:15;s:1:\"0\";i:16;s:1:\"0\";i:17;s:1:\"0\";i:18;s:1:\"0\";}s:19:\"\0*\0pkCategoryHandle\";s:4:\"page\";}s:4:\"wrID\";s:2:\"92\";}'),(96,93,'2015-09-23 13:59:04','O:70:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsInheritanceRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:3:\"165\";s:11:\"inheritance\";s:6:\"PARENT\";s:4:\"wrID\";s:2:\"93\";}'),(97,94,'2015-09-23 13:59:06','O:70:\"Concrete\\Core\\Workflow\\Request\\ChangeSubpageDefaultsInheritanceRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:3:\"165\";s:11:\"inheritance\";s:1:\"0\";s:4:\"wrID\";s:2:\"94\";}'),(98,95,'2015-09-23 14:00:05','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"184\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"95\";}'),(99,96,'2015-09-23 14:00:37','O:70:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsInheritanceRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:3:\"178\";s:11:\"inheritance\";s:8:\"TEMPLATE\";s:4:\"wrID\";s:2:\"96\";}'),(100,97,'2015-09-23 14:02:04','O:48:\"Concrete\\Core\\Workflow\\Request\\DeletePageRequest\":7:{s:14:\"\0*\0wrStatusNum\";i:100;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"184\";s:4:\"wrID\";s:2:\"97\";}'),(101,98,'2015-09-23 14:08:45','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"178\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:2:\"98\";}'),(102,99,'2015-09-23 14:18:57','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"178\";s:4:\"cvID\";s:1:\"4\";s:4:\"wrID\";s:2:\"99\";}'),(103,100,'2015-09-23 14:21:23','O:59:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:3:\"128\";s:13:\"permissionSet\";O:28:\"Concrete\\Core\\Permission\\Set\":2:{s:14:\"\0*\0permissions\";a:18:{i:1;s:2:\"63\";i:2;s:3:\"142\";i:3;s:2:\"65\";i:4;s:2:\"66\";i:5;s:3:\"142\";i:6;s:3:\"142\";i:7;s:2:\"69\";i:8;s:2:\"70\";i:9;s:3:\"142\";i:10;s:3:\"142\";i:11;s:2:\"73\";i:12;s:3:\"142\";i:13;s:3:\"142\";i:14;s:3:\"142\";i:15;s:2:\"77\";i:16;s:2:\"78\";i:17;s:2:\"79\";i:18;s:1:\"0\";}s:19:\"\0*\0pkCategoryHandle\";s:4:\"page\";}s:4:\"wrID\";s:3:\"100\";}'),(104,101,'2015-09-23 14:21:47','O:48:\"Concrete\\Core\\Workflow\\Request\\DeletePageRequest\":7:{s:14:\"\0*\0wrStatusNum\";i:100;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"185\";s:4:\"wrID\";s:3:\"101\";}'),(105,102,'2015-09-23 14:23:51','O:70:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsInheritanceRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:3:\"165\";s:11:\"inheritance\";s:8:\"OVERRIDE\";s:4:\"wrID\";s:3:\"102\";}'),(106,103,'2015-09-23 14:24:07','O:59:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:3:\"165\";s:13:\"permissionSet\";O:28:\"Concrete\\Core\\Permission\\Set\":2:{s:14:\"\0*\0permissions\";a:18:{i:1;s:3:\"108\";i:2;s:2:\"43\";i:3;s:3:\"120\";i:4;s:2:\"45\";i:5;s:2:\"46\";i:6;s:2:\"47\";i:7;s:2:\"48\";i:8;s:2:\"50\";i:9;s:2:\"51\";i:10;s:2:\"52\";i:11;s:2:\"53\";i:12;s:2:\"54\";i:13;s:2:\"55\";i:14;s:2:\"56\";i:15;s:3:\"143\";i:16;s:2:\"58\";i:17;s:2:\"59\";i:18;s:2:\"49\";}s:19:\"\0*\0pkCategoryHandle\";s:4:\"page\";}s:4:\"wrID\";s:3:\"103\";}'),(107,104,'2015-09-23 14:24:24','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"2\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"186\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:3:\"104\";}'),(108,105,'2015-09-23 14:25:18','O:48:\"Concrete\\Core\\Workflow\\Request\\DeletePageRequest\":7:{s:14:\"\0*\0wrStatusNum\";i:100;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"2\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"187\";s:4:\"wrID\";s:3:\"105\";}'),(109,106,'2015-09-23 14:25:27','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"2\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"186\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:3:\"106\";}'),(110,107,'2015-09-23 14:30:36','O:48:\"Concrete\\Core\\Workflow\\Request\\DeletePageRequest\":7:{s:14:\"\0*\0wrStatusNum\";i:100;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"2\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"186\";s:4:\"wrID\";s:3:\"107\";}'),(111,108,'2015-09-23 14:49:05','O:70:\"Concrete\\Core\\Workflow\\Request\\ChangeSubpageDefaultsInheritanceRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:3:\"171\";s:11:\"inheritance\";s:1:\"0\";s:4:\"wrID\";s:3:\"108\";}'),(112,109,'2015-09-23 14:49:14','O:70:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsInheritanceRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:3:\"171\";s:11:\"inheritance\";s:8:\"OVERRIDE\";s:4:\"wrID\";s:3:\"109\";}'),(113,110,'2015-09-23 14:49:30','O:59:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:3:\"171\";s:13:\"permissionSet\";O:28:\"Concrete\\Core\\Permission\\Set\":2:{s:14:\"\0*\0permissions\";a:18:{i:1;s:3:\"108\";i:2;s:2:\"43\";i:3;s:3:\"120\";i:4;s:2:\"45\";i:5;s:2:\"46\";i:6;s:2:\"47\";i:7;s:2:\"48\";i:8;s:2:\"50\";i:9;s:2:\"51\";i:10;s:2:\"52\";i:11;s:2:\"53\";i:12;s:2:\"54\";i:13;s:2:\"55\";i:14;s:2:\"56\";i:15;s:3:\"120\";i:16;s:2:\"58\";i:17;s:2:\"59\";i:18;s:2:\"49\";}s:19:\"\0*\0pkCategoryHandle\";s:4:\"page\";}s:4:\"wrID\";s:3:\"110\";}'),(114,111,'2015-09-23 14:50:33','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"2\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"188\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:3:\"111\";}'),(115,112,'2015-09-23 14:52:54','O:59:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:1:\"1\";s:13:\"permissionSet\";O:28:\"Concrete\\Core\\Permission\\Set\":2:{s:14:\"\0*\0permissions\";a:18:{i:1;s:3:\"108\";i:2;s:2:\"43\";i:3;s:3:\"160\";i:4;s:2:\"45\";i:5;s:2:\"46\";i:6;s:2:\"47\";i:7;s:2:\"48\";i:8;s:2:\"50\";i:9;s:2:\"51\";i:10;s:2:\"52\";i:11;s:2:\"53\";i:12;s:2:\"54\";i:13;s:2:\"55\";i:14;s:2:\"56\";i:15;s:2:\"57\";i:16;s:2:\"58\";i:17;s:2:\"59\";i:18;s:2:\"49\";}s:19:\"\0*\0pkCategoryHandle\";s:4:\"page\";}s:4:\"wrID\";s:3:\"112\";}'),(116,113,'2015-09-23 14:53:18','O:59:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:3:\"165\";s:13:\"permissionSet\";O:28:\"Concrete\\Core\\Permission\\Set\":2:{s:14:\"\0*\0permissions\";a:18:{i:1;s:3:\"108\";i:2;s:2:\"43\";i:3;s:3:\"161\";i:4;s:2:\"45\";i:5;s:2:\"46\";i:6;s:2:\"47\";i:7;s:2:\"48\";i:8;s:2:\"50\";i:9;s:2:\"51\";i:10;s:2:\"52\";i:11;s:2:\"53\";i:12;s:2:\"54\";i:13;s:2:\"55\";i:14;s:2:\"56\";i:15;s:3:\"143\";i:16;s:2:\"58\";i:17;s:2:\"59\";i:18;s:2:\"49\";}s:19:\"\0*\0pkCategoryHandle\";s:4:\"page\";}s:4:\"wrID\";s:3:\"113\";}'),(117,114,'2015-09-23 14:53:38','O:59:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:3:\"171\";s:13:\"permissionSet\";O:28:\"Concrete\\Core\\Permission\\Set\":2:{s:14:\"\0*\0permissions\";a:18:{i:1;s:3:\"108\";i:2;s:2:\"43\";i:3;s:3:\"162\";i:4;s:2:\"45\";i:5;s:2:\"46\";i:6;s:2:\"47\";i:7;s:2:\"48\";i:8;s:2:\"50\";i:9;s:2:\"51\";i:10;s:2:\"52\";i:11;s:2:\"53\";i:12;s:2:\"54\";i:13;s:2:\"55\";i:14;s:2:\"56\";i:15;s:3:\"120\";i:16;s:2:\"58\";i:17;s:2:\"59\";i:18;s:2:\"49\";}s:19:\"\0*\0pkCategoryHandle\";s:4:\"page\";}s:4:\"wrID\";s:3:\"114\";}'),(118,115,'2015-09-23 14:54:20','O:70:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsInheritanceRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:3:\"174\";s:11:\"inheritance\";s:8:\"OVERRIDE\";s:4:\"wrID\";s:3:\"115\";}'),(119,116,'2015-09-23 14:54:36','O:70:\"Concrete\\Core\\Workflow\\Request\\ChangeSubpageDefaultsInheritanceRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:3:\"174\";s:11:\"inheritance\";s:1:\"0\";s:4:\"wrID\";s:3:\"116\";}'),(120,117,'2015-09-23 14:54:38','O:59:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:3:\"174\";s:13:\"permissionSet\";O:28:\"Concrete\\Core\\Permission\\Set\":2:{s:14:\"\0*\0permissions\";a:18:{i:1;s:3:\"108\";i:2;s:2:\"43\";i:3;s:3:\"160\";i:4;s:2:\"45\";i:5;s:2:\"46\";i:6;s:2:\"47\";i:7;s:2:\"48\";i:8;s:2:\"50\";i:9;s:2:\"51\";i:10;s:2:\"52\";i:11;s:2:\"53\";i:12;s:2:\"54\";i:13;s:2:\"55\";i:14;s:2:\"56\";i:15;s:2:\"57\";i:16;s:2:\"58\";i:17;s:2:\"59\";i:18;s:2:\"49\";}s:19:\"\0*\0pkCategoryHandle\";s:4:\"page\";}s:4:\"wrID\";s:3:\"117\";}'),(121,118,'2015-09-23 14:54:56','O:70:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsInheritanceRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:3:\"183\";s:11:\"inheritance\";s:8:\"TEMPLATE\";s:4:\"wrID\";s:3:\"118\";}'),(122,119,'2015-09-23 14:54:59','O:70:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsInheritanceRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:3:\"183\";s:11:\"inheritance\";s:9:\"undefined\";s:4:\"wrID\";s:3:\"119\";}'),(123,120,'2015-09-23 14:55:10','O:70:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsInheritanceRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:3:\"183\";s:11:\"inheritance\";s:8:\"TEMPLATE\";s:4:\"wrID\";s:3:\"120\";}'),(124,121,'2015-09-23 14:55:18','O:59:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:3:\"183\";s:13:\"permissionSet\";O:28:\"Concrete\\Core\\Permission\\Set\":2:{s:14:\"\0*\0permissions\";a:18:{i:1;s:3:\"158\";i:2;s:1:\"9\";i:3;s:3:\"157\";i:4;s:3:\"157\";i:5;s:3:\"157\";i:6;s:3:\"157\";i:7;s:3:\"157\";i:8;s:1:\"9\";i:9;s:1:\"9\";i:10;s:1:\"9\";i:11;s:1:\"9\";i:12;s:3:\"157\";i:13;s:1:\"9\";i:14;s:3:\"157\";i:15;s:3:\"157\";i:16;s:3:\"157\";i:17;s:1:\"9\";i:18;s:3:\"157\";}s:19:\"\0*\0pkCategoryHandle\";s:4:\"page\";}s:4:\"wrID\";s:3:\"121\";}'),(125,122,'2015-09-23 14:55:49','O:59:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:3:\"128\";s:13:\"permissionSet\";O:28:\"Concrete\\Core\\Permission\\Set\":2:{s:14:\"\0*\0permissions\";a:18:{i:1;s:2:\"63\";i:2;s:3:\"165\";i:3;s:2:\"65\";i:4;s:2:\"66\";i:5;s:3:\"165\";i:6;s:3:\"165\";i:7;s:2:\"69\";i:8;s:2:\"70\";i:9;s:3:\"165\";i:10;s:3:\"165\";i:11;s:2:\"73\";i:12;s:3:\"165\";i:13;s:3:\"165\";i:14;s:3:\"165\";i:15;s:2:\"77\";i:16;s:2:\"78\";i:17;s:2:\"79\";i:18;s:1:\"0\";}s:19:\"\0*\0pkCategoryHandle\";s:4:\"page\";}s:4:\"wrID\";s:3:\"122\";}'),(126,123,'2015-09-23 14:57:50','O:59:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:1:\"2\";s:13:\"permissionSet\";O:28:\"Concrete\\Core\\Permission\\Set\":2:{s:14:\"\0*\0permissions\";a:18:{i:1;s:3:\"169\";i:2;s:1:\"0\";i:3;s:3:\"122\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:1:\"0\";i:7;s:1:\"0\";i:8;s:1:\"0\";i:9;s:1:\"0\";i:10;s:1:\"0\";i:11;s:1:\"0\";i:12;s:1:\"0\";i:13;s:1:\"0\";i:14;s:1:\"0\";i:15;s:1:\"0\";i:16;s:1:\"0\";i:17;s:1:\"0\";i:18;s:1:\"0\";}s:19:\"\0*\0pkCategoryHandle\";s:4:\"page\";}s:4:\"wrID\";s:3:\"123\";}'),(127,124,'2015-09-23 14:59:49','O:59:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:3:\"174\";s:13:\"permissionSet\";O:28:\"Concrete\\Core\\Permission\\Set\":2:{s:14:\"\0*\0permissions\";a:18:{i:1;s:3:\"108\";i:2;s:2:\"43\";i:3;s:3:\"160\";i:4;s:2:\"45\";i:5;s:2:\"46\";i:6;s:2:\"47\";i:7;s:2:\"48\";i:8;s:2:\"50\";i:9;s:2:\"51\";i:10;s:2:\"52\";i:11;s:2:\"53\";i:12;s:2:\"54\";i:13;s:2:\"55\";i:14;s:2:\"56\";i:15;s:3:\"170\";i:16;s:2:\"58\";i:17;s:2:\"59\";i:18;s:2:\"49\";}s:19:\"\0*\0pkCategoryHandle\";s:4:\"page\";}s:4:\"wrID\";s:3:\"124\";}'),(128,125,'2015-09-23 14:59:57','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"3\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"189\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:3:\"125\";}'),(129,126,'2015-09-23 15:01:27','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"3\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"189\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:3:\"126\";}'),(130,127,'2015-09-23 15:07:29','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"190\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:3:\"127\";}'),(131,128,'2015-09-23 15:09:58','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"190\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:3:\"128\";}'),(132,129,'2015-09-23 15:11:54','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"190\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:3:\"129\";}'),(133,130,'2015-09-23 15:12:46','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"190\";s:4:\"cvID\";s:1:\"4\";s:4:\"wrID\";s:3:\"130\";}'),(134,131,'2015-09-23 15:13:51','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"25\";s:4:\"wrID\";s:3:\"131\";}'),(135,132,'2015-09-23 15:14:52','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"183\";s:4:\"cvID\";s:1:\"5\";s:4:\"wrID\";s:3:\"132\";}'),(136,133,'2015-09-23 15:18:33','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"188\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:3:\"133\";}'),(137,134,'2015-09-23 15:43:40','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"189\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:3:\"134\";}'),(138,135,'2015-10-05 13:28:17','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"173\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:3:\"135\";}'),(139,136,'2015-10-05 13:28:50','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"26\";s:4:\"wrID\";s:3:\"136\";}'),(140,137,'2015-10-08 09:43:11','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"27\";s:4:\"wrID\";s:3:\"137\";}'),(141,138,'2015-10-08 09:43:36','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"28\";s:4:\"wrID\";s:3:\"138\";}'),(142,139,'2015-10-08 17:31:44','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"29\";s:4:\"wrID\";s:3:\"139\";}');
/*!40000 ALTER TABLE `WorkflowProgressHistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WorkflowRequestObjects`
--

DROP TABLE IF EXISTS `WorkflowRequestObjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WorkflowRequestObjects` (
  `wrID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wrObject` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`wrID`)
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WorkflowRequestObjects`
--

LOCK TABLES `WorkflowRequestObjects` WRITE;
/*!40000 ALTER TABLE `WorkflowRequestObjects` DISABLE KEYS */;
/*!40000 ALTER TABLE `WorkflowRequestObjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WorkflowTypes`
--

DROP TABLE IF EXISTS `WorkflowTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WorkflowTypes` (
  `wftID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wftHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `wftName` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`wftID`),
  UNIQUE KEY `wftHandle` (`wftHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WorkflowTypes`
--

LOCK TABLES `WorkflowTypes` WRITE;
/*!40000 ALTER TABLE `WorkflowTypes` DISABLE KEYS */;
INSERT INTO `WorkflowTypes` VALUES (1,'basic','Basic Workflow',0);
/*!40000 ALTER TABLE `WorkflowTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Workflows`
--

DROP TABLE IF EXISTS `Workflows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Workflows` (
  `wfID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wfName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `wftID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`wfID`),
  UNIQUE KEY `wfName` (`wfName`),
  KEY `wftID` (`wftID`,`wfID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Workflows`
--

LOCK TABLES `Workflows` WRITE;
/*!40000 ALTER TABLE `Workflows` DISABLE KEYS */;
/*!40000 ALTER TABLE `Workflows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atAddress`
--

DROP TABLE IF EXISTS `atAddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atAddress` (
  `avID` int(10) unsigned NOT NULL DEFAULT '0',
  `address1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state_province` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atAddress`
--

LOCK TABLES `atAddress` WRITE;
/*!40000 ALTER TABLE `atAddress` DISABLE KEYS */;
/*!40000 ALTER TABLE `atAddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atAddressCustomCountries`
--

DROP TABLE IF EXISTS `atAddressCustomCountries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atAddressCustomCountries` (
  `atAddressCustomCountryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `country` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`atAddressCustomCountryID`),
  KEY `akID` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atAddressCustomCountries`
--

LOCK TABLES `atAddressCustomCountries` WRITE;
/*!40000 ALTER TABLE `atAddressCustomCountries` DISABLE KEYS */;
/*!40000 ALTER TABLE `atAddressCustomCountries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atAddressSettings`
--

DROP TABLE IF EXISTS `atAddressSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atAddressSettings` (
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `akHasCustomCountries` tinyint(1) NOT NULL DEFAULT '0',
  `akDefaultCountry` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atAddressSettings`
--

LOCK TABLES `atAddressSettings` WRITE;
/*!40000 ALTER TABLE `atAddressSettings` DISABLE KEYS */;
/*!40000 ALTER TABLE `atAddressSettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atBoolean`
--

DROP TABLE IF EXISTS `atBoolean`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atBoolean` (
  `avID` int(10) unsigned NOT NULL,
  `value` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atBoolean`
--

LOCK TABLES `atBoolean` WRITE;
/*!40000 ALTER TABLE `atBoolean` DISABLE KEYS */;
INSERT INTO `atBoolean` VALUES (9,1),(16,1),(18,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(42,1),(43,1),(47,1),(51,1),(98,1),(106,1),(107,1),(108,1),(120,0),(121,0),(122,1),(123,0),(124,0),(125,0),(126,0),(127,0),(128,0),(129,0),(130,0),(131,0),(132,0),(133,1),(156,1),(169,1),(170,1),(171,1),(172,1),(185,0);
/*!40000 ALTER TABLE `atBoolean` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atBooleanSettings`
--

DROP TABLE IF EXISTS `atBooleanSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atBooleanSettings` (
  `akID` int(10) unsigned NOT NULL,
  `akCheckedByDefault` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atBooleanSettings`
--

LOCK TABLES `atBooleanSettings` WRITE;
/*!40000 ALTER TABLE `atBooleanSettings` DISABLE KEYS */;
INSERT INTO `atBooleanSettings` VALUES (5,0),(6,0),(9,0),(10,0),(11,0),(12,1),(13,1);
/*!40000 ALTER TABLE `atBooleanSettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atDateTime`
--

DROP TABLE IF EXISTS `atDateTime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atDateTime` (
  `avID` int(10) unsigned NOT NULL,
  `value` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atDateTime`
--

LOCK TABLES `atDateTime` WRITE;
/*!40000 ALTER TABLE `atDateTime` DISABLE KEYS */;
/*!40000 ALTER TABLE `atDateTime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atDateTimeSettings`
--

DROP TABLE IF EXISTS `atDateTimeSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atDateTimeSettings` (
  `akID` int(10) unsigned NOT NULL,
  `akDateDisplayMode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atDateTimeSettings`
--

LOCK TABLES `atDateTimeSettings` WRITE;
/*!40000 ALTER TABLE `atDateTimeSettings` DISABLE KEYS */;
/*!40000 ALTER TABLE `atDateTimeSettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atDefault`
--

DROP TABLE IF EXISTS `atDefault`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atDefault` (
  `avID` int(10) unsigned NOT NULL,
  `value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atDefault`
--

LOCK TABLES `atDefault` WRITE;
/*!40000 ALTER TABLE `atDefault` DISABLE KEYS */;
INSERT INTO `atDefault` VALUES (1,'fa fa-th-large'),(2,'pages, add page, delete page, copy, move, alias'),(3,'pages, add page, delete page, copy, move, alias'),(4,'pages, add page, delete page, copy, move, alias, bulk'),(5,'find page, search page, search, find, pages, sitemap'),(6,'add file, delete file, copy, move, alias, resize, crop, rename, images, title, attribute'),(7,'file, file attributes, title, attribute, description, rename'),(8,'files, category, categories'),(10,'new file set'),(11,'users, groups, people, find, delete user, remove user, change password, password'),(12,'find, search, people, delete user, remove user, change password, password'),(13,'user, group, people, permissions, expire, badges'),(14,'user attributes, user data, gather data, registration data'),(15,'new user, create'),(17,'new user group, new group, group, create'),(19,'group set'),(20,'community, points, karma'),(21,'action, community actions'),(22,'forms, log, error, email, mysql, exception, survey'),(23,'forms, questions, response, data'),(24,'questions, quiz, response'),(25,'forms, log, error, email, mysql, exception, survey, history'),(26,'new theme, theme, active theme, change theme, template, css'),(27,'page types'),(36,'page attributes, custom'),(37,'single, page, custom, application'),(38,'atom, rss, feed, syndication'),(39,'icon-bullhorn'),(40,'add workflow, remove workflow'),(41,'stacks, reusable content, scrapbook, copy, paste, paste block, copy block, site name, logo'),(44,'edit stacks, view stacks, all stacks'),(45,'block, refresh, custom'),(46,'add-on, addon, add on, package, app, ecommerce, discussions, forums, themes, templates, blocks'),(48,'add-on, addon, ecommerce, install, discussions, forums, themes, templates, blocks'),(49,'update, upgrade'),(50,'concrete5.org, my account, marketplace'),(52,'buy theme, new theme, marketplace, template'),(53,'buy addon, buy add on, buy add-on, purchase addon, purchase add on, purchase add-on, find addon, new addon, marketplace'),(54,'dashboard, configuration'),(55,'website name, title'),(56,'accessibility, easy mode'),(57,'sharing, facebook, twitter'),(58,'logo, favicon, iphone, icon, bookmark'),(59,'tinymce, content block, fonts, editor, content, overlay'),(60,'translate, translation, internationalization, multilingual'),(61,'timezone, profile, locale'),(62,'multilingual, localization, internationalization, i18n'),(63,'vanity, pretty url, redirection, hostname, canonical, seo, pageview, view'),(64,'bulk, seo, change keywords, engine, optimization, search'),(65,'traffic, statistics, google analytics, quant, pageviews, hits'),(66,'pretty, slug'),(67,'configure search, site search, search option'),(68,'file options, file manager, upload, modify'),(69,'security, files, media, extension, manager, upload'),(70,'images, picture, responsive, retina'),(71,'security, alternate storage, hide files'),(72,'cache option, change cache, override, turn on cache, turn off cache, no cache, page cache, caching'),(73,'cache option, turn off cache, no cache, page cache, caching'),(74,'index search, reindex search, build sitemap, sitemap.xml, clear old versions, page versions, remove old'),(75,'queries, database, mysql'),(76,'editors, hide site, offline, private, public, access'),(77,'security, actions, administrator, admin, package, marketplace, search'),(78,'security, lock ip, lock out, block ip, address, restrict, access'),(79,'security, registration'),(80,'antispam, block spam, security'),(81,'lock site, under construction, hide, hidden'),(82,'profile, login, redirect, specific, dashboard, administrators'),(83,'member profile, member page, community, forums, social, avatar'),(84,'signup, new user, community, public registration, public, registration'),(85,'auth, authentication, types, oauth, facebook, login, registration'),(86,'smtp, mail settings'),(87,'email server, mail settings, mail configuration, external, internal'),(88,'test smtp, test mail'),(89,'email server, mail settings, mail configuration, private message, message system, import, email, message'),(90,'conversations'),(91,'conversations'),(92,'conversations ratings, ratings, community, community points'),(93,'conversations bad words, banned words, banned, bad words, bad, words, list'),(94,'attribute configuration'),(95,'attributes, sets'),(96,'attributes, types'),(97,'topics, tags, taxonomy'),(99,'overrides, system info, debug, support, help'),(100,'errors, exceptions, develop, support, help'),(101,'email, logging, logs, smtp, pop, errors, mysql, log'),(102,'network, proxy server'),(103,'database, entities, doctrine, orm'),(104,'export, backup, database, sql, mysql, encryption, restore'),(105,'upgrade, new version, update'),(109,'fa fa-edit'),(110,'fa fa-trash-o'),(111,'fa fa-th'),(112,'fa fa-briefcase'),(117,''),(118,''),(119,'');
/*!40000 ALTER TABLE `atDefault` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atFile`
--

DROP TABLE IF EXISTS `atFile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atFile` (
  `avID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`avID`),
  KEY `fID` (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atFile`
--

LOCK TABLES `atFile` WRITE;
/*!40000 ALTER TABLE `atFile` DISABLE KEYS */;
INSERT INTO `atFile` VALUES (176,0),(177,0),(178,0),(179,0),(180,0),(182,0),(183,0),(181,4),(184,4),(158,5),(159,5),(164,5),(174,5),(175,5),(157,6),(160,6),(161,6),(162,6),(163,6),(173,13);
/*!40000 ALTER TABLE `atFile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atNumber`
--

DROP TABLE IF EXISTS `atNumber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atNumber` (
  `avID` int(10) unsigned NOT NULL,
  `value` decimal(14,4) DEFAULT '0.0000',
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atNumber`
--

LOCK TABLES `atNumber` WRITE;
/*!40000 ALTER TABLE `atNumber` DISABLE KEYS */;
INSERT INTO `atNumber` VALUES (113,'400.0000'),(114,'140.0000'),(115,'244.0000'),(116,'95.0000'),(134,'1000.0000'),(135,'672.0000'),(136,'1000.0000'),(137,'672.0000'),(138,'1000.0000'),(139,'672.0000'),(140,'1000.0000'),(141,'672.0000'),(142,'1600.0000'),(143,'1130.0000'),(144,'1000.0000'),(145,'672.0000'),(146,'1000.0000'),(147,'672.0000'),(148,'1000.0000'),(149,'300.0000'),(150,'1000.0000'),(151,'300.0000'),(152,'450.0000'),(153,'200.0000'),(154,'300.0000'),(155,'64.0000'),(165,'2072.0000'),(166,'1242.0000'),(167,'700.0000'),(168,'150.0000');
/*!40000 ALTER TABLE `atNumber` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atSelectOptions`
--

DROP TABLE IF EXISTS `atSelectOptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atSelectOptions` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akID` int(10) unsigned DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayOrder` int(10) unsigned DEFAULT NULL,
  `isEndUserAdded` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `akID` (`akID`,`displayOrder`),
  KEY `value` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atSelectOptions`
--

LOCK TABLES `atSelectOptions` WRITE;
/*!40000 ALTER TABLE `atSelectOptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `atSelectOptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atSelectOptionsSelected`
--

DROP TABLE IF EXISTS `atSelectOptionsSelected`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atSelectOptionsSelected` (
  `avID` int(10) unsigned NOT NULL,
  `atSelectOptionID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`avID`,`atSelectOptionID`),
  KEY `atSelectOptionID` (`atSelectOptionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atSelectOptionsSelected`
--

LOCK TABLES `atSelectOptionsSelected` WRITE;
/*!40000 ALTER TABLE `atSelectOptionsSelected` DISABLE KEYS */;
/*!40000 ALTER TABLE `atSelectOptionsSelected` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atSelectSettings`
--

DROP TABLE IF EXISTS `atSelectSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atSelectSettings` (
  `akID` int(10) unsigned NOT NULL,
  `akSelectAllowMultipleValues` tinyint(1) NOT NULL DEFAULT '0',
  `akSelectOptionDisplayOrder` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'display_asc',
  `akSelectAllowOtherValues` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atSelectSettings`
--

LOCK TABLES `atSelectSettings` WRITE;
/*!40000 ALTER TABLE `atSelectSettings` DISABLE KEYS */;
INSERT INTO `atSelectSettings` VALUES (8,1,'display_asc',1);
/*!40000 ALTER TABLE `atSelectSettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atSelectedTopics`
--

DROP TABLE IF EXISTS `atSelectedTopics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atSelectedTopics` (
  `avID` int(10) unsigned NOT NULL,
  `TopicNodeID` int(11) NOT NULL,
  PRIMARY KEY (`avID`,`TopicNodeID`),
  KEY `TopicNodeID` (`TopicNodeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atSelectedTopics`
--

LOCK TABLES `atSelectedTopics` WRITE;
/*!40000 ALTER TABLE `atSelectedTopics` DISABLE KEYS */;
/*!40000 ALTER TABLE `atSelectedTopics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atSocialLinks`
--

DROP TABLE IF EXISTS `atSocialLinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atSocialLinks` (
  `avsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `avID` int(10) unsigned NOT NULL DEFAULT '0',
  `service` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `serviceInfo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`avsID`),
  KEY `avID` (`avID`,`avsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atSocialLinks`
--

LOCK TABLES `atSocialLinks` WRITE;
/*!40000 ALTER TABLE `atSocialLinks` DISABLE KEYS */;
/*!40000 ALTER TABLE `atSocialLinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atTextareaSettings`
--

DROP TABLE IF EXISTS `atTextareaSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atTextareaSettings` (
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `akTextareaDisplayMode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `akTextareaDisplayModeCustomOptions` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atTextareaSettings`
--

LOCK TABLES `atTextareaSettings` WRITE;
/*!40000 ALTER TABLE `atTextareaSettings` DISABLE KEYS */;
INSERT INTO `atTextareaSettings` VALUES (2,'',''),(3,'',''),(4,'',''),(7,'','');
/*!40000 ALTER TABLE `atTextareaSettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atTopicSettings`
--

DROP TABLE IF EXISTS `atTopicSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atTopicSettings` (
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `akTopicParentNodeID` int(11) DEFAULT NULL,
  `akTopicTreeID` int(11) DEFAULT NULL,
  PRIMARY KEY (`akID`),
  KEY `akTopicTreeID` (`akTopicTreeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atTopicSettings`
--

LOCK TABLES `atTopicSettings` WRITE;
/*!40000 ALTER TABLE `atTopicSettings` DISABLE KEYS */;
/*!40000 ALTER TABLE `atTopicSettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authTypeConcreteCookieMap`
--

DROP TABLE IF EXISTS `authTypeConcreteCookieMap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authTypeConcreteCookieMap` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uID` int(11) DEFAULT NULL,
  `validThrough` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `token` (`token`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authTypeConcreteCookieMap`
--

LOCK TABLES `authTypeConcreteCookieMap` WRITE;
/*!40000 ALTER TABLE `authTypeConcreteCookieMap` DISABLE KEYS */;
INSERT INTO `authTypeConcreteCookieMap` VALUES (1,'6c523dad1385fe6ded30c712fbd1eabb',1,1445506978);
/*!40000 ALTER TABLE `authTypeConcreteCookieMap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btBoton`
--

DROP TABLE IF EXISTS `btBoton`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btBoton` (
  `bID` int(10) unsigned NOT NULL,
  `texto` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alineacion_icono` tinyint(1) DEFAULT '1',
  `externalLink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `internalLinkCID` int(10) unsigned DEFAULT '0',
  `target` smallint(5) unsigned DEFAULT '0',
  `tamanho_fuente` smallint(5) unsigned DEFAULT '12',
  `color_fuente` varchar(12) COLLATE utf8_unicode_ci DEFAULT '#FFF',
  `alineacion_fuente` tinyint(1) DEFAULT '1',
  `color_fondo` varchar(12) COLLATE utf8_unicode_ci DEFAULT '#428bca',
  `padding` smallint(5) unsigned DEFAULT '10',
  `ancho` varchar(5) COLLATE utf8_unicode_ci DEFAULT 'auto',
  `ancho_formato` varchar(2) COLLATE utf8_unicode_ci DEFAULT 'px',
  `alineacion_boton` tinyint(1) DEFAULT '1',
  `fID` int(10) unsigned DEFAULT NULL,
  `color_fuente_hover` varchar(12) COLLATE utf8_unicode_ci DEFAULT '#FFF',
  `color_fondo_hover` varchar(12) COLLATE utf8_unicode_ci DEFAULT '#5A9FdF',
  PRIMARY KEY (`bID`),
  KEY `fID` (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btBoton`
--

LOCK TABLES `btBoton` WRITE;
/*!40000 ALTER TABLE `btBoton` DISABLE KEYS */;
INSERT INTO `btBoton` VALUES (65,'Ver más','plus-square-o',1,'',165,0,20,'#c73b3b',0,'',5,'200','px',0,0,'#d95f5f','#5c5c5c'),(66,'Ver más','plus-square-o',1,'',165,0,20,'#c73b3b',0,'',5,'200','px',0,0,'#ffffff','#878787');
/*!40000 ALTER TABLE `btBoton` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btCalendario`
--

DROP TABLE IF EXISTS `btCalendario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btCalendario` (
  `bID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btCalendario`
--

LOCK TABLES `btCalendario` WRITE;
/*!40000 ALTER TABLE `btCalendario` DISABLE KEYS */;
INSERT INTO `btCalendario` VALUES (100),(101);
/*!40000 ALTER TABLE `btCalendario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btCalendarioEntries`
--

DROP TABLE IF EXISTS `btCalendarioEntries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btCalendarioEntries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned DEFAULT NULL,
  `titulo` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `horaInicio` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `horaFin` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `fecha` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lugar` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btCalendarioEntries`
--

LOCK TABLES `btCalendarioEntries` WRITE;
/*!40000 ALTER TABLE `btCalendarioEntries` DISABLE KEYS */;
INSERT INTO `btCalendarioEntries` VALUES (4,101,'Titulo del Evento','Presentación Concrete5.7.5.2','09:20','14:40','20150924','SENATICs');
/*!40000 ALTER TABLE `btCalendarioEntries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btContenidoArchivo`
--

DROP TABLE IF EXISTS `btContenidoArchivo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btContenidoArchivo` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT NULL,
  `fileLinkText` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fileTitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fileDescription` text COLLATE utf8_unicode_ci,
  `fileIcon` int(11) DEFAULT NULL,
  `filePassword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`),
  KEY `fID` (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btContenidoArchivo`
--

LOCK TABLES `btContenidoArchivo` WRITE;
/*!40000 ALTER TABLE `btContenidoArchivo` DISABLE KEYS */;
/*!40000 ALTER TABLE `btContenidoArchivo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btContentFile`
--

DROP TABLE IF EXISTS `btContentFile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btContentFile` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT NULL,
  `fileLinkText` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filePassword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `forceDownload` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`bID`),
  KEY `fID` (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btContentFile`
--

LOCK TABLES `btContentFile` WRITE;
/*!40000 ALTER TABLE `btContentFile` DISABLE KEYS */;
/*!40000 ALTER TABLE `btContentFile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btContentIframe`
--

DROP TABLE IF EXISTS `btContentIframe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btContentIframe` (
  `bID` int(10) unsigned NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  `maxHeight` int(10) unsigned DEFAULT '0',
  `externalLink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `internalLinkCID` int(10) unsigned DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btContentIframe`
--

LOCK TABLES `btContentIframe` WRITE;
/*!40000 ALTER TABLE `btContentIframe` DISABLE KEYS */;
/*!40000 ALTER TABLE `btContentIframe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btContentImage`
--

DROP TABLE IF EXISTS `btContentImage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btContentImage` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT '0',
  `fOnstateID` int(10) unsigned DEFAULT '0',
  `maxWidth` int(10) unsigned DEFAULT '0',
  `maxHeight` int(10) unsigned DEFAULT '0',
  `externalLink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `internalLinkCID` int(10) unsigned DEFAULT '0',
  `altText` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`),
  KEY `fID` (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btContentImage`
--

LOCK TABLES `btContentImage` WRITE;
/*!40000 ALTER TABLE `btContentImage` DISABLE KEYS */;
INSERT INTO `btContentImage` VALUES (11,1,0,0,0,'',0,'Logotipo.png',''),(17,2,0,0,0,'',0,'',''),(30,11,0,0,0,'http://www.paraguay.gov.py',0,'Portal Paraguay','Portal Paraguay'),(33,12,0,0,0,'',0,'',''),(99,13,0,0,0,'',0,'',''),(109,2,0,0,0,'',0,'',''),(167,1,0,0,0,'',1,'Logotipo.png','');
/*!40000 ALTER TABLE `btContentImage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btContentLocal`
--

DROP TABLE IF EXISTS `btContentLocal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btContentLocal` (
  `bID` int(10) unsigned NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btContentLocal`
--

LOCK TABLES `btContentLocal` WRITE;
/*!40000 ALTER TABLE `btContentLocal` DISABLE KEYS */;
INSERT INTO `btContentLocal` VALUES (1,'<div style=\"padding: 40px; text-align: center\"> <iframe width=\"853\" height=\"480\" src=\"//www.youtube.com/embed/VB-R71zk06U\" frameborder=\"0\" allowfullscreen></iframe>                                     </div>'),(10,NULL),(29,'<h3><i class=\"material-icons left medium\" style=\"margin-top:-10px\">description</i> Noticias</h3>'),(31,'<h5 class=\"white-text\">Enlaces de Interes</h5>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text\" href=\"#!\">Secretaría de Acción Social (SAS)</a></li>\r\n    <li><a class=\"white-text\" href=\"#!\">Fondo Nacional de la Cultura y las Artes (FONDEC)</a></li>\r\n    <li><a class=\"white-text\" href=\"#!\">Secretaría de Desarrollo para Repatriados y Refugiados Connacionales</a></li>\r\n    <li><a class=\"white-text\" href=\"#!\">Instituto Nacional de Desarrollo Rural y de la Tierra (INDERT)</a></li>\r\n  </ul>\r\n</div>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text\" href=\"#!\">Instituto Forestal Nacional (INFONA)</a></li>\r\n    <li><a class=\"white-text\" href=\"#!\">Secretaría de Información y Comunicación (SICOM)</a></li>\r\n    <li><a class=\"white-text\" href=\"#!\">Instituto Paraguayo del Indigena (INDI)</a></li>\r\n    <li><a class=\"white-text\" href=\"#!\">Ministerio de Industria y Comercio (MIC)</a></li>\r\n    <li><a class=\"white-text\" href=\"#!\">Ministerio de Hacienda (MH)</a></li>\r\n    <li><a class=\"white-text\" href=\"#!\">Secretaría Nacional de Deportes (SND)</a></li>\r\n  </ul>\r\n</div>'),(32,'<p>Portal construido conjuntamente con la <a href=\"http://www.senatics.gov.py\" target=\"_blank\">SENATICs</a>  </p>  <p>2015 Secretaría Nacional de Tecnologías de la Información y Comunicación  </p>'),(41,'<p><span style=\"font-size: 20px;\">Compartir esta noticia</span></p>'),(43,'<h5 style=\"text-align: center;\">Últimas Noticias Publicadas</h5>'),(53,'<p data-redactor-inserted-image=\"true\"><concrete-picture fID=\"8\" id=\"image-marker\" style=\"width: 894px; height: 265px; display: block; margin: auto;\" width=\"894\" height=\"265\" alt=\"\" /></p><p><strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.</p><p><br></p>'),(62,'<p><strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.</p><p>Es un hecho establecido hace demasiado tiempo que un lector se distraerá con el contenido del texto de un sitio mientras que mira su diseño. El punto de usar Lorem Ipsum es que tiene una distribución más o menos normal de las letras, al contrario de usar textos como por ejemplo \"Contenido aquí, contenido aquí\". Estos textos hacen parecerlo un español que se puede leer. Muchos paquetes de autoedición y editores de páginas web usan el Lorem Ipsum como su texto por defecto, y al hacer una búsqueda de \"Lorem Ipsum\" va a dar por resultado muchos sitios web que usan este texto si se encuentran en estado de desarrollo. Muchas versiones han evolucionado a través de los años, algunas veces por accidente, otras veces a propósito (por ejemplo insertándole humor y cosas por el estilo).</p><p>Al contrario del pensamiento popular, el texto de Lorem Ipsum no es simplemente texto aleatorio. Tiene sus raices en una pieza cl´sica de la literatura del Latin, que data del año 45 antes de Cristo, haciendo que este adquiera mas de 2000 años de antiguedad. Richard McClintock, un profesor de Latin de la Universidad de Hampden-Sydney en Virginia, encontró una de las palabras más oscuras de la lengua del latín, \"consecteur\", en un pasaje de Lorem Ipsum, y al seguir leyendo distintos textos del latín, descubrió la fuente indudable. Lorem Ipsum viene de las secciones 1.10.32 y 1.10.33 de \"de Finnibus Bonorum et Malorum\" (Los Extremos del Bien y El Mal) por Cicero, escrito en el año 45 antes de Cristo. Este libro es un tratado de teoría de éticas, muy popular durante el Renacimiento. La primera linea del Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", viene de una linea en la sección 1.10.32</p>'),(63,'<p><strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.</p><p>Es un hecho establecido hace demasiado tiempo que un lector se distraerá con el contenido del texto de un sitio mientras que mira su diseño. El punto de usar Lorem Ipsum es que tiene una distribución más o menos normal de las letras, al contrario de usar textos como por ejemplo \"Contenido aquí, contenido aquí\". Estos textos hacen parecerlo un español que se puede leer. Muchos paquetes de autoedición y editores de páginas web usan el Lorem Ipsum como su texto por defecto, y al hacer una búsqueda de \"Lorem Ipsum\" va a dar por resultado muchos sitios web que usan este texto si se encuentran en estado de desarrollo. Muchas versiones han evolucionado a través de los años, algunas veces por accidente, otras veces a propósito (por ejemplo insertándole humor y cosas por el estilo).</p><p>Al contrario del pensamiento popular, el texto de Lorem Ipsum no es simplemente texto aleatorio. Tiene sus raices en una pieza cl´sica de la literatura del Latin, que data del año 45 antes de Cristo, haciendo que este adquiera mas de 2000 años de antiguedad. Richard McClintock, un profesor de Latin de la Universidad de Hampden-Sydney en Virginia, encontró una de las palabras más oscuras de la lengua del latín, \"consecteur\", en un pasaje de Lorem Ipsum, y al seguir leyendo distintos textos del latín, descubrió la fuente indudable. Lorem Ipsum viene de las secciones 1.10.32 y 1.10.33 de \"de Finnibus Bonorum et Malorum\" (Los Extremos del Bien y El Mal) por Cicero, escrito en el año 45 antes de Cristo. Este libro es un tratado de teoría de éticas, muy popular durante el Renacimiento. La primera linea del Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", viene de una linea en la sección 1.10.32</p>'),(64,'<p data-redactor-inserted-image=\"true\"><concrete-picture fID=\"8\" id=\"image-marker\" style=\"width: 894px; height: 265px; display: block; margin: auto;\" width=\"894\" height=\"265\" alt=\"\" /></p><p><strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.</p><p><br></p>'),(67,'<div id=\"fb-root\"></div>\r\n<script>(function(d, s, id) {\r\n  var js, fjs = d.getElementsByTagName(s)[0];\r\n  if (d.getElementById(id)) return;\r\n  js = d.createElement(s); js.id = id;\r\n  js.src = \"//connect.facebook.net/es_LA/sdk.js#xfbml=1&version=v2.4\";\r\n  fjs.parentNode.insertBefore(js, fjs);\r\n}(document, \'script\', \'facebook-jssdk\'));</script>\r\n<div class=\"fb-page\" data-href=\"https://www.facebook.com/SENATICsPy\" data-small-header=\"true\" data-adapt-container-width=\"true\" data-hide-cover=\"true\" data-show-facepile=\"true\" data-show-posts=\"true\"><div class=\"fb-xfbml-parse-ignore\"><blockquote cite=\"https://www.facebook.com/SENATICsPy\"><a href=\"https://www.facebook.com/SENATICsPy\">SENATICs Paraguay</a></blockquote></div></div>'),(69,'<p data-redactor-inserted-image=\"true\"><concrete-picture fID=\"8\" id=\"image-marker\" style=\"width: 894px; height: 265px; display: block; margin: auto;\" width=\"894\" height=\"265\" alt=\"\" /></p><p><strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.</p><p><br></p>'),(70,'<p data-redactor-inserted-image=\"true\"><concrete-picture fID=\"8\" id=\"image-marker\" style=\"width: 894px; height: 265px; display: block; margin: auto;\" width=\"894\" height=\"265\" alt=\"\" /></p><p><strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.</p><p><br></p>'),(104,'<p><concrete-picture fID=\"14\" id=\"image-marker\" width=\"459\" height=\"97\" style=\"width: 459px; height: 97px;\" /></p><h5>Secretaría Nacional de Tecnología de la Información y Comunicación</h5><h6>Diección: Complejo Santos E2 - Gral. Santos 1170 c/ Concordia</h6><h6>Telefono: (+595 21) 201-014 / 201-813</h6><h6>Asuncion - Paraguay</h6>'),(107,'<h4>Galería de foto</h4>'),(126,'<p><strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.</p><p>Es un hecho establecido hace demasiado tiempo que un lector se distraerá con el contenido del texto de un sitio mientras que mira su diseño. El punto de usar Lorem Ipsum es que tiene una distribución más o menos normal de las letras, al contrario de usar textos como por ejemplo \"Contenido aquí, contenido aquí\". Estos textos hacen parecerlo un español que se puede leer. Muchos paquetes de autoedición y editores de páginas web usan el Lorem Ipsum como su texto por defecto, y al hacer una búsqueda de \"Lorem Ipsum\" va a dar por resultado muchos sitios web que usan este texto si se encuentran en estado de desarrollo. Muchas versiones han evolucionado a través de los años, algunas veces por accidente, otras veces a propósito (por ejemplo insertándole humor y cosas por el estilo).</p><p>Al contrario del pensamiento popular, el texto de Lorem Ipsum no es simplemente texto aleatorio. Tiene sus raices en una pieza cl´sica de la literatura del Latin, que data del año 45 antes de Cristo, haciendo que este adquiera mas de 2000 años de antiguedad. Richard McClintock, un profesor de Latin de la Universidad de Hampden-Sydney en Virginia, encontró una de las palabras más oscuras de la lengua del latín, \"consecteur\", en un pasaje de Lorem Ipsum, y al seguir leyendo distintos textos del latín, descubrió la fuente indudable. Lorem Ipsum viene de las secciones 1.10.32 y 1.10.33 de \"de Finnibus Bonorum et Malorum\" (Los Extremos del Bien y El Mal) por Cicero, escrito en el año 45 antes de Cristo. Este libro es un tratado de teoría de éticas, muy popular durante el Renacimiento. La primera linea del Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", viene de una linea en la sección 1.10.32</p>'),(127,'<p><strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.</p><p>Es un hecho establecido hace demasiado tiempo que un lector se distraerá con el contenido del texto de un sitio mientras que mira su diseño. El punto de usar Lorem Ipsum es que tiene una distribución más o menos normal de las letras, al contrario de usar textos como por ejemplo \"Contenido aquí, contenido aquí\". Estos textos hacen parecerlo un español que se puede leer. Muchos paquetes de autoedición y editores de páginas web usan el Lorem Ipsum como su texto por defecto, y al hacer una búsqueda de \"Lorem Ipsum\" va a dar por resultado muchos sitios web que usan este texto si se encuentran en estado de desarrollo. Muchas versiones han evolucionado a través de los años, algunas veces por accidente, otras veces a propósito (por ejemplo insertándole humor y cosas por el estilo).</p><p>Al contrario del pensamiento popular, el texto de Lorem Ipsum no es simplemente texto aleatorio. Tiene sus raices en una pieza cl´sica de la literatura del Latin, que data del año 45 antes de Cristo, haciendo que este adquiera mas de 2000 años de antiguedad. Richard McClintock, un profesor de Latin de la Universidad de Hampden-Sydney en Virginia, encontró una de las palabras más oscuras de la lengua del latín, \"consecteur\", en un pasaje de Lorem Ipsum, y al seguir leyendo distintos textos del latín, descubrió la fuente indudable. Lorem Ipsum viene de las secciones 1.10.32 y 1.10.33 de \"de Finnibus Bonorum et Malorum\" (Los Extremos del Bien y El Mal) por Cicero, escrito en el año 45 antes de Cristo. Este libro es un tratado de teoría de éticas, muy popular durante el Renacimiento. La primera linea del Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", viene de una linea en la sección 1.10.32.</p>'),(140,'<p>asdasdaswd</p>'),(141,'<p>asdasdaswd</p>'),(143,''),(145,'<p>asdasdaswd</p>'),(157,'<p>Hay muchas variaciones de los pasajes de Lorem Ipsum disponibles, pero la mayoría sufrió alteraciones en alguna manera, ya sea porque se le agregó humor, o palabras aleatorias que no parecen ni un poco creíbles. Si vas a utilizar un pasaje de Lorem Ipsum, necesitás estar seguro de que no hay nada avergonzante escondido en el medio del texto. Todos los generadores de Lorem Ipsum que se encuentran en Internet tienden a repetir trozos predefinidos cuando sea necesario, haciendo a este el único generador verdadero (válido) en la Internet. Usa un diccionario de mas de 200 palabras provenientes del latín, combinadas con estructuras muy útiles de sentencias, para generar texto de Lorem Ipsum que parezca razonable. Este Lorem Ipsum generado siempre estará libre de repeticiones, humor agregado o palabras no características del lenguaje, etc.</p><p data-redactor-inserted-image=\"true\"><concrete-picture fID=\"13\" id=\"image-marker\" width=\"307\" height=\"183\" alt=\"\" style=\"width: 307px; height: 183px; float: right; margin: 0px 0px 10px 10px;\" /></p><p>Hay muchas variaciones de los pasajes de Lorem Ipsum disponibles, pero la mayoría sufrió alteraciones en alguna manera, ya sea porque se le agregó humor, o palabras aleatorias que no parecen ni un poco creíbles. Si vas a utilizar un pasaje de Lorem Ipsum, necesitás estar seguro de que no hay nada avergonzante escondido en el medio del texto. Todos los generadores de Lorem Ipsum que se encuentran en Internet tienden a repetir trozos predefinidos cuando sea necesario, haciendo a este el único generador verdadero (válido) en la Internet. Usa un diccionario de mas de 200 palabras provenientes del latín, combinadas con estructuras muy útiles de sentencias, para generar texto de Lorem Ipsum que parezca razonable. Este Lorem Ipsum generado siempre estará libre de repeticiones, humor agregado o palabras no características del lenguaje, etc.</p><p>Hay muchas variaciones de los pasajes de Lorem Ipsum disponibles, pero la mayoría sufrió alteraciones en alguna manera, ya sea porque se le agregó humor, o palabras aleatorias que no parecen ni un poco creíbles. Si vas a utilizar un pasaje de Lorem Ipsum, necesitás estar seguro de que no hay nada avergonzante escondido en el medio del texto. Todos los generadores de Lorem Ipsum que se encuentran en Internet tienden a repetir trozos predefinidos cuando sea necesario, haciendo a este el único generador verdadero (válido) en la Internet. Usa un diccionario de mas de 200 palabras provenientes del latín, combinadas con estructuras muy útiles de sentencias, para generar texto de Lorem Ipsum que parezca razonable. Este Lorem Ipsum generado siempre estará libre de repeticiones, humor agregado o palabras no características del lenguaje, etc.Hay muchas variaciones de los pasajes de Lorem Ipsum disponibles, pero la mayoría sufrió alteraciones en alguna manera, ya sea porque se le agregó humor, o palabras aleatorias que no parecen ni un poco creíbles. Si vas a utilizar un pasaje de Lorem Ipsum, necesitás estar seguro de que no hay nada avergonzante escondido en el medio del texto. Todos los generadores de Lorem Ipsum que se encuentran en Internet tienden a repetir trozos predefinidos cuando sea necesario, haciendo a este el único generador verdadero (válido) en la Internet. Usa un diccionario de mas de 200 palabras provenientes del latín, combinadas con estructuras muy útiles de sentencias, para generar texto de Lorem Ipsum que parezca razonable. Este Lorem Ipsum generado siempre estará libre de repeticiones, humor agregado o palabras no características del lenguaje, etc.</p>'),(159,'<p>Hay muchas variaciones de los pasajes de Lorem Ipsum disponibles, pero la mayoría sufrió alteraciones en alguna manera, ya sea porque se le agregó humor, o palabras aleatorias que no parecen ni un poco creíbles. Si vas a utilizar un pasaje de Lorem Ipsum, necesitás estar seguro de que no hay nada avergonzante escondido en el medio del texto. Todos los generadores de Lorem Ipsum que se encuentran en Internet tienden a repetir trozos predefinidos cuando sea necesario, haciendo a este el único generador verdadero (válido) en la Internet. Usa un diccionario de mas de 200 palabras provenientes del latín, combinadas con estructuras muy útiles de sentencias, para generar texto de Lorem Ipsum que parezca razonable. Este Lorem Ipsum generado siempre estará libre de repeticiones, humor agregado o palabras no características del lenguaje, etc.</p><p data-redactor-inserted-image=\"true\"><concrete-picture fID=\"13\" id=\"image-marker\" width=\"307\" height=\"183\" alt=\"\" style=\"width: 307px; height: 183px; float: right; margin: 0px 0px 10px 10px;\" /></p><p>Hay muchas variaciones de los pasajes de Lorem Ipsum disponibles, pero la mayoría sufrió alteraciones en alguna manera, ya sea porque se le agregó humor, o palabras aleatorias que no parecen ni un poco creíbles. Si vas a utilizar un pasaje de Lorem Ipsum, necesitás estar seguro de que no hay nada avergonzante escondido en el medio del texto. Todos los generadores de Lorem Ipsum que se encuentran en Internet tienden a repetir trozos predefinidos cuando sea necesario, haciendo a este el único generador verdadero (válido) en la Internet. Usa un diccionario de mas de 200 palabras provenientes del latín, combinadas con estructuras muy útiles de sentencias, para generar texto de Lorem Ipsum que parezca razonable. Este Lorem Ipsum generado siempre estará libre de repeticiones, humor agregado o palabras no características del lenguaje, etc.</p><p>Hay muchas variaciones de los pasajes de Lorem Ipsum disponibles, pero la mayoría sufrió alteraciones en alguna manera, ya sea porque se le agregó humor, o palabras aleatorias que no parecen ni un poco creíbles. Si vas a utilizar un pasaje de Lorem Ipsum, necesitás estar seguro de que no hay nada avergonzante escondido en el medio del texto. Todos los generadores de Lorem Ipsum que se encuentran en Internet tienden a repetir trozos predefinidos cuando sea necesario, haciendo a este el único generador verdadero (válido) en la Internet. Usa un diccionario de mas de 200 palabras provenientes del latín, combinadas con estructuras muy útiles de sentencias, para generar texto de Lorem Ipsum que parezca razonable. Este Lorem Ipsum generado siempre estará libre de repeticiones, humor agregado o palabras no características del lenguaje, etc.Hay muchas variaciones de los pasajes de Lorem Ipsum disponibles, pero la mayoría sufrió alteraciones en alguna manera, ya sea porque se le agregó humor, o palabras aleatorias que no parecen ni un poco creíbles. Si vas a utilizar un pasaje de Lorem Ipsum, necesitás estar seguro de que no hay nada avergonzante escondido en el medio del texto. Todos los generadores de Lorem Ipsum que se encuentran en Internet tienden a repetir trozos predefinidos cuando sea necesario, haciendo a este el único generador verdadero (válido) en la Internet. Usa un diccionario de mas de 200 palabras provenientes del latín, combinadas con estructuras muy útiles de sentencias, para generar texto de Lorem Ipsum que parezca razonable. Este Lorem Ipsum generado siempre estará libre de repeticiones, humor agregado o palabras no características del lenguaje, etc.</p>'),(161,'<p>Hay muchas variaciones de los pasajes de Lorem Ipsum disponibles, pero la mayoría sufrió alteraciones en alguna manera, ya sea porque se le agregó humor, o palabras aleatorias que no parecen ni un poco creíbles. Si vas a utilizar un pasaje de Lorem Ipsum, necesitás estar seguro de que no hay nada avergonzante escondido en el medio del texto. Todos los generadores de Lorem Ipsum que se encuentran en Internet tienden a repetir trozos predefinidos cuando sea necesario, haciendo a este el único generador verdadero (válido) en la Internet. Usa un diccionario de mas de 200 palabras provenientes del latín, combinadas con estructuras muy útiles de sentencias, para generar texto de Lorem Ipsum que parezca razonable. Este Lorem Ipsum generado siempre estará libre de repeticiones, humor agregado o palabras no características del lenguaje, etc.</p><p data-redactor-inserted-image=\"true\"><concrete-picture fID=\"13\" id=\"image-marker\" width=\"307\" height=\"183\" alt=\"\" style=\"width: 307px; height: 183px; float: right; margin: 0px 0px 10px 10px;\" /></p><p>Hay muchas variaciones de los pasajes de Lorem Ipsum disponibles, pero la mayoría sufrió alteraciones en alguna manera, ya sea porque se le agregó humor, o palabras aleatorias que no parecen ni un poco creíbles. Si vas a utilizar un pasaje de Lorem Ipsum, necesitás estar seguro de que no hay nada avergonzante escondido en el medio del texto. Todos los generadores de Lorem Ipsum que se encuentran en Internet tienden a repetir trozos predefinidos cuando sea necesario, haciendo a este el único generador verdadero (válido) en la Internet. Usa un diccionario de mas de 200 palabras provenientes del latín, combinadas con estructuras muy útiles de sentencias, para generar texto de Lorem Ipsum que parezca razonable. Este Lorem Ipsum generado siempre estará libre de repeticiones, humor agregado o palabras no características del lenguaje, etc.</p><p>Hay muchas variaciones de los pasajes de Lorem Ipsum disponibles, pero la mayoría sufrió alteraciones en alguna manera, ya sea porque se le agregó humor, o palabras aleatorias que no parecen ni un poco creíbles. Si vas a utilizar un pasaje de Lorem Ipsum, necesitás estar seguro de que no hay nada avergonzante escondido en el medio del texto. Todos los generadores de Lorem Ipsum que se encuentran en Internet tienden a repetir trozos predefinidos cuando sea necesario, haciendo a este el único generador verdadero (válido) en la Internet. Usa un diccionario de mas de 200 palabras provenientes del latín, combinadas con estructuras muy útiles de sentencias, para generar texto de Lorem Ipsum que parezca razonable. Este Lorem Ipsum generado siempre estará libre de repeticiones, humor agregado o palabras no características del lenguaje, etc.Hay muchas variaciones de los pasajes de Lorem Ipsum disponibles, pero la mayoría sufrió alteraciones en alguna manera, ya sea porque se le agregó humor, o palabras aleatorias que no parecen ni un poco creíbles. Si vas a utilizar un pasaje de Lorem Ipsum, necesitás estar seguro de que no hay nada avergonzante escondido en el medio del texto. Todos los generadores de Lorem Ipsum que se encuentran en Internet tienden a repetir trozos predefinidos cuando sea necesario, haciendo a este el único generador verdadero (válido) en la Internet. Usa un diccionario de mas de 200 palabras provenientes del latín, combinadas con estructuras muy útiles de sentencias, para generar texto de Lorem Ipsum que parezca razonable. Este Lorem Ipsum generado siempre estará libre de repeticiones, humor agregado o palabras no características del lenguaje, etc.</p>'),(162,'<p>Hay muchas variaciones de los pasajes de Lorem Ipsum disponibles, pero la mayoría sufrió alteraciones en alguna manera, ya sea porque se le agregó humor, o palabras aleatorias que no parecen ni un poco creíbles. Si vas a utilizar un pasaje de Lorem Ipsum, necesitás estar seguro de que no hay nada avergonzante escondido en el medio del texto. Todos los generadores de Lorem Ipsum que se encuentran en Internet tienden a repetir trozos predefinidos cuando sea necesario, haciendo a este el único generador verdadero (válido) en la Internet. Usa un diccionario de mas de 200 palabras provenientes del latín, combinadas con estructuras muy útiles de sentencias, para generar texto de Lorem Ipsum que parezca razonable. Este Lorem Ipsum generado siempre estará libre de repeticiones, humor agregado o palabras no características del lenguaje, etc.</p><p data-redactor-inserted-image=\"true\"><a href=\"{CCM:BASE_URL}/index.php/download_file/view_inline/6\" data-concrete5-link-lightbox=\"image\"><concrete-picture fID=\"13\" id=\"image-marker\" width=\"307\" height=\"183\" alt=\"Prueba\" style=\"width: 307px; height: 183px; float: right; margin: 0px 0px 10px 10px;\" /></a></p><p>Hay muchas variaciones de los pasajes de Lorem Ipsum disponibles, pero la mayoría sufrió alteraciones en alguna manera, ya sea porque se le agregó humor, o palabras aleatorias que no parecen ni un poco creíbles. Si vas a utilizar un pasaje de Lorem Ipsum, necesitás estar seguro de que no hay nada avergonzante escondido en el medio del texto. Todos los generadores de Lorem Ipsum que se encuentran en Internet tienden a repetir trozos predefinidos cuando sea necesario, haciendo a este el único generador verdadero (válido) en la Internet. Usa un diccionario de mas de 200 palabras provenientes del latín, combinadas con estructuras muy útiles de sentencias, para generar texto de Lorem Ipsum que parezca razonable. Este Lorem Ipsum generado siempre estará libre de repeticiones, humor agregado o palabras no características del lenguaje, etc.</p><p>Hay muchas variaciones de los pasajes de Lorem Ipsum disponibles, pero la mayoría sufrió alteraciones en alguna manera, ya sea porque se le agregó humor, o palabras aleatorias que no parecen ni un poco creíbles. Si vas a utilizar un pasaje de Lorem Ipsum, necesitás estar seguro de que no hay nada avergonzante escondido en el medio del texto. Todos los generadores de Lorem Ipsum que se encuentran en Internet tienden a repetir trozos predefinidos cuando sea necesario, haciendo a este el único generador verdadero (válido) en la Internet. Usa un diccionario de mas de 200 palabras provenientes del latín, combinadas con estructuras muy útiles de sentencias, para generar texto de Lorem Ipsum que parezca razonable. Este Lorem Ipsum generado siempre estará libre de repeticiones, humor agregado o palabras no características del lenguaje, etc.Hay muchas variaciones de los pasajes de Lorem Ipsum disponibles, pero la mayoría sufrió alteraciones en alguna manera, ya sea porque se le agregó humor, o palabras aleatorias que no parecen ni un poco creíbles. Si vas a utilizar un pasaje de Lorem Ipsum, necesitás estar seguro de que no hay nada avergonzante escondido en el medio del texto. Todos los generadores de Lorem Ipsum que se encuentran en Internet tienden a repetir trozos predefinidos cuando sea necesario, haciendo a este el único generador verdadero (válido) en la Internet. Usa un diccionario de mas de 200 palabras provenientes del latín, combinadas con estructuras muy útiles de sentencias, para generar texto de Lorem Ipsum que parezca razonable. Este Lorem Ipsum generado siempre estará libre de repeticiones, humor agregado o palabras no características del lenguaje, etc.</p>');
/*!40000 ALTER TABLE `btContentLocal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btCoreAreaLayout`
--

DROP TABLE IF EXISTS `btCoreAreaLayout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btCoreAreaLayout` (
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arLayoutID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`bID`),
  KEY `arLayoutID` (`arLayoutID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btCoreAreaLayout`
--

LOCK TABLES `btCoreAreaLayout` WRITE;
/*!40000 ALTER TABLE `btCoreAreaLayout` DISABLE KEYS */;
INSERT INTO `btCoreAreaLayout` VALUES (27,1),(34,2),(40,3),(85,4),(87,5),(89,6),(91,7),(93,8),(102,9),(144,10);
/*!40000 ALTER TABLE `btCoreAreaLayout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btCoreConversation`
--

DROP TABLE IF EXISTS `btCoreConversation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btCoreConversation` (
  `bID` int(10) unsigned NOT NULL,
  `cnvID` int(11) DEFAULT NULL,
  `enablePosting` int(11) DEFAULT '1',
  `paginate` tinyint(1) NOT NULL DEFAULT '1',
  `itemsPerPage` smallint(5) unsigned NOT NULL DEFAULT '50',
  `displayMode` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'threaded',
  `orderBy` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'date_desc',
  `enableOrdering` tinyint(1) NOT NULL DEFAULT '1',
  `enableCommentRating` tinyint(1) NOT NULL DEFAULT '1',
  `displayPostingForm` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'top',
  `addMessageLabel` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dateFormat` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'default',
  `customDateFormat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`),
  KEY `cnvID` (`cnvID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btCoreConversation`
--

LOCK TABLES `btCoreConversation` WRITE;
/*!40000 ALTER TABLE `btCoreConversation` DISABLE KEYS */;
/*!40000 ALTER TABLE `btCoreConversation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btCorePageTypeComposerControlOutput`
--

DROP TABLE IF EXISTS `btCorePageTypeComposerControlOutput`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btCorePageTypeComposerControlOutput` (
  `bID` int(10) unsigned NOT NULL,
  `ptComposerOutputControlID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`bID`),
  KEY `ptComposerOutputControlID` (`ptComposerOutputControlID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btCorePageTypeComposerControlOutput`
--

LOCK TABLES `btCorePageTypeComposerControlOutput` WRITE;
/*!40000 ALTER TABLE `btCorePageTypeComposerControlOutput` DISABLE KEYS */;
INSERT INTO `btCorePageTypeComposerControlOutput` VALUES (9,1),(38,1);
/*!40000 ALTER TABLE `btCorePageTypeComposerControlOutput` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btCoreScrapbookDisplay`
--

DROP TABLE IF EXISTS `btCoreScrapbookDisplay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btCoreScrapbookDisplay` (
  `bID` int(10) unsigned NOT NULL,
  `bOriginalID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`bID`),
  KEY `bOriginalID` (`bOriginalID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btCoreScrapbookDisplay`
--

LOCK TABLES `btCoreScrapbookDisplay` WRITE;
/*!40000 ALTER TABLE `btCoreScrapbookDisplay` DISABLE KEYS */;
INSERT INTO `btCoreScrapbookDisplay` VALUES (88,86),(90,86),(92,86);
/*!40000 ALTER TABLE `btCoreScrapbookDisplay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btCoreStackDisplay`
--

DROP TABLE IF EXISTS `btCoreStackDisplay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btCoreStackDisplay` (
  `bID` int(10) unsigned NOT NULL,
  `stID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`bID`),
  KEY `stID` (`stID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btCoreStackDisplay`
--

LOCK TABLES `btCoreStackDisplay` WRITE;
/*!40000 ALTER TABLE `btCoreStackDisplay` DISABLE KEYS */;
/*!40000 ALTER TABLE `btCoreStackDisplay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btDashboardNewsflowLatest`
--

DROP TABLE IF EXISTS `btDashboardNewsflowLatest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btDashboardNewsflowLatest` (
  `bID` int(10) unsigned NOT NULL,
  `slot` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btDashboardNewsflowLatest`
--

LOCK TABLES `btDashboardNewsflowLatest` WRITE;
/*!40000 ALTER TABLE `btDashboardNewsflowLatest` DISABLE KEYS */;
INSERT INTO `btDashboardNewsflowLatest` VALUES (4,'A'),(5,'B'),(8,'C');
/*!40000 ALTER TABLE `btDashboardNewsflowLatest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btDateNavigation`
--

DROP TABLE IF EXISTS `btDateNavigation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btDateNavigation` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `filterByParent` tinyint(1) DEFAULT '0',
  `redirectToResults` tinyint(1) DEFAULT '0',
  `cParentID` int(10) unsigned NOT NULL DEFAULT '0',
  `cTargetID` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'this field is where the links will direct you',
  `ptID` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btDateNavigation`
--

LOCK TABLES `btDateNavigation` WRITE;
/*!40000 ALTER TABLE `btDateNavigation` DISABLE KEYS */;
/*!40000 ALTER TABLE `btDateNavigation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btExternalForm`
--

DROP TABLE IF EXISTS `btExternalForm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btExternalForm` (
  `bID` int(10) unsigned NOT NULL,
  `filename` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btExternalForm`
--

LOCK TABLES `btExternalForm` WRITE;
/*!40000 ALTER TABLE `btExternalForm` DISABLE KEYS */;
/*!40000 ALTER TABLE `btExternalForm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btFaq`
--

DROP TABLE IF EXISTS `btFaq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btFaq` (
  `bID` int(10) unsigned NOT NULL,
  `blockTitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btFaq`
--

LOCK TABLES `btFaq` WRITE;
/*!40000 ALTER TABLE `btFaq` DISABLE KEYS */;
/*!40000 ALTER TABLE `btFaq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btFaqEntries`
--

DROP TABLE IF EXISTS `btFaqEntries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btFaqEntries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned DEFAULT NULL,
  `linkTitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sortOrder` int(11) DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `bID` (`bID`,`sortOrder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btFaqEntries`
--

LOCK TABLES `btFaqEntries` WRITE;
/*!40000 ALTER TABLE `btFaqEntries` DISABLE KEYS */;
/*!40000 ALTER TABLE `btFaqEntries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btFeature`
--

DROP TABLE IF EXISTS `btFeature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btFeature` (
  `bID` int(10) unsigned NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paragraph` text COLLATE utf8_unicode_ci,
  `externalLink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `internalLinkCID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btFeature`
--

LOCK TABLES `btFeature` WRITE;
/*!40000 ALTER TABLE `btFeature` DISABLE KEYS */;
INSERT INTO `btFeature` VALUES (94,'bookmark','Misión','<p>Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.</p>','',0),(97,'binoculars','Visión','<p>Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.</p>','',0),(98,'cubes','Objetivos','<p>Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.</p>','',0);
/*!40000 ALTER TABLE `btFeature` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btForm`
--

DROP TABLE IF EXISTS `btForm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btForm` (
  `bID` int(10) unsigned NOT NULL,
  `questionSetId` int(10) unsigned DEFAULT '0',
  `surveyName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `submitText` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'Submit',
  `thankyouMsg` text COLLATE utf8_unicode_ci,
  `notifyMeOnSubmission` tinyint(1) NOT NULL DEFAULT '0',
  `recipientEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayCaptcha` int(11) DEFAULT '1',
  `redirectCID` int(11) DEFAULT '0',
  `addFilesToSet` int(11) DEFAULT '0',
  PRIMARY KEY (`bID`),
  KEY `questionSetIdForeign` (`questionSetId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btForm`
--

LOCK TABLES `btForm` WRITE;
/*!40000 ALTER TABLE `btForm` DISABLE KEYS */;
INSERT INTO `btForm` VALUES (103,1443012554,'Contacto','Enviar Mensaje','Gracias!',0,'',0,0,0);
/*!40000 ALTER TABLE `btForm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btFormAnswerSet`
--

DROP TABLE IF EXISTS `btFormAnswerSet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btFormAnswerSet` (
  `asID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `questionSetId` int(10) unsigned DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `uID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`asID`),
  KEY `questionSetId` (`questionSetId`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btFormAnswerSet`
--

LOCK TABLES `btFormAnswerSet` WRITE;
/*!40000 ALTER TABLE `btFormAnswerSet` DISABLE KEYS */;
/*!40000 ALTER TABLE `btFormAnswerSet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btFormAnswers`
--

DROP TABLE IF EXISTS `btFormAnswers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btFormAnswers` (
  `aID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asID` int(10) unsigned DEFAULT '0',
  `msqID` int(10) unsigned DEFAULT '0',
  `answer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `answerLong` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`aID`),
  KEY `asID` (`asID`),
  KEY `msqID` (`msqID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btFormAnswers`
--

LOCK TABLES `btFormAnswers` WRITE;
/*!40000 ALTER TABLE `btFormAnswers` DISABLE KEYS */;
/*!40000 ALTER TABLE `btFormAnswers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btFormQuestions`
--

DROP TABLE IF EXISTS `btFormQuestions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btFormQuestions` (
  `qID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `msqID` int(10) unsigned DEFAULT '0',
  `bID` int(10) unsigned DEFAULT '0',
  `questionSetId` int(10) unsigned DEFAULT '0',
  `question` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `inputType` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8_unicode_ci,
  `position` int(10) unsigned DEFAULT '1000',
  `width` int(10) unsigned DEFAULT '50',
  `height` int(10) unsigned DEFAULT '3',
  `defaultDate` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `required` int(11) DEFAULT '0',
  PRIMARY KEY (`qID`),
  KEY `questionSetId` (`questionSetId`),
  KEY `msqID` (`msqID`),
  KEY `bID` (`bID`,`questionSetId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btFormQuestions`
--

LOCK TABLES `btFormQuestions` WRITE;
/*!40000 ALTER TABLE `btFormQuestions` DISABLE KEYS */;
INSERT INTO `btFormQuestions` VALUES (1,1,103,1443012554,'Nombre y Apellido','field','',0,50,3,'',1),(2,2,103,1443012554,'Correo Electrónico','email','a:1:{s:22:\"send_notification_from\";i:1;}',0,50,3,'',1),(3,3,103,1443012554,'Mensaje','text','',0,50,3,'',0);
/*!40000 ALTER TABLE `btFormQuestions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btGoogleMap`
--

DROP TABLE IF EXISTS `btGoogleMap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btGoogleMap` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `zoom` smallint(6) DEFAULT NULL,
  `width` varchar(8) COLLATE utf8_unicode_ci DEFAULT '100%',
  `height` varchar(8) COLLATE utf8_unicode_ci DEFAULT '400px',
  `scrollwheel` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btGoogleMap`
--

LOCK TABLES `btGoogleMap` WRITE;
/*!40000 ALTER TABLE `btGoogleMap` DISABLE KEYS */;
/*!40000 ALTER TABLE `btGoogleMap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btImageSlider`
--

DROP TABLE IF EXISTS `btImageSlider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btImageSlider` (
  `bID` int(10) unsigned NOT NULL,
  `navigationType` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btImageSlider`
--

LOCK TABLES `btImageSlider` WRITE;
/*!40000 ALTER TABLE `btImageSlider` DISABLE KEYS */;
/*!40000 ALTER TABLE `btImageSlider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btImageSliderEntries`
--

DROP TABLE IF EXISTS `btImageSliderEntries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btImageSliderEntries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned DEFAULT NULL,
  `cID` int(10) unsigned DEFAULT '0',
  `fID` int(10) unsigned DEFAULT '0',
  `linkURL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `internalLinkCID` int(10) unsigned DEFAULT '0',
  `title` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `sortOrder` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btImageSliderEntries`
--

LOCK TABLES `btImageSliderEntries` WRITE;
/*!40000 ALTER TABLE `btImageSliderEntries` DISABLE KEYS */;
/*!40000 ALTER TABLE `btImageSliderEntries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btLeyTransparencia`
--

DROP TABLE IF EXISTS `btLeyTransparencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btLeyTransparencia` (
  `bID` int(10) unsigned NOT NULL,
  `internalLinkCID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btLeyTransparencia`
--

LOCK TABLES `btLeyTransparencia` WRITE;
/*!40000 ALTER TABLE `btLeyTransparencia` DISABLE KEYS */;
INSERT INTO `btLeyTransparencia` VALUES (28,174),(163,174);
/*!40000 ALTER TABLE `btLeyTransparencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btLeyTransparenciaEntries`
--

DROP TABLE IF EXISTS `btLeyTransparenciaEntries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btLeyTransparenciaEntries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned DEFAULT NULL,
  `nombre` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `orden` int(11) NOT NULL,
  `fID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btLeyTransparenciaEntries`
--

LOCK TABLES `btLeyTransparenciaEntries` WRITE;
/*!40000 ALTER TABLE `btLeyTransparenciaEntries` DISABLE KEYS */;
INSERT INTO `btLeyTransparenciaEntries` VALUES (3,163,'Nomina de Funcionario',0,10),(4,163,'Viaticos',1,10);
/*!40000 ALTER TABLE `btLeyTransparenciaEntries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btListaItems`
--

DROP TABLE IF EXISTS `btListaItems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btListaItems` (
  `bID` int(10) unsigned NOT NULL,
  `titulo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cantItemsPag` int(11) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btListaItems`
--

LOCK TABLES `btListaItems` WRITE;
/*!40000 ALTER TABLE `btListaItems` DISABLE KEYS */;
INSERT INTO `btListaItems` VALUES (77,NULL,9),(78,NULL,9),(165,NULL,9);
/*!40000 ALTER TABLE `btListaItems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btListaItemsEntries`
--

DROP TABLE IF EXISTS `btListaItemsEntries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btListaItemsEntries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned DEFAULT NULL,
  `nombre` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descripcion` text COLLATE utf8_unicode_ci,
  `orden` int(11) NOT NULL,
  `fID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btListaItemsEntries`
--

LOCK TABLES `btListaItemsEntries` WRITE;
/*!40000 ALTER TABLE `btListaItemsEntries` DISABLE KEYS */;
INSERT INTO `btListaItemsEntries` VALUES (2,78,'','',0,6),(3,78,'','',1,5),(4,78,'','',2,4),(5,78,'Titulo de la Foto 1','',3,3),(14,165,'','',0,6),(15,165,'','',1,5),(16,165,'Titulo de la Foto','&lt;p&gt;y descripci&oacute;n de la fotografia&lt;/p&gt;',2,7),(17,165,'','',3,3),(18,165,'','&lt;p&gt;Solo descripcion de la imagen&lt;/p&gt;',4,4),(19,165,'','',5,3),(20,165,'','',6,6),(21,165,'','',7,5),(22,165,'','',8,7),(23,165,'','',9,4),(24,165,'Titulo de la Foto','',10,5);
/*!40000 ALTER TABLE `btListaItemsEntries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btListarTramites`
--

DROP TABLE IF EXISTS `btListarTramites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btListarTramites` (
  `bID` int(10) unsigned NOT NULL,
  `titulo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cantItemsPag` int(11) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btListarTramites`
--

LOCK TABLES `btListarTramites` WRITE;
/*!40000 ALTER TABLE `btListarTramites` DISABLE KEYS */;
INSERT INTO `btListarTramites` VALUES (108,NULL,5),(166,NULL,5);
/*!40000 ALTER TABLE `btListarTramites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btListarTramitesEntries`
--

DROP TABLE IF EXISTS `btListarTramitesEntries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btListarTramitesEntries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned DEFAULT NULL,
  `nombre` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sitio_web` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descripcion` text COLLATE utf8_unicode_ci,
  `institucion` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tipo_servicio` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `producto` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `direccion` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `correo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telefono` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `canal` text COLLATE utf8_unicode_ci,
  `area_servicio` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `audiencia` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tramite` text COLLATE utf8_unicode_ci,
  `etiqueta` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `documentacion` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tiempo_estimado` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `precio` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `forma_pago` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `atencion` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `correo_servicio` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `formulario` text COLLATE utf8_unicode_ci,
  `online` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `orden` int(11) NOT NULL,
  `fID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btListarTramitesEntries`
--

LOCK TABLES `btListarTramitesEntries` WRITE;
/*!40000 ALTER TABLE `btListarTramitesEntries` DISABLE KEYS */;
INSERT INTO `btListarTramitesEntries` VALUES (1,108,'Titulo del Trámite','http://www.senatics.gov.py','&lt;p&gt;&lt;strong&gt;Lorem Ipsum&lt;/strong&gt; es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno est&aacute;ndar de las industrias desde el a&ntilde;o 1500&lt;/p&gt;','SENATICs','servicio','box','my house','comunicacion@senatics.gov.py','(+59521) 211014','&lt;p&gt;Facebook, Twitter&lt;/p&gt;','total','indefensos ciudadanos','&lt;p&gt;&lt;strong&gt;Lorem Ipsum&lt;/strong&gt; es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno est&aacute;ndar de las industrias desde el a&ntilde;o 1500&lt;/p&gt;','servicio, tramite, testeo','documentación','1 hs','Gratuito','No requiere','Lunes a Viernes','tramite@senatics.gov.py','&lt;p&gt;&lt;strong&gt;Lorem Ipsum&lt;/strong&gt; es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno est&aacute;ndar de las industrias desde el a&ntilde;o 1500&lt;/p&gt;','',0,0),(3,166,'Titulo del Trámite','http://www.senatics.gov.py','&lt;p&gt;&lt;strong&gt;Lorem Ipsum&lt;/strong&gt; es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno est&Atilde;&iexcl;ndar de las industrias desde el a&Atilde;&plusmn;o 1500&lt;/p&gt;','SENATICs','servicio','box','my house','comunicacion@senatics.gov.py','(+59521) 211014','&lt;p&gt;Facebook, Twitter&lt;/p&gt;','total','indefensos ciudadanos','&lt;p&gt;&lt;strong&gt;Lorem Ipsum&lt;/strong&gt; es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno est&Atilde;&iexcl;ndar de las industrias desde el a&Atilde;&plusmn;o 1500&lt;/p&gt;','servicio, tramite, testeo','documentación','1 hs','Gratuito','No requiere','Lunes a Viernes','tramite@senatics.gov.py','&lt;p&gt;&lt;strong&gt;Lorem Ipsum&lt;/strong&gt; es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno est&Atilde;&iexcl;ndar de las industrias desde el a&Atilde;&plusmn;o 1500&lt;/p&gt;','',0,0);
/*!40000 ALTER TABLE `btListarTramitesEntries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btMapa`
--

DROP TABLE IF EXISTS `btMapa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btMapa` (
  `bID` int(10) unsigned NOT NULL,
  `titulo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zoom` int(11) DEFAULT '14',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btMapa`
--

LOCK TABLES `btMapa` WRITE;
/*!40000 ALTER TABLE `btMapa` DISABLE KEYS */;
INSERT INTO `btMapa` VALUES (105,'SENATICS',14);
/*!40000 ALTER TABLE `btMapa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btMapaEntries`
--

DROP TABLE IF EXISTS `btMapaEntries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btMapaEntries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned DEFAULT NULL,
  `nombre` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cuerpo` longtext COLLATE utf8_unicode_ci,
  `x` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `y` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `orden` int(11) DEFAULT NULL,
  `icono` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btMapaEntries`
--

LOCK TABLES `btMapaEntries` WRITE;
/*!40000 ALTER TABLE `btMapaEntries` DISABLE KEYS */;
INSERT INTO `btMapaEntries` VALUES (1,105,'SENATICs','&lt;p&gt;&lt;strong&gt;Lorem Ipsum&lt;/strong&gt; es simplemente el texto&lt;/p&gt;&lt;div class=&quot;rc&quot; style=&quot;margin: 0px; font-size: 11px; font-family: Arial, Helvetica, sans; clear: right; float: right; width: 348px; color: rgb(0, 0, 0); line-height: normal; text-align: center;&quot;&gt;&lt;/div&gt;','-25.2799849','-57.6087856',0,0);
/*!40000 ALTER TABLE `btMapaEntries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btNavigation`
--

DROP TABLE IF EXISTS `btNavigation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btNavigation` (
  `bID` int(10) unsigned NOT NULL,
  `orderBy` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'alpha_asc',
  `displayPages` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'top' COMMENT 'was enum(''top'',''current'',''above'',''below'',''custom'')',
  `displayPagesCID` int(10) unsigned NOT NULL DEFAULT '1',
  `displayPagesIncludeSelf` tinyint(1) NOT NULL DEFAULT '0',
  `displaySubPages` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'none' COMMENT 'was enum(''none'',''all'',''relevant'',''relevant_breadcrumb'')',
  `displaySubPageLevels` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'none' COMMENT 'was enum(''all'',''none'',''enough'',''enough_plus1'',''custom'')',
  `displaySubPageLevelsNum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `displayUnavailablePages` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btNavigation`
--

LOCK TABLES `btNavigation` WRITE;
/*!40000 ALTER TABLE `btNavigation` DISABLE KEYS */;
INSERT INTO `btNavigation` VALUES (16,'display_asc','current',0,0,'all','all',0,0),(19,'display_asc','top',0,0,'all','all',0,0),(20,'display_asc','top',0,0,'all','all',0,0),(37,'display_asc','top',0,0,'relevant_breadcrumb','all',0,0),(86,'display_asc','second_level',0,0,'all','enough',0,0);
/*!40000 ALTER TABLE `btNavigation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btNextPrevious`
--

DROP TABLE IF EXISTS `btNextPrevious`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btNextPrevious` (
  `bID` int(10) unsigned NOT NULL,
  `nextLabel` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `previousLabel` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parentLabel` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `loopSequence` int(11) DEFAULT '1',
  `excludeSystemPages` int(11) DEFAULT '1',
  `orderBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT 'display_asc',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btNextPrevious`
--

LOCK TABLES `btNextPrevious` WRITE;
/*!40000 ALTER TABLE `btNextPrevious` DISABLE KEYS */;
/*!40000 ALTER TABLE `btNextPrevious` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btPageAttributeDisplay`
--

DROP TABLE IF EXISTS `btPageAttributeDisplay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btPageAttributeDisplay` (
  `bID` int(10) unsigned NOT NULL,
  `attributeHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attributeTitleText` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayTag` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateFormat` varchar(100) COLLATE utf8_unicode_ci DEFAULT 'div',
  `thumbnailHeight` int(10) unsigned DEFAULT NULL,
  `thumbnailWidth` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btPageAttributeDisplay`
--

LOCK TABLES `btPageAttributeDisplay` WRITE;
/*!40000 ALTER TABLE `btPageAttributeDisplay` DISABLE KEYS */;
INSERT INTO `btPageAttributeDisplay` VALUES (36,'rpv_pageDatePublic','Publicado: ','blockquote','m/d/y h:i:a',250,250);
/*!40000 ALTER TABLE `btPageAttributeDisplay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btPageList`
--

DROP TABLE IF EXISTS `btPageList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btPageList` (
  `bID` int(10) unsigned NOT NULL,
  `num` smallint(5) unsigned NOT NULL,
  `orderBy` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Was enum, display_asc'',''display_desc'',''chrono_asc'',''chrono_desc'',''alpha_asc'',''alpha_desc'',''score_asc'',''score_desc''',
  `cParentID` int(10) unsigned NOT NULL DEFAULT '1',
  `cThis` tinyint(1) NOT NULL DEFAULT '0',
  `useButtonForLink` tinyint(1) NOT NULL DEFAULT '0',
  `buttonLinkText` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pageListTitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filterByRelated` tinyint(1) NOT NULL DEFAULT '0',
  `filterByCustomTopic` tinyint(1) NOT NULL DEFAULT '0',
  `filterDateOption` varchar(25) COLLATE utf8_unicode_ci DEFAULT 'all' COMMENT '(''all'',''today'',''past'',''future'',''between'')',
  `filterDateDays` int(10) unsigned NOT NULL DEFAULT '0',
  `filterDateStart` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filterDateEnd` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `relatedTopicAttributeKeyHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customTopicAttributeKeyHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customTopicTreeNodeID` int(10) unsigned NOT NULL DEFAULT '0',
  `includeName` tinyint(1) NOT NULL DEFAULT '1',
  `includeDescription` tinyint(1) NOT NULL DEFAULT '1',
  `includeDate` tinyint(1) NOT NULL DEFAULT '0',
  `includeAllDescendents` tinyint(1) NOT NULL DEFAULT '0',
  `paginate` tinyint(1) NOT NULL DEFAULT '0',
  `displayAliases` tinyint(1) NOT NULL DEFAULT '1',
  `enableExternalFiltering` tinyint(1) NOT NULL DEFAULT '0',
  `ptID` smallint(5) unsigned DEFAULT NULL,
  `pfID` int(11) DEFAULT '0',
  `truncateSummaries` int(11) DEFAULT '0',
  `displayFeaturedOnly` tinyint(1) DEFAULT '0',
  `noResultsMessage` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayThumbnail` tinyint(1) DEFAULT '0',
  `truncateChars` int(11) DEFAULT '128',
  PRIMARY KEY (`bID`),
  KEY `ptID` (`ptID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btPageList`
--

LOCK TABLES `btPageList` WRITE;
/*!40000 ALTER TABLE `btPageList` DISABLE KEYS */;
INSERT INTO `btPageList` VALUES (44,6,'chrono_desc',0,0,1,'Ver más','',0,0,'all',0,NULL,NULL,'','',0,1,1,1,0,0,0,0,8,0,1,0,'No hay publicación',1,250),(54,4,'chrono_desc',0,0,1,'Ver más','',0,0,'all',0,NULL,NULL,'','',0,1,1,1,0,0,0,0,8,0,1,0,'No hay publicación',1,250),(55,15,'chrono_desc',0,0,1,'Ver más','',0,0,'all',0,NULL,NULL,'','',0,1,1,1,0,1,0,0,8,0,1,0,'',1,300),(79,10,'chrono_desc',0,0,1,'Abrir Álbum','',0,0,'all',0,NULL,NULL,'','',0,1,1,1,0,1,0,0,9,0,1,0,'',1,250),(84,50,'chrono_desc',0,0,1,'Ver info','',0,0,'all',0,NULL,NULL,'','',0,1,0,0,0,1,0,0,10,0,0,0,'No hay publicación',0,0),(106,6,'chrono_desc',0,0,1,'Abrir Álbum','',0,0,'all',0,NULL,NULL,'','',0,1,1,1,0,0,0,0,9,0,1,0,'',1,300);
/*!40000 ALTER TABLE `btPageList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btPageTitle`
--

DROP TABLE IF EXISTS `btPageTitle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btPageTitle` (
  `bID` int(10) unsigned NOT NULL,
  `useCustomTitle` int(10) unsigned DEFAULT '0',
  `titleText` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `formatting` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btPageTitle`
--

LOCK TABLES `btPageTitle` WRITE;
/*!40000 ALTER TABLE `btPageTitle` DISABLE KEYS */;
INSERT INTO `btPageTitle` VALUES (21,0,'[Page Title]','h4'),(35,0,'[Page Title]','h5');
/*!40000 ALTER TABLE `btPageTitle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btRssDisplay`
--

DROP TABLE IF EXISTS `btRssDisplay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btRssDisplay` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateFormat` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `itemsToDisplay` int(10) unsigned DEFAULT '5',
  `showSummary` tinyint(1) NOT NULL DEFAULT '1',
  `launchInNewWindow` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btRssDisplay`
--

LOCK TABLES `btRssDisplay` WRITE;
/*!40000 ALTER TABLE `btRssDisplay` DISABLE KEYS */;
/*!40000 ALTER TABLE `btRssDisplay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btSearch`
--

DROP TABLE IF EXISTS `btSearch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btSearch` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `buttonText` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `baseSearchPath` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postTo_cID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `resultsURL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btSearch`
--

LOCK TABLES `btSearch` WRITE;
/*!40000 ALTER TABLE `btSearch` DISABLE KEYS */;
INSERT INTO `btSearch` VALUES (12,'Buscar','Buscar','','',''),(13,'Buscar','','','',''),(14,'','','','',''),(15,'','','','',''),(18,'','','','',''),(22,'','Buscar','','',''),(23,'','','','175','');
/*!40000 ALTER TABLE `btSearch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btShareThisPage`
--

DROP TABLE IF EXISTS `btShareThisPage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btShareThisPage` (
  `btShareThisPageID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned DEFAULT '0',
  `service` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayOrder` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`btShareThisPageID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btShareThisPage`
--

LOCK TABLES `btShareThisPage` WRITE;
/*!40000 ALTER TABLE `btShareThisPage` DISABLE KEYS */;
INSERT INTO `btShareThisPage` VALUES (1,42,'facebook',0),(2,42,'twitter',1),(3,42,'linkedin',2),(4,42,'reddit',3),(5,42,'pinterest',4),(6,42,'google_plus',5),(7,42,'email',6);
/*!40000 ALTER TABLE `btShareThisPage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btSlider`
--

DROP TABLE IF EXISTS `btSlider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btSlider` (
  `bID` int(10) unsigned NOT NULL,
  `navigationType` int(10) unsigned DEFAULT '0',
  `navegationShow` int(10) unsigned DEFAULT '0',
  `timeSlide` int(10) unsigned DEFAULT '7',
  `autoHeight` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btSlider`
--

LOCK TABLES `btSlider` WRITE;
/*!40000 ALTER TABLE `btSlider` DISABLE KEYS */;
INSERT INTO `btSlider` VALUES (24,3,1,4,0),(25,3,1,4,0),(26,3,1,4,0),(71,3,1,4,0),(72,3,1,4,0),(110,3,1,4,1),(169,3,1,4,1);
/*!40000 ALTER TABLE `btSlider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btSliderEntries`
--

DROP TABLE IF EXISTS `btSliderEntries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btSliderEntries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned DEFAULT NULL,
  `cID` int(10) unsigned DEFAULT '0',
  `fID` int(10) unsigned DEFAULT '0',
  `linkURL` longtext COLLATE utf8_unicode_ci,
  `title` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `sortOrder` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btSliderEntries`
--

LOCK TABLES `btSliderEntries` WRITE;
/*!40000 ALTER TABLE `btSliderEntries` DISABLE KEYS */;
INSERT INTO `btSliderEntries` VALUES (1,24,0,6,'','','',0),(2,24,0,5,'','','',1),(5,25,0,8,'','','',0),(6,25,0,9,'','','',1),(9,26,0,8,'','Titulo del Slider 1','Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta)',0),(10,26,0,9,'','','',1),(11,71,0,8,'','Titulo del Slider 1','Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta)',0),(12,71,0,9,'','','',1),(13,72,0,8,'','Titulo del Slider 1','Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta)',0),(14,72,0,9,'','','',1),(17,110,0,8,'','Titulo del Slider 1','<p>Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta)</p>',0),(18,110,0,9,'','','',1),(19,169,0,8,'','Titulo del Slider 1','<p>Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta)</p>',0),(20,169,0,9,'','','',1);
/*!40000 ALTER TABLE `btSliderEntries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btSocialLinks`
--

DROP TABLE IF EXISTS `btSocialLinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btSocialLinks` (
  `btSocialLinkID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned DEFAULT '0',
  `slID` int(10) unsigned DEFAULT '0',
  `displayOrder` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`btSocialLinkID`),
  KEY `bID` (`bID`,`displayOrder`),
  KEY `slID` (`slID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btSocialLinks`
--

LOCK TABLES `btSocialLinks` WRITE;
/*!40000 ALTER TABLE `btSocialLinks` DISABLE KEYS */;
/*!40000 ALTER TABLE `btSocialLinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btSurvey`
--

DROP TABLE IF EXISTS `btSurvey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btSurvey` (
  `bID` int(10) unsigned NOT NULL,
  `question` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `requiresRegistration` int(11) DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btSurvey`
--

LOCK TABLES `btSurvey` WRITE;
/*!40000 ALTER TABLE `btSurvey` DISABLE KEYS */;
/*!40000 ALTER TABLE `btSurvey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btSurveyOptions`
--

DROP TABLE IF EXISTS `btSurveyOptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btSurveyOptions` (
  `optionID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(11) DEFAULT NULL,
  `optionName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayOrder` int(11) DEFAULT '0',
  PRIMARY KEY (`optionID`),
  KEY `bID` (`bID`,`displayOrder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btSurveyOptions`
--

LOCK TABLES `btSurveyOptions` WRITE;
/*!40000 ALTER TABLE `btSurveyOptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `btSurveyOptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btSurveyResults`
--

DROP TABLE IF EXISTS `btSurveyResults`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btSurveyResults` (
  `resultID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `optionID` int(10) unsigned DEFAULT '0',
  `uID` int(10) unsigned DEFAULT '0',
  `bID` int(11) DEFAULT NULL,
  `cID` int(11) DEFAULT NULL,
  `ipAddress` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`resultID`),
  KEY `optionID` (`optionID`),
  KEY `cID` (`cID`,`optionID`,`bID`),
  KEY `bID` (`bID`,`cID`,`uID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btSurveyResults`
--

LOCK TABLES `btSurveyResults` WRITE;
/*!40000 ALTER TABLE `btSurveyResults` DISABLE KEYS */;
/*!40000 ALTER TABLE `btSurveyResults` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btSwitchLanguage`
--

DROP TABLE IF EXISTS `btSwitchLanguage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btSwitchLanguage` (
  `bID` int(10) unsigned NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btSwitchLanguage`
--

LOCK TABLES `btSwitchLanguage` WRITE;
/*!40000 ALTER TABLE `btSwitchLanguage` DISABLE KEYS */;
/*!40000 ALTER TABLE `btSwitchLanguage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btTags`
--

DROP TABLE IF EXISTS `btTags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btTags` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `targetCID` int(11) DEFAULT NULL,
  `displayMode` varchar(20) COLLATE utf8_unicode_ci DEFAULT 'page',
  `cloudCount` int(11) DEFAULT '10',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btTags`
--

LOCK TABLES `btTags` WRITE;
/*!40000 ALTER TABLE `btTags` DISABLE KEYS */;
/*!40000 ALTER TABLE `btTags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btTestimonial`
--

DROP TABLE IF EXISTS `btTestimonial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btTestimonial` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `companyURL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paragraph` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btTestimonial`
--

LOCK TABLES `btTestimonial` WRITE;
/*!40000 ALTER TABLE `btTestimonial` DISABLE KEYS */;
/*!40000 ALTER TABLE `btTestimonial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btTopicList`
--

DROP TABLE IF EXISTS `btTopicList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btTopicList` (
  `bID` int(10) unsigned NOT NULL,
  `mode` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S' COMMENT 'S = Search, P = Page',
  `topicAttributeKeyHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `topicTreeID` int(10) unsigned NOT NULL DEFAULT '0',
  `cParentID` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btTopicList`
--

LOCK TABLES `btTopicList` WRITE;
/*!40000 ALTER TABLE `btTopicList` DISABLE KEYS */;
/*!40000 ALTER TABLE `btTopicList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btTransparenciaActiva`
--

DROP TABLE IF EXISTS `btTransparenciaActiva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btTransparenciaActiva` (
  `bID` int(10) unsigned NOT NULL,
  `titulo` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mes` int(11) DEFAULT NULL,
  `resumen` text COLLATE utf8_unicode_ci,
  `autor` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btTransparenciaActiva`
--

LOCK TABLES `btTransparenciaActiva` WRITE;
/*!40000 ALTER TABLE `btTransparenciaActiva` DISABLE KEYS */;
INSERT INTO `btTransparenciaActiva` VALUES (82,'Ejemplo de publicación',0,'<p>Este es un ejemplo de una publicación, editar este bloque permitirá que puedas administrar el contenido de la misma, en caso que necesites otro bloque como este para otro ítem, insertarlo de forma manual desde la paleta superior \"Agregar Contenido\" en su listado de bloques en la sección \"Otros\" buscar el bloque \"Tránsparencia\"</p>',''),(83,'Nomina de Funcionarios',0,'',''),(164,'Nomina de Funcionarios',0,'<p>Descripción del ítem<br></p>','SENATICs');
/*!40000 ALTER TABLE `btTransparenciaActiva` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btTransparenciaActivaEntries`
--

DROP TABLE IF EXISTS `btTransparenciaActivaEntries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btTransparenciaActivaEntries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned DEFAULT NULL,
  `orden` int(11) NOT NULL,
  `fID` int(10) unsigned DEFAULT '0',
  `texto_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btTransparenciaActivaEntries`
--

LOCK TABLES `btTransparenciaActivaEntries` WRITE;
/*!40000 ALTER TABLE `btTransparenciaActivaEntries` DISABLE KEYS */;
INSERT INTO `btTransparenciaActivaEntries` VALUES (9,164,0,10,'PDF 1'),(10,164,1,10,'PDF 2'),(11,164,2,6,'IMG');
/*!40000 ALTER TABLE `btTransparenciaActivaEntries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btVideo`
--

DROP TABLE IF EXISTS `btVideo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btVideo` (
  `bID` int(10) unsigned NOT NULL,
  `webmfID` int(10) unsigned DEFAULT '0',
  `oggfID` int(10) unsigned DEFAULT '0',
  `posterfID` int(10) unsigned DEFAULT '0',
  `mp4fID` int(10) unsigned DEFAULT '0',
  `width` int(10) unsigned DEFAULT NULL,
  `height` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btVideo`
--

LOCK TABLES `btVideo` WRITE;
/*!40000 ALTER TABLE `btVideo` DISABLE KEYS */;
/*!40000 ALTER TABLE `btVideo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btYouTube`
--

DROP TABLE IF EXISTS `btYouTube`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btYouTube` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `videoURL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vHeight` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vWidth` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vPlayer` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btYouTube`
--

LOCK TABLES `btYouTube` WRITE;
/*!40000 ALTER TABLE `btYouTube` DISABLE KEYS */;
/*!40000 ALTER TABLE `btYouTube` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gaPage`
--

DROP TABLE IF EXISTS `gaPage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gaPage` (
  `gaiID` int(10) unsigned NOT NULL,
  `cID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`gaiID`),
  KEY `cID` (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gaPage`
--

LOCK TABLES `gaPage` WRITE;
/*!40000 ALTER TABLE `gaPage` DISABLE KEYS */;
/*!40000 ALTER TABLE `gaPage` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-10-09 13:48:29
