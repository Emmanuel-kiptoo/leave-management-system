-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2023 at 02:39 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `employeeleavedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(55) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `fullname`, `email`, `updationDate`) VALUES
(1, 'admin', 'd00f5d5217896fb7fd601412cb890830', 'Fauzia Moha', 'admin@mail.com', '2023-05-01 15:15:46'),
(2, 'bruno', '5f4dcc3b5aa765d61d8327deb882cf99', 'Bruno Den', 'itsbruno@mail.com', '2023-05-02 15:15:50'),
(3, 'greenwood', '5f4dcc3b5aa765d61d8327deb882cf99', 'Johnny Greenwood', 'greenwood@mail.com', '2023-05-09 15:15:54');

-- --------------------------------------------------------

--
-- Table structure for table `tbldepartments`
--

CREATE TABLE `tbldepartments` (
  `id` int(11) NOT NULL,
  `DepartmentName` varchar(150) DEFAULT NULL,
  `DepartmentShortName` varchar(100) NOT NULL,
  `DepartmentCode` varchar(50) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbldepartments`
--

INSERT INTO `tbldepartments` (`id`, `DepartmentName`, `DepartmentShortName`, `DepartmentCode`, `CreationDate`) VALUES
(1, 'Human Resource', 'HR', 'HR160', '2023-04-28 07:16:25'),
(2, 'Information Technology', 'IT', 'IT807', '2023-05-01 07:19:37'),
(3, 'Operations', 'OP', 'OP640', '2023-05-01 21:28:56'),
(4, 'Volunteer', 'VL', 'VL9696', '2023-05-02 08:27:52'),
(5, 'Marketing', 'MK', 'MK369', '2023-05-01 10:53:52'),
(6, 'Finance', 'FI', 'FI123', '2023-05-01 10:54:27'),
(7, 'Sales', 'SS', 'SS469', '2023-05-02 10:55:24'),
(8, 'Research', 'RS', 'RS666', '2023-05-02 16:39:03');

-- --------------------------------------------------------

--
-- Table structure for table `tblemployees`
--

CREATE TABLE `tblemployees` (
  `id` int(11) NOT NULL,
  `EmpId` varchar(100) NOT NULL,
  `FirstName` varchar(150) NOT NULL,
  `LastName` varchar(150) NOT NULL,
  `EmailId` varchar(200) NOT NULL,
  `Password` varchar(180) NOT NULL,
  `Gender` varchar(100) NOT NULL,
  `Dob` varchar(100) NOT NULL,
  `Department` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `City` varchar(200) NOT NULL,
  `Country` varchar(150) NOT NULL,
  `Phonenumber` char(11) NOT NULL,
  `Status` int(1) NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblemployees`
--

INSERT INTO `tblemployees` (`id`, `EmpId`, `FirstName`, `LastName`, `EmailId`, `Password`, `Gender`, `Dob`, `Department`, `Address`, `City`, `Country`, `Phonenumber`, `Status`, `RegDate`) VALUES
(1, 'ASTR001245', 'Andrew ', 'wasan', 'andrew@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 'Male', '1996-06-12', 'Information Technology', 'Railways', 'Nairobi', 'Kenya', '0785478547', 1, '2023-05-02 11:29:59'),
(2, 'ASTR001369', 'Milton', 'Kirui', 'milt@mail.com', 'f925916e2754e5e03f75dd58a5733251', 'Male', '1990-02-02', 'Operations', 'Mbagathi', 'Machakos', 'Nairobi', '0758794425', 1, '2023-05-02 13:40:02'),
(3, 'ASTR004699', 'Shawn', 'Abi', 'Shawnden@mail.com', '3b87c97d15e8eb11e51aa25e9a5770e9', 'Male', '1995-03-22', 'Human Resource', 'Ngong', 'Kajiado', 'Kenya', '074588878', 1, '2023-05-01 07:24:17'),
(4, 'ASTR002996', 'Joy', 'Rehema', 'joy1@mail.com', '723e1489a45d2cbaefec82eee410abd5', 'Female', '1989-03-23', 'Volunteer', 'lakisama', 'Nairobi', 'Kenya', '078544485', 1, '2023-05-01 10:44:13'),
(5, 'ASTR001439', 'Danny', 'kibet', 'danny@mail.com', 'b7bee6b36bd35b773132d4e3a74c2bb5', 'Male', '1986-03-12', 'Research', 'kenyatta', 'Nairobi', 'Kenya', '0757777744', 1, '2023-05-01 17:14:48'),
(6, 'ASTR006946', 'Fatuma', 'Nabulo', 'fatuma@mail.com', 'a3cceba83235dc95f750108d22c14731', 'Female', '1992-08-28', 'Finance', 'kigali', 'kigali', 'Rwanda', '8520259670', 1, '2023-05-02 17:46:02'),
(7, 'ASTR000084', 'Jennifer', 'onsongo', 'jennifer@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 'Female', '1992-12-11', 'Marketing', 'moi Avenue', 'kisii', 'Kenya', '074012566h', 1, '2023-05-01 15:29:00'),
(8, 'ASTR012447', 'Will', 'Williams', 'williams@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 'Male', '1992-02-15', 'Research', 'kangundo', 'embakasi', 'Kenya', '0785400000', 1, '2023-05-02 15:52:32');

-- --------------------------------------------------------

--
-- Table structure for table `tblleaves`
--

CREATE TABLE `tblleaves` (
  `id` int(11) NOT NULL,
  `LeaveType` varchar(110) NOT NULL,
  `ToDate` varchar(120) NOT NULL,
  `FromDate` varchar(120) NOT NULL,
  `Description` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `AdminRemarkDate` varchar(120) DEFAULT NULL,
  `Status` int(1) NOT NULL,
  `IsRead` int(1) NOT NULL,
  `empid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblleaves`
--

INSERT INTO `tblleaves` (`id`, `LeaveType`, `ToDate`, `FromDate`, `Description`, `PostingDate`, `AdminRemark`, `AdminRemarkDate`, `Status`, `IsRead`, `empid`) VALUES
(7, 'Casual Leave', '30/03/2023', '29/03/2023', 'Test Test Demo Test Test Demo Test Test Demo', '2023-04-19 13:11:21', 'A demo Admin Remarks for Testing!', '2023-04-02 23:26:27 ', 2, 1, 1),
(8, 'Medical Leave', '21/4/2023', '25/4/2023', 'Test Test Demo Test Test Demo Test Test Demo Test Test Demo', '2023-04-20 11:14:14', 'A demo Admin Remarks for Testing!', '2023-04-02 23:24:39 ', 1, 1, 1),
(9, 'Medical Leave', '08/3/2023', '12/4/2023', 'This is a demo description for testing purpose', '2023-03-02 18:26:01', 'All good make your time and hope you\'ll be fine and get back to work asap! Best Regards, Admin.', '2023-03-03 11:19:29 ', 1, 1, 2),
(10, 'Restricted Holiday', '25/02/2023', '25/02/2023', 'This is a demo description for testing purpose', '2023-02-03 08:29:07', 'A demo Admin Remarks for Testing!', '2023-03-03 14:06:12 ', 1, 1, 1),
(11, 'Medical Leave', '02/12/2023', '06/12/2023', 'This is a demo description for testing purpose', '2023-04-29 15:01:14', 'A demo Admin Remarks for Testing!', '2023-04-29 20:33:21 ', 1, 1, 1),
(12, 'Casual Leave', '02/02/2023', '03/03/2023', 'This is a demo description for testing purpose', '2023-05-03 08:11:11', 'A demo Admin Remarks for Testing!', '2023-05-03 13:42:05 ', 1, 1, 1),
(15, 'Casual Leave', '2023-03-15', '2023-03-05', 'None, Testing', '2023-03-02 09:32:42', 'casual leave not allowed for a week, the company\'s gotta huge project which should be completed within this week.', '2023-03-03 11:47:33 ', 2, 1, 1),
(18, 'Medical Leave', '2023-03-04', '2023-03-05', 'i\'ve to go for my body checkup. got an appointment for tommorow', '2023-03-03 12:09:44', 'No comments on it.', '2023-03-04 22:56:24 ', 1, 1, 4),
(21, 'Self-Quarantine Leave', '2023-02-11', '2023-02-18', 'This is just a demo condition for testing purpose!!', '2023-02-10 16:05:30', 'No comments!!', '2023-02-10 21:37:15 ', 1, 1, 8);

-- --------------------------------------------------------

--
-- Table structure for table `tblleavetype`
--

CREATE TABLE `tblleavetype` (
  `id` int(11) NOT NULL,
  `LeaveType` varchar(200) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblleavetype`
--

INSERT INTO `tblleavetype` (`id`, `LeaveType`, `Description`, `CreationDate`) VALUES
(1, 'Casual Leave', 'Provided for urgent or unforeseen matters to the employees.', '2023-05-01 12:07:56'),
(2, 'Medical Leave', 'Related to Health Problems of Employee', '2023-05-02 13:16:09'),
(3, 'Restricted Holiday', 'Holiday that is optional', '2023-05-01 13:16:38'),
(5, 'Paternity Leave', 'To take care of newborns', '2023-05-01 10:46:31'),
(6, 'Bereavement Leave', 'Grieve their loss of losing loved ones', '2023-05-01 10:47:48'),
(7, 'Compensatory Leave', 'For Overtime workers', '2023-04-29 10:48:37'),
(8, 'Maternity Leave', 'Taking care of newborn ,recoveries', '2023-05-02 10:50:17'),
(9, 'Public and religious holidays', 'Based on employee\'s followed religion', '2023-05-01 10:51:26'),
(10, 'Adverse Weather Leave', 'In terms of extreme weather conditions', '2023-05-01 13:18:26'),
(11, 'Voting Leave', 'For official election day', '2023-05-01 13:19:06'),
(12, 'Self-Quarantine Leave', 'Related to COVID-19 issues', '2023-05-01 13:19:48'),
(13, 'Personal Time Off', 'To manage some private matters', '2023-05-01 13:21:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbldepartments`
--
ALTER TABLE `tbldepartments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblemployees`
--
ALTER TABLE `tblemployees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblleaves`
--
ALTER TABLE `tblleaves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `UserEmail` (`empid`);

--
-- Indexes for table `tblleavetype`
--
ALTER TABLE `tblleavetype`
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
-- AUTO_INCREMENT for table `tbldepartments`
--
ALTER TABLE `tbldepartments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblemployees`
--
ALTER TABLE `tblemployees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblleaves`
--
ALTER TABLE `tblleaves`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblleavetype`
--
ALTER TABLE `tblleavetype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
