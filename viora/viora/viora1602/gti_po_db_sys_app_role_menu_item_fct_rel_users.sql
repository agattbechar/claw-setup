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
-- Table structure for table `sys_app_role_menu_item_fct_rel_users`
--

DROP TABLE IF EXISTS `sys_app_role_menu_item_fct_rel_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_app_role_menu_item_fct_rel_users` (
  `idRelFctGp` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fk_idMItemFct` int(10) unsigned NOT NULL,
  `fk_idUser` int(10) unsigned NOT NULL,
  `valFct` varchar(200) DEFAULT NULL COMMENT 'Valuer remise par exemple',
  PRIMARY KEY (`idRelFctGp`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_app_role_menu_item_fct_rel_users`
--

LOCK TABLES `sys_app_role_menu_item_fct_rel_users` WRITE;
/*!40000 ALTER TABLE `sys_app_role_menu_item_fct_rel_users` DISABLE KEYS */;
INSERT INTO `sys_app_role_menu_item_fct_rel_users` VALUES (1,23,1,'0'),(2,23,2,'0'),(3,23,3,'0'),(13,3,4,'0'),(14,4,4,'0'),(15,5,4,'0'),(16,6,4,'0'),(17,23,4,'0'),(18,7,4,'0'),(19,9,4,'0'),(20,11,4,'0'),(21,19,4,'0'),(22,27,4,'0'),(23,24,4,'0'),(24,15,4,'0'),(25,26,4,'0'),(27,0,4,'-'),(30,2,4,'10'),(31,0,3,'-');
/*!40000 ALTER TABLE `sys_app_role_menu_item_fct_rel_users` ENABLE KEYS */;
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
