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
-- Table structure for table `ref_medic_medicament`
--

DROP TABLE IF EXISTS `ref_medic_medicament`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ref_medic_medicament` (
  `idMedicament` int(11) NOT NULL AUTO_INCREMENT,
  `codeMedic` varchar(45) DEFAULT '0',
  `libMedicament` varchar(145) NOT NULL,
  `fkIdClasse_therap` int(10) unsigned NOT NULL DEFAULT '1',
  `fkIdConditionnement` int(10) unsigned NOT NULL DEFAULT '1',
  `fkIdDCI` int(10) unsigned NOT NULL DEFAULT '1',
  `fkIdForme` int(10) unsigned NOT NULL DEFAULT '1',
  `fkIdMedic_type` int(10) unsigned NOT NULL DEFAULT '1',
  `fk_idLabo` int(10) unsigned DEFAULT '0',
  `fk_idPays` int(10) unsigned DEFAULT '0',
  `prixMedic` double DEFAULT '0',
  `prixCNAM` double DEFAULT '0',
  `ccPrixPondere` float DEFAULT '0',
  `qteSeuilStock` int(10) unsigned DEFAULT '0',
  `ccQteStock` float DEFAULT '0',
  `ccQteEntree` double DEFAULT '0',
  `ccQteSortie` double DEFAULT '0',
  `ccQtedetails` int(10) unsigned DEFAULT '0',
  `soumisVenteDetails` tinyint(3) DEFAULT '0',
  `nbUniteDetails` int(10) unsigned DEFAULT '0',
  `prUniteDetails` int(10) unsigned DEFAULT '0',
  `estSupp` tinyint(3) DEFAULT '0',
  PRIMARY KEY (`idMedicament`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ref_medic_medicament`
--

LOCK TABLES `ref_medic_medicament` WRITE;
/*!40000 ALTER TABLE `ref_medic_medicament` DISABLE KEYS */;
/*!40000 ALTER TABLE `ref_medic_medicament` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-02-16 19:11:15
