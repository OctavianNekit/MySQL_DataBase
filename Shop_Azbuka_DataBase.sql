-- MySQL dump 10.13  Distrib 8.0.22, for macos10.15 (x86_64)
--
-- Host: 127.0.0.1    Database: Shop_Azbuka
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authors` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор',
  `author_name` varchar(255) NOT NULL COMMENT 'Имя автора',
  `product_id` int unsigned NOT NULL COMMENT 'Ссылка на книги автора',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Создание\n',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Обновление',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors`
--

LOCK TABLES `authors` WRITE;
/*!40000 ALTER TABLE `authors` DISABLE KEYS */;
/*!40000 ALTER TABLE `authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `availability`
--

DROP TABLE IF EXISTS `availability`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `availability` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор',
  `products_id` int unsigned NOT NULL COMMENT 'Ссылка на товар',
  `number_of_goods` int NOT NULL COMMENT 'Количество товара',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Создание',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Обновление',
  PRIMARY KEY (`id`),
  KEY `products_id` (`products_id`),
  CONSTRAINT `availability_ibfk_1` FOREIGN KEY (`products_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `availability`
--

LOCK TABLES `availability` WRITE;
/*!40000 ALTER TABLE `availability` DISABLE KEYS */;
/*!40000 ALTER TABLE `availability` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalogs`
--

DROP TABLE IF EXISTS `catalogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `catalogs` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор',
  `catalog_name` varchar(100) NOT NULL COMMENT 'Название каталога',
  `catalog_description` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'Описание каталога',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Создание',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Обновление',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalogs`
--

LOCK TABLES `catalogs` WRITE;
/*!40000 ALTER TABLE `catalogs` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genders`
--

DROP TABLE IF EXISTS `genders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genders` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор',
  `gender_name` varchar(45) DEFAULT NULL COMMENT 'Название пола',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Создание',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Обновление',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genders`
--

LOCK TABLES `genders` WRITE;
/*!40000 ALTER TABLE `genders` DISABLE KEYS */;
/*!40000 ALTER TABLE `genders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genre_likes`
--

DROP TABLE IF EXISTS `genre_likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genre_likes` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентифкатор',
  `user_id` int unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `like_genre` int unsigned NOT NULL COMMENT 'Любимый жанр',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Создание',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Обновление',
  PRIMARY KEY (`id`),
  UNIQUE KEY `genre_likes_uq_idx` (`user_id`,`like_genre`),
  KEY `like_genre` (`like_genre`),
  CONSTRAINT `genre_likes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `profiles` (`user_id`),
  CONSTRAINT `genre_likes_ibfk_2` FOREIGN KEY (`like_genre`) REFERENCES `genres` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre_likes`
--

LOCK TABLES `genre_likes` WRITE;
/*!40000 ALTER TABLE `genre_likes` DISABLE KEYS */;
/*!40000 ALTER TABLE `genre_likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genres` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор',
  `genre_name` varchar(100) NOT NULL COMMENT 'Название жанра',
  `genre_description` varchar(300) NOT NULL COMMENT 'Описание жанра',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Создание',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Обновление',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genres`
--

LOCK TABLES `genres` WRITE;
/*!40000 ALTER TABLE `genres` DISABLE KEYS */;
/*!40000 ALTER TABLE `genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `list_orders`
--

DROP TABLE IF EXISTS `list_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `list_orders` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор',
  `user_id` int unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `product_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'Его заказанный товар',
  `count_product` int unsigned NOT NULL COMMENT 'Количество товара',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Создание',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Обновление',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `list_orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `list_orders`
--

LOCK TABLES `list_orders` WRITE;
/*!40000 ALTER TABLE `list_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `list_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор',
  `user_id` int unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `products_value` int DEFAULT NULL COMMENT 'Количество заказов',
  `value` int unsigned DEFAULT NULL COMMENT 'Количество денег потраченных пользователем в магазине\n',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Создание',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Обновление',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор',
  `name` varchar(100) NOT NULL COMMENT 'Название товара',
  `genre_id` int unsigned DEFAULT NULL COMMENT 'Жанр товара',
  `author_id` int unsigned DEFAULT NULL,
  `description` varchar(300) NOT NULL COMMENT 'Описание товара',
  `catalog_id` int unsigned DEFAULT NULL COMMENT 'Ссылка на каталог',
  `price` varchar(45) NOT NULL COMMENT 'Цена',
  `availability` int unsigned NOT NULL COMMENT 'Количество',
  `orders` int unsigned DEFAULT NULL COMMENT 'Количество заказов',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Создание',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Обновление',
  PRIMARY KEY (`id`),
  KEY `catalog_id` (`catalog_id`),
  KEY `author_id` (`author_id`),
  KEY `genre_id` (`genre_id`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`catalog_id`) REFERENCES `catalogs` (`id`),
  CONSTRAINT `products_ibfk_2` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`),
  CONSTRAINT `products_ibfk_3` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profiles` (
  `user_id` int unsigned NOT NULL COMMENT 'Ссылка на профиль',
  `gender_id` int unsigned NOT NULL COMMENT 'Ссылка на пол',
  `first_name` varchar(100) DEFAULT NULL COMMENT 'Имя',
  `last_name` varchar(100) DEFAULT NULL COMMENT 'Фамилия',
  `address` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL COMMENT 'Страна',
  `birthday` date DEFAULT NULL,
  `discount` int DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Создание',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Обновление',
  KEY `user_id` (`user_id`),
  KEY `gender_id` (`gender_id`),
  CONSTRAINT `profiles_ibfk_2` FOREIGN KEY (`gender_id`) REFERENCES `genders` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `phone` varchar(100) NOT NULL COMMENT 'Телефон',
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'Почта',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Создание',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Обновление',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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

-- Dump completed on 2021-02-09  1:10:59
