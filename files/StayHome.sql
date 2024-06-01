-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.33 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for stayhome
DROP DATABASE IF EXISTS `stayhome`;
CREATE DATABASE IF NOT EXISTS `stayhome` /*!40100 DEFAULT CHARACTER SET latin1 COLLATE latin1_general_ci */;
USE `stayhome`;

-- Dumping structure for table stayhome.actor
DROP TABLE IF EXISTS `actor`;
CREATE TABLE IF NOT EXISTS `actor` (
  `actorNo` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `actorName` varchar(15) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`actorNo`),
  KEY `actorNo` (`actorNo`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- Dumping data for table stayhome.actor: ~11 rows (approximately)
DELETE FROM `actor`;
/*!40000 ALTER TABLE `actor` DISABLE KEYS */;
INSERT INTO `actor` (`actorNo`, `actorName`) VALUES
	(00001, 'Pierce Brosnan'),
	(00002, 'Elijah Wood'),
	(00003, 'Will Smith'),
	(00004, 'Tommy Lee Kine'),
	(00005, 'Mike Myers'),
	(00006, 'Daniel Rac'),
	(00007, 'Arnold S'),
	(00008, 'Julia Robert'),
	(00009, 'Jet Lee'),
	(00010, 'Jackie Chan'),
	(00011, 'Handy');
/*!40000 ALTER TABLE `actor` ENABLE KEYS */;

-- Dumping structure for table stayhome.branch
DROP TABLE IF EXISTS `branch`;
CREATE TABLE IF NOT EXISTS `branch` (
  `branchNo` varchar(4) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL COMMENT 'Branch_Number',
  `street` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'street' COMMENT 'State Code',
  `city` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'City',
  `state` enum('Aceh','DKI Jakarta','Jambi','Jawa Tengah','Jawa Barat','Jawa Timur','Nusa Tenggara Barat','Jayapura','Ambon','Kalimantan Selatan','Kalimantan Timur','Kalimantan Tengah','Sulawesi Selatan','Sulawesi Tenggara','Sumatera Selatan','Sumatera Barat','Sumatera Utara','Yogyakarta') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL COMMENT 'Street',
  `zipcode` varchar(5) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '00000' COMMENT 'Zip Codes',
  `mgrStaffNo` varchar(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`branchNo`),
  KEY `mgrStaff` (`mgrStaffNo`),
  KEY `city` (`city`) USING BTREE,
  CONSTRAINT `mgrStaff` FOREIGN KEY (`mgrStaffNo`) REFERENCES `staff` (`staffNo`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table stayhome.branch: ~6 rows (approximately)
DELETE FROM `branch`;
/*!40000 ALTER TABLE `branch` DISABLE KEYS */;
INSERT INTO `branch` (`branchNo`, `street`, `city`, `state`, `zipcode`, `mgrStaffNo`) VALUES
	('B001', 'Ir. Sutami 20 Jebres', 'Solo', 'Jawa Tengah', '97201', 'S0003'),
	('B002', 'Gondotaman 52', 'Yogyakarta', 'Yogyakarta', '98122', 'S0010'),
	('B003', 'Simpang Lima 5', 'Semarang', 'Jawa Tengah', '10012', 'S0415'),
	('B004', 'Homan 23', 'Bandung', 'Jawa Barat', '98128', 'S2250'),
	('B005', 'Sepuluh November 10', 'Surabaya', 'Jawa Timur', '10013', NULL),
	('B056', 'street', 'City', 'Aceh', '00000', NULL);
/*!40000 ALTER TABLE `branch` ENABLE KEYS */;

-- Dumping structure for table stayhome.director
DROP TABLE IF EXISTS `director`;
CREATE TABLE IF NOT EXISTS `director` (
  `directorNo` varchar(4) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `directorName` varchar(15) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`directorNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table stayhome.director: ~6 rows (approximately)
DELETE FROM `director`;
/*!40000 ALTER TABLE `director` DISABLE KEYS */;
INSERT INTO `director` (`directorNo`, `directorName`) VALUES
	('D075', 'Peter Jackson'),
	('D099', 'Andrew Adamson'),
	('D101', 'Lee Tamahori'),
	('D123', 'Barry Son'),
	('D575', 'Roland Emmerick'),
	('D745', 'Chris Columbus');
/*!40000 ALTER TABLE `director` ENABLE KEYS */;

-- Dumping structure for table stayhome.member
DROP TABLE IF EXISTS `member`;
CREATE TABLE IF NOT EXISTS `member` (
  `memberNo` int(6) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `address` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `telephone` varchar(15) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`memberNo`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- Dumping data for table stayhome.member: ~9 rows (approximately)
DELETE FROM `member`;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` (`memberNo`, `name`, `address`, `telephone`) VALUES
	(000001, 'Zane K', 'Gondotaman 57 Yogyakarta', '081253466343'),
	(000002, 'Artian Sin', 'Pajang RT 5/XI, Solo', '085734934334'),
	(000003, 'Joko Eling', 'Sutami 45 Solo', '085633059589'),
	(000004, 'Don Bosco', 'Tamansari 331, Bandung', '081123212122'),
	(000005, 'Eko Budiharjo', 'Simpang Lima, 45 Semarang', '0247663433'),
	(000006, 'Bambang', 'Jl. Pahlawan 10, Surabaya', '03123450454'),
	(000007, 'Cecep S', 'Jl. Kutilang 35, Dago, Bandung', '022666557'),
	(000008, 'Budi Laksana', 'Jl. Merpati Raya No. 3', '081122334455'),
	(000010, 'Handoko Susilo', 'Jl. Gagak Raya No. 4', NULL);
/*!40000 ALTER TABLE `member` ENABLE KEYS */;

-- Dumping structure for table stayhome.registration
DROP TABLE IF EXISTS `registration`;
CREATE TABLE IF NOT EXISTS `registration` (
  `branchNo` varchar(4) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `memberNo` int(6) unsigned zerofill NOT NULL,
  `staffNo` varchar(5) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `datejoined` date DEFAULT NULL,
  PRIMARY KEY (`branchNo`,`memberNo`),
  KEY `regstaff` (`staffNo`),
  KEY `regmember` (`memberNo`),
  CONSTRAINT `regbranch` FOREIGN KEY (`branchNo`) REFERENCES `branch` (`branchNo`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `regmember` FOREIGN KEY (`memberNo`) REFERENCES `member` (`memberNo`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `regstaff` FOREIGN KEY (`staffNo`) REFERENCES `staff` (`staffNo`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table stayhome.registration: ~7 rows (approximately)
DELETE FROM `registration`;
/*!40000 ALTER TABLE `registration` DISABLE KEYS */;
INSERT INTO `registration` (`branchNo`, `memberNo`, `staffNo`, `datejoined`) VALUES
	('B001', 000002, 'S0003', '2010-01-06'),
	('B001', 000003, 'S1511', '2010-07-16'),
	('B002', 000001, 'S3255', '2008-06-16'),
	('B003', 000005, 'S0445', '2010-07-18'),
	('B004', 000004, 'S2350', '2010-01-12'),
	('B004', 000007, 'S2350', '2010-01-16'),
	('B005', 000006, 'S1035', '2010-09-15');
/*!40000 ALTER TABLE `registration` ENABLE KEYS */;

-- Dumping structure for table stayhome.rental
DROP TABLE IF EXISTS `rental`;
CREATE TABLE IF NOT EXISTS `rental` (
  `rentalNo` int(12) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `dateOut` date NOT NULL,
  `dateReturn` date DEFAULT NULL,
  `memberNo` int(6) unsigned zerofill NOT NULL,
  `videoNo` int(6) unsigned zerofill NOT NULL,
  PRIMARY KEY (`rentalNo`),
  KEY `rentvideo` (`videoNo`),
  KEY `rentmember` (`memberNo`),
  CONSTRAINT `rentmember` FOREIGN KEY (`memberNo`) REFERENCES `member` (`memberNo`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `rentvideo` FOREIGN KEY (`videoNo`) REFERENCES `videoitem` (`videoNo`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- Dumping data for table stayhome.rental: ~10 rows (approximately)
DELETE FROM `rental`;
/*!40000 ALTER TABLE `rental` DISABLE KEYS */;
INSERT INTO `rental` (`rentalNo`, `dateOut`, `dateReturn`, `memberNo`, `videoNo`) VALUES
	(000000000001, '2010-09-01', '2010-09-03', 000003, 000001),
	(000000000002, '2010-09-06', '2010-09-08', 000002, 000001),
	(000000000003, '2010-09-01', '2010-09-04', 000001, 000004),
	(000000000004, '2010-09-17', NULL, 000003, 000003),
	(000000000005, '2010-09-18', NULL, 000006, 000014),
	(000000000006, '2010-09-18', '2010-09-20', 000004, 000010),
	(000000000007, '2010-09-18', NULL, 000004, 000009),
	(000000000008, '2010-09-20', NULL, 000007, 000011),
	(000000000009, '2010-09-20', NULL, 000001, 000015),
	(000000000010, '2010-09-21', NULL, 000003, 000001);
/*!40000 ALTER TABLE `rental` ENABLE KEYS */;

-- Dumping structure for table stayhome.role
DROP TABLE IF EXISTS `role`;
CREATE TABLE IF NOT EXISTS `role` (
  `catalogNo` varchar(4) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `actorNo` int(5) unsigned zerofill NOT NULL,
  `character` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`catalogNo`,`actorNo`),
  KEY `roleactor` (`actorNo`),
  CONSTRAINT `roleactor` FOREIGN KEY (`actorNo`) REFERENCES `actor` (`actorNo`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `rolecatalog` FOREIGN KEY (`catalogNo`) REFERENCES `video` (`catalogNo`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table stayhome.role: ~7 rows (approximately)
DELETE FROM `role`;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` (`catalogNo`, `actorNo`, `character`) VALUES
	('207A', 00001, 'James Bond'),
	('330F', 00002, 'Frodo Baggins'),
	('445A', 00003, 'Agent J'),
	('445A', 00004, 'Agent K'),
	('634S', 00003, 'Captain Steve'),
	('781C', 00005, 'Shrek'),
	('902C', 00002, 'Harry Potter');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;

-- Dumping structure for table stayhome.staff
DROP TABLE IF EXISTS `staff`;
CREATE TABLE IF NOT EXISTS `staff` (
  `staffNo` varchar(5) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `fname` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `lname` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `address` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `position` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `datework` date DEFAULT NULL,
  `salary` decimal(9,2) NOT NULL,
  `branchNo` varchar(4) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `spvStaffNo` varchar(5) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`staffNo`),
  KEY `staffbranch` (`branchNo`),
  KEY `staffspv` (`spvStaffNo`),
  CONSTRAINT `staffbranch` FOREIGN KEY (`branchNo`) REFERENCES `branch` (`branchNo`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `staffspv` FOREIGN KEY (`spvStaffNo`) REFERENCES `staff` (`staffNo`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table stayhome.staff: ~12 rows (approximately)
DELETE FROM `staff`;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` (`staffNo`, `fname`, `lname`, `address`, `position`, `datework`, `salary`, `branchNo`, `spvStaffNo`) VALUES
	('S0003', 'Sally', 'Adams', 'Jl. Kutilang 34 Ngringo, Palur', 'Assistant', '1998-03-05', 30000.00, 'B001', 'S1500'),
	('S0010', 'Mary', 'Martinez', 'MT. Haryono 35, Yogyakarta', 'Manager', '2000-04-04', 50000.00, 'B002', NULL),
	('S0415', 'Art', 'Peters', 'Mayjen Sutoyo 78, Semarang', 'Manager', '1990-11-28', 41000.00, 'B003', NULL),
	('S0445', 'Brad', 'Jacson', 'Jl. Parangkusumo 45, Beteng, S', 'Staff', '2008-01-16', 25000.00, 'B003', 'S0415'),
	('S1033', 'Lia', 'Amalia', 'Jembatan Merah 79, Surabaya', 'Manager', '2008-06-18', 45000.00, 'B005', NULL),
	('S1035', 'Budi', 'Suharjo', 'Perak 34, Surabaya', 'Staff', '2008-07-18', 27000.00, 'B005', 'S1033'),
	('S1500', 'Tom', 'Daniels', 'Wara wuri 2, Jebres, Solo', 'Manager', '1986-04-01', 46000.00, 'B001', NULL),
	('S1511', 'Andre', 'Lee', 'Jl. Guntur 23, Jebres, Solo', 'Staff', '2008-09-10', 25000.00, 'B001', 'S1500'),
	('S2250', 'Sally', 'Stem', 'Sangkuriang 45, Dago, Bandung', 'Manager', '1996-02-14', 48000.00, 'B004', NULL),
	('S2350', 'Reez', 'Ardrian', 'Tamansari Bawah 116, Bandung', 'Staff', '2009-09-16', 26000.00, 'B004', 'S2250'),
	('S3250', 'Robert', 'Chin', 'Kunir Kuning 23, Sleman, Yogya', 'Supervisor', '2006-09-13', 32000.00, 'B002', 'S0010'),
	('S3255', 'Maria', 'Haryono', 'MT. Haryono 118, Yogyakarta', 'Staff', '2008-02-13', 27000.00, 'B002', 'S3250');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;

-- Dumping structure for table stayhome.supplier
DROP TABLE IF EXISTS `supplier`;
CREATE TABLE IF NOT EXISTS `supplier` (
  `supplierNo` varchar(4) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `name` varchar(15) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `address` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `telNo` varchar(15) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `status` enum('aktif','tidak aktif') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`supplierNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table stayhome.supplier: ~4 rows (approximately)
DELETE FROM `supplier`;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` (`supplierNo`, `name`, `address`, `telNo`, `status`) VALUES
	('P001', 'Eksa Pratama', 'Honggowongso 56 Jakarta', '0217789563', 'aktif'),
	('P002', 'Citra Film', 'Sudirman 34 Jakarta', '0217789987', 'aktif'),
	('P003', 'Sentosa', 'Kirana 34 Semarang', '024556784', 'tidak aktif'),
	('P004', 'Media Tama', 'Cokro 21 Surabaya', '0317564586', 'aktif');
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;

-- Dumping structure for table stayhome.telephone
DROP TABLE IF EXISTS `telephone`;
CREATE TABLE IF NOT EXISTS `telephone` (
  `telNo` varchar(15) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `brachNo` varchar(4) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`telNo`),
  KEY `telephonebranch` (`brachNo`),
  CONSTRAINT `telephonebranch` FOREIGN KEY (`brachNo`) REFERENCES `branch` (`branchNo`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table stayhome.telephone: ~6 rows (approximately)
DELETE FROM `telephone`;
/*!40000 ALTER TABLE `telephone` DISABLE KEYS */;
INSERT INTO `telephone` (`telNo`, `brachNo`) VALUES
	('0271638878', 'B001'),
	('0271639989', 'B001'),
	('027477545', 'B002'),
	('024313456', 'B003'),
	('022798012', 'B004'),
	('031456732', 'B005');
/*!40000 ALTER TABLE `telephone` ENABLE KEYS */;

-- Dumping structure for table stayhome.teleponstaff
DROP TABLE IF EXISTS `teleponstaff`;
CREATE TABLE IF NOT EXISTS `teleponstaff` (
  `KodePegawai` varchar(5) COLLATE latin1_general_ci DEFAULT NULL,
  `Telepon` varchar(15) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- Dumping data for table stayhome.teleponstaff: ~5 rows (approximately)
DELETE FROM `teleponstaff`;
/*!40000 ALTER TABLE `teleponstaff` DISABLE KEYS */;
INSERT INTO `teleponstaff` (`KodePegawai`, `Telepon`) VALUES
	('S1033', '08464565'),
	('S1033', '892354678945'),
	('S0003', '82134567890'),
	('S1033', '0812345678'),
	('S1034', '08464565');
/*!40000 ALTER TABLE `teleponstaff` ENABLE KEYS */;

-- Dumping structure for table stayhome.video
DROP TABLE IF EXISTS `video`;
CREATE TABLE IF NOT EXISTS `video` (
  `catalogNo` varchar(4) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `title` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `category` enum('action','comedy','children','drama','horor','sci-fi','fiction') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `dailyrental` decimal(7,2) NOT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  `directorNo` varchar(4) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `supplierNo` varchar(4) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`catalogNo`),
  KEY `vidsupplier` (`supplierNo`),
  KEY `viddirector` (`directorNo`),
  CONSTRAINT `viddirector` FOREIGN KEY (`directorNo`) REFERENCES `director` (`directorNo`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `vidsupplier` FOREIGN KEY (`supplierNo`) REFERENCES `supplier` (`supplierNo`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table stayhome.video: ~6 rows (approximately)
DELETE FROM `video`;
/*!40000 ALTER TABLE `video` DISABLE KEYS */;
INSERT INTO `video` (`catalogNo`, `title`, `category`, `dailyrental`, `price`, `directorNo`, `supplierNo`) VALUES
	('207A', 'Die Another Day', 'action', 5000.00, 22000.00, 'D101', 'P001'),
	('330F', 'Lord of The Ring', 'fiction', 5000.00, 32000.00, 'D075', 'P004'),
	('445A', 'Man in Black II', 'action', 4000.00, 30000.00, 'D123', 'P002'),
	('634S', 'Independence Day', 'sci-fi', 4500.00, 33000.00, 'D575', 'P004'),
	('781C', 'Shrek', 'children', 4000.00, 18500.00, 'D099', 'P002'),
	('902C', 'Harry Pottera', 'children', 4500.00, 14500.00, 'D745', 'P001');
/*!40000 ALTER TABLE `video` ENABLE KEYS */;

-- Dumping structure for table stayhome.videoitem
DROP TABLE IF EXISTS `videoitem`;
CREATE TABLE IF NOT EXISTS `videoitem` (
  `videoNo` int(6) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `available` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `catalogNo` varchar(4) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `branchNo` varchar(4) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`videoNo`),
  KEY `vidbranch` (`branchNo`),
  KEY `vidcatalog` (`catalogNo`),
  CONSTRAINT `vidbranch` FOREIGN KEY (`branchNo`) REFERENCES `branch` (`branchNo`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `vidcatalog` FOREIGN KEY (`catalogNo`) REFERENCES `video` (`catalogNo`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- Dumping data for table stayhome.videoitem: ~15 rows (approximately)
DELETE FROM `videoitem`;
/*!40000 ALTER TABLE `videoitem` DISABLE KEYS */;
INSERT INTO `videoitem` (`videoNo`, `available`, `catalogNo`, `branchNo`) VALUES
	(000001, 'N', '207A', 'B001'),
	(000002, 'Y', '207A', 'B002'),
	(000003, 'N', '634S', 'B001'),
	(000004, 'Y', '634S', 'B002'),
	(000005, 'Y', '207A', 'B002'),
	(000006, 'Y', '207A', 'B003'),
	(000007, 'Y', '207A', 'B003'),
	(000008, 'Y', '445A', 'B004'),
	(000009, 'N', '781C', 'B004'),
	(000010, 'Y', '902C', 'B004'),
	(000011, 'N', '781C', 'B004'),
	(000012, 'Y', '634S', 'B005'),
	(000013, 'Y', '634S', 'B005'),
	(000014, 'N', '634S', 'B005'),
	(000015, 'N', '330F', 'B002');
/*!40000 ALTER TABLE `videoitem` ENABLE KEYS */;

-- Dumping structure for table stayhome.videoorder
DROP TABLE IF EXISTS `videoorder`;
CREATE TABLE IF NOT EXISTS `videoorder` (
  `orderNo` varchar(4) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `dateOrdered` date NOT NULL,
  `dateRecieved` date NOT NULL,
  `branchNo` varchar(4) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`orderNo`),
  KEY `ordbranch` (`branchNo`),
  CONSTRAINT `ordbranch` FOREIGN KEY (`branchNo`) REFERENCES `branch` (`branchNo`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table stayhome.videoorder: ~4 rows (approximately)
DELETE FROM `videoorder`;
/*!40000 ALTER TABLE `videoorder` DISABLE KEYS */;
INSERT INTO `videoorder` (`orderNo`, `dateOrdered`, `dateRecieved`, `branchNo`) VALUES
	('O234', '2010-09-01', '2010-09-07', 'B001'),
	('O235', '2010-09-02', '2010-09-07', 'B002'),
	('O236', '2010-09-02', '2010-09-07', 'B004'),
	('O237', '2010-09-01', '2010-09-07', 'B001');
/*!40000 ALTER TABLE `videoorder` ENABLE KEYS */;

-- Dumping structure for table stayhome.videoorderline
DROP TABLE IF EXISTS `videoorderline`;
CREATE TABLE IF NOT EXISTS `videoorderline` (
  `orderNo` varchar(4) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `catalogNo` varchar(4) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `quantity` smallint(3) NOT NULL,
  PRIMARY KEY (`orderNo`,`catalogNo`),
  KEY `ordlcatalog` (`catalogNo`),
  CONSTRAINT `ordlcatalog` FOREIGN KEY (`catalogNo`) REFERENCES `video` (`catalogNo`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `ordlorder` FOREIGN KEY (`orderNo`) REFERENCES `videoorder` (`orderNo`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table stayhome.videoorderline: ~4 rows (approximately)
DELETE FROM `videoorderline`;
/*!40000 ALTER TABLE `videoorderline` DISABLE KEYS */;
INSERT INTO `videoorderline` (`orderNo`, `catalogNo`, `quantity`) VALUES
	('O234', '902C', 3),
	('O235', '634S', 3),
	('O235', '902C', 2),
	('O236', '445A', 3);
/*!40000 ALTER TABLE `videoorderline` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
