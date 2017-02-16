-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 16, 2017 at 05:38 PM
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

-- --------------------------------------------------------

--
-- Table structure for table `log_detail`
--

CREATE TABLE `log_detail` (
  `log_detail_id` int(11) NOT NULL,
  `medicine_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `student_id` char(11) DEFAULT NULL,
  `emp_id` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

CREATE TABLE `medicine` (
  `medicine_id` int(11) NOT NULL,
  `medicine_name` varchar(45) DEFAULT NULL,
  `qty` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicine`
--

INSERT INTO `medicine` (`medicine_id`, `medicine_name`, `qty`) VALUES
(1, 'Paracetamol', '1');

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
(1, 'Super User', 'X', 'Root', 'Male');

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
(85, '::1', 'root', '2017-02-17 00:35:57', 'Logged in', '/clinic/login.php');

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
(37, 'Add dept', 'modules/Registrar/department/add_dept.php', 'Add Dept', '', 1, 'No', 'On', 'form3.png', 0),
(38, 'Edit dept', 'modules/Registrar/department/edit_dept.php', 'Edit Dept', '', 1, 'No', 'On', 'form3.png', 0),
(39, 'View dept', 'modules/Registrar/department/listview_dept.php', 'Department', '', 1, 'Yes', 'On', 'form3.png', 0),
(40, 'Delete dept', 'modules/Registrar/department/delete_dept.php', 'Delete Dept', '', 1, 'No', 'On', 'form3.png', 0),
(41, 'Add emergencycase', 'modules/Clinic/emergency_case/add_emergencycase.php', 'Add Emergencycase', '', 1, 'No', 'On', 'form3.png', 0),
(42, 'Edit emergencycase', 'modules/Clinic/emergency_case/edit_emergencycase.php', 'Edit Emergencycase', '', 1, 'No', 'On', 'form3.png', 0),
(43, 'View emergencycase', 'modules/Clinic/emergency_case/listview_emergencycase.php', 'Emergency Case', '', 3, 'Yes', 'On', 'form3.png', 0),
(44, 'Delete emergencycase', 'modules/Clinic/emergency_case/delete_emergencycase.php', 'Delete Emergencycase', '', 1, 'No', 'On', 'form3.png', 0),
(45, 'Add employee', 'modules/Registrar/employee/add_employee.php', 'Add Employee', '', 1, 'No', 'On', 'form3.png', 0),
(46, 'Edit employee', 'modules/Registrar/employee/edit_employee.php', 'Edit Employee', '', 1, 'No', 'On', 'form3.png', 0),
(47, 'View employee', 'modules/Registrar/employee/listview_employee.php', 'Employee', '', 7, 'Yes', 'On', 'form3.png', 0),
(48, 'Delete employee', 'modules/Registrar/employee/delete_employee.php', 'Delete Employee', '', 1, 'No', 'On', 'form3.png', 0),
(49, 'Add hospital', 'modules/Clinic/hospital/add_hospital.php', 'Add Hospital', '', 1, 'No', 'On', 'form3.png', 0),
(50, 'Edit hospital', 'modules/Clinic/hospital/edit_hospital.php', 'Edit Hospital', '', 1, 'No', 'On', 'form3.png', 0),
(51, 'View hospital', 'modules/Clinic/hospital/listview_hospital.php', 'Hospital', '', 1, 'Yes', 'On', 'form3.png', 0),
(52, 'Delete hospital', 'modules/Clinic/hospital/delete_hospital.php', 'Delete Hospital', '', 1, 'No', 'On', 'form3.png', 0),
(53, 'Add log info', 'modules/Clinic/log_info/add_log_info.php', 'Add Log Info', '', 1, 'No', 'On', 'form3.png', 0),
(54, 'Edit log info', 'modules/Clinic/log_info/edit_log_info.php', 'Edit Log Info', '', 1, 'No', 'On', 'form3.png', 0),
(55, 'View log info', 'modules/Clinic/log_info/listview_log_info.php', 'Log Info', '', 3, 'Yes', 'On', 'form3.png', 0),
(56, 'Delete log info', 'modules/Clinic/log_info/delete_log_info.php', 'Delete Log Info', '', 1, 'No', 'On', 'form3.png', 0),
(57, 'Add medicine', 'modules/Clinic/medicine/add_medicine.php', 'Add Medicine', '', 1, 'No', 'On', 'form3.png', 0),
(58, 'Edit medicine', 'modules/Clinic/medicine/edit_medicine.php', 'Edit Medicine', '', 1, 'No', 'On', 'form3.png', 0),
(59, 'View medicine', 'modules/Clinic/medicine/listview_medicine.php', 'Medicine', '', 1, 'Yes', 'On', 'form3.png', 0),
(60, 'Delete medicine', 'modules/Clinic/medicine/delete_medicine.php', 'Delete Medicine', '', 1, 'No', 'On', 'form3.png', 0),
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
(77, 'Add refsubjectofferingdtl', 'modules/Registrar/subject_offering_detail/add_refsubjectofferingdtl.php', 'Add Refsubjectofferingdtl', '', 1, 'No', 'On', 'form3.png', 0),
(78, 'Edit refsubjectofferingdtl', 'modules/Registrar/subject_offering_detail/edit_refsubjectofferingdtl.php', 'Edit Refsubjectofferingdtl', '', 1, 'No', 'On', 'form3.png', 0),
(79, 'View refsubjectofferingdtl', 'modules/Registrar/subject_offering_detail/listview_refsubjectofferingdtl.php', 'Subject Offering Details', '', 1, 'Yes', 'On', 'form3.png', 0),
(80, 'Delete refsubjectofferingdtl', 'modules/Registrar/subject_offering_detail/delete_refsubjectofferingdtl.php', 'Delete Refsubjectofferingdtl', '', 1, 'No', 'On', 'form3.png', 0),
(81, 'Add refsubjectofferinghdr', 'modules/Registrar/subject_offering_header/add_refsubjectofferinghdr.php', 'Add Refsubjectofferinghdr', '', 1, 'No', 'On', 'form3.png', 0),
(82, 'Edit refsubjectofferinghdr', 'modules/Registrar/subject_offering_header/edit_refsubjectofferinghdr.php', 'Edit Refsubjectofferinghdr', '', 1, 'No', 'On', 'form3.png', 0),
(83, 'View refsubjectofferinghdr', 'modules/Registrar/subject_offering_header/listview_refsubjectofferinghdr.php', 'Subject Offering Header', '', 1, 'Yes', 'On', 'form3.png', 0),
(84, 'Delete refsubjectofferinghdr', 'modules/Registrar/subject_offering_header/delete_refsubjectofferinghdr.php', 'Delete Refsubjectofferinghdr', '', 1, 'No', 'On', 'form3.png', 0),
(85, 'Add required appointment', 'modules/Clinic/required_appointment/add_required_appointment.php', 'Add Required Appointment', '', 1, 'No', 'On', 'form3.png', 0),
(86, 'Edit required appointment', 'modules/Clinic/required_appointment/edit_required_appointment.php', 'Edit Required Appointment', '', 1, 'No', 'On', 'form3.png', 0),
(87, 'View required appointment', 'modules/Clinic/required_appointment/listview_required_appointment.php', 'Required Appointment', '', 4, 'Yes', 'On', 'form3.png', 0),
(88, 'Delete required appointment', 'modules/Clinic/required_appointment/delete_required_appointment.php', 'Delete Required Appointment', '', 1, 'No', 'On', 'form3.png', 0),
(89, 'Add subject', 'modules/Registrar/subject/add_subject.php', 'Add Subject', '', 1, 'No', 'On', 'form3.png', 0),
(90, 'Edit subject', 'modules/Registrar/subject/edit_subject.php', 'Edit Subject', '', 1, 'No', 'On', 'form3.png', 0),
(91, 'View subject', 'modules/Registrar/subject/listview_subject.php', 'Subject', '', 1, 'Yes', 'On', 'form3.png', 0),
(92, 'Delete subject', 'modules/Registrar/subject/delete_subject.php', 'Delete Subject', '', 1, 'No', 'On', 'form3.png', 0),
(93, 'Add term', 'modules/Registrar/term/add_term.php', 'Add Term', '', 1, 'No', 'On', 'form3.png', 0),
(94, 'Edit term', 'modules/Registrar/term/edit_term.php', 'Edit Term', '', 1, 'No', 'On', 'form3.png', 0),
(95, 'View term', 'modules/Registrar/term/listview_term.php', 'Term', '', 1, 'Yes', 'On', 'form3.png', 0),
(96, 'Delete term', 'modules/Registrar/term/delete_term.php', 'Delete Term', '', 1, 'No', 'On', 'form3.png', 0),
(97, 'Add xrefstudentschedule', 'modules/Registrar/student_schedule/add_xrefstudentschedule.php', 'Add Xrefstudentschedule', '', 1, 'No', 'On', 'form3.png', 0),
(98, 'Edit xrefstudentschedule', 'modules/Registrar/student_schedule/edit_xrefstudentschedule.php', 'Edit Xrefstudentschedule', '', 1, 'No', 'On', 'form3.png', 0),
(99, 'View xrefstudentschedule', 'modules/Registrar/student_schedule/listview_xrefstudentschedule.php', 'Student Schedule', '', 4, 'Yes', 'On', 'form3.png', 0),
(100, 'Delete xrefstudentschedule', 'modules/Registrar/student_schedule/delete_xrefstudentschedule.php', 'Delete Xrefstudentschedule', '', 1, 'No', 'On', 'form3.png', 0);

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
('root', 100);

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
(2, 'System Admin', 'System admin role with all sysadmin permissions');

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
(2, 36);

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
  MODIFY `dept_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `emergencycase`
--
ALTER TABLE `emergencycase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `hospital`
--
ALTER TABLE `hospital`
  MODIFY `hospital_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `log_detail`
--
ALTER TABLE `log_detail`
  MODIFY `log_detail_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `log_info`
--
ALTER TABLE `log_info`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `medicine`
--
ALTER TABLE `medicine`
  MODIFY `medicine_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `person`
--
ALTER TABLE `person`
  MODIFY `person_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `refempfamily`
--
ALTER TABLE `refempfamily`
  MODIFY `family_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `refstudentclearance`
--
ALTER TABLE `refstudentclearance`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47770;
--
-- AUTO_INCREMENT for table `refstudentfamily`
--
ALTER TABLE `refstudentfamily`
  MODIFY `family_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20650;
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
  MODIFY `entry_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;
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
  MODIFY `link_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `user_passport_groups`
--
ALTER TABLE `user_passport_groups`
  MODIFY `passport_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
