CREATE DATABASE  IF NOT EXISTS `task1` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `task1`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win64 (x86_64)
--
-- Host: localhost    Database: task1
-- ------------------------------------------------------
-- Server version	5.6.21-log

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
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `idposts` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `owner` varchar(45) DEFAULT NULL,
  `text` longtext,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`idposts`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'Monsters, Inc','Lovable Sulley and Mike Wazowski are the top scare team ...','IMDB','Monsters generate their city\'s power by scaring children, but they are terribly afraid themselves of being contaminated by children, so when one enters Monstropolis, top scarer Sulley finds his world disrupted.','2012-05-12'),(2,'Zugzwang','a situation in which the obligation to make a move in one\'s turn is a serious','Wikipedia','Zugzwang (German for \"compulsion to move\", pronounced [ˈtsuːktsvaŋ]) is a situation found in chess and other games wherein one player is put at a disadvantage because they must make a move when they would prefer to pass and not to move. The fact that the player is compelled to move means that his position will become significantly weaker. A player is said to be \"in zugzwang\" when any possible move will worsen his position.[1]','2014-09-18'),(3,'Andoid Games for june ','June is officially over, which means it’s time to take a look back at what goodies it brought. ','phandroid','Age of Explorers','2002-07-01'),(4,'hhh','hhh','hhh','hhh','2015-05-13'),(5,'Twitter','Twitter unveils Ads button for Android and iOS','ANI | Washington','Twitter has rolled out a new Twitter Ads button, which is available on the users profile pages on both the iOS and Android client applications.','2015-07-04'),(6,'Super Mario','Mario is a fictional character in the Mario video game franchise, created by Nintendo','Wikipedia','Super Mario (Japanese: スーパーマリオ Hepburn: Sūpā Mario?) is a series of platform video games created by Nintendo featuring their mascot, Mario. Alternatively called the Super Mario Bros. (スーパーマリオブラザーズ Sūpā Mario Burazāzu?) series or simply the Mario (マリオ?) series, it is the central series of the greater Mario franchise. At least one Super Mario game has been released for every major Nintendo video game console and handheld.','2015-07-16'),(7,'IA','A.I. Artificial Intelligence','Wikipedia','Artificial intelligence (AI) is the intelligence exhibited by machines or software. It is also the name of the academic field of study which studies how to create computers and computer software that are capable of intelligent behavior.','2015-06-06');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-07-05  1:43:36
