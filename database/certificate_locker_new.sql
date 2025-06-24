-- phpMyAdmin SQL Dump
-- version 2.11.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 09, 2024 at 05:52 PM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `certificate_locker_new`
--

-- --------------------------------------------------------

--
-- Table structure for table `nt_blockchain`
--

CREATE TABLE `nt_blockchain` (
  `id` int(11) NOT NULL default '0',
  `block_id` int(11) NOT NULL,
  `pre_hash` varchar(200) NOT NULL,
  `hash_value` varchar(200) NOT NULL,
  `sdata` varchar(200) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nt_blockchain`
--

INSERT INTO `nt_blockchain` (`id`, `block_id`, `pre_hash`, `hash_value`, `sdata`) VALUES
(1, 1, '00000000000000000000000000000000', 'fa7f41ebc7df774de68eaac9cfc16a69', 'ID:1,User:Sathish, KYC Code:CN03231, Key:eadab031, RegDate:03-03-2023'),
(2, 1, 'fa7f41ebc7df774de68eaac9cfc16a69', '05ad2df9e306b04c6ed15ff7b480bd4e', 'ID:1,User:Sathish, KYC Code:CN03231, RegDate:03-03-2023, Access by sathish'),
(3, 2, '05ad2df9e306b04c6ed15ff7b480bd4e', '6f79d17becb277e4896795867f5b24e2', 'ID:2,User:Sathish, KYC Code:CN12232, Key:22112de5, RegDate:23-12-2023'),
(4, 2, '6f79d17becb277e4896795867f5b24e2', '7bd59e97354582c7eef1cdf2ced18e90', 'ID:2,User:Sathish, KYC Code:CN12232, RegDate:23-12-2023, Access by sathish'),
(5, 1, '7bd59e97354582c7eef1cdf2ced18e90', '2f071c096ba03b3e43c7131a32ce517a', 'ID:1,User:Rajan, KYC Code:CI442001499, RegDate:09-03-2024, Access by unauthorized'),
(6, 1, '2f071c096ba03b3e43c7131a32ce517a', '2f071c096ba03b3e43c7131a32ce517a', 'ID:1,User:Rajan, KYC Code:CI442001499, RegDate:09-03-2024, Access by unauthorized'),
(7, 1, '2f071c096ba03b3e43c7131a32ce517a', '9148e8c0e05cb595ef186d243616cbcc', 'ID:1,User:Rajan, KYC Code:CI919001358, RegDate:09-03-2024, Access by U24393001'),
(8, 1, '9148e8c0e05cb595ef186d243616cbcc', '9148e8c0e05cb595ef186d243616cbcc', 'ID:1,User:Rajan, KYC Code:CI919001358, RegDate:09-03-2024, Access by U24393001');

-- --------------------------------------------------------

--
-- Table structure for table `nt_cca`
--

CREATE TABLE `nt_cca` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `address` varchar(40) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `utype` varchar(20) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nt_cca`
--

INSERT INTO `nt_cca` (`id`, `name`, `mobile`, `email`, `address`, `uname`, `pass`, `state`, `utype`, `status`) VALUES
(1, 'Rajiv', 9034566264, 'cca_verify@gmail.com', 'Chennai', 'CCA1', '12345', '', 'CCA', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nt_certificate`
--

CREATE TABLE `nt_certificate` (
  `id` int(11) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `ctype` varchar(30) NOT NULL,
  `filename` varchar(50) NOT NULL,
  `detail` varchar(100) NOT NULL,
  `rdate` varchar(20) NOT NULL,
  `status` int(11) NOT NULL,
  `canno` varchar(20) NOT NULL,
  `transfer_sii` varchar(20) NOT NULL,
  `transfer_siv` varchar(20) NOT NULL,
  `transfer_ccv` varchar(20) NOT NULL,
  `transfer_cca` varchar(20) NOT NULL,
  `ckey` varchar(20) NOT NULL,
  `c_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nt_certificate`
--

INSERT INTO `nt_certificate` (`id`, `uname`, `ctype`, `filename`, `detail`, `rdate`, `status`, `canno`, `transfer_sii`, `transfer_siv`, `transfer_ccv`, `transfer_cca`, `ckey`, `c_status`) VALUES
(1, 'U24393001', '', 'F1cr4.jpg', 'certificate', '09-03-2024', 0, 'CI182001366', '', '', '', '', 'db779af7', 0),
(2, 'U24393001', '', 'F2ccr.jpg', 'certificate', '09-03-2024', 0, 'CI781002381', '', '', '', '', 'ea0d8dd0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nt_certificate_issued`
--

CREATE TABLE `nt_certificate_issued` (
  `id` int(11) NOT NULL,
  `kyc_code` varchar(20) NOT NULL,
  `filename` varchar(50) NOT NULL,
  `description` varchar(100) NOT NULL,
  `hash_value` varchar(100) NOT NULL,
  `face_status` int(11) NOT NULL,
  `text_value` text NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `issue_date` varchar(20) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `value1` text NOT NULL,
  `value2` text NOT NULL,
  `value3` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nt_certificate_issued`
--

INSERT INTO `nt_certificate_issued` (`id`, `kyc_code`, `filename`, `description`, `hash_value`, `face_status`, `text_value`, `name`, `email`, `issue_date`, `uname`, `value1`, `value2`, `value3`) VALUES
(1, 'CI182001366', 'F1cr4.jpg', 'certificate', 'ecdb73e7e61cdb7bbb2e938cdc8b2e21', 1, 'oho a] cm z digitaldefynd find the best courses online PRIME CERTIFICATE S. VANITHA has successfully completed the dynamics of infectious diseases course and has been awarded this Digital Defynd Certificate in August 2021. Pttaffa ’ Certificate UID Prateek Shah Do2010476 q Founder mE HH) d ro ', 'Rajan', 'rajan@gmail.com', '09-03-2024', 'SS1', '', '', ''),
(2, 'CI781002381', 'F2ccr.jpg', 'certificate', 'ffd26e1ea57e1c32e9b311ff8e5d64a9', 0, 'digitaldefynd find the best courses online PRIME CERTIFICATE S. VANITHA has successfully completed the dynamics of infectious diseases course and has been awarded this Digital Defynd Certificate in August 2021. Pintoifd | Certificate UID Prateek Shah Do2010476 Founder ', 'Rajan', 'bgeduscanner@gmail.com', '09-03-2024', 'SS1', '', '', ''),
(3, 'CI534003632', 'F3cr1.jpg', 'certificate', '64da1deae9f4348d535bc50ca9acb7e6', 1, 'Gateway Road University CERTIFICATE OF ATTENDANCE This certificate is given to David Martin for attending the Fundamentals of Financial and Managerial Accountancy seminar last June 28 to 29, 2031. Given this July 01, 2031. Trevor Fry Organizer ', 'Rajan', 'bgeduscanner@gmail.com', '09-03-2024', 'SS1', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `nt_issuer`
--

CREATE TABLE `nt_issuer` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `address` varchar(40) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nt_issuer`
--

INSERT INTO `nt_issuer` (`id`, `name`, `mobile`, `email`, `address`, `uname`, `pass`, `status`) VALUES
(1, 'Gokul', 9893478595, 'gokul@gmail.com', 'Chennai', 'SS1', '123456', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nt_login`
--

CREATE TABLE `nt_login` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nt_login`
--

INSERT INTO `nt_login` (`username`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `nt_proof`
--

CREATE TABLE `nt_proof` (
  `id` int(11) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `cid` int(11) NOT NULL,
  `filename` varchar(50) NOT NULL,
  `detail` varchar(100) NOT NULL,
  `rdate` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nt_proof`
--


-- --------------------------------------------------------

--
-- Table structure for table `nt_register`
--

CREATE TABLE `nt_register` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `address` varchar(50) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `private_key` varchar(20) NOT NULL,
  `public_key` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nt_register`
--

INSERT INTO `nt_register` (`id`, `name`, `mobile`, `email`, `address`, `uname`, `pass`, `private_key`, `public_key`) VALUES
(1, 'Rajan', 9894442716, 'rajan@gmail.com', '6/7, FG Nagar', 'U24393001', '123456', 'c5aa4c2c', '78067fa1');

-- --------------------------------------------------------

--
-- Table structure for table `nt_require`
--

CREATE TABLE `nt_require` (
  `id` int(11) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `cid` int(11) NOT NULL,
  `detail` varchar(100) NOT NULL,
  `rdate` varchar(20) NOT NULL,
  `verifier` varchar(20) NOT NULL,
  `cno` varchar(20) NOT NULL,
  `ckey` varchar(20) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nt_require`
--

INSERT INTO `nt_require` (`id`, `uname`, `cid`, `detail`, `rdate`, `verifier`, `cno`, `ckey`, `status`) VALUES
(1, 'U24393001', 1, 'Provisional Certificate', '09-03-2024', 'CCA1', 'CI919001358', '78067fa1', 1),
(2, 'U24393001', 1, 'Provisional Certificate', '09-03-2024', 'CCA1', 'CI605001737', '78067fa1', 0),
(3, 'U24393001', 2, 'certificate', '09-03-2024', 'CCA1', 'CI781002381', '78067fa1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nt_tamper`
--

CREATE TABLE `nt_tamper` (
  `id` int(11) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `canno` varchar(20) NOT NULL,
  `hash1` varchar(100) NOT NULL,
  `hash2` varchar(100) NOT NULL,
  `filename` varchar(50) NOT NULL,
  `face_status` int(11) NOT NULL,
  `text_value` text NOT NULL,
  `upload_file` varchar(50) NOT NULL,
  `value1` text NOT NULL,
  `value2` text NOT NULL,
  `value3` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nt_tamper`
--

INSERT INTO `nt_tamper` (`id`, `uname`, `canno`, `hash1`, `hash2`, `filename`, `face_status`, `text_value`, `upload_file`, `value1`, `value2`, `value3`) VALUES
(1, 'U24393001', 'CI534003632', '64da1deae9f4348d535bc50ca9acb7e6', 'ad6fe208a38429eaa58416db448f3ca7', 'F3cr11.jpg', 0, 'Gateway Road University CERTIFICATE OF ATTENDANCE This certificate is given to ASHOK KUMAR for attending the Fundamentals of Financial and Managerial Accountancy seminar last June 28 to 29, 2031. Given this July 01, 2031. Trevor Fry Organizer ', '', '', '', '');
