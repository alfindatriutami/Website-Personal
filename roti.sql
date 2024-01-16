/*
SQLyog Community v13.2.0 (64 bit)
MySQL - 10.4.24-MariaDB-log : Database - roti
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`roti` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `roti`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) NOT NULL,
  `password` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert  into `admin`(`id`,`username`,`password`) values 
(1,'admin','$2y$10$AIy0X1Ep6alaHDTofiChGeqq7k/d1Kc8vKQf1JZo0mKrzkkj6M626');

/*Table structure for table `bom_produk` */

DROP TABLE IF EXISTS `bom_produk`;

CREATE TABLE `bom_produk` (
  `kode_bom` varchar(100) NOT NULL,
  `kode_bk` varchar(100) NOT NULL,
  `kode_produk` varchar(100) NOT NULL,
  `nama_produk` varchar(200) NOT NULL,
  `kebutuhan` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Data for the table `bom_produk` */

insert  into `bom_produk`(`kode_bom`,`kode_bk`,`kode_produk`,`nama_produk`,`kebutuhan`) values 
('B0001','M0002','P0001','Monstera','2'),
('B0001','M0001','P0001','Monstera','4'),
('B0001','M0004','P0001','Monstera','3'),
('B0002','M0001','P0002','Fildore Rose','4'),
('B0002','M0004','P0002','Monstera Albino','3'),
('B0002','M0003','P0002','Burgury','2'),
('B0003','M0002','P0003','Monstera','2'),
('B0003','M0003','P0003','Monstera','5'),
('B0003','M0005','P0003','Monstera','5');

/*Table structure for table `customer` */

DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
  `kode_customer` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `telp` varchar(200) NOT NULL,
  PRIMARY KEY (`kode_customer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `customer` */

insert  into `customer`(`kode_customer`,`nama`,`email`,`username`,`password`,`telp`) values 
('C0002','Rafi Akbar','a.rafy@gmail.com','rafi','$2y$10$/UjGYbisTPJhr8MgmT37qOXo1o/HJn3dhafPoSYbOlSN1E7olHIb.','0856748564'),
('C0003','Nagita Silvana','bambang@gmail.com','Nagita','$2y$10$47./qEeA/y3rNx3UkoKmkuxoAtmz4ebHSR0t0Bc.cFEEg7cK34M3C','087804616097'),
('C0004','Nadiya','nadiya@gmail.com','nadiya','$2y$10$6wHH.7rF1q3JtzKgAhNFy.4URchgJC8R.POT1osTAWmasDXTTO7ZG','0898765432'),
('C0005','Agus','agus@gmail.com','agus','$2y$10$nMpGeqG9bvq7HTnHR6TKjeTKkv7vOcXdaWtVsGT.YRzWSf671MiEO','+62812345678'),
('C0006','Urlopenda','alfinda675@gmail.com','urlopenda','$2y$10$j3aJQgglmTYZv4KMs8yHtOUPDsM.X7qSPLG71Ox3cv/ZIbOzJQuea','085385129052'),
('C0007','Hannah','hannah@gmail.com','hannah','$2y$10$h0xKY/LXg/4OCMFXomGwju8JAxyjm16S4FTmGkUOmuaQnYDRQzPfy','08567890543');

/*Table structure for table `inventory` */

DROP TABLE IF EXISTS `inventory`;

CREATE TABLE `inventory` (
  `kode_bk` varchar(100) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `qty` varchar(200) NOT NULL,
  `satuan` varchar(200) NOT NULL,
  `harga` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  PRIMARY KEY (`kode_bk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `inventory` */

insert  into `inventory`(`kode_bk`,`nama`,`qty`,`satuan`,`harga`,`tanggal`) values 
('M0001','Monstera','16','Kg',1000,'2020-07-26'),
('M0002','Fildore Rose','-10','Kg',1000,'2020-07-27'),
('M0003','Burgury','-3','Kg',3000,'2020-07-26'),
('M0004','Monstera Albino','37','Kg',4000,'2020-07-26'),
('M0005','Monstera','0','Kg',5000,'2020-07-27');

/*Table structure for table `keranjang` */

DROP TABLE IF EXISTS `keranjang`;

CREATE TABLE `keranjang` (
  `id_keranjang` int(11) NOT NULL AUTO_INCREMENT,
  `kode_customer` varchar(100) NOT NULL,
  `kode_produk` varchar(100) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `qty` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  PRIMARY KEY (`id_keranjang`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4;

/*Data for the table `keranjang` */

/*Table structure for table `produk` */

DROP TABLE IF EXISTS `produk`;

CREATE TABLE `produk` (
  `kode_produk` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `image` text NOT NULL,
  `deskripsi` text NOT NULL,
  `harga` int(11) NOT NULL,
  PRIMARY KEY (`kode_produk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `produk` */

insert  into `produk`(`kode_produk`,`nama`,`image`,`deskripsi`,`harga`) values 
('P0001','Monstera Albino','65a551a70a40d.jpeg','												Monstera Albino adalah keluarga Monstera yang sangat populer karena memili bentuk daun yang iconic dan perpaduan warna hijau dan putih, membuat rumah anda menjadi sangat indah. Monstera adalah jenis tanaman indoor yang mudah dirawat dan kami padukan dengan pot concrete yang memberi nilai tambah pada konsep minimalis modern interior kamu\r\n\r\nPlants : Monstera Albino\r\nPlacement : Indoor / Indirect Sunlight\r\nPlants care : Siram 2 hari sekali\r\n\r\nPlanter : Natural Concrete Pot - Cylinder 28\r\nStanding Planter : JATI Standing Planter\r\nDrainage Hole : Yes\r\nFinishing : Natural Coated\r\n\r\nFREE : Tatakan dalam plastik\r\n																																	',250000),
('P0002','Botanica ','65a3e2aecdefe.jpeg','Monstera Albino adalah keluarga Monstera yang sangat populer karena memili bentuk daun yang iconic dan perpaduan warna hijau dan putih, membuat rumah anda menjadi sangat indah. Monstera adalah jenis tanaman indoor yang mudah dirawat dan kami padukan dengan pot concrete yang memberi nilai tambah pada konsep minimalis modern interior kamu\r\n\r\nPlants : Monstera Albino\r\nPlacement : Indoor / Indirect Sunlight\r\nPlants care : Siram 2 hari sekali\r\n\r\nPlanter : Natural Concrete Pot - Cylinder 28\r\nStanding Planter : JATI Standing Planter\r\nDrainage Hole : Yes\r\nFinishing : Natural Coated\r\n\r\nFREE : Tatakan dalam plastik\r\n									',400000),
('P0003','Filodrendo Rosa','65a55097d9a92.jpg','				Monstera Albino adalah keluarga Monstera yang sangat populer karena memili bentuk daun yang iconic dan perpaduan warna hijau dan putih, membuat rumah anda menjadi sangat indah. Monstera adalah jenis tanaman indoor yang mudah dirawat dan kami padukan dengan pot concrete yang memberi nilai tambah pada konsep minimalis modern interior kamu\r\n\r\nPlants : Monstera Albino\r\nPlacement : Indoor / Indirect Sunlight\r\nPlants care : Siram 2 hari sekali\r\n\r\nPlanter : Natural Concrete Pot - Cylinder 28\r\nStanding Planter : JATI Standing Planter\r\nDrainage Hole : Yes\r\nFinishing : Natural Coated\r\n\r\nFREE : Tatakan dalam plastik			',300000),
('P0004','Monstera Jari','65a5418b59feb.jpeg','\r\n			',150000);

/*Table structure for table `produksi` */

DROP TABLE IF EXISTS `produksi`;

CREATE TABLE `produksi` (
  `id_order` int(11) NOT NULL AUTO_INCREMENT,
  `invoice` varchar(200) NOT NULL,
  `kode_customer` varchar(200) NOT NULL,
  `kode_produk` varchar(200) NOT NULL,
  `nama_produk` varchar(200) NOT NULL,
  `qty` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `status` varchar(200) NOT NULL,
  `tanggal` date NOT NULL,
  `provinsi` varchar(200) NOT NULL,
  `kota` varchar(200) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `kode_pos` varchar(200) NOT NULL,
  `terima` varchar(200) NOT NULL,
  `tolak` varchar(200) NOT NULL,
  `cek` int(11) NOT NULL,
  PRIMARY KEY (`id_order`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;

/*Data for the table `produksi` */

insert  into `produksi`(`id_order`,`invoice`,`kode_customer`,`kode_produk`,`nama_produk`,`qty`,`harga`,`status`,`tanggal`,`provinsi`,`kota`,`alamat`,`kode_pos`,`terima`,`tolak`,`cek`) values 
(8,'INV0001','C0002','P0003','Monstera Albino',1,100000,'Pesanan Baru','2020-07-27','Jawa Timur','Surabaya','Jl.Tanah Merah Indah 1','60129','2','1',0),
(9,'INV0002','C0002','P0001','Monstera Jari',3,10000,'Pesanan Baru','2020-07-27','Jawa Barat','Bandung','Jl.Jati Nangor Blok C, 10','30712','0','0',0),
(10,'INV0003','C0003','P0002','Burgury',2,15000,'0','2020-07-27','Jawa Tengah','Yogyakarta','Jl.Malioboro, Blok A 10D','30123','1','0',0),
(11,'INV0003','C0003','P0003','Mosntera Albino',1,100000,'0','2020-07-27','Jawa Tengah','Yogyakarta','Jl.Malioboro, Blok A 10D','30123','1','0',0),
(12,'INV0003','C0003','P0001','Foldera Rose',1,10000,'0','2020-07-27','Jawa Tengah','Yogyakarta','Jl.Malioboro, Blok A 10D','30123','1','0',0),
(13,'INV0004','C0004','P0002','Burgury',1,15000,'Pesanan Baru','2020-07-26','Jawa Timur','Sidoarjo','Jl.KH Syukur Blok C 18 A','50987','0','0',0),
(14,'INV0005','C0005','P0001','Monstera Jari',1,10000,'Pesanan Baru','2323-07-15','Jawa Barat','Bandung','Ujung Berung','40397','0','0',0),
(15,'INV0006','C0006','P0001','Monstera Albino',1,250000,'Pesanan Baru','2424-01-14','Jawa Tengah','Semarang','Pedalangan','50128','0','0',0),
(16,'INV0006','C0006','P0003','Filodrendo Rosa',1,300000,'Pesanan Baru','2424-01-14','Jawa Tengah','Semarang','Pedalangan','50128','0','0',0),
(17,'INV0007','C0007','P0001','Monstera Albino',5,250000,'0','2424-01-15','Jawa Barat','Tasik','Jl. Cempaka no 2A','20979','1','0',0),
(18,'INV0007','C0007','P0002','Botanica ',10,400000,'0','2424-01-15','Jawa Barat','Tasik','Jl. Cempaka no 2A','20979','1','0',0);

/*Table structure for table `report _penjualan` */

DROP TABLE IF EXISTS `report _penjualan`;

CREATE TABLE `report _penjualan` (
  `id_report_sell` int(11) NOT NULL AUTO_INCREMENT,
  `invoice` varchar(100) NOT NULL,
  `kode_produk` varchar(100) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `jumlah_terjual` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  PRIMARY KEY (`id_report_sell`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `report _penjualan` */

/*Table structure for table `report_cancel` */

DROP TABLE IF EXISTS `report_cancel`;

CREATE TABLE `report_cancel` (
  `id_report_cancel` int(11) NOT NULL AUTO_INCREMENT,
  `id_order` varchar(100) NOT NULL,
  `kode_produk` varchar(100) NOT NULL,
  `jumlah` varchar(100) NOT NULL,
  `tanggal` date NOT NULL,
  PRIMARY KEY (`id_report_cancel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `report_cancel` */

/*Table structure for table `report_inventory` */

DROP TABLE IF EXISTS `report_inventory`;

CREATE TABLE `report_inventory` (
  `id_report_inv` int(11) NOT NULL AUTO_INCREMENT,
  `kode_bk` varchar(100) NOT NULL,
  `nama_bahanbaku` varchar(100) NOT NULL,
  `jml_stok_bk` int(11) NOT NULL,
  `tanggal` varchar(11) NOT NULL,
  PRIMARY KEY (`id_report_inv`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `report_inventory` */

/*Table structure for table `report_omset` */

DROP TABLE IF EXISTS `report_omset`;

CREATE TABLE `report_omset` (
  `id_report_omset` int(11) NOT NULL AUTO_INCREMENT,
  `invoice` varchar(100) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `total_omset` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  PRIMARY KEY (`id_report_omset`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `report_omset` */

/*Table structure for table `report_produksi` */

DROP TABLE IF EXISTS `report_produksi`;

CREATE TABLE `report_produksi` (
  `id_report_prd` int(11) NOT NULL AUTO_INCREMENT,
  `invoice` varchar(100) NOT NULL,
  `kode_produk` varchar(100) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `qty` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  PRIMARY KEY (`id_report_prd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `report_produksi` */

/*Table structure for table `report_profit` */

DROP TABLE IF EXISTS `report_profit`;

CREATE TABLE `report_profit` (
  `id_report_profit` int(11) NOT NULL AUTO_INCREMENT,
  `kode_bom` varchar(100) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `kode_produk` varchar(100) NOT NULL,
  `jumlah` varchar(11) NOT NULL,
  `total_profit` varchar(11) NOT NULL,
  `tanggal` date NOT NULL,
  PRIMARY KEY (`id_report_profit`),
  UNIQUE KEY `kode_bom` (`kode_bom`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `report_profit` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
