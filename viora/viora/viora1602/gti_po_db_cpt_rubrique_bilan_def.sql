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
-- Table structure for table `cpt_rubrique_bilan_def`
--

DROP TABLE IF EXISTS `cpt_rubrique_bilan_def`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cpt_rubrique_bilan_def` (
  `idRubB` int(11) NOT NULL,
  `libRub` varchar(200) DEFAULT NULL,
  `natureRub` tinyint(2) DEFAULT NULL,
  `comptesLiesBrut` text,
  `comptesLiesAmort` text,
  `fkidRubParent` int(11) DEFAULT NULL,
  `dtCreationRub` datetime DEFAULT NULL,
  `inverseSiNegatif` tinyint(2) DEFAULT NULL,
  `isCalculRub` tinyint(2) DEFAULT NULL,
  `fkidUsrCreator` int(11) DEFAULT NULL,
  PRIMARY KEY (`idRubB`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cpt_rubrique_bilan_def`
--

LOCK TABLES `cpt_rubrique_bilan_def` WRITE;
/*!40000 ALTER TABLE `cpt_rubrique_bilan_def` DISABLE KEYS */;
INSERT INTO `cpt_rubrique_bilan_def` VALUES (1,'ACTIF IMMOBILISE',0,'','',-1,NULL,0,0,2),(2,'Frais et valeurs incorporelles Immobilisées',0,'200100','280200',1,NULL,0,1,2),(3,'Immobilisation corporelles',0,'21*','2821*',1,NULL,0,1,2),(4,'Immobilisations financières',0,'','',1,NULL,0,0,2),(5,'ACTIF CIRCULANT',0,'','',-1,NULL,0,0,2),(8,'ValeurExploitation',0,'3*','0',5,NULL,0,1,2),(9,'Valeurs réalisables à court terme et disponibles',0,'','',5,NULL,0,0,2),(11,'REGURALISATION',0,'','',-1,NULL,0,0,2),(12,'Comptes de régularisation et dattente',0,'481;484;488','0',1,NULL,0,1,2),(15,'Immobilisations en cours',0,'230*','',1,NULL,0,1,2),(16,'Prêts et autres créances à long et moyen terme',0,'260*','0',1,NULL,0,1,2),(17,'Disponibilité',0,'56*;55*','0',9,NULL,0,1,2),(18,'Fournisseurs débiteurs',0,'40*','0',9,NULL,1,1,2),(19,'Clients et comptes rattachés',0,'41*','0',9,NULL,1,1,2),(20,'Personnel et comptes rattachés',0,'42*','0',9,NULL,1,1,2),(21,'Autres créances (Etat, organismes sociaux)',0,'43*','0',9,NULL,1,1,2),(22,'Sécurité sociale et autres organismes sociaux',0,'44*','0',9,NULL,1,1,2),(23,'Associés, comptes courants, groupe',0,'45*','0',9,NULL,1,1,2),(24,'Débiteurs divers',0,'46*','0',9,NULL,1,1,2),(25,'CAPITAUX A LONG ET MOYEN TERME',1,'','',-1,NULL,0,0,2),(26,'Capital',1,'10*','',25,NULL,0,1,2),(27,'RESERVES',1,'11*','',-1,NULL,0,0,2),(28,'Report à nouveau (solde débiter ou solde créditer)',1,'12*','',-1,NULL,0,1,2),(29,'Résultat net de l\'exercice (bénéfice ou perte)',1,'13*','',-1,NULL,0,1,2),(30,'Subvention d\'équipement',1,'14*','',-1,NULL,0,1,2),(31,'Plus-values et provisions réglementées',1,'15*','',-1,NULL,0,1,2),(32,'Dette à long et moyen terme',1,'16*','',-1,NULL,0,1,2),(33,'Provisions pour risques et charges',1,'19*','',-1,NULL,0,1,2),(34,'Clients créditeurs',1,'41*','',45,NULL,1,1,2),(35,'Fournisseurs et comptes rattachés',1,'40*','',45,NULL,1,1,2),(36,'Personel et compte rattchés Créditeurs',1,'42*','',45,NULL,1,1,2),(37,'Etat et autres collectivités publiques',1,'43*','',45,NULL,1,1,2),(38,'Sécurité sociale & autres organismes sociaux',1,'44*','',45,NULL,1,1,2),(39,'Associés - comptes courants - groupe',1,'45*','',45,NULL,1,1,2),(40,'Créditeurs divers',1,'46*','',45,NULL,1,1,2),(41,'Emprunt à cours terme',1,'50*','',44,NULL,0,1,2),(42,'REGULARISATION',1,'','',-1,NULL,0,0,2),(43,'Compte de régularisation et d\'attente',1,'482;485;489','',42,NULL,0,1,2),(44,'Cpitaux à cours terme',1,'','',-1,NULL,0,0,2),(45,'Dettes à court terme',1,'','',44,NULL,0,0,2);
/*!40000 ALTER TABLE `cpt_rubrique_bilan_def` ENABLE KEYS */;
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
