-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 08, 2018 at 11:11 PM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `etbsjs`
--

-- --------------------------------------------------------

--
-- Table structure for table `extensions`
--

CREATE TABLE `extensions` (
  `extension` varchar(20) NOT NULL,
  `clientid` varchar(20) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `orgid` int(11) DEFAULT '0',
  `exttype` varchar(50) NOT NULL DEFAULT 'Normal',
  `has_license` int(1) NOT NULL,
  `budget` decimal(10,0) NOT NULL DEFAULT '0',
  `balance` decimal(10,0) NOT NULL DEFAULT '0',
  `tenant` varchar(30) DEFAULT NULL,
  `authorization_code` varchar(50) DEFAULT NULL,
  `rent_charge` decimal(10,0) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `extensions`
--

INSERT INTO `extensions` (`extension`, `clientid`, `name`, `orgid`, `exttype`, `has_license`, `budget`, `balance`, `tenant`, `authorization_code`, `rent_charge`, `created_at`, `updated_on`) VALUES
('extension1', 'clientid1', 'name1', 1, 'Normal', 0, '0', '0', 'tenant1', 'authorization_code1', '0', '0000-00-00 00:00:00', '2018-09-13 21:10:43'),
('extension2', 'clientid2', 'name2', 2, 'Normal', 0, '0', '0', 'tenant2', 'authorization_code2', '0', '0000-00-00 00:00:00', '2018-09-19 07:39:52');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `group_id` int(11) NOT NULL,
  `group_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`group_id`, `group_name`) VALUES
(1, 'group1'),
(2, 'group2'),
(3, 'group3'),
(4, 'group4'),
(5, 'group5'),
(6, 'group6'),
(7, 'group7'),
(8, 'group8'),
(9, 'group9'),
(10, 'group10'),
(11, 'group11'),
(12, 'group12'),
(13, 'grou13'),
(14, 'group14'),
(15, 'group15');

-- --------------------------------------------------------

--
-- Table structure for table `organizations`
--

CREATE TABLE `organizations` (
  `orgid` int(10) UNSIGNED NOT NULL,
  `org_name` varchar(100) DEFAULT NULL,
  `parent_orgid` int(11) DEFAULT NULL,
  `budget` decimal(10,0) NOT NULL DEFAULT '0',
  `clientid` varchar(20) DEFAULT NULL,
  `org_path` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `organizations`
--

INSERT INTO `organizations` (`orgid`, `org_name`, `parent_orgid`, `budget`, `clientid`, `org_path`, `created_at`, `updated_on`) VALUES
(6, 'org_name1', NULL, '0', '1', '', '0000-00-00 00:00:00', '2018-09-24 19:24:35'),
(7, 'org_name2', NULL, '0', '2', '', '0000-00-00 00:00:00', '2018-09-24 19:24:35');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `permission` varchar(100) NOT NULL,
  `profileid` int(11) NOT NULL,
  `perm_type` varchar(30) NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`permission`, `profileid`, `perm_type`, `is_active`) VALUES
('permission1', 888, 'perm_type1', 0),
('permission2', 0, 'perm_type2', 0),
('permission3', 0, 'perm_type3', 0),
('permission5', 0, 'perm_type5', 0),
('perm1', 12, 'perm_type5', 0),
('permission1', 888, 'perm_type55', 1),
('permission22', 8, 'perm_type22', 0),
('permission33', 8, 'perm_type33', 0),
('perm2', 12, 'pt2', 0),
('perm1', 12, '1', 0),
('perm12', 1, '12', 0),
('perm3', 12, 'pt3', 0),
('perm12', 1, '11', 0),
('permission1', 888, 'typeA', 0),
('ueu55555', 12, '55555', 0),
('empty0', 12, '909', 0),
('empty1', 12, '1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `rolename` varchar(50) NOT NULL,
  `profileid` int(11) NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`rolename`, `profileid`, `is_active`) VALUES
('Role1', 12, 1),
('Role2', 2, 0),
('Role3', 3, 0),
('Role10', 10, 0),
('Role5', 5, 0),
('Role9', 9, 0),
('Role4', 4, 0),
('Role6', 6, 0),
('Role7', 7, 0),
('Role8', 8, 0),
('Role111', 111, 0),
('Rolename888', 888, 0),
('Role`', 1, 0),
('role88', 8, 0),
('Role1', 8, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `clientid` varchar(20) DEFAULT NULL,
  `rolename` varchar(50) DEFAULT NULL,
  `extension` varchar(20) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `logo` text,
  `company` varchar(150) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `is_active` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `clientid`, `rolename`, `extension`, `name`, `logo`, `company`, `email`, `mobile`, `fax`, `is_active`) VALUES
('user1', NULL, '', 'Role1', '', '', '', '', '', '', '', 0),
('user2', NULL, NULL, 'Role1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('user3', NULL, NULL, 'Role1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('user4', NULL, NULL, 'Role1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('user5', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('user66', NULL, '6', '', '6', '6', '6', '6', '6', '6', '6', 6),
('user87', '1', '', 'role88', '', 'name87', 'logo87', 'company87', '', '', '', 0),
('user0', NULL, '', NULL, '', '', '', '', '', '', '', 0),
('user9', NULL, '', NULL, '', '', '', '', '', '', '', 0),
('user10', NULL, '', NULL, '', '', '', '', '', '', '', 0),
('user11', NULL, '', NULL, '', '', '', '', '', '', '', 0),
('user00', NULL, 'client00', 'Role1', 'lllllkpkp', 'name00', 'logo00', 'company00', 'knopsod@gmail.com', '0877778888', '', 0),
('user888', NULL, '', NULL, '', '', '', '', '', '', '', 0),
('user88', NULL, '', NULL, '', '', '', '', '', '', '', 0),
('user000', NULL, '', NULL, '', '', '', '', '', '', '', 0),
('knopsod', NULL, 'client00', 'Role1', 'extension00', 'name', 'logo00', 'company00', 'knopsod@gmail.com', '0877778888', '', 1),
('kkk', NULL, '', 'Role10', '', '', '', '', '', '', '', 0),
('knopsod1234', NULL, '', NULL, '', '', '', '', '', '', '', 0),
('knopsod000', NULL, '', NULL, '', '', '', '', '', '', '', 0),
('knopsod999', NULL, '2', NULL, 'extension2', '', '', '', '', '', '', 0),
('k4444', '1111', '2', 'Role6', 'extension2', '', '', '', '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_group`
--

CREATE TABLE `user_group` (
  `username` varchar(50) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_group`
--

INSERT INTO `user_group` (`username`, `group_id`) VALUES
('k4444', 2),
('k4444', 4),
('k4444', 6),
('k4444', 8),
('k4444', 10),
('knopsod999', 9),
('user1', 1),
('user2', 2),
('user2', 4),
('user6', 4),
('user66', 1),
('user66', 2),
('user7', 1),
('user7', 2),
('user7', 3),
('user7', 4),
('user77', 1),
('user77', 2),
('user87', 1),
('user87', 2),
('user87', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `extensions`
--
ALTER TABLE `extensions`
  ADD PRIMARY KEY (`extension`,`clientid`) USING BTREE,
  ADD KEY `idx_01` (`orgid`) USING BTREE;

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`group_id`);

--
-- Indexes for table `organizations`
--
ALTER TABLE `organizations`
  ADD PRIMARY KEY (`orgid`) USING BTREE;

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`permission`,`profileid`,`perm_type`) USING BTREE;

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`rolename`,`profileid`) USING BTREE;

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`) USING BTREE,
  ADD KEY `idx_01` (`clientid`) USING BTREE;

--
-- Indexes for table `user_group`
--
ALTER TABLE `user_group`
  ADD PRIMARY KEY (`username`,`group_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `organizations`
--
ALTER TABLE `organizations`
  MODIFY `orgid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
