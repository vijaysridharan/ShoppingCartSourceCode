CREATE DATABASE  IF NOT EXISTS `india_db` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `india_db`;

--
-- Table structure for table `electronics`
--

DROP TABLE IF EXISTS `electronics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `electronics` (
  `electronics_id` int(11) NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(45) NOT NULL,
  `store_name` varchar(45) NOT NULL,
  `brand_description` varchar(445) NOT NULL,
  `brand_price` varchar(45) NOT NULL,
  PRIMARY KEY (`electronics_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `electronics`
--


/*!40000 ALTER TABLE `electronics` DISABLE KEYS */;
INSERT INTO `electronics` VALUES (2,'SonyVaio','Sony','Touch Screen and amazing HD Display ','1000'),(3,'A100','Motorola','Lightest Device on Earth. Amazing call clarity','100');

