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
-- Table structure for table `ref_cpt_compte_bilan`
--

DROP TABLE IF EXISTS `ref_cpt_compte_bilan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ref_cpt_compte_bilan` (
  `idCpt` int(11) NOT NULL AUTO_INCREMENT,
  `CodeCpt` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `LibCpt` varchar(400) CHARACTER SET latin1 DEFAULT NULL,
  `fkidCptChild` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`idCpt`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ref_cpt_compte_bilan`
--

LOCK TABLES `ref_cpt_compte_bilan` WRITE;
/*!40000 ALTER TABLE `ref_cpt_compte_bilan` DISABLE KEYS */;
INSERT INTO `ref_cpt_compte_bilan` VALUES (1,'100','  Capital  individuel  ou  capital  social','1'),(2,'104',' Primes liées au capital social','1'),(3,'105 ','Fonds de dotation','1'),(4,'110 ','Réserves légales','2'),(5,'114','Réserves réglementées','2'),(6,'116 ','Autres réserves','2'),(7,'12 ','REPORT A NOUVEAU','3'),(8,'16',' EMPRUNTS ET DETTTES ASSIMILEES A LONG ET MOYEN TERME','7'),(9,'17',' DETTES RATTACHEES A DES PARTICIPATIONS','7'),(10,'19 ','PROVISIONS POUR RISAUES ET CHARGES','8'),(11,'200 ','Frais immobilisés','9'),(12,'203',' Frais de recherches et du développement','9'),(13,'205 ','Valeurs incorporelles immobilisées','9'),(14,'210',' Terrains','10'),(15,'212 ','Constructions','10'),(16,'213 ','Installations complexes spécialisés','10'),(17,'215 ','Matériel de transport','10'),(18,'216 ','Matériel  de bureau et informatique','10'),(19,'218',' Autres immobilisations corporelles','10'),(20,'26 ','PRETS ET AUTRES CREANCES A LONG ET MOYEN TERME','12'),(21,'27 ','PARTICIPATIONS ET TITRES IMMOBILISES','12'),(22,'2800',' Amortissements des frais immobilisés','13'),(23,'2803 ','Amortissements des frais de recherche et de développement ','13'),(24,'2960 ','Provisions pour dépréciations des prêts et avances consenties ','14'),(25,'2805 ','Amortissements des valeurs incorporelles immobilisées long et moyen terme','13'),(26,'2812 ','Amortissement des constructions immobilisés','13'),(27,'2813',' Amortissements des installations complexes sp?cialis?es 2978 Provisions pour dépréciation des créances rattachées à des sociètés','13'),(28,'2814 ','Amortissements du matériel d\'exploitation en participation','13'),(29,'2815',' Amortissement du matériel de transport','13'),(30,'2816 ','Amortissements du matériel de bureau et informatique','13'),(31,'2818 ','Amortissements des autres immobilisations corporelles','13'),(32,'2905 ','Provisions pour dépréciation des valeurs incorporelles immobilisées','14'),(33,'2910 ','Provision pour dépréciations des terrains','14'),(34,'296 ','Provisions pour dépréciations des prêts et autres créances à long et moyen terme','14'),(35,'30 ','MARCHANDISES','15'),(36,'31 ','MATIERES PREMIERES ET AUTRES APPROVISIONNEMENTS','16'),(37,'32 ','EMBALLAGES','16'),(38,'33 ','ENCOURS DE PRODUCTION DE BIENS (OU DE SERVICES','17'),(39,'34 ','PRODUCTIONS INTERMEDIAIRES','17'),(40,'35 ','PRODUITS FINIS','18'),(41,'36 ','PRODUITS RESIDUELS (OU MATIERES DE RECUPERATION)','18'),(42,'390 ','Provisions pour dépréciation des stocks de marchandises','20'),(43,'391 ','Provisions pour dépréciation des stocks de matières premières','20'),(44,'392 ','Provisions pour dépréciation des stocks d\'emballages','20'),(45,'393 ','Provisions pour dépréciation des stocks encours','20'),(46,'394 ','Provisions pour dépréciation des stocks de produits intermédiaires','20'),(47,'395 ','Provisions pour dépréciation des stocks de produits finis','20'),(48,'40 ','FOURNISSEURS ET COMPTES RATTACHES','21'),(49,'409 ','Fournisseurs débiteurs','21'),(50,'41 ','CLIENTS ET COMPTES RATTACHES','22'),(51,'419 ','Clients créditeurs','22'),(52,'42 ','PERSONNEL ET COMPTES RATTACHES','23'),(53,'42 ','PERSONNEL ET COMPTES RATTACHES','23'),(54,'43 ','ETAT ET AUTRES COLLECTIVITES PUBLIQUES','24'),(55,'44 ','Sécurité sociale et autres organismes sociaux','25'),(56,'45 ','ASSOCIES-COMPTES COURANTS-GROUPE','26'),(57,'45 ','ASSOCIES-COMPTES COURANTS-GROUPE','26'),(58,'480 ','Charges constatées d\'avance','28'),(59,'481 ','Produits constatées d\'avance','28'),(60,'484 ','Différence de conversion sur opérations en devise-passif','28'),(61,'484 ','Différence de conversion sur opérations en devise-passif','28'),(62,'488 ','Comptes d’attentes et à régularisé','28'),(63,'495 ',' Provisions pour dépréciation des comptes d’associés et groupe ','29'),(64,'496 ','Provisions pourdépréciation des comptes de débiteurs divers','29'),(65,'591 ','Provisions pour dépréciation des prêts à court terme','35'),(66,'592 ','Provisions pour dépréciation des valeurs mobilières de placement','35'),(67,'50 ','MPRUNTS A COURT TERME','30'),(68,'51 ','PRETS A COURT TERME','0'),(69,'52 ','VALEURS MOBILIERES DE PLACEMENT','0'),(70,'50 ','BANQUES, INSTITUTIONS FINANCIERES ET ASSIMILEES','32'),(71,'559 ','Concours bancaires courants','32'),(72,'51 ','CAISSE','33'),(73,'52 ','REGIES D\'AVANCES ET ACCREDITIFS','0'),(74,'54 ','PROVISIONS POUR DEPRECIATION DES COMPTES FINANCIERS','14'),(75,'214','Matériel d’exploitation','9'),(76,'4641','Débiteurs divers','27'),(77,'4642','Créditeurs divers','27'),(78,'297','Provisions pour dépréciation des participations et titres','114'),(79,'491','Provisions pour dépréciation des comptes de clients ','29');
/*!40000 ALTER TABLE `ref_cpt_compte_bilan` ENABLE KEYS */;
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
