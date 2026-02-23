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
-- Table structure for table `cs_facture_hist_ligne`
--

DROP TABLE IF EXISTS `cs_facture_hist_ligne`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cs_facture_hist_ligne` (
  `idFctHistL` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idFctHist` int(10) unsigned DEFAULT '0',
  `fkIdFct` int(10) unsigned DEFAULT '0',
  `fkIdPrd` int(10) unsigned DEFAULT '0',
  `fk_idLot` int(10) unsigned DEFAULT '0',
  `qtePrd` double DEFAULT '0',
  `prixPrd` double DEFAULT '0',
  `tvaPrdFct` double DEFAULT '0',
  `fk_idLabo` int(10) unsigned DEFAULT '0',
  `nbUnite` int(10) unsigned DEFAULT '0',
  `blNatureUnite` tinyint(3) unsigned DEFAULT '0',
  `libCurPrd` varchar(100) DEFAULT NULL,
  `typePrdSrv` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idFctHistL`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cs_facture_hist_ligne`
--

LOCK TABLES `cs_facture_hist_ligne` WRITE;
/*!40000 ALTER TABLE `cs_facture_hist_ligne` DISABLE KEYS */;
INSERT INTO `cs_facture_hist_ligne` VALUES (1,1,318,127,0,1,1480,0,0,1,0,'','typePrd'),(2,1,318,328,0,1,1220,0,0,1,0,'','typePrd'),(3,1,318,7,0,1,550,0,0,1,0,'','typePrd'),(4,2,318,328,0,1,1220,0,0,1,0,'','typePrd'),(5,2,318,325,0,1,950,0,0,1,0,'','typePrd');
/*!40000 ALTER TABLE `cs_facture_hist_ligne` ENABLE KEYS */;
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
