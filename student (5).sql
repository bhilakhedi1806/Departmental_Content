-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2019 at 12:47 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student`;
create database student;
use student;
--

-- --------------------------------------------------------

--
-- Table structure for table `fifth_sem`
--

CREATE TABLE `fifth_sem` (
  `Sub_code` int(10) NOT NULL,
  `Subjects` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fifth_sem`
--

INSERT INTO `fifth_sem` (`Sub_code`, `Subjects`) VALUES
(501, 'WEB TECHNOLOGY'),
(502, 'JAVA PROGRAMMING'),
(503, 'HARDWARE INSTALLATION AND MAINTENANCE'),
(504, 'SOFTWARE ENGINEERING'),
(511, 'WIRELESS COMMUNICATION AND  MOBILE COMPUTING');

-- --------------------------------------------------------

--
-- Table structure for table `first_sem`
--

CREATE TABLE `first_sem` (
  `Sub_code` int(10) NOT NULL,
  `Subjects` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `first_sem`
--

INSERT INTO `first_sem` (`Sub_code`, `Subjects`) VALUES
(101, 'COMMUNICATION SKILL'),
(102, 'PHYSICS 	'),
(103, 'MATHEMATICS	 '),
(104, 'COMPUTER FUNDAMENTAL AND APPLICATIONS');

-- --------------------------------------------------------

--
-- Table structure for table `fourth_sem`
--

CREATE TABLE `fourth_sem` (
  `Sub_code` int(10) NOT NULL,
  `Subjects` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fourth_sem`
--

INSERT INTO `fourth_sem` (`Sub_code`, `Subjects`) VALUES
(401, 'COMPUTER NETWORK	'),
(402, 'DATA BASE MANAGEMENT SYSTEM '),
(403, 'LINUX AND SHELL PROGRAMMING'),
(404, 'MICROPROCESSOR AND INTERFACE'),
(411, 'ENTREPRENEURSHIP MARKETING MANAGEMENT');

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `Name` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `second_sem`
--

CREATE TABLE `second_sem` (
  `Sub_code` int(10) NOT NULL,
  `Subjects` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `second_sem`
--

INSERT INTO `second_sem` (`Sub_code`, `Subjects`) VALUES
(201, 'PROGRAMMING IN C'),
(202, 'ENVIRONMENTAL ENGINEERING AND SAFETY'),
(203, 'DIGITAL TECHNIQUES	'),
(204, ' BASIC ELECTRICAL, ELECTRONICS & MEASUREMENTS');

-- --------------------------------------------------------

--
-- Table structure for table `sixth_sem`
--

CREATE TABLE `sixth_sem` (
  `Sub_code` int(10) NOT NULL,
  `Subjects` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sixth_sem`
--

INSERT INTO `sixth_sem` (`Sub_code`, `Subjects`) VALUES
(601, 'COMPUTER GRAPHICS MULTIMEDIA AND ANIMATION'),
(613, 'ADVANCED WEB TECHNOLOGY'),
(621, 'DATA MINING AND DATA WAREHOUSING ');

-- --------------------------------------------------------

--
-- Table structure for table `third_sem`
--

CREATE TABLE `third_sem` (
  `Sub_code` int(10) NOT NULL,
  `Subjects` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `third_sem`
--

INSERT INTO `third_sem` (`Sub_code`, `Subjects`) VALUES
(301, 'COMPUTER ARCHITECTURE'),
(302, 'OPRETINNG SYSTEM'),
(303, 'DATA COMMUNICATION'),
(304, 'DATA STRUCTURE AND ALGORITHM');

-- --------------------------------------------------------

--
-- Table structure for table `year2016`
--

CREATE TABLE `year2016` (
  `Enrollment_Number` varchar(11) NOT NULL,
  `Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `year2016`
--

INSERT INTO `year2016` (`Enrollment_Number`, `Name`) VALUES
('15018C04001', 'Ajay Malviya'),
('15018C04019', 'Jayram Bilare'),
('15018C04052', 'Sneh '),
('15018C04057', 'Vrijesh Jatav'),
('15018C04058', 'Sandeep Limoney'),
('15018C04061', 'Yogita Statankar'),
('16018C04002', 'Abhishek Pachore'),
('16018C04003', 'Aditya Chandravanshi'),
('16018C04005', 'Aman Pal'),
('16018C04006', 'Aniket Soni'),
('16018C04007', 'Aniket Varma'),
('16018C04011', 'Aprana Tomar'),
('16018C04019', 'Divy Guha'),
('16018C04021', 'Hement Sahu'),
('16018C04022', 'Kumari Pratibha Malviya'),
('16018C04026', ' Mrityunjay Solanki'),
('16018C04038', 'Pratima Billore'),
('16018C04045', 'Sanjay Chouhan'),
('16018C04048', ' Savita Umariya'),
('16018C04056', 'Soham Vyas'),
('16018C04058', 'Sunil Yaduvanshi');

-- --------------------------------------------------------

--
-- Table structure for table `year2017`
--

CREATE TABLE `year2017` (
  `Enrollment_Number` varchar(11) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `year2017`
--

INSERT INTO `year2017` (`Enrollment_Number`, `Name`) VALUES
('15018C04035', 'Priyanka '),
('15018C04058', 'Virendra Kumar'),
('16018C04013', 'Bharti Tawar'),
('16018C04014', 'Chandan Ransurma'),
('16018C04015', 'Deepak'),
('16018C04020', 'Harshita Sharma'),
('16018C04033', 'Nisha Manik'),
('16018C04040', 'Rahul Pandram'),
('16018C04044', 'Sanjay Amkare'),
('16018C04047', 'Satyam Gour'),
('16018C04055', 'Shubham '),
('17018C04002', 'Abhishek Lowanshi'),
('17018C04003', 'Akansha Kaithwas'),
('17018C04004', 'Akash Rajpoot'),
('17018C04006', 'Alok Pal'),
('17018C04007', 'Anurag Chhalotre'),
('17018C04009', 'Ashish Kumar'),
('17018C04010', 'Ashis Thakre'),
('17018C04011', 'Ayush Chourey'),
('17018C04014', 'Chandan Kadole'),
('17018C04015', 'Deepak Kumar'),
('17018C04019', 'Gaurishankar Nagbel'),
('17018C04021', 'Govind Dhakad'),
('17018C04022', 'Gulshan Ghanekar'),
('17018C04025', 'Jayprakash Yadav'),
('17018C04026', 'Jitesh Vishvakarma'),
('17018C04027', 'Jyoti Harne'),
('17018C04029', 'Komal Chadokar'),
('17018C04031', 'Love Kumar'),
('17018C04035', 'Monika Sakle'),
('17018C04039', 'Rahul Pathade'),
('17018C04040', 'Rajesh Prajapati'),
('17018C04042', 'Ranu Malviya'),
('17018C04043', ' Ravi Dongre'),
('17018C04044', 'Rishabh Gharghre'),
('17018C04046', 'Roshan Jhod'),
('17018C04047', 'Sachin Chouhan'),
('17018C04048', 'Sevanti Sitole'),
('17018C04050', 'Tarun Badodiya'),
('17018C04051', 'Varsha Piplode'),
('17018C04053', 'Yash Kumar'),
('17018C04054', 'Yogesh Gurjar'),
('17018C04055', 'Yogiraj Dhote');

-- --------------------------------------------------------

--
-- Table structure for table `year2018`
--

CREATE TABLE `year2018` (
  `Enrollment_Number` varchar(11) NOT NULL,
  `Name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `year2018`
--

INSERT INTO `year2018` (`Enrollment_Number`, `Name`) VALUES
('18018C04002', 'Abhishek Badodiya'),
('18018C04005', 'Ajay Nagraj'),
('18018C04007', 'Aman Deshmukh'),
('18018C04009', 'Anurag Kushwah'),
('18018C04010', 'Himanshu Ajane'),
('18018C04011', 'Jaya Vishnoi'),
('18018C04012', 'Karan Dubey'),
('18018C04013', 'Karti Jadham'),
('18018C04014', 'Kuldeep Atle'),
('18018C04015', 'Lokesh Dole'),
('18018C04016', 'Mazz'),
('18018C04017', 'Manish Meena'),
('18018C04019', 'Maya Chourey'),
('18018C04020', 'Nitesh Malviya'),
('18018C04023', 'Priyanka Rathore'),
('18018C04024', 'Rajat Sharma'),
('18018C04025', 'Rajkumar'),
('18018C04026', 'Rishabh Raykher'),
('18018C04027', 'Ritesh Kumar'),
('18018C04029', 'Rohit Ghanote'),
('18018C04030', 'Roshni Gour'),
('18018C04031', 'Sagar Ratre'),
('18018C04032', 'Sangini Shroti'),
('18018C04033', 'Shahnoor Khan'),
('18018C04034', 'Shailendra Parihar'),
('18018C04035', 'Shivnarayan Sitole'),
('18018C04036', 'Shivani Kushwah'),
('18018C04037', 'Shivani Pipalde'),
('18018C04038', 'Shivani Sahu'),
('18018C04039', 'Shoyeb Khan'),
('18018C04040', 'Suyash Banke'),
('18018C04041', 'Vishakha Yadav'),
('18018C04042', 'Vishal Gour'),
('18018C04043', 'Vishwajeet Rajput'),
('18018C04044', 'Yash Chourey'),
('18018C04045', 'Yogesh Tyagi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fifth_sem`
--
ALTER TABLE `fifth_sem`
  ADD PRIMARY KEY (`Sub_code`);

--
-- Indexes for table `first_sem`
--
ALTER TABLE `first_sem`
  ADD PRIMARY KEY (`Sub_code`);

--
-- Indexes for table `fourth_sem`
--
ALTER TABLE `fourth_sem`
  ADD PRIMARY KEY (`Sub_code`);

--
-- Indexes for table `second_sem`
--
ALTER TABLE `second_sem`
  ADD PRIMARY KEY (`Sub_code`);

--
-- Indexes for table `sixth_sem`
--
ALTER TABLE `sixth_sem`
  ADD PRIMARY KEY (`Sub_code`);

--
-- Indexes for table `third_sem`
--
ALTER TABLE `third_sem`
  ADD PRIMARY KEY (`Sub_code`);

--
-- Indexes for table `year2016`
--
ALTER TABLE `year2016`
  ADD PRIMARY KEY (`Enrollment_Number`);
ALTER TABLE `year2016` ADD FULLTEXT KEY `Name` (`Name`);

--
-- Indexes for table `year2017`
--
ALTER TABLE `year2017`
  ADD UNIQUE KEY `Enrollment_Number` (`Enrollment_Number`);

--
-- Indexes for table `year2018`
--
ALTER TABLE `year2018`
  ADD PRIMARY KEY (`Enrollment_Number`) USING BTREE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
