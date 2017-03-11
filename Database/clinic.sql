-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 11, 2017 at 05:04 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

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
  `date` datetime NOT NULL,
  `type` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `id_number` char(11) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `diagnosis` text,
  `hospital_id` int(11) NOT NULL,
  `escorted_by` varchar(255) DEFAULT NULL,
  `guarantee_control_no` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emergencycase`
--

INSERT INTO `emergencycase` (`id`, `date`, `type`, `name`, `id_number`, `location`, `diagnosis`, `hospital_id`, `escorted_by`, `guarantee_control_no`) VALUES
(46, '2017-02-15 00:00:00', 'Student', 'Justine Mark Siccion', '2014-100456', 'Gym', 'Broken legs', 5, 'Daveson Romblon', 'N/A'),
(47, '2017-02-16 00:00:00', 'Employee', 'Felix Gregorio', '2014-100360', 'MPH1', 'Broken limbs', 3, 'Jonathan Abalon', 'N/A');

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
('2014-10030', 'Gregorio', 'Felix', 'Villacruel', 'fvgregorio@student.apc.ed', 0, 0, 'asdasd', '', '123123', '1231231', '2017-02-21', '2017-02-21', 'Male', 'Single', '2017-02-21', 'asasd', 'asd', NULL, '', '', '', '', '', '');

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
  `medicine_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log_detail`
--

INSERT INTO `log_detail` (`log_detail_id`, `medicine_id`, `qty`) VALUES
(1, 1, 1),
(2, 4, 1),
(3, 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `log_info`
--

CREATE TABLE `log_info` (
  `log_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `log_detail_id` int(11) NOT NULL,
  `complaints` varchar(255) NOT NULL,
  `patient_type` varchar(255) NOT NULL,
  `student_id` char(11) DEFAULT NULL,
  `emp_id` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log_info`
--

INSERT INTO `log_info` (`log_id`, `date`, `time`, `log_detail_id`, `complaints`, `patient_type`, `student_id`, `emp_id`) VALUES
(1, '2017-02-22', '05:30:00', 0, 'Headache', '', '2014-100360', '2014-10030'),
(2, '2017-02-22', '07:30:00', 0, 'Small cut', '', '2014-100360', '2014-10030'),
(3, '2017-03-11', '00:02:32', 123, '213', 'Student', '2321', '2312312');

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
(5, 'Decolgen', '2017-03-06');

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
(1, 5, 300, '2017-03-11', 'Beginning balance');

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
(5, '2014-10030', 'GUARDIAN', 'Felix Gregorio JR.', 'fasdsad', 'Active', 'Home', 'asdsdas', '123', '123', '123', '12312312321'),
(6, '2014-10030', 'GUARDIAN', 'Lolinie Gregorio', 'centuryleni@gmail.com', 'Inactive', 'Home', '123 Mabuhay Ave.', '2012', '24123123', '12312312', '1312312');

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
('2015-100016', 'Romblon', 'Daveson', 'Kitane', '2017-02-22', 'San Juan City', '2017-02-22', '', '', '', '', 'Filipino', 'Male', 'Aven.ts 231 gsts', '2314', '213412', '412312', 'dave@gmail.com', 'Catholic', 'Single', '');

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
(20650, '2015-100016', 'MOTHER', 'LMAO', 'LMAO@gmail.com', 'Active', '', 'LMAO srtsts ave.,', '2331', '124123', '21412312', '123123123', 'Active');

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
(532, '::1', 'root', '2017-03-09 22:56:03', 'Logged in', '/clinic/login.php'),
(533, '::1', 'root', '2017-03-09 23:19:06', 'Logged out', '/clinic/end.php'),
(534, '::1', 'root', '2017-03-11 16:20:56', 'Logged in', '/clinic/login.php'),
(535, '::1', 'root', '2017-03-11 16:21:09', 'Pressed submit button', '/clinic/modules/Clinic/log_info/edit_log_info.php'),
(536, '::1', 'root', '2017-03-11 16:21:14', 'Pressed submit button', '/clinic/modules/Clinic/log_info/edit_log_info.php'),
(537, '::1', 'root', '2017-03-11 16:23:05', 'Pressed submit button', '/clinic/modules/Registrar/employee/edit_employee.php'),
(538, '::1', 'root', '2017-03-11 16:23:33', 'Pressed submit button', '/clinic/modules/Registrar/employee/edit_employee.php'),
(539, '::1', 'root', '2017-03-11 16:23:33', 'Query Executed: DELETE FROM refempfamily WHERE emp_id = ?\r\nArray\n(\n    [0] => s\n    [1] => 2014-10030\n)\n', '/clinic/modules/Registrar/employee/edit_employee.php'),
(540, '::1', 'root', '2017-03-11 16:23:33', 'Query Executed: INSERT INTO refempfamily(family_id, emp_id, relationship, name, email, email_status, address_type, address, postal_code, mobile_num1, tel_num, mobile_num2) VALUES(?,?,?,?,?,?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => isssssssssss\n    [1] => \n    [2] => 2014-10030\n    [3] => Father\n    [4] => Felix Gregorio JR.\n    [5] => fasdsad\n    [6] => Inactive\n    [7] => Office\n    [8] => asdsdas\n    [9] => 123\n    [10] => 123\n    [11] => 123\n    [12] => 12312312321\n)\n', '/clinic/modules/Registrar/employee/edit_employee.php'),
(541, '::1', 'root', '2017-03-11 16:23:33', 'Query Executed: INSERT INTO refempfamily(family_id, emp_id, relationship, name, email, email_status, address_type, address, postal_code, mobile_num1, tel_num, mobile_num2) VALUES(?,?,?,?,?,?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => isssssssssss\n    [1] => \n    [2] => 2014-10030\n    [3] => Mother\n    [4] => Lolinie Gregorio\n    [5] => centuryleni@gmail.com\n    [6] => Active\n    [7] => Home\n    [8] => 123 Mabuhay Ave.\n    [9] => 2012\n    [10] => 24123123\n    [11] => 12312312\n    [12] => 1312312\n)\n', '/clinic/modules/Registrar/employee/edit_employee.php'),
(542, '::1', 'root', '2017-03-11 16:23:33', 'Query Executed: UPDATE employee SET emp_id = ?, emp_last_name = ?, emp_first_name = ?, emp_middle_name = ?, email = ?, emp_status = ?, emp_group = ?, address = ?, postal_code = ?, tel_num = ?, mobile_num = ?, hiring_date = ?, resignation_date = ?, gender = ?, civil_status = ?, birth_date = ?, birth_place = ?, religion = ?, is_deleted = ?, ATM_num = ?, BDO_ATM_num = ?, SSS_num = ?, PhilHealth_num = ?, TIN_num = ?, PagIbig_num = ? WHERE emp_id = ?\r\nArray\n(\n    [0] => ssssssisssssssssssssssssss\n    [1] => 2014-10030\n    [2] => Gregorio\n    [3] => Felix\n    [4] => Villacruel\n    [5] => fvgregorio@student.apc.ed\n    [6] => \n    [7] => 0\n    [8] => asdasd\n    [9] => \n    [10] => 123123\n    [11] => 1231231\n    [12] => 2017-02-21\n    [13] => 2017-02-21\n    [14] => Male\n    [15] => Single\n    [16] => 2017-02-21\n    [17] => asasd\n    [18] => asd\n    [19] => \n    [20] => \n    [21] => \n    [22] => \n    [23] => \n    [24] => \n    [25] => \n    [26] => 2014-10030\n)\n', '/clinic/modules/Registrar/employee/edit_employee.php'),
(543, '::1', 'root', '2017-03-11 16:26:20', 'Pressed submit button', '/clinic/modules/Registrar/employee/edit_employee.php'),
(544, '::1', 'root', '2017-03-11 16:26:43', 'Pressed submit button', '/clinic/modules/Clinic/log_info/edit_log_info.php'),
(545, '::1', 'root', '2017-03-11 16:27:16', 'Pressed submit button', '/clinic/modules/Registrar/department/edit_dept.php'),
(546, '::1', 'root', '2017-03-11 16:27:16', 'Query Executed: UPDATE dept SET dept_code = ?, dept_description = ?, dept_assign = ?, is_deleted = ? WHERE dept_id = ?\r\nArray\n(\n    [0] => ssssi\n    [1] => test\n    [2] => Information Technology Resource Center\n    [3] => \n    [4] => No\n    [5] => 53\n)\n', '/clinic/modules/Registrar/department/edit_dept.php'),
(547, '::1', 'root', '2017-03-11 16:27:22', 'Pressed submit button', '/clinic/modules/Registrar/department/edit_dept.php'),
(548, '::1', 'root', '2017-03-11 16:27:22', 'Query Executed: UPDATE dept SET dept_code = ?, dept_description = ?, dept_assign = ?, is_deleted = ? WHERE dept_id = ?\r\nArray\n(\n    [0] => ssssi\n    [1] => ITRO\n    [2] => Information Technology Resource Center\n    [3] => \n    [4] => No\n    [5] => 53\n)\n', '/clinic/modules/Registrar/department/edit_dept.php'),
(549, '::1', 'root', '2017-03-11 16:28:22', 'Pressed submit button', '/clinic/modules/Clinic/emergency_case/edit_emergencycase.php'),
(550, '::1', 'root', '2017-03-11 16:28:26', 'Pressed submit button', '/clinic/modules/Clinic/emergency_case/edit_emergencycase.php'),
(551, '::1', 'root', '2017-03-11 16:28:26', 'Query Executed: UPDATE emergencycase SET date = ?, type = ?, name = ?, id_number = ?, location = ?, diagnosis = ?, hospital_id = ?, escorted_by = ?, guarantee_control_no = ? WHERE id = ?\r\nArray\n(\n    [0] => ssssssissi\n    [1] => 2017-02-02\n    [2] => Severe\n    [3] => Justine Mark Siccion\n    [4] => 2014-100456\n    [5] => Gym\n    [6] => Broken legs\n    [7] => 5\n    [8] => Daveson Romblon\n    [9] => N/A\n    [10] => 46\n)\n', '/clinic/modules/Clinic/emergency_case/edit_emergencycase.php'),
(552, '::1', 'root', '2017-03-11 16:28:41', 'Pressed submit button', '/clinic/modules/clinic/medicine_receiving/add_medicine_receiving.php'),
(553, '::1', 'root', '2017-03-11 16:28:41', 'Query Executed: INSERT INTO medicine_receiving(medicine_count_id, medicine_id, qty, date, type) VALUES(?,?,?,?,?)\r\nArray\n(\n    [0] => iiiss\n    [1] => \n    [2] => 5\n    [3] => 300\n    [4] => 2017-03-11\n    [5] => Beginning balance\n)\n', '/clinic/modules/clinic/medicine_receiving/add_medicine_receiving.php'),
(554, '::1', 'root', '2017-03-11 16:31:35', 'Pressed submit button', '/clinic/modules/Clinic/emergency_case/add_emergencycase.php'),
(555, '::1', 'root', '2017-03-11 17:09:18', 'Pressed submit button', '/clinic/modules/Clinic/emergency_case/add_emergencycase.php'),
(556, '::1', 'root', '2017-03-11 17:09:18', 'Query Executed: INSERT INTO emergencycase(id, date, type, name, id_number, location, diagnosis, hospital_id, escorted_by, guarantee_control_no) VALUES(?,?,?,?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => issssssiss\n    [1] => \n    [2] => 2017-03-11\n    [3] => 123123\n    [4] => test\n    [5] => test\n    [6] => test\n    [7] => test\n    [8] => 5\n    [9] => test\n    [10] => test\n)\n', '/clinic/modules/Clinic/emergency_case/add_emergencycase.php'),
(557, '::1', 'root', '2017-03-11 17:09:32', 'Pressed submit button', '/clinic/modules/Clinic/emergency_case/edit_emergencycase.php'),
(558, '::1', 'root', '2017-03-11 17:09:43', 'Pressed delete button', '/clinic/modules/Clinic/emergency_case/delete_emergencycase.php'),
(559, '::1', 'root', '2017-03-11 17:09:43', 'Query Executed: DELETE FROM emergencycase WHERE id = ?\r\nArray\n(\n    [0] => i\n    [1] => 48\n)\n', '/clinic/modules/Clinic/emergency_case/delete_emergencycase.php'),
(560, '::1', 'root', '2017-03-11 17:16:17', 'Pressed submit button', '/clinic/modules/Clinic/emergency_case/add_emergencycase.php'),
(561, '::1', 'root', '2017-03-11 17:16:25', 'Pressed submit button', '/clinic/modules/Clinic/emergency_case/add_emergencycase.php'),
(562, '::1', 'root', '2017-03-11 17:17:23', 'Pressed submit button', '/clinic/modules/Clinic/emergency_case/add_emergencycase.php'),
(563, '::1', 'root', '2017-03-11 17:17:28', 'Pressed submit button', '/clinic/modules/Clinic/emergency_case/add_emergencycase.php'),
(564, '::1', 'root', '2017-03-11 17:17:33', 'Pressed submit button', '/clinic/modules/Clinic/emergency_case/add_emergencycase.php'),
(565, '::1', 'root', '2017-03-11 17:18:14', 'Pressed submit button', '/clinic/modules/Clinic/emergency_case/add_emergencycase.php'),
(566, '::1', 'root', '2017-03-11 17:32:42', 'Pressed submit button', '/clinic/modules/Clinic/emergency_case/edit_emergencycase.php'),
(567, '::1', 'root', '2017-03-11 17:32:46', 'Pressed submit button', '/clinic/modules/Clinic/emergency_case/edit_emergencycase.php'),
(568, '::1', 'root', '2017-03-11 17:32:46', 'Query Executed: UPDATE emergencycase SET date = ?, type = ?, name = ?, id_number = ?, location = ?, diagnosis = ?, hospital_id = ?, escorted_by = ?, guarantee_control_no = ? WHERE id = ?\r\nArray\n(\n    [0] => ssssssissi\n    [1] => 2017-02-15\n    [2] => Student\n    [3] => Justine Mark Siccion\n    [4] => 2014-100456\n    [5] => Gym\n    [6] => Broken legs\n    [7] => 5\n    [8] => Daveson Romblon\n    [9] => N/A\n    [10] => 46\n)\n', '/clinic/modules/Clinic/emergency_case/edit_emergencycase.php'),
(569, '::1', 'root', '2017-03-11 17:32:54', 'Pressed submit button', '/clinic/modules/Clinic/emergency_case/edit_emergencycase.php'),
(570, '::1', 'root', '2017-03-11 17:32:56', 'Pressed submit button', '/clinic/modules/Clinic/emergency_case/edit_emergencycase.php'),
(571, '::1', 'root', '2017-03-11 17:32:57', 'Query Executed: UPDATE emergencycase SET date = ?, type = ?, name = ?, id_number = ?, location = ?, diagnosis = ?, hospital_id = ?, escorted_by = ?, guarantee_control_no = ? WHERE id = ?\r\nArray\n(\n    [0] => ssssssissi\n    [1] => 2017-02-16\n    [2] => Employee\n    [3] => Felix Gregorio\n    [4] => 2014-100360\n    [5] => MPH1\n    [6] => Broken limbs\n    [7] => 3\n    [8] => Jonathan Abalon\n    [9] => N/A\n    [10] => 47\n)\n', '/clinic/modules/Clinic/emergency_case/edit_emergencycase.php'),
(572, '::1', 'root', '2017-03-11 17:45:54', 'Pressed submit button', '/clinic/modules/Clinic/hospital/add_hospital.php'),
(573, '::1', 'root', '2017-03-11 17:46:49', 'Pressed submit button', '/clinic/modules/Clinic/emergency_case/add_emergencycase.php'),
(574, '::1', 'root', '2017-03-11 17:46:53', 'Pressed submit button', '/clinic/modules/Clinic/emergency_case/add_emergencycase.php'),
(575, '::1', 'root', '2017-03-11 17:47:03', 'Pressed submit button', '/clinic/modules/Clinic/emergency_case/add_emergencycase.php'),
(576, '::1', 'root', '2017-03-11 17:48:24', 'Pressed submit button', '/clinic/modules/Clinic/hospital/add_hospital.php'),
(577, '::1', 'root', '2017-03-11 18:25:25', 'Pressed submit button', '/clinic/modules/clinic/medicine_receiving/add_medicine_receiving.php'),
(578, '::1', 'root', '2017-03-11 18:25:37', 'Pressed cancel button', '/clinic/modules/clinic/medicine_receiving/add_medicine_receiving.php'),
(579, '::1', 'root', '2017-03-11 18:34:25', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(580, '::1', 'root', '2017-03-11 18:34:25', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Add log detail\n    [2] => modules/clinic/log_details/add_log_detail.php\n    [3] => Add Log Detail\n    [4] => \n    [5] => 3\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 262\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(581, '::1', 'root', '2017-03-11 18:34:31', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(582, '::1', 'root', '2017-03-11 18:34:32', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Edit log detail\n    [2] => modules/clinic/log_details/edit_log_detail.php\n    [3] => Edit Log Detail\n    [4] => \n    [5] => 3\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 263\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(583, '::1', 'root', '2017-03-11 18:34:38', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(584, '::1', 'root', '2017-03-11 18:34:38', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => View log detail\n    [2] => modules/clinic/log_details/listview_log_detail.php\n    [3] => Log Detail\n    [4] => \n    [5] => 3\n    [6] => Yes\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 264\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(585, '::1', 'root', '2017-03-11 18:34:42', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(586, '::1', 'root', '2017-03-11 18:34:42', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Delete log detail\n    [2] => modules/clinic/log_details/delete_log_detail.php\n    [3] => Delete Log Detail\n    [4] => \n    [5] => 3\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 265\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(587, '::1', 'root', '2017-03-11 18:35:02', 'Query executed: DELETE FROM user_passport WHERE username=''root'' AND link_id IN (''43'',''49'',''50'',''51'',''52'',''55'',''57'',''58'',''59'',''60'',''262'',''263'',''264'',''265'',''278'',''279'',''280'',''281'')', '/clinic/sysadmin/set_user_passports.php'),
(588, '::1', 'root', '2017-03-11 18:35:02', 'Query executed: INSERT INTO user_passport(username, link_id) VALUES(''root'', ''49''),(''root'', ''262''),(''root'', ''57''),(''root'', ''278''),(''root'', ''52''),(''root'', ''60''),(''root'', ''281''),(''root'', ''50''),(''root'', ''263''),(''root'', ''58''),(''root'', ''279''),(''root'', ''43''),(''root'', ''51''),(''root'', ''264''),(''root'', ''55''),(''root'', ''59''),(''root'', ''280'')', '/clinic/sysadmin/set_user_passports.php'),
(589, '::1', 'root', '2017-03-11 18:35:02', 'Query executed: UPDATE user SET role_id=''0'' WHERE username=''root''', '/clinic/sysadmin/set_user_passports.php'),
(590, '::1', 'root', '2017-03-11 18:36:18', 'Pressed cancel button', '/clinic/modules/clinic/log_details/add_log_detail.php'),
(591, '::1', 'root', '2017-03-11 18:44:01', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(592, '::1', 'root', '2017-03-11 18:44:01', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Add log detail\n    [2] => modules/clinic/log_detail/add_log_detail.php\n    [3] => Add Log Detail\n    [4] => \n    [5] => 3\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 262\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(593, '::1', 'root', '2017-03-11 18:44:12', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(594, '::1', 'root', '2017-03-11 18:44:12', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Edit log detail\n    [2] => modules/clinic/log_detail/edit_log_detail.php\n    [3] => Edit Log Detail\n    [4] => \n    [5] => 3\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 263\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(595, '::1', 'root', '2017-03-11 18:44:19', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(596, '::1', 'root', '2017-03-11 18:44:19', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => View log detail\n    [2] => modules/clinic/log_detail/listview_log_detail.php\n    [3] => Log Detail\n    [4] => \n    [5] => 3\n    [6] => Yes\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 264\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(597, '::1', 'root', '2017-03-11 18:44:25', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(598, '::1', 'root', '2017-03-11 18:44:26', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Delete log detail\n    [2] => modules/clinic/log_detail/delete_log_detail.php\n    [3] => Delete Log Detail\n    [4] => \n    [5] => 3\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 265\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(599, '::1', 'root', '2017-03-11 18:47:37', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(600, '::1', 'root', '2017-03-11 18:47:38', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Delete log detail\n    [2] => modules/clinic/log_detail/delete_log_detail.php\n    [3] => Delete Log Detail\n    [4] => \n    [5] => 3\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 289\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(601, '::1', 'root', '2017-03-11 18:47:45', 'Pressed cancel button', '/clinic/sysadmin/edit_user_links.php'),
(602, '::1', 'root', '2017-03-11 18:47:52', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(603, '::1', 'root', '2017-03-11 18:47:52', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => View log detail\n    [2] => modules/clinic/log_detail/listview_log_detail.php\n    [3] => Log Detail\n    [4] => \n    [5] => 3\n    [6] => Yes\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 288\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(604, '::1', 'root', '2017-03-11 18:47:57', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(605, '::1', 'root', '2017-03-11 18:47:57', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Edit log detail\n    [2] => modules/clinic/log_detail/edit_log_detail.php\n    [3] => Edit Log Detail\n    [4] => \n    [5] => 3\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 287\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(606, '::1', 'root', '2017-03-11 18:48:02', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(607, '::1', 'root', '2017-03-11 18:48:02', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Add log detail\n    [2] => modules/clinic/log_detail/add_log_detail.php\n    [3] => Add Log Detail\n    [4] => \n    [5] => 3\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 286\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(608, '::1', 'root', '2017-03-11 18:48:11', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(609, '::1', 'root', '2017-03-11 18:48:11', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Delete log detail\n    [2] => modules/clinic/log_detail/delete_log_detail.php\n    [3] => Delete Log Detail\n    [4] => \n    [5] => 3\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 209\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(610, '::1', 'root', '2017-03-11 18:48:38', 'Pressed delete button', '/clinic/sysadmin/delete_user_links.php'),
(611, '::1', 'root', '2017-03-11 18:48:38', 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 102\n)\n', '/clinic/sysadmin/delete_user_links.php'),
(612, '::1', 'root', '2017-03-11 18:48:45', 'Pressed delete button', '/clinic/sysadmin/delete_user_links.php'),
(613, '::1', 'root', '2017-03-11 18:48:45', 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 103\n)\n', '/clinic/sysadmin/delete_user_links.php'),
(614, '::1', 'root', '2017-03-11 18:48:48', 'Pressed delete button', '/clinic/sysadmin/delete_user_links.php'),
(615, '::1', 'root', '2017-03-11 18:48:48', 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 104\n)\n', '/clinic/sysadmin/delete_user_links.php'),
(616, '::1', 'root', '2017-03-11 18:48:51', 'Pressed delete button', '/clinic/sysadmin/delete_user_links.php'),
(617, '::1', 'root', '2017-03-11 18:48:51', 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 105\n)\n', '/clinic/sysadmin/delete_user_links.php'),
(618, '::1', 'root', '2017-03-11 18:48:54', 'Pressed delete button', '/clinic/sysadmin/delete_user_links.php'),
(619, '::1', 'root', '2017-03-11 18:48:54', 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 134\n)\n', '/clinic/sysadmin/delete_user_links.php'),
(620, '::1', 'root', '2017-03-11 18:48:57', 'Pressed delete button', '/clinic/sysadmin/delete_user_links.php'),
(621, '::1', 'root', '2017-03-11 18:48:57', 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 135\n)\n', '/clinic/sysadmin/delete_user_links.php'),
(622, '::1', 'root', '2017-03-11 18:49:00', 'Pressed delete button', '/clinic/sysadmin/delete_user_links.php'),
(623, '::1', 'root', '2017-03-11 18:49:00', 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 136\n)\n', '/clinic/sysadmin/delete_user_links.php'),
(624, '::1', 'root', '2017-03-11 18:49:03', 'Pressed delete button', '/clinic/sysadmin/delete_user_links.php'),
(625, '::1', 'root', '2017-03-11 18:49:03', 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 137\n)\n', '/clinic/sysadmin/delete_user_links.php'),
(626, '::1', 'root', '2017-03-11 18:50:34', 'Query executed: DELETE FROM user_passport WHERE username=''root'' AND link_id IN (''43'',''49'',''50'',''51'',''52'',''55'',''57'',''58'',''59'',''60'',''209'',''262'',''263'',''264'',''265'',''278'',''279'',''280'',''281'',''286'',''287'',''288'',''289'')', '/clinic/sysadmin/set_user_passports.php'),
(627, '::1', 'root', '2017-03-11 18:50:34', 'Query executed: INSERT INTO user_passport(username, link_id) VALUES(''root'', ''49''),(''root'', ''262''),(''root'', ''286''),(''root'', ''57''),(''root'', ''278''),(''root'', ''52''),(''root'', ''265''),(''root'', ''289''),(''root'', ''209''),(''root'', ''60''),(''root'', ''281''),(''root'', ''50''),(''root'', ''263''),(''root'', ''287''),(''root'', ''58''),(''root'', ''279''),(''root'', ''43''),(''root'', ''51''),(''root'', ''264''),(''root'', ''288''),(''root'', ''55''),(''root'', ''59''),(''root'', ''280'')', '/clinic/sysadmin/set_user_passports.php'),
(628, '::1', 'root', '2017-03-11 18:50:34', 'Query executed: UPDATE user SET role_id=''0'' WHERE username=''root''', '/clinic/sysadmin/set_user_passports.php'),
(629, '::1', 'root', '2017-03-11 18:51:42', 'Query executed: DELETE FROM user_passport WHERE username=''root'' AND link_id IN (''43'',''49'',''50'',''51'',''52'',''55'',''57'',''58'',''59'',''60'',''209'',''262'',''263'',''264'',''265'',''278'',''279'',''280'',''281'',''286'',''287'',''288'',''289'')', '/clinic/sysadmin/set_user_passports.php'),
(630, '::1', 'root', '2017-03-11 18:51:43', 'Query executed: INSERT INTO user_passport(username, link_id) VALUES(''root'', ''49''),(''root'', ''57''),(''root'', ''278''),(''root'', ''52''),(''root'', ''60''),(''root'', ''281''),(''root'', ''50''),(''root'', ''58''),(''root'', ''279''),(''root'', ''43''),(''root'', ''51''),(''root'', ''55''),(''root'', ''59''),(''root'', ''280'')', '/clinic/sysadmin/set_user_passports.php'),
(631, '::1', 'root', '2017-03-11 18:51:43', 'Query executed: UPDATE user SET role_id=''0'' WHERE username=''root''', '/clinic/sysadmin/set_user_passports.php'),
(632, '::1', 'root', '2017-03-11 18:52:01', 'Pressed delete button', '/clinic/sysadmin/delete_user_links.php'),
(633, '::1', 'root', '2017-03-11 18:52:01', 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 206\n)\n', '/clinic/sysadmin/delete_user_links.php'),
(634, '::1', 'root', '2017-03-11 18:52:05', 'Pressed delete button', '/clinic/sysadmin/delete_user_links.php'),
(635, '::1', 'root', '2017-03-11 18:52:05', 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 207\n)\n', '/clinic/sysadmin/delete_user_links.php'),
(636, '::1', 'root', '2017-03-11 18:52:08', 'Pressed delete button', '/clinic/sysadmin/delete_user_links.php'),
(637, '::1', 'root', '2017-03-11 18:52:08', 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 208\n)\n', '/clinic/sysadmin/delete_user_links.php'),
(638, '::1', 'root', '2017-03-11 18:52:11', 'Pressed delete button', '/clinic/sysadmin/delete_user_links.php'),
(639, '::1', 'root', '2017-03-11 18:52:11', 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 209\n)\n', '/clinic/sysadmin/delete_user_links.php'),
(640, '::1', 'root', '2017-03-11 18:52:14', 'Pressed delete button', '/clinic/sysadmin/delete_user_links.php'),
(641, '::1', 'root', '2017-03-11 18:52:14', 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 214\n)\n', '/clinic/sysadmin/delete_user_links.php'),
(642, '::1', 'root', '2017-03-11 18:52:16', 'Pressed delete button', '/clinic/sysadmin/delete_user_links.php'),
(643, '::1', 'root', '2017-03-11 18:52:17', 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 215\n)\n', '/clinic/sysadmin/delete_user_links.php'),
(644, '::1', 'root', '2017-03-11 18:52:19', 'Pressed delete button', '/clinic/sysadmin/delete_user_links.php'),
(645, '::1', 'root', '2017-03-11 18:52:19', 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 216\n)\n', '/clinic/sysadmin/delete_user_links.php'),
(646, '::1', 'root', '2017-03-11 18:52:22', 'Pressed delete button', '/clinic/sysadmin/delete_user_links.php'),
(647, '::1', 'root', '2017-03-11 18:52:22', 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 217\n)\n', '/clinic/sysadmin/delete_user_links.php'),
(648, '::1', 'root', '2017-03-11 18:52:24', 'Pressed delete button', '/clinic/sysadmin/delete_user_links.php'),
(649, '::1', 'root', '2017-03-11 18:52:24', 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 262\n)\n', '/clinic/sysadmin/delete_user_links.php'),
(650, '::1', 'root', '2017-03-11 18:52:27', 'Pressed delete button', '/clinic/sysadmin/delete_user_links.php'),
(651, '::1', 'root', '2017-03-11 18:52:27', 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 263\n)\n', '/clinic/sysadmin/delete_user_links.php'),
(652, '::1', 'root', '2017-03-11 18:52:30', 'Pressed delete button', '/clinic/sysadmin/delete_user_links.php'),
(653, '::1', 'root', '2017-03-11 18:52:30', 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 264\n)\n', '/clinic/sysadmin/delete_user_links.php'),
(654, '::1', 'root', '2017-03-11 18:52:32', 'Pressed delete button', '/clinic/sysadmin/delete_user_links.php'),
(655, '::1', 'root', '2017-03-11 18:52:33', 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 265\n)\n', '/clinic/sysadmin/delete_user_links.php'),
(656, '::1', 'root', '2017-03-11 18:52:35', 'Pressed delete button', '/clinic/sysadmin/delete_user_links.php'),
(657, '::1', 'root', '2017-03-11 18:52:35', 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 286\n)\n', '/clinic/sysadmin/delete_user_links.php'),
(658, '::1', 'root', '2017-03-11 18:52:38', 'Pressed delete button', '/clinic/sysadmin/delete_user_links.php'),
(659, '::1', 'root', '2017-03-11 18:52:38', 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 287\n)\n', '/clinic/sysadmin/delete_user_links.php'),
(660, '::1', 'root', '2017-03-11 18:52:40', 'Pressed delete button', '/clinic/sysadmin/delete_user_links.php'),
(661, '::1', 'root', '2017-03-11 18:52:40', 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 288\n)\n', '/clinic/sysadmin/delete_user_links.php'),
(662, '::1', 'root', '2017-03-11 18:52:42', 'Pressed delete button', '/clinic/sysadmin/delete_user_links.php'),
(663, '::1', 'root', '2017-03-11 18:52:42', 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 289\n)\n', '/clinic/sysadmin/delete_user_links.php'),
(664, '::1', 'root', '2017-03-11 18:53:38', 'Pressed submit button', '/clinic/modules/Clinic/log_info/add_log_info.php'),
(665, '::1', 'root', '2017-03-11 19:03:01', 'Query executed: DELETE FROM user_passport WHERE username=''root'' AND link_id IN (''43'',''49'',''50'',''51'',''52'',''55'',''57'',''58'',''59'',''60'',''278'',''279'',''280'',''281'')', '/clinic/sysadmin/set_user_passports.php'),
(666, '::1', 'root', '2017-03-11 19:03:01', 'Query executed: INSERT INTO user_passport(username, link_id) VALUES(''root'', ''49''),(''root'', ''57''),(''root'', ''278''),(''root'', ''52''),(''root'', ''60''),(''root'', ''281''),(''root'', ''50''),(''root'', ''58''),(''root'', ''279''),(''root'', ''43''),(''root'', ''51''),(''root'', ''55''),(''root'', ''59''),(''root'', ''280'')', '/clinic/sysadmin/set_user_passports.php'),
(667, '::1', 'root', '2017-03-11 19:03:01', 'Query executed: UPDATE user SET role_id=''0'' WHERE username=''root''', '/clinic/sysadmin/set_user_passports.php'),
(668, '::1', 'root', '2017-03-11 19:03:54', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(669, '::1', 'root', '2017-03-11 19:03:55', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Add log detail\n    [2] => modules/clinic/log_detail/add_log_detail.php\n    [3] => Add Log Detail\n    [4] => \n    [5] => 3\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 294\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(670, '::1', 'root', '2017-03-11 19:03:58', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(671, '::1', 'root', '2017-03-11 19:03:58', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Edit log detail\n    [2] => modules/clinic/log_detail/edit_log_detail.php\n    [3] => Edit Log Detail\n    [4] => \n    [5] => 3\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 295\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(672, '::1', 'root', '2017-03-11 19:04:01', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(673, '::1', 'root', '2017-03-11 19:04:02', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => View log detail\n    [2] => modules/clinic/log_detail/listview_log_detail.php\n    [3] => Log Detail\n    [4] => \n    [5] => 3\n    [6] => Yes\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 296\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(674, '::1', 'root', '2017-03-11 19:04:05', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(675, '::1', 'root', '2017-03-11 19:04:05', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Delete log detail\n    [2] => modules/clinic/log_detail/delete_log_detail.php\n    [3] => Delete Log Detail\n    [4] => \n    [5] => 3\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 297\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(676, '::1', 'root', '2017-03-11 19:04:27', 'Query executed: DELETE FROM user_passport WHERE username=''root'' AND link_id IN (''43'',''49'',''50'',''51'',''52'',''55'',''57'',''58'',''59'',''60'',''278'',''279'',''280'',''281'',''294'',''295'',''296'',''297'')', '/clinic/sysadmin/set_user_passports.php'),
(677, '::1', 'root', '2017-03-11 19:04:27', 'Query executed: INSERT INTO user_passport(username, link_id) VALUES(''root'', ''49''),(''root'', ''294''),(''root'', ''57''),(''root'', ''278''),(''root'', ''52''),(''root'', ''297''),(''root'', ''60''),(''root'', ''281''),(''root'', ''50''),(''root'', ''295''),(''root'', ''58''),(''root'', ''279''),(''root'', ''43''),(''root'', ''51''),(''root'', ''296''),(''root'', ''55''),(''root'', ''59''),(''root'', ''280'')', '/clinic/sysadmin/set_user_passports.php'),
(678, '::1', 'root', '2017-03-11 19:04:27', 'Query executed: UPDATE user SET role_id=''0'' WHERE username=''root''', '/clinic/sysadmin/set_user_passports.php'),
(679, '::1', 'root', '2017-03-11 19:05:27', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(680, '::1', 'root', '2017-03-11 19:05:27', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Add log detail\n    [2] => modules/Clinic/log_detail/add_log_detail.php\n    [3] => Add Log Detail\n    [4] => \n    [5] => 3\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 294\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(681, '::1', 'root', '2017-03-11 19:05:32', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(682, '::1', 'root', '2017-03-11 19:05:32', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Edit log detail\n    [2] => modules/Clinic/log_detail/edit_log_detail.php\n    [3] => Edit Log Detail\n    [4] => \n    [5] => 3\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 295\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(683, '::1', 'root', '2017-03-11 19:05:38', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(684, '::1', 'root', '2017-03-11 19:05:38', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => View log detail\n    [2] => modules/Clinic/log_detail/listview_log_detail.php\n    [3] => Log Detail\n    [4] => \n    [5] => 3\n    [6] => Yes\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 296\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(685, '::1', 'root', '2017-03-11 19:05:43', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(686, '::1', 'root', '2017-03-11 19:05:43', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Delete log detail\n    [2] => modules/Clinic/log_detail/delete_log_detail.php\n    [3] => Delete Log Detail\n    [4] => \n    [5] => 3\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 297\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(687, '::1', 'root', '2017-03-11 19:08:01', 'Pressed submit button', '/clinic/modules/Clinic/log_info/add_log_info.php'),
(688, '::1', 'root', '2017-03-11 19:08:01', 'Query Executed: INSERT INTO log_info(log_id, date, time, log_detail_id, complaints, patient_type, student_id, emp_id) VALUES(?,?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => ississss\n    [1] => \n    [2] => 2017-03-11\n    [3] => 232\n    [4] => 123\n    [5] => 213\n    [6] => Student\n    [7] => 2321\n    [8] => 2312312\n)\n', '/clinic/modules/Clinic/log_info/add_log_info.php'),
(689, '::1', 'root', '2017-03-11 19:08:01', 'Query Executed: INSERT INTO log_detail(log_detail_id, medicine_id, qty) VALUES(?,?,?)\r\nArray\n(\n    [0] => iii\n    [1] => 3\n    [2] => 3\n    [3] => 2\n)\n', '/clinic/modules/Clinic/log_info/add_log_info.php'),
(690, '::1', 'root', '2017-03-11 19:08:10', 'Pressed submit button', '/clinic/modules/Clinic/log_info/edit_log_info.php'),
(691, '::1', 'root', '2017-03-11 19:08:24', 'Pressed submit button', '/clinic/modules/Registrar/employee/edit_employee.php'),
(692, '::1', 'root', '2017-03-11 19:08:37', 'Pressed submit button', '/clinic/modules/Registrar/employee/edit_employee.php'),
(693, '::1', 'root', '2017-03-11 19:08:37', 'Query Executed: DELETE FROM refempfamily WHERE emp_id = ?\r\nArray\n(\n    [0] => s\n    [1] => 2014-10030\n)\n', '/clinic/modules/Registrar/employee/edit_employee.php'),
(694, '::1', 'root', '2017-03-11 19:08:37', 'Query Executed: INSERT INTO refempfamily(family_id, emp_id, relationship, name, email, email_status, address_type, address, postal_code, mobile_num1, tel_num, mobile_num2) VALUES(?,?,?,?,?,?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => isssssssssss\n    [1] => \n    [2] => 2014-10030\n    [3] => Guardian\n    [4] => Felix Gregorio JR.\n    [5] => fasdsad\n    [6] => Active\n    [7] => Home\n    [8] => asdsdas\n    [9] => 123\n    [10] => 123\n    [11] => 123\n    [12] => 12312312321\n)\n', '/clinic/modules/Registrar/employee/edit_employee.php');
INSERT INTO `system_log` (`entry_id`, `ip_address`, `user`, `datetime`, `action`, `module`) VALUES
(695, '::1', 'root', '2017-03-11 19:08:37', 'Query Executed: INSERT INTO refempfamily(family_id, emp_id, relationship, name, email, email_status, address_type, address, postal_code, mobile_num1, tel_num, mobile_num2) VALUES(?,?,?,?,?,?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => isssssssssss\n    [1] => \n    [2] => 2014-10030\n    [3] => Guardian\n    [4] => Lolinie Gregorio\n    [5] => centuryleni@gmail.com\n    [6] => Inactive\n    [7] => Home\n    [8] => 123 Mabuhay Ave.\n    [9] => 2012\n    [10] => 24123123\n    [11] => 12312312\n    [12] => 1312312\n)\n', '/clinic/modules/Registrar/employee/edit_employee.php'),
(696, '::1', 'root', '2017-03-11 19:08:37', 'Query Executed: UPDATE employee SET emp_id = ?, emp_last_name = ?, emp_first_name = ?, emp_middle_name = ?, email = ?, emp_status = ?, emp_group = ?, address = ?, postal_code = ?, tel_num = ?, mobile_num = ?, hiring_date = ?, resignation_date = ?, gender = ?, civil_status = ?, birth_date = ?, birth_place = ?, religion = ?, is_deleted = ?, ATM_num = ?, BDO_ATM_num = ?, SSS_num = ?, PhilHealth_num = ?, TIN_num = ?, PagIbig_num = ? WHERE emp_id = ?\r\nArray\n(\n    [0] => ssssssisssssssssssssssssss\n    [1] => 2014-10030\n    [2] => Gregorio\n    [3] => Felix\n    [4] => Villacruel\n    [5] => fvgregorio@student.apc.ed\n    [6] => \n    [7] => 0\n    [8] => asdasd\n    [9] => \n    [10] => 123123\n    [11] => 1231231\n    [12] => 2017-02-21\n    [13] => 2017-02-21\n    [14] => Male\n    [15] => Single\n    [16] => 2017-02-21\n    [17] => asasd\n    [18] => asd\n    [19] => \n    [20] => \n    [21] => \n    [22] => \n    [23] => \n    [24] => \n    [25] => \n    [26] => 2014-10030\n)\n', '/clinic/modules/Registrar/employee/edit_employee.php'),
(697, '::1', 'root', '2017-03-11 19:13:21', 'Pressed cancel button', '/clinic/modules/Clinic/log_detail/add_log_detail.php'),
(698, '::1', 'root', '2017-03-11 19:24:29', 'Pressed delete button', '/clinic/sysadmin/delete_user_links.php'),
(699, '::1', 'root', '2017-03-11 19:24:29', 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 3\n)\n', '/clinic/sysadmin/delete_user_links.php'),
(700, '::1', 'root', '2017-03-11 19:24:32', 'Pressed delete button', '/clinic/sysadmin/delete_user_links.php'),
(701, '::1', 'root', '2017-03-11 19:24:32', 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 53\n)\n', '/clinic/sysadmin/delete_user_links.php'),
(702, '::1', 'root', '2017-03-11 19:24:34', 'Pressed delete button', '/clinic/sysadmin/delete_user_links.php'),
(703, '::1', 'root', '2017-03-11 19:24:35', 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 54\n)\n', '/clinic/sysadmin/delete_user_links.php'),
(704, '::1', 'root', '2017-03-11 19:24:37', 'Pressed delete button', '/clinic/sysadmin/delete_user_links.php'),
(705, '::1', 'root', '2017-03-11 19:24:37', 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 55\n)\n', '/clinic/sysadmin/delete_user_links.php'),
(706, '::1', 'root', '2017-03-11 19:24:39', 'Pressed delete button', '/clinic/sysadmin/delete_user_links.php'),
(707, '::1', 'root', '2017-03-11 19:24:39', 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 56\n)\n', '/clinic/sysadmin/delete_user_links.php'),
(708, '::1', 'root', '2017-03-11 19:24:42', 'Pressed delete button', '/clinic/sysadmin/delete_user_links.php'),
(709, '::1', 'root', '2017-03-11 19:24:42', 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 106\n)\n', '/clinic/sysadmin/delete_user_links.php'),
(710, '::1', 'root', '2017-03-11 19:24:45', 'Pressed delete button', '/clinic/sysadmin/delete_user_links.php'),
(711, '::1', 'root', '2017-03-11 19:24:45', 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 107\n)\n', '/clinic/sysadmin/delete_user_links.php'),
(712, '::1', 'root', '2017-03-11 19:24:47', 'Pressed delete button', '/clinic/sysadmin/delete_user_links.php'),
(713, '::1', 'root', '2017-03-11 19:24:47', 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 108\n)\n', '/clinic/sysadmin/delete_user_links.php'),
(714, '::1', 'root', '2017-03-11 19:24:50', 'Pressed delete button', '/clinic/sysadmin/delete_user_links.php'),
(715, '::1', 'root', '2017-03-11 19:24:50', 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 109\n)\n', '/clinic/sysadmin/delete_user_links.php'),
(716, '::1', 'root', '2017-03-11 19:24:52', 'Pressed delete button', '/clinic/sysadmin/delete_user_links.php'),
(717, '::1', 'root', '2017-03-11 19:24:52', 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 138\n)\n', '/clinic/sysadmin/delete_user_links.php'),
(718, '::1', 'root', '2017-03-11 19:25:16', 'Pressed delete button', '/clinic/sysadmin/delete_user_links.php'),
(719, '::1', 'root', '2017-03-11 19:25:16', 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 139\n)\n', '/clinic/sysadmin/delete_user_links.php'),
(720, '::1', 'root', '2017-03-11 19:25:19', 'Pressed delete button', '/clinic/sysadmin/delete_user_links.php'),
(721, '::1', 'root', '2017-03-11 19:25:19', 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 140\n)\n', '/clinic/sysadmin/delete_user_links.php'),
(722, '::1', 'root', '2017-03-11 19:25:23', 'Pressed delete button', '/clinic/sysadmin/delete_user_links.php'),
(723, '::1', 'root', '2017-03-11 19:25:23', 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 141\n)\n', '/clinic/sysadmin/delete_user_links.php'),
(724, '::1', 'root', '2017-03-11 19:25:25', 'Pressed delete button', '/clinic/sysadmin/delete_user_links.php'),
(725, '::1', 'root', '2017-03-11 19:25:25', 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 210\n)\n', '/clinic/sysadmin/delete_user_links.php'),
(726, '::1', 'root', '2017-03-11 19:25:27', 'Pressed delete button', '/clinic/sysadmin/delete_user_links.php'),
(727, '::1', 'root', '2017-03-11 19:25:27', 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 211\n)\n', '/clinic/sysadmin/delete_user_links.php'),
(728, '::1', 'root', '2017-03-11 19:25:29', 'Pressed delete button', '/clinic/sysadmin/delete_user_links.php'),
(729, '::1', 'root', '2017-03-11 19:25:30', 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 212\n)\n', '/clinic/sysadmin/delete_user_links.php'),
(730, '::1', 'root', '2017-03-11 19:25:32', 'Pressed delete button', '/clinic/sysadmin/delete_user_links.php'),
(731, '::1', 'root', '2017-03-11 19:25:32', 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 213\n)\n', '/clinic/sysadmin/delete_user_links.php'),
(732, '::1', 'root', '2017-03-11 19:25:34', 'Pressed delete button', '/clinic/sysadmin/delete_user_links.php'),
(733, '::1', 'root', '2017-03-11 19:25:34', 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 266\n)\n', '/clinic/sysadmin/delete_user_links.php'),
(734, '::1', 'root', '2017-03-11 19:25:37', 'Pressed delete button', '/clinic/sysadmin/delete_user_links.php'),
(735, '::1', 'root', '2017-03-11 19:25:37', 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 267\n)\n', '/clinic/sysadmin/delete_user_links.php'),
(736, '::1', 'root', '2017-03-11 19:25:40', 'Pressed delete button', '/clinic/sysadmin/delete_user_links.php'),
(737, '::1', 'root', '2017-03-11 19:25:40', 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 268\n)\n', '/clinic/sysadmin/delete_user_links.php'),
(738, '::1', 'root', '2017-03-11 19:25:42', 'Pressed delete button', '/clinic/sysadmin/delete_user_links.php'),
(739, '::1', 'root', '2017-03-11 19:25:42', 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 269\n)\n', '/clinic/sysadmin/delete_user_links.php'),
(740, '::1', 'root', '2017-03-11 19:25:44', 'Pressed delete button', '/clinic/sysadmin/delete_user_links.php'),
(741, '::1', 'root', '2017-03-11 19:25:44', 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 290\n)\n', '/clinic/sysadmin/delete_user_links.php'),
(742, '::1', 'root', '2017-03-11 19:25:46', 'Pressed delete button', '/clinic/sysadmin/delete_user_links.php'),
(743, '::1', 'root', '2017-03-11 19:25:47', 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 291\n)\n', '/clinic/sysadmin/delete_user_links.php'),
(744, '::1', 'root', '2017-03-11 19:25:49', 'Pressed delete button', '/clinic/sysadmin/delete_user_links.php'),
(745, '::1', 'root', '2017-03-11 19:25:49', 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 292\n)\n', '/clinic/sysadmin/delete_user_links.php'),
(746, '::1', 'root', '2017-03-11 19:25:51', 'Pressed delete button', '/clinic/sysadmin/delete_user_links.php'),
(747, '::1', 'root', '2017-03-11 19:25:51', 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 293\n)\n', '/clinic/sysadmin/delete_user_links.php'),
(748, '::1', 'root', '2017-03-11 19:25:57', 'Pressed delete button', '/clinic/sysadmin/delete_user_links.php'),
(749, '::1', 'root', '2017-03-11 19:25:57', 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 294\n)\n', '/clinic/sysadmin/delete_user_links.php'),
(750, '::1', 'root', '2017-03-11 19:25:59', 'Pressed delete button', '/clinic/sysadmin/delete_user_links.php'),
(751, '::1', 'root', '2017-03-11 19:25:59', 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 295\n)\n', '/clinic/sysadmin/delete_user_links.php'),
(752, '::1', 'root', '2017-03-11 19:26:01', 'Pressed delete button', '/clinic/sysadmin/delete_user_links.php'),
(753, '::1', 'root', '2017-03-11 19:26:01', 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 296\n)\n', '/clinic/sysadmin/delete_user_links.php'),
(754, '::1', 'root', '2017-03-11 19:26:03', 'Pressed delete button', '/clinic/sysadmin/delete_user_links.php'),
(755, '::1', 'root', '2017-03-11 19:26:03', 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 297\n)\n', '/clinic/sysadmin/delete_user_links.php'),
(756, '::1', 'root', '2017-03-11 19:26:06', 'Pressed delete button', '/clinic/sysadmin/delete_user_links.php'),
(757, '::1', 'root', '2017-03-11 19:26:06', 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 298\n)\n', '/clinic/sysadmin/delete_user_links.php'),
(758, '::1', 'root', '2017-03-11 19:26:08', 'Pressed delete button', '/clinic/sysadmin/delete_user_links.php'),
(759, '::1', 'root', '2017-03-11 19:26:08', 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 299\n)\n', '/clinic/sysadmin/delete_user_links.php'),
(760, '::1', 'root', '2017-03-11 19:26:10', 'Pressed delete button', '/clinic/sysadmin/delete_user_links.php'),
(761, '::1', 'root', '2017-03-11 19:26:10', 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 300\n)\n', '/clinic/sysadmin/delete_user_links.php'),
(762, '::1', 'root', '2017-03-11 19:26:12', 'Pressed delete button', '/clinic/sysadmin/delete_user_links.php'),
(763, '::1', 'root', '2017-03-11 19:26:12', 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 301\n)\n', '/clinic/sysadmin/delete_user_links.php'),
(764, '::1', 'root', '2017-03-11 19:27:19', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(765, '::1', 'root', '2017-03-11 19:27:19', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Add log detail\n    [2] => modules/clinic/log_detail/add_log_detail.php\n    [3] => Add Log Detail\n    [4] => \n    [5] => 3\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 302\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(766, '::1', 'root', '2017-03-11 19:27:23', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(767, '::1', 'root', '2017-03-11 19:27:23', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Edit log detail\n    [2] => modules/clinic/log_detail/edit_log_detail.php\n    [3] => Edit Log Detail\n    [4] => \n    [5] => 3\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 303\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(768, '::1', 'root', '2017-03-11 19:27:26', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(769, '::1', 'root', '2017-03-11 19:27:27', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => View log detail\n    [2] => modules/clinic/log_detail/listview_log_detail.php\n    [3] => Log Detail\n    [4] => \n    [5] => 3\n    [6] => Yes\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 304\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(770, '::1', 'root', '2017-03-11 19:27:31', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(771, '::1', 'root', '2017-03-11 19:27:32', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Delete log detail\n    [2] => modules/clinic/log_detail/delete_log_detail.php\n    [3] => Delete Log Detail\n    [4] => \n    [5] => 3\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 305\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(772, '::1', 'root', '2017-03-11 19:27:36', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(773, '::1', 'root', '2017-03-11 19:27:36', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Add log info\n    [2] => modules/clinic/log_info/add_log_info.php\n    [3] => Add Log Info\n    [4] => \n    [5] => 3\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 306\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(774, '::1', 'root', '2017-03-11 19:27:40', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(775, '::1', 'root', '2017-03-11 19:27:41', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Edit log info\n    [2] => modules/clinic/log_info/edit_log_info.php\n    [3] => Edit Log Info\n    [4] => \n    [5] => 3\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 307\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(776, '::1', 'root', '2017-03-11 19:27:45', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(777, '::1', 'root', '2017-03-11 19:27:45', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => View log info\n    [2] => modules/clinic/log_info/listview_log_info.php\n    [3] => Log Info\n    [4] => \n    [5] => 3\n    [6] => Yes\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 308\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(778, '::1', 'root', '2017-03-11 19:27:49', 'Pressed submit button', '/clinic/sysadmin/edit_user_links.php'),
(779, '::1', 'root', '2017-03-11 19:27:49', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Delete log info\n    [2] => modules/clinic/log_info/delete_log_info.php\n    [3] => Delete Log Info\n    [4] => \n    [5] => 3\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 309\n)\n', '/clinic/sysadmin/edit_user_links.php'),
(780, '::1', 'root', '2017-03-11 19:28:03', 'Query executed: DELETE FROM user_passport WHERE username=''root'' AND link_id IN (''43'',''49'',''50'',''51'',''52'',''57'',''58'',''59'',''60'',''278'',''279'',''280'',''281'',''302'',''303'',''304'',''305'',''306'',''307'',''308'',''309'')', '/clinic/sysadmin/set_user_passports.php'),
(781, '::1', 'root', '2017-03-11 19:28:03', 'Query executed: INSERT INTO user_passport(username, link_id) VALUES(''root'', ''49''),(''root'', ''302''),(''root'', ''306''),(''root'', ''57''),(''root'', ''278''),(''root'', ''52''),(''root'', ''305''),(''root'', ''309''),(''root'', ''60''),(''root'', ''281''),(''root'', ''50''),(''root'', ''303''),(''root'', ''307''),(''root'', ''58''),(''root'', ''279''),(''root'', ''43''),(''root'', ''51''),(''root'', ''304''),(''root'', ''308''),(''root'', ''59''),(''root'', ''280'')', '/clinic/sysadmin/set_user_passports.php'),
(782, '::1', 'root', '2017-03-11 19:28:03', 'Query executed: UPDATE user SET role_id=''0'' WHERE username=''root''', '/clinic/sysadmin/set_user_passports.php'),
(783, '::1', 'root', '2017-03-11 19:49:16', 'Pressed submit button', '/clinic/modules/clinic/log_info/edit_log_info.php'),
(784, '::1', 'root', '2017-03-11 19:49:22', 'Pressed submit button', '/clinic/modules/clinic/log_info/edit_log_info.php'),
(785, '::1', 'root', '2017-03-11 21:37:43', 'Pressed delete button', '/clinic/modules/clinic/log_info/delete_log_info.php'),
(786, '::1', 'root', '2017-03-11 22:59:34', 'Pressed cancel button', '/clinic/modules/clinic/log_detail/edit_log_detail.php'),
(787, '::1', 'root', '2017-03-11 22:59:51', 'Pressed cancel button', '/clinic/modules/clinic/log_info/edit_log_info.php'),
(788, '::1', 'root', '2017-03-11 23:00:06', 'Pressed cancel button', '/clinic/modules/clinic/log_info/edit_log_info.php'),
(789, '::1', 'root', '2017-03-11 23:00:10', 'Pressed submit button', '/clinic/modules/clinic/log_info/edit_log_info.php'),
(790, '::1', 'root', '2017-03-11 23:00:13', 'Pressed submit button', '/clinic/modules/clinic/log_info/edit_log_info.php'),
(791, '::1', 'root', '2017-03-11 23:32:37', 'Logged out', '/clinic/end.php'),
(792, '::1', 'doctor', '2017-03-11 23:32:45', 'Logged in', '/clinic/login.php'),
(793, '::1', 'doctor', '2017-03-11 23:45:25', 'Logged out', '/clinic/end.php'),
(794, '::1', 'root', '2017-03-11 23:45:29', 'Logged in', '/clinic/login.php');

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
('doctor', '$2y$12$UsZcXA9NrQ6W6uJFFQX96.GZPuomOlB2/KVspODmUhCGTXD1lnpky', 'UsZcXA9NrQ6W6uJFFQX96A', 12, 'blowfish', 3, 4, 2),
('nurse', '$2y$12$pxuwB7LWk18IfmgAA6kJBeJxVGrw77LA2y7/CkapBcHDqgUl2K/06', 'pxuwB7LWk18IfmgAA6kJBg', 12, 'blowfish', 2, 3, 9),
('root', '$2y$12$QU29gqrc8P.IkjvVNG6DB.7JXbCmLhKm.vh1Ci9mnpnuD7eDm3P6a', 'QU29gqrc8P+IkjvVNG6DBA', 12, 'blowfish', 1, 0, 1);

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
(41, 'Add emergencycase', 'modules/Clinic/emergency_case/add_emergencycase.php', 'Add Emergencycase', '', 1, 'No', 'On', 'form3.png', 0),
(42, 'Edit emergencycase', 'modules/Clinic/emergency_case/edit_emergencycase.php', 'Edit Emergencycase', '', 1, 'No', 'On', 'form3.png', 0),
(43, 'View emergencycase', 'modules/Clinic/emergency_case/listview_emergencycase.php', 'Emergency Case', '', 3, 'Yes', 'On', 'form3.png', 0),
(44, 'Delete emergencycase', 'modules/Clinic/emergency_case/delete_emergencycase.php', 'Delete Emergencycase', '', 1, 'No', 'On', 'form3.png', 0),
(45, 'Add employee', 'modules/Registrar/employee/add_employee.php', 'Add Employee', '', 1, 'No', 'On', 'form3.png', 0),
(46, 'Edit employee', 'modules/Registrar/employee/edit_employee.php', 'Edit Employee', '', 1, 'No', 'On', 'form3.png', 0),
(47, 'View employee', 'modules/Registrar/employee/listview_employee.php', 'Employee', '', 7, 'Yes', 'On', 'form3.png', 0),
(48, 'Delete employee', 'modules/Registrar/employee/delete_employee.php', 'Delete Employee', '', 1, 'No', 'On', 'form3.png', 0),
(49, 'Add hospital', 'modules/Clinic/hospital/add_hospital.php', 'Add Hospital', '', 3, 'No', 'On', 'form3.png', 0),
(50, 'Edit hospital', 'modules/Clinic/hospital/edit_hospital.php', 'Edit Hospital', '', 3, 'No', 'On', 'form3.png', 0),
(51, 'View hospital', 'modules/Clinic/hospital/listview_hospital.php', 'Hospital', '', 3, 'Yes', 'On', 'form3.png', 0),
(52, 'Delete hospital', 'modules/Clinic/hospital/delete_hospital.php', 'Delete Hospital', '', 3, 'No', 'On', 'form3.png', 0),
(57, 'Add medicine', 'modules/Clinic/medicine/add_medicine.php', 'Add Medicine', '', 3, 'No', 'On', 'form3.png', 0),
(58, 'Edit medicine', 'modules/Clinic/medicine/edit_medicine.php', 'Edit Medicine', '', 3, 'No', 'On', 'form3.png', 0),
(59, 'View medicine', 'modules/Clinic/medicine/listview_medicine.php', 'Medicine', '', 3, 'Yes', 'On', 'form3.png', 0),
(60, 'Delete medicine', 'modules/Clinic/medicine/delete_medicine.php', 'Delete Medicine', '', 3, 'No', 'On', 'form3.png', 0),
(61, 'Add refempfamily', 'modules/Registrar/employee_family/add_refempfamily.php', 'Add Refempfamily', '', 1, 'No', 'On', 'form3.png', 0),
(62, 'Edit refempfamily', 'modules/Registrar/employee_family/edit_refempfamily.php', 'Edit Refempfamily', '', 1, 'No', 'On', 'form3.png', 0),
(63, 'View refempfamily', 'modules/Registrar/employee_family/listview_refempfamily.php', 'Employee Family', '', 7, 'Yes', 'On', 'form3.png', 0),
(64, 'Delete refempfamily', 'modules/Registrar/employee_family/delete_refempfamily.php', 'Delete Refempfamily', '', 1, 'No', 'On', 'form3.png', 0),
(65, 'Add refstudent', 'modules/Registrar/student/add_refstudent.php', 'Add Refstudent', '', 1, 'No', 'On', 'form3.png', 0),
(66, 'Edit refstudent', 'modules/Registrar/student/edit_refstudent.php', 'Edit Refstudent', '', 1, 'No', 'On', 'form3.png', 0),
(67, 'View refstudent', 'modules/Registrar/student/listview_refstudent.php', 'Student', '', 7, 'Yes', 'On', 'form3.png', 0),
(68, 'Delete refstudent', 'modules/Registrar/student/delete_refstudent.php', 'Delete Refstudent', '', 1, 'No', 'On', 'form3.png', 0),
(69, 'Add refstudentclearance', 'modules/Registrar/clearance/add_refstudentclearance.php', 'Add Refstudentclearance', '', 1, 'No', 'On', 'form3.png', 0),
(70, 'Edit refstudentclearance', 'modules/Registrar/clearance/edit_refstudentclearance.php', 'Edit Refstudentclearance', '', 1, 'No', 'On', 'form3.png', 0),
(71, 'View refstudentclearance', 'modules/Registrar/clearance/listview_refstudentclearance.php', 'Student Clearance', '', 5, 'Yes', 'On', 'form3.png', 0),
(72, 'Delete refstudentclearance', 'modules/Registrar/clearance/delete_refstudentclearance.php', 'Delete Refstudentclearance', '', 1, 'No', 'On', 'form3.png', 0),
(73, 'Add refstudentfamily', 'modules/Registrar/student_family/add_refstudentfamily.php', 'Add Refstudentfamily', '', 1, 'No', 'On', 'form3.png', 0),
(74, 'Edit refstudentfamily', 'modules/Registrar/student_family/edit_refstudentfamily.php', 'Edit Refstudentfamily', '', 1, 'No', 'On', 'form3.png', 0),
(75, 'View refstudentfamily', 'modules/Registrar/student_family/listview_refstudentfamily.php', 'Student Family', '', 7, 'Yes', 'On', 'form3.png', 0),
(76, 'Delete refstudentfamily', 'modules/Registrar/student_family/delete_refstudentfamily.php', 'Delete Refstudentfamily', '', 1, 'No', 'On', 'form3.png', 0),
(77, 'Add refsubjectofferingdtl', 'modules/Registrar/subject_offering_detail/add_refsubjectofferingdtl.php', 'Add Refsubjectofferingdtl', '', 5, 'No', 'On', 'form3.png', 0),
(78, 'Edit refsubjectofferingdtl', 'modules/Registrar/subject_offering_detail/edit_refsubjectofferingdtl.php', 'Edit Refsubjectofferingdtl', '', 5, 'No', 'On', 'form3.png', 0),
(79, 'View refsubjectofferingdtl', 'modules/Registrar/subject_offering_detail/listview_refsubjectofferingdtl.php', 'Subject Offering Details', '', 5, 'Yes', 'On', 'form3.png', 0),
(80, 'Delete refsubjectofferingdtl', 'modules/Registrar/subject_offering_detail/delete_refsubjectofferingdtl.php', 'Delete Refsubjectofferingdtl', '', 5, 'No', 'On', 'form3.png', 0),
(81, 'Add refsubjectofferinghdr', 'modules/Registrar/subject_offering_header/add_refsubjectofferinghdr.php', 'Add Refsubjectofferinghdr', '', 5, 'No', 'On', 'form3.png', 0),
(82, 'Edit refsubjectofferinghdr', 'modules/Registrar/subject_offering_header/edit_refsubjectofferinghdr.php', 'Edit Refsubjectofferinghdr', '', 5, 'No', 'On', 'form3.png', 0),
(83, 'View refsubjectofferinghdr', 'modules/Registrar/subject_offering_header/listview_refsubjectofferinghdr.php', 'Subject Offering Header', '', 5, 'Yes', 'On', 'form3.png', 0),
(84, 'Delete refsubjectofferinghdr', 'modules/Registrar/subject_offering_header/delete_refsubjectofferinghdr.php', 'Delete Refsubjectofferinghdr', '', 5, 'No', 'On', 'form3.png', 0),
(85, 'Add required appointment', 'modules/Clinic/required_appointment/add_required_appointment.php', 'Add Required Appointment', '', 1, 'No', 'On', 'form3.png', 0),
(86, 'Edit required appointment', 'modules/Clinic/required_appointment/edit_required_appointment.php', 'Edit Required Appointment', '', 1, 'No', 'On', 'form3.png', 0),
(87, 'View required appointment', 'modules/Clinic/required_appointment/listview_required_appointment.php', 'Required Appointment', '', 4, 'Yes', 'On', 'form3.png', 0),
(88, 'Delete required appointment', 'modules/Clinic/required_appointment/delete_required_appointment.php', 'Delete Required Appointment', '', 1, 'No', 'On', 'form3.png', 0),
(89, 'Add subject', 'modules/Registrar/subject/add_subject.php', 'Add Subject', '', 5, 'No', 'On', 'form3.png', 0),
(90, 'Edit subject', 'modules/Registrar/subject/edit_subject.php', 'Edit Subject', '', 5, 'No', 'On', 'form3.png', 0),
(91, 'View subject', 'modules/Registrar/subject/listview_subject.php', 'Subject', '', 5, 'Yes', 'On', 'form3.png', 0),
(92, 'Delete subject', 'modules/Registrar/subject/delete_subject.php', 'Delete Subject', '', 5, 'No', 'On', 'form3.png', 0),
(93, 'Add term', 'modules/Registrar/term/add_term.php', 'Add Term', '', 5, 'No', 'On', 'form3.png', 0),
(94, 'Edit term', 'modules/Registrar/term/edit_term.php', 'Edit Term', '', 5, 'No', 'On', 'form3.png', 0),
(95, 'View term', 'modules/Registrar/term/listview_term.php', 'Term', '', 5, 'Yes', 'On', 'form3.png', 0),
(96, 'Delete term', 'modules/Registrar/term/delete_term.php', 'Delete Term', '', 5, 'No', 'On', 'form3.png', 0),
(97, 'Add xrefstudentschedule', 'modules/Registrar/student_schedule/add_xrefstudentschedule.php', 'Add Xrefstudentschedule', '', 1, 'No', 'On', 'form3.png', 0),
(98, 'Edit xrefstudentschedule', 'modules/Registrar/student_schedule/edit_xrefstudentschedule.php', 'Edit Xrefstudentschedule', '', 1, 'No', 'On', 'form3.png', 0),
(99, 'View xrefstudentschedule', 'modules/Registrar/student_schedule/listview_xrefstudentschedule.php', 'Student Schedule', '', 4, 'Yes', 'On', 'form3.png', 0),
(100, 'Delete xrefstudentschedule', 'modules/Registrar/student_schedule/delete_xrefstudentschedule.php', 'Delete Xrefstudentschedule', '', 1, 'No', 'On', 'form3.png', 0),
(110, 'Add medicine', 'modules/add_medicine.php', 'Add Medicine', '', 1, 'No', 'On', 'form3.png', 0),
(111, 'Edit medicine', 'modules/edit_medicine.php', 'Edit Medicine', '', 1, 'No', 'On', 'form3.png', 0),
(112, 'View medicine', 'modules/listview_medicine.php', 'Medicine', '', 1, 'Yes', 'On', 'form3.png', 0),
(113, 'Delete medicine', 'modules/delete_medicine.php', 'Delete Medicine', '', 1, 'No', 'On', 'form3.png', 0),
(118, 'Add dept', 'modules/Registrar/department/add_dept.php', 'Add Dept', '', 1, 'No', 'On', 'form3.png', 0),
(119, 'Edit dept', 'modules/Registrar/department/edit_dept.php', 'Edit Dept', '', 1, 'No', 'On', 'form3.png', 0),
(120, 'View dept', 'modules/Registrar/department/listview_dept.php', 'Dept', '', 1, 'Yes', 'On', 'form3.png', 0),
(121, 'Delete dept', 'modules/Registrar/department/delete_dept.php', 'Delete Dept', '', 1, 'No', 'On', 'form3.png', 0),
(122, 'Add emergencycase', 'modules/Clinic/emergency_case/add_emergencycase.php', 'Add Emergencycase', '', 1, 'No', 'On', 'form3.png', 0),
(123, 'Edit emergencycase', 'modules/Clinic/emergency_case/edit_emergencycase.php', 'Edit Emergencycase', '', 1, 'No', 'On', 'form3.png', 0),
(124, 'View emergencycase', 'modules/Clinic/emergency_case/listview_emergencycase.php', 'Emergencycase', '', 1, 'Yes', 'On', 'form3.png', 0),
(125, 'Delete emergencycase', 'modules/Clinic/emergency_case/delete_emergencycase.php', 'Delete Emergencycase', '', 1, 'No', 'On', 'form3.png', 0),
(126, 'Add employee', 'modules/Registrar/employee/add_employee.php', 'Add Employee', '', 1, 'No', 'On', 'form3.png', 0),
(127, 'Edit employee', 'modules/Registrar/employee/edit_employee.php', 'Edit Employee', '', 1, 'No', 'On', 'form3.png', 0),
(128, 'View employee', 'modules/Registrar/employee/listview_employee.php', 'Employee', '', 1, 'Yes', 'On', 'form3.png', 0),
(129, 'Delete employee', 'modules/Registrar/employee/delete_employee.php', 'Delete Employee', '', 1, 'No', 'On', 'form3.png', 0),
(130, 'Add hospital', 'modules/Clinic/hospital/add_hospital.php', 'Add Hospital', '', 1, 'No', 'On', 'form3.png', 0),
(131, 'Edit hospital', 'modules/Clinic/hospital/edit_hospital.php', 'Edit Hospital', '', 1, 'No', 'On', 'form3.png', 0),
(132, 'View hospital', 'modules/Clinic/hospital/listview_hospital.php', 'Hospital', '', 1, 'Yes', 'On', 'form3.png', 0),
(133, 'Delete hospital', 'modules/Clinic/hospital/delete_hospital.php', 'Delete Hospital', '', 1, 'No', 'On', 'form3.png', 0),
(142, 'Add medicine', 'modules/add_medicine.php', 'Add Medicine', '', 1, 'No', 'On', 'form3.png', 0),
(143, 'Edit medicine', 'modules/edit_medicine.php', 'Edit Medicine', '', 1, 'No', 'On', 'form3.png', 0),
(144, 'View medicine', 'modules/listview_medicine.php', 'Medicine', '', 1, 'Yes', 'On', 'form3.png', 0),
(145, 'Delete medicine', 'modules/delete_medicine.php', 'Delete Medicine', '', 1, 'No', 'On', 'form3.png', 0),
(150, 'Add refempfamily', 'modules/Registrar/employee_family/add_refempfamily.php', 'Add Refempfamily', '', 1, 'No', 'On', 'form3.png', 0),
(151, 'Edit refempfamily', 'modules/Registrar/employee_family/edit_refempfamily.php', 'Edit Refempfamily', '', 1, 'No', 'On', 'form3.png', 0),
(152, 'View refempfamily', 'modules/Registrar/employee_family/listview_refempfamily.php', 'Refempfamily', '', 1, 'Yes', 'On', 'form3.png', 0),
(153, 'Delete refempfamily', 'modules/Registrar/employee_family/delete_refempfamily.php', 'Delete Refempfamily', '', 1, 'No', 'On', 'form3.png', 0),
(154, 'Add refstudent', 'modules/Registrar/student/add_refstudent.php', 'Add Refstudent', '', 1, 'No', 'On', 'form3.png', 0),
(155, 'Edit refstudent', 'modules/Registrar/student/edit_refstudent.php', 'Edit Refstudent', '', 1, 'No', 'On', 'form3.png', 0),
(156, 'View refstudent', 'modules/Registrar/student/listview_refstudent.php', 'Refstudent', '', 1, 'Yes', 'On', 'form3.png', 0),
(157, 'Delete refstudent', 'modules/Registrar/student/delete_refstudent.php', 'Delete Refstudent', '', 1, 'No', 'On', 'form3.png', 0),
(158, 'Add refstudentclearance', 'modules/Registrar/clearance/add_refstudentclearance.php', 'Add Refstudentclearance', '', 1, 'No', 'On', 'form3.png', 0),
(159, 'Edit refstudentclearance', 'modules/Registrar/clearance/edit_refstudentclearance.php', 'Edit Refstudentclearance', '', 1, 'No', 'On', 'form3.png', 0),
(160, 'View refstudentclearance', 'modules/Registrar/clearance/listview_refstudentclearance.php', 'Refstudentclearance', '', 1, 'Yes', 'On', 'form3.png', 0),
(161, 'Delete refstudentclearance', 'modules/Registrar/clearance/delete_refstudentclearance.php', 'Delete Refstudentclearance', '', 1, 'No', 'On', 'form3.png', 0),
(162, 'Add refstudentfamily', 'modules/Registrar/student_family/add_refstudentfamily.php', 'Add Refstudentfamily', '', 1, 'No', 'On', 'form3.png', 0),
(163, 'Edit refstudentfamily', 'modules/Registrar/student_family/edit_refstudentfamily.php', 'Edit Refstudentfamily', '', 1, 'No', 'On', 'form3.png', 0),
(164, 'View refstudentfamily', 'modules/Registrar/student_family/listview_refstudentfamily.php', 'Refstudentfamily', '', 1, 'Yes', 'On', 'form3.png', 0),
(165, 'Delete refstudentfamily', 'modules/Registrar/student_family/delete_refstudentfamily.php', 'Delete Refstudentfamily', '', 1, 'No', 'On', 'form3.png', 0),
(166, 'Add refsubjectofferingdtl', 'modules/Registrar/subject_offering_detail/add_refsubjectofferingdtl.php', 'Add Refsubjectofferingdtl', '', 1, 'No', 'On', 'form3.png', 0),
(167, 'Edit refsubjectofferingdtl', 'modules/Registrar/subject_offering_detail/edit_refsubjectofferingdtl.php', 'Edit Refsubjectofferingdtl', '', 1, 'No', 'On', 'form3.png', 0),
(168, 'View refsubjectofferingdtl', 'modules/Registrar/subject_offering_detail/listview_refsubjectofferingdtl.php', 'Refsubjectofferingdtl', '', 1, 'Yes', 'On', 'form3.png', 0),
(169, 'Delete refsubjectofferingdtl', 'modules/Registrar/subject_offering_detail/delete_refsubjectofferingdtl.php', 'Delete Refsubjectofferingdtl', '', 1, 'No', 'On', 'form3.png', 0),
(170, 'Add refsubjectofferinghdr', 'modules/Registrar/subject_offering_header/add_refsubjectofferinghdr.php', 'Add Refsubjectofferinghdr', '', 1, 'No', 'On', 'form3.png', 0),
(171, 'Edit refsubjectofferinghdr', 'modules/Registrar/subject_offering_header/edit_refsubjectofferinghdr.php', 'Edit Refsubjectofferinghdr', '', 1, 'No', 'On', 'form3.png', 0),
(172, 'View refsubjectofferinghdr', 'modules/Registrar/subject_offering_header/listview_refsubjectofferinghdr.php', 'Refsubjectofferinghdr', '', 1, 'Yes', 'On', 'form3.png', 0),
(173, 'Delete refsubjectofferinghdr', 'modules/Registrar/subject_offering_header/delete_refsubjectofferinghdr.php', 'Delete Refsubjectofferinghdr', '', 1, 'No', 'On', 'form3.png', 0),
(174, 'Add required appointment', 'modules/Clinic/required_appointment/add_required_appointment.php', 'Add Required Appointment', '', 1, 'No', 'On', 'form3.png', 0),
(175, 'Edit required appointment', 'modules/Clinic/required_appointment/edit_required_appointment.php', 'Edit Required Appointment', '', 1, 'No', 'On', 'form3.png', 0),
(176, 'View required appointment', 'modules/Clinic/required_appointment/listview_required_appointment.php', 'Required Appointment', '', 1, 'Yes', 'On', 'form3.png', 0),
(177, 'Delete required appointment', 'modules/Clinic/required_appointment/delete_required_appointment.php', 'Delete Required Appointment', '', 1, 'No', 'On', 'form3.png', 0),
(178, 'Add subject', 'modules/Registrar/subject/add_subject.php', 'Add Subject', '', 1, 'No', 'On', 'form3.png', 0),
(179, 'Edit subject', 'modules/Registrar/subject/edit_subject.php', 'Edit Subject', '', 1, 'No', 'On', 'form3.png', 0),
(180, 'View subject', 'modules/Registrar/subject/listview_subject.php', 'Subject', '', 1, 'Yes', 'On', 'form3.png', 0),
(181, 'Delete subject', 'modules/Registrar/subject/delete_subject.php', 'Delete Subject', '', 1, 'No', 'On', 'form3.png', 0),
(182, 'Add term', 'modules/Registrar/term/add_term.php', 'Add Term', '', 1, 'No', 'On', 'form3.png', 0),
(183, 'Edit term', 'modules/Registrar/term/edit_term.php', 'Edit Term', '', 1, 'No', 'On', 'form3.png', 0),
(184, 'View term', 'modules/Registrar/term/listview_term.php', 'Term', '', 1, 'Yes', 'On', 'form3.png', 0),
(185, 'Delete term', 'modules/Registrar/term/delete_term.php', 'Delete Term', '', 1, 'No', 'On', 'form3.png', 0),
(186, 'Add xrefstudentschedule', 'modules/Registrar/student_schedule/add_xrefstudentschedule.php', 'Add Xrefstudentschedule', '', 1, 'No', 'On', 'form3.png', 0),
(187, 'Edit xrefstudentschedule', 'modules/Registrar/student_schedule/edit_xrefstudentschedule.php', 'Edit Xrefstudentschedule', '', 1, 'No', 'On', 'form3.png', 0),
(188, 'View xrefstudentschedule', 'modules/Registrar/student_schedule/listview_xrefstudentschedule.php', 'Xrefstudentschedule', '', 1, 'Yes', 'On', 'form3.png', 0),
(189, 'Delete xrefstudentschedule', 'modules/Registrar/student_schedule/delete_xrefstudentschedule.php', 'Delete Xrefstudentschedule', '', 1, 'No', 'On', 'form3.png', 0),
(190, 'Add dept', 'modules/Registrar/department/add_dept.php', 'Add Dept', '', 1, 'No', 'On', 'form3.png', 0),
(191, 'Edit dept', 'modules/Registrar/department/edit_dept.php', 'Edit Dept', '', 1, 'No', 'On', 'form3.png', 0),
(192, 'View dept', 'modules/Registrar/department/listview_dept.php', 'Dept', '', 1, 'Yes', 'On', 'form3.png', 0),
(193, 'Delete dept', 'modules/Registrar/department/delete_dept.php', 'Delete Dept', '', 1, 'No', 'On', 'form3.png', 0),
(194, 'Add emergencycase', 'modules/Clinic/emergency_case/add_emergencycase.php', 'Add Emergencycase', '', 1, 'No', 'On', 'form3.png', 0),
(195, 'Edit emergencycase', 'modules/Clinic/emergency_case/edit_emergencycase.php', 'Edit Emergencycase', '', 1, 'No', 'On', 'form3.png', 0),
(196, 'View emergencycase', 'modules/Clinic/emergency_case/listview_emergencycase.php', 'Emergencycase', '', 1, 'Yes', 'On', 'form3.png', 0),
(197, 'Delete emergencycase', 'modules/Clinic/emergency_case/delete_emergencycase.php', 'Delete Emergencycase', '', 1, 'No', 'On', 'form3.png', 0),
(198, 'Add employee', 'modules/Registrar/employee/add_employee.php', 'Add Employee', '', 1, 'No', 'On', 'form3.png', 0),
(199, 'Edit employee', 'modules/Registrar/employee/edit_employee.php', 'Edit Employee', '', 1, 'No', 'On', 'form3.png', 0),
(200, 'View employee', 'modules/Registrar/employee/listview_employee.php', 'Employee', '', 1, 'Yes', 'On', 'form3.png', 0),
(201, 'Delete employee', 'modules/Registrar/employee/delete_employee.php', 'Delete Employee', '', 1, 'No', 'On', 'form3.png', 0),
(202, 'Add hospital', 'modules/Clinic/hospital/add_hospital.php', 'Add Hospital', '', 1, 'No', 'On', 'form3.png', 0),
(203, 'Edit hospital', 'modules/Clinic/hospital/edit_hospital.php', 'Edit Hospital', '', 1, 'No', 'On', 'form3.png', 0),
(204, 'View hospital', 'modules/Clinic/hospital/listview_hospital.php', 'Hospital', '', 1, 'Yes', 'On', 'form3.png', 0),
(205, 'Delete hospital', 'modules/Clinic/hospital/delete_hospital.php', 'Delete Hospital', '', 1, 'No', 'On', 'form3.png', 0),
(222, 'Add refempfamily', 'modules/Registrar/employee_family/add_refempfamily.php', 'Add Refempfamily', '', 1, 'No', 'On', 'form3.png', 0),
(223, 'Edit refempfamily', 'modules/Registrar/employee_family/edit_refempfamily.php', 'Edit Refempfamily', '', 1, 'No', 'On', 'form3.png', 0),
(224, 'View refempfamily', 'modules/Registrar/employee_family/listview_refempfamily.php', 'Refempfamily', '', 1, 'Yes', 'On', 'form3.png', 0),
(225, 'Delete refempfamily', 'modules/Registrar/employee_family/delete_refempfamily.php', 'Delete Refempfamily', '', 1, 'No', 'On', 'form3.png', 0),
(226, 'Add refstudent', 'modules/Registrar/student/add_refstudent.php', 'Add Refstudent', '', 1, 'No', 'On', 'form3.png', 0),
(227, 'Edit refstudent', 'modules/Registrar/student/edit_refstudent.php', 'Edit Refstudent', '', 1, 'No', 'On', 'form3.png', 0),
(228, 'View refstudent', 'modules/Registrar/student/listview_refstudent.php', 'Refstudent', '', 1, 'Yes', 'On', 'form3.png', 0),
(229, 'Delete refstudent', 'modules/Registrar/student/delete_refstudent.php', 'Delete Refstudent', '', 1, 'No', 'On', 'form3.png', 0),
(230, 'Add refstudentclearance', 'modules/Registrar/clearance/add_refstudentclearance.php', 'Add Refstudentclearance', '', 1, 'No', 'On', 'form3.png', 0),
(231, 'Edit refstudentclearance', 'modules/Registrar/clearance/edit_refstudentclearance.php', 'Edit Refstudentclearance', '', 1, 'No', 'On', 'form3.png', 0),
(232, 'View refstudentclearance', 'modules/Registrar/clearance/listview_refstudentclearance.php', 'Refstudentclearance', '', 1, 'Yes', 'On', 'form3.png', 0),
(233, 'Delete refstudentclearance', 'modules/Registrar/clearance/delete_refstudentclearance.php', 'Delete Refstudentclearance', '', 1, 'No', 'On', 'form3.png', 0),
(234, 'Add refstudentfamily', 'modules/Registrar/student_family/add_refstudentfamily.php', 'Add Refstudentfamily', '', 1, 'No', 'On', 'form3.png', 0),
(235, 'Edit refstudentfamily', 'modules/Registrar/student_family/edit_refstudentfamily.php', 'Edit Refstudentfamily', '', 1, 'No', 'On', 'form3.png', 0),
(236, 'View refstudentfamily', 'modules/Registrar/student_family/listview_refstudentfamily.php', 'Refstudentfamily', '', 1, 'Yes', 'On', 'form3.png', 0),
(237, 'Delete refstudentfamily', 'modules/Registrar/student_family/delete_refstudentfamily.php', 'Delete Refstudentfamily', '', 1, 'No', 'On', 'form3.png', 0),
(238, 'Add refsubjectofferingdtl', 'modules/Registrar/subject_offering_detail/add_refsubjectofferingdtl.php', 'Add Refsubjectofferingdtl', '', 1, 'No', 'On', 'form3.png', 0),
(239, 'Edit refsubjectofferingdtl', 'modules/Registrar/subject_offering_detail/edit_refsubjectofferingdtl.php', 'Edit Refsubjectofferingdtl', '', 1, 'No', 'On', 'form3.png', 0),
(240, 'View refsubjectofferingdtl', 'modules/Registrar/subject_offering_detail/listview_refsubjectofferingdtl.php', 'Refsubjectofferingdtl', '', 1, 'Yes', 'On', 'form3.png', 0),
(241, 'Delete refsubjectofferingdtl', 'modules/Registrar/subject_offering_detail/delete_refsubjectofferingdtl.php', 'Delete Refsubjectofferingdtl', '', 1, 'No', 'On', 'form3.png', 0),
(242, 'Add refsubjectofferinghdr', 'modules/Registrar/subject_offering_header/add_refsubjectofferinghdr.php', 'Add Refsubjectofferinghdr', '', 1, 'No', 'On', 'form3.png', 0),
(243, 'Edit refsubjectofferinghdr', 'modules/Registrar/subject_offering_header/edit_refsubjectofferinghdr.php', 'Edit Refsubjectofferinghdr', '', 1, 'No', 'On', 'form3.png', 0),
(244, 'View refsubjectofferinghdr', 'modules/Registrar/subject_offering_header/listview_refsubjectofferinghdr.php', 'Refsubjectofferinghdr', '', 1, 'Yes', 'On', 'form3.png', 0),
(245, 'Delete refsubjectofferinghdr', 'modules/Registrar/subject_offering_header/delete_refsubjectofferinghdr.php', 'Delete Refsubjectofferinghdr', '', 1, 'No', 'On', 'form3.png', 0),
(246, 'Add required appointment', 'modules/Clinic/required_appointment/add_required_appointment.php', 'Add Required Appointment', '', 1, 'No', 'On', 'form3.png', 0),
(247, 'Edit required appointment', 'modules/Clinic/required_appointment/edit_required_appointment.php', 'Edit Required Appointment', '', 1, 'No', 'On', 'form3.png', 0),
(248, 'View required appointment', 'modules/Clinic/required_appointment/listview_required_appointment.php', 'Required Appointment', '', 1, 'Yes', 'On', 'form3.png', 0),
(249, 'Delete required appointment', 'modules/Clinic/required_appointment/delete_required_appointment.php', 'Delete Required Appointment', '', 1, 'No', 'On', 'form3.png', 0),
(250, 'Add subject', 'modules/Registrar/subject/add_subject.php', 'Add Subject', '', 1, 'No', 'On', 'form3.png', 0),
(251, 'Edit subject', 'modules/Registrar/subject/edit_subject.php', 'Edit Subject', '', 1, 'No', 'On', 'form3.png', 0),
(252, 'View subject', 'modules/Registrar/subject/listview_subject.php', 'Subject', '', 1, 'Yes', 'On', 'form3.png', 0),
(253, 'Delete subject', 'modules/Registrar/subject/delete_subject.php', 'Delete Subject', '', 1, 'No', 'On', 'form3.png', 0),
(254, 'Add term', 'modules/Registrar/term/add_term.php', 'Add Term', '', 1, 'No', 'On', 'form3.png', 0),
(255, 'Edit term', 'modules/Registrar/term/edit_term.php', 'Edit Term', '', 1, 'No', 'On', 'form3.png', 0),
(256, 'View term', 'modules/Registrar/term/listview_term.php', 'Term', '', 1, 'Yes', 'On', 'form3.png', 0),
(257, 'Delete term', 'modules/Registrar/term/delete_term.php', 'Delete Term', '', 1, 'No', 'On', 'form3.png', 0),
(258, 'Add xrefstudentschedule', 'modules/Registrar/student_schedule/add_xrefstudentschedule.php', 'Add Xrefstudentschedule', '', 1, 'No', 'On', 'form3.png', 0),
(259, 'Edit xrefstudentschedule', 'modules/Registrar/student_schedule/edit_xrefstudentschedule.php', 'Edit Xrefstudentschedule', '', 1, 'No', 'On', 'form3.png', 0),
(260, 'View xrefstudentschedule', 'modules/Registrar/student_schedule/listview_xrefstudentschedule.php', 'Xrefstudentschedule', '', 1, 'Yes', 'On', 'form3.png', 0),
(261, 'Delete xrefstudentschedule', 'modules/Registrar/student_schedule/delete_xrefstudentschedule.php', 'Delete Xrefstudentschedule', '', 1, 'No', 'On', 'form3.png', 0),
(270, 'Add medicine', 'modules/clinic/medicine/add_medicine.php', 'Add Medicine', '', 1, 'No', 'On', 'form3.png', 0),
(271, 'Edit medicine', 'modules/clinic/medicine/edit_medicine.php', 'Edit Medicine', '', 1, 'No', 'On', 'form3.png', 0),
(272, 'View medicine', 'modules/clinic/medicine/listview_medicine.php', 'Medicine', '', 1, 'Yes', 'On', 'form3.png', 0),
(273, 'Delete medicine', 'modules/clinic/medicine/delete_medicine.php', 'Delete Medicine', '', 1, 'No', 'On', 'form3.png', 0),
(274, 'Add medicine', 'modules/clinic/medicine/add_medicine.php', 'Add Medicine', '', 1, 'No', 'On', 'form3.png', 0),
(275, 'Edit medicine', 'modules/clinic/medicine/edit_medicine.php', 'Edit Medicine', '', 1, 'No', 'On', 'form3.png', 0),
(276, 'View medicine', 'modules/clinic/medicine/listview_medicine.php', 'Medicine', '', 1, 'Yes', 'On', 'form3.png', 0),
(277, 'Delete medicine', 'modules/clinic/medicine/delete_medicine.php', 'Delete Medicine', '', 1, 'No', 'On', 'form3.png', 0),
(278, 'Add medicine receiving', 'modules/clinic/medicine_receiving/add_medicine_receiving.php', 'Add Medicine Receiving', '', 3, 'No', 'On', 'form3.png', 0),
(279, 'Edit medicine receiving', 'modules/clinic/medicine_receiving/edit_medicine_receiving.php', 'Edit Medicine Receiving', '', 3, 'No', 'On', 'form3.png', 0),
(280, 'View medicine receiving', 'modules/clinic/medicine_receiving/listview_medicine_receiving.php', 'Medicine Receiving', '', 3, 'Yes', 'On', 'form3.png', 0),
(281, 'Delete medicine receiving', 'modules/clinic/medicine_receiving/delete_medicine_receiving.php', 'Delete Medicine Receiving', '', 3, 'No', 'On', 'form3.png', 0),
(282, 'Add medicine receiving', 'modules/clinic/medicine_receiving/add_medicine_receiving.php', 'Add Medicine Receiving', '', 1, 'No', 'On', 'form3.png', 0),
(283, 'Edit medicine receiving', 'modules/clinic/medicine_receiving/edit_medicine_receiving.php', 'Edit Medicine Receiving', '', 1, 'No', 'On', 'form3.png', 0),
(284, 'View medicine receiving', 'modules/clinic/medicine_receiving/listview_medicine_receiving.php', 'Medicine Receiving', '', 1, 'Yes', 'On', 'form3.png', 0),
(285, 'Delete medicine receiving', 'modules/clinic/medicine_receiving/delete_medicine_receiving.php', 'Delete Medicine Receiving', '', 1, 'No', 'On', 'form3.png', 0),
(302, 'Add log detail', 'modules/clinic/log_detail/add_log_detail.php', 'Add Log Detail', '', 3, 'No', 'On', 'form3.png', 0),
(303, 'Edit log detail', 'modules/clinic/log_detail/edit_log_detail.php', 'Edit Log Detail', '', 3, 'No', 'On', 'form3.png', 0),
(304, 'View log detail', 'modules/clinic/log_detail/listview_log_detail.php', 'Log Detail', '', 3, 'Yes', 'On', 'form3.png', 0),
(305, 'Delete log detail', 'modules/clinic/log_detail/delete_log_detail.php', 'Delete Log Detail', '', 3, 'No', 'On', 'form3.png', 0),
(306, 'Add log info', 'modules/clinic/log_info/add_log_info.php', 'Add Log Info', '', 3, 'No', 'On', 'form3.png', 0),
(307, 'Edit log info', 'modules/clinic/log_info/edit_log_info.php', 'Edit Log Info', '', 3, 'No', 'On', 'form3.png', 0),
(308, 'View log info', 'modules/clinic/log_info/listview_log_info.php', 'Log Info', '', 3, 'Yes', 'On', 'form3.png', 0),
(309, 'Delete log info', 'modules/clinic/log_info/delete_log_info.php', 'Delete Log Info', '', 3, 'No', 'On', 'form3.png', 0);

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
('doctor', 99),
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
('nurse', 99),
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
('root', 278),
('root', 279),
('root', 280),
('root', 281),
('root', 294),
('root', 295),
('root', 296),
('root', 297),
('root', 302),
('root', 303),
('root', 304),
('root', 305),
('root', 306),
('root', 307),
('root', 308),
('root', 309);

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
(3, 99),
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
(4, 99);

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
  ADD KEY `emp_id` (`emp_id`),
  ADD KEY `log_detail_id` (`log_detail_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `hospital`
--
ALTER TABLE `hospital`
  MODIFY `hospital_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `log_detail`
--
ALTER TABLE `log_detail`
  MODIFY `log_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `log_info`
--
ALTER TABLE `log_info`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `medicine`
--
ALTER TABLE `medicine`
  MODIFY `medicine_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `medicine_receiving`
--
ALTER TABLE `medicine_receiving`
  MODIFY `medicine_count_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `person`
--
ALTER TABLE `person`
  MODIFY `person_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `refempfamily`
--
ALTER TABLE `refempfamily`
  MODIFY `family_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `refstudentclearance`
--
ALTER TABLE `refstudentclearance`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47770;
--
-- AUTO_INCREMENT for table `refstudentfamily`
--
ALTER TABLE `refstudentfamily`
  MODIFY `family_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20651;
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
  MODIFY `entry_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=795;
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
  MODIFY `link_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=310;
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
