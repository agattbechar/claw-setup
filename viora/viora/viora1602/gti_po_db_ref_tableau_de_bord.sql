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
-- Table structure for table `ref_tableau_de_bord`
--

DROP TABLE IF EXISTS `ref_tableau_de_bord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ref_tableau_de_bord` (
  `idRefTDB` int(11) NOT NULL AUTO_INCREMENT,
  `libRefTDB` varchar(145) DEFAULT NULL,
  `fkidRefTypeTDB` int(11) DEFAULT NULL,
  `nomDuFonction` varchar(145) DEFAULT NULL,
  `filterWithWhere` int(11) DEFAULT NULL,
  `supportChart` int(11) DEFAULT NULL,
  PRIMARY KEY (`idRefTDB`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ref_tableau_de_bord`
--

LOCK TABLES `ref_tableau_de_bord` WRITE;
/*!40000 ALTER TABLE `ref_tableau_de_bord` DISABLE KEYS */;
INSERT INTO `ref_tableau_de_bord` VALUES (1,'Liste de vente détaillée par chiffre d\'affaires de produit',1,'ProduitsParClient',0,0),(2,'Chiffre d\'affaires par client',1,'ClientsParProduit',0,0),(3,'Liste de Clients détaillée par force d\'achat',1,'topClients',0,0),(4,'Meilleur prix d\'achat',1,'MeuilleurPrisAchat',1,0),(5,'Historique des remises',1,'HistDesRemises',0,0),(6,'Les impayés',1,'LesImpayes',0,0),(7,'Factures aux échéances',2,'FacturesAuxEcheances',0,0),(8,'Chiffre d\'affaires des services',1,'ChiffreAffServices',0,0);
/*!40000 ALTER TABLE `ref_tableau_de_bord` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-02-16 19:11:16
