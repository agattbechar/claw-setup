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
-- Table structure for table `cs_commande_hist`
--

DROP TABLE IF EXISTS `cs_commande_hist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cs_commande_hist` (
  `idCmdHist` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idCmd` int(10) unsigned DEFAULT '0',
  `codeCmd` varchar(20) NOT NULL,
  `libCmd` varchar(150) NOT NULL,
  `dtCmd` datetime NOT NULL,
  `fkIdFrns` int(10) unsigned NOT NULL,
  `fkIdFctType` int(10) unsigned NOT NULL DEFAULT '0',
  `monCours` float DEFAULT NULL,
  `tauxCharge` float DEFAULT NULL,
  `monDevise` varchar(45) DEFAULT NULL,
  `etatCmd` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `isChanged` tinyint(3) unsigned DEFAULT '0',
  `remiseCmd` varchar(45) DEFAULT NULL,
  `ccTTCDev` double NOT NULL DEFAULT '0',
  `ccTTC` double NOT NULL DEFAULT '0',
  `cmdFlgTbl` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `saisieDt` datetime DEFAULT NULL,
  `saisieIdUsr` int(10) unsigned DEFAULT '0',
  `fkIdCaisse` int(10) unsigned DEFAULT '0',
  `blCmdAnnule` tinyint(3) unsigned DEFAULT '0',
  `dtAnnulation` datetime DEFAULT NULL,
  `fkIdUsrAnnule` int(10) unsigned DEFAULT '0',
  `dtMAJCmd` datetime DEFAULT NULL,
  PRIMARY KEY (`idCmdHist`),
  KEY `Index_2` (`etatCmd`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cs_commande_hist`
--

LOCK TABLES `cs_commande_hist` WRITE;
/*!40000 ALTER TABLE `cs_commande_hist` DISABLE KEYS */;
INSERT INTO `cs_commande_hist` VALUES (1,24,'00024/25','COMMANDE MIGRATOIR','2025-11-03 00:00:00',2,5,1,0,'MRU',1,0,'0',1800,1800,0,'2025-11-03 18:45:59',2,0,0,NULL,0,'2025-11-03 18:47:06');
/*!40000 ALTER TABLE `cs_commande_hist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-02-16 19:11:11
