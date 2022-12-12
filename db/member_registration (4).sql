-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 14, 2022 at 03:15 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5


--
-- Table structure for table `member_registration`
--

CREATE TABLE `member_registration` (
  `MemberID` int(11) NOT NULL,
  `Code` varchar(10) NOT NULL,
  `Church` varchar(100) NOT NULL,
  `FName` varchar(100) NOT NULL,
  `MName` varchar(100) NOT NULL,
  `LName` varchar(100) NOT NULL,
  `Phone_Number` varchar(10) NOT NULL,
  `DOB` date DEFAULT NULL,
  `Gender` varchar(1) NOT NULL,
  `Department` varchar(100) NOT NULL,
  `Love_Group` varchar(100) NOT NULL,
  `College` varchar(100) NOT NULL,
  `Zone` varchar(100) NOT NULL,
  `Branch` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `Street` varchar(100) NOT NULL,
  `City` varchar(100) NOT NULL,
  `State` varchar(100) NOT NULL,
  `Country` varchar(100) NOT NULL,
  `Member_Level` varchar(50) DEFAULT 'Member',
  `Minister_in_Charge` varchar(100) NOT NULL,
  `Active_Account` varchar(3) DEFAULT 'YES',
  `DateAdded` timestamp NOT NULL DEFAULT current_timestamp(),
  `Added_By` varchar(50) NOT NULL,
  `Date_Added` date NOT NULL,
  `Time_Added` time NOT NULL,
  `Discharged` varchar(10) DEFAULT 'NO'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;



--
-- Indexes for table `member_registration`
--
ALTER TABLE `member_registration`
  ADD PRIMARY KEY (`MemberID`),
  ADD UNIQUE KEY `Phone_Number` (`Phone_Number`),
  ADD UNIQUE KEY `Code` (`Code`);

