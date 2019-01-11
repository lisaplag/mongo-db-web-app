-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ti3125tu
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
-- Temporary view structure for view `avg_dept_salary`
--

DROP TABLE IF EXISTS `avg_dept_salary`;
/*!50001 DROP VIEW IF EXISTS `avg_dept_salary`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `avg_dept_salary` AS SELECT 
 1 AS `avg_sal`,
 1 AS `dept`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `department` (
  `DeptName` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Address` varchar(90) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `City` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`DeptName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES ('Accounting','Medialaan','Almere'),('Administration','Strokelweg','Almere'),('HR','Strokelweg','Groningen'),('Marketing','Medialaan','Groningen'),('Planning','Sesamstraat','Tilburg'),('Production','Sesamstraat','Rotterdam'),('Purchasing','Bluesdreef','Groningen'),('R&D','Strokelweg','Amsterdam'),('Sales','Sesamstraat','Rotterdam');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `employee` (
  `FirstName` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Surname` varchar(90) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Dept` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Office` int(11) DEFAULT NULL,
  `Salary` int(11) DEFAULT NULL,
  `City` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`FirstName`,`Surname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES ('Abdul','Padilla','HR',100,62,'Breda'),('Adrienne','Sawyer','HR',94,61,'Almere'),('Alan','Wallace','Purchasing',32,11,'Groningen'),('Alexa','Dunn','Administration',15,10,'Rotterdam'),('Alexis','Valenzuela','HR',98,77,'Utrecht'),('Allegra','Norman','R&D',29,1,'Tilburg'),('Amena','Copeland','Accounting',16,51,'Groningen'),('Avye','Deleon','R&D',96,72,'Tilburg'),('Bo','Jefferson','Purchasing',40,12,'Groningen'),('Britanney','Padilla','Sales',51,15,'Rotterdam'),('Callum','Dale','Accounting',15,27,'Eindhoven'),('Cameran','Wiggins','HR',19,4,'Utrecht'),('Cassidy','Richard','Accounting',95,99,'Eindhoven'),('Celeste','Cunningham','HR',78,30,'Rotterdam'),('Charde','Pierce','HR',98,70,'Amsterdam'),('Clark','Glover','Purchasing',87,42,'Den Haag'),('Clarke','Dickson','Purchasing',84,19,'Breda'),('Colette','Goodwin','Marketing',70,71,'Groningen'),('Colleen','Leblanc','Purchasing',84,30,'Rotterdam'),('Colleen','Sanchez','Production',21,19,'Den Haag'),('Colleen','Wood','Planning',92,37,'Amsterdam'),('Cyrus','Houston','Planning',3,98,'Nijmegen'),('Deborah','Dyer','Planning',97,55,'Almere'),('Derek','Morin','Purchasing',6,1,'Almere'),('Dexter','Mayo','Accounting',34,68,'Rotterdam'),('Driscoll','Rice','Accounting',34,94,'Rotterdam'),('Ella','Dalton','Accounting',12,73,'Den Haag'),('Farrah','Stewart','Accounting',13,53,'Almere'),('Gary','Callahan','Purchasing',16,53,'Rotterdam'),('Gavin','Wooten','HR',94,83,'Almere'),('Gillian','Ramsey','Administration',50,22,'Eindhoven'),('Gisela','Day','Marketing',26,32,'Den Haag'),('Gwendolyn','Jensen','Planning',7,89,'Eindhoven'),('Harrison','Kirk','Production',47,75,'Den Haag'),('Hector','Wilder','Marketing',2,68,'Utrecht'),('Hilary','Crawford','Administration',81,14,'Den Haag'),('Ian','Hill','HR',30,84,'Rotterdam'),('Ila','Meyers','Planning',22,48,'Eindhoven'),('Imani','Mueller','HR',20,18,'Groningen'),('Imogene','Grimes','Accounting',23,31,'Almere'),('Indira','Puckett','Administration',23,84,'Eindhoven'),('Inga','Cooper','Planning',100,47,'Eindhoven'),('Ivory','Howard','R&D',52,88,'Almere'),('Jack','Haynes','R&D',25,51,'Den Haag'),('Janna','Cummings','Accounting',16,4,'Eindhoven'),('Janna','Kelley','HR',29,60,'Breda'),('Jennifer','Farley','Planning',93,20,'Tilburg'),('Joshua','Hines','Accounting',34,56,'Almere'),('Kathleen','Chan','Accounting',40,82,'Tilburg'),('Keane','Bowen','R&D',38,10,'Breda'),('Keegan','Rosales','Sales',98,6,'Amsterdam'),('Keely','Bowen','Planning',20,72,'Almere'),('Knox','Molina','Planning',16,67,'Eindhoven'),('Kyla','Britt','HR',97,35,'Rotterdam'),('Kyla','Stanley','R&D',14,76,'Almere'),('Kylee','Morales','Accounting',49,14,'Amsterdam'),('Libby','Hopper','R&D',8,3,'Rotterdam'),('Lionel','Richardson','Planning',100,98,'Eindhoven'),('Lucius','Perkins','Marketing',57,89,'Amsterdam'),('Madison','Bradley','Sales',13,91,'Rotterdam'),('McKenzie','Aguilar','Planning',12,89,'Nijmegen'),('Melvin','Reed','Administration',62,66,'Nijmegen'),('Melyssa','Fox','Sales',95,87,'Groningen'),('Mona','Bond','Sales',30,61,'Groningen'),('Nasim','Ramirez','Sales',24,96,'Almere'),('Nerea','Richmond','Accounting',50,72,'Utrecht'),('Noah','Rasmussen','Purchasing',38,8,'Utrecht'),('Oleg','Ross','Marketing',2,72,'Rotterdam'),('Ora','Banks','HR',77,23,'Rotterdam'),('Petra','Clemons','Accounting',38,37,'Eindhoven'),('Porter','Scott','Marketing',83,47,'Breda'),('Price','West','Production',74,23,'Eindhoven'),('Quamar','Wilkerson','Planning',83,37,'Breda'),('Quin','Emerson','Sales',80,24,'Amsterdam'),('Quyn','Robles','Planning',66,81,'Den Haag'),('Rahim','Baker','Purchasing',35,15,'Almere'),('Reagan','Brennan','Marketing',95,16,'Utrecht'),('Reagan','Oconnor','Planning',14,54,'Tilburg'),('Ria','Roy','HR',5,95,'Rotterdam'),('Roary','Salas','Marketing',46,23,'Groningen'),('Robin','Short','Production',42,34,'Breda'),('Ryan','Grimes','Planning',35,79,'Amsterdam'),('Savannah','Alford','Marketing',62,48,'Breda'),('Savannah','Sharpe','Marketing',15,18,'Groningen'),('Scott','Steele','Production',100,95,'Nijmegen'),('September','Avila','Marketing',99,14,'Nijmegen'),('Shaeleigh','Cummings','HR',64,37,'Rotterdam'),('Sharon','Bishop','Purchasing',45,88,'Utrecht'),('Slade','Howard','Marketing',34,69,'Tilburg'),('Stone','Carroll','Purchasing',31,63,'Rotterdam'),('Stuart','Hays','Planning',37,52,'Rotterdam'),('Thomas','Delacruz','HR',63,18,'Eindhoven'),('Tyler','Winters','Production',98,35,'Almere'),('Ulric','Marsh','Production',1,36,'Breda'),('Vance','Swanson','Sales',2,53,'Den Haag'),('Walker','Gallagher','Administration',43,95,'Groningen'),('Wallace','Norris','Planning',62,60,'Amsterdam'),('Winter','Lancaster','Planning',53,74,'Eindhoven'),('Zenaida','Sanchez','Purchasing',99,26,'Eindhoven'),('Zeph','Bullock','HR',15,61,'Nijmegen');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `products` (
  `CodeP` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `NameP` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Size` int(11) DEFAULT NULL,
  `Storehouse` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`CodeP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES ('P1','Short','Black',39,'Almere'),('P10','Coat','Pink',42,'Groningen'),('P100','Top','Orange',46,'Amsterdam'),('P11','Skirt','Gray',45,'Amsterdam'),('P12','Skirt','Orange',37,'Almere'),('P13','Dress','White',37,'Groningen'),('P14','Jacket','Pink',46,'Groningen'),('P15','Top','yellow',41,'Groningen'),('P16','Dress','yellow',45,'Groningen'),('P17','Trouser','White',48,'Almere'),('P18','Skirt','Pink',45,'Groningen'),('P19','Dress','Brown',46,'Groningen'),('P2','Jacket','White',41,'Groningen'),('P20','Short','Purple',45,'Almere'),('P21','Short','White',45,'Groningen'),('P22','Jacket','Purple',41,'Groningen'),('P23','Top','Black',41,'Groningen'),('P24','Skirt','Purple',48,'Groningen'),('P25','Dress','Purple',43,'Groningen'),('P26','Trouser','Black',47,'Almere'),('P27','Skirt','Pink',36,'Almere'),('P28','Trouser','Gray',38,'Amsterdam'),('P29','Dress','Brown',37,'Almere'),('P3','Top','yellow',46,'Almere'),('P30','Jeans','yellow',43,'Amsterdam'),('P31','Dress','yellow',43,'Groningen'),('P32','Trouser','Purple',36,'Amsterdam'),('P33','Jacket','Gray',48,'Amsterdam'),('P34','Coat','White',46,'Groningen'),('P35','Top','Red',39,'Amsterdam'),('P36','Jacket','Orange',37,'Groningen'),('P37','Skirt','Purple',47,'Groningen'),('P38','Jeans','Black',37,'Almere'),('P39','Short','Orange',39,'Groningen'),('P4','Skirt','yellow',40,'Amsterdam'),('P40','Jeans','Black',47,'Groningen'),('P41','Jacket','Black',41,'Groningen'),('P42','Jeans','Black',48,'Groningen'),('P43','Skirt','White',42,'Almere'),('P44','Jeans','Red',44,'Amsterdam'),('P45','Dress','Brown',39,'Groningen'),('P46','Jeans','yellow',38,'Groningen'),('P47','Top','yellow',37,'Amsterdam'),('P48','Jeans','White',47,'Amsterdam'),('P49','Jacket','Black',37,'Groningen'),('P5','Jacket','Black',39,'Amsterdam'),('P50','Jacket','yellow',46,'Almere'),('P51','Dress','White',37,'Groningen'),('P52','Coat','Orange',43,'Groningen'),('P53','Jeans','Pink',41,'Amsterdam'),('P54','Short','yellow',36,'Groningen'),('P55','Jeans','Black',48,'Groningen'),('P56','Trouser','Gray',38,'Groningen'),('P57','Jeans','Brown',38,'Almere'),('P58','Top','Orange',43,'Almere'),('P59','Jeans','Orange',40,'Almere'),('P6','Trouser','White',41,'Almere'),('P60','Jeans','Black',44,'Groningen'),('P61','Jacket','yellow',39,'Groningen'),('P62','Short','White',46,'Almere'),('P63','Skirt','White',45,'Almere'),('P64','Skirt','Black',45,'Groningen'),('P65','Skirt','Brown',43,'Groningen'),('P66','Skirt','Orange',43,'Groningen'),('P67','Jeans','yellow',46,'Almere'),('P68','Top','Red',42,'Amsterdam'),('P69','Jacket','Black',43,'Groningen'),('P7','Short','Brown',45,'Almere'),('P70','Trouser','Brown',40,'Almere'),('P71','Top','yellow',45,'Groningen'),('P72','Top','Black',47,'Almere'),('P73','Jeans','Red',44,'Groningen'),('P74','Dress','White',36,'Almere'),('P75','Trouser','Pink',46,'Almere'),('P76','Coat','Red',41,'Almere'),('P77','Coat','yellow',39,'Groningen'),('P78','Short','Purple',46,'Groningen'),('P79','Skirt','Gray',38,'Groningen'),('P8','Skirt','Purple',42,'Almere'),('P80','Jeans','Black',43,'Groningen'),('P81','Top','White',39,'Amsterdam'),('P82','Top','Red',43,'Groningen'),('P83','Jacket','White',39,'Amsterdam'),('P84','Top','Orange',44,'Groningen'),('P85','Dress','Orange',43,'Amsterdam'),('P86','Top','Purple',45,'Amsterdam'),('P87','Jacket','Black',41,'Almere'),('P88','Short','Orange',38,'Almere'),('P89','Coat','Black',43,'Almere'),('P9','Jacket','Purple',48,'Almere'),('P90','Skirt','Orange',39,'Groningen'),('P91','Short','Red',47,'Groningen'),('P92','Dress','Gray',46,'Amsterdam'),('P93','Trouser','yellow',39,'Almere'),('P94','Short','Red',46,'Amsterdam'),('P95','Jacket','Brown',41,'Amsterdam'),('P96','Jacket','yellow',40,'Almere'),('P97','Dress','yellow',40,'Groningen'),('P98','Short','Purple',44,'Groningen'),('P99','Top','Brown',39,'Groningen');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `supplier` (
  `CodeS` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `NameS` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Shareholders` int(11) DEFAULT NULL,
  `Office` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`CodeS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES ('S1','Galvin',4,'Nijmegen'),('S10','Kai',14,'Rotterdam'),('S11','Cedric',18,'Rotterdam'),('S12','Amal',17,'Breda'),('S13','Faith',8,'Rotterdam'),('S14','Leilani',15,'Den Haag'),('S15','Mechelle',3,'Den Haag'),('S16','Leigh',1,'Eindhoven'),('S17','Leah',11,'Den Haag'),('S18','Wyoming',18,'Eindhoven'),('S19','Dacey',16,'Nijmegen'),('S2','Tanner',19,'Utrecht'),('S20','Sonya',6,'Utrecht'),('S21','Grace',10,'Rotterdam'),('S22','Marcia',12,'Utrecht'),('S23','Reuben',15,'Nijmegen'),('S24','Illana',10,'Rotterdam'),('S25','Avram',18,'Utrecht'),('S26','Walter',11,'Rotterdam'),('S27','Norman',1,'Groningen'),('S28','Dacey',6,'Rotterdam'),('S29','Madaline',15,'Eindhoven'),('S3','Beck',6,'Utrecht'),('S30','Justin',9,'Utrecht'),('S4','Wyatt',3,'Nijmegen'),('S5','Lois',13,'Groningen'),('S6','Rashad',19,'Amsterdam'),('S7','Cleo',1,'Nijmegen'),('S8','Amal',9,'Breda'),('S9','Paki',6,'Utrecht');
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supply`
--

DROP TABLE IF EXISTS `supply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `supply` (
  `CodeS` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `CodeP` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Amount` int(11) DEFAULT NULL,
  PRIMARY KEY (`CodeS`,`CodeP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supply`
--

LOCK TABLES `supply` WRITE;
/*!40000 ALTER TABLE `supply` DISABLE KEYS */;
INSERT INTO `supply` VALUES ('S1','P10',193),('S1','P13',55),('S1','P18',224),('S1','P23',490),('S1','P27',474),('S1','P42',251),('S1','P75',224),('S1','P9',153),('S1','P93',355),('S1','P95',50),('S1','P99',218),('S10','P100',52),('S10','P18',202),('S10','P19',422),('S10','P2',367),('S10','P30',131),('S10','P33',217),('S10','P46',398),('S10','P50',479),('S10','P6',479),('S10','P76',233),('S10','P89',35),('S10','P95',457),('S10','P99',167),('S11','P33',436),('S11','P36',345),('S11','P42',114),('S11','P43',117),('S11','P46',456),('S11','P60',361),('S11','P61',255),('S11','P63',109),('S11','P70',213),('S11','P71',495),('S11','P90',330),('S11','P98',390),('S12','P3',379),('S13','P12',277),('S13','P28',292),('S13','P31',206),('S13','P32',273),('S13','P41',277),('S13','P42',338),('S13','P46',368),('S13','P56',52),('S13','P76',273),('S13','P78',168),('S13','P85',371),('S14','P12',237),('S14','P19',103),('S14','P22',128),('S14','P24',318),('S14','P30',88),('S14','P32',457),('S14','P37',85),('S14','P43',391),('S14','P48',241),('S14','P57',495),('S14','P70',425),('S14','P8',74),('S14','P83',80),('S14','P84',324),('S14','P90',435),('S14','P92',310),('S14','P98',478),('S15','P11',149),('S15','P23',381),('S15','P31',185),('S15','P39',242),('S15','P42',309),('S15','P66',193),('S15','P76',500),('S15','P79',294),('S16','P1',70),('S16','P10',210),('S16','P11',156),('S16','P16',326),('S16','P17',313),('S16','P21',269),('S16','P25',184),('S16','P33',490),('S16','P58',105),('S16','P6',174),('S16','P67',434),('S16','P69',379),('S16','P7',170),('S16','P77',287),('S16','P94',330),('S16','P95',144),('S17','P10',297),('S17','P13',407),('S17','P23',483),('S17','P24',472),('S17','P44',53),('S17','P54',364),('S17','P58',264),('S17','P62',350),('S17','P63',249),('S17','P68',290),('S17','P76',347),('S17','P77',486),('S17','P8',257),('S17','P98',429),('S18','P17',388),('S18','P4',298),('S18','P42',449),('S18','P59',370),('S18','P73',185),('S18','P89',44),('S19','P22',173),('S19','P27',108),('S19','P61',443),('S19','P66',500),('S19','P72',39),('S19','P86',441),('S19','P91',295),('S19','P92',425),('S19','P97',96),('S2','P14',171),('S2','P19',52),('S2','P2',492),('S2','P20',130),('S2','P27',106),('S2','P38',193),('S2','P4',485),('S2','P43',219),('S2','P51',126),('S2','P59',395),('S2','P8',478),('S2','P92',81),('S2','P98',51),('S20','P30',268),('S20','P32',206),('S20','P36',305),('S20','P44',68),('S20','P49',455),('S20','P68',435),('S20','P78',349),('S20','P88',338),('S20','P96',257),('S21','P13',159),('S21','P18',313),('S21','P23',391),('S21','P24',207),('S21','P31',143),('S21','P35',497),('S21','P39',196),('S21','P4',292),('S21','P52',352),('S21','P54',499),('S21','P55',403),('S21','P68',326),('S21','P70',439),('S21','P88',347),('S22','P15',495),('S22','P30',285),('S22','P55',204),('S22','P57',368),('S22','P58',466),('S22','P63',444),('S22','P67',138),('S22','P7',295),('S22','P80',351),('S22','P82',399),('S22','P90',92),('S22','P99',176),('S23','P14',399),('S23','P36',400),('S23','P45',357),('S23','P55',94),('S23','P59',268),('S23','P61',352),('S23','P62',500),('S23','P76',199),('S23','P8',141),('S23','P83',299),('S24','P15',292),('S24','P2',299),('S24','P21',465),('S24','P26',228),('S24','P27',277),('S24','P34',429),('S24','P58',303),('S24','P59',309),('S24','P62',212),('S24','P73',116),('S24','P8',431),('S24','P88',447),('S24','P94',192),('S25','P1',440),('S25','P15',453),('S25','P16',57),('S25','P29',138),('S25','P44',463),('S25','P47',230),('S25','P48',471),('S25','P54',478),('S25','P58',372),('S25','P66',361),('S25','P7',472),('S25','P73',192),('S25','P74',64),('S25','P8',205),('S25','P87',189),('S25','P9',483),('S26','P3',326),('S27','P17',495),('S27','P40',67),('S27','P41',110),('S27','P50',466),('S27','P59',236),('S27','P74',164),('S27','P80',146),('S27','P81',364),('S27','P83',277),('S28','P12',182),('S28','P15',109),('S28','P16',382),('S28','P35',354),('S28','P37',35),('S28','P42',308),('S28','P48',214),('S28','P49',164),('S28','P58',141),('S28','P62',266),('S28','P65',344),('S28','P74',185),('S28','P86',339),('S28','P95',216),('S28','P96',225),('S28','P99',160),('S29','P1',415),('S29','P14',451),('S29','P25',67),('S29','P28',358),('S29','P37',285),('S29','P43',368),('S29','P66',186),('S29','P67',193),('S29','P68',349),('S29','P80',202),('S29','P81',467),('S29','P85',54),('S29','P86',453),('S29','P98',78),('S3','P1',302),('S3','P18',263),('S3','P20',204),('S3','P42',486),('S3','P47',236),('S3','P49',437),('S3','P57',478),('S3','P60',247),('S3','P62',234),('S3','P66',416),('S3','P71',129),('S3','P74',355),('S3','P91',301),('S3','P95',444),('S3','P99',384),('S30','P10',466),('S30','P23',68),('S30','P27',383),('S30','P30',109),('S30','P34',104),('S30','P35',107),('S30','P36',126),('S30','P40',320),('S30','P50',148),('S30','P53',400),('S30','P6',247),('S30','P60',449),('S30','P65',182),('S30','P73',54),('S30','P91',210),('S30','P99',247),('S4','P23',289),('S4','P27',411),('S4','P49',286),('S4','P50',346),('S4','P52',445),('S4','P53',48),('S4','P56',386),('S4','P58',127),('S4','P66',324),('S4','P73',143),('S4','P78',204),('S4','P81',325),('S4','P83',90),('S5','P1',61),('S5','P10',476),('S5','P13',240),('S5','P16',300),('S5','P29',85),('S5','P35',215),('S5','P40',477),('S5','P43',435),('S5','P48',35),('S5','P49',479),('S5','P57',152),('S5','P59',383),('S5','P60',494),('S5','P99',255),('S6','P100',383),('S6','P2',208),('S6','P21',129),('S6','P37',450),('S6','P41',162),('S6','P46',498),('S6','P59',209),('S6','P63',443),('S6','P64',448),('S6','P70',290),('S6','P79',249),('S6','P90',39),('S6','P92',273),('S7','P1',271),('S7','P11',192),('S7','P17',160),('S7','P35',167),('S7','P37',449),('S7','P47',240),('S7','P59',342),('S7','P62',482),('S7','P63',416),('S7','P97',364),('S8','P13',478),('S8','P24',444),('S8','P28',54),('S8','P39',282),('S8','P42',162),('S8','P43',61),('S8','P47',479),('S8','P5',295),('S8','P54',224),('S8','P6',446),('S8','P69',81),('S8','P83',458),('S8','P87',455),('S9','P16',187),('S9','P17',126),('S9','P22',42),('S9','P37',132),('S9','P42',422),('S9','P53',247),('S9','P56',316),('S9','P58',348),('S9','P71',73),('S9','P74',319),('S9','P79',116),('S9','P80',452),('S9','P87',431),('S9','P88',369),('S9','P96',250);
/*!40000 ALTER TABLE `supply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `avg_dept_salary`
--

/*!50001 DROP VIEW IF EXISTS `avg_dept_salary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `avg_dept_salary` AS select avg(`employee`.`Salary`) AS `avg_sal`,`employee`.`Dept` AS `dept` from `employee` group by `employee`.`Dept` */;
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

-- Dump completed on 2019-01-11 10:41:19
