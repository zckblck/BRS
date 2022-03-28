-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 28, 2022 at 08:50 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `brs`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `adm_id` varchar(255) DEFAULT NULL,
  `adm_name` varchar(255) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `adm_id`, `adm_name`, `pass`) VALUES
(2, '2', 'admin', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220');

-- --------------------------------------------------------

--
-- Table structure for table `borrowed_items`
--

CREATE TABLE `borrowed_items` (
  `id` int(11) NOT NULL,
  `ctrl_no` varchar(255) DEFAULT NULL,
  `asset_tag_no` varchar(255) DEFAULT NULL,
  `item_no` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `serial_no` varchar(255) DEFAULT NULL,
  `item_details` varchar(255) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `returning_plan_date` datetime DEFAULT NULL,
  `borrowed_date` datetime DEFAULT NULL,
  `borrowed_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `borrowed_items`
--

INSERT INTO `borrowed_items` (`id`, `ctrl_no`, `asset_tag_no`, `item_no`, `category`, `serial_no`, `item_details`, `remarks`, `status`, `returning_plan_date`, `borrowed_date`, `borrowed_by`) VALUES
(1, 'MIS-01-008', 'SAMPLE-008', 'HDMI-CBL-001', 'HDMI Cable', '40385256546', 'HDMI CABLE', 'HDMI CABLE', 'BORROWED', '2022-03-31 00:00:00', '2022-03-21 16:18:44', 'admin'),
(2, 'MIS-01-004', 'SAMPLE-003', 'LAPTOP-001', 'Laptop', '10s547d83s', 'ACER LAPTOP', 'LAPTOP', 'BORROWED', '2022-03-24 00:00:00', '2022-03-21 16:18:53', 'admin'),
(3, 'MIS-01-002', 'SAMPLE-002', 'KEYBOARD-001', 'Keyboard', 'K3H493B', 'KEYBOARD', 'KEYBOARD', 'BORROWED', '2022-03-31 00:00:00', '2022-03-21 16:19:07', 'admin'),
(4, 'MIS-01-010', 'SAMPLE-010', 'DESKTOP-001', 'Desktop', 'YE89AKSAGCV34', 'DESKTOP', 'DESKTOP', 'BORROWED', '2022-03-31 00:00:00', '2022-03-21 16:19:14', 'admin'),
(5, 'MIS-01-016', 'SAMPLE-016', 'KEYBOARD-004', 'Keyboard', '3AS0QWS45356547', 'keyboard', 'KEYBOARD', 'BORROWED', '2022-04-08 00:00:00', '2022-03-21 16:19:22', 'admin'),
(6, 'MIS-01-009', 'SAMPLE-009', 'FLASHDRIVE-001', 'Flashdrive', 'FVCAE0EA4A', 'FLASH DRIVE', 'FLASH DRIVE', 'BORROWED', '2022-03-25 00:00:00', '2022-03-21 16:19:31', 'admin'),
(7, 'MIS-01-014', 'SAMPLE-014', 'MONITOR-001', 'Monitor', '544QW84893', 'MONITOR', 'MONITOR', 'BORROWED', '2022-04-01 00:00:00', '2022-03-21 16:19:39', 'admin'),
(8, 'MIS-01-017', 'SAMPLE-017', 'EXT-HDD-001', 'External HDD', '564regfdgfg', 'EXTERNAL HDD', 'EXTERNAL HDD', 'BORROWED', '2022-04-01 00:00:00', '2022-03-21 16:19:46', 'admin'),
(9, 'MIS-01-021', 'SAMPLE-021', 'LAPTOP-002', 'Laptop', 'EWEDC544QW84893', 'DELL LAPTOP', 'DELL LAPTOP', 'BORROWED', '2022-04-02 00:00:00', '2022-03-21 16:19:54', 'admin'),
(10, 'MIS-01-019', 'SAMPLE-019', 'DPORT-001', 'DisplayPort Cable', 'K3H493B3424', 'DISPLAY PORT', 'DISPLAY PORT', 'BORROWED', '2022-04-02 00:00:00', '2022-03-21 16:20:01', 'admin'),
(11, 'MIS-01-020', 'SAMPLE-020', 'KEYBOARD-003', 'Keyboard', 'K3H493B90-90', 'KEYBOARD', 'KEYBOARD', 'BORROWED', '2022-04-01 00:00:00', '2022-03-21 16:20:09', 'admin'),
(12, 'MIS-01-018', 'SAMPLE-018', 'MOUSE-0018', 'Mouse', '11111111565TR45374985', 'MOUSE', 'MOUSE', 'BORROWED', '2022-03-26 00:00:00', '2022-03-21 16:20:18', 'admin'),
(13, 'MIS-01-011', 'SAMPLE-011', 'HP-WRKSTN-001', 'Workstation', 'JSKA09S76SC7A', 'WORKSTATION', 'WORKSTATION', 'BORROWED', '2022-03-26 00:00:00', '2022-03-21 16:20:55', 'admin'),
(14, 'MIS-01-007', 'SAMPLE-007', 'MOUSE-001', 'Mouse', '11111111565TR', 'MOUSE', 'MOUSE', 'BORROWED', '2022-04-06 00:00:00', '2022-03-21 16:21:05', 'admin'),
(15, 'MIS-01-001', 'SAMPLE-001', 'JABRA-001', 'Speaker', '97803-225', 'JABRA SPK', 'JABRA', 'BORROWED', '2022-04-06 00:00:00', '2022-03-21 16:22:45', 'admin'),
(16, 'MIS-01-006', 'SAMPLE-006', 'HEADSET-001', 'Headset', '234767894225', 'HEADSET', 'A4TECH', 'BORROWED', '2022-03-28 00:00:00', '2022-03-21 16:22:53', 'admin'),
(17, 'MIS-01-024', 'SAMPLE-024', 'VGA-001', 'VGA Cable', 'ASs4RQ3', 'VGA CABLE', 'VGA CABLE', 'BORROWED', '2022-03-24 00:00:00', '2022-03-21 16:25:53', 'admin'),
(18, 'MIS-01-001', 'SAMPLE-001', 'JABRA-001', 'Speaker', '97803-225', 'JABRA SPK', 'JABRA', 'BORROWED', '2022-03-23 00:00:00', '2022-03-22 09:34:53', 'admin'),
(19, 'MIS-01-008', 'SAMPLE-008', 'HDMI-CBL-001', 'HDMI Cable', '40385256546', 'HDMI CABLE', 'HDMI CABLE', 'BORROWED', '2022-03-25 00:00:00', '2022-03-22 09:40:44', 'admin'),
(20, 'MIS-01-004', 'SAMPLE-003', 'LAPTOP-001', 'Laptop', '10s547d83s', 'ACER LAPTOP', 'LAPTOP', 'BORROWED', '2022-03-24 00:00:00', '2022-03-22 12:27:03', 'admin'),
(21, 'MIS-01-022', 'SAMPLE-022', 'LAPTOP-003', 'Laptop', '115345111111565TR', 'HP Z BOOK WORKSTATION LAPTOP', 'HP Z BOOK WORKSTATION LAPTOP', 'BORROWED', '2022-03-25 00:00:00', '2022-03-22 12:27:15', 'admin'),
(22, 'MIS-01-023', 'SAMPLE-023', 'LAPTOP-004', 'Laptop', '97SD803-225FD', 'HP Z BOOK WORKSTATION LAPTOP', 'HP Z BOOK WORKSTATION LAPTOP', 'BORROWED', '2022-03-24 00:00:00', '2022-03-22 12:27:24', 'admin'),
(23, 'MIS-01-021', 'SAMPLE-021', 'LAPTOP-002', 'Laptop', 'EWEDC544QW84893', 'DELL LAPTOP', 'DELL LAPTOP', 'BORROWED', '2022-03-29 00:00:00', '2022-03-22 12:28:06', 'admin'),
(24, 'MIS-01-008', 'SAMPLE-008', 'HDMI-CBL-001', 'HDMI Cable', '40385256546', 'HDMI CABLE', 'HDMI CABLE', 'BORROWED', '2022-03-25 00:00:00', '2022-03-22 16:13:49', 'admin'),
(25, 'MIS-01-019', 'SAMPLE-019', 'DPORT-001', 'DisplayPort Cable', 'K3H493B3424', 'DISPLAY PORT', 'DISPLAY PORT', 'BORROWED', '2022-04-08 00:00:00', '2022-03-22 16:14:04', 'admin'),
(26, 'MIS-01-010', 'SAMPLE-010', 'DESKTOP-001', 'Desktop', 'YE89AKSAGCV34', 'DESKTOP', 'DESKTOP', 'BORROWED', '2022-03-24 00:00:00', '2022-03-22 16:14:16', 'admin'),
(27, 'MIS-01-014', 'SAMPLE-014', 'MONITOR-001', 'Monitor', '544QW84893', 'MONITOR', 'MONITOR', 'BORROWED', '2022-03-26 00:00:00', '2022-03-22 16:14:51', 'admin'),
(28, 'MIS-01-017', 'SAMPLE-017', 'EXT-HDD-001', 'External HDD', '564regfdgfg', 'EXTERNAL HDD', 'EXTERNAL HDD', 'BORROWED', '2022-03-23 00:00:00', '2022-03-22 16:15:05', 'admin'),
(29, 'MIS-01-001', 'SAMPLE-001', 'JABRA-001', 'Speaker', '97803-225', 'JABRA SPK', 'JABRA', 'BORROWED', '2022-04-02 00:00:00', '2022-03-22 16:15:21', 'admin'),
(30, 'MIS-01-001', 'SAMPLE-001', 'JABRA-001', 'Speaker', '97803-225', 'JABRA SPK', 'JABRA', 'BORROWED', '2022-04-06 00:00:00', '2022-03-22 16:15:38', 'admin'),
(31, 'MIS-01-001', 'SAMPLE-001', 'JABRA-001', 'Speaker', '97803-225', 'JABRA SPK', 'JABRA', 'BORROWED', '2022-03-25 00:00:00', '2022-03-24 16:41:16', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`) VALUES
(1, 'Laptop'),
(3, 'Desktop'),
(4, 'Workstation'),
(5, 'Monitor'),
(6, 'Keyboard'),
(7, 'Mouse'),
(8, 'Headset'),
(9, 'Speaker'),
(10, 'Flashdrive'),
(11, 'External HDD'),
(12, 'HDMI Cable'),
(13, 'DisplayPort Cable'),
(14, 'VGA Cable');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `department` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `department`) VALUES
(1, 'MIS'),
(2, 'JBRB'),
(3, 'EI'),
(4, 'TQM'),
(5, 'WHE'),
(6, 'PRT'),
(7, 'EV'),
(8, 'CON'),
(9, 'ADM'),
(10, 'FIN'),
(11, 'HRD'),
(12, 'TCE/CE'),
(13, 'MGMT');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `ctrl_no` varchar(255) DEFAULT NULL,
  `asset_tag_no` varchar(255) DEFAULT NULL,
  `item_no` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `serial_no` varchar(255) DEFAULT NULL,
  `item_details` varchar(255) DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `status` text DEFAULT NULL,
  `test` int(11) DEFAULT NULL,
  `borrowed_by` varchar(255) DEFAULT NULL,
  `item_added_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `ctrl_no`, `asset_tag_no`, `item_no`, `category`, `serial_no`, `item_details`, `remarks`, `status`, `test`, `borrowed_by`, `item_added_date`) VALUES
(1, 'MIS-01-001', 'SAMPLE-001', 'JABRA-001', 'Speaker', '97803-225', 'JABRA SPK', 'JABRA', 'BORROWED', NULL, 'admin', NULL),
(8, 'MIS-01-006', 'SAMPLE-006', 'HEADSET-001', 'Headset', '234767894225', 'HEADSET', 'A4TECH', 'AVAILABLE', NULL, '', NULL),
(9, 'MIS-01-002', 'SAMPLE-002', 'KEYBOARD-001', 'Keyboard', 'K3H493B', 'KEYBOARD', 'KEYBOARD', 'AVAILABLE', NULL, '', NULL),
(10, 'MIS-01-007', 'SAMPLE-007', 'MOUSE-001', 'Mouse', '11111111565TR', 'MOUSE', 'MOUSE', 'DISPOSED', NULL, '', NULL),
(11, 'MIS-01-008', 'SAMPLE-008', 'HDMI-CBL-001', 'HDMI Cable', '40385256546', 'HDMI CABLE', 'HDMI CABLE', 'AVAILABLE', NULL, '', '2022-01-26 08:18:45'),
(12, 'MIS-01-009', 'SAMPLE-009', 'FLASHDRIVE-001', 'Flashdrive', 'FVCAE0EA4A', 'FLASH DRIVE', 'FLASH DRIVE', 'AVAILABLE', NULL, '', '2022-01-26 13:18:28'),
(13, 'MIS-01-004', 'SAMPLE-003', 'LAPTOP-001', 'Laptop', '10s547d83s', 'ACER LAPTOP', 'LAPTOP', 'AVAILABLE', NULL, '', '2022-01-26 13:23:17'),
(14, 'MIS-01-010', 'SAMPLE-010', 'DESKTOP-001', 'Desktop', 'YE89AKSAGCV34', 'DESKTOP', 'DESKTOP', 'BORROWED', NULL, 'admin', '2022-01-26 13:26:32'),
(15, 'MIS-01-011', 'SAMPLE-011', 'HP-WRKSTN-001', 'Workstation', 'JSKA09S76SC7A', 'WORKSTATION', 'WORKSTATION', 'UNDER REPAIR', NULL, '', '2022-01-26 13:27:32'),
(26, 'MIS-01-015', 'SAMPLE-015', 'VGA-002', 'VGA Cable', '3AS0QWS', '23092839028', 'VGA CABLE', 'FOR DISPOSAL', NULL, '', '2022-02-09 15:24:53'),
(27, 'MIS-01-014', 'SAMPLE-014', 'MONITOR-001', 'Monitor', '544QW84893', 'MONITOR', 'MONITOR', 'BORROWED', NULL, 'admin', '2022-02-14 12:18:56'),
(28, 'MIS-01-016', 'SAMPLE-016', 'KEYBOARD-004', 'Keyboard', '3AS0QWS45356547', 'keyboard', 'KEYBOARD', 'AVAILABLE', NULL, '', '2022-03-10 13:16:02'),
(29, 'MIS-01-017', 'SAMPLE-017', 'EXT-HDD-001', 'External HDD', '564regfdgfg', 'EXTERNAL HDD', 'EXTERNAL HDD', 'BORROWED', NULL, 'admin', '2022-03-10 16:57:14'),
(30, 'MIS-01-018', 'SAMPLE-018', 'MOUSE-0018', 'Mouse', '11111111565TR45374985', 'MOUSE', 'MOUSE', 'AVAILABLE', NULL, '', '2022-03-13 17:32:26'),
(31, 'MIS-01-019', 'SAMPLE-019', 'DPORT-001', 'DisplayPort Cable', 'K3H493B3424', 'DISPLAY PORT', 'DISPLAY PORT', 'BORROWED', NULL, 'admin', '2022-03-21 13:21:17'),
(32, 'MIS-01-020', 'SAMPLE-020', 'KEYBOARD-003', 'Keyboard', 'K3H493B90-90', 'KEYBOARD', 'KEYBOARD', 'AVAILABLE', NULL, '', '2022-03-21 14:17:40'),
(33, 'MIS-01-021', 'SAMPLE-021', 'LAPTOP-002', 'Laptop', 'EWEDC544QW84893', 'DELL LAPTOP', 'DELL LAPTOP', 'AVAILABLE', NULL, '', '2022-03-21 14:18:46'),
(34, 'MIS-01-022', 'SAMPLE-022', 'LAPTOP-003', 'Laptop', '115345111111565TR', 'HP Z BOOK WORKSTATION LAPTOP', 'HP Z BOOK WORKSTATION LAPTOP', 'AVAILABLE', NULL, '', '2022-03-21 14:19:51'),
(35, 'MIS-01-023', 'SAMPLE-023', 'LAPTOP-004', 'Laptop', '97SD803-225FD', 'HP Z BOOK WORKSTATION LAPTOP', 'HP Z BOOK WORKSTATION LAPTOP', 'AVAILABLE', NULL, '', '2022-03-21 14:20:22'),
(36, 'MIS-01-024', 'SAMPLE-024', 'VGA-001', 'VGA Cable', 'ASs4RQ3', 'VGA CABLE', 'VGA CABLE', 'DISPOSED', NULL, '', '2022-03-21 16:23:38');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `log_type` varchar(255) DEFAULT NULL,
  `dated_log` date DEFAULT NULL,
  `log_by` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `department` text DEFAULT NULL,
  `ctrl_no` varchar(255) DEFAULT NULL,
  `asset_tag_no` varchar(255) DEFAULT NULL,
  `item_no` varchar(255) DEFAULT NULL,
  `category` text DEFAULT NULL,
  `serial_no` varchar(255) DEFAULT NULL,
  `item_details` varchar(255) DEFAULT NULL,
  `item_added_date` date DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `returning_plan_date` date DEFAULT NULL,
  `borrowed_date` datetime DEFAULT NULL,
  `borrowed_by` varchar(255) DEFAULT NULL,
  `returned_date` datetime DEFAULT NULL,
  `returned_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `log_type`, `dated_log`, `log_by`, `user_id`, `user_name`, `department`, `ctrl_no`, `asset_tag_no`, `item_no`, `category`, `serial_no`, `item_details`, `item_added_date`, `remarks`, `status`, `returning_plan_date`, `borrowed_date`, `borrowed_by`, `returned_date`, `returned_by`) VALUES
(1, 'BORROW', '2022-02-08', 'joy', '', '', '', 'MIS-01-002', 'SAMPLE-002', 'KEYBOARD-001', 'Keyboard', 'K3H493B', 'KEYBOARD', '0000-00-00', 'KEYBOARD', 'BORROWED', '2022-02-18', '2022-02-08 16:07:27', 'joy', '0000-00-00 00:00:00', ''),
(2, 'BORROW', '2022-02-08', 'KAISER', '', '', '', 'MIS-01-009', 'SAMPLE-009', 'FLASHDRIVE-001', 'Flashdrive', 'FVCAE0EA4A', 'FLASH DRIVE', '0000-00-00', 'FLASH DRIVE', 'BORROWED', '2022-02-09', '2022-02-08 16:07:58', 'KAISER', '0000-00-00 00:00:00', ''),
(3, 'RETURNED', '2022-02-08', 'joy', '', '', '', 'MIS-01-002', 'SAMPLE-002', 'KEYBOARD-001', 'Keyboard', 'K3H493B', 'KEYBOARD', '0000-00-00', 'KEYBOARD', 'RETURNED', '0000-00-00', '0000-00-00 00:00:00', '', '2022-02-08 16:08:18', 'joy'),
(4, 'RETURNED', '2022-02-08', 'KAISER', '', '', '', 'MIS-01-009', 'SAMPLE-009', 'FLASHDRIVE-001', 'Flashdrive', 'FVCAE0EA4A', 'FLASH DRIVE', '0000-00-00', 'FLASH DRIVE', 'RETURNED', '0000-00-00', '0000-00-00 00:00:00', '', '2022-02-08 16:08:26', 'KAISER'),
(5, 'BORROW', '2022-02-08', 'pet2086', '', '', '', 'MIS-01-001', 'SAMPLE-001', 'JABRA-001', 'Headset', '97803-225', 'JABRA HEADSET', '0000-00-00', 'JABRA', 'BORROWED', '2022-02-09', '2022-02-08 16:08:40', 'pet2086', '0000-00-00 00:00:00', ''),
(6, 'RETURNED', '2022-02-08', 'jet', '', '', '', 'MIS-01-001', 'SAMPLE-001', 'JABRA-001', 'Headset', '97803-225', 'JABRA HEADSET', '0000-00-00', 'JABRA', 'RETURNED', '0000-00-00', '0000-00-00 00:00:00', '', '2022-02-08 16:08:51', 'jet'),
(7, 'UPDATE ITEM', '2022-02-09', 'admin', '', '', '', 'MIS-01-012', 'SAMPLE-012', 'EXT-HDD-001', 'External HDD', '2F2QAAF2455', 'EXTERNAL HDD', '0000-00-00', 'EXTERNAL HDD', 'AVAILABLE', '0000-00-00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
(8, 'UPDATE USER', '2022-02-09', 'admin', 'user-006', 'JOEL', 'TCE/CE', '', '', '', '', '', '', '0000-00-00', '', '', '0000-00-00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
(9, 'ADD ITEM', '2022-02-09', 'admin', '', '', '', 'MIS-01-013', 'SAMPLE-013', 'DPORT-001', 'DisplayPort Cable', 'K3H493B54E', 'DISPLAY PORT', '2022-02-09', 'DISPLAY PORT', 'AVAILABLE', '0000-00-00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
(10, 'UPDATE ITEM', '2022-02-09', 'admin', '', '', '', 'MIS-01-013', 'SAMPLE-013', 'DPORT-001', 'DisplayPort Cable', 'K3H493B54E', 'DISPLAY PORT', '0000-00-00', 'DISPLAY PORT', 'FOR REPAIR', '0000-00-00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
(11, 'BORROW', '2022-02-09', 'pet2086', '', '', '', 'MIS-01-009', 'SAMPLE-009', 'FLASHDRIVE-001', 'Flashdrive', 'FVCAE0EA4A', 'FLASH DRIVE', '0000-00-00', 'FLASH DRIVE', 'BORROWED', '2022-02-11', '2022-02-09 14:07:00', 'pet2086', '0000-00-00 00:00:00', ''),
(12, 'ADD ITEM', '2022-02-09', 'admin', '', '', '', 'MIS-01-014', 'SAMPLE-014', 'KEYBOARD-002', 'Keyboard', '544QW84893', 'KEYBOARD', '2022-02-09', 'KEYBOARD', 'AVAILABLE', '0000-00-00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
(13, 'BORROW', '2022-02-09', 'admin', '', '', '', 'MIS-01-014', 'SAMPLE-014', 'KEYBOARD-002', 'Keyboard', '544QW84893', 'KEYBOARD', '0000-00-00', 'KEYBOARD', 'BORROWED', '2022-03-24', '2022-02-09 15:17:38', 'admin', '0000-00-00 00:00:00', ''),
(14, 'RETURNED', '2022-02-09', 'admin', '', '', '', 'MIS-01-014', 'SAMPLE-014', 'KEYBOARD-002', 'Keyboard', '544QW84893', 'KEYBOARD', '0000-00-00', 'KEYBOARD', 'RETURNED', '0000-00-00', '0000-00-00 00:00:00', '', '2022-02-09 15:20:39', 'admin'),
(15, 'ADD ITEM', '2022-02-09', 'admin', '', '', '', 'MIS-01-014', 'SAMPLE-014', 'KEYBOARD-003', 'Keyboard', '', '23092839028', '2022-02-09', 'KEYBOARD', 'AVAILABLE', '0000-00-00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
(16, 'BORROW', '2022-02-09', 'pet1857', '', '', '', 'MIS-01-015', 'SAMPLE-015', 'KEYBOARD-003', 'Keyboard', '', '23092839028', '0000-00-00', 'KEYBOARD', 'BORROWED', '2022-02-24', '2022-02-09 15:25:56', 'pet1857', '0000-00-00 00:00:00', ''),
(17, 'BORROW', '2022-02-09', 'admin', '', '', '', 'MIS-01-001', 'SAMPLE-001', 'JABRA-001', 'Headset', '97803-225', 'JABRA HEADSET', '0000-00-00', 'JABRA', 'BORROWED', '2022-02-18', '2022-02-09 16:38:16', 'admin', '0000-00-00 00:00:00', ''),
(18, 'RETURNED', '2022-02-09', 'admin', '', '', '', 'MIS-01-015', 'SAMPLE-015', 'KEYBOARD-003', 'Keyboard', '', '23092839028', '0000-00-00', 'KEYBOARD', 'RETURNED', '0000-00-00', '0000-00-00 00:00:00', '', '2022-02-09 16:41:03', 'admin'),
(19, 'RETURNED', '2022-02-09', 'admin', '', '', '', 'MIS-01-001', 'SAMPLE-001', 'JABRA-001', 'Headset', '97803-225', 'JABRA HEADSET', '0000-00-00', 'JABRA', 'RETURNED', '0000-00-00', '0000-00-00 00:00:00', '', '2022-02-09 16:41:30', 'admin'),
(20, 'BORROW', '2022-02-09', 'admin', '', '', '', 'MIS-01-015', 'SAMPLE-015', 'KEYBOARD-003', 'Keyboard', '', '23092839028', '0000-00-00', 'KEYBOARD', 'BORROWED', '2022-03-01', '2022-02-09 16:41:39', 'admin', '0000-00-00 00:00:00', ''),
(21, 'RETURNED', '2022-02-09', 'admin', '', '', '', 'MIS-01-015', 'SAMPLE-015', 'KEYBOARD-003', 'Keyboard', '', '23092839028', '0000-00-00', 'KEYBOARD', 'RETURNED', '0000-00-00', '0000-00-00 00:00:00', '', '2022-02-09 16:41:48', 'admin'),
(22, 'RETURNED', '2022-02-09', 'admin', '', '', '', 'MIS-01-009', 'SAMPLE-009', 'FLASHDRIVE-001', 'Flashdrive', 'FVCAE0EA4A', 'FLASH DRIVE', '0000-00-00', 'FLASH DRIVE', 'RETURNED', '0000-00-00', '0000-00-00 00:00:00', '', '2022-02-09 16:42:09', 'admin'),
(23, 'UPDATE ITEM', '2022-02-09', 'admin', '', '', '', 'MIS-01-015', 'SAMPLE-015', 'KEYBOARD-003', 'Keyboard', '', '23092839028', '0000-00-00', 'KEYBOARD', 'FOR REPAIR', '0000-00-00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
(24, 'UPDATE ITEM', '2022-02-09', 'admin', '', '', '', 'MIS-01-015', 'SAMPLE-015', 'KEYBOARD-003', 'Keyboard', '', '23092839028', '0000-00-00', 'KEYBOARD', 'FOR REPAIR', '0000-00-00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
(25, 'UPDATE ITEM', '2022-02-09', 'admin', '', '', '', 'MIS-01-015', 'SAMPLE-015', 'KEYBOARD-003', 'Keyboard', '', '23092839028', '0000-00-00', 'KEYBOARD', 'AVAILABLE', '0000-00-00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
(26, 'UPDATE ITEM', '2022-02-09', 'admin', '', '', '', 'MIS-01-013', 'SAMPLE-013', 'DPORT-001', 'DisplayPort Cable', 'K3H493B54E', 'DISPLAY PORT', '0000-00-00', 'DISPLAY PORT', 'UNDER REPAIR', '0000-00-00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
(27, 'UPDATE ITEM', '2022-02-09', 'admin', '', '', '', 'MIS-01-013', 'SAMPLE-013', 'DPORT-001', 'DisplayPort Cable', 'K3H493B54E', 'DISPLAY PORT', '0000-00-00', 'DISPLAY PORT', 'DISPOSED', '0000-00-00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
(28, 'UPDATE ITEM', '2022-02-09', 'admin', '', '', '', 'MIS-01-013', 'SAMPLE-013', 'DPORT-001', 'DisplayPort Cable', 'K3H493B54E', 'DISPLAY PORT', '0000-00-00', 'DISPLAY PORT', 'FOR DISPOSAL', '0000-00-00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
(29, 'UPDATE ITEM', '2022-02-09', 'admin', '', '', '', 'MIS-01-015', 'SAMPLE-015', 'KEYBOARD-003', 'Keyboard', '', '23092839028', '0000-00-00', 'KEYBOARD', 'UNDER REPAIR', '0000-00-00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
(30, 'UPDATE ITEM', '2022-02-09', 'admin', '', '', '', 'MIS-01-015', 'SAMPLE-015', 'KEYBOARD-003', 'Keyboard', '', '23092839028', '0000-00-00', 'KEYBOARD', 'AVAILABLE', '0000-00-00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
(31, 'UPDATE ITEM', '2022-02-09', 'admin', '', '', '', 'MIS-01-013', 'SAMPLE-013', 'DPORT-001', 'DisplayPort Cable', 'K3H493B54E', 'DISPLAY PORT', '0000-00-00', 'DISPLAY PORT', 'AVAILABLE', '0000-00-00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
(32, 'BORROW', '2022-02-09', 'pet2086', '', '', '', 'MIS-01-001', 'SAMPLE-001', 'JABRA-001', 'Headset', '97803-225', 'JABRA HEADSET', '0000-00-00', 'JABRA', 'BORROWED', '2022-02-10', '2022-02-09 17:00:36', 'pet2086', '0000-00-00 00:00:00', ''),
(33, 'BORROW', '2022-02-09', 'pet2086', '', '', '', 'MIS-01-009', 'SAMPLE-009', 'FLASHDRIVE-001', 'Flashdrive', 'FVCAE0EA4A', 'FLASH DRIVE', '0000-00-00', 'FLASH DRIVE', 'BORROWED', '2022-02-10', '2022-02-09 17:01:23', 'pet2086', '0000-00-00 00:00:00', ''),
(34, 'RETURNED', '2022-02-10', 'admin', '', '', '', 'MIS-01-009', 'SAMPLE-009', 'FLASHDRIVE-001', 'Flashdrive', 'FVCAE0EA4A', 'FLASH DRIVE', '0000-00-00', 'FLASH DRIVE', 'RETURNED', '0000-00-00', '0000-00-00 00:00:00', '', '2022-02-10 08:06:55', 'admin'),
(35, 'RETURNED', '2022-02-10', 'admin', '', '', '', 'MIS-01-001', 'SAMPLE-001', 'JABRA-001', 'Headset', '97803-225', 'JABRA HEADSET', '0000-00-00', 'JABRA', 'RETURNED', '0000-00-00', '0000-00-00 00:00:00', '', '2022-02-10 08:07:04', 'admin'),
(36, 'BORROW', '2022-02-10', 'admin', '', '', '', 'MIS-01-015', 'SAMPLE-015', 'KEYBOARD-003', 'Keyboard', '', '23092839028', '0000-00-00', 'KEYBOARD', 'BORROWED', '2022-02-23', '2022-02-10 08:07:26', 'admin', '0000-00-00 00:00:00', ''),
(37, 'BORROW', '2022-02-10', 'admin', '', '', '', 'MIS-01-001', 'SAMPLE-001', 'JABRA-001', 'Headset', '97803-225', 'JABRA HEADSET', '0000-00-00', 'JABRA', 'BORROWED', '2022-02-25', '2022-02-10 08:07:46', 'admin', '0000-00-00 00:00:00', ''),
(38, 'UPDATE ITEM', '2022-02-11', 'admin', '', '', '', 'MIS-01-013', 'SAMPLE-013', 'DPORT-001', 'DisplayPort Cable', 'K3H493B54E', 'DISPLAY PORT', '0000-00-00', 'DISPLAY PORT', 'UNDER REPAIR', '0000-00-00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
(39, 'UPDATE ITEM', '2022-02-11', 'admin', '', '', '', 'MIS-01-015', 'SAMPLE-015', 'KEYBOARD-003', 'Keyboard', '3AS0QWS', '23092839028', '0000-00-00', 'KEYBOARD', 'FOR DISPOSAL', '0000-00-00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
(40, 'UPDATE ITEM', '2022-02-11', 'admin', '', '', '', 'MIS-01-004', 'SAMPLE-003', 'LAPTOP-001', 'Laptop', '10s547d83s', 'ACER LAPTOP', '0000-00-00', 'LAPTOP', 'FOR DISPOSAL', '0000-00-00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
(41, 'UPDATE ITEM', '2022-02-11', 'admin', '', '', '', 'MIS-01-014', 'SAMPLE-014', 'KEYBOARD-002', 'Keyboard', '544QW84893', 'KEYBOARD', '0000-00-00', 'KEYBOARD', 'FOR DISPOSAL', '0000-00-00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
(42, 'UPDATE ITEM', '2022-02-11', 'admin', '', '', '', 'MIS-01-015', 'SAMPLE-015', 'KEYBOARD-003', 'Keyboard', '3AS0QWS', '23092839028', '0000-00-00', 'KEYBOARD', 'AVAILABLE', '0000-00-00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
(43, 'BORROW', '2022-02-11', 'admin', '', '', '', 'MIS-01-015', 'SAMPLE-015', 'KEYBOARD-003', 'Keyboard', '3AS0QWS', '23092839028', '0000-00-00', 'KEYBOARD', 'BORROWED', '2022-02-23', '2022-02-11 09:01:59', 'admin', '0000-00-00 00:00:00', ''),
(44, 'RETURNED', '2022-02-11', 'admin', '', '', '', 'MIS-01-015', 'SAMPLE-015', 'KEYBOARD-003', 'Keyboard', '3AS0QWS', '23092839028', '0000-00-00', 'KEYBOARD', 'RETURNED', '0000-00-00', '0000-00-00 00:00:00', '', '2022-02-11 09:02:09', 'admin'),
(45, 'RETURNED', '2022-02-11', 'admin', '', '', '', 'MIS-01-001', 'SAMPLE-001', 'JABRA-001', 'Headset', '97803-225', 'JABRA HEADSET', '0000-00-00', 'JABRA', 'RETURNED', '0000-00-00', '0000-00-00 00:00:00', '', '2022-02-11 09:02:18', 'admin'),
(46, 'BORROW', '2022-02-11', 'admin', '', '', '', 'MIS-01-015', 'SAMPLE-015', 'KEYBOARD-003', 'Keyboard', '3AS0QWS', '23092839028', '0000-00-00', 'KEYBOARD', 'BORROWED', '2022-02-17', '2022-02-11 09:36:34', 'admin', '0000-00-00 00:00:00', ''),
(47, 'RETURNED', '2022-02-11', 'admin', '', '', '', 'MIS-01-015', 'SAMPLE-015', 'KEYBOARD-003', 'Keyboard', '3AS0QWS', '23092839028', '0000-00-00', 'KEYBOARD', 'RETURNED', '0000-00-00', '0000-00-00 00:00:00', '', '2022-02-11 09:36:47', 'admin'),
(48, 'BORROW', '2022-02-11', 'pet2086', '', '', '', 'MIS-01-015', 'SAMPLE-015', 'KEYBOARD-003', 'Keyboard', '3AS0QWS', '23092839028', '0000-00-00', 'KEYBOARD', 'BORROWED', '2022-02-14', '2022-02-11 10:10:03', 'pet2086', '0000-00-00 00:00:00', ''),
(49, 'RETURNED', '2022-02-11', 'admin', '', '', '', 'MIS-01-015', 'SAMPLE-015', 'KEYBOARD-003', 'Keyboard', '3AS0QWS', '23092839028', '0000-00-00', 'KEYBOARD', 'RETURNED', '0000-00-00', '0000-00-00 00:00:00', '', '2022-02-11 10:10:51', 'admin'),
(50, 'BORROW', '2022-02-11', 'admin', '', '', '', 'MIS-01-001', 'SAMPLE-001', 'JABRA-001', 'Headset', '97803-225', 'JABRA HEADSET', '0000-00-00', 'JABRA', 'BORROWED', '2022-03-01', '2022-02-11 10:12:59', 'admin', '0000-00-00 00:00:00', ''),
(51, 'BORROW', '2022-02-11', 'admin', '', '', '', 'MIS-01-002', 'SAMPLE-002', 'KEYBOARD-001', 'Keyboard', 'K3H493B', 'KEYBOARD', '0000-00-00', 'KEYBOARD', 'BORROWED', '2022-02-23', '2022-02-11 10:13:05', 'admin', '0000-00-00 00:00:00', ''),
(52, 'BORROW', '2022-02-11', 'admin', '', '', '', 'MIS-01-012', 'SAMPLE-012', 'EXT-HDD-001', 'External HDD', '2F2QAAF2455', 'EXTERNAL HDD', '0000-00-00', 'EXTERNAL HDD', 'BORROWED', '3322-11-28', '2022-02-11 10:15:13', 'admin', '0000-00-00 00:00:00', ''),
(53, 'RETURNED', '2022-02-11', 'admin', '', '', '', 'MIS-01-012', 'SAMPLE-012', 'EXT-HDD-001', 'External HDD', '2F2QAAF2455', 'EXTERNAL HDD', '0000-00-00', 'EXTERNAL HDD', 'RETURNED', '0000-00-00', '0000-00-00 00:00:00', '', '2022-02-11 10:32:46', 'admin'),
(54, 'RETURNED', '2022-02-11', 'admin', '', '', '', 'MIS-01-002', 'SAMPLE-002', 'KEYBOARD-001', 'Keyboard', 'K3H493B', 'KEYBOARD', '0000-00-00', 'KEYBOARD', 'RETURNED', '0000-00-00', '0000-00-00 00:00:00', '', '2022-02-11 10:32:51', 'admin'),
(55, 'RETURNED', '2022-02-11', 'admin', '', '', '', 'MIS-01-001', 'SAMPLE-001', 'JABRA-001', 'Headset', '97803-225', 'JABRA HEADSET', '0000-00-00', 'JABRA', 'RETURNED', '0000-00-00', '0000-00-00 00:00:00', '', '2022-02-11 10:32:54', 'admin'),
(56, 'BORROW', '2022-02-11', 'admin', '', '', '', 'MIS-01-001', 'SAMPLE-001', 'JABRA-001', 'Headset', '97803-225', 'JABRA HEADSET', '0000-00-00', 'JABRA', 'BORROWED', '2022-02-16', '2022-02-11 10:33:00', 'admin', '0000-00-00 00:00:00', ''),
(57, 'RETURNED', '2022-02-11', 'admin', '', '', '', 'MIS-01-001', 'SAMPLE-001', 'JABRA-001', 'Headset', '97803-225', 'JABRA HEADSET', '0000-00-00', 'JABRA', 'RETURNED', '0000-00-00', '0000-00-00 00:00:00', '', '2022-02-11 10:33:07', 'admin'),
(58, 'BORROW', '2022-02-11', 'admin', '', '', '', 'MIS-01-001', 'SAMPLE-001', 'JABRA-001', 'Headset', '97803-225', 'JABRA HEADSET', '0000-00-00', 'JABRA', 'BORROWED', '2022-02-23', '2022-02-11 10:33:53', 'admin', '0000-00-00 00:00:00', ''),
(59, 'RETURNED', '2022-02-11', 'admin', '', '', '', 'MIS-01-001', 'SAMPLE-001', 'JABRA-001', 'Headset', '97803-225', 'JABRA HEADSET', '0000-00-00', 'JABRA', 'RETURNED', '0000-00-00', '0000-00-00 00:00:00', '', '2022-02-11 10:34:43', 'admin'),
(60, 'BORROW', '2022-02-11', 'admin', '', '', '', 'MIS-01-015', 'SAMPLE-015', 'KEYBOARD-003', 'Keyboard', '3AS0QWS', '23092839028', '0000-00-00', 'KEYBOARD', 'BORROWED', '2022-02-25', '2022-02-11 10:35:03', 'admin', '0000-00-00 00:00:00', ''),
(61, 'RETURNED', '2022-02-11', 'admin', '', '', '', 'MIS-01-015', 'SAMPLE-015', 'KEYBOARD-003', 'Keyboard', '3AS0QWS', '23092839028', '0000-00-00', 'KEYBOARD', 'RETURNED', '0000-00-00', '0000-00-00 00:00:00', '', '2022-02-11 10:37:04', 'admin'),
(62, 'UPDATE ITEM', '2022-02-11', 'admin', '', '', '', 'MIS-01-014', 'SAMPLE-014', 'KEYBOARD-002', 'Keyboard', '544QW84893', 'KEYBOARD', '0000-00-00', 'KEYBOARD', 'AVAILABLE', '0000-00-00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
(63, 'UPDATE ITEM', '2022-02-11', 'admin', '', '', '', 'MIS-01-013', 'SAMPLE-013', 'DPORT-001', 'DisplayPort Cable', 'K3H493B54E', 'DISPLAY PORT', '0000-00-00', 'DISPLAY PORT', 'AVAILABLE', '0000-00-00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
(64, 'UPDATE ITEM', '2022-02-11', 'admin', '', '', '', 'MIS-01-004', 'SAMPLE-003', 'LAPTOP-001', 'Laptop', '10s547d83s', 'ACER LAPTOP', '0000-00-00', 'LAPTOP', 'AVAILABLE', '0000-00-00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
(65, 'BORROW', '2022-02-11', 'admin', '', '', '', 'MIS-01-008', 'SAMPLE-008', 'HDMI-CBL-001', 'HDMI Cable', '40385256546', 'HDMI CABLE', '0000-00-00', 'HDMI CABLE', 'BORROWED', '2022-02-24', '2022-02-11 10:38:51', 'admin', '0000-00-00 00:00:00', ''),
(66, 'UPDATE ITEM', '2022-02-11', 'admin', '', '', '', 'MIS-01-011', 'SAMPLE-011', 'HP-WRKSTN-001', 'Workstation', 'JSKA09S76SC7A', 'WORKSTATION', '0000-00-00', 'WORKSTATION', 'UNDER REPAIR', '0000-00-00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
(67, 'UPDATE ITEM', '2022-02-11', 'admin', '', '', '', 'MIS-01-004', 'SAMPLE-003', 'LAPTOP-001', 'Laptop', '10s547d83s', 'ACER LAPTOP', '0000-00-00', 'LAPTOP', 'UNDER REPAIR', '0000-00-00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
(68, 'UPDATE ITEM', '2022-02-11', 'admin', '', '', '', 'MIS-01-015', 'SAMPLE-015', 'KEYBOARD-003', 'Keyboard', '3AS0QWS', '23092839028', '0000-00-00', 'KEYBOARD', 'FOR DISPOSAL', '0000-00-00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
(69, 'BORROW', '2022-02-11', 'admin', '', '', '', 'MIS-01-001', 'SAMPLE-001', 'JABRA-001', 'Headset', '97803-225', 'JABRA HEADSET', '0000-00-00', 'JABRA', 'BORROWED', '2022-02-21', '2022-02-11 10:39:59', 'admin', '0000-00-00 00:00:00', ''),
(70, 'BORROW', '2022-02-11', 'admin', '', '', '', 'MIS-01-007', 'SAMPLE-007', 'MOUSE-001', 'Mouse', '11111111565TR', 'MOUSE', '0000-00-00', 'MOUSE', 'BORROWED', '2022-02-23', '2022-02-11 10:40:12', 'admin', '0000-00-00 00:00:00', ''),
(71, 'RETURNED', '2022-02-11', 'admin', '', '', '', 'MIS-01-008', 'SAMPLE-008', 'HDMI-CBL-001', 'HDMI Cable', '40385256546', 'HDMI CABLE', '0000-00-00', 'HDMI CABLE', 'RETURNED', '0000-00-00', '0000-00-00 00:00:00', '', '2022-02-11 11:50:04', 'admin'),
(72, 'UPDATE ITEM', '2022-02-11', 'admin', '', '', '', 'MIS-01-001', 'SAMPLE-001', 'JABRA-001', 'Headset', '97803-225', 'JABRA HEADSET', '0000-00-00', 'JABRA', 'FOR DISPOSAL', '0000-00-00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
(73, 'RETURNED', '2022-02-11', 'admin', '', '', '', 'MIS-01-007', 'SAMPLE-007', 'MOUSE-001', 'Mouse', '11111111565TR', 'MOUSE', '0000-00-00', 'MOUSE', 'RETURNED', '0000-00-00', '0000-00-00 00:00:00', '', '2022-02-11 14:32:08', 'admin'),
(74, 'RETURNED', '2022-02-11', 'admin', '', '', '', 'MIS-01-001', 'SAMPLE-001', 'JABRA-001', 'Headset', '97803-225', 'JABRA HEADSET', '0000-00-00', 'JABRA', 'RETURNED', '0000-00-00', '0000-00-00 00:00:00', '', '2022-02-11 14:32:12', 'admin'),
(75, 'BORROW', '2022-02-14', 'admin', '', '', '', 'MIS-01-014', 'SAMPLE-014', 'KEYBOARD-002', 'Keyboard', '544QW84893', 'KEYBOARD', '0000-00-00', 'KEYBOARD', 'BORROWED', '2022-02-15', '2022-02-14 11:20:18', 'admin', '0000-00-00 00:00:00', ''),
(76, 'RETURNED', '2022-02-14', 'admin', '', '', '', 'MIS-01-014', 'SAMPLE-014', 'KEYBOARD-002', 'Keyboard', '544QW84893', 'KEYBOARD', '0000-00-00', 'KEYBOARD', 'RETURNED', '0000-00-00', '0000-00-00 00:00:00', '', '2022-02-14 12:17:06', 'admin'),
(77, 'BORROW', '2022-02-14', 'admin', '', '', '', 'MIS-01-014', 'SAMPLE-014', 'KEYBOARD-002', 'Keyboard', '544QW84893', 'KEYBOARD', '0000-00-00', 'KEYBOARD', 'BORROWED', '2022-02-15', '2022-02-14 12:17:16', 'admin', '0000-00-00 00:00:00', ''),
(78, 'DELETE ITEM', '2022-02-14', 'admin', '', '', '', 'MIS-01-014', 'SAMPLE-014', 'KEYBOARD-002', '', '544QW84893', 'KEYBOARD', '0000-00-00', 'KEYBOARD', '', '0000-00-00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
(79, 'ADD ITEM', '2022-02-14', 'admin', '', '', '', 'MIS-01-014', 'SAMPLE-014', 'KEYBOARD-002', 'Keyboard', '544QW84893', 'KEYBOARD', '2022-02-14', 'KEYBOARD', 'AVAILABLE', '0000-00-00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
(80, 'BORROW', '2022-02-14', 'admin', '', '', '', 'MIS-01-001', 'SAMPLE-001', 'JABRA-001', 'Headset', '97803-225', 'JABRA HEADSET', '0000-00-00', 'JABRA', 'BORROWED', '2022-02-15', '2022-02-14 12:31:47', 'admin', '0000-00-00 00:00:00', ''),
(81, 'UPDATE ITEM', '2022-02-14', 'admin', '', '', '', 'MIS-01-014', 'SAMPLE-014', 'KEYBOARD-002', 'Keyboard', '544QW84893', 'KEYBOARD', '0000-00-00', 'KEYBOARD', 'FOR DISPOSAL', '0000-00-00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
(82, 'RETURNED', '2022-02-15', 'admin', '', '', '', 'MIS-01-001', 'SAMPLE-001', 'JABRA-001', 'Headset', '97803-225', 'JABRA HEADSET', '0000-00-00', 'JABRA', 'RETURNED', '0000-00-00', '0000-00-00 00:00:00', '', '2022-02-15 09:16:45', 'admin'),
(83, 'BORROW', '2022-02-15', 'admin', '', '', '', 'MIS-01-009', 'SAMPLE-009', 'FLASHDRIVE-001', 'Flashdrive', 'FVCAE0EA4A', 'FLASH DRIVE', '0000-00-00', 'FLASH DRIVE', 'BORROWED', '2022-03-04', '2022-02-15 09:16:54', 'admin', '0000-00-00 00:00:00', ''),
(84, 'UPDATE ITEM', '2022-02-17', 'admin', '', '', '', 'MIS-01-014', 'SAMPLE-014', 'KEYBOARD-002', 'Keyboard', '544QW84893', 'KEYBOARD', '0000-00-00', 'KEYBOARD', 'DISPOSED', '0000-00-00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
(85, 'UPDATE ITEM', '2022-02-17', 'admin', '', '', '', 'MIS-01-014', 'SAMPLE-014', 'KEYBOARD-002', 'Keyboard', '544QW84893', 'KEYBOARD', '0000-00-00', 'KEYBOARD', 'FOR DISPOSAL', '0000-00-00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
(86, 'UPDATE ITEM', '2022-02-17', 'admin', '', '', '', 'MIS-01-013', 'SAMPLE-013', 'DPORT-001', 'DisplayPort Cable', 'K3H493B54E', 'DISPLAY PORT', '0000-00-00', 'DISPLAY PORT', 'FOR DISPOSAL', '0000-00-00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
(87, 'RETURNED', '2022-02-17', 'admin', '', '', '', 'MIS-01-009', 'SAMPLE-009', 'FLASHDRIVE-001', 'Flashdrive', 'FVCAE0EA4A', 'FLASH DRIVE', '0000-00-00', 'FLASH DRIVE', 'RETURNED', '0000-00-00', '0000-00-00 00:00:00', '', '2022-02-17 15:51:36', 'admin'),
(88, 'BORROW', '2022-02-17', 'admin', '', '', '', 'MIS-01-012', 'SAMPLE-012', 'EXT-HDD-001', 'External HDD', '2F2QAAF2455', 'EXTERNAL HDD', '0000-00-00', 'EXTERNAL HDD', 'BORROWED', '2022-02-18', '2022-02-17 15:51:45', 'admin', '0000-00-00 00:00:00', ''),
(89, 'DELETE ITEM', '2022-02-17', 'admin', '', '', '', 'MIS-01-012', 'SAMPLE-012', 'EXT-HDD-001', '', '2F2QAAF2455', 'EXTERNAL HDD', '0000-00-00', 'EXTERNAL HDD', '', '0000-00-00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
(90, 'BORROW', '2022-02-21', 'admin', '', '', '', 'MIS-01-010', 'SAMPLE-010', 'DESKTOP-001', 'Desktop', 'YE89AKSAGCV34', 'DESKTOP', '0000-00-00', 'DESKTOP', 'BORROWED', '2022-02-23', '2022-02-21 13:17:01', 'admin', '0000-00-00 00:00:00', ''),
(91, 'UPDATE ITEM', '2022-02-21', 'admin', '', '', '', 'MIS-01-015', 'SAMPLE-015', 'KEYBOARD-003', 'Keyboard', '3AS0QWS', '23092839028', '0000-00-00', 'KEYBOARD', 'AVAILABLE', '0000-00-00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
(92, 'UPDATE ITEM', '2022-02-21', 'admin', '', '', '', 'MIS-01-014', 'SAMPLE-014', 'KEYBOARD-002', 'Keyboard', '544QW84893', 'KEYBOARD', '0000-00-00', 'KEYBOARD', 'AVAILABLE', '0000-00-00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
(93, 'RETURNED', '2022-02-28', 'admin', '', '', '', 'MIS-01-010', 'SAMPLE-010', 'DESKTOP-001', 'Desktop', 'YE89AKSAGCV34', 'DESKTOP', '0000-00-00', 'DESKTOP', 'RETURNED', '0000-00-00', '0000-00-00 00:00:00', '', '2022-02-28 10:47:25', 'admin'),
(94, 'BORROW', '2022-02-28', 'admin', '', '', '', 'MIS-01-001', 'SAMPLE-001', 'JABRA-001', 'Headset', '97803-225', 'JABRA HEADSET', '0000-00-00', 'JABRA', 'BORROWED', '2022-03-01', '2022-02-28 16:23:09', 'admin', '0000-00-00 00:00:00', ''),
(95, 'BORROW', '2022-02-28', 'admin', '', '', '', 'MIS-01-008', 'SAMPLE-008', 'HDMI-CBL-001', 'HDMI Cable', '40385256546', 'HDMI CABLE', '0000-00-00', 'HDMI CABLE', 'BORROWED', '2022-03-04', '2022-02-28 16:24:45', 'admin', '0000-00-00 00:00:00', ''),
(96, 'BORROW', '2022-03-03', 'pet2086-admin', '', '', '', 'MIS-01-014', 'SAMPLE-014', 'KEYBOARD-002', 'Keyboard', '544QW84893', 'KEYBOARD', '0000-00-00', 'KEYBOARD', 'BORROWED', '2022-03-04', '2022-03-03 15:55:51', 'pet2086-admin', '0000-00-00 00:00:00', ''),
(97, 'UPDATE ITEM', '2022-03-04', 'admin', '', '', '', 'MIS-01-014', 'SAMPLE-014', 'KEYBOARD-002', 'Keyboard', '544QW84893', 'KEYBOARD', '0000-00-00', 'KEYBOARD', 'DISPOSED', '0000-00-00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
(98, 'UPDATE ITEM', '2022-03-04', 'admin', '', '', '', 'MIS-01-015', 'SAMPLE-015', 'KEYBOARD-003', 'Keyboard', '3AS0QWS', '23092839028', '0000-00-00', 'KEYBOARD', 'DISPOSED', '0000-00-00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
(99, 'ADD ITEM', '2022-03-10', 'admin', '', '', '', 'MIS-01-016', 'SAMPLE-016', 'KEYBOARD-004', 'Keyboard', '3AS0QWS45356547', 'keyboard', '2022-03-10', 'KEYBOARD', 'AVAILABLE', '0000-00-00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
(100, 'BORROW', '2022-03-10', 'admin', '', '', '', 'MIS-01-016', 'SAMPLE-016', 'KEYBOARD-004', 'Keyboard', '3AS0QWS45356547', 'keyboard', '0000-00-00', 'KEYBOARD', 'BORROWED', '2022-03-11', '2022-03-10 13:16:22', 'admin', '0000-00-00 00:00:00', ''),
(101, 'BORROW', '2022-03-10', 'pet1857-admin', '', '', '', 'MIS-01-009', 'SAMPLE-009', 'FLASHDRIVE-001', 'Flashdrive', 'FVCAE0EA4A', 'FLASH DRIVE', '0000-00-00', 'FLASH DRIVE', 'BORROWED', '2022-03-31', '2022-03-10 13:17:41', 'pet1857-admin', '0000-00-00 00:00:00', ''),
(102, 'RETURNED', '2022-03-10', 'jet', '', '', '', 'MIS-01-009', 'SAMPLE-009', 'FLASHDRIVE-001', 'Flashdrive', 'FVCAE0EA4A', 'FLASH DRIVE', '0000-00-00', 'FLASH DRIVE', 'RETURNED', '0000-00-00', '0000-00-00 00:00:00', '', '2022-03-10 13:19:52', 'jet'),
(103, 'UPDATE ITEM', '2022-03-10', 'admin', '', '', '', 'MIS-01-009', 'SAMPLE-009', 'FLASHDRIVE-001', 'Flashdrive', 'FVCAE0EA4A', 'FLASH DRIVE', '0000-00-00', 'FLASH DRIVE', 'DISPOSED', '0000-00-00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
(104, 'DELETE ITEM', '2022-03-10', 'admin', '', '', '', 'MIS-01-013', 'SAMPLE-013', 'DPORT-001', '', 'K3H493B54E', 'DISPLAY PORT', '0000-00-00', 'DISPLAY PORT', '', '0000-00-00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
(105, 'UPDATE ITEM', '2022-03-10', 'admin', '', '', '', 'MIS-01-014', 'SAMPLE-014', 'KEYBOARD-002', 'Keyboard', '544QW84893', 'KEYBOARD', '0000-00-00', 'KEYBOARD', 'AVAILABLE', '0000-00-00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
(106, 'BORROW', '2022-03-10', 'admin', '', '', '', 'MIS-01-014', 'SAMPLE-014', 'KEYBOARD-002', 'Keyboard', '544QW84893', 'KEYBOARD', '0000-00-00', 'KEYBOARD', 'BORROWED', '2022-03-25', '2022-03-10 13:58:59', 'admin', '0000-00-00 00:00:00', ''),
(107, 'UPDATE ITEM', '2022-03-10', 'admin', '', '', '', 'MIS-01-015', 'SAMPLE-015', 'KEYBOARD-003', 'Keyboard', '3AS0QWS', '23092839028', '0000-00-00', 'KEYBOARD', 'FOR DISPOSAL', '0000-00-00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
(108, 'UPDATE ITEM', '2022-03-10', 'admin', '', '', '', 'MIS-01-009', 'SAMPLE-009', 'FLASHDRIVE-001', 'Flashdrive', 'FVCAE0EA4A', 'FLASH DRIVE', '0000-00-00', 'FLASH DRIVE', 'AVAILABLE', '0000-00-00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
(109, 'UPDATE ITEM', '2022-03-10', 'admin', '', '', '', 'MIS-01-015', 'SAMPLE-015', 'KEYBOARD-003', 'Keyboard', '3AS0QWS', '23092839028', '0000-00-00', 'KEYBOARD', 'AVAILABLE', '0000-00-00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
(110, 'UPDATE ITEM', '2022-03-10', 'admin', '', '', '', 'MIS-01-015', 'SAMPLE-015', 'KEYBOARD-003', 'Keyboard', '3AS0QWS', '23092839028', '0000-00-00', 'KEYBOARD', 'FOR DISPOSAL', '0000-00-00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
(111, 'RETURNED', '2022-03-10', 'admin', '', '', '', 'MIS-01-016', 'SAMPLE-016', 'KEYBOARD-004', 'Keyboard', '3AS0QWS45356547', 'keyboard', '0000-00-00', 'KEYBOARD', 'RETURNED', '0000-00-00', '0000-00-00 00:00:00', '', '2022-03-10 14:15:01', 'admin'),
(112, 'RETURNED', '2022-03-10', 'admin', '', '', '', 'MIS-01-014', 'SAMPLE-014', 'KEYBOARD-002', 'Keyboard', '544QW84893', 'KEYBOARD', '0000-00-00', 'KEYBOARD', 'RETURNED', '0000-00-00', '0000-00-00 00:00:00', '', '2022-03-10 14:15:05', 'admin'),
(113, 'RETURNED', '2022-03-10', 'admin', '', '', '', 'MIS-01-008', 'SAMPLE-008', 'HDMI-CBL-001', 'HDMI Cable', '40385256546', 'HDMI CABLE', '0000-00-00', 'HDMI CABLE', 'RETURNED', '0000-00-00', '0000-00-00 00:00:00', '', '2022-03-10 14:15:09', 'admin'),
(114, 'RETURNED', '2022-03-10', 'admin', '', '', '', 'MIS-01-001', 'SAMPLE-001', 'JABRA-001', 'Headset', '97803-225', 'JABRA HEADSET', '0000-00-00', 'JABRA', 'RETURNED', '0000-00-00', '0000-00-00 00:00:00', '', '2022-03-10 14:15:13', 'admin'),
(115, 'BORROW', '2022-03-10', 'admin', '', '', '', 'MIS-01-016', 'SAMPLE-016', 'KEYBOARD-004', 'Keyboard', '3AS0QWS45356547', 'keyboard', '0000-00-00', 'KEYBOARD', 'BORROWED', '2022-03-24', '2022-03-10 14:15:28', 'admin', '0000-00-00 00:00:00', ''),
(116, 'BORROW', '2022-03-10', 'admin', '', '', '', 'MIS-01-014', 'SAMPLE-014', 'KEYBOARD-002', 'Keyboard', '544QW84893', 'KEYBOARD', '0000-00-00', 'KEYBOARD', 'BORROWED', '2022-03-25', '2022-03-10 14:15:35', 'admin', '0000-00-00 00:00:00', ''),
(117, 'UPDATE ITEM', '2022-03-10', 'admin', '', '', '', 'MIS-01-001', 'SAMPLE-001', 'JABRA-001', 'Headset', '97803-225', 'JABRA HEADSET', '0000-00-00', 'JABRA', 'DISPOSED', '0000-00-00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
(118, 'UPDATE ITEM', '2022-03-10', 'admin', '', '', '', 'MIS-01-010', 'SAMPLE-010', 'DESKTOP-001', 'Desktop', 'YE89AKSAGCV34', 'DESKTOP', '0000-00-00', 'DESKTOP', 'DISPOSED', '0000-00-00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
(119, 'UPDATE ITEM', '2022-03-10', 'admin', '', '', '', 'MIS-01-008', 'SAMPLE-008', 'HDMI-CBL-001', 'HDMI Cable', '40385256546', 'HDMI CABLE', '0000-00-00', 'HDMI CABLE', 'FOR REPAIR', '0000-00-00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
(120, 'UPDATE ITEM', '2022-03-10', 'admin', '', '', '', 'MIS-01-007', 'SAMPLE-007', 'MOUSE-001', 'Mouse', '11111111565TR', 'MOUSE', '0000-00-00', 'MOUSE', 'FOR REPAIR', '0000-00-00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
(121, 'UPDATE ITEM', '2022-03-10', 'admin', '', '', '', 'MIS-01-008', 'SAMPLE-008', 'HDMI-CBL-001', 'HDMI Cable', '40385256546', 'HDMI CABLE', '0000-00-00', 'HDMI CABLE', 'UNDER REPAIR', '0000-00-00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
(122, 'UPDATE ITEM', '2022-03-10', 'admin', '', '', '', 'MIS-01-007', 'SAMPLE-007', 'MOUSE-001', 'Mouse', '11111111565TR', 'MOUSE', '0000-00-00', 'MOUSE', 'UNDER REPAIR', '0000-00-00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
(123, 'UPDATE ITEM', '2022-03-10', 'admin', '', '', '', 'MIS-01-011', 'SAMPLE-011', 'HP-WRKSTN-001', 'Workstation', 'JSKA09S76SC7A', 'WORKSTATION', '0000-00-00', 'WORKSTATION', 'AVAILABLE', '0000-00-00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
(124, 'RETURNED', '2022-03-10', 'admin', '', '', '', 'MIS-01-016', 'SAMPLE-016', 'KEYBOARD-004', 'Keyboard', '3AS0QWS45356547', 'keyboard', '0000-00-00', 'KEYBOARD', 'RETURNED', '0000-00-00', '0000-00-00 00:00:00', '', '2022-03-10 14:23:44', 'admin'),
(125, 'BORROW', '2022-03-10', 'admin', '', '', '', 'MIS-01-002', 'SAMPLE-002', 'KEYBOARD-001', 'Keyboard', 'K3H493B', 'KEYBOARD', '0000-00-00', 'KEYBOARD', 'BORROWED', '2022-03-23', '2022-03-10 16:40:48', 'admin', '0000-00-00 00:00:00', ''),
(126, 'RETURNED', '2022-03-10', 'admin', '', '', '', 'MIS-01-014', 'SAMPLE-014', 'KEYBOARD-002', 'Keyboard', '544QW84893', 'KEYBOARD', '0000-00-00', 'KEYBOARD', 'RETURNED', '0000-00-00', '0000-00-00 00:00:00', '', '2022-03-10 16:40:56', 'admin'),
(127, 'RETURNED', '2022-03-10', 'admin', '', '', '', 'MIS-01-002', 'SAMPLE-002', 'KEYBOARD-001', 'Keyboard', 'K3H493B', 'KEYBOARD', '0000-00-00', 'KEYBOARD', 'RETURNED', '0000-00-00', '0000-00-00 00:00:00', '', '2022-03-10 16:41:00', 'admin'),
(128, 'BORROW', '2022-03-10', 'admin', '', '', '', 'MIS-01-002', 'SAMPLE-002', 'KEYBOARD-001', 'Keyboard', 'K3H493B', 'KEYBOARD', '0000-00-00', 'KEYBOARD', 'BORROWED', '2022-03-31', '2022-03-10 16:41:08', 'admin', '0000-00-00 00:00:00', ''),
(129, 'RETURNED', '2022-03-10', 'admin', '', '', '', 'MIS-01-002', 'SAMPLE-002', 'KEYBOARD-001', 'Keyboard', 'K3H493B', 'KEYBOARD', '0000-00-00', 'KEYBOARD', 'RETURNED', '0000-00-00', '0000-00-00 00:00:00', '', '2022-03-10 16:41:16', 'admin'),
(130, 'RETURNED', '2022-03-10', 'admin', '', '', '', 'MIS-01-002', 'SAMPLE-002', 'KEYBOARD-001', 'Keyboard', 'K3H493B', 'KEYBOARD', '0000-00-00', 'KEYBOARD', 'RETURNED', '0000-00-00', '0000-00-00 00:00:00', '', '2022-03-10 16:41:17', 'admin'),
(131, 'UPDATE ITEM', '2022-03-10', 'admin', '', '', '', 'MIS-01-010', 'SAMPLE-010', 'DESKTOP-001', 'Desktop', 'YE89AKSAGCV34', 'DESKTOP', '0000-00-00', 'DESKTOP', 'AVAILABLE', '0000-00-00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
(132, 'UPDATE ITEM', '2022-03-10', 'admin', '', '', '', 'MIS-01-015', 'SAMPLE-015', 'KEYBOARD-003', 'Keyboard', '3AS0QWS', '23092839028', '0000-00-00', 'KEYBOARD', 'AVAILABLE', '0000-00-00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
(133, 'UPDATE ITEM', '2022-03-10', 'admin', '', '', '', 'MIS-01-004', 'SAMPLE-003', 'LAPTOP-001', 'Laptop', '10s547d83s', 'ACER LAPTOP', '0000-00-00', 'LAPTOP', 'AVAILABLE', '0000-00-00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
(134, 'UPDATE ITEM', '2022-03-10', 'admin', '', '', '', 'MIS-01-008', 'SAMPLE-008', 'HDMI-CBL-001', 'HDMI Cable', '40385256546', 'HDMI CABLE', '0000-00-00', 'HDMI CABLE', 'AVAILABLE', '0000-00-00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
(135, 'UPDATE ITEM', '2022-03-10', 'admin', '', '', '', 'MIS-01-007', 'SAMPLE-007', 'MOUSE-001', 'Mouse', '11111111565TR', 'MOUSE', '0000-00-00', 'MOUSE', 'AVAILABLE', '0000-00-00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
(136, 'UPDATE ITEM', '2022-03-10', 'admin', '', '', '', 'MIS-01-001', 'SAMPLE-001', 'JABRA-001', 'Headset', '97803-225', 'JABRA HEADSET', '0000-00-00', 'JABRA', 'AVAILABLE', '0000-00-00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
(137, 'BORROW', '2022-03-10', 'admin', '', '', '', 'MIS-01-010', 'SAMPLE-010', 'DESKTOP-001', 'Desktop', 'YE89AKSAGCV34', 'DESKTOP', '0000-00-00', 'DESKTOP', 'BORROWED', '2022-03-24', '2022-03-10 16:42:38', 'admin', '0000-00-00 00:00:00', ''),
(138, 'BORROW', '2022-03-10', 'admin', '', '', '', 'MIS-01-011', 'SAMPLE-011', 'HP-WRKSTN-001', 'Workstation', 'JSKA09S76SC7A', 'WORKSTATION', '0000-00-00', 'WORKSTATION', 'BORROWED', '2022-03-22', '2022-03-10 16:43:02', 'admin', '0000-00-00 00:00:00', ''),
(139, 'UPDATE ITEM', '2022-03-10', 'admin', '', '', '', 'MIS-01-014', 'SAMPLE-014', 'MONITOR-001', 'Monitor', '544QW84893', 'MONITOR', '0000-00-00', 'MONITOR', 'AVAILABLE', '0000-00-00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
(140, 'BORROW', '2022-03-10', 'admin', '', '', '', 'MIS-01-014', 'SAMPLE-014', 'MONITOR-001', 'Monitor', '544QW84893', 'MONITOR', '0000-00-00', 'MONITOR', 'BORROWED', '2022-03-23', '2022-03-10 16:43:55', 'admin', '0000-00-00 00:00:00', ''),
(141, 'BORROW', '2022-03-10', 'admin', '', '', '', 'MIS-01-006', 'SAMPLE-006', 'JABRA-SPK-006', 'Speaker', '234767894225', 'JABRA SPEAKER', '0000-00-00', 'JABRA', 'BORROWED', '2022-03-31', '2022-03-10 16:51:27', 'admin', '0000-00-00 00:00:00', ''),
(142, 'RETURNED', '2022-03-10', 'admin', '', '', '', 'MIS-01-006', 'SAMPLE-006', 'JABRA-SPK-006', 'Speaker', '234767894225', 'JABRA SPEAKER', '0000-00-00', 'JABRA', 'RETURNED', '0000-00-00', '0000-00-00 00:00:00', '', '2022-03-10 16:51:32', 'admin'),
(143, 'RETURNED', '2022-03-10', 'admin', '', '', '', 'MIS-01-010', 'SAMPLE-010', 'DESKTOP-001', 'Desktop', 'YE89AKSAGCV34', 'DESKTOP', '0000-00-00', 'DESKTOP', 'RETURNED', '0000-00-00', '0000-00-00 00:00:00', '', '2022-03-10 16:51:36', 'admin'),
(144, 'RETURNED', '2022-03-10', 'admin', '', '', '', 'MIS-01-014', 'SAMPLE-014', 'MONITOR-001', 'Monitor', '544QW84893', 'MONITOR', '0000-00-00', 'MONITOR', 'RETURNED', '0000-00-00', '0000-00-00 00:00:00', '', '2022-03-10 16:51:41', 'admin'),
(145, 'RETURNED', '2022-03-10', 'admin', '', '', '', 'MIS-01-011', 'SAMPLE-011', 'HP-WRKSTN-001', 'Workstation', 'JSKA09S76SC7A', 'WORKSTATION', '0000-00-00', 'WORKSTATION', 'RETURNED', '0000-00-00', '0000-00-00 00:00:00', '', '2022-03-10 16:51:56', 'admin'),
(146, 'UPDATE ITEM', '2022-03-10', 'admin', '', '', '', 'MIS-01-015', 'SAMPLE-015', 'VGA-001', 'VGA Cable', '3AS0QWS', '23092839028', '0000-00-00', 'VGA CABLE', 'AVAILABLE', '0000-00-00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
(147, 'BORROW', '2022-03-10', 'admin', '', '', '', 'MIS-01-015', 'SAMPLE-015', 'VGA-001', 'VGA Cable', '3AS0QWS', '23092839028', '0000-00-00', 'VGA CABLE', 'BORROWED', '2022-03-24', '2022-03-10 16:53:36', 'admin', '0000-00-00 00:00:00', ''),
(148, 'RETURNED', '2022-03-10', 'admin', '', '', '', 'MIS-01-015', 'SAMPLE-015', 'VGA-001', 'VGA Cable', '3AS0QWS', '23092839028', '0000-00-00', 'VGA CABLE', 'RETURNED', '0000-00-00', '0000-00-00 00:00:00', '', '2022-03-10 16:53:43', 'admin'),
(149, 'BORROW', '2022-03-10', 'admin', '', '', '', 'MIS-01-015', 'SAMPLE-015', 'VGA-001', 'VGA Cable', '3AS0QWS', '23092839028', '0000-00-00', 'VGA CABLE', 'BORROWED', '2022-03-22', '2022-03-10 16:53:50', 'admin', '0000-00-00 00:00:00', ''),
(150, 'RETURNED', '2022-03-10', 'admin', '', '', '', 'MIS-01-015', 'SAMPLE-015', 'VGA-001', 'VGA Cable', '3AS0QWS', '23092839028', '0000-00-00', 'VGA CABLE', 'RETURNED', '0000-00-00', '0000-00-00 00:00:00', '', '2022-03-10 16:53:55', 'admin'),
(151, 'ADD ITEM', '2022-03-10', 'admin', '', '', '', 'MIS-01-017', 'SAMPLE-017', 'EXT-HDD-001', 'External HDD', '564regfdgfg', 'EXTERNAL HDD', '2022-03-10', 'EXTERNAL HDD', 'AVAILABLE', '0000-00-00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
(152, 'BORROW', '2022-03-10', 'admin', '', '', '', 'MIS-01-017', 'SAMPLE-017', 'EXT-HDD-001', 'External HDD', '564regfdgfg', 'EXTERNAL HDD', '0000-00-00', 'EXTERNAL HDD', 'BORROWED', '2022-04-01', '2022-03-10 16:57:22', 'admin', '0000-00-00 00:00:00', ''),
(153, 'RETURNED', '2022-03-10', 'admin', '', '', '', 'MIS-01-017', 'SAMPLE-017', 'EXT-HDD-001', 'External HDD', '564regfdgfg', 'EXTERNAL HDD', '0000-00-00', 'EXTERNAL HDD', 'RETURNED', '0000-00-00', '0000-00-00 00:00:00', '', '2022-03-10 16:57:32', 'admin'),
(154, 'BORROW', '2022-03-10', 'admin', '', '', '', 'MIS-01-002', 'SAMPLE-002', 'KEYBOARD-001', 'Keyboard', 'K3H493B', 'KEYBOARD', '0000-00-00', 'KEYBOARD', 'BORROWED', '2022-03-28', '2022-03-10 17:03:27', 'admin', '0000-00-00 00:00:00', ''),
(155, 'BORROW', '2022-03-10', 'admin', '', '', '', 'MIS-01-007', 'SAMPLE-007', 'MOUSE-001', 'Mouse', '11111111565TR', 'MOUSE', '0000-00-00', 'MOUSE', 'BORROWED', '2022-03-23', '2022-03-10 17:03:46', 'admin', '0000-00-00 00:00:00', ''),
(156, 'BORROW', '2022-03-11', 'admin', '', '', '', 'MIS-01-008', 'SAMPLE-008', 'HDMI-CBL-001', 'HDMI Cable', '40385256546', 'HDMI CABLE', '0000-00-00', 'HDMI CABLE', 'BORROWED', '2022-04-01', '2022-03-11 08:04:30', 'admin', '0000-00-00 00:00:00', ''),
(157, 'UPDATE ITEM', '2022-03-11', 'admin', '', '', '', 'MIS-01-001', 'SAMPLE-001', 'JABRA-001', 'Headset', '97803-225', 'JABRA HEADSET', '0000-00-00', 'JABRA', 'FOR DISPOSAL', '0000-00-00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
(158, 'UPDATE ITEM', '2022-03-11', 'admin', '', '', '', 'MIS-01-006', 'SAMPLE-006', 'JABRA-SPK-006', 'Speaker', '234767894225', 'JABRA SPEAKER', '0000-00-00', 'JABRA', 'DISPOSED', '0000-00-00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
(159, 'UPDATE ITEM', '2022-03-11', 'admin', '', '', '', 'MIS-01-015', 'SAMPLE-015', 'VGA-001', 'VGA Cable', '3AS0QWS', '23092839028', '0000-00-00', 'VGA CABLE', 'UNDER REPAIR', '0000-00-00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
(160, 'BORROW', '2022-03-11', 'admin', '', '', '', 'MIS-01-014', 'SAMPLE-014', 'MONITOR-001', 'Monitor', '544QW84893', 'MONITOR', '0000-00-00', 'MONITOR', 'BORROWED', '2022-03-31', '2022-03-11 08:35:30', 'admin', '0000-00-00 00:00:00', ''),
(161, 'BORROW', '2022-03-11', 'admin', '', '', '', 'MIS-01-009', 'SAMPLE-009', 'FLASHDRIVE-001', 'Flashdrive', 'FVCAE0EA4A', 'FLASH DRIVE', '0000-00-00', 'FLASH DRIVE', 'BORROWED', '2022-03-24', '2022-03-11 14:04:08', 'admin', '0000-00-00 00:00:00', ''),
(162, 'RETURNED', '2022-03-11', 'admin', '', '', '', 'MIS-01-014', 'SAMPLE-014', 'MONITOR-001', 'Monitor', '544QW84893', 'MONITOR', '0000-00-00', 'MONITOR', 'RETURNED', '0000-00-00', '0000-00-00 00:00:00', '', '2022-03-11 14:39:38', 'admin'),
(163, 'BORROW', '2022-03-11', 'admin', '', '', '', 'MIS-01-016', 'SAMPLE-016', 'KEYBOARD-004', 'Keyboard', '3AS0QWS45356547', 'keyboard', '0000-00-00', 'KEYBOARD', 'BORROWED', '2022-04-04', '2022-03-11 14:42:59', 'admin', '0000-00-00 00:00:00', ''),
(164, 'BORROW', '2022-03-13', 'pet2086', '', '', '', 'MIS-01-004', 'SAMPLE-003', 'LAPTOP-001', 'Laptop', '10s547d83s', 'ACER LAPTOP', '0000-00-00', 'LAPTOP', 'BORROWED', '2022-03-14', '2022-03-13 17:29:22', 'pet2086', '0000-00-00 00:00:00', ''),
(165, 'RETURNED', '2022-03-13', 'joy', '', '', '', 'MIS-01-004', 'SAMPLE-003', 'LAPTOP-001', 'Laptop', '10s547d83s', 'ACER LAPTOP', '0000-00-00', 'LAPTOP', 'RETURNED', '0000-00-00', '0000-00-00 00:00:00', '', '2022-03-13 17:30:08', 'joy'),
(166, 'ADD ITEM', '2022-03-13', 'admin', '', '', '', 'MIS-01-018', 'SAMPLE-018', 'MOUSE-0018', 'Mouse', '11111111565TR45374985', 'MOUSE', '2022-03-13', 'MOUSE', 'AVAILABLE', '0000-00-00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
(167, 'RETURNED', '2022-03-13', 'admin', '', '', '', 'MIS-01-002', 'SAMPLE-002', 'KEYBOARD-001', 'Keyboard', 'K3H493B', 'KEYBOARD', '0000-00-00', 'KEYBOARD', 'RETURNED', '0000-00-00', '0000-00-00 00:00:00', '', '2022-03-13 17:33:11', 'admin'),
(168, 'RETURNED', '2022-03-13', 'admin', '', '', '', 'MIS-01-007', 'SAMPLE-007', 'MOUSE-001', 'Mouse', '11111111565TR', 'MOUSE', '0000-00-00', 'MOUSE', 'RETURNED', '0000-00-00', '0000-00-00 00:00:00', '', '2022-03-13 17:33:18', 'admin'),
(169, 'UPDATE ITEM', '2022-03-13', 'admin', '', '', '', 'MIS-01-001', 'SAMPLE-001', 'JABRA-001', 'Headset', '97803-225', 'JABRA HEADSET', '0000-00-00', 'JABRA', 'DISPOSED', '0000-00-00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
(170, 'ADD ITEM', '2022-03-21', 'admin', '', '', '', 'MIS-01-019', 'SAMPLE-019', 'DPORT-001', 'DisplayPort Cable', 'K3H493B3424', 'DISPLAY PORT', '2022-03-21', 'DISPLAY PORT', 'AVAILABLE', '0000-00-00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
(171, 'ADD ITEM', '2022-03-21', 'admin', '', '', '', 'MIS-01-020', 'SAMPLE-020', 'KEYBOARD-003', 'Keyboard', 'K3H493B90-90', 'KEYBOARD', '2022-03-21', 'KEYBOARD', 'AVAILABLE', '0000-00-00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
(172, 'ADD ITEM', '2022-03-21', 'admin', '', '', '', 'MIS-01-021', 'SAMPLE-021', 'LAPTOP-002', 'Laptop', 'EWEDC544QW84893', 'DELL LAPTOP', '2022-03-21', 'DELL LAPTOP', 'AVAILABLE', '0000-00-00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
(173, 'ADD ITEM', '2022-03-21', 'admin', '', '', '', 'MIS-01-022', 'SAMPLE-022', 'LAPTOP-003', 'Laptop', '115345111111565TR', 'HP Z BOOK WORKSTATION LAPTOP', '2022-03-21', 'HP Z BOOK WORKSTATION LAPTOP', 'AVAILABLE', '0000-00-00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
(174, 'ADD ITEM', '2022-03-21', 'admin', '', '', '', 'MIS-01-023', 'SAMPLE-023', 'LAPTOP-004', 'Laptop', '97SD803-225FD', 'HP Z BOOK WORKSTATION LAPTOP', '2022-03-21', 'HP Z BOOK WORKSTATION LAPTOP', 'AVAILABLE', '0000-00-00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
(175, 'RETURNED', '2022-03-21', 'admin', '', '', '', 'MIS-01-016', 'SAMPLE-016', 'KEYBOARD-004', 'Keyboard', '3AS0QWS45356547', 'keyboard', '0000-00-00', 'KEYBOARD', 'RETURNED', '0000-00-00', '0000-00-00 00:00:00', '', '2022-03-21 16:17:02', 'admin'),
(176, 'RETURNED', '2022-03-21', 'admin', '', '', '', 'MIS-01-008', 'SAMPLE-008', 'HDMI-CBL-001', 'HDMI Cable', '40385256546', 'HDMI CABLE', '0000-00-00', 'HDMI CABLE', 'RETURNED', '0000-00-00', '0000-00-00 00:00:00', '', '2022-03-21 16:17:09', 'admin'),
(177, 'RETURNED', '2022-03-21', 'admin', '', '', '', 'MIS-01-009', 'SAMPLE-009', 'FLASHDRIVE-001', 'Flashdrive', 'FVCAE0EA4A', 'FLASH DRIVE', '0000-00-00', 'FLASH DRIVE', 'RETURNED', '0000-00-00', '0000-00-00 00:00:00', '', '2022-03-21 16:17:13', 'admin'),
(178, 'BORROW', '2022-03-21', 'admin', '', '', '', 'MIS-01-008', 'SAMPLE-008', 'HDMI-CBL-001', 'HDMI Cable', '40385256546', 'HDMI CABLE', '0000-00-00', 'HDMI CABLE', 'BORROWED', '2022-03-31', '2022-03-21 16:18:44', 'admin', '0000-00-00 00:00:00', ''),
(179, 'BORROW', '2022-03-21', 'admin', '', '', '', 'MIS-01-004', 'SAMPLE-003', 'LAPTOP-001', 'Laptop', '10s547d83s', 'ACER LAPTOP', '0000-00-00', 'LAPTOP', 'BORROWED', '2022-03-24', '2022-03-21 16:18:53', 'admin', '0000-00-00 00:00:00', ''),
(180, 'BORROW', '2022-03-21', 'admin', '', '', '', 'MIS-01-002', 'SAMPLE-002', 'KEYBOARD-001', 'Keyboard', 'K3H493B', 'KEYBOARD', '0000-00-00', 'KEYBOARD', 'BORROWED', '2022-03-31', '2022-03-21 16:19:07', 'admin', '0000-00-00 00:00:00', ''),
(181, 'BORROW', '2022-03-21', 'admin', '', '', '', 'MIS-01-010', 'SAMPLE-010', 'DESKTOP-001', 'Desktop', 'YE89AKSAGCV34', 'DESKTOP', '0000-00-00', 'DESKTOP', 'BORROWED', '2022-03-31', '2022-03-21 16:19:14', 'admin', '0000-00-00 00:00:00', ''),
(182, 'BORROW', '2022-03-21', 'admin', '', '', '', 'MIS-01-016', 'SAMPLE-016', 'KEYBOARD-004', 'Keyboard', '3AS0QWS45356547', 'keyboard', '0000-00-00', 'KEYBOARD', 'BORROWED', '2022-04-08', '2022-03-21 16:19:22', 'admin', '0000-00-00 00:00:00', ''),
(183, 'BORROW', '2022-03-21', 'admin', '', '', '', 'MIS-01-009', 'SAMPLE-009', 'FLASHDRIVE-001', 'Flashdrive', 'FVCAE0EA4A', 'FLASH DRIVE', '0000-00-00', 'FLASH DRIVE', 'BORROWED', '2022-03-25', '2022-03-21 16:19:31', 'admin', '0000-00-00 00:00:00', ''),
(184, 'BORROW', '2022-03-21', 'admin', '', '', '', 'MIS-01-014', 'SAMPLE-014', 'MONITOR-001', 'Monitor', '544QW84893', 'MONITOR', '0000-00-00', 'MONITOR', 'BORROWED', '2022-04-01', '2022-03-21 16:19:39', 'admin', '0000-00-00 00:00:00', ''),
(185, 'BORROW', '2022-03-21', 'admin', '', '', '', 'MIS-01-017', 'SAMPLE-017', 'EXT-HDD-001', 'External HDD', '564regfdgfg', 'EXTERNAL HDD', '0000-00-00', 'EXTERNAL HDD', 'BORROWED', '2022-04-01', '2022-03-21 16:19:46', 'admin', '0000-00-00 00:00:00', ''),
(186, 'BORROW', '2022-03-21', 'admin', '', '', '', 'MIS-01-021', 'SAMPLE-021', 'LAPTOP-002', 'Laptop', 'EWEDC544QW84893', 'DELL LAPTOP', '0000-00-00', 'DELL LAPTOP', 'BORROWED', '2022-04-02', '2022-03-21 16:19:54', 'admin', '0000-00-00 00:00:00', ''),
(187, 'BORROW', '2022-03-21', 'admin', '', '', '', 'MIS-01-019', 'SAMPLE-019', 'DPORT-001', 'DisplayPort Cable', 'K3H493B3424', 'DISPLAY PORT', '0000-00-00', 'DISPLAY PORT', 'BORROWED', '2022-04-02', '2022-03-21 16:20:01', 'admin', '0000-00-00 00:00:00', ''),
(188, 'BORROW', '2022-03-21', 'admin', '', '', '', 'MIS-01-020', 'SAMPLE-020', 'KEYBOARD-003', 'Keyboard', 'K3H493B90-90', 'KEYBOARD', '0000-00-00', 'KEYBOARD', 'BORROWED', '2022-04-01', '2022-03-21 16:20:09', 'admin', '0000-00-00 00:00:00', ''),
(189, 'BORROW', '2022-03-21', 'admin', '', '', '', 'MIS-01-018', 'SAMPLE-018', 'MOUSE-0018', 'Mouse', '11111111565TR45374985', 'MOUSE', '0000-00-00', 'MOUSE', 'BORROWED', '2022-03-26', '2022-03-21 16:20:18', 'admin', '0000-00-00 00:00:00', ''),
(190, 'BORROW', '2022-03-21', 'admin', '', '', '', 'MIS-01-011', 'SAMPLE-011', 'HP-WRKSTN-001', 'Workstation', 'JSKA09S76SC7A', 'WORKSTATION', '0000-00-00', 'WORKSTATION', 'BORROWED', '2022-03-26', '2022-03-21 16:20:55', 'admin', '0000-00-00 00:00:00', ''),
(191, 'BORROW', '2022-03-21', 'admin', '', '', '', 'MIS-01-007', 'SAMPLE-007', 'MOUSE-001', 'Mouse', '11111111565TR', 'MOUSE', '0000-00-00', 'MOUSE', 'BORROWED', '2022-04-06', '2022-03-21 16:21:05', 'admin', '0000-00-00 00:00:00', ''),
(192, 'UPDATE ITEM', '2022-03-21', 'admin', '', '', '', 'MIS-01-001', 'SAMPLE-001', 'JABRA-001', 'Headset', '97803-225', 'JABRA HEADSET', '0000-00-00', 'JABRA', 'AVAILABLE', '0000-00-00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
(193, 'UPDATE ITEM', '2022-03-21', 'admin', '', '', '', 'MIS-01-006', 'SAMPLE-006', 'HEADSET-001', 'Headset', '234767894225', 'HEADSET', '0000-00-00', 'A4TECH', 'AVAILABLE', '0000-00-00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
(194, 'UPDATE ITEM', '2022-03-21', 'admin', '', '', '', 'MIS-01-001', 'SAMPLE-001', 'JABRA-001', 'Speaker', '97803-225', 'JABRA SPK', '0000-00-00', 'JABRA', 'AVAILABLE', '0000-00-00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
(195, 'BORROW', '2022-03-21', 'admin', '', '', '', 'MIS-01-001', 'SAMPLE-001', 'JABRA-001', 'Speaker', '97803-225', 'JABRA SPK', '0000-00-00', 'JABRA', 'BORROWED', '2022-04-06', '2022-03-21 16:22:45', 'admin', '0000-00-00 00:00:00', ''),
(196, 'BORROW', '2022-03-21', 'admin', '', '', '', 'MIS-01-006', 'SAMPLE-006', 'HEADSET-001', 'Headset', '234767894225', 'HEADSET', '0000-00-00', 'A4TECH', 'BORROWED', '2022-03-28', '2022-03-21 16:22:53', 'admin', '0000-00-00 00:00:00', ''),
(197, 'ADD ITEM', '2022-03-21', 'admin', '', '', '', 'MIS-01-024', 'SAMPLE-024', 'VGA-001', 'VGA Cable', 'ASs4RQ3', 'VGA CABLE', '2022-03-21', 'VGA CABLE', 'AVAILABLE', '0000-00-00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
(198, 'RETURNED', '2022-03-21', 'admin', '', '', '', 'MIS-01-002', 'SAMPLE-002', 'KEYBOARD-001', 'Keyboard', 'K3H493B', 'KEYBOARD', '0000-00-00', 'KEYBOARD', 'RETURNED', '0000-00-00', '0000-00-00 00:00:00', '', '2022-03-21 16:23:52', 'admin'),
(199, 'RETURNED', '2022-03-21', 'admin', '', '', '', 'MIS-01-008', 'SAMPLE-008', 'HDMI-CBL-001', 'HDMI Cable', '40385256546', 'HDMI CABLE', '0000-00-00', 'HDMI CABLE', 'RETURNED', '0000-00-00', '0000-00-00 00:00:00', '', '2022-03-21 16:23:57', 'admin'),
(200, 'RETURNED', '2022-03-21', 'admin', '', '', '', 'MIS-01-004', 'SAMPLE-003', 'LAPTOP-001', 'Laptop', '10s547d83s', 'ACER LAPTOP', '0000-00-00', 'LAPTOP', 'RETURNED', '0000-00-00', '0000-00-00 00:00:00', '', '2022-03-21 16:24:03', 'admin'),
(201, 'RETURNED', '2022-03-21', 'admin', '', '', '', 'MIS-01-006', 'SAMPLE-006', 'HEADSET-001', 'Headset', '234767894225', 'HEADSET', '0000-00-00', 'A4TECH', 'RETURNED', '0000-00-00', '0000-00-00 00:00:00', '', '2022-03-21 16:24:37', 'admin'),
(202, 'BORROW', '2022-03-21', 'admin', '', '', '', 'MIS-01-024', 'SAMPLE-024', 'VGA-001', 'VGA Cable', 'ASs4RQ3', 'VGA CABLE', '0000-00-00', 'VGA CABLE', 'BORROWED', '2022-03-24', '2022-03-21 16:25:53', 'admin', '0000-00-00 00:00:00', '');
INSERT INTO `logs` (`id`, `log_type`, `dated_log`, `log_by`, `user_id`, `user_name`, `department`, `ctrl_no`, `asset_tag_no`, `item_no`, `category`, `serial_no`, `item_details`, `item_added_date`, `remarks`, `status`, `returning_plan_date`, `borrowed_date`, `borrowed_by`, `returned_date`, `returned_by`) VALUES
(203, 'UPDATE ITEM', '2022-03-21', 'admin', '', '', '', 'MIS-01-015', 'SAMPLE-015', 'VGA-002', 'VGA Cable', '3AS0QWS', '23092839028', '0000-00-00', 'VGA CABLE', 'FOR DISPOSAL', '0000-00-00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
(204, 'RETURNED', '2022-03-21', 'admin', '', '', '', 'MIS-01-011', 'SAMPLE-011', 'HP-WRKSTN-001', 'Workstation', 'JSKA09S76SC7A', 'WORKSTATION', '0000-00-00', 'WORKSTATION', 'RETURNED', '0000-00-00', '0000-00-00 00:00:00', '', '2022-03-21 16:37:15', 'admin'),
(205, 'RETURNED', '2022-03-21', 'admin', '', '', '', 'MIS-01-007', 'SAMPLE-007', 'MOUSE-001', 'Mouse', '11111111565TR', 'MOUSE', '0000-00-00', 'MOUSE', 'RETURNED', '0000-00-00', '0000-00-00 00:00:00', '', '2022-03-21 16:37:20', 'admin'),
(206, 'RETURNED', '2022-03-21', 'admin', '', '', '', 'MIS-01-014', 'SAMPLE-014', 'MONITOR-001', 'Monitor', '544QW84893', 'MONITOR', '0000-00-00', 'MONITOR', 'RETURNED', '0000-00-00', '0000-00-00 00:00:00', '', '2022-03-21 16:37:26', 'admin'),
(207, 'RETURNED', '2022-03-21', 'admin', '', '', '', 'MIS-01-018', 'SAMPLE-018', 'MOUSE-0018', 'Mouse', '11111111565TR45374985', 'MOUSE', '0000-00-00', 'MOUSE', 'RETURNED', '0000-00-00', '0000-00-00 00:00:00', '', '2022-03-21 16:37:37', 'admin'),
(208, 'RETURNED', '2022-03-21', 'admin', '', '', '', 'MIS-01-009', 'SAMPLE-009', 'FLASHDRIVE-001', 'Flashdrive', 'FVCAE0EA4A', 'FLASH DRIVE', '0000-00-00', 'FLASH DRIVE', 'RETURNED', '0000-00-00', '0000-00-00 00:00:00', '', '2022-03-21 16:37:43', 'admin'),
(209, 'RETURNED', '2022-03-21', 'admin', '', '', '', 'MIS-01-016', 'SAMPLE-016', 'KEYBOARD-004', 'Keyboard', '3AS0QWS45356547', 'keyboard', '0000-00-00', 'KEYBOARD', 'RETURNED', '0000-00-00', '0000-00-00 00:00:00', '', '2022-03-21 16:37:52', 'admin'),
(210, 'RETURNED', '2022-03-21', 'admin', '', '', '', 'MIS-01-021', 'SAMPLE-021', 'LAPTOP-002', 'Laptop', 'EWEDC544QW84893', 'DELL LAPTOP', '0000-00-00', 'DELL LAPTOP', 'RETURNED', '0000-00-00', '0000-00-00 00:00:00', '', '2022-03-21 16:37:58', 'admin'),
(211, 'RETURNED', '2022-03-21', 'admin', '', '', '', 'MIS-01-020', 'SAMPLE-020', 'KEYBOARD-003', 'Keyboard', 'K3H493B90-90', 'KEYBOARD', '0000-00-00', 'KEYBOARD', 'RETURNED', '0000-00-00', '0000-00-00 00:00:00', '', '2022-03-21 16:38:03', 'admin'),
(212, 'RETURNED', '2022-03-21', 'admin', '', '', '', 'MIS-01-019', 'SAMPLE-019', 'DPORT-001', 'DisplayPort Cable', 'K3H493B3424', 'DISPLAY PORT', '0000-00-00', 'DISPLAY PORT', 'RETURNED', '0000-00-00', '0000-00-00 00:00:00', '', '2022-03-21 16:38:08', 'admin'),
(213, 'RETURNED', '2022-03-21', 'admin', '', '', '', 'MIS-01-024', 'SAMPLE-024', 'VGA-001', 'VGA Cable', 'ASs4RQ3', 'VGA CABLE', '0000-00-00', 'VGA CABLE', 'RETURNED', '0000-00-00', '0000-00-00 00:00:00', '', '2022-03-21 16:38:13', 'admin'),
(214, 'RETURNED', '2022-03-21', 'admin', '', '', '', 'MIS-01-017', 'SAMPLE-017', 'EXT-HDD-001', 'External HDD', '564regfdgfg', 'EXTERNAL HDD', '0000-00-00', 'EXTERNAL HDD', 'RETURNED', '0000-00-00', '0000-00-00 00:00:00', '', '2022-03-21 16:38:20', 'admin'),
(215, 'RETURNED', '2022-03-21', 'admin', '', '', '', 'MIS-01-010', 'SAMPLE-010', 'DESKTOP-001', 'Desktop', 'YE89AKSAGCV34', 'DESKTOP', '0000-00-00', 'DESKTOP', 'RETURNED', '0000-00-00', '0000-00-00 00:00:00', '', '2022-03-21 16:38:27', 'admin'),
(216, 'RETURNED', '2022-03-21', 'admin', '', '', '', 'MIS-01-001', 'SAMPLE-001', 'JABRA-001', 'Speaker', '97803-225', 'JABRA SPK', '0000-00-00', 'JABRA', 'RETURNED', '0000-00-00', '0000-00-00 00:00:00', '', '2022-03-21 16:38:34', 'admin'),
(217, 'UPDATE ITEM', '2022-03-21', 'admin', '', '', '', 'MIS-01-024', 'SAMPLE-024', 'VGA-001', 'VGA Cable', 'ASs4RQ3', 'VGA CABLE', '0000-00-00', 'VGA CABLE', 'DISPOSED', '0000-00-00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
(218, 'UPDATE ITEM', '2022-03-21', 'admin', '', '', '', 'MIS-01-021', 'SAMPLE-021', 'LAPTOP-002', 'Laptop', 'EWEDC544QW84893', 'DELL LAPTOP', '0000-00-00', 'DELL LAPTOP', 'FOR DISPOSAL', '0000-00-00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
(219, 'UPDATE ITEM', '2022-03-21', 'admin', '', '', '', 'MIS-01-007', 'SAMPLE-007', 'MOUSE-001', 'Mouse', '11111111565TR', 'MOUSE', '0000-00-00', 'MOUSE', 'DISPOSED', '0000-00-00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
(220, 'UPDATE ITEM', '2022-03-21', 'admin', '', '', '', 'MIS-01-011', 'SAMPLE-011', 'HP-WRKSTN-001', 'Workstation', 'JSKA09S76SC7A', 'WORKSTATION', '0000-00-00', 'WORKSTATION', 'UNDER REPAIR', '0000-00-00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
(221, 'UPDATE ITEM', '2022-03-21', 'admin', '', '', '', 'MIS-01-014', 'SAMPLE-014', 'MONITOR-001', 'Monitor', '544QW84893', 'MONITOR', '0000-00-00', 'MONITOR', 'DISPOSED', '0000-00-00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
(222, 'BORROW', '2022-03-22', 'admin', '', '', '', 'MIS-01-001', 'SAMPLE-001', 'JABRA-001', 'Speaker', '97803-225', 'JABRA SPK', '0000-00-00', 'JABRA', 'BORROWED', '2022-03-23', '2022-03-22 09:34:53', 'admin', '0000-00-00 00:00:00', ''),
(223, 'BORROW', '2022-03-22', 'admin', '', '', '', 'MIS-01-008', 'SAMPLE-008', 'HDMI-CBL-001', 'HDMI Cable', '40385256546', 'HDMI CABLE', '0000-00-00', 'HDMI CABLE', 'BORROWED', '2022-03-25', '2022-03-22 09:40:44', 'admin', '0000-00-00 00:00:00', ''),
(224, 'BORROW', '2022-03-22', 'admin', '', '', '', 'MIS-01-004', 'SAMPLE-003', 'LAPTOP-001', 'Laptop', '10s547d83s', 'ACER LAPTOP', '0000-00-00', 'LAPTOP', 'BORROWED', '2022-03-24', '2022-03-22 12:27:03', 'admin', '0000-00-00 00:00:00', ''),
(225, 'BORROW', '2022-03-22', 'admin', '', '', '', 'MIS-01-022', 'SAMPLE-022', 'LAPTOP-003', 'Laptop', '115345111111565TR', 'HP Z BOOK WORKSTATION LAPTOP', '0000-00-00', 'HP Z BOOK WORKSTATION LAPTOP', 'BORROWED', '2022-03-25', '2022-03-22 12:27:15', 'admin', '0000-00-00 00:00:00', ''),
(226, 'BORROW', '2022-03-22', 'admin', '', '', '', 'MIS-01-023', 'SAMPLE-023', 'LAPTOP-004', 'Laptop', '97SD803-225FD', 'HP Z BOOK WORKSTATION LAPTOP', '0000-00-00', 'HP Z BOOK WORKSTATION LAPTOP', 'BORROWED', '2022-03-24', '2022-03-22 12:27:24', 'admin', '0000-00-00 00:00:00', ''),
(227, 'UPDATE ITEM', '2022-03-22', 'admin', '', '', '', 'MIS-01-021', 'SAMPLE-021', 'LAPTOP-002', 'Laptop', 'EWEDC544QW84893', 'DELL LAPTOP', '0000-00-00', 'DELL LAPTOP', 'AVAILABLE', '0000-00-00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
(228, 'BORROW', '2022-03-22', 'admin', '', '', '', 'MIS-01-021', 'SAMPLE-021', 'LAPTOP-002', 'Laptop', 'EWEDC544QW84893', 'DELL LAPTOP', '0000-00-00', 'DELL LAPTOP', 'BORROWED', '2022-03-29', '2022-03-22 12:28:06', 'admin', '0000-00-00 00:00:00', ''),
(229, 'RETURNED', '2022-03-22', 'admin', '', '', '', 'MIS-01-023', 'SAMPLE-023', 'LAPTOP-004', 'Laptop', '97SD803-225FD', 'HP Z BOOK WORKSTATION LAPTOP', '0000-00-00', 'HP Z BOOK WORKSTATION LAPTOP', 'RETURNED', '0000-00-00', '0000-00-00 00:00:00', '', '2022-03-22 12:28:42', 'admin'),
(230, 'RETURNED', '2022-03-22', 'admin', '', '', '', 'MIS-01-008', 'SAMPLE-008', 'HDMI-CBL-001', 'HDMI Cable', '40385256546', 'HDMI CABLE', '0000-00-00', 'HDMI CABLE', 'RETURNED', '0000-00-00', '0000-00-00 00:00:00', '', '2022-03-22 12:28:48', 'admin'),
(231, 'RETURNED', '2022-03-22', 'admin', '', '', '', 'MIS-01-001', 'SAMPLE-001', 'JABRA-001', 'Speaker', '97803-225', 'JABRA SPK', '0000-00-00', 'JABRA', 'RETURNED', '0000-00-00', '0000-00-00 00:00:00', '', '2022-03-22 12:28:54', 'admin'),
(232, 'RETURNED', '2022-03-22', 'admin', '', '', '', 'MIS-01-022', 'SAMPLE-022', 'LAPTOP-003', 'Laptop', '115345111111565TR', 'HP Z BOOK WORKSTATION LAPTOP', '0000-00-00', 'HP Z BOOK WORKSTATION LAPTOP', 'RETURNED', '0000-00-00', '0000-00-00 00:00:00', '', '2022-03-22 12:28:59', 'admin'),
(233, 'RETURNED', '2022-03-22', 'admin', '', '', '', 'MIS-01-021', 'SAMPLE-021', 'LAPTOP-002', 'Laptop', 'EWEDC544QW84893', 'DELL LAPTOP', '0000-00-00', 'DELL LAPTOP', 'RETURNED', '0000-00-00', '0000-00-00 00:00:00', '', '2022-03-22 12:29:04', 'admin'),
(234, 'RETURNED', '2022-03-22', 'admin', '', '', '', 'MIS-01-004', 'SAMPLE-003', 'LAPTOP-001', 'Laptop', '10s547d83s', 'ACER LAPTOP', '0000-00-00', 'LAPTOP', 'RETURNED', '0000-00-00', '0000-00-00 00:00:00', '', '2022-03-22 12:29:10', 'admin'),
(235, 'BORROW', '2022-03-22', 'admin', '', '', '', 'MIS-01-008', 'SAMPLE-008', 'HDMI-CBL-001', 'HDMI Cable', '40385256546', 'HDMI CABLE', '0000-00-00', 'HDMI CABLE', 'BORROWED', '2022-03-25', '2022-03-22 16:13:49', 'admin', '0000-00-00 00:00:00', ''),
(236, 'BORROW', '2022-03-22', 'admin', '', '', '', 'MIS-01-019', 'SAMPLE-019', 'DPORT-001', 'DisplayPort Cable', 'K3H493B3424', 'DISPLAY PORT', '0000-00-00', 'DISPLAY PORT', 'BORROWED', '2022-04-08', '2022-03-22 16:14:04', 'admin', '0000-00-00 00:00:00', ''),
(237, 'BORROW', '2022-03-22', 'admin', '', '', '', 'MIS-01-010', 'SAMPLE-010', 'DESKTOP-001', 'Desktop', 'YE89AKSAGCV34', 'DESKTOP', '0000-00-00', 'DESKTOP', 'BORROWED', '2022-03-24', '2022-03-22 16:14:16', 'admin', '0000-00-00 00:00:00', ''),
(238, 'UPDATE ITEM', '2022-03-22', 'admin', '', '', '', 'MIS-01-014', 'SAMPLE-014', 'MONITOR-001', 'Monitor', '544QW84893', 'MONITOR', '0000-00-00', 'MONITOR', 'AVAILABLE', '0000-00-00', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
(239, 'BORROW', '2022-03-22', 'admin', '', '', '', 'MIS-01-014', 'SAMPLE-014', 'MONITOR-001', 'Monitor', '544QW84893', 'MONITOR', '0000-00-00', 'MONITOR', 'BORROWED', '2022-03-26', '2022-03-22 16:14:51', 'admin', '0000-00-00 00:00:00', ''),
(240, 'BORROW', '2022-03-22', 'admin', '', '', '', 'MIS-01-017', 'SAMPLE-017', 'EXT-HDD-001', 'External HDD', '564regfdgfg', 'EXTERNAL HDD', '0000-00-00', 'EXTERNAL HDD', 'BORROWED', '2022-03-23', '2022-03-22 16:15:05', 'admin', '0000-00-00 00:00:00', ''),
(241, 'BORROW', '2022-03-22', 'admin', '', '', '', 'MIS-01-001', 'SAMPLE-001', 'JABRA-001', 'Speaker', '97803-225', 'JABRA SPK', '0000-00-00', 'JABRA', 'BORROWED', '2022-04-02', '2022-03-22 16:15:21', 'admin', '0000-00-00 00:00:00', ''),
(242, 'RETURNED', '2022-03-22', 'admin', '', '', '', 'MIS-01-001', 'SAMPLE-001', 'JABRA-001', 'Speaker', '97803-225', 'JABRA SPK', '0000-00-00', 'JABRA', 'RETURNED', '0000-00-00', '0000-00-00 00:00:00', '', '2022-03-22 16:15:29', 'admin'),
(243, 'BORROW', '2022-03-22', 'admin', '', '', '', 'MIS-01-001', 'SAMPLE-001', 'JABRA-001', 'Speaker', '97803-225', 'JABRA SPK', '0000-00-00', 'JABRA', 'BORROWED', '2022-04-06', '2022-03-22 16:15:38', 'admin', '0000-00-00 00:00:00', ''),
(244, 'RETURNED', '2022-03-22', 'admin', '', '', '', 'MIS-01-001', 'SAMPLE-001', 'JABRA-001', 'Speaker', '97803-225', 'JABRA SPK', '0000-00-00', 'JABRA', 'RETURNED', '0000-00-00', '0000-00-00 00:00:00', '', '2022-03-22 16:16:44', 'admin'),
(245, 'BORROW', '2022-03-24', 'admin', '', '', '', 'MIS-01-001', 'SAMPLE-001', 'JABRA-001', 'Speaker', '97803-225', 'JABRA SPK', '0000-00-00', 'JABRA', 'BORROWED', '2022-03-25', '2022-03-24 16:41:16', 'admin', '0000-00-00 00:00:00', ''),
(246, 'RETURNED', '2022-03-24', 'admin', '', '', '', 'MIS-01-008', 'SAMPLE-008', 'HDMI-CBL-001', 'HDMI Cable', '40385256546', 'HDMI CABLE', '0000-00-00', 'HDMI CABLE', 'RETURNED', '0000-00-00', '0000-00-00 00:00:00', '', '2022-03-24 16:41:57', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `returned_items`
--

CREATE TABLE `returned_items` (
  `id` int(11) NOT NULL,
  `ctrl_no` varchar(255) DEFAULT NULL,
  `asset_tag_no` varchar(255) DEFAULT NULL,
  `item_no` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `serial_no` varchar(255) DEFAULT NULL,
  `item_details` varchar(255) DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `status` text DEFAULT NULL,
  `returned_date` datetime DEFAULT NULL,
  `returned_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `returned_items`
--

INSERT INTO `returned_items` (`id`, `ctrl_no`, `asset_tag_no`, `item_no`, `category`, `serial_no`, `item_details`, `remarks`, `status`, `returned_date`, `returned_by`) VALUES
(1, 'MIS-01-002', 'SAMPLE-002', 'KEYBOARD-001', 'Keyboard', 'K3H493B', 'KEYBOARD', 'KEYBOARD', 'RETURNED', '2022-03-21 16:23:52', 'admin'),
(2, 'MIS-01-008', 'SAMPLE-008', 'HDMI-CBL-001', 'HDMI Cable', '40385256546', 'HDMI CABLE', 'HDMI CABLE', 'RETURNED', '2022-03-21 16:23:57', 'admin'),
(3, 'MIS-01-004', 'SAMPLE-003', 'LAPTOP-001', 'Laptop', '10s547d83s', 'ACER LAPTOP', 'LAPTOP', 'RETURNED', '2022-03-21 16:24:03', 'admin'),
(4, 'MIS-01-006', 'SAMPLE-006', 'HEADSET-001', 'Headset', '234767894225', 'HEADSET', 'A4TECH', 'RETURNED', '2022-03-21 16:24:37', 'admin'),
(5, 'MIS-01-011', 'SAMPLE-011', 'HP-WRKSTN-001', 'Workstation', 'JSKA09S76SC7A', 'WORKSTATION', 'WORKSTATION', 'RETURNED', '2022-03-21 16:37:15', 'admin'),
(6, 'MIS-01-007', 'SAMPLE-007', 'MOUSE-001', 'Mouse', '11111111565TR', 'MOUSE', 'MOUSE', 'RETURNED', '2022-03-21 16:37:20', 'admin'),
(7, 'MIS-01-014', 'SAMPLE-014', 'MONITOR-001', 'Monitor', '544QW84893', 'MONITOR', 'MONITOR', 'RETURNED', '2022-03-21 16:37:26', 'admin'),
(8, 'MIS-01-018', 'SAMPLE-018', 'MOUSE-0018', 'Mouse', '11111111565TR45374985', 'MOUSE', 'MOUSE', 'RETURNED', '2022-03-21 16:37:37', 'admin'),
(9, 'MIS-01-009', 'SAMPLE-009', 'FLASHDRIVE-001', 'Flashdrive', 'FVCAE0EA4A', 'FLASH DRIVE', 'FLASH DRIVE', 'RETURNED', '2022-03-21 16:37:43', 'admin'),
(10, 'MIS-01-016', 'SAMPLE-016', 'KEYBOARD-004', 'Keyboard', '3AS0QWS45356547', 'keyboard', 'KEYBOARD', 'RETURNED', '2022-03-21 16:37:52', 'admin'),
(11, 'MIS-01-021', 'SAMPLE-021', 'LAPTOP-002', 'Laptop', 'EWEDC544QW84893', 'DELL LAPTOP', 'DELL LAPTOP', 'RETURNED', '2022-03-21 16:37:58', 'admin'),
(12, 'MIS-01-020', 'SAMPLE-020', 'KEYBOARD-003', 'Keyboard', 'K3H493B90-90', 'KEYBOARD', 'KEYBOARD', 'RETURNED', '2022-03-21 16:38:03', 'admin'),
(13, 'MIS-01-019', 'SAMPLE-019', 'DPORT-001', 'DisplayPort Cable', 'K3H493B3424', 'DISPLAY PORT', 'DISPLAY PORT', 'RETURNED', '2022-03-21 16:38:08', 'admin'),
(14, 'MIS-01-024', 'SAMPLE-024', 'VGA-001', 'VGA Cable', 'ASs4RQ3', 'VGA CABLE', 'VGA CABLE', 'RETURNED', '2022-03-21 16:38:13', 'admin'),
(15, 'MIS-01-017', 'SAMPLE-017', 'EXT-HDD-001', 'External HDD', '564regfdgfg', 'EXTERNAL HDD', 'EXTERNAL HDD', 'RETURNED', '2022-03-21 16:38:20', 'admin'),
(16, 'MIS-01-010', 'SAMPLE-010', 'DESKTOP-001', 'Desktop', 'YE89AKSAGCV34', 'DESKTOP', 'DESKTOP', 'RETURNED', '2022-03-21 16:38:27', 'admin'),
(17, 'MIS-01-001', 'SAMPLE-001', 'JABRA-001', 'Speaker', '97803-225', 'JABRA SPK', 'JABRA', 'RETURNED', '2022-03-21 16:38:34', 'admin'),
(18, 'MIS-01-023', 'SAMPLE-023', 'LAPTOP-004', 'Laptop', '97SD803-225FD', 'HP Z BOOK WORKSTATION LAPTOP', 'HP Z BOOK WORKSTATION LAPTOP', 'RETURNED', '2022-03-22 12:28:42', 'admin'),
(19, 'MIS-01-008', 'SAMPLE-008', 'HDMI-CBL-001', 'HDMI Cable', '40385256546', 'HDMI CABLE', 'HDMI CABLE', 'RETURNED', '2022-03-22 12:28:48', 'admin'),
(20, 'MIS-01-001', 'SAMPLE-001', 'JABRA-001', 'Speaker', '97803-225', 'JABRA SPK', 'JABRA', 'RETURNED', '2022-03-22 12:28:54', 'admin'),
(21, 'MIS-01-022', 'SAMPLE-022', 'LAPTOP-003', 'Laptop', '115345111111565TR', 'HP Z BOOK WORKSTATION LAPTOP', 'HP Z BOOK WORKSTATION LAPTOP', 'RETURNED', '2022-03-22 12:28:59', 'admin'),
(22, 'MIS-01-021', 'SAMPLE-021', 'LAPTOP-002', 'Laptop', 'EWEDC544QW84893', 'DELL LAPTOP', 'DELL LAPTOP', 'RETURNED', '2022-03-22 12:29:04', 'admin'),
(23, 'MIS-01-004', 'SAMPLE-003', 'LAPTOP-001', 'Laptop', '10s547d83s', 'ACER LAPTOP', 'LAPTOP', 'RETURNED', '2022-03-22 12:29:10', 'admin'),
(24, 'MIS-01-001', 'SAMPLE-001', 'JABRA-001', 'Speaker', '97803-225', 'JABRA SPK', 'JABRA', 'RETURNED', '2022-03-22 16:15:29', 'admin'),
(25, 'MIS-01-001', 'SAMPLE-001', 'JABRA-001', 'Speaker', '97803-225', 'JABRA SPK', 'JABRA', 'RETURNED', '2022-03-22 16:16:44', 'admin'),
(26, 'MIS-01-008', 'SAMPLE-008', 'HDMI-CBL-001', 'HDMI Cable', '40385256546', 'HDMI CABLE', 'HDMI CABLE', 'RETURNED', '2022-03-24 16:41:57', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `department` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `user_id`, `user_name`, `pass`, `department`) VALUES
(1, 'user-001', 'jet', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'MIS'),
(4, 'user-002', 'joy', '5f6955d227a320c7f1f6c7da2a6d96a851a8118f', 'ADM'),
(6, 'user-003', 'patrick', 'd5f12e53a182c062b6bf30c1445153faff12269a', 'MIS'),
(7, 'user-004', 'nancy', 'c73efdc073373206c96f3243cedaa0718ca698e9', 'WHE'),
(8, 'user-005', 'KAISER', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'FIN'),
(9, 'user-006', 'JOEL', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'TCE/CE');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `borrowed_items`
--
ALTER TABLE `borrowed_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `returned_items`
--
ALTER TABLE `returned_items`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `borrowed_items`
--
ALTER TABLE `borrowed_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `returned_items`
--
ALTER TABLE `returned_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
