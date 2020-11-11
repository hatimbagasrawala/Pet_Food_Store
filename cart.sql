-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2018 at 07:30 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cart`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `coupon`
--

CREATE TABLE `coupon` (
  `id` int(11) NOT NULL,
  `code` varchar(20) NOT NULL,
  `disc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coupon`
--

INSERT INTO `coupon` (`id`, `code`, `disc`) VALUES
(1, 'c45683437', 6),
(5, 'h45683437', 10),
(6, 'Free20', 10),
(7, 'my', 10),
(8, 'HO1', 10),
(9, 'hellodecember', 55);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `oid` int(11) NOT NULL,
  `feedback` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `uid`, `oid`, `feedback`) VALUES
(1, 3, 18, 'Hello'),
(4, 3, 22, 'i like it'),
(5, 3, 23, 'Yea nice product'),
(6, 3, 24, 'nice'),
(7, 3, 28, 'himanshu makkar'),
(8, 3, 29, 'good'),
(10, 9, 34, 'great service');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(10) NOT NULL,
  `status` int(5) NOT NULL,
  `price` int(10) NOT NULL,
  `first` varchar(20) NOT NULL,
  `last` varchar(20) NOT NULL,
  `contact` bigint(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `shipping` varchar(100) NOT NULL,
  `billing` varchar(100) NOT NULL,
  `userid` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `status`, `price`, `first`, `last`, `contact`, `email`, `shipping`, `billing`, `userid`) VALUES
(1, 2, 350, 'deepesh', 'ramnani', 9991271776, 'dr@gmail.com', '#77/20 huda kaithal , haryana', '#77/20 huda kaithal , haryana', 3),
(2, 2, 350, 'deepesh', 'ramnani', 9991271776, 'dr@gmail.com', '#77/20 huda kaithal , haryana', '#77/20 huda kaithal , haryana', 3),
(3, 2, 350, 'deepesh', 'ramnani', 9991271776, 'dr@gmail.com', '#77/20 huda kaithal , haryana', '#77/20 huda kaithal , haryana', 3),
(4, 2, 1800, 'deepesh', 'ramnani', 9991271776, 'dr@gmail.com', '#77/20 huda kaithal , haryana', '#77/20 huda kaithal , haryana', 3),
(5, 2, 1000, 'deepesh', 'ramnani', 9991271776, 'dr@gmail.com', '#77/20 huda kaithal , haryana', '#77/20 huda kaithal , haryana', 3),
(6, 2, 1000, 'deepesh', 'ramnani', 123, 'dr@gmail.com', 'a', 'a', 0),
(7, 2, 4299, 'deepesh', 'ramnani', 9991271776, 'dr@gmail.com', '#77/20 huda kaithal , haryana', '#77/20 huda kaithal , haryana', 3),
(8, 2, 1000, 'deepesh', 'ramnani', 9991271776, 'dr@gmail.com', '#77/20 huda kaithal , haryana', '#77/20 huda kaithal , haryana', 3),
(9, 2, 1000, 'deepesh', 'ramnani', 9991271776, 'dr@gmail.com', '#77/20 huda kaithal , haryana', '#77/20 huda kaithal , haryana', 3),
(10, 2, 2400, 'deepesh', 'ramnani', 9991271776, 'dr@gmail.com', '#77/20 huda kaithal , haryana', '#77/20 huda kaithal , haryana', 3),
(11, 2, 1000, 'deepesh', 'ramnani', 9991271776, 'dr@gmail.com', '#77/20 huda kaithal , haryana', '#77/20 huda kaithal , haryana', 3),
(12, 2, 500, 'deepesh', 'ramnani', 9991271776, 'dr@gmail.com', '#77/20 huda kaithal , haryana', '#77/20 huda kaithal , haryana', 3),
(13, 2, 500, 'deepesh', 'ramnani', 9991271776, 'dr@gmail.com', '#77/20 huda kaithal , haryana', '#77/20 huda kaithal , haryana', 3),
(14, 2, 1840, 'deepesh', 'ramnani', 9991271776, 'dr@gmail.com', '#77/20 huda kaithal , haryana', '#77/20 huda kaithal , haryana', 3),
(15, 2, 1360, 'deepesh', 'ramnani', 9991271776, 'dr@gmail.com', '#77/20 huda kaithal , haryana', '#77/20 huda kaithal , haryana', 3),
(16, 2, 1360, 'deepesh', 'ramnani', 9991271776, 'dr@gmail.com', '#77/20 huda kaithal , haryana', '#77/20 huda kaithal , haryana', 3),
(17, 2, 640, 'deepesh', 'ramnani', 9991271776, 'dr@gmail.com', '#77/20 huda kaithal , haryana', '#77/20 huda kaithal , haryana', 3),
(18, 2, 1199, 'deepesh', 'ramnani', 9991271776, 'dr@gmail.com', '#77/20 huda kaithal , haryana', '#77/20 huda kaithal , haryana', 3),
(19, 2, 640, 'deepesh', 'ramnani', 9991271776, 'dr@gmail.com', '#77/20 huda kaithal , haryana', '#77/20 huda kaithal , haryana', 3),
(20, 2, 1999, 'deepesh', 'ramnani', 9991271776, 'dr@gmail.com', '#77/20 huda kaithal , haryana', '#77/20 huda kaithal , haryana', 3),
(21, 2, 1999, 'deepesh', 'ramnani', 9991271776, 'dr@gmail.com', '#77/20 huda kaithal , haryana', '#77/20 huda kaithal , haryana', 3),
(22, 2, 500, 'deepesh', 'ramnani', 9991271776, 'dr@gmail.com', '#77/20 huda kaithal , haryana', '#77/20 huda kaithal , haryana', 3),
(23, 2, 250, 'deepesh', 'ramnani', 9991271776, 'dr@gmail.com', '#77/20 huda kaithal , haryana', '#77/20 huda kaithal , haryana', 3),
(24, 2, 799, 'deepesh', 'ramnani', 9991271776, 'dr@gmail.com', '#77/20 huda kaithal , haryana', '#77/20 huda kaithal , haryana', 3),
(25, 2, 640, 'deepesh', 'ramnani', 9991271776, 'dr@gmail.com', '#77/20 huda kaithal , haryana', '#77/20 huda kaithal , haryana', 3),
(26, 2, 150, 'deepesh', 'ramnani', 9991271776, 'dr@gmail.com', '#77/20 huda kaithal , haryana', '#77/20 huda kaithal , haryana', 3),
(27, 2, 400, 'deepesh', 'ramnani', 999, 'dr@gmail.com', 'hhh', 'hhh', 0),
(28, 2, 640, 'deepesh', 'ramnani', 9991271776, 'dr@gmail.com', '#77/20 huda kaithal , haryana', '#77/20 huda kaithal , haryana', 3),
(29, 2, 1600, 'deepesh', 'ramnani', 9991271776, 'dr@gmail.com', '#77/20 huda kaithal , haryana', '#77/20 huda kaithal , haryana', 3),
(30, 2, 1600, 'deepesh', 'ramnani', 9898989898, 'dr@gmail.com', 'roorkee', 'roorkee', 0),
(31, 2, 1999, 'deepesh', 'ramnani', 9991271776, 'dr@gmail.com', '#77/20 huda kaithal , haryana', '#77/20 huda kaithal , haryana', 3),
(32, 2, 23, 'deepesh', 'ramnani', 9991271776, 'dr@gmail.com', '#77/20 huda kaithal , haryana', '#77/20 huda kaithal , haryana', 3),
(33, 1, 800, 'mustafa', 'saria', 7036017910, 'helloyaar@gmail.com', 'asdgasdghgads', 'asdgasdghgads', 9),
(34, 0, 1608, 'mustafa', 'saria', 7036017910, 'helloyaar@gmail.com', 'asdgasdghgads', 'asdgasdghgads', 9);

-- --------------------------------------------------------

--
-- Table structure for table `product1`
--

CREATE TABLE `product1` (
  `id` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `price` varchar(10) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `description` varchar(10000) NOT NULL,
  `brand` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `category` varchar(20) NOT NULL,
  `stock` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product1`
--

INSERT INTO `product1` (`id`, `name`, `price`, `sex`, `description`, `brand`, `type`, `category`, `stock`) VALUES
(1, 'xyz', '500', 'male', 'It\'s polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'gourmet', 'celebrity', 'dogfood', 0),
(2, 'xyz', '1500', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'gourmet', 'style', 'dogfood', 0),
(3, 'xyz', '800', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'gourmet', '============', 'dogfood', 0),
(4, 'xyz', '500', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'gourmet', 'celebrity', 'dogfood', 0),
(5, 'xyz', '500', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'gourmet', 'celebrity', 'dogfood', 0),
(6, 'xyz', '900', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'gourmet', '================', 'dogfood', 0),
(7, 'xyz', '800', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'gourmet', '================', 'dogfood', 0),
(8, 'xyz', '800', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'gourmet', '================', 'dogfood', 0),
(9, 'xyz', '800', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'gourmet', '================', 'dogfood', 0),
(10, 'xyz', '800', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'gourmet', '================', 'dogfood', 0),
(11, 'xyz', '1999', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'gourmet', 'style', 'dogfood', 0),
(12, 'xyz', '1999', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'gourmet', 'style', 'dogfood', 0),
(13, 'xyz', '1999', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'gourmet', 'style', 'dogfood', 0),
(14, 'xyz', '1999', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'gourmet', 'style', 'dogfood', 0),
(15, 'xyz', '299', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'gourmet', '================', 'dogfood', 0),
(16, 'xyz', '299', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'gourmet', '================', 'dogfood', 0),
(17, 'xyz', '699', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'gourmet', '================', 'dogfood', 0),
(18, 'xyz', '699', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'gourmet', '================', 'dogfood', 1),
(19, 'xyz', '699', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'gourmet', '================', 'dogfood', 1),
(20, 'xyz', '999', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'gourmet', '================', 'dogfood', 0),
(21, 'xyz', '999', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'gourmet', '================', 'dogfood', 0),
(22, 'xyz', '999', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'gourmet', '================', 'dogfood', 0),
(23, 'xyz', '999', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'gourmet', '================', 'dogfood', 1),
(24, 'xyz', '699', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'gourmet', '================', 'dogfood', 1),
(25, 'xyz', '699', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'gourmet', '================', 'dogfood', 1),
(26, 'xyz', '699', 'female', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'gourmet', '=====', 'dogfood', 0),
(27, 'xyz', '799', 'female', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'gourmet', '==', 'dogfood', 0),
(28, 'xyz', '699', 'female', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'gourmet', '=====', 'dogfood', 0),
(29, 'xyz', '799', 'female', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'gourmet', '==', 'dogfood', 0),
(30, 'xyz', '799', 'female', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'gourmet', '==', 'dogfood', 0),
(31, 'xyz', '699', 'female', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'gourmet', '=====', 'dogfood', 0),
(32, 'xyz', '599', 'female', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'gourmet', 'celebrity', 'dogfood', 0),
(33, 'xyz', '599', 'female', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'gourmet', 'celebrity', 'dogfood', 1),
(34, 'xyz', '599', 'female', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'gourmet', 'celebrity', 'dogfood', 1),
(35, 'xyz', '685', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'gourmet', '================', 'dogfood', 1),
(36, 'xyz', '685', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'gourmet', '================', 'dogfood', 0),
(37, 'xyz', '685', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'gourmet', '================', 'dogfood', 1),
(38, 'xyz', '685', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'gourmet', '================', 'dogfood', 1),
(39, 'xyz', '685', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'gourmet', '================', 'dogfood', 1),
(40, 'xyz', '999', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'gourmet', '================', 'dogfood', 1),
(41, 'xyz', '999', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'gourmet', '================', 'dogfood', 1),
(42, 'xyz', '999', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'gourmet', '================', 'dogfood', 1),
(43, 'xyz', '685', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'gourmet', '================', 'dogfood', 1),
(44, 'xyz', '999', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'gourmet', '================', 'dogfood', 1),
(45, 'xyz', '999', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'gourmet', '================', 'dogfood', 1),
(46, 'xyz', '800', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'gourmet', '================', 'dogfood', 1),
(47, 'xyz', '809', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'gourmet', '================', 'dogfood', 1),
(48, 'xyz', '609', 'female', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'gourmet', '================', 'dogfood', 1),
(49, 'xyz', '609', 'female', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'gourmet', '================', 'dogfood', 1),
(50, 'xyz', '609', 'female', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'gourmet', '================', 'dogfood', 0),
(51, 'xyz', '2000', 'female', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'gourmet', 'style', 'dogfood', 1),
(52, 'xyz', '2000', 'female', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'gourmet', 'style', 'dogfood', 0),
(53, 'xyz', '2000', 'female', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'gourmet', 'style', 'dogfood', 1),
(54, 'xyz', '1699', 'female', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'gourmet', 'style', 'dogfood', 1),
(55, 'xyz', '1699', 'female', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'gourmet', 'style', 'dogfood', 1),
(56, 'xyz', '1999', 'female', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'gourmet', 'style', 'dogfood', 1),
(57, 'xyz', '1999', 'female', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'gourmet', 'style', 'dogfood', 0),
(58, 'xyz', '1999', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'gourmet', 'style', 'dogfood', 1),
(59, 'xyz', '1999', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'gourmet', 'style', 'dogfood', 1),
(60, 'xyz', '1999', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'gourmet', 'style', 'dogfood', 1),
(61, 'xyz', '1999', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'gourmet', 'style', 'dogfood', 1),
(62, 'xyz', '2500', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'gourmet', 'style', 'dogfood', 1),
(63, 'xyz', '2500', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'gourmet', 'style', 'dogfood', 1),
(64, 'xyz', '2500', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'gourmet', 'style', 'dogfood', 1),
(65, 'xyz', '2500', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'gourmet', 'style', 'dogfood', 1),
(66, 'xyz', '1700', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'gourmet', 'style', 'dogfood', 1),
(67, 'xyz', '1700', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'gourmet', 'style', 'dogfood', 1),
(68, 'xyz', '2500', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'gourmet', 'style', 'dogfood', 1),
(69, 'xyz', '2500', 'male', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'gourmet', 'style', 'dogfood', 1),
(70, 'xyz', '999', 'female', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'gourmet', '================', 'dogfood', 1),
(71, 'xyz', '999', 'female', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'gourmet', '================', 'dogfood', 1),
(72, 'xyz', '999', 'female', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'gourmet', '================', 'dogfood', 1),
(73, 'xyz', '999', 'female', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'gourmet', '================', 'dogfood', 1),
(74, 'xyz', '699', 'female', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'gourmet', '================', 'dogfood', 1),
(75, 'xyz', '699', 'female', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'gourmet', '================', 'dogfood', 1),
(76, 'xyz', '699', 'female', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'gourmet', '================', 'dogfood', 0),
(77, 'xyz', '699', 'female', 'Its polar bears, and its America. Its Polarbearicana!\r\n\r\nPolarbearicana is an exclusive Americana inspired polar bear design from Twice As Warm. They are printing and shipping these patriotic polar t-shirts right here in America FOR A VERY LIMITED TIME ONLY (until June 5th). If you order one now, it will arrive at your door in time for the 4th of July!', 'gourmet', 'celebrity', 'dogfood', 0);

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `id` int(10) NOT NULL,
  `orderid` int(10) NOT NULL,
  `productid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`id`, `orderid`, `productid`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 4, 3),
(6, 5, 1),
(7, 6, 1),
(8, 7, 1),
(9, 7, 3),
(10, 7, 1),
(11, 7, 9),
(12, 7, 26),
(13, 8, 1),
(14, 9, 1),
(15, 10, 6),
(16, 10, 2),
(17, 11, 1),
(18, 12, 4),
(19, 13, 4),
(20, 14, 3),
(21, 14, 2),
(22, 15, 7),
(23, 15, 6),
(24, 16, 26),
(25, 17, 9),
(26, 18, 28),
(27, 18, 1),
(28, 19, 10),
(29, 20, 11),
(30, 21, 12),
(31, 22, 20),
(32, 23, 1),
(33, 24, 27),
(34, 25, 29),
(35, 26, 15),
(36, 27, 4),
(37, 28, 3),
(38, 29, 11),
(39, 30, 12),
(40, 31, 13),
(41, 32, 52),
(42, 32, 16),
(43, 33, 7),
(44, 34, 50),
(45, 34, 22);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `contact` text NOT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `dateofbirth` varchar(10) DEFAULT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  `emailid` varchar(30) NOT NULL,
  `billingAddress` varchar(100) NOT NULL,
  `ShippingAddress` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `firstname`, `lastname`, `contact`, `sex`, `dateofbirth`, `username`, `password`, `emailid`, `billingAddress`, `ShippingAddress`) VALUES
(4, 'a', 'a', '123', 'Male', '2015-09-17', 'a', 'a', 'a@a', 'a', 'a'),
(5, 'a', 'a', '8888888888', 'Male', '2015-10-10', 'as', 'as', 's@a', 'a', 'a'),
(6, 'pooja', 'singh', '8765544', 'Female', '2016-04-05', 'him', '123', 'ab@gmail.com', 'ggg', 'ggg'),
(7, 'himanshu', 'makkar', '999127177', 'Male', '2016-04-17', 'himanshu', '123', 'himanshu40makkar@gmail.com', '77/20 kaithal', '77/20 kaithal'),
(8, 'jatin', 'ahuja', '999127', 'Male', '2016-04-07', 'jatin', '123', 'jatin@ahuja.com', 'h.no 88 sector 20', 'h.no 88 sector 20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupon`
--
ALTER TABLE `coupon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product1`
--
ALTER TABLE `product1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `coupon`
--
ALTER TABLE `coupon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `product1`
--
ALTER TABLE `product1`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
