-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: db_autolavado
-- ------------------------------------------------------
-- Server version	8.0.42

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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbc_usuarios`
--

LOCK TABLES `tbc_usuarios` WRITE;
/*!40000 ALTER TABLE `tbc_usuarios` DISABLE KEYS */;
INSERT INTO `tbc_usuarios` VALUES (9,'Yazmin','Esquivel','Marquez','Av. Terminal','7641239194','yaz@gmail.com','xyaz','1234','2006-08-06',2),(10,'Evelia','Acosta','Barrios','Av. Rivera','7641308269','eve@gmail.com','xevelia','1234','2002-09-07',5),(11,'Brayan','Esquivel','Marquez','Av. Azaleas','7641239195','brayan@gmail.com','xbrayan','1234','2000-08-03',1),(12,'Oliver','Sanchez','Arrioja','Av. Zaragoza','7641239196','oliver@gmail.com','xoliver','1234','2006-02-16',3);
/*!40000 ALTER TABLE `tbc_usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbc_vehiculo`
--

DROP TABLE IF EXISTS `tbc_vehiculo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbc_vehiculo` (
  `idVehiculo` int NOT NULL AUTO_INCREMENT,
  `matricula` varchar(15) NOT NULL,
  `marca` varchar(45) NOT NULL,
  `modelo` varchar(45) NOT NULL,
  `color` varchar(45) NOT NULL,
  `year` int NOT NULL,
  `idCliente` int NOT NULL,
  `tipo` varchar(45) NOT NULL,
  PRIMARY KEY (`idVehiculo`),
  KEY `fk_clientes_idx` (`idCliente`),
  CONSTRAINT `fk_clientes` FOREIGN KEY (`idCliente`) REFERENCES `tbi_clientes` (`idCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbc_vehiculo`
--

LOCK TABLES `tbc_vehiculo` WRITE;
/*!40000 ALTER TABLE `tbc_vehiculo` DISABLE KEYS */;
INSERT INTO `tbc_vehiculo` VALUES (2,'2525AF','BMW','YZ','Negro',2022,2,'Motocicleta'),(5,'415-sd','Nissan','No seee','Naranjoso',2015,1,'Familiar'),(9,'1544AD-S','Nose ','Seoa','Verde',2005,5,'Camion'),(10,'240235','BMW','Normal','Negro',2020,1,'Camioneta');
/*!40000 ALTER TABLE `tbc_vehiculo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbc_venta_servicios`
--

DROP TABLE IF EXISTS `tbc_venta_servicios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbc_venta_servicios` (
  `idVentaServicios` int NOT NULL AUTO_INCREMENT,
  `idUsuarioC` int NOT NULL,
  `idUsuarioO` int NOT NULL,
  `idServicio` int NOT NULL,
  `idVehiculo` int DEFAULT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `estatus` varchar(45) NOT NULL,
  `pagado` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`idVentaServicios`),
  KEY `fk_usuarioC_idx` (`idUsuarioC`),
  KEY `fk_usuarioO_idx` (`idUsuarioO`),
  KEY `fk_servicio_idx` (`idServicio`),
  KEY `id_vehiculo_idx` (`idVehiculo`),
  CONSTRAINT `fk_servicio` FOREIGN KEY (`idServicio`) REFERENCES `tbi_servicios` (`idServiicios`),
  CONSTRAINT `fk_usuarioC` FOREIGN KEY (`idUsuarioC`) REFERENCES `tbc_usuarios` (`idUsuario`),
  CONSTRAINT `fk_usuarioO` FOREIGN KEY (`idUsuarioO`) REFERENCES `tbc_usuarios` (`idUsuario`),
  CONSTRAINT `id_vehiculo` FOREIGN KEY (`idVehiculo`) REFERENCES `tbc_vehiculo` (`idVehiculo`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbc_venta_servicios`
--

LOCK TABLES `tbc_venta_servicios` WRITE;
/*!40000 ALTER TABLE `tbc_venta_servicios` DISABLE KEYS */;
INSERT INTO `tbc_venta_servicios` VALUES (15,12,9,2,2,'2004-08-16','12:00:00','En espera','Pagado'),(17,12,9,2,9,'2027-08-16','17:00:00','En proceso','Pagado'),(18,12,10,6,2,'2025-08-16','17:00:00','Finalizado','Pendiente'),(20,11,12,2,2,'2025-08-06','17:30:00','En espera','Pagado');
/*!40000 ALTER TABLE `tbc_venta_servicios` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbi_clientes`
--

LOCK TABLES `tbi_clientes` WRITE;
/*!40000 ALTER TABLE `tbi_clientes` DISABLE KEYS */;
INSERT INTO `tbi_clientes` VALUES (1,'Yazmin','Esquivel','Marquez','Av. Terminal','7641239194','yazmin@gmail.com','1234'),(2,'Andrea','Acosta','Barrios','Av. Allende','7641308269','Andrea@gmail.com','1234'),(5,'Manuela','Marquez','Juarez','Av. Azaleas','7641045686','manu@gmail.com','1234');
/*!40000 ALTER TABLE `tbi_clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbi_roles`
--

DROP TABLE IF EXISTS `tbi_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbi_roles` (
  `idRol` int NOT NULL AUTO_INCREMENT,
  `nombreRol` varchar(45) NOT NULL,
  PRIMARY KEY (`idRol`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbi_roles`
--

LOCK TABLES `tbi_roles` WRITE;
/*!40000 ALTER TABLE `tbi_roles` DISABLE KEYS */;
INSERT INTO `tbi_roles` VALUES (1,'Cajero'),(2,'Administrador'),(3,'Lavador'),(5,'Gerente'),(8,'Cajero'),(10,'Chilin');
/*!40000 ALTER TABLE `tbi_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbi_servicios`
--

DROP TABLE IF EXISTS `tbi_servicios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbi_servicios` (
  `idServiicios` int NOT NULL AUTO_INCREMENT,
  `nombreServicio` varchar(45) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `estatus` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idServiicios`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbi_servicios`
--

LOCK TABLES `tbi_servicios` WRITE;
/*!40000 ALTER TABLE `tbi_servicios` DISABLE KEYS */;
INSERT INTO `tbi_servicios` VALUES (2,'Encerado','Vehiculo nuevo con un rayon',300.00,'Activo'),(4,'Lavado','Lavado general del automovil',150.00,'Activo'),(6,'Aspirado','Aspirado general',250.00,'Activo');
/*!40000 ALTER TABLE `tbi_servicios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-08-19 12:59:43
