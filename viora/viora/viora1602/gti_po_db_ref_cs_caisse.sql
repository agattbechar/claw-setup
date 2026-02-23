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
-- Table structure for table `ref_cs_caisse`
--

DROP TABLE IF EXISTS `ref_cs_caisse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ref_cs_caisse` (
  `idCaisse` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `codeCaisse` varchar(35) NOT NULL,
  `libCaisse` varchar(120) NOT NULL,
  `fkIdUsr` int(10) unsigned NOT NULL DEFAULT '0',
  `mntInit` double NOT NULL DEFAULT '0',
  `ccSoldeCaisse` double NOT NULL DEFAULT '0',
  `isCentrale` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `isLibre` tinyint(4) unsigned NOT NULL DEFAULT '1',
  `fkIdCpt` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`idCaisse`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ref_cs_caisse`
--

LOCK TABLES `ref_cs_caisse` WRITE;
/*!40000 ALTER TABLE `ref_cs_caisse` DISABLE KEYS */;
INSERT INTO `ref_cs_caisse` VALUES (1,'cc','Caisse centrale',4,0,0,1,1,74);
/*!40000 ALTER TABLE `ref_cs_caisse` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-02-16 19:11:14
