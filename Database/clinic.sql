-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2017 at 05:02 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `clinic`
--

-- --------------------------------------------------------

--
-- Table structure for table `cobalt_reporter`
--

CREATE TABLE `cobalt_reporter` (
  `module_name` varchar(255) NOT NULL,
  `report_name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `show_field` blob NOT NULL,
  `operator` blob NOT NULL,
  `text_field` blob NOT NULL,
  `sum_field` blob NOT NULL,
  `count_field` blob NOT NULL,
  `group_field1` blob NOT NULL,
  `group_field2` blob NOT NULL,
  `group_field3` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cobalt_sst`
--

CREATE TABLE `cobalt_sst` (
  `auto_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `config_file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dept`
--

CREATE TABLE `dept` (
  `dept_id` int(5) NOT NULL,
  `dept_code` varchar(30) DEFAULT NULL,
  `dept_description` varchar(75) NOT NULL,
  `dept_assign` enum('Academic','Admin') NOT NULL DEFAULT 'Academic',
  `is_deleted` enum('Yes','No') DEFAULT 'No'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Master List of Functional Units of APC';

--
-- Dumping data for table `dept`
--

INSERT INTO `dept` (`dept_id`, `dept_code`, `dept_description`, `dept_assign`, `is_deleted`) VALUES
(53, 'ITRO', 'Information Technology Resource Center', '', 'No'),
(54, 'Clinic', 'APC Clinic', '', 'No'),
(55, 'Registrar', 'Registrar', '', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `emergencycase`
--

CREATE TABLE `emergencycase` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `patient_type` varchar(255) NOT NULL,
  `student_id` char(11) NOT NULL,
  `emp_id` char(10) NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  `diagnosis` text,
  `hospital_id` int(11) NOT NULL,
  `escorted_by` varchar(255) DEFAULT NULL,
  `guarantee_control_no` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emergencycase`
--

INSERT INTO `emergencycase` (`id`, `date`, `patient_type`, `student_id`, `emp_id`, `location`, `diagnosis`, `hospital_id`, `escorted_by`, `guarantee_control_no`) VALUES
(50, '2017-03-22', 'Student', '2014-100353', '', 'Gym', 'Broken Arms', 3, 'Justine', 'N/A'),
(52, '2017-03-24', 'Employee', '', '2014-10030', 'Gym', 'Heart Broken', 3, 'Juan Dela Cruz', 'N/A');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `emp_id` char(10) NOT NULL,
  `emp_last_name` varchar(25) NOT NULL,
  `emp_first_name` varchar(30) NOT NULL,
  `emp_middle_name` varchar(25) NOT NULL,
  `email` varchar(25) NOT NULL,
  `emp_status` int(5) NOT NULL,
  `emp_group` int(5) NOT NULL,
  `address` varchar(255) NOT NULL,
  `postal_code` char(4) NOT NULL,
  `tel_num` varchar(40) NOT NULL,
  `mobile_num` char(15) NOT NULL,
  `hiring_date` date DEFAULT NULL,
  `resignation_date` date DEFAULT NULL,
  `gender` enum('Male','Female') DEFAULT NULL,
  `civil_status` enum('Single','Married','Legally Separated','Single Parent') DEFAULT 'Single',
  `birth_date` date DEFAULT NULL,
  `birth_place` varchar(255) DEFAULT NULL,
  `religion` varchar(255) DEFAULT NULL,
  `is_deleted` enum('Yes','No') DEFAULT 'No',
  `ATM_num` varchar(25) NOT NULL,
  `BDO_ATM_num` varchar(25) NOT NULL,
  `SSS_num` varchar(25) NOT NULL,
  `PhilHealth_num` varchar(25) NOT NULL,
  `TIN_num` varchar(25) NOT NULL,
  `PagIbig_num` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Master List of Employees in APC';

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`emp_id`, `emp_last_name`, `emp_first_name`, `emp_middle_name`, `email`, `emp_status`, `emp_group`, `address`, `postal_code`, `tel_num`, `mobile_num`, `hiring_date`, `resignation_date`, `gender`, `civil_status`, `birth_date`, `birth_place`, `religion`, `is_deleted`, `ATM_num`, `BDO_ATM_num`, `SSS_num`, `PhilHealth_num`, `TIN_num`, `PagIbig_num`) VALUES
('2014-10030', 'Gregorio', 'Felix', 'Villacruel', 'fvgregorio@student.apc.ed', 0, 0, 'asdasd', '', '123123', '1231231', '2017-02-21', '2017-02-21', 'Male', 'Single', '2017-02-21', 'asasd', 'asd', NULL, '', '', '', '', '', ''),
('2014-12312', 'Abalon', 'Jonathan', 'D', 'jonathan@gmail.com', 0, 0, 'SAMPLE.', '2132', '2131231', '21321312312', '2012-03-22', '2017-03-22', 'Male', 'Single', '2017-03-22', 'Paranaque City', 'Roman Catholic', NULL, '', '', '', '', '', ''),
('2014-21431', 'Dagaton', 'Aaron', 'S.', 'dagaton@gmail.com', 0, 0, 'SAMPLE.', '1231', '1232131', '12312312312', '2014-04-18', '2015-04-21', 'Male', 'Single', '1995-03-19', 'Makati City', 'Roman Catholic', 'No', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

CREATE TABLE `hospital` (
  `hospital_id` int(11) NOT NULL,
  `hospital_name` varchar(255) NOT NULL,
  `tel_number` char(7) NOT NULL,
  `mobile_number` char(11) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hospital`
--

INSERT INTO `hospital` (`hospital_id`, `hospital_name`, `tel_number`, `mobile_number`, `address`) VALUES
(1, 'Makati Medical Center', '888899', '8888999', 'No. 2, Amorsolo St., Legaspi Village, Makati City, Makati, 1229 Metro Manila'),
(2, 'St. Luke''s Medical Center - Global City', '7897700', '7897700', 'Rizal Drive cor. 32nd St. and 5th Ave., Taguig, 1634 Metro Manila'),
(3, 'Fort Bonifacio General Hospital', '4607431', '4607431', 'Barangay Pinagsama, Taguig, Metro Manila'),
(4, 'Unihealth-Paranaque Hospital & Medical Center', '8320636', '8320636', 'Sucat Rd, Parañaque, Metro Manila'),
(5, 'Asian Hospital and Medical Center', '8765748', '+6327719000', '2205 Civic Dr, Alabang, Muntinlupa, 1780 Metro Manila, Philippines');

-- --------------------------------------------------------

--
-- Table structure for table `log_detail`
--

CREATE TABLE `log_detail` (
  `log_detail_id` int(11) NOT NULL,
  `log_id` int(11) NOT NULL,
  `medicine_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log_detail`
--

INSERT INTO `log_detail` (`log_detail_id`, `log_id`, `medicine_id`, `qty`) VALUES
(12, 6, 3, 300),
(13, 7, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `log_info`
--

CREATE TABLE `log_info` (
  `log_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `complaints` varchar(255) NOT NULL,
  `patient_type` enum('Student','Employee','','') NOT NULL,
  `student_id` char(11) DEFAULT NULL,
  `emp_id` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log_info`
--

INSERT INTO `log_info` (`log_id`, `date`, `time`, `complaints`, `patient_type`, `student_id`, `emp_id`) VALUES
(6, '2017-03-22', '05:32:52', 'Cold', 'Student', '2014-100353', ''),
(7, '2017-03-24', '10:48:00', 'test', 'Employee', '', '2014-12312');

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

CREATE TABLE `medicine` (
  `medicine_id` int(11) NOT NULL,
  `medicine_name` varchar(45) DEFAULT NULL,
  `date_expiration` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicine`
--

INSERT INTO `medicine` (`medicine_id`, `medicine_name`, `date_expiration`) VALUES
(1, 'Paracetamol', '2017-03-06'),
(2, 'Ibuprofen', '2017-03-06'),
(3, 'Cetirizine', '2017-03-06'),
(4, 'Imodium', '2017-03-06'),
(5, 'Decolgen no drowse', '2017-03-06'),
(6, 'Ambroxol', '2017-04-27'),
(7, 'Betahistin (SERC)', '2017-04-27'),
(8, 'Bioflu', '2017-04-27'),
(9, 'Butamirate Citrate (SINECOD)', '2017-03-27'),
(10, 'Captopril', '2017-04-27'),
(11, 'Carbocisteine', '2017-04-27'),
(12, 'Celestamine', '2017-04-27'),
(13, 'Clonidine (CATAPRES)', '2017-04-27'),
(14, 'Dequalinium Chloride (DEQUADIN)', '2017-04-27'),
(15, 'Diphenhydramine (BENADRYL)', '2017-04-27'),
(16, 'Domperidone (MOTILIUM)', '2017-04-27'),
(17, 'Hyoscine N-butylbromid (BUSCOPAN)', '2017-04-27'),
(18, 'Ibuprofen (ADVIL)', '2017-04-27'),
(19, 'Ibuprofen/Paracetamol (ALAXAN)', '2017-04-27'),
(20, 'Isorsorbide dinitrate  (ISORDIL)', '2017-04-27'),
(21, 'Kremil S chewable', '2017-04-27'),
(22, 'Lagundi (ASCOF)', '2017-04-27'),
(23, 'Loperamide', '2017-04-27'),
(24, 'Loratadine (ALLERTA)', '2017-04-27'),
(25, 'Meclizine HCL (DIZITAB)', '2017-04-27'),
(26, 'Mefenamic Acid', '2017-04-27'),
(27, 'Metoclopramide (PLASIL)', '2017-04-27'),
(28, 'Metoprolol  (NEOBLOC)', '2017-04-27'),
(29, 'Neozep no drowse', '2017-04-27'),
(30, 'Nifedipine (CALCIBLOC)', '2017-04-27'),
(31, 'Omeprazole', '2017-04-27'),
(32, 'ORS (HYDRITE)', '2018-04-27'),
(33, 'Paracetamol (BIOGESIC)', '2018-03-27'),
(34, 'Piroxicam (FELDENE FLASH)', '2018-03-27'),
(35, 'Salbutamol  tablet', '2018-03-27'),
(36, 'Salbutamol Nebule (VENTOLIN)', '2018-03-27'),
(37, 'Sambong Relief', '2018-03-27'),
(38, 'Sinupret', '2018-03-27'),
(39, 'Tranexamic acid', '2018-03-27'),
(40, 'Tuseran Forte capsule', '2018-03-27'),
(42, '0.9 Nacl 1L', '0000-00-00'),
(43, 'Alcohol', '0000-00-00'),
(44, 'Ammonia', '0000-00-00'),
(45, 'Bactidol Gargle', '0000-00-00'),
(46, 'Bactroban', '0000-00-00'),
(47, 'Band-Aid', '0000-00-00'),
(48, 'Betadine 10ml', '2017-03-27'),
(49, 'Betadine 120ml', '0000-00-00'),
(50, 'Burn Ointment', '0000-00-00'),
(51, 'Cotton Balls', '0000-00-00'),
(52, 'Cotton Buds', '0000-00-00'),
(53, 'Efficascent Oil', '0000-00-00'),
(54, 'Elastic Bandage 3”', '0000-00-00'),
(55, 'Elastic Bandage 6”', '0000-00-00'),
(56, 'Eye Patch', '0000-00-00'),
(57, 'Face mask', '0000-00-00'),
(58, 'Flammazine', '0000-00-00'),
(59, 'Gauze Pad 4x4', '0000-00-00'),
(60, 'Hand Sanitizer', '0000-00-00'),
(61, 'KY Jelly', '0000-00-00'),
(62, 'Hydrocortisone cream', '0000-00-00'),
(63, 'Hydrogen Peroxide', '0000-00-00'),
(64, 'Lysol spray', '0000-00-00'),
(65, 'Micropore 1''', '0000-00-00'),
(66, 'Non- Sterile Gloves', '0000-00-00'),
(67, 'Petroleum Jelly', '0000-00-00'),
(68, 'Salonpas', '0000-00-00'),
(69, 'Syringe 3cc', '0000-00-00'),
(70, 'Tetrahydrozoline (red eye)', '0000-00-00'),
(71, 'Tetrahydrozoline (refresh)', '0000-00-00'),
(72, 'Triderm', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `medicine_receiving`
--

CREATE TABLE `medicine_receiving` (
  `medicine_count_id` int(11) NOT NULL,
  `medicine_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `date` date NOT NULL,
  `type` enum('Delivery','Beginning balance') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicine_receiving`
--

INSERT INTO `medicine_receiving` (`medicine_count_id`, `medicine_id`, `qty`, `date`, `type`) VALUES
(6, 3, 500, '2017-03-22', 'Beginning balance'),
(7, 5, 500, '2017-03-22', 'Beginning balance'),
(8, 2, 500, '2017-03-22', 'Beginning balance'),
(9, 4, 500, '2017-03-22', 'Beginning balance'),
(10, 1, 500, '2017-03-22', 'Beginning balance');

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `person_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`person_id`, `first_name`, `middle_name`, `last_name`, `gender`) VALUES
(1, 'Super User', 'X', 'Root', 'Male'),
(2, 'Nurse', 'Nurse', 'Nurse', 'Female'),
(3, 'Doctor', 'Doctor', 'Doctor', 'Female');

-- --------------------------------------------------------

--
-- Table structure for table `refempfamily`
--

CREATE TABLE `refempfamily` (
  `family_id` int(11) NOT NULL,
  `emp_id` char(11) NOT NULL,
  `relationship` enum('FATHER','MOTHER','GUARDIAN','HUSBAND','WIFE') NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `email_status` enum('Active','Inactive') NOT NULL,
  `address_type` enum('Home','Office') NOT NULL,
  `address` varchar(255) NOT NULL,
  `postal_code` char(4) DEFAULT NULL,
  `mobile_num1` varchar(255) DEFAULT NULL,
  `tel_num` varchar(255) DEFAULT NULL,
  `mobile_num2` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `refempfamily`
--

INSERT INTO `refempfamily` (`family_id`, `emp_id`, `relationship`, `name`, `email`, `email_status`, `address_type`, `address`, `postal_code`, `mobile_num1`, `tel_num`, `mobile_num2`) VALUES
(1, '2014-10030', 'FATHER', 'Felix Gregorio JR.', 'fasdsad', 'Inactive', 'Office', 'asdsdas', '123', '123', '123', '12312312321'),
(2, '2014-10030', 'MOTHER', 'Lolinie Gregorio', 'centuryleni@gmail.com', 'Active', 'Office', '123 Mabuhay Ave.', '2012', '24123123', '12312312', ''),
(3, '2014-12312', 'MOTHER', 'SAMPLE', 'SAMPLE@gmail.com', 'Active', 'Office', 'ewrewrewr', '1231', '12312312312', '1231231', '12312312312'),
(5, '2014-21431', 'MOTHER', 'SAMPLE', 'SAMPLE@gmail.com', 'Active', 'Office', 'saikdnfqoidnqwodin', '1231', '12312312312', '1231231', '12312321313');

-- --------------------------------------------------------

--
-- Table structure for table `refstudent`
--

CREATE TABLE `refstudent` (
  `student_id` char(11) NOT NULL,
  `student_last_name` varchar(25) NOT NULL,
  `student_first_name` varchar(30) CHARACTER SET latin1 NOT NULL,
  `student_middle_name` varchar(25) CHARACTER SET latin1 NOT NULL,
  `birth_date` date NOT NULL DEFAULT '0000-00-00',
  `birth_place` varchar(35) NOT NULL,
  `admission_date` date NOT NULL DEFAULT '0000-00-00',
  `entry_level` enum('Freshman','Transferee','Cross Enrollee','2nd Degree','Graduate School') CHARACTER SET latin1 DEFAULT 'Freshman',
  `admission_credential` varchar(2500) CHARACTER SET latin1 DEFAULT NULL,
  `mail_grades_to` enum('Father','Mother','Guardian','Student') CHARACTER SET latin1 NOT NULL DEFAULT 'Father',
  `exit_level` enum('NA','Graduate','Transferred') CHARACTER SET latin1 DEFAULT 'NA',
  `nationality` enum('Filipino','Others') CHARACTER SET latin1 NOT NULL DEFAULT 'Filipino',
  `gender` enum('Male','Female') CHARACTER SET latin1 NOT NULL DEFAULT 'Male',
  `address` varchar(250) CHARACTER SET latin1 NOT NULL,
  `postal_code` varchar(250) CHARACTER SET latin1 DEFAULT NULL,
  `tel_num` varchar(250) CHARACTER SET latin1 DEFAULT NULL,
  `mobile_num` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `email` varchar(250) CHARACTER SET latin1 DEFAULT NULL,
  `religion` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `civil_status` enum('Single','Married','Separated','Widowed') CHARACTER SET latin1 NOT NULL DEFAULT 'Single',
  `box_num` varchar(250) CHARACTER SET latin1 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Masterlist of Student Main Profile';

--
-- Dumping data for table `refstudent`
--

INSERT INTO `refstudent` (`student_id`, `student_last_name`, `student_first_name`, `student_middle_name`, `birth_date`, `birth_place`, `admission_date`, `entry_level`, `admission_credential`, `mail_grades_to`, `exit_level`, `nationality`, `gender`, `address`, `postal_code`, `tel_num`, `mobile_num`, `email`, `religion`, `civil_status`, `box_num`) VALUES
('2015-100016', 'Romblon', 'Daveson', 'Kitane', '2017-02-22', 'San Juan City', '2017-02-22', '', '', '', '', 'Filipino', 'Male', 'Aven.ts 231 gsts', '2314', '213412', '412312', 'dave@gmail.com', 'Catholic', 'Single', ''),
('2014-100450', 'Siccion', 'Justine Mark', 'D', '1997-03-18', 'Bacolod City', '2016-03-22', '', '', '', '', 'Filipino', 'Male', 'TEST', '1200', '2120120', '09267389182', 'justine.siccion@yahoo.com', 'Roman Catholic', 'Single', ''),
('2014-123112', 'Galdot', 'Gal', 'D', '2009-03-09', 'TEST', '2009-03-22', '', '', '', '', 'Filipino', 'Male', 'TEST.', '21312', '1232131', '12312312312', 'gal@gmail.com', 'Greek', 'Single', ''),
('2014-100353', 'Lavarro', 'Joshua', 'N', '2014-04-22', 'Pasay', '2017-03-22', '', '', '', '', 'Filipino', 'Male', 'askjnweiourhewuh', '12312', '1232131', '23532423424', 'josh@gmail.com', 'Roman Catholic', 'Single', '');

-- --------------------------------------------------------

--
-- Table structure for table `refstudentclearance`
--

CREATE TABLE `refstudentclearance` (
  `id` int(5) NOT NULL,
  `term_id` varchar(250) NOT NULL,
  `date` date NOT NULL,
  `student_id` varchar(11) NOT NULL,
  `remarks` varchar(10000) NOT NULL,
  `is_clear` enum('YES','NO') NOT NULL,
  `emp_id` varchar(250) NOT NULL,
  `dept_id` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `refstudentclearance`
--

INSERT INTO `refstudentclearance` (`id`, `term_id`, `date`, `student_id`, `remarks`, `is_clear`, `emp_id`, `dept_id`) VALUES
(47770, '1', '2017-03-09', '2014-100360', 'test', 'YES', 'test', 'test'),
(47771, '3', '2017-08-09', '2014-300234', 'test1', 'NO', 'test1', 'test1');

-- --------------------------------------------------------

--
-- Table structure for table `refstudentfamily`
--

CREATE TABLE `refstudentfamily` (
  `family_id` int(5) NOT NULL,
  `student_id` char(11) NOT NULL,
  `relationship` enum('FATHER','MOTHER','GUARDIAN','HUSBAND','WIFE') NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `email_status` varchar(255) DEFAULT NULL,
  `address_type` enum('HOME','OFFICE') DEFAULT 'HOME',
  `address` varchar(250) NOT NULL,
  `postal_code` char(4) NOT NULL,
  `tel_num` varchar(250) NOT NULL,
  `mobile_num1` varchar(250) NOT NULL,
  `mobile_num2` varchar(250) NOT NULL,
  `attended` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Masterlist of Student Family';

--
-- Dumping data for table `refstudentfamily`
--

INSERT INTO `refstudentfamily` (`family_id`, `student_id`, `relationship`, `name`, `email`, `email_status`, `address_type`, `address`, `postal_code`, `tel_num`, `mobile_num1`, `mobile_num2`, `attended`) VALUES
(20650, '2015-100016', 'MOTHER', 'LMAO', 'LMAO@gmail.com', 'Active', '', 'LMAO srtsts ave.,', '2331', '124123', '21412312', '123123123', 'Active'),
(20651, '2014-100450', 'FATHER', 'Roland Siccion', 'roland@gmail.com', 'Active', 'HOME', 'test', '0923', '1231231', '21213102324', '32432424244', 'Yes'),
(20652, '2014-123112', 'FATHER', 'SAmple', 'sample@gmail.com', 'Active', 'OFFICE', 'TEST.', '2121', '1243123', '23123213131', '13241241321', 'Yes'),
(20653, '2014-100353', 'MOTHER', 'SAMPLE', 'SAMPLE@gmail.cpom', 'Active', 'HOME', 'SAMPLE.', '1232', '1231231', '12213123213', '12312312', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `refsubjectofferingdtl`
--

CREATE TABLE `refsubjectofferingdtl` (
  `subject_offering_id` int(5) NOT NULL,
  `time` char(17) DEFAULT NULL,
  `time_start` int(11) NOT NULL,
  `time_end` int(11) NOT NULL,
  `day` char(3) DEFAULT NULL,
  `room` varchar(5) NOT NULL,
  `room_type` enum('Lec','Lab') NOT NULL DEFAULT 'Lec'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Schedule Detail';

-- --------------------------------------------------------

--
-- Table structure for table `refsubjectofferinghdr`
--

CREATE TABLE `refsubjectofferinghdr` (
  `subject_offering_id` int(11) NOT NULL,
  `term_id` int(5) NOT NULL,
  `subject_id` int(5) NOT NULL,
  `section` varchar(255) DEFAULT NULL,
  `subject_code` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='List of Subjects Offered per Term';

-- --------------------------------------------------------

--
-- Table structure for table `required_appointment`
--

CREATE TABLE `required_appointment` (
  `required_appointment_id` int(11) NOT NULL,
  `student_id` char(11) NOT NULL,
  `date` date NOT NULL,
  `time_start` int(11) NOT NULL,
  `time_end` int(11) NOT NULL,
  `status` enum('Pending','Complete','','') DEFAULT NULL,
  `subject_offering_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subject_id` int(5) NOT NULL,
  `term_id` int(11) NOT NULL DEFAULT '1',
  `subject_code` varchar(10) NOT NULL DEFAULT '',
  `subject_name` varchar(100) NOT NULL,
  `subject_description` varchar(50000) NOT NULL,
  `unit` decimal(2,1) NOT NULL DEFAULT '0.0',
  `pay_unit` decimal(2,1) NOT NULL,
  `compute_GPA` char(1) DEFAULT NULL,
  `lab_id` varchar(1) DEFAULT NULL,
  `group_owner` varchar(25) DEFAULT NULL,
  `evaluate_OTE` char(1) DEFAULT NULL,
  `is_elective` char(1) DEFAULT NULL,
  `grade_type` char(1) DEFAULT NULL,
  `accept_substitute` char(1) DEFAULT NULL,
  `lab_type_id` char(1) DEFAULT NULL,
  `dept_id` int(5) NOT NULL DEFAULT '0',
  `category` tinyint(4) NOT NULL,
  `assess_note` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Subject';

-- --------------------------------------------------------

--
-- Table structure for table `system_log`
--

CREATE TABLE `system_log` (
  `entry_id` bigint(20) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `datetime` datetime NOT NULL,
  `action` mediumtext NOT NULL,
  `module` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `system_log`
--

INSERT INTO `system_log` (`entry_id`, `ip_address`, `user`, `datetime`, `action`, `module`) VALUES
(1, '::1', 'root', '2017-02-15 01:35:32', 'Logged in', '/clinic/login.php'),
(2, '::1', 'root', '2017-02-15 01:35:32', 'Query Executed: UPDATE user SET `password`=?, `salt`=?, `iteration`=?, `method`=? WHERE username=?\r\nArray\n(\n    [0] => ssiss\n    [1] => $2y$12$QU29gqrc8P.IkjvVNG6DB.7JXbCmLhKm.vh1Ci9mnpnuD7eDm3P6a\n    [2] => QU29gqrc8P+IkjvVNG6DBA\n    [3] => 12\n    [4] => blowfish\n    [5] => root\n)\n', '/clinic/login.php'),
(3, '::1', 'root', '2017-02-15 04:51:51', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(4, '::1', 'root', '2017-02-15 04:51:51', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => View dept\n    [2] => modules/Registrar/department/listview_dept.php\n    [3] => Department\n    [4] => \n    [5] => 1\n    [6] => Yes\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 39\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(5, '::1', 'root', '2017-02-15 04:52:34', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(6, '::1', 'root', '2017-02-15 04:52:34', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => View emergencycase\n    [2] => modules/Clinic/emergency_case/listview_emergencycase.php\n    [3] => Emergency Case\n    [4] => \n    [5] => 1\n    [6] => Yes\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 43\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(7, '::1', 'root', '2017-02-15 04:53:11', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(8, '::1', 'root', '2017-02-15 04:53:11', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => View refempfamily\n    [2] => modules/Registrar/employee_family/listview_refempfamily.php\n    [3] => Employee Family\n    [4] => \n    [5] => 1\n    [6] => Yes\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 63\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(9, '::1', 'root', '2017-02-15 04:53:40', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(10, '::1', 'root', '2017-02-15 04:53:40', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => View refstudent\n    [2] => modules/Registrar/student/listview_refstudent.php\n    [3] => Student\n    [4] => \n    [5] => 1\n    [6] => Yes\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 67\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(11, '::1', 'root', '2017-02-15 04:54:03', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(12, '::1', 'root', '2017-02-15 04:54:03', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => View refstudentclearance\n    [2] => modules/Registrar/clearance/listview_refstudentclearance.php\n    [3] => Student Clearance\n    [4] => \n    [5] => 1\n    [6] => Yes\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 71\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(13, '::1', 'root', '2017-02-15 04:54:24', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(14, '::1', 'root', '2017-02-15 04:54:24', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => View refstudentfamily\n    [2] => modules/Registrar/student_family/listview_refstudentfamily.php\n    [3] => Student Family\n    [4] => \n    [5] => 1\n    [6] => Yes\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 75\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(15, '::1', 'root', '2017-02-15 04:54:47', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(16, '::1', 'root', '2017-02-15 04:54:47', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => View refsubjectofferingdtl\n    [2] => modules/Registrar/subject_offering_detail/listview_refsubjectofferingdtl.php\n    [3] => Subject Offering Details\n    [4] => \n    [5] => 1\n    [6] => Yes\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 79\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(17, '::1', 'root', '2017-02-15 04:55:00', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(18, '::1', 'root', '2017-02-15 04:55:00', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => View refsubjectofferinghdr\n    [2] => modules/Registrar/subject_offering_header/listview_refsubjectofferinghdr.php\n    [3] => Subject Offering Header\n    [4] => \n    [5] => 1\n    [6] => Yes\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 83\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(19, '::1', 'root', '2017-02-15 04:55:15', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(20, '::1', 'root', '2017-02-15 04:55:15', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => View xrefstudentschedule\n    [2] => modules/Registrar/student_schedule/listview_xrefstudentschedule.php\n    [3] => Student Schedule\n    [4] => \n    [5] => 1\n    [6] => Yes\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 99\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(21, '::1', 'root', '2017-02-15 04:56:50', 'Pressed submit button', '/clinic/sysadmin/add_user_passport_groups.php'),
(22, '::1', 'root', '2017-02-15 04:56:50', 'Query Executed: INSERT INTO user_passport_groups(passport_group_id, passport_group, priority, icon) VALUES(?,?,?,?)\r\nArray\n(\n    [0] => isis\n    [1] => \n    [2] => Clinic\n    [3] => 1\n    [4] => blue_folder3.png\n)\n', '/clinic/sysadmin/add_user_passport_groups.php'),
(23, '::1', 'root', '2017-02-15 04:57:19', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(24, '::1', 'root', '2017-02-15 04:57:19', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => View emergencycase\n    [2] => modules/Clinic/emergency_case/listview_emergencycase.php\n    [3] => Emergency Case\n    [4] => \n    [5] => 3\n    [6] => Yes\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 43\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(25, '::1', 'root', '2017-02-15 04:57:47', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(26, '::1', 'root', '2017-02-15 04:57:47', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => View log info\n    [2] => modules/Clinic/log_info/listview_log_info.php\n    [3] => Log Info\n    [4] => \n    [5] => 3\n    [6] => Yes\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 55\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(27, '::1', 'root', '2017-02-15 04:58:31', 'Pressed submit button', '/clinic/sysadmin/add_user_passport_groups.php'),
(28, '::1', 'root', '2017-02-15 04:58:31', 'Query Executed: INSERT INTO user_passport_groups(passport_group_id, passport_group, priority, icon) VALUES(?,?,?,?)\r\nArray\n(\n    [0] => isis\n    [1] => \n    [2] => Appointment\n    [3] => 2\n    [4] => blue_folder3.png\n)\n', '/clinic/sysadmin/add_user_passport_groups.php'),
(29, '::1', 'root', '2017-02-15 04:58:45', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(30, '::1', 'root', '2017-02-15 04:58:45', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => View required appointment\n    [2] => modules/Clinic/required_appointment/listview_required_appointment.php\n    [3] => Required Appointment\n    [4] => \n    [5] => 4\n    [6] => Yes\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 87\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(31, '::1', 'root', '2017-02-15 04:59:11', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(32, '::1', 'root', '2017-02-15 04:59:11', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => View xrefstudentschedule\n    [2] => modules/Registrar/student_schedule/listview_xrefstudentschedule.php\n    [3] => Student Schedule\n    [4] => \n    [5] => 4\n    [6] => Yes\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 99\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(33, '::1', 'root', '2017-02-15 05:00:24', 'Pressed submit button', '/clinic/sysadmin/add_user_passport_groups.php'),
(34, '::1', 'root', '2017-02-15 05:00:24', 'Query Executed: INSERT INTO user_passport_groups(passport_group_id, passport_group, priority, icon) VALUES(?,?,?,?)\r\nArray\n(\n    [0] => isis\n    [1] => \n    [2] => Registrar\n    [3] => 3\n    [4] => blue_folder3.png\n)\n', '/clinic/sysadmin/add_user_passport_groups.php'),
(35, '::1', 'root', '2017-02-15 05:00:36', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(36, '::1', 'root', '2017-02-15 05:00:36', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => View refstudentclearance\n    [2] => modules/Registrar/clearance/listview_refstudentclearance.php\n    [3] => Student Clearance\n    [4] => \n    [5] => 5\n    [6] => Yes\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 71\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(37, '::1', 'root', '2017-02-15 05:01:08', 'Pressed submit button', '/clinic/sysadmin/add_user_passport_groups.php'),
(38, '::1', 'root', '2017-02-15 05:01:08', 'Query Executed: INSERT INTO user_passport_groups(passport_group_id, passport_group, priority, icon) VALUES(?,?,?,?)\r\nArray\n(\n    [0] => isis\n    [1] => \n    [2] => Contact Information\n    [3] => 4\n    [4] => blue_folder3.png\n)\n', '/clinic/sysadmin/add_user_passport_groups.php'),
(39, '::1', 'root', '2017-02-15 05:01:54', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(40, '::1', 'root', '2017-02-15 05:01:54', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => View employee\n    [2] => modules/Registrar/employee/listview_employee.php\n    [3] => Employee\n    [4] => \n    [5] => 6\n    [6] => Yes\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 47\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(41, '::1', 'root', '2017-02-15 05:02:03', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(42, '::1', 'root', '2017-02-15 05:02:03', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => View refempfamily\n    [2] => modules/Registrar/employee_family/listview_refempfamily.php\n    [3] => Employee Family\n    [4] => \n    [5] => 6\n    [6] => Yes\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 63\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(43, '::1', 'root', '2017-02-15 05:02:15', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(44, '::1', 'root', '2017-02-15 05:02:15', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => View refstudent\n    [2] => modules/Registrar/student/listview_refstudent.php\n    [3] => Student\n    [4] => \n    [5] => 6\n    [6] => Yes\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 67\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(45, '::1', 'root', '2017-02-15 05:02:26', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(46, '::1', 'root', '2017-02-15 05:02:26', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => View refstudentfamily\n    [2] => modules/Registrar/student_family/listview_refstudentfamily.php\n    [3] => Student Family\n    [4] => \n    [5] => 6\n    [6] => Yes\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 75\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(47, '::1', 'root', '2017-02-15 05:02:57', 'Pressed delete button', '/clinic/sysadmin/delete_user_passport_groups.php'),
(48, '::1', 'root', '2017-02-15 05:02:57', 'Query Executed: DELETE FROM user_passport_groups WHERE passport_group_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 6\n)\n', '/clinic/sysadmin/delete_user_passport_groups.php'),
(49, '::1', 'root', '2017-02-15 05:04:10', 'Pressed submit button', '/clinic/sysadmin/add_user_passport_groups.php'),
(50, '::1', 'root', '2017-02-15 05:04:10', 'Query Executed: INSERT INTO user_passport_groups(passport_group_id, passport_group, priority, icon) VALUES(?,?,?,?)\r\nArray\n(\n    [0] => isis\n    [1] => \n    [2] => Contact Information\n    [3] => 4\n    [4] => blue_folder3.png\n)\n', '/clinic/sysadmin/add_user_passport_groups.php'),
(51, '::1', 'root', '2017-02-15 05:04:22', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(52, '::1', 'root', '2017-02-15 05:04:22', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => View employee\n    [2] => modules/Registrar/employee/listview_employee.php\n    [3] => Employee\n    [4] => \n    [5] => 7\n    [6] => Yes\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 47\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(53, '::1', 'root', '2017-02-15 05:04:30', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(54, '::1', 'root', '2017-02-15 05:04:30', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => View refempfamily\n    [2] => modules/Registrar/employee_family/listview_refempfamily.php\n    [3] => Employee Family\n    [4] => \n    [5] => 7\n    [6] => Yes\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 63\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(55, '::1', 'root', '2017-02-15 05:04:50', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(56, '::1', 'root', '2017-02-15 05:04:50', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => View refstudent\n    [2] => modules/Registrar/student/listview_refstudent.php\n    [3] => Student\n    [4] => \n    [5] => 7\n    [6] => Yes\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 67\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(57, '::1', 'root', '2017-02-15 05:05:02', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(58, '::1', 'root', '2017-02-15 05:05:02', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => View refstudentfamily\n    [2] => modules/Registrar/student_family/listview_refstudentfamily.php\n    [3] => Student Family\n    [4] => \n    [5] => 7\n    [6] => Yes\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 75\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(59, '::1', 'root', '2017-02-16 12:50:23', 'Logged in', '/clinic/login.php'),
(60, '::1', 'root', '2017-02-16 14:30:16', 'Logged in', '/clinic/login.php'),
(61, '::1', 'root', '2017-02-16 14:34:12', 'Logged in', '/clinic/login.php'),
(62, '::1', 'root', '2017-02-16 14:39:37', 'Logged in', '/clinic/login.php'),
(63, '::1', 'root', '2017-02-16 14:45:28', 'Logged in', '/clinic/login.php'),
(64, '::1', 'root', '2017-02-16 14:48:06', 'Logged in', '/clinic/login.php'),
(65, '::1', 'root', '2017-02-16 14:48:20', 'Pressed cancel button', '/clinic/modules/Clinic/log_info/add_log_info.php'),
(66, '::1', 'root', '2017-02-16 14:48:42', 'Pressed submit button', '/clinic/modules/Clinic/medicine/add_medicine.php'),
(67, '::1', 'root', '2017-02-16 14:49:07', 'Pressed submit button', '/clinic/modules/Clinic/medicine/add_medicine.php'),
(68, '::1', 'root', '2017-02-16 14:49:07', 'Query Executed: INSERT INTO medicine(medicine_id, medicine_name, qty) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => 1\n    [2] => Paracetamol\n    [3] => 1\n)\n', '/clinic/modules/Clinic/medicine/add_medicine.php'),
(69, '::1', 'root', '2017-02-16 14:56:16', 'Logged in', '/clinic/login.php'),
(70, '::1', 'root', '2017-02-16 15:12:38', 'Pressed cancel button', '/clinic/modules/Registrar/student_schedule/add_xrefstudentschedule.php'),
(71, '::1', 'root', '2017-02-16 15:24:35', 'Logged in', '/clinic/login.php'),
(72, '::1', 'root', '2017-02-16 15:26:19', 'Logged in', '/clinic/login.php'),
(73, '::1', 'root', '2017-02-16 15:31:08', 'Logged in', '/clinic/login.php'),
(74, '::1', 'root', '2017-02-16 23:08:07', 'Logged in', '/Clinic/login.php'),
(75, '::1', 'root', '2017-02-16 23:17:24', 'Logged in', '/clinic/login.php'),
(76, '::1', 'root', '2017-02-16 23:38:58', 'Logged in', '/clinic/login.php'),
(77, '::1', 'root', '2017-02-16 23:44:58', 'Pressed cancel button', '/clinic/sysadmin/edit_user_passport_groups.php'),
(78, '::1', 'root', '2017-02-16 23:58:52', 'Logged in', '/clinic/login.php'),
(79, '::1', 'root', '2017-02-17 00:02:21', 'Logged in', '/clinic/login.php'),
(80, '::1', 'root', '2017-02-17 00:05:07', 'Logged in', '/clinic/login.php'),
(81, '::1', 'root', '2017-02-17 00:14:50', 'Logged in', '/clinic/login.php'),
(82, '::1', 'root', '2017-02-17 00:15:34', 'Pressed cancel button', '/clinic/modules/Clinic/medicine/add_medicine.php'),
(83, '::1', 'root', '2017-02-17 00:18:58', 'Logged in', '/clinic/login.php'),
(84, '::1', 'root', '2017-02-17 00:24:06', 'Logged in', '/clinic/login.php'),
(85, '::1', 'root', '2017-02-17 00:35:57', 'Logged in', '/clinic/login.php'),
(86, '::1', 'root', '2017-02-20 09:14:29', 'Logged in', '/clinic/login.php'),
(87, '::1', 'root', '2017-02-20 09:17:41', 'Pressed submit button', '/clinic/modules/Clinic/hospital/add_hospital.php'),
(88, '::1', 'root', '2017-02-20 09:18:05', 'Pressed submit button', '/clinic/modules/Clinic/hospital/add_hospital.php'),
(89, '::1', 'root', '2017-02-20 09:18:05', 'Query Executed: INSERT INTO hospital(hospital_id, hospital_name, tel_number, mobile_number, address) VALUES(?,?,?,?,?)\r\nArray\n(\n    [0] => issss\n    [1] => \n    [2] => Makati Medical Center\n    [3] => 888899\n    [4] => 8888999\n    [5] => No. 2, Amorsolo St., Legaspi Village, Makati City, Makati, 1229 Metro Manila\n)\n', '/clinic/modules/Clinic/hospital/add_hospital.php'),
(90, '::1', 'root', '2017-02-20 09:19:37', 'Pressed submit button', '/clinic/modules/Clinic/hospital/add_hospital.php'),
(91, '::1', 'root', '2017-02-20 09:19:37', 'Query Executed: INSERT INTO hospital(hospital_id, hospital_name, tel_number, mobile_number, address) VALUES(?,?,?,?,?)\r\nArray\n(\n    [0] => issss\n    [1] => \n    [2] => St. Luke''s Medical Center - Global City\n    [3] => 7897700\n    [4] => 7897700\n    [5] => Rizal Drive cor. 32nd St. and 5th Ave., Taguig, 1634 Metro Manila\n)\n', '/clinic/modules/Clinic/hospital/add_hospital.php'),
(92, '::1', 'root', '2017-02-20 09:20:22', 'Pressed submit button', '/clinic/modules/Clinic/hospital/add_hospital.php'),
(93, '::1', 'root', '2017-02-20 09:20:22', 'Query Executed: INSERT INTO hospital(hospital_id, hospital_name, tel_number, mobile_number, address) VALUES(?,?,?,?,?)\r\nArray\n(\n    [0] => issss\n    [1] => \n    [2] => Fort Bonifacio General Hospital\n    [3] => 4607431\n    [4] => 4607431\n    [5] => Barangay Pinagsama, Taguig, Metro Manila\n)\n', '/clinic/modules/Clinic/hospital/add_hospital.php'),
(94, '::1', 'root', '2017-02-20 09:21:26', 'Pressed submit button', '/clinic/modules/Clinic/hospital/add_hospital.php'),
(95, '::1', 'root', '2017-02-20 09:21:26', 'Query Executed: INSERT INTO hospital(hospital_id, hospital_name, tel_number, mobile_number, address) VALUES(?,?,?,?,?)\r\nArray\n(\n    [0] => issss\n    [1] => \n    [2] => Unihealth-Paranaque Hospital & Medical Center\n    [3] => 8320636\n    [4] => 8320636\n    [5] => Sucat Rd, Parañaque, Metro Manila\n)\n', '/clinic/modules/Clinic/hospital/add_hospital.php'),
(96, '::1', 'root', '2017-02-20 09:22:44', 'Pressed submit button', '/clinic/modules/Clinic/medicine/edit_medicine.php'),
(97, '::1', 'root', '2017-02-20 09:22:45', 'Query Executed: UPDATE medicine SET medicine_id = ?, medicine_name = ?, qty = ? WHERE medicine_id = ?\r\nArray\n(\n    [0] => issi\n    [1] => 1\n    [2] => Paracetamol\n    [3] => 5\n    [4] => 1\n)\n', '/clinic/modules/Clinic/medicine/edit_medicine.php'),
(98, '::1', 'root', '2017-02-20 09:24:37', 'Pressed submit button', '/clinic/modules/Clinic/medicine/add_medicine.php'),
(99, '::1', 'root', '2017-02-20 09:24:38', 'Query Executed: INSERT INTO medicine(medicine_id, medicine_name, qty) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => 2\n    [2] => ibuprofen\n    [3] => 5\n)\n', '/clinic/modules/Clinic/medicine/add_medicine.php'),
(100, '::1', 'root', '2017-02-20 09:24:45', 'Pressed submit button', '/clinic/modules/Clinic/medicine/edit_medicine.php'),
(101, '::1', 'root', '2017-02-20 09:24:46', 'Query Executed: UPDATE medicine SET medicine_id = ?, medicine_name = ?, qty = ? WHERE medicine_id = ?\r\nArray\n(\n    [0] => issi\n    [1] => 2\n    [2] => Ibuprofen\n    [3] => 5\n    [4] => 2\n)\n', '/clinic/modules/Clinic/medicine/edit_medicine.php'),
(102, '::1', 'root', '2017-02-20 09:25:25', 'Pressed submit button', '/clinic/modules/Clinic/medicine/add_medicine.php'),
(103, '::1', 'root', '2017-02-20 09:25:25', 'Query Executed: INSERT INTO medicine(medicine_id, medicine_name, qty) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => 3\n    [2] => Cetirizine\n    [3] => 5\n)\n', '/clinic/modules/Clinic/medicine/add_medicine.php'),
(104, '::1', 'root', '2017-02-20 09:26:00', 'Pressed submit button', '/clinic/modules/Clinic/medicine/add_medicine.php'),
(105, '::1', 'root', '2017-02-20 09:26:00', 'Query Executed: INSERT INTO medicine(medicine_id, medicine_name, qty) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => 4\n    [2] => Imodium\n    [3] => 5\n)\n', '/clinic/modules/Clinic/medicine/add_medicine.php'),
(106, '::1', 'root', '2017-02-20 09:27:57', 'Pressed cancel button', '/clinic/modules/Clinic/medicine/add_medicine.php'),
(107, '::1', 'root', '2017-02-20 09:28:22', 'Pressed submit button', '/clinic/modules/Clinic/medicine/add_medicine.php'),
(108, '::1', 'root', '2017-02-20 09:28:22', 'Query Executed: INSERT INTO medicine(medicine_id, medicine_name, qty) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => 5\n    [2] => Decolgen\n    [3] => 5\n)\n', '/clinic/modules/Clinic/medicine/add_medicine.php'),
(109, '::1', 'root', '2017-02-20 09:29:46', 'Pressed cancel button', '/clinic/modules/Clinic/medicine/add_medicine.php'),
(110, '::1', 'root', '2017-02-20 09:30:19', 'Pressed cancel button', '/clinic/modules/Clinic/medicine/listview_medicine.php'),
(111, '::1', 'root', '2017-02-20 09:32:07', 'Pressed cancel button', '/clinic/modules/Clinic/medicine/add_medicine.php'),
(112, '::1', 'root', '2017-02-20 09:32:09', 'Pressed cancel button', '/clinic/modules/Clinic/medicine/listview_medicine.php'),
(113, '::1', 'root', '2017-02-20 09:34:28', 'Pressed submit button', '/clinic/modules/Clinic/hospital/add_hospital.php'),
(114, '::1', 'root', '2017-02-20 09:34:28', 'Query Executed: INSERT INTO hospital(hospital_id, hospital_name, tel_number, mobile_number, address) VALUES(?,?,?,?,?)\r\nArray\n(\n    [0] => issss\n    [1] => \n    [2] => Asian Hospital and Medical Center\n    [3] => 8765748\n    [4] => +6327719000\n    [5] => 2205 Civic Dr, Alabang, Muntinlupa, 1780 Metro Manila, Philippines\n)\n', '/clinic/modules/Clinic/hospital/add_hospital.php'),
(115, '::1', 'root', '2017-02-20 14:24:58', 'Pressed submit button', '/clinic/modules/Clinic/emergency_case/add_emergencycase.php'),
(116, '::1', 'root', '2017-02-20 14:24:58', 'Query Executed: INSERT INTO emergencycase(id, date, type, name, id_number, location, diagnosis, hospital_id, escorted_by, guarantee_control_no) VALUES(?,?,?,?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => issssssiss\n    [1] => \n    [2] => 2017-02-20\n    [3] => Severe\n    [4] => Justine Mark Siccion\n    [5] => 2014-100450\n    [6] => Gym\n    [7] => Broken legs\n    [8] => 5\n    [9] => Daveson Romblon\n    [10] => N/A\n)\n', '/clinic/modules/Clinic/emergency_case/add_emergencycase.php'),
(117, '::1', 'root', '2017-02-20 14:33:29', 'Pressed cancel button', '/clinic/modules/Clinic/hospital/add_hospital.php'),
(118, '::1', 'root', '2017-02-20 14:40:10', 'Logged in', '/clinic/login.php'),
(119, '::1', 'root', '2017-02-20 14:43:50', 'Logged in', '/clinic/login.php'),
(120, '::1', 'root', '2017-02-20 14:44:43', 'Logged in', '/clinic/login.php'),
(121, '::1', 'root', '2017-02-20 14:46:26', 'Pressed submit button', '/clinic/modules/Registrar/department/add_dept.php'),
(122, '::1', 'root', '2017-02-20 14:52:23', 'Logged in', '/clinic/login.php'),
(123, '::1', 'root', '2017-02-20 14:54:59', 'Pressed submit button', '/clinic/modules/Clinic/hospital/add_hospital.php'),
(124, '::1', 'root', '2017-02-20 14:55:06', 'Pressed submit button', '/clinic/modules/Clinic/medicine/add_medicine.php'),
(125, '::1', 'root', '2017-02-20 15:09:13', 'Logged in', '/clinic/login.php'),
(126, '::1', 'root', '2017-02-20 15:10:06', 'Pressed submit button', '/clinic/modules/Registrar/employee/add_employee.php'),
(127, '::1', 'root', '2017-02-20 15:25:07', 'Logged in', '/clinic/login.php'),
(128, '::1', 'root', '2017-02-21 21:49:59', 'Logged in', '/clinic/login.php'),
(129, '::1', 'root', '2017-02-21 21:51:19', 'Pressed submit button', '/clinic/modules/Registrar/employee/add_employee.php'),
(130, '::1', 'root', '2017-02-21 22:01:56', 'Logged in', '/clinic/login.php'),
(131, '::1', 'root', '2017-02-21 22:02:14', 'Pressed submit button', '/clinic/modules/Registrar/employee/add_employee.php'),
(132, '::1', 'root', '2017-02-21 22:14:52', 'Logged in', '/clinic/login.php'),
(133, '::1', 'root', '2017-02-21 22:15:00', 'Pressed submit button', '/clinic/modules/Registrar/employee/add_employee.php'),
(134, '::1', 'root', '2017-02-21 22:16:36', 'Pressed submit button', '/clinic/modules/Registrar/employee/add_employee.php'),
(135, '::1', 'root', '2017-02-21 22:24:01', 'Logged in', '/clinic/login.php'),
(136, '::1', 'root', '2017-02-21 22:24:07', 'Pressed submit button', '/clinic/modules/Registrar/employee/add_employee.php'),
(137, '::1', 'root', '2017-02-21 22:44:49', 'Pressed submit button', '/clinic/modules/Registrar/employee/add_employee.php'),
(138, '::1', 'root', '2017-02-21 22:49:36', 'Pressed submit button', '/clinic/modules/Registrar/employee/add_employee.php'),
(139, '::1', 'root', '2017-02-21 22:49:36', 'Query Executed: INSERT INTO employee(emp_id, emp_last_name, emp_first_name, emp_middle_name, email, emp_status, emp_group, address, postal_code, tel_num, mobile_num, hiring_date, resignation_date, gender, civil_status, birth_date, birth_place, religion, is_deleted, ATM_num, BDO_ATM_num, SSS_num, PhilHealth_num, TIN_num, PagIbig_num) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => ssssssissssssssssssssssss\n    [1] => 2014-10030\n    [2] => Gregorio\n    [3] => Felix\n    [4] => Villacruel\n    [5] => fvgregorio@student.apc.ed\n    [6] => Active\n    [7] => \n    [8] => asdasd\n    [9] => \n    [10] => 123123\n    [11] => 1231231\n    [12] => 2017-02-21\n    [13] => 2017-02-21\n    [14] => Male\n    [15] => Single\n    [16] => 2017-02-21\n    [17] => asasd\n    [18] => asd\n    [19] => \n    [20] => \n    [21] => \n    [22] => \n    [23] => \n    [24] => \n    [25] => \n)\n', '/clinic/modules/Registrar/employee/add_employee.php'),
(140, '::1', 'root', '2017-02-21 22:49:36', 'Query Executed: INSERT INTO refempfamily(family_id, emp_id, relationship, name, email, email_status, address_type, address, postal_code, mobile_num1, tel_num, mobile_num2) VALUES(?,?,?,?,?,?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => isssssssssss\n    [1] => \n    [2] => 2014-10030\n    [3] => Father\n    [4] => Felix Gregorio JR.\n    [5] => fasdsad\n    [6] => Inactive\n    [7] => Office\n    [8] => asdsdas\n    [9] => 123\n    [10] => 123\n    [11] => 123\n    [12] => 12312312321\n)\n', '/clinic/modules/Registrar/employee/add_employee.php'),
(141, '::1', 'root', '2017-02-21 23:11:27', 'Pressed submit button', '/clinic/modules/Registrar/employee_family/add_refempfamily.php'),
(142, '::1', 'root', '2017-02-21 23:11:33', 'Pressed submit button', '/clinic/modules/Registrar/employee/add_employee.php'),
(143, '::1', 'root', '2017-02-22 00:48:59', 'Logged in', '/clinic/login.php'),
(144, '::1', 'root', '2017-02-22 00:51:23', 'Pressed submit button', '/clinic/sysadmin/add_person.php'),
(145, '::1', 'root', '2017-02-22 00:51:23', 'Query Executed: INSERT INTO person(person_id, first_name, middle_name, last_name, gender) VALUES(?,?,?,?,?)\r\nArray\n(\n    [0] => issss\n    [1] => \n    [2] => Nurse\n    [3] => Nurse\n    [4] => Nurse\n    [5] => Female\n)\n', '/clinic/sysadmin/add_person.php'),
(146, '::1', 'root', '2017-02-22 00:51:34', 'Pressed submit button', '/clinic/sysadmin/add_person.php'),
(147, '::1', 'root', '2017-02-22 00:51:34', 'Query Executed: INSERT INTO person(person_id, first_name, middle_name, last_name, gender) VALUES(?,?,?,?,?)\r\nArray\n(\n    [0] => issss\n    [1] => \n    [2] => Doctor\n    [3] => Doctor\n    [4] => Doctor\n    [5] => Female\n)\n', '/clinic/sysadmin/add_person.php'),
(148, '::1', 'root', '2017-02-22 00:52:15', 'Pressed submit button', '/clinic/sysadmin/add_user_role.php'),
(149, '::1', 'root', '2017-02-22 00:52:15', 'Query Executed: INSERT INTO user_role(role_id, role, description) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => Nurse\n    [3] => Uses APC Clinic Management System\n)\n', '/clinic/sysadmin/add_user_role.php'),
(150, '::1', 'root', '2017-02-22 00:52:21', 'Pressed submit button', '/clinic/sysadmin/add_user_role.php'),
(151, '::1', 'root', '2017-02-22 00:52:22', 'Query Executed: INSERT INTO user_role(role_id, role, description) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => Doctor\n    [3] => Uses APC Clinic Management System\n)\n', '/clinic/sysadmin/add_user_role.php'),
(152, '::1', 'root', '2017-02-22 00:53:17', 'Query executed: DELETE FROM user_role_links WHERE role_id=''3'' AND link_id IN (''87'',''99'')', '/clinic/sysadmin/role_permissions.php'),
(153, '::1', 'root', '2017-02-22 00:53:17', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''87'')', '/clinic/sysadmin/role_permissions.php'),
(154, '::1', 'root', '2017-02-22 00:53:17', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''99'')', '/clinic/sysadmin/role_permissions.php'),
(155, '::1', 'root', '2017-02-22 00:53:24', 'Query executed: DELETE FROM user_role_links WHERE role_id=''3'' AND link_id IN (''43'',''55'')', '/clinic/sysadmin/role_permissions.php'),
(156, '::1', 'root', '2017-02-22 00:53:24', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''43'')', '/clinic/sysadmin/role_permissions.php'),
(157, '::1', 'root', '2017-02-22 00:53:24', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''55'')', '/clinic/sysadmin/role_permissions.php'),
(158, '::1', 'root', '2017-02-22 00:53:30', 'Query executed: DELETE FROM user_role_links WHERE role_id=''3'' AND link_id IN (''47'',''63'',''67'',''75'')', '/clinic/sysadmin/role_permissions.php'),
(159, '::1', 'root', '2017-02-22 00:53:30', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''47'')', '/clinic/sysadmin/role_permissions.php'),
(160, '::1', 'root', '2017-02-22 00:53:30', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''63'')', '/clinic/sysadmin/role_permissions.php'),
(161, '::1', 'root', '2017-02-22 00:53:30', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''67'')', '/clinic/sysadmin/role_permissions.php'),
(162, '::1', 'root', '2017-02-22 00:53:31', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''75'')', '/clinic/sysadmin/role_permissions.php'),
(163, '::1', 'root', '2017-02-22 00:53:36', 'Query executed: DELETE FROM user_role_links WHERE role_id=''3'' AND link_id IN (''71'')', '/clinic/sysadmin/role_permissions.php'),
(164, '::1', 'root', '2017-02-22 00:53:36', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''71'')', '/clinic/sysadmin/role_permissions.php'),
(165, '::1', 'root', '2017-02-22 00:53:50', 'Query executed: DELETE FROM user_role_links WHERE role_id=''3''', '/clinic/sysadmin/role_permissions.php'),
(166, '::1', 'root', '2017-02-22 00:53:51', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''43'')', '/clinic/sysadmin/role_permissions.php'),
(167, '::1', 'root', '2017-02-22 00:53:51', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''47'')', '/clinic/sysadmin/role_permissions.php'),
(168, '::1', 'root', '2017-02-22 00:53:51', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''63'')', '/clinic/sysadmin/role_permissions.php'),
(169, '::1', 'root', '2017-02-22 00:53:51', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''55'')', '/clinic/sysadmin/role_permissions.php'),
(170, '::1', 'root', '2017-02-22 00:53:51', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''87'')', '/clinic/sysadmin/role_permissions.php'),
(171, '::1', 'root', '2017-02-22 00:53:51', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''67'')', '/clinic/sysadmin/role_permissions.php'),
(172, '::1', 'root', '2017-02-22 00:53:51', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''71'')', '/clinic/sysadmin/role_permissions.php'),
(173, '::1', 'root', '2017-02-22 00:53:51', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''75'')', '/clinic/sysadmin/role_permissions.php'),
(174, '::1', 'root', '2017-02-22 00:53:51', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''99'')', '/clinic/sysadmin/role_permissions.php'),
(175, '::1', 'root', '2017-02-22 00:54:15', 'Pressed cancel button', '/clinic/sysadmin/role_permissions_cascade.php'),
(176, '::1', 'root', '2017-02-22 00:54:24', 'Pressed cancel button', '/clinic/sysadmin/add_user_role.php'),
(177, '::1', 'root', '2017-02-22 00:54:43', 'Pressed submit button', '/clinic/sysadmin/add_user.php'),
(178, '::1', 'root', '2017-02-22 00:54:43', 'Query Executed: INSERT INTO user(username, password, salt, iteration, method, person_id, role_id, skin_id) VALUES(?,?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => sssisiii\n    [1] => nurse\n    [2] => $2y$12$pxuwB7LWk18IfmgAA6kJBeJxVGrw77LA2y7/CkapBcHDqgUl2K/06\n    [3] => pxuwB7LWk18IfmgAA6kJBg\n    [4] => 12\n    [5] => blowfish\n    [6] => 2\n    [7] => 3\n    [8] => 12\n)\n', '/clinic/sysadmin/add_user.php'),
(179, '::1', 'root', '2017-02-22 00:54:43', 'Query executed: INSERT `user_passport` SELECT ''nurse'', `link_id` FROM user_role_links WHERE role_id=''3''', '/clinic/sysadmin/add_user.php'),
(180, '::1', 'root', '2017-02-22 00:54:56', 'Pressed submit button', '/clinic/sysadmin/add_user.php'),
(181, '::1', 'root', '2017-02-22 00:54:57', 'Query Executed: INSERT INTO user(username, password, salt, iteration, method, person_id, role_id, skin_id) VALUES(?,?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => sssisiii\n    [1] => doctor\n    [2] => $2y$12$UsZcXA9NrQ6W6uJFFQX96.GZPuomOlB2/KVspODmUhCGTXD1lnpky\n    [3] => UsZcXA9NrQ6W6uJFFQX96A\n    [4] => 12\n    [5] => blowfish\n    [6] => 3\n    [7] => 4\n    [8] => 2\n)\n', '/clinic/sysadmin/add_user.php'),
(182, '::1', 'root', '2017-02-22 00:54:57', 'Query executed: INSERT `user_passport` SELECT ''doctor'', `link_id` FROM user_role_links WHERE role_id=''4''', '/clinic/sysadmin/add_user.php'),
(183, '::1', 'root', '2017-02-22 00:55:05', 'Query executed: DELETE FROM user_passport WHERE username IN (''nurse'')', '/clinic/sysadmin/role_permissions_cascade.php'),
(184, '::1', 'root', '2017-02-22 00:55:05', 'Query executed: INSERT `user_passport` SELECT ''nurse'', `link_id` FROM user_role_links WHERE role_id=''3''', '/clinic/sysadmin/role_permissions_cascade.php'),
(185, '::1', 'root', '2017-02-22 00:55:06', 'Pressed cancel button', '/clinic/sysadmin/role_permissions_cascade.php'),
(186, '::1', 'root', '2017-02-22 00:55:08', 'Query executed: DELETE FROM user_passport WHERE username IN (''doctor'')', '/clinic/sysadmin/role_permissions_cascade.php'),
(187, '::1', 'root', '2017-02-22 00:55:09', 'Query executed: INSERT `user_passport` SELECT ''doctor'', `link_id` FROM user_role_links WHERE role_id=''4''', '/clinic/sysadmin/role_permissions_cascade.php'),
(188, '::1', 'root', '2017-02-22 00:55:09', 'Pressed cancel button', '/clinic/sysadmin/role_permissions_cascade.php'),
(189, '::1', 'root', '2017-02-22 00:55:18', 'Query executed: DELETE FROM user_role_links WHERE role_id=''4'' AND link_id IN (''87'',''99'')', '/clinic/sysadmin/role_permissions.php'),
(190, '::1', 'root', '2017-02-22 00:55:18', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''87'')', '/clinic/sysadmin/role_permissions.php'),
(191, '::1', 'root', '2017-02-22 00:55:18', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''99'')', '/clinic/sysadmin/role_permissions.php'),
(192, '::1', 'root', '2017-02-22 00:55:22', 'Query executed: DELETE FROM user_role_links WHERE role_id=''4'' AND link_id IN (''43'',''55'')', '/clinic/sysadmin/role_permissions.php'),
(193, '::1', 'root', '2017-02-22 00:55:22', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''43'')', '/clinic/sysadmin/role_permissions.php'),
(194, '::1', 'root', '2017-02-22 00:55:22', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''55'')', '/clinic/sysadmin/role_permissions.php'),
(195, '::1', 'root', '2017-02-22 00:55:27', 'Query executed: DELETE FROM user_role_links WHERE role_id=''4'' AND link_id IN (''47'',''63'',''67'',''75'')', '/clinic/sysadmin/role_permissions.php'),
(196, '::1', 'root', '2017-02-22 00:55:27', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''47'')', '/clinic/sysadmin/role_permissions.php'),
(197, '::1', 'root', '2017-02-22 00:55:28', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''63'')', '/clinic/sysadmin/role_permissions.php'),
(198, '::1', 'root', '2017-02-22 00:55:28', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''67'')', '/clinic/sysadmin/role_permissions.php'),
(199, '::1', 'root', '2017-02-22 00:55:28', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''75'')', '/clinic/sysadmin/role_permissions.php'),
(200, '::1', 'root', '2017-02-22 00:55:33', 'Query executed: DELETE FROM user_role_links WHERE role_id=''4'' AND link_id IN (''71'')', '/clinic/sysadmin/role_permissions.php'),
(201, '::1', 'root', '2017-02-22 00:55:33', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''71'')', '/clinic/sysadmin/role_permissions.php'),
(202, '::1', 'root', '2017-02-22 00:55:34', 'Query executed: DELETE FROM user_role_links WHERE role_id=''4'' AND link_id IN (''71'')', '/clinic/sysadmin/role_permissions.php'),
(203, '::1', 'root', '2017-02-22 00:55:35', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''71'')', '/clinic/sysadmin/role_permissions.php'),
(204, '::1', 'root', '2017-02-22 00:55:40', 'Query executed: DELETE FROM user_role_links WHERE role_id=''4''', '/clinic/sysadmin/role_permissions.php'),
(205, '::1', 'root', '2017-02-22 00:55:40', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''43'')', '/clinic/sysadmin/role_permissions.php'),
(206, '::1', 'root', '2017-02-22 00:55:40', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''47'')', '/clinic/sysadmin/role_permissions.php'),
(207, '::1', 'root', '2017-02-22 00:55:40', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''63'')', '/clinic/sysadmin/role_permissions.php'),
(208, '::1', 'root', '2017-02-22 00:55:40', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''55'')', '/clinic/sysadmin/role_permissions.php'),
(209, '::1', 'root', '2017-02-22 00:55:40', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''87'')', '/clinic/sysadmin/role_permissions.php'),
(210, '::1', 'root', '2017-02-22 00:55:41', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''67'')', '/clinic/sysadmin/role_permissions.php'),
(211, '::1', 'root', '2017-02-22 00:55:41', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''71'')', '/clinic/sysadmin/role_permissions.php'),
(212, '::1', 'root', '2017-02-22 00:55:41', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''75'')', '/clinic/sysadmin/role_permissions.php'),
(213, '::1', 'root', '2017-02-22 00:55:41', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''99'')', '/clinic/sysadmin/role_permissions.php'),
(214, '::1', 'root', '2017-02-22 00:55:45', 'Query executed: DELETE FROM user_passport WHERE username IN (''doctor'')', '/clinic/sysadmin/role_permissions_cascade.php'),
(215, '::1', 'root', '2017-02-22 00:55:45', 'Query executed: INSERT `user_passport` SELECT ''doctor'', `link_id` FROM user_role_links WHERE role_id=''4''', '/clinic/sysadmin/role_permissions_cascade.php'),
(216, '::1', 'root', '2017-02-22 00:55:46', 'Pressed cancel button', '/clinic/sysadmin/role_permissions_cascade.php'),
(217, '::1', 'root', '2017-02-22 00:55:49', 'Logged out', '/clinic/end.php'),
(218, '::1', 'nurse', '2017-02-22 00:55:53', 'Logged in', '/clinic/login.php'),
(219, '::1', 'nurse', '2017-02-22 00:56:21', 'Logged out', '/clinic/end.php'),
(220, '::1', 'root', '2017-02-22 00:56:29', 'Logged in', '/clinic/login.php'),
(221, '::1', 'root', '2017-02-22 00:56:46', 'Pressed submit button', '/clinic/sysadmin/edit_user.php'),
(222, '::1', 'root', '2017-02-22 00:56:46', 'Query Executed: UPDATE user SET username = ?, person_id = ?, role_id = ?, skin_id = ? WHERE username = ?\r\nArray\n(\n    [0] => siiis\n    [1] => nurse\n    [2] => 2\n    [3] => 3\n    [4] => 9\n    [5] => nurse\n)\n', '/clinic/sysadmin/edit_user.php'),
(223, '::1', 'root', '2017-02-22 00:56:46', 'Query executed: DELETE FROM user_passport WHERE username = ''nurse''', '/clinic/sysadmin/edit_user.php'),
(224, '::1', 'root', '2017-02-22 00:56:46', 'Query executed: INSERT `user_passport` SELECT ''nurse'', `link_id` FROM user_role_links WHERE role_id=''3''', '/clinic/sysadmin/edit_user.php'),
(225, '::1', 'root', '2017-02-22 00:59:10', 'Query executed: DELETE FROM user_role_links WHERE role_id=''3''', '/clinic/sysadmin/role_permissions.php'),
(226, '::1', 'root', '2017-02-22 00:59:10', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''41'')', '/clinic/sysadmin/role_permissions.php'),
(227, '::1', 'root', '2017-02-22 00:59:10', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''49'')', '/clinic/sysadmin/role_permissions.php'),
(228, '::1', 'root', '2017-02-22 00:59:10', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''53'')', '/clinic/sysadmin/role_permissions.php'),
(229, '::1', 'root', '2017-02-22 00:59:10', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''57'')', '/clinic/sysadmin/role_permissions.php'),
(230, '::1', 'root', '2017-02-22 00:59:10', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''85'')', '/clinic/sysadmin/role_permissions.php'),
(231, '::1', 'root', '2017-02-22 00:59:10', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''42'')', '/clinic/sysadmin/role_permissions.php'),
(232, '::1', 'root', '2017-02-22 00:59:10', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''50'')', '/clinic/sysadmin/role_permissions.php'),
(233, '::1', 'root', '2017-02-22 00:59:10', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''54'')', '/clinic/sysadmin/role_permissions.php'),
(234, '::1', 'root', '2017-02-22 00:59:10', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''58'')', '/clinic/sysadmin/role_permissions.php'),
(235, '::1', 'root', '2017-02-22 00:59:11', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''62'')', '/clinic/sysadmin/role_permissions.php'),
(236, '::1', 'root', '2017-02-22 00:59:11', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''66'')', '/clinic/sysadmin/role_permissions.php'),
(237, '::1', 'root', '2017-02-22 00:59:11', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''70'')', '/clinic/sysadmin/role_permissions.php'),
(238, '::1', 'root', '2017-02-22 00:59:11', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''74'')', '/clinic/sysadmin/role_permissions.php'),
(239, '::1', 'root', '2017-02-22 00:59:11', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''78'')', '/clinic/sysadmin/role_permissions.php'),
(240, '::1', 'root', '2017-02-22 00:59:11', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''82'')', '/clinic/sysadmin/role_permissions.php'),
(241, '::1', 'root', '2017-02-22 00:59:11', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''86'')', '/clinic/sysadmin/role_permissions.php'),
(242, '::1', 'root', '2017-02-22 00:59:11', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''43'')', '/clinic/sysadmin/role_permissions.php'),
(243, '::1', 'root', '2017-02-22 00:59:11', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''47'')', '/clinic/sysadmin/role_permissions.php'),
(244, '::1', 'root', '2017-02-22 00:59:11', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''63'')', '/clinic/sysadmin/role_permissions.php'),
(245, '::1', 'root', '2017-02-22 00:59:11', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''51'')', '/clinic/sysadmin/role_permissions.php'),
(246, '::1', 'root', '2017-02-22 00:59:11', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''55'')', '/clinic/sysadmin/role_permissions.php'),
(247, '::1', 'root', '2017-02-22 00:59:11', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''59'')', '/clinic/sysadmin/role_permissions.php'),
(248, '::1', 'root', '2017-02-22 00:59:11', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''87'')', '/clinic/sysadmin/role_permissions.php'),
(249, '::1', 'root', '2017-02-22 00:59:11', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''67'')', '/clinic/sysadmin/role_permissions.php'),
(250, '::1', 'root', '2017-02-22 00:59:12', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''71'')', '/clinic/sysadmin/role_permissions.php'),
(251, '::1', 'root', '2017-02-22 00:59:12', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''75'')', '/clinic/sysadmin/role_permissions.php'),
(252, '::1', 'root', '2017-02-22 00:59:12', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''99'')', '/clinic/sysadmin/role_permissions.php');
INSERT INTO `system_log` (`entry_id`, `ip_address`, `user`, `datetime`, `action`, `module`) VALUES
(253, '::1', 'root', '2017-02-22 01:00:33', 'Query executed: DELETE FROM user_role_links WHERE role_id=''4''', '/clinic/sysadmin/role_permissions.php'),
(254, '::1', 'root', '2017-02-22 01:00:33', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''49'')', '/clinic/sysadmin/role_permissions.php'),
(255, '::1', 'root', '2017-02-22 01:00:33', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''53'')', '/clinic/sysadmin/role_permissions.php'),
(256, '::1', 'root', '2017-02-22 01:00:33', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''57'')', '/clinic/sysadmin/role_permissions.php'),
(257, '::1', 'root', '2017-02-22 01:00:34', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''85'')', '/clinic/sysadmin/role_permissions.php'),
(258, '::1', 'root', '2017-02-22 01:00:34', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''50'')', '/clinic/sysadmin/role_permissions.php'),
(259, '::1', 'root', '2017-02-22 01:00:34', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''54'')', '/clinic/sysadmin/role_permissions.php'),
(260, '::1', 'root', '2017-02-22 01:00:34', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''58'')', '/clinic/sysadmin/role_permissions.php'),
(261, '::1', 'root', '2017-02-22 01:00:34', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''86'')', '/clinic/sysadmin/role_permissions.php'),
(262, '::1', 'root', '2017-02-22 01:00:34', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''43'')', '/clinic/sysadmin/role_permissions.php'),
(263, '::1', 'root', '2017-02-22 01:00:34', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''47'')', '/clinic/sysadmin/role_permissions.php'),
(264, '::1', 'root', '2017-02-22 01:00:34', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''63'')', '/clinic/sysadmin/role_permissions.php'),
(265, '::1', 'root', '2017-02-22 01:00:34', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''51'')', '/clinic/sysadmin/role_permissions.php'),
(266, '::1', 'root', '2017-02-22 01:00:34', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''55'')', '/clinic/sysadmin/role_permissions.php'),
(267, '::1', 'root', '2017-02-22 01:00:34', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''59'')', '/clinic/sysadmin/role_permissions.php'),
(268, '::1', 'root', '2017-02-22 01:00:34', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''87'')', '/clinic/sysadmin/role_permissions.php'),
(269, '::1', 'root', '2017-02-22 01:00:34', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''67'')', '/clinic/sysadmin/role_permissions.php'),
(270, '::1', 'root', '2017-02-22 01:00:35', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''71'')', '/clinic/sysadmin/role_permissions.php'),
(271, '::1', 'root', '2017-02-22 01:00:35', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''75'')', '/clinic/sysadmin/role_permissions.php'),
(272, '::1', 'root', '2017-02-22 01:00:35', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''99'')', '/clinic/sysadmin/role_permissions.php'),
(273, '::1', 'root', '2017-02-22 01:00:38', 'Query executed: DELETE FROM user_passport WHERE username IN (''doctor'')', '/clinic/sysadmin/role_permissions_cascade.php'),
(274, '::1', 'root', '2017-02-22 01:00:38', 'Query executed: INSERT `user_passport` SELECT ''doctor'', `link_id` FROM user_role_links WHERE role_id=''4''', '/clinic/sysadmin/role_permissions_cascade.php'),
(275, '::1', 'root', '2017-02-22 01:00:39', 'Pressed cancel button', '/clinic/sysadmin/role_permissions_cascade.php'),
(276, '::1', 'root', '2017-02-22 01:00:41', 'Query executed: DELETE FROM user_passport WHERE username IN (''nurse'')', '/clinic/sysadmin/role_permissions_cascade.php'),
(277, '::1', 'root', '2017-02-22 01:00:42', 'Query executed: INSERT `user_passport` SELECT ''nurse'', `link_id` FROM user_role_links WHERE role_id=''3''', '/clinic/sysadmin/role_permissions_cascade.php'),
(278, '::1', 'root', '2017-02-22 01:00:43', 'Pressed cancel button', '/clinic/sysadmin/role_permissions_cascade.php'),
(279, '::1', 'root', '2017-02-22 01:00:45', 'Logged out', '/clinic/end.php'),
(280, '::1', 'nurse', '2017-02-22 01:00:54', 'Logged in', '/clinic/login.php'),
(281, '::1', 'nurse', '2017-02-22 01:01:33', 'Pressed cancel button', '/clinic/modules/Registrar/employee/detailview_employee.php'),
(282, '::1', 'nurse', '2017-02-22 01:03:19', 'Logged out', '/clinic/end.php'),
(283, '::1', 'root', '2017-02-22 01:03:22', 'Logged in', '/clinic/login.php'),
(284, '::1', 'root', '2017-02-22 01:03:42', 'Query executed: DELETE FROM user_role_links WHERE role_id=''3''', '/clinic/sysadmin/role_permissions.php'),
(285, '::1', 'root', '2017-02-22 01:03:42', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''41'')', '/clinic/sysadmin/role_permissions.php'),
(286, '::1', 'root', '2017-02-22 01:03:42', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''49'')', '/clinic/sysadmin/role_permissions.php'),
(287, '::1', 'root', '2017-02-22 01:03:42', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''53'')', '/clinic/sysadmin/role_permissions.php'),
(288, '::1', 'root', '2017-02-22 01:03:42', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''57'')', '/clinic/sysadmin/role_permissions.php'),
(289, '::1', 'root', '2017-02-22 01:03:42', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''69'')', '/clinic/sysadmin/role_permissions.php'),
(290, '::1', 'root', '2017-02-22 01:03:42', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''85'')', '/clinic/sysadmin/role_permissions.php'),
(291, '::1', 'root', '2017-02-22 01:03:42', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''42'')', '/clinic/sysadmin/role_permissions.php'),
(292, '::1', 'root', '2017-02-22 01:03:42', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''50'')', '/clinic/sysadmin/role_permissions.php'),
(293, '::1', 'root', '2017-02-22 01:03:42', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''54'')', '/clinic/sysadmin/role_permissions.php'),
(294, '::1', 'root', '2017-02-22 01:03:43', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''58'')', '/clinic/sysadmin/role_permissions.php'),
(295, '::1', 'root', '2017-02-22 01:03:43', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''62'')', '/clinic/sysadmin/role_permissions.php'),
(296, '::1', 'root', '2017-02-22 01:03:43', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''66'')', '/clinic/sysadmin/role_permissions.php'),
(297, '::1', 'root', '2017-02-22 01:03:43', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''70'')', '/clinic/sysadmin/role_permissions.php'),
(298, '::1', 'root', '2017-02-22 01:03:43', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''74'')', '/clinic/sysadmin/role_permissions.php'),
(299, '::1', 'root', '2017-02-22 01:03:43', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''78'')', '/clinic/sysadmin/role_permissions.php'),
(300, '::1', 'root', '2017-02-22 01:03:43', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''82'')', '/clinic/sysadmin/role_permissions.php'),
(301, '::1', 'root', '2017-02-22 01:03:43', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''86'')', '/clinic/sysadmin/role_permissions.php'),
(302, '::1', 'root', '2017-02-22 01:03:43', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''43'')', '/clinic/sysadmin/role_permissions.php'),
(303, '::1', 'root', '2017-02-22 01:03:43', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''47'')', '/clinic/sysadmin/role_permissions.php'),
(304, '::1', 'root', '2017-02-22 01:03:43', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''63'')', '/clinic/sysadmin/role_permissions.php'),
(305, '::1', 'root', '2017-02-22 01:03:43', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''51'')', '/clinic/sysadmin/role_permissions.php'),
(306, '::1', 'root', '2017-02-22 01:03:43', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''55'')', '/clinic/sysadmin/role_permissions.php'),
(307, '::1', 'root', '2017-02-22 01:03:43', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''59'')', '/clinic/sysadmin/role_permissions.php'),
(308, '::1', 'root', '2017-02-22 01:03:43', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''87'')', '/clinic/sysadmin/role_permissions.php'),
(309, '::1', 'root', '2017-02-22 01:03:43', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''67'')', '/clinic/sysadmin/role_permissions.php'),
(310, '::1', 'root', '2017-02-22 01:03:44', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''71'')', '/clinic/sysadmin/role_permissions.php'),
(311, '::1', 'root', '2017-02-22 01:03:44', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''75'')', '/clinic/sysadmin/role_permissions.php'),
(312, '::1', 'root', '2017-02-22 01:03:44', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''99'')', '/clinic/sysadmin/role_permissions.php'),
(313, '::1', 'root', '2017-02-22 01:03:51', 'Query executed: DELETE FROM user_role_links WHERE role_id=''4''', '/clinic/sysadmin/role_permissions.php'),
(314, '::1', 'root', '2017-02-22 01:03:52', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''49'')', '/clinic/sysadmin/role_permissions.php'),
(315, '::1', 'root', '2017-02-22 01:03:52', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''53'')', '/clinic/sysadmin/role_permissions.php'),
(316, '::1', 'root', '2017-02-22 01:03:52', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''57'')', '/clinic/sysadmin/role_permissions.php'),
(317, '::1', 'root', '2017-02-22 01:03:52', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''69'')', '/clinic/sysadmin/role_permissions.php'),
(318, '::1', 'root', '2017-02-22 01:03:52', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''85'')', '/clinic/sysadmin/role_permissions.php'),
(319, '::1', 'root', '2017-02-22 01:03:52', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''50'')', '/clinic/sysadmin/role_permissions.php'),
(320, '::1', 'root', '2017-02-22 01:03:52', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''54'')', '/clinic/sysadmin/role_permissions.php'),
(321, '::1', 'root', '2017-02-22 01:03:52', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''58'')', '/clinic/sysadmin/role_permissions.php'),
(322, '::1', 'root', '2017-02-22 01:03:52', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''86'')', '/clinic/sysadmin/role_permissions.php'),
(323, '::1', 'root', '2017-02-22 01:03:52', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''43'')', '/clinic/sysadmin/role_permissions.php'),
(324, '::1', 'root', '2017-02-22 01:03:52', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''47'')', '/clinic/sysadmin/role_permissions.php'),
(325, '::1', 'root', '2017-02-22 01:03:52', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''63'')', '/clinic/sysadmin/role_permissions.php'),
(326, '::1', 'root', '2017-02-22 01:03:52', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''51'')', '/clinic/sysadmin/role_permissions.php'),
(327, '::1', 'root', '2017-02-22 01:03:53', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''55'')', '/clinic/sysadmin/role_permissions.php'),
(328, '::1', 'root', '2017-02-22 01:03:53', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''59'')', '/clinic/sysadmin/role_permissions.php'),
(329, '::1', 'root', '2017-02-22 01:03:53', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''87'')', '/clinic/sysadmin/role_permissions.php'),
(330, '::1', 'root', '2017-02-22 01:03:53', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''67'')', '/clinic/sysadmin/role_permissions.php'),
(331, '::1', 'root', '2017-02-22 01:03:53', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''71'')', '/clinic/sysadmin/role_permissions.php'),
(332, '::1', 'root', '2017-02-22 01:03:53', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''75'')', '/clinic/sysadmin/role_permissions.php'),
(333, '::1', 'root', '2017-02-22 01:03:53', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''99'')', '/clinic/sysadmin/role_permissions.php'),
(334, '::1', 'root', '2017-02-22 01:04:03', 'Query executed: DELETE FROM user_passport WHERE username IN (''nurse'')', '/clinic/sysadmin/role_permissions_cascade.php'),
(335, '::1', 'root', '2017-02-22 01:04:04', 'Query executed: INSERT `user_passport` SELECT ''nurse'', `link_id` FROM user_role_links WHERE role_id=''3''', '/clinic/sysadmin/role_permissions_cascade.php'),
(336, '::1', 'root', '2017-02-22 01:04:05', 'Pressed cancel button', '/clinic/sysadmin/role_permissions_cascade.php'),
(337, '::1', 'root', '2017-02-22 01:04:07', 'Query executed: DELETE FROM user_passport WHERE username IN (''doctor'')', '/clinic/sysadmin/role_permissions_cascade.php'),
(338, '::1', 'root', '2017-02-22 01:04:07', 'Query executed: INSERT `user_passport` SELECT ''doctor'', `link_id` FROM user_role_links WHERE role_id=''4''', '/clinic/sysadmin/role_permissions_cascade.php'),
(339, '::1', 'root', '2017-02-22 01:04:09', 'Pressed cancel button', '/clinic/sysadmin/role_permissions_cascade.php'),
(340, '::1', 'root', '2017-02-22 01:04:59', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(341, '::1', 'root', '2017-02-22 01:04:59', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Add hospital\n    [2] => modules/Clinic/hospital/add_hospital.php\n    [3] => Add Hospital\n    [4] => \n    [5] => 3\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 49\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(342, '::1', 'root', '2017-02-22 01:05:05', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(343, '::1', 'root', '2017-02-22 01:05:06', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Edit hospital\n    [2] => modules/Clinic/hospital/edit_hospital.php\n    [3] => Edit Hospital\n    [4] => \n    [5] => 3\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 50\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(344, '::1', 'root', '2017-02-22 01:05:11', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(345, '::1', 'root', '2017-02-22 01:05:11', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => View hospital\n    [2] => modules/Clinic/hospital/listview_hospital.php\n    [3] => Hospital\n    [4] => \n    [5] => 3\n    [6] => Yes\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 51\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(346, '::1', 'root', '2017-02-22 01:05:15', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(347, '::1', 'root', '2017-02-22 01:05:15', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Delete hospital\n    [2] => modules/Clinic/hospital/delete_hospital.php\n    [3] => Delete Hospital\n    [4] => \n    [5] => 3\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 52\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(348, '::1', 'root', '2017-02-22 01:05:39', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(349, '::1', 'root', '2017-02-22 01:05:40', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Add medicine\n    [2] => modules/Clinic/medicine/add_medicine.php\n    [3] => Add Medicine\n    [4] => \n    [5] => 3\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 57\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(350, '::1', 'root', '2017-02-22 01:05:47', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(351, '::1', 'root', '2017-02-22 01:05:47', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Edit medicine\n    [2] => modules/Clinic/medicine/edit_medicine.php\n    [3] => Edit Medicine\n    [4] => \n    [5] => 3\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 58\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(352, '::1', 'root', '2017-02-22 01:05:53', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(353, '::1', 'root', '2017-02-22 01:05:53', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => View medicine\n    [2] => modules/Clinic/medicine/listview_medicine.php\n    [3] => Medicine\n    [4] => \n    [5] => 3\n    [6] => Yes\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 59\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(354, '::1', 'root', '2017-02-22 01:05:57', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(355, '::1', 'root', '2017-02-22 01:05:57', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Delete medicine\n    [2] => modules/Clinic/medicine/delete_medicine.php\n    [3] => Delete Medicine\n    [4] => \n    [5] => 3\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 60\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(356, '::1', 'root', '2017-02-22 01:06:36', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(357, '::1', 'root', '2017-02-22 01:06:36', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Add dept\n    [2] => modules/Registrar/department/add_dept.php\n    [3] => Add Dept\n    [4] => \n    [5] => 5\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 37\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(358, '::1', 'root', '2017-02-22 01:06:40', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(359, '::1', 'root', '2017-02-22 01:06:40', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Edit dept\n    [2] => modules/Registrar/department/edit_dept.php\n    [3] => Edit Dept\n    [4] => \n    [5] => 5\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 38\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(360, '::1', 'root', '2017-02-22 01:06:44', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(361, '::1', 'root', '2017-02-22 01:06:44', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => View dept\n    [2] => modules/Registrar/department/listview_dept.php\n    [3] => Department\n    [4] => \n    [5] => 5\n    [6] => Yes\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 39\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(362, '::1', 'root', '2017-02-22 01:06:48', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(363, '::1', 'root', '2017-02-22 01:06:48', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Delete dept\n    [2] => modules/Registrar/department/delete_dept.php\n    [3] => Delete Dept\n    [4] => \n    [5] => 5\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 40\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(364, '::1', 'root', '2017-02-22 01:06:54', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(365, '::1', 'root', '2017-02-22 01:06:54', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Add term\n    [2] => modules/Registrar/term/add_term.php\n    [3] => Add Term\n    [4] => \n    [5] => 5\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 93\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(366, '::1', 'root', '2017-02-22 01:06:58', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(367, '::1', 'root', '2017-02-22 01:06:59', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Edit term\n    [2] => modules/Registrar/term/edit_term.php\n    [3] => Edit Term\n    [4] => \n    [5] => 5\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 94\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(368, '::1', 'root', '2017-02-22 01:07:03', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(369, '::1', 'root', '2017-02-22 01:07:03', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => View term\n    [2] => modules/Registrar/term/listview_term.php\n    [3] => Term\n    [4] => \n    [5] => 5\n    [6] => Yes\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 95\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(370, '::1', 'root', '2017-02-22 01:07:08', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(371, '::1', 'root', '2017-02-22 01:07:08', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Delete term\n    [2] => modules/Registrar/term/delete_term.php\n    [3] => Delete Term\n    [4] => \n    [5] => 5\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 96\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(372, '::1', 'root', '2017-02-22 01:07:41', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(373, '::1', 'root', '2017-02-22 01:07:41', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Add refsubjectofferingdtl\n    [2] => modules/Registrar/subject_offering_detail/add_refsubjectofferingdtl.php\n    [3] => Add Refsubjectofferingdtl\n    [4] => \n    [5] => 5\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 77\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(374, '::1', 'root', '2017-02-22 01:07:46', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(375, '::1', 'root', '2017-02-22 01:07:46', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Edit refsubjectofferingdtl\n    [2] => modules/Registrar/subject_offering_detail/edit_refsubjectofferingdtl.php\n    [3] => Edit Refsubjectofferingdtl\n    [4] => \n    [5] => 5\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 78\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(376, '::1', 'root', '2017-02-22 01:07:50', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(377, '::1', 'root', '2017-02-22 01:07:50', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => View refsubjectofferingdtl\n    [2] => modules/Registrar/subject_offering_detail/listview_refsubjectofferingdtl.php\n    [3] => Subject Offering Details\n    [4] => \n    [5] => 5\n    [6] => Yes\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 79\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(378, '::1', 'root', '2017-02-22 01:07:55', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(379, '::1', 'root', '2017-02-22 01:07:55', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Delete refsubjectofferingdtl\n    [2] => modules/Registrar/subject_offering_detail/delete_refsubjectofferingdtl.php\n    [3] => Delete Refsubjectofferingdtl\n    [4] => \n    [5] => 5\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 80\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(380, '::1', 'root', '2017-02-22 01:08:00', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(381, '::1', 'root', '2017-02-22 01:08:00', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Add refsubjectofferinghdr\n    [2] => modules/Registrar/subject_offering_header/add_refsubjectofferinghdr.php\n    [3] => Add Refsubjectofferinghdr\n    [4] => \n    [5] => 5\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 81\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(382, '::1', 'root', '2017-02-22 01:09:21', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(383, '::1', 'root', '2017-02-22 01:09:21', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Edit refsubjectofferinghdr\n    [2] => modules/Registrar/subject_offering_header/edit_refsubjectofferinghdr.php\n    [3] => Edit Refsubjectofferinghdr\n    [4] => \n    [5] => 5\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 82\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(384, '::1', 'root', '2017-02-22 01:09:26', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(385, '::1', 'root', '2017-02-22 01:09:26', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => View refsubjectofferinghdr\n    [2] => modules/Registrar/subject_offering_header/listview_refsubjectofferinghdr.php\n    [3] => Subject Offering Header\n    [4] => \n    [5] => 5\n    [6] => Yes\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 83\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(386, '::1', 'root', '2017-02-22 01:09:32', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(387, '::1', 'root', '2017-02-22 01:09:32', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Delete refsubjectofferinghdr\n    [2] => modules/Registrar/subject_offering_header/delete_refsubjectofferinghdr.php\n    [3] => Delete Refsubjectofferinghdr\n    [4] => \n    [5] => 5\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 84\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(388, '::1', 'root', '2017-02-22 01:09:37', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(389, '::1', 'root', '2017-02-22 01:09:37', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Add subject\n    [2] => modules/Registrar/subject/add_subject.php\n    [3] => Add Subject\n    [4] => \n    [5] => 5\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 89\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(390, '::1', 'root', '2017-02-22 01:09:42', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(391, '::1', 'root', '2017-02-22 01:09:42', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Edit subject\n    [2] => modules/Registrar/subject/edit_subject.php\n    [3] => Edit Subject\n    [4] => \n    [5] => 5\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 90\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(392, '::1', 'root', '2017-02-22 01:09:47', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(393, '::1', 'root', '2017-02-22 01:09:48', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => View subject\n    [2] => modules/Registrar/subject/listview_subject.php\n    [3] => Subject\n    [4] => \n    [5] => 5\n    [6] => Yes\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 91\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(394, '::1', 'root', '2017-02-22 01:09:59', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(395, '::1', 'root', '2017-02-22 01:09:59', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Delete subject\n    [2] => modules/Registrar/subject/delete_subject.php\n    [3] => Delete Subject\n    [4] => \n    [5] => 5\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 92\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(396, '::1', 'root', '2017-02-22 01:11:08', 'Logged out', '/clinic/end.php'),
(397, '::1', 'root', '2017-02-22 01:11:11', 'Logged in', '/clinic/login.php'),
(398, '::1', 'root', '2017-02-22 01:11:16', 'Logged out', '/clinic/end.php'),
(399, '::1', 'nurse', '2017-02-22 01:11:19', 'Logged in', '/clinic/login.php'),
(400, '::1', 'nurse', '2017-02-22 01:11:24', 'Logged out', '/clinic/end.php'),
(401, '::1', 'root', '2017-02-22 01:11:31', 'Logged in', '/clinic/login.php'),
(402, '::1', 'root', '2017-02-22 01:12:12', 'Pressed submit button', '/clinic/modules/Registrar/employee_family/add_refempfamily.php'),
(403, '::1', 'root', '2017-02-22 01:12:12', 'Query Executed: INSERT INTO refempfamily(family_id, emp_id, relationship, name, email, email_status, address_type, address, postal_code, mobile_num1, tel_num, mobile_num2) VALUES(?,?,?,?,?,?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => isssssssssss\n    [1] => \n    [2] => 2014-10030\n    [3] => Mother\n    [4] => Lolinie Gregorio\n    [5] => centuryleni@gmail.com\n    [6] => Active\n    [7] => Office\n    [8] => 123 Mabuhay Ave.\n    [9] => 2012\n    [10] => 24123123\n    [11] => 12312312\n    [12] => \n)\n', '/clinic/modules/Registrar/employee_family/add_refempfamily.php'),
(404, '::1', 'root', '2017-02-22 01:17:27', 'Pressed submit button', '/clinic/modules/Registrar/student/add_refstudent.php'),
(405, '::1', 'root', '2017-02-22 01:47:26', 'Pressed submit button', '/clinic/modules/Registrar/student/add_refstudent.php'),
(406, '::1', 'root', '2017-02-22 01:47:26', 'Query Executed: INSERT INTO refstudent(student_id, student_last_name, student_first_name, student_middle_name, birth_date, birth_place, admission_date, entry_level, admission_credential, mail_grades_to, exit_level, nationality, gender, address, postal_code, tel_num, mobile_num, email, religion, civil_status, box_num) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => sssssssssssssssssssss\n    [1] => 2015-100016\n    [2] => Romblon\n    [3] => Daveson\n    [4] => Kitane\n    [5] => 2017-02-22\n    [6] => San Juan City\n    [7] => 2017-02-22\n    [8] => \n    [9] => \n    [10] => \n    [11] => \n    [12] => Filipino\n    [13] => Male\n    [14] => Aven.ts 231 gsts\n    [15] => 2314\n    [16] => 213412\n    [17] => 412312\n    [18] => dave@gmail.com\n    [19] => Catholic\n    [20] => Single\n    [21] => \n)\n', '/clinic/modules/Registrar/student/add_refstudent.php'),
(407, '::1', 'root', '2017-02-22 01:47:26', 'Query Executed: INSERT INTO refstudentfamily(family_id, student_id, relationship, name, email, email_status, address_type, address, postal_code, tel_num, mobile_num1, mobile_num2, attended) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => issssssssssss\n    [1] => \n    [2] => 2015-100016\n    [3] => Mother\n    [4] => LMAO\n    [5] => LMAO@gmail.com\n    [6] => Active\n    [7] => Word\n    [8] => LMAO srtsts ave.,\n    [9] => 2331\n    [10] => 124123\n    [11] => 21412312\n    [12] => 123123123\n    [13] => Active\n)\n', '/clinic/modules/Registrar/student/add_refstudent.php'),
(408, '::1', 'root', '2017-02-22 01:54:41', 'Pressed submit button', '/clinic/modules/Registrar/department/add_dept.php'),
(409, '::1', 'root', '2017-02-22 01:54:41', 'Query Executed: INSERT INTO dept(dept_id, dept_code, dept_description, dept_assign, is_deleted) VALUES(?,?,?,?,?)\r\nArray\n(\n    [0] => issss\n    [1] => \n    [2] => ITRO\n    [3] => Information Technology Resource Center\n    [4] => \n    [5] => No\n)\n', '/clinic/modules/Registrar/department/add_dept.php'),
(410, '::1', 'root', '2017-02-22 01:54:52', 'Pressed submit button', '/clinic/modules/Registrar/department/add_dept.php'),
(411, '::1', 'root', '2017-02-22 01:54:52', 'Query Executed: INSERT INTO dept(dept_id, dept_code, dept_description, dept_assign, is_deleted) VALUES(?,?,?,?,?)\r\nArray\n(\n    [0] => issss\n    [1] => \n    [2] => Clinic\n    [3] => APC Clinic\n    [4] => \n    [5] => No\n)\n', '/clinic/modules/Registrar/department/add_dept.php'),
(412, '::1', 'root', '2017-02-22 01:55:04', 'Pressed submit button', '/clinic/modules/Registrar/department/add_dept.php'),
(413, '::1', 'root', '2017-02-22 01:55:04', 'Query Executed: INSERT INTO dept(dept_id, dept_code, dept_description, dept_assign, is_deleted) VALUES(?,?,?,?,?)\r\nArray\n(\n    [0] => issss\n    [1] => \n    [2] => Registrar\n    [3] => Registrar\n    [4] => \n    [5] => No\n)\n', '/clinic/modules/Registrar/department/add_dept.php'),
(414, '::1', 'root', '2017-02-22 01:55:57', 'Pressed submit button', '/clinic/modules/Clinic/emergency_case/add_emergencycase.php'),
(415, '::1', 'root', '2017-02-22 01:55:57', 'Query Executed: INSERT INTO emergencycase(id, date, type, name, id_number, location, diagnosis, hospital_id, escorted_by, guarantee_control_no) VALUES(?,?,?,?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => issssssiss\n    [1] => \n    [2] => 2017-02-22\n    [3] => test\n    [4] => Felix Gregorio\n    [5] => 2014-100360\n    [6] => MPH1\n    [7] => Broken limbs\n    [8] => 3\n    [9] => Jonathan Abalon\n    [10] => N/A\n)\n', '/clinic/modules/Clinic/emergency_case/add_emergencycase.php'),
(416, '::1', 'root', '2017-02-22 01:56:54', 'Pressed cancel button', '/clinic/modules/Clinic/medicine/detailview_medicine.php'),
(417, '::1', 'root', '2017-02-22 01:56:57', 'Pressed submit button', '/clinic/modules/Clinic/medicine/edit_medicine.php'),
(418, '::1', 'root', '2017-02-22 01:56:57', 'Query Executed: UPDATE medicine SET medicine_id = ?, medicine_name = ?, qty = ? WHERE medicine_id = ?\r\nArray\n(\n    [0] => issi\n    [1] => 1\n    [2] => Paracetamol\n    [3] => 1\n    [4] => 1\n)\n', '/clinic/modules/Clinic/medicine/edit_medicine.php'),
(419, '::1', 'root', '2017-02-22 01:57:01', 'Pressed submit button', '/clinic/modules/Clinic/medicine/edit_medicine.php'),
(420, '::1', 'root', '2017-02-22 01:57:01', 'Query Executed: UPDATE medicine SET medicine_id = ?, medicine_name = ?, qty = ? WHERE medicine_id = ?\r\nArray\n(\n    [0] => issi\n    [1] => 2\n    [2] => Ibuprofen\n    [3] => 1\n    [4] => 2\n)\n', '/clinic/modules/Clinic/medicine/edit_medicine.php'),
(421, '::1', 'root', '2017-02-22 01:57:03', 'Pressed submit button', '/clinic/modules/Clinic/medicine/edit_medicine.php'),
(422, '::1', 'root', '2017-02-22 01:57:03', 'Query Executed: UPDATE medicine SET medicine_id = ?, medicine_name = ?, qty = ? WHERE medicine_id = ?\r\nArray\n(\n    [0] => issi\n    [1] => 3\n    [2] => Cetirizine\n    [3] => 1\n    [4] => 3\n)\n', '/clinic/modules/Clinic/medicine/edit_medicine.php'),
(423, '::1', 'root', '2017-02-22 01:57:06', 'Pressed submit button', '/clinic/modules/Clinic/medicine/edit_medicine.php'),
(424, '::1', 'root', '2017-02-22 01:57:06', 'Query Executed: UPDATE medicine SET medicine_id = ?, medicine_name = ?, qty = ? WHERE medicine_id = ?\r\nArray\n(\n    [0] => issi\n    [1] => 4\n    [2] => Imodium\n    [3] => 1\n    [4] => 4\n)\n', '/clinic/modules/Clinic/medicine/edit_medicine.php'),
(425, '::1', 'root', '2017-02-22 01:57:08', 'Pressed submit button', '/clinic/modules/Clinic/medicine/edit_medicine.php'),
(426, '::1', 'root', '2017-02-22 01:57:08', 'Query Executed: UPDATE medicine SET medicine_id = ?, medicine_name = ?, qty = ? WHERE medicine_id = ?\r\nArray\n(\n    [0] => issi\n    [1] => 5\n    [2] => Decolgen\n    [3] => 1\n    [4] => 5\n)\n', '/clinic/modules/Clinic/medicine/edit_medicine.php'),
(427, '::1', 'root', '2017-02-22 01:57:10', 'Pressed cancel button', '/clinic/modules/Clinic/medicine/listview_medicine.php'),
(428, '::1', 'root', '2017-02-22 02:01:16', 'Pressed submit button', '/clinic/modules/Clinic/log_info/add_log_info.php'),
(429, '::1', 'root', '2017-02-22 02:02:15', 'Pressed submit button', '/clinic/modules/Clinic/log_info/add_log_info.php'),
(430, '::1', 'root', '2017-02-22 02:03:10', 'Pressed submit button', '/clinic/modules/Clinic/log_info/add_log_info.php'),
(431, '::1', 'root', '2017-02-22 02:03:10', 'Query Executed: INSERT INTO log_info(log_id, date, time, log_detail_id, complaints, student_id, emp_id) VALUES(?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => ississs\n    [1] => \n    [2] => 2017-02-22\n    [3] => 5:30 PM\n    [4] => \n    [5] => Headache\n    [6] => 2014-100360\n    [7] => 2014-10030\n)\n', '/clinic/modules/Clinic/log_info/add_log_info.php'),
(432, '::1', 'root', '2017-02-22 02:03:11', 'Query Executed: INSERT INTO log_detail(log_detail_id, medicine_id, qty) VALUES(?,?,?)\r\nArray\n(\n    [0] => iii\n    [1] => 1\n    [2] => 1\n    [3] => 1\n)\n', '/clinic/modules/Clinic/log_info/add_log_info.php'),
(433, '::1', 'root', '2017-02-22 02:03:54', 'Pressed delete button', '/clinic/modules/Clinic/log_info/delete_log_info.php'),
(434, '::1', 'root', '2017-02-22 02:04:01', 'Pressed delete button', '/clinic/modules/Clinic/log_info/delete_log_info.php'),
(435, '::1', 'root', '2017-02-22 02:04:04', 'Pressed cancel button', '/clinic/modules/Clinic/log_info/delete_log_info.php'),
(436, '::1', 'root', '2017-02-22 02:06:23', 'Pressed submit button', '/clinic/modules/Clinic/log_info/add_log_info.php'),
(437, '::1', 'root', '2017-02-22 02:07:10', 'Pressed submit button', '/clinic/modules/Clinic/log_info/add_log_info.php'),
(438, '::1', 'root', '2017-02-22 02:07:25', 'Pressed submit button', '/clinic/modules/Clinic/log_info/add_log_info.php'),
(439, '::1', 'root', '2017-02-22 02:07:25', 'Query Executed: INSERT INTO log_info(log_id, date, time, log_detail_id, complaints, student_id, emp_id) VALUES(?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => ississs\n    [1] => \n    [2] => 2017-02-22\n    [3] => 7:30 PM\n    [4] => \n    [5] => Small cut\n    [6] => 2014-100360\n    [7] => 2014-10030\n)\n', '/clinic/modules/Clinic/log_info/add_log_info.php'),
(440, '::1', 'root', '2017-02-22 02:07:25', 'Query Executed: INSERT INTO log_detail(log_detail_id, medicine_id, qty) VALUES(?,?,?)\r\nArray\n(\n    [0] => iii\n    [1] => 2\n    [2] => 4\n    [3] => 1\n)\n', '/clinic/modules/Clinic/log_info/add_log_info.php'),
(441, '::1', 'root', '2017-02-22 02:09:12', 'Pressed submit button', '/clinic/modules/Clinic/log_info/edit_log_info.php'),
(442, '::1', 'root', '2017-02-22 02:09:15', 'Pressed submit button', '/clinic/modules/Clinic/log_info/edit_log_info.php'),
(443, '::1', 'root', '2017-02-22 02:11:37', 'Pressed cancel button', '/clinic/modules/Clinic/log_info/detailview_log_info.php'),
(444, '::1', 'root', '2017-02-22 02:11:54', 'Pressed submit button', '/clinic/modules/Clinic/log_info/edit_log_info.php'),
(445, '::1', 'root', '2017-02-22 02:11:58', 'Pressed cancel button', '/clinic/modules/Clinic/log_info/edit_log_info.php'),
(446, '::1', 'root', '2017-02-22 02:12:39', 'Logged out', '/clinic/end.php'),
(447, '::1', 'nurse', '2017-02-22 02:12:53', 'Logged in', '/clinic/login.php'),
(448, '::1', 'root', '2017-02-28 22:53:18', 'Logged in', '/clinic/login.php'),
(449, '::1', 'root', '2017-02-28 22:53:21', 'Logged out', '/clinic/end.php'),
(450, '::1', 'nurse', '2017-02-28 22:53:24', 'Logged in', '/clinic/login.php'),
(451, '::1', 'nurse', '2017-02-28 22:53:28', 'Logged out', '/clinic/end.php'),
(452, '::1', 'root', '2017-02-28 22:53:32', 'Logged in', '/clinic/login.php'),
(453, '::1', 'root', '2017-02-28 22:56:39', 'Pressed cancel button', '/clinic/sysadmin/listview_user_links.php'),
(454, '::1', 'nurse', '2017-02-28 23:35:18', 'Logged in', '/clinic/login.php'),
(455, '::1', 'nurse', '2017-02-28 23:35:22', 'Logged out', '/clinic/end.php'),
(456, '::1', 'root', '2017-02-28 23:35:27', 'Logged in', '/clinic/login.php'),
(457, '::1', 'root', '2017-02-28 23:38:48', 'Pressed cancel button', '/clinic/modules/Clinic/medicine/add_medicine.php'),
(458, '::1', 'root', '2017-02-28 23:44:32', 'Pressed cancel button', '/clinic/sysadmin/detailview_user_links.php'),
(459, '::1', 'root', '2017-02-28 23:45:15', 'Pressed submit button', '/clinic/sysadmin/add_user_links.php'),
(460, '::1', 'root', '2017-02-28 23:45:23', 'Pressed submit button', '/clinic/sysadmin/add_user_links.php'),
(461, '::1', 'root', '2017-02-28 23:45:23', 'Query Executed: INSERT INTO user_links(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, status, icon, priority) VALUES(?,?,?,?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => issssisssi\n    [1] => \n    [2] => View Medicine Count\n    [3] => modules/Clinic/hospital/listview_medicine_count.php\n    [4] => View Medicine Count\n    [5] => \n    [6] => 1\n    [7] => Yes\n    [8] => On\n    [9] => blue_folder3.png\n    [10] => \n)\n', '/clinic/sysadmin/add_user_links.php'),
(462, '::1', 'root', '2017-02-28 23:45:50', 'Logged out', '/clinic/end.php'),
(463, '::1', 'root', '2017-03-05 18:12:17', 'Logged in', '/clinic/login.php'),
(464, '::1', 'root', '2017-03-05 18:20:22', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(465, '::1', 'root', '2017-03-05 18:20:22', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => View Medicine Count\n    [2] => modules/Clinic/hospital/listview_medicine_count.php\n    [3] => View Medicine Count\n    [4] => \n    [5] => 3\n    [6] => Yes\n    [7] => On\n    [8] => blue_folder3.png\n    [9] => 0\n    [10] => 101\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(466, '::1', 'root', '2017-03-05 18:20:28', 'Pressed cancel button', '/clinic/sysadmin/edit_user_links.php'),
(467, '::1', 'root', '2017-03-05 18:20:33', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(468, '::1', 'root', '2017-03-05 18:20:33', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Add medicine count\n    [2] => modules/add_medicine_count.php\n    [3] => Add Medicine Count\n    [4] => \n    [5] => 3\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 114\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(469, '::1', 'root', '2017-03-05 18:20:37', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(470, '::1', 'root', '2017-03-05 18:20:37', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Edit medicine count\n    [2] => modules/edit_medicine_count.php\n    [3] => Edit Medicine Count\n    [4] => \n    [5] => 3\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 115\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(471, '::1', 'root', '2017-03-05 18:20:51', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(472, '::1', 'root', '2017-03-05 18:20:52', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => View medicine count\n    [2] => modules/listview_medicine_count.php\n    [3] => Medicine Count\n    [4] => \n    [5] => 3\n    [6] => Yes\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 116\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(473, '::1', 'root', '2017-03-05 18:21:04', 'Pressed delete button', '/clinic/sysadmin/delete_user_links.php'),
(474, '::1', 'root', '2017-03-05 18:21:04', 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 101\n)\n', '/clinic/sysadmin/delete_user_links.php'),
(475, '::1', 'root', '2017-03-05 18:21:07', 'Pressed delete button', '/clinic/sysadmin/delete_user_links.php'),
(476, '::1', 'root', '2017-03-05 18:21:07', 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 114\n)\n', '/clinic/sysadmin/delete_user_links.php'),
(477, '::1', 'root', '2017-03-05 18:21:10', 'Pressed delete button', '/clinic/sysadmin/delete_user_links.php'),
(478, '::1', 'root', '2017-03-05 18:21:10', 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 115\n)\n', '/clinic/sysadmin/delete_user_links.php'),
(479, '::1', 'root', '2017-03-05 18:21:15', 'Pressed delete button', '/clinic/sysadmin/delete_user_links.php'),
(480, '::1', 'root', '2017-03-05 18:21:15', 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 149\n)\n', '/clinic/sysadmin/delete_user_links.php'),
(481, '::1', 'root', '2017-03-05 18:21:18', 'Pressed delete button', '/clinic/sysadmin/delete_user_links.php'),
(482, '::1', 'root', '2017-03-05 18:21:19', 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 116\n)\n', '/clinic/sysadmin/delete_user_links.php'),
(483, '::1', 'root', '2017-03-05 18:21:21', 'Pressed delete button', '/clinic/sysadmin/delete_user_links.php'),
(484, '::1', 'root', '2017-03-05 18:21:21', 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 117\n)\n', '/clinic/sysadmin/delete_user_links.php');
INSERT INTO `system_log` (`entry_id`, `ip_address`, `user`, `datetime`, `action`, `module`) VALUES
(485, '::1', 'root', '2017-03-05 18:21:25', 'Pressed delete button', '/clinic/sysadmin/delete_user_links.php'),
(486, '::1', 'root', '2017-03-05 18:21:25', 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 146\n)\n', '/clinic/sysadmin/delete_user_links.php'),
(487, '::1', 'root', '2017-03-05 18:21:27', 'Pressed delete button', '/clinic/sysadmin/delete_user_links.php'),
(488, '::1', 'root', '2017-03-05 18:21:28', 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 147\n)\n', '/clinic/sysadmin/delete_user_links.php'),
(489, '::1', 'root', '2017-03-05 18:21:31', 'Pressed delete button', '/clinic/sysadmin/delete_user_links.php'),
(490, '::1', 'root', '2017-03-05 18:21:31', 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 148\n)\n', '/clinic/sysadmin/delete_user_links.php'),
(491, '::1', 'root', '2017-03-05 18:21:38', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(492, '::1', 'root', '2017-03-05 18:21:38', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Add medicine count\n    [2] => modules/clinic/medicine_count/add_medicine_count.php\n    [3] => Add Medicine Count\n    [4] => \n    [5] => 3\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 218\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(493, '::1', 'root', '2017-03-05 18:21:42', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(494, '::1', 'root', '2017-03-05 18:21:42', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Edit medicine count\n    [2] => modules/clinic/medicine_count/edit_medicine_count.php\n    [3] => Edit Medicine Count\n    [4] => \n    [5] => 3\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 219\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(495, '::1', 'root', '2017-03-05 18:21:46', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(496, '::1', 'root', '2017-03-05 18:21:46', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => View medicine count\n    [2] => modules/clinic/medicine_count/listview_medicine_count.php\n    [3] => Medicine Count\n    [4] => \n    [5] => 3\n    [6] => Yes\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 220\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(497, '::1', 'root', '2017-03-05 18:21:50', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(498, '::1', 'root', '2017-03-05 18:21:50', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Delete medicine count\n    [2] => modules/clinic/medicine_count/delete_medicine_count.php\n    [3] => Delete Medicine Count\n    [4] => \n    [5] => 3\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 221\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(499, '::1', 'root', '2017-03-05 18:32:29', 'Logged out', '/clinic/end.php'),
(500, '::1', 'root', '2017-03-05 18:32:34', 'Logged in', '/clinic/login.php'),
(501, '::1', 'root', '2017-03-05 18:32:40', 'Logged out', '/clinic/end.php'),
(502, '::1', 'doctor', '2017-03-05 18:32:44', 'Logged in', '/clinic/login.php'),
(503, '::1', 'root', '2017-03-06 16:36:55', 'Pressed delete button', '/clinic/sysadmin/delete_user_links.php'),
(504, '::1', 'root', '2017-03-06 16:36:55', 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 218\n)\n', '/clinic/sysadmin/delete_user_links.php'),
(505, '::1', 'root', '2017-03-06 16:36:57', 'Pressed delete button', '/clinic/sysadmin/delete_user_links.php'),
(506, '::1', 'root', '2017-03-06 16:36:57', 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 219\n)\n', '/clinic/sysadmin/delete_user_links.php'),
(507, '::1', 'root', '2017-03-06 16:36:59', 'Pressed delete button', '/clinic/sysadmin/delete_user_links.php'),
(508, '::1', 'root', '2017-03-06 16:36:59', 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 220\n)\n', '/clinic/sysadmin/delete_user_links.php'),
(509, '::1', 'root', '2017-03-06 16:37:00', 'Pressed delete button', '/clinic/sysadmin/delete_user_links.php'),
(510, '::1', 'root', '2017-03-06 16:37:00', 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 221\n)\n', '/clinic/sysadmin/delete_user_links.php'),
(511, '::1', 'root', '2017-03-06 16:37:09', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(512, '::1', 'root', '2017-03-06 16:37:10', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Add medicine receiving\n    [2] => modules/clinic/medicine_receiving/add_medicine_receiving.php\n    [3] => Add Medicine Receiving\n    [4] => \n    [5] => 3\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 278\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(513, '::1', 'root', '2017-03-06 16:37:14', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(514, '::1', 'root', '2017-03-06 16:37:14', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Edit medicine receiving\n    [2] => modules/clinic/medicine_receiving/edit_medicine_receiving.php\n    [3] => Edit Medicine Receiving\n    [4] => \n    [5] => 3\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 279\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(515, '::1', 'root', '2017-03-06 16:37:17', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(516, '::1', 'root', '2017-03-06 16:37:17', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => View medicine receiving\n    [2] => modules/clinic/medicine_receiving/listview_medicine_receiving.php\n    [3] => Medicine Receiving\n    [4] => \n    [5] => 3\n    [6] => Yes\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 280\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(517, '::1', 'root', '2017-03-06 16:37:20', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(518, '::1', 'root', '2017-03-06 16:37:20', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Delete medicine receiving\n    [2] => modules/clinic/medicine_receiving/delete_medicine_receiving.php\n    [3] => Delete Medicine Receiving\n    [4] => \n    [5] => 3\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 281\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(519, '::1', 'root', '2017-03-06 16:39:11', 'Query executed: DELETE FROM user_passport WHERE username=''root'' AND link_id IN (''43'',''49'',''50'',''51'',''52'',''55'',''57'',''58'',''59'',''60'',''278'',''279'',''280'',''281'')', '/clinic/sysadmin/set_user_passports.php'),
(520, '::1', 'root', '2017-03-06 16:39:11', 'Query executed: INSERT INTO user_passport(username, link_id) VALUES(''root'', ''49''),(''root'', ''57''),(''root'', ''278''),(''root'', ''52''),(''root'', ''60''),(''root'', ''281''),(''root'', ''50''),(''root'', ''58''),(''root'', ''279''),(''root'', ''43''),(''root'', ''51''),(''root'', ''55''),(''root'', ''59''),(''root'', ''280'')', '/clinic/sysadmin/set_user_passports.php'),
(521, '::1', 'root', '2017-03-06 16:39:11', 'Query executed: UPDATE user SET role_id=''0'' WHERE username=''root''', '/clinic/sysadmin/set_user_passports.php'),
(522, '::1', 'root', '2017-03-06 16:44:01', 'Pressed submit button', '/clinic/modules/Clinic/medicine/edit_medicine.php'),
(523, '::1', 'root', '2017-03-06 16:44:01', 'Query Executed: UPDATE medicine SET medicine_name = ?, date_expiration = ? WHERE medicine_id = ?\r\nArray\n(\n    [0] => ssi\n    [1] => Paracetamol\n    [2] => 2017-03-06\n    [3] => 1\n)\n', '/clinic/modules/Clinic/medicine/edit_medicine.php'),
(524, '::1', 'root', '2017-03-06 16:44:03', 'Pressed submit button', '/clinic/modules/Clinic/medicine/edit_medicine.php'),
(525, '::1', 'root', '2017-03-06 16:44:03', 'Query Executed: UPDATE medicine SET medicine_name = ?, date_expiration = ? WHERE medicine_id = ?\r\nArray\n(\n    [0] => ssi\n    [1] => Ibuprofen\n    [2] => 2017-03-06\n    [3] => 2\n)\n', '/clinic/modules/Clinic/medicine/edit_medicine.php'),
(526, '::1', 'root', '2017-03-06 16:44:05', 'Pressed submit button', '/clinic/modules/Clinic/medicine/edit_medicine.php'),
(527, '::1', 'root', '2017-03-06 16:44:05', 'Query Executed: UPDATE medicine SET medicine_name = ?, date_expiration = ? WHERE medicine_id = ?\r\nArray\n(\n    [0] => ssi\n    [1] => Cetirizine\n    [2] => 2017-03-06\n    [3] => 3\n)\n', '/clinic/modules/Clinic/medicine/edit_medicine.php'),
(528, '::1', 'root', '2017-03-06 16:44:07', 'Pressed submit button', '/clinic/modules/Clinic/medicine/edit_medicine.php'),
(529, '::1', 'root', '2017-03-06 16:44:07', 'Query Executed: UPDATE medicine SET medicine_name = ?, date_expiration = ? WHERE medicine_id = ?\r\nArray\n(\n    [0] => ssi\n    [1] => Imodium\n    [2] => 2017-03-06\n    [3] => 4\n)\n', '/clinic/modules/Clinic/medicine/edit_medicine.php'),
(530, '::1', 'root', '2017-03-06 16:44:08', 'Pressed submit button', '/clinic/modules/Clinic/medicine/edit_medicine.php'),
(531, '::1', 'root', '2017-03-06 16:44:08', 'Query Executed: UPDATE medicine SET medicine_name = ?, date_expiration = ? WHERE medicine_id = ?\r\nArray\n(\n    [0] => ssi\n    [1] => Decolgen\n    [2] => 2017-03-06\n    [3] => 5\n)\n', '/clinic/modules/Clinic/medicine/edit_medicine.php'),
(532, '::1', 'root', '2017-03-09 15:11:41', 'Logged in', '/clinic/login.php'),
(533, '::1', 'root', '2017-03-09 16:04:40', 'Pressed submit button', '/clinic/modules/Registrar/clearance/add_refstudentclearance.php'),
(534, '::1', 'root', '2017-03-09 16:04:40', 'Query Executed: INSERT INTO refstudentclearance(id, term_id, date, student_id, remarks, is_clear, emp_id, dept_id) VALUES(?,?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => isssssss\n    [1] => \n    [2] => 1\n    [3] => 2017-03-09\n    [4] => 2014-100360\n    [5] => test\n    [6] => Yes\n    [7] => test\n    [8] => test\n)\n', '/clinic/modules/Registrar/clearance/add_refstudentclearance.php'),
(535, '::1', 'root', '2017-03-09 16:05:00', 'Pressed submit button', '/clinic/modules/Registrar/clearance/add_refstudentclearance.php'),
(536, '::1', 'root', '2017-03-09 16:05:00', 'Query Executed: INSERT INTO refstudentclearance(id, term_id, date, student_id, remarks, is_clear, emp_id, dept_id) VALUES(?,?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => isssssss\n    [1] => \n    [2] => 3\n    [3] => 2017-08-09\n    [4] => 2014-300234\n    [5] => test1\n    [6] => No\n    [7] => test1\n    [8] => test1\n)\n', '/clinic/modules/Registrar/clearance/add_refstudentclearance.php'),
(537, '::1', 'root', '2017-03-09 16:18:59', 'Logged out', '/clinic/end.php'),
(538, '::1', 'nurse', '2017-03-09 16:19:05', 'Logged in', '/clinic/login.php'),
(539, '::1', 'nurse', '2017-03-09 16:19:09', 'Logged out', '/clinic/end.php'),
(540, '::1', 'root', '2017-03-09 16:19:13', 'Logged in', '/clinic/login.php'),
(541, '::1', 'root', '2017-03-09 16:31:01', 'Pressed submit button', '/clinic/modules/Clinic/medicine/reporter_medicine.php'),
(542, '::1', 'root', '2017-03-13 14:07:14', 'Logged in', '/clinic/login.php'),
(543, '::1', 'root', '2017-03-13 14:07:16', 'Logged out', '/clinic/end.php'),
(544, '::1', 'nurse', '2017-03-13 14:07:26', 'Logged in', '/clinic/login.php'),
(545, '::1', 'nurse', '2017-03-13 14:07:28', 'Logged out', '/clinic/end.php'),
(546, '::1', 'nurse', '2017-03-13 14:08:11', 'Logged in', '/clinic/login.php'),
(547, '::1', 'nurse', '2017-03-13 14:08:13', 'Logged out', '/clinic/end.php'),
(548, '::1', 'doctor', '2017-03-13 14:08:20', 'Logged in', '/clinic/login.php'),
(549, '::1', 'doctor', '2017-03-13 14:08:23', 'Logged out', '/clinic/end.php'),
(550, '::1', 'root', '2017-03-13 14:08:37', 'Logged in', '/clinic/login.php'),
(551, '::1', 'root', '2017-03-13 14:08:54', 'Pressed submit button', '/clinic/modules/Clinic/required_appointment/add_required_appointment.php'),
(552, '::1', 'root', '2017-03-13 14:09:04', 'Pressed submit button', '/clinic/modules/Clinic/required_appointment/add_required_appointment.php'),
(553, '::1', 'root', '2017-03-13 14:09:07', 'Pressed submit button', '/clinic/modules/Clinic/required_appointment/add_required_appointment.php'),
(554, '::1', 'root', '2017-03-13 14:09:18', 'Pressed submit button', '/clinic/modules/Registrar/student/add_refstudent.php'),
(555, '::1', 'root', '2017-03-13 14:11:31', 'Pressed submit button', '/clinic/modules/Clinic/emergency_case/add_emergencycase.php'),
(556, '::1', 'root', '2017-03-13 14:11:41', 'Pressed submit button', '/clinic/modules/Clinic/hospital/add_hospital.php'),
(557, '::1', 'root', '2017-03-13 14:11:43', 'Pressed submit button', '/clinic/modules/Clinic/hospital/add_hospital.php'),
(558, '::1', 'root', '2017-03-13 14:11:48', 'Pressed submit button', '/clinic/modules/Clinic/hospital/add_hospital.php'),
(559, '::1', 'root', '2017-03-13 14:12:00', 'Pressed submit button', '/clinic/modules/Clinic/log_info/add_log_info.php'),
(560, '::1', 'root', '2017-03-13 14:12:19', 'Pressed submit button', '/clinic/modules/clinic/medicine_receiving/add_medicine_receiving.php'),
(561, '::1', 'root', '2017-03-13 14:12:25', 'Pressed submit button', '/clinic/modules/clinic/medicine_receiving/add_medicine_receiving.php'),
(562, '::1', 'root', '2017-03-13 14:13:26', 'Pressed cancel button', '/clinic/sysadmin/detailview_person.php'),
(563, '::1', 'root', '2017-03-13 14:13:31', 'Pressed cancel button', '/clinic/sysadmin/detailview_user.php'),
(564, '::1', 'root', '2017-03-13 14:13:41', 'Pressed submit button', '/clinic/sysadmin/edit_user.php'),
(565, '::1', 'root', '2017-03-13 14:13:41', 'Query Executed: UPDATE user SET username = ?, person_id = ?, role_id = ?, skin_id = ? WHERE username = ?\r\nArray\n(\n    [0] => siiis\n    [1] => nurse\n    [2] => 2\n    [3] => 3\n    [4] => 6\n    [5] => nurse\n)\n', '/clinic/sysadmin/edit_user.php'),
(566, '::1', 'root', '2017-03-13 14:13:41', 'Query executed: DELETE FROM user_passport WHERE username = ''nurse''', '/clinic/sysadmin/edit_user.php'),
(567, '::1', 'root', '2017-03-13 14:13:41', 'Query executed: INSERT `user_passport` SELECT ''nurse'', `link_id` FROM user_role_links WHERE role_id=''3''', '/clinic/sysadmin/edit_user.php'),
(568, '::1', 'root', '2017-03-13 14:13:43', 'Logged out', '/clinic/end.php'),
(569, '::1', 'nurse', '2017-03-13 14:13:51', 'Logged in', '/clinic/login.php'),
(570, '::1', 'nurse', '2017-03-13 14:13:55', 'Logged out', '/clinic/end.php'),
(571, '::1', 'root', '2017-03-13 14:13:59', 'Logged in', '/clinic/login.php'),
(572, '::1', 'root', '2017-03-13 14:14:13', 'Pressed cancel button', '/clinic/sysadmin/edit_user.php'),
(573, '::1', 'root', '2017-03-13 14:14:20', 'Pressed submit button', '/clinic/sysadmin/edit_user.php'),
(574, '::1', 'root', '2017-03-13 14:14:21', 'Query Executed: UPDATE user SET username = ?, person_id = ?, role_id = ?, skin_id = ? WHERE username = ?\r\nArray\n(\n    [0] => siiis\n    [1] => doctor\n    [2] => 3\n    [3] => 4\n    [4] => 12\n    [5] => doctor\n)\n', '/clinic/sysadmin/edit_user.php'),
(575, '::1', 'root', '2017-03-13 14:14:21', 'Query executed: DELETE FROM user_passport WHERE username = ''doctor''', '/clinic/sysadmin/edit_user.php'),
(576, '::1', 'root', '2017-03-13 14:14:21', 'Query executed: INSERT `user_passport` SELECT ''doctor'', `link_id` FROM user_role_links WHERE role_id=''4''', '/clinic/sysadmin/edit_user.php'),
(577, '::1', 'root', '2017-03-13 14:14:22', 'Logged out', '/clinic/end.php'),
(578, '::1', 'doctor', '2017-03-13 14:14:27', 'Logged in', '/clinic/login.php'),
(579, '::1', 'doctor', '2017-03-13 14:14:31', 'Logged out', '/clinic/end.php'),
(580, '::1', 'root', '2017-03-13 14:14:34', 'Logged in', '/clinic/login.php'),
(581, '::1', 'root', '2017-03-13 14:14:54', 'Pressed submit button', '/clinic/sysadmin/edit_user.php'),
(582, '::1', 'root', '2017-03-13 14:14:54', 'Query Executed: UPDATE user SET username = ?, person_id = ?, role_id = ?, skin_id = ? WHERE username = ?\r\nArray\n(\n    [0] => siiis\n    [1] => doctor\n    [2] => 3\n    [3] => 4\n    [4] => 7\n    [5] => doctor\n)\n', '/clinic/sysadmin/edit_user.php'),
(583, '::1', 'root', '2017-03-13 14:14:54', 'Query executed: DELETE FROM user_passport WHERE username = ''doctor''', '/clinic/sysadmin/edit_user.php'),
(584, '::1', 'root', '2017-03-13 14:14:54', 'Query executed: INSERT `user_passport` SELECT ''doctor'', `link_id` FROM user_role_links WHERE role_id=''4''', '/clinic/sysadmin/edit_user.php'),
(585, '::1', 'root', '2017-03-13 14:14:56', 'Logged out', '/clinic/end.php'),
(586, '::1', 'doctor', '2017-03-13 14:15:01', 'Logged in', '/clinic/login.php'),
(587, '::1', 'doctor', '2017-03-13 14:58:44', 'Pressed submit button', '/clinic/modules/Clinic/log_info/edit_log_info.php'),
(588, '::1', 'doctor', '2017-03-13 15:42:19', 'Logged out', '/clinic/end.php'),
(589, '::1', 'root', '2017-03-13 15:42:22', 'Logged in', '/clinic/login.php'),
(590, '::1', 'root', '2017-03-13 15:42:39', 'Query executed: DELETE FROM user_passport WHERE username=''nurse'' AND link_id IN (''43'',''49'',''50'',''51'',''52'',''55'',''57'',''58'',''59'',''60'',''278'',''279'',''280'',''281'')', '/clinic/sysadmin/set_user_passports.php'),
(591, '::1', 'root', '2017-03-13 15:42:39', 'Query executed: INSERT INTO user_passport(username, link_id) VALUES(''nurse'', ''49''),(''nurse'', ''57''),(''nurse'', ''278''),(''nurse'', ''50''),(''nurse'', ''58''),(''nurse'', ''279''),(''nurse'', ''43''),(''nurse'', ''51''),(''nurse'', ''55''),(''nurse'', ''59''),(''nurse'', ''280'')', '/clinic/sysadmin/set_user_passports.php'),
(592, '::1', 'root', '2017-03-13 15:42:39', 'Query executed: UPDATE user SET role_id=''0'' WHERE username=''nurse''', '/clinic/sysadmin/set_user_passports.php'),
(593, '::1', 'root', '2017-03-13 15:42:51', 'Query executed: DELETE FROM user_passport WHERE username=''doctor'' AND link_id IN (''43'',''49'',''50'',''51'',''52'',''55'',''57'',''58'',''59'',''60'',''278'',''279'',''280'',''281'')', '/clinic/sysadmin/set_user_passports.php'),
(594, '::1', 'root', '2017-03-13 15:42:51', 'Query executed: INSERT INTO user_passport(username, link_id) VALUES(''doctor'', ''49''),(''doctor'', ''57''),(''doctor'', ''278''),(''doctor'', ''50''),(''doctor'', ''58''),(''doctor'', ''279''),(''doctor'', ''43''),(''doctor'', ''51''),(''doctor'', ''55''),(''doctor'', ''59''),(''doctor'', ''280'')', '/clinic/sysadmin/set_user_passports.php'),
(595, '::1', 'root', '2017-03-13 15:42:51', 'Query executed: UPDATE user SET role_id=''0'' WHERE username=''doctor''', '/clinic/sysadmin/set_user_passports.php'),
(596, '::1', 'root', '2017-03-13 15:42:54', 'Logged out', '/clinic/end.php'),
(597, '::1', 'doctor', '2017-03-13 15:42:59', 'Logged in', '/clinic/login.php'),
(598, '::1', 'doctor', '2017-03-13 15:43:49', 'Pressed cancel button', '/clinic/modules/Registrar/student_schedule/csv_xrefstudentschedule.php'),
(599, '::1', 'doctor', '2017-03-13 15:45:21', 'Pressed submit button', '/clinic/modules/clinic/medicine_receiving/add_medicine_receiving.php'),
(600, '::1', 'doctor', '2017-03-13 15:45:27', 'Pressed submit button', '/clinic/modules/clinic/medicine_receiving/add_medicine_receiving.php'),
(601, '::1', 'doctor', '2017-03-13 15:45:27', 'Query Executed: INSERT INTO medicine_receiving(medicine_count_id, medicine_id, qty, date, type) VALUES(?,?,?,?,?)\r\nArray\n(\n    [0] => iiiss\n    [1] => \n    [2] => 1\n    [3] => 300\n    [4] => 2017-03-13\n    [5] => Beginning balance\n)\n', '/clinic/modules/clinic/medicine_receiving/add_medicine_receiving.php'),
(602, '::1', 'doctor', '2017-03-13 15:45:52', 'Pressed cancel button', '/clinic/modules/clinic/medicine_receiving/detailview_medicine_receiving.php'),
(603, '::1', 'doctor', '2017-03-13 15:46:58', 'Pressed submit button', '/clinic/modules/clinic/medicine_receiving/add_medicine_receiving.php'),
(604, '::1', 'doctor', '2017-03-13 15:46:58', 'Query Executed: INSERT INTO medicine_receiving(medicine_count_id, medicine_id, qty, date, type) VALUES(?,?,?,?,?)\r\nArray\n(\n    [0] => iiiss\n    [1] => \n    [2] => 2\n    [3] => 200\n    [4] => 2017-03-13\n    [5] => Beginning balance\n)\n', '/clinic/modules/clinic/medicine_receiving/add_medicine_receiving.php'),
(605, '::1', 'doctor', '2017-03-13 15:47:01', 'Pressed cancel button', '/clinic/modules/clinic/medicine_receiving/edit_medicine_receiving.php'),
(606, '::1', 'doctor', '2017-03-13 15:47:07', 'Pressed submit button', '/clinic/modules/clinic/medicine_receiving/edit_medicine_receiving.php'),
(607, '::1', 'doctor', '2017-03-13 15:47:07', 'Query Executed: UPDATE medicine_receiving SET medicine_id = ?, qty = ?, date = ?, type = ? WHERE medicine_count_id = ?\r\nArray\n(\n    [0] => iissi\n    [1] => 1\n    [2] => 350\n    [3] => 2017-03-13\n    [4] => Beginning balance\n    [5] => 1\n)\n', '/clinic/modules/clinic/medicine_receiving/edit_medicine_receiving.php'),
(608, '::1', 'doctor', '2017-03-13 15:47:36', 'Pressed cancel button', '/clinic/modules/clinic/medicine_receiving/add_medicine_receiving.php'),
(609, '::1', 'doctor', '2017-03-13 15:47:55', 'Pressed cancel button', '/clinic/modules/clinic/medicine_receiving/add_medicine_receiving.php'),
(610, '::1', 'doctor', '2017-03-13 15:49:54', 'Pressed submit button', '/clinic/modules/Clinic/log_info/edit_log_info.php'),
(611, '::1', 'doctor', '2017-03-13 15:52:36', 'Pressed submit button', '/clinic/modules/Clinic/log_info/edit_log_info.php'),
(612, '::1', 'doctor', '2017-03-13 15:54:09', 'Logged out', '/clinic/end.php'),
(613, '::1', 'root', '2017-03-13 15:54:14', 'Logged in', '/clinic/login.php'),
(614, '::1', 'root', '2017-03-13 15:54:46', 'Pressed submit button', '/clinic/modules/Registrar/employee/edit_employee.php'),
(615, '::1', 'root', '2017-03-13 15:54:56', 'Pressed submit button', '/clinic/modules/Registrar/employee/edit_employee.php'),
(616, '::1', 'root', '2017-03-13 15:55:28', 'Pressed submit button', '/clinic/modules/Registrar/employee/edit_employee.php'),
(617, '::1', 'root', '2017-03-13 15:55:55', 'Pressed cancel button', '/clinic/modules/Registrar/employee/edit_employee.php'),
(618, '::1', 'root', '2017-03-13 15:57:37', 'Pressed submit button', '/clinic/modules/Clinic/log_info/edit_log_info.php'),
(619, '::1', 'root', '2017-03-13 16:00:37', 'Pressed submit button', '/clinic/modules/Clinic/log_info/edit_log_info.php'),
(620, '::1', 'root', '2017-03-13 16:02:37', 'Pressed submit button', '/clinic/modules/Clinic/log_info/edit_log_info.php'),
(621, '::1', 'root', '2017-03-13 16:14:51', 'Pressed cancel button', '/clinic/sysadmin/edit_user_links.php'),
(622, '::1', 'root', '2017-03-13 16:22:27', 'Pressed cancel button', '/clinic/modules/clinic/log_info/add_log_info.php'),
(623, '::1', 'root', '2017-03-13 16:22:40', 'Pressed submit button', '/clinic/modules/clinic/log_info/edit_log_info.php'),
(624, '::1', 'root', '2017-03-13 16:24:33', 'Pressed cancel button', '/clinic/modules/clinic/log_info/add_log_info.php'),
(625, '::1', 'root', '2017-03-13 16:24:37', 'Pressed cancel button', '/clinic/modules/clinic/log_info/edit_log_info.php'),
(626, '::1', 'root', '2017-03-13 16:32:28', 'Pressed submit button', '/clinic/modules/Clinic/hospital/add_hospital.php'),
(627, '::1', 'root', '2017-03-13 16:33:13', 'Pressed submit button', '/clinic/modules/clinic/log_info/add_log_info.php'),
(628, '::1', 'root', '2017-03-13 16:33:51', 'Pressed submit button', '/clinic/modules/clinic/log_info/edit_log_info.php'),
(629, '::1', 'root', '2017-03-13 16:33:51', 'Query Executed: DELETE FROM log_detail WHERE log_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 1\n)\n', '/clinic/modules/clinic/log_info/edit_log_info.php'),
(630, '::1', 'root', '2017-03-13 16:33:51', 'Query Executed: INSERT INTO log_detail(log_detail_id, log_id, medicine_id, qty) VALUES(?,?,?,?)\r\nArray\n(\n    [0] => iiii\n    [1] => \n    [2] => 1\n    [3] => 3\n    [4] => 200\n)\n', '/clinic/modules/clinic/log_info/edit_log_info.php'),
(631, '::1', 'root', '2017-03-13 16:33:51', 'Query Executed: INSERT INTO log_detail(log_detail_id, log_id, medicine_id, qty) VALUES(?,?,?,?)\r\nArray\n(\n    [0] => iiii\n    [1] => \n    [2] => 1\n    [3] => 2\n    [4] => 300\n)\n', '/clinic/modules/clinic/log_info/edit_log_info.php'),
(632, '::1', 'root', '2017-03-13 16:33:51', 'Query Executed: UPDATE log_info SET date = ?, time = ?, complaints = ?, patient_type = ?, student_id = ?, emp_id = ? WHERE log_id = ?\r\nArray\n(\n    [0] => ssssssi\n    [1] => 2017-02-22\n    [2] => 05:30:00\n    [3] => Headache\n    [4] => Student\n    [5] => 2014-100360\n    [6] => 2014-10030\n    [7] => 1\n)\n', '/clinic/modules/clinic/log_info/edit_log_info.php'),
(633, '::1', 'root', '2017-03-13 16:34:06', 'Pressed submit button', '/clinic/modules/clinic/log_info/edit_log_info.php'),
(634, '::1', 'root', '2017-03-13 16:34:06', 'Query Executed: DELETE FROM log_detail WHERE log_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 1\n)\n', '/clinic/modules/clinic/log_info/edit_log_info.php'),
(635, '::1', 'root', '2017-03-13 16:34:06', 'Query Executed: INSERT INTO log_detail(log_detail_id, log_id, medicine_id, qty) VALUES(?,?,?,?)\r\nArray\n(\n    [0] => iiii\n    [1] => \n    [2] => 1\n    [3] => 3\n    [4] => 1\n)\n', '/clinic/modules/clinic/log_info/edit_log_info.php'),
(636, '::1', 'root', '2017-03-13 16:34:06', 'Query Executed: INSERT INTO log_detail(log_detail_id, log_id, medicine_id, qty) VALUES(?,?,?,?)\r\nArray\n(\n    [0] => iiii\n    [1] => \n    [2] => 1\n    [3] => 1\n    [4] => 1\n)\n', '/clinic/modules/clinic/log_info/edit_log_info.php'),
(637, '::1', 'root', '2017-03-13 16:34:07', 'Query Executed: UPDATE log_info SET date = ?, time = ?, complaints = ?, patient_type = ?, student_id = ?, emp_id = ? WHERE log_id = ?\r\nArray\n(\n    [0] => ssssssi\n    [1] => 2017-02-22\n    [2] => 05:30:00\n    [3] => Headache\n    [4] => Student\n    [5] => 2014-100360\n    [6] => 2014-10030\n    [7] => 1\n)\n', '/clinic/modules/clinic/log_info/edit_log_info.php'),
(638, '::1', 'root', '2017-03-13 16:39:48', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(639, '::1', 'root', '2017-03-13 16:39:48', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Add hospital\n    [2] => modules/Clinic/hospital/add_hospital.php\n    [3] => Add Hospital\n    [4] => \n    [5] => 3\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 49\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(640, '::1', 'root', '2017-03-13 16:39:51', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(641, '::1', 'root', '2017-03-13 16:39:51', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Edit hospital\n    [2] => modules/Clinic/hospital/edit_hospital.php\n    [3] => Edit Hospital\n    [4] => \n    [5] => 3\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 50\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(642, '::1', 'root', '2017-03-13 16:39:54', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(643, '::1', 'root', '2017-03-13 16:39:54', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => View hospital\n    [2] => modules/Clinic/hospital/listview_hospital.php\n    [3] => Hospital\n    [4] => \n    [5] => 3\n    [6] => Yes\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 51\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(644, '::1', 'root', '2017-03-13 16:39:58', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(645, '::1', 'root', '2017-03-13 16:39:58', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Delete hospital\n    [2] => modules/Clinic/hospital/delete_hospital.php\n    [3] => Delete Hospital\n    [4] => \n    [5] => 3\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 52\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(646, '::1', 'root', '2017-03-13 16:41:28', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(647, '::1', 'root', '2017-03-13 16:41:28', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Add emergencycase\n    [2] => modules/Clinic/emergency_case/add_emergencycase.php\n    [3] => Add Emergencycase\n    [4] => \n    [5] => 3\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 41\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(648, '::1', 'root', '2017-03-13 16:41:31', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(649, '::1', 'root', '2017-03-13 16:41:31', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Edit emergencycase\n    [2] => modules/Clinic/emergency_case/edit_emergencycase.php\n    [3] => Edit Emergencycase\n    [4] => \n    [5] => 3\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 42\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(650, '::1', 'root', '2017-03-13 16:41:35', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(651, '::1', 'root', '2017-03-13 16:41:35', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => View emergencycase\n    [2] => modules/Clinic/emergency_case/listview_emergencycase.php\n    [3] => Emergencycase\n    [4] => \n    [5] => 3\n    [6] => Yes\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 43\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(652, '::1', 'root', '2017-03-13 16:41:38', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(653, '::1', 'root', '2017-03-13 16:41:38', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Delete emergencycase\n    [2] => modules/Clinic/emergency_case/delete_emergencycase.php\n    [3] => Delete Emergencycase\n    [4] => \n    [5] => 3\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 44\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(654, '::1', 'root', '2017-03-13 16:41:57', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(655, '::1', 'root', '2017-03-13 16:41:57', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Add log info\n    [2] => modules/clinic/log_info/add_log_info.php\n    [3] => Add Log Info\n    [4] => \n    [5] => 3\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 57\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(656, '::1', 'root', '2017-03-13 16:42:00', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(657, '::1', 'root', '2017-03-13 16:42:00', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Edit log info\n    [2] => modules/clinic/log_info/edit_log_info.php\n    [3] => Edit Log Info\n    [4] => \n    [5] => 3\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 58\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(658, '::1', 'root', '2017-03-13 16:42:09', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(659, '::1', 'root', '2017-03-13 16:42:10', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => View log info\n    [2] => modules/clinic/log_info/listview_log_info.php\n    [3] => Log Info\n    [4] => \n    [5] => 3\n    [6] => Yes\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 59\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(660, '::1', 'root', '2017-03-13 16:42:14', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(661, '::1', 'root', '2017-03-13 16:42:14', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Delete log info\n    [2] => modules/clinic/log_info/delete_log_info.php\n    [3] => Delete Log Info\n    [4] => \n    [5] => 3\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 60\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(662, '::1', 'root', '2017-03-13 16:42:25', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(663, '::1', 'root', '2017-03-13 16:42:25', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Add log detail\n    [2] => modules/clinic/log_detail/add_log_detail.php\n    [3] => Add Log Detail\n    [4] => \n    [5] => 3\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 53\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(664, '::1', 'root', '2017-03-13 16:42:28', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(665, '::1', 'root', '2017-03-13 16:42:28', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Edit log detail\n    [2] => modules/clinic/log_detail/edit_log_detail.php\n    [3] => Edit Log Detail\n    [4] => \n    [5] => 3\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 54\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(666, '::1', 'root', '2017-03-13 16:42:32', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(667, '::1', 'root', '2017-03-13 16:42:32', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => View log detail\n    [2] => modules/clinic/log_detail/listview_log_detail.php\n    [3] => Log Detail\n    [4] => \n    [5] => 3\n    [6] => Yes\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 55\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(668, '::1', 'root', '2017-03-13 16:42:35', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(669, '::1', 'root', '2017-03-13 16:42:35', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Delete log detail\n    [2] => modules/clinic/log_detail/delete_log_detail.php\n    [3] => Delete Log Detail\n    [4] => \n    [5] => 3\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 56\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(670, '::1', 'root', '2017-03-13 16:42:50', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(671, '::1', 'root', '2017-03-13 16:42:50', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Add medicine\n    [2] => modules/clinic/medicine/add_medicine.php\n    [3] => Add Medicine\n    [4] => \n    [5] => 3\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 61\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(672, '::1', 'root', '2017-03-13 16:42:55', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(673, '::1', 'root', '2017-03-13 16:42:55', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Edit medicine\n    [2] => modules/clinic/medicine/edit_medicine.php\n    [3] => Edit Medicine\n    [4] => \n    [5] => 3\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 62\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(674, '::1', 'root', '2017-03-13 16:42:58', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(675, '::1', 'root', '2017-03-13 16:42:58', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => View medicine\n    [2] => modules/clinic/medicine/listview_medicine.php\n    [3] => Medicine\n    [4] => \n    [5] => 3\n    [6] => Yes\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 63\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(676, '::1', 'root', '2017-03-13 16:43:03', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(677, '::1', 'root', '2017-03-13 16:43:03', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Delete medicine\n    [2] => modules/clinic/medicine/delete_medicine.php\n    [3] => Delete Medicine\n    [4] => \n    [5] => 3\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 64\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(678, '::1', 'root', '2017-03-13 16:43:07', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(679, '::1', 'root', '2017-03-13 16:43:07', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Add medicine count\n    [2] => modules/clinic/medicine_count/add_medicine_count.php\n    [3] => Add Medicine Count\n    [4] => \n    [5] => 3\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 65\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(680, '::1', 'root', '2017-03-13 16:43:11', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(681, '::1', 'root', '2017-03-13 16:43:11', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Edit medicine count\n    [2] => modules/clinic/medicine_count/edit_medicine_count.php\n    [3] => Edit Medicine Count\n    [4] => \n    [5] => 3\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 66\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(682, '::1', 'root', '2017-03-13 16:43:14', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(683, '::1', 'root', '2017-03-13 16:43:14', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => View medicine count\n    [2] => modules/clinic/medicine_count/listview_medicine_count.php\n    [3] => Medicine Count\n    [4] => \n    [5] => 3\n    [6] => Yes\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 67\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(684, '::1', 'root', '2017-03-13 16:43:18', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(685, '::1', 'root', '2017-03-13 16:43:18', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Delete medicine count\n    [2] => modules/clinic/medicine_count/delete_medicine_count.php\n    [3] => Delete Medicine Count\n    [4] => \n    [5] => 3\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 68\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(686, '::1', 'root', '2017-03-13 16:43:22', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(687, '::1', 'root', '2017-03-13 16:43:22', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Add medicine receiving\n    [2] => modules/clinic/medicine_receiving/add_medicine_receiving.php\n    [3] => Add Medicine Receiving\n    [4] => \n    [5] => 3\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 69\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(688, '::1', 'root', '2017-03-13 16:43:26', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(689, '::1', 'root', '2017-03-13 16:43:26', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Edit medicine receiving\n    [2] => modules/clinic/medicine_receiving/edit_medicine_receiving.php\n    [3] => Edit Medicine Receiving\n    [4] => \n    [5] => 3\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 70\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(690, '::1', 'root', '2017-03-13 16:43:30', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(691, '::1', 'root', '2017-03-13 16:43:30', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => View medicine receiving\n    [2] => modules/clinic/medicine_receiving/listview_medicine_receiving.php\n    [3] => Medicine Receiving\n    [4] => \n    [5] => 3\n    [6] => Yes\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 71\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(692, '::1', 'root', '2017-03-13 16:43:33', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(693, '::1', 'root', '2017-03-13 16:43:33', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Delete medicine receiving\n    [2] => modules/clinic/medicine_receiving/delete_medicine_receiving.php\n    [3] => Delete Medicine Receiving\n    [4] => \n    [5] => 3\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 72\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(694, '::1', 'root', '2017-03-13 16:44:34', 'Pressed delete button', '/clinic/sysadmin/delete_user_links.php'),
(695, '::1', 'root', '2017-03-13 16:44:34', 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 65\n)\n', '/clinic/sysadmin/delete_user_links.php'),
(696, '::1', 'root', '2017-03-13 16:44:36', 'Pressed delete button', '/clinic/sysadmin/delete_user_links.php'),
(697, '::1', 'root', '2017-03-13 16:44:36', 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 67\n)\n', '/clinic/sysadmin/delete_user_links.php'),
(698, '::1', 'root', '2017-03-13 16:44:38', 'Pressed delete button', '/clinic/sysadmin/delete_user_links.php'),
(699, '::1', 'root', '2017-03-13 16:44:38', 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 66\n)\n', '/clinic/sysadmin/delete_user_links.php'),
(700, '::1', 'root', '2017-03-13 16:44:39', 'Pressed delete button', '/clinic/sysadmin/delete_user_links.php'),
(701, '::1', 'root', '2017-03-13 16:44:39', 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 68\n)\n', '/clinic/sysadmin/delete_user_links.php'),
(702, '::1', 'root', '2017-03-13 16:45:09', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(703, '::1', 'root', '2017-03-13 16:45:09', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Add required appointment\n    [2] => modules/Clinic/required_appointment/add_required_appointment.php\n    [3] => Add Required Appointment\n    [4] => \n    [5] => 4\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 97\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(704, '::1', 'root', '2017-03-13 16:45:12', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(705, '::1', 'root', '2017-03-13 16:45:12', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Edit required appointment\n    [2] => modules/Clinic/required_appointment/edit_required_appointment.php\n    [3] => Edit Required Appointment\n    [4] => \n    [5] => 4\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 98\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(706, '::1', 'root', '2017-03-13 16:45:16', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(707, '::1', 'root', '2017-03-13 16:45:17', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => View required appointment\n    [2] => modules/Clinic/required_appointment/listview_required_appointment.php\n    [3] => Required Appointment\n    [4] => \n    [5] => 4\n    [6] => Yes\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 99\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(708, '::1', 'root', '2017-03-13 16:45:20', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(709, '::1', 'root', '2017-03-13 16:45:20', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Delete required appointment\n    [2] => modules/Clinic/required_appointment/delete_required_appointment.php\n    [3] => Delete Required Appointment\n    [4] => \n    [5] => 4\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 100\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(710, '::1', 'root', '2017-03-13 16:45:37', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php');
INSERT INTO `system_log` (`entry_id`, `ip_address`, `user`, `datetime`, `action`, `module`) VALUES
(711, '::1', 'root', '2017-03-13 16:45:37', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Add xrefstudentschedule\n    [2] => modules/Registrar/student_schedule/add_xrefstudentschedule.php\n    [3] => Add Xrefstudentschedule\n    [4] => \n    [5] => 4\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 109\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(712, '::1', 'root', '2017-03-13 16:45:40', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(713, '::1', 'root', '2017-03-13 16:45:40', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Edit xrefstudentschedule\n    [2] => modules/Registrar/student_schedule/edit_xrefstudentschedule.php\n    [3] => Edit Xrefstudentschedule\n    [4] => \n    [5] => 4\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 110\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(714, '::1', 'root', '2017-03-13 16:45:43', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(715, '::1', 'root', '2017-03-13 16:45:43', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => View xrefstudentschedule\n    [2] => modules/Registrar/student_schedule/listview_xrefstudentschedule.php\n    [3] => Xrefstudentschedule\n    [4] => \n    [5] => 4\n    [6] => Yes\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 111\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(716, '::1', 'root', '2017-03-13 16:45:46', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(717, '::1', 'root', '2017-03-13 16:45:46', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Delete xrefstudentschedule\n    [2] => modules/Registrar/student_schedule/delete_xrefstudentschedule.php\n    [3] => Delete Xrefstudentschedule\n    [4] => \n    [5] => 4\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 112\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(718, '::1', 'root', '2017-03-13 16:46:09', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(719, '::1', 'root', '2017-03-13 16:46:09', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Add employee\n    [2] => modules/Registrar/employee/add_employee.php\n    [3] => Add Employee\n    [4] => \n    [5] => 7\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 45\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(720, '::1', 'root', '2017-03-13 16:46:11', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(721, '::1', 'root', '2017-03-13 16:46:11', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Edit employee\n    [2] => modules/Registrar/employee/edit_employee.php\n    [3] => Edit Employee\n    [4] => \n    [5] => 7\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 46\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(722, '::1', 'root', '2017-03-13 16:46:14', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(723, '::1', 'root', '2017-03-13 16:46:14', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => View employee\n    [2] => modules/Registrar/employee/listview_employee.php\n    [3] => Employee\n    [4] => \n    [5] => 7\n    [6] => Yes\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 47\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(724, '::1', 'root', '2017-03-13 16:46:17', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(725, '::1', 'root', '2017-03-13 16:46:18', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Delete employee\n    [2] => modules/Registrar/employee/delete_employee.php\n    [3] => Delete Employee\n    [4] => \n    [5] => 7\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 48\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(726, '::1', 'root', '2017-03-13 16:46:21', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(727, '::1', 'root', '2017-03-13 16:46:21', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Add refempfamily\n    [2] => modules/Registrar/employee_family/add_refempfamily.php\n    [3] => Add Refempfamily\n    [4] => \n    [5] => 7\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 73\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(728, '::1', 'root', '2017-03-13 16:46:28', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(729, '::1', 'root', '2017-03-13 16:46:28', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Edit refempfamily\n    [2] => modules/Registrar/employee_family/edit_refempfamily.php\n    [3] => Edit Refempfamily\n    [4] => \n    [5] => 7\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 74\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(730, '::1', 'root', '2017-03-13 16:46:33', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(731, '::1', 'root', '2017-03-13 16:46:33', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => View refempfamily\n    [2] => modules/Registrar/employee_family/listview_refempfamily.php\n    [3] => Refempfamily\n    [4] => \n    [5] => 7\n    [6] => Yes\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 75\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(732, '::1', 'root', '2017-03-13 16:46:37', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(733, '::1', 'root', '2017-03-13 16:46:37', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Delete refempfamily\n    [2] => modules/Registrar/employee_family/delete_refempfamily.php\n    [3] => Delete Refempfamily\n    [4] => \n    [5] => 7\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 76\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(734, '::1', 'root', '2017-03-13 16:47:01', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(735, '::1', 'root', '2017-03-13 16:47:01', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Add dept\n    [2] => modules/Registrar/department/add_dept.php\n    [3] => Add Dept\n    [4] => \n    [5] => 5\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 37\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(736, '::1', 'root', '2017-03-13 16:47:05', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(737, '::1', 'root', '2017-03-13 16:47:05', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Edit dept\n    [2] => modules/Registrar/department/edit_dept.php\n    [3] => Edit Dept\n    [4] => \n    [5] => 5\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 38\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(738, '::1', 'root', '2017-03-13 16:47:08', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(739, '::1', 'root', '2017-03-13 16:47:08', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => View dept\n    [2] => modules/Registrar/department/listview_dept.php\n    [3] => Dept\n    [4] => \n    [5] => 5\n    [6] => Yes\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 39\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(740, '::1', 'root', '2017-03-13 16:47:10', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(741, '::1', 'root', '2017-03-13 16:47:10', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Delete dept\n    [2] => modules/Registrar/department/delete_dept.php\n    [3] => Delete Dept\n    [4] => \n    [5] => 5\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 40\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(742, '::1', 'root', '2017-03-13 16:47:24', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(743, '::1', 'root', '2017-03-13 16:47:24', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Add refstudentclearance\n    [2] => modules/Registrar/clearance/add_refstudentclearance.php\n    [3] => Add Refstudentclearance\n    [4] => \n    [5] => 5\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 81\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(744, '::1', 'root', '2017-03-13 16:47:27', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(745, '::1', 'root', '2017-03-13 16:47:27', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Edit refstudentclearance\n    [2] => modules/Registrar/clearance/edit_refstudentclearance.php\n    [3] => Edit Refstudentclearance\n    [4] => \n    [5] => 5\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 82\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(746, '::1', 'root', '2017-03-13 16:47:29', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(747, '::1', 'root', '2017-03-13 16:47:30', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => View refstudentclearance\n    [2] => modules/Registrar/clearance/listview_refstudentclearance.php\n    [3] => Refstudentclearance\n    [4] => \n    [5] => 5\n    [6] => Yes\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 83\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(748, '::1', 'root', '2017-03-13 16:47:32', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(749, '::1', 'root', '2017-03-13 16:47:32', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Delete refstudentclearance\n    [2] => modules/Registrar/clearance/delete_refstudentclearance.php\n    [3] => Delete Refstudentclearance\n    [4] => \n    [5] => 5\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 84\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(750, '::1', 'root', '2017-03-13 16:47:43', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(751, '::1', 'root', '2017-03-13 16:47:43', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Add refsubjectofferingdtl\n    [2] => modules/Registrar/subject_offering_detail/add_refsubjectofferingdtl.php\n    [3] => Add Refsubjectofferingdtl\n    [4] => \n    [5] => 5\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 89\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(752, '::1', 'root', '2017-03-13 16:47:46', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(753, '::1', 'root', '2017-03-13 16:47:46', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Edit refsubjectofferingdtl\n    [2] => modules/Registrar/subject_offering_detail/edit_refsubjectofferingdtl.php\n    [3] => Edit Refsubjectofferingdtl\n    [4] => \n    [5] => 5\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 90\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(754, '::1', 'root', '2017-03-13 16:47:49', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(755, '::1', 'root', '2017-03-13 16:47:49', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => View refsubjectofferingdtl\n    [2] => modules/Registrar/subject_offering_detail/listview_refsubjectofferingdtl.php\n    [3] => Refsubjectofferingdtl\n    [4] => \n    [5] => 5\n    [6] => Yes\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 91\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(756, '::1', 'root', '2017-03-13 16:47:52', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(757, '::1', 'root', '2017-03-13 16:47:52', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Delete refsubjectofferingdtl\n    [2] => modules/Registrar/subject_offering_detail/delete_refsubjectofferingdtl.php\n    [3] => Delete Refsubjectofferingdtl\n    [4] => \n    [5] => 5\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 92\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(758, '::1', 'root', '2017-03-13 16:47:56', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(759, '::1', 'root', '2017-03-13 16:47:56', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Add refsubjectofferinghdr\n    [2] => modules/Registrar/subject_offering_header/add_refsubjectofferinghdr.php\n    [3] => Add Refsubjectofferinghdr\n    [4] => \n    [5] => 5\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 93\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(760, '::1', 'root', '2017-03-13 16:48:00', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(761, '::1', 'root', '2017-03-13 16:48:00', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => View refsubjectofferinghdr\n    [2] => modules/Registrar/subject_offering_header/listview_refsubjectofferinghdr.php\n    [3] => Refsubjectofferinghdr\n    [4] => \n    [5] => 5\n    [6] => Yes\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 95\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(762, '::1', 'root', '2017-03-13 16:48:04', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(763, '::1', 'root', '2017-03-13 16:48:04', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Edit refsubjectofferinghdr\n    [2] => modules/Registrar/subject_offering_header/edit_refsubjectofferinghdr.php\n    [3] => Edit Refsubjectofferinghdr\n    [4] => \n    [5] => 5\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 94\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(764, '::1', 'root', '2017-03-13 16:48:08', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(765, '::1', 'root', '2017-03-13 16:48:08', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Delete refsubjectofferinghdr\n    [2] => modules/Registrar/subject_offering_header/delete_refsubjectofferinghdr.php\n    [3] => Delete Refsubjectofferinghdr\n    [4] => \n    [5] => 5\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 96\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(766, '::1', 'root', '2017-03-13 16:48:11', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(767, '::1', 'root', '2017-03-13 16:48:11', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Add subject\n    [2] => modules/Registrar/subject/add_subject.php\n    [3] => Add Subject\n    [4] => \n    [5] => 5\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 101\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(768, '::1', 'root', '2017-03-13 16:48:15', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(769, '::1', 'root', '2017-03-13 16:48:15', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Edit subject\n    [2] => modules/Registrar/subject/edit_subject.php\n    [3] => Edit Subject\n    [4] => \n    [5] => 5\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 102\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(770, '::1', 'root', '2017-03-13 16:48:18', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(771, '::1', 'root', '2017-03-13 16:48:18', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => View subject\n    [2] => modules/Registrar/subject/listview_subject.php\n    [3] => Subject\n    [4] => \n    [5] => 5\n    [6] => Yes\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 103\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(772, '::1', 'root', '2017-03-13 16:48:22', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(773, '::1', 'root', '2017-03-13 16:48:22', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Delete subject\n    [2] => modules/Registrar/subject/delete_subject.php\n    [3] => Delete Subject\n    [4] => \n    [5] => 5\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 104\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(774, '::1', 'root', '2017-03-13 16:48:29', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(775, '::1', 'root', '2017-03-13 16:48:29', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Add term\n    [2] => modules/Registrar/term/add_term.php\n    [3] => Add Term\n    [4] => \n    [5] => 5\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 105\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(776, '::1', 'root', '2017-03-13 16:48:32', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(777, '::1', 'root', '2017-03-13 16:48:32', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Edit term\n    [2] => modules/Registrar/term/edit_term.php\n    [3] => Edit Term\n    [4] => \n    [5] => 5\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 106\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(778, '::1', 'root', '2017-03-13 16:48:36', 'Pressed cancel button', '/clinic/sysadmin/edit_user_links.php'),
(779, '::1', 'root', '2017-03-13 16:48:39', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(780, '::1', 'root', '2017-03-13 16:48:39', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => View term\n    [2] => modules/Registrar/term/listview_term.php\n    [3] => Term\n    [4] => \n    [5] => 5\n    [6] => Yes\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 107\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(781, '::1', 'root', '2017-03-13 16:48:44', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(782, '::1', 'root', '2017-03-13 16:48:44', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Delete term\n    [2] => modules/Registrar/term/delete_term.php\n    [3] => Delete Term\n    [4] => \n    [5] => 5\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 108\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(783, '::1', 'root', '2017-03-13 16:50:21', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(784, '::1', 'root', '2017-03-13 16:50:21', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Add refstudentfamily\n    [2] => modules/Registrar/student_family/add_refstudentfamily.php\n    [3] => Add Refstudentfamily\n    [4] => \n    [5] => 7\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 85\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(785, '::1', 'root', '2017-03-13 16:50:25', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(786, '::1', 'root', '2017-03-13 16:50:25', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Edit refstudentfamily\n    [2] => modules/Registrar/student_family/edit_refstudentfamily.php\n    [3] => Edit Refstudentfamily\n    [4] => \n    [5] => 7\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 86\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(787, '::1', 'root', '2017-03-13 16:50:30', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(788, '::1', 'root', '2017-03-13 16:50:30', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => View refstudentfamily\n    [2] => modules/Registrar/student_family/listview_refstudentfamily.php\n    [3] => Refstudentfamily\n    [4] => \n    [5] => 7\n    [6] => Yes\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 87\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(789, '::1', 'root', '2017-03-13 16:50:34', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(790, '::1', 'root', '2017-03-13 16:50:34', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Delete refstudentfamily\n    [2] => modules/Registrar/student_family/delete_refstudentfamily.php\n    [3] => Delete Refstudentfamily\n    [4] => \n    [5] => 7\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 88\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(791, '::1', 'root', '2017-03-13 16:50:49', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(792, '::1', 'root', '2017-03-13 16:50:50', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Add refstudent\n    [2] => modules/Registrar/student/add_refstudent.php\n    [3] => Add Refstudent\n    [4] => \n    [5] => 7\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 77\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(793, '::1', 'root', '2017-03-13 16:51:08', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(794, '::1', 'root', '2017-03-13 16:51:08', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Edit refstudent\n    [2] => modules/Registrar/student/edit_refstudent.php\n    [3] => Edit Refstudent\n    [4] => \n    [5] => 7\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 78\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(795, '::1', 'root', '2017-03-13 16:51:13', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(796, '::1', 'root', '2017-03-13 16:51:14', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => View refstudent\n    [2] => modules/Registrar/student/listview_refstudent.php\n    [3] => Refstudent\n    [4] => \n    [5] => 7\n    [6] => Yes\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 79\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(797, '::1', 'root', '2017-03-13 16:51:18', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(798, '::1', 'root', '2017-03-13 16:51:18', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Delete refstudent\n    [2] => modules/Registrar/student/delete_refstudent.php\n    [3] => Delete Refstudent\n    [4] => \n    [5] => 7\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 80\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(799, '::1', 'root', '2017-03-13 16:53:30', 'Pressed cancel button', '/clinic/sysadmin/detailview_user_links.php'),
(800, '::1', 'root', '2017-03-13 16:55:41', 'Query executed: DELETE FROM user_passport WHERE username=''root'' AND link_id IN (''97'',''98'',''99'',''100'',''109'',''110'',''111'',''112'')', '/clinic/sysadmin/set_user_passports.php'),
(801, '::1', 'root', '2017-03-13 16:55:41', 'Query executed: INSERT INTO user_passport(username, link_id) VALUES(''root'', ''97''),(''root'', ''109''),(''root'', ''100''),(''root'', ''112''),(''root'', ''98''),(''root'', ''110''),(''root'', ''99''),(''root'', ''111'')', '/clinic/sysadmin/set_user_passports.php'),
(802, '::1', 'root', '2017-03-13 16:55:41', 'Query executed: UPDATE user SET role_id=''0'' WHERE username=''root''', '/clinic/sysadmin/set_user_passports.php'),
(803, '::1', 'root', '2017-03-13 16:55:57', 'Query executed: DELETE FROM user_passport WHERE username=''root'' AND link_id IN (''37'',''38'',''39'',''40'',''81'',''82'',''83'',''84'',''89'',''90'',''91'',''92'',''93'',''94'',''95'',''96'',''101'',''102'',''103'',''104'',''105'',''106'',''107'',''108'')', '/clinic/sysadmin/set_user_passports.php'),
(804, '::1', 'root', '2017-03-13 16:55:57', 'Query executed: INSERT INTO user_passport(username, link_id) VALUES(''root'', ''37''),(''root'', ''81''),(''root'', ''89''),(''root'', ''93''),(''root'', ''101''),(''root'', ''105''),(''root'', ''40''),(''root'', ''84''),(''root'', ''92''),(''root'', ''96''),(''root'', ''104''),(''root'', ''108''),(''root'', ''39''),(''root'', ''38''),(''root'', ''82''),(''root'', ''90''),(''root'', ''94''),(''root'', ''102''),(''root'', ''106''),(''root'', ''83''),(''root'', ''91''),(''root'', ''95''),(''root'', ''103''),(''root'', ''107'')', '/clinic/sysadmin/set_user_passports.php'),
(805, '::1', 'root', '2017-03-13 16:55:57', 'Query executed: UPDATE user SET role_id=''0'' WHERE username=''root''', '/clinic/sysadmin/set_user_passports.php'),
(806, '::1', 'root', '2017-03-13 16:57:29', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(807, '::1', 'root', '2017-03-13 16:57:29', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Add Employee Family\n    [2] => modules/Registrar/employee_family/add_refempfamily.php\n    [3] => Add Employee Family\n    [4] => \n    [5] => 7\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 73\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(808, '::1', 'root', '2017-03-13 16:57:40', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(809, '::1', 'root', '2017-03-13 16:57:40', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Edit Employee Family\n    [2] => modules/Registrar/employee_family/edit_refempfamily.php\n    [3] => Edit Employee Family\n    [4] => \n    [5] => 7\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 74\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(810, '::1', 'root', '2017-03-13 16:57:52', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(811, '::1', 'root', '2017-03-13 16:57:52', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => View Employee Family\n    [2] => modules/Registrar/employee_family/listview_refempfamily.php\n    [3] => View Employee Family\n    [4] => \n    [5] => 7\n    [6] => Yes\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 75\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(812, '::1', 'root', '2017-03-13 16:58:24', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(813, '::1', 'root', '2017-03-13 16:58:24', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => view empfamily\n    [2] => modules/Registrar/employee_family/listview_refempfamily.php\n    [3] => view empfamily\n    [4] => \n    [5] => 7\n    [6] => Yes\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 75\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(814, '::1', 'root', '2017-03-13 16:59:03', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(815, '::1', 'root', '2017-03-13 16:59:03', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Refempfamily\n    [2] => modules/Registrar/employee_family/listview_refempfamily.php\n    [3] => Refempfamily\n    [4] => \n    [5] => 7\n    [6] => Yes\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 75\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(816, '::1', 'root', '2017-03-13 17:00:45', 'Pressed cancel button', '/clinic/sysadmin/edit_user_links.php'),
(817, '::1', 'root', '2017-03-13 17:02:09', 'Pressed cancel button', '/clinic/sysadmin/edit_user_links.php'),
(818, '::1', 'root', '2017-03-13 17:02:11', 'Pressed cancel button', '/clinic/sysadmin/edit_user_links.php'),
(819, '::1', 'root', '2017-03-13 17:02:19', 'Pressed cancel button', '/clinic/sysadmin/edit_user_links.php'),
(820, '::1', 'root', '2017-03-13 17:02:27', 'Pressed cancel button', '/clinic/sysadmin/edit_user_links.php'),
(821, '::1', 'root', '2017-03-13 17:04:28', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(822, '::1', 'root', '2017-03-13 17:04:28', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => View refstudent\n    [2] => modules/Registrar/student/listview_refstudent.php\n    [3] => Student\n    [4] => \n    [5] => 7\n    [6] => Yes\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 79\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(823, '::1', 'root', '2017-03-13 17:05:04', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(824, '::1', 'root', '2017-03-13 17:05:04', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => View refstudentfamily\n    [2] => modules/Registrar/student_family/listview_refstudentfamily.php\n    [3] => Student Family\n    [4] => \n    [5] => 7\n    [6] => Yes\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 87\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(825, '::1', 'root', '2017-03-13 17:05:33', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(826, '::1', 'root', '2017-03-13 17:05:33', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Refempfamily\n    [2] => modules/Registrar/employee_family/listview_refempfamily.php\n    [3] => Employee Family\n    [4] => \n    [5] => 7\n    [6] => Yes\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 75\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(827, '::1', 'root', '2017-03-13 17:06:01', 'Query executed: DELETE FROM user_passport WHERE username=''root'' AND link_id IN (''45'',''46'',''47'',''48'',''73'',''74'',''75'',''76'',''77'',''78'',''79'',''80'',''85'',''86'',''87'',''88'')', '/clinic/sysadmin/set_user_passports.php'),
(828, '::1', 'root', '2017-03-13 17:06:01', 'Query executed: INSERT INTO user_passport(username, link_id) VALUES(''root'', ''45''),(''root'', ''73''),(''root'', ''77''),(''root'', ''85''),(''root'', ''48''),(''root'', ''76''),(''root'', ''80''),(''root'', ''88''),(''root'', ''46''),(''root'', ''74''),(''root'', ''78''),(''root'', ''86''),(''root'', ''47''),(''root'', ''75''),(''root'', ''79''),(''root'', ''87'')', '/clinic/sysadmin/set_user_passports.php'),
(829, '::1', 'root', '2017-03-13 17:06:01', 'Query executed: UPDATE user SET role_id=''0'' WHERE username=''root''', '/clinic/sysadmin/set_user_passports.php'),
(830, '::1', 'root', '2017-03-13 17:06:42', 'Pressed cancel button', '/clinic/sysadmin/edit_user_links.php'),
(831, '::1', 'root', '2017-03-13 17:06:47', 'Pressed cancel button', '/clinic/sysadmin/edit_user_links.php'),
(832, '::1', 'root', '2017-03-13 17:07:00', 'Pressed cancel button', '/clinic/sysadmin/edit_user_links.php'),
(833, '::1', 'root', '2017-03-13 17:07:13', 'Pressed cancel button', '/clinic/sysadmin/edit_user_links.php'),
(834, '::1', 'root', '2017-03-13 17:08:53', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(835, '::1', 'root', '2017-03-13 17:08:53', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Add employee\n    [2] => modules/Registrar/employee/add_employee.php\n    [3] => Add Employee\n    [4] => \n    [5] => 7\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 45\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(836, '::1', 'root', '2017-03-13 17:09:00', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(837, '::1', 'root', '2017-03-13 17:09:00', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Edit Employee\n    [2] => modules/Registrar/employee/edit_employee.php\n    [3] => Edit Employee\n    [4] => \n    [5] => 7\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 46\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(838, '::1', 'root', '2017-03-13 17:09:39', 'Query executed: DELETE FROM user_passport WHERE username=''root'' AND link_id IN (''45'',''46'',''47'',''48'',''73'',''74'',''75'',''76'',''77'',''78'',''79'',''80'',''85'',''86'',''87'',''88'')', '/clinic/sysadmin/set_user_passports.php'),
(839, '::1', 'root', '2017-03-13 17:09:40', 'Query executed: INSERT INTO user_passport(username, link_id) VALUES(''root'', ''45''),(''root'', ''73''),(''root'', ''77''),(''root'', ''85''),(''root'', ''48''),(''root'', ''76''),(''root'', ''80''),(''root'', ''88''),(''root'', ''46''),(''root'', ''74''),(''root'', ''78''),(''root'', ''86''),(''root'', ''47''),(''root'', ''75''),(''root'', ''79''),(''root'', ''87'')', '/clinic/sysadmin/set_user_passports.php'),
(840, '::1', 'root', '2017-03-13 17:09:40', 'Query executed: UPDATE user SET role_id=''0'' WHERE username=''root''', '/clinic/sysadmin/set_user_passports.php'),
(841, '::1', 'root', '2017-03-13 17:12:52', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(842, '::1', 'root', '2017-03-13 17:12:52', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => View refempfamily\n    [2] => modules/Registrar/employee_family/listview_refempfamily.php\n    [3] => Employee Family\n    [4] => \n    [5] => 7\n    [6] => Yes\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 75\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(843, '::1', 'root', '2017-03-13 17:13:16', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(844, '::1', 'root', '2017-03-13 17:13:16', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Add refempfamily\n    [2] => modules/Registrar/employee_family/add_refempfamily.php\n    [3] => Add Employee Family\n    [4] => \n    [5] => 7\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 73\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(845, '::1', 'root', '2017-03-13 17:13:26', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(846, '::1', 'root', '2017-03-13 17:13:26', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Edit refempfamily\n    [2] => modules/Registrar/employee_family/edit_refempfamily.php\n    [3] => Edit Employee Family\n    [4] => \n    [5] => 7\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 74\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(847, '::1', 'root', '2017-03-13 17:14:42', 'Pressed submit button', '/clinic/modules/clinic/log_info/add_log_info.php'),
(848, '::1', 'root', '2017-03-13 17:14:51', 'Pressed cancel button', '/clinic/modules/clinic/log_info/add_log_info.php'),
(849, '::1', 'root', '2017-03-13 17:15:24', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(850, '::1', 'root', '2017-03-13 17:15:24', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => View dept\n    [2] => modules/Registrar/department/listview_dept.php\n    [3] => Department\n    [4] => \n    [5] => 5\n    [6] => Yes\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 39\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(851, '::1', 'root', '2017-03-13 17:15:44', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(852, '::1', 'root', '2017-03-13 17:15:44', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => View refstudentclearance\n    [2] => modules/Registrar/clearance/listview_refstudentclearance.php\n    [3] => Student Clearance\n    [4] => \n    [5] => 5\n    [6] => Yes\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 83\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(853, '::1', 'root', '2017-03-13 17:16:06', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(854, '::1', 'root', '2017-03-13 17:16:06', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => View refsubjectofferingdtl\n    [2] => modules/Registrar/subject_offering_detail/listview_refsubjectofferingdtl.php\n    [3] => Subject Offering Detail\n    [4] => \n    [5] => 5\n    [6] => Yes\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 91\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(855, '::1', 'root', '2017-03-13 17:16:21', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(856, '::1', 'root', '2017-03-13 17:16:21', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => View refsubjectofferinghdr\n    [2] => modules/Registrar/subject_offering_header/listview_refsubjectofferinghdr.php\n    [3] => Subject Offering Header\n    [4] => \n    [5] => 5\n    [6] => Yes\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 95\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(857, '::1', 'root', '2017-03-13 17:16:33', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(858, '::1', 'root', '2017-03-13 17:16:33', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => View xrefstudentschedule\n    [2] => modules/Registrar/student_schedule/listview_xrefstudentschedule.php\n    [3] => Student Schedule\n    [4] => \n    [5] => 4\n    [6] => Yes\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 111\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(859, '::1', 'root', '2017-03-13 17:19:56', 'Pressed cancel button', '/clinic/modules/clinic/log_info/add_log_info.php'),
(860, '::1', 'root', '2017-03-13 17:23:00', 'Pressed cancel button', '/clinic/modules/clinic/log_info/add_log_info.php'),
(861, '::1', 'root', '2017-03-13 17:23:36', 'Pressed cancel button', '/clinic/modules/clinic/log_info/add_log_info.php'),
(862, '::1', 'root', '2017-03-13 17:24:13', 'Pressed cancel button', '/clinic/modules/clinic/log_info/add_log_info.php'),
(863, '::1', 'root', '2017-03-13 17:24:37', 'Pressed cancel button', '/clinic/modules/clinic/log_info/add_log_info.php'),
(864, '::1', 'root', '2017-03-13 17:24:51', 'Pressed cancel button', '/clinic/modules/clinic/log_info/add_log_info.php'),
(865, '::1', 'root', '2017-03-13 17:25:22', 'Pressed cancel button', '/clinic/modules/clinic/log_info/add_log_info.php'),
(866, '::1', 'root', '2017-03-13 17:25:35', 'Pressed cancel button', '/clinic/modules/clinic/log_info/add_log_info.php'),
(867, '::1', 'root', '2017-03-13 17:27:05', 'Pressed cancel button', '/clinic/modules/clinic/log_info/add_log_info.php'),
(868, '::1', 'root', '2017-03-13 17:28:51', 'Pressed cancel button', '/clinic/modules/clinic/log_info/add_log_info.php'),
(869, '::1', 'root', '2017-03-13 17:29:08', 'Pressed cancel button', '/clinic/modules/clinic/log_info/add_log_info.php'),
(870, '::1', 'root', '2017-03-13 17:29:30', 'Pressed submit button', '/clinic/modules/clinic/log_info/add_log_info.php'),
(871, '::1', 'root', '2017-03-13 17:32:11', 'Pressed submit button', '/clinic/modules/clinic/log_info/add_log_info.php'),
(872, '::1', 'root', '2017-03-13 17:32:16', 'Pressed submit button', '/clinic/modules/clinic/log_info/add_log_info.php'),
(873, '::1', 'root', '2017-03-22 10:18:19', 'Logged in', '/clinic/login.php'),
(874, '::1', 'root', '2017-03-22 10:23:07', 'Pressed submit button', '/clinic/modules/Registrar/student/add_refstudent.php'),
(875, '::1', 'root', '2017-03-22 10:24:26', 'Pressed submit button', '/clinic/modules/Registrar/student/add_refstudent.php'),
(876, '::1', 'root', '2017-03-22 10:24:47', 'Pressed submit button', '/clinic/modules/Registrar/student/add_refstudent.php'),
(877, '::1', 'root', '2017-03-22 10:25:16', 'Pressed submit button', '/clinic/modules/Registrar/student/add_refstudent.php'),
(878, '::1', 'root', '2017-03-22 10:25:39', 'Pressed submit button', '/clinic/modules/Registrar/student/add_refstudent.php'),
(879, '::1', 'root', '2017-03-22 10:28:26', 'Pressed submit button', '/clinic/modules/Registrar/student/add_refstudent.php'),
(880, '::1', 'root', '2017-03-22 10:31:38', 'Pressed submit button', '/clinic/modules/Registrar/student/add_refstudent.php'),
(881, '::1', 'root', '2017-03-22 10:33:31', 'Pressed submit button', '/clinic/modules/Registrar/student/add_refstudent.php');
INSERT INTO `system_log` (`entry_id`, `ip_address`, `user`, `datetime`, `action`, `module`) VALUES
(882, '::1', 'root', '2017-03-22 10:33:31', 'Query Executed: INSERT INTO refstudent(student_id, student_last_name, student_first_name, student_middle_name, birth_date, birth_place, admission_date, entry_level, admission_credential, mail_grades_to, exit_level, nationality, gender, address, postal_code, tel_num, mobile_num, email, religion, civil_status, box_num) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => sssssssssssssssssssss\n    [1] => 2014-100450\n    [2] => Siccion\n    [3] => Justine Mark\n    [4] => D\n    [5] => 1997-03-18\n    [6] => Bacolod City\n    [7] => 2016-03-22\n    [8] => \n    [9] => \n    [10] => \n    [11] => \n    [12] => Filipino\n    [13] => Male\n    [14] => TEST\n    [15] => 1200\n    [16] => 2120120\n    [17] => 09267389182\n    [18] => justine.siccion@yahoo.com\n    [19] => Roman Catholic\n    [20] => Single\n    [21] => \n)\n', '/clinic/modules/Registrar/student/add_refstudent.php'),
(883, '::1', 'root', '2017-03-22 10:33:31', 'Query Executed: INSERT INTO refstudentfamily(family_id, student_id, relationship, name, email, email_status, address_type, address, postal_code, tel_num, mobile_num1, mobile_num2, attended) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => issssssssssss\n    [1] => \n    [2] => 2014-100450\n    [3] => Father\n    [4] => Roland Siccion\n    [5] => roland@gmail.com\n    [6] => Active\n    [7] => Home\n    [8] => test\n    [9] => 0923\n    [10] => 1231231\n    [11] => 21213102324\n    [12] => 32432424244\n    [13] => Yes\n)\n', '/clinic/modules/Registrar/student/add_refstudent.php'),
(884, '::1', 'root', '2017-03-22 10:37:04', 'Pressed submit button', '/clinic/modules/Registrar/student/add_refstudent.php'),
(885, '::1', 'root', '2017-03-22 10:37:04', 'Query Executed: INSERT INTO refstudent(student_id, student_last_name, student_first_name, student_middle_name, birth_date, birth_place, admission_date, entry_level, admission_credential, mail_grades_to, exit_level, nationality, gender, address, postal_code, tel_num, mobile_num, email, religion, civil_status, box_num) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => sssssssssssssssssssss\n    [1] => 2014-123112\n    [2] => Galdot\n    [3] => Gal\n    [4] => D\n    [5] => 2009-03-09\n    [6] => TEST\n    [7] => 2009-03-22\n    [8] => \n    [9] => \n    [10] => \n    [11] => \n    [12] => Filipino\n    [13] => Male\n    [14] => TEST.\n    [15] => 21312\n    [16] => 1232131\n    [17] => 12312312312\n    [18] => gal@gmail.com\n    [19] => Greek\n    [20] => Single\n    [21] => \n)\n', '/clinic/modules/Registrar/student/add_refstudent.php'),
(886, '::1', 'root', '2017-03-22 10:37:04', 'Query Executed: INSERT INTO refstudentfamily(family_id, student_id, relationship, name, email, email_status, address_type, address, postal_code, tel_num, mobile_num1, mobile_num2, attended) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => issssssssssss\n    [1] => \n    [2] => 2014-123112\n    [3] => Father\n    [4] => SAmple\n    [5] => sample@gmail.com\n    [6] => Active\n    [7] => Office\n    [8] => TEST.\n    [9] => 2121\n    [10] => 1243123\n    [11] => 23123213131\n    [12] => 13241241321\n    [13] => Yes\n)\n', '/clinic/modules/Registrar/student/add_refstudent.php'),
(887, '::1', 'root', '2017-03-22 10:45:36', 'Pressed submit button', '/clinic/modules/Registrar/student/add_refstudent.php'),
(888, '::1', 'root', '2017-03-22 10:46:00', 'Pressed submit button', '/clinic/modules/Registrar/student/add_refstudent.php'),
(889, '::1', 'root', '2017-03-22 10:46:00', 'Query Executed: INSERT INTO refstudent(student_id, student_last_name, student_first_name, student_middle_name, birth_date, birth_place, admission_date, entry_level, admission_credential, mail_grades_to, exit_level, nationality, gender, address, postal_code, tel_num, mobile_num, email, religion, civil_status, box_num) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => sssssssssssssssssssss\n    [1] => 2014-100353\n    [2] => Lavarro\n    [3] => Joshua\n    [4] => N\n    [5] => 2014-04-22\n    [6] => Pasay\n    [7] => 2017-03-22\n    [8] => \n    [9] => \n    [10] => \n    [11] => \n    [12] => Filipino\n    [13] => Male\n    [14] => askjnweiourhewuh\n    [15] => 12312\n    [16] => 1232131\n    [17] => 23532423424\n    [18] => josh@gmail.com\n    [19] => Roman Catholic\n    [20] => Single\n    [21] => \n)\n', '/clinic/modules/Registrar/student/add_refstudent.php'),
(890, '::1', 'root', '2017-03-22 10:46:00', 'Query Executed: INSERT INTO refstudentfamily(family_id, student_id, relationship, name, email, email_status, address_type, address, postal_code, tel_num, mobile_num1, mobile_num2, attended) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => issssssssssss\n    [1] => \n    [2] => 2014-100353\n    [3] => Mother\n    [4] => SAMPLE\n    [5] => SAMPLE@gmail.cpom\n    [6] => Active\n    [7] => Home\n    [8] => SAMPLE.\n    [9] => 1232\n    [10] => 1231231\n    [11] => 12213123213\n    [12] => 12312312\n    [13] => Yes\n)\n', '/clinic/modules/Registrar/student/add_refstudent.php'),
(891, '::1', 'root', '2017-03-22 10:48:20', 'Pressed submit button', '/clinic/modules/Registrar/employee/add_employee.php'),
(892, '::1', 'root', '2017-03-22 10:48:28', 'Pressed submit button', '/clinic/modules/Registrar/employee/add_employee.php'),
(893, '::1', 'root', '2017-03-22 10:48:38', 'Pressed submit button', '/clinic/modules/Registrar/employee/add_employee.php'),
(894, '::1', 'root', '2017-03-22 10:48:38', 'Query Executed: INSERT INTO employee(emp_id, emp_last_name, emp_first_name, emp_middle_name, email, emp_status, emp_group, address, postal_code, tel_num, mobile_num, hiring_date, resignation_date, gender, civil_status, birth_date, birth_place, religion, is_deleted, ATM_num, BDO_ATM_num, SSS_num, PhilHealth_num, TIN_num, PagIbig_num) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => ssssssissssssssssssssssss\n    [1] => 2014-12312\n    [2] => Abalon\n    [3] => Jonathan\n    [4] => D\n    [5] => jonathan@gmail.com\n    [6] => \n    [7] => \n    [8] => SAMPLE.\n    [9] => 2132\n    [10] => 2131231\n    [11] => 21321312312\n    [12] => 2012-03-22\n    [13] => 2017-03-22\n    [14] => Male\n    [15] => Single\n    [16] => 2017-03-22\n    [17] => Paranaque City\n    [18] => Roman Catholic\n    [19] => \n    [20] => \n    [21] => \n    [22] => \n    [23] => \n    [24] => \n    [25] => \n)\n', '/clinic/modules/Registrar/employee/add_employee.php'),
(895, '::1', 'root', '2017-03-22 10:48:38', 'Query Executed: INSERT INTO refempfamily(family_id, emp_id, relationship, name, email, email_status, address_type, address, postal_code, mobile_num1, tel_num, mobile_num2) VALUES(?,?,?,?,?,?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => isssssssssss\n    [1] => \n    [2] => 2014-12312\n    [3] => Mother\n    [4] => SAMPLE\n    [5] => SAMPLE@gmail.com\n    [6] => Active\n    [7] => Office\n    [8] => ewrewrewr\n    [9] => 1231\n    [10] => 12312312312\n    [11] => 1231231\n    [12] => 12312312312\n)\n', '/clinic/modules/Registrar/employee/add_employee.php'),
(896, '::1', 'root', '2017-03-22 10:50:58', 'Pressed submit button', '/clinic/modules/Registrar/employee/add_employee.php'),
(897, '::1', 'root', '2017-03-22 10:51:08', 'Pressed submit button', '/clinic/modules/Registrar/employee/add_employee.php'),
(898, '::1', 'root', '2017-03-22 10:51:28', 'Pressed submit button', '/clinic/modules/Registrar/employee/add_employee.php'),
(899, '::1', 'root', '2017-03-22 10:51:28', 'Query Executed: INSERT INTO employee(emp_id, emp_last_name, emp_first_name, emp_middle_name, email, emp_status, emp_group, address, postal_code, tel_num, mobile_num, hiring_date, resignation_date, gender, civil_status, birth_date, birth_place, religion, is_deleted, ATM_num, BDO_ATM_num, SSS_num, PhilHealth_num, TIN_num, PagIbig_num) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => ssssssissssssssssssssssss\n    [1] => 2014-21431\n    [2] => Dagaton\n    [3] => Aaron\n    [4] => S\n    [5] => dagaton@gmail.com\n    [6] => \n    [7] => \n    [8] => SAMPLE.\n    [9] => 1231\n    [10] => 1232131\n    [11] => 12312312312\n    [12] => 2014-04-18\n    [13] => 2015-04-21\n    [14] => Male\n    [15] => Single\n    [16] => 1995-03-19\n    [17] => Makati City\n    [18] => Roman Catholic\n    [19] => No\n    [20] => \n    [21] => \n    [22] => \n    [23] => \n    [24] => \n    [25] => \n)\n', '/clinic/modules/Registrar/employee/add_employee.php'),
(900, '::1', 'root', '2017-03-22 10:51:28', 'Query Executed: INSERT INTO refempfamily(family_id, emp_id, relationship, name, email, email_status, address_type, address, postal_code, mobile_num1, tel_num, mobile_num2) VALUES(?,?,?,?,?,?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => isssssssssss\n    [1] => \n    [2] => 2014-21431\n    [3] => Mother\n    [4] => SAMPLE\n    [5] => SAMPLE@gmail.com\n    [6] => Active\n    [7] => Office\n    [8] => saikdnfqoidnqwodin\n    [9] => 1231\n    [10] => 12312312312\n    [11] => 1231231\n    [12] => 12312321313\n)\n', '/clinic/modules/Registrar/employee/add_employee.php'),
(901, '::1', 'root', '2017-03-22 10:52:16', 'Pressed submit button', '/clinic/modules/Registrar/employee/edit_employee.php'),
(902, '::1', 'root', '2017-03-22 10:54:52', 'Pressed submit button', '/clinic/modules/Registrar/employee/edit_employee.php'),
(903, '::1', 'root', '2017-03-22 10:55:00', 'Pressed submit button', '/clinic/modules/Registrar/employee/edit_employee.php'),
(904, '::1', 'root', '2017-03-22 10:55:00', 'Query Executed: DELETE FROM refempfamily WHERE emp_id = ?\r\nArray\n(\n    [0] => s\n    [1] => 2014-21431\n)\n', '/clinic/modules/Registrar/employee/edit_employee.php'),
(905, '::1', 'root', '2017-03-22 10:55:00', 'Query Executed: INSERT INTO refempfamily(family_id, emp_id, relationship, name, email, email_status, address_type, address, postal_code, mobile_num1, tel_num, mobile_num2) VALUES(?,?,?,?,?,?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => isssssssssss\n    [1] => \n    [2] => 2014-21431\n    [3] => Mother\n    [4] => SAMPLE\n    [5] => SAMPLE@gmail.com\n    [6] => Active\n    [7] => Office\n    [8] => saikdnfqoidnqwodin\n    [9] => 1231\n    [10] => 12312312312\n    [11] => 1231231\n    [12] => 12312321313\n)\n', '/clinic/modules/Registrar/employee/edit_employee.php'),
(906, '::1', 'root', '2017-03-22 10:55:00', 'Query Executed: UPDATE employee SET emp_id = ?, emp_last_name = ?, emp_first_name = ?, emp_middle_name = ?, email = ?, emp_status = ?, emp_group = ?, address = ?, postal_code = ?, tel_num = ?, mobile_num = ?, hiring_date = ?, resignation_date = ?, gender = ?, civil_status = ?, birth_date = ?, birth_place = ?, religion = ?, is_deleted = ?, ATM_num = ?, BDO_ATM_num = ?, SSS_num = ?, PhilHealth_num = ?, TIN_num = ?, PagIbig_num = ? WHERE emp_id = ?\r\nArray\n(\n    [0] => ssssssisssssssssssssssssss\n    [1] => 2014-21431\n    [2] => Dagaton\n    [3] => Aaron\n    [4] => S.\n    [5] => dagaton@gmail.com\n    [6] => \n    [7] => 0\n    [8] => SAMPLE.\n    [9] => 1231\n    [10] => 1232131\n    [11] => 12312312312\n    [12] => 2014-04-18\n    [13] => 2015-04-21\n    [14] => Male\n    [15] => Single\n    [16] => 1995-03-19\n    [17] => Makati City\n    [18] => Roman Catholic\n    [19] => No\n    [20] => \n    [21] => \n    [22] => \n    [23] => \n    [24] => \n    [25] => \n    [26] => 2014-21431\n)\n', '/clinic/modules/Registrar/employee/edit_employee.php'),
(907, '::1', 'root', '2017-03-22 11:04:50', 'Logged out', '/clinic/end.php'),
(908, '::1', 'nurse', '2017-03-22 11:04:58', 'Logged in', '/clinic/login.php'),
(909, '::1', 'nurse', '2017-03-22 11:06:11', 'Logged out', '/clinic/end.php'),
(910, '::1', 'root', '2017-03-22 11:06:14', 'Logged in', '/clinic/login.php'),
(911, '::1', 'root', '2017-03-22 11:06:32', 'Query executed: DELETE FROM user_passport WHERE username=''nurse'' AND link_id IN (''41'',''42'',''43'',''44'',''49'',''50'',''51'',''52'',''53'',''54'',''55'',''56'',''57'',''58'',''59'',''60'',''61'',''62'',''63'',''64'',''69'',''70'',''71'',''72'')', '/clinic/sysadmin/set_user_passports.php'),
(912, '::1', 'root', '2017-03-22 11:06:32', 'Query executed: INSERT INTO user_passport(username, link_id) VALUES(''nurse'', ''41''),(''nurse'', ''49''),(''nurse'', ''53''),(''nurse'', ''57''),(''nurse'', ''69''),(''nurse'', ''42''),(''nurse'', ''50''),(''nurse'', ''54''),(''nurse'', ''58''),(''nurse'', ''62''),(''nurse'', ''70''),(''nurse'', ''43''),(''nurse'', ''51''),(''nurse'', ''59''),(''nurse'', ''63''),(''nurse'', ''71'')', '/clinic/sysadmin/set_user_passports.php'),
(913, '::1', 'root', '2017-03-22 11:06:32', 'Query executed: UPDATE user SET role_id=''0'' WHERE username=''nurse''', '/clinic/sysadmin/set_user_passports.php'),
(914, '::1', 'root', '2017-03-22 11:06:41', 'Query executed: DELETE FROM user_passport WHERE username=''doctor'' AND link_id IN (''41'',''42'',''43'',''44'',''49'',''50'',''51'',''52'',''53'',''54'',''55'',''56'',''57'',''58'',''59'',''60'',''61'',''62'',''63'',''64'',''69'',''70'',''71'',''72'')', '/clinic/sysadmin/set_user_passports.php'),
(915, '::1', 'root', '2017-03-22 11:06:41', 'Query executed: INSERT INTO user_passport(username, link_id) VALUES(''doctor'', ''49''),(''doctor'', ''53''),(''doctor'', ''57''),(''doctor'', ''69''),(''doctor'', ''50''),(''doctor'', ''54''),(''doctor'', ''58''),(''doctor'', ''43''),(''doctor'', ''51''),(''doctor'', ''59''),(''doctor'', ''63''),(''doctor'', ''71'')', '/clinic/sysadmin/set_user_passports.php'),
(916, '::1', 'root', '2017-03-22 11:06:41', 'Query executed: UPDATE user SET role_id=''0'' WHERE username=''doctor''', '/clinic/sysadmin/set_user_passports.php'),
(917, '::1', 'root', '2017-03-22 11:06:43', 'Logged out', '/clinic/end.php'),
(918, '::1', 'nurse', '2017-03-22 11:06:51', 'Logged in', '/clinic/login.php'),
(919, '::1', 'nurse', '2017-03-22 11:07:10', 'Logged out', '/clinic/end.php'),
(920, '::1', 'root', '2017-03-22 11:07:13', 'Logged in', '/clinic/login.php'),
(921, '::1', 'root', '2017-03-22 11:08:07', 'Pressed cancel button', '/clinic/modules/clinic/medicine_receiving/add_medicine_receiving.php'),
(922, '::1', 'root', '2017-03-22 11:17:44', 'Logged out', '/clinic/end.php'),
(923, '::1', 'nurse', '2017-03-22 11:17:59', 'Logged in', '/clinic/login.php'),
(924, '::1', 'nurse', '2017-03-22 11:45:46', 'Logged out', '/clinic/end.php'),
(925, '::1', 'root', '2017-03-22 11:45:50', 'Logged in', '/clinic/login.php'),
(926, '::1', 'root', '2017-03-22 11:46:17', 'Query executed: DELETE FROM user_passport WHERE username=''nurse'' AND link_id IN (''41'',''42'',''43'',''44'',''49'',''50'',''51'',''52'',''53'',''54'',''55'',''56'',''57'',''58'',''59'',''60'',''61'',''62'',''63'',''64'',''69'',''70'',''71'',''72'')', '/clinic/sysadmin/set_user_passports.php'),
(927, '::1', 'root', '2017-03-22 11:46:17', 'Query executed: INSERT INTO user_passport(username, link_id) VALUES(''nurse'', ''41''),(''nurse'', ''49''),(''nurse'', ''53''),(''nurse'', ''57''),(''nurse'', ''61''),(''nurse'', ''69''),(''nurse'', ''42''),(''nurse'', ''50''),(''nurse'', ''54''),(''nurse'', ''58''),(''nurse'', ''62''),(''nurse'', ''70''),(''nurse'', ''43''),(''nurse'', ''51''),(''nurse'', ''59''),(''nurse'', ''63''),(''nurse'', ''71'')', '/clinic/sysadmin/set_user_passports.php'),
(928, '::1', 'root', '2017-03-22 11:46:17', 'Query executed: UPDATE user SET role_id=''0'' WHERE username=''nurse''', '/clinic/sysadmin/set_user_passports.php'),
(929, '::1', 'root', '2017-03-22 11:46:30', 'Query executed: DELETE FROM user_passport WHERE username=''doctor'' AND link_id IN (''41'',''42'',''43'',''44'',''49'',''50'',''51'',''52'',''53'',''54'',''55'',''56'',''57'',''58'',''59'',''60'',''61'',''62'',''63'',''64'',''69'',''70'',''71'',''72'')', '/clinic/sysadmin/set_user_passports.php'),
(930, '::1', 'root', '2017-03-22 11:46:30', 'Query executed: INSERT INTO user_passport(username, link_id) VALUES(''doctor'', ''49''),(''doctor'', ''53''),(''doctor'', ''57''),(''doctor'', ''61''),(''doctor'', ''69''),(''doctor'', ''50''),(''doctor'', ''54''),(''doctor'', ''58''),(''doctor'', ''43''),(''doctor'', ''51''),(''doctor'', ''59''),(''doctor'', ''63''),(''doctor'', ''71'')', '/clinic/sysadmin/set_user_passports.php'),
(931, '::1', 'root', '2017-03-22 11:46:30', 'Query executed: UPDATE user SET role_id=''0'' WHERE username=''doctor''', '/clinic/sysadmin/set_user_passports.php'),
(932, '::1', 'root', '2017-03-22 11:46:32', 'Logged out', '/clinic/end.php'),
(933, '::1', 'nurse', '2017-03-22 11:46:38', 'Logged in', '/clinic/login.php'),
(934, '::1', 'nurse', '2017-03-22 11:47:13', 'Logged out', '/clinic/end.php'),
(935, '::1', 'root', '2017-03-22 11:47:17', 'Logged in', '/clinic/login.php'),
(936, '::1', 'root', '2017-03-22 11:47:37', 'Query executed: DELETE FROM user_passport WHERE username=''nurse'' AND link_id IN (''45'',''46'',''47'',''48'',''73'',''74'',''75'',''76'',''77'',''78'',''79'',''80'',''85'',''86'',''87'',''88'')', '/clinic/sysadmin/set_user_passports.php'),
(937, '::1', 'root', '2017-03-22 11:47:37', 'Query executed: INSERT INTO user_passport(username, link_id) VALUES(''nurse'', ''85''),(''nurse'', ''74''),(''nurse'', ''78''),(''nurse'', ''86''),(''nurse'', ''47''),(''nurse'', ''75''),(''nurse'', ''79''),(''nurse'', ''87'')', '/clinic/sysadmin/set_user_passports.php'),
(938, '::1', 'root', '2017-03-22 11:47:37', 'Query executed: UPDATE user SET role_id=''0'' WHERE username=''nurse''', '/clinic/sysadmin/set_user_passports.php'),
(939, '::1', 'root', '2017-03-22 11:47:45', 'Query executed: DELETE FROM user_passport WHERE username=''doctor'' AND link_id IN (''45'',''46'',''47'',''48'',''73'',''74'',''75'',''76'',''77'',''78'',''79'',''80'',''85'',''86'',''87'',''88'')', '/clinic/sysadmin/set_user_passports.php'),
(940, '::1', 'root', '2017-03-22 11:47:45', 'Query executed: INSERT INTO user_passport(username, link_id) VALUES(''doctor'', ''85''),(''doctor'', ''86''),(''doctor'', ''47''),(''doctor'', ''75''),(''doctor'', ''79''),(''doctor'', ''87'')', '/clinic/sysadmin/set_user_passports.php'),
(941, '::1', 'root', '2017-03-22 11:47:45', 'Query executed: UPDATE user SET role_id=''0'' WHERE username=''doctor''', '/clinic/sysadmin/set_user_passports.php'),
(942, '::1', 'root', '2017-03-22 11:47:48', 'Logged out', '/clinic/end.php'),
(943, '::1', 'nurse', '2017-03-22 11:47:52', 'Logged in', '/clinic/login.php'),
(944, '::1', 'nurse', '2017-03-22 11:48:25', 'Logged out', '/clinic/end.php'),
(945, '::1', 'root', '2017-03-22 11:48:30', 'Logged in', '/clinic/login.php'),
(946, '::1', 'root', '2017-03-22 11:48:49', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(947, '::1', 'root', '2017-03-22 11:48:49', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => View emergencycase\n    [2] => modules/Clinic/emergency_case/listview_emergencycase.php\n    [3] => Emergenc ycase\n    [4] => \n    [5] => 3\n    [6] => Yes\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 43\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(948, '::1', 'root', '2017-03-22 11:49:14', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(949, '::1', 'root', '2017-03-22 11:49:14', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => View emergencycase\n    [2] => modules/Clinic/emergency_case/listview_emergencycase.php\n    [3] => Emergency case\n    [4] => \n    [5] => 3\n    [6] => Yes\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 43\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(950, '::1', 'root', '2017-03-22 11:49:20', 'Logged out', '/clinic/end.php'),
(951, '::1', 'nurse', '2017-03-22 11:49:34', 'Logged in', '/clinic/login.php'),
(952, '::1', 'nurse', '2017-03-22 14:01:52', 'Logged out', '/clinic/end.php'),
(953, '::1', 'root', '2017-03-22 14:01:55', 'Logged in', '/clinic/login.php'),
(954, '::1', 'root', '2017-03-22 14:06:05', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(955, '::1', 'root', '2017-03-22 14:06:05', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => View medicine\n    [2] => modules/clinic/medicine/listview_medicine.php\n    [3] => Medical Supplies\n    [4] => \n    [5] => 3\n    [6] => Yes\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 63\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(956, '::1', 'root', '2017-03-22 14:06:56', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(957, '::1', 'root', '2017-03-22 14:06:56', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => View medicine receiving\n    [2] => modules/clinic/medicine_receiving/listview_medicine_receiving.php\n    [3] => Medical Supplies Receiving\n    [4] => \n    [5] => 3\n    [6] => Yes\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 71\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(958, '::1', 'root', '2017-03-22 14:14:59', 'Pressed cancel button', '/clinic/modules/clinic/medicine/detailview_medicine.php'),
(959, '::1', 'root', '2017-03-22 14:31:33', 'Pressed submit button', '/clinic/sysadmin/add_user_links.php'),
(960, '::1', 'root', '2017-03-22 14:31:33', 'Query Executed: INSERT INTO user_links(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, status, icon, priority) VALUES(?,?,?,?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => issssisssi\n    [1] => \n    [2] => Current Quantity\n    [3] => modules/Clinic/medicine/current.php\n    [4] => Current Quantity\n    [5] => Current Quantity of the medicine\n    [6] => 3\n    [7] => No\n    [8] => On\n    [9] => blue_folder3.png\n    [10] => 0\n)\n', '/clinic/sysadmin/add_user_links.php'),
(961, '::1', 'root', '2017-03-22 14:32:13', 'Query executed: DELETE FROM user_role_links WHERE role_id=''1'' AND link_id IN (''41'',''42'',''43'',''44'',''49'',''50'',''51'',''52'',''53'',''54'',''55'',''56'',''57'',''58'',''59'',''60'',''61'',''62'',''63'',''64'',''69'',''70'',''71'',''72'',''113'')', '/clinic/sysadmin/role_permissions.php'),
(962, '::1', 'root', '2017-03-22 14:32:13', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''41'')', '/clinic/sysadmin/role_permissions.php'),
(963, '::1', 'root', '2017-03-22 14:32:13', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''49'')', '/clinic/sysadmin/role_permissions.php'),
(964, '::1', 'root', '2017-03-22 14:32:13', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''53'')', '/clinic/sysadmin/role_permissions.php'),
(965, '::1', 'root', '2017-03-22 14:32:13', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''57'')', '/clinic/sysadmin/role_permissions.php'),
(966, '::1', 'root', '2017-03-22 14:32:13', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''61'')', '/clinic/sysadmin/role_permissions.php'),
(967, '::1', 'root', '2017-03-22 14:32:13', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''69'')', '/clinic/sysadmin/role_permissions.php'),
(968, '::1', 'root', '2017-03-22 14:32:13', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''113'')', '/clinic/sysadmin/role_permissions.php'),
(969, '::1', 'root', '2017-03-22 14:32:13', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''44'')', '/clinic/sysadmin/role_permissions.php'),
(970, '::1', 'root', '2017-03-22 14:32:13', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''52'')', '/clinic/sysadmin/role_permissions.php'),
(971, '::1', 'root', '2017-03-22 14:32:13', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''56'')', '/clinic/sysadmin/role_permissions.php'),
(972, '::1', 'root', '2017-03-22 14:32:13', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''60'')', '/clinic/sysadmin/role_permissions.php'),
(973, '::1', 'root', '2017-03-22 14:32:13', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''64'')', '/clinic/sysadmin/role_permissions.php'),
(974, '::1', 'root', '2017-03-22 14:32:13', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''72'')', '/clinic/sysadmin/role_permissions.php'),
(975, '::1', 'root', '2017-03-22 14:32:13', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''42'')', '/clinic/sysadmin/role_permissions.php'),
(976, '::1', 'root', '2017-03-22 14:32:13', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''50'')', '/clinic/sysadmin/role_permissions.php'),
(977, '::1', 'root', '2017-03-22 14:32:13', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''54'')', '/clinic/sysadmin/role_permissions.php'),
(978, '::1', 'root', '2017-03-22 14:32:13', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''58'')', '/clinic/sysadmin/role_permissions.php'),
(979, '::1', 'root', '2017-03-22 14:32:13', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''62'')', '/clinic/sysadmin/role_permissions.php'),
(980, '::1', 'root', '2017-03-22 14:32:14', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''70'')', '/clinic/sysadmin/role_permissions.php'),
(981, '::1', 'root', '2017-03-22 14:32:14', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''43'')', '/clinic/sysadmin/role_permissions.php'),
(982, '::1', 'root', '2017-03-22 14:32:14', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''51'')', '/clinic/sysadmin/role_permissions.php'),
(983, '::1', 'root', '2017-03-22 14:32:14', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''55'')', '/clinic/sysadmin/role_permissions.php'),
(984, '::1', 'root', '2017-03-22 14:32:14', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''59'')', '/clinic/sysadmin/role_permissions.php'),
(985, '::1', 'root', '2017-03-22 14:32:14', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''63'')', '/clinic/sysadmin/role_permissions.php'),
(986, '::1', 'root', '2017-03-22 14:32:14', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''71'')', '/clinic/sysadmin/role_permissions.php'),
(987, '::1', 'root', '2017-03-22 14:32:26', 'Pressed cancel button', '/clinic/sysadmin/role_permissions_cascade.php'),
(988, '::1', 'root', '2017-03-22 14:32:43', 'Pressed submit button', '/clinic/sysadmin/edit_user.php'),
(989, '::1', 'root', '2017-03-22 14:32:43', 'Query Executed: UPDATE user SET username = ?, person_id = ?, role_id = ?, skin_id = ? WHERE username = ?\r\nArray\n(\n    [0] => siiis\n    [1] => root\n    [2] => 1\n    [3] => 1\n    [4] => 1\n    [5] => root\n)\n', '/clinic/sysadmin/edit_user.php'),
(990, '::1', 'root', '2017-03-22 14:32:44', 'Query executed: DELETE FROM user_passport WHERE username = ''root''', '/clinic/sysadmin/edit_user.php'),
(991, '::1', 'root', '2017-03-22 14:32:44', 'Query executed: INSERT `user_passport` SELECT ''root'', `link_id` FROM user_role_links WHERE role_id=''1''', '/clinic/sysadmin/edit_user.php'),
(992, '::1', 'root', '2017-03-22 14:32:49', 'Query executed: DELETE FROM user_passport WHERE username IN (''root'')', '/clinic/sysadmin/role_permissions_cascade.php'),
(993, '::1', 'root', '2017-03-22 14:32:49', 'Query executed: INSERT `user_passport` SELECT ''root'', `link_id` FROM user_role_links WHERE role_id=''1''', '/clinic/sysadmin/role_permissions_cascade.php'),
(994, '::1', 'root', '2017-03-22 14:32:50', 'Pressed cancel button', '/clinic/sysadmin/role_permissions_cascade.php'),
(995, '::1', 'root', '2017-03-22 14:43:15', 'Query executed: SELECT * FROM medicine_receiving', '/clinic/modules/clinic/medicine/current.php'),
(996, '::1', 'root', '2017-03-22 14:46:00', 'Query executed: SELECT * FROM medicine_receiving', '/clinic/modules/clinic/medicine/current.php'),
(997, '::1', 'root', '2017-03-22 14:46:12', 'Query executed: SELECT * FROM medicine_receiving', '/clinic/modules/clinic/medicine/current.php'),
(998, '::1', 'root', '2017-03-22 14:46:25', 'Query executed: SELECT * FROM medicine_receiving', '/clinic/modules/clinic/medicine/current.php'),
(999, '::1', 'root', '2017-03-22 14:48:09', 'Query executed: SELECT * FROM medicine_receiving WHERE medicine_id = 1', '/clinic/modules/clinic/medicine/current.php'),
(1000, '::1', 'root', '2017-03-22 14:49:59', 'Pressed submit button', '/clinic/modules/clinic/medicine_receiving/add_medicine_receiving.php'),
(1001, '::1', 'root', '2017-03-22 14:49:59', 'Query Executed: INSERT INTO medicine_receiving(medicine_count_id, medicine_id, qty, date, type) VALUES(?,?,?,?,?)\r\nArray\n(\n    [0] => iiiss\n    [1] => \n    [2] => 1\n    [3] => 50\n    [4] => 2017-03-22\n    [5] => Delivery\n)\n', '/clinic/modules/clinic/medicine_receiving/add_medicine_receiving.php'),
(1002, '::1', 'root', '2017-03-22 14:50:10', 'Pressed submit button', '/clinic/modules/clinic/medicine_receiving/add_medicine_receiving.php'),
(1003, '::1', 'root', '2017-03-22 14:50:10', 'Query Executed: INSERT INTO medicine_receiving(medicine_count_id, medicine_id, qty, date, type) VALUES(?,?,?,?,?)\r\nArray\n(\n    [0] => iiiss\n    [1] => \n    [2] => 1\n    [3] => 10\n    [4] => 2017-03-22\n    [5] => Delivery\n)\n', '/clinic/modules/clinic/medicine_receiving/add_medicine_receiving.php'),
(1004, '::1', 'root', '2017-03-22 14:50:28', 'Query executed: SELECT * FROM medicine_receiving WHERE medicine_id = 1', '/clinic/modules/clinic/medicine/current.php'),
(1005, '::1', 'root', '2017-03-22 14:54:47', 'Query executed: SELECT sum("qty") FROM medicine_receiving LEFT JOIN medicine ON medicine_receiving.medicine_id = medicine.medicine_id WHERE medicine_receiving.medicine_id = 1', '/clinic/modules/clinic/medicine/current.php'),
(1006, '::1', 'root', '2017-03-22 14:56:10', 'Query executed: SELECT sum(qty) FROM medicine_receiving LEFT JOIN medicine ON medicine_receiving.medicine_id = medicine.medicine_id WHERE medicine_receiving.medicine_id = 1', '/clinic/modules/clinic/medicine/current.php'),
(1007, '::1', 'root', '2017-03-22 14:56:29', 'Query executed: SELECT sum(qty) as ''current_status'' FROM medicine_receiving LEFT JOIN medicine ON medicine_receiving.medicine_id = medicine.medicine_id WHERE medicine_receiving.medicine_id = 1', '/clinic/modules/clinic/medicine/current.php'),
(1008, '::1', 'root', '2017-03-22 14:56:45', 'Query executed: SELECT sum(qty) as ''current_status'',medicine_name FROM medicine_receiving LEFT JOIN medicine ON medicine_receiving.medicine_id = medicine.medicine_id WHERE medicine_receiving.medicine_id = 1', '/clinic/modules/clinic/medicine/current.php'),
(1009, '::1', 'root', '2017-03-22 14:58:24', 'Query executed: SELECT sum(qty) as ''current_status'',medicine_name FROM medicine_receiving LEFT JOIN medicine ON medicine_receiving.medicine_id = medicine.medicine_id WHERE medicine_receiving.medicine_id = 1', '/clinic/modules/clinic/medicine/current.php'),
(1010, '::1', 'root', '2017-03-22 15:00:10', 'Query executed: SELECT sum(qty) as ''current_status'',medicine_name FROM medicine_receiving LEFT JOIN medicine ON medicine_receiving.medicine_id = medicine.medicine_id WHERE medicine_receiving.medicine_id = 1', '/clinic/modules/clinic/medicine/current.php'),
(1011, '::1', 'root', '2017-03-22 15:00:21', 'Query executed: SELECT sum(qty) as ''current_status'',medicine_name FROM medicine_receiving LEFT JOIN medicine ON medicine_receiving.medicine_id = medicine.medicine_id WHERE medicine_receiving.medicine_id = 1', '/clinic/modules/clinic/medicine/current.php'),
(1012, '::1', 'root', '2017-03-22 15:06:41', 'Query executed: SELECT sum(qty) as ''current_status'',medicine_name FROM medicine_receiving LEFT JOIN medicine ON medicine_receiving.medicine_id = medicine.medicine_id WHERE medicine_receiving.medicine_id = 1', '/clinic/modules/clinic/medicine/current.php'),
(1013, '::1', 'root', '2017-03-22 15:06:59', 'Query executed: SELECT sum(qty) as ''current_status'',medicine_name FROM medicine_receiving LEFT JOIN medicine ON medicine_receiving.medicine_id = medicine.medicine_id WHERE medicine_receiving.medicine_id = 1', '/clinic/modules/clinic/medicine/current.php'),
(1014, '::1', 'root', '2017-03-22 15:06:59', 'Query executed: SELECT sum(qty) as ''current_status'' FROM log_detail WHERE medicine_id = 1', '/clinic/modules/clinic/medicine/current.php'),
(1015, '::1', 'root', '2017-03-22 15:09:51', 'Query executed: SELECT sum(qty) as ''current_status'',medicine_name FROM medicine_receiving LEFT JOIN medicine ON medicine_receiving.medicine_id = medicine.medicine_id WHERE medicine_receiving.medicine_id = 1', '/clinic/modules/clinic/medicine/current.php'),
(1016, '::1', 'root', '2017-03-22 15:09:51', 'Query executed: SELECT sum(qty) as ''current_status'' FROM log_detail WHERE medicine_id = 1', '/clinic/modules/clinic/medicine/current.php'),
(1017, '::1', 'root', '2017-03-22 15:10:07', 'Query executed: SELECT sum(qty) as ''current_status'',medicine_name FROM medicine_receiving LEFT JOIN medicine ON medicine_receiving.medicine_id = medicine.medicine_id WHERE medicine_receiving.medicine_id = 2', '/clinic/modules/clinic/medicine/current.php'),
(1018, '::1', 'root', '2017-03-22 15:10:07', 'Query executed: SELECT sum(qty) as ''current_status'' FROM log_detail WHERE medicine_id = 2', '/clinic/modules/clinic/medicine/current.php'),
(1019, '::1', 'root', '2017-03-22 15:10:13', 'Query executed: SELECT sum(qty) as ''current_status'',medicine_name FROM medicine_receiving LEFT JOIN medicine ON medicine_receiving.medicine_id = medicine.medicine_id WHERE medicine_receiving.medicine_id = 3', '/clinic/modules/clinic/medicine/current.php'),
(1020, '::1', 'root', '2017-03-22 15:10:13', 'Query executed: SELECT sum(qty) as ''current_status'' FROM log_detail WHERE medicine_id = 3', '/clinic/modules/clinic/medicine/current.php'),
(1021, '::1', 'root', '2017-03-22 15:10:30', 'Query executed: SELECT sum(qty) as ''current_status'',medicine_name FROM medicine_receiving LEFT JOIN medicine ON medicine_receiving.medicine_id = medicine.medicine_id WHERE medicine_receiving.medicine_id = 4', '/clinic/modules/clinic/medicine/current.php'),
(1022, '::1', 'root', '2017-03-22 15:10:30', 'Query executed: SELECT sum(qty) as ''current_status'' FROM log_detail WHERE medicine_id = 4', '/clinic/modules/clinic/medicine/current.php'),
(1023, '::1', 'root', '2017-03-22 15:12:40', 'Query executed: SELECT sum(qty) as ''current_status'',medicine_name FROM medicine_receiving LEFT JOIN medicine ON medicine_receiving.medicine_id = medicine.medicine_id WHERE medicine_receiving.medicine_id = 1', '/clinic/modules/clinic/medicine/current.php'),
(1024, '::1', 'root', '2017-03-22 15:12:40', 'Query executed: SELECT sum(qty) as ''current_status'' FROM log_detail WHERE medicine_id = 1', '/clinic/modules/clinic/medicine/current.php'),
(1025, '::1', 'root', '2017-03-22 15:17:46', 'Query executed: SELECT sum(qty) as ''current_status'',medicine_name FROM medicine_receiving LEFT JOIN medicine ON medicine_receiving.medicine_id = medicine.medicine_id WHERE medicine_receiving.medicine_id = 1', '/clinic/modules/clinic/medicine/current.php'),
(1026, '::1', 'root', '2017-03-22 15:17:46', 'Query executed: SELECT sum(qty) as ''current_status'' FROM log_detail WHERE medicine_id = 1', '/clinic/modules/clinic/medicine/current.php'),
(1027, '::1', 'root', '2017-03-22 15:18:39', 'Query executed: SELECT sum(qty) as ''current_status'',medicine_name FROM medicine_receiving LEFT JOIN medicine ON medicine_receiving.medicine_id = medicine.medicine_id WHERE medicine_receiving.medicine_id = 1', '/clinic/modules/clinic/medicine/current.php'),
(1028, '::1', 'root', '2017-03-22 15:18:39', 'Query executed: SELECT sum(qty) as ''current_status'' FROM log_detail WHERE medicine_id = 1', '/clinic/modules/clinic/medicine/current.php'),
(1029, '::1', 'root', '2017-03-22 15:19:10', 'Query executed: SELECT sum(qty) as ''current_status'',medicine_name FROM medicine_receiving LEFT JOIN medicine ON medicine_receiving.medicine_id = medicine.medicine_id WHERE medicine_receiving.medicine_id = 1', '/clinic/modules/clinic/medicine/current.php'),
(1030, '::1', 'root', '2017-03-22 15:19:10', 'Query executed: SELECT sum(qty) as ''current_status'' FROM log_detail WHERE medicine_id = 1', '/clinic/modules/clinic/medicine/current.php'),
(1031, '::1', 'root', '2017-03-22 15:20:00', 'Query executed: SELECT sum(qty) as ''current_status'',medicine_name FROM medicine_receiving LEFT JOIN medicine ON medicine_receiving.medicine_id = medicine.medicine_id WHERE medicine_receiving.medicine_id = 2', '/clinic/modules/clinic/medicine/current.php'),
(1032, '::1', 'root', '2017-03-22 15:20:00', 'Query executed: SELECT sum(qty) as ''current_status'' FROM log_detail WHERE medicine_id = 2', '/clinic/modules/clinic/medicine/current.php'),
(1033, '::1', 'root', '2017-03-22 15:20:04', 'Pressed cancel button', '/clinic/modules/clinic/medicine/current.php'),
(1034, '::1', 'root', '2017-03-22 15:20:33', 'Query executed: SELECT sum(qty) as ''current_status'',medicine_name FROM medicine_receiving LEFT JOIN medicine ON medicine_receiving.medicine_id = medicine.medicine_id WHERE medicine_receiving.medicine_id = 1', '/clinic/modules/clinic/medicine/current.php'),
(1035, '::1', 'root', '2017-03-22 15:20:33', 'Query executed: SELECT sum(qty) as ''current_status'' FROM log_detail WHERE medicine_id = 1', '/clinic/modules/clinic/medicine/current.php'),
(1036, '::1', 'root', '2017-03-22 15:20:37', 'Pressed cancel button', '/clinic/modules/clinic/medicine/current.php'),
(1037, '::1', 'root', '2017-03-22 15:20:51', 'Query executed: SELECT sum(qty) as ''current_status'',medicine_name FROM medicine_receiving LEFT JOIN medicine ON medicine_receiving.medicine_id = medicine.medicine_id WHERE medicine_receiving.medicine_id = 1', '/clinic/modules/clinic/medicine/current.php'),
(1038, '::1', 'root', '2017-03-22 15:20:51', 'Query executed: SELECT sum(qty) as ''current_status'' FROM log_detail WHERE medicine_id = 1', '/clinic/modules/clinic/medicine/current.php'),
(1039, '::1', 'root', '2017-03-22 15:20:52', 'Pressed cancel button', '/clinic/modules/clinic/medicine/current.php'),
(1040, '::1', 'root', '2017-03-22 15:20:55', 'Query executed: SELECT sum(qty) as ''current_status'',medicine_name FROM medicine_receiving LEFT JOIN medicine ON medicine_receiving.medicine_id = medicine.medicine_id WHERE medicine_receiving.medicine_id = 1', '/clinic/modules/clinic/medicine/current.php'),
(1041, '::1', 'root', '2017-03-22 15:20:55', 'Query executed: SELECT sum(qty) as ''current_status'' FROM log_detail WHERE medicine_id = 1', '/clinic/modules/clinic/medicine/current.php'),
(1042, '::1', 'root', '2017-03-22 15:21:19', 'Query executed: SELECT sum(qty) as ''current_status'',medicine_name FROM medicine_receiving LEFT JOIN medicine ON medicine_receiving.medicine_id = medicine.medicine_id WHERE medicine_receiving.medicine_id = 1', '/clinic/modules/clinic/medicine/current.php'),
(1043, '::1', 'root', '2017-03-22 15:21:19', 'Query executed: SELECT sum(qty) as ''current_status'' FROM log_detail WHERE medicine_id = 1', '/clinic/modules/clinic/medicine/current.php'),
(1044, '::1', 'root', '2017-03-22 15:21:23', 'Pressed cancel button', '/clinic/modules/clinic/medicine/current.php'),
(1045, '::1', 'root', '2017-03-22 15:21:25', 'Query executed: SELECT sum(qty) as ''current_status'',medicine_name FROM medicine_receiving LEFT JOIN medicine ON medicine_receiving.medicine_id = medicine.medicine_id WHERE medicine_receiving.medicine_id = 5', '/clinic/modules/clinic/medicine/current.php'),
(1046, '::1', 'root', '2017-03-22 15:21:25', 'Query executed: SELECT sum(qty) as ''current_status'' FROM log_detail WHERE medicine_id = 5', '/clinic/modules/clinic/medicine/current.php'),
(1047, '::1', 'root', '2017-03-22 15:21:26', 'Pressed cancel button', '/clinic/modules/clinic/medicine/current.php'),
(1048, '::1', 'root', '2017-03-22 15:21:45', 'Query executed: SELECT sum(qty) as ''current_status'',medicine_name FROM medicine_receiving LEFT JOIN medicine ON medicine_receiving.medicine_id = medicine.medicine_id WHERE medicine_receiving.medicine_id = 4', '/clinic/modules/clinic/medicine/current.php'),
(1049, '::1', 'root', '2017-03-22 15:21:46', 'Query executed: SELECT sum(qty) as ''current_status'' FROM log_detail WHERE medicine_id = 4', '/clinic/modules/clinic/medicine/current.php'),
(1050, '::1', 'root', '2017-03-22 15:21:47', 'Pressed cancel button', '/clinic/modules/clinic/medicine/current.php'),
(1051, '::1', 'root', '2017-03-22 15:21:55', 'Query executed: SELECT sum(qty) as ''current_status'',medicine_name FROM medicine_receiving LEFT JOIN medicine ON medicine_receiving.medicine_id = medicine.medicine_id WHERE medicine_receiving.medicine_id = 3', '/clinic/modules/clinic/medicine/current.php'),
(1052, '::1', 'root', '2017-03-22 15:21:55', 'Query executed: SELECT sum(qty) as ''current_status'' FROM log_detail WHERE medicine_id = 3', '/clinic/modules/clinic/medicine/current.php'),
(1053, '::1', 'root', '2017-03-22 15:21:56', 'Pressed cancel button', '/clinic/modules/clinic/medicine/current.php'),
(1054, '::1', 'root', '2017-03-22 15:22:51', 'Pressed submit button', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1055, '::1', 'root', '2017-03-22 15:24:26', 'Pressed submit button', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1056, '::1', 'root', '2017-03-22 15:25:51', 'Pressed submit button', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1057, '::1', 'root', '2017-03-22 15:25:51', 'Query Executed: INSERT INTO log_info(log_id, date, time, complaints, patient_type, student_id, emp_id) VALUES(?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => issssss\n    [1] => \n    [2] => 2017-03-22\n    [3] => 2017-03-22 03:25:51\n    [4] => sample\n    [5] => Student\n    [6] => 2014-100353\n    [7] => \n)\n', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1058, '::1', 'root', '2017-03-22 15:25:51', 'Query Executed: INSERT INTO log_detail(log_detail_id, log_id, medicine_id, qty) VALUES(?,?,?,?)\r\nArray\n(\n    [0] => iiii\n    [1] => \n    [2] => 3\n    [3] => 5\n    [4] => 3\n)\n', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1059, '::1', 'root', '2017-03-22 15:26:07', 'Pressed cancel button', '/clinic/modules/clinic/log_info/detailview_log_info.php'),
(1060, '::1', 'root', '2017-03-22 15:28:06', 'Pressed submit button', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1061, '::1', 'root', '2017-03-22 15:28:06', 'Query Executed: INSERT INTO log_info(log_id, date, time, complaints, patient_type, student_id, emp_id) VALUES(?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => issssss\n    [1] => \n    [2] => 2017-03-22\n    [3] => 03:28:06\n    [4] => 2\n    [5] => Employee\n    [6] => \n    [7] => 2014-12312\n)\n', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1062, '::1', 'root', '2017-03-22 15:28:06', 'Query Executed: INSERT INTO log_detail(log_detail_id, log_id, medicine_id, qty) VALUES(?,?,?,?)\r\nArray\n(\n    [0] => iiii\n    [1] => \n    [2] => 4\n    [3] => 1\n    [4] => 2\n)\n', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1063, '::1', 'root', '2017-03-22 15:42:26', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''2014-123112''', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1064, '::1', 'root', '2017-03-22 15:44:30', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''2014-100450''', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1065, '::1', 'root', '2017-03-22 15:45:36', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''2014-100450''', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1066, '::1', 'root', '2017-03-22 15:45:38', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''2014-100353''', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1067, '::1', 'root', '2017-03-22 15:46:19', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''2014-100353''', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1068, '::1', 'root', '2017-03-22 15:48:11', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''2014-100450''', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1069, '::1', 'root', '2017-03-22 15:50:16', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''2014-100450''', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1070, '::1', 'root', '2017-03-22 15:50:30', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''2014-100353''', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1071, '::1', 'root', '2017-03-22 15:50:32', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''2014-123112''', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1072, '::1', 'root', '2017-03-22 15:50:36', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''2015-100016''', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1073, '::1', 'root', '2017-03-22 15:52:26', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''''', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1074, '::1', 'root', '2017-03-22 15:52:39', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''''', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1075, '::1', 'root', '2017-03-22 15:52:40', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''''', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1076, '::1', 'root', '2017-03-22 15:52:41', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''''', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1077, '::1', 'root', '2017-03-22 15:52:43', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''''', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1078, '::1', 'root', '2017-03-22 15:52:44', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''''', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1079, '::1', 'root', '2017-03-22 15:53:50', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''''', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1080, '::1', 'root', '2017-03-22 15:54:42', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''''', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1081, '::1', 'root', '2017-03-22 15:54:45', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''''', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1082, '::1', 'root', '2017-03-22 15:54:46', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''''', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1083, '::1', 'root', '2017-03-22 15:54:47', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''''', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1084, '::1', 'root', '2017-03-22 15:54:49', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''2014-100450''', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1085, '::1', 'root', '2017-03-22 15:54:51', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''2014-100450''', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1086, '::1', 'root', '2017-03-22 15:54:57', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''2014-100450''', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1087, '::1', 'root', '2017-03-22 15:55:38', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''''', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1088, '::1', 'root', '2017-03-22 15:55:39', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''''', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1089, '::1', 'root', '2017-03-22 15:55:41', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''''', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1090, '::1', 'root', '2017-03-22 15:55:42', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''''', '/clinic/modules/clinic/log_info/add_log_info.php');
INSERT INTO `system_log` (`entry_id`, `ip_address`, `user`, `datetime`, `action`, `module`) VALUES
(1091, '::1', 'root', '2017-03-22 15:55:44', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''''', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1092, '::1', 'root', '2017-03-22 15:55:45', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''2014-100450''', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1093, '::1', 'root', '2017-03-22 15:55:46', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''2014-100450''', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1094, '::1', 'root', '2017-03-22 15:55:47', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''2014-100450''', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1095, '::1', 'root', '2017-03-22 16:00:15', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''2014-100450''', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1096, '::1', 'root', '2017-03-22 16:00:15', 'Query executed: SELECT emp_first_name, emp_middle_name, emp_last_name FROM employee WHERE emp_id =''''', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1097, '::1', 'root', '2017-03-22 16:00:17', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''2014-100450''', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1098, '::1', 'root', '2017-03-22 16:00:17', 'Query executed: SELECT emp_first_name, emp_middle_name, emp_last_name FROM employee WHERE emp_id =''''', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1099, '::1', 'root', '2017-03-22 16:00:18', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''2014-100450''', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1100, '::1', 'root', '2017-03-22 16:00:18', 'Query executed: SELECT emp_first_name, emp_middle_name, emp_last_name FROM employee WHERE emp_id =''2014-10030''', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1101, '::1', 'root', '2017-03-22 16:00:21', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''2014-100450''', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1102, '::1', 'root', '2017-03-22 16:00:21', 'Query executed: SELECT emp_first_name, emp_middle_name, emp_last_name FROM employee WHERE emp_id =''2014-21431''', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1103, '::1', 'root', '2017-03-22 16:02:07', 'Logged out', '/clinic/end.php'),
(1104, '::1', 'nurse', '2017-03-22 16:02:11', 'Logged in', '/clinic/login.php'),
(1105, '::1', 'nurse', '2017-03-22 16:02:24', 'Logged out', '/clinic/end.php'),
(1106, '::1', 'root', '2017-03-22 16:13:32', 'Logged in', '/clinic/login.php'),
(1107, '::1', 'root', '2017-03-22 16:21:04', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''''', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1108, '::1', 'root', '2017-03-22 16:21:04', 'Query executed: SELECT emp_first_name, emp_middle_name, emp_last_name FROM employee WHERE emp_id =''''', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1109, '::1', 'root', '2017-03-22 16:21:07', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''''', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1110, '::1', 'root', '2017-03-22 16:21:07', 'Query executed: SELECT emp_first_name, emp_middle_name, emp_last_name FROM employee WHERE emp_id =''2014-12312''', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1111, '::1', 'root', '2017-03-22 16:21:09', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''''', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1112, '::1', 'root', '2017-03-22 16:21:09', 'Query executed: SELECT emp_first_name, emp_middle_name, emp_last_name FROM employee WHERE emp_id =''2014-10030''', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1113, '::1', 'root', '2017-03-22 16:21:16', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''''', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1114, '::1', 'root', '2017-03-22 16:21:16', 'Query executed: SELECT emp_first_name, emp_middle_name, emp_last_name FROM employee WHERE emp_id =''2014-10030''', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1115, '::1', 'root', '2017-03-22 16:21:18', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''2014-100353''', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1116, '::1', 'root', '2017-03-22 16:21:18', 'Query executed: SELECT emp_first_name, emp_middle_name, emp_last_name FROM employee WHERE emp_id =''2014-10030''', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1117, '::1', 'root', '2017-03-22 16:21:20', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''2014-100450''', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1118, '::1', 'root', '2017-03-22 16:21:20', 'Query executed: SELECT emp_first_name, emp_middle_name, emp_last_name FROM employee WHERE emp_id =''2014-10030''', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1119, '::1', 'root', '2017-03-22 16:28:50', 'Pressed delete button', '/clinic/modules/Clinic/emergency_case/delete_emergencycase.php'),
(1120, '::1', 'root', '2017-03-22 16:28:50', 'Query Executed: DELETE FROM emergencycase WHERE id = ?\r\nArray\n(\n    [0] => i\n    [1] => 46\n)\n', '/clinic/modules/Clinic/emergency_case/delete_emergencycase.php'),
(1121, '::1', 'root', '2017-03-22 16:28:53', 'Pressed delete button', '/clinic/modules/Clinic/emergency_case/delete_emergencycase.php'),
(1122, '::1', 'root', '2017-03-22 16:28:53', 'Query Executed: DELETE FROM emergencycase WHERE id = ?\r\nArray\n(\n    [0] => i\n    [1] => 47\n)\n', '/clinic/modules/Clinic/emergency_case/delete_emergencycase.php'),
(1123, '::1', 'root', '2017-03-22 16:39:38', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''''', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1124, '::1', 'root', '2017-03-22 16:39:38', 'Query executed: SELECT emp_first_name, emp_middle_name, emp_last_name FROM employee WHERE emp_id =''''', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1125, '::1', 'root', '2017-03-22 16:39:39', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''''', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1126, '::1', 'root', '2017-03-22 16:39:39', 'Query executed: SELECT emp_first_name, emp_middle_name, emp_last_name FROM employee WHERE emp_id =''2014-12312''', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1127, '::1', 'root', '2017-03-22 16:39:42', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''''', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1128, '::1', 'root', '2017-03-22 16:39:42', 'Query executed: SELECT emp_first_name, emp_middle_name, emp_last_name FROM employee WHERE emp_id =''2014-12312''', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1129, '::1', 'root', '2017-03-22 16:39:43', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''2014-100450''', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1130, '::1', 'root', '2017-03-22 16:39:43', 'Query executed: SELECT emp_first_name, emp_middle_name, emp_last_name FROM employee WHERE emp_id =''2014-12312''', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1131, '::1', 'root', '2017-03-22 16:40:10', 'Query executed: SELECT sum(qty) as ''current_status'',medicine_name FROM medicine_receiving LEFT JOIN medicine ON medicine_receiving.medicine_id = medicine.medicine_id WHERE medicine_receiving.medicine_id = 1', '/clinic/modules/clinic/medicine/current.php'),
(1132, '::1', 'root', '2017-03-22 16:40:10', 'Query executed: SELECT sum(qty) as ''current_status'' FROM log_detail WHERE medicine_id = 1', '/clinic/modules/clinic/medicine/current.php'),
(1133, '::1', 'root', '2017-03-22 16:46:37', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''''', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1134, '::1', 'root', '2017-03-22 16:46:37', 'Query executed: SELECT emp_first_name, emp_middle_name, emp_last_name FROM employee WHERE emp_id =''''', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1135, '::1', 'root', '2017-03-22 16:46:39', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''''', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1136, '::1', 'root', '2017-03-22 16:46:39', 'Query executed: SELECT emp_first_name, emp_middle_name, emp_last_name FROM employee WHERE emp_id =''2014-12312''', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1137, '::1', 'root', '2017-03-22 16:46:40', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''''', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1138, '::1', 'root', '2017-03-22 16:46:40', 'Query executed: SELECT emp_first_name, emp_middle_name, emp_last_name FROM employee WHERE emp_id =''2014-12312''', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1139, '::1', 'root', '2017-03-22 16:46:41', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''2014-100450''', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1140, '::1', 'root', '2017-03-22 16:46:41', 'Query executed: SELECT emp_first_name, emp_middle_name, emp_last_name FROM employee WHERE emp_id =''2014-12312''', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1141, '::1', 'root', '2017-03-22 16:57:34', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''2014-100450''', '/clinic/modules/Clinic/emergency_case/add_emergencycase.php'),
(1142, '::1', 'root', '2017-03-22 16:57:34', 'Query executed: SELECT emp_first_name, emp_middle_name, emp_last_name FROM employee WHERE emp_id =''''', '/clinic/modules/Clinic/emergency_case/add_emergencycase.php'),
(1143, '::1', 'root', '2017-03-22 16:59:46', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''''', '/clinic/modules/Clinic/emergency_case/add_emergencycase.php'),
(1144, '::1', 'root', '2017-03-22 16:59:46', 'Query executed: SELECT emp_first_name, emp_middle_name, emp_last_name FROM employee WHERE emp_id =''''', '/clinic/modules/Clinic/emergency_case/add_emergencycase.php'),
(1145, '::1', 'root', '2017-03-22 16:59:48', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''''', '/clinic/modules/Clinic/emergency_case/add_emergencycase.php'),
(1146, '::1', 'root', '2017-03-22 16:59:48', 'Query executed: SELECT emp_first_name, emp_middle_name, emp_last_name FROM employee WHERE emp_id =''''', '/clinic/modules/Clinic/emergency_case/add_emergencycase.php'),
(1147, '::1', 'root', '2017-03-22 17:22:25', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''''', '/clinic/modules/Clinic/emergency_case/add_emergencycase.php'),
(1148, '::1', 'root', '2017-03-22 17:22:25', 'Query executed: SELECT emp_first_name, emp_middle_name, emp_last_name FROM employee WHERE emp_id =''''', '/clinic/modules/Clinic/emergency_case/add_emergencycase.php'),
(1149, '::1', 'root', '2017-03-22 17:22:26', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''''', '/clinic/modules/Clinic/emergency_case/add_emergencycase.php'),
(1150, '::1', 'root', '2017-03-22 17:22:26', 'Query executed: SELECT emp_first_name, emp_middle_name, emp_last_name FROM employee WHERE emp_id =''''', '/clinic/modules/Clinic/emergency_case/add_emergencycase.php'),
(1151, '::1', 'root', '2017-03-22 17:22:28', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''2014-100450''', '/clinic/modules/Clinic/emergency_case/add_emergencycase.php'),
(1152, '::1', 'root', '2017-03-22 17:22:28', 'Query executed: SELECT emp_first_name, emp_middle_name, emp_last_name FROM employee WHERE emp_id =''''', '/clinic/modules/Clinic/emergency_case/add_emergencycase.php'),
(1153, '::1', 'root', '2017-03-22 17:22:30', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''2014-100450''', '/clinic/modules/Clinic/emergency_case/add_emergencycase.php'),
(1154, '::1', 'root', '2017-03-22 17:22:30', 'Query executed: SELECT emp_first_name, emp_middle_name, emp_last_name FROM employee WHERE emp_id =''''', '/clinic/modules/Clinic/emergency_case/add_emergencycase.php'),
(1155, '::1', 'root', '2017-03-22 17:22:31', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''2014-100450''', '/clinic/modules/Clinic/emergency_case/add_emergencycase.php'),
(1156, '::1', 'root', '2017-03-22 17:22:31', 'Query executed: SELECT emp_first_name, emp_middle_name, emp_last_name FROM employee WHERE emp_id =''2014-21431''', '/clinic/modules/Clinic/emergency_case/add_emergencycase.php'),
(1157, '::1', 'root', '2017-03-22 17:22:39', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''2014-100450''', '/clinic/modules/Clinic/emergency_case/add_emergencycase.php'),
(1158, '::1', 'root', '2017-03-22 17:22:39', 'Query executed: SELECT emp_first_name, emp_middle_name, emp_last_name FROM employee WHERE emp_id =''2014-21431''', '/clinic/modules/Clinic/emergency_case/add_emergencycase.php'),
(1159, '::1', 'root', '2017-03-22 17:23:01', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''2014-100450''', '/clinic/modules/Clinic/emergency_case/add_emergencycase.php'),
(1160, '::1', 'root', '2017-03-22 17:23:01', 'Query executed: SELECT emp_first_name, emp_middle_name, emp_last_name FROM employee WHERE emp_id =''2014-21431''', '/clinic/modules/Clinic/emergency_case/add_emergencycase.php'),
(1161, '::1', 'root', '2017-03-22 17:23:01', 'Pressed submit button', '/clinic/modules/Clinic/emergency_case/add_emergencycase.php'),
(1162, '::1', 'root', '2017-03-22 17:23:01', 'Query Executed: INSERT INTO emergencycase(id, date, patient_type, student_id, emp_id, location, diagnosis, hospital_id, escorted_by, guarantee_control_no) VALUES(?,?,?,?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => issssssiss\n    [1] => \n    [2] => 2017-03-22\n    [3] => Student\n    [4] => 2014-100450\n    [5] => 2014-21431\n    [6] => Cafeteria\n    [7] => Heart Attack\n    [8] => 5\n    [9] => Gal Gadot\n    [10] => N/A\n)\n', '/clinic/modules/Clinic/emergency_case/add_emergencycase.php'),
(1163, '::1', 'root', '2017-03-22 17:24:03', 'Pressed cancel button', '/clinic/modules/Clinic/emergency_case/detailview_emergencycase.php'),
(1164, '::1', 'root', '2017-03-22 17:25:28', 'Pressed delete button', '/clinic/modules/Clinic/emergency_case/delete_emergencycase.php'),
(1165, '::1', 'root', '2017-03-22 17:25:28', 'Query Executed: DELETE FROM emergencycase WHERE id = ?\r\nArray\n(\n    [0] => i\n    [1] => 48\n)\n', '/clinic/modules/Clinic/emergency_case/delete_emergencycase.php'),
(1166, '::1', 'root', '2017-03-22 17:27:09', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''''', '/clinic/modules/Clinic/emergency_case/add_emergencycase.php'),
(1167, '::1', 'root', '2017-03-22 17:27:09', 'Query executed: SELECT emp_first_name, emp_middle_name, emp_last_name FROM employee WHERE emp_id =''''', '/clinic/modules/Clinic/emergency_case/add_emergencycase.php'),
(1168, '::1', 'root', '2017-03-22 17:27:10', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''''', '/clinic/modules/Clinic/emergency_case/add_emergencycase.php'),
(1169, '::1', 'root', '2017-03-22 17:27:10', 'Query executed: SELECT emp_first_name, emp_middle_name, emp_last_name FROM employee WHERE emp_id =''2014-12312''', '/clinic/modules/Clinic/emergency_case/add_emergencycase.php'),
(1170, '::1', 'root', '2017-03-22 17:27:12', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''''', '/clinic/modules/Clinic/emergency_case/add_emergencycase.php'),
(1171, '::1', 'root', '2017-03-22 17:27:12', 'Query executed: SELECT emp_first_name, emp_middle_name, emp_last_name FROM employee WHERE emp_id =''2014-12312''', '/clinic/modules/Clinic/emergency_case/add_emergencycase.php'),
(1172, '::1', 'root', '2017-03-22 17:27:17', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''2014-100450''', '/clinic/modules/Clinic/emergency_case/add_emergencycase.php'),
(1173, '::1', 'root', '2017-03-22 17:27:17', 'Query executed: SELECT emp_first_name, emp_middle_name, emp_last_name FROM employee WHERE emp_id =''2014-12312''', '/clinic/modules/Clinic/emergency_case/add_emergencycase.php'),
(1174, '::1', 'root', '2017-03-22 17:27:42', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''2014-100450''', '/clinic/modules/Clinic/emergency_case/add_emergencycase.php'),
(1175, '::1', 'root', '2017-03-22 17:27:42', 'Query executed: SELECT emp_first_name, emp_middle_name, emp_last_name FROM employee WHERE emp_id =''2014-12312''', '/clinic/modules/Clinic/emergency_case/add_emergencycase.php'),
(1176, '::1', 'root', '2017-03-22 17:27:42', 'Pressed submit button', '/clinic/modules/Clinic/emergency_case/add_emergencycase.php'),
(1177, '::1', 'root', '2017-03-22 17:27:42', 'Query Executed: INSERT INTO emergencycase(id, date, patient_type, student_id, emp_id, location, diagnosis, hospital_id, escorted_by, guarantee_control_no) VALUES(?,?,?,?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => issssssiss\n    [1] => \n    [2] => 2017-03-22\n    [3] => Student\n    [4] => 2014-100450\n    [5] => 2014-12312\n    [6] => Cafeteria\n    [7] => Heart broken\n    [8] => 3\n    [9] => Daveson Romblon\n    [10] => N/A\n)\n', '/clinic/modules/Clinic/emergency_case/add_emergencycase.php'),
(1178, '::1', 'root', '2017-03-22 17:28:04', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''2014-100353''', '/clinic/modules/Clinic/emergency_case/add_emergencycase.php'),
(1179, '::1', 'root', '2017-03-22 17:28:04', 'Query executed: SELECT emp_first_name, emp_middle_name, emp_last_name FROM employee WHERE emp_id =''''', '/clinic/modules/Clinic/emergency_case/add_emergencycase.php'),
(1180, '::1', 'root', '2017-03-22 17:28:20', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''2014-100353''', '/clinic/modules/Clinic/emergency_case/add_emergencycase.php'),
(1181, '::1', 'root', '2017-03-22 17:28:20', 'Query executed: SELECT emp_first_name, emp_middle_name, emp_last_name FROM employee WHERE emp_id =''''', '/clinic/modules/Clinic/emergency_case/add_emergencycase.php'),
(1182, '::1', 'root', '2017-03-22 17:28:20', 'Pressed submit button', '/clinic/modules/Clinic/emergency_case/add_emergencycase.php'),
(1183, '::1', 'root', '2017-03-22 17:28:20', 'Query Executed: INSERT INTO emergencycase(id, date, patient_type, student_id, emp_id, location, diagnosis, hospital_id, escorted_by, guarantee_control_no) VALUES(?,?,?,?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => issssssiss\n    [1] => \n    [2] => 2017-03-22\n    [3] => Student\n    [4] => 2014-100353\n    [5] => \n    [6] => Gym\n    [7] => Broken Arms\n    [8] => 3\n    [9] => Justine\n    [10] => N/A\n)\n', '/clinic/modules/Clinic/emergency_case/add_emergencycase.php'),
(1184, '::1', 'root', '2017-03-22 17:28:48', 'Pressed cancel button', '/clinic/modules/Clinic/emergency_case/detailview_emergencycase.php'),
(1185, '::1', 'root', '2017-03-22 17:29:23', 'Query executed: SELECT sum(qty) as ''current_status'',medicine_name FROM medicine_receiving LEFT JOIN medicine ON medicine_receiving.medicine_id = medicine.medicine_id WHERE medicine_receiving.medicine_id = 1', '/clinic/modules/clinic/medicine/current.php'),
(1186, '::1', 'root', '2017-03-22 17:29:23', 'Query executed: SELECT sum(qty) as ''current_status'' FROM log_detail WHERE medicine_id = 1', '/clinic/modules/clinic/medicine/current.php'),
(1187, '::1', 'root', '2017-03-22 17:29:31', 'Pressed cancel button', '/clinic/modules/clinic/medicine/current.php'),
(1188, '::1', 'root', '2017-03-22 17:29:33', 'Query executed: SELECT sum(qty) as ''current_status'',medicine_name FROM medicine_receiving LEFT JOIN medicine ON medicine_receiving.medicine_id = medicine.medicine_id WHERE medicine_receiving.medicine_id = 2', '/clinic/modules/clinic/medicine/current.php'),
(1189, '::1', 'root', '2017-03-22 17:29:33', 'Query executed: SELECT sum(qty) as ''current_status'' FROM log_detail WHERE medicine_id = 2', '/clinic/modules/clinic/medicine/current.php'),
(1190, '::1', 'root', '2017-03-22 17:29:34', 'Pressed cancel button', '/clinic/modules/clinic/medicine/current.php'),
(1191, '::1', 'root', '2017-03-22 17:29:48', 'Pressed cancel button', '/clinic/modules/clinic/medicine_receiving/add_medicine_receiving.php'),
(1192, '::1', 'root', '2017-03-22 17:30:05', 'Pressed submit button', '/clinic/modules/clinic/medicine_receiving/add_medicine_receiving.php'),
(1193, '::1', 'root', '2017-03-22 17:30:05', 'Query Executed: INSERT INTO medicine_receiving(medicine_count_id, medicine_id, qty, date, type) VALUES(?,?,?,?,?)\r\nArray\n(\n    [0] => iiiss\n    [1] => \n    [2] => 5\n    [3] => 100\n    [4] => 2017-03-22\n    [5] => Beginning balance\n)\n', '/clinic/modules/clinic/medicine_receiving/add_medicine_receiving.php'),
(1194, '::1', 'root', '2017-03-22 17:30:22', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''2014-100353''', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1195, '::1', 'root', '2017-03-22 17:30:22', 'Query executed: SELECT emp_first_name, emp_middle_name, emp_last_name FROM employee WHERE emp_id =''''', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1196, '::1', 'root', '2017-03-22 17:30:34', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''2014-100353''', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1197, '::1', 'root', '2017-03-22 17:30:34', 'Query executed: SELECT emp_first_name, emp_middle_name, emp_last_name FROM employee WHERE emp_id =''''', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1198, '::1', 'root', '2017-03-22 17:30:35', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''2014-100353''', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1199, '::1', 'root', '2017-03-22 17:30:35', 'Query executed: SELECT emp_first_name, emp_middle_name, emp_last_name FROM employee WHERE emp_id =''''', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1200, '::1', 'root', '2017-03-22 17:30:35', 'Pressed submit button', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1201, '::1', 'root', '2017-03-22 17:30:35', 'Query Executed: INSERT INTO log_info(log_id, date, time, complaints, patient_type, student_id, emp_id) VALUES(?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => issssss\n    [1] => \n    [2] => 2017-03-22\n    [3] => 05:30:35\n    [4] => Cold\n    [5] => Student\n    [6] => 2014-100353\n    [7] => \n)\n', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1202, '::1', 'root', '2017-03-22 17:30:35', 'Query Executed: INSERT INTO log_detail(log_detail_id, log_id, medicine_id, qty) VALUES(?,?,?,?)\r\nArray\n(\n    [0] => iiii\n    [1] => \n    [2] => 5\n    [3] => 5\n    [4] => 99\n)\n', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1203, '::1', 'root', '2017-03-22 17:30:40', 'Query executed: SELECT sum(qty) as ''current_status'',medicine_name FROM medicine_receiving LEFT JOIN medicine ON medicine_receiving.medicine_id = medicine.medicine_id WHERE medicine_receiving.medicine_id = 5', '/clinic/modules/clinic/medicine/current.php'),
(1204, '::1', 'root', '2017-03-22 17:30:40', 'Query executed: SELECT sum(qty) as ''current_status'' FROM log_detail WHERE medicine_id = 5', '/clinic/modules/clinic/medicine/current.php'),
(1205, '::1', 'root', '2017-03-22 17:30:44', 'Pressed cancel button', '/clinic/modules/clinic/medicine/current.php'),
(1206, '::1', 'root', '2017-03-22 17:31:13', 'Pressed delete button', '/clinic/modules/clinic/log_detail/delete_log_detail.php'),
(1207, '::1', 'root', '2017-03-22 17:31:13', 'Query Executed: DELETE FROM log_detail WHERE log_detail_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 5\n)\n', '/clinic/modules/clinic/log_detail/delete_log_detail.php'),
(1208, '::1', 'root', '2017-03-22 17:31:14', 'Pressed delete button', '/clinic/modules/clinic/log_detail/delete_log_detail.php'),
(1209, '::1', 'root', '2017-03-22 17:31:14', 'Query Executed: DELETE FROM log_detail WHERE log_detail_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 6\n)\n', '/clinic/modules/clinic/log_detail/delete_log_detail.php'),
(1210, '::1', 'root', '2017-03-22 17:31:16', 'Pressed delete button', '/clinic/modules/clinic/log_detail/delete_log_detail.php'),
(1211, '::1', 'root', '2017-03-22 17:31:16', 'Query Executed: DELETE FROM log_detail WHERE log_detail_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 7\n)\n', '/clinic/modules/clinic/log_detail/delete_log_detail.php'),
(1212, '::1', 'root', '2017-03-22 17:31:18', 'Pressed delete button', '/clinic/modules/clinic/log_detail/delete_log_detail.php'),
(1213, '::1', 'root', '2017-03-22 17:31:18', 'Query Executed: DELETE FROM log_detail WHERE log_detail_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 8\n)\n', '/clinic/modules/clinic/log_detail/delete_log_detail.php'),
(1214, '::1', 'root', '2017-03-22 17:31:20', 'Pressed delete button', '/clinic/modules/clinic/log_detail/delete_log_detail.php'),
(1215, '::1', 'root', '2017-03-22 17:31:20', 'Query Executed: DELETE FROM log_detail WHERE log_detail_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 9\n)\n', '/clinic/modules/clinic/log_detail/delete_log_detail.php'),
(1216, '::1', 'root', '2017-03-22 17:31:30', 'Pressed delete button', '/clinic/modules/clinic/medicine_receiving/delete_medicine_receiving.php'),
(1217, '::1', 'root', '2017-03-22 17:31:30', 'Query Executed: DELETE FROM medicine_receiving WHERE medicine_count_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 1\n)\n', '/clinic/modules/clinic/medicine_receiving/delete_medicine_receiving.php'),
(1218, '::1', 'root', '2017-03-22 17:31:31', 'Pressed delete button', '/clinic/modules/clinic/medicine_receiving/delete_medicine_receiving.php'),
(1219, '::1', 'root', '2017-03-22 17:31:31', 'Query Executed: DELETE FROM medicine_receiving WHERE medicine_count_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 2\n)\n', '/clinic/modules/clinic/medicine_receiving/delete_medicine_receiving.php'),
(1220, '::1', 'root', '2017-03-22 17:31:33', 'Pressed delete button', '/clinic/modules/clinic/medicine_receiving/delete_medicine_receiving.php'),
(1221, '::1', 'root', '2017-03-22 17:31:33', 'Query Executed: DELETE FROM medicine_receiving WHERE medicine_count_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 3\n)\n', '/clinic/modules/clinic/medicine_receiving/delete_medicine_receiving.php'),
(1222, '::1', 'root', '2017-03-22 17:31:34', 'Pressed delete button', '/clinic/modules/clinic/medicine_receiving/delete_medicine_receiving.php'),
(1223, '::1', 'root', '2017-03-22 17:31:34', 'Query Executed: DELETE FROM medicine_receiving WHERE medicine_count_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 4\n)\n', '/clinic/modules/clinic/medicine_receiving/delete_medicine_receiving.php'),
(1224, '::1', 'root', '2017-03-22 17:31:36', 'Pressed delete button', '/clinic/modules/clinic/medicine_receiving/delete_medicine_receiving.php'),
(1225, '::1', 'root', '2017-03-22 17:31:36', 'Query Executed: DELETE FROM medicine_receiving WHERE medicine_count_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 5\n)\n', '/clinic/modules/clinic/medicine_receiving/delete_medicine_receiving.php'),
(1226, '::1', 'root', '2017-03-22 17:31:44', 'Pressed submit button', '/clinic/modules/clinic/medicine_receiving/add_medicine_receiving.php'),
(1227, '::1', 'root', '2017-03-22 17:31:44', 'Query Executed: INSERT INTO medicine_receiving(medicine_count_id, medicine_id, qty, date, type) VALUES(?,?,?,?,?)\r\nArray\n(\n    [0] => iiiss\n    [1] => \n    [2] => 3\n    [3] => 500\n    [4] => 2017-03-22\n    [5] => Beginning balance\n)\n', '/clinic/modules/clinic/medicine_receiving/add_medicine_receiving.php'),
(1228, '::1', 'root', '2017-03-22 17:31:54', 'Pressed submit button', '/clinic/modules/clinic/medicine_receiving/add_medicine_receiving.php'),
(1229, '::1', 'root', '2017-03-22 17:31:54', 'Query Executed: INSERT INTO medicine_receiving(medicine_count_id, medicine_id, qty, date, type) VALUES(?,?,?,?,?)\r\nArray\n(\n    [0] => iiiss\n    [1] => \n    [2] => 5\n    [3] => 500\n    [4] => 2017-03-22\n    [5] => Beginning balance\n)\n', '/clinic/modules/clinic/medicine_receiving/add_medicine_receiving.php'),
(1230, '::1', 'root', '2017-03-22 17:32:01', 'Pressed submit button', '/clinic/modules/clinic/medicine_receiving/add_medicine_receiving.php'),
(1231, '::1', 'root', '2017-03-22 17:32:01', 'Query Executed: INSERT INTO medicine_receiving(medicine_count_id, medicine_id, qty, date, type) VALUES(?,?,?,?,?)\r\nArray\n(\n    [0] => iiiss\n    [1] => \n    [2] => 2\n    [3] => 500\n    [4] => 2017-03-22\n    [5] => Beginning balance\n)\n', '/clinic/modules/clinic/medicine_receiving/add_medicine_receiving.php'),
(1232, '::1', 'root', '2017-03-22 17:32:09', 'Pressed submit button', '/clinic/modules/clinic/medicine_receiving/add_medicine_receiving.php'),
(1233, '::1', 'root', '2017-03-22 17:32:09', 'Query Executed: INSERT INTO medicine_receiving(medicine_count_id, medicine_id, qty, date, type) VALUES(?,?,?,?,?)\r\nArray\n(\n    [0] => iiiss\n    [1] => \n    [2] => 4\n    [3] => 500\n    [4] => 2017-03-22\n    [5] => Beginning balance\n)\n', '/clinic/modules/clinic/medicine_receiving/add_medicine_receiving.php'),
(1234, '::1', 'root', '2017-03-22 17:32:17', 'Pressed submit button', '/clinic/modules/clinic/medicine_receiving/add_medicine_receiving.php'),
(1235, '::1', 'root', '2017-03-22 17:32:17', 'Query Executed: INSERT INTO medicine_receiving(medicine_count_id, medicine_id, qty, date, type) VALUES(?,?,?,?,?)\r\nArray\n(\n    [0] => iiiss\n    [1] => \n    [2] => 1\n    [3] => 500\n    [4] => 2017-03-22\n    [5] => Beginning balance\n)\n', '/clinic/modules/clinic/medicine_receiving/add_medicine_receiving.php'),
(1236, '::1', 'root', '2017-03-22 17:32:25', 'Pressed delete button', '/clinic/modules/clinic/log_info/delete_log_info.php'),
(1237, '::1', 'root', '2017-03-22 17:32:25', 'Query Executed: DELETE FROM log_detail WHERE log_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 1\n)\n', '/clinic/modules/clinic/log_info/delete_log_info.php'),
(1238, '::1', 'root', '2017-03-22 17:32:25', 'Query Executed: DELETE FROM log_info WHERE log_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 1\n)\n', '/clinic/modules/clinic/log_info/delete_log_info.php'),
(1239, '::1', 'root', '2017-03-22 17:32:28', 'Pressed delete button', '/clinic/modules/clinic/log_info/delete_log_info.php'),
(1240, '::1', 'root', '2017-03-22 17:32:28', 'Query Executed: DELETE FROM log_detail WHERE log_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 2\n)\n', '/clinic/modules/clinic/log_info/delete_log_info.php'),
(1241, '::1', 'root', '2017-03-22 17:32:28', 'Query Executed: DELETE FROM log_info WHERE log_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 2\n)\n', '/clinic/modules/clinic/log_info/delete_log_info.php'),
(1242, '::1', 'root', '2017-03-22 17:32:30', 'Pressed delete button', '/clinic/modules/clinic/log_info/delete_log_info.php'),
(1243, '::1', 'root', '2017-03-22 17:32:30', 'Query Executed: DELETE FROM log_detail WHERE log_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 3\n)\n', '/clinic/modules/clinic/log_info/delete_log_info.php'),
(1244, '::1', 'root', '2017-03-22 17:32:30', 'Query Executed: DELETE FROM log_info WHERE log_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 3\n)\n', '/clinic/modules/clinic/log_info/delete_log_info.php'),
(1245, '::1', 'root', '2017-03-22 17:32:32', 'Pressed delete button', '/clinic/modules/clinic/log_info/delete_log_info.php'),
(1246, '::1', 'root', '2017-03-22 17:32:32', 'Query Executed: DELETE FROM log_detail WHERE log_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 4\n)\n', '/clinic/modules/clinic/log_info/delete_log_info.php'),
(1247, '::1', 'root', '2017-03-22 17:32:32', 'Query Executed: DELETE FROM log_info WHERE log_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 4\n)\n', '/clinic/modules/clinic/log_info/delete_log_info.php'),
(1248, '::1', 'root', '2017-03-22 17:32:34', 'Pressed delete button', '/clinic/modules/clinic/log_info/delete_log_info.php'),
(1249, '::1', 'root', '2017-03-22 17:32:34', 'Query Executed: DELETE FROM log_detail WHERE log_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 5\n)\n', '/clinic/modules/clinic/log_info/delete_log_info.php'),
(1250, '::1', 'root', '2017-03-22 17:32:34', 'Query Executed: DELETE FROM log_info WHERE log_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 5\n)\n', '/clinic/modules/clinic/log_info/delete_log_info.php'),
(1251, '::1', 'root', '2017-03-22 17:32:41', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''2014-100353''', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1252, '::1', 'root', '2017-03-22 17:32:41', 'Query executed: SELECT emp_first_name, emp_middle_name, emp_last_name FROM employee WHERE emp_id =''''', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1253, '::1', 'root', '2017-03-22 17:32:52', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''2014-100353''', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1254, '::1', 'root', '2017-03-22 17:32:52', 'Query executed: SELECT emp_first_name, emp_middle_name, emp_last_name FROM employee WHERE emp_id =''''', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1255, '::1', 'root', '2017-03-22 17:32:52', 'Pressed submit button', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1256, '::1', 'root', '2017-03-22 17:32:52', 'Query Executed: INSERT INTO log_info(log_id, date, time, complaints, patient_type, student_id, emp_id) VALUES(?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => issssss\n    [1] => \n    [2] => 2017-03-22\n    [3] => 05:32:52\n    [4] => Cold\n    [5] => Student\n    [6] => 2014-100353\n    [7] => \n)\n', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1257, '::1', 'root', '2017-03-22 17:32:52', 'Query Executed: INSERT INTO log_detail(log_detail_id, log_id, medicine_id, qty) VALUES(?,?,?,?)\r\nArray\n(\n    [0] => iiii\n    [1] => \n    [2] => 6\n    [3] => 3\n    [4] => 300\n)\n', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1258, '::1', 'root', '2017-03-22 17:32:57', 'Query executed: SELECT sum(qty) as ''current_status'',medicine_name FROM medicine_receiving LEFT JOIN medicine ON medicine_receiving.medicine_id = medicine.medicine_id WHERE medicine_receiving.medicine_id = 3', '/clinic/modules/clinic/medicine/current.php'),
(1259, '::1', 'root', '2017-03-22 17:32:58', 'Query executed: SELECT sum(qty) as ''current_status'' FROM log_detail WHERE medicine_id = 3', '/clinic/modules/clinic/medicine/current.php'),
(1260, '::1', 'root', '2017-03-22 17:33:13', 'Pressed cancel button', '/clinic/modules/clinic/medicine/current.php'),
(1261, '::1', 'nurse', '2017-03-23 22:12:29', 'Logged in', '/clinic/login.php'),
(1262, '::1', 'nurse', '2017-03-23 22:12:46', 'Logged out', '/clinic/end.php'),
(1263, '::1', 'root', '2017-03-23 22:12:51', 'Logged in', '/clinic/login.php'),
(1264, '::1', 'root', '2017-03-23 22:13:00', 'Query executed: SELECT sum(qty) as ''current_status'',medicine_name FROM medicine_receiving LEFT JOIN medicine ON medicine_receiving.medicine_id = medicine.medicine_id WHERE medicine_receiving.medicine_id = 1', '/clinic/modules/clinic/medicine/current.php'),
(1265, '::1', 'root', '2017-03-23 22:13:00', 'Query executed: SELECT sum(qty) as ''current_status'' FROM log_detail WHERE medicine_id = 1', '/clinic/modules/clinic/medicine/current.php'),
(1266, '::1', 'root', '2017-03-23 22:13:02', 'Pressed cancel button', '/clinic/modules/clinic/medicine/current.php'),
(1267, '::1', 'root', '2017-03-23 22:13:04', 'Query executed: SELECT sum(qty) as ''current_status'',medicine_name FROM medicine_receiving LEFT JOIN medicine ON medicine_receiving.medicine_id = medicine.medicine_id WHERE medicine_receiving.medicine_id = 2', '/clinic/modules/clinic/medicine/current.php'),
(1268, '::1', 'root', '2017-03-23 22:13:04', 'Query executed: SELECT sum(qty) as ''current_status'' FROM log_detail WHERE medicine_id = 2', '/clinic/modules/clinic/medicine/current.php'),
(1269, '::1', 'root', '2017-03-23 22:13:06', 'Pressed cancel button', '/clinic/modules/clinic/medicine/current.php'),
(1270, '::1', 'root', '2017-03-23 22:13:09', 'Query executed: SELECT sum(qty) as ''current_status'',medicine_name FROM medicine_receiving LEFT JOIN medicine ON medicine_receiving.medicine_id = medicine.medicine_id WHERE medicine_receiving.medicine_id = 3', '/clinic/modules/clinic/medicine/current.php'),
(1271, '::1', 'root', '2017-03-23 22:13:09', 'Query executed: SELECT sum(qty) as ''current_status'' FROM log_detail WHERE medicine_id = 3', '/clinic/modules/clinic/medicine/current.php'),
(1272, '::1', 'root', '2017-03-23 22:13:11', 'Pressed cancel button', '/clinic/modules/clinic/medicine/current.php'),
(1273, '::1', 'root', '2017-03-23 22:13:14', 'Query executed: SELECT sum(qty) as ''current_status'',medicine_name FROM medicine_receiving LEFT JOIN medicine ON medicine_receiving.medicine_id = medicine.medicine_id WHERE medicine_receiving.medicine_id = 4', '/clinic/modules/clinic/medicine/current.php'),
(1274, '::1', 'root', '2017-03-23 22:13:14', 'Query executed: SELECT sum(qty) as ''current_status'' FROM log_detail WHERE medicine_id = 4', '/clinic/modules/clinic/medicine/current.php'),
(1275, '::1', 'root', '2017-03-23 22:13:24', 'Pressed cancel button', '/clinic/modules/clinic/medicine/current.php'),
(1276, '::1', 'root', '2017-03-23 22:13:26', 'Query executed: SELECT sum(qty) as ''current_status'',medicine_name FROM medicine_receiving LEFT JOIN medicine ON medicine_receiving.medicine_id = medicine.medicine_id WHERE medicine_receiving.medicine_id = 5', '/clinic/modules/clinic/medicine/current.php'),
(1277, '::1', 'root', '2017-03-23 22:13:26', 'Query executed: SELECT sum(qty) as ''current_status'' FROM log_detail WHERE medicine_id = 5', '/clinic/modules/clinic/medicine/current.php'),
(1278, '::1', 'root', '2017-03-23 22:13:28', 'Pressed cancel button', '/clinic/modules/clinic/medicine/current.php'),
(1279, '::1', 'root', '2017-03-23 22:13:57', 'Pressed cancel button', '/clinic/modules/Clinic/required_appointment/add_required_appointment.php'),
(1280, '::1', 'root', '2017-03-23 22:15:45', 'Query executed: SELECT sum(qty) as ''current_status'',medicine_name FROM medicine_receiving LEFT JOIN medicine ON medicine_receiving.medicine_id = medicine.medicine_id WHERE medicine_receiving.medicine_id = 1', '/clinic/modules/clinic/medicine/current.php'),
(1281, '::1', 'root', '2017-03-23 22:15:45', 'Query executed: SELECT sum(qty) as ''current_status'' FROM log_detail WHERE medicine_id = 1', '/clinic/modules/clinic/medicine/current.php'),
(1282, '::1', 'root', '2017-03-23 22:15:46', 'Pressed cancel button', '/clinic/modules/clinic/medicine/current.php'),
(1283, '::1', 'root', '2017-03-23 22:27:35', 'Query executed: SELECT sum(qty) as ''current_status'',medicine_name FROM medicine_receiving LEFT JOIN medicine ON medicine_receiving.medicine_id = medicine.medicine_id WHERE medicine_receiving.medicine_id = 1', '/clinic/modules/clinic/medicine/current.php'),
(1284, '::1', 'root', '2017-03-23 22:27:35', 'Query executed: SELECT sum(qty) as ''current_status'' FROM log_detail WHERE medicine_id = 1', '/clinic/modules/clinic/medicine/current.php'),
(1285, '::1', 'root', '2017-03-23 22:27:45', 'Pressed cancel button', '/clinic/modules/clinic/medicine/current.php'),
(1286, '::1', 'root', '2017-03-23 22:27:47', 'Query executed: SELECT sum(qty) as ''current_status'',medicine_name FROM medicine_receiving LEFT JOIN medicine ON medicine_receiving.medicine_id = medicine.medicine_id WHERE medicine_receiving.medicine_id = 1', '/clinic/modules/clinic/medicine/current.php'),
(1287, '::1', 'root', '2017-03-23 22:27:47', 'Query executed: SELECT sum(qty) as ''current_status'' FROM log_detail WHERE medicine_id = 1', '/clinic/modules/clinic/medicine/current.php'),
(1288, '::1', 'root', '2017-03-23 22:27:49', 'Pressed cancel button', '/clinic/modules/clinic/medicine/current.php'),
(1289, '::1', 'root', '2017-03-23 22:28:11', 'Query executed: SELECT sum(qty) as ''current_status'',medicine_name FROM medicine_receiving LEFT JOIN medicine ON medicine_receiving.medicine_id = medicine.medicine_id WHERE medicine_receiving.medicine_id = 1', '/clinic/modules/clinic/medicine/current.php'),
(1290, '::1', 'root', '2017-03-23 22:28:11', 'Query executed: SELECT sum(qty) as ''current_status'' FROM log_detail WHERE medicine_id = 1', '/clinic/modules/clinic/medicine/current.php'),
(1291, '::1', 'root', '2017-03-23 22:28:26', 'Pressed cancel button', '/clinic/modules/clinic/medicine/current.php'),
(1292, '::1', 'root', '2017-03-23 22:28:28', 'Query executed: SELECT sum(qty) as ''current_status'',medicine_name FROM medicine_receiving LEFT JOIN medicine ON medicine_receiving.medicine_id = medicine.medicine_id WHERE medicine_receiving.medicine_id = 1', '/clinic/modules/clinic/medicine/current.php'),
(1293, '::1', 'root', '2017-03-23 22:28:28', 'Query executed: SELECT sum(qty) as ''current_status'' FROM log_detail WHERE medicine_id = 1', '/clinic/modules/clinic/medicine/current.php'),
(1294, '::1', 'root', '2017-03-23 22:35:53', 'Pressed cancel button', '/clinic/modules/clinic/medicine/current.php'),
(1295, '::1', 'root', '2017-03-23 22:35:55', 'Query executed: SELECT sum(qty) as ''current_status'',medicine_name FROM medicine_receiving LEFT JOIN medicine ON medicine_receiving.medicine_id = medicine.medicine_id WHERE medicine_receiving.medicine_id = 1', '/clinic/modules/clinic/medicine/current.php'),
(1296, '::1', 'root', '2017-03-23 22:35:55', 'Query executed: SELECT sum(qty) as ''current_status'' FROM log_detail WHERE medicine_id = 1', '/clinic/modules/clinic/medicine/current.php'),
(1297, '::1', 'root', '2017-03-23 22:36:14', 'Pressed cancel button', '/clinic/modules/clinic/medicine/current.php'),
(1298, '::1', 'root', '2017-03-23 22:36:17', 'Query executed: SELECT sum(qty) as ''current_status'',medicine_name FROM medicine_receiving LEFT JOIN medicine ON medicine_receiving.medicine_id = medicine.medicine_id WHERE medicine_receiving.medicine_id = 1', '/clinic/modules/clinic/medicine/current.php'),
(1299, '::1', 'root', '2017-03-23 22:36:17', 'Query executed: SELECT sum(qty) as ''current_status'' FROM log_detail WHERE medicine_id = 1', '/clinic/modules/clinic/medicine/current.php'),
(1300, '::1', 'root', '2017-03-23 22:36:19', 'Pressed cancel button', '/clinic/modules/clinic/medicine/current.php'),
(1301, '::1', 'root', '2017-03-23 22:36:23', 'Query executed: SELECT sum(qty) as ''current_status'',medicine_name FROM medicine_receiving LEFT JOIN medicine ON medicine_receiving.medicine_id = medicine.medicine_id WHERE medicine_receiving.medicine_id = 1', '/clinic/modules/clinic/medicine/current.php'),
(1302, '::1', 'root', '2017-03-23 22:36:24', 'Query executed: SELECT sum(qty) as ''current_status'' FROM log_detail WHERE medicine_id = 1', '/clinic/modules/clinic/medicine/current.php'),
(1303, '::1', 'root', '2017-03-23 22:36:26', 'Pressed cancel button', '/clinic/modules/clinic/medicine/current.php'),
(1304, '::1', 'root', '2017-03-24 20:13:08', 'Logged in', '/clinic/login.php'),
(1305, '::1', 'root', '2017-03-24 20:13:34', 'Query executed: SELECT sum(qty) as ''current_status'',medicine_name FROM medicine_receiving LEFT JOIN medicine ON medicine_receiving.medicine_id = medicine.medicine_id WHERE medicine_receiving.medicine_id = 1', '/clinic/modules/clinic/medicine/current.php'),
(1306, '::1', 'root', '2017-03-24 20:13:34', 'Query executed: SELECT sum(qty) as ''current_status'' FROM log_detail WHERE medicine_id = 1', '/clinic/modules/clinic/medicine/current.php'),
(1307, '::1', 'root', '2017-03-24 20:13:36', 'Pressed cancel button', '/clinic/modules/clinic/medicine/current.php'),
(1308, '::1', 'root', '2017-03-24 21:22:31', 'Query executed: SELECT sum(qty) as ''current_status'',medicine_name FROM medicine_receiving LEFT JOIN medicine ON medicine_receiving.medicine_id = medicine.medicine_id WHERE medicine_receiving.medicine_id = 1', '/clinic/modules/clinic/medicine/current.php'),
(1309, '::1', 'root', '2017-03-24 21:22:31', 'Query executed: SELECT sum(qty) as ''current_status'' FROM log_detail WHERE medicine_id = 1', '/clinic/modules/clinic/medicine/current.php'),
(1310, '::1', 'root', '2017-03-24 21:31:00', 'Query executed: SELECT sum(qty) as ''current_status'',medicine_name FROM medicine_receiving LEFT JOIN medicine ON medicine_receiving.medicine_id = medicine.medicine_id WHERE medicine_receiving.medicine_id = 1', '/clinic/modules/clinic/medicine/current.php'),
(1311, '::1', 'root', '2017-03-24 21:31:00', 'Query executed: SELECT sum(qty) as ''current_status'' FROM log_detail WHERE medicine_id = 1', '/clinic/modules/clinic/medicine/current.php'),
(1312, '::1', 'root', '2017-03-24 21:31:02', 'Pressed cancel button', '/clinic/modules/clinic/medicine/current.php'),
(1313, '::1', 'root', '2017-03-24 21:31:04', 'Query executed: SELECT sum(qty) as ''current_status'',medicine_name FROM medicine_receiving LEFT JOIN medicine ON medicine_receiving.medicine_id = medicine.medicine_id WHERE medicine_receiving.medicine_id = 1', '/clinic/modules/clinic/medicine/current.php'),
(1314, '::1', 'root', '2017-03-24 21:31:04', 'Query executed: SELECT sum(qty) as ''current_status'' FROM log_detail WHERE medicine_id = 1', '/clinic/modules/clinic/medicine/current.php'),
(1315, '::1', 'root', '2017-03-24 21:31:08', 'Pressed cancel button', '/clinic/modules/clinic/medicine/current.php'),
(1316, '::1', 'root', '2017-03-24 21:31:37', 'Logged out', '/clinic/end.php'),
(1317, '::1', 'nurse', '2017-03-24 21:31:47', 'Logged in', '/clinic/login.php'),
(1318, '::1', 'nurse', '2017-03-24 21:32:12', 'Logged out', '/clinic/end.php'),
(1319, '::1', 'root', '2017-03-24 21:32:17', 'Logged in', '/clinic/login.php'),
(1320, '::1', 'root', '2017-03-24 21:32:41', 'Query executed: DELETE FROM user_passport WHERE username=''nurse'' AND link_id IN (''97'',''98'',''99'',''100'',''109'',''110'',''111'',''112'')', '/clinic/sysadmin/set_user_passports.php'),
(1321, '::1', 'root', '2017-03-24 21:32:41', 'Query executed: INSERT INTO user_passport(username, link_id) VALUES(''nurse'', ''97''),(''nurse'', ''98''),(''nurse'', ''99'')', '/clinic/sysadmin/set_user_passports.php'),
(1322, '::1', 'root', '2017-03-24 21:32:41', 'Query executed: UPDATE user SET role_id=''0'' WHERE username=''nurse''', '/clinic/sysadmin/set_user_passports.php'),
(1323, '::1', 'root', '2017-03-24 21:32:50', 'Query executed: DELETE FROM user_passport WHERE username=''doctor'' AND link_id IN (''97'',''98'',''99'',''100'',''109'',''110'',''111'',''112'')', '/clinic/sysadmin/set_user_passports.php'),
(1324, '::1', 'root', '2017-03-24 21:32:50', 'Query executed: INSERT INTO user_passport(username, link_id) VALUES(''doctor'', ''97''),(''doctor'', ''98''),(''doctor'', ''99'')', '/clinic/sysadmin/set_user_passports.php'),
(1325, '::1', 'root', '2017-03-24 21:32:51', 'Query executed: UPDATE user SET role_id=''0'' WHERE username=''doctor''', '/clinic/sysadmin/set_user_passports.php'),
(1326, '::1', 'root', '2017-03-24 21:32:57', 'Logged out', '/clinic/end.php'),
(1327, '::1', 'nurse', '2017-03-24 21:33:01', 'Logged in', '/clinic/login.php'),
(1328, '::1', 'nurse', '2017-03-24 21:33:12', 'ILLEGAL ACCESS ATTEMPT - Tried to access ''/clinic/modules/clinic/medicine/current.php'' without sufficient privileges.', '/clinic/modules/clinic/medicine/current.php'),
(1329, '::1', 'root', '2017-03-24 21:33:22', 'Logged in', '/clinic/login.php'),
(1330, '::1', 'root', '2017-03-24 21:33:45', 'Pressed cancel button', '/clinic/sysadmin/role_permissions_cascade.php'),
(1331, '::1', 'root', '2017-03-24 21:34:00', 'Pressed submit button', '/clinic/sysadmin/edit_user.php'),
(1332, '::1', 'root', '2017-03-24 21:34:00', 'Query Executed: UPDATE user SET username = ?, person_id = ?, role_id = ?, skin_id = ? WHERE username = ?\r\nArray\n(\n    [0] => siiis\n    [1] => doctor\n    [2] => 3\n    [3] => 4\n    [4] => 7\n    [5] => doctor\n)\n', '/clinic/sysadmin/edit_user.php'),
(1333, '::1', 'root', '2017-03-24 21:34:00', 'Query executed: DELETE FROM user_passport WHERE username = ''doctor''', '/clinic/sysadmin/edit_user.php'),
(1334, '::1', 'root', '2017-03-24 21:34:00', 'Query executed: INSERT `user_passport` SELECT ''doctor'', `link_id` FROM user_role_links WHERE role_id=''4''', '/clinic/sysadmin/edit_user.php'),
(1335, '::1', 'root', '2017-03-24 21:34:06', 'Pressed submit button', '/clinic/sysadmin/edit_user.php');
INSERT INTO `system_log` (`entry_id`, `ip_address`, `user`, `datetime`, `action`, `module`) VALUES
(1336, '::1', 'root', '2017-03-24 21:34:06', 'Query Executed: UPDATE user SET username = ?, person_id = ?, role_id = ?, skin_id = ? WHERE username = ?\r\nArray\n(\n    [0] => siiis\n    [1] => nurse\n    [2] => 2\n    [3] => 3\n    [4] => 6\n    [5] => nurse\n)\n', '/clinic/sysadmin/edit_user.php'),
(1337, '::1', 'root', '2017-03-24 21:34:06', 'Query executed: DELETE FROM user_passport WHERE username = ''nurse''', '/clinic/sysadmin/edit_user.php'),
(1338, '::1', 'root', '2017-03-24 21:34:06', 'Query executed: INSERT `user_passport` SELECT ''nurse'', `link_id` FROM user_role_links WHERE role_id=''3''', '/clinic/sysadmin/edit_user.php'),
(1339, '::1', 'root', '2017-03-24 21:34:22', 'Query executed: DELETE FROM user_passport WHERE username IN (''nurse'')', '/clinic/sysadmin/role_permissions_cascade.php'),
(1340, '::1', 'root', '2017-03-24 21:34:22', 'Query executed: INSERT `user_passport` SELECT ''nurse'', `link_id` FROM user_role_links WHERE role_id=''3''', '/clinic/sysadmin/role_permissions_cascade.php'),
(1341, '::1', 'root', '2017-03-24 21:34:24', 'Pressed cancel button', '/clinic/sysadmin/role_permissions_cascade.php'),
(1342, '::1', 'root', '2017-03-24 21:34:27', 'Query executed: DELETE FROM user_passport WHERE username IN (''doctor'')', '/clinic/sysadmin/role_permissions_cascade.php'),
(1343, '::1', 'root', '2017-03-24 21:34:27', 'Query executed: INSERT `user_passport` SELECT ''doctor'', `link_id` FROM user_role_links WHERE role_id=''4''', '/clinic/sysadmin/role_permissions_cascade.php'),
(1344, '::1', 'root', '2017-03-24 21:34:30', 'Logged out', '/clinic/end.php'),
(1345, '::1', 'nurse', '2017-03-24 21:34:42', 'Logged in', '/clinic/login.php'),
(1346, '::1', 'nurse', '2017-03-24 21:34:52', 'Logged out', '/clinic/end.php'),
(1347, '::1', 'root', '2017-03-24 21:34:56', 'Logged in', '/clinic/login.php'),
(1348, '::1', 'root', '2017-03-24 21:35:35', 'Query executed: DELETE FROM user_passport WHERE username=''nurse'' AND link_id IN (''97'',''98'',''99'',''100'',''109'',''110'',''111'',''112'')', '/clinic/sysadmin/set_user_passports.php'),
(1349, '::1', 'root', '2017-03-24 21:35:36', 'Query executed: INSERT INTO user_passport(username, link_id) VALUES(''nurse'', ''97''),(''nurse'', ''98''),(''nurse'', ''99'')', '/clinic/sysadmin/set_user_passports.php'),
(1350, '::1', 'root', '2017-03-24 21:35:36', 'Query executed: UPDATE user SET role_id=''0'' WHERE username=''nurse''', '/clinic/sysadmin/set_user_passports.php'),
(1351, '::1', 'root', '2017-03-24 21:35:53', 'Query executed: DELETE FROM user_passport WHERE username=''doctor'' AND link_id IN (''97'',''98'',''99'',''100'',''109'',''110'',''111'',''112'')', '/clinic/sysadmin/set_user_passports.php'),
(1352, '::1', 'root', '2017-03-24 21:35:53', 'Query executed: INSERT INTO user_passport(username, link_id) VALUES(''doctor'', ''97''),(''doctor'', ''98''),(''doctor'', ''99'')', '/clinic/sysadmin/set_user_passports.php'),
(1353, '::1', 'root', '2017-03-24 21:35:53', 'Query executed: UPDATE user SET role_id=''0'' WHERE username=''doctor''', '/clinic/sysadmin/set_user_passports.php'),
(1354, '::1', 'root', '2017-03-24 21:36:23', 'Query executed: DELETE FROM user_role_links WHERE role_id=''3'' AND link_id IN (''97'',''98'',''99'',''100'',''109'',''110'',''111'',''112'')', '/clinic/sysadmin/role_permissions.php'),
(1355, '::1', 'root', '2017-03-24 21:36:23', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''97'')', '/clinic/sysadmin/role_permissions.php'),
(1356, '::1', 'root', '2017-03-24 21:36:23', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''98'')', '/clinic/sysadmin/role_permissions.php'),
(1357, '::1', 'root', '2017-03-24 21:36:23', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''99'')', '/clinic/sysadmin/role_permissions.php'),
(1358, '::1', 'root', '2017-03-24 21:36:26', 'Pressed cancel button', '/clinic/sysadmin/role_permissions.php'),
(1359, '::1', 'root', '2017-03-24 21:36:35', 'Query executed: DELETE FROM user_role_links WHERE role_id=''4'' AND link_id IN (''97'',''98'',''99'',''100'',''109'',''110'',''111'',''112'')', '/clinic/sysadmin/role_permissions.php'),
(1360, '::1', 'root', '2017-03-24 21:36:35', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''97'')', '/clinic/sysadmin/role_permissions.php'),
(1361, '::1', 'root', '2017-03-24 21:36:35', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''98'')', '/clinic/sysadmin/role_permissions.php'),
(1362, '::1', 'root', '2017-03-24 21:36:35', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''99'')', '/clinic/sysadmin/role_permissions.php'),
(1363, '::1', 'root', '2017-03-24 21:36:41', 'Logged out', '/clinic/end.php'),
(1364, '::1', 'nurse', '2017-03-24 21:36:46', 'Logged in', '/clinic/login.php'),
(1365, '::1', 'nurse', '2017-03-24 21:37:03', 'ILLEGAL ACCESS ATTEMPT - Tried to access ''/clinic/modules/clinic/medicine/current.php'' without sufficient privileges.', '/clinic/modules/clinic/medicine/current.php'),
(1366, '::1', 'root', '2017-03-24 21:37:13', 'Logged in', '/clinic/login.php'),
(1367, '::1', 'root', '2017-03-24 21:37:37', 'Query executed: DELETE FROM user_role_links WHERE role_id=''3'' AND link_id IN (''41'',''42'',''43'',''44'',''49'',''50'',''51'',''52'',''53'',''54'',''55'',''56'',''57'',''58'',''59'',''60'',''61'',''62'',''63'',''64'',''69'',''70'',''71'',''72'',''113'')', '/clinic/sysadmin/role_permissions.php'),
(1368, '::1', 'root', '2017-03-24 21:37:37', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''41'')', '/clinic/sysadmin/role_permissions.php'),
(1369, '::1', 'root', '2017-03-24 21:37:37', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''49'')', '/clinic/sysadmin/role_permissions.php'),
(1370, '::1', 'root', '2017-03-24 21:37:37', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''53'')', '/clinic/sysadmin/role_permissions.php'),
(1371, '::1', 'root', '2017-03-24 21:37:37', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''57'')', '/clinic/sysadmin/role_permissions.php'),
(1372, '::1', 'root', '2017-03-24 21:37:37', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''69'')', '/clinic/sysadmin/role_permissions.php'),
(1373, '::1', 'root', '2017-03-24 21:37:37', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''113'')', '/clinic/sysadmin/role_permissions.php'),
(1374, '::1', 'root', '2017-03-24 21:37:37', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''42'')', '/clinic/sysadmin/role_permissions.php'),
(1375, '::1', 'root', '2017-03-24 21:37:37', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''50'')', '/clinic/sysadmin/role_permissions.php'),
(1376, '::1', 'root', '2017-03-24 21:37:37', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''54'')', '/clinic/sysadmin/role_permissions.php'),
(1377, '::1', 'root', '2017-03-24 21:37:37', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''58'')', '/clinic/sysadmin/role_permissions.php'),
(1378, '::1', 'root', '2017-03-24 21:37:37', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''62'')', '/clinic/sysadmin/role_permissions.php'),
(1379, '::1', 'root', '2017-03-24 21:37:37', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''70'')', '/clinic/sysadmin/role_permissions.php'),
(1380, '::1', 'root', '2017-03-24 21:37:38', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''43'')', '/clinic/sysadmin/role_permissions.php'),
(1381, '::1', 'root', '2017-03-24 21:37:38', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''51'')', '/clinic/sysadmin/role_permissions.php'),
(1382, '::1', 'root', '2017-03-24 21:37:38', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''55'')', '/clinic/sysadmin/role_permissions.php'),
(1383, '::1', 'root', '2017-03-24 21:37:38', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''59'')', '/clinic/sysadmin/role_permissions.php'),
(1384, '::1', 'root', '2017-03-24 21:37:38', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''63'')', '/clinic/sysadmin/role_permissions.php'),
(1385, '::1', 'root', '2017-03-24 21:37:38', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''71'')', '/clinic/sysadmin/role_permissions.php'),
(1386, '::1', 'root', '2017-03-24 21:37:43', 'Pressed cancel button', '/clinic/sysadmin/role_permissions.php'),
(1387, '::1', 'root', '2017-03-24 21:37:56', 'Query executed: DELETE FROM user_role_links WHERE role_id=''4'' AND link_id IN (''41'',''42'',''43'',''44'',''49'',''50'',''51'',''52'',''53'',''54'',''55'',''56'',''57'',''58'',''59'',''60'',''61'',''62'',''63'',''64'',''69'',''70'',''71'',''72'',''113'')', '/clinic/sysadmin/role_permissions.php'),
(1388, '::1', 'root', '2017-03-24 21:37:56', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''49'')', '/clinic/sysadmin/role_permissions.php'),
(1389, '::1', 'root', '2017-03-24 21:37:57', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''53'')', '/clinic/sysadmin/role_permissions.php'),
(1390, '::1', 'root', '2017-03-24 21:37:57', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''57'')', '/clinic/sysadmin/role_permissions.php'),
(1391, '::1', 'root', '2017-03-24 21:37:57', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''69'')', '/clinic/sysadmin/role_permissions.php'),
(1392, '::1', 'root', '2017-03-24 21:37:57', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''113'')', '/clinic/sysadmin/role_permissions.php'),
(1393, '::1', 'root', '2017-03-24 21:37:57', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''50'')', '/clinic/sysadmin/role_permissions.php'),
(1394, '::1', 'root', '2017-03-24 21:37:57', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''54'')', '/clinic/sysadmin/role_permissions.php'),
(1395, '::1', 'root', '2017-03-24 21:37:57', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''58'')', '/clinic/sysadmin/role_permissions.php'),
(1396, '::1', 'root', '2017-03-24 21:37:57', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''43'')', '/clinic/sysadmin/role_permissions.php'),
(1397, '::1', 'root', '2017-03-24 21:37:57', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''51'')', '/clinic/sysadmin/role_permissions.php'),
(1398, '::1', 'root', '2017-03-24 21:37:57', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''55'')', '/clinic/sysadmin/role_permissions.php'),
(1399, '::1', 'root', '2017-03-24 21:37:57', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''59'')', '/clinic/sysadmin/role_permissions.php'),
(1400, '::1', 'root', '2017-03-24 21:37:57', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''63'')', '/clinic/sysadmin/role_permissions.php'),
(1401, '::1', 'root', '2017-03-24 21:37:57', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''71'')', '/clinic/sysadmin/role_permissions.php'),
(1402, '::1', 'root', '2017-03-24 21:38:01', 'Logged out', '/clinic/end.php'),
(1403, '::1', 'nurse', '2017-03-24 21:38:05', 'Logged in', '/clinic/login.php'),
(1404, '::1', 'nurse', '2017-03-24 21:38:12', 'ILLEGAL ACCESS ATTEMPT - Tried to access ''/clinic/modules/clinic/medicine/current.php'' without sufficient privileges.', '/clinic/modules/clinic/medicine/current.php'),
(1405, '::1', 'root', '2017-03-24 21:38:29', 'Logged in', '/clinic/login.php'),
(1406, '::1', 'root', '2017-03-24 21:38:53', 'Pressed cancel button', '/clinic/sysadmin/role_permissions_cascade.php'),
(1407, '::1', 'root', '2017-03-24 21:39:15', 'Pressed submit button', '/clinic/sysadmin/edit_user.php'),
(1408, '::1', 'root', '2017-03-24 21:39:15', 'Query Executed: UPDATE user SET username = ?, person_id = ?, role_id = ?, skin_id = ? WHERE username = ?\r\nArray\n(\n    [0] => siiis\n    [1] => doctor\n    [2] => 3\n    [3] => 4\n    [4] => 7\n    [5] => doctor\n)\n', '/clinic/sysadmin/edit_user.php'),
(1409, '::1', 'root', '2017-03-24 21:39:15', 'Query executed: DELETE FROM user_passport WHERE username = ''doctor''', '/clinic/sysadmin/edit_user.php'),
(1410, '::1', 'root', '2017-03-24 21:39:15', 'Query executed: INSERT `user_passport` SELECT ''doctor'', `link_id` FROM user_role_links WHERE role_id=''4''', '/clinic/sysadmin/edit_user.php'),
(1411, '::1', 'root', '2017-03-24 21:39:22', 'Pressed submit button', '/clinic/sysadmin/edit_user.php'),
(1412, '::1', 'root', '2017-03-24 21:39:22', 'Query Executed: UPDATE user SET username = ?, person_id = ?, role_id = ?, skin_id = ? WHERE username = ?\r\nArray\n(\n    [0] => siiis\n    [1] => nurse\n    [2] => 2\n    [3] => 3\n    [4] => 6\n    [5] => nurse\n)\n', '/clinic/sysadmin/edit_user.php'),
(1413, '::1', 'root', '2017-03-24 21:39:22', 'Query executed: DELETE FROM user_passport WHERE username = ''nurse''', '/clinic/sysadmin/edit_user.php'),
(1414, '::1', 'root', '2017-03-24 21:39:22', 'Query executed: INSERT `user_passport` SELECT ''nurse'', `link_id` FROM user_role_links WHERE role_id=''3''', '/clinic/sysadmin/edit_user.php'),
(1415, '::1', 'root', '2017-03-24 21:39:25', 'Logged out', '/clinic/end.php'),
(1416, '::1', 'root', '2017-03-24 21:39:29', 'Logged in', '/clinic/login.php'),
(1417, '::1', 'root', '2017-03-24 21:39:35', 'Logged out', '/clinic/end.php'),
(1418, '::1', 'nurse', '2017-03-24 21:39:41', 'Logged in', '/clinic/login.php'),
(1419, '::1', 'nurse', '2017-03-24 21:39:48', 'Query executed: SELECT sum(qty) as ''current_status'',medicine_name FROM medicine_receiving LEFT JOIN medicine ON medicine_receiving.medicine_id = medicine.medicine_id WHERE medicine_receiving.medicine_id = 1', '/clinic/modules/clinic/medicine/current.php'),
(1420, '::1', 'nurse', '2017-03-24 21:39:48', 'Query executed: SELECT sum(qty) as ''current_status'' FROM log_detail WHERE medicine_id = 1', '/clinic/modules/clinic/medicine/current.php'),
(1421, '::1', 'nurse', '2017-03-24 21:39:50', 'Pressed cancel button', '/clinic/modules/clinic/medicine/current.php'),
(1422, '::1', 'nurse', '2017-03-24 21:39:52', 'Query executed: SELECT sum(qty) as ''current_status'',medicine_name FROM medicine_receiving LEFT JOIN medicine ON medicine_receiving.medicine_id = medicine.medicine_id WHERE medicine_receiving.medicine_id = 5', '/clinic/modules/clinic/medicine/current.php'),
(1423, '::1', 'nurse', '2017-03-24 21:39:52', 'Query executed: SELECT sum(qty) as ''current_status'' FROM log_detail WHERE medicine_id = 5', '/clinic/modules/clinic/medicine/current.php'),
(1424, '::1', 'nurse', '2017-03-24 21:39:54', 'Pressed cancel button', '/clinic/modules/clinic/medicine/current.php'),
(1425, '::1', 'nurse', '2017-03-24 21:40:10', 'Query executed: SELECT sum(qty) as ''current_status'',medicine_name FROM medicine_receiving LEFT JOIN medicine ON medicine_receiving.medicine_id = medicine.medicine_id WHERE medicine_receiving.medicine_id = 5', '/clinic/modules/clinic/medicine/current.php'),
(1426, '::1', 'nurse', '2017-03-24 21:40:10', 'Query executed: SELECT sum(qty) as ''current_status'' FROM log_detail WHERE medicine_id = 5', '/clinic/modules/clinic/medicine/current.php'),
(1427, '::1', 'nurse', '2017-03-24 22:14:16', 'Pressed cancel button', '/clinic/modules/clinic/medicine/current.php'),
(1428, '::1', 'nurse', '2017-03-24 22:14:22', 'Logged out', '/clinic/end.php'),
(1429, '::1', 'root', '2017-03-24 22:14:46', 'Logged in', '/clinic/login.php'),
(1430, '::1', 'root', '2017-03-24 22:16:46', 'Pressed cancel button', '/clinic/sysadmin/role_permissions.php'),
(1431, '::1', 'root', '2017-03-24 22:18:14', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''2014-100353''', '/clinic/modules/Clinic/emergency_case/add_emergencycase.php'),
(1432, '::1', 'root', '2017-03-24 22:18:14', 'Query executed: SELECT emp_first_name, emp_middle_name, emp_last_name FROM employee WHERE emp_id =''''', '/clinic/modules/Clinic/emergency_case/add_emergencycase.php'),
(1433, '::1', 'root', '2017-03-24 22:18:17', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''2014-100353''', '/clinic/modules/Clinic/emergency_case/add_emergencycase.php'),
(1434, '::1', 'root', '2017-03-24 22:18:17', 'Query executed: SELECT emp_first_name, emp_middle_name, emp_last_name FROM employee WHERE emp_id =''''', '/clinic/modules/Clinic/emergency_case/add_emergencycase.php'),
(1435, '::1', 'root', '2017-03-24 22:18:18', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''2014-100353''', '/clinic/modules/Clinic/emergency_case/add_emergencycase.php'),
(1436, '::1', 'root', '2017-03-24 22:18:19', 'Query executed: SELECT emp_first_name, emp_middle_name, emp_last_name FROM employee WHERE emp_id =''2014-10030''', '/clinic/modules/Clinic/emergency_case/add_emergencycase.php'),
(1437, '::1', 'root', '2017-03-24 22:18:25', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''2014-100353''', '/clinic/modules/Clinic/emergency_case/add_emergencycase.php'),
(1438, '::1', 'root', '2017-03-24 22:18:25', 'Query executed: SELECT emp_first_name, emp_middle_name, emp_last_name FROM employee WHERE emp_id =''2014-10030''', '/clinic/modules/Clinic/emergency_case/add_emergencycase.php'),
(1439, '::1', 'root', '2017-03-24 22:18:31', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''2014-100450''', '/clinic/modules/Clinic/emergency_case/add_emergencycase.php'),
(1440, '::1', 'root', '2017-03-24 22:18:31', 'Query executed: SELECT emp_first_name, emp_middle_name, emp_last_name FROM employee WHERE emp_id =''2014-10030''', '/clinic/modules/Clinic/emergency_case/add_emergencycase.php'),
(1441, '::1', 'root', '2017-03-24 22:19:06', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''2014-100450''', '/clinic/modules/Clinic/emergency_case/add_emergencycase.php'),
(1442, '::1', 'root', '2017-03-24 22:19:07', 'Query executed: SELECT emp_first_name, emp_middle_name, emp_last_name FROM employee WHERE emp_id =''2014-10030''', '/clinic/modules/Clinic/emergency_case/add_emergencycase.php'),
(1443, '::1', 'root', '2017-03-24 22:19:07', 'Pressed submit button', '/clinic/modules/Clinic/emergency_case/add_emergencycase.php'),
(1444, '::1', 'root', '2017-03-24 22:19:07', 'Query Executed: INSERT INTO emergencycase(id, date, patient_type, student_id, emp_id, location, diagnosis, hospital_id, escorted_by, guarantee_control_no) VALUES(?,?,?,?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => issssssiss\n    [1] => \n    [2] => 2017-03-24\n    [3] => Student\n    [4] => 2014-100450\n    [5] => 2014-10030\n    [6] => Gym\n    [7] => Nadapa\n    [8] => 5\n    [9] => Lukas Graham\n    [10] => N/A\n)\n', '/clinic/modules/Clinic/emergency_case/add_emergencycase.php'),
(1445, '::1', 'root', '2017-03-24 22:19:27', 'Pressed cancel button', '/clinic/modules/Clinic/emergency_case/detailview_emergencycase.php'),
(1446, '::1', 'root', '2017-03-24 22:19:37', 'Pressed submit button', '/clinic/modules/Clinic/emergency_case/edit_emergencycase.php'),
(1447, '::1', 'root', '2017-03-24 22:20:05', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''''', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1448, '::1', 'root', '2017-03-24 22:20:05', 'Query executed: SELECT emp_first_name, emp_middle_name, emp_last_name FROM employee WHERE emp_id =''''', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1449, '::1', 'root', '2017-03-24 22:20:07', 'Pressed cancel button', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1450, '::1', 'root', '2017-03-24 22:20:21', 'Pressed cancel button', '/clinic/modules/clinic/log_info/edit_log_info.php'),
(1451, '::1', 'root', '2017-03-24 22:21:50', 'Pressed cancel button', '/clinic/modules/clinic/log_info/edit_log_info.php'),
(1452, '::1', 'root', '2017-03-24 22:37:43', 'Pressed cancel button', '/clinic/modules/clinic/log_info/detailview_log_info.php'),
(1453, '::1', 'root', '2017-03-24 22:39:13', 'Pressed cancel button', '/clinic/modules/Clinic/emergency_case/detailview_emergencycase.php'),
(1454, '::1', 'root', '2017-03-24 22:39:17', 'Pressed cancel button', '/clinic/modules/Clinic/emergency_case/detailview_emergencycase.php'),
(1455, '::1', 'root', '2017-03-24 22:39:29', 'Pressed submit button', '/clinic/modules/Clinic/emergency_case/edit_emergencycase.php'),
(1456, '::1', 'root', '2017-03-24 22:39:33', 'Pressed cancel button', '/clinic/modules/Clinic/emergency_case/edit_emergencycase.php'),
(1457, '::1', 'root', '2017-03-24 22:39:37', 'Pressed delete button', '/clinic/modules/Clinic/emergency_case/delete_emergencycase.php'),
(1458, '::1', 'root', '2017-03-24 22:39:37', 'Query Executed: DELETE FROM emergencycase WHERE id = ?\r\nArray\n(\n    [0] => i\n    [1] => 49\n)\n', '/clinic/modules/Clinic/emergency_case/delete_emergencycase.php'),
(1459, '::1', 'root', '2017-03-24 22:39:42', 'Pressed delete button', '/clinic/modules/Clinic/emergency_case/delete_emergencycase.php'),
(1460, '::1', 'root', '2017-03-24 22:39:42', 'Query Executed: DELETE FROM emergencycase WHERE id = ?\r\nArray\n(\n    [0] => i\n    [1] => 51\n)\n', '/clinic/modules/Clinic/emergency_case/delete_emergencycase.php'),
(1461, '::1', 'root', '2017-03-24 22:39:48', 'Pressed cancel button', '/clinic/modules/Clinic/emergency_case/detailview_emergencycase.php'),
(1462, '::1', 'root', '2017-03-24 22:40:06', 'Pressed cancel button', '/clinic/modules/Clinic/emergency_case/detailview_emergencycase.php'),
(1463, '::1', 'root', '2017-03-24 22:40:10', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''''', '/clinic/modules/Clinic/emergency_case/add_emergencycase.php'),
(1464, '::1', 'root', '2017-03-24 22:40:10', 'Query executed: SELECT emp_first_name, emp_middle_name, emp_last_name FROM employee WHERE emp_id =''''', '/clinic/modules/Clinic/emergency_case/add_emergencycase.php'),
(1465, '::1', 'root', '2017-03-24 22:40:14', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''''', '/clinic/modules/Clinic/emergency_case/add_emergencycase.php'),
(1466, '::1', 'root', '2017-03-24 22:40:14', 'Query executed: SELECT emp_first_name, emp_middle_name, emp_last_name FROM employee WHERE emp_id =''2014-10030''', '/clinic/modules/Clinic/emergency_case/add_emergencycase.php'),
(1467, '::1', 'root', '2017-03-24 22:40:32', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''''', '/clinic/modules/Clinic/emergency_case/add_emergencycase.php'),
(1468, '::1', 'root', '2017-03-24 22:40:32', 'Query executed: SELECT emp_first_name, emp_middle_name, emp_last_name FROM employee WHERE emp_id =''2014-10030''', '/clinic/modules/Clinic/emergency_case/add_emergencycase.php'),
(1469, '::1', 'root', '2017-03-24 22:40:32', 'Pressed submit button', '/clinic/modules/Clinic/emergency_case/add_emergencycase.php'),
(1470, '::1', 'root', '2017-03-24 22:40:32', 'Query Executed: INSERT INTO emergencycase(id, date, patient_type, student_id, emp_id, location, diagnosis, hospital_id, escorted_by, guarantee_control_no) VALUES(?,?,?,?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => issssssiss\n    [1] => \n    [2] => 2017-03-24\n    [3] => Employee\n    [4] => \n    [5] => 2014-10030\n    [6] => Gym\n    [7] => Heart Broken\n    [8] => 3\n    [9] => Juan Dela Cruz\n    [10] => N/A\n)\n', '/clinic/modules/Clinic/emergency_case/add_emergencycase.php'),
(1471, '::1', 'root', '2017-03-24 22:40:39', 'Pressed cancel button', '/clinic/modules/Clinic/emergency_case/detailview_emergencycase.php'),
(1472, '::1', 'root', '2017-03-24 22:43:18', 'Pressed cancel button', '/clinic/modules/clinic/log_info/edit_log_info.php'),
(1473, '::1', 'root', '2017-03-24 22:43:24', 'Pressed cancel button', '/clinic/modules/clinic/log_info/edit_log_info.php'),
(1474, '::1', 'root', '2017-03-24 22:45:55', 'Pressed cancel button', '/clinic/modules/clinic/log_info/edit_log_info.php'),
(1475, '::1', 'root', '2017-03-24 22:47:46', 'Pressed cancel button', '/clinic/modules/clinic/log_info/edit_log_info.php'),
(1476, '::1', 'root', '2017-03-24 22:47:53', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''''', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1477, '::1', 'root', '2017-03-24 22:47:53', 'Query executed: SELECT emp_first_name, emp_middle_name, emp_last_name FROM employee WHERE emp_id =''''', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1478, '::1', 'root', '2017-03-24 22:47:56', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''''', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1479, '::1', 'root', '2017-03-24 22:47:56', 'Query executed: SELECT emp_first_name, emp_middle_name, emp_last_name FROM employee WHERE emp_id =''2014-10030''', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1480, '::1', 'root', '2017-03-24 22:48:00', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''''', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1481, '::1', 'root', '2017-03-24 22:48:00', 'Query executed: SELECT emp_first_name, emp_middle_name, emp_last_name FROM employee WHERE emp_id =''2014-10030''', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1482, '::1', 'root', '2017-03-24 22:48:00', 'Pressed submit button', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1483, '::1', 'root', '2017-03-24 22:48:00', 'Query Executed: INSERT INTO log_info(log_id, date, time, complaints, patient_type, student_id, emp_id) VALUES(?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => issssss\n    [1] => \n    [2] => 2017-03-24\n    [3] => 10:48:00\n    [4] => test\n    [5] => Employee\n    [6] => \n    [7] => 2014-10030\n)\n', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1484, '::1', 'root', '2017-03-24 22:48:00', 'Query Executed: INSERT INTO log_detail(log_detail_id, log_id, medicine_id, qty) VALUES(?,?,?,?)\r\nArray\n(\n    [0] => iiii\n    [1] => \n    [2] => 7\n    [3] => 3\n    [4] => 1\n)\n', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1485, '::1', 'root', '2017-03-24 22:48:30', 'Pressed cancel button', '/clinic/modules/clinic/log_info/edit_log_info.php'),
(1486, '::1', 'root', '2017-03-24 22:49:26', 'Pressed cancel button', '/clinic/modules/clinic/log_info/edit_log_info.php'),
(1487, '::1', 'root', '2017-03-24 22:50:24', 'Pressed cancel button', '/clinic/modules/clinic/log_info/edit_log_info.php'),
(1488, '::1', 'root', '2017-03-24 22:52:01', 'Pressed cancel button', '/clinic/modules/clinic/log_info/edit_log_info.php'),
(1489, '::1', 'root', '2017-03-24 22:52:36', 'Pressed cancel button', '/clinic/modules/clinic/log_info/edit_log_info.php'),
(1490, '::1', 'root', '2017-03-24 22:55:04', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''2014-100450''', '/clinic/modules/clinic/log_info/edit_log_info.php'),
(1491, '::1', 'root', '2017-03-24 22:55:04', 'Query executed: SELECT emp_first_name, emp_middle_name, emp_last_name FROM employee WHERE emp_id =''''', '/clinic/modules/clinic/log_info/edit_log_info.php'),
(1492, '::1', 'root', '2017-03-24 22:55:07', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''2014-100353''', '/clinic/modules/clinic/log_info/edit_log_info.php'),
(1493, '::1', 'root', '2017-03-24 22:55:07', 'Query executed: SELECT emp_first_name, emp_middle_name, emp_last_name FROM employee WHERE emp_id =''''', '/clinic/modules/clinic/log_info/edit_log_info.php'),
(1494, '::1', 'root', '2017-03-24 22:55:14', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''2014-100450''', '/clinic/modules/clinic/log_info/edit_log_info.php'),
(1495, '::1', 'root', '2017-03-24 22:55:14', 'Query executed: SELECT emp_first_name, emp_middle_name, emp_last_name FROM employee WHERE emp_id =''''', '/clinic/modules/clinic/log_info/edit_log_info.php'),
(1496, '::1', 'root', '2017-03-24 22:55:23', 'Pressed cancel button', '/clinic/modules/clinic/log_info/edit_log_info.php'),
(1497, '::1', 'root', '2017-03-24 22:56:48', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''2014-100450''', '/clinic/modules/clinic/log_info/edit_log_info.php'),
(1498, '::1', 'root', '2017-03-24 22:56:48', 'Query executed: SELECT emp_first_name, emp_middle_name, emp_last_name FROM employee WHERE emp_id =''''', '/clinic/modules/clinic/log_info/edit_log_info.php'),
(1499, '::1', 'root', '2017-03-24 22:56:50', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''2014-100353''', '/clinic/modules/clinic/log_info/edit_log_info.php'),
(1500, '::1', 'root', '2017-03-24 22:56:50', 'Query executed: SELECT emp_first_name, emp_middle_name, emp_last_name FROM employee WHERE emp_id =''''', '/clinic/modules/clinic/log_info/edit_log_info.php'),
(1501, '::1', 'root', '2017-03-24 22:56:54', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''2014-100353''', '/clinic/modules/clinic/log_info/edit_log_info.php'),
(1502, '::1', 'root', '2017-03-24 22:56:54', 'Query executed: SELECT emp_first_name, emp_middle_name, emp_last_name FROM employee WHERE emp_id =''''', '/clinic/modules/clinic/log_info/edit_log_info.php'),
(1503, '::1', 'root', '2017-03-24 22:56:54', 'Pressed submit button', '/clinic/modules/clinic/log_info/edit_log_info.php'),
(1504, '::1', 'root', '2017-03-24 22:56:54', 'Query Executed: DELETE FROM log_detail WHERE log_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 6\n)\n', '/clinic/modules/clinic/log_info/edit_log_info.php'),
(1505, '::1', 'root', '2017-03-24 22:56:54', 'Query Executed: INSERT INTO log_detail(log_detail_id, log_id, medicine_id, qty) VALUES(?,?,?,?)\r\nArray\n(\n    [0] => iiii\n    [1] => \n    [2] => 6\n    [3] => 3\n    [4] => 300\n)\n', '/clinic/modules/clinic/log_info/edit_log_info.php'),
(1506, '::1', 'root', '2017-03-24 22:56:54', 'Query Executed: UPDATE log_info SET date = ?, time = ?, complaints = ?, patient_type = ?, student_id = ?, emp_id = ? WHERE log_id = ?\r\nArray\n(\n    [0] => ssssssi\n    [1] => 2017-03-22\n    [2] => 05:32:52\n    [3] => Cold\n    [4] => Student\n    [5] => 2014-100353\n    [6] => \n    [7] => 6\n)\n', '/clinic/modules/clinic/log_info/edit_log_info.php'),
(1507, '::1', 'root', '2017-03-24 22:56:59', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''''', '/clinic/modules/clinic/log_info/edit_log_info.php'),
(1508, '::1', 'root', '2017-03-24 22:56:59', 'Query executed: SELECT emp_first_name, emp_middle_name, emp_last_name FROM employee WHERE emp_id =''2014-12312''', '/clinic/modules/clinic/log_info/edit_log_info.php'),
(1509, '::1', 'root', '2017-03-24 22:57:04', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''''', '/clinic/modules/clinic/log_info/edit_log_info.php'),
(1510, '::1', 'root', '2017-03-24 22:57:04', 'Query executed: SELECT emp_first_name, emp_middle_name, emp_last_name FROM employee WHERE emp_id =''2014-12312''', '/clinic/modules/clinic/log_info/edit_log_info.php'),
(1511, '::1', 'root', '2017-03-24 22:57:04', 'Pressed submit button', '/clinic/modules/clinic/log_info/edit_log_info.php'),
(1512, '::1', 'root', '2017-03-24 22:57:04', 'Query Executed: DELETE FROM log_detail WHERE log_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 7\n)\n', '/clinic/modules/clinic/log_info/edit_log_info.php'),
(1513, '::1', 'root', '2017-03-24 22:57:04', 'Query Executed: INSERT INTO log_detail(log_detail_id, log_id, medicine_id, qty) VALUES(?,?,?,?)\r\nArray\n(\n    [0] => iiii\n    [1] => \n    [2] => 7\n    [3] => 3\n    [4] => 1\n)\n', '/clinic/modules/clinic/log_info/edit_log_info.php'),
(1514, '::1', 'root', '2017-03-24 22:57:04', 'Query Executed: UPDATE log_info SET date = ?, time = ?, complaints = ?, patient_type = ?, student_id = ?, emp_id = ? WHERE log_id = ?\r\nArray\n(\n    [0] => ssssssi\n    [1] => 2017-03-24\n    [2] => 10:48:00\n    [3] => test\n    [4] => Employee\n    [5] => \n    [6] => 2014-12312\n    [7] => 7\n)\n', '/clinic/modules/clinic/log_info/edit_log_info.php'),
(1515, '::1', 'root', '2017-03-24 22:57:20', 'Pressed cancel button', '/clinic/modules/Clinic/emergency_case/detailview_emergencycase.php'),
(1516, '::1', 'root', '2017-03-24 22:59:41', 'Pressed cancel button', '/clinic/modules/Clinic/emergency_case/detailview_emergencycase.php'),
(1517, '::1', 'root', '2017-03-24 22:59:49', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''2014-100450''', '/clinic/modules/Clinic/emergency_case/edit_emergencycase.php'),
(1518, '::1', 'root', '2017-03-24 22:59:49', 'Query executed: SELECT emp_first_name, emp_middle_name, emp_last_name FROM employee WHERE emp_id =''''', '/clinic/modules/Clinic/emergency_case/edit_emergencycase.php'),
(1519, '::1', 'root', '2017-03-24 22:59:52', 'Pressed cancel button', '/clinic/modules/Clinic/emergency_case/edit_emergencycase.php'),
(1520, '::1', 'root', '2017-03-27 21:51:37', 'Logged in', '/clinic/login.php'),
(1521, '::1', 'root', '2017-03-27 21:52:24', 'Pressed cancel button', '/clinic/modules/Clinic/emergency_case/add_emergencycase.php'),
(1522, '::1', 'root', '2017-03-27 21:52:38', 'Pressed cancel button', '/clinic/modules/Registrar/department/add_dept.php'),
(1523, '::1', 'root', '2017-03-27 21:52:43', 'Pressed cancel button', '/clinic/modules/clinic/log_detail/add_log_detail.php'),
(1524, '::1', 'root', '2017-03-27 21:52:46', 'Pressed cancel button', '/clinic/modules/clinic/log_info/add_log_info.php'),
(1525, '::1', 'root', '2017-03-27 22:02:40', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''2014-100450''', '/clinic/modules/Registrar/clearance/add_refstudentclearance.php'),
(1526, '::1', 'root', '2017-03-27 22:02:43', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''2014-123112''', '/clinic/modules/Registrar/clearance/add_refstudentclearance.php'),
(1527, '::1', 'root', '2017-03-27 22:02:44', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''2015-100016''', '/clinic/modules/Registrar/clearance/add_refstudentclearance.php'),
(1528, '::1', 'root', '2017-03-27 22:02:45', 'Query executed: SELECT student_first_name, student_middle_name, student_last_name FROM refstudent WHERE student_id =''2014-100353''', '/clinic/modules/Registrar/clearance/add_refstudentclearance.php'),
(1529, '::1', 'root', '2017-03-27 22:28:51', 'Pressed cancel button', '/clinic/modules/clinic/medicine/detailview_medicine.php'),
(1530, '::1', 'root', '2017-03-27 22:29:17', 'Pressed cancel button', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1531, '::1', 'root', '2017-03-27 22:39:12', 'Pressed submit button', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1532, '::1', 'root', '2017-03-27 22:39:12', 'Query Executed: INSERT INTO medicine(medicine_id, medicine_name, date_expiration) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => Ambroxol\n    [3] => 2017-04-27\n)\n', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1533, '::1', 'root', '2017-03-27 22:39:28', 'Pressed submit button', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1534, '::1', 'root', '2017-03-27 22:39:28', 'Query Executed: INSERT INTO medicine(medicine_id, medicine_name, date_expiration) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => Betahistin (SERC)\n    [3] => 2017-04-27\n)\n', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1535, '::1', 'root', '2017-03-27 22:39:32', 'Pressed cancel button', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1536, '::1', 'root', '2017-03-27 22:39:39', 'Pressed submit button', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1537, '::1', 'root', '2017-03-27 22:39:39', 'Query Executed: INSERT INTO medicine(medicine_id, medicine_name, date_expiration) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => Bioflu\n    [3] => 2017-04-27\n)\n', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1538, '::1', 'root', '2017-03-27 22:40:02', 'Pressed submit button', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1539, '::1', 'root', '2017-03-27 22:40:02', 'Query Executed: INSERT INTO medicine(medicine_id, medicine_name, date_expiration) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => Butamirate Citrate (SINECOD)\n    [3] => 2017-03-27\n)\n', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1540, '::1', 'root', '2017-03-27 22:41:17', 'Pressed submit button', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1541, '::1', 'root', '2017-03-27 22:41:17', 'Query Executed: INSERT INTO medicine(medicine_id, medicine_name, date_expiration) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => Captopril\n    [3] => 2017-04-27\n)\n', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1542, '::1', 'root', '2017-03-27 22:41:30', 'Pressed submit button', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1543, '::1', 'root', '2017-03-27 22:41:30', 'Query Executed: INSERT INTO medicine(medicine_id, medicine_name, date_expiration) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => Carbocisteine\n    [3] => 2017-03-27\n)\n', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1544, '::1', 'root', '2017-03-27 22:41:41', 'Pressed submit button', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1545, '::1', 'root', '2017-03-27 22:41:41', 'Query Executed: INSERT INTO medicine(medicine_id, medicine_name, date_expiration) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => Celestamine\n    [3] => 2017-04-27\n)\n', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1546, '::1', 'root', '2017-03-27 22:41:47', 'Pressed submit button', '/clinic/modules/clinic/medicine/edit_medicine.php'),
(1547, '::1', 'root', '2017-03-27 22:41:47', 'Query Executed: UPDATE medicine SET medicine_name = ?, date_expiration = ? WHERE medicine_id = ?\r\nArray\n(\n    [0] => ssi\n    [1] => Carbocisteine\n    [2] => 2017-04-27\n    [3] => 11\n)\n', '/clinic/modules/clinic/medicine/edit_medicine.php'),
(1548, '::1', 'root', '2017-03-27 22:42:03', 'Pressed submit button', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1549, '::1', 'root', '2017-03-27 22:42:03', 'Query Executed: INSERT INTO medicine(medicine_id, medicine_name, date_expiration) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => Clonidine (CATAPRES)\n    [3] => 2017-04-27\n)\n', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1550, '::1', 'root', '2017-03-27 22:42:07', 'Pressed cancel button', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1551, '::1', 'root', '2017-03-27 22:42:12', 'Pressed cancel button', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1552, '::1', 'root', '2017-03-27 22:42:22', 'Pressed submit button', '/clinic/modules/clinic/medicine/edit_medicine.php'),
(1553, '::1', 'root', '2017-03-27 22:42:22', 'Query Executed: UPDATE medicine SET medicine_name = ?, date_expiration = ? WHERE medicine_id = ?\r\nArray\n(\n    [0] => ssi\n    [1] => Decolgen no drowse\n    [2] => 2017-03-06\n    [3] => 5\n)\n', '/clinic/modules/clinic/medicine/edit_medicine.php'),
(1554, '::1', 'root', '2017-03-27 22:42:45', 'Pressed submit button', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1555, '::1', 'root', '2017-03-27 22:42:45', 'Query Executed: INSERT INTO medicine(medicine_id, medicine_name, date_expiration) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => Dequalinium Chloride (DEQUADIN)\n    [3] => 2017-04-27\n)\n', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1556, '::1', 'root', '2017-03-27 22:43:02', 'Pressed cancel button', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1557, '::1', 'root', '2017-03-27 22:43:24', 'Pressed submit button', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1558, '::1', 'root', '2017-03-27 22:43:24', 'Query Executed: INSERT INTO medicine(medicine_id, medicine_name, date_expiration) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => Diphenhydramine (BENADRYL)\n    [3] => 2017-04-27\n)\n', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1559, '::1', 'root', '2017-03-27 22:44:24', 'Pressed submit button', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1560, '::1', 'root', '2017-03-27 22:44:24', 'Query Executed: INSERT INTO medicine(medicine_id, medicine_name, date_expiration) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => Domperidone (MOTILIUM)\n    [3] => 2017-04-27\n)\n', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1561, '::1', 'root', '2017-03-27 22:44:52', 'Pressed submit button', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1562, '::1', 'root', '2017-03-27 22:44:52', 'Query Executed: INSERT INTO medicine(medicine_id, medicine_name, date_expiration) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => Hyoscine N-butylbromid (BUSCOPAN)\n    [3] => 2017-04-27\n)\n', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1563, '::1', 'root', '2017-03-27 22:45:03', 'Pressed submit button', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1564, '::1', 'root', '2017-03-27 22:45:03', 'Query Executed: INSERT INTO medicine(medicine_id, medicine_name, date_expiration) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => Ibuprofen (ADVIL)\n    [3] => 2017-04-27\n)\n', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1565, '::1', 'root', '2017-03-27 22:45:10', 'Pressed submit button', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1566, '::1', 'root', '2017-03-27 22:45:10', 'Query Executed: INSERT INTO medicine(medicine_id, medicine_name, date_expiration) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => Ibuprofen/Paracetamol (ALAXAN)\n    [3] => 2017-04-27\n)\n', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1567, '::1', 'root', '2017-03-27 22:45:23', 'Pressed submit button', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1568, '::1', 'root', '2017-03-27 22:45:23', 'Query Executed: INSERT INTO medicine(medicine_id, medicine_name, date_expiration) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => Isorsorbide dinitrate  (ISORDIL)\n    [3] => 2017-04-27\n)\n', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1569, '::1', 'root', '2017-03-27 22:45:31', 'Pressed submit button', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1570, '::1', 'root', '2017-03-27 22:45:31', 'Query Executed: INSERT INTO medicine(medicine_id, medicine_name, date_expiration) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => Kremil S chewable\n    [3] => 2017-04-27\n)\n', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1571, '::1', 'root', '2017-03-27 22:45:44', 'Pressed submit button', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1572, '::1', 'root', '2017-03-27 22:45:44', 'Query Executed: INSERT INTO medicine(medicine_id, medicine_name, date_expiration) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => Lagundi (ASCOF)\n    [3] => 2017-04-27\n)\n', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1573, '::1', 'root', '2017-03-27 22:45:52', 'Pressed submit button', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1574, '::1', 'root', '2017-03-27 22:45:52', 'Query Executed: INSERT INTO medicine(medicine_id, medicine_name, date_expiration) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => Loperamide\n    [3] => 2017-04-27\n)\n', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1575, '::1', 'root', '2017-03-27 22:46:04', 'Pressed submit button', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1576, '::1', 'root', '2017-03-27 22:46:04', 'Query Executed: INSERT INTO medicine(medicine_id, medicine_name, date_expiration) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => Loratadine (ALLERTA)\n    [3] => 2017-04-27\n)\n', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1577, '::1', 'root', '2017-03-27 22:46:19', 'Pressed submit button', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1578, '::1', 'root', '2017-03-27 22:46:19', 'Query Executed: INSERT INTO medicine(medicine_id, medicine_name, date_expiration) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => Meclizine HCL (DIZITAB)\n    [3] => 2017-04-27\n)\n', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1579, '::1', 'root', '2017-03-27 22:46:27', 'Pressed submit button', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1580, '::1', 'root', '2017-03-27 22:46:27', 'Query Executed: INSERT INTO medicine(medicine_id, medicine_name, date_expiration) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => Mefenamic Acid\n    [3] => 2017-04-27\n)\n', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1581, '::1', 'root', '2017-03-27 22:46:36', 'Pressed submit button', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1582, '::1', 'root', '2017-03-27 22:46:36', 'Query Executed: INSERT INTO medicine(medicine_id, medicine_name, date_expiration) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => Metoclopramide (PLASIL)\n    [3] => 2017-04-27\n)\n', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1583, '::1', 'root', '2017-03-27 22:46:46', 'Pressed submit button', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1584, '::1', 'root', '2017-03-27 22:46:46', 'Query Executed: INSERT INTO medicine(medicine_id, medicine_name, date_expiration) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => Metoprolol  (NEOBLOC)\n    [3] => 2017-04-27\n)\n', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1585, '::1', 'root', '2017-03-27 22:46:54', 'Pressed submit button', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1586, '::1', 'root', '2017-03-27 22:46:54', 'Query Executed: INSERT INTO medicine(medicine_id, medicine_name, date_expiration) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => Neozep no drowse\n    [3] => 2017-04-27\n)\n', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1587, '::1', 'root', '2017-03-27 22:47:03', 'Pressed submit button', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1588, '::1', 'root', '2017-03-27 22:47:03', 'Query Executed: INSERT INTO medicine(medicine_id, medicine_name, date_expiration) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => Nifedipine (CALCIBLOC)\n    [3] => 2017-04-27\n)\n', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1589, '::1', 'root', '2017-03-27 22:47:09', 'Pressed submit button', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1590, '::1', 'root', '2017-03-27 22:47:09', 'Query Executed: INSERT INTO medicine(medicine_id, medicine_name, date_expiration) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => Omeprazole\n    [3] => 2017-03-27\n)\n', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1591, '::1', 'root', '2017-03-27 22:47:13', 'Pressed submit button', '/clinic/modules/clinic/medicine/edit_medicine.php'),
(1592, '::1', 'root', '2017-03-27 22:47:13', 'Query Executed: UPDATE medicine SET medicine_name = ?, date_expiration = ? WHERE medicine_id = ?\r\nArray\n(\n    [0] => ssi\n    [1] => Omeprazole\n    [2] => 2017-04-27\n    [3] => 31\n)\n', '/clinic/modules/clinic/medicine/edit_medicine.php'),
(1593, '::1', 'root', '2017-03-27 22:47:44', 'Pressed submit button', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1594, '::1', 'root', '2017-03-27 22:47:44', 'Query Executed: INSERT INTO medicine(medicine_id, medicine_name, date_expiration) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => ORS (HYDRITE)\n    [3] => 2018-04-27\n)\n', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1595, '::1', 'root', '2017-03-27 22:47:56', 'Pressed submit button', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1596, '::1', 'root', '2017-03-27 22:47:56', 'Query Executed: INSERT INTO medicine(medicine_id, medicine_name, date_expiration) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => Paracetamol (BIOGESIC)\n    [3] => 2018-03-27\n)\n', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1597, '::1', 'root', '2017-03-27 22:48:16', 'Pressed submit button', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1598, '::1', 'root', '2017-03-27 22:48:17', 'Query Executed: INSERT INTO medicine(medicine_id, medicine_name, date_expiration) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => Piroxicam (FELDENE FLASH)\n    [3] => 2018-03-27\n)\n', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1599, '::1', 'root', '2017-03-27 22:48:27', 'Pressed submit button', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1600, '::1', 'root', '2017-03-27 22:48:27', 'Query Executed: INSERT INTO medicine(medicine_id, medicine_name, date_expiration) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => Salbutamol  tablet\n    [3] => 2018-03-27\n)\n', '/clinic/modules/clinic/medicine/add_medicine.php');
INSERT INTO `system_log` (`entry_id`, `ip_address`, `user`, `datetime`, `action`, `module`) VALUES
(1601, '::1', 'root', '2017-03-27 22:48:39', 'Pressed submit button', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1602, '::1', 'root', '2017-03-27 22:48:39', 'Query Executed: INSERT INTO medicine(medicine_id, medicine_name, date_expiration) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => Salbutamol Nebule (VENTOLIN)\n    [3] => 2018-03-27\n)\n', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1603, '::1', 'root', '2017-03-27 22:48:48', 'Pressed submit button', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1604, '::1', 'root', '2017-03-27 22:48:48', 'Query Executed: INSERT INTO medicine(medicine_id, medicine_name, date_expiration) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => Sambong Relief\n    [3] => 2018-03-27\n)\n', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1605, '::1', 'root', '2017-03-27 22:48:57', 'Pressed submit button', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1606, '::1', 'root', '2017-03-27 22:48:57', 'Query Executed: INSERT INTO medicine(medicine_id, medicine_name, date_expiration) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => Sinupret\n    [3] => 2018-03-27\n)\n', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1607, '::1', 'root', '2017-03-27 22:49:06', 'Pressed submit button', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1608, '::1', 'root', '2017-03-27 22:49:06', 'Query Executed: INSERT INTO medicine(medicine_id, medicine_name, date_expiration) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => Tranexamic acid\n    [3] => 2018-03-27\n)\n', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1609, '::1', 'root', '2017-03-27 22:49:15', 'Pressed submit button', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1610, '::1', 'root', '2017-03-27 22:49:15', 'Query Executed: INSERT INTO medicine(medicine_id, medicine_name, date_expiration) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => Tuseran Forte capsule\n    [3] => 2018-03-27\n)\n', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1611, '::1', 'root', '2017-03-27 22:52:20', 'Pressed submit button', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1612, '::1', 'root', '2017-03-27 22:53:07', 'Pressed submit button', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1613, '::1', 'root', '2017-03-27 22:53:28', 'Pressed submit button', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1614, '::1', 'root', '2017-03-27 22:53:28', 'Query Executed: INSERT INTO medicine(medicine_id, medicine_name, date_expiration) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => wwwe\n    [3] => \n)\n', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1615, '::1', 'root', '2017-03-27 22:53:45', 'Pressed delete button', '/clinic/modules/clinic/medicine/delete_medicine.php'),
(1616, '::1', 'root', '2017-03-27 22:53:45', 'Query Executed: DELETE FROM medicine WHERE medicine_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 41\n)\n', '/clinic/modules/clinic/medicine/delete_medicine.php'),
(1617, '::1', 'root', '2017-03-27 22:53:58', 'Pressed submit button', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1618, '::1', 'root', '2017-03-27 22:53:58', 'Query Executed: INSERT INTO medicine(medicine_id, medicine_name, date_expiration) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => 0.9 Nacl 1L\n    [3] => \n)\n', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1619, '::1', 'root', '2017-03-27 22:54:17', 'Pressed submit button', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1620, '::1', 'root', '2017-03-27 22:54:17', 'Query Executed: INSERT INTO medicine(medicine_id, medicine_name, date_expiration) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => Alcohol\n    [3] => \n)\n', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1621, '::1', 'root', '2017-03-27 22:54:28', 'Pressed submit button', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1622, '::1', 'root', '2017-03-27 22:54:28', 'Query Executed: INSERT INTO medicine(medicine_id, medicine_name, date_expiration) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => Ammonia\n    [3] => \n)\n', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1623, '::1', 'root', '2017-03-27 22:54:42', 'Pressed submit button', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1624, '::1', 'root', '2017-03-27 22:54:42', 'Query Executed: INSERT INTO medicine(medicine_id, medicine_name, date_expiration) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => Bactidol Gargle\n    [3] => \n)\n', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1625, '::1', 'root', '2017-03-27 22:54:52', 'Pressed submit button', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1626, '::1', 'root', '2017-03-27 22:54:52', 'Query Executed: INSERT INTO medicine(medicine_id, medicine_name, date_expiration) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => Bactroban\n    [3] => \n)\n', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1627, '::1', 'root', '2017-03-27 22:55:02', 'Pressed submit button', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1628, '::1', 'root', '2017-03-27 22:55:02', 'Query Executed: INSERT INTO medicine(medicine_id, medicine_name, date_expiration) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => Band-Aid\n    [3] => \n)\n', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1629, '::1', 'root', '2017-03-27 22:55:14', 'Pressed submit button', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1630, '::1', 'root', '2017-03-27 22:55:14', 'Query Executed: INSERT INTO medicine(medicine_id, medicine_name, date_expiration) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => Betadine\n    [3] => \n)\n', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1631, '::1', 'root', '2017-03-27 22:55:34', 'Pressed submit button', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1632, '::1', 'root', '2017-03-27 22:55:34', 'Query Executed: INSERT INTO medicine(medicine_id, medicine_name, date_expiration) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => Betadine 120ml\n    [3] => \n)\n', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1633, '::1', 'root', '2017-03-27 22:55:43', 'Pressed submit button', '/clinic/modules/clinic/medicine/edit_medicine.php'),
(1634, '::1', 'root', '2017-03-27 22:55:43', 'Query Executed: UPDATE medicine SET medicine_name = ?, date_expiration = ? WHERE medicine_id = ?\r\nArray\n(\n    [0] => ssi\n    [1] => Betadine 10ml\n    [2] => 2017-03-27\n    [3] => 48\n)\n', '/clinic/modules/clinic/medicine/edit_medicine.php'),
(1635, '::1', 'root', '2017-03-27 22:55:57', 'Pressed submit button', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1636, '::1', 'root', '2017-03-27 22:55:57', 'Query Executed: INSERT INTO medicine(medicine_id, medicine_name, date_expiration) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => Burn Ointment\n    [3] => \n)\n', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1637, '::1', 'root', '2017-03-27 22:56:13', 'Pressed submit button', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1638, '::1', 'root', '2017-03-27 22:56:13', 'Query Executed: INSERT INTO medicine(medicine_id, medicine_name, date_expiration) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => Cotton Balls\n    [3] => \n)\n', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1639, '::1', 'root', '2017-03-27 22:56:24', 'Pressed submit button', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1640, '::1', 'root', '2017-03-27 22:56:24', 'Query Executed: INSERT INTO medicine(medicine_id, medicine_name, date_expiration) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => Cotton Buds\n    [3] => \n)\n', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1641, '::1', 'root', '2017-03-27 22:56:33', 'Pressed submit button', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1642, '::1', 'root', '2017-03-27 22:56:33', 'Query Executed: INSERT INTO medicine(medicine_id, medicine_name, date_expiration) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => Efficascent Oil\n    [3] => \n)\n', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1643, '::1', 'root', '2017-03-27 22:56:42', 'Pressed submit button', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1644, '::1', 'root', '2017-03-27 22:56:42', 'Query Executed: INSERT INTO medicine(medicine_id, medicine_name, date_expiration) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => Elastic Bandage 3”\n    [3] => \n)\n', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1645, '::1', 'root', '2017-03-27 22:56:53', 'Pressed submit button', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1646, '::1', 'root', '2017-03-27 22:56:53', 'Query Executed: INSERT INTO medicine(medicine_id, medicine_name, date_expiration) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => Elastic Bandage 6”\n    [3] => \n)\n', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1647, '::1', 'root', '2017-03-27 22:57:07', 'Pressed submit button', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1648, '::1', 'root', '2017-03-27 22:57:07', 'Query Executed: INSERT INTO medicine(medicine_id, medicine_name, date_expiration) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => Eye Patch\n    [3] => \n)\n', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1649, '::1', 'root', '2017-03-27 22:57:21', 'Pressed submit button', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1650, '::1', 'root', '2017-03-27 22:57:21', 'Query Executed: INSERT INTO medicine(medicine_id, medicine_name, date_expiration) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => Face mask\n    [3] => \n)\n', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1651, '::1', 'root', '2017-03-27 22:57:31', 'Pressed submit button', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1652, '::1', 'root', '2017-03-27 22:57:31', 'Query Executed: INSERT INTO medicine(medicine_id, medicine_name, date_expiration) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => Flammazine\n    [3] => \n)\n', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1653, '::1', 'root', '2017-03-27 22:57:40', 'Pressed submit button', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1654, '::1', 'root', '2017-03-27 22:57:40', 'Query Executed: INSERT INTO medicine(medicine_id, medicine_name, date_expiration) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => Gauze Pad 4x4\n    [3] => \n)\n', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1655, '::1', 'root', '2017-03-27 22:57:51', 'Pressed submit button', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1656, '::1', 'root', '2017-03-27 22:57:51', 'Query Executed: INSERT INTO medicine(medicine_id, medicine_name, date_expiration) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => Hand Sanitizer\n    [3] => \n)\n', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1657, '::1', 'root', '2017-03-27 22:58:01', 'Pressed submit button', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1658, '::1', 'root', '2017-03-27 22:58:01', 'Query Executed: INSERT INTO medicine(medicine_id, medicine_name, date_expiration) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => KY Jelly\n    [3] => \n)\n', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1659, '::1', 'root', '2017-03-27 22:58:14', 'Pressed submit button', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1660, '::1', 'root', '2017-03-27 22:58:14', 'Query Executed: INSERT INTO medicine(medicine_id, medicine_name, date_expiration) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => Hydrocortisone cream\n    [3] => \n)\n', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1661, '::1', 'root', '2017-03-27 22:58:23', 'Pressed submit button', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1662, '::1', 'root', '2017-03-27 22:58:23', 'Query Executed: INSERT INTO medicine(medicine_id, medicine_name, date_expiration) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => Hydrogen Peroxide\n    [3] => \n)\n', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1663, '::1', 'root', '2017-03-27 22:58:33', 'Pressed submit button', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1664, '::1', 'root', '2017-03-27 22:58:33', 'Query Executed: INSERT INTO medicine(medicine_id, medicine_name, date_expiration) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => Lysol spray\n    [3] => \n)\n', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1665, '::1', 'root', '2017-03-27 22:58:42', 'Pressed submit button', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1666, '::1', 'root', '2017-03-27 22:58:42', 'Query Executed: INSERT INTO medicine(medicine_id, medicine_name, date_expiration) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => Micropore 1''\n    [3] => \n)\n', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1667, '::1', 'root', '2017-03-27 22:58:53', 'Pressed submit button', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1668, '::1', 'root', '2017-03-27 22:58:53', 'Query Executed: INSERT INTO medicine(medicine_id, medicine_name, date_expiration) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => Non- Sterile Gloves\n    [3] => \n)\n', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1669, '::1', 'root', '2017-03-27 22:59:01', 'Pressed submit button', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1670, '::1', 'root', '2017-03-27 22:59:01', 'Query Executed: INSERT INTO medicine(medicine_id, medicine_name, date_expiration) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => Petroleum Jelly\n    [3] => \n)\n', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1671, '::1', 'root', '2017-03-27 22:59:10', 'Pressed submit button', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1672, '::1', 'root', '2017-03-27 22:59:10', 'Query Executed: INSERT INTO medicine(medicine_id, medicine_name, date_expiration) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => Salonpas\n    [3] => \n)\n', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1673, '::1', 'root', '2017-03-27 22:59:20', 'Pressed submit button', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1674, '::1', 'root', '2017-03-27 22:59:20', 'Query Executed: INSERT INTO medicine(medicine_id, medicine_name, date_expiration) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => Syringe 3cc\n    [3] => \n)\n', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1675, '::1', 'root', '2017-03-27 22:59:29', 'Pressed submit button', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1676, '::1', 'root', '2017-03-27 22:59:29', 'Query Executed: INSERT INTO medicine(medicine_id, medicine_name, date_expiration) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => Tetrahydrozoline (red eye)\n    [3] => \n)\n', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1677, '::1', 'root', '2017-03-27 22:59:38', 'Pressed submit button', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1678, '::1', 'root', '2017-03-27 22:59:38', 'Query Executed: INSERT INTO medicine(medicine_id, medicine_name, date_expiration) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => Tetrahydrozoline (refresh)\n    [3] => \n)\n', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1679, '::1', 'root', '2017-03-27 22:59:46', 'Pressed submit button', '/clinic/modules/clinic/medicine/add_medicine.php'),
(1680, '::1', 'root', '2017-03-27 22:59:46', 'Query Executed: INSERT INTO medicine(medicine_id, medicine_name, date_expiration) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => Triderm\n    [3] => \n)\n', '/clinic/modules/clinic/medicine/add_medicine.php');

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `setting` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`setting`, `value`) VALUES
('Max Attachment Height', '0'),
('Max Attachment Size (MB)', '0'),
('Max Attachment Width', '0'),
('Security Level', 'HIGH');

-- --------------------------------------------------------

--
-- Table structure for table `system_skins`
--

CREATE TABLE `system_skins` (
  `skin_id` int(11) NOT NULL,
  `skin_name` varchar(255) NOT NULL,
  `header` varchar(255) NOT NULL,
  `footer` varchar(255) NOT NULL,
  `master_css` varchar(255) NOT NULL,
  `colors_css` varchar(255) NOT NULL,
  `fonts_css` varchar(255) NOT NULL,
  `override_css` varchar(255) NOT NULL,
  `icon_set` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `system_skins`
--

INSERT INTO `system_skins` (`skin_id`, `skin_name`, `header`, `footer`, `master_css`, `colors_css`, `fonts_css`, `override_css`, `icon_set`) VALUES
(1, 'Cobalt Default', 'skins/default_header.php', 'skins/default_footer.php', 'cobalt_master.css', 'cobalt_colors.css', 'cobalt_fonts.css', 'cobalt_override.css', 'cobalt'),
(2, 'Cobalt Minimal', 'skins/minimal_header.php', 'skins/minimal_footer.php', 'cobalt_minimal.css', 'cobalt_minimal.css', 'cobalt_minimal.css', 'cobalt_minimal.css', 'cobalt'),
(3, 'After Sunset', 'skins/default_header.php', 'skins/default_footer.php', 'after_sunset_master.css', 'after_sunset_colors.css', 'after_sunset_fonts.css', 'after_sunset_override.css', 'cobalt'),
(4, 'Hello There', 'skins/default_header.php', 'skins/default_footer.php', 'hello_there_master.css', 'hello_there_colors.css', 'hello_there_fonts.css', 'hello_there_override.css', 'cobalt'),
(5, 'Gold Titanium', 'skins/default_header.php', 'skins/default_footer.php', 'gold_titanium_master.css', 'gold_titanium_colors.css', 'gold_titanium_fonts.css', 'gold_titanium_override.css', 'cobalt'),
(6, 'Summer Rain', 'skins/default_header.php', 'skins/default_footer.php', 'summer_rain_master.css', 'summer_rain_colors.css', 'summer_rain_fonts.css', 'summer_rain_override.css', 'cobalt'),
(7, 'Salmon Impression', 'skins/default_header.php', 'skins/default_footer.php', 'salmon_impression_master.css', 'salmon_impression_colors.css', 'salmon_impression_fonts.css', 'salmon_impression_override.css', 'cobalt'),
(8, 'Royal Amethyst', 'skins/default_header.php', 'skins/default_footer.php', 'royal_amethyst_master.css', 'royal_amethyst_colors.css', 'royal_amethyst_fonts.css', 'royal_amethyst_override.css', 'cobalt'),
(9, 'Red Decadence', 'skins/default_header.php', 'skins/default_footer.php', 'red_decadence_master.css', 'red_decadence_colors.css', 'red_decadence_fonts.css', 'red_decadence_override.css', 'cobalt'),
(10, 'Modern Eden', 'skins/default_header.php', 'skins/default_footer.php', 'modern_eden_master.css', 'modern_eden_colors.css', 'modern_eden_fonts.css', 'modern_eden_override.css', 'cobalt'),
(11, 'Warm Teal', 'skins/default_header.php', 'skins/default_footer.php', 'warm_teal_master.css', 'warm_teal_colors.css', 'warm_teal_fonts.css', 'warm_teal_override.css', 'cobalt'),
(12, 'Purple Rain', 'skins/default_header.php', 'skins/default_footer.php', 'purple_rain_master.css', 'purple_rain_colors.css', 'purple_rain_fonts.css', 'purple_rain_override.css', 'cobalt');

-- --------------------------------------------------------

--
-- Table structure for table `term`
--

CREATE TABLE `term` (
  `term_id` int(5) UNSIGNED NOT NULL,
  `school_year` year(4) NOT NULL,
  `term` enum('1','2','3','S') NOT NULL DEFAULT '1',
  `term_start` date DEFAULT NULL,
  `term_end` date DEFAULT NULL,
  `reg_start` date DEFAULT NULL,
  `reg_end` date DEFAULT NULL,
  `install1` date NOT NULL,
  `install2` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Masterlist of Term Schedule';

--
-- Dumping data for table `term`
--

INSERT INTO `term` (`term_id`, `school_year`, `term`, `term_start`, `term_end`, `reg_start`, `reg_end`, `install1`, `install2`) VALUES
(1, 1993, '1', NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00'),
(2, 1993, '2', NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00'),
(3, 1993, '3', NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00'),
(4, 1994, '1', NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00'),
(5, 1994, '2', NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00'),
(6, 1994, '3', NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00'),
(7, 1995, '1', NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00'),
(8, 1995, '2', NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00'),
(9, 1995, '3', NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00'),
(10, 1996, '1', NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00'),
(11, 1996, '2', NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00'),
(12, 1996, '3', NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00'),
(13, 1997, '1', NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00'),
(14, 1997, '2', NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00'),
(15, 1997, '3', NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00'),
(16, 1998, '1', NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00'),
(17, 1998, '2', NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00'),
(18, 1998, '3', NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00'),
(19, 1999, '1', NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00'),
(20, 1999, '2', NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00'),
(21, 1999, '3', NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00'),
(22, 2000, '1', NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00'),
(23, 2000, '2', NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00'),
(24, 2000, '3', NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00'),
(25, 2001, '1', NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00'),
(26, 2001, '2', NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00'),
(27, 2001, '3', NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00'),
(28, 2002, '1', NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00'),
(29, 2002, '2', NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00'),
(30, 2002, '3', NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00'),
(31, 2003, '1', NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00'),
(32, 2003, '2', NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00'),
(33, 2003, '3', NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00'),
(34, 1998, 'S', NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00'),
(35, 2004, '1', NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00'),
(36, 2004, '2', NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00'),
(37, 2004, '3', NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00'),
(38, 2005, '1', NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00'),
(39, 2005, '2', '2005-09-14', '2005-12-22', '2005-11-15', '2005-12-01', '0000-00-00', '0000-00-00'),
(40, 2005, '3', '2006-01-09', '2006-04-19', '2006-03-13', '2006-03-31', '0000-00-00', '0000-00-00'),
(41, 1999, 'S', NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00'),
(42, 2000, 'S', NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00'),
(43, 2006, 'S', '2007-04-23', '2007-05-17', NULL, NULL, '0000-00-00', '0000-00-00'),
(44, 2006, '1', '2006-06-05', '2006-09-08', '2006-08-08', '2006-08-24', '0000-00-00', '0000-00-00'),
(45, 2006, '2', '2006-09-16', '2006-12-22', '2006-11-21', '2006-12-08', '0000-00-00', '0000-00-00'),
(46, 2006, '3', '2007-01-10', '2007-04-19', '2007-03-14', '2007-03-28', '0000-00-00', '0000-00-00'),
(47, 2003, 'S', NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00'),
(48, 2005, 'S', NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00'),
(49, 2007, '1', '2007-06-06', '2007-09-10', '2007-08-07', '2007-08-22', '0000-00-00', '0000-00-00'),
(50, 2007, '2', '2007-09-17', '2007-12-19', NULL, NULL, '0000-00-00', '0000-00-00'),
(51, 2007, '3', '2008-01-09', '2008-04-17', '2007-11-20', '2007-12-07', '0000-00-00', '0000-00-00'),
(53, 2008, '1', '2008-06-02', '2008-09-16', '2008-08-05', '2008-08-19', '0000-00-00', '0000-00-00'),
(52, 2007, 'S', '2008-04-23', '2008-05-16', '2008-04-19', '2008-04-19', '0000-00-00', '0000-00-00'),
(54, 2008, '2', '2008-09-17', '2008-12-19', '2008-08-05', '2008-08-22', '0000-00-00', '0000-00-00'),
(55, 2008, '3', '2009-01-06', '2009-04-12', '2008-01-01', '2008-01-06', '0000-00-00', '0000-00-00'),
(56, 2008, 'S', '2009-04-27', '2009-05-23', '2009-05-18', '2009-05-23', '0000-00-00', '0000-00-00'),
(57, 2009, '1', '2009-06-04', '2009-09-14', '2009-08-04', '2009-08-19', '0000-00-00', '0000-00-00'),
(58, 2009, '2', '2009-09-22', '2010-01-23', '2009-09-01', '2009-09-14', '0000-00-00', '0000-00-00'),
(59, 2009, '3', '2010-01-25', '2010-05-03', '2009-12-01', '2009-12-16', '0000-00-00', '0000-00-00'),
(61, 2010, '1', '2010-05-31', '2010-09-08', '2010-03-30', '2010-04-17', '2010-07-10', '2010-08-31'),
(60, 2009, 'S', '2010-05-12', '2010-05-29', '2010-05-11', '2010-05-15', '0000-00-00', '0000-00-00'),
(62, 2010, '2', '2010-09-15', '2010-12-22', '2010-08-10', '2010-08-25', '2010-10-25', '2010-12-15'),
(63, 2010, '3', '2011-01-10', '2011-04-16', '2011-03-15', '2011-03-31', '2011-02-16', '2011-04-01'),
(65, 2011, '1', '2011-05-27', '2011-09-13', '2011-03-17', '2011-03-26', '2011-07-16', '2011-09-03'),
(64, 2010, 'S', '2011-04-15', '2011-05-20', '2011-04-30', '2011-05-15', '0000-00-00', '0000-00-00'),
(75, 2013, '2', '2013-09-14', '2013-12-21', '2013-08-05', '2013-08-17', '2013-10-26', '2013-12-17'),
(66, 2011, '2', '2011-09-13', '2011-12-23', '2011-08-16', '2011-08-31', '2011-10-29', '2011-12-16'),
(67, 2011, '3', '2012-01-05', '2012-04-19', '2011-11-22', '2011-12-06', '2012-02-17', '2012-04-12'),
(68, 2011, 'S', '2011-04-23', '2011-05-21', '1999-11-30', '1999-11-30', '0000-00-00', '0000-00-00'),
(69, 2012, '1', '2012-05-29', '2012-09-10', '1999-11-30', '1999-11-30', '2012-07-14', '2012-09-03'),
(70, 2012, '2', '2012-09-11', '2012-12-22', '2012-08-06', '2012-08-18', '2012-10-25', '2012-12-14'),
(73, 2012, '3', '2013-01-07', '2013-05-15', '2012-11-19', '2012-11-29', '2013-02-16', '2013-04-13'),
(74, 2013, '1', '2013-06-05', '2013-09-20', '2013-03-18', '2013-03-27', '2013-07-16', '2013-09-03'),
(76, 2013, '3', '2014-01-03', '2014-04-28', '2013-11-23', '2013-12-04', '2014-02-22', '2014-04-11'),
(77, 2014, '1', '2014-05-09', '2014-09-08', '2014-03-17', '2014-03-29', '2014-07-12', '2014-08-30'),
(78, 2013, 'S', '2014-04-28', '2014-05-21', '2014-04-23', '2014-04-27', '0000-00-00', '0000-00-00'),
(79, 2014, '2', '2014-09-11', '2015-01-04', '2014-11-22', '2014-12-05', '2014-10-28', '2014-12-13'),
(80, 2014, '3', '2015-01-05', '2015-04-22', '2015-03-16', '2015-03-28', '2015-02-20', '2015-04-13'),
(81, 2014, 'S', '2015-04-24', '2015-06-02', '2015-01-15', '2015-01-30', '0000-00-00', '0000-00-00'),
(82, 2015, '1', '2015-06-03', '2015-09-12', '2015-03-16', '2015-03-28', '2015-07-10', '2015-08-28'),
(83, 2015, '2', '2015-09-16', '2016-01-06', '2015-08-03', '2015-08-15', '2015-10-31', '2015-12-16'),
(84, 2015, '3', '2016-01-18', '2016-04-22', '2015-11-23', '2015-12-07', '2016-02-29', '2016-04-19'),
(85, 2015, 'S', '2016-04-27', '2016-05-20', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
(86, 2016, '1', '2016-06-06', '2016-09-09', '2016-03-21', '2016-04-02', '2016-07-16', '2016-09-03'),
(87, 2016, '2', '2016-09-19', '2017-01-03', '2016-08-08', '2016-08-20', '2016-10-29', '2016-12-17'),
(88, 2016, '3', '2017-01-09', '2017-04-19', '2016-11-21', '2016-12-05', '2017-02-18', '2017-04-08');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) NOT NULL,
  `iteration` int(11) NOT NULL,
  `method` varchar(255) NOT NULL,
  `person_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `skin_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`, `salt`, `iteration`, `method`, `person_id`, `role_id`, `skin_id`) VALUES
('doctor', '$2y$12$UsZcXA9NrQ6W6uJFFQX96.GZPuomOlB2/KVspODmUhCGTXD1lnpky', 'UsZcXA9NrQ6W6uJFFQX96A', 12, 'blowfish', 3, 4, 7),
('nurse', '$2y$12$pxuwB7LWk18IfmgAA6kJBeJxVGrw77LA2y7/CkapBcHDqgUl2K/06', 'pxuwB7LWk18IfmgAA6kJBg', 12, 'blowfish', 2, 3, 6),
('root', '$2y$12$QU29gqrc8P.IkjvVNG6DB.7JXbCmLhKm.vh1Ci9mnpnuD7eDm3P6a', 'QU29gqrc8P+IkjvVNG6DBA', 12, 'blowfish', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_links`
--

CREATE TABLE `user_links` (
  `link_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `descriptive_title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `passport_group_id` int(11) NOT NULL,
  `show_in_tasklist` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `priority` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_links`
--

INSERT INTO `user_links` (`link_id`, `name`, `target`, `descriptive_title`, `description`, `passport_group_id`, `show_in_tasklist`, `status`, `icon`, `priority`) VALUES
(1, 'Module Control', 'sysadmin/module_control.php', 'Module Control', 'Enable or disable system modules', 2, 'Yes', 'On', 'modulecontrol.png', 0),
(2, 'Set User Passports', 'sysadmin/set_user_passports.php', 'Set User Passports', 'Change the passport settings of system users', 2, 'Yes', 'On', 'passport.png', 0),
(3, 'Security Monitor', 'sysadmin/security_monitor.php', 'Security Monitor', 'Examine the system log', 2, 'Yes', 'On', 'security3.png', 0),
(4, 'Add person', 'sysadmin/add_person.php', 'Add Person', '', 2, 'No', 'On', 'form.png', 0),
(5, 'Edit person', 'sysadmin/edit_person.php', 'Edit Person', '', 2, 'No', 'On', 'form.png', 0),
(6, 'View person', 'sysadmin/listview_person.php', 'Person', '', 2, 'Yes', 'On', 'persons.png', 0),
(7, 'Delete person', 'sysadmin/delete_person.php', 'Delete Person', '', 2, 'No', 'On', 'form.png', 0),
(8, 'Add user', 'sysadmin/add_user.php', 'Add User', '', 2, 'No', 'On', 'form.png', 0),
(9, 'Edit user', 'sysadmin/edit_user.php', 'Edit User', '', 2, 'No', 'On', 'form.png', 0),
(10, 'View user', 'sysadmin/listview_user.php', 'User', '', 2, 'Yes', 'On', 'card.png', 0),
(11, 'Delete user', 'sysadmin/delete_user.php', 'Delete User', '', 2, 'No', 'On', 'form.png', 0),
(12, 'Add user role', 'sysadmin/add_user_role.php', 'Add User Role', '', 2, 'No', 'On', 'form.png', 0),
(13, 'Edit user role', 'sysadmin/edit_user_role.php', 'Edit User Role', '', 2, 'No', 'On', 'form.png', 0),
(14, 'View user role', 'sysadmin/listview_user_role.php', 'User Roles', '', 2, 'Yes', 'On', 'roles.png', 0),
(15, 'Delete user role', 'sysadmin/delete_user_role.php', 'Delete User Role', '', 2, 'No', 'On', 'form.png', 0),
(16, 'Add system settings', 'sysadmin/add_system_settings.php', 'Add System Settings', '', 2, 'No', 'On', 'form.png', 0),
(17, 'Edit system settings', 'sysadmin/edit_system_settings.php', 'Edit System Settings', '', 2, 'No', 'On', 'form.png', 0),
(18, 'View system settings', 'sysadmin/listview_system_settings.php', 'System Settings', '', 2, 'Yes', 'On', 'system_settings.png', 0),
(19, 'Delete system settings', 'sysadmin/delete_system_settings.php', 'Delete System Settings', '', 2, 'No', 'On', 'form.png', 0),
(20, 'Add user links', 'sysadmin/add_user_links.php', 'Add User Links', '', 2, 'No', 'On', 'form.png', 0),
(21, 'Edit user links', 'sysadmin/edit_user_links.php', 'Edit User Links', '', 2, 'No', 'On', 'form.png', 0),
(22, 'View user links', 'sysadmin/listview_user_links.php', 'User Links', '', 2, 'Yes', 'On', 'links.png', 0),
(23, 'Delete user links', 'sysadmin/delete_user_links.php', 'Delete User Links', '', 2, 'No', 'On', 'form.png', 0),
(24, 'Add user passport groups', 'sysadmin/add_user_passport_groups.php', 'Add User Passport Groups', '', 2, 'No', 'On', 'form.png', 0),
(25, 'Edit user passport groups', 'sysadmin/edit_user_passport_groups.php', 'Edit User Passport Groups', '', 2, 'No', 'On', 'form.png', 0),
(26, 'View user passport groups', 'sysadmin/listview_user_passport_groups.php', 'User Passport Groups', '', 2, 'Yes', 'On', 'passportgroup.png', 0),
(27, 'Delete user passport groups', 'sysadmin/delete_user_passport_groups.php', 'Delete User Passport Groups', '', 2, 'No', 'On', 'form.png', 0),
(28, 'Add system skins', 'sysadmin/add_system_skins.php', 'Add System Skins', '', 2, 'No', 'On', 'form.png', 0),
(29, 'Edit system skins', 'sysadmin/edit_system_skins.php', 'Edit System Skins', '', 2, 'No', 'On', 'form.png', 0),
(30, 'View system skins', 'sysadmin/listview_system_skins.php', 'System Skins', '', 2, 'Yes', 'On', 'system_skins.png', 0),
(31, 'Delete system skins', 'sysadmin/delete_system_skins.php', 'Delete System Skins', '', 2, 'No', 'On', 'form.png', 0),
(32, 'Reset Password', 'sysadmin/reset_password.php', 'Reset Password', '', 2, 'Yes', 'On', 'lock_big.png', 0),
(33, 'Add cobalt sst', 'sst/add_cobalt_sst.php', 'Add Cobalt SST', '', 2, 'No', 'On', 'form3.png', 0),
(34, 'Edit cobalt sst', 'sst/edit_cobalt_sst.php', 'Edit Cobalt SST', '', 2, 'No', 'On', 'form3.png', 0),
(35, 'View cobalt sst', 'sst/listview_cobalt_sst.php', 'Cobalt SST', '', 2, 'Yes', 'On', 'form3.png', 0),
(36, 'Delete cobalt sst', 'sst/delete_cobalt_sst.php', 'Delete Cobalt SST', '', 2, 'No', 'On', 'form3.png', 0),
(37, 'Add dept', 'modules/Registrar/department/add_dept.php', 'Add Dept', '', 5, 'No', 'On', 'form3.png', 0),
(38, 'Edit dept', 'modules/Registrar/department/edit_dept.php', 'Edit Dept', '', 5, 'No', 'On', 'form3.png', 0),
(39, 'View dept', 'modules/Registrar/department/listview_dept.php', 'Department', '', 5, 'Yes', 'On', 'form3.png', 0),
(40, 'Delete dept', 'modules/Registrar/department/delete_dept.php', 'Delete Dept', '', 5, 'No', 'On', 'form3.png', 0),
(41, 'Add emergencycase', 'modules/Clinic/emergency_case/add_emergencycase.php', 'Add Emergencycase', '', 3, 'No', 'On', 'form3.png', 0),
(42, 'Edit emergencycase', 'modules/Clinic/emergency_case/edit_emergencycase.php', 'Edit Emergencycase', '', 3, 'No', 'On', 'form3.png', 0),
(43, 'View emergencycase', 'modules/Clinic/emergency_case/listview_emergencycase.php', 'Emergency case', '', 3, 'Yes', 'On', 'form3.png', 0),
(44, 'Delete emergencycase', 'modules/Clinic/emergency_case/delete_emergencycase.php', 'Delete Emergencycase', '', 3, 'No', 'On', 'form3.png', 0),
(45, 'Add employee', 'modules/Registrar/employee/add_employee.php', 'Add Employee', '', 7, 'No', 'On', 'form3.png', 0),
(46, 'Edit Employee', 'modules/Registrar/employee/edit_employee.php', 'Edit Employee', '', 7, 'No', 'On', 'form3.png', 0),
(47, 'View employee', 'modules/Registrar/employee/listview_employee.php', 'Employee', '', 7, 'Yes', 'On', 'form3.png', 0),
(48, 'Delete employee', 'modules/Registrar/employee/delete_employee.php', 'Delete Employee', '', 7, 'No', 'On', 'form3.png', 0),
(49, 'Add hospital', 'modules/Clinic/hospital/add_hospital.php', 'Add Hospital', '', 3, 'No', 'On', 'form3.png', 0),
(50, 'Edit hospital', 'modules/Clinic/hospital/edit_hospital.php', 'Edit Hospital', '', 3, 'No', 'On', 'form3.png', 0),
(51, 'View hospital', 'modules/Clinic/hospital/listview_hospital.php', 'Hospital', '', 3, 'Yes', 'On', 'form3.png', 0),
(52, 'Delete hospital', 'modules/Clinic/hospital/delete_hospital.php', 'Delete Hospital', '', 3, 'No', 'On', 'form3.png', 0),
(53, 'Add log detail', 'modules/clinic/log_detail/add_log_detail.php', 'Add Log Detail', '', 3, 'No', 'On', 'form3.png', 0),
(54, 'Edit log detail', 'modules/clinic/log_detail/edit_log_detail.php', 'Edit Log Detail', '', 3, 'No', 'On', 'form3.png', 0),
(55, 'View log detail', 'modules/clinic/log_detail/listview_log_detail.php', 'Log Detail', '', 3, 'Yes', 'On', 'form3.png', 0),
(56, 'Delete log detail', 'modules/clinic/log_detail/delete_log_detail.php', 'Delete Log Detail', '', 3, 'No', 'On', 'form3.png', 0),
(57, 'Add log info', 'modules/clinic/log_info/add_log_info.php', 'Add Log Info', '', 3, 'No', 'On', 'form3.png', 0),
(58, 'Edit log info', 'modules/clinic/log_info/edit_log_info.php', 'Edit Log Info', '', 3, 'No', 'On', 'form3.png', 0),
(59, 'View log info', 'modules/clinic/log_info/listview_log_info.php', 'Log Info', '', 3, 'Yes', 'On', 'form3.png', 0),
(60, 'Delete log info', 'modules/clinic/log_info/delete_log_info.php', 'Delete Log Info', '', 3, 'No', 'On', 'form3.png', 0),
(61, 'Add medicine', 'modules/clinic/medicine/add_medicine.php', 'Add Medicine', '', 3, 'No', 'On', 'form3.png', 0),
(62, 'Edit medicine', 'modules/clinic/medicine/edit_medicine.php', 'Edit Medicine', '', 3, 'No', 'On', 'form3.png', 0),
(63, 'View medicine', 'modules/clinic/medicine/listview_medicine.php', 'Medical Supplies', '', 3, 'Yes', 'On', 'form3.png', 0),
(64, 'Delete medicine', 'modules/clinic/medicine/delete_medicine.php', 'Delete Medicine', '', 3, 'No', 'On', 'form3.png', 0),
(69, 'Add medicine receiving', 'modules/clinic/medicine_receiving/add_medicine_receiving.php', 'Add Medicine Receiving', '', 3, 'No', 'On', 'form3.png', 0),
(70, 'Edit medicine receiving', 'modules/clinic/medicine_receiving/edit_medicine_receiving.php', 'Edit Medicine Receiving', '', 3, 'No', 'On', 'form3.png', 0),
(71, 'View medicine receiving', 'modules/clinic/medicine_receiving/listview_medicine_receiving.php', 'Medical Supplies Receiving', '', 3, 'Yes', 'On', 'form3.png', 0),
(72, 'Delete medicine receiving', 'modules/clinic/medicine_receiving/delete_medicine_receiving.php', 'Delete Medicine Receiving', '', 3, 'No', 'On', 'form3.png', 0),
(73, 'Add refempfamily', 'modules/Registrar/employee_family/add_refempfamily.php', 'Add Employee Family', '', 7, 'No', 'On', 'form3.png', 0),
(74, 'Edit refempfamily', 'modules/Registrar/employee_family/edit_refempfamily.php', 'Edit Employee Family', '', 7, 'No', 'On', 'form3.png', 0),
(75, 'View refempfamily', 'modules/Registrar/employee_family/listview_refempfamily.php', 'Employee Family', '', 7, 'Yes', 'On', 'form3.png', 0),
(76, 'Delete refempfamily', 'modules/Registrar/employee_family/delete_refempfamily.php', 'Delete Refempfamily', '', 7, 'No', 'On', 'form3.png', 0),
(77, 'Add refstudent', 'modules/Registrar/student/add_refstudent.php', 'Add Refstudent', '', 7, 'No', 'On', 'form3.png', 0),
(78, 'Edit refstudent', 'modules/Registrar/student/edit_refstudent.php', 'Edit Refstudent', '', 7, 'No', 'On', 'form3.png', 0),
(79, 'View refstudent', 'modules/Registrar/student/listview_refstudent.php', 'Student', '', 7, 'Yes', 'On', 'form3.png', 0),
(80, 'Delete refstudent', 'modules/Registrar/student/delete_refstudent.php', 'Delete Refstudent', '', 7, 'No', 'On', 'form3.png', 0),
(81, 'Add refstudentclearance', 'modules/Registrar/clearance/add_refstudentclearance.php', 'Add Refstudentclearance', '', 5, 'No', 'On', 'form3.png', 0),
(82, 'Edit refstudentclearance', 'modules/Registrar/clearance/edit_refstudentclearance.php', 'Edit Refstudentclearance', '', 5, 'No', 'On', 'form3.png', 0),
(83, 'View refstudentclearance', 'modules/Registrar/clearance/listview_refstudentclearance.php', 'Student Clearance', '', 5, 'Yes', 'On', 'form3.png', 0),
(84, 'Delete refstudentclearance', 'modules/Registrar/clearance/delete_refstudentclearance.php', 'Delete Refstudentclearance', '', 5, 'No', 'On', 'form3.png', 0),
(85, 'Add refstudentfamily', 'modules/Registrar/student_family/add_refstudentfamily.php', 'Add Refstudentfamily', '', 7, 'No', 'On', 'form3.png', 0),
(86, 'Edit refstudentfamily', 'modules/Registrar/student_family/edit_refstudentfamily.php', 'Edit Refstudentfamily', '', 7, 'No', 'On', 'form3.png', 0),
(87, 'View refstudentfamily', 'modules/Registrar/student_family/listview_refstudentfamily.php', 'Student Family', '', 7, 'Yes', 'On', 'form3.png', 0),
(88, 'Delete refstudentfamily', 'modules/Registrar/student_family/delete_refstudentfamily.php', 'Delete Refstudentfamily', '', 7, 'No', 'On', 'form3.png', 0),
(89, 'Add refsubjectofferingdtl', 'modules/Registrar/subject_offering_detail/add_refsubjectofferingdtl.php', 'Add Refsubjectofferingdtl', '', 5, 'No', 'On', 'form3.png', 0),
(90, 'Edit refsubjectofferingdtl', 'modules/Registrar/subject_offering_detail/edit_refsubjectofferingdtl.php', 'Edit Refsubjectofferingdtl', '', 5, 'No', 'On', 'form3.png', 0),
(91, 'View refsubjectofferingdtl', 'modules/Registrar/subject_offering_detail/listview_refsubjectofferingdtl.php', 'Subject Offering Detail', '', 5, 'Yes', 'On', 'form3.png', 0),
(92, 'Delete refsubjectofferingdtl', 'modules/Registrar/subject_offering_detail/delete_refsubjectofferingdtl.php', 'Delete Refsubjectofferingdtl', '', 5, 'No', 'On', 'form3.png', 0),
(93, 'Add refsubjectofferinghdr', 'modules/Registrar/subject_offering_header/add_refsubjectofferinghdr.php', 'Add Refsubjectofferinghdr', '', 5, 'No', 'On', 'form3.png', 0),
(94, 'Edit refsubjectofferinghdr', 'modules/Registrar/subject_offering_header/edit_refsubjectofferinghdr.php', 'Edit Refsubjectofferinghdr', '', 5, 'No', 'On', 'form3.png', 0),
(95, 'View refsubjectofferinghdr', 'modules/Registrar/subject_offering_header/listview_refsubjectofferinghdr.php', 'Subject Offering Header', '', 5, 'Yes', 'On', 'form3.png', 0),
(96, 'Delete refsubjectofferinghdr', 'modules/Registrar/subject_offering_header/delete_refsubjectofferinghdr.php', 'Delete Refsubjectofferinghdr', '', 5, 'No', 'On', 'form3.png', 0),
(97, 'Add required appointment', 'modules/Clinic/required_appointment/add_required_appointment.php', 'Add Required Appointment', '', 4, 'No', 'On', 'form3.png', 0),
(98, 'Edit required appointment', 'modules/Clinic/required_appointment/edit_required_appointment.php', 'Edit Required Appointment', '', 4, 'No', 'On', 'form3.png', 0),
(99, 'View required appointment', 'modules/Clinic/required_appointment/listview_required_appointment.php', 'Required Appointment', '', 4, 'Yes', 'On', 'form3.png', 0),
(100, 'Delete required appointment', 'modules/Clinic/required_appointment/delete_required_appointment.php', 'Delete Required Appointment', '', 4, 'No', 'On', 'form3.png', 0),
(101, 'Add subject', 'modules/Registrar/subject/add_subject.php', 'Add Subject', '', 5, 'No', 'On', 'form3.png', 0),
(102, 'Edit subject', 'modules/Registrar/subject/edit_subject.php', 'Edit Subject', '', 5, 'No', 'On', 'form3.png', 0),
(103, 'View subject', 'modules/Registrar/subject/listview_subject.php', 'Subject', '', 5, 'Yes', 'On', 'form3.png', 0),
(104, 'Delete subject', 'modules/Registrar/subject/delete_subject.php', 'Delete Subject', '', 5, 'No', 'On', 'form3.png', 0),
(105, 'Add term', 'modules/Registrar/term/add_term.php', 'Add Term', '', 5, 'No', 'On', 'form3.png', 0),
(106, 'Edit term', 'modules/Registrar/term/edit_term.php', 'Edit Term', '', 5, 'No', 'On', 'form3.png', 0),
(107, 'View term', 'modules/Registrar/term/listview_term.php', 'Term', '', 5, 'Yes', 'On', 'form3.png', 0),
(108, 'Delete term', 'modules/Registrar/term/delete_term.php', 'Delete Term', '', 5, 'No', 'On', 'form3.png', 0),
(109, 'Add xrefstudentschedule', 'modules/Registrar/student_schedule/add_xrefstudentschedule.php', 'Add Xrefstudentschedule', '', 4, 'No', 'On', 'form3.png', 0),
(110, 'Edit xrefstudentschedule', 'modules/Registrar/student_schedule/edit_xrefstudentschedule.php', 'Edit Xrefstudentschedule', '', 4, 'No', 'On', 'form3.png', 0),
(111, 'View xrefstudentschedule', 'modules/Registrar/student_schedule/listview_xrefstudentschedule.php', 'Student Schedule', '', 4, 'Yes', 'On', 'form3.png', 0),
(112, 'Delete xrefstudentschedule', 'modules/Registrar/student_schedule/delete_xrefstudentschedule.php', 'Delete Xrefstudentschedule', '', 4, 'No', 'On', 'form3.png', 0),
(113, 'Current Quantity', 'modules/Clinic/medicine/current.php', 'Current Quantity', 'Current Quantity of the medicine', 3, 'No', 'On', 'blue_folder3.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_passport`
--

CREATE TABLE `user_passport` (
  `username` varchar(255) NOT NULL,
  `link_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_passport`
--

INSERT INTO `user_passport` (`username`, `link_id`) VALUES
('doctor', 43),
('doctor', 47),
('doctor', 49),
('doctor', 50),
('doctor', 51),
('doctor', 53),
('doctor', 54),
('doctor', 55),
('doctor', 57),
('doctor', 58),
('doctor', 59),
('doctor', 63),
('doctor', 67),
('doctor', 69),
('doctor', 71),
('doctor', 75),
('doctor', 85),
('doctor', 86),
('doctor', 87),
('doctor', 97),
('doctor', 98),
('doctor', 99),
('doctor', 113),
('nurse', 41),
('nurse', 42),
('nurse', 43),
('nurse', 47),
('nurse', 49),
('nurse', 50),
('nurse', 51),
('nurse', 53),
('nurse', 54),
('nurse', 55),
('nurse', 57),
('nurse', 58),
('nurse', 59),
('nurse', 62),
('nurse', 63),
('nurse', 66),
('nurse', 67),
('nurse', 69),
('nurse', 70),
('nurse', 71),
('nurse', 74),
('nurse', 75),
('nurse', 78),
('nurse', 82),
('nurse', 85),
('nurse', 86),
('nurse', 87),
('nurse', 97),
('nurse', 98),
('nurse', 99),
('nurse', 113),
('root', 1),
('root', 2),
('root', 3),
('root', 4),
('root', 5),
('root', 6),
('root', 7),
('root', 8),
('root', 9),
('root', 10),
('root', 11),
('root', 12),
('root', 13),
('root', 14),
('root', 15),
('root', 16),
('root', 17),
('root', 18),
('root', 19),
('root', 20),
('root', 21),
('root', 22),
('root', 23),
('root', 24),
('root', 25),
('root', 26),
('root', 27),
('root', 28),
('root', 29),
('root', 30),
('root', 31),
('root', 32),
('root', 33),
('root', 34),
('root', 35),
('root', 36),
('root', 37),
('root', 38),
('root', 39),
('root', 40),
('root', 41),
('root', 42),
('root', 43),
('root', 44),
('root', 45),
('root', 46),
('root', 47),
('root', 48),
('root', 49),
('root', 50),
('root', 51),
('root', 52),
('root', 53),
('root', 54),
('root', 55),
('root', 56),
('root', 57),
('root', 58),
('root', 59),
('root', 60),
('root', 61),
('root', 62),
('root', 63),
('root', 64),
('root', 65),
('root', 66),
('root', 67),
('root', 68),
('root', 69),
('root', 70),
('root', 71),
('root', 72),
('root', 73),
('root', 74),
('root', 75),
('root', 76),
('root', 77),
('root', 78),
('root', 79),
('root', 80),
('root', 81),
('root', 82),
('root', 83),
('root', 84),
('root', 85),
('root', 86),
('root', 87),
('root', 88),
('root', 89),
('root', 90),
('root', 91),
('root', 92),
('root', 93),
('root', 94),
('root', 95),
('root', 96),
('root', 97),
('root', 98),
('root', 99),
('root', 100),
('root', 113);

-- --------------------------------------------------------

--
-- Table structure for table `user_passport_groups`
--

CREATE TABLE `user_passport_groups` (
  `passport_group_id` int(11) NOT NULL,
  `passport_group` varchar(255) NOT NULL,
  `priority` int(11) NOT NULL,
  `icon` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_passport_groups`
--

INSERT INTO `user_passport_groups` (`passport_group_id`, `passport_group`, `priority`, `icon`) VALUES
(1, 'Default', 0, 'blue_folder3.png'),
(2, 'Admin', 0, 'preferences-system.png'),
(3, 'Clinic', 1, 'blue_folder3.png'),
(4, 'Appointment', 2, 'blue_folder3.png'),
(5, 'Registrar', 3, 'blue_folder3.png'),
(7, 'Contact Information', 4, 'blue_folder3.png');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `role_id` int(11) NOT NULL,
  `role` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`role_id`, `role`, `description`) VALUES
(1, 'Super Admin', 'Super admin role with 100% system privileges'),
(2, 'System Admin', 'System admin role with all sysadmin permissions'),
(3, 'Nurse', 'Uses APC Clinic Management System'),
(4, 'Doctor', 'Uses APC Clinic Management System');

-- --------------------------------------------------------

--
-- Table structure for table `user_role_links`
--

CREATE TABLE `user_role_links` (
  `role_id` int(11) NOT NULL,
  `link_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_role_links`
--

INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 16),
(1, 17),
(1, 18),
(1, 19),
(1, 20),
(1, 21),
(1, 22),
(1, 23),
(1, 24),
(1, 25),
(1, 26),
(1, 27),
(1, 28),
(1, 29),
(1, 30),
(1, 31),
(1, 32),
(1, 33),
(1, 34),
(1, 35),
(1, 36),
(1, 37),
(1, 38),
(1, 39),
(1, 40),
(1, 41),
(1, 42),
(1, 43),
(1, 44),
(1, 45),
(1, 46),
(1, 47),
(1, 48),
(1, 49),
(1, 50),
(1, 51),
(1, 52),
(1, 53),
(1, 54),
(1, 55),
(1, 56),
(1, 57),
(1, 58),
(1, 59),
(1, 60),
(1, 61),
(1, 62),
(1, 63),
(1, 64),
(1, 65),
(1, 66),
(1, 67),
(1, 68),
(1, 69),
(1, 70),
(1, 71),
(1, 72),
(1, 73),
(1, 74),
(1, 75),
(1, 76),
(1, 77),
(1, 78),
(1, 79),
(1, 80),
(1, 81),
(1, 82),
(1, 83),
(1, 84),
(1, 85),
(1, 86),
(1, 87),
(1, 88),
(1, 89),
(1, 90),
(1, 91),
(1, 92),
(1, 93),
(1, 94),
(1, 95),
(1, 96),
(1, 97),
(1, 98),
(1, 99),
(1, 100),
(1, 113),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(2, 6),
(2, 7),
(2, 8),
(2, 9),
(2, 10),
(2, 11),
(2, 12),
(2, 13),
(2, 14),
(2, 15),
(2, 16),
(2, 17),
(2, 18),
(2, 19),
(2, 20),
(2, 21),
(2, 22),
(2, 23),
(2, 24),
(2, 25),
(2, 26),
(2, 27),
(2, 28),
(2, 29),
(2, 30),
(2, 31),
(2, 32),
(2, 33),
(2, 34),
(2, 35),
(2, 36),
(3, 41),
(3, 42),
(3, 43),
(3, 47),
(3, 49),
(3, 50),
(3, 51),
(3, 53),
(3, 54),
(3, 55),
(3, 57),
(3, 58),
(3, 59),
(3, 62),
(3, 63),
(3, 66),
(3, 67),
(3, 69),
(3, 70),
(3, 71),
(3, 74),
(3, 75),
(3, 78),
(3, 82),
(3, 85),
(3, 86),
(3, 87),
(3, 97),
(3, 98),
(3, 99),
(3, 113),
(4, 43),
(4, 47),
(4, 49),
(4, 50),
(4, 51),
(4, 53),
(4, 54),
(4, 55),
(4, 57),
(4, 58),
(4, 59),
(4, 63),
(4, 67),
(4, 69),
(4, 71),
(4, 75),
(4, 85),
(4, 86),
(4, 87),
(4, 97),
(4, 98),
(4, 99),
(4, 113);

-- --------------------------------------------------------

--
-- Table structure for table `xrefstudentschedule`
--

CREATE TABLE `xrefstudentschedule` (
  `subject_offering_id` int(9) NOT NULL DEFAULT '0',
  `student_id` varchar(11) NOT NULL,
  `enrollment_status` enum('Dropped','Registered','Enrolled') DEFAULT 'Registered',
  `date` date DEFAULT NULL,
  `term_id` varchar(250) NOT NULL,
  `subject_code` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cobalt_reporter`
--
ALTER TABLE `cobalt_reporter`
  ADD PRIMARY KEY (`module_name`,`report_name`);

--
-- Indexes for table `cobalt_sst`
--
ALTER TABLE `cobalt_sst`
  ADD PRIMARY KEY (`auto_id`);

--
-- Indexes for table `dept`
--
ALTER TABLE `dept`
  ADD PRIMARY KEY (`dept_id`);

--
-- Indexes for table `emergencycase`
--
ALTER TABLE `emergencycase`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hospital_id` (`hospital_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `hospital`
--
ALTER TABLE `hospital`
  ADD PRIMARY KEY (`hospital_id`);

--
-- Indexes for table `log_detail`
--
ALTER TABLE `log_detail`
  ADD PRIMARY KEY (`log_detail_id`);

--
-- Indexes for table `log_info`
--
ALTER TABLE `log_info`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `emp_id` (`emp_id`);

--
-- Indexes for table `medicine`
--
ALTER TABLE `medicine`
  ADD PRIMARY KEY (`medicine_id`);

--
-- Indexes for table `medicine_receiving`
--
ALTER TABLE `medicine_receiving`
  ADD PRIMARY KEY (`medicine_count_id`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`person_id`);

--
-- Indexes for table `refempfamily`
--
ALTER TABLE `refempfamily`
  ADD PRIMARY KEY (`family_id`),
  ADD KEY `emp_id` (`emp_id`),
  ADD KEY `emp_id_2` (`emp_id`);

--
-- Indexes for table `refstudent`
--
ALTER TABLE `refstudent`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `refstudentclearance`
--
ALTER TABLE `refstudentclearance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `emp_id` (`emp_id`),
  ADD KEY `dept_id` (`dept_id`);

--
-- Indexes for table `refstudentfamily`
--
ALTER TABLE `refstudentfamily`
  ADD PRIMARY KEY (`family_id`),
  ADD UNIQUE KEY `student_id` (`student_id`,`relationship`);

--
-- Indexes for table `refsubjectofferingdtl`
--
ALTER TABLE `refsubjectofferingdtl`
  ADD PRIMARY KEY (`subject_offering_id`),
  ADD UNIQUE KEY `subject_offering_id` (`subject_offering_id`,`time`,`day`,`room`);

--
-- Indexes for table `refsubjectofferinghdr`
--
ALTER TABLE `refsubjectofferinghdr`
  ADD PRIMARY KEY (`subject_offering_id`);

--
-- Indexes for table `required_appointment`
--
ALTER TABLE `required_appointment`
  ADD PRIMARY KEY (`required_appointment_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `subject_offering_id` (`subject_offering_id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `system_log`
--
ALTER TABLE `system_log`
  ADD PRIMARY KEY (`entry_id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`setting`);

--
-- Indexes for table `system_skins`
--
ALTER TABLE `system_skins`
  ADD PRIMARY KEY (`skin_id`);

--
-- Indexes for table `term`
--
ALTER TABLE `term`
  ADD PRIMARY KEY (`term_id`),
  ADD UNIQUE KEY `school_year` (`school_year`,`term`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `user_links`
--
ALTER TABLE `user_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `user_passport`
--
ALTER TABLE `user_passport`
  ADD PRIMARY KEY (`username`,`link_id`);

--
-- Indexes for table `user_passport_groups`
--
ALTER TABLE `user_passport_groups`
  ADD PRIMARY KEY (`passport_group_id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `user_role_links`
--
ALTER TABLE `user_role_links`
  ADD PRIMARY KEY (`role_id`,`link_id`);

--
-- Indexes for table `xrefstudentschedule`
--
ALTER TABLE `xrefstudentschedule`
  ADD PRIMARY KEY (`subject_offering_id`,`student_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cobalt_sst`
--
ALTER TABLE `cobalt_sst`
  MODIFY `auto_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dept`
--
ALTER TABLE `dept`
  MODIFY `dept_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT for table `emergencycase`
--
ALTER TABLE `emergencycase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `hospital`
--
ALTER TABLE `hospital`
  MODIFY `hospital_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `log_detail`
--
ALTER TABLE `log_detail`
  MODIFY `log_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `log_info`
--
ALTER TABLE `log_info`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `medicine`
--
ALTER TABLE `medicine`
  MODIFY `medicine_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
--
-- AUTO_INCREMENT for table `medicine_receiving`
--
ALTER TABLE `medicine_receiving`
  MODIFY `medicine_count_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `person`
--
ALTER TABLE `person`
  MODIFY `person_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `refempfamily`
--
ALTER TABLE `refempfamily`
  MODIFY `family_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `refstudentclearance`
--
ALTER TABLE `refstudentclearance`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47772;
--
-- AUTO_INCREMENT for table `refstudentfamily`
--
ALTER TABLE `refstudentfamily`
  MODIFY `family_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20654;
--
-- AUTO_INCREMENT for table `refsubjectofferinghdr`
--
ALTER TABLE `refsubjectofferinghdr`
  MODIFY `subject_offering_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19649;
--
-- AUTO_INCREMENT for table `required_appointment`
--
ALTER TABLE `required_appointment`
  MODIFY `required_appointment_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subject_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1570;
--
-- AUTO_INCREMENT for table `system_log`
--
ALTER TABLE `system_log`
  MODIFY `entry_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1681;
--
-- AUTO_INCREMENT for table `system_skins`
--
ALTER TABLE `system_skins`
  MODIFY `skin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `term`
--
ALTER TABLE `term`
  MODIFY `term_id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;
--
-- AUTO_INCREMENT for table `user_links`
--
ALTER TABLE `user_links`
  MODIFY `link_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;
--
-- AUTO_INCREMENT for table `user_passport_groups`
--
ALTER TABLE `user_passport_groups`
  MODIFY `passport_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
