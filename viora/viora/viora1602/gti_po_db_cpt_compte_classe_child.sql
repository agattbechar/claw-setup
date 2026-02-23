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
-- Table structure for table `cpt_compte_classe_child`
--

DROP TABLE IF EXISTS `cpt_compte_classe_child`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cpt_compte_classe_child` (
  `idCptChild` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `codeCptChild` varchar(45) DEFAULT '0',
  `libCptChild` varchar(145) DEFAULT NULL,
  `fkIdCptClasse` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`idCptChild`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cpt_compte_classe_child`
--

LOCK TABLES `cpt_compte_classe_child` WRITE;
/*!40000 ALTER TABLE `cpt_compte_classe_child` DISABLE KEYS */;
INSERT INTO `cpt_compte_classe_child` VALUES (1,'10','Capital',1),(2,'11','Réserves',1),(3,'12','Report à nouveau',1),(4,'13','Resultat net en attente d\'affectation',1),(5,'14','Subventions d\'équipement',1),(6,'15','Plus-values et provisions réglementées',1),(7,'16','Emprunts et dettes assimillées à long et moyen terme',1),(8,'19','Provisions pour risques et charges',1),(9,'20','Frais et valeurs incorporelles immo.',2),(10,'21','Immobilisations corporelles',2),(11,'23','Immobilisations en cours',2),(12,'26','Prêts et autres créances à long et moyen terme',2),(13,'28','Amortissements des immobilisations',2),(14,'29','Provision pour dépréciation des immobilisations',2),(15,'30','Marchandises',3),(16,'31','Matières premières et autres approvisionnements',3),(17,'33','En-Cours de production de biend ou services',3),(18,'35','Produits Finis',3),(19,'38','Stocks en cours de route,en dépôt ou en consignation',3),(20,'39','Provisions pour dépréciations des stocks et des en-cours',3),(21,'40','Fournisseurs et comptes rattachés',4),(22,'41','Clients et comptes rattachés',4),(23,'42','Personnel et comptes rattachés ',4),(24,'43','Etat et autres collectivités publiques',4),(25,'44','Sécurité sociales et autres organismes sociaux',4),(26,'45','Associés -comptes courants- groupe',4),(27,'46','Débiteur et créditeurs divers',4),(28,'48','Comptes de Regularisation et d\'Attente',4),(29,'49','Provision pour dépréciation des comptes de tiers',4),(30,'50','Emprunt à court terme',5),(31,'54','Chèques ,effets et coupons à l\'encaissement',5),(32,'55','Banques Institutions Financières et assimilées',5),(34,'58','Virements internes',5),(35,'59','Provision pour dépréciations des comptes financiers',5),(36,'60','Achats et variations de stocks',6),(37,'62','Charges externes liées à l\'investissement',6),(38,'63','Charges externes liées à l\'activité',6),(39,'64','Charges et pertes diverses',6),(40,'65','Frais de personnel',6),(41,'66','Impôts,taxes et versements assimilés',6),(42,'67','Charges Financières',6),(43,'68','Dotations aux amortissements',6),(44,'70','Vente de marchandises,Production vendue',7),(45,'71','Production stockée ou déstockage',7),(46,'72','Production de l\'entreprise pour elle-même',7),(47,'74','Produits et profits divers',7),(48,'77','Produits Financiers',7),(49,'78','Reprises sur Amortissements et Provisions',7),(50,'79','Frais à immobiliser  ou à transférer',7),(51,'84','Résultats de cession de l\'actif immobilisé',8),(52,'85','Résultat net avant impôt',8),(53,'86','Impôt sur le résultat',8),(54,'87','Résultat de la période',8),(55,'17','Dettes rattachées à des participations',1),(56,'18','Comptes de liaison des établissements, succursales et sociétés en participation',1),(57,'22','Immobilisations mises en concession',2),(58,'24',NULL,2),(59,'25',NULL,2),(60,'27','Participations et titres immobilisés',2),(61,'32','Emballages',3),(62,'34','Produits intermédiaires',3),(63,'36','Produits résiduels (ou matières de récupération)',3),(64,'37',NULL,3),(65,'51','Prêts à court terme',5),(66,'52','Valeurs mobilières de placement',5),(67,'53',NULL,5),(68,'56','Caisses',5),(69,'57','Régies d’avances et accréditifs',5),(70,'61','Achats de sous-traitance',6),(71,'69',NULL,6),(72,'73',NULL,7),(73,'75 ',NULL,7),(74,'76','Subventions d’exploitation et subventions d’équilibre',7),(75,'80',NULL,8),(76,'81',NULL,8),(77,'82','Résultats d’exploitation',8),(78,'83','Résultats d’opérations particulières',8),(79,'88',NULL,8),(80,'89',NULL,8);
/*!40000 ALTER TABLE `cpt_compte_classe_child` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-02-16 19:11:10
