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
-- Table structure for table `cs_facture_hist`
--

DROP TABLE IF EXISTS `cs_facture_hist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cs_facture_hist` (
  `idFctHist` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idFct` int(10) unsigned NOT NULL,
  `codeFct` varchar(20) DEFAULT NULL,
  `libFct` varchar(150) DEFAULT NULL,
  `dtFct` datetime DEFAULT NULL,
  `fkIdClt` int(10) unsigned NOT NULL DEFAULT '0',
  `remiseFct` varchar(45) DEFAULT '0',
  `tvaFct` float DEFAULT '0',
  `arretFct` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `etatFct` int(10) unsigned NOT NULL DEFAULT '0',
  `mntEncaisse` double NOT NULL DEFAULT '0',
  `fkIdFctType` int(10) unsigned NOT NULL DEFAULT '1',
  `nomClientCash` varchar(145) DEFAULT NULL,
  `mntReliqCent` varchar(45) DEFAULT '0',
  `mntCredit` double DEFAULT '0',
  `fctFlgTbl` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `saisieDt` datetime DEFAULT NULL,
  `saisieIdUsr` int(10) unsigned DEFAULT NULL,
  `fkIdCaisse` int(10) unsigned DEFAULT NULL,
  `blFctAnnule` tinyint(3) unsigned DEFAULT '0',
  `dtAnnulation` datetime DEFAULT NULL,
  `motifAnnulation` text,
  `fkIdUsrAnnule` int(10) unsigned DEFAULT '0',
  `fkIdSeance` int(10) unsigned DEFAULT '0',
  `isChange` tinyint(3) unsigned DEFAULT '0',
  `ccMargeFct` double DEFAULT '0',
  `assPatientNom` varchar(145) DEFAULT NULL,
  `assPatientCode` varchar(45) DEFAULT NULL,
  `assPatientPch` float DEFAULT '0',
  `estCnam` tinyint(3) unsigned DEFAULT '0',
  `cnamPresc` varchar(100) DEFAULT NULL,
  `dtMAJFct` datetime DEFAULT NULL,
  PRIMARY KEY (`idFctHist`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cs_facture_hist`
--

LOCK TABLES `cs_facture_hist` WRITE;
/*!40000 ALTER TABLE `cs_facture_hist` DISABLE KEYS */;
INSERT INTO `cs_facture_hist` VALUES (1,318,'FC000061/25','','2025-12-22 00:00:00',1,'290',0,0,0,2960,1,NULL,'0',0,0,'2025-12-22 16:23:20',4,1,0,NULL,NULL,0,13,0,1307,'','',0,0,'','2025-12-22 16:52:51'),(2,318,'FC000061/25','','2025-12-22 00:00:00',1,'170',0,0,0,2000,1,NULL,'0',0,0,'2025-12-22 16:23:20',4,1,0,'2025-12-22 16:52:51',NULL,4,13,1,720,'','',0,0,'','2025-12-22 18:14:38');
/*!40000 ALTER TABLE `cs_facture_hist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-02-16 19:11:12
