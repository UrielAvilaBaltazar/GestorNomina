-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: nomina
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleados` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apaterno` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amaterno` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `puesto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salario` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `fecha_contratacion` date DEFAULT NULL,
  `tel` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (1,'Daniel','Alarcon','Benitez','Gerente general','$15,000',NULL,'2023-02-17 00:56:12','2022-12-06',7748985241),(2,'Juan','Lopez','Hernandez','Maquinista','$4,000','2023-02-15 04:03:38','2023-02-17 00:56:40','2021-06-18',4458569654),(3,'Julian','Mendez','Perez','Maquinista','$4,000','2023-02-15 04:13:18','2023-02-17 00:56:50','2022-10-06',5584746625),(5,'Erik','Estrada','Hernandez','Contador ejecutivo','$9,000','2023-02-15 21:46:09','2023-02-17 00:57:00','2023-01-05',7748855225),(6,'Daniela','Hernan','Castillo','Secretaria','$5,000','2023-02-15 21:47:21','2023-02-17 00:57:14','2019-07-07',4563255889),(7,'Alondra','Mendoza','Oropeza','Secretaria','$5,000','2023-02-15 21:48:42','2023-02-17 00:57:24','2022-02-10',1245557789),(8,'Arturo','Benitez','Salazar','Maquinista','$4,000','2023-02-15 21:49:27','2023-02-17 00:57:34','2020-08-14',5536254411),(9,'Carlos','Perez','Andrade','Informatico','$9,000','2023-02-15 21:50:59','2023-02-17 00:57:41','2022-11-14',7789856641),(10,'Diana','Palermo','Bañes','Informatico','$9,000','2023-02-15 21:51:46','2023-02-17 00:57:51','2022-09-28',7785596141),(11,'Eduardo','Lopez','Estrada','Marketing','$7,000','2023-02-15 21:53:21','2023-02-17 00:58:03','2021-06-14',7741123245),(12,'Emilio','Guerrero','San Juan','Marketing','$7,000','2023-02-15 21:54:08','2023-02-17 00:58:17','2022-11-17',9965521163),(13,'Laura','Peña','Garcia','Informatico','$9,000','2023-02-15 21:56:32','2023-02-17 00:59:38','2022-11-08',5512663215),(14,'Benito','Escañon','Salazar','Recursos humanos','$8,500','2023-02-15 21:57:49','2023-02-17 01:00:10','2021-02-08',7789651456),(15,'Casandra','Pulido','Garcia','Vendedor','$6,000','2023-02-15 22:01:40','2023-02-17 01:00:27','2021-10-12',4456328574),(16,'Juan','Estrada','Salazar','Vendedor','$6,000','2023-02-15 22:02:15','2023-02-17 01:00:43','2022-02-07',6658956325),(17,'Sebastian','Cardos','Garcia','Vendedor','$6,000','2023-02-15 22:03:08','2023-02-17 01:01:01','2022-06-15',6365254412),(18,'Sergio','Ortiz','Lopez','Vendedor','$6,000','2023-02-15 22:03:44','2023-02-15 22:03:44','2021-12-15',7789564125),(19,'Karen','Flores','Abad','Vendedor','$6,000','2023-02-15 22:04:32','2023-02-15 22:04:32','2018-05-23',4456324585),(20,'Mariana','Segura','Montes','Vendedor','$6,000','2023-02-15 22:05:14','2023-02-15 22:05:14','2019-09-20',7784126395),(21,'Virginia','Santos','Roa','Marketing','$7,000','2023-02-15 22:05:57','2023-02-15 22:05:57','2020-10-12',8896354462),(22,'Angel','Arellano','Galvan','Informatico','$9,000','2023-02-15 22:06:31','2023-02-15 22:06:31','2015-12-12',7786652249),(23,'Uriel','Farfan','Lopez','Vendedor','$6,000','2023-02-15 22:07:16','2023-02-15 22:07:16','2020-10-31',2565456638),(24,'Luna','Martin','Oropeza','Vendedor','$6,000','2023-02-15 22:07:40','2023-02-15 22:07:40','2021-08-09',2268574563),(25,'Mario','Mendez','Molina','Maquinista','$6,000','2023-02-15 22:08:32','2023-02-15 22:08:32','2019-10-10',7784569610),(26,'Juan','Mendez','Hernandez','Vendedor','$7,000','2023-02-16 01:00:22','2023-02-16 01:00:22','2019-12-26',5501238501),(27,'Lucia','Hernan','Mateo','Maquinista','$6,000','2023-02-16 01:12:06','2023-02-16 01:12:06','2020-12-01',7749540045),(28,'Juan','Hernan','Hernandez','Maquinista','$4,000','2023-02-17 00:42:36','2023-02-17 00:42:36','2022-12-05',7748789655);
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2023_02_13_181900_create_empleados_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-21 16:11:56
