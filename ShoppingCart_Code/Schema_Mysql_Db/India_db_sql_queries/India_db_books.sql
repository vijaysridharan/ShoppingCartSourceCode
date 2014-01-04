CREATE DATABASE  IF NOT EXISTS `india_db` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `india_db`;


DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `books` (
  `books_id` int(11) NOT NULL AUTO_INCREMENT,
  `book_name` varchar(45) NOT NULL,
  `author_name` varchar(45) NOT NULL,
  `book_description` varchar(445) NOT NULL,
  `book_price` varchar(25) NOT NULL,
  PRIMARY KEY (`books_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;


LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,'How to Cook','Vaish','This is an awesome book where I teach you how to make  \"Gobi\" wait for it \" Manchurian\" .. \"Gobi Manchurian\"','2'),(2,'Scarlet Pimpernal','BarnessOrczy','Book about a French Revolution and a \"anonymous hero\" named \"Scarlet Pimpernal\" who and this band of friends save lives from guillitone','10'),(12,'Wings of Fire','APJ Abdul Kalam','Autobigraphy','8');
