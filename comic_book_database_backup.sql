CREATE DATABASE  IF NOT EXISTS `comic_book_database` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `comic_book_database`;
-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: comic_book_database
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `comic_book_sales_2017`
--

DROP TABLE IF EXISTS `comic_book_sales_2017`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `comic_book_sales_2017` (
  `issueID` int(11) NOT NULL,
  `quantity_rank` int(11) NOT NULL,
  `price_rank` int(11) NOT NULL,
  `comic_series_id` int(11) DEFAULT NULL,
  `issue_volume` int(11) NOT NULL,
  `issue_price` decimal(3,2) NOT NULL,
  `idPublisher` int(11) NOT NULL,
  `estimated_quantity_sold` int(11) NOT NULL,
  PRIMARY KEY (`issueID`),
  KEY `fk_2017_comic_book_sales_publisher_data_20171_idx` (`idPublisher`),
  KEY `fk_2017_comic_book_sales_comic_book_series1_idx` (`comic_series_id`),
  CONSTRAINT `fk_2017_comic_book_sales_comic_book_series1` FOREIGN KEY (`comic_series_id`) REFERENCES `comic_book_series` (`comic_series_id`),
  CONSTRAINT `fk_2017_comic_book_sales_publisher_data_20171` FOREIGN KEY (`idPublisher`) REFERENCES `publisher_data_2017` (`idpublisher`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comic_book_sales_2017`
--

LOCK TABLES `comic_book_sales_2017` WRITE;
/*!40000 ALTER TABLE `comic_book_sales_2017` DISABLE KEYS */;
INSERT INTO `comic_book_sales_2017` VALUES (1,1,1,1,1,5.99,1,305427),(2,2,2,2,1,4.99,2,278276),(3,3,4,3,1,4.99,1,233636),(4,4,21,4,0,4.99,1,172486),(5,5,10,4,1,4.99,1,161905),(6,6,16,2,3,3.99,2,161635),(7,7,17,2,2,3.99,2,160541),(8,8,6,5,2,4.99,2,158603),(9,9,18,2,4,3.99,2,152585),(10,10,5,6,1,4.99,1,145057),(11,11,11,7,1,4.99,2,141733),(12,12,9,8,150,5.99,1,138636),(13,13,14,7,1,4.99,2,134925),(14,14,15,5,1,4.99,2,134923),(15,15,48,9,24,2.99,2,132618),(16,16,27,9,21,3.99,2,130506),(17,17,8,5,1,5.99,2,126323),(18,18,23,10,1,4.99,1,125602),(19,19,12,11,1,4.99,1,125101),(20,20,7,12,700,5.99,1,124686),(21,21,20,13,1,4.99,1,122081),(22,23,35,9,22,3.99,2,114374),(23,24,29,14,789,3.99,1,114328),(24,26,3,14,25,9.99,1,112873),(25,27,49,16,1,3.99,1,112305),(26,30,37,17,21,3.99,2,109945),(27,31,36,9,25,3.99,2,109672),(28,32,76,9,32,2.99,2,109658),(29,33,80,9,14,2.99,2,107844),(30,35,79,9,26,2.99,2,107090),(31,36,31,4,2,4.99,1,105417),(32,37,87,9,28,2.99,2,105164),(33,38,89,9,15,2.99,2,105045),(34,39,42,17,22,3.99,2,104645),(35,41,90,9,27,2.99,2,104166),(36,43,94,9,16,2.99,2,102772),(37,44,95,9,17,2.99,2,102256),(38,47,98,9,29,2.99,2,101374),(39,49,99,9,30,2.99,2,100494),(40,52,103,9,31,2.99,2,99014),(41,53,107,9,18,2.99,2,98858),(42,54,104,9,33,2.99,2,98702),(43,55,108,9,20,2.99,2,98325),(44,56,112,9,19,2.99,2,98245),(45,57,111,9,21,2.99,2,98152),(46,58,109,9,35,2.99,2,97865),(47,60,113,9,23,2.99,2,97465),(48,63,116,9,34,2.99,2,96835),(49,64,54,4,3,3.99,1,96624),(50,66,44,15,287,3.99,1,95724),(51,67,56,4,5,3.99,1,94507),(52,68,131,9,36,2.99,2,94385),(53,69,59,4,4,3.99,1,93795),(54,73,138,9,37,2.99,2,92902),(55,74,34,4,10,4.99,1,92684),(56,81,38,4,6,4.99,1,87710),(57,86,160,17,21,2.99,2,84106),(58,88,72,4,7,3.99,1,83275),(59,90,70,10,13,3.99,1,82834),(60,91,43,4,8,4.99,1,82485),(61,93,77,8,155,3.99,1,78866),(62,94,52,4,9,4.99,1,78237);
/*!40000 ALTER TABLE `comic_book_sales_2017` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comic_book_series`
--

DROP TABLE IF EXISTS `comic_book_series`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `comic_book_series` (
  `comic_series_id` int(11) NOT NULL,
  `series_title` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`comic_series_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comic_book_series`
--

LOCK TABLES `comic_book_series` WRITE;
/*!40000 ALTER TABLE `comic_book_series` DISABLE KEYS */;
INSERT INTO `comic_book_series` VALUES (1,'Marvel Legacy'),(2,'Dark Nights '),(3,'Peter Parker Spectacular Spiderman'),(4,'Secret Empire'),(5,'Doomsday Clock'),(6,'Phoenix Resurrection Return Jean Grey'),(7,'Dark Days '),(8,'Venom'),(9,'Batman'),(10,'X Men Gold'),(11,'Astonishing X Men'),(12,'Mighty Thor'),(13,'Star Wars Darth Vader'),(14,'Amazing Spider Man'),(15,'Despicable Deadpool'),(16,'U.S Avengers'),(17,'Flash');
/*!40000 ALTER TABLE `comic_book_series` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comic_book_series_has_creators`
--

DROP TABLE IF EXISTS `comic_book_series_has_creators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `comic_book_series_has_creators` (
  `comic_series_id` int(11) NOT NULL,
  `idCreators` int(11) NOT NULL,
  PRIMARY KEY (`comic_series_id`,`idCreators`),
  KEY `fk_comic_book_series_has_creators_creators1_idx` (`idCreators`),
  KEY `fk_comic_book_series_has_creators_comic_book_series1_idx` (`comic_series_id`),
  CONSTRAINT `fk_comic_book_series_has_creators_comic_book_series1` FOREIGN KEY (`comic_series_id`) REFERENCES `comic_book_series` (`comic_series_id`),
  CONSTRAINT `fk_comic_book_series_has_creators_creators1` FOREIGN KEY (`idCreators`) REFERENCES `creators` (`idcreators`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comic_book_series_has_creators`
--

LOCK TABLES `comic_book_series_has_creators` WRITE;
/*!40000 ALTER TABLE `comic_book_series_has_creators` DISABLE KEYS */;
INSERT INTO `comic_book_series_has_creators` VALUES (1,1),(12,1),(1,2),(2,3),(7,3),(9,3),(2,4),(9,4),(3,5),(3,6),(4,7),(4,8),(5,9),(5,10),(6,11),(6,12),(7,13),(8,14),(8,15),(9,16),(9,17),(10,18),(10,19),(11,20),(13,20),(11,21),(13,21),(12,22),(14,23),(14,24),(15,25),(15,26);
/*!40000 ALTER TABLE `comic_book_series_has_creators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comic_book_series_has_superheroes`
--

DROP TABLE IF EXISTS `comic_book_series_has_superheroes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `comic_book_series_has_superheroes` (
  `comic_series_id` int(11) NOT NULL,
  `superhero_id` int(11) NOT NULL,
  PRIMARY KEY (`comic_series_id`,`superhero_id`),
  KEY `fk_comic_book_series_has_superheroes_comic_book_series1_idx` (`comic_series_id`),
  KEY `fk_comic_book_series_has_superheroes_superheroes1_idx` (`superhero_id`),
  CONSTRAINT `fk_comic_book_series_has_superheroes_comic_book_series1` FOREIGN KEY (`comic_series_id`) REFERENCES `comic_book_series` (`comic_series_id`),
  CONSTRAINT `fk_comic_book_series_has_superheroes_superheroes1` FOREIGN KEY (`superhero_id`) REFERENCES `superheroes` (`superhero_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comic_book_series_has_superheroes`
--

LOCK TABLES `comic_book_series_has_superheroes` WRITE;
/*!40000 ALTER TABLE `comic_book_series_has_superheroes` DISABLE KEYS */;
INSERT INTO `comic_book_series_has_superheroes` VALUES (1,2),(1,8),(1,10),(1,17),(2,6),(3,5),(4,2),(4,4),(4,8),(4,10),(4,14),(4,17),(4,19),(5,3),(5,13),(5,20),(6,4),(6,15),(7,6),(8,7),(9,6),(10,4),(10,15),(11,4),(11,15),(12,8),(13,9),(14,5),(15,12),(16,10),(17,11);
/*!40000 ALTER TABLE `comic_book_series_has_superheroes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creators`
--

DROP TABLE IF EXISTS `creators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `creators` (
  `idCreators` int(11) NOT NULL,
  `first_name` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `job_title` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idCreators`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creators`
--

LOCK TABLES `creators` WRITE;
/*!40000 ALTER TABLE `creators` DISABLE KEYS */;
INSERT INTO `creators` VALUES (1,'Jason','Aaron','Writer'),(2,'Joe','Quesada','Artist'),(3,'Scott','Snyder','Writer'),(4,'Greg','Capullo ','Artist'),(5,'Adam ','Kubert','Artist'),(6,'Chip','Zdarsky ','Writer'),(7,'Nick ','Spencer','Writer'),(8,'Mark ','Brooks','Artist'),(9,'Geoff','Johns','Writer'),(10,'Gary','Frank','Artist'),(11,'Matthew ','Rosenberg','Writer'),(12,'Leinil ','Yu','Artist'),(13,'James ','Tynion','Writer'),(14,'David','Michelinie','Writer'),(15,'Gerardo','Sandoval','Artist'),(16,'Danny ','Miki','Artist'),(17,'Tom','King','Writer'),(18,'Ardian','Syaf','Artist'),(19,'Marc','Guggenheim','Writer'),(20,'Charles','Soule','Writer'),(21,'Jim','Cheung','Artist'),(22,'Russell','Dauterman','Artist'),(23,'Robbie ','Thompson','Writer'),(24,'Stuart ','Immonen','Artist'),(25,'Howard','Porter','Artist'),(26,'Joshua ','Williamson','Writer');
/*!40000 ALTER TABLE `creators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `creators_worked_on_two_series`
--

DROP TABLE IF EXISTS `creators_worked_on_two_series`;
/*!50001 DROP VIEW IF EXISTS `creators_worked_on_two_series`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `creators_worked_on_two_series` AS SELECT 
 1 AS `Creator Name`,
 1 AS `Number of series Creators have worked on`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `hero_powers`
--

DROP TABLE IF EXISTS `hero_powers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `hero_powers` (
  `power_id` int(11) NOT NULL,
  `power_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`power_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hero_powers`
--

LOCK TABLES `hero_powers` WRITE;
/*!40000 ALTER TABLE `hero_powers` DISABLE KEYS */;
INSERT INTO `hero_powers` VALUES (1,'various'),(2,'gadgetry'),(3,'webslinging/spidersense'),(4,'symbiotic suit'),(5,'superhero team'),(6,'invisibility'),(7,'divine power'),(8,'the force'),(9,'super speed'),(10,'regeneration'),(11,'mechanical suit'),(12,'firearms'),(13,'super strength'),(14,'telekinesis'),(15,'flight'),(16,'super-soldier ability');
/*!40000 ALTER TABLE `hero_powers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `heroes_with_movies_grossing_over_1000000000`
--

DROP TABLE IF EXISTS `heroes_with_movies_grossing_over_1000000000`;
/*!50001 DROP VIEW IF EXISTS `heroes_with_movies_grossing_over_1000000000`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `heroes_with_movies_grossing_over_1000000000` AS SELECT 
 1 AS `hero_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `movie_directors`
--

DROP TABLE IF EXISTS `movie_directors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `movie_directors` (
  `idDirector` int(11) NOT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idDirector`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_directors`
--

LOCK TABLES `movie_directors` WRITE;
/*!40000 ALTER TABLE `movie_directors` DISABLE KEYS */;
INSERT INTO `movie_directors` VALUES (1,'Jon','Watts'),(2,'Taika','Waititi'),(3,'James','Gunn'),(4,'Chris','McKay'),(5,'James','Mangold'),(6,'Bryan ','Singer'),(7,'Patty','Jenkins'),(8,'Zack','Snyder'),(9,'Tim','Miller'),(10,'Russo','Brothers'),(11,'Sam','Liu'),(12,'Scott','Derrickson'),(13,'David','Ayer'),(14,'Joss','Whedon'),(15,'Gareth ','Edwards');
/*!40000 ALTER TABLE `movie_directors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_studios`
--

DROP TABLE IF EXISTS `movie_studios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `movie_studios` (
  `studio_id` int(11) NOT NULL,
  `studio_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`studio_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_studios`
--

LOCK TABLES `movie_studios` WRITE;
/*!40000 ALTER TABLE `movie_studios` DISABLE KEYS */;
INSERT INTO `movie_studios` VALUES (1,'20th Century Fox'),(2,'Warner Bros Pictures'),(3,'Walt Disney Studios Motion Pictures'),(4,'Warner Home Video'),(5,'Sony Pictures Releasing');
/*!40000 ALTER TABLE `movie_studios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `number_of_issues_per_publisher`
--

DROP TABLE IF EXISTS `number_of_issues_per_publisher`;
/*!50001 DROP VIEW IF EXISTS `number_of_issues_per_publisher`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `number_of_issues_per_publisher` AS SELECT 
 1 AS `publisher_name`,
 1 AS `number of issues released`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `number_of_power_appearences_in_superheroes`
--

DROP TABLE IF EXISTS `number_of_power_appearences_in_superheroes`;
/*!50001 DROP VIEW IF EXISTS `number_of_power_appearences_in_superheroes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `number_of_power_appearences_in_superheroes` AS SELECT 
 1 AS `Power Name`,
 1 AS `Number of Power Appearances in Superheroes`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `publisher_data_2017`
--

DROP TABLE IF EXISTS `publisher_data_2017`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `publisher_data_2017` (
  `idPublisher` int(11) NOT NULL,
  `publisher_name` varchar(45) NOT NULL,
  `market_share` decimal(4,2) NOT NULL,
  `retail/unit` decimal(4,2) NOT NULL,
  PRIMARY KEY (`idPublisher`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publisher_data_2017`
--

LOCK TABLES `publisher_data_2017` WRITE;
/*!40000 ALTER TABLE `publisher_data_2017` DISABLE KEYS */;
INSERT INTO `publisher_data_2017` VALUES (1,'Marvel',36.36,38.30),(2,'DC',30.07,33.93),(3,'Image',9.80,10.12);
/*!40000 ALTER TABLE `publisher_data_2017` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `series_with_highest_value_of_issues`
--

DROP TABLE IF EXISTS `series_with_highest_value_of_issues`;
/*!50001 DROP VIEW IF EXISTS `series_with_highest_value_of_issues`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `series_with_highest_value_of_issues` AS SELECT 
 1 AS `total sum of all issues in series`,
 1 AS `series_title`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `superhero_movies`
--

DROP TABLE IF EXISTS `superhero_movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `superhero_movies` (
  `idsuperhero_movies` int(11) NOT NULL,
  `movie_name` varchar(45) DEFAULT NULL,
  `box_office_earnings` varchar(45) DEFAULT NULL,
  `release_date` varchar(45) DEFAULT NULL,
  `idDirector` int(11) NOT NULL,
  `studio_id` int(11) NOT NULL,
  `superhero_id` int(11) NOT NULL,
  PRIMARY KEY (`idsuperhero_movies`),
  KEY `fk_superhero_movies_movie_directors1_idx` (`idDirector`),
  KEY `fk_superhero_movies_movie_studios1_idx` (`studio_id`),
  KEY `fk_superhero_movies_superheroes1_idx` (`superhero_id`),
  CONSTRAINT `fk_superhero_movies_movie_directors1` FOREIGN KEY (`idDirector`) REFERENCES `movie_directors` (`iddirector`),
  CONSTRAINT `fk_superhero_movies_movie_studios1` FOREIGN KEY (`studio_id`) REFERENCES `movie_studios` (`studio_id`),
  CONSTRAINT `fk_superhero_movies_superheroes1` FOREIGN KEY (`superhero_id`) REFERENCES `superheroes` (`superhero_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `superhero_movies`
--

LOCK TABLES `superhero_movies` WRITE;
/*!40000 ALTER TABLE `superhero_movies` DISABLE KEYS */;
INSERT INTO `superhero_movies` VALUES (1,'Spider-Man: Homecoming','880200000','July 7, 2017',1,5,5),(2,'Thor Ragnarok','854000000','November 3, 2017',2,3,8),(3,'Guardians of the Galaxy Vol. 2','863800000','May 5, 2017',3,3,14),(4,'The Lego Batman Movie','312000000','February 10, 2017',4,2,6),(5,'Logan','619000000','March 3, 2017',5,1,15),(6,'X-Men: Apocalypse','543900000','May 27, 2016',6,1,4),(7,'Wonder Woman','821800000','June 2, 2017',7,2,16),(8,'Justice League','657900000','November 15, 2017',8,2,13),(9,'Deadpool','783100000','February 12, 2016',9,1,12),(10,'Captain America: Civil War','1153000000','May 6, 2016',10,3,17),(11,'Batman: The Killing Joke','4400000','July 25, 2016',11,4,6),(12,'Doctor Strange','677700000','October 20, 2016',12,3,19),(13,'Suicide Squad','746800000','August 5, 2016',13,2,18),(14,'Avengers: Age of Ultron','1405000000','May 1, 2015',14,3,10),(15,'Rogue One: A Star Wars Story','1056000000','December 10, 2016',15,3,9);
/*!40000 ALTER TABLE `superhero_movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `superheroes`
--

DROP TABLE IF EXISTS `superheroes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `superheroes` (
  `superhero_id` int(11) NOT NULL,
  `hero_name` varchar(45) DEFAULT NULL,
  `power_id` int(11) NOT NULL,
  PRIMARY KEY (`superhero_id`),
  KEY `fk_superheroes_hero_powers1_idx` (`power_id`),
  CONSTRAINT `fk_superheroes_hero_powers1` FOREIGN KEY (`power_id`) REFERENCES `hero_powers` (`power_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `superheroes`
--

LOCK TABLES `superheroes` WRITE;
/*!40000 ALTER TABLE `superheroes` DISABLE KEYS */;
INSERT INTO `superheroes` VALUES (1,'Various DC',1),(2,'Various Marvel',1),(3,'Publisher Crossover',1),(4,'X-Men',5),(5,'Spiderman',3),(6,'Batman',2),(7,'Venom',4),(8,'Thor',7),(9,'Darth Vader',8),(10,'Avengers',5),(11,'Flash',9),(12,'Deadpool',10),(13,'Justice League ',5),(14,'Guardians of the Galaxy',5),(15,'Wolverine ',10),(16,'Wonder Woman',7),(17,'Captain America',16),(18,'Suicide Squad',5),(19,'Doctor Strange ',7),(20,'Watchmen',5);
/*!40000 ALTER TABLE `superheroes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'comic_book_database'
--

--
-- Final view structure for view `creators_worked_on_two_series`
--

/*!50001 DROP VIEW IF EXISTS `creators_worked_on_two_series`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `creators_worked_on_two_series` AS select concat(`crea`.`first_name`,' ',`crea`.`last_name`) AS `Creator Name`,count(`junct`.`idCreators`) AS `Number of series Creators have worked on` from ((`comic_book_series_has_creators` `junct` join `creators` `crea` on((`junct`.`idCreators` = `crea`.`idCreators`))) join `comic_book_series` `cbs` on((`junct`.`comic_series_id` = `cbs`.`comic_series_id`))) group by `junct`.`idCreators` having (count(`junct`.`idCreators`) > 1) order by count(`junct`.`idCreators`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `heroes_with_movies_grossing_over_1000000000`
--

/*!50001 DROP VIEW IF EXISTS `heroes_with_movies_grossing_over_1000000000`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `heroes_with_movies_grossing_over_1000000000` AS select `superheroes`.`hero_name` AS `hero_name` from `superheroes` where `superheroes`.`superhero_id` in (select `superhero_movies`.`superhero_id` from `superhero_movies` where (`superhero_movies`.`box_office_earnings` > 1000000000)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `number_of_issues_per_publisher`
--

/*!50001 DROP VIEW IF EXISTS `number_of_issues_per_publisher`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `number_of_issues_per_publisher` AS select `publisher_data_2017`.`publisher_name` AS `publisher_name`,count(`comic_book_sales_2017`.`issueID`) AS `number of issues released` from (`publisher_data_2017` join `comic_book_sales_2017` on((`publisher_data_2017`.`idPublisher` = `comic_book_sales_2017`.`idPublisher`))) group by `publisher_data_2017`.`publisher_name` order by count(`comic_book_sales_2017`.`issueID`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `number_of_power_appearences_in_superheroes`
--

/*!50001 DROP VIEW IF EXISTS `number_of_power_appearences_in_superheroes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `number_of_power_appearences_in_superheroes` AS select `hero_powers`.`power_name` AS `Power Name`,count(`superheroes`.`power_id`) AS `Number of Power Appearances in Superheroes` from (`hero_powers` join `superheroes` on((`hero_powers`.`power_id` = `superheroes`.`power_id`))) group by `hero_powers`.`power_name` having (count(`superheroes`.`power_id`) > 1) order by count(`superheroes`.`power_id`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `series_with_highest_value_of_issues`
--

/*!50001 DROP VIEW IF EXISTS `series_with_highest_value_of_issues`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `series_with_highest_value_of_issues` AS select sum(`comic_book_sales_2017`.`issue_price`) AS `total sum of all issues in series`,`comic_book_series`.`series_title` AS `series_title` from (`comic_book_sales_2017` join `comic_book_series` on((`comic_book_sales_2017`.`comic_series_id` = `comic_book_series`.`comic_series_id`))) group by `comic_book_series`.`series_title` order by sum(`comic_book_sales_2017`.`issue_price`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-05 22:41:36
