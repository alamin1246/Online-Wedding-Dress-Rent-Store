-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 19, 2014 at 08:59 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_master`
--

CREATE TABLE IF NOT EXISTS `admin_master` (
  `AdminId` int(11) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  PRIMARY KEY (`AdminId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin_master`
--

INSERT INTO `admin_master` (`AdminId`, `UserName`, `Password`) VALUES
(1, 'admin', 'admin'),
(2, 'sarmin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `category_master`
--

CREATE TABLE IF NOT EXISTS `category_master` (
  `CategoryId` int(11) NOT NULL AUTO_INCREMENT,
  `CategoryName` varchar(20) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `Image` varchar(100) NOT NULL,
  PRIMARY KEY (`CategoryId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `category_master`
--

INSERT INTO `category_master` (`CategoryId`, `CategoryName`, `Description`, `Image`) VALUES
(1, 'Wedding Saress', 'Bridal Saress', 'Saress.jpg'),
(3, 'Wedding Lehenga', 'Bridal Lehenga', 'Lehenga.jpg'),
(4, 'Wedding Panjabi', 'Bridal Panjabi', 'Panjabi.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `customer_registration`
--

CREATE TABLE IF NOT EXISTS `customer_registration` (
  `CustomerId` int(11) NOT NULL AUTO_INCREMENT,
  `CustomerName` varchar(20) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `City` varchar(20) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Mobile` bigint(10) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `BirthDate` date NOT NULL,
  `UserName` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  PRIMARY KEY (`CustomerId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `customer_registration`
--

INSERT INTO `customer_registration` (`CustomerId`, `CustomerName`, `Address`, `City`, `Email`, `Mobile`, `Gender`, `BirthDate`, `UserName`, `Password`) VALUES
(1, 'Rahima Khatun', 'Mohammadpur', 'Dhaka', 'rahima@gmail.com', 29750634436, 'Female', '1998-03-11', 'rahima', 'ra98'),
(2, 'Faisal Mia', 'Puran Dhaka', 'Dhaka', 'faisal@gmail.com', 69344576354, 'Male', '1996-03-11', 'faisal', 'ud96');

-- --------------------------------------------------------

--
-- Table structure for table `feedback_master`
--

CREATE TABLE IF NOT EXISTS `feedback_master` (
  `FeedbackId` int(11) NOT NULL AUTO_INCREMENT,
  `CustomerId` int(11) NOT NULL,
  `Feedback` varchar(200) NOT NULL,
  `Date` date NOT NULL,
  PRIMARY KEY (`FeedbackId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `feedback_master`
--

INSERT INTO `feedback_master` (`FeedbackId`, `CustomerId`, `Feedback`, `Date`) VALUES
(1, 1, 'Nice Clothes i got from your website. Thank You', '2020-04-17');

-- --------------------------------------------------------

--
-- Table structure for table `item_master`
--

CREATE TABLE IF NOT EXISTS `item_master` (
  `ItemId` int(11) NOT NULL AUTO_INCREMENT,
  `CategoryId` int(11) NOT NULL,
  `ItemName` varchar(20) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `Size` varchar(10) NOT NULL,
  `Image` varchar(100) NOT NULL,
  `Price` float NOT NULL,
  `Discount` float NOT NULL,
  `Total` float NOT NULL,
  PRIMARY KEY (`ItemId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `item_master`
--

INSERT INTO `item_master` (`ItemId`, `CategoryId`, `ItemName`, `Description`, `Size`, `Image`, `Price`, `Discount`, `Total`) VALUES
(1, 1, 'Wedding Saress', 'Nice Look Boot Cut', 'Large', 'Saress.jpg', 4000, 500, 3500),
(2, 3, 'Wedding Lehenga', 'Wedding Lehenga', 'Medium', 'Lehenga.jpg', 3500, 500, 3000),
(3, 4, 'Wedding Panjabi', 'Wedding Panjabi in all colours', 'Large', 'Panjabi.jpg', 5000, 500, 4500);

-- --------------------------------------------------------

--
-- Table structure for table `offer_master`
--

CREATE TABLE IF NOT EXISTS `offer_master` (
  `OfferId` int(11) NOT NULL AUTO_INCREMENT,
  `Offer` varchar(50) NOT NULL,
  `Detail` varchar(200) NOT NULL,
  `Valid` date NOT NULL,
  PRIMARY KEY (`OfferId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `offer_master`
--

INSERT INTO `offer_master` (`OfferId`, `Offer`, `Detail`, `Valid`) VALUES
(2, 'Buy 2 Get 1 Free', 'On a Purchase of 2 Branded Saress Get 1 3pic Free ', '2020-04-17');

-- --------------------------------------------------------

--
-- Table structure for table `shopping_cart`
--

CREATE TABLE IF NOT EXISTS `shopping_cart` (
  `CartId` int(11) NOT NULL AUTO_INCREMENT,
  `CustomerId` int(11) NOT NULL,
  `ItemName` varchar(20) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Price` float NOT NULL,
  `Total` float NOT NULL,
  `OrderDate` date NOT NULL,
  PRIMARY KEY (`CartId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `shopping_cart`
--

INSERT INTO `shopping_cart` (`CartId`, `CustomerId`, `ItemName`, `Quantity`, `Price`, `Total`, `OrderDate`) VALUES
(6, 1, 'Wedding Saress', 1, 3500, 3500, '2020-04-17'),
(7, 2, 'Wedding Panjabi', 1, 4500, 4500, '2020-04-17');

-- --------------------------------------------------------

--
-- Table structure for table `shopping_cart_final`
--

CREATE TABLE IF NOT EXISTS `shopping_cart_final` (
  `CartId` int(11) NOT NULL AUTO_INCREMENT,
  `CustomerId` int(11) NOT NULL,
  `ItemName` varchar(20) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Price` float NOT NULL,
  `Total` float NOT NULL,
  `OrderDate` date NOT NULL,
  PRIMARY KEY (`CartId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `shopping_cart_final`
--

INSERT INTO `shopping_cart_final` (`CartId`, `CustomerId`, `ItemName`, `Quantity`, `Price`, `Total`, `OrderDate`) VALUES
(1, 1, 'Wedding Saress', 2, 3500, 7000, '2020-04-17'),
(2, 1, 'Wedding Lehenga', 1, 3500, 3500, '2020-04-17'),
(4, 2, 'Wedding Panjab', 3, 4500, 13500, '2020-04-17'),
(5, 2, 'Wedding Panjab', 2, 4500, 9000, '2020-04-17');
