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
-- Table structure for table `tbc_usuarios`
--

DROP TABLE IF EXISTS `tbc_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbc_usuarios` (
  `idUsuario` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `primerApellido` varchar(45) NOT NULL,
  `segundoApellido` varchar(45) DEFAULT NULL,
  `direccion` varchar(100) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `correo` varchar(70) NOT NULL,
  `usuario` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `fechaNacimiento` date NOT NULL,
  `idRol` int NOT NULL,
  PRIMARY KEY (`idUsuario`),
  KEY `fk_idRol_idx` (`idRol`),
  CONSTRAINT `fk_idRol` FOREIGN KEY (`idRol`) REFERENCES `tbi_roles` (`idRol`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbc_usuarios`
--

LOCK TABLES `tbc_usuarios` WRITE;
/*!40000 ALTER TABLE `tbc_usuarios` DISABLE KEYS */;
INSERT INTO `tbc_usuarios` VALUES (6,'Alonso','Juarez','Josento','Av. Negra','1234567089','alonso@gmail.com','xalonso','123456','2002-05-05',2),(8,'Luis','Cázarez','Márquez','Av. Terminal','7641039250','luis@gmail.com','xluiscm','160802','2002-08-16',5),(9,'Emilio','Carmona','Cabrera','Av. Universidad','123456789','emi@gmail.com','xemilio','1234','2000-09-30',3),(10,'Alan','Ferrera','Sandoval','Av. Rivera','123456','alan@gmail.com','xalan','1234','1998-02-19',3),(11,'Pedro','Luna','Zarate','Av. Villa Hermosa','7894561230','pedro50@gmail.com','xpedro5000','pedro5000','1992-04-25',3),(12,'Maribel','Gutierrez','Sandoval','Av. Zaragoza','784512','maribel@gmail.com','xmaribel','1234','1998-02-16',1);
/*!40000 ALTER TABLE `tbc_usuarios` ENABLE KEYS */;
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
