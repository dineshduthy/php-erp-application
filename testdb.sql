-- MariaDB dump 10.19  Distrib 10.11.7-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: vstgroup_vst
-- ------------------------------------------------------
-- Server version	10.11.7-MariaDB

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
-- Table structure for table `about`
--

DROP TABLE IF EXISTS `about`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `about` (
  `abt_id` int(11) NOT NULL AUTO_INCREMENT,
  `abt_txt_small` varchar(30000) NOT NULL,
  `abt_txt_large` varchar(30000) NOT NULL,
  `mission_vision` varchar(3000) NOT NULL,
  `abt_head` varchar(500) NOT NULL,
  `abt_img` varchar(500) NOT NULL,
  PRIMARY KEY (`abt_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `about`
--

LOCK TABLES `about` WRITE;
/*!40000 ALTER TABLE `about` DISABLE KEYS */;
INSERT INTO `about` VALUES
(1,'<h2>The First 100 Years</h2>\n\n<p>Driven by its core value of trust, the VST Group of companies today serves more than 5,000 customers every day with businesses in 7 different sectors and a turnover of over 3000 crore rupees a year. A business of this size and repute was not built overnight; it is the fruit of a century of dedication, foresight and hard work.</p>\n\n<h2>First Beginnings</h2>\n\n<p>Like most epic journeys, the VST group&#39;s saga begins with a single step, simple, but with far-reaching consequences. In 1909, group founder V.S. Thiruvengadaswamy Mudaliar (1881-1949) was a sub-agent for Asiatic Petroleum Company (APC) in the Bangalore Cantonment area. An unfortunate misunderstanding precipitated the termination of this arrangement, leaving Mr. Mudaliar with the dilemma of fulfilling orders that had already been paid for in advance despite the lack of stocks. He solved this problem by purchasing equivalent products from agents of the Standard Oil Company and supplying them to his customers.</p>\n\n<p>This innovative solution to retain the customers&#39; trust, embodies the core values at the heart of the VST group&#39;s approach. It also set the groundwork for a growing business, a fact that was not lost on APC, who re-instated Mr. Mudaliar as their agent in 1911. This marked the formation of VST &amp; Sons. Initially involved in distributing kerosene, the company diversified into petroleum products. In the early days, Mr. Mudaliar personally delivered kerosene supplies on his bicycle along with his team. In time the business grew to include petrol pump outlets in Bangalore and its suburbs. The late 1920s and 1930s saw another significant example of diversification as the company became involved in civil construction for the British Army.</p>\n\n<h2>The sons step in</h2>\n\n<p>Mr. Mudaliar&#39;s sons, V.T. Padmanabhan, V.T. Krishnamoorthy, and V.T. Velu, started to take active roles in the business in the 1930s. Mr. Padmanabhan followed a strict code of discipline at home and at work. His hands-on approach made him a natural fit for the construction business. During an outbreak of the plague in the late 1920s and the early 1930s, Mr. Padmanabhan personally oversaw construction sites. This inspired the workers who had been planning to return home, fearful of falling ill. One of them, a supervisor named Mr. K.R. Krishnaswamy not only stayed on the job; he eventually rose to become a director at VST Service Station Pvt. Ltd.</p>\n\n<p>As one of the first Indians to study at the prestigious London School of Economics, Mr. Krishnamoorthy naturally took on the financial side of the business. He was the key to all the investments made from the 1950s to the 1990s. Mr. Velu proved to be a dynamic and far-sighted industrialist, steering the manufacturing sector of the group for over three decades, focusing initially on India Garage and later on VST Tilllers Tractors Ltd, becoming Managing Director and eventually Chairman of VST Tilllers Tractors Ltd. He was often known as the PR person of the Group.</p>\n\n<p>The grandsons of Mr. Mudaliar have since steered the Group, building upon the foundation laid by their fathers and grandfather. Mr. V. P. Thirumurthy, son of V. T. Padmanabhan, was the founder of Chennai Ford, VST Bajaj (Bangalore and Mysore) and also managed India Garage Chennai for many years, taking it from strength to strength. His untimely loss is felt keenly by both the family members and his professional associates. The next generation, comprising of the great-grandsons of Mr. Mudaliar are now building on this legacy of hard work, to brighten the next 100 years.</p>\n\n<h2>A legacy grows</h2>\n\n<p>&ldquo;Mr. Mudaliar started out selling kerosene, which was used for lighting lamps. He was a man known for his integrity and hard work. This served as a foundation for the group, and that initial flame that began in kerosene has grown into a torch, which represents the VST Groups ideals of trust, hard work and leadership.<img alt=\"\" src=\"http://vstgroup.com/file/images/slogo.png\" /></p>\n\n<p>In the 1960s, the petroleum product business became smaller as oil companies were nationalized. When a traditional mainstay of a business shrinks, it can be the cue for a decline; or can be the trigger for further growth with some timely and intelligent diversification. The latter proved to be the case as Mr. Mudaliar&#39;s sons chose to invest further in the then-nascent automobile dealership sector. The market for automobiles in India at the time was nowhere near its current size and boasted far fewer players, but today it has seen incredible growth and is slated to be one of the largest markets in the world. In this way, the tradition of finding new solutions in challenging times established by the group&#39;s founder has helped guide its enduring success and growth.</p>\n','<h2>The First 100 Years</h2>\n\n<p>Driven by its core value of trust, the VST Group of companies today serves more than 5,000 customers every day with businesses in 7 different sectors and a turnover of over 3000 crore rupees a year. A business of this size and repute was not built overnight; it is the fruit of a century of dedication, foresight and hard work.</p>\n\n<h2>First Beginnings</h2>\n\n<p>Like most epic journeys, the VST group&#39;s saga begins with a single step, simple, but with far-reaching consequences. In 1909, group founder V.S. Thiruvengadaswamy Mudaliar (1881-1949) was a sub-agent for Asiatic Petroleum Company (APC) in the Bangalore Cantonment area. An unfortunate misunderstanding precipitated the termination of this arrangement, leaving Mr. Mudaliar with the dilemma of fulfilling orders that had already been paid for in advance despite the lack of stocks. He solved this problem by purchasing equivalent products from agents of the Standard Oil Company and supplying them to his customers.</p>\n\n<p>This innovative solution to retain the customers&#39; trust, embodies the core values at the heart of the VST group&#39;s approach. It also set the groundwork for a growing business, a fact that was not lost on APC, who re-instated Mr. Mudaliar as their agent in 1911. This marked the formation of VST &amp; Sons. Initially involved in distributing kerosene, the company diversified into petroleum products. In the early days, Mr. Mudaliar personally delivered kerosene supplies on his bicycle along with his team. In time the business grew to include petrol pump outlets in Bangalore and its suburbs. The late 1920s and 1930s saw another significant example of diversification as the company became involved in civil construction for the British Army.</p>\n\n<h2>The sons step in</h2>\n\n<p>Mr. Mudaliar&#39;s sons, V.T. Padmanabhan, V.T. Krishnamoorthy, and V.T. Velu, started to take active roles in the business in the 1930s. Mr. Padmanabhan followed a strict code of discipline at home and at work. His hands-on approach made him a natural fit for the construction business. During an outbreak of the plague in the late 1920s and the early 1930s, Mr. Padmanabhan personally oversaw construction sites. This inspired the workers who had been planning to return home, fearful of falling ill. One of them, a supervisor named Mr. K.R. Krishnaswamy not only stayed on the job; he eventually rose to become a director at VST Service Station Pvt. Ltd.</p>\n\n<p>As one of the first Indians to study at the prestigious London School of Economics, Mr. Krishnamoorthy naturally took on the financial side of the business. He was the key to all the investments made from the 1950s to the 1990s. Mr. Velu proved to be a dynamic and far-sighted industrialist, steering the manufacturing sector of the group for over three decades, focusing initially on India Garage and later on VST Tilllers Tractors Ltd, becoming Managing Director and eventually Chairman of VST Tilllers Tractors Ltd. He was often known as the PR person of the Group.</p>\n\n<p>The grandsons of Mr. Mudaliar have since steered the Group, building upon the foundation laid by their fathers and grandfather. Mr. V. P. Thirumurthy, son of V. T. Padmanabhan, was the founder of Chennai Ford, VST Bajaj (Bangalore and Mysore) and also managed India Garage Chennai for many years, taking it from strength to strength. His untimely loss is felt keenly by both the family members and his professional associates. The next generation, comprising of the great-grandsons of Mr. Mudaliar are now building on this legacy of hard work, to brighten the next 100 years.</p>\n\n<h2>A legacy grows</h2>\n\n<p>&ldquo;Mr. Mudaliar started out selling kerosene, which was used for lighting lamps. He was a man known for his integrity and hard work. This served as a foundation for the group, and that initial flame that began in kerosene has grown into a torch, which represents the VST Groups ideals of trust, hard work and leadership.<img alt=\"\" src=\"http://vstgroup.com/file/images/slogo.png\" /></p>\n\n<p>In the 1960s, the petroleum product business became smaller as oil companies were nationalized. When a traditional mainstay of a business shrinks, it can be the cue for a decline; or can be the trigger for further growth with some timely and intelligent diversification. The latter proved to be the case as Mr. Mudaliar&#39;s sons chose to invest further in the then-nascent automobile dealership sector. The market for automobiles in India at the time was nowhere near its current size and boasted far fewer players, but today it has seen incredible growth and is slated to be one of the largest markets in the world. In this way, the tradition of finding new solutions in challenging times established by the group&#39;s founder has helped guide its enduring success and growth.</p>\n','<p>Our vision is one of sustained Growth that delivers Excellence with Innovation built on a foundation of Trust laid down over a hundred years</p>\n','About Us','about.jpg');
/*!40000 ALTER TABLE `about` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banner`
--

DROP TABLE IF EXISTS `banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_caption1` varchar(500) NOT NULL,
  `banner_caption2` varchar(500) NOT NULL,
  `banner_img` varchar(1000) NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banner`
--

LOCK TABLES `banner` WRITE;
/*!40000 ALTER TABLE `banner` DISABLE KEYS */;
INSERT INTO `banner` VALUES
(1,'','','slider_(4)2.jpg'),
(2,'','','slider63.jpg'),
(3,'','','slider224.jpg'),
(4,'','','slider422.jpg'),
(5,'','','slider721.jpg'),
(6,'','','slider323.jpg'),
(7,'','','slider51.jpg'),
(8,'Caption','Caption','gove_(1)3.jpg'),
(9,'Dealers for PORSCHE','Dealers for PORSCHE','slider73.jpg');
/*!40000 ALTER TABLE `banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `brands` (
  `brands_id` int(11) NOT NULL AUTO_INCREMENT,
  `brands_name` varchar(500) NOT NULL,
  `brands_img` varchar(500) NOT NULL,
  `rout` varchar(500) NOT NULL,
  PRIMARY KEY (`brands_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brands`
--

LOCK TABLES `brands` WRITE;
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
INSERT INTO `brands` VALUES
(4,'VST Titanium','d1.jpg','home/vsttitanium'),
(5,'VST Ducati','d2.jpg','home/vstducati'),
(6,'Volkswagen Palace Cross','d3.jpg','home/volkswagon'),
(7,'VST Grandeur','d4.jpg','home/vstgrandeur'),
(9,'India Garage Chennai','d6.jpg','home/garagechennai'),
(10,'VST Motors','d7.jpg','home/vstmotor'),
(11,'Metro Ford ','d8.jpg','home/metroford'),
(12,'VST Bajaj','d9.jpg','home/vstbajaj'),
(13,'City Honda','d10.jpg','home/cityhonda'),
(14,'India Garage Bangalore ','d61.jpg','home/garagebangloor'),
(15,'Chennai Ford','d81.jpg','home/chennaiford');
/*!40000 ALTER TABLE `brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `career`
--

DROP TABLE IF EXISTS `career`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `career` (
  `posted_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `career_head` varchar(250) NOT NULL,
  `career_disc` varchar(250) NOT NULL,
  `experience` varchar(1000) NOT NULL,
  `career_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`career_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `career`
--

LOCK TABLES `career` WRITE;
/*!40000 ALTER TABLE `career` DISABLE KEYS */;
INSERT INTO `career` VALUES
('2015-07-25 09:59:05','career1121','<p>one yearsdadasdas</p>\r\n','one year',1),
('2015-07-27 11:23:21','Manger','<p>2 year experience2 year experience2 year experience2 year experience</p>\r\n','2 year experience',2);
/*!40000 ALTER TABLE `career` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(200) NOT NULL,
  `category_disc` varchar(500) NOT NULL,
  `category_img` varchar(500) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES
(12,'Auto Motive franchisee','<p>Auto Motive franchisee</p>\r\n','auto1.jpg'),
(13,'Finance','<p>Auto Motive franchisee</p>\r\n','gove1.jpg'),
(14,'Manufacturing','<p>Manufacturing</p>\r\n','manufacture1.jpg'),
(15,'OE Parts Distribution','<p>OE Parts Distribution</p>\r\n','oe1.jpg'),
(16,'VST Grandeur','<p>VST Grandeur</p>\n','VSTGrandeur_Low.jpg'),
(17,'Career','','Career.jpg'),
(18,'Vision','<p>vision</p>\n','Vision_and_Values1.jpg'),
(19,'Social Responsibility','<p>Social Responsibility</p>\n','Social_Responsibility.jpg'),
(20,'Vst Sons','<p>Vst Sons</p>\n','VST_and_Sons.jpg'),
(21,'IG Indane Division','<p>IG Indane Division</p>\n','IG_Indane_Division.jpg'),
(22,'India Garage Bangalore','<p>India Garage Bangalore</p>\n','india_garage_Bangalore1.jpg'),
(23,'VST Motors','<p>VST Motors</p>\r\n','motors.jpg'),
(24,'India Garage Chennai','<p>India Garage Chennai</p>\n','chennai.jpg'),
(25,'Metro Ford','<p>Metro Ford</p>\n','Metro_Ford1.jpg'),
(26,'VST Titanium','<p>VST Titanium</p>\n','VST_Titanium.jpg'),
(27,'VST Ducati','<p>VST Ducati</p>\n','VST_Ducati1.jpg'),
(28,'VST Bajaj','<p>VST Bajaj</p>\n','baj.jpg'),
(29,'Chennai Ford','<p>Chennai Ford</p>\n','metroford.jpg'),
(30,'City Honda','<p>City Honda</p>\n','City_Honda3.jpg'),
(31,'Volkswagen Palace Cross','<p>Volkswagen Palace Cross</p>\n','VW_Palace_Cross2.jpg'),
(32,'VST Auto Parts','<p>VST Auto Parts</p>\n','autoparts1.jpg'),
(33,'Gove Investments & Finance','<p>Gove Investments &amp; Finance</p>\r\n\r\n<ul>\r\n</ul>\r\n','dummy3.jpg'),
(34,'VST Tillers Tractors','<p>VST Tillers Tractors</p>\r\n','till.jpg'),
(35,'VST Auto Ancillaries','<p>VST Auto Ancillaries</p>\r\n','anci.jpg'),
(36,'MHI-VST Diesel Engines','<p>MHI-VST Diesel Engines</p>\r\n','mh1.jpg'),
(37,'Precision Component Division','<p>Precision Component Division</p>\n','Precision_Components.jpg'),
(38,'Home','<p>Home</p>\r\n','govelogo.jpg'),
(39,'about','<p>about</p>\n','lege1.jpg'),
(40,'Contact','<p>Contact</p>\n','Contact.jpg'),
(41,'Crest Constructions','<p>contact</p>\n','Crest_Constructions1.jpg'),
(42,'Petroleum Retail','<p>Petroleum Retail</p>\n','petrolium.jpg'),
(43,'VST Central (Kia)','<p>VST Central (Kia)</p>\n','KA112.jpg'),
(44,'VST Supercars(Porsche)','<p>VST Supercars(Porsche)</p>\n','VSTPorche.jpg');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company` (
  `company_id` int(11) NOT NULL AUTO_INCREMENT,
  `terms_cnt` varchar(2000) NOT NULL,
  `privacy` varchar(2000) NOT NULL,
  PRIMARY KEY (`company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES
(1,'<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est</p>','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est compny</p>\r\n');
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipments`
--

DROP TABLE IF EXISTS `equipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equipments` (
  `equipments_id` int(11) NOT NULL AUTO_INCREMENT,
  `equipments_txt` varchar(500) NOT NULL,
  `equipments_disc` varchar(2000) NOT NULL,
  PRIMARY KEY (`equipments_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipments`
--

LOCK TABLES `equipments` WRITE;
/*!40000 ALTER TABLE `equipments` DISABLE KEYS */;
INSERT INTO `equipments` VALUES
(1,'ELECTRIC TRANFORMER ASEMBLING','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est');
/*!40000 ALTER TABLE `equipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `featured`
--

DROP TABLE IF EXISTS `featured`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `featured` (
  `featured_id` int(11) NOT NULL AUTO_INCREMENT,
  `icon` varchar(500) NOT NULL,
  `icon_text` varchar(500) NOT NULL,
  `display_page` varchar(500) NOT NULL,
  `link` varchar(500) NOT NULL,
  `rout` varchar(500) NOT NULL,
  PRIMARY KEY (`featured_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `featured`
--

LOCK TABLES `featured` WRITE;
/*!40000 ALTER TABLE `featured` DISABLE KEYS */;
INSERT INTO `featured` VALUES
(2,'f1.png','Vehicle Finance','13','',''),
(3,'f2.png','Equipment Finance','13','',''),
(4,'f3.png','Wealth Management','13','',''),
(6,'manu-12.jpg','VST Tillers Tractors','14','','home/vsttillers'),
(7,'manu-31.png','MHI-VST Diesel Engines','11111','','home/vstmhi'),
(8,'icon12.png','Petroleum Retail','38','petroleumretail',''),
(9,'icon21.png','Construction','38','crest',''),
(10,'icon3.png','Exports','38','precision',''),
(11,'icon4.png','New Business','38','','');
/*!40000 ALTER TABLE `featured` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `franchisee`
--

DROP TABLE IF EXISTS `franchisee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `franchisee` (
  `franchisee_id` int(11) NOT NULL AUTO_INCREMENT,
  `franchisee_head` varchar(500) NOT NULL,
  `franchisee_disc` varchar(50000) NOT NULL,
  PRIMARY KEY (`franchisee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `franchisee`
--

LOCK TABLES `franchisee` WRITE;
/*!40000 ALTER TABLE `franchisee` DISABLE KEYS */;
INSERT INTO `franchisee` VALUES
(1,'  FRANCHISEE MODELS ','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sollicitudin ordolor sit amet, consectetur adipiscing elit. Sed sollicitudin ordolor sit amet, consectetur adipiscing elit. Sed sollicitudin ordolor sit amet, consectetur adipiscing elit. Sed sollicitudin ordolor sit amet, consectetur adipiscing elit. Sed sollicitudin ordolor sit amet, consectetur adipiscing elit. Sed sollicitudin ordolor sit amet, consectetur adipiscing elit. Sed sollicitudin ordolor sit amet, consectetur &#39; adipiscing elit. Sed sollicitudin ordolor sit amet, consectetur adipiscing elit. Sed sollicitudin ordolor sit amet, consectetur adipiscing elit. Sed sollicitudin ordolor sit amet, consectetur adipiscing elit. Sed sollicitudin ordolor sit amet, consectetur adipiscing elit. Sed sollicitudin ordolor sit amet, consectetur adipiscing elit. Sed sollicitudin orci velit, vel mollis metus maximus sed. Pellentesque fringilla feugiat augue, a feugiat sem tristique nec. Nullam et maximus lectus. Nam feugiat augue placerat libero interdum hendrerit. Nam porttitor efficitur posuere. Aenean ullamcorper blandit commodo. Class aptent taciti sociosqu ad litora torquent per conubia nostra.</p>\r\n\r\n<ul>\r\n	<li>Sed quia non numquam</li>\r\n	<li>Numquam eius modi</li>\r\n	<li>Sed quia non numquam</li>\r\n	<li>Numquam eius modi</li>\r\n</ul>\r\n\r\n<p>Sed sollicitudin ordolor sit amet, consectetur adipiscing elit. Sed sollicitudin orci velit, vel mollis metus maximus sed. Pellentesque fringilla feugiat augue, a feugiat sem tristique nec. Nullam et maximus lectus. Nam feugiat augue placerat libero interdum hendrerit. Nam porttitor efficitur posuere. Aenean ullamcorper blandit commodo. Class aptent taciti sociosqu ad litora torquent per conubia nostra.</p>\r\n');
/*!40000 ALTER TABLE `franchisee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery`
--

DROP TABLE IF EXISTS `gallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gallery` (
  `gallery_id` int(11) NOT NULL AUTO_INCREMENT,
  `galley_image` varchar(500) NOT NULL,
  `category_id` varchar(500) NOT NULL,
  `image_caption` varchar(250) NOT NULL,
  PRIMARY KEY (`gallery_id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery`
--

LOCK TABLES `gallery` WRITE;
/*!40000 ALTER TABLE `gallery` DISABLE KEYS */;
INSERT INTO `gallery` VALUES
(43,'a21.jpg','12','caption'),
(44,'a31.jpg','12','caption'),
(45,'a4.jpg','12','Caption'),
(46,'g1.jpg','13','gallery'),
(47,'g2.jpg','13','gallery'),
(48,'m1.jpg','14','gallery'),
(49,'m2.jpg','14','gallery'),
(50,'m3.jpg','14','gallery'),
(51,'m4.jpg','14','gallery'),
(53,'o1.jpg','15','Caption'),
(54,'o2.jpg','15','gallery'),
(55,'o3.jpg','15','Caption'),
(56,'o4.jpg','15','gallery'),
(58,'a12.jpg','12','caption'),
(59,'ford2.jpg','25','gallery ford'),
(60,'ford3.jpg','25','gallery ford'),
(61,'ford4.jpg','25','gallery ford'),
(64,'v2.jpg','31','Volkswagon'),
(65,'v3.jpg','31','Volkswagon'),
(66,'v4.jpg','31','Volkswagon'),
(67,'grand1.jpg','16','VST Grand'),
(68,'grand2.jpg','16','VST Grand'),
(69,'t11.jpg','26','VST Titanium'),
(70,'t2.jpg','26','VST Titanium');
/*!40000 ALTER TABLE `gallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `images` (
  `images_id` int(11) NOT NULL AUTO_INCREMENT,
  `images_category` varchar(500) NOT NULL,
  `image` varchar(1000) NOT NULL,
  PRIMARY KEY (`images_id`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES
(89,'equip','equipments_04.jpg'),
(91,'equip','equipments2_04.jpg'),
(92,'equip','equipments1_04.jpg'),
(94,'cert','cirtificates_13.jpg'),
(95,'part','partner1_14.jpg');
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `address` varchar(250) NOT NULL,
  `phone` varchar(11) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES
(1,'VST','info@vst.com','dc0166b196abf968861bc1267d3f7010','iz.','1234567890');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mail`
--

DROP TABLE IF EXISTS `mail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mail` (
  `mail_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `phone` varchar(500) NOT NULL,
  `message` varchar(2000) NOT NULL,
  PRIMARY KEY (`mail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mail`
--

LOCK TABLES `mail` WRITE;
/*!40000 ALTER TABLE `mail` DISABLE KEYS */;
/*!40000 ALTER TABLE `mail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  `news_head` varchar(500) NOT NULL,
  `news_disc` longtext NOT NULL,
  `news_img` varchar(500) NOT NULL,
  `posted_date` varchar(100) NOT NULL,
  PRIMARY KEY (`news_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES
(2,'VST Group Achievement','<p>India&rsquo;s premier automotive magazine, Autocar India has selected the VST Group as the Car Dealer of the Year (Metro) for 2020-2021.</p>\n','autocar_award1.png',''),
(3,'Mercedes-Benz ties up with VST for Tamilnadu','<p>VST Group has given the history-rich Gove Building a memorable gift &ndash; machines from Mercedes-Benz. Through its subsidiary, VST Titanium Motors, which has a Mercedes-Benz dealership, the Group has now turned the building into a showroom for these luxury cars. If walls could speak, this building would resonate with the sounds of nostalgia, recounting how its heritage walls had earlier romanced Mercedes-Benz vehicles. - The Hindu</p>\n\n<p><a href=\"http://www.thehindu.com/todays-paper/tp-national/tp-tamilnadu/heritage-building-renews-romance-with-mercedesbenz/article7584588.ece\" target=\"_blank\">www.thehindu.com</a></p>\n','m1.png',''),
(4,'Ducati rides into South India with a new dealership in Bengaluru','<p>Reinforcing its commitment to the Indian market with dealerships in Mumbai, Delhi and Gurgaon, Ducati India now opens its doors in Bengaluru, the First Ducati dealership in South India. VST, one of South India&#39;s leading private automobile business groups, has now established the world class Ducati dealership at the luxury lifestyle destination of Bengaluru UB City.&nbsp;</p>\n\n<p><a href=\"http://vstducati.in/\">http://vstducati.in/</a>&nbsp;</p>\n','ducati.png','');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page_banner`
--

DROP TABLE IF EXISTS `page_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `page_banner` (
  `page_id` int(11) NOT NULL,
  `about` varchar(150) NOT NULL,
  `product` varchar(150) NOT NULL,
  `store` varchar(150) NOT NULL,
  `franchisee` varchar(150) NOT NULL,
  `news` varchar(150) NOT NULL,
  `career` varchar(150) NOT NULL,
  `contact` varchar(150) NOT NULL,
  PRIMARY KEY (`about`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page_banner`
--

LOCK TABLES `page_banner` WRITE;
/*!40000 ALTER TABLE `page_banner` DISABLE KEYS */;
INSERT INTO `page_banner` VALUES
(1,'aboubanner_022.jpg','product_banner_021.jpg','store_banner_02.jpg','framchisee_banner_02.jpg','news_banner_02.jpg','career_banner_02.jpg','contact_banner_02.jpg');
/*!40000 ALTER TABLE `page_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_cnt`
--

DROP TABLE IF EXISTS `product_cnt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_cnt` (
  `product_cnt_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_cnt` varchar(2000) NOT NULL,
  PRIMARY KEY (`product_cnt_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_cnt`
--

LOCK TABLES `product_cnt` WRITE;
/*!40000 ALTER TABLE `product_cnt` DISABLE KEYS */;
INSERT INTO `product_cnt` VALUES
(1,'<p>aaaaLorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sollicitudin ordolor sit amet, consectetur adipiscing elit. Sed sollicitudin ordolor sit amet, consectetur adipiscing elit. Sed sollicitudin ordolor sit amet, consectetur adipiscing elit. Sed sollicitudin ordolor sit amet, consectetur adipiscing elit. Sed sollicitudin ordolor sit amet, consectetur adipiscing elit. Sed sollicitudin ordolor sit amet, consectetur adipiscing elit. Sed sollicitudin ordolor sit amet, consectetur &#39; adipiscing elit. Sed sollicitudin ordolor sit amet, consectetur adipiscing elit. Sed sollicitudin ordolor sit amet, consectetur adipiscing elit. Sed sollicitudin ordolor sit amet, consectetur adipiscing elit. Sed sollicitudin ordolor sit amet, consectetur adipiscing elit.</p>');
/*!40000 ALTER TABLE `product_cnt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `products_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `products_heading` varchar(250) NOT NULL,
  `products_disc` longtext NOT NULL,
  `products_brand` int(11) NOT NULL,
  `address` longtext NOT NULL,
  `address1` longtext NOT NULL,
  `address2` longtext NOT NULL,
  `products_availability` varchar(500) NOT NULL,
  `products_img` varchar(500) NOT NULL,
  `map` longtext NOT NULL,
  PRIMARY KEY (`products_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES
(6,14,'garage','<p>Founded in 1949, India Garage has outlets in Bangalore and Mysore. Over the years, India Garage has emerged as a market leader and one of the most respected dealerships in the region. India Garage has two showrooms in Bangalore as well as 3 well-located, state-of-the-art workshops in the city. The Mysore dealership also caters to customers in surrounding areas including Mandya, Madikeri and Chamarajnagar.</p>\r\n\r\n<p>The company prides itself on its sales and service network. Initially dealing in Austin and Studebaker cars, India Garage moved on to dealing in Mahindra &amp; Mahindra and Hindustan Motors automobiles.</p>\r\n',0,'0','','','0','india.jpg',''),
(7,13,'Finance','<p>GOVE Finance Limited, the leader in Auto Finance services for more than 30 years, is a dynamic non-banking finance company led by a team of specialists with proven track record. Part of the 100 year old VST Group, GOVE Finance Limited was formed in 1983 with the aim of providing support to clientele in the commercial vehicle sector.</p>\n\n<p>Today it has cemented a reputation for being one of South India&rsquo;s foremost financial service providers in the auto and machinery sector. In these changing economic times, choosing the right financial solution is crucial. From financing prospective clients to raising the required funds, GOVE Finance Limited utilizes financial intelligence inputs to bring smiles to customers seeking to own their dream vehicle or machinery.</p>\n\n<p>GOVE Finance Limited is operated in Tamil Nadu &amp; Karnataka.</p>\n\n<p>We Finance Cars, Commercial Vehicles, Construction Equipments, used Vehicles, Tractors and Buses</p>\n',0,'<p><strong>Old No.184,New No.239<br />\nIndia Garage Building,3 rd Floor<br />\nAnna Salai,Chennai-600 006<br />\nTel: 044-2888 4204-15</strong></p>\n','','','0','Gove_Logo1.png','https://www.google.co.in/maps/place/Gove+Finance+Limited/@13.058332,80.258872,15z/data=!4m5!3m4!1s0x0:0x3af060bbbc9fa829!8m2!3d13.058332!4d80.258872'),
(8,17,'Career','<h2>CAREERS</h2>\r\n\r\n<p>The VST Group offers rewarding career opportunities across a range of disciplines and verticals. The Group is an equal opportunity workplace where results are encouraged and merit is rewarded, making it an ideal choice for a long-term career path.</p>\r\n\r\n<p>We are constantly looking for energetic, motivated individuals who strive to make a difference at the work place and have the drive to succeed at the highest level. If you feel you have the qualifications or wish to explore opportunities within the group, please send in your resume to via the link below giving a brief description of the sector in which you wish to work in and our Human Resource team will get in touch with you.</p>\r\n',0,'0','','','0','career.jpg',''),
(9,18,'Vision','<p>Our vision is one of sustained Growth that delivers Excellence with Innovation, built on a foundation of Trust laid down over a hundred years</p>\n\n<p>Each element of this statement of our vision and values is tied to the way our business has evolved and continues to evolve.</p>\n\n<p>Growth is the natural aim of any conscientious business; not just a quest for profit. It is the surest means to ensure a just return to all stakeholders and to the larger social context that frames any business.</p>\n\n<p>The pursuit of Excellence and Innovation guides us through each step. Excellence in all we do, from the smallest, most routine task to the most complex, high-level operation. An innovative spirit that allows us to improve our existing processes while constantly searching for new avenues for growth and change.</p>\n\n<p>These values have guided a steady rise from a small dealership to a diverse group of businesses, which brings us to the last, though not least important component of our vision: our heritage of Trust.</p>\n\n<p>Trust implies that we stand by our commitments to our principals, our partners, our employees and most of all our customers. It is this adherence to building Trust that has inspired all that we have achieved over the course of our first hundred years and all that we will continue to aspire to over the many more ahead.</p>\n',0,'<p>Our vision is one of sustained Growth that delivers Excellence with Innovation, built on a foundation of Trust laid down over a hundred years</p>\n\n<p>Each element of this statement of our vision and values is tied to the way our business has evolved and continues to evolve.</p>\n\n<p>Growth is the natural aim of any conscientious business; not just a quest for profit. It is the surest means to ensure a just return to all stakeholders and to the larger social context that frames any business.</p>\n\n<p>The pursuit of Excellence and Innovation guides us through each step. Excellence in all we do, from the smallest, most routine task to the most complex, high-level operation. An innovative spirit that allows us to improve our existing processes while constantly searching for new avenues for growth and change.</p>\n\n<p>These values have guided a steady rise from a small dealership to a diverse group of businesses, which brings us to the last, though not least important component of our vision: our heritage of Trust.</p>\n\n<p>Trust implies that we stand by our commitments to our principals, our partners, our employees and most of all our customers. It is this adherence to building Trust that has inspired all that we have achieved over the course of our first hundred years and all that we will continue to aspire to over the many more ahead.</p>\n','','','0','vision.jpg',''),
(10,19,'Social Responsibilty','<p>A commitment to social welfare has always been intrinsic to the VST Group. Group founder V.S. Thiruvengadaswamy Mudaliar was a trailblazer in this aspect as in others, founding or endowing several institutions that continue to provide the weaker sections of society with support in their time of need and assistance in charting out a successful, empowered life path. The title Dharmaprakasha was bestowed on him by the Maharaja of Mysore in acknowledgement of his contribution to society.</p>\n\n<h2>SMT. KAMALA BAI EDUCATIONAL INSTITUTION, BANGALORE</h2>\n\n<p>This institution was the result of Mr. Mudaliar&#39;s desire to further the dual causes of education for girls in India and the creation of an educational environment that would be imbued with Indian cultural values. Named after his wife, the Institution was founded in 1931. Today, it boasts a large, well-appointed campus of around 8 acres and includes Primary &amp; High School, Pre-University College, and Degree College.</p>\n\n<p><img alt=\"Banner\" src=\"http://intersmart.co.in/vst/file/images/kamala.jpg\" style=\"height:auto; margin:0px auto\" /></p>\n\n<h2>UNAMMAL MATERNITY HOME</h2>\n\n<p>Maternal health and care for the newborn was another major concern. The founding of this hospital 1948, named after Mr. Mudaliar&#39;s mother, was a major step in providing the economically backward sections of Bangalore with access to good maternity care. The Maternity Home was opened by the then Maharajah of Mysore and is now run by Corporation of the city of Bangalore.<br />\nMr. Mudaliar&#39;s successors have continued this tradition of service with a number of initiatives.</p>\n\n<h2>THE VST MUDALIAR TRUST</h2>\n\n<p>The VST Mudaliar Trust offers a Scholarship For Technical &amp; Medical Students. It has benefitted more than 2350 deserving students since its inception in 1963.</p>\n\n<h2>ASSOCIATION FOR PEOPLE WITH DISABILITY</h2>\n\n<p>In 1960, Mr. V.T. Padmanaban donated 2 acres of land in Lingarajpuram, Bangalore to the Association for People with Disability to facilitate awareness programs, as well as identification and rehabilitation of persons with disabilities. Over the years, the Association has grown to the point where it is able to reach out to 10,000 deserving individuals across Karnataka every year. The family has preserved close ties to the Association, with a member of the family continuing to serve on the Association&#39;s Trust in each generation.</p>\n\n<h2>V.P. THIRUMURTHY FAMILY MEMORIAL TRUST</h2>\n\n<p>In 2007, the V.P. Thirumurthy Family Memorial Trust set up a scholarship to aid VST Group employees&#39; girl children with education expenses from Primary education through to 10th standard. 102 students have benefitted from this initiative in the current year.</p>\n\n<p>The VST Group looks forward to expanding on this tradition of service in the years ahead, seeing it as a logical extension of the organizational emphasis on trust.</p>\n',0,'<p>0</p>\n','','','0','kamala.jpg',''),
(11,20,'VST Sons','<p>Founded in 1911, VST &amp; Sons is the parent company of the entire VST Group. Initially involved in distributing petroleum products, chiefly kerosene in the Bangalore Cantonment area, the company eventually operated a chain of petrol pumps in and around Bangalore.</p>\n\n<p>Along the way, the company diversified into other businesses for periods of time; these included Lakshmi Mills, started in 1940s for the production of groundnut oil and groundnut cake. A change in excise rates saw this business being rolled back and Tyresoles, a tyre retreading business was subsequently housed at the same location. Other business ventures continued to grow and developed into the seven sectors that now form the VST Group.</p>\n',0,'<p><strong>1 Palace Cross Road<br />\nBangalore 560020<br />\nTel.: <a href=\"tel:08023468548\">+91.80.23468548<a></strong></p>\n','','','0','ducati.jpg','https://www.google.co.in/maps/place/1,+Palace+Cross+Rd,+Vasanth+Nagar,+Bengaluru,+Karnataka+560051/@12.987766,77.5868983,17z/data=!4m13!1m7!3m6!1s0x3bae166a40b4d4cb:0xe809167ecca9679b!2s1,+Palace+Cross+Rd,+Vasanth+Nagar,+Bengaluru,+Karnataka+560051!3b1!8m2!3d12.987766!4d77.589087!3m4!1s0x3bae166a40b4d4cb:0xe809167ecca9679b!8m2!3d12.987766!4d77.589087?hl=en				'),
(12,21,'IG Indane Division','<p>In 1962, India Garage was appointed as the sole Bangalore distributor for Burshane Gas, a brand created by the merger of Burmah and Shell, for whom VST &amp; Sons had earlier distributed kerosene. LPG cylinders were still a rather new concept at the time and the firm?s employees had to canvas the product to skeptical customers, worried that the cylinders were prone to explode. The business began with outlets in VV Puram and Malleswaram, later appointing a sub-dealer for the Majestic area.</p>\n\n<p>In 1974, India Garage cemented a distributorship for Indane Gas on the strength of its network and proven sales power after Burmah and Shell discontinued its petroleum business. Today, India Garage&#39;s LPG business has grown substantially in size and value.</p>\n',0,'<p><strong>83 2nd Main Road<br />\nPalace Guttahalli<br />\nBangalore 560003<br />\nTel.:<a href=\"tel:08023441711\">+91.80.23441711</a></strong></p>\n','','','0','indane21.jpg','https://www.google.co.in/maps/place/83,+2nd+Main+Rd,+DN+Ramaiah+Layout,+Guttahalli,+Bengaluru,+Karnataka+560020/@12.9983117,77.5762784,17z/data=!3m1!4b1!4m5!3m4!1s0x3bae163a26338359:0x8ffc0df26424706f!8m2!3d12.9983117!4d77.5784671?hl=en				'),
(13,22,'India Garage Bangalore','<h1>India Garage Bangalore</h1>\n\n<p>Founded in 1949, India Garage has outlets in Bangalore and Mysore. Over the years, India Garage has emerged as a market leader and one of the most respected dealerships in the region. India Garage has two showrooms in Bangalore as well as 3 well-located, state-of-the-art workshops in the city. The Mysore dealership also caters to customers in surrounding areas including Mandya, Madikeri and Chamarajnagar.</p>\n\n<p>The company prides itself on its sales and service network. Initially dealing in Austin and Studebaker cars, India Garage moved on to dealing in Mahindra &amp; Mahindra and Hindustan Motors automobiles.</p>\n',0,'<p>1 Palace Cross Road<br />\nBangalore 560020<br />\nTel.: <a href=\"tel:08041106006\">080-4110 6006</a></p>\n','','','0','india2.jpg','http://goo.gl/maps/qOuPf'),
(14,23,'VST Motors','<h1>VST Motors</h1>\n\n<p>Founded in 1949, VST Motors is one of India&#39;s leading Tata Motors Commercial and Passenger vehicle dealers. The business&#39; first showroom on Mount Road in Chennai was acquired by V.S. Thiruvengadasamy Mudaliar in 1942, anticipating a possible extension of the family&#39;s business interests into Tamil Nadu. The directors of the new company were Mr. Mudaliar&#39;s sons and this business would prove to become a mainstay of the Group as the automobile sector in India saw unprecedented growth nearly half a century after inception.</p>\n\n<p>VST Motors initially dealt with Austin and Studebaker automobiles; as the years progressed, the current tie-ups with industry leader&nbsp;Tata Motors. The company has extended its network to keep up with market growth, with main outlets for commercial vehicles at Chennai, Trichy, Cuddalore, Vellore and Salem. Each main location has a full fledged set up for sales and service with multiple workshops in many locations. Covering half the state of Tamil Nadu.</p>\n',0,'<p><strong>199 Annasalai<br />\nChennai600002<br />\nTel.: +91.44.28602485/86/87<br />\n<br />\n<br />\n<a href=\"http://www.vstmotorsgroup.com/\" target=\"_blank\">www.vstmotorsgroup.com</a></strong></p>\n','','','0','motors.jpg','https://www.google.co.in/maps/place/VST+Motors/@13.0626463,80.2618894,17z/data=!3m1!4b1!4m5!3m4!1s0x3a5266170d73c381:0xb1a2f46c2795a4b1!8m2!3d13.0626463!4d80.2640781'),
(15,24,'India Garage Chennai','<h1>India Garage Chennai</h1>\n\n<p>Established in 1956, India Garage, Chennai is the authorized dealer for Mahindra &amp; Mahindra vehicles. It is the largest distributor of the Mahindra range of passenger and utility vehicles in Chennai, with one&nbsp;showroom&nbsp;and 2&nbsp;workshop locations within the city.</p>\n\n<p>India Garage began by selling the Mahindra Jeep; later on it diversified into distributing the rest of Mahindra&#39;s range. This decision to focus on a single product line has paid of with India Garage emerging as a leading dealer for Mahindra, notching up sales in high volumes and winning a number of accolades.</p>\n',0,'<p><strong>Old No.184, New No.242<br />\nAnna Salai,Chennai-600 006<br />\nTel: 044-2852 5133 / 6081</strong></p>\n','','','0','ducati1.jpg','https://goo.gl/maps/U2jqsqLqMfw'),
(16,25,'Metro Ford','<h1>Metro Ford</h1>\n\n<p>Founded in 1996, Metro Ford operated dealerships for Ford India, bringing this automobile pioneer&#39;s products to customers in Hubli,Davangere, Bellary and Hospet.</p>\n\n<p>Metro Ford&#39;s network of&nbsp;four&nbsp;workshops.&nbsp;Metro Ford is one of the largest and oldest dealers in the nation and has won multiple awards for customer satisfaction and workshop productivity.</p>\n',0,'<p><strong>Survey No.24/2, Next to Indian Oil Corporation</strong></p>\n\n<p><strong>Rayapura,Dharwad-580 009<br />\nTel.: <a href=\"tel:9901971681\">+91.99019 71681</a></strong></p>\n\n<p>&nbsp;</p>\n','','','0','ford11.jpg','https://www.google.co.in/maps/place/Metro+Ford/@15.4079281,75.0627368,15z/data=!4m5!3m4!1s0x0:0x1e43f8356149c450!8m2!3d15.4079281!4d75.0627368'),
(17,26,'VST Titanium','<h1>VST Titanium</h1>\n\n<p>City Showroom: A 15,000 square foot showroom located on the city&rsquo;s historic Mount Road; built in 1916, in a Indo- Saracenic style structure, it is one one of Chennai&rsquo;s landmark heritage buildings. It also houses the VST Group&rsquo;s head office in Tamilnadu.</p>\n\n<p>South Chennai Showroom: A 15,000 square foot showroom located on OMR (Old Mahabalipuram Road), the heart of Chennai&rsquo;s IT corridor. It boasts a display area for the entire array of vehicles that Mercedes-Benz India offers.</p>\n\n<p>After sales facility: A 45,000 square foot facility located just off OMR (Old Mahabalipuram Road), with a potential to service and repair 6000 cars annually. Facilities include a fully equipped workshop with MB trained technicians and advisors, tools and diagnostic equipment including body repair and maintenance for the complete range of Mercedes-Benz vehicles, a 24/7 service helping and an onsite service repair van.</p>\n',0,'<p><strong>South Chennai Showroom</strong><br />\n148,K,Old Mahabalipuram Road,<br />\nOkkiyam,Thoraipakkam,Chennai-600 096<br />\nTel: <a href=\"tel:04466498181\">+91.44.6649 8181</a></p>\n','<p><strong>City Showroom</strong> <br /> 199,Anna Salai<br /> Chennai-600 002<br /> Tel: <a href=\"tel:04466498080\">044-6649 8080</a></p>','<p><strong>Workshop</strong><br/>Plot No.115,Industrial Estate(EEII),<br/>  Perungudi,Chennai-600096<br/>  Tel.:<a href=\"tel:04446108282\"> +91.44.46108282</a></p>','0','t1.jpg','https://www.google.co.in/maps/place/VST+Titanium+Motors/@12.948113,80.2379393,17z/data=!3m1!4b1!4m5!3m4!1s0x3a525d03a4292861:0x22d85d28dbf66c98!8m2!3d12.948113!4d80.240128'),
(18,27,'VST Ducati','<h1>VST Ducati</h1>\r\n\r\n<p>The showrooms are located in the upmarket areas in Bangalore and Chennai and display the complete range of motor-cycles from the Ducati family. Also on display are a wide range of riding gear, accessories and merchandise. A top notch sales team is on call to understand and analyse the needs of potential customers while helping pick the most suitable bike along with the necessary safety gear. We aim to give our customers a riding and ownership experience like no other.</p>\r\n\r\n<p>The service centres&nbsp;provide&nbsp;more than 10,000 square feet of floor space with 4&nbsp;service bays. The fully equipped facilities&nbsp;have&nbsp;all the required diagnostic equipment and special tools. With Ducati Technicians who have undergone extensive training as well as only using Ducati Genuine Parts, we ensure your Ducati keeps performing to its highest capabilities.</p>\r\n\r\n<p>Just a couple of the reasons these top class facilities maintain the durability, performance, efficiency and safety you would expect from our motorcycles.</p>\r\n\r\n<p>Buying a Ducati at VST is just the start of a delightful relationship. We at VST Ducati ensure that you receive excellent care and attention throughout your ownership experience.</p>\r\n',0,'<p><strong>Showroom (Bangalore)</strong><br />\r\nNo:22, Sankey Road,&nbsp;<br />\r\nMilitary Compound, Seshadripuram,&nbsp;<br />\r\n(Opp: BDA Head Office) Bangalore &ndash; 560020,<br />\r\nKarnataka, India<br />\r\nE : <a href=\"mailto:info@vstducati.in\">info@vstducati.in</a><br />\r\nM : <a href=\"tel:7259836655\">+91.72598 36655</a></p>\r\n\r\n<p>&nbsp;</p>\r\n','<p><strong>Workshop(Bangalore)</strong><br/>  Subash Nagar <br />  Sevashrama, <br />  Bangalore – 560053, <br />  Karnataka, India. <br />  Mob: <a href=\"tel:9972295911\">+91.99722 95911</a> <br /> </p>','','0','ducati12.jpg','https://g.co/kgs/3W2B1sK'),
(19,28,'VST Bajaj','<h1>VST Bajaj</h1>\n\n<p>Founded in 1996, VST Bajaj deals in the ever-popular range of Bajaj two-wheelers. The company operates two showrooms and two workshops in Bangalore.</p>\n\n<p>Like the Group&#39;s other ventures in this sector, VST Bajaj offers customers an experience that transmits the values of both Bajaj and the VST Brand, providing effective, informative sales personnel and efficient servicing options thereafter.</p>\n',0,'<p><strong>VST Bajaj<br />\n459 Dhanalakshmi Building<br />\nGood Shed Road, Cottonpet<br />\nBangalore 560053<br />\nTel.: <a href=\"tel:08049062900\">080-4906 2900</a></strong></p>\n','','','0','d9.jpg','https://www.google.co.in/maps/place/VST+Bajaj/@12.97499,77.546221,14z/data=!4m8!1m2!2m1!1sVST+Bajaj!3m4!1s0x3bae16016aaaaaab:0x65ec8826a82ee01c!8m2!3d12.9731739!4d77.5692728				'),
(20,29,'Chennai Ford','<h1>Chennai Ford</h1>\r\n\r\n<p>Founded in 1996 by Late V.P. Thirumurthy, Chennai Ford was one of the first dealers to be signed up by Ford Motors during their initial venture into India. In keeping with the VST Group&#39;s excellence in automobile service, Chennai Ford has distinguished itself as a leading Ford dealer.</p>\r\n\r\n<p>Chennai Ford currently operates a four&nbsp;workshops that provide customers with access to efficient, factory-trained support.</p>\r\n',0,'<p><strong>No.129,Poonamalle High Road<br />\r\nMaduravoyal,Chennai-600 095<br />\r\nTel: <a href=\"tel:04423636310\">044-2363 6310</a> / <a href=\"tel:9840024402\">98400 24402</a></strong></p>\r\n','','','0','d8.jpg','https://maps.app.goo.gl/quJjxkSmmRvRNmiW6			'),
(22,31,'Volkswagen Palace Cross','<h1>Volkswagen Palace Cross</h1>\n\n<p>The VST Group has long been associated with the leading automobile brands in India, from early ties with Austin and Studebaker to its ongoing association with Tata Motors, Mahindra &amp; Mahindra, Ford, and Fiat.</p>\n\n<p>In 2009, the Group brought the best of German engineering to Bangalore&#39;s automobile market with the opening of Volkswagen Palace Cross. This is a prestigious, plush sales location on Bangalore&#39;s Palace Cross Road that mirrors the excellence and up-to-the-minute technology of the outstanding automobiles it deals in.</p>\n',0,'<p><strong>1 Palace Cross Road<br />\nBangalore 560020<br />\nTel.: <a href=\"tel:08023561166\">080-2356 1166</a></strong></p>\n','','','0','v11.jpg','http://goo.gl/maps/CW8ft'),
(23,16,'VST Grandeur','<h1>VST Grandeur</h1>\n\n<p>Situated in Chennai, VST Grandeur is a premium dealership launched in 2011, representing Jaguar and Land Rover across Tamil Nadu. It operates an 8,000 square feet showroom that showcases luxury sedans from Jaguar and premium SUVs from Land Rover. These automobiles combine unmatched levels of comfort with the latest technology for unsurpassed levels of performance.</p>\n\n<p>Our Chennai-Poonamalle&nbsp;facility operates from a 30,000 sq. feet 3S facility that encompasses sales, service and spare parts in one location. The showroom has a 6&nbsp;car display with an adjoining 10&nbsp;bay workshop.</p>\n\n<p>Our Coimbatore facility operates from a 30,000 sq. feet 3S facility that encompasses sales, service and spare parts in one location. The showroom has a 9 car display with an adjoining 12 bay workshop.</p>\n',0,'<p><strong>Old No.182, New No.237,VST Emerald, Annasalai, Chennai-600006</strong></p>\n\n<p>Tel: <a href=\"tel:04442181888\">044-4218 1888</a></p>\n','<p>145-1C- 1,L&amp;T Bye-Pass Road<br /> Oddaar Palayam,<br /> Ondipudur,Coimbatore-641 016<br /> Tel: <a href=\"tel:04224524444\">0422- 452 4444</a></strong></p>','<p><strong>\r\n267/2, Bye-pass Road,<br> Poonamalle,Chennai-600 056</strong></p>\r\nTel: <a href=\"tel:04466361363\">044-6636 1363 / 73</a>','0','grand11.jpg','https://www.google.com/maps/search/Old+No.182,+New,+No.237,,+VST+Emerald+Tower,+Jaguar+Land+Rover++Anna+Salai,+Chennai,+Tamil+Nadu+600006+IN/@13.0585334,80.2569493,17z/data=!3m1!4b1'),
(24,32,' VST Auto Parts','<h1>VST Auto Parts</h1>\n\n<p>Founded in 2005, VST Auto Parts enables Tata dealers to go the extra mile in providing effective, timely after-sales service with quick access to original spare parts.</p>\n\n<p>VST Auto Parts supply Tata Motors parts across Tamil Nadu, with the central warehouse spanning 15,000 square feet in Poonamallee, Chennai. This the central supply centre for a network of 2&nbsp;warehouses located in Vellore and&nbsp;Cuddalore. The network supplies over 3300 line items to more than 1400 retailers in the state. VST Auto Parts has registered a steady annual growth rate of 20% since its inception.</p>\n',0,'<p><strong>199, Anna Salai<br />\nChennai - 600002<br />\nTel.: +91-44-28602485/86/87</strong></p>\n','','','0','parts1.jpg','https://www.google.co.in/maps/place/VST+Motors/@13.0626463,80.2618894,17z/data=!3m1!4b1!4m5!3m4!1s0x3a5266170d73c381:0xb1a2f46c2795a4b1!8m2!3d13.0626463!4d80.2640781'),
(25,33,'Gove Investments & Finance','<p>Gove Investment and Finance was founded in 1983. It is a non-banking finance company involved in the hire purchase and leasing of vehicles in Tamil Nadu and Karnataka.</p>\n\n<p>It was created with the aim of providing support to the VST Group&#39;s clientele in the commercial vehicle sector, particularly the trucking community.</p>\n',0,'<p>Old No.184,New No.239<br />\r\nIndia Garage Building,3 rd Floor<br />\r\nAnna Salai,Chennai-600 006<br />\r\nTel: 044-2888 4204-15</p>\r\n','','','0','camera-loader.gif','https://www.google.co.in/maps?q=GOVE+Investment+%26+Finanace+Co+Ltd&hl=en&ll=13.066227,80.264311&spn=0.009239,0.02105&georestrict=input_srcid:74dbf11efdbc4b89&view=map&cid=6076589922327658597&hq=GOVE+Investment+%26+Finanace+Co+Ltd&t=m&z=16&vpsrc=0&iwloc=A'),
(26,34,'VST Tillers Tractors','<p>VST Tillers Tractors was incorporated in the year 1967 with Mitsubishi Heavy Industries Ltd. and Mitsubishi Corporation of Japan as Joint Venture Partners for the manufacture of Power Tillers. The factory was established on a 20 acre plot on the Whitefield Road. Power Tillers are used by small and medium farmers primarily for paddy cultivation. This machine has increased productivity and encouraged multiple cropping system for rice. The demand for this machine is growing at over 20% p.a. owing to Government sponsored schemes to encourage farmers to increase mechanization. The Company is a pioneer in the field. In the year 1985, the company entered into a technical collaboration with M/s. Mitsubishi Agricultural Machinery Co. for the manufacture of small 4 wheel drive tractors. Both products (tractors and tillers) are marketed in India through over 225 dealerships under the brand VST Shakti. The company has established a niche market for its compact four wheel tractor. It is used in inter-cultivation and spraying in vineyards, as well as in sugarcane and cotton fields. The company also trades in other farm machinery, namely Rice Transplanters and Reapers imported from China. It has regional offices in nine locations in India to facilitate the requirements of dealers. In 2010, VST Tillers Tractors acquired a 15 acre plot in Hosur for manufacturing small tractors. When this unit goes on stream during 2012, it will have an installed capacity of 15,000 tractors on a single shift. This unit will significantly enhance output in the years to come.</p>\n\n<p>VST Tillers Tractors is one of the Groups significant performers and a continuously dividend paying company.</p>\n',0,'<p><strong>P.B No.4801<br />\nWhitefield Mainroad<br />\nGarudchar Palya<br />\nBangalore 560048<br />\nTel.: <a href=\"tel:08028510805\">+91.80.2851 0805</a>,<br />\n<a href=\"tel:08028510806\">2851 0806</a></strong></p>\n','','','0','m1.jpg','https://www.google.co.in/maps/place/V.S.T+Tillers+Tractors+Ltd/@12.994762,77.6977713,17z/data=!3m1!4b1!4m5!3m4!1s0x3bae11a00d70e90d:0x5a90ab36eeaad4fc!8m2!3d12.994762!4d77.69996\n'),
(27,35,'VST Auto Ancillaries','<p>VST Auto Ancillaries was founded in 1986. It consists of a machining unit located in Whitefield, Karnataka. It supplies critical machined castings for tractors and power tillers.</p>\n\n<p>To keep up with demand, the unit has been expanded over the years and CNC computerized machines have been installed alongside conventional machines to boost capacity.</p>\n',0,'<p><strong>Plot No 2E4,<br />\nDyavasandra 1st phase<br />\nK R Puram Industrial Area,<br />\nBangalore 560048<br />\nTel.: +91.80.28511218,<br />\n28517718</strong></p>\n','','','0','v1.png','https://www.google.co.in/maps/place/VST+Auto+Ancillaries+Ltd/@12.998223,77.701213,16z/data=!4m2!3m1!1s0x0:0x1b57ab0616e0e889?hl=en'),
(28,36,'MHI-VST Diesel Engines','<p>Incorporated in 2007, MHI-VST Diesel Engines is located in Mysore, on a 6 acre plot. It is a Mitsubishi Heavy Industries venture, in which VST Tillers Tractors Ltd is a minor shareholder. The unit produces a range of multi-cylinder diesel engines from 17hp to 45hp and caters to the domestic and export generator set market. The installed capacity is 30,000 pieces per annum and the engines produced by the unit may be used in a range of applications.</p>\n',0,'<p><strong>Plot No. 305,<br />\nHebbal Industrial Area<br />\nMetagalli,<br />\nMysore- 570016<br />\nTel.: +91.821.4006666<br />\nFax: +91.821.4006677</strong></p>\n','','','0','camera-loader1.gif','https://www.google.co.in/maps?q=MHI+VST+Diesel+Engines+(P)+Ltd&hl=en&ll=12.365511,76.604962&spn=0.009264,0.02105&georestrict=input_srcid:0525cf72e6ea3145&view=map&cid=7405566212943735486&hq=MHI+VST+Diesel+Engines+(P)+Ltd&t=m&z=16&vpsrc=0&iwloc=A'),
(29,37,'Precision Components Division','<p>The Precision Component Division of VST Tillers Tractors is located on a 5 acre plot in Mysore. This unit manufactures critical engine components like Crank Shafts and Connecting rods both for captive consumption and for exports to UK, Germany and Korea.</p>\n\n<p>It is certified by TUV Germany under TS16949 for quality management system. It has a battery of sophisticated CNC machines to manufacture components.</p>\n',0,'<p><strong>Survey No.20.<br />\nPlot No 42/43<br />\nMetagalli Industrial Area<br />\nMysore-570016<br />\nTel.: +91.821.2582157, 2582044</strong></p>\n','','','0','camera-loader2.gif','https://www.google.co.in/maps/place/V+S+T+Tillers+Tractors+Ltd/@12.35935,76.6254283,17z/data=!3m1!4b1!4m5!3m4!1s0x3baf7a12f013772d:0xf7d8aaeeaf3ead14!8m2!3d12.35935!4d76.627617\n'),
(30,41,'Crest Constructions','<p>Although Crest Constructions was founded as a separate entity in 1982, the VST Group has a long history in the construction sector. In the 1930s and 1940s, the Group took up a number of prestigious contracts with the British Army including the runway for a Military Base near Coimbatore.</p>\n\n<p>From the 1980s onwards, Crest Constructions has undertaken a variety of industrial projects across south India. The company pioneered the use of the vacuum de-watered concrete flooring system in India.</p>\n',0,'<p><strong>199 Annasalai<br />\r\nChennai 600002<br />\r\nTel.: +91.44.28602485/86/87</strong></p>\r\n','','','0','images.jpg','https://www.google.co.in/maps/place/VST+Motors/@13.0626463,80.2618894,17z/data=!3m1!4b1!4m5!3m4!1s0x3a5266170d73c381:0xb1a2f46c2795a4b1!8m2!3d13.0626463!4d80.2640781\n'),
(31,42,'Petroleum Retail','<p><strong>VST &amp; Sons</strong></p>\r\n\r\n<ul>\r\n	<li><a href=\"http://www.vstgroup.com/index.php/home/vstsons\">Fuel Retail Outlets</a></li>\r\n</ul>\r\n\r\n<p><strong>IG Indane Division</strong></p>\r\n\r\n<ul>\r\n	<li><a href=\"http://www.vstgroup.com/index.php/home/igindian\">LPG Retail &amp; Distribution</a></li>\r\n</ul>\r\n',0,'','','','0','petrolium.jpg',''),
(32,30,'Automotive Franchise:City Honda','<p>Founded in 2001, City Honda deals in Honda two-wheelers. Honda is the leading two-wheeler manufacturer worldwide and this dealership addresses a large and demanding bike-riding public. City Honda currently operates two attractive, well-located showrooms and four workshops across Bangalore and one workshop in Chikmagalur. The showrooms offer a modern, environment staffed with an efficient and knowledgeable sales force. City Honda is driven by the 4S policy, with each outlet offering a comprehensive range of services including Sales, Service, Spares and Safety riding.</p>\n',0,'<p><strong>6,St. John&rsquo;s Road,<br />\nUlsoor ,John&#39;s Road, </strong></p>\n\n<p><strong>Bangalore- 560 042<br />\nPh: <a href=\"tel:08025139199\">080- 2513 9199</a></strong></p>\n','','','0','','https://www.google.com/maps/place/City+Honda/@12.986268,77.615854,17z/data=!4m5!3m4!1s0x0:0xe180f725b7e36d72!8m2!3d12.9862684!4d77.6158544?hl=en'),
(33,43,'VST Central (KIA)','<h2>VST Central (KIA)</h2>\n\n<h3>Tamilnadu</h3>\n\n<p><strong>Chennai:</strong>&nbsp;With a showroom located in the centre of Chennai city, VST Central was launched in 2019 to represent KIA Motors. It has a beautifully designed 10,000 square feet showroom on Mount Road with a massive glass fa&ccedil;ade to display ten cars on two levels. A highly trained, customer centric sales team is on call to handle our discerning customers and give them the ultimate buying experience.</p>\n\n<p>The aftersales facility is centrally located in Saligramam. The state of the art facility on 45,000 square feet has 50 work bays of which 15 are currently operational. Facilities include a fully equipped workshop with KIA trained technicians and advisors,&nbsp;special tools and diagnostic equipment including collision repairs and preventive maintenance for the full range of KIA vehicles to give our customers a premium service experience.</p>\n\n<p><strong>Salem:</strong>&nbsp;A 50,000 square feet facility located in the heart of Salem to give the local populace delightful sales and aftersales experience under one roof. It has a&nbsp;beautifully appointed showroom with a five car display. The 16 bay workshop is equipped with the latest equipment and a highly trained team of technicians.</p>\n\n<p><strong>Vellore:</strong> A dedicated 4 bay workshop fully equipped to cater to the aftersales needs of our customers in Vellore and the neighbouring districts.</p>\n\n<h3>Karnataka</h3>\n\n<p><strong>Bangalore:</strong> The state of the art 3S facility is located at Yeshwanthpur with an additional showroom in the city&rsquo;s prestigious location on Palace Cross. Our staff are fully trained and certified by KIA with the highest dedication to our goal of customer satisfaction.</p>\n\n<p>The service facility includes a fully equipped workshop with KIA trained technicians and advisors, Special tools and diagnostic equipment including collision repairs and preventive maintenance for the full range of KIA vehicles to give our customers a premium service experience.</p>\n',0,'<p><strong>Chennai Showroom</strong><br />\n# 237, Anna Salai,<br />\nChennai &ndash; 600006<br />\nMob : <a href=\"tel:9087211113\">90872 11113</a></p>\n','','','0','TN11.jpg','https://www.google.com/maps/place/KIA+Showroom+Chennai+-+VST+Central/@13.058638,80.2569274,17z/data=!3m1!4b1!4m5!3m4!1s0x3a5267b9e01bc651:0xb1106c2bec1384e2!8m2!3d13.058638!4d80.2591161'),
(34,44,'VST Supercars(Porsche)','<h1>VST Supercars Pvt Ltd</h1>\r\n\r\n<p>Porsche Centre Bengaluru is located in the heart of Bangalore&rsquo;s Central Business District (CBD) on Victoria Road. The VST Group brings a modern, fully integrated 3S (sales-service-spares) facility to our city&rsquo;s Porsche customers.</p>\r\n\r\n<p>The team we have assembled are fully trained and qualified through Porsche&rsquo;s rigorous certification process and are ready to serve each of you as you join the Porsche family.</p>\r\n\r\n<p>At this 25,000 sq.ft.&nbsp;facility, we have the entire range of sports cars and&nbsp;SUVs&nbsp;that Porsche currently offers worldwide. Our workshop is fully equipped with&nbsp;diagnostic tools and a body&nbsp;repair facility. We have 10 dedicated service bays to cater to our elite clientele.</p>\r\n\r\n<p>The sales team has been hand-picked for their excellent knowledge&nbsp;of&nbsp;the products and their ability to ensure your needs are understood and met. They are trained to make the process of ordering, customising and delivering your Porsche sports car and SUV in the most efficient manner possible.</p>\r\n\r\n<p>Within the next 12 months, VST Supercars (i.e. Porsche Centre Bengaluru) will move into a new 5 car display showroom measuring 8000 sq.ft. in Bangalore&rsquo;s CBD,&nbsp;with an additional 3 vehicle display and 30,000 sq.ft.&nbsp;workshop in Whitefield. This will enable us to cater to Bangalore&rsquo;s urban elite and be closer to&nbsp;our customers around the city.</p>\r\n\r\n<p>The team at VST realises the importance of not just the initial sales relationship,&nbsp;but strives to&nbsp;assure it&rsquo;s customers that&nbsp;as long as you own a Porsche, VST&rsquo;s excellent team will handle all&nbsp;your&nbsp;service queries. The VST Group is in its 111th&nbsp;year serving the customers of Karnataka and Tamilnadu through its various business entities.&nbsp;</p>\r\n\r\n<p>And we are proud to welcome the Porsche brand to our exclusive portfolio.&nbsp;</p>\r\n',0,'<p>Porsche Centre Bengaluru<br />\r\nVST Supercars Private Limited</p>\r\n\r\n<p>#22, Sankey Road, BDA Head Office<br />\r\nMilitary Compound, Seshadripuram<br />\r\nBengaluru - 560020.&nbsp;</p>\r\n\r\n<p>M: <a href=\"tel:6364102911\">63641 02911</a><br />\r\nE: <a href=\"mailto:info@porsche-bengaluru.in\">info@porsche-bengaluru.in</a><br />\r\nW:<a href=\"https://dealer.porsche.com/in/bengaluru/en-GB\" target=\"_blank\">dealer.porsche.com </a>&nbsp;</p>\r\n','','','0','Por.jpg','https://g.co/kgs/BLU5XDi');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects` (
  `projects_id` int(11) NOT NULL AUTO_INCREMENT,
  `projects_txt` varchar(500) NOT NULL,
  `projects_small` varchar(1000) NOT NULL,
  `projects_large` varchar(2000) NOT NULL,
  `projects_img` varchar(1000) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`projects_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES
(4,'ELECTRIC TRANFORMER ASEMBLINGashik','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n','projects_04.jpg',0),
(7,'ELECTRIC TRANFORMER ASEMBLING','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.','projects_041.jpg',0),
(8,'0','0','0','auto.jpg',12);
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `services` (
  `services_id` int(11) NOT NULL AUTO_INCREMENT,
  `services_txt` varchar(500) NOT NULL,
  `services_disc` varchar(2000) NOT NULL,
  `service_img` varchar(500) NOT NULL,
  `link` varchar(500) NOT NULL,
  PRIMARY KEY (`services_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES
(11,'Automotive Franchise','<p>Automotive Franchise</p>\r\n','11.jpg','automotive'),
(12,'Finance','<p>Automotive Franchise</p>\r\n','21.jpg','finance'),
(13,'Manufacturing','<p>Automotive Franchise</p>\r\n','31.jpg','manufacture'),
(14,'OE Parts Distribution','<p>OE Parts Distribution</p>\r\n','41.jpg','oeparts');
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social`
--

DROP TABLE IF EXISTS `social`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social` (
  `social_id` int(11) NOT NULL AUTO_INCREMENT,
  `facebook` varchar(500) NOT NULL,
  `google` varchar(500) NOT NULL,
  `twitter` varchar(500) NOT NULL,
  `youtube` varchar(500) NOT NULL,
  PRIMARY KEY (`social_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social`
--

LOCK TABLES `social` WRITE;
/*!40000 ALTER TABLE `social` DISABLE KEYS */;
INSERT INTO `social` VALUES
(1,'https://www.facebook.com/intersmart','https://plus.google.com/105397451334907294068/posts','https://twitter.com/intersmarts','https://www.youtube.com/user/intersmartsolutions');
/*!40000 ALTER TABLE `social` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spark_fashion`
--

DROP TABLE IF EXISTS `spark_fashion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spark_fashion` (
  `sparkle_id` int(11) NOT NULL AUTO_INCREMENT,
  `sparkle_img` varchar(500) NOT NULL,
  `sparkle_content` varchar(500) NOT NULL,
  PRIMARY KEY (`sparkle_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spark_fashion`
--

LOCK TABLES `spark_fashion` WRITE;
/*!40000 ALTER TABLE `spark_fashion` DISABLE KEYS */;
INSERT INTO `spark_fashion` VALUES
(1,'govelogo.jpg','<p>Gove Investment and Finance was founded in 1983. It is a non-banking finance company involved in the hire purchase and leasing of vehicles in Tamil Nadu and Karnataka.&nbsp;<br />\r\nIt was created with the aim of providing support to the VST Group&#39;s clientele in the commercial vehicle sector, particularly the trucking community.</p>\r\n');
/*!40000 ALTER TABLE `spark_fashion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `speciality`
--

DROP TABLE IF EXISTS `speciality`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `speciality` (
  `speciality_id` int(11) NOT NULL AUTO_INCREMENT,
  `spcl_1` varchar(100) NOT NULL,
  `spcl_2` varchar(100) NOT NULL,
  `spcl_3` varchar(100) NOT NULL,
  `spcl_4` varchar(100) NOT NULL,
  `spcl_5` varchar(100) NOT NULL,
  `spcl_6` varchar(500) NOT NULL,
  `spcl_7` varchar(500) NOT NULL,
  `spcl_8` varchar(500) NOT NULL,
  `spcl_9` varchar(500) NOT NULL,
  PRIMARY KEY (`speciality_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `speciality`
--

LOCK TABLES `speciality` WRITE;
/*!40000 ALTER TABLE `speciality` DISABLE KEYS */;
INSERT INTO `speciality` VALUES
(1,'Product Quality','100% Customer Satisfaction','Big Collection','Best Selection','Custom Made*','1000 Plus Clients','4 Branches','5000 dress collection','Sunday Open');
/*!40000 ALTER TABLE `speciality` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `speciality_icon`
--

DROP TABLE IF EXISTS `speciality_icon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `speciality_icon` (
  `speciality_icon_id` int(11) NOT NULL AUTO_INCREMENT,
  `spcl_1` varchar(500) NOT NULL,
  `spcl_2` varchar(500) NOT NULL,
  `spcl_3` varchar(500) NOT NULL,
  `spcl_4` varchar(500) NOT NULL,
  `spcl_5` varchar(500) NOT NULL,
  `spcl_6` varchar(500) NOT NULL,
  `spcl_7` varchar(500) NOT NULL,
  `spcl_8` varchar(500) NOT NULL,
  `spcl_9` varchar(500) NOT NULL,
  PRIMARY KEY (`speciality_icon_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `speciality_icon`
--

LOCK TABLES `speciality_icon` WRITE;
/*!40000 ALTER TABLE `speciality_icon` DISABLE KEYS */;
INSERT INTO `speciality_icon` VALUES
(1,'thumbs281.png','smiling361.png','four29.png','indent.png','stack18.png','smiling36_(1).png','sitemap1.png','stack1.png','square113.png');
/*!40000 ALTER TABLE `speciality_icon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store`
--

DROP TABLE IF EXISTS `store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store` (
  `store_id` int(11) NOT NULL AUTO_INCREMENT,
  `city` varchar(500) NOT NULL,
  `address` varchar(500) NOT NULL,
  `mobile` varchar(500) NOT NULL,
  `land` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `map` longtext NOT NULL,
  `store_img` varchar(500) NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store`
--

LOCK TABLES `store` WRITE;
/*!40000 ALTER TABLE `store` DISABLE KEYS */;
INSERT INTO `store` VALUES
(1,'Chennai Ford','<p>No.129,Poonamalle High Road<br />\r\nMaduravoyal,Chennai-600 095<br />\r\nTel:044-2363 6310</p>\r\n','+91.44.23791100','044-2363 6300-05/2363 6310-12','+91.44.2475 7555','<p>0</p>\r\n','images3.jpg',1),
(2,'City Honda','<p>6&nbsp;St. John&#39;s Road, Ulsoor, John&#39;s Road,</p>\n\n<p>Bangalore - 560042<br />\nTel.: 080-2513&nbsp;9199</p>\n','','080-2532 0623','+91.80.25588677','<p>https://www.google.co.in/maps/place/City+Honda/@12.97385,77.599762,17.5z/data=!4m8!1m2!2m1!1scity+honda!3m4!1s0x3bae1678dfce221b:0xa15530373cd34181!8m2!3d12.9737006!4d77.6018192</p>\n','images.jpg',2),
(3,'India Garage Bangalore','<p>1 Palace Cross Road, Bangalore - 560020<br />\nTel.: 080-4110 6006</p>\n','+91.80.23565570','080-4110 6006','+91.80-23561609','<p>0</p>\r\n','images12.jpg',3),
(5,'Metro Ford','<p>Survey No.24/2, Next to Indian Oil Corporation<br />\nRayapura,Dharwad-580 009<br />\nMobile.: +91.99019 71681</p>\n','+91.80.23348631','080-2334 8631-34','+91.80.23342774','<p>0</p>\n','images18.jpg',5),
(6,'Volkswagen Palace Cross','<p>1 Palace Cross Road, Bangalore - 560020<br />\nTel.:080-2356 1166</p>\n','','080-2356 1166','+91.80.40977070','<p>0</p>\r\n','images16.jpg',6),
(8,'VST Ducati - Showroom (Bangalore)','<p>No:22, Sankey Road,&nbsp;<br />\r\nMilitary Compound, Seshadripuram,&nbsp;<br />\r\n(Opp: BDA Head Office) Bangalore &ndash; 560020<br />\r\nMobile:+91.72598 36655</p>\r\n','','080-40993131','','','',18),
(9,'VST Ducati - Workshop (Bangalore)','<p>Subash Nagar,Sevashrama,<br />\r\nBangalore-560053<br />\r\nMob:99722 95911</p>\r\n','','080-68888030','','','',20),
(10,'VST Grandeur - Chennai(Poonamallee)','<p>267/2, Bye-pass Road,<br />\nPoonamalle,Chennai-600 056<br />\nTel: 044-6636 1363 / 73</p>\n','','044-2825 6666','','','',22),
(11,'VST Grandeur - Coimbatore','<p>145-1C,L&T Bye-Pass Road,Oddaar Palayam<br/>Ondipudur,Coimbatore,641016<br/>Tel:0422-452 4444</p>','','0422-452 4444','','','',23),
(12,'VST Motors','<p>199 Annasalai, Chennai - 600002<br />\r\nTel.: 044-28602485</p>\r\n','','044-28602485/86/87','+91.88.60681733','<p>0</p>\r\n','images2.jpg',24),
(13,'VST Titanium-South Chennai Showroom','<p>148 K, Old Mahabalipuram Road,Okkiyam,Thoraipakkam<br/>Chennai,600096<br/>Tel:044-6649 8181</p>','','044-6649 8181','','','',25),
(14,'VST Titanium-City Showroom','<p>199, Anna Salai,Chennai,600002<br/>Tel:044-6649 8080</p>','','044-6649 8080','','','',26),
(15,'VST Titanium - Workshop','<p>Plot No.115,Industrial Estate(EEII),Perungudi<br/>Chennai,600096<br/>Tel:044-4610 8282</p>','','044-4610 8282','','','',27),
(16,'Gove Finance Limited','<p>Old No.184,New No.239<br />\r\nIndia Garage Building,3 rd Floor<br />\r\nAnna Salai,Chennai-600 006<br />\r\nTel: 044-2888 4204-15</p>\r\n','','199 Anna Salai, Chennai - 600002','','<p>0</p>\r\n','images15.jpg',28),
(17,'VST Tillers Tractors','<p>P.B No.4801,<br />\nWhitefield Mainroad, Garudchar Palya, Bangalore - 560048<br />\nTel.: 080-2851 0805 / 06</p>\n','+91.80.28510805','080-2851 0805 / 06','+91.80.28510221','<p>0</p>\r\n','images14.jpg',29),
(18,'VST Auto Parts','<p>199 Annasalai, Chennai - 600002<br />\r\nTel.: 044.28602485</p>\r\n','','+91.44.28602485/86/87','+91.78.38577745','<p>0</p>\r\n','images7.jpg',30),
(19,'VST & Sons','<p>1 Palace Cross Road, Bangalore - 560020<br />\nTel.: 080-23468548</p>\n','','080-23468548','','<p>0</p>\r\n','images17.jpg',31),
(20,'IG Indane Division','<p>83 2nd Main Road, Palace Guttahalli,<br />\nBangalore - 560003<br />\nTel.: 080-23441711</p>\n','','+91.80.23441711','','<p>0</p>\n','images6.jpg',32),
(21,'Crest Construction','<p>199 Annasalai, Chennai - 600002<br />\nTel.: 044-28602485/86/87</p>\n','','+91.44.28602485/86/87','+91.78.38577745','<p>0</p>\r\n','images9.jpg',33),
(22,'Precision Components Division','<p>Survey No.20, Plot No 42/43<br />\nMetagalli Industrial Area, Mysore - 570016<br />\nTel.: 0821-2582157 / 2582044</p>\n','+91.821.2582157','0821-2582157 / 2582044','+91.821.2581681','<p>0</p>\r\n','images10.jpg',34),
(23,'VST Ducati - Showroom (Chennai)','<p>148K, RajivGandhi Salai,<br />\r\nOkkiyam,Thoraipakkam,<br />\r\nChennai &ndash; 600096.<br />\r\nMobile: +91.99405 06040</p>\r\n','','','','<p>0</p>\r\n','Chrysanthemum.jpg',19),
(24,'VST Ducati - Workshop (Chennai)','<p>148K, RajivGandhi Salai,<br />\r\nOkkiyam,Thoraipakkam,<br />\r\nChennai &ndash; 600096.<br />\r\nMobile: +91.97910 30333</p>\r\n','','','','','Chrysanthemum1.jpg',21),
(25,'VST Grandeur - Chennai','<p>Old No.182, New No.237,<br />\nVST Emerald,<br />\nAnnasalai, Chennai-600006<br />\nTel: 044-4218&nbsp;1888</p>\n','','','','','Chrysanthemum1.jpg',21),
(26,'VST Central (KIA) - Chennai-Showroom','<p># 237, Anna Salai,<br />\nChennai &ndash; 600006<br />\nMobile : 90872 11113</p>\n','90872 11113','','','','TN11.jpg',7),
(27,'VST Central (KIA) - Salem','<p>Meyyanur Road, Alagapuram Post,<br />\nSalem -636004<br />\nMobile : 81248 11113</p>\n\n<p>&nbsp;</p>\n','','','','','TN111.jpg',9),
(28,'VST Central (KIA) - Bangalore Palace Cross','<p>VST Vistas, No.1 Palace Cross Road,<br />\nBangalore -560020<br />\nMobile : 96069 88123</p>\n\n<p>&nbsp;</p>\n','','','','','TN112.jpg',11),
(29,'VST Central (KIA) - Bangalore Yeshwantpur','<p>No.48, Industrial Suburb, Tumkur road&nbsp;<br />\n(Opp. Yeshwantpur Railway Station)&nbsp;<br />\nYeshwantpur,<br />\nBangalore &ndash; 560022.<br />\nMobile : 96069 88124</p>\n','','','','','TN113.jpg',12),
(30,'VST Central (KIA) - Vellore','<p>#43, Katpadi Road,Gandhi Nagar,<br />\nVellore-632006<br />\nMobile: 93840 96077</p>\n','','','','','TN114.jpg',10),
(31,'VST Central (KIA) - Chennai Workshop','<p>#57,Arcot Road,Saligramam<br />\nChennai &ndash; 600093<br />\nMobile:93848 77723</p>\n\n<p>&nbsp;</p>\n','','','','','TN115.jpg',8),
(32,'VST Supercars (Porsche)','<p>#22, Sankey Road,&nbsp;<br />\r\nMilitary Compound, Seshadripuram,<br />\r\n(Opp:BDA Head Office) Bengaluru-560 0020.&nbsp;<br />\r\nMob : 63641 &nbsp;02911</p>\r\n','','','','','porsche.jpg',24);
/*!40000 ALTER TABLE `store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonial`
--

DROP TABLE IF EXISTS `testimonial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testimonial` (
  `testimonial_id` int(11) NOT NULL AUTO_INCREMENT,
  `testimonial_head` varchar(500) NOT NULL,
  `testimonial_disc` varchar(3000) NOT NULL,
  `testimonial_img` varchar(500) NOT NULL,
  PRIMARY KEY (`testimonial_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonial`
--

LOCK TABLES `testimonial` WRITE;
/*!40000 ALTER TABLE `testimonial` DISABLE KEYS */;
INSERT INTO `testimonial` VALUES
(1,'ashik','<p>asdasdasdsaasdadsada</p>\r\n','18.jpg'),
(2,'Jhone Doe','<p>No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful.</p>\r\n','2.jpg'),
(3,'Jeenu','<p>No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful.</p>\r\n','3.jpg');
/*!40000 ALTER TABLE `testimonial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'vstgroup_vst'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-06-29 16:58:48
