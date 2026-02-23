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
-- Table structure for table `cs_facture_tmp`
--

DROP TABLE IF EXISTS `cs_facture_tmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cs_facture_tmp` (
  `idFct` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `codeFct` varchar(20) NOT NULL,
  `libFct` varchar(150) DEFAULT NULL,
  `dtFct` datetime DEFAULT NULL,
  `fkIdClt` int(10) unsigned NOT NULL DEFAULT '0',
  `fk_idSteCltAss` int(11) DEFAULT '0',
  `remiseFct` varchar(45) DEFAULT '0',
  `tvaFct` float DEFAULT '0',
  `ccMntTvaFct` float DEFAULT '0',
  `blTvaCollectParClt` tinyint(3) unsigned DEFAULT '0',
  `arretFct` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `etatFct` tinyint(3) NOT NULL DEFAULT '0',
  `mntEncaisse` double NOT NULL DEFAULT '0',
  `fkIdFctType` int(10) unsigned NOT NULL DEFAULT '1',
  `nomClientCash` varchar(145) DEFAULT NULL,
  `mntReliqCent` varchar(45) DEFAULT '0',
  `blReliqCent` tinyint(3) DEFAULT '0',
  `mntCredit` double DEFAULT '0',
  `fctFlgTbl` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `estPaye` tinyint(3) DEFAULT '0',
  `mntPayeReliq` double DEFAULT '0',
  `dtFctEchnc` date DEFAULT NULL,
  `saisieDt` datetime DEFAULT NULL,
  `saisieIdUsr` int(10) unsigned DEFAULT NULL,
  `fk_idUsrArretFct` int(11) DEFAULT '0',
  `dtArretFct` datetime DEFAULT NULL,
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
  `fkIdDepot` int(11) DEFAULT NULL,
  `assPatientID` varchar(5) DEFAULT NULL,
  `isValidated` tinyint(3) unsigned DEFAULT '0',
  `isLp` int(11) DEFAULT '0',
  `isSynch` int(2) DEFAULT NULL,
  `mntDonne` double DEFAULT NULL,
  `valideIdUser` int(11) DEFAULT NULL,
  `fkidFctParent` int(11) DEFAULT NULL,
  `idModePaiement` int(11) DEFAULT NULL,
  PRIMARY KEY (`idFct`),
  KEY `dtFct` (`dtFct`),
  KEY `fkIdClt` (`fkIdClt`),
  KEY `fkIdFctType` (`fkIdFctType`),
  KEY `saisieIdUsr` (`saisieIdUsr`),
  KEY `blFctAnnule` (`blFctAnnule`),
  KEY `modePaiement_idx` (`idModePaiement`),
  CONSTRAINT `modePaiement_fact_tmp` FOREIGN KEY (`idModePaiement`) REFERENCES `cs_fin_paie_elec` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cs_facture_tmp`
--

LOCK TABLES `cs_facture_tmp` WRITE;
/*!40000 ALTER TABLE `cs_facture_tmp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cs_facture_tmp` ENABLE KEYS */;
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
