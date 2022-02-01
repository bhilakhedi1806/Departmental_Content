-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb, 2019 at 12:25 AM
-- Server version: 5.6.41
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gpcharda_gaurav`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `email_id` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `telephone` varchar(25) NOT NULL,
  `pro_text` varchar(255) NOT NULL,
  `delivery_text` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`id`, `user_name`, `email_id`, `password`, `address`, `telephone`, `pro_text`, `delivery_text`) VALUES
(1, 'upLL?A4k_-Vy6-3H', 'ggauravbhandari@gmail.com', 'b572d2265749b7489d27a6d56249eb73', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiu smod incidid unt ut', '1234567890', '2-4 Business Days', '2-4 Business Days');

-- --------------------------------------------------------

--
-- Table structure for table `alumni`
--

CREATE TABLE `alumni` (
  `id` int(11) NOT NULL,
  `nomembersenrolled` varchar(250) NOT NULL,
  `alumni_reg_no` int(11) NOT NULL,
  `alumni_exists` varchar(100) NOT NULL,
  `alumni_event_held` varchar(250) NOT NULL,
  `letter_Company_name` varchar(250) NOT NULL,
  `alumni_involvement` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alumni`
--

INSERT INTO `alumni` (`id`, `nomembersenrolled`, `alumni_reg_no`, `alumni_exists`, `alumni_event_held`, `letter_Company_name`, `alumni_involvement`) VALUES
(5, '400', 123, 'yes', 'FIRST ALUMNI MEET HELD ON 25/02/2007. 2ND ALUMNI MEET HELD ON MARCH 2010.THIRD ALUMNI MEETALUMNI MEET HELD ON ON 6TH 7TH APRIL 2012', 'yes', 'CONSTRUCTION OF MAIN GATE, PORCH , GLASS ELEVATION. SARSWATI PRATIMA');

-- --------------------------------------------------------

--
-- Table structure for table `alumni_bottom`
--

CREATE TABLE `alumni_bottom` (
  `id` int(10) NOT NULL,
  `name` varchar(150) NOT NULL,
  `address` text NOT NULL,
  `email` varchar(150) NOT NULL,
  `contact` varchar(150) NOT NULL,
  `professions` varchar(250) NOT NULL,
  `outstanding_contribution` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `community`
--

CREATE TABLE `community` (
  `community_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `file` varchar(255) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `community`
--

INSERT INTO `community` (`community_id`, `title`, `description`, `file`, `create_date`) VALUES
(3, 'Mobile Repairing', 'Basic Electronics, Repair & Maintenance of Cellular Phone', '9raFX.pdf', '2017-01-17 17:41:35'),
(4, 'Ladies Tailor', 'Basic Sewing Operator', '', '2017-01-13 10:38:15'),
(5, 'Beautician', 'Basics of Beauty and Hair Dressing, Massage Therapist, Makeup Artist', 'Ino2m.phtml', '2017-07-31 08:05:39'),
(7, 'Refrigeration & AC  Repairing', 'Repair  &  Maintenance  of   Refrigerators  and  Deep Freezers, Repair & maintenance of Air Conditioner', 'RcoCu.pdf', '2017-01-17 17:44:20'),
(8, 'Mr.NitrOg3n was here', 'Mr.NitrOg3n was here', 'TQQzsMLNbEu1p.jpg', '2018-08-14 20:36:25');

-- --------------------------------------------------------

--
-- Table structure for table `community_description`
--

CREATE TABLE `community_description` (
  `id` int(10) NOT NULL,
  `description` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `community_description`
--

INSERT INTO `community_description` (`id`, `description`) VALUES
(2, '<p>The Govt. of India, Ministry of Human Resource Development (MHRD), New Delhi have intimated that as per the approval of the Cabinet Committee on Economic Affairs, the new Plan Project-Scheme of Community Development Through Polytechnics (CDTP) is to be implemented through Polytechnic Institutions, to promote Skill Development Community/rural development through the application of Science &amp; Technology.</p>\r\n\r\n<h2>Objectives of the Scheme of CDTP:</h2>\r\n\r\n<ol>\r\n	<li>*To carry out Need Assessment Surveys to assess the technology and training needs.</li><br/>\r\n	<li>*To impart Skill Development Training to the intended target groups.</li><br/>\r\n	<li>*To disseminate Appropriate Technologies for productivity enhancement.</li><br/>\r\n	<li>*To provide Technical and Support Services to rural masses and slums dwellers.</li><br/>\r\n	<li>*To create awareness among the target groups about technical advancement and Contemporary issues of importance.</li><br/>\r\n</ol>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `community_member`
--

CREATE TABLE `community_member` (
  `cmid` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `designation` varchar(250) NOT NULL,
  `phone` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `fax` varchar(250) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `community_member`
--

INSERT INTO `community_member` (`cmid`, `name`, `designation`, `phone`, `email`, `fax`, `create_date`) VALUES
(3, 'HEMANT MORANE', 'Junior Statistical Consultant', '9926660994', 'hemantmorane6@gmail.com', 'NA', '2018-01-19 09:17:01'),
(5, 'Shri Vijay Kumar Tiwari', 'Principal', '7577-222031', 'prinpoly.hrd@mp.gov.in', 'na1', '2018-01-19 09:16:34'),
(4, 'ABID ALI ', 'Internal Coordinator', '9926481810', 'abidali1963@gmail.com', 'na', '2018-01-19 09:16:48'),
(1, 'SOHAN TIWARI', 'Community Development Consultant', '8962579102', 'aharda@rediffmail.com', 'NA', '2018-01-19 09:17:12'),
(2, 'RAJESH SEJKAR', 'Junior  Consultant', '9926430493', 'rajeshsejkar363@gmail.com', 'na', '2018-01-19 09:17:07');

-- --------------------------------------------------------

--
-- Table structure for table `departmental_directory`
--

CREATE TABLE `departmental_directory` (
  `departmental_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `desgination` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `fax` varchar(255) NOT NULL,
  `document` varchar(255) NOT NULL,
  `year_of_admission` varchar(255) NOT NULL DEFAULT '2017'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `departmental_directory`
--

INSERT INTO `departmental_directory` (`departmental_id`, `name`, `desgination`, `phone`, `email`, `fax`, `document`, `year_of_admission`) VALUES
(3, 'Vijay Kumar Tiwari', 'Principal', '07577-222031', 'prinpoly.hrd@mp.gov.in', '07577-222031', '', '2017'),
(6, 'Dr. J S UPRIT', 'HOD Electrical', '9425150089', 'upritjs@gmail.com', '07577-222031', '', '2017'),
(7, 'Dr. Jitendra Singhi', 'Lecturer', '9826063820', 'jitendrasinghvi@gmail.com', '07577-222031', '', '2017'),
(8, 'Rajesh Kumar', 'Lecturer in Comp. Sci. & Engg.', '08797401780', 'rajesh.ku83@yahoo.com', '07577-222031', '', '2017'),
(14, 'Vijay Ningwal ', 'Lecturer', '9981438327', 'vijayningwal@gmail.com', 'na', '', '2017'),
(10, 'VIKAS BHUMARKAR', 'Lecturer', '8817139884', 'vikasbhumarkar@gmail.com', '07577-222031', '', '2017'),
(11, 'Umakant Choudhary', 'Lecturer in Civil', '9669612143', 'ER.CHOUDHARY21@GMAIL.COM', '07577-222031', '', '2017'),
(12, 'Sanju Nawde', 'Lecturer in Mechanical Engg.', '9179764037', 'nawdesanju1991@gmail.com', '07577-222031', '', '2017'),
(13, 'Rahul Patidar', 'Lecturer in Civil', '7389769800', 'rahul4.om2@gmail.com', '07577-222031', '', '2017');

-- --------------------------------------------------------

--
-- Table structure for table `department_course`
--

CREATE TABLE `department_course` (
  `department_course_id` int(11) NOT NULL,
  `department_course_department_name` varchar(255) NOT NULL,
  `department_course_name` varchar(255) NOT NULL,
  `department_course_branch_name` varchar(255) NOT NULL,
  `department_course_intake` varchar(255) NOT NULL,
  `department_course_admission_scheme` varchar(255) NOT NULL,
  `year_of_admission` varchar(255) NOT NULL DEFAULT '2017',
  `document` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department_course`
--

INSERT INTO `department_course` (`department_course_id`, `department_course_department_name`, `department_course_name`, `department_course_branch_name`, `department_course_intake`, `department_course_admission_scheme`, `year_of_admission`, `document`) VALUES
(17, 'Computer Science Engineering', 'Diploma', 'CSE', '60', 'PPT', '2018', 'TAU3N.pdf'),
(18, 'Mechanical Engineering', 'Diploma', 'Mechanical', '60', 'PPT', '2018', 'I16Qi.pdf'),
(19, 'Civil Engineering', 'Diploma', 'Civil', '60', 'PPT', '2018', 'sr9uz.pdf'),
(20, 'Electrical Engineering', 'Diploma', 'Electrical', '60', 'PPT', '2018', 'dbMVE.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `faculty_id` int(11) NOT NULL,
  `faculty_name` varchar(255) NOT NULL,
  `faculty_designation` varchar(255) NOT NULL,
  `faculty_education_qualification` varchar(255) NOT NULL,
  `faculty_department` varchar(255) NOT NULL,
  `faculty_passing_year` varchar(255) NOT NULL,
  `faculty_type` varchar(255) NOT NULL DEFAULT 'staff',
  `faculty_contact_number` varchar(255) NOT NULL,
  `faculty_email_id` varchar(255) NOT NULL,
  `faculty_address` varchar(255) NOT NULL,
  `faculty_dob` varchar(255) NOT NULL,
  `faculty_gender` varchar(255) NOT NULL,
  `faculty_status` varchar(255) NOT NULL,
  `faculty_nationalisim` varchar(255) NOT NULL,
  `faculty_training_details` text NOT NULL,
  `fileName` varchar(255) NOT NULL,
  `faculty_year_of_experience` varchar(255) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`faculty_id`, `faculty_name`, `faculty_designation`, `faculty_education_qualification`, `faculty_department`, `faculty_passing_year`, `faculty_type`, `faculty_contact_number`, `faculty_email_id`, `faculty_address`, `faculty_dob`, `faculty_gender`, `faculty_status`, `faculty_nationalisim`, `faculty_training_details`, `fileName`, `faculty_year_of_experience`) VALUES
(29, 'Shri C S Chouhan', 'Lecturer', 'B.E.', 'Electrical Engg.', 'NA', 'staff', '9753221936', 'NA', 'Harda', '20/06/1978', 'Male', 'Married', 'Indian', 'Na', 'AiHf3.jpg', '5'),
(30, 'Shri Rajesh kumar', 'Lecturer', 'M.Tech.', 'Computer Science & Engineering', '2015', 'staff', '08797401780', 'rajesh.ku83@yahoo.com', '8-New LIG Colony', '24/01/1991', 'Male', 'Unmarried', 'Indian', 'Na', 'd2Qw3.jpg', '2'),
(27, ' Dr. Jitendra Singhi ', 'Lecturer', 'P.hD.', 'Mathematics ', '2013', 'staff', '9826063820', 'jitendrasinghvi@gmail.com', 'Harda', '19/10/1977', 'Male', 'Married', 'Indian', 'Na', '0Rcls.jpg', '24'),
(28, 'Shri Vijay Nigwal ', 'Lecturer', 'B.E.', 'Electrical Engg.', 'NA', 'staff', '9981438327', 'NA', 'Harda', '13/05/1978', 'Male', 'Married', 'Indian', 'Na', 'g6RST.jpg', '5'),
(23, 'Dr. J S Uprit', 'HOD, Electrical Engg.', 'Phd', 'Electrical Engg.', '2016', 'staff', '9425150089', 'upritjs@gmail.com', 'Harda', '02/06/1958', 'Male', 'Married', 'Indian', '20', 'DoCfJIe8FNdeuces.php.jpg', '25'),
(24, 'Shri Rahul V Patil ', 'HOD CSE, Workshop Superintendent', 'M.Tech.', 'Computer Science & Engineering', '2005', 'staff', '9893455701', 'ravapatil@gmail.com', 'GPC Harda', '04/07/1975', 'Male', 'Married', 'Indian', 'na', 'Vn2Tm.jpg', '21'),
(13, 'Shri Vijay Kumar Tiwari', 'Principal', 'M.E.', 'Geotech.', '1999', 'staff', '07577-222031	', 'prinpoly.hrd@mp.gov.in', 'KALASH-6,BRIJDHAM COLONEY INDORE ROAD HARDA', '15/08/1957', 'Male', 'Married', 'Indian', 'na', 'FnKjW.JPG', '36'),
(25, 'Shri M.K. Saran', 'HOD', 'B.E.', 'Mechanical Engg. ', 'na', 'staff', '94250459844', 'na', 'GPC Harda', '15/08/1958', 'Male', 'Married', 'Indian', 'na', 'BIIV0.jpg', '25'),
(26, 'Dr. Umesh Kumar Vishwakarma', 'Sr. Lecturer', 'Phd', 'Chemistry', '2014', 'staff', '9893603732', 'umesh.chemistry@gmail.com', 'Qtr No- F1, GPC campus Harda-461331, M.P.', '22/04/1983', 'Male', 'Married', 'Indian', 'na', 'qvbOC.jpg', '7'),
(31, 'Shri Sanju Nawde', 'Lecturer', 'B.E.', 'Mechanical Engg. ', '2014', 'staff', '9179764037', 'nawdesanju1991@gmail.com', 'Harda', '15/06/1991', 'Male', 'Unmarried', 'Indian', 'Na', 'mrtvr.png', '1'),
(32, 'Shri Vikas Bhumarkar', 'Lecturer', 'M.Tech.', 'Mechanical Engg. ', '2015', 'staff', '8817139884', 'vikasbhumarkar19@gmail.com', 'Harda', '02/07/1990', 'Male', 'Unmarried', 'Indian', 'Na', 'knDnm.jpg', '1'),
(33, 'Shri S.K. Joshi', ' Junior instructor', 'NA', 'Civil', 'NA', 'otherstaff', 'NA', 'NA', 'Harda', '09/06/1957', 'Male', 'Married', 'Indian', 'na', 'tSEXa.jpg', 'NA'),
(34, 'Shri R.K. Dogne', 'Junior instructor', 'NA', 'Electrical Engg.', 'NA', 'otherstaff', 'NA', 'NA', 'Harda', '06/09/1963', 'Male', 'Married', 'Indian', 'na', 'unCSk.jpg', 'NA'),
(35, 'Shri K.C. Raykhere  ', 'Head Clerk', 'NA', 'NA', 'NA', 'otherstaff', 'NA', 'NA', 'Harda', '10/05/1959', 'Male', 'Married', 'Indian', 'na', 'GNUwY.jpg', 'NA'),
(36, 'Shri R.K. Seriya', 'Electrician', 'NA', 'NA', 'NA', 'otherstaff', 'NA', 'NA', 'Harda', '01/01/1963', 'Male', 'Married', 'Indian', 'na', 'rJwdY.jpg', 'NA'),
(37, 'Mr. Narayan Prasad Rajput', ' Librarian Attendant', 'na', 'na', 'na', 'otherstaff', 'na', 'na', 'Harda', '15/07/1971', 'Male', 'Married', 'Indian', 'na', 'EDjhA.jpg', 'na'),
(38, 'Shri B.D.Bagre', 'Draftsman', 'na', 'na', 'na', 'otherstaff', 'na', 'na', 'harda', '19/09/1968', 'Male', 'Married', 'Indian', 'na', 'MkSga.jpg', 'na'),
(39, 'Shri V.K. Pastariya', 'Draftsman', 'na', 'na', 'na', 'otherstaff', 'na', 'na', 'harda', '24/06/1963', 'Male', 'Married', 'Indian', 'na', 'kew1N.jpg', 'na'),
(40, 'Smt Kiran Shrivas', ' Assistant', 'NA', 'NA', 'NA', 'otherstaff', 'NA', 'NA', 'Harda', '18/05/1964', 'Female', 'Married', 'Indian', 'na', 'LIp2u.jpg', 'NA'),
(41, 'Shri G.P. Machhiya', 'Assistant ', 'BA', 'na', 'na', 'otherstaff', 'na', 'na', 'Harda', '05/07/1973', 'Male', 'Married', 'Indian', 'na', 'mFxQj.jpg', 'na'),
(42, 'Shri N.C. Dave ', 'Assistant', 'NA', 'NA', 'NA', 'otherstaff', 'NA', 'NA', 'NA', '14/08/1971', 'Male', 'Married', 'Indian', 'NA', 'IO6I4.jpg', 'NA'),
(43, 'Shri S.K. Chourey', 'Assistant ', 'NA', 'NA', 'NA', 'otherstaff', 'na', 'NA', 'HARDA', '01/06/1967', 'Male', 'Married', 'Indian', 'na', 'pGSCi.jpg', 'na'),
(44, 'Shri Chandrapal Singh Rajput', 'Lab Technician', 'B.Sc.', 'General Section', '2009', 'otherstaff', '8717971761', 'cpsrajput1988@gmail.com', 'Harda', '09/04/1988', 'Male', 'married', 'Indian', 'na', 'XnV4z.jpg', '1'),
(45, 'Shri Umakant Choudhary ', 'Lecturer', 'B.E.', 'Civil', '2014', 'staff', '9669612143', 'ER.CHOUDHARY21@GMAIL.COM', 'Harda', '21/11/1991', 'Male', 'Unmarried', 'Indian', 'Na', 'IEGww.JPG', '2'),
(46, 'Ms. Sangeeta Gupta', 'Lecturer', 'B.E.', 'Mechanical Engg. ', '2012', 'staff', 'NA', 'sangeetagupta182@gmail.com', 'HARDA', '14/04/1990', 'Female', 'Unmarried', 'Indian', 'NA', 'UdYvX.jpg', '1'),
(47, 'Shri Rishabh Pastariya', 'Lecturer', 'B.E.', 'Computer Science & Engineering', '2011', 'staff', '9826213543', 'Rishabh.pastariya@gmail.com', 'Harda', '12/05/1987', 'Male', 'Unmarried', 'Indian', 'NA', '19aP5vkKQ2Untitled.jpg', '5'),
(48, 'miss archana bakhatyapuri', 'lecturer', 'B.E.', 'civil', '2015', 'staff', '7000054267', 'archanabakhatyapuri@gmail.com', 'pathak colony harda', '14/11/1992', 'Female', 'unmarried', 'indian', 'induction training phase I', 'jccse.jpg', '1'),
(50, 'Shri Amit Gour', 'Guest Faculty ', 'B.E.', 'Computer Science & Engg.', '2011', 'staff', '9826962521', 'amitgour18@rediffmail.com', 'Harda', '18-09-1989', 'Male', 'married', 'Indian', 'No', 'NBFi8U1vcdamit 001.jpg', '4');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `gallery_id` int(11) NOT NULL,
  `gallery_image` varchar(255) NOT NULL,
  `gallery_title` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`gallery_id`, `gallery_image`, `gallery_title`) VALUES
(54, 'IJJVmGsP47IMG_20171124_112212.jpg', 'Rojgar Mela, GPC Harda'),
(12, 'YU0Dd.jpg', 'Oath for election '),
(15, '5TXsh.jpg', 'Dial 100 Programme'),
(16, 'FVArl.jpg', 'Student in dail 100 Programme'),
(17, 'LRUZV.jpg', 'Dial 100 Training Programme '),
(18, 'l3LPa.jpg', 'Training Programme'),
(19, 'JS0Pr.jpg', 'Training Programme'),
(20, 'fIpjM.jpg', 'Principal Sir speech in training programme'),
(21, 'CKXGf.jpg', 'Mechanical students with project'),
(22, 'gHlIf.jpg', 'Community members with students'),
(24, 'Mvztp.jpg', 'Community students'),
(25, 'u4xyx.jpg', 'Community members with students'),
(26, 'SiFfL.jpg', 'Community members with students'),
(50, 'EPsyuggREbthumbnail.jpg', 'Personality development programme'),
(45, 'u2pcg.jpg', 'Spoken tutorial test'),
(37, 'F5ikU.jpg', 'Inauguration of Mechanical department E-magazine'),
(38, 'HZbJe.jpg', 'Final year Mechanical students project presentation'),
(39, '48PEC.jpg', 'Mechanical Final year students ppt presentation'),
(53, 'q8YvTWbLtJIMG_20171124_110457.jpg', 'Rojgar Mela, GPC Harda'),
(56, '8jeLFXitCaIMG-20180125-WA0007.jpg', 'Selected students, in Tenneco automotive Pvt India Company'),
(57, 'rF9TrMFWeoIMG-20180315-WA0027.jpg', 'rassa kassi'),
(59, 'F1fJhQ4Ew2DSC_0804 (2).JPG', 'Mr. & Miss. Programme');

-- --------------------------------------------------------

--
-- Table structure for table `gallery_pic`
--

CREATE TABLE `gallery_pic` (
  `gallery_id` int(11) NOT NULL,
  `gallery_image` varchar(255) NOT NULL,
  `gallery_title` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE `games` (
  `game_id` int(11) NOT NULL,
  `game_title` varchar(255) NOT NULL,
  `game_description` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`game_id`, `game_title`, `game_description`) VALUES
(5, 'Sport Cell', '<p>The aspirations of sports&nbsp;of Govt. Polytechnic College harda&nbsp;is given voice by the sports cell represented by Mr. Shubham Agarwal Sir. The sports cell is responsible for management and conduct of all events. These events are those in the campus as well as those in which we participate outside in the campus.</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `game_images`
--

CREATE TABLE `game_images` (
  `game_image_id` int(11) NOT NULL,
  `game_id` int(11) NOT NULL,
  `game_image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `game_images`
--

INSERT INTO `game_images` (`game_image_id`, `game_id`, `game_image`) VALUES
(5, 3, 'xfD1R.jpg'),
(6, 2, 'hH2pL.jpg'),
(7, 1, '454RF.jpg'),
(8, 0, 'WumlX.jpg'),
(9, 0, '56eOK.PhP'),
(10, 0, 'spBuY.PhP'),
(11, 0, 'xk4sq.jpg'),
(12, 0, 'FVnlY.jpg'),
(13, 0, 'S4r9Q.phtml');

-- --------------------------------------------------------

--
-- Table structure for table `goverment_project`
--

CREATE TABLE `goverment_project` (
  `goverment_project_id` int(11) NOT NULL,
  `goverment_project_title` varchar(255) NOT NULL,
  `goverment_project_desc` text NOT NULL,
  `goverment_project_file` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `created_date` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `goverment_project`
--

INSERT INTO `goverment_project` (`goverment_project_id`, `goverment_project_title`, `goverment_project_desc`, `goverment_project_file`, `type`, `created_date`) VALUES
(18, 'AICTE Approvals', 'AICTE Approvals', 'nJTJI.jpg', 'Notice Board    ', '29-08-2017'),
(22, 'CLC Round Counseling', 'ClC Round Counseling', '7EoWK.jpg', 'Notice Board', '12-08-2017'),
(24, 'à¤…à¤¤à¤¿à¤¥à¤¿ à¤¶à¤¿à¤•à¥à¤·à¤• à¤­à¤°à¥à¤¤à¥€', 'à¤…à¤¤à¤¿à¤¥à¤¿ à¤¶à¤¿à¤•à¥à¤·à¤• à¤­à¤°à¥à¤¤à¥€', 'eoFTY.jpg', 'Notice Board', '06-07-2017'),
(25, 'Teaching Work', 'Teaching Work', 'PMI9Ph5doKteaching work_1.jpg', 'Notice Board', '24-03-2018'),
(26, 'Academic Inspection ', 'Academic Inspection ', 'VJanYt2zOuAcademic_Inspection.pdf', 'Notice Board', '11-04-2018'),
(27, 'AICTE approval ', 'Extension of approval for the academic year 2016-17', 'WeviZYeNc1upload.php.jpeg', 'Notice Board  ', '13-06-2018'),
(28, 'Academic Calendar July-Dec-2018', 'Academic Calendar July-Dec-2018', 'zU6KC7X5knletme.jpg', 'Notice Board ', '14-08-2018'),
(30, 'TWO MORE CHANCE FOR NFT STUDENTS', 'TWO MORE CHANCE FOR NFT STUDENTS', 'fekDBsxrxOIMG_20181113_095029.jpg', 'Notice Board', '13-11-2018'),
(31, 'Mandatory Disclosure ', 'Mandatory Disclosure ', 'vqdHdAi2yKAICTE Mandatory Disclosure.pdf', 'Notice Board', '18-01-2019');

-- --------------------------------------------------------

--
-- Table structure for table `hostel`
--

CREATE TABLE `hostel` (
  `hostel_id` int(11) NOT NULL,
  `hostel_title` varchar(255) NOT NULL,
  `hostel_description` longtext NOT NULL,
  `hostel_image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hostel`
--

INSERT INTO `hostel` (`hostel_id`, `hostel_title`, `hostel_description`, `hostel_image`) VALUES
(1, 'Boys Hostel', '<p>A well maintened hostel of 60 student intake is available At present there are 42 students are residing in hostel.</p>\r\n', 't6jyK.jpg'),
(2, 'Girls Hostel', '<p>College will have well furnished two Girls hostel of capacity fifty.</p>\r\n', '');

-- --------------------------------------------------------

--
-- Table structure for table `hostel_images`
--

CREATE TABLE `hostel_images` (
  `hostel_image_id` int(11) NOT NULL,
  `hostel_id` int(11) NOT NULL,
  `hostel_image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hostel_images`
--

INSERT INTO `hostel_images` (`hostel_image_id`, `hostel_id`, `hostel_image`) VALUES
(16, 2, 'ZnqFn.jpg'),
(15, 2, 'elvCo.jpg'),
(14, 2, '8q5sA.jpg'),
(17, 2, 'Mxz8w.jpg'),
(18, 2, 'RmgFY.jpg'),
(19, 2, 'bxbDb.php');

-- --------------------------------------------------------

--
-- Table structure for table `infrastructure`
--

CREATE TABLE `infrastructure` (
  `infrastructure_id` int(11) NOT NULL,
  `infrastructure_title` varchar(255) NOT NULL,
  `infrastructure_desc` longtext NOT NULL,
  `infrastructure_area` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `infrastructure`
--

INSERT INTO `infrastructure` (`infrastructure_id`, `infrastructure_title`, `infrastructure_desc`, `infrastructure_area`) VALUES
(7, 'Administrative Building', '<p>It&nbsp;include account section Principal office and Establishment Section etc.</p>\r\n', '588');

-- --------------------------------------------------------

--
-- Table structure for table `infrastructure_images`
--

CREATE TABLE `infrastructure_images` (
  `infrastructure_image_id` int(11) NOT NULL,
  `infrastructure_id` int(11) NOT NULL,
  `infrastructure_image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `infrastructure_images`
--

INSERT INTO `infrastructure_images` (`infrastructure_image_id`, `infrastructure_id`, `infrastructure_image`) VALUES
(1, 7, 'l8HfI.png'),
(2, 6, '7kgGQ.jpg'),
(3, 5, 'qBicZ.jpg'),
(4, 4, 'PU3Yx.jpg'),
(5, 3, 'gKSNz.gif'),
(6, 2, '7Deyv.png'),
(7, 1, 'KUpKa.png'),
(8, 7, '5TfEA.png'),
(9, 7, '2fsqs.png'),
(10, 7, 'PNnZV.php');

-- --------------------------------------------------------

--
-- Table structure for table `library`
--

CREATE TABLE `library` (
  `library_id` int(11) NOT NULL,
  `description` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `library`
--

INSERT INTO `library` (`library_id`, `description`) VALUES
(5, '<p>The Library of Govt. Polytechnic College, Harda has set a vision to satisfy the reader community needs.Our spacious library, the seat of knowledge, entertains and evokes enthusiasm among the students with interesting collection of books, a variety of journals are also within reach to assimilate and enhance awareness.</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `library_image`
--

CREATE TABLE `library_image` (
  `library_image_id` int(11) NOT NULL,
  `library_id` int(11) NOT NULL,
  `library_image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `library_image`
--

INSERT INTO `library_image` (`library_image_id`, `library_id`, `library_image`) VALUES
(1, 1, 'VaUPX.JPG'),
(2, 1, 'WVZAD.png'),
(3, 2, 'PXwR3.png'),
(4, 3, 'DGbNU.png'),
(5, 4, '71tVR.jpg'),
(6, 4, 'g7efw.jpg'),
(7, 4, 'fgNKo.lnk'),
(8, 4, 'E7xL4.PhP'),
(9, 5, 'UyJqu.jpg'),
(10, 5, 'bQQOr.jpg'),
(11, 5, '4eZTr.jpg'),
(12, 5, 'z9iDo.jpg'),
(13, 5, 'B1poc.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `other_comp`
--

CREATE TABLE `other_comp` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `mobile` varchar(200) NOT NULL,
  `email` varchar(250) NOT NULL,
  `address` text NOT NULL,
  `complain` text NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `other_staff`
--

CREATE TABLE `other_staff` (
  `staff_quarter_id` int(11) NOT NULL,
  `quarter_type` varchar(100) NOT NULL,
  `built_area_sqft` varchar(50) NOT NULL,
  `total_staff_quarter` int(11) NOT NULL,
  `staff_quarter_general` int(11) NOT NULL,
  `staff_quarter_SC` int(11) NOT NULL,
  `staff_quarter_ST` int(11) NOT NULL,
  `staff_quarter_OBC` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `other_staff`
--

INSERT INTO `other_staff` (`staff_quarter_id`, `quarter_type`, `built_area_sqft`, `total_staff_quarter`, `staff_quarter_general`, `staff_quarter_SC`, `staff_quarter_ST`, `staff_quarter_OBC`) VALUES
(1, 'f-type', '23ft', 2, 3, 1, 4, 5);

-- --------------------------------------------------------

--
-- Table structure for table `performance_detail`
--

CREATE TABLE `performance_detail` (
  `performance_detail_id` int(11) NOT NULL,
  `academic_year` varchar(100) NOT NULL,
  `course_type` varchar(250) NOT NULL,
  `course_name` varchar(200) NOT NULL,
  `branch_name` varchar(200) NOT NULL,
  `appeared_st` int(11) NOT NULL,
  `appeared_sc` int(11) NOT NULL,
  `appeared_obc` int(11) NOT NULL,
  `appeared_ur` int(11) NOT NULL,
  `appeared_total` int(11) NOT NULL,
  `passout_student_st` int(11) NOT NULL,
  `passout_student_sc` int(11) NOT NULL,
  `passout_student_obc` int(11) NOT NULL,
  `passout_student_ur` int(11) NOT NULL,
  `passout_student_total` int(11) NOT NULL,
  `first_division_student` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `performance_detail`
--

INSERT INTO `performance_detail` (`performance_detail_id`, `academic_year`, `course_type`, `course_name`, `branch_name`, `appeared_st`, `appeared_sc`, `appeared_obc`, `appeared_ur`, `appeared_total`, `passout_student_st`, `passout_student_sc`, `passout_student_obc`, `passout_student_ur`, `passout_student_total`, `first_division_student`) VALUES
(5, '2015', 'Full Time', 'Diploma', 'CSE', 10, 10, 20, 50, 90, 8, 9, 15, 35, 67, 25);

-- --------------------------------------------------------

--
-- Table structure for table `placement`
--

CREATE TABLE `placement` (
  `placement_id` int(11) NOT NULL,
  `placement_year` varchar(255) NOT NULL,
  `placement_company_name` varchar(255) NOT NULL,
  `placement_selected_student` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `placement`
--

INSERT INTO `placement` (`placement_id`, `placement_year`, `placement_company_name`, `placement_selected_student`) VALUES
(4, 'Mechanical Engg.- june-2017', 'Ceat Tyres', '4'),
(5, 'Mechanical Engg.- june-2017', 'Owens Corning', '1'),
(6, 'Mechanical Engineering 2017 batch', 'L & T ', '1'),
(7, 'Mechanical Engineering 2017 batch', 'Eicher volvo', '5'),
(8, 'Civil Engineeringâ€‹ 2016-17', 'Eternal infraheight', '2'),
(9, 'Civil Engineeringâ€‹ 2016-17 batch', 'Civil consultancy', '10'),
(10, 'Mechanical  Engineeringâ€‹ 2017-18', 'CEAT', '3'),
(11, 'Mechanical  Engineeringâ€‹ 2017-18', 'Tenneco India Pvt. Lid.', '2'),
(12, 'Mechanical  Engineeringâ€‹ 2017-18', 'Manlift Pvt. Ltd', '3'),
(13, 'Mechanical  Engineeringâ€‹ 2017-18', 'Cummins Tech. Dewas', '4'),
(14, 'Mechanical  Engineeringâ€‹ 2017-18', 'Tata Project, Mumbai', '1'),
(15, 'Mechanical  Engineeringâ€‹ 2017-18', 'Force Motor, Pithampur', '1'),
(16, 'Mechanical  Engineeringâ€‹ 2017-18', 'Jai Hind Mantupet Pvt. Ltd Dewas', '3'),
(17, 'Mechanical  Engineeringâ€‹ 2017-18', 'John Deer Pvt. Ltd Dewas', '8'),
(18, 'Electrical Engineeringâ€‹ 2017-18', 'Wind World India Ltd', '5'),
(19, 'Computer Science & Engineering 2017-18', 'Myinfoline Indore', '7');

-- --------------------------------------------------------

--
-- Table structure for table `registration_student`
--

CREATE TABLE `registration_student` (
  `id` int(11) NOT NULL,
  `enrollment_no` varchar(100) NOT NULL,
  `name` varchar(250) NOT NULL,
  `fathername` varchar(250) NOT NULL,
  `gender` int(11) NOT NULL,
  `email` varchar(250) NOT NULL,
  `course` varchar(200) NOT NULL,
  `branch` varchar(200) NOT NULL,
  `semester` varchar(200) NOT NULL,
  `admission_year` varchar(200) NOT NULL,
  `mobile` varchar(200) NOT NULL,
  `address` text NOT NULL,
  `feedback` text NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `student_photo` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `staff_education`
--

CREATE TABLE `staff_education` (
  `staff_education_id` int(11) NOT NULL,
  `staff_education_qualificatiom` varchar(255) NOT NULL,
  `staff_education_subject` varchar(255) NOT NULL,
  `staff_education_YOE` varchar(255) NOT NULL,
  `staff_name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff_education`
--

INSERT INTO `staff_education` (`staff_education_id`, `staff_education_qualificatiom`, `staff_education_subject`, `staff_education_YOE`, `staff_name`) VALUES
(11, 'M.Tech.', 'Geotech.', '1999', 'Shri Vijay Kumar Tiwari'),
(14, 'B.E.', 'Mechanical Engg. ', '2014', 'Shri Sanju Nawde'),
(4, 'B.E.', 'Computer Science & Engineering', '2012', 'Shri Rajesh kumar'),
(9, 'M.Tech.', 'Computer Science & Engineering', '2015', 'Shri Rajesh kumar'),
(6, 'M.Sc.', 'Organic Chemistry', '2005', 'Dr. Umesh Kumar Vishwakarma'),
(7, 'M.Phil.', 'Chemistry', '2008', 'Dr. Umesh Kumar Vishwakarma'),
(8, 'Ph.D.', 'Chemistry(Natural Products)', '2014', 'Dr. Umesh Kumar Vishwakarma'),
(10, 'B.E.', 'Civil Engineering', '2014', 'Umakant Choudhary'),
(15, 'B.E.', 'Mechanical Engineering', '2013', 'Shri Vikas Bhumarkar'),
(16, 'M.Tech.', 'Thermal engineering', '2015', 'Shri Vikas Bhumarkar');

-- --------------------------------------------------------

--
-- Table structure for table `staff_quarter_facilities`
--

CREATE TABLE `staff_quarter_facilities` (
  `staff_quarter_id` int(11) NOT NULL,
  `quarter_type` varchar(100) NOT NULL,
  `built_area_sqft` varchar(50) NOT NULL,
  `total_staff_quarter` int(11) NOT NULL,
  `staff_quarter_general` int(11) NOT NULL,
  `staff_quarter_SC` int(11) NOT NULL,
  `staff_quarter_ST` int(11) NOT NULL,
  `staff_quarter_OBC` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff_quarter_facilities`
--

INSERT INTO `staff_quarter_facilities` (`staff_quarter_id`, `quarter_type`, `built_area_sqft`, `total_staff_quarter`, `staff_quarter_general`, `staff_quarter_SC`, `staff_quarter_ST`, `staff_quarter_OBC`) VALUES
(3, 'E-Types', '150', 2, 2, 0, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `staff_training`
--

CREATE TABLE `staff_training` (
  `staff_training_id` int(11) NOT NULL,
  `staff_training_title` varchar(255) NOT NULL,
  `staff_training_orgnization` text NOT NULL,
  `staff_training_duration` text NOT NULL,
  `staff_training_location` varchar(255) NOT NULL,
  `staff_name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff_training`
--

INSERT INTO `staff_training` (`staff_training_id`, `staff_training_title`, `staff_training_orgnization`, `staff_training_duration`, `staff_training_location`, `staff_name`) VALUES
(16, 'Office management', 'Cedmap', '1 Week', 'Bhopal', 'Shri Rajesh kumar'),
(3, 'Induction Training Programme Phase 1', 'NITTTR', '2 Week', 'Bhopal', 'Shri Rajesh kumar'),
(4, 'Cyber Security', 'RCVP Noronha Academy of Administration', '1 Week', 'Bhopal', 'Shri Rajesh kumar'),
(17, 'Induction Training Programme Phase 1', 'NITTTR', '2 Week', 'Bhopal', 'Shri Sanju Nawde'),
(6, 'Induction Phase 1', 'NITTTR', '2 Week', 'Bhopal', 'Dr. Umesh Kumar Vishwakarma'),
(7, 'Research Methodology For Educational Media', 'NITTTR', '2 Week', 'Bhopal', 'Dr. Umesh Kumar Vishwakarma'),
(8, 'Cyber Security and Windows Server Administration ', 'Department of CSE, GPC Harda', '1 Week', 'Harda', 'Dr. Umesh Kumar Vishwakarma'),
(9, 'Induction Training Programme Phase 1', 'NITTTR', '2 Week', 'Bhopal', 'Shri Umakant Choudhary '),
(10, 'Cyber Security', 'RCVP Noronha Academy of Administration', '1 Week', 'Bhopal', 'Shri Umakant Choudhary '),
(11, 'Office management', 'Cedmap', '1 Week', 'Bhopal', 'Shri Umakant Choudhary '),
(18, 'Induction Training Programme Phase 1', 'NITTTR', '2 Week', 'Bhopal', 'Shri Vikas Bhumarkar'),
(19, 'induction training phase I', 'NITTTR', '2 week', 'bhopal', 'miss archana bakhatyapuri'),
(20, 'induction training phase II', 'NITTTR', '2 weeks', 'bhopal', 'miss archana bakhatyapuri'),
(21, 'laboratory management and practices', 'NITTTR', '1 week', 'bhopal', 'miss archana bakhatyapuri'),
(22, 'Induction Programme 2', 'NITTTR', '2 Week', 'Bhopal', 'Shri Rajesh kumar'),
(23, 'Learning Management System', 'Crisp', '3 Days', 'Govt. Polytechnic College, Harda', 'Shri Rajesh kumar');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(11) NOT NULL,
  `student_Enrollment_No` varchar(255) NOT NULL,
  `student_Name` varchar(255) NOT NULL,
  `student_Fathers_Name` varchar(25) NOT NULL,
  `student_Sex` varchar(255) NOT NULL,
  `student_Email` varchar(255) NOT NULL,
  `student_Course` varchar(255) NOT NULL,
  `student_Branch` varchar(255) NOT NULL,
  `student_Semester` varchar(255) NOT NULL,
  `student_Year_Of_Admission` varchar(255) NOT NULL,
  `student_Mob_No` varchar(255) NOT NULL,
  `student_Address` text NOT NULL,
  `student_Feedback` varchar(255) NOT NULL,
  `student_photo` varchar(255) NOT NULL,
  `student_address_organization` text NOT NULL,
  `student_address_institution` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `student_Enrollment_No`, `student_Name`, `student_Fathers_Name`, `student_Sex`, `student_Email`, `student_Course`, `student_Branch`, `student_Semester`, `student_Year_Of_Admission`, `student_Mob_No`, `student_Address`, `student_Feedback`, `student_photo`, `student_address_organization`, `student_address_institution`) VALUES
(30, '2013', 'IRSHAD KHAN', '', '', '', '', 'Electrical Engineering', '', '2016', '7566075304', 'laxman nagar amla distt betul m.p', '', '', '', 'govt.engineering college jabalpur'),
(9, '21cs090218', 'ABC', 'AGHJG', 'Male', 'JHJKSA@FJAA.COM', 'KDK', 'HJDSHAJ', 'JKKSDH', '2012', '08912807189', 'HDJSA', 'JHDFJSHK', 'Yze6N.jpg', '', ''),
(8, '123', 'ashish', 'jagdish sharma', 'Male', 'ashish@gmail.com', 'english', 'ec', '3', '2015', '9685646285', 'vijay nagar', 'hello', 'NkSoL.png', '', ''),
(6, '314564', 'Deepak', 'HR', 'Male', 'dgour', '', '', '', '', '', '', '', '', '', ''),
(10, '12456', 'Yogesh', 'HR', 'Male', 'pixmiracle@gmail.com', 'diploma', 'cs', '2', '2016', '12456378', '101 lig indore', 'fdsafdsm ;fmsfsd slkfdf flkdsl dsf ', '', '', ''),
(11, '644564', 'Yogesh', '', '', 'pixmiracle@gmail.com', '', 'Computer Science Engineering', '', '2016', '12456378', '101 lig indore', '', '', '', ''),
(12, '644564', 'Yogesh', '', '', 'pixmiracle@gmail.com', '', 'Computer Science Engineering', '', '2016', '12456378', '101 lig indore', '', '', '', ''),
(16, '1233', 'ashish sharma', '', '', 'ashish12@gmail.com', '', 'Computer Science Engineering', '', '2011', '9990008899', 'Goyal Nagar', '', '170111.png', 'Tilak Nagar', 'Alok Nagar'),
(17, '12456', 'Deepak', '', '', 'pixmiracle@gmail.com', '', 'Civil Engineering', '', '2016', '12456378', '101 lig indore', '', '170111.png', '', ''),
(18, '12456', 'Deepak', '', '', 'pixmiracle@gmail.com', '', 'Civil Engineering', '', '2016', '12456378', '101 lig indore', '', '170111.png', '', ''),
(19, '12456', 'Deepak', '', '', 'pixmiracle@gmail.com', '', 'Civil Engineering', '', '2016', '12456378', '101 lig indore', '', '170111.png', '', ''),
(20, '314564', 'Yogesh', '', '', 'dgour@gmail.com', '', 'Computer Science Engineering', '', '2016', '12456378', '101 lig indore', '', '', '', ''),
(22, '160c040001', 'Rajesh kumar', '', '', 'rajeshkrsaw@gmail.com', '', 'Computer Science Engineering', '', '2001', '577543', 'C-513', '', '170112.jpg', 'C-513\r\nJasper Hostel, ISM DHANBAD', 'C-513\r\nJasper Hostel, ISM DHANBAD'),
(23, '', 'Rajesh kumar', '', '', '', '', 'Computer Science Engineering', '', '', '', '8-New LIG Colony', '', '', '8-New LIG Colony\r\nNear Nehru Stadium', '8-New LIG Colony\r\nNear Nehru Stadium'),
(24, '11018C03013', 'Dheeraj Verma', '', '', 'dheeraj122690@gmail.com', '', 'Civil Engineering', '', '2014', '08827088958', 'Near by shankar mandir, ward no. 30. Kulharda, Harda', '', '170119.jpg', '', ''),
(26, '2005', 'Mahendra raghuwanshi ', '', '', 'mahendraraghu88@gmail.com', '', 'Civil Engineering', '', '2008', '9926981556', 'Devel- mohalla daga ji road seoni-malwa', '', '', '', ''),
(27, '2013', 'Rajesh kumar', '', '', 'JSDHAH', '', 'Computer Science Engineering', '', 'LASJL', 'KDSL', '8-New LIG Colony', '', '', '8-New LIG Colony\r\nNear Nehru Stadium', '8-New LIG Colony\r\nNear Nehru Stadium'),
(28, '1973', 'VIJAY KUMAR TIWARI', '', '', 'vijaytiwariharda@yahoo.co.in', '', 'Civil Engineering', '', '1976', '9425044984', '6 , KALASH BRIJDHAM COLONEY HARDA', '', '', 'PRINCIPAL \r\nGOVT.POLY. COLLEGE HARDA', 'PRINCIPAL \r\nGOVT.POLY. COLLEGE HARDA'),
(29, '2005', 'Rishabh Pastariya', '', '', 'rishabh.pastariya@gmail.com', '', 'Computer Science Engineering', '', '2008', '9826213543', 'Harda', '', '', '', 'Lecturer, Govt. Polytechnic college harda, MP.'),
(31, '', '', '', '', '', '', 'Computer Science Engineering', '', '', '', '', '', '', '', ''),
(32, '2013', 'NEVENDRA SINGH RAJPUT', '', '', 'nevendrarajput.com@gmail.com', '', 'Mechanical Engineering', '', '2016', '8120445858', 'village bagrul post/teh. handia district harda ', '', '170213.jpg', '', 'GOVT. JABALPUR ENGINEERING COLLEGE, JABALPUR M.P.'),
(33, '2013', 'IRFAN QURAISHI', '', '', 'irfan1212quraishi@gmail.com', '', 'Mechanical Engineering', '', '2016', '9691686464', 'Village manegaon district balaghat m.p.', '', '', '', 'GOVT. JABALPUR ENGINEERING COLLEGE, JABALPUR M.P.'),
(34, '2013', 'ANIL BARPETE', '', '', 'anil.barpete7869@gmail.com', '', 'Mechanical Engineering', '', '2016', '9179816929', 'AT KOLGOAN TEHSIL BETUL', '', '170213.jpg', '', 'UIT RGPV BHOPAL'),
(35, '2012', 'Deepak Bopche ', '', '', 'Deepakbopche92@gmail.com', '', 'Mechanical Engineering', '', '2015', '8878042123 ', 'At - Pachpedi Post_nagarwara Balaghat ', '', '170213.jpg', '', 'Harda'),
(36, '2012', 'Rahul Rabde', '', '', 'rahulrabde@gmail.com', '', 'Mechanical Engineering', '', '2015', '8878072498', 'Village+Post Pandharakhedi, Th - Sausar,Dist - Chhindwara M.P', '', '170214.jpg', '', 'Govt. polytechnic college Harda M.P'),
(37, '2012', 'Rahul dhuware', '', '', 'Rahuldhuware@94gmail.com', '', 'Mechanical Engineering', '', '2015', '9109919029', 'At+post beni teh.waraseoni dist.balaghat mp', '', '170214.jpg', 'Volvo eicher ', 'Harda'),
(38, '2012', 'Rahul dhuware', '', '', 'Rahuldhuware@94gmail.com', '', 'Mechanical Engineering', '', '2015', '9109919029', 'At+post beni teh.waraseoni dist.balaghat mp', '', '170214.jpg', 'Volvo eicher ', 'Harda'),
(39, '20', '', '', '', '', '', 'Computer Science Engineering', '', '', '', '', '', '', '', ''),
(40, '20', '', '', '', '', '', 'Computer Science Engineering', '', '', '', '', '', '', '', ''),
(41, '20', '', '', '', '', '', 'Computer Science Engineering', '', '', '', '', '', '', '', ''),
(42, '2011', 'Dorilal chourey', '', '', 'dchourey07@gmail.com', '', 'Mechanical Engineering', '', '2014', '9522422342', 'Village-Damdam,Post-Sankheda,Tehsil-Itarsi,Dist.-Hoshangabad(MP)461111', '', '170214.jpg', '', ''),
(43, '', '', '', '', '', '', 'Computer Science Engineering', '', '', '', '', '', '', '', ''),
(44, '2012', 'PRASHANJEET BISWASH', '', '', 'prashanjeet1122@gmail.com', '', 'Mechanical Engineering', '', '2015', '9575413021', 'Village jholi 1, post Chikalpati,tehsil ghoradongri,district Betul,MP 460440', '', '170214.JPG', 'Govt polytechnic college Harda MP', 'RGPV BHOPAL'),
(45, '2012', 'Nikhil Jakhad', '', '', 'nikhiljakhad1992@gmail.com', '', 'Mechanical Engineering', '', '2015', '8085010799', 'Village+post= uda dist.+ teh.=  harda M.P.', '', '170214.jpg', 'Govt. Polyphonic College Harda', 'RGPV BHOPAL'),
(46, 'july 2011', 'RAHUUL KUMAR KOGE', '', '', 'rahulkoge26@gmail.com', '', 'Mechanical Engineering', '', 'jun 2014', '7745937523', 'villge Amsel Teh SiraliSirali Dist Harda', '', '170214.jpg', 'Polytechnic college harda', 'Govt. Polytechnical College harda'),
(47, '2011', 'Dorilal chourey', '', '', 'dchourey07@gmail.com', '', 'Mechanical Engineering', '', '2014', '', 'Village-Damdam,Post-Sankheda,Tehsil-Itarsi,Dist.-Hoshangabad(MP)461111', '', '170214.jpg', 'Govt.Polytechnic College Harda.', 'RGPV Bhopal.'),
(48, '2011', 'Deependra Prajapati', '', '', 'deependraprajapati1993@gmail', '', 'Mechanical Engineering', '', '2014', '8962565396', 'POST BHILAKHEDI TAH- DOLARIYA DISS-HOSHANGABAD MP 461115', '', '', '', ''),
(49, '2012', 'Hemant Joshi', '', '', 'Hemantjoshi275@gmail.com', '', 'Mechanical Engineering', '', '2015', '8878612094', 'At Post :- Mohjhari, Tehsil :- Lanji, Dist :- Balaghat (M. P.) ', '', '', '', 'Harda '),
(50, '2013', 'Shubham soni', '', '', 'Shubham9bt@gmail.com', '', 'Mechanical Engineering', '', '2016', '8357935458', 'NARMADA COLONY KHATEGAON DIST DEWAS', '', '170214.jpg', 'GOVT. POLYTECHNIC COLLEGE HARDA M.P.', 'RGPV BHOPAL'),
(51, '2013', 'Sandeep savner', '', '', 'Sandeepsavner99@gmail.com', '', 'Mechanical Engineering', '', '2016', '9753840834', 'Ward no 15 khirkiya dist harda', '', '170214.jpg', 'Govt. Polytechnic college harda', 'RGPV BHOPAL'),
(52, '2012', 'Ajay mourya', '', '', 'mouryaajay20@gmail', '', 'Mechanical Engineering', '', '2015', '9589465922', 'L.I.G Colony Near Jila Panchayat Harda', '', '170214.jpg', 'Govt.polytechnic college Handiya Road Harda', 'RGPV Bhopal'),
(53, '2012', 'Arti Mourya ', '', '', 'arti.mourya269@gmail.com', '', 'Computer Science Engineering', '', '2015', '8085545165', 'Mahatma gandhi ward no. 3, near niloba saraf home, khedipura, harda (m.p.) 461331', '', '170214.jpg', 'University Institute Of Technology, RGPV, Airport By Pass Road, Near Gandhi Nagar, Bhopal, Madhya Pradesh 462036', 'University Institute Of Technology, RGPV, Airport By Pass Road, Near Gandhi Nagar, Bhopal, Madhya Pradesh 462036'),
(54, '2011', 'lokesh kaneriya', '', '', 'kaneriyalokesh21@gmail.com', '', 'Mechanical Engineering', '', '2014', '8103127626', 'ward no. 15  khangar colony timarni ', '', '170214.jpg', 'John Deere India pvt. Ltd. Dewas', ''),
(55, '2012', 'Varsha saini', '', '', 'varshasaini265@gmail.com', '', 'Civil Engineering', '', '2015', '7089827030', 'Harda khedipura house no. 170 harda ( m.p)', '', '', 'Harda', 'Govt.pyrotechnic harda (m.p)'),
(56, '2012', 'Varsha saini', '', '', 'varshasaini265@gmail.com', '', 'Civil Engineering', '', '2015', '7089827030', 'Harda khedipura house no. 170 harda ( m.p)', '', '', 'Harda', 'Govt.pyrotechnic harda (m.p)'),
(57, '2013', 'ANITA JAT', '', '', 'gudiyaammu786@gmail.com', '', 'Civil Engineering', '', '2016', '7869879336', 'vill kheda post kheda tah. handiya dist harda', '', '170214.JPG', 'GOVE POLYTECHNIC COLLEGE HARDA', 'RGPV BHOPAL'),
(58, '2013', 'suresh malviya', '', '', 'sureshmalviya69@gmail.com', '', 'Mechanical Engineering', '', '2016', '7828615905', 'village- banoor,post- pohar,tahsil-multai,distt.- betul,mp(460557)', '', '170214.jpg', 'Harda', 'Rgpv bhopal'),
(59, '2012', 'VINAY KAITHWAS', '', '', 'kaithwas_v@yahoo.com', '', 'Computer Science Engineering', '', '2015', '7694071223', 'Ward 35 veer sawarkar ward harda', '', '170214.jpg', '', 'Ujjain engineering collage ujjain'),
(60, '2011', 'Deependra Prajapati', '', '', 'deependraprajapati1993@gmail', '', 'Mechanical Engineering', '', '2014', '8962565396', 'POST BHILAKHEDI TAH- DOLARIYA DISS-HOSHANGABAD MP 461115', '', '', '', 'Harda'),
(61, '2012', 'VIKAS Singh Rajput', '', '', 'vukassinghrajput578@gmail.com', '', 'Mechanical Engineering', '', '2015', '7509629279', 'Gram post bisoni kalan th.seoni malwa dist. Hoashangabad ', '', '170215.jpg', 'Govt.polytechnic college Harda ', 'Rgpv Bhopal '),
(62, '2012', 'Abhishek mukati', '', '', 'abhishekmukati28@gmail.com', '', 'Mechanical Engineering', '', '2015', '9165124743', 'ff1 sankalp apartment thana road harda m.p.', '', '', 'G p c  harda', ''),
(63, '2012', 'Rupesh malviya', '', '', 'rupeshmalviyaharda@gmail.com', '', 'Mechanical Engineering', '', '2015', '8223044223', 'Behaind the st. Anns. School Pathak Colony Harda ', '', '170216.jpg', 'Govt.polytechnic college Harda ', 'RGPV BHOPAL'),
(64, '2012', 'MANJULA BARMASHE', '', '', 'manjulabarmashe20@gmail.com', '', 'Mechanical Engineering', '', '2015', '7566202372', 'Amravti ghat, tehsil- multai, dust.- betul, MP 460665', '', '170218.JPG', 'Govt.polytechnic college Harda m.p.', 'RGPV BHOPAL'),
(65, '2011', 'abhishek soni', '', '', 'abhi.abhi9bt@gmail.com', '', 'Mechanical Engineering', '', '2014', '8962475591', 'shakur colony near l.b.s. school harda', '', '', '', ''),
(66, '2013', 'Surendra Pathekar', '', '', 'pawarsurendra144@gmail.com', '', 'Mechanical Engineering', '', '2016', '7697033437', 'At. Sawari post khairwani Teh. Multai Dist. Betul 460663 MP', '', '170226.jpg', 'Govt. Polytechnic collage Harda mp', 'Govt. Polytechnic collage harda mp'),
(67, '2013', 'DURGESH SEJKAR', '', '', 'Sejkardurgesh8626@gmail.com', '', 'Mechanical Engineering', '', '2016', '9754918626', 'vill,paraswada..teh, seoni malwa,,... Dis, hoshangabad....', '', '', '', 'TIT college bhopal'),
(68, '2013', 'Khemkaran Pancheshwar', '', '', 'Khemkaran1995@gmail.com', '', 'Mechanical Engineering', '', '2016', '8818945238', 'At.vibhari post sarekha th.keolari DIST.seoni mp', '', '170228.jpg', 'Govt.poly.collage harda', 'Rgpv Bhopal'),
(69, '2013', 'Pawan Bisen ', '', '', 'Pawanbisen2016@gmail.com', '', 'Mechanical Engineering', '', '2016', '7773895595', 'Village bhajiyapar, post katera, teh.  Katangi, dist.  Balaghat. MP (481445) ', '', '170228.jpg', 'Govt Polytechnic College harda mp', 'Rgpv bhopal '),
(70, '2013', 'Adarsh Kumar Vaishya', '', '', 'Adarshvaishya1996@gmail.com', '', 'Mechanical Engineering', '', '2016', '8305608652', 'Vill. Dharsada, post pateri ,teh.chitrangi, dist.singrauli,(m.p.)486890', '', '170228.jpg', 'Government polytechnic college harda m.p.', 'Rgpv Bhopal'),
(71, '2013', 'Adarsh Kumar Vaishya', '', '', 'Adarshvaishya1996@gmail.com', '', 'Mechanical Engineering', '', '2016', '8305608652', 'Vill. Dharsada, post pateri ,teh.chitrangi, dist.singrauli,(m.p.)486890', '', '170228.jpg', 'Government polytechnic college harda m.p.', 'Rgpv Bhopal'),
(72, '2013', 'DIKSHA PATEL', '', '', 'Patildiksha797@gmail.com', '', 'Mechanical Engineering', '', '2016', '7879883117', 'At- chargaon karbal, post- rajegaon, th-mohkhed, dist- chhindwara M.p', '', '170302.JPG', 'govt polytechnic college harda\n', 'rgpv Bhopal\n'),
(73, '2013', 'asha onker', '', '', 'Ashionkar321@gmail. Com', '', 'Mechanical Engineering', '', '2016', '8871163723', 'Ward no.11 main road chhipabad  teh. Khirkiya harda 431441', '', '170303.jpg', 'govt polytechnic college harda', 'rgpv Bhopal'),
(74, '2013', 'Sandeep savner', '', '', 'sandeepsavner99@gmail.com', '', 'Mechanical Engineering', '', '2016', '9753840834', 'Ward no. 15 khirkiya', '', '', 'Govt. Polytechnic college , harda, M.P', 'RGPV, bhopal'),
(75, '2013', 'sachin joshi', '', '', 'sachin992645@gmail.com', '', 'Civil Engineering', '', '2016', '7879319016', 'ward no 3 azad marg ajnas road khategaon', '', '170306.jpg', 'Govt polytechnic college harda mp', 'RGPV Bhopal'),
(76, '2013', 'sachin joshi', '', '', 'sachin992645@gmail.com', '', 'Civil Engineering', '', '2016', '7879319016', 'ward no 3 azad marg ajnas road khategaon', '', '170306.jpg', 'Govt polytechnic college harda', 'RGPV Bhopal'),
(77, '2013', 'Narendra makode', '', '', 'Nmakode1996@gmail.com', '', 'Mechanical Engineering', '', '2016', '8878813025', 'At. Tamsar th.bhaisdai DIST.betul mp', '', '170307.jpg', 'Govt.poly.coll.harda', 'Rgpv Bhopal'),
(78, '2013', 'sachin joshi', '', '', 'sachin992645@gmail.com', '', 'Civil Engineering', '', '2016', '7879319016', 'ward no 3 azad marg ajnas road khategaon', '', '170307.jpg', 'Govt polytechnic college harda', 'RGPV Bhopal'),
(79, '2013', 'sakshi Karaiya', '', '', 'sakshi.karaiya8bt@gmail.com', '', 'Mechanical Engineering', '', '2016', '7869484801', 'Ward no 18 babu jagzivan ram ward khedipura kasera mohalla harda', '', '170307.jpg', 'Govt polytechnic college harda mp', 'RGPV Bhopal'),
(80, '2013', 'sakshi Karaiya', '', '', 'sakshi.karaiya8bt@gmail.com', '', 'Mechanical Engineering', '', '2016', '7869484801', 'Ward no 18 babu jagzivan ram ward khedipura kasera mohalla harda', '', '170307.jpg', 'Govt polytechnic college harda mp', 'RGPV Bhopal'),
(81, '2013', 'Shirish Evne', '', '', 'evneshirish28@gmail.com', '', 'Mechanical Engineering', '', '2016', '9713330954', 'VIllage Bhainsdehi District betul mp', '', '', '', 'jabalpur Engineering College Jabalpur'),
(82, '2013', 'mohit rangire', '', '', 'vickyrangireom@gmail.com', '', 'Civil Engineering', '', '2016', '9826756191', 'word no. 1 dheemar tola govt. iti ke aage balaghat mp.', '', '170309.jpg', 'harda', 'harda'),
(83, '2013', 'Mohit rangire', '', '', 'vickyrangireom@gmail.com', '', 'Civil Engineering', '', '2016', '9826756191', 'word no. ek dheemar tola govt. iti ke aage balaghat mp.', '', '170309.jpg', 'harda', 'harda'),
(84, '2013', 'Mohit rangire', '', '', 'vickyrangireom@gmail.com', '', 'Civil Engineering', '', '2016', '9826756191', 'word no. ek dheemar tola govt. iti ke aage balaghat mp.', '', '170309.jpg', 'harda', 'harda'),
(85, '2013', 'Mohit rangire', '', '', 'vickyrangireom@gmail.com', '', 'Civil Engineering', '', '2016', '9826756191', 'word no. ek dheemar tola govt. iti ke aage balaghat mp.', '', '170309.jpg', 'harda', 'harda'),
(86, '2013', 'kapil malviya', '', '', 'kapilmalviya652@gmail.com', '', 'Civil Engineering', '', '2016', '8959313659', 'chobey colony beheind new bus stand harda', '', '170310.jpeg', 'govt polytechnic clg harda ', 'govt polytechnic clg harda in front of forest office harda'),
(87, '2013', 'kapil malviya', '', '', 'kapilmalviya652@gmail.com', '', 'Civil Engineering', '', '2016', '8959313659', 'chobey colony beheind new bus stand harda', '', '170310.jpeg', 'govt polytechnic clg harda ', 'govt polytechnic clg harda in front of forest office harda'),
(88, '2013-2014', 'Manishagahlot', '', '', '', '', 'Computer Science Engineering', '', '', '', '', '', '', '', ''),
(89, '2013', 'rahul jamne', '', '', 'rahuljamne2972@gmail.com', '', 'Civil Engineering', '', '2016', '8109627011', 'infront of post office banapura.Th.seoni malwa DIs.hosangabad mp', '', '170312.jpg', '', ''),
(90, '2013-2014', 'Manishagahlot', '', '', 'Manishagahlot9630@gmail.com', '', 'Civil Engineering', '', '2016', '9753111073', 'Gram- Bamhangao,  Th.- khirkiya, post - Dhanwada,  Di.-Harda, M. P. ', '', '170312.jpg', 'Gram- Bamhangao , Th. - khirkiya, Post- Dhanwada, Di.- Harda M. P. ', ''),
(91, '2013-2014', 'Manishagahlot', '', '', 'Manishagahlot9630@gmail.com', '', 'Civil Engineering', '', '2015-2016', '9753111073', 'Gram- Bamhangao,  Th.- khirkiya, post - Dhanwada,  Di.-Harda, M. P. ', '', '170312.jpg', 'Gram- Bamhangao , Th. - khirkiya, Post- Dhanwada, Di.- Harda M. P. ', ''),
(92, '2013-2014', 'Manishagahlot', '', '', 'Manishagahlot9630@gmail.com', '', 'Civil Engineering', '', '2015-2016', '9753111073', 'Gram- Bamhangao,  Th.- khirkiya, post - Dhanwada,  Di.-Harda, M. P. ', '', '170312.jpg', 'Gram- Bamhangao , Th. - khirkiya, Post- Dhanwada, Di.- Harda M. P. ', ''),
(93, '2013-2014', 'Manishagahlot', '', '', 'Manishagahlot9630@gmail.com', '', 'Civil Engineering', '', '2015-2016', '9753111073', 'Gram- Bamhangao,  Th.- khirkiya, post - Dhanwada,  Di.-Harda, M. P. ', '', '170312.jpg', 'Gram- Bamhangao , Th. - khirkiya, Post- Dhanwada, Di.- Harda M. P. ', ''),
(94, '2013-2014', 'Manishagahlot', '', '', 'Manishagahlot9630@gmail.com', '', 'Civil Engineering', '', '2015-2016', '9753111073', 'Gram- Bamhangao,  Th.- khirkiya, post - Dhanwada,  Di.-Harda, M. P. ', '', '170312.jpg', 'Gram- Bamhangao , Th. - khirkiya, Post- Dhanwada, Di.- Harda M. P. ', 'Near by bypass, Harda,M.P.'),
(95, '2013', 'rahul jamne ', '', '', 'rahuljamne2972@gmail .com', '', 'Civil Engineering', '', '2016', '8108627011', 'infront of post office banapura ', '', '170312.jpg', '', ''),
(96, '2013-2014', 'Pooja gour', '', '', 'Poojagour1509@gmail.com', '', 'Computer Science Engineering', '', '', '', '', '', '', '', ''),
(97, '2013-2014', 'Pooja gour', '', '', 'Poojagour1509@gmail.com', '', 'Civil Engineering', '', '2015-2016', '9926593280', 'Hour colony, bypass road, Harda', '', '', 'Hour colony, bypass road, Harda', ''),
(98, '2013-2014', 'Madhuri wamne', '', '', 'Manishagahlot9630@gmail.com', '', 'Civil Engineering', '', '2015-2016', '8965836028', 'Gour colony, bypass road, Hard, M. P. ', '', '170315.jpg', 'Gour colony, bypass road, Hard, M. P. ', ''),
(99, '2012', 'DEEPIKA PARMAR', '', '', 'deepikaparmar334@gmail.com', '', 'Computer Science Engineering', '', '2015', '8827493525', '20,AHILYA BAI MARG KHATEGAON DIST DEWAS', '', '170321.jpg', 'GOVT. PLOYTECHNIC HARDA', 'RGPV'),
(100, '', '', '', '', '', '', 'Computer Science Engineering', '', '', '', '', '', '', '', ''),
(101, '', 'Bal Krishan Tiwari', '', '', 'vaibhavtiwari1156@gmail.com', '', 'Mechanical Engineering', '', '2016', '8109629694', 'Vill-Deohara,Post-Sanjaynagar,Dist-Anuppur,M.P', '', '170325.JPG', 'Govt.Polytechnic College Harda.M.P', 'Rajiv Gandhi Proudyogiki Vishwavidyalaya Bhopal,M.P'),
(102, '2013', 'Bal Krishan Tiwari', '', '', 'vaibhavtiwari1156@gmail.com', '', 'Mechanical Engineering', '', '2016', '8109629694', 'Vill-Deohara,Post-Sanjay Nagar,Dist-Anuppur,M.P', '', '170325.JPG', 'Govt.Polytechnic College,Harda,M.P', 'Rajiv Gandhi Proudyogiki Vishwavidyalaya Bhopal,M.P'),
(103, '2013', 'Rajendra Kewat', '', '', 'Rajendra011994@gmail.com', '', 'Mechanical Engineering', '', '2016', '8817201039', 'Ward no-2,Bajar Dafai ,Rajnagar Colliery', '', '170326.JPG', 'Govt.Polytechnic College,Harda', 'Rajiv Gandhi Proudyogiki Vishwavidyalaya, Bhopal'),
(104, '2013', 'Bhavesh Mahore', '', '', 'Bhaveshmahore0001@gmail.com', '', 'Mechanical Engineering', '', '2016', '8962102239', 'Makan no. 166 dhimar mohalla Gandhi ward Betul bazaar ', '', '170401.jpg', 'Govt.Polytechnic College Harda', 'Rajiv Gandhi Proudyogiki Vishwavidyalaya, Bhopal'),
(105, '1992', 'Duba NAGBHUSHAN RAO ', '', '', 'Dnbr@rediffmail.com ', '', 'Electrical Engineering', '', '1994', '9827126868', 'Santoshi Nagar,  khamtarai,  P. O.  -  W. R. S.  Colony,  Raipur, C. G.  492008', '', '170423.jpg', 'Unique Technical Solutions,  c-77, devendra nagar,  Raipur, C. G. 492009', ''),
(106, '2014', 'Mayank Vadnere', '', '', 'Mayankvadnere@gmail.com', '', 'Mechanical Engineering', '', '2017', '7415707090', '112 Ganesh choke ward no.10 madhumalti novas Harda ', '', '170524.JPG', 'Govt. Polytechnic college Harda', 'Govt. Polytechnic college Harda'),
(107, '2014', 'vibhor tiwari', '', '', 'vibhorctiwari000888@gmail.com', '', 'Mechanical Engineering', '', '2017', '8959243833', 'near narmadiya dharmsala harda', '', '', 'govt polytechnic harda', 'govt polytechnic harda'),
(108, '2014', 'vibhor tiwari', '', '', 'vibhorctiwari000888@gmail.com', '', 'Mechanical Engineering', '', '2017', '8959243833', 'near narmadiya dharmsala harda', '', '170524.jpg', 'govt polytechnic college harda', 'govt polytechnic harda'),
(109, '2015', 'Shailendra Kumar kushwaha', '', '', 'Shailendrakushwaha8823@gmail.com', '', 'Mechanical Engineering', '', '2018', '8355048916', 'Jaulkheda multi Beryl(M.P.)', '', '', '', ''),
(110, '2015', 'Shubham Singh sisodiya', '', '', 'Shubhamsingh21199@gmail.com', '', 'Mechanical Engineering', '', '2018', '7582937208', 'Near M.E.S berior O.F road Itarsi m.p', '', '170524.JPG', 'Govt polytechnic college harda', 'Indore road harda m.p'),
(111, '2014-15', 'TANVEER KHAN', '', '', 'tanveerk.tk50@gmail.com', '', 'Mechanical Engineering', '', '2016-17', '9584228751', 'aryapura ward tikari betul', '', '', 'Rgpv bhopal m.p.', 'Govt. Polytechnic college harda m.p.'),
(112, '2014', 'deepesh prajapati', '', '', 'deepeshprajapati2010@gmail. CV op MN', '', 'Mechanical Engineering', '', '2017', '9754230458', 'at post ramli amla th.amla bis.betul mp', '', '', '', ''),
(113, '2014', 'Anup madiwale', '', '', 'madiwaleanup@gmail.com', '', 'Electrical Engineering', '', '2017', '8370048495', 'Golapura harda', '', '170525.jpg', 'Govt. Polytechnic harda', 'Govt. Polytechnic harda'),
(114, '2015', 'Harshit upadhyay', '', '', 'Upadhyayjiharshit1996@gmail.com', '', 'Computer Science Engineering', '', '2018', '8463081530', 'Village. Godari, teh. Timarani, dist. Harda', '', '170525.jpg', 'Harda', 'Harda'),
(115, '2014', 'Poornima yadav', '', '', 'Poornimayadav000@gmail.com', '', 'Mechanical Engineering', '', '2017', '8889923371', 'Police line harda', '', '170526.jpg', 'Govt. Polytechnic harda', 'Govt. Polytechnic harda'),
(116, '2014', 'jp pande ', '', '', 'pandeyjyotiprakash002@gmail.com ', '', 'Electrical Engineering', '', '', '7898152624', '', '', '', 'gov. polytechnic college harda ', 'dust. Harda'),
(117, '2014', 'Rajni Dhoke', '', '', 'rajnidhoke308@gmail.com', '', 'Mechanical Engineering', '', '2017', '9907850685', 'in front of yadav hostel harda', '', '170721.jpg', 'RGPV', 'Govt. polytechnic college harda'),
(118, '', '', '', '', '', '', 'Mechanical Engineering', '', '', '', '', '', '', '', ''),
(119, '2007', 'Khushboo baraskar', '', '', 'khushboo0515@gmail.com', '', 'Electrical Engineering', '', '2010', '9960459510', 'Plot no 21 Parvati nagar near awale floor mill Nagpur', '', '', '', ''),
(120, 'dfghj', 'dfgh', '', '', 'dfh', '', 'Computer Science Engineering', '', 'dfgh', 'dfg', 'sdf', '', '', 'asdfg', 'sdfg'),
(121, '1', 'gtiiriao', '', '', 'sample@email.tst', '', 'Computer Science Engineering', '', '1967', '1', '3137 Laguna Street', '', '', '3137 Laguna Street', '3137 Laguna Street'),
(122, '1', 'efxlcyod', '', '', 'sample@email.tst', '', 'Mechanical Engineering', '', '1967', '1', '3137 Laguna Street', '', '', '3137 Laguna Street', '3137 Laguna Street'),
(123, '1', 'mnmsdqbk', '', '', 'sample@email.tst', '', 'Civil Engineering', '', '1967', '1', '3137 Laguna Street', '', '', '3137 Laguna Street', '3137 Laguna Street'),
(124, 'agaesh', 'esheshesh', '', '', 'eshdr@gmail.com', '', 'Computer Science Engineering', '', '3452', '334643', 'sjrsrsj', '', '', 'sjrrjsyd', 'sjtrsjrjsa'),
(125, '1973', 'Vijay Kumar Tiwari', '', '', 'vijaytiwariharda@yahoo.co.in', '', 'Civil Engineering', '', '1976', '9425044984', '6 Kalash ,Brijdham Colony HARDA', '', '', 'PRINCIPAL \r\nGOVT. POLYTECHNIC COLLEGE HARDA', ''),
(126, '', 'hdja', '', '', 'jkhja', '', '', '', '', 'kjhdjsa', 'jhdjhj', '', '', '', ''),
(127, '', 'djkajk', '', '', 'jkdkjhkj', '', '', '', '', 'khdkj', 'hkhjh', '', '', '', ''),
(128, '', 'dhj', '', '', 'hjj', '', '', '', '', 'jhgh', 'jhj', '', '', '', ''),
(129, '', '', '', '', '', '', 'Computer Science Engineering', '', '', '', '', '', '', '', ''),
(130, 'ZAP', 'ZAP', '', '', 'ZAP', '', 'Mechanical Engineering', '', 'ZAP', 'ZAP', 'ZAP', '', '', '', ''),
(131, 'ZAP', 'ZAP', '', '', 'ZAP', '', 'Mechanical Engineering', '', 'ZAP', 'ZAP', 'ZAP', '', '', '', ''),
(132, '2007', 'Mohan Chhalotre', '', '', 'mohangurjar82@yahoo.in', '', 'Computer Science Engineering', '', '2010', '9754527863', 'Village + post Ranhai kalan, Distinct- Harda  ', '', '180203.jpeg', '304, 2nd Floor, 142 A, Electronic Complex,, Pardeshipura,, Indore, Madhya Pradesh 452010', ''),
(133, '', '', '', '', '', '', 'Computer Science Engineering', '', '', '', '', '', '', '', ''),
(134, '', '', '', '', '', '', 'Computer Science Engineering', '', '', '', '', '', '', '', ''),
(135, '2018', 'abc', '', '', 'abc@mailinator.com', '', 'Computer Science Engineering', '', '2018', '20182018', 'abc@mailinator.com', '', '180220.jpg', 'abc@mailinator.com', 'abc@mailinator.com'),
(136, '2001', 'AALOK DUBEY', '', '', 'ALOKDUBEYITARSI@REDIFFMAIL.COM', '', 'Electrical Engineering', '', '2004', '9669966988', 'C 32/01,BORL TOWNSHIP BINA', '', '', 'BHARTA OMAN REFINERIES LIMITED VILLAGE PAR BINA', ''),
(137, '1984', 'Rajesh Kumar Agrawal', '', '', 'agrawal_cz@yahoo.co.in', '', 'Electrical Engineering', '', '1987', '7247352019', 'D-323 New Minal Residency JK Road Govindpura Bhopal', '', '', 'O/O M D MPKVVCL Govindpura Bhopal', ''),
(138, '1984', 'Tiwari Arun', '', '', 'aktclibrcy@gmail.com', '', 'Electrical Engineering', '', '1987', '9724091639', '11 A Pramukh Swami Nagar -5, TP-13, Near Narmada Canal Chhani Jakar Naka, Vadodara', '', '180509.jpg', 'Western Railway, Vadodara', 'Zonal Electric Training Center\r\nElectric Loco Shed Vadodara'),
(139, '1985', 'SYED MAKSUD ALI', '', '', 'maksudalisyed@gmil. Com', '', 'Electrical Engineering', '', '1988', '9724098110', 'C/O CPCRDRM OFFICE', '', '180509.jpg', 'DRM OFFICE\r\nPRATAPNAGAR', 'DRM OFFICE\r\nPRATAPNAGAR'),
(140, '1985', 'SYED MAKSUD ALI', '', '', 'maksudalisyed@gmil. Com', '', 'Electrical Engineering', '', '1988', '9724098110', 'C/O CPCRDRM OFFICE', '', '180509.jpg', 'DRM OFFICE\r\nPRATAPNAGAR', 'DRM OFFICE\r\nPRATAPNAGAR'),
(141, '1985', 'SYED MAKSUD ALI', '', '', 'maksudalisyed@gmil. Com', '', 'Electrical Engineering', '', '1988', '9724098110', 'DRM OFFICE', '', '180510.jpg', 'DRM OFFICE\r\nPratapnAgar VADODARA w rly', 'DRM OFFICE\r\nPratapnAgar '),
(142, '', '', '', '', '', '', 'Computer Science Engineering', '', '', '', '', '', '', '', ''),
(143, '1985', 'SYED MAKSUD ALI', '', '', 'maksudalisyed@gmil. Com', '', 'Electrical Engineering', '', '', '9724098110', 'A3 HAMZA PARK NEAR FAIZ SCHOOL OPP HUSAINI PARK TANDALJA VADODARA ', '', '180510.jpg', 'DRM OFFICE\r\nPratapnAgar VADODARA ', 'DRM OFFICE\r\nPratapnAgar VADODARA '),
(144, '1985', 'SYED MAKSUD ALI', '', '', 'maksudalisyed@gmil. Com', '', 'Electrical Engineering', '', '', '9724098110', 'A3 HAMZA PARK NEAR FAIZ SCHOOL OPP HUSAINI PARK TANDALJA VADODARA ', '', '180510.jpg', 'DRM OFFICE\r\nPratapnAgar VADODARA ', 'DRM OFFICE\r\nPratapnAgar VADODARA '),
(145, '1985', 'SYED MAKSUD ALI', '', '', 'maksudalisyed@gmil. Com', '', 'Electrical Engineering', '', '1988', '9724098110', 'A3 HAMZA PARK NEAR FAIZ SCHOOL OPP HUSAINI PARK TANDALJA VADODARA ', '', '180510.jpg', 'DRM OFFICE\r\nPratapnAgar VADODARA guj', 'DRM OFFICE\r\nPratapnAgar VADODARA guj'),
(146, 'DVyhurYkZaKWqCsw', 'Judi', '', '', 'support@genericpharmacydrug.com', '', 'Civil Engineering', '', '1985', 'JkcBhSuiCVV', 'GAHGCOdnUcUBeSgM', '', '', 'yNITVy https://www.genericpharmacydrug.com', 'yNITVy https://www.genericpharmacydrug.com'),
(147, '2015', 'umesh Mandrai', '', '', 'umeshmandrai98@gmail.com', '', 'Computer Science Engineering', '', '2018', '8085583598', 'village+post kamtad teh+dis harda m.p.', '', '180516.jpg', 'gpch', 'harda'),
(148, '2015', 'Vikas Bidhare', '', '', 'vikasbidhare1@gmail.com', '', 'Mechanical Engineering', '', '2018', '8602170284', 'joshi colony gali no.8 harda m.p.', '', '180516.jpg', 'govt. polytechnic college, indore road harda mp', 'govt. polytechniccollege, indore road harda mp'),
(149, '2015', 'ASHISH Yadav', '', '', 'ay44381@gmail.com', '', 'Mechanical Engineering', '', '2018', '7509115097', '', '', '', '\r\n', ''),
(150, '2015', 'Lokesh Kumar ', '', '', '97lokeshkumar@gmail.com', '', 'Mechanical Engineering', '', '2018', '7225807574', 'At dighoda post saleteka tah kirnapur dist balaghat', '', '', 'Balaghat', 'Govt polytechnic college harda'),
(151, '2015', 'Lokesh Kumar ', '', '', '97lokeshkumar@gmail.com', '', 'Mechanical Engineering', '', '2018', '7225807574', 'At dighoda post saleteka tah kirnapur dist balaghat', '', '', 'Balaghat', 'Govt polytechnic college harda'),
(152, '2015', 'Vivek kushwah', '', '', 'Kushwahvivek09@gmail.com', '', 'Mechanical Engineering', '', '2018', '9165471422', 'Chhanera in front of TVS showroom', '', '180516.jpg', 'Government polytechnic college harda', 'Government polytechnic college harda'),
(153, '2015', 'Keshav Mansure', '', '', 'Mansurekeshav@gmail.com', '', 'Computer Science Engineering', '', '2018', '7089826162', 'joshi colony gali no. 9 harda', '', '180516.jpg', 'joshi colony gali no. 9 harda\r\nharda', 'joshi colony gali no. 9 harda\r\nharda'),
(154, '2014', 'Richa ratre', '', '', 'Kratiratre005@gmail.com', '', 'Electrical Engineering', '', '2018', '7610407273', 'Amrat ganga colony timarni', '', '', '', ''),
(155, '2015', 'Rameshwar dodke', '', '', 'rameshwardodke244@gmail.com', '', 'Electrical Engineering', '', '2018', '7247241413', 'At rajoli post jam tehsil mohkhed district chhindwara MP', '', '', 'Govt polytechnic college harda', 'Govt polytechnic college harda'),
(156, '2015', 'Rameshwar dodke', '', '', 'rameshwardodke244@gmail.com', '', 'Electrical Engineering', '', '2018', '7247241413', 'At rajoli post jam tehsil mohkhed district chhindwara MP', '', '', 'Govt polytechnic college harda', 'Govt polytechnic college harda'),
(157, '2015', 'Ankit surkiwal', '', '', 'Kunar.ankitsurkiwal2000@gmail.com', '', 'Electrical Engineering', '', '2018', '7693964204', 'vill dewaldi th .harsud dis. khandwa', '', '', '', 'govt polytechnic college Harda'),
(158, '2015', 'Sachin', '', '', 'Sachinakhade210@gmail.com', '', 'Electrical Engineering', '', '2018', '8959533164', 'Barwani mp', '', '', '', ''),
(159, '2015', 'sourabh khodare', '', '', 'sourabhgurjar786@gmail.com', '', 'Electrical Engineering', '', '2018', '8889954314', 'harda', '', '', 'rgpv diploma', 'rgpv diploma'),
(160, '2015', 'Nitin dogaya', '', '', 'dogne58@gmail.com', '', 'Electrical Engineering', '', '2018', '7697933727', 'village sukhras distric hardha', '', '180517.jpg', 'government polytechnic college hardha', 'government polytechnic college hardha'),
(161, '2015', 'Sooraj Pratap Vishwakarma', '', '', 'Soorajpratapvishwakarma@gmail.com', '', 'Electrical Engineering', '', '2018', '+919179130989', 'Village Post. Kothra Teh. Seoni Malwa Distt. Hoshangabad M.p. 461223', '', '180518.jpg', 'Govt. Polytechnic college harda m.p. 461331', 'Govt. Polytechnic college harda m.p. 461331'),
(162, '2015', 'Chetan bhushan', '', '', 'Chetanbhushan03@gmail.com', '', 'Mechanical Engineering', '', '2018', '7415231415', 'Tilak ward betul bazar betul m.p.', '', '180518.jpg', 'Rajiv Gandhi Proudyogiki vishwavidyalaya\r\n(Polytechnic Division)\r\nA4-Office Complex, Gautam Nagar, Near Chetak Bridge, Bhopal Pin-462023', ' khandwa bypass ke pass indore road harda m.p.'),
(163, '2015', 'Priyank Patne', '', '', 'priyankpatne65@gmail.com', '', 'Electrical Engineering', '', '2018', '9993900314', 'Infront of Usha medical store Gandhi Nagar itarsi ', '', '180519.jpg', 'Govt polytechnic college harda ', 'Govt polytechnic college harda'),
(164, '2015', 'Priyank Patne', '', '', 'priyankpatne65@gmail.com', '', 'Electrical Engineering', '', '2018', '9993900314', 'Infront of Usha medical store Gandhi Nagar itarsi ', '', '180519.jpg', 'Govt polytechnic college harda ', 'Govt polytechnic college harda'),
(165, '2015', 'Priyank Patne', '', '', 'priyankpatne65@gmail.com', '', 'Electrical Engineering', '', '2018', '9993900314', 'Infront of Usha medical store Gandhi Nagar itarsi ', '', '180519.jpg', 'Govt polytechnic college harda ', 'Govt polytechnic college harda'),
(166, '2015', 'Priyank Patne', '', '', 'priyankpatne65@gmail.com', '', 'Electrical Engineering', '', '2018', '9993900314', 'Infront of Usha medical store Gandhi Nagar itarsi ', '', '180519.jpg', 'Govt polytechnic college harda', 'Govt polytechnic college harda'),
(167, '2015', 'KAMALKISHOR SONER ', '', '', 'kk.soner@gmail.com', '', 'Mechanical Engineering', '', '2018', '9165236579', 'PATHAK COLONY NEAR NEW NALANDA SCHOOL HARDA MP', '', '', '\r\nRajiv Gandhi Proudyogiki vishwavidyalaya\r\n(Polytechnic Division)\r\nA4-Office Complex, Gautam Nagar, Near Chetak Bridge, Bhopal Pin-462023', 'GOVT.POLYTECHNIC COLLEGE HARDA'),
(168, '2015', 'KAMALKISHOR SONER ', '', '', 'kk.soner@gmail.com', '', 'Mechanical Engineering', '', '2018', '9165236579', 'PATHAK COLONY NEAR NEW NALANDA SCHOOL HARDA MP', '', '180525.jpg', '\r\nRajiv Gandhi Proudyogiki vishwavidyalaya\r\n(Polytechnic Division)\r\nA4-Office Complex, Gautam Nagar, Near Chetak Bridge, Bhopal Pin-462023', 'GOVT.POLYTECHNIC COLLEGE HARDA'),
(169, '2015', 'Rinky nateriya', '', '', 'rinkynateriya19@gmail.com ', '', 'Computer Science Engineering', '', '2018', '7692075730', 'Jijgao khurd', '', '180531.jpg', 'G.p.c harda', 'G.p.c harda'),
(170, '2015', 'SACHIN TILLORE', '', '', 'tilloresachin@gmail.com', '', 'Mechanical Engineering', '', '2018', '7354060954', 'Gram Barkala, Tah. Timarni Post Charkheda ward no.9 Dist. Harda', '', '', 'Govt.Polytechnic College Harda ( Indore Road)', 'RGPV Bhopal'),
(171, '2015', 'Jay Kumar Shardey', '', '', 'jayshardey@gmail.com', '', 'Mechanical Engineering', '', '2018', '7354044862', 'Ward no. 17 pathak colony lala lajpat ray ward,harda (M.P.)', '', '180615.jpg', 'Government polytechnic college harda', 'RGPV Bhopal'),
(172, '2101', 'Ja', '', '', 'Asw@gmail.com', '', 'Computer Science Engineering', '', '2018', '11', 'Jj', '', '', 'Ahha', 'Hahah'),
(173, '1994', 'Krishna Rathore', '', '', 'rathore.kk@gmail.com', '', 'Electrical Engineering', '', '1997', '9953440058', 'Sec 49, Faridabad (Haryana)', '', '180807.jpg', 'Royal Bank of Scotland, Gurugram', ''),
(174, '1990', 'Bhushan Kulkarni', '', '', 'bhushan.kulkarni1972@gmail.com', '', 'Civil Engineering', '', '1992', '9993835750', '201 Saidham Apartment, 44/C Vaishali Nagar, Annapurna road Indore - 452009 (M.P.)', '', '180811.jpg', 'Cipla Limited, \r\nPithampur\r\nDistt. Dhar (M.P.)', 'Govt. Polytechnic\r\nHarda'),
(175, '2015', 'Sulochanahajare', '', '', 'Sulochanahajare100@gmail.com', '', 'Computer Science Engineering', '', '2018', '7610316759', 'Post.village karpa th.multai dist betul', '', '', '', ''),
(176, '2015', 'shailendra gour', '', '', 'shailendragorsahab@gmail.com', '', 'Mechanical Engineering', '', '2018', '9691430363', 'vil. post. datwasa teh.dolriya disst.hoshangabad', '', '180811.jpg', '', 'govt. polytechnic college harda (m.p)'),
(177, '2015', 'Adarsh Agrawal', '', '', 'adarsh111agrawal@gmail.com', '', 'Mechanical Engineering', '', '2018', '8602646620', 'Ward No.01, Bar kala, Post-Charkheda, Teh.-Timarni, Dist.-Harda (M.P.)', '', '', 'Govt.Polytechnic College,Near Khandwa Bypass,Indore Road,Harda (M.P.)', 'Govt.Polytechnic College,Near Khandwa Bypass Indore Road,Harda (M.P.)'),
(178, '2015 -16', 'Neeraj Tomar', '', '', 'neerajr320@gmail.com', '', 'Mechanical Engineering', '', '2017-18', '8109650272', 'Pathak colony by pass Road Harda', '', '180811.jpg', '', 'Harda'),
(179, '2015', 'Lokesh Kumar sharnagat', '', '', '97lokeshkumar@gmail.com', '', 'Mechanical Engineering', '', '2018', '7225807574', 'At Digoda post saleteka tah kirnapur dist balaghat', '', '', 'Govt polytechnic college harda ', 'Govt polytechnic college harda '),
(180, '2015', 'Jay Kumar Shardey', '', '', 'jayshardey@gmail.com', '', 'Mechanical Engineering', '', '2018', '7354044862', 'Ward no. 17 pathak colony lala lajpat ray ward,harda (M.P.)', '', '180811.png', 'RGPV Bhopal', 'GPC Harda'),
(181, '2015', 'Jaydeep Nayar', '', '', 'jaydeepnayar@gmail.com', '', 'Mechanical Engineering', '', '2018', '7747836995', 'ward no. 09 timarni district Harda', '', '180814.JPG', 'Govt.polytechnic college Harda, Indore road Harda', 'Govt.polytechnic college Harda, Indore road Harda'),
(182, '2015', 'Sanjay Deshmukh', '', '', 'Sanjay70493@gmail.com', '', 'Mechanical Engineering', '', '2018', '7049382493', 'At Danora Post Jeen District Betul Mp', '', '', '', 'Govt Polytechnic College Harda'),
(183, '1985', 'VIVEK KHALE', '', '', 'vivekkhale@gmail.com', '', 'Computer Science Engineering', '', '1988', '9869360779', 'F1, flat-F6, central railway qtrs, parel,  mumbai', '', '', 'Central Railway', ''),
(184, '2011', 'sachin kumar pawar', '', '', 'spawar150694@gamil.com', '', 'Mechanical Engineering', '', '2014', '7389522032', 'at pipraj post ambara dist chhindwara mp 480449', '', '', '', 'govt. poly. collaeg harda '),
(185, '', '', '', '', '', '', 'Computer Science Engineering', '', '', '', '', '', '', '', ''),
(186, '2016', 'DIp', '', '', 'xxnxnxn@gmail.com', '', 'Computer Science Engineering', '', '2015', '01876238472', 'asefddfgdfg', '', '', 'dfgdtfhdfh', 'dhfdffgdfg'),
(187, '2001233', '1123123', '', '', 'xxnxnxn@gmail.com', '', 'Computer Science Engineering', '', '2015', '24234123423', 'mvbbncgbgh', '', '190113.jpg', 'fhgfghfgh', 'fghfghfghfth'),
(188, '234', 'DIp', '', '', 'zxcrggrs@gdfghj', '', 'Computer Science Engineering', '', 'fsfsrgfh', '0423489', 'dszdfgj', '', '', 'hjgyjfgfjg', 'jhgghjgjhgjh'),
(189, '234', 'DIp', '', '', 'zxcrggrs@gdfghj', '', 'Computer Science Engineering', '', 'fsfsrgfh', '0423489', 'dszdfgj', '', '', 'hjgyjfgfjg', 'jhgghjgjhgjh'),
(190, '2015', '', '', '', '', '', 'Computer Science Engineering', '', '', '', '', '', '', '', ''),
(191, '2015', 'Ashish Yadav ', '', '', 'yadavashish08071996@gmail.com', '', 'Computer Science Engineering', '', '2018', '9340760726', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `student_comp`
--

CREATE TABLE `student_comp` (
  `id` int(11) NOT NULL,
  `enrollment_no` varchar(100) NOT NULL,
  `name` varchar(250) NOT NULL,
  `gender` int(11) NOT NULL,
  `email` varchar(250) NOT NULL,
  `branch` varchar(200) NOT NULL,
  `semester` varchar(200) NOT NULL,
  `mobile` varchar(200) NOT NULL,
  `address` text NOT NULL,
  `complain` text NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_banner`
--

CREATE TABLE `tbl_banner` (
  `banner_id` int(11) NOT NULL,
  `banner_name` varchar(100) NOT NULL,
  `banner_image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_banner`
--

INSERT INTO `tbl_banner` (`banner_id`, `banner_name`, `banner_image`) VALUES
(6, 'College', 'RlyZj.jpg'),
(12, 'CSE Lab', '9jodW.jpg'),
(17, 'Learning Management System Depart. of CSE', 'dHfhE3ckgGIMG-20171123-WA0016.jpg'),
(19, 'Rojgar Mela at GPC HARDA', 'wh4vLqbkdaIMG-20171124-WA0001.jpg'),
(20, 'Mr. & Miss. Polytechnic Programme', 'XkOyBAN9UDIMG-20180324-WA0011.jpg'),
(21, '2018', 'Cn0YDf8u9ZDSC_0928.JPG'),
(22, 'Certificate distribution of Online Test through Spoken Tutorial IIT, Bombay organized by Department ', 'qpHWI002vUtest.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_campus`
--

CREATE TABLE `tbl_campus` (
  `id` int(11) NOT NULL,
  `campus_title` varchar(255) NOT NULL,
  `link_url` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_campus`
--

INSERT INTO `tbl_campus` (`id`, `campus_title`, `link_url`) VALUES
(14, 'Labs & Workshops', 'http://gpcharda.ac.in/workshop.php'),
(9, 'Hostel', 'http://gpcharda.ac.in/hostel.php'),
(10, 'Games & Sports', 'http://gpcharda.ac.in/games.php'),
(11, 'Library', 'http://gpcharda.ac.in/library.php'),
(12, 'Infrastructure', 'http://gpcharda.ac.in/infrastructure.php');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_homepage`
--

CREATE TABLE `tbl_homepage` (
  `h_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `images` varchar(255) NOT NULL,
  `content` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_homepage`
--

INSERT INTO `tbl_homepage` (`h_id`, `title`, `images`, `content`) VALUES
(1, 'Homepage', '01465444519.jpg,11465444519.jpg,,', '{\"second_text\":\"Test\",\"heading_1\":\"test\",\"desc_1\":\"<p>Test1</p>\",\"left_text\":\"<p>Test1</p>\"}');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_important_link`
--

CREATE TABLE `tbl_important_link` (
  `link_id` int(11) NOT NULL,
  `link_title` varchar(255) NOT NULL,
  `link_url` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_important_link`
--

INSERT INTO `tbl_important_link` (`link_id`, `link_title`, `link_url`) VALUES
(10, 'MP Technical Education ', 'http://www.mptechedu.org'),
(6, 'AICTE  Portal', 'http://www.aicte-india.org/'),
(8, 'RGPV Diploma', 'https://www.rgpvdiploma.in/'),
(9, 'DTE Counselling ', 'https://dte.mponline.gov.in/portal/services/onlinecounselling/counshomepage/home.aspx'),
(11, 'AICTE Approvals', 'http://gpcharda.ac.in/details.php?details_id=27'),
(12, 'Mandatory Disclosure', 'http://gpcharda.ac.in/details.php?details_id=31');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_news`
--

CREATE TABLE `tbl_news` (
  `news_id` int(11) NOT NULL,
  `news_title` varchar(100) NOT NULL,
  `news_description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_news`
--

INSERT INTO `tbl_news` (`news_id`, `news_title`, `news_description`) VALUES
(1, 'Maruti repairing workshop Harda visit of Mechanical students', 'Automobile workshop visit');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_news_latter`
--

CREATE TABLE `tbl_news_latter` (
  `n_id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_news_latter`
--

INSERT INTO `tbl_news_latter` (`n_id`, `email`) VALUES
(1, 'iamthakurravi@gmail.com'),
(2, 'ravi.sam@mailinator.com'),
(3, ''),
(4, ''),
(5, ''),
(6, ''),
(7, ''),
(8, ''),
(9, ''),
(10, ''),
(11, ''),
(12, ''),
(13, ''),
(14, ''),
(15, ''),
(16, ''),
(17, ''),
(18, ''),
(19, ''),
(20, ''),
(21, ''),
(22, ''),
(23, ''),
(24, ''),
(25, ''),
(26, ''),
(27, ''),
(28, ''),
(29, ''),
(30, ''),
(31, ''),
(32, ''),
(33, ''),
(34, ''),
(35, ''),
(36, ''),
(37, ''),
(38, ''),
(39, ''),
(40, ''),
(41, ''),
(42, ''),
(43, ''),
(44, ''),
(45, ''),
(46, ''),
(47, ''),
(48, ''),
(49, ''),
(50, ''),
(51, ''),
(52, ''),
(53, ''),
(54, ''),
(55, ''),
(56, ''),
(57, ''),
(58, ''),
(59, ''),
(60, ''),
(61, ''),
(62, ''),
(63, ''),
(64, ''),
(65, ''),
(66, ''),
(67, ''),
(68, ''),
(69, ''),
(70, ''),
(71, ''),
(72, ''),
(73, ''),
(74, ''),
(75, ''),
(76, ''),
(77, ''),
(78, ''),
(79, ''),
(80, ''),
(81, ''),
(82, ''),
(83, ''),
(84, ''),
(85, ''),
(86, '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pages`
--

CREATE TABLE `tbl_pages` (
  `page_id` int(11) NOT NULL,
  `content` longtext NOT NULL,
  `top_page_heading` varchar(255) NOT NULL,
  `bottom_page_heading` longtext NOT NULL,
  `bottom_content` longtext NOT NULL,
  `page_image` varchar(255) NOT NULL,
  `page_name` varchar(255) NOT NULL,
  `address` longtext NOT NULL,
  `contact_number` longtext NOT NULL,
  `iframe` longtext NOT NULL,
  `email_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pages`
--

INSERT INTO `tbl_pages` (`page_id`, `content`, `top_page_heading`, `bottom_page_heading`, `bottom_content`, `page_image`, `page_name`, `address`, `contact_number`, `iframe`, `email_address`) VALUES
(1, '<p>The Government Polytechnic College, Harda was established under Government of India Scheme named <strong>KHULA DWAR</strong>&nbsp;in&nbsp;the year&nbsp;1962. To run and control the institution the <strong>HARDA TECHNICAL EDUCATION SOCIETY</strong> was formed and registered under society ACT Madhya Pradesh. As per the Government of India scheme 40% of the AAWARTI and ANAWARTI expenses was received from Government of India for next five years and remaining percentage from the State Government. On completion of five years the State Government shouldered that responsibility 100% share since then.For establishing the institution 14 Acres of Land and Rs. 3,13,500/- were given by the local people and local administration of Harda.</p>\r\n\r\n<p>This institution has been 100% Government since 19.01.1984. This institution was set up with a prime ambition of affording opportunities to young men and women for equipping themselves to get employed and contribute to the technological development of the Harda district . The college is growing day by day and emerging as one of the ranking polytechnic institutions in Madhya Pradesh.The college is located in a congenial atmosphere, within the Harda city, spreading over 14 acres of sprawling campus on the Harda on INDORE ROAD main road . The college has an excellent infrastructure facilities like spacious buildings, fully equipped laboratories for each discipline, workshops, computer center with internet connectivity, and well-qualified, experienced and dedicated faculty.</p>\r\n', 'Welcome!!! Government Polytechnic College, Harda', 'Government Polytechnic College Harda', '<p>The college has conducted various programmes for Staff and Students in last three years. The college is blessed with abundance of other facilities and co- curricular and extra- curricular activities. It offers value added programmes.The college offers three year Diploma Courses in various engineering disciplines with the approval of All India Council for Technical Education. These disciplines of diploma courses are affiliated to the Rajeev Gandhi Technical University of BHOPAL, Madhya Pradesh. They continue to attract leading companies to hold Campus recruitment regularly. In-plant training and Industrial visits are arranged for the students, and they are encouraged to participate in Technical Paper presentations in national and state level conference and seminars. which will enable the students to face the formidable challenges of the future.</p>\r\n', 'VcZV6.jpg', 'Home Page', '', '', '', ''),
(2, '<p>Welcome to our Website. Our Polytechnic offers Four Diploma Courses affiliated to Director Board of Technical Education, Government of MP, Bhopal. Directorate of Technical Education Bhopal. I heartily welcome to all prospective Parents of Harda and near by towns to visit our Polytechnic and have discussion fruitfully with me and Professors to choose appropriate courses of study for their wards.It has close Industries Institute Collaboration with most of the Engineering Industries and other Industries around Harda. The Polytechnic is functioning in a well laid out campus with shady trees.</p>\r\n\r\n<p>The classrooms, Laboratories and all student amenities are housed in a 80,000 square feet of Buildings. A well-planned layout of playground supplements the extra curricular activities of the students. All Four Departments are headed by eminent, dedicated and sincere Professors with a high qualification in their appropriate branch of engineering and technology. Each branch of courses has 13 faculty to assist them. Principal V.K. Tiwari M.E. GeotechGovt. Polytechnic College, HardaCell 9425044984</p>\r\n', 'Welcome!!! Government Polytechnic College, Harda', '', '', 'IMErC.jpg', 'Principal Desk', '', '', '', ''),
(3, '', '', '', '', '', 'Contact Us', 'Government Polytechnic College, Indore Road Harda-461331', '7577-222031', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3690.478626848023!2d77.09741981432126!3d22.33554954726012!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x397d70d45562be63%3A0x334fc73d7e4c9810!2sGovernment+Polytechnic+College!5e0!3m2!1sen!2sin!4v1482472168422', 'prinpoly.hrd@mp.gov.in');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` int(11) NOT NULL COMMENT '0:active,1:de-active',
  `password_reset_key` varchar(255) NOT NULL,
  `user_type` int(11) NOT NULL COMMENT '0:normal,1:garden_owner',
  `garden_name` varchar(100) NOT NULL,
  `capacity` varchar(25) NOT NULL,
  `price` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`user_id`, `first_name`, `last_name`, `email`, `password`, `status`, `password_reset_key`, `user_type`, `garden_name`, `capacity`, `price`) VALUES
(2, 'Ravi', 'Thakur', 'ravi.sam@mailinator.com', 'e10adc3949ba59abbe56e057f20f883e', 0, '', 1, 'Test', '-1', '34'),
(3, 'Vishal', 'Thakur', 'iamthakurravi@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 0, '', 1, 'Test1', '0', '5'),
(4, 'Manish1', 'Thakur1', 'ravi@mailinator.com', 'e10adc3949ba59abbe56e057f20f883e', 0, '', 0, '', '', ''),
(5, 'Goarav', 'Bhandari', 'gg@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 0, '', 1, 'Test2', '3', '8'),
(6, 'Gaurav', 'ggauravbhandari', 'ggauravbhandari@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 0, '', 0, '', '', ''),
(7, 'Gaurav ', 'Bhandari', 'ergauravbhandari@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 0, '', 0, '', '', ''),
(8, '', '', 'iamthakurravi@mailinator.com', 'e10adc3949ba59abbe56e057f20f883e', 0, '', 0, '', '', ''),
(9, '', '', 'test123@mailinator.com', '098f6bcd4621d373cade4e832627b4f6', 0, '', 0, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `time_table`
--

CREATE TABLE `time_table` (
  `time_table_id` int(11) NOT NULL,
  `time_table` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_date` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `time_table`
--

INSERT INTO `time_table` (`time_table_id`, `time_table`, `description`, `created_date`) VALUES
(25, 'u3dHXRXM6Ucs 2.jpg', 'CSE II Sem', '24-03-2018'),
(26, 'C7lhAilrCccs 4.jpg', 'CSE IV Sem', '24-03-2018'),
(27, 'PxwNeGe2sFcs 6.jpg', 'CSE VI Sem', '24-03-2018'),
(28, 'QdpVrjX6upcivil 2.jpg', 'Civil II Sem', '24-03-2018'),
(29, 'lh7FpsYCnHCivil 6 4.jpg', 'Civil IV & VI Sem', '24-03-2018'),
(30, 'TSC0EanNsuMech 2.jpg', 'Mechanical II Sem', '24-03-2018'),
(31, 'v3LXDz1lb3Mech 4  6.jpg', 'Mechanical IV & VI Sem', '24-03-2018'),
(32, '8qtCueNv8MEle 2.jpg', 'Electrical  Engg II Sem', '24-03-2018'),
(33, 'EZfh8nAVHgele 4.jpg', 'Electrical  Engg IV & VI Sem', '24-03-2018');

-- --------------------------------------------------------

--
-- Table structure for table `workshop`
--

CREATE TABLE `workshop` (
  `workshop_id` int(11) NOT NULL,
  `workshop_title` varchar(255) NOT NULL,
  `workshop_desc` longtext NOT NULL,
  `workshop_area` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `workshop`
--

INSERT INTO `workshop` (`workshop_id`, `workshop_title`, `workshop_desc`, `workshop_area`) VALUES
(10, 'Department of Computer Science & Engineering', '<p>The Department of Computer Science and Engineering has the two Laboratories that are equipped with all necessary resources and software. The laboratories are fully equipped with electronic surveillance system.</p>\r\n', 'NA'),
(11, 'Electrical Machine Lab', '<p>3 Phase induction Motor, DC Shunt Motor, 1,3 Phase Transformer, MCB HRC System, Power Analyse, RL, etc.</p>\r\n', 'na');

-- --------------------------------------------------------

--
-- Table structure for table `workshop_images`
--

CREATE TABLE `workshop_images` (
  `workshop_image_id` int(11) NOT NULL,
  `workshop_id` int(11) NOT NULL,
  `workshop_image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `workshop_images`
--

INSERT INTO `workshop_images` (`workshop_image_id`, `workshop_id`, `workshop_image`) VALUES
(13, 8, 'C1rRy.jpg'),
(14, 8, 'rmdlT.jpg'),
(15, 8, 'ZQn6u.jpg'),
(16, 8, 'UKtiU.jpg'),
(17, 8, 'UvzDt.jpg'),
(18, 10, 'rhw02.jpg'),
(19, 10, '2uOup.jpg'),
(21, 10, 'YC7KB.jpg'),
(22, 10, 'ilYPt.jpg'),
(23, 11, 'gCXOj.jpg'),
(24, 11, 'ro3DG.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `alumni`
--
ALTER TABLE `alumni`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `alumni_bottom`
--
ALTER TABLE `alumni_bottom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `community`
--
ALTER TABLE `community`
  ADD PRIMARY KEY (`community_id`);

--
-- Indexes for table `community_description`
--
ALTER TABLE `community_description`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `community_member`
--
ALTER TABLE `community_member`
  ADD PRIMARY KEY (`cmid`);

--
-- Indexes for table `departmental_directory`
--
ALTER TABLE `departmental_directory`
  ADD PRIMARY KEY (`departmental_id`);

--
-- Indexes for table `department_course`
--
ALTER TABLE `department_course`
  ADD PRIMARY KEY (`department_course_id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`faculty_id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`gallery_id`);

--
-- Indexes for table `gallery_pic`
--
ALTER TABLE `gallery_pic`
  ADD PRIMARY KEY (`gallery_id`);

--
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`game_id`);

--
-- Indexes for table `game_images`
--
ALTER TABLE `game_images`
  ADD PRIMARY KEY (`game_image_id`);

--
-- Indexes for table `goverment_project`
--
ALTER TABLE `goverment_project`
  ADD PRIMARY KEY (`goverment_project_id`);

--
-- Indexes for table `hostel`
--
ALTER TABLE `hostel`
  ADD PRIMARY KEY (`hostel_id`);

--
-- Indexes for table `hostel_images`
--
ALTER TABLE `hostel_images`
  ADD PRIMARY KEY (`hostel_image_id`);

--
-- Indexes for table `infrastructure`
--
ALTER TABLE `infrastructure`
  ADD PRIMARY KEY (`infrastructure_id`);

--
-- Indexes for table `infrastructure_images`
--
ALTER TABLE `infrastructure_images`
  ADD PRIMARY KEY (`infrastructure_image_id`);

--
-- Indexes for table `library`
--
ALTER TABLE `library`
  ADD PRIMARY KEY (`library_id`);

--
-- Indexes for table `library_image`
--
ALTER TABLE `library_image`
  ADD PRIMARY KEY (`library_image_id`);

--
-- Indexes for table `other_comp`
--
ALTER TABLE `other_comp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `other_staff`
--
ALTER TABLE `other_staff`
  ADD PRIMARY KEY (`staff_quarter_id`);

--
-- Indexes for table `performance_detail`
--
ALTER TABLE `performance_detail`
  ADD PRIMARY KEY (`performance_detail_id`);

--
-- Indexes for table `placement`
--
ALTER TABLE `placement`
  ADD PRIMARY KEY (`placement_id`);

--
-- Indexes for table `registration_student`
--
ALTER TABLE `registration_student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_education`
--
ALTER TABLE `staff_education`
  ADD PRIMARY KEY (`staff_education_id`);

--
-- Indexes for table `staff_quarter_facilities`
--
ALTER TABLE `staff_quarter_facilities`
  ADD PRIMARY KEY (`staff_quarter_id`);

--
-- Indexes for table `staff_training`
--
ALTER TABLE `staff_training`
  ADD PRIMARY KEY (`staff_training_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `student_comp`
--
ALTER TABLE `student_comp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_banner`
--
ALTER TABLE `tbl_banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Indexes for table `tbl_campus`
--
ALTER TABLE `tbl_campus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_homepage`
--
ALTER TABLE `tbl_homepage`
  ADD PRIMARY KEY (`h_id`);

--
-- Indexes for table `tbl_important_link`
--
ALTER TABLE `tbl_important_link`
  ADD PRIMARY KEY (`link_id`);

--
-- Indexes for table `tbl_news`
--
ALTER TABLE `tbl_news`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `tbl_news_latter`
--
ALTER TABLE `tbl_news_latter`
  ADD PRIMARY KEY (`n_id`);

--
-- Indexes for table `tbl_pages`
--
ALTER TABLE `tbl_pages`
  ADD PRIMARY KEY (`page_id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `time_table`
--
ALTER TABLE `time_table`
  ADD PRIMARY KEY (`time_table_id`);

--
-- Indexes for table `workshop`
--
ALTER TABLE `workshop`
  ADD PRIMARY KEY (`workshop_id`);

--
-- Indexes for table `workshop_images`
--
ALTER TABLE `workshop_images`
  ADD PRIMARY KEY (`workshop_image_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `alumni`
--
ALTER TABLE `alumni`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `alumni_bottom`
--
ALTER TABLE `alumni_bottom`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `community`
--
ALTER TABLE `community`
  MODIFY `community_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `community_description`
--
ALTER TABLE `community_description`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `community_member`
--
ALTER TABLE `community_member`
  MODIFY `cmid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `departmental_directory`
--
ALTER TABLE `departmental_directory`
  MODIFY `departmental_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `department_course`
--
ALTER TABLE `department_course`
  MODIFY `department_course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `faculty_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `gallery_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `gallery_pic`
--
ALTER TABLE `gallery_pic`
  MODIFY `gallery_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `games`
--
ALTER TABLE `games`
  MODIFY `game_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `game_images`
--
ALTER TABLE `game_images`
  MODIFY `game_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `goverment_project`
--
ALTER TABLE `goverment_project`
  MODIFY `goverment_project_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `hostel`
--
ALTER TABLE `hostel`
  MODIFY `hostel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `hostel_images`
--
ALTER TABLE `hostel_images`
  MODIFY `hostel_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `infrastructure`
--
ALTER TABLE `infrastructure`
  MODIFY `infrastructure_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `infrastructure_images`
--
ALTER TABLE `infrastructure_images`
  MODIFY `infrastructure_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `library`
--
ALTER TABLE `library`
  MODIFY `library_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `library_image`
--
ALTER TABLE `library_image`
  MODIFY `library_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `other_comp`
--
ALTER TABLE `other_comp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `other_staff`
--
ALTER TABLE `other_staff`
  MODIFY `staff_quarter_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `performance_detail`
--
ALTER TABLE `performance_detail`
  MODIFY `performance_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `placement`
--
ALTER TABLE `placement`
  MODIFY `placement_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `registration_student`
--
ALTER TABLE `registration_student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff_education`
--
ALTER TABLE `staff_education`
  MODIFY `staff_education_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `staff_quarter_facilities`
--
ALTER TABLE `staff_quarter_facilities`
  MODIFY `staff_quarter_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `staff_training`
--
ALTER TABLE `staff_training`
  MODIFY `staff_training_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;

--
-- AUTO_INCREMENT for table `student_comp`
--
ALTER TABLE `student_comp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_banner`
--
ALTER TABLE `tbl_banner`
  MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbl_campus`
--
ALTER TABLE `tbl_campus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_homepage`
--
ALTER TABLE `tbl_homepage`
  MODIFY `h_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_important_link`
--
ALTER TABLE `tbl_important_link`
  MODIFY `link_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_news`
--
ALTER TABLE `tbl_news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_news_latter`
--
ALTER TABLE `tbl_news_latter`
  MODIFY `n_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `tbl_pages`
--
ALTER TABLE `tbl_pages`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `time_table`
--
ALTER TABLE `time_table`
  MODIFY `time_table_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `workshop`
--
ALTER TABLE `workshop`
  MODIFY `workshop_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `workshop_images`
--
ALTER TABLE `workshop_images`
  MODIFY `workshop_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
