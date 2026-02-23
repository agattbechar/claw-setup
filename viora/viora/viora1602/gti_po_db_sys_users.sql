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
-- Table structure for table `sys_users`
--

DROP TABLE IF EXISTS `sys_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_users` (
  `idUser` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `loginUser` varchar(145) DEFAULT NULL,
  `passwd` varchar(245) DEFAULT NULL,
  `nomPrenom` varchar(225) DEFAULT NULL,
  `telUser` varchar(245) DEFAULT NULL,
  `fkIdGroupe` int(11) DEFAULT NULL,
  `fkidUsrCr` int(11) DEFAULT NULL,
  `dateCr` datetime DEFAULT NULL,
  `topUser` int(11) DEFAULT NULL,
  `mail` varchar(245) DEFAULT NULL,
  `estActive` int(11) DEFAULT NULL,
  `firstAccess` int(11) DEFAULT NULL,
  `dtLastCnx` datetime DEFAULT NULL,
  `isRootUser` int(11) NOT NULL DEFAULT '0',
  `tmpStr` varchar(245) DEFAULT NULL,
  PRIMARY KEY (`idUser`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_users`
--

LOCK TABLES `sys_users` WRITE;
/*!40000 ALTER TABLE `sys_users` DISABLE KEYS */;
INSERT INTO `sys_users` VALUES (1,'dsi','098f6bcd4621d373cade4e832627b4f6','DSI','',1,1,'2008-10-26 18:03:05',NULL,'',1,0,'2011-01-27 09:36:44',0,NULL),(2,'admin','9c1ad00a16a7c67e2727b471ac969e96','Chef','',2,1,'2009-04-16 11:59:27',NULL,'',1,0,'2011-01-30 17:29:46',0,NULL),(3,'c','098f6bcd4621d373cade4e832627b4f6','Caissier','',4,1,'2009-04-16 19:26:05',NULL,'',1,0,'2010-01-12 13:23:25',0,NULL),(4,'v','202cb962ac59075b964b07152d234b70','Vendeur','',3,NULL,NULL,NULL,NULL,1,NULL,NULL,0,NULL);
/*!40000 ALTER TABLE `sys_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-02-16 19:11:19
