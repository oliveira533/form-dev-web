-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: localhost    Database: banco_pacientes
-- ------------------------------------------------------
-- Server version	8.0.36-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Pacientes`
--

DROP TABLE IF EXISTS `Pacientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Pacientes` (
  `IDPaciente` int NOT NULL AUTO_INCREMENT,
  `NomePaciente` varchar(255) NOT NULL,
  `Sexo` varchar(50) DEFAULT NULL,
  `Genero` varchar(50) DEFAULT NULL,
  `RG` varchar(20) DEFAULT NULL,
  `CNS` varchar(20) DEFAULT NULL,
  `DataNascimento` date DEFAULT NULL,
  `Telefone` varchar(20) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `NomeMae` varchar(255) DEFAULT NULL,
  `CEP` varchar(10) DEFAULT NULL,
  `Endereco` varchar(255) DEFAULT NULL,
  `Numero` varchar(10) DEFAULT NULL,
  `Complemento` varchar(255) DEFAULT NULL,
  `Bairro` varchar(255) DEFAULT NULL,
  `Cidade` varchar(255) DEFAULT NULL,
  `UF` varchar(2) DEFAULT NULL,
  `Doenca` varchar(255) DEFAULT NULL,
  `Sintomas` text,
  PRIMARY KEY (`IDPaciente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pacientes`
--

LOCK TABLES `Pacientes` WRITE;
/*!40000 ALTER TABLE `Pacientes` DISABLE KEYS */;
/*!40000 ALTER TABLE `Pacientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'banco_pacientes'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-05 21:34:35
