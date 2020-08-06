-- MySQL dump 10.13  Distrib 5.5.62, for Linux (x86_64)
--
-- Host: localhost    Database: virtualfs
-- ------------------------------------------------------
-- Server version	5.5.62

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
-- Table structure for table `DirectoryEntries`
--

DROP TABLE IF EXISTS `DirectoryEntries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DirectoryEntries` (
  `EntryId` int(11) NOT NULL AUTO_INCREMENT,
  `DirecId` int(11) DEFAULT NULL,
  `FileId` int(11) DEFAULT NULL,
  PRIMARY KEY (`EntryId`),
  KEY `DirectoryId_idx` (`DirecId`,`FileId`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DirectoryEntries`
--

LOCK TABLES `DirectoryEntries` WRITE;
/*!40000 ALTER TABLE `DirectoryEntries` DISABLE KEYS */;
INSERT INTO `DirectoryEntries` VALUES (13,3,22),(20,3,30),(21,3,31),(27,3,38),(50,3,68),(15,4,24),(32,17,45),(33,17,46),(34,17,47),(35,17,48),(16,25,26),(17,25,27),(18,25,28),(19,25,29),(22,32,33),(23,32,34),(24,32,35),(25,32,36),(26,32,37),(30,40,43),(31,40,44),(51,40,69),(36,49,50),(38,49,52),(39,49,53),(40,54,55),(41,54,56),(42,54,57),(44,54,59),(45,54,60),(46,61,62),(47,61,63),(48,64,65),(49,64,66),(53,71,72);
/*!40000 ALTER TABLE `DirectoryEntries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `File`
--

DROP TABLE IF EXISTS `File`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `File` (
  `FileId` int(11) NOT NULL AUTO_INCREMENT,
  `FileName` varchar(255) DEFAULT NULL,
  `FilePath` text,
  `CreateDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `IsFolder` tinyint(4) DEFAULT NULL,
  `VisitCount` int(11) DEFAULT '1',
  PRIMARY KEY (`FileId`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `File`
--

LOCK TABLES `File` WRITE;
/*!40000 ALTER TABLE `File` DISABLE KEYS */;
INSERT INTO `File` VALUES (1,'root','/','2020-07-23 18:54:49',1,1),(2,'root','/','2020-07-23 19:11:30',1,1),(3,'root','/','2020-07-23 19:13:04',1,1),(4,'root','/','2020-07-25 02:50:19',1,1),(5,'root','/','2020-07-25 19:43:15',1,1),(6,'root','/','2020-07-25 19:48:42',1,1),(7,'root','/','2020-07-25 19:50:25',1,1),(8,'root','/','2020-07-25 20:08:18',1,1),(9,'abcdefg','/abcdefg','2020-07-25 21:06:21',0,1),(10,'abcdefg','/abcdefge','2020-07-25 21:33:29',0,1),(11,'abcdefg','/abcdefge.txt','2020-07-25 21:35:11',0,1),(12,'abc','/abcdefgea.txt','2020-07-25 21:47:31',0,1),(13,'333.png','/userupload/39200.64754543323333.png','2020-07-25 22:17:56',0,1),(14,'333.png','/userupload/26008.399429282315333.png','2020-07-25 22:21:20',0,2),(15,'333.png','./userupload/8466333.png','2020-07-25 22:23:07',0,3),(16,'332.png','./userupload/29288332.png','2020-07-25 22:36:45',0,3),(17,'root','/','2020-07-26 02:16:55',1,1),(18,'112813.jpg','./userupload/8945112813.jpg','2020-07-26 05:11:19',0,10),(19,'snowhalation.png','./userupload/53697snowhalation.png','2020-07-26 05:25:57',0,1),(20,'AudioPlaybackConnector64.exe','./userupload/4574AudioPlaybackConnector64.exe','2020-07-26 05:27:35',0,1),(21,'01 ??????????.m4a','./userupload/187501 ??????????.m4a','2020-07-26 19:32:40',0,1),(22,'cover.jpg','./userupload/37758snowhalation.png','2020-07-26 19:33:08',0,1),(23,'screenshot4.png','./userupload/12920screenshot4.png','2020-07-26 19:34:17',0,2),(24,'frc2018diagram.PNG','./userupload/18098frc2018diagram.PNG','2020-07-26 19:50:36',0,1),(25,'root','/','2020-08-03 23:24:27',1,1),(26,'Zoom.exe','./userupload/70608Zoom.exe','2020-08-03 23:25:04',0,1),(27,'Zoom_launcher.exe','./userupload/94998Zoom_launcher.exe','2020-08-03 23:25:16',0,1),(28,'annoter.dll','./userupload/16685annoter.dll','2020-08-03 23:25:25',0,1),(29,'CptControl.exe','./userupload/22237CptControl.exe','2020-08-03 23:25:31',0,1),(30,'112813.jpg','./userupload/74065signatures.png','2020-08-04 03:03:42',0,7),(31,'518321.jpg','./userupload/43694518321.jpg','2020-08-04 03:23:40',0,2),(32,'root','/','2020-08-04 03:54:08',1,1),(33,'anime-city-scenery-wallpaper.jpg','./userupload/328anime-city-scenery-wallpaper.jpg','2020-08-04 03:54:53',0,2),(34,'thumb-1920-891715.png','./userupload/65659thumb-1920-891715.png','2020-08-04 03:56:26',0,2),(35,'thumb-1920-891715.png','./userupload/22794thumb-1920-891715.png','2020-08-04 03:56:37',0,1),(36,'f6b373abb0afaa6d6a5a3bbf56d4226f.png','./userupload/51789f6b373abb0afaa6d6a5a3bbf56d4226f.png','2020-08-04 03:57:13',0,1),(37,'IMG_1622.JPG','./userupload/71060IMG_1622.JPG','2020-08-04 03:57:28',0,1),(38,'otonokizaka.svg','./userupload/26991sh-honoka.svg','2020-08-04 05:24:14',0,4),(39,'root','/','2020-08-04 05:54:24',1,1),(40,'root','/','2020-08-04 06:00:32',1,1),(41,'starbucks.xls','./userupload/52800starbucks.xls','2020-08-04 06:00:59',0,1),(42,'starbucks.xls','./userupload/95887starbucks.xls','2020-08-04 06:02:27',0,3),(43,'goldenretriever.jpg','./userupload/91725goldenretriever.jpg','2020-08-04 06:05:08',0,3),(44,'textfile.txt','./userupload/89453textfile.txt','2020-08-04 06:05:59',0,1),(45,'1.reg','./userupload/331091.reg','2020-08-04 09:46:34',0,2),(46,'Snipaste_2020-06-21_14-53-38.png','./userupload/98973Snipaste_2020-06-21_14-53-38.png','2020-08-04 09:50:58',0,3),(47,'AAAAA.txt','./userupload/10512AAAAA.txt','2020-08-04 09:52:59',0,4),(48,'13- Transactions (1).pdf','./userupload/4984113- Transactions (1).pdf','2020-08-04 09:53:42',0,3),(49,'root','/','2020-08-04 14:56:57',1,1),(50,'1.1.jpg','./userupload/889041.1.jpg','2020-08-04 15:30:27',0,2),(51,'1.1.jpg','./userupload/659931.1.jpg','2020-08-04 15:30:46',0,1),(52,'1.3.JPG','./userupload/571761.3.JPG','2020-08-04 15:33:24',0,1),(53,'1.2.jpg','./userupload/17581.2.jpg','2020-08-04 15:40:22',0,1),(54,'root','/','2020-08-04 16:35:54',1,1),(55,'goku_2020_4k_hd-2560x1440.jpg','./userupload/71085goku_2020_4k_hd-2560x1440.jpg','2020-08-04 16:36:45',0,1),(56,'dark_knight_batman.jpg','./userupload/26420dark_knight_batman.jpg','2020-08-04 16:37:10',0,1),(57,'Dua_Lipa_-_Dont_Start_Now.mp3','./userupload/94683Dua_Lipa_-_Dont_Start_Now.mp3','2020-08-04 16:37:37',0,1),(58,'Green Day - Basket Case.mp3','./userupload/36801Green Day - Basket Case.mp3','2020-08-04 16:38:18',0,1),(59,'Green Day - Basket Case.mp3','./userupload/49394Green Day - Basket Case.mp3','2020-08-04 16:38:19',0,1),(60,'d0e18125868e521981976b9a5e0818ed.jpg','./userupload/99887d0e18125868e521981976b9a5e0818ed.jpg','2020-08-04 16:38:39',0,7),(61,'root','/','2020-08-04 16:47:08',1,1),(62,'square spiral.png','./userupload/95732square spiral.png','2020-08-04 16:55:07',0,8),(63,'feedback.jpg','./userupload/76358feedback.jpg','2020-08-04 16:55:45',0,2),(64,'root','/','2020-08-04 17:36:41',1,1),(65,'harry-potter-book-1.pdf','./userupload/41924harry-potter-book-1.pdf','2020-08-04 17:39:30',0,2),(66,'sherlock.pdf','./userupload/13983sherlock.pdf','2020-08-04 17:40:17',0,1),(67,'root','/','2020-08-04 17:49:20',1,1),(68,'screenshot3.png','./userupload/7130screenshot3.png','2020-08-04 18:42:58',0,6),(69,'goldenretriever.jpg','./userupload/94928goldenretriever.jpg','2020-08-04 18:59:25',0,1),(70,'art.png','./userupload/38605Ex2.PNG','2020-08-04 20:50:24',0,3),(71,'root','/','2020-08-05 01:47:49',1,1),(72,'VID-20200804-WA0001.mp4','./userupload/77336VID-20200804-WA0001.mp4','2020-08-05 01:49:06',0,3),(73,'root','/','2020-08-05 16:28:50',1,1);
/*!40000 ALTER TABLE `File` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Permission`
--

DROP TABLE IF EXISTS `Permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Permission` (
  `PermissionId` int(11) NOT NULL AUTO_INCREMENT,
  `User` varchar(255) DEFAULT NULL,
  `FileId` int(11) DEFAULT NULL,
  `CanRead` tinyint(4) DEFAULT NULL,
  `CanWrite` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`PermissionId`),
  KEY `User_idx` (`User`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Permission`
--

LOCK TABLES `Permission` WRITE;
/*!40000 ALTER TABLE `Permission` DISABLE KEYS */;
INSERT INTO `Permission` VALUES (1,'Haoweishi6@gmail.com',3,1,1),(2,'abcde@abcde.com',4,1,1),(3,'aaa@adddd.com',5,1,1),(4,'haoweishi10@gmail.com',6,1,1),(5,'haoweishi1@gmail.com',7,1,1),(6,'emailtest@gmail.com',8,1,1),(15,'aaa@ourail.club',17,1,1),(20,'haoweishi6@gmail.com',22,1,1),(22,'abcde@abcde.com',24,1,1),(23,'mingyig3@illinois.edu',25,1,1),(24,'mingyig3@illinois.edu',26,1,1),(25,'mingyig3@illinois.edu',27,1,1),(26,'mingyig3@illinois.edu',28,1,1),(27,'mingyig3@illinois.edu',29,1,1),(28,'haoweishi6@gmail.com',30,1,1),(29,'haoweishi6@gmail.com',31,1,1),(30,'behlranjan@gmail.com',32,1,1),(31,'behlranjan@gmail.com',33,1,1),(32,'behlranjan@gmail.com',34,1,1),(33,'behlranjan@gmail.com',35,1,1),(34,'behlranjan@gmail.com',36,1,1),(35,'behlranjan@gmail.com',37,1,1),(36,'haoweishi6@gmail.com',38,1,1),(37,'michaelguanyichen@gmail.com',39,1,1),(38,'michaelguanyichen3@gmail.com',40,1,1),(41,'michaelguanyichen3@gmail.com',43,1,1),(42,'michaelguanyichen3@gmail.com',44,1,1),(43,'aaa@ourail.club',45,1,1),(44,'aaa@ourail.club',46,1,1),(45,'aaa@ourail.club',47,1,1),(46,'aaa@ourail.club',48,1,1),(47,'milka_1503@mail.ru',49,1,1),(48,'milka_1503@mail.ru',50,1,1),(50,'milka_1503@mail.ru',52,1,1),(51,'milka_1503@mail.ru',53,1,1),(52,'chelsie@itgracevvx.com',54,1,1),(53,'chelsie@itgracevvx.com',55,1,1),(54,'chelsie@itgracevvx.com',56,1,1),(55,'chelsie@itgracevvx.com',57,1,1),(57,'chelsie@itgracevvx.com',59,1,1),(58,'chelsie@itgracevvx.com',60,1,1),(59,'vanessaguo@gmail.com',61,1,1),(60,'vanessaguo@gmail.com',62,1,1),(61,'vanessaguo@gmail.com',63,1,1),(62,'deboraguo@gmail.com',64,1,1),(63,'deboraguo@gmail.com',65,1,1),(64,'deboraguo@gmail.com',66,1,1),(65,'mgalbert57@yahoo.com',67,1,1),(66,'haoweishi6@gmail.com',68,1,1),(67,'michaelguanyichen3@gmail.com',69,1,1),(69,'abc@def',71,1,1),(70,'abc@def',72,1,1),(71,'mark@home.net',73,1,1);
/*!40000 ALTER TABLE `Permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tokens`
--

DROP TABLE IF EXISTS `Tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Tokens` (
  `UserEmail` varchar(255) NOT NULL,
  `Token` varchar(255) DEFAULT NULL,
  `SourceIp` varchar(255) DEFAULT NULL,
  `Expire` datetime DEFAULT NULL,
  PRIMARY KEY (`UserEmail`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tokens`
--

LOCK TABLES `Tokens` WRITE;
/*!40000 ALTER TABLE `Tokens` DISABLE KEYS */;
INSERT INTO `Tokens` VALUES ('aaa@ourail.club','0ecf2758e4eda17dd58d06234b97890d','0.0.0.0','0000-00-00 00:00:00'),('abc@def','9527976299a168ad9ec2f30a30cfe40c','0.0.0.0','2020-08-05 10:14:00'),('behlranjan@gmail.com','09f7f27fa8c440337c73a2512cba24fa','0.0.0.0','2020-08-04 12:18:25'),('chelsie@itgracevvx.com','4d76fb93d639b5d9863c5322732c511f','0.0.0.0','0000-00-00 00:00:00'),('deboraguo@gmail.com','4f05557d2d9d049838065d986535b555','0.0.0.0','0000-00-00 00:00:00'),('haoweishi6@gmail.com','77f32049f6317ab612288584c5141372','0.0.0.0','0000-00-00 00:00:00'),('mark@home.net','10e333e1bc87e15cdb5b0ce278bdff48','0.0.0.0','0000-00-00 00:00:00'),('mgalbert57@yahoo.com','6318baf670b5ff45b11599d546ed4e99','0.0.0.0','0000-00-00 00:00:00'),('michaelguanyichen3@gmail.com','79ee48b0936e330cf16b8c4b322722c7','0.0.0.0','0000-00-00 00:00:00'),('michaelguanyichen@gmail.com','3f93cb09af35ab53995b7ef9d03684c2','0.0.0.0','0000-00-00 00:00:00'),('milka_1503@mail.ru','017674e8f43bfb77ab0acde77731e666','0.0.0.0','0000-00-00 00:00:00'),('vanessaguo@gmail.com','ed0c6bac96b9039b6e814dd57c0ad6c0','0.0.0.0','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `Tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Users` (
  `UserEmail` varchar(255) NOT NULL,
  `UserName` varchar(255) DEFAULT NULL,
  `Pass` varchar(255) DEFAULT NULL,
  `JoinDate` date DEFAULT NULL,
  `Root` int(11) DEFAULT '0',
  PRIMARY KEY (`UserEmail`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES ('aaa@adddd.com',' aaaaa','00000000','2020-07-25',5),('aaa@ourail.club',' yjsnpi','yjsnpi114514','2020-07-26',17),('abc@def',' abc','123','2020-08-05',71),('abcde@abcde.com',' abcde','1111111','2020-07-25',4),('behlranjan@gmail.com',' rbehl','sobfax-zaPriz-dykgo8','2020-08-04',32),('chelsie@itgracevvx.com',' Chelsea ','12345','2020-08-04',54),('deboraguo@gmail.com',' deboraguo','deguo@93','2020-08-04',64),('emailtest@gmail.com',' test01','simplepassword','2020-07-25',8),('haoweis2@illinois.edu','Test01','12345678','2020-07-23',1),('haoweishi10@gmail.com',' haoweishi6','AAAAAAAAA','2020-07-25',6),('haoweishi1@gmail.com',' hs1','hsaaacm','2020-07-25',7),('Haoweishi6@gmail.com','Haoweishi6','123456','2020-07-23',3),('mark@home.net',' markhome','nothanks','2020-08-05',73),('mgalbert57@yahoo.com',' Matta1','Skiing115','2020-08-04',67),('michaelguanyichen3@gmail.com',' michaelgchen','7396','2020-08-04',40),('michaelguanyichen@gmail.com',' mgchen3','7396','2020-08-04',39),('milka_1503@mail.ru',' Mila','artek2016','2020-08-04',49),('mingyig3@illinois.edu',' hihihahahu','199821','2020-08-03',25),('vanessaguo@gmail.com',' vanessaguo','fguo89','2020-08-04',61);
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `UpdateCurrentDate` BEFORE INSERT ON `Users` FOR EACH ROW
BEGIN
	SET NEW.JoinDate = CURDATE();
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Dumping routines for database 'virtualfs'
--
/*!50003 DROP PROCEDURE IF EXISTS `countNumberOfFiles` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `countNumberOfFiles`(IN username VARCHAR(255), IN directoryID INT(11))
BEGIN

SELECT COUNT(DirectoryEntries.FileId)
FROM Permission
LEFT JOIN DirectoryEntries 
ON DirectoryEntries.DirecId = Permission.FileId
WHERE DirectoryEntries.DirecId = directoryID AND CanRead = 1 AND Permission.User = username
GROUP BY Permission.User
ORDER BY Permission.User;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `deleteFile` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteFile`(IN username VARCHAR(255), IN fileloc INT , IN idToDelete INT(11), IN passw VARCHAR(255))
BEGIN

DECLARE validusers INT;
SELECT COUNT(UserEmail) INTO validusers FROM Users WHERE UserEmail = username AND Pass = passw;
IF validusers = 0 THEN
	SIGNAL SQLSTATE '45001' SET MESSAGE_TEXT = "Invalid Account"; 
END IF;

DELETE 
FROM virtualfs.Permission 
WHERE FileId = idToDelete AND User = username;

DELETE FROM DirectoryEntries WHERE FileId = idToDelete AND DirecId = fileloc;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `deleteuser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteuser`(IN email varchar(255), IN passw varchar(255))
BEGIN

DELETE FROM virtualfs.Users WHERE UserEmail = email AND Pass = passw;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `download` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `download`(IN username VARCHAR(255), IN filenum INT(11), IN tok VARCHAR(255))
BEGIN
DECLARE todownload INT;
DECLARE validusers INT;
SELECT COUNT(UserEmail) INTO validusers FROM Tokens WHERE UserEmail = username AND Token = tok;
IF validusers = 0 THEN
	SIGNAL SQLSTATE '45001' SET MESSAGE_TEXT = "Invalid Session"; 
END IF;

SELECT FilePath FROM File WHERE FileId IN 

(SELECT Permission.FileId
FROM virtualfs.Permission
LEFT JOIN virtualfs.DirectoryEntries 
ON Permission.FileId = DirectoryEntries.FileId
WHERE CanRead = 1 AND Permission.FileId = filenum AND User = username);

UPDATE File SET VisitCount = VisitCount + 1 WHERE FileId = filenum;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getUserInfo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getUserInfo`(IN email varchar(255), IN passw varchar(255))
BEGIN

SELECT UserEmail, UserName, JoinDate, Root FROM virtualfs.Users WHERE UserEmail = email AND Pass = passw;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `listfiles` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `listfiles`(IN fromdate timestamp, IN todate timestamp)
BEGIN
SELECT FileName, FilePath, CreateDate, VisitCount FROM File WHERE CreateDate < todate and CreateDate > fromdate and IsFolder = 0;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `login` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `login`(IN email varchar(255), IN passw varchar(255), IN Ip varchar(255))
BEGIN
DECLARE validusers INT;
DECLARE tokencount INT;

SELECT COUNT(UserEmail) INTO validusers FROM Users WHERE UserEmail = email AND Pass = passw;
IF validusers = 0 THEN
	SIGNAL SQLSTATE '45001' SET MESSAGE_TEXT = "Invalid Account"; 
END IF;

SELECT COUNT(UserEmail) INTO tokencount FROM Tokens WHERE UserEmail = email;

IF tokencount = 0 THEN
INSERT INTO Tokens VALUES (email, LEFT(MD5(RAND()), 32), Ip, NOW() + 86400);
ELSE
UPDATE Tokens SET Token = LEFT(MD5(RAND()), 32) , Expire = NOW() + 86400, SourceIp = Ip WHERE UserEmail = email;
END IF;

SELECT Users.UserEmail, Users.UserName, Users.JoinDate, Users.Root, Tokens.Token FROM virtualfs.Users LEFT JOIN Tokens ON Tokens.UserEmail = Users.UserEmail WHERE Users.UserEmail = email;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `mkuser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `mkuser`(IN Email VARCHAR(255), IN UName VARCHAR(255), IN PassW VARCHAR(255))
BEGIN

	INSERT INTO virtualfs.Users (UserEmail, UserName, Pass) VALUES (Email, UName, PassW);
    
	INSERT INTO virtualfs.File (FileId, FileName, FilePath, CreateDate, IsFolder) VALUES (0, "root", "/", CURRENT_TIMESTAMP, 1);
    
    UPDATE virtualfs.Users SET Root = LAST_INSERT_ID() WHERE UserEmail = Email;
	
	INSERT INTO Permission (User, FileId, CanRead, CanWrite) VALUES (Email, LAST_INSERT_ID(), 1, 1);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `onnewfileupload` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `onnewfileupload`(IN fname VARCHAR(255), IN pth VARCHAR(255), IN email VARCHAR(255), IN passw VARCHAR(255), IN targetdirectory INT, IN replacefile INT)
upload: BEGIN
DECLARE tempfile INT;
DECLARE validrows INT;
DECLARE validusers INT;

SELECT COUNT(UserEmail) INTO validusers FROM Users WHERE UserEmail = email AND Pass = passw;
IF validusers = 0 THEN
	SIGNAL SQLSTATE '45001' SET MESSAGE_TEXT = "Invalid Account"; 
END IF;

SELECT COUNT(File.FileId) INTO validrows FROM File RIGHT JOIN Permission ON File.FileId = Permission.FileId WHERE Permission.FileId = targetDirectory AND File.IsFolder = 1 AND Permission.User = email;
IF validrows = 0 THEN
	SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = "Permission Denied"; 
END IF;

IF replacefile = -1 THEN
INSERT INTO File (FileId, FileName, FilePath, CreateDate, IsFolder) VALUES (0, fname, pth, CURRENT_TIMESTAMP, 0);
SET tempfile = LAST_INSERT_ID();
INSERT INTO Permission (PermissionId, User, FileId, CanRead, CanWrite) VALUES (0, email, tempfile , 1, 1);
INSERT INTO DirectoryEntries (EntryId, DirecId, FileId) VALUES (0, targetdirectory, tempfile);
ELSE
UPDATE File SET FilePath = pth WHERE FileId = replacefile;

END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `randomrecommender` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `randomrecommender`(IN email VARCHAR(255))
BEGIN
DECLARE fcount INT;
DECLARE distance FLOAT;
DECLARE finished INT DEFAULT 0;
DECLARE targettype VARCHAR(255);
DECLARE currentweight INT;
DECLARE filesum INT;
DECLARE resultid INT DEFAULT -1;
DECLARE validusers INT DEFAULT 0;

DECLARE weightedtypeselector 
CURSOR FOR 
SELECT * FROM typetable;

DECLARE finalfileselector
CURSOR FOR
SELECT VisitCount, FileId FROM filetable;

DECLARE CONTINUE HANDLER
FOR NOT FOUND SET finished = 1;

DROP TABLE IF EXISTS filetable;
DROP TABLE IF exists typetable;
body: begin

SELECT COUNT(*) INTO validusers FROM Users WHERE UserEmail = email;

IF validusers = 0 THEN

LEAVE body;

END IF;

CREATE TEMPORARY TABLE typetable SELECT count(*) AS TypeCount,
SUBSTRING(FileName FROM POSITION('.' in FileName)+1 FOR 4) AS FileType
FROM File
WHERE FileName LIKE "%.%"
AND FileId IN
(SELECT DirectoryEntries.FileId
FROM Permission
LEFT JOIN DirectoryEntries 
ON DirectoryEntries.DirecId = Permission.FileId
WHERE CanRead = 1 AND Permission.User = email)
GROUP BY FileType
ORDER BY TypeCount DESC;


SELECT SUM(TypeCount) INTO fcount FROM typetable;

SELECT fcount * rand() INTO distance;

OPEN weightedtypeselector;
weighted : LOOP
	FETCH weightedtypeselector INTO currentweight, targettype;
    SET distance = distance - currentweight;
    IF distance <= 0 THEN
    LEAVE weighted;
    END IF;
    
END LOOP weighted;
CLOSE weightedtypeselector;

DROP TABLE typetable;

CREATE TEMPORARY TABLE filetable SELECT FileId, FileName, VisitCount ,SUBSTRING(FileName FROM POSITION('.' in FileName)+1 FOR 4) AS FileType FROM File
WHERE IsFolder = 0 AND
FileName LIKE "%.%" AND
FileId NOT IN
(SELECT FileId
FROM Permission
WHERE CanRead = 1 AND User = email)
HAVING FileType = targettype
ORDER BY VisitCount;

SELECT SUM(VisitCount) FROM filetable INTO filesum;
SELECT COUNT(*) FROM filetable INTO fcount;

IF fcount = 0 THEN
DROP table  filetable;
LEAVE body;
END IF;

SELECT rand() * filesum INTO distance;  

OPEN finalfileselector;
result : LOOP
	FETCH finalfileselector INTO currentweight, resultid;
    SET distance = distance - currentweight;
    IF distance <= 0 THEN
    LEAVE result;
    END IF;
    
END LOOP result;
CLOSE finalfileselector;

DROP TABLE filetable;

SELECT FilePath FROM File WHERE FileId = resultid;
UPDATE File SET VisitCount = VisitCount + 1 WHERE FileId = resultid;
end;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `viewFiles` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `viewFiles`(IN username VARCHAR(255), IN directoryID INT(11), IN tok VARCHAR(255), IN title VARCHAR(255))
BEGIN

DECLARE validusers INT;

SELECT COUNT(UserEmail) INTO validusers FROM Tokens WHERE UserEmail = username AND Token = tok;
IF validusers = 0 THEN
	SIGNAL SQLSTATE '45001' SET MESSAGE_TEXT = "Invalid Session"; 
END IF;

IF title = "" THEN
SELECT FileId, FileName, CreateDate, IsFolder FROM File WHERE FileId IN
(SELECT DirectoryEntries.FileId
FROM Permission
LEFT JOIN DirectoryEntries 
ON DirectoryEntries.DirecId = Permission.FileId
WHERE DirectoryEntries.DirecId = directoryID AND CanRead = 1 AND Permission.User = username);
ELSE
SELECT FileId, FileName, CreateDate, IsFolder FROM File WHERE FileId IN
(SELECT DirectoryEntries.FileId
FROM Permission
LEFT JOIN DirectoryEntries 
ON DirectoryEntries.DirecId = Permission.FileId
WHERE DirectoryEntries.DirecId = directoryID AND CanRead = 1 AND Permission.User = username)
AND FileName LIKE CONCAT('%', title, '%');

END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-06  0:44:36
