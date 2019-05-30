-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: May 30, 2019 at 01:17 PM
-- Server version: 5.7.25
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `PtoNMusic`
--

-- --------------------------------------------------------

--
-- Table structure for table `Brand`
--

CREATE TABLE `Brand` (
`Brand_id` char(10) COLLATE utf8_unicode_ci NOT NULL,
`Brand_name` char(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Brand`
--

INSERT INTO `Brand` (`Brand_id`, `Brand_name`) VALUES
('BR01', 'Yamaha'),
('BR02', 'Casio'),
('BR03', 'Fender'),
('BR04', 'Roland');

-- --------------------------------------------------------

--
-- Table structure for table `Category`
--

CREATE TABLE `Category` (
`Cat_id` char(10) COLLATE utf8_unicode_ci NOT NULL,
`Cat_name` char(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Category`
--

INSERT INTO `Category` (`Cat_id`, `Cat_name`) VALUES
('TY01', 'Guitar'),
('TY02', 'Paino'),
('TY03', 'Trumpet'),
('TY04', 'Electric Drum');

-- --------------------------------------------------------

--
-- Table structure for table `Customer`
--

CREATE TABLE `Customer` (
`Cus_id` char(10) COLLATE utf8_unicode_ci NOT NULL,
`Cus_name` char(50) COLLATE utf8_unicode_ci DEFAULT NULL,
`Cus_address` char(100) COLLATE utf8_unicode_ci DEFAULT NULL,
`Cus_phone` char(10) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Customer`
--

INSERT INTO `Customer` (`Cus_id`, `Cus_name`, `Cus_address`, `Cus_phone`) VALUES
('CUS0001', 'Wasin Thanomsirisilp', '999 Phutthamonthon Sai 4 Road Salaya, Phutthamonthon Nakhonpathom, 73170 Thailand', '0874219192'),
('CUS0002', 'Danuphon Saengklang', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Details`
--

CREATE TABLE `Details` (
`Re_id` char(10) COLLATE utf8_unicode_ci NOT NULL,
`Pro_id` char(10) COLLATE utf8_unicode_ci NOT NULL,
`Quantity` int(10) DEFAULT NULL,
`Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Details`
--

INSERT INTO `Details` (`Re_id`, `Pro_id`, `Quantity`, `Date`) VALUES
('BILL00001', 'PRO001', 1, '2017-11-10'),
('BILL00001', 'PRO002', 2, '2017-11-10'),
('BILL00002', 'PRO004', 2, '2017-11-11');

-- --------------------------------------------------------

--
-- Table structure for table `Employee`
--

CREATE TABLE `Employee` (
`Emp_id` char(10) COLLATE utf8_unicode_ci NOT NULL,
`Emp_name` char(50) COLLATE utf8_unicode_ci DEFAULT NULL,
`Emp_salary` double DEFAULT NULL,
`Emp_dateStart` date DEFAULT NULL,
`Emp_address` char(100) COLLATE utf8_unicode_ci DEFAULT NULL,
`Emp_phone` char(10) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Employee`
--

INSERT INTO `Employee` (`Emp_id`, `Emp_name`, `Emp_salary`, `Emp_dateStart`, `Emp_address`, `Emp_phone`) VALUES
('EMP01', 'Ratanapol Songthum', 32000, '2017-11-07', '122/5 Workpoint house, Chalongkrung Road, Ladkrabang, Bangkok 10520 Thailand', '0885605054'),
('EMP02', 'Parkon Pitaksalid', 32000, '2017-11-07', '254 Compiwad 3, Phayathai Road, Wang Mai, Pathum Wan, Bangkok 10330, Thailand', '0874453281');

-- --------------------------------------------------------

--
-- Table structure for table `Product`
--

CREATE TABLE `Product` (
`Pro_id` char(10) COLLATE utf8_unicode_ci NOT NULL,
`Pro_name` char(50) COLLATE utf8_unicode_ci DEFAULT NULL,
`Pro_price` double DEFAULT NULL,
`Pro_amount` int(10) DEFAULT NULL,
`Cat_id` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
`Brand_id` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
`Sup_id` char(10) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Product`
--

INSERT INTO `Product` (`Pro_id`, `Pro_name`, `Pro_price`, `Pro_amount`, `Cat_id`, `Brand_id`, `Sup_id`) VALUES
('PRO001', 'Acoustic Guitar Yamaha A1M', 24000, 5, 'TY01', 'BR01', 'SUP01'),
('PRO002', 'Acoustic Guitar Yamaha APX1200II', 48500, 2, 'TY01', 'BR01', 'SUP01'),
('PRO003', 'PRIVIA DIGITAL PIANO  AP-250BK', 50900, 3, 'TY02', 'BR02', 'SUP01'),
('PRO004', 'Roland TD-17K-L', 42000, 3, 'TY04', 'BR04', 'SUP01'),
('PRO005', 'Roland TD-20K-XL', 53450, 1, 'TY04', 'BR04', 'SUP01'),
('PRO006', 'American Professional Jazz Guitar V', 28000, 1, 'TY01', 'BR03', 'SUP01');

-- --------------------------------------------------------

--
-- Table structure for table `Receipt`
--

CREATE TABLE `Receipt` (
`Re_id` char(10) COLLATE utf8_unicode_ci NOT NULL,
`Emp_id` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
`Cus_id` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
`Re_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Receipt`
--

INSERT INTO `Receipt` (`Re_id`, `Emp_id`, `Cus_id`, `Re_date`) VALUES
('BILL00001', 'EMP01', 'CUS0001', '2017-11-10'),
('BILL00002', 'EMP01', 'CUS0002', '2017-11-10'),
('BILL00003', 'EMP02', 'CUS0001', '2017-11-12');

-- --------------------------------------------------------

--
-- Table structure for table `Supplier`
--

CREATE TABLE `Supplier` (
`Sup_id` char(10) COLLATE utf8_unicode_ci NOT NULL,
`Sup_name` char(50) COLLATE utf8_unicode_ci DEFAULT NULL,
`Sup_address` char(100) COLLATE utf8_unicode_ci DEFAULT NULL,
`Sup_phone` char(10) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Supplier`
--

INSERT INTO `Supplier` (`Sup_id`, `Sup_name`, `Sup_address`, `Sup_phone`) VALUES
('SUP01', 'Monsicha Pongsura', '50 Ngam Wong Wan Rd, Ladyaow Chatuchak Bangkok 10900, Thailand', '0984738821');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Brand`
--
ALTER TABLE `Brand`
ADD PRIMARY KEY (`Brand_id`);

--
-- Indexes for table `Category`
--
ALTER TABLE `Category`
ADD PRIMARY KEY (`Cat_id`);

--
-- Indexes for table `Customer`
--
ALTER TABLE `Customer`
ADD PRIMARY KEY (`Cus_id`);

--
-- Indexes for table `Details`
--
ALTER TABLE `Details`
ADD PRIMARY KEY (`Re_id`,`Pro_id`),
ADD UNIQUE KEY `Pro_id_UNIQUE` (`Pro_id`),
ADD KEY `Bill_id_idx` (`Re_id`),
ADD KEY `Pro_id_idx` (`Pro_id`);

--
-- Indexes for table `Employee`
--
ALTER TABLE `Employee`
ADD PRIMARY KEY (`Emp_id`);

--
-- Indexes for table `Product`
--
ALTER TABLE `Product`
ADD PRIMARY KEY (`Pro_id`),
ADD KEY `Sup_id_idx` (`Sup_id`),
ADD KEY `Type_id_idx` (`Cat_id`),
ADD KEY `Brand_id_idx` (`Brand_id`);

--
-- Indexes for table `Receipt`
--
ALTER TABLE `Receipt`
ADD PRIMARY KEY (`Re_id`),
ADD KEY `Emp_id_idx` (`Emp_id`),
ADD KEY `Cus_id_idx` (`Cus_id`);

--
-- Indexes for table `Supplier`
--
ALTER TABLE `Supplier`
ADD PRIMARY KEY (`Sup_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Details`
--
ALTER TABLE `Details`
ADD CONSTRAINT `Pro_id` FOREIGN KEY (`Pro_id`) REFERENCES `product` (`Pro_id`) ON UPDATE CASCADE,
ADD CONSTRAINT `Re_id` FOREIGN KEY (`Re_id`) REFERENCES `receipt` (`Re_id`) ON UPDATE CASCADE;

--
-- Constraints for table `Product`
--
ALTER TABLE `Product`
ADD CONSTRAINT `Brand_id` FOREIGN KEY (`Brand_id`) REFERENCES `brand` (`Brand_id`) ON UPDATE CASCADE,
ADD CONSTRAINT `Cat_id` FOREIGN KEY (`Cat_id`) REFERENCES `category` (`Cat_id`) ON UPDATE CASCADE,
ADD CONSTRAINT `Sup_id` FOREIGN KEY (`Sup_id`) REFERENCES `supplier` (`Sup_id`) ON UPDATE CASCADE;

--
-- Constraints for table `Receipt`
--
ALTER TABLE `Receipt`
ADD CONSTRAINT `Cus_id` FOREIGN KEY (`Cus_id`) REFERENCES `customer` (`Cus_id`) ON UPDATE CASCADE,
ADD CONSTRAINT `Emp_id` FOREIGN KEY (`Emp_id`) REFERENCES `employee` (`Emp_id`) ON UPDATE CASCADE;
