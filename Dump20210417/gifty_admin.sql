-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: gifty
-- ------------------------------------------------------
-- Server version	8.0.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `idadmin` int NOT NULL,
  `nom` varchar(45) NOT NULL,
  `prenom` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `mot de passe` varchar(45) NOT NULL,
  `client_idclient` int NOT NULL,
  `client_compte_idcompte` int NOT NULL,
  `cadeaux_idcadeaux` int NOT NULL,
  `blog_idblog` int NOT NULL,
  `profil_idprofil` int NOT NULL,
  PRIMARY KEY (`idadmin`,`client_idclient`,`client_compte_idcompte`,`cadeaux_idcadeaux`,`blog_idblog`,`profil_idprofil`),
  KEY `fk_admin_client1_idx` (`client_idclient`,`client_compte_idcompte`),
  KEY `fk_admin_cadeaux1_idx` (`cadeaux_idcadeaux`),
  KEY `fk_admin_blog1_idx` (`blog_idblog`),
  KEY `fk_admin_profil1_idx` (`profil_idprofil`),
  CONSTRAINT `fk_admin_blog1` FOREIGN KEY (`blog_idblog`) REFERENCES `blog` (`idblog`),
  CONSTRAINT `fk_admin_cadeaux1` FOREIGN KEY (`cadeaux_idcadeaux`) REFERENCES `cadeaux` (`idcadeaux`),
  CONSTRAINT `fk_admin_client1` FOREIGN KEY (`client_idclient`, `client_compte_idcompte`) REFERENCES `client` (`idclient`, `compte_idcompte`),
  CONSTRAINT `fk_admin_profil1` FOREIGN KEY (`profil_idprofil`) REFERENCES `profil` (`idprofil`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-17 13:10:40
