-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Dec 13, 2020 at 05:38 AM
-- Server version: 8.0.18
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tsf`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Balance` int(100) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Id`, `Name`, `Email`, `Balance`) VALUES
(1, 'Nikita', 'nikita@gmail.com', 3023),
(2, 'Jhalak', 'jhalak26@gmail.com', 3205),
(4, 'Archie', 'archiearora@gmail.com', 3720),
(3, 'Muskan', 'muskan@gmail.com', 2650),
(5, 'Vandana', 'vandana@gmail.com', 3026),
(6, 'Vaishnavi', 'vaishnavi@gmail.com', 5013),
(7, 'Nikhita', 'nikhita@gmail.com', 4000),
(8, 'Jagmani', 'jagmani@gmail.com', 4800),
(9, 'Madhurima', 'madhurima@gmail.com', 4205),
(10, 'Aditi', 'aditi@gmail.com', 5558);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
CREATE TABLE IF NOT EXISTS `transaction` (
  `Id` int(100) NOT NULL AUTO_INCREMENT,
  `Sender` varchar(100) NOT NULL,
  `Receipient` varchar(100) NOT NULL,
  `Amount` int(100) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`Id`, `Sender`, `Receipient`, `Amount`) VALUES
(1, 'Aditi', 'Muskan', 100),
(2, 'Archie', 'Muskan', 100),
(3, 'Archie', 'Muskan', 100),
(4, 'Archie', 'Muskan', 100),
(5, 'Archie', 'Muskan', 100),
(6, 'Jagmani', 'Jhalak', 100),
(7, 'Jagmani', 'Jhalak', 100),
(8, 'Aditi', 'Nikita', 1),
(9, 'Aditi', 'Nikita', 2),
(10, 'Archie', 'Jhalak', 5),
(11, 'Archie', 'Nikita', 10),
(12, 'Archie', 'Nikita', 10),
(13, 'Aditi', 'Jagmani', 1),
(14, 'Archie', 'Madhurima', 5),
(15, 'Aditi', 'Vaishnavi', 12),
(16, 'Aditi', 'Vandana', 13),
(17, 'Aditi', 'Vandana', 13),
(18, 'Jagmani', 'Vaishnavi', 1),
(19, 'Archie', 'Muskan', 250),
(20, 'Muskan', 'Archie', 200);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
