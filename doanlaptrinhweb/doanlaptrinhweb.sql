-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: doanlaptrinhweb
-- ------------------------------------------------------
-- Server version	8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `donhang`
--

DROP TABLE IF EXISTS `donhang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `donhang` (
  `madonhang` int NOT NULL AUTO_INCREMENT,
  `ngaymua` date DEFAULT NULL,
  `sanpham` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `tongtien` float DEFAULT NULL,
  `trangthaidonhang` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `tentaikhoan` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`madonhang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donhang`
--

LOCK TABLES `donhang` WRITE;
/*!40000 ALTER TABLE `donhang` DISABLE KEYS */;
/*!40000 ALTER TABLE `donhang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nhacungcap`
--

DROP TABLE IF EXISTS `nhacungcap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nhacungcap` (
  `manhacungcap` int NOT NULL AUTO_INCREMENT,
  `tennhacungcap` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `diachi` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `sodienthoai` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `logo` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`manhacungcap`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhacungcap`
--

LOCK TABLES `nhacungcap` WRITE;
/*!40000 ALTER TABLE `nhacungcap` DISABLE KEYS */;
INSERT INTO `nhacungcap` VALUES (1,'ASSUS','abc','123','images/logo.jpg');
/*!40000 ALTER TABLE `nhacungcap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sanpham`
--

DROP TABLE IF EXISTS `sanpham`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sanpham` (
  `masanpham` varchar(20) COLLATE utf8_bin NOT NULL,
  `ten` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `mota` varchar(2000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `giaban` float DEFAULT NULL,
  `soluong` int DEFAULT NULL,
  `nhacungcap` int DEFAULT NULL,
  `hinhanh` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `soluongnhap` int DEFAULT NULL,
  `soluongban` int DEFAULT NULL,
  PRIMARY KEY (`masanpham`),
  KEY `nhacungcap` (`nhacungcap`),
  CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`nhacungcap`) REFERENCES `nhacungcap` (`manhacungcap`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sanpham`
--

LOCK TABLES `sanpham` WRITE;
/*!40000 ALTER TABLE `sanpham` DISABLE KEYS */;
INSERT INTO `sanpham` VALUES ('LTAcer06','ASSUS','this is third test',10000,10,1,'images/s2.png',20,10),('LTApple01','ASSUS','this is third test',10000,10,1,'images/s2.png',20,10),('LTApple02','ASSUS','this is fourth test',10000,10,1,'images/s2.png',20,10),('LTApple03','ASSUS','this is third test',10000,10,1,'images/s2.png',20,10),('LTAssus01','ASSUS','this is first test',10000,10,1,'images/s2.png',20,10),('LTAssus02','ASSUS','this is second test',10000,10,1,'images/s2.png',20,10);
/*!40000 ALTER TABLE `sanpham` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taikhoan`
--

DROP TABLE IF EXISTS `taikhoan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taikhoan` (
  `id_taikhoan` int NOT NULL AUTO_INCREMENT,
  `tentaikhoan` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `matkhau` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `tenkhachhang` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `gioitinh` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `sodienthoai` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ngaysinh` date DEFAULT NULL,
  `diachi` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `vaitro` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id_taikhoan`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taikhoan`
--

LOCK TABLES `taikhoan` WRITE;
/*!40000 ALTER TABLE `taikhoan` DISABLE KEYS */;
INSERT INTO `taikhoan` VALUES (1,'khang','123','khang','Male','0912222222','khang@gmail.com','2000-04-17','abccad','admin'),(2,'dat','123456','dat','Male','131231231','dat@dad','2000-02-02','avbaba','user'),(3,'hung','123456','hung','Male','0130103','hung@abc','2000-02-22','dasd','user'),(4,'abc','123456','abc','Male','0919910277','abc@gmail.com','1990-01-01','abc','user'),(5,'test02','123456','test02',NULL,'0919910288','abcd@gmail.com','1990-01-01','adasd','user'),(6,'xyzzaa','123','dajsdha','Male','0919910266','adasd@gmail.com','1990-01-01','dadad','user'),(7,'abc123','123','dasdad','Male','0919910288','adsdasd@gmail.com','1990-01-01','daspdasd','user'),(8,'nhi','123','nhi','Male','0919910299','nhi@gmail.com','1990-01-01','dasdasd','user');
/*!40000 ALTER TABLE `taikhoan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thongtinchitietlaptop`
--

DROP TABLE IF EXISTS `thongtinchitietlaptop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `thongtinchitietlaptop` (
  `masanpham` varchar(255) COLLATE utf8_bin NOT NULL,
  `baohanh` int DEFAULT NULL,
  `mausac` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `serieslaptop` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `partnumber` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `thehecpu` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `cpu` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `chipdohoa` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ram` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `manhinh` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `luutru` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `socongluutrutoida` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `kieukhem2hotro` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `congketnoi` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ketnoikkhongday` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `banphim` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `hedieuhanh` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `kichthuoc` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `pin` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `khoiluong` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `baomat` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `denledtrenmay` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `phukiendikem` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`masanpham`),
  CONSTRAINT `thongtinchitietlaptop_ibfk_1` FOREIGN KEY (`masanpham`) REFERENCES `sanpham` (`masanpham`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thongtinchitietlaptop`
--

LOCK TABLES `thongtinchitietlaptop` WRITE;
/*!40000 ALTER TABLE `thongtinchitietlaptop` DISABLE KEYS */;
INSERT INTO `thongtinchitietlaptop` VALUES ('LTAcer06',12,'Bạc','Macbook Air','MVFL2','Core i5','Intel Core i5 ( 1.6 GHz - 3.6 GHz / 4MB / 2 nhân, 4 luồng )','Intel UHD Graphics 617','1 x 8GB DDR3L 2133MHz','13.3\" ( 2560 x 1600 ) IPS không cảm ứng , HD webcam','256GB SSD M.2 NVMe','1 x M.2 NVMe','M.2 NVMe','2 x Thunderbolt 3','WiFi 802.11ac , Bluetooth 4.2','thường , không phím số , LED','macOS','30.4 x 21.2 x 1.6 cm','50 Wh , Pin liền','1.3 kg','Vân tay','LED','Adapter 30W, dây sạc');
/*!40000 ALTER TABLE `thongtinchitietlaptop` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-03 13:47:58
