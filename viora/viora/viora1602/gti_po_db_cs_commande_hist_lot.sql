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
-- Table structure for table `cs_commande_hist_lot`
--

DROP TABLE IF EXISTS `cs_commande_hist_lot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cs_commande_hist_lot` (
  `idCmdHistL` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idCmdLot` int(10) unsigned DEFAULT '0',
  `codeCmdLot` varchar(20) COLLATE utf8_bin NOT NULL,
  `qteLot` int(10) NOT NULL,
  `dtPreempLot` datetime DEFAULT NULL,
  `fkIdMedic` int(10) unsigned DEFAULT '0',
  `fk_idLabo` int(10) unsigned DEFAULT '0',
  `fk_idPays` int(10) unsigned DEFAULT '0',
  `fkIdCsr` int(10) unsigned DEFAULT '0',
  `fkIdCmd` int(10) unsigned DEFAULT '0',
  `prixAchatlot` double DEFAULT '0',
  `ccQteLot` int(10) unsigned DEFAULT '0',
  `puVenteTmp` double DEFAULT '0',
  PRIMARY KEY (`idCmdHistL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cs_commande_hist_lot`
--

LOCK TABLES `cs_commande_hist_lot` WRITE;
/*!40000 ALTER TABLE `cs_commande_hist_lot` DISABLE KEYS */;
/*!40000 ALTER TABLE `cs_commande_hist_lot` ENABLE KEYS */;
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
