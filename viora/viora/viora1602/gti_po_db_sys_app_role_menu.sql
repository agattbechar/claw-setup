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
-- Table structure for table `sys_app_role_menu`
--

DROP TABLE IF EXISTS `sys_app_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_app_role_menu` (
  `idMenu` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `codeMenu` varchar(45) NOT NULL,
  `libMenu` varchar(100) NOT NULL DEFAULT '0',
  `libMenu_ar` varchar(145) NOT NULL,
  `ordreAffMn` int(10) unsigned NOT NULL,
  PRIMARY KEY (`idMenu`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_app_role_menu`
--

LOCK TABLES `sys_app_role_menu` WRITE;
/*!40000 ALTER TABLE `sys_app_role_menu` DISABLE KEYS */;
INSERT INTO `sys_app_role_menu` VALUES (1,'menu_admin','Administration','إدارة',1),(2,'menu_fact','Facturation','فواتير',2),(3,'menu_cmd','Commandes','طلبيات',3),(5,'menu_stock','Stock','المخزون',5),(7,'menu_suivi','Suivi','متابعة',8),(8,'menu_compta','Comptabilité','محاسبة',9),(9,'menu_aide','Aide','مساعدة',12),(12,'menu_depots','Dépôts','المخازن',6),(13,'menu_reporting','Reporting','تقارير',10),(14,'menu_import','Import','استيراد',11);
/*!40000 ALTER TABLE `sys_app_role_menu` ENABLE KEYS */;
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
