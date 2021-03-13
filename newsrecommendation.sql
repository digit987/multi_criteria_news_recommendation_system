-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2016 at 02:08 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `newsrecommendation`
--

-- --------------------------------------------------------

--
-- Table structure for table `defuzzifiedaverageratings`
--

CREATE TABLE IF NOT EXISTS `defuzzifiedaverageratings` (
  `criteria` int(11) DEFAULT NULL,
  `newsarticle1` decimal(11,0) DEFAULT NULL,
  `newsarticle2` decimal(11,0) DEFAULT NULL,
  `newsarticle3` decimal(11,0) DEFAULT NULL,
  `newsarticle4` decimal(11,0) DEFAULT NULL,
  `newsarticle5` decimal(11,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `defuzzifiedaverageratings`
--

INSERT INTO `defuzzifiedaverageratings` (`criteria`, `newsarticle1`, `newsarticle2`, `newsarticle3`, `newsarticle4`, `newsarticle5`) VALUES
(1, '2', '2', '3', '3', '2'),
(2, '2', '2', '3', '3', '2'),
(3, '2', '2', '3', '3', '2'),
(4, '2', '2', '3', '3', '2'),
(5, '2', '2', '3', '3', '2');

-- --------------------------------------------------------

--
-- Table structure for table `finalratings`
--

CREATE TABLE IF NOT EXISTS `finalratings` (
  `newsarticle1` float DEFAULT NULL,
  `newsarticle2` float DEFAULT NULL,
  `newsarticle3` float DEFAULT NULL,
  `newsarticle4` float DEFAULT NULL,
  `newsarticle5` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `finalratings`
--

INSERT INTO `finalratings` (`newsarticle1`, `newsarticle2`, `newsarticle3`, `newsarticle4`, `newsarticle5`) VALUES
(3, 3, 4.5, 4.5, 3);

-- --------------------------------------------------------

--
-- Table structure for table `fuzzifiedratings`
--

CREATE TABLE IF NOT EXISTS `fuzzifiedratings` (
  `userid` int(11) DEFAULT NULL,
  `criteria` int(11) DEFAULT NULL,
  `newsarticle1a` int(11) DEFAULT NULL,
  `newsarticle1b` int(11) DEFAULT NULL,
  `newsarticle1c` int(11) DEFAULT NULL,
  `newsarticle2a` int(11) DEFAULT NULL,
  `newsarticle2b` int(11) DEFAULT NULL,
  `newsarticle2c` int(11) DEFAULT NULL,
  `newsarticle3a` int(11) DEFAULT NULL,
  `newsarticle3b` int(11) DEFAULT NULL,
  `newsarticle3c` int(11) DEFAULT NULL,
  `newsarticle4a` int(11) DEFAULT NULL,
  `newsarticle4b` int(11) DEFAULT NULL,
  `newsarticle4c` int(11) DEFAULT NULL,
  `newsarticle5a` int(11) DEFAULT NULL,
  `newsarticle5b` int(11) DEFAULT NULL,
  `newsarticle5c` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fuzzifiedratings`
--

INSERT INTO `fuzzifiedratings` (`userid`, `criteria`, `newsarticle1a`, `newsarticle1b`, `newsarticle1c`, `newsarticle2a`, `newsarticle2b`, `newsarticle2c`, `newsarticle3a`, `newsarticle3b`, `newsarticle3c`, `newsarticle4a`, `newsarticle4b`, `newsarticle4c`, `newsarticle5a`, `newsarticle5b`, `newsarticle5c`) VALUES
(1, 1, 2, 3, 4, 0, 1, 2, 2, 3, 4, 2, 3, 4, 1, 2, 3),
(1, 2, 0, 1, 2, 0, 1, 2, 2, 3, 4, 0, 1, 2, 1, 2, 3),
(1, 3, 1, 2, 3, 1, 2, 3, 2, 3, 4, 1, 2, 3, 1, 2, 3),
(1, 4, 1, 2, 3, 1, 2, 3, 2, 3, 4, 1, 2, 3, 1, 2, 3),
(1, 5, 2, 3, 4, 2, 3, 4, 2, 3, 4, 2, 3, 4, 2, 3, 4),
(2, 1, 2, 3, 4, 1, 2, 3, 2, 3, 4, 2, 3, 4, 2, 3, 4),
(2, 2, 1, 2, 3, 0, 1, 2, 2, 3, 4, 1, 2, 3, 1, 2, 3),
(2, 3, 2, 3, 4, 0, 1, 2, 2, 3, 4, 2, 3, 4, 1, 2, 3),
(2, 4, 0, 1, 2, 0, 1, 2, 2, 3, 4, 2, 3, 4, 1, 2, 3),
(2, 5, 2, 3, 4, 0, 1, 2, 2, 3, 4, 0, 1, 2, 1, 2, 3),
(3, 1, 0, 1, 2, 0, 1, 2, 2, 3, 4, 2, 3, 4, 1, 2, 3),
(3, 2, 0, 1, 2, 0, 1, 2, 2, 3, 4, 2, 3, 4, 1, 2, 3),
(3, 3, 2, 3, 4, 1, 2, 3, 2, 3, 4, 2, 3, 4, 1, 2, 3),
(3, 4, 2, 3, 4, 0, 1, 2, 2, 3, 4, 0, 1, 2, 1, 2, 3),
(3, 5, 0, 1, 2, 0, 1, 2, 2, 3, 4, 2, 3, 4, 1, 2, 3),
(4, 1, 0, 1, 2, 0, 1, 2, 2, 3, 4, 2, 3, 4, 1, 2, 3),
(4, 2, 2, 3, 4, 0, 1, 2, 2, 3, 4, 2, 3, 4, 1, 2, 3),
(4, 3, 0, 1, 2, 0, 1, 2, 2, 3, 4, 2, 3, 4, 2, 3, 4),
(4, 4, 0, 1, 2, 1, 2, 3, 2, 3, 4, 2, 3, 4, 1, 2, 3),
(4, 5, 2, 3, 4, 0, 1, 2, 2, 3, 4, 0, 1, 2, 0, 1, 2),
(5, 1, 0, 1, 2, 2, 3, 4, 2, 3, 4, 2, 3, 4, 1, 2, 3),
(5, 2, 0, 1, 2, 0, 1, 2, 2, 3, 4, 2, 3, 4, 1, 2, 3),
(5, 3, 0, 1, 2, 0, 1, 2, 2, 3, 4, 2, 3, 4, 1, 2, 3),
(5, 4, 1, 2, 3, 2, 3, 4, 2, 3, 4, 2, 3, 4, 1, 2, 3),
(5, 5, 1, 2, 3, 2, 3, 4, 2, 3, 4, 2, 3, 4, 0, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `linguisticratings`
--

CREATE TABLE IF NOT EXISTS `linguisticratings` (
  `userid` int(11) NOT NULL,
  `criteria` int(11) NOT NULL,
  `newsarticle1` varchar(30) NOT NULL,
  `newsarticle2` varchar(30) NOT NULL,
  `newsarticle3` varchar(30) NOT NULL,
  `newsarticle4` varchar(30) NOT NULL,
  `newsarticle5` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `linguisticratings`
--

INSERT INTO `linguisticratings` (`userid`, `criteria`, `newsarticle1`, `newsarticle2`, `newsarticle3`, `newsarticle4`, `newsarticle5`) VALUES
(1, 1, 'good', 'bad', 'bad', 'good', 'average'),
(1, 2, 'bad', 'bad', 'good', 'bad', 'average'),
(1, 3, 'average', 'average', 'bad', 'average', 'average'),
(1, 4, 'average', 'good', 'average', 'good', 'bad'),
(1, 5, 'good', 'good', 'bad', 'good', 'good'),
(2, 1, 'good', 'average', 'bad', 'good', 'average'),
(2, 2, 'average', 'bad', 'bad', 'average', 'average'),
(2, 3, 'good', 'bad', 'bad', 'good', 'average'),
(2, 4, 'bad', 'bad', 'bad', 'good', 'average'),
(2, 5, 'good', 'bad', 'bad', 'bad', 'average'),
(3, 1, 'bad', 'bad', 'bad', 'good', 'average'),
(3, 2, 'bad', 'bad', 'bad', 'good', 'average'),
(3, 3, 'good', 'average', 'bad', 'good', 'average'),
(3, 4, 'good', 'bad', 'bad', 'bad', 'average'),
(3, 5, 'bad', 'bad', 'bad', 'good', 'average'),
(4, 1, 'bad', 'bad', 'average', 'good', 'average'),
(4, 2, 'good', 'bad', 'bad', 'good', 'average'),
(4, 3, 'bad', 'bad', 'bad', 'good', 'good'),
(4, 4, 'bad', 'average', 'bad', 'good', 'average'),
(4, 5, 'good', 'bad', 'bad', 'bad', 'bad'),
(5, 1, 'bad', 'good', 'bad', 'good', 'average'),
(5, 2, 'bad', 'bad', 'bad', 'good', 'average'),
(5, 3, 'bad', 'bad', 'good', 'good', 'average'),
(5, 4, 'average', 'good', 'bad', 'good', 'average'),
(5, 5, 'average', 'good', 'bad', 'good', 'bad');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
