-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 07, 2023 at 04:19 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */
;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */
;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */
;
/*!40101 SET NAMES utf8mb4 */
;
USE `hotel`;
--
-- Database: `hotel`
--

-- --------------------------------------------------------
--
-- Table structure for table `emp_login`
--

CREATE TABLE `emp_login`(
  `EMPID` int(255) NOT NULL,
  `EMP_EMAIL` varchar(255) NOT NULL,
  `EMP_PASSWORD` varchar(255) NOT NULL
) ENGINE = MyIsam DEFAULT CHARSET = utf8 COLLATE = utf8_unicode_ci;
--
-- Dumping data for table `emp_login`
--

INSERT INTO `emp_login`(`EMPID`, `EMP_EMAIL`, `EMP_PASSWORD`)
VALUES(1, 'Admin@gmail.com', '1234');
-- --------------------------------------------------------
--
-- Table structure for table `payment`
--

CREATE TABLE `payment`(
  `ID` int(255) NOT NULL,
  `IDROOM` int(255) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `EMAIL` varchar(255) NOT NULL,
  `ROOMTYPE` varchar(255) NOT NULL,
  `BED` varchar(255) NOT NULL,
  `NOOFROOM` int(255) NOT NULL,
  `CIN` date NOT NULL,
  `COUT` date NOT NULL,
  `NOOFDAYS` int(255) NOT NULL,
  `ROOMTOTAL` double(255, 2) NOT NULL,
  `BEDTOTAL` double(255, 2) NOT NULL,
  `MEAL` varchar(255) NOT NULL,
  `MEALTOTAL` double(255, 2) NOT NULL,
  `FINALTOTAL` double(255, 2) NOT NULL,
  PRIMARY KEY (`ID`, `IDROOM`)
) ENGINE = MyIsam DEFAULT CHARSET = utf8 COLLATE = utf8_unicode_ci;


-- --------------------------------------------------------
--
-- Table structure for table `room`
--

CREATE TABLE `room`(
  `ID` int(255) NOT NULL,
  `TYPE` varchar(255) NOT NULL,
  `BEDDING` varchar(255) NOT NULL
) ENGINE = MyIsam DEFAULT CHARSET = utf8 COLLATE = utf8_unicode_ci;
--
-- Dumping data for table `room`
--

INSERT INTO `room`(`ID`, `TYPE`, `BEDDING`)
VALUES (1, 'Single Room', 'Single'),
  (2, 'Single Room', 'Double'),
  (3, 'Guest House', 'Double'),
  (4, 'Guest House', 'Triple'),
  (5, 'Guest House', 'Quad'),
  (6, 'Superieur Room', 'Single'),
  (7, 'Superieur Room', 'Double'),
  (8, 'Superiour Room', 'Triple'),
  (9, 'Superieur Room', 'Quad'),
  (10, 'Deluxe Room', 'Single'),
  (11, 'Deluxe Room', 'Double'),
  (12, 'Deluxe Room', 'Triple'),
  (13, 'Deluxe Room', 'Quad');
-- --------------------------------------------------------
--
-- Table structure for table `roombook`
--

CREATE TABLE `roombook`(
  `ID` int(255) NOT NULL,
  `IDROOM` int(255) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `EMAIL` varchar(255) NOT NULL,
  `COUNTRY` varchar(255) NOT NULL,
  `PHONE` varchar(255) NOT NULL,
  `ROOMTYPE` varchar(255) NOT NULL,
  `BED` varchar(255) NOT NULL,
  `MEAL` varchar(255) NOT NULL,
  `NOOFROOM` varchar(255) NOT NULL,
  `CIN` date NOT NULL,
  `COUT` date NOT NULL,
  `NODAYS` int(255) NOT NULL,
  `STAT` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`, `IDROOM`)
) ENGINE = MyIsam DEFAULT CHARSET = utf8 COLLATE = utf8_unicode_ci;

-- --------------------------------------------------------
--
-- Table structure for table `signup`
--

CREATE TABLE `signup`(
  `USERID` int(255) NOT NULL,
  `USERNAME` varchar(255) NOT NULL,
  `EMAIL` varchar(255) NOT NULL,
  `PASSWORD` varchar(255) NOT NULL
) ENGINE = MyIsam DEFAULT CHARSET = utf8 COLLATE = utf8_unicode_ci;
-- --------------------------------------------------------
--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `work` varchar(255) NOT NULL
) ENGINE = MyIsam DEFAULT CHARSET = utf8 COLLATE = utf8_unicode_ci;
--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `name`, `work`)
VALUES (1, 'Issam Bendaouad', 'Manager'),
  (3, 'Yahya Fathi', 'Manager'),
  (4, 'Hicham', 'Cook'),
  (5, 'Siham', 'Helper'),
  (6, 'Tariq', 'Helper'),
  (7, 'Amina', 'cleaner'),
  (8, 'Youssef', 'weighter'),
  (9, 'Rachida', 'weighter'),
  (10, 'Najat', 'weighter'),
  (11, 'Jalal', 'Cook');
--
-- Indexes for dumped tables
--

--
-- Indexes for table `emp_login`
--
ALTER TABLE `emp_login` ADD PRIMARY KEY (`EMPID`);
--
-- Indexes for table `room`
--
ALTER TABLE `room` ADD PRIMARY KEY (`ID`);
--
-- Indexes for table `signup`
--
ALTER TABLE `signup` ADD PRIMARY KEY (`USERID`);
--
-- AUTO_INCREMENT for dumped tables
--

--
-- Indexes for table `staff`
--
ALTER TABLE `staff` ADD PRIMARY KEY (`id`);
--
-- AUTO_INCREMENT for table `emp_login`
--
ALTER TABLE `emp_login` MODIFY `EMPID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=0;
--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room` MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
--
-- AUTO_INCREMENT for table `roombook`
--
ALTER TABLE `roombook` MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment` MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup` MODIFY `USERID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff` MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- Dumping data for table `roombook`
--
INSERT INTO `roombook`(
    `ID`,
    `IDROOM`,
    `NAME`,
    `EMAIL`,
    `COUNTRY`,
    `PHONE`,
    `ROOMTYPE`,
    `BED`,
    `MEAL`,
    `NOOFROOM`,
    `CIN`,
    `COUT`,
    `NODAYS`,
    `STAT`
  )
VALUES(
    0,
    1,
    'Asmae Alami',
    'asmae_alami@gmail.com',
    'Morocco',
    '+(212)6-70756907',
    'Deluxe Room',
    'Single',
    'Room Only',
    '2',
    '2023-08-01',
    '2023-08-07',
    6,
    'Confirm'
  ),
  (
    1,
    2,
    'Khalid Cherkaoui',
    'khalid_cherkaoui@gmail.com',
    'Morocco',
    '+(212)6-54560902',
    'Superior Room',
    'Double',
    'Full Board',
    '1',
    '2023-09-01',
    '2023-09-07',
    6,
    'Confirm'
  );

--
-- Dumping data for table `payment`
--
INSERT INTO `payment`(
    `ID`,
    `IDROOM`,
    `NAME`,
    `EMAIL`,
    `ROOMTYPE`,
    `BED`,
    `NOOFROOM`,
    `CIN`,
    `COUT`,
    `NOOFDAYS`,
    `ROOMTOTAL`,
    `BEDTOTAL`,
    `MEAL`,
    `MEALTOTAL`,
    `FINALTOTAL`
  )
VALUES(
    0,
    6,
    'Asmae Alami',
    'asmae_alami@gmail.com',
    'Deluxe Room',
    'Single',
    2,
    '2023-08-01',
    '2023-08-07',
    6,
    220.00,
    2.2,
    'Room Only',
    0,
    2667.36
  ),
  (
    1,
    7,
    'Khalid Cherkaoui',
    'khalid_cherkaoui@gmail.com',
    'Superior Room',
    'Double',
    1,
    '2023-09-01',
    '2023-09-07',
    6,
    320.00,
    6.40,
    'Full Board',
    153.6,
    3494.40
  );
COMMIT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */
;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */
;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */
;
