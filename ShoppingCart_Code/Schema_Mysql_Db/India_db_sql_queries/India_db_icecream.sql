CREATE DATABASE  IF NOT EXISTS `india_db` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `india_db`;

--
-- Table structure for table `icecream`
--

DROP TABLE IF EXISTS `icecream`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icecream` (
  `icecream_id` int(11) NOT NULL AUTO_INCREMENT,
  `icecream_name` varchar(45) NOT NULL,
  `store_name` varchar(45) NOT NULL,
  `icecream_description` varchar(445) NOT NULL,
  `icecream_price` varchar(45) NOT NULL,
  PRIMARY KEY (`icecream_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;



LOCK TABLES `icecream` WRITE;
/*!40000 ALTER TABLE `icecream` DISABLE KEYS */;
INSERT INTO `icecream` VALUES (1,'Vanilla','bluestone','its delicious','50 cents'),(2,'Strawberry','Thunder Light','sweet essence of strawberry sliding down your throat','4'),(3,'Chocolate','Chaki Factory','Samyuktha would love this....','5');
