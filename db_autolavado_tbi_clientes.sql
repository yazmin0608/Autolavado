CREATE DATABASE  IF NOT EXISTS `db_autolavado` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_autolavado`;
-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: localhost    Database: db_autolavado
-- ------------------------------------------------------
-- Server version	8.4.6

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
-- Table structure for table `tbi_clientes`
--

DROP TABLE IF EXISTS `tbi_clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbi_clientes` (
  `idCliente` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `primerApellido` varchar(45) NOT NULL,
  `segundoApellido` varchar(45) DEFAULT NULL,
  `direccion` varchar(100) NOT NULL,
  `telefono` varchar(12) NOT NULL,
  `correo` varchar(65) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`idCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbi_clientes`
--

LOCK TABLES `tbi_clientes` WRITE;
/*!40000 ALTER TABLE `tbi_clientes` DISABLE KEYS */;
INSERT INTO `tbi_clientes` VALUES (1,'Alfonso','Nose','Nose 3','Av. Nose','1234567890','alonso@gmail.com','123456'),(2,'Andres','Castro','Merced','Av. Sanidad','123456','Andres@gmail.com','1234'),(5,'Mariana','Gutierrez','Fosado','Av. Ricopollo','789456','mariana@gmail.com','478596'),(6,'Erika','Vargas','Martinez','Av. Amador','789123456','erika@gmail.com','123697485');
/*!40000 ALTER TABLE `tbi_clientes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-08-05  0:06:34
