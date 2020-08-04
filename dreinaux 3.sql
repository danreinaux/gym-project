-- phpMyAdmin SQL Dump
-- version 4.0.10.20
-- https://www.phpmyadmin.net
--
-- Host: mydb.ics.purdue.edu
-- Generation Time: Mar 29, 2020 at 03:22 AM
-- Server version: 5.5.62-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dreinaux`
--

-- --------------------------------------------------------

--
-- Table structure for table `Attend`
--

CREATE TABLE IF NOT EXISTS `Attend` (
  `CustomerID` int(5) NOT NULL,
  `ClassID` int(2) NOT NULL,
  PRIMARY KEY (`CustomerID`,`ClassID`),
  KEY `ClassID` (`ClassID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Attend`
--

INSERT INTO `Attend` (`CustomerID`, `ClassID`) VALUES
(8, 2),
(9, 2),
(10, 2),
(11, 4),
(34, 4),
(40, 4),
(43, 4),
(12, 5),
(20, 5),
(27, 5),
(22, 6),
(35, 6),
(13, 7),
(31, 7),
(13, 8),
(21, 8),
(39, 9),
(19, 10),
(38, 10),
(23, 11),
(18, 12),
(28, 12),
(32, 12),
(33, 12),
(36, 13),
(15, 15),
(17, 15),
(14, 16),
(24, 16),
(29, 16),
(42, 17),
(30, 18),
(41, 18),
(16, 19),
(25, 19),
(37, 19),
(26, 20);

-- --------------------------------------------------------

--
-- Table structure for table `Classes`
--

CREATE TABLE IF NOT EXISTS `Classes` (
  `ClassID` int(2) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `start` time DEFAULT NULL,
  `ends` time DEFAULT NULL,
  PRIMARY KEY (`ClassID`),
  UNIQUE KEY `ClassID` (`ClassID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `Classes`
--

INSERT INTO `Classes` (`ClassID`, `name`, `start`, `ends`) VALUES
(1, 'Hot Yoga', '08:00:00', '09:00:00'),
(2, 'Olympic Weightlifting', '17:00:00', '18:00:00'),
(3, 'Hypertrophic Training', '18:00:00', '19:00:00'),
(4, 'Bodypump', '19:00:00', '20:00:00'),
(5, 'Taekwondo', '14:00:00', '16:00:00'),
(6, 'Judo', '13:00:00', '14:00:00'),
(7, 'Boxing', '13:00:00', '15:00:00'),
(8, 'Kick Boxing', '15:00:00', '17:00:00'),
(9, 'Sprinting', '08:00:00', '09:00:00'),
(10, 'Pilates', '10:00:00', '11:00:00'),
(11, 'Zumba', '09:00:00', '10:00:00'),
(12, 'Aerobics', '04:00:00', '17:00:00'),
(13, 'Functional', '10:00:00', '11:30:00'),
(14, 'Calisthenics', '15:00:00', '17:00:00'),
(15, 'Jumping Rope', '08:00:00', '09:00:00'),
(16, 'Bootcamp', '17:00:00', '18:30:00'),
(17, 'Yoga', '21:00:00', '22:00:00'),
(18, 'Cycling', '10:00:00', '11:00:00'),
(19, 'Wheel Lifting', '14:00:00', '15:00:00'),
(20, 'Gymnastics', '09:00:00', '10:00:00'),
(21, '1', '00:00:00', '00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `Customers`
--

CREATE TABLE IF NOT EXISTS `Customers` (
  `CustomerID` int(5) NOT NULL AUTO_INCREMENT,
  `Fname` varchar(50) DEFAULT NULL,
  `Lname` varchar(50) DEFAULT NULL,
  `gender` enum('Male','Female') DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `PhoneNumber` char(12) DEFAULT NULL,
  `BirthDay` date DEFAULT NULL,
  PRIMARY KEY (`CustomerID`),
  UNIQUE KEY `CustomerID` (`CustomerID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=60 ;

--
-- Dumping data for table `Customers`
--

INSERT INTO `Customers` (`CustomerID`, `Fname`, `Lname`, `gender`, `email`, `PhoneNumber`, `BirthDay`) VALUES
(1, 'Daniel', 'Smith', 'Male', 'danismith@gmail.com', '345-729-3839', '1996-02-02'),
(5, 'Daniel', 'Ricardo', 'Male', 'danirichi@gmail.com', '234-893-9184', '1995-01-25'),
(6, 'Daniel', 'Morales', 'Male', 'danimorales@gmail.com', '383-481-4810', '1990-02-25'),
(7, 'Rachal', 'Oliveira', 'Female', 'racheloliveira@gmail.com', '844-824-8194', '1985-02-15'),
(8, 'Brandon', 'Marlon', 'Male', 'brandonmarlon@gmail.com', '844-824-8191', '1983-02-02'),
(9, 'Peter', 'Languila', 'Male', 'peterlanguila@gmail.com', '844-824-8191', '1991-04-25'),
(10, 'Trevis', 'Harrison', 'Male', 'trevisharrison@gmail.com', '412-523-4124', '1989-03-20'),
(11, 'Anna', 'Smith', 'Female', 'annasmith@gmail.com', '412-523-4150', '1989-03-20'),
(12, 'Harrison', 'Ford', 'Male', 'harrisonford@gmail.com', '412-523-9481', '1950-06-20'),
(13, 'Travis', 'Mozart', 'Male', 'travismozi@gmail.com', '412-523-8491', '1979-06-20'),
(14, 'Isabella', 'Alcantra', 'Female', 'isabellaalca@gmail.com', '412-523-8194', '1995-10-10'),
(15, 'Ruth', 'Videla', 'Female', 'ruthvidela@gmail.com', '456-523-8194', '1998-11-10'),
(16, 'Michelle', 'Rios', 'Female', 'michirios@gmail.com', '456-523-9888', '1999-05-14'),
(17, 'Daniela', 'Rios', 'Female', 'danirios@gmail.com', '456-523-7477', '1995-04-29'),
(18, 'Mackwood', 'Lotus', 'Male', 'mackwood@gmail.com', '456-523-6664', '1993-07-19'),
(19, 'Oliver', 'Williams', 'Male', 'oliverwill@gmail.com', '739-481-5141', '1980-06-15'),
(20, 'Mary', 'Williams', 'Female', 'marywilliams@gmail.com', '739-481-9191', '1992-09-29'),
(21, 'Mary', 'Johnson', 'Female', 'maryjohnson@gmail.com', '739-481-8989', '1997-10-04'),
(22, 'Lucas', 'Perez', 'Male', 'lucasperez@gmail.com', '739-481-1199', '1991-11-02'),
(23, 'Emiliano', 'Perez', 'Male', 'emilianoperez@gmail.com', '739-481-8888', '1988-11-02'),
(24, 'Eduardo', 'Mertol', 'Male', 'eduardomertol@gmail.com', '739-114-8000', '1990-11-02'),
(25, 'Phillip', 'Weinstein', 'Male', 'phillipweinstein@gmail.com', '739-114-7103', '1983-11-02'),
(26, 'Leonard', 'Johnson', 'Male', 'leonardjohn@gmail.com', '739-114-5551', '1979-03-19'),
(27, 'Clara', 'White', 'Female', 'clarawhite@gmail.com', '991-114-5551', '1994-02-20'),
(28, 'Oscar', 'Perez', 'Male', 'oscarperez@gmail.com', '991-114-4441', '1998-01-10'),
(29, 'Olivia', 'Mertens', 'Female', 'oliviamertens@gmail.com', '991-114-1877', '1997-02-14'),
(30, 'Amelia', 'Dorothy', 'Female', 'ameliadorothy@gmail.com', '991-114-1664', '1984-03-09'),
(31, 'Johny', 'Montana', 'Male', 'johnymontana@gmail.com', '849-285-8371', '1989-07-20'),
(32, 'Valentina', 'Maria', 'Female', 'valentinamaria@gmail.com', '849-285-8311', '1983-09-19'),
(33, 'Felipe', 'Quadrado', 'Male', 'felipequadrado@gmail.com', '849-285-9401', '1979-10-02'),
(34, 'Edgard', 'Great', 'Male', 'edgardgreat@gmail.com', '849-321-9401', '1993-02-25'),
(35, 'Arthur', 'Jackman', 'Male', 'arthurjack@gmail.com', '982-321-9401', '1991-01-19'),
(36, 'Deborah', 'Mackie', 'Female', 'deborahmackie@gmail.com', '982-321-8989', '1984-02-15'),
(37, 'Isabela', 'White', 'Female', 'isabellawhite@gmail.com', '982-321-1949', '1996-04-07'),
(38, 'Miguel', 'Correa', 'Male', 'miguelcorrea@gmail.com', '918-321-1949', '1992-03-07'),
(39, 'Oliver', 'Mitchel', 'Male', 'olivermitchel@gmail.com', '918-321-8771', '1973-02-18'),
(40, 'Jack', 'Wilson', 'Male', 'jackwilson@gmail.com', '918-321-1112', '1984-02-12'),
(41, 'Edward', 'Williams', 'Male', 'edwardwilliams@gmail.com', '918-321-9898', '1981-06-28'),
(42, 'Nelson', 'Nottingale', 'Male', 'nelsonnottin@gmail.com', '877-321-9898', '1962-04-15'),
(43, 'Riccardo', 'Christie', 'Male', 'ricardochristie@gmail.com', '877-321-2121', '1972-02-11');

-- --------------------------------------------------------

--
-- Table structure for table `Equipment`
--

CREATE TABLE IF NOT EXISTS `Equipment` (
  `EquipmentID` int(3) NOT NULL AUTO_INCREMENT,
  `type` enum('Machine','Free Weight') DEFAULT NULL,
  PRIMARY KEY (`EquipmentID`),
  UNIQUE KEY `EquipmentID` (`EquipmentID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=87 ;

--
-- Dumping data for table `Equipment`
--

INSERT INTO `Equipment` (`EquipmentID`, `type`) VALUES
(1, 'Machine'),
(2, 'Machine'),
(3, 'Free Weight'),
(4, 'Free Weight'),
(5, 'Free Weight'),
(6, 'Machine'),
(7, 'Machine'),
(8, 'Free Weight'),
(9, 'Free Weight'),
(10, 'Free Weight'),
(11, 'Free Weight'),
(12, 'Machine'),
(13, 'Machine'),
(14, 'Machine'),
(15, 'Machine'),
(16, 'Free Weight'),
(17, 'Machine'),
(18, 'Free Weight'),
(19, 'Free Weight'),
(20, 'Machine'),
(21, 'Machine'),
(22, 'Machine'),
(23, 'Machine'),
(24, 'Free Weight'),
(25, 'Machine'),
(26, 'Machine'),
(27, 'Free Weight'),
(28, 'Machine'),
(29, 'Free Weight'),
(30, 'Free Weight'),
(31, 'Free Weight'),
(32, 'Free Weight'),
(33, 'Free Weight'),
(34, 'Machine'),
(35, 'Machine'),
(36, 'Free Weight'),
(37, 'Free Weight'),
(38, 'Machine'),
(39, 'Free Weight'),
(40, 'Free Weight'),
(41, 'Free Weight'),
(42, 'Machine'),
(43, 'Machine'),
(44, 'Machine'),
(45, 'Free Weight'),
(46, 'Free Weight'),
(47, 'Free Weight'),
(48, 'Free Weight'),
(49, 'Free Weight'),
(50, 'Free Weight'),
(51, 'Free Weight'),
(52, 'Free Weight'),
(53, 'Machine'),
(54, 'Free Weight'),
(55, 'Machine'),
(56, 'Free Weight'),
(57, 'Machine'),
(58, 'Machine'),
(59, 'Free Weight'),
(60, 'Free Weight'),
(61, 'Machine'),
(62, 'Free Weight'),
(63, 'Free Weight'),
(64, 'Machine'),
(65, 'Free Weight'),
(67, 'Machine');

-- --------------------------------------------------------

--
-- Table structure for table `Memberships`
--

CREATE TABLE IF NOT EXISTS `Memberships` (
  `MembershipID` int(1) NOT NULL AUTO_INCREMENT,
  `PricePerMonth` float DEFAULT NULL,
  `type` enum('Basic','Premium','Gold') DEFAULT NULL,
  PRIMARY KEY (`MembershipID`),
  UNIQUE KEY `MembershipID` (`MembershipID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `Memberships`
--

INSERT INTO `Memberships` (`MembershipID`, `PricePerMonth`, `type`) VALUES
(1, 19.99, 'Basic'),
(2, 29.99, 'Premium'),
(3, 39.99, 'Gold');

-- --------------------------------------------------------

--
-- Table structure for table `Orders`
--

CREATE TABLE IF NOT EXISTS `Orders` (
  `CustomerID` int(5) NOT NULL,
  `MembershipID` int(1) NOT NULL,
  `OrderDay` date DEFAULT NULL,
  `PaymentDay` int(2) DEFAULT NULL,
  PRIMARY KEY (`CustomerID`,`MembershipID`),
  KEY `MembershipID` (`MembershipID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Orders`
--

INSERT INTO `Orders` (`CustomerID`, `MembershipID`, `OrderDay`, `PaymentDay`) VALUES
(1, 3, '2019-07-20', 20),
(5, 2, '2019-07-25', 25),
(6, 1, '2019-06-20', 20),
(7, 2, '2019-03-15', 15),
(8, 3, '2019-02-18', 18),
(9, 1, '2019-04-11', 1),
(10, 1, '2019-07-22', 22),
(11, 2, '2019-09-14', 14),
(12, 1, '2019-05-06', 6),
(13, 3, '2019-05-09', 9),
(14, 2, '2019-06-11', 11),
(15, 1, '2019-06-12', 12),
(16, 1, '2019-06-13', 13),
(17, 2, '2019-06-14', 14),
(18, 1, '2019-05-10', 10),
(19, 1, '2019-05-03', 3),
(20, 1, '2019-05-02', 2),
(21, 3, '2019-05-01', 1),
(22, 2, '2019-08-20', 20),
(23, 1, '2019-08-21', 21),
(24, 2, '2020-01-15', 15),
(25, 2, '2020-01-10', 10),
(26, 1, '2020-01-15', 5),
(27, 2, '2020-01-09', 9),
(28, 1, '2020-01-11', 1),
(29, 3, '2020-01-04', 4),
(30, 1, '2020-01-02', 2),
(31, 2, '2019-06-20', 20),
(32, 3, '2019-09-24', 24),
(33, 1, '2020-02-11', 11),
(34, 2, '2020-01-15', 15),
(35, 3, '2020-01-09', 9),
(36, 1, '2020-01-28', 28),
(37, 2, '2020-03-20', 20),
(38, 2, '2020-03-22', 22),
(39, 3, '2020-02-08', 8),
(40, 1, '2019-11-20', 20),
(41, 3, '2019-12-16', 16),
(42, 1, '2019-08-21', 21),
(43, 1, '2020-03-09', 9);

-- --------------------------------------------------------

--
-- Table structure for table `Teach`
--

CREATE TABLE IF NOT EXISTS `Teach` (
  `ClassID` int(2) NOT NULL,
  `TrainerID` int(2) NOT NULL,
  PRIMARY KEY (`ClassID`,`TrainerID`),
  KEY `TrainerID` (`TrainerID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Trainers`
--

CREATE TABLE IF NOT EXISTS `Trainers` (
  `TrainerID` int(2) NOT NULL AUTO_INCREMENT,
  `Fname` varchar(50) DEFAULT NULL,
  `Lname` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `PhoneNumber` char(12) DEFAULT NULL,
  PRIMARY KEY (`TrainerID`),
  UNIQUE KEY `TrainerID` (`TrainerID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `Trainers`
--

INSERT INTO `Trainers` (`TrainerID`, `Fname`, `Lname`, `email`, `PhoneNumber`) VALUES
(1, 'Marcus', 'Aurelius', 'marcusaurelius@gmail.com', '748-385-8204'),
(2, 'Daniel', 'Mackson', 'danimackson@gmail.com', '849-839-6161'),
(3, 'Peter', 'Hornfield', 'peterhornfield@gmail.com', '811-829-5454'),
(4, 'Logan', 'Quarkson', 'loganquark@gmail.com', '999-829-5454'),
(5, 'Mason', 'Steven', 'masonsteve@gmail.com', '999-111-5454'),
(6, 'Benjamin', 'Querry', 'benjaminquerry@gmail.com', '999-111-8181'),
(7, 'Elijah', 'Woodson', 'elijahwoodson@gmail.com', '918-111-8181'),
(8, 'James', 'Ferdinand', 'jamesferdinand@gmail.com', '918-111-5416'),
(9, 'James', 'Franco', 'jamesfranco@gmail.com', '814-631-4685'),
(10, 'James', 'Bucaneer', 'jamesbucaneer@gmail.com', '814-631-1441'),
(11, 'Theodore', 'Roosevelt', 'theodoreroosevelt@gmail.com', '814-631-7672'),
(12, 'Noah', 'Maddison', 'noahmaddison@gmail.com', '814-631-7981'),
(13, 'Emma', 'Steinfield', 'emmasteinfield@gmail.com', '814-728-7981'),
(14, 'Isabella', 'Branson', 'isabellabranson@gmail.com', '814-728-8913'),
(15, 'Katherine', 'Johnson', 'kathyjohnson@gmail.com', '814-728-7213'),
(16, 'Eugene', 'Bouchard', 'eugeniebouchard@gmail.com', '814-728-1259'),
(17, 'Maria', 'Sharapova', 'mariasharapova@gmail.com', '143-728-1259'),
(18, 'Serena', 'Eddinson', 'serenaeddinson@gmail.com', '892-728-1259'),
(19, 'Omara', 'Lorna', 'omaralorna@gmail.com', '892-728-6464'),
(20, 'Rachel', 'Williams', 'rachelwilliams@gmail.com', '892-728-7219'),
(21, 'Adam', 'Driver', 'adamdriver@gmail.com', '892-931-7219');

-- --------------------------------------------------------

--
-- Table structure for table `Utilize`
--

CREATE TABLE IF NOT EXISTS `Utilize` (
  `CustomerID` int(5) NOT NULL,
  `EquipmentID` int(3) NOT NULL,
  PRIMARY KEY (`CustomerID`,`EquipmentID`),
  UNIQUE KEY `CustomerID` (`CustomerID`),
  UNIQUE KEY `EquipmentID` (`EquipmentID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Utilize`
--

INSERT INTO `Utilize` (`CustomerID`, `EquipmentID`) VALUES
(1, 50),
(5, 48);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Attend`
--
ALTER TABLE `Attend`
  ADD CONSTRAINT `Attend_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `Customers` (`CustomerID`),
  ADD CONSTRAINT `Attend_ibfk_2` FOREIGN KEY (`ClassID`) REFERENCES `Classes` (`ClassID`);

--
-- Constraints for table `Orders`
--
ALTER TABLE `Orders`
  ADD CONSTRAINT `Orders_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `Customers` (`CustomerID`),
  ADD CONSTRAINT `Orders_ibfk_2` FOREIGN KEY (`MembershipID`) REFERENCES `Memberships` (`MembershipID`);

--
-- Constraints for table `Teach`
--
ALTER TABLE `Teach`
  ADD CONSTRAINT `Teach_ibfk_1` FOREIGN KEY (`ClassID`) REFERENCES `Classes` (`ClassID`),
  ADD CONSTRAINT `Teach_ibfk_2` FOREIGN KEY (`TrainerID`) REFERENCES `Trainers` (`TrainerID`);

--
-- Constraints for table `Utilize`
--
ALTER TABLE `Utilize`
  ADD CONSTRAINT `Utilize_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `Customers` (`CustomerID`),
  ADD CONSTRAINT `Utilize_ibfk_2` FOREIGN KEY (`EquipmentID`) REFERENCES `Equipment` (`EquipmentID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
