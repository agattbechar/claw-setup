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
-- Table structure for table `sec_rel_user_cptchild_cpts`
--

DROP TABLE IF EXISTS `sec_rel_user_cptchild_cpts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sec_rel_user_cptchild_cpts` (
  `idsec_rel_user_cptchild_cpts` int(11) NOT NULL AUTO_INCREMENT,
  `fkid_user` int(10) unsigned DEFAULT NULL,
  `fkid_cpt` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`idsec_rel_user_cptchild_cpts`),
  KEY `fkid_cpt_idx` (`fkid_cpt`),
  KEY `fkid_user_idx` (`fkid_user`),
  CONSTRAINT `fkid_cpt` FOREIGN KEY (`fkid_cpt`) REFERENCES `cpt_compte` (`idCpt`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fkid_user` FOREIGN KEY (`fkid_user`) REFERENCES `sys_users` (`idUser`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sec_rel_user_cptchild_cpts`
--

LOCK TABLES `sec_rel_user_cptchild_cpts` WRITE;
/*!40000 ALTER TABLE `sec_rel_user_cptchild_cpts` DISABLE KEYS */;
/*!40000 ALTER TABLE `sec_rel_user_cptchild_cpts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-02-16 19:11:17
