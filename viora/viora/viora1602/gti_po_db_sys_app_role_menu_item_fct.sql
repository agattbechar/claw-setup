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
-- Table structure for table `sys_app_role_menu_item_fct`
--

DROP TABLE IF EXISTS `sys_app_role_menu_item_fct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_app_role_menu_item_fct` (
  `idMItemFct` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `codeMItemFct` varchar(45) CHARACTER SET utf8 NOT NULL,
  `libMItemFct` varchar(145) CHARACTER SET utf8 NOT NULL,
  `paramFct` text CHARACTER SET utf8,
  `fkIdMenuItem` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`idMItemFct`),
  UNIQUE KEY `codeMItemFct_UNIQUE` (`codeMItemFct`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_app_role_menu_item_fct`
--

LOCK TABLES `sys_app_role_menu_item_fct` WRITE;
/*!40000 ALTER TABLE `sys_app_role_menu_item_fct` DISABLE KEYS */;
INSERT INTO `sys_app_role_menu_item_fct` VALUES (1,'enableTVA','TVA',NULL,0),(2,'enableRemise','Remise',NULL,0),(3,'enableUpdateFct','Modifier facture',NULL,0),(4,'enableCancelFct','Annuler facture',NULL,0),(5,'enableChangePrice','Modifier prix',NULL,0),(6,'enableUpdateOldFct','Modifier facture hors séance',NULL,0),(7,'enableSoldeCaisse','Consulter solde caisse',NULL,0),(8,'enableUpdateDtFct','Modifier date facture',NULL,0),(9,'enableRetourFct','Retour facture',NULL,0),(10,'enableCptView','Afficher des comptes',NULL,0),(11,'enableSaleCred','Autoriser la vente à terme',NULL,0),(12,'enableSaleEmp','Autoriser la vente pour salariés',NULL,0),(13,'enableVisualSldTr','Afficher soldes des Tiers',NULL,0),(14,'enableSaveFct','Autoriser l\'enregistrement des factures',NULL,0),(15,'enableSaleFrns','Autoriser la vente pour fournisseurs',NULL,0),(16,'enableSaleAutre','Autoriser la vente pour autres',NULL,0),(17,'enableSaleAsso','Autoriser la vente pour associés',NULL,0),(18,'enableInvResView','Afficher résultat d\'inventaire',NULL,0),(19,'enableSuiviArt','Afficher suivi d\'article',NULL,0),(20,'controleDateEcheance','Controller la date d\'échéance',NULL,0),(21,'enableTicketCloture','Raport ticket de caisse',NULL,0),(22,'enableCarte','Autoriser la vente par carte',NULL,0),(23,'enableValidationFct','Autoriser la validation des factures',NULL,0),(24,'enableEncaissement','Autoriser l\'encaissement',NULL,0),(26,'enableCreationTiers','Autoriser la creation des tiers',NULL,0),(27,'enableDecaissement','Autoriser le décaissement ',NULL,0);
/*!40000 ALTER TABLE `sys_app_role_menu_item_fct` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-02-16 19:11:18
