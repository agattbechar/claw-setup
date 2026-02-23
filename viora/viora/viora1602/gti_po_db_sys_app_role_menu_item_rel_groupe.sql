-- MySQL dump 10.13  Distrib 5.7.10, for Win64 (x86_64)
--
-- Host: localhost    Database: gti_po_db
-- ------------------------------------------------------
-- Server version	5.7.10-log

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
-- Table structure for table `sys_app_role_menu_item_rel_groupe`
--

DROP TABLE IF EXISTS `sys_app_role_menu_item_rel_groupe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_app_role_menu_item_rel_groupe` (
  `idMItemRelGrp` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fk_idMnLk` int(10) unsigned DEFAULT '0',
  `fk_idGp` int(10) unsigned DEFAULT '0',
  `estAfficheAuDem` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`idMItemRelGrp`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_app_role_menu_item_rel_groupe`
--

LOCK TABLES `sys_app_role_menu_item_rel_groupe` WRITE;
/*!40000 ALTER TABLE `sys_app_role_menu_item_rel_groupe` DISABLE KEYS */;
INSERT INTO `sys_app_role_menu_item_rel_groupe` VALUES (1,1,2,0),(2,2,2,0),(3,3,2,0),(4,4,2,0),(5,5,2,0),(6,6,2,0),(7,7,2,0),(8,8,2,0),(10,9,4,1),(11,10,2,0),(12,11,2,0),(13,12,2,0),(14,13,2,0),(15,14,2,0),(16,15,2,0),(17,16,2,0),(18,17,2,0),(19,18,2,0),(20,19,2,0),(21,20,2,0),(22,21,2,0),(23,22,2,0),(24,23,2,0),(25,24,2,0),(26,25,2,0),(27,26,2,0),(28,27,2,0),(29,28,2,0),(30,29,2,0),(31,30,2,0),(32,31,2,0),(33,32,2,0),(34,33,2,0),(35,34,2,0),(36,35,2,0),(37,36,2,0),(38,37,2,0),(39,38,2,0),(40,39,2,0),(41,40,2,0),(42,41,2,0),(43,42,2,0),(44,43,2,0),(45,44,2,0),(46,45,2,0),(47,46,2,0),(48,47,2,0),(49,48,2,0),(50,7,6,0),(51,7,7,0),(52,49,2,0),(53,50,2,0),(54,51,2,0),(55,52,2,0),(56,53,2,0),(57,54,2,0),(58,55,2,0),(60,57,2,0),(61,58,2,0),(62,59,2,0),(63,60,2,0),(64,61,2,0),(65,62,2,0),(66,63,2,0),(67,64,2,0),(68,65,2,0),(69,65,4,0),(70,66,2,0),(71,67,2,0),(72,68,2,0),(73,NULL,2,0),(74,69,2,0),(75,70,2,0),(76,71,2,0),(77,72,2,0),(78,73,2,0),(79,74,2,0),(80,75,2,0),(81,76,2,0),(82,77,2,0),(83,78,2,0),(84,79,2,0),(85,80,2,0),(86,81,2,0),(91,9,3,1),(92,47,3,0),(93,58,3,0);
/*!40000 ALTER TABLE `sys_app_role_menu_item_rel_groupe` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-02-16 19:11:18
