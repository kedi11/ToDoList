-- phpMyAdmin SQL Dump
-- version 4.0.4.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 09, 2017 at 03:16 AM
-- Server version: 5.6.13
-- PHP Version: 5.4.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `csc154_db`
--
CREATE DATABASE IF NOT EXISTS `csc154_db` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `csc154_db`;

-- --------------------------------------------------------

--
-- Table structure for table `lists`
--

CREATE TABLE IF NOT EXISTS `lists` (
  `ListID` int(11) NOT NULL AUTO_INCREMENT,
  `UserID` int(11) NOT NULL,
  `sListName` varchar(50) NOT NULL,
  `dCreated` datetime NOT NULL,
  `dUpdated` datetime NOT NULL,
  `dDeleted` datetime DEFAULT NULL,
  PRIMARY KEY (`ListID`),
  KEY `users_userID_fk` (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE IF NOT EXISTS `tasks` (
  `TaskID` int(11) NOT NULL AUTO_INCREMENT,
  `ListID` int(11) NOT NULL,
  `sTaskName` varchar(50) NOT NULL,
  `bComplete` tinyint(1) NOT NULL,
  `dDue` datetime NOT NULL,
  `dCreated` datetime NOT NULL,
  `dUpdated` datetime NOT NULL,
  `dDeleted` datetime DEFAULT NULL,
  PRIMARY KEY (`TaskID`),
  KEY `lists_listID_fk` (`ListID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `UserID` int(11) NOT NULL AUTO_INCREMENT,
  `sUserName` varchar(50) NOT NULL,
  `sEmail` varchar(50) NOT NULL,
  `sPassword` varchar(50) NOT NULL,
  `dCreated` datetime NOT NULL,
  `dUpdated` datetime NOT NULL,
  `dDeleted` datetime DEFAULT NULL,
  PRIMARY KEY (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `lists`
--
ALTER TABLE `lists`
  ADD CONSTRAINT `users_userID_fk` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`);

--
-- Constraints for table `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `lists_listID_fk` FOREIGN KEY (`ListID`) REFERENCES `lists` (`ListID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
