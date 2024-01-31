-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 18, 2023 at 06:36 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kfc_bonk`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `accountID` int(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(8) NOT NULL,
  `types` varchar(20) DEFAULT NULL,
  `cmID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`accountID`, `username`, `password`, `types`, `cmID`) VALUES
(1, 'peerapatofgodofyear', '1234', 'admin', 1),
(23, 'visarutofgodofyear', '1234', 'admin', 38),
(24, 'siriphong', '1234', 'admin', 39),
(26, 'test1', '1', 'customer', 41),
(27, 'l', '1', 'customer', 42);

-- --------------------------------------------------------

--
-- Table structure for table `customer_member`
--

CREATE TABLE `customer_member` (
  `cmID` int(11) NOT NULL,
  `cmName` varchar(40) NOT NULL,
  `cmLastName` varchar(40) NOT NULL,
  `cmAddress` text NOT NULL,
  `cmTel` varchar(10) NOT NULL,
  `cmEmail` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_member`
--

INSERT INTO `customer_member` (`cmID`, `cmName`, `cmLastName`, `cmAddress`, `cmTel`, `cmEmail`) VALUES
(1, 'peerapat', 'tuekla', 'out world', '0633472999', 'stadead5521@gmail.com'),
(38, 'visarutofgodofyear', '', 'out world', '1234', 'stadead5588@gmail.com'),
(39, 'siriphong', 'dsad', 'out world', '1234', 'jsg@outlook.co.th'),
(41, 'sdsadas', 'dsadas', '33/2 ม.8 อ.บึงบอน จ.ปทุมธานี', '7777', 'jsg@outlook.co.th'),
(42, 'lert', 'fdfdg', 'gdfgdfg', 'fhdfh', 'hghfgh');

-- --------------------------------------------------------

--
-- Table structure for table `logadmin`
--

CREATE TABLE `logadmin` (
  `logUsername` varchar(20) NOT NULL,
  `logPassword` int(11) NOT NULL,
  `logID` int(11) NOT NULL,
  `logTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `logadmin`
--

INSERT INTO `logadmin` (`logUsername`, `logPassword`, `logID`, `logTime`) VALUES
('peerapat', 1234, 24, '2023-08-19 05:44:01'),
('peerapat', 1234, 25, '2023-08-19 06:24:42'),
('peerapat', 1234, 26, '2023-08-19 11:09:28'),
('peerapat', 1234, 27, '2023-08-19 11:15:41'),
('peerapat', 1234, 28, '2023-08-19 11:30:48'),
('peerapat', 1234, 29, '2023-08-19 14:17:27'),
('peerapat', 1234, 30, '2023-08-19 15:14:37'),
('peerapat', 1234, 31, '2023-08-19 15:50:43'),
('peerapat', 1234, 32, '2023-08-19 15:57:28'),
('peerapat', 1234, 33, '2023-08-19 16:01:55'),
('peerapat', 1234, 34, '2023-08-19 16:17:56'),
('peerapat', 1234, 35, '2023-08-19 16:29:11'),
('peerapat', 1234, 36, '2023-08-19 17:31:30'),
('peerapat', 1234, 37, '2023-08-21 08:22:03'),
('peerapat', 1234, 38, '2023-08-21 08:23:09'),
('peerapat', 1234, 39, '2023-08-21 08:23:42'),
('peerapat', 1234, 40, '2023-08-21 08:53:29'),
('peerapat', 1234, 41, '2023-08-21 08:54:49'),
('peerapat', 1234, 42, '2023-08-21 10:16:29'),
('peerapat', 1234, 43, '2023-08-22 09:44:19'),
('peerapat', 1234, 44, '2023-08-22 10:11:43'),
('peerapatofgodofyear', 1234, 45, '2023-08-22 11:33:10'),
('peerapatofgodofyear', 1234, 46, '2023-08-22 13:55:16'),
('peerapatofgodofyear', 1234, 47, '2023-08-22 14:26:05'),
('siriphong', 1234, 48, '2023-09-20 03:38:10'),
('siriphong', 1234, 49, '2023-09-20 03:44:58'),
('siriphong', 1234, 50, '2023-10-17 11:02:35'),
('siriphong', 1234, 51, '2023-10-17 11:53:56'),
('siriphong', 1234, 52, '2023-10-18 02:35:43'),
('siriphong', 1234, 53, '2023-10-18 02:45:14'),
('siriphong', 1234, 54, '2023-10-18 03:12:46'),
('siriphong', 1234, 55, '2023-10-18 03:16:18');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `cmID` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `SubTotalPrice` double NOT NULL,
  `TotalAll` int(11) NOT NULL,
  `orderDate` datetime NOT NULL,
  `ProductID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`cmID`, `Quantity`, `SubTotalPrice`, `TotalAll`, `orderDate`, `ProductID`) VALUES
(41, 3, 22.47, 52, '2023-09-20 11:37:48', 2),
(41, 3, 29.97, 52, '2023-09-20 11:37:48', 3),
(41, 3, 22.47, 52, '2023-09-20 11:38:50', 2),
(41, 3, 29.97, 52, '2023-09-20 11:38:50', 3),
(41, 3, 22.47, 52, '2023-09-20 11:40:00', 2),
(41, 3, 29.97, 52, '2023-09-20 11:40:00', 3),
(41, 5, 40, 45, '2023-09-20 11:43:12', 1),
(41, 1, 5, 6, '2023-10-17 13:09:12', 4),
(41, 1, 6, 6, '2023-10-17 13:09:19', 5),
(41, 1, 4, 5, '2023-10-17 13:09:25', 6),
(41, 1, 8, 8, '2023-10-17 13:09:34', 7),
(41, 1, 8, 9, '2023-10-17 13:09:51', 8),
(41, 1, 7, 8, '2023-10-17 13:09:59', 9),
(41, 1, 9, 9, '2023-10-17 13:10:15', 1),
(41, 1, 9, 9, '2023-10-17 13:11:18', 1),
(41, 1, 7, 8, '2023-10-17 13:11:23', 9),
(41, 1, 8.99, 26, '2023-10-18 10:10:29', 1),
(41, 1, 7.49, 26, '2023-10-18 10:10:29', 2),
(41, 1, 9.99, 26, '2023-10-18 10:10:29', 3),
(41, 1, 8, 9, '2023-10-18 10:15:54', 1),
(41, 999, 8981.01, 7501, '2023-10-18 10:17:40', 1),
(41, 999, 7482.51, 7501, '2023-10-18 10:17:40', 2),
(41, 1, 9.99, 7501, '2023-10-18 10:17:40', 3),
(41, 1, 8.99, 26, '2023-10-18 10:57:59', 1),
(41, 1, 7.49, 26, '2023-10-18 10:57:59', 2),
(41, 1, 9.99, 26, '2023-10-18 10:57:59', 3),
(41, 5, 45, 50, '2023-10-18 11:02:45', 3),
(41, 2, 17.98, 53, '2023-10-18 11:06:17', 1),
(41, 2, 14.98, 53, '2023-10-18 11:06:17', 2),
(41, 2, 19.98, 53, '2023-10-18 11:06:17', 3),
(41, 2, 17.98, 53, '2023-10-18 11:25:47', 1),
(41, 2, 14.98, 53, '2023-10-18 11:25:47', 2),
(41, 2, 19.98, 53, '2023-10-18 11:25:47', 3);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `PaymentID` int(20) NOT NULL,
  `TotalAll` int(11) NOT NULL,
  `PayName` varchar(20) NOT NULL,
  `SlipPayment` varchar(20) NOT NULL,
  `PayAddress` text NOT NULL,
  `cmID` int(11) NOT NULL,
  `PayTel` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`PaymentID`, `TotalAll`, `PayName`, `SlipPayment`, `PayAddress`, `cmID`, `PayTel`) VALUES
(1, 52, 'สุรสัก', 'Cat_August_2010-4.jp', 'กทม.', 41, '1089145515'),
(2, 45, 'สุรสัก', 'Cat_August_2010-4.jp', 'แม่สาย', 41, '0815151524'),
(3, 36, 'popzaza', 'bg78.jpg', '123', 41, '74474'),
(4, 53, 'peeza', 'bg05.jpg', '789', 41, '4444'),
(5, 7, 'star', 'bg01.webp', '789', 41, '456'),
(6, 53, 'qwer', 'bg05.jpg', 'qqqq', 41, 'qqqqq'),
(7, 26, 'peetest', 'bg05.jpg', '789', 41, '789'),
(8, 26, 'popaaaa', 'pngtree-brush-circle', 'dsadsa', 41, 'dasdsa'),
(9, 26, 'dsadasdasd', 'bg05.jpg', 'dsadsadas', 41, 'dsadsa'),
(10, 26, '55554', 'bg05.jpg', '444455', 41, '4565464'),
(11, 53, 'dsadsa', 'bg05.jpg', 'dsadsadsa', 41, 'dasdasdas'),
(12, 9, 'adsadsa', 'bg78.jpg', 'dasdasdas', 41, 'dasdasdsa'),
(13, 26, 'sdsadas', '', 'dsadasd', 41, 'dsadsadasdas'),
(14, 26, '4444444', '', '4444444444444444', 41, '444444444444444'),
(15, 26, 'peeza', '', '778', 41, '89797'),
(16, 9, 'pop', '', '474', 41, 'dsadsadsa'),
(17, 7501, '645654', '', '6546454', 41, '654645645'),
(18, 26, 'peerapat55', '', '123', 41, '12312321'),
(19, 53, 'peerapat', '1697601985594.jpg', 'dsadsadsa', 41, 'dsadsadasdas'),
(20, 53, 'testแก้', '1697603172079.png', 'testแก้', 41, '7894561230');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `ProductID` int(11) NOT NULL,
  `ProductName` varchar(40) NOT NULL,
  `CategoryID` int(11) DEFAULT NULL,
  `ProductPrice` decimal(10,2) DEFAULT 0.00,
  `UnitsInStock` smallint(5) DEFAULT 0,
  `Image` varchar(50) NOT NULL,
  `Feature` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`ProductID`, `ProductName`, `CategoryID`, `ProductPrice`, `UnitsInStock`, `Image`, `Feature`) VALUES
(1, 'Grilled Chicken', 101, 8.99, 996, '1.jpg', 0),
(2, 'Fried Chicken', 101, 7.49, 996, '2.jpg', 0),
(3, 'Roast Chicken', 101, 9.99, 989, '3.jpg', 0),
(4, 'Spicy Wings', 102, 5.99, 10, '4.jpg', 0),
(5, 'Chicken Tenders', 102, 6.49, 69, '5.jpg', 0),
(6, 'Chicken Nuggets', 102, 4.99, 79, '6.jpg', 0),
(7, 'Honey Glazed Chicken', 103, 8.49, 44, '7.jpg', 0),
(8, 'Lemon Herb Chicken', 103, 8.99, 34, '8.jpg', 0),
(9, 'BBQ Chicken', 103, 7.99, 53, '9.jpg', 0),
(10, 'Grilled Chicken Salad', 104, 9.49, 24, '10.jpg', 0),
(11, 'Chicken Caesar Salad', 104, 8.99, 30, '11.jpg', 0),
(12, 'Buffalo Chicken Wrap', 105, 7.99, 40, '12.jpg', 0),
(13, 'Teriyaki Chicken Wrap', 105, 8.49, 35, '13.jpg', 0),
(14, 'Chicken Burger', 106, 6.99, 50, '14.jpg', 0),
(15, 'Crispy Chicken Sandwich', 106, 7.49, 45, '15.jpg', 0),
(16, 'Chicken Burrito', 107, 8.99, 40, '16.jpg', 0),
(17, 'Chicken Quesadilla', 107, 7.99, 50, '17.jpg', 0),
(18, 'Baked Garlic Parmesan Chicken', 108, 9.99, 29, '18.jpg', 0),
(19, 'Sweet and Sour Chicken', 108, 8.49, 34, '19.jpg', 0),
(20, 'Sesame Ginger Chicken', 108, 7.99, 39, '20.jpg', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`accountID`),
  ADD KEY `cmID` (`cmID`);

--
-- Indexes for table `customer_member`
--
ALTER TABLE `customer_member`
  ADD PRIMARY KEY (`cmID`);

--
-- Indexes for table `logadmin`
--
ALTER TABLE `logadmin`
  ADD PRIMARY KEY (`logID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD KEY `cmID` (`cmID`),
  ADD KEY `ProductID` (`ProductID`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`PaymentID`),
  ADD KEY `cmID` (`cmID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ProductID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `accountID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `customer_member`
--
ALTER TABLE `customer_member`
  MODIFY `cmID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `logadmin`
--
ALTER TABLE `logadmin`
  MODIFY `logID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `PaymentID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `ProductID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accounts`
--
ALTER TABLE `accounts`
  ADD CONSTRAINT `accounts_ibfk_1` FOREIGN KEY (`cmID`) REFERENCES `customer_member` (`cmID`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`cmID`) REFERENCES `customer_member` (`cmID`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`ProductID`) REFERENCES `products` (`ProductID`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`cmID`) REFERENCES `customer_member` (`cmID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
