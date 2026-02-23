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
-- Table structure for table `cs_fin_tiers`
--

DROP TABLE IF EXISTS `cs_fin_tiers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cs_fin_tiers` (
  `idFinTr` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `prenomNomTr` varchar(145) DEFAULT NULL,
  `telFinTr` varchar(45) DEFAULT NULL,
  `adrFinTr` text,
  `fkIdCpt` int(10) unsigned NOT NULL,
  `fkIdTypeTr` int(11) NOT NULL,
  `blActivSlClt` tinyint(3) DEFAULT '0',
  `seuilMntATerme` int(10) unsigned DEFAULT '0',
  `mntSalaire` float DEFAULT '0',
  `codeEmp` varchar(45) DEFAULT NULL,
  `dtNaissance` date DEFAULT NULL,
  `dtEmbauche` date DEFAULT NULL,
  `estAssureur` tinyint(3) unsigned DEFAULT '0',
  `activGstCrt` tinyint(3) DEFAULT '0',
  `codeTrCredit` varchar(20) DEFAULT NULL,
  `codeTrRemise` varchar(20) DEFAULT NULL,
  `tauxTrRemise` float DEFAULT '0',
  `estSuppble` tinyint(3) unsigned DEFAULT '0',
  `blDsblTr` tinyint(3) DEFAULT '0',
  `nomPrenomGerant` varchar(145) DEFAULT NULL,
  `NumTelMobile` varchar(45) DEFAULT NULL,
  `fkidZone` int(11) DEFAULT NULL,
  `estCNAM` int(3) DEFAULT '0',
  `longi` float DEFAULT NULL,
  `lati` float DEFAULT NULL,
  PRIMARY KEY (`idFinTr`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cs_fin_tiers`
--

LOCK TABLES `cs_fin_tiers` WRITE;
/*!40000 ALTER TABLE `cs_fin_tiers` DISABLE KEYS */;
INSERT INTO `cs_fin_tiers` VALUES (1,'Client cash',NULL,'Indefinie',2,2,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,1,0,NULL,NULL,NULL,0,NULL,NULL),(2,'Fr cash',NULL,'Indefinie',3,1,0,0,0,NULL,NULL,NULL,0,0,NULL,NULL,0,1,0,NULL,NULL,NULL,0,NULL,NULL),(3,'GCC','36676000','',156,1,0,0,0,'',NULL,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,-1,0,0,0),(4,'MAURIPHARM','25000802','',157,1,0,0,0,'',NULL,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,-1,0,0,0),(5,'maurimed','22019789','',161,1,0,0,0,'',NULL,NULL,0,0,NULL,NULL,0,0,0,NULL,NULL,-1,0,0,0);
/*!40000 ALTER TABLE `cs_fin_tiers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-02-16 19:11:13
