CREATE DATABASE  IF NOT EXISTS `india_db` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `india_db`;

DROP TABLE IF EXISTS `login_details`;
CREATE TABLE `login_details` (
  `india_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `admin` varchar(10) NOT NULL,
  PRIMARY KEY (`india_id`,`username`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_details`
--

/*!40000 ALTER TABLE `login_details` DISABLE KEYS */;
INSERT INTO `login_details` VALUES (39,'Krishna','Ram','admin'),(40,'ohm','namo','admin'),(42,'Guru','guru','admin'),(45,'Vishnu','Ohm','admin'),(47,'Sony','s','user'),(48,'k','j','user'),(53,'vijay','12','user'),(54,'ASD','SDF','user');
