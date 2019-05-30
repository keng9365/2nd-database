-- MySQL dump 10.13  Distrib 8.0.15, for macos10.14 (x86_64)
--
-- Host: localhost    Database: PtoNMusic
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Brand`
--

DROP TABLE IF EXISTS `Brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Brand` (
  `Brand_id` char(10) NOT NULL,
  `Brand_name` char(50) DEFAULT NULL,
  PRIMARY KEY (`Brand_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Brand`
--

LOCK TABLES `Brand` WRITE;
/*!40000 ALTER TABLE `Brand` DISABLE KEYS */;
INSERT INTO `Brand` VALUES ('BR01','Yamaha'),('BR02','Casio'),('BR03','Fender'),('BR04','Roland');
/*!40000 ALTER TABLE `Brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Category`
--

DROP TABLE IF EXISTS `Category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Category` (
  `Cat_id` char(10) NOT NULL,
  `Cat_name` char(50) DEFAULT NULL,
  PRIMARY KEY (`Cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Category`
--

LOCK TABLES `Category` WRITE;
/*!40000 ALTER TABLE `Category` DISABLE KEYS */;
INSERT INTO `Category` VALUES ('TY01','Guitar'),('TY02','Paino'),('TY03','Trumpet'),('TY04','Electric Drum'),('TY05','Bass');
/*!40000 ALTER TABLE `Category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Customer`
--

DROP TABLE IF EXISTS `Customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Customer` (
  `Cus_id` char(10) NOT NULL,
  `Cus_name` char(50) DEFAULT NULL,
  `Cus_address` char(100) DEFAULT NULL,
  `Cus_phone` char(10) DEFAULT NULL,
  PRIMARY KEY (`Cus_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customer`
--

LOCK TABLES `Customer` WRITE;
/*!40000 ALTER TABLE `Customer` DISABLE KEYS */;
INSERT INTO `Customer` VALUES ('CUS0001','Wasin Thanomsirisilp','999 Phutthamonthon Sai 4 Road Salaya, Phutthamonthon Nakhonpathom, 73170 Thailand','0874219192'),('CUS0002','Danuphon Saengklang','Wad 4','0983844321'),('CUS0003','Nawad saksri','Thailland','0983923311');
/*!40000 ALTER TABLE `Customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Details`
--

DROP TABLE IF EXISTS `Details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Details` (
  `Re_id` char(10) NOT NULL,
  `Pro_id` char(10) NOT NULL,
  `Quantity` int(10) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  PRIMARY KEY (`Re_id`,`Pro_id`),
  KEY `Bill_id_idx` (`Re_id`),
  KEY `Pro_id_idx` (`Pro_id`),
  CONSTRAINT `Pro_id` FOREIGN KEY (`Pro_id`) REFERENCES `product` (`Pro_id`) ON UPDATE CASCADE,
  CONSTRAINT `Re_id` FOREIGN KEY (`Re_id`) REFERENCES `receipt` (`Re_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Details`
--

LOCK TABLES `Details` WRITE;
/*!40000 ALTER TABLE `Details` DISABLE KEYS */;
INSERT INTO `Details` VALUES ('BILL00001','PRO001',1,'2017-11-10'),('BILL00001','PRO002',1,'2017-11-10'),('BILL00002','PRO004',1,'2017-11-10'),('BILL00003','PRO003',1,'2017-11-12'),('BILL00003','PRO006',2,'2017-11-12');
/*!40000 ALTER TABLE `Details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Employee`
--

DROP TABLE IF EXISTS `Employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Employee` (
  `Emp_id` char(10) NOT NULL,
  `Emp_name` char(50) DEFAULT NULL,
  `Emp_salary` double DEFAULT NULL,
  `Emp_dateStart` date DEFAULT NULL,
  `Emp_address` char(100) DEFAULT NULL,
  `Emp_phone` char(10) DEFAULT NULL,
  PRIMARY KEY (`Emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Employee`
--

LOCK TABLES `Employee` WRITE;
/*!40000 ALTER TABLE `Employee` DISABLE KEYS */;
INSERT INTO `Employee` VALUES ('EMP01','Ratanapol Songthum',32000,'2017-11-07','122/5 Workpoint house, Chalongkrung Road, Ladkrabang, Bangkok 10520 Thailand','0885605054'),('EMP02','Parkon Pitaksalid',32000,'2017-11-07','254 Compiwad 3, Phayathai Road, Wang Mai, Pathum Wan, Bangkok 10330, Thailand','0874453281');
/*!40000 ALTER TABLE `Employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Product`
--

DROP TABLE IF EXISTS `Product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Product` (
  `Pro_id` char(10) NOT NULL,
  `Pro_name` char(50) DEFAULT NULL,
  `Pro_price` double DEFAULT NULL,
  `Pro_amount` int(10) DEFAULT NULL,
  `Cat_id` char(10) DEFAULT NULL,
  `Brand_id` char(10) DEFAULT NULL,
  `Sup_id` char(10) DEFAULT NULL,
  PRIMARY KEY (`Pro_id`),
  KEY `Sup_id_idx` (`Sup_id`),
  KEY `Type_id_idx` (`Cat_id`),
  KEY `Brand_id_idx` (`Brand_id`),
  CONSTRAINT `Brand_id` FOREIGN KEY (`Brand_id`) REFERENCES `brand` (`Brand_id`) ON UPDATE CASCADE,
  CONSTRAINT `Cat_id` FOREIGN KEY (`Cat_id`) REFERENCES `category` (`Cat_id`) ON UPDATE CASCADE,
  CONSTRAINT `Sup_id` FOREIGN KEY (`Sup_id`) REFERENCES `supplier` (`Sup_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Product`
--

LOCK TABLES `Product` WRITE;
/*!40000 ALTER TABLE `Product` DISABLE KEYS */;
INSERT INTO `Product` VALUES ('PRO001','Acoustic Guitar Yamaha A1M',24000,5,'TY01','BR01','SUP01'),('PRO002','Acoustic Guitar Yamaha APX1200II',38500,2,'TY01','BR01','SUP01'),('PRO003','PRIVIA DIGITAL PIANO  AP-250BK',50900,3,'TY02','BR02','SUP01'),('PRO004','Roland TD-17K-L',42000,3,'TY04','BR04','SUP01'),('PRO005','Roland TD-20K-XL',39800,1,'TY04','BR04','SUP01'),('PRO006','American Professional Jazz Guitar V',28000,1,'TY01','BR03','SUP01');
/*!40000 ALTER TABLE `Product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Receipt`
--

DROP TABLE IF EXISTS `Receipt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Receipt` (
  `Re_id` char(10) NOT NULL,
  `Emp_id` char(10) DEFAULT NULL,
  `Cus_id` char(10) DEFAULT NULL,
  `Re_date` date DEFAULT NULL,
  PRIMARY KEY (`Re_id`),
  KEY `Emp_id_idx` (`Emp_id`),
  KEY `Cus_id_idx` (`Cus_id`),
  CONSTRAINT `Cus_id` FOREIGN KEY (`Cus_id`) REFERENCES `customer` (`Cus_id`) ON UPDATE CASCADE,
  CONSTRAINT `Emp_id` FOREIGN KEY (`Emp_id`) REFERENCES `employee` (`Emp_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Receipt`
--

LOCK TABLES `Receipt` WRITE;
/*!40000 ALTER TABLE `Receipt` DISABLE KEYS */;
INSERT INTO `Receipt` VALUES ('BILL00001','EMP01','CUS0001','2017-11-10'),('BILL00002','EMP01','CUS0002','2017-11-10'),('BILL00003','EMP02','CUS0001','2017-11-12'),('BILL00004','EMP01','CUS0001','2017-11-14'),('BILL00005','EMP01','CUS0001','2017-11-15');
/*!40000 ALTER TABLE `Receipt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Supplier`
--

DROP TABLE IF EXISTS `Supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Supplier` (
  `Sup_id` char(10) NOT NULL,
  `Sup_name` char(50) DEFAULT NULL,
  `Sup_address` char(100) DEFAULT NULL,
  `Sup_phone` char(10) DEFAULT NULL,
  PRIMARY KEY (`Sup_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Supplier`
--

LOCK TABLES `Supplier` WRITE;
/*!40000 ALTER TABLE `Supplier` DISABLE KEYS */;
INSERT INTO `Supplier` VALUES ('SUP01','Monsicha Pongsura','50 Ngam Wong Wan Rd, Ladyaow Chatuchak Bangkok 10900, Thailand','0984738821'),('SUP02','Somsri Wongnum','Bangkok','0894858694'),('SUP03','Chumpol chaisri','Loei','0874368775');
/*!40000 ALTER TABLE `Supplier` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-30 16:43:41
