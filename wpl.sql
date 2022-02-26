-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 31, 2020 at 08:46 AM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wpl`
--

-- --------------------------------------------------------

--
-- Table structure for table `jms_job`
--

DROP TABLE IF EXISTS `jms_job`;
CREATE TABLE IF NOT EXISTS `jms_job` (
  `ID` varchar(40) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Details` varchar(1000) NOT NULL,
  `LastDateOfApplication` date NOT NULL,
  `Salary` float NOT NULL,
  `Qualification` varchar(500) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reg_course`
--

DROP TABLE IF EXISTS `reg_course`;
CREATE TABLE IF NOT EXISTS `reg_course` (
  `ID` varchar(40) NOT NULL,
  `CourseNo` varchar(40) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Credit` double NOT NULL,
  `CourseTypeID` varchar(40) NOT NULL,
  `DisciplineID` varchar(40) NOT NULL,
  `IsDeleted` tinyint(1) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_course`
--

INSERT INTO `reg_course` (`ID`, `CourseNo`, `Title`, `Credit`, `CourseTypeID`, `DisciplineID`, `IsDeleted`) VALUES
('{2A038C6A-B6DA-408D-8458-7493D4EE5D6C}', 'cse-3200', 'Web Programming Lab', 1.5, '{EF5CA3BF-A886-4450-ABC4-DED45C7600C0}', '{FFDB1CB8-AF34-4381-8971-9784DCB516C5}', 0),
('{53650FB7-D76E-459D-8B56-BC7A4919C0F6}', 'cse-4112', 'Computer Networks Lab', 1.5, '{EF5CA3BF-A886-4450-ABC4-DED45C7600C0}', '{FFDB1CB8-AF34-4381-8971-9784DCB516C5} ', 0),
('{683A3D91-D124-44AF-82A3-FB43837A4392}', 'cse-4111', 'Computer Networks', 3, '{3DC4DDE5-514F-4BE4-8682-37EA32C3FDB7}', '{FFDB1CB8-AF34-4381-8971-9784DCB516C5}', 0),
('{B17BDB32-6D88-4537-9545-65D940E17EEF}', 'cse-2115', 'Advanced Programming Lab', 1.5, '{EF5CA3BF-A886-4450-ABC4-DED45C7600C0}', '{FFDB1CB8-AF34-4381-8971-9784DCB516C5} ', 0);

-- --------------------------------------------------------

--
-- Table structure for table `reg_course_resource`
--

DROP TABLE IF EXISTS `reg_course_resource`;
CREATE TABLE IF NOT EXISTS `reg_course_resource` (
  `CourseID` varchar(40) NOT NULL,
  `ResourceID` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reg_course_sessional_type`
--

DROP TABLE IF EXISTS `reg_course_sessional_type`;
CREATE TABLE IF NOT EXISTS `reg_course_sessional_type` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_course_sessional_type`
--

INSERT INTO `reg_course_sessional_type` (`ID`, `Name`) VALUES
('{126156BB-18ED-4CAB-8DB9-1C0F72BB63C1}', 'N/A'),
('{45B2147F-5FE0-4CC9-880C-C19EB6323955}', 'physics'),
('{4B342686-B38E-449C-AAD2-1F7DD77E6594}', 'chemistry'),
('{D1E54E03-CDEB-4155-AD0C-27C70A3A490C}', 'ece'),
('{D3F895D3-7389-487F-A604-0BD546DCC764}', 'software'),
('{F1D0443A-EC5D-41C4-94BA-D6F0D9AB1691}', 'hardware');

-- --------------------------------------------------------

--
-- Table structure for table `reg_course_student_registration`
--

DROP TABLE IF EXISTS `reg_course_student_registration`;
CREATE TABLE IF NOT EXISTS `reg_course_student_registration` (
  `ID` varchar(40) NOT NULL,
  `Regs_TeacherID` varchar(40) DEFAULT NULL,
  `StudentID` varchar(40) NOT NULL,
  `CourseID` varchar(40) NOT NULL,
  `SessionID` varchar(40) DEFAULT NULL,
  `YearID` varchar(40) DEFAULT NULL,
  `TermID` varchar(40) DEFAULT NULL,
  `IsRetake` tinyint(1) DEFAULT NULL,
  `Status` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_course_student_registration`
--

INSERT INTO `reg_course_student_registration` (`ID`, `Regs_TeacherID`, `StudentID`, `CourseID`, `SessionID`, `YearID`, `TermID`, `IsRetake`, `Status`) VALUES
('{31FDEF1E-F280-436A-AFD3-A48BA772D23D}', 'mkazi078@uottawa.ca', 'kashif@gmail.com', '{683A3D91-D124-44AF-82A3-FB43837A4392}', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', NULL, 'registered'),
('{3CA3ABF7-7FF8-4A32-B328-235861061B72}', 'mkazi078@uottawa.ca', 'zahid@gmail.com', '{683A3D91-D124-44AF-82A3-FB43837A4392}', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', NULL, 'registered'),
('{B7F17833-430E-489A-9CA6-E9BBE0EFA0FD}', 'mkazi078@uottawa.ca', 'kashif@gmail.com', '{53650FB7-D76E-459D-8B56-BC7A4919C0F6}', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', NULL, 'registered'),
('{B8B362F3-D164-4082-AA6C-08F3EC73E2A8}', 'mkazi078@uottawa.ca', 'aysha@gmail.com', '{53650FB7-D76E-459D-8B56-BC7A4919C0F6}', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', NULL, 'registered'),
('{C8AE75F9-1644-48C5-87D0-4AFEC777C122}', 'mkazi078@uottawa.ca', 'zahid@gmail.com', '{53650FB7-D76E-459D-8B56-BC7A4919C0F6}', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', NULL, 'submitted'),
('{DBE4ED93-4A97-41CF-B8E3-5E42AEC0246F}', 'mkazi078@uottawa.ca', 'aysha@gmail.com', '{683A3D91-D124-44AF-82A3-FB43837A4392}', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', NULL, 'registered');

-- --------------------------------------------------------

--
-- Table structure for table `reg_course_teacher`
--

DROP TABLE IF EXISTS `reg_course_teacher`;
CREATE TABLE IF NOT EXISTS `reg_course_teacher` (
  `ID` varchar(40) NOT NULL,
  `CourseID` varchar(40) NOT NULL,
  `TeacherID` varchar(40) NOT NULL,
  `SessionID` varchar(40) NOT NULL,
  `YearID` varchar(40) NOT NULL,
  `TermID` varchar(40) NOT NULL,
  `NoOfTests` int(10) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_course_teacher`
--

INSERT INTO `reg_course_teacher` (`ID`, `CourseID`, `TeacherID`, `SessionID`, `YearID`, `TermID`, `NoOfTests`) VALUES
('{0BA78ECC-A6E7-4EA8-9BFA-6C599F88F76D}', '{53650FB7-D76E-459D-8B56-BC7A4919C0F6}', 'mkazi078@uottawa.ca', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', 5),
('{C4490FFA-154B-45FE-9773-744B3E6FDFF7}', '{683A3D91-D124-44AF-82A3-FB43837A4392}', 'mkazi078@uottawa.ca', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', 3);

-- --------------------------------------------------------

--
-- Table structure for table `reg_course_teacher_registration`
--

DROP TABLE IF EXISTS `reg_course_teacher_registration`;
CREATE TABLE IF NOT EXISTS `reg_course_teacher_registration` (
  `ID` varchar(40) NOT NULL,
  `TeacherID` varchar(40) NOT NULL,
  `SessionID` varchar(40) NOT NULL,
  `YearID` varchar(40) NOT NULL,
  `TermID` varchar(40) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_course_teacher_registration`
--

INSERT INTO `reg_course_teacher_registration` (`ID`, `TeacherID`, `SessionID`, `YearID`, `TermID`) VALUES
('{4D389527-643B-4B05-80AB-E05A6EF8DE2A}', 'mkazi078@uottawa.ca', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{EA335D18-A1A8-4D15-9C7B-4A4700AD4543}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}');

-- --------------------------------------------------------

--
-- Table structure for table `reg_course_type`
--

DROP TABLE IF EXISTS `reg_course_type`;
CREATE TABLE IF NOT EXISTS `reg_course_type` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `SessionalTypeID` varchar(40) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_course_type`
--

INSERT INTO `reg_course_type` (`ID`, `Name`, `SessionalTypeID`) VALUES
('{3DC4DDE5-514F-4BE4-8682-37EA32C3FDB7}', 'Theory', '{126156BB-18ED-4CAB-8DB9-1C0F72BB63C1}'),
('{5F886686-4EB1-48C8-A801-8D46233739D1}', 'Thesis', '{126156BB-18ED-4CAB-8DB9-1C0F72BB63C1}'),
('{EF5CA3BF-A886-4450-ABC4-DED45C7600C0}', 'Sessional', '{126156BB-18ED-4CAB-8DB9-1C0F72BB63C1}');

-- --------------------------------------------------------

--
-- Table structure for table `reg_registration_session`
--

DROP TABLE IF EXISTS `reg_registration_session`;
CREATE TABLE IF NOT EXISTS `reg_registration_session` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(30) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_registration_session`
--

INSERT INTO `reg_registration_session` (`ID`, `Name`) VALUES
('{05DA37EB-6C62-45E9-A0E3-7C5C6943F6AD}', '2012-2013'),
('{1399EEA3-B939-4155-B9F3-4DAD4928C4D5}', '2014-2015'),
('{65C2BA57-7231-497A-A5A7-90912259684C}', '2011-2012'),
('{A36A7057-CDB5-4E10-9E61-CCC85C74460E}', '2013-2014'),
('{DFF9E45F-6954-46A1-9088-D930EE460C3F}', '2015-2016'),
('{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '2016-2017');

-- --------------------------------------------------------

--
-- Table structure for table `reg_term`
--

DROP TABLE IF EXISTS `reg_term`;
CREATE TABLE IF NOT EXISTS `reg_term` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_term`
--

INSERT INTO `reg_term` (`ID`, `Name`) VALUES
('{6DE3CF58-3A1A-4D6A-88CF-83F22C27E0BA}', 'Special'),
('{AF8B217E-4E76-41B8-A02A-7115BD4A6BE6}', '2nd'),
('{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', '1st');

-- --------------------------------------------------------

--
-- Table structure for table `reg_year`
--

DROP TABLE IF EXISTS `reg_year`;
CREATE TABLE IF NOT EXISTS `reg_year` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_year`
--

INSERT INTO `reg_year` (`ID`, `Name`) VALUES
('{1FAC0F1A-9D60-43F6-AB07-C933D5A4AA30}', 'Phd 1st'),
('{326B168F-58CC-42F3-B71A-DFE8DBBC05E8}', 'MSc 1st'),
('{6780C884-E112-4F58-9503-E2110B615547}', '4th'),
('{9F3A6CBC-0115-4EC2-ABB3-8CCA431F6C2B}', '1st'),
('{A21965E4-4FE4-43AC-A77F-DABAC9B356F2}', '3rd'),
('{ADBEDD3E-D8EA-47AA-A068-C4C703DB4AE6}', 'MSc 2nd'),
('{B9D6CC05-7AD4-4666-80AB-80797A872743}', 'Phd 2nd'),
('{CBE08035-94CD-4610-B4E2-A0E844184056}', 'Phd 4th'),
('{E3823AA6-6BE5-4A07-93EA-FA59DE4F616F}', 'Phd 3rd'),
('{EA335D18-A1A8-4D15-9C7B-4A4700AD4543}', '2nd');

-- --------------------------------------------------------

--
-- Table structure for table `rms_course_marks_result`
--

DROP TABLE IF EXISTS `rms_course_marks_result`;
CREATE TABLE IF NOT EXISTS `rms_course_marks_result` (
  `ID` varchar(40) NOT NULL,
  `CourseNo` varchar(40) NOT NULL,
  `TeacherID` varchar(40) DEFAULT NULL,
  `SessionID` varchar(40) NOT NULL,
  `YearID` varchar(40) NOT NULL,
  `TermID` varchar(40) NOT NULL,
  `StudentID` varchar(40) NOT NULL,
  `MarksID` varchar(40) NOT NULL,
  `MarksValue` varchar(200) NOT NULL,
  `Status` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rms_course_marks_result`
--

INSERT INTO `rms_course_marks_result` (`ID`, `CourseNo`, `TeacherID`, `SessionID`, `YearID`, `TermID`, `StudentID`, `MarksID`, `MarksValue`, `Status`) VALUES
('{44C3C858-AFC6-4592-B160-10B921BF381C}', 'cse-4111', 'mkazi078@uottawa.ca', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', '020202', '{7E24DC07-CD2C-4360-A6E9-05A363C2EA08}', '10,25,25,25', '');

-- --------------------------------------------------------

--
-- Table structure for table `rms_course_marks_result_publish`
--

DROP TABLE IF EXISTS `rms_course_marks_result_publish`;
CREATE TABLE IF NOT EXISTS `rms_course_marks_result_publish` (
  `ID` varchar(40) NOT NULL,
  `CourseNo` varchar(40) NOT NULL,
  `TeacherID` varchar(40) DEFAULT NULL,
  `SessionID` varchar(40) NOT NULL,
  `YearID` varchar(40) NOT NULL,
  `TermID` varchar(40) NOT NULL,
  `StudentID` varchar(40) NOT NULL,
  `HeaderID` varchar(200) NOT NULL,
  `HeaderName` varchar(200) NOT NULL,
  `HeaderMax` varchar(200) NOT NULL,
  `MarksValue` varchar(200) NOT NULL,
  `MarksTotal` varchar(20) NOT NULL,
  `Grades` varchar(200) NOT NULL,
  `GradeRanges` varchar(300) NOT NULL,
  `FinalGrade` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rms_course_marks_tests`
--

DROP TABLE IF EXISTS `rms_course_marks_tests`;
CREATE TABLE IF NOT EXISTS `rms_course_marks_tests` (
  `ID` varchar(40) NOT NULL,
  `CourseNo` varchar(40) NOT NULL,
  `TeacherID` varchar(40) NOT NULL,
  `SessionID` varchar(40) NOT NULL,
  `YearID` varchar(40) NOT NULL,
  `TermID` varchar(40) NOT NULL,
  `StudentID` varchar(40) NOT NULL,
  `MarksValue` varchar(200) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rms_course_marks_tests`
--

INSERT INTO `rms_course_marks_tests` (`ID`, `CourseNo`, `TeacherID`, `SessionID`, `YearID`, `TermID`, `StudentID`, `MarksValue`) VALUES
('{037E6C4F-CAAE-4587-B3E1-1CC6E59101A4}', 'cse-4111', 'mkazi078@uottawa.ca', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', '020203', '12,20,20'),
('{222F2596-5F55-442C-80EA-F5AE7F466C70}', 'cse-4111', 'mkazi078@uottawa.ca', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', '020202', '15,25,20'),
('{71D63076-9096-4CAA-8D6D-782A25B076A7}', 'cse-4111', 'mkazi078@uottawa.ca', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', '020208', '15,20,20'),
('{B6BB339D-E40B-4CC4-8D34-07017EE2BE44}', 'cse-4112', 'mkazi078@uottawa.ca', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', '020208', '10,30,30,0,0'),
('{DBF1823F-0DF9-4E8F-9233-5AB1545BC1B7}', 'cse-4112', 'mkazi078@uottawa.ca', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', '020202', '20,20,20,0,0');

-- --------------------------------------------------------

--
-- Table structure for table `rms_grade_setup`
--

DROP TABLE IF EXISTS `rms_grade_setup`;
CREATE TABLE IF NOT EXISTS `rms_grade_setup` (
  `ID` varchar(40) NOT NULL,
  `Grades` varchar(200) NOT NULL,
  `Ranges` varchar(300) NOT NULL,
  `IsDefault` tinyint(1) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rms_grade_setup`
--

INSERT INTO `rms_grade_setup` (`ID`, `Grades`, `Ranges`, `IsDefault`) VALUES
('{FC3DBA75-AF9C-4533-825E-D8A01D076F60}', 'F,E,D,C,C+,B,B+,A-,A,A+', '0-39,40-44,45-49,50-54,55-59,60-64,65-69,70-74,75-79,80-100', 1);

-- --------------------------------------------------------

--
-- Table structure for table `rms_marks_setup`
--

DROP TABLE IF EXISTS `rms_marks_setup`;
CREATE TABLE IF NOT EXISTS `rms_marks_setup` (
  `ID` varchar(40) NOT NULL,
  `CourseTypeID` varchar(40) NOT NULL,
  `HeaderID` varchar(200) NOT NULL,
  `HeaderName` varchar(200) NOT NULL,
  `HeaderMax` varchar(200) NOT NULL,
  `IsDefault` tinyint(1) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rms_marks_setup`
--

INSERT INTO `rms_marks_setup` (`ID`, `CourseTypeID`, `HeaderID`, `HeaderName`, `HeaderMax`, `IsDefault`) VALUES
('{236BBFE8-E4CF-4EEF-9C54-AD83FEF42ADB}', '{EF5CA3BF-A886-4450-ABC4-DED45C7600C0}', 'att,assess,viva', 'Attendance,Assessment,Viva', '10,60,30', 1),
('{7E24DC07-CD2C-4360-A6E9-05A363C2EA08}', '{3DC4DDE5-514F-4BE4-8682-37EA32C3FDB7}', 'att,assess,seca,secb', 'Attendance,Assessment,Section A,Section B', '10,30,30,30,30', 1);

-- --------------------------------------------------------

--
-- Table structure for table `svms_survey`
--

DROP TABLE IF EXISTS `svms_survey`;
CREATE TABLE IF NOT EXISTS `svms_survey` (
  `ID` varchar(40) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Description` varchar(300) NOT NULL,
  `Link` varchar(100) NOT NULL,
  `TotalQuestions` int(11) NOT NULL,
  `CreatorID` varchar(40) NOT NULL,
  `AccessTo` varchar(40) NOT NULL,
  `QuesType` varchar(40) NOT NULL,
  `Status` varchar(40) NOT NULL,
  `CreationDate` date NOT NULL,
  `CompletionDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `svms_survey`
--

INSERT INTO `svms_survey` (`ID`, `Title`, `Description`, `Link`, `TotalQuestions`, `CreatorID`, `AccessTo`, `QuesType`, `Status`, `CreationDate`, `CompletionDate`) VALUES
('{A70D8B85-086C-4000-BE94-688F9AA3B09D}', 'Computer Network SFQ', 'SFQ', '', 5, 'sujanasaha27@gmail.com', 'student', 'radio button', 'UnLock', '2017-04-29', '2017-04-05'),
('{778659F5-E402-41D8-8CBC-73AF45A6E5DD}', 'Home', 'home', '', 2, 'sujanasaha27@gmail.com', 'teacher', 'radio button', 'Lock', '2019-08-27', '2019-08-27'),
('{7D479014-1A85-4A6D-82CB-C62C6542A29A}', 'Class', 'class', '', 2, 'sujanasaha27@gmail.com', 'registration coordinator', 'radio button', 'UnLock', '2019-09-14', '2019-09-14'),
('{01E6DD9E-2920-4F8A-9DFE-8317612EC3DE}', 'X', 'x', '', 3, 'sujanasaha27@gmail.com', 'teacher', 'radio button', 'UnLock', '2019-10-12', '2019-10-12'),
('{34CDE195-E1F4-4290-867C-C8CCE907BFAB}', 'Y', 'y', '', 3, 'hafsasultana1720@gmail.com', 'teacher', 'radio button', 'Lock', '2019-10-29', '2019-10-29'),
('{55716E42-4DC3-4F1B-9F25-C3AF75D74C6C}', 'Z', 'z', '', 5, 'sujanasaha27@gmail.com', 'registration coordinator', 'radio button', 'Lock', '2019-10-30', '2019-10-30'),
('{E94DFD62-092B-4196-9465-E9E5451C2A8F}', 'My Teacher', 'Teachers nature', '', 3, 'hafsasultana1720@gmail.com', 'student', 'radio button', 'Lock', '2019-12-11', '2019-12-11'),
('{0B359845-6D5D-4AB7-9871-3195F1A9C946}', 'Student behavior', 'Efficient Learning', '', 4, 'hafsasultana1720@gmail.com', 'student', 'radio button', 'UnLock', '2019-12-11', '2019-12-11'),
('{4642FB29-3922-47A5-BE31-857E946D0AE9}', 'Student Investment', 'Classroom Learning', '', 6, 'hafsasultana1720@gmail.com', 'student', 'radio button', 'UnLock', '2019-12-11', '2019-12-11'),
('{03FA7E28-A239-4E38-BB17-F48891D225D9}', 'Student Feedback', 'Questionnaire', '', 5, 'sujanasaha27@gmail.com', 'student', 'radio button', 'UnLock', '2019-12-11', '2019-12-11'),
('{4DF8525B-FBCC-4893-9B6A-86631B19F4A5}', 'Experience Of Teachers', 'Based on past experience', '', 3, 'sujanasaha27@gmail.com', 'teacher', 'radio button', 'Lock', '2019-12-11', '2019-12-11'),
('{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', 'Level of a Teacher', 'Based on past experience', '', 8, 'sujanasaha27@gmail.com', 'teacher', 'radio button', 'UnLock', '2019-12-11', '2019-12-11'),
('{7B195AE8-03BF-45CA-B50D-EF76C45012CD}', 'Questions about Satisfaction', 'Measurement of satisfaction', '', 8, 'sujanasaha27@gmail.com', 'teacher', 'radio button', 'UnLock', '2019-12-11', '2019-12-11'),
('{803D6B71-4572-4150-A64F-CF878A317903}', 'Student Report', 'About result', '', 5, 'sujanasaha27@gmail.com', 'teacher', 'radio button', 'Lock', '2019-12-11', '2019-12-11'),
('{45F45716-223E-4401-A0C2-34AAF1B6B48B}', 'Staff Information', 'Related information', '', 6, 'hafsasultana1720@gmail.com', 'stuff', 'radio button', 'UnLock', '2019-12-11', '2019-12-11'),
('{6CD09A94-DE73-46E8-8CA2-B447E5A4F65E}', 'Coligues of Staff', 'Coligues', '', 4, 'sujanasaha27@gmail.com', 'stuff', 'radio button', 'Lock', '2019-12-11', '2019-12-11');

-- --------------------------------------------------------

--
-- Table structure for table `svms_survey_question`
--

DROP TABLE IF EXISTS `svms_survey_question`;
CREATE TABLE IF NOT EXISTS `svms_survey_question` (
  `ID` varchar(40) NOT NULL,
  `SurveyID` varchar(40) NOT NULL,
  `QuestionNo` int(11) NOT NULL,
  `QuestionType` varchar(20) NOT NULL,
  `QuestionValue` varchar(200) NOT NULL,
  `NumberOfOption` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `svms_survey_question`
--

INSERT INTO `svms_survey_question` (`ID`, `SurveyID`, `QuestionNo`, `QuestionType`, `QuestionValue`, `NumberOfOption`) VALUES
('{CA6F461D-B614-4499-B5A3-F6681D2EE4DB}', '{A70D8B85-086C-4000-BE94-688F9AA3B09D}', 2, 'MCQ', 'When?', 2),
('{8B5D42FD-5781-4F16-BC4E-B0C20A4E172E}', '{A70D8B85-086C-4000-BE94-688F9AA3B09D}', 3, 'MCQ', 'WHen?', 3),
('{37BD99B4-BBB7-4A9F-B14D-A84C141D3639}', '{01E6DD9E-2920-4F8A-9DFE-8317612EC3DE}', 0, 'MCQ', 'pp', 2),
('{23ED2E7A-D343-4D22-BD78-3E65F3B2CBC8}', '{01E6DD9E-2920-4F8A-9DFE-8317612EC3DE}', 1, 'MCQ', 'q', 2),
('{AE9F7911-054D-4F1F-B0D0-450CF7F5C72A}', '{34CDE195-E1F4-4290-867C-C8CCE907BFAB}', 0, 'MCQ', 'how?', 2),
('{FEC3FDDD-871A-4828-8516-DEF1A4B265BF}', '{34CDE195-E1F4-4290-867C-C8CCE907BFAB}', 1, 'MCQ', 'When?', 2),
('{37135BC1-A5C0-4E61-8BDE-82A05502D117}', '{55716E42-4DC3-4F1B-9F25-C3AF75D74C6C}', 1, 'MCQ', 'a', 2),
('{9D2952C2-D45F-4648-8C06-074B0356AE55}', '{55716E42-4DC3-4F1B-9F25-C3AF75D74C6C}', 2, 'MCQ', 'b', 2),
('{20205C32-F814-40D2-BF31-E0276797F38B}', '{55716E42-4DC3-4F1B-9F25-C3AF75D74C6C}', 3, 'MCQ', 'c', 2),
('{35EA7B5B-66ED-4390-9FE3-95C5D2632843}', '{55716E42-4DC3-4F1B-9F25-C3AF75D74C6C}', 4, 'MCQ', 'd', 2),
('{412F853B-3324-48E0-87E4-3AF975196BD8}', '{55716E42-4DC3-4F1B-9F25-C3AF75D74C6C}', 5, 'MCQ', 'e', 2),
('{8C459DBD-0166-4239-B297-DAFDCEA03376}', '{A70D8B85-086C-4000-BE94-688F9AA3B09D}', 4, 'MCQ', 'why', 2),
('{EB5B49A5-DA6A-4234-BFAC-B4AFCEE81138}', '{A70D8B85-086C-4000-BE94-688F9AA3B09D}', 5, 'MCQ', 'how are you?', 2),
('{517701C3-8B3C-47DD-A82A-DFAA2716A147}', '{A70D8B85-086C-4000-BE94-688F9AA3B09D}', 5, 'MCQ', 'what is your name?', 2),
('{7EA518FF-5D16-4047-B8F1-F4B826356318}', '{778659F5-E402-41D8-8CBC-73AF45A6E5DD}', 1, 'MCQ', 'how?', 2),
('{05FEDB9F-DCD9-46B1-9C93-27FA5296B460}', '{778659F5-E402-41D8-8CBC-73AF45A6E5DD}', 2, 'MCQ', 'why?', 2),
('{E21D5923-F1C6-49E0-B5E7-6EFDE0B4F5BD}', 'no option', 1, 'MCQ', 'Noisy', 2),
('{EEC37376-A5EA-483F-8ED3-0811DA621485}', '{7D479014-1A85-4A6D-82CB-C62C6542A29A}', 1, 'MCQ', 'A', 2),
('{972E4381-580B-4F6C-B246-5382E64749F9}', '{7D479014-1A85-4A6D-82CB-C62C6542A29A}', 2, 'MCQ', 'B', 2),
('{0A850CB8-EDDC-4AD6-8F9E-1480247A34F0}', '{E94DFD62-092B-4196-9465-E9E5451C2A8F}', 1, 'MCQ', 'Does my teacher make me feel that he/she cares about me?', 4),
('{A27CBACD-1EA9-4270-80B6-62D15785CFFA}', '{E94DFD62-092B-4196-9465-E9E5451C2A8F}', 2, 'MCQ', 'Does my teacher encourage me to do my best?', 4),
('{BB817CE4-0F13-4910-B3A4-20ECBE3C8411}', '{E94DFD62-092B-4196-9465-E9E5451C2A8F}', 3, 'MCQ', 'Is my teacher helpful when I ask questions?', 4),
('{3E64A3D6-704D-4138-8491-B962FDAFEDAC}', '{0B359845-6D5D-4AB7-9871-3195F1A9C946}', 1, 'MCQ', 'Our class stays busy and does not waste time.', 4),
('{F878CE90-010C-4C8E-9BBD-3CFEE873C327}', '{0B359845-6D5D-4AB7-9871-3195F1A9C946}', 2, 'MCQ', 'My teacherâ€™s classroom rules and ways of doing things are fair.', 4),
('{156248D2-1860-4E9E-B6A1-7FDFE5194C70}', '{0B359845-6D5D-4AB7-9871-3195F1A9C946}', 3, 'MCQ', 'My classmatesâ€™ misbehavior slows down the learning process.', 4),
('{1230CA00-61A1-430B-A042-7AA307A6EDCD}', '{0B359845-6D5D-4AB7-9871-3195F1A9C946}', 4, 'MCQ', 'My classmates and I know what we should be doing and learning.', 4),
('{826AE826-C1F0-4CA0-9F28-974046514CEC}', '{4642FB29-3922-47A5-BE31-857E946D0AE9}', 1, 'MCQ', 'My teacher tells us what we are learning and why.', 4),
('{9C5D9ABE-B898-40A0-984B-AB2C780F9D18}', '{4642FB29-3922-47A5-BE31-857E946D0AE9}', 2, 'MCQ', 'My teacher helps us set goals for our learning and keep track of our progress.', 4),
('{7C68E013-5CF5-476C-8494-F31346CEBA2F}', '{4642FB29-3922-47A5-BE31-857E946D0AE9}', 3, 'MCQ', 'My teacher makes school work interesting.', 4),
('{842EF113-2AB4-4409-9E48-3A76E862A950}', '{4642FB29-3922-47A5-BE31-857E946D0AE9}', 4, 'MCQ', 'My teacher makes me work hard so I learn what I need to know.', 4),
('{3C865989-49F0-4AC2-925B-25AE39C68BC7}', '{4642FB29-3922-47A5-BE31-857E946D0AE9}', 5, 'MCQ', 'We get choices in how to complete activities.', 4),
('{CE05F8C1-67B5-42AC-866E-4C3301ABDFDD}', '{4642FB29-3922-47A5-BE31-857E946D0AE9}', 6, 'MCQ', 'My teacher assigns homework that helps me learn.', 4),
('{887A967F-1D5F-400B-AE16-60DCAD5C109C}', '{03FA7E28-A239-4E38-BB17-F48891D225D9}', 1, 'MCQ', 'Set the right amount of classwork and homework.', 4),
('{5518CAAB-0BCE-4113-A91E-821CB5737E4A}', '{03FA7E28-A239-4E38-BB17-F48891D225D9}', 2, 'MCQ', 'Set work which is too difficult?', 4),
('{78FC27B8-D9D9-426C-9573-658165701EDC}', '{03FA7E28-A239-4E38-BB17-F48891D225D9}', 3, 'MCQ', 'Set work which is too easy?', 4),
('{0FC6733B-A1DE-479B-BDEB-2580FF51F410}', '{03FA7E28-A239-4E38-BB17-F48891D225D9}', 4, 'MCQ', 'Return your work quickly after marking?', 4),
('{B4D6C4C3-1BCA-4B78-B15A-ED85738BEE49}', '{03FA7E28-A239-4E38-BB17-F48891D225D9}', 5, 'MCQ', 'Write helpful comments on your work?', 4),
('{8E656CEA-7F7B-409A-97C4-C5153C819FBE}', '{4DF8525B-FBCC-4893-9B6A-86631B19F4A5}', 1, 'MCQ', 'Are you employed with any other school/institute other than this school?', 2),
('{155F81FB-6558-4B8D-9D50-7ABCBBCE5468}', '{4DF8525B-FBCC-4893-9B6A-86631B19F4A5}', 2, 'MCQ', 'Please state your highest academic qualification?', 5),
('{56D44FB9-FF6A-4374-9B0E-50C780421464}', '{4DF8525B-FBCC-4893-9B6A-86631B19F4A5}', 3, 'MCQ', 'Please state your current employment status?', 3),
('{C0B5CFDE-3CD6-42AA-8854-955DE94A00E0}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', 1, 'MCQ', 'Most of the schooling staff in the institute have a unified vision.', 5),
('{0E33D222-2447-4F4D-9FA1-B9C5F3792D59}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', 2, 'MCQ', 'The school staff is caring and respects the students.', 5),
('{207A4BEB-3B28-4D7F-A62E-1E0C3D05C331}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', 3, 'MCQ', 'The schooling staff has a sense of ownership and responsibility.', 5),
('{F39D99E6-6B76-4008-ADB5-FAC62F144BD8}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', 4, 'MCQ', 'The school staff treats each with respect.', 5),
('{C02F03DD-1EAA-4005-B300-790D6569E27C}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', 5, 'MCQ', 'The school staff collectively brainstorms on resolutions to provide effective.', 5),
('{390F4AD0-AC0C-4C8F-BC8E-FCCBA876170C}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', 6, 'MCQ', 'The staff and students are committed to school values.', 5),
('{7760436A-2CCF-4FF3-BBF1-E69E6CA14585}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', 7, 'MCQ', 'The staff is completely unbiased in all tasks related to the school.', 5),
('{32E8AF81-BF12-446D-B7DB-C0E9FB90F44B}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', 8, 'MCQ', 'The school puts equal emphasis on academics as well as sports', 5),
('{920603B2-043A-45E8-BE40-68A97922274C}', '{7B195AE8-03BF-45CA-B50D-EF76C45012CD}', 1, 'MCQ', 'Did you have to pay for yourself for any professional development activities?', 2),
('{A025172C-D8BE-4087-B2AB-390D23D86432}', '{7B195AE8-03BF-45CA-B50D-EF76C45012CD}', 2, 'MCQ', 'Did professional development activities have a positive impact on your career growth at the institute/school?', 2),
('{77741442-15CC-40DB-9CB2-7F9E52EE285C}', '{7B195AE8-03BF-45CA-B50D-EF76C45012CD}', 3, 'MCQ', 'How often did you have the freedom to try innovative methods for better learning?', 4),
('{61908F04-9B12-45B0-905C-DB00AE97EB9B}', '{7B195AE8-03BF-45CA-B50D-EF76C45012CD}', 4, 'MCQ', 'How often were you consulted before finalizing the curriculum for the students?', 4),
('{89F4A2CF-4CE5-42B0-8E2F-23B1C7378F97}', '{7B195AE8-03BF-45CA-B50D-EF76C45012CD}', 5, 'MCQ', 'Are you satisfied with the remuneration you receive as a teacher?', 2),
('{975AE4EB-CC13-4CAE-AA7E-6C7EC4FE4527}', '{7B195AE8-03BF-45CA-B50D-EF76C45012CD}', 6, 'MCQ', 'How satisfied are you with the number of holidays you receive in a year?', 5),
('{C9BCFCB9-091F-4D15-AAAD-E378B8C95E47}', '{7B195AE8-03BF-45CA-B50D-EF76C45012CD}', 7, 'MCQ', 'How long have you been working with the current school/institute?', 5),
('{353A08D1-E238-451A-A9CD-F531C976EB01}', '{7B195AE8-03BF-45CA-B50D-EF76C45012CD}', 8, 'MCQ', 'In your opinion, do you agree that government policies have had a positive impact on the education sector in the last year?', 3),
('{E6CE7100-3F0C-4B25-8291-E3B20A65331D}', '{803D6B71-4572-4150-A64F-CF878A317903}', 1, 'MCQ', 'Make a class presentation or homework.', 4),
('{714E27CF-E381-4FA0-8878-6EC1A1931A0C}', '{803D6B71-4572-4150-A64F-CF878A317903}', 2, 'MCQ', 'Asked question in class or contributed to class discussions.', 4),
('{ABAD99C1-527F-446F-BE4A-00FB501CC618}', '{803D6B71-4572-4150-A64F-CF878A317903}', 3, 'MCQ', 'Worked with classmate outside of class to prepare class assignment.', 4),
('{5ECAD52D-6344-4567-B73A-83B76AB76C13}', '{803D6B71-4572-4150-A64F-CF878A317903}', 4, 'MCQ', 'Used email to communicate with an instructor', 4),
('{D325A6A7-7FF4-4604-BCDA-E1F46F919958}', '{803D6B71-4572-4150-A64F-CF878A317903}', 5, 'MCQ', 'Discussed grades or plan or assignment with an instructor.', 4),
('{7B36AE1F-6F1F-403D-98AE-EB6384E7C590}', '{45F45716-223E-4401-A0C2-34AAF1B6B48B}', 1, 'MCQ', 'Whatâ€™s your year in college?', 5),
('{FE748943-2508-427D-BD0A-4A0F8783AE03}', '{45F45716-223E-4401-A0C2-34AAF1B6B48B}', 2, 'MCQ', 'What is your gender?', 2),
('{FE9A7208-2922-4FE6-87BC-A644F1373BE1}', '{45F45716-223E-4401-A0C2-34AAF1B6B48B}', 3, 'MCQ', 'Please select your age category:', 5),
('{D5990BE6-B0E1-4212-8AAC-D51959009CFD}', '{45F45716-223E-4401-A0C2-34AAF1B6B48B}', 4, 'MCQ', 'How satisfied are you with the facilities provided by the college?', 5),
('{3B433760-A571-4C35-A1A5-0289C6A9F4CB}', '{45F45716-223E-4401-A0C2-34AAF1B6B48B}', 5, 'MCQ', 'Is it easy to obtain the necessary resources from the college library?', 2),
('{F51277EE-FA82-4083-8553-F8EDD0247A8F}', '{45F45716-223E-4401-A0C2-34AAF1B6B48B}', 6, 'MCQ', 'How about your overall experience with this college?', 5),
('{D34D9EF5-D482-41A7-A958-F0E19897BC93}', '{6CD09A94-DE73-46E8-8CA2-B447E5A4F65E}', 1, 'MCQ', 'Are you satisfied with the teaching staff and their teaching practices?', 2),
('{84CAF18C-04E5-41E9-8798-D88C7F608D50}', '{6CD09A94-DE73-46E8-8CA2-B447E5A4F65E}', 2, 'MCQ', 'Do you think faculty and support staff at the university was helpful?', 5),
('{F79CBD91-9042-428E-B003-0232CEE60F44}', '{6CD09A94-DE73-46E8-8CA2-B447E5A4F65E}', 3, 'MCQ', 'How likely are you to continue attending this university next year?', 5),
('{C3255285-49F8-4B0D-92F4-83FCAD560CCA}', '{6CD09A94-DE73-46E8-8CA2-B447E5A4F65E}', 4, 'MCQ', 'Do you feel it is easier to register to different courses within the university?', 5);

-- --------------------------------------------------------

--
-- Table structure for table `svms_survey_question_filled`
--

DROP TABLE IF EXISTS `svms_survey_question_filled`;
CREATE TABLE IF NOT EXISTS `svms_survey_question_filled` (
  `ID` varchar(100) NOT NULL,
  `SurveyID` varchar(40) NOT NULL,
  `QuestionID` varchar(40) NOT NULL,
  `OptionID` varchar(150) NOT NULL,
  `FilledValue` varchar(200) NOT NULL,
  `FilledUserID` varchar(40) NOT NULL,
  `FilledTime` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `svms_survey_question_filled`
--

INSERT INTO `svms_survey_question_filled` (`ID`, `SurveyID`, `QuestionID`, `OptionID`, `FilledValue`, `FilledUserID`, `FilledTime`) VALUES
('25', '{A70D8B85-086C-4000-BE94-688F9AA3B09D}', '{218CB8C9-92EB-4A08-964C-0C82028DF1DA}', '', 'opt2', 'mkazi078@uottawa.ca', '2017-04-30'),
('26', '{A70D8B85-086C-4000-BE94-688F9AA3B09D}', '{612C8E23-C159-449F-A4B1-4CD191561D9C}', '', 'opt1', 'mkazi078@uottawa.ca', '2017-04-30'),
('27', '{A70D8B85-086C-4000-BE94-688F9AA3B09D}', '{DFF3A12F-697F-47EB-B7E3-C8B176B70F5E}', '', 'opt2', 'mkazi078@uottawa.ca', '2017-04-30'),
('28', '{A70D8B85-086C-4000-BE94-688F9AA3B09D}', '{218CB8C9-92EB-4A08-964C-0C82028DF1DA}', '', 'opt1', 'mkazi078@uottawa.ca', '2017-05-01'),
('29', '{A70D8B85-086C-4000-BE94-688F9AA3B09D}', '{612C8E23-C159-449F-A4B1-4CD191561D9C}', '', 'opt1', 'mkazi078@uottawa.ca', '2017-05-01'),
('30', '{A70D8B85-086C-4000-BE94-688F9AA3B09D}', '{DFF3A12F-697F-47EB-B7E3-C8B176B70F5E}', '', 'opt1', 'mkazi078@uottawa.ca', '2017-05-01'),
('31', '{A70D8B85-086C-4000-BE94-688F9AA3B09D}', '{218CB8C9-92EB-4A08-964C-0C82028DF1DA}', '', 'opt2', 'mkazi078@uottawa.ca', '2017-08-05'),
('32', '{A70D8B85-086C-4000-BE94-688F9AA3B09D}', '{612C8E23-C159-449F-A4B1-4CD191561D9C}', '', 'opt1', 'mkazi078@uottawa.ca', '2017-08-05'),
('33', '{A70D8B85-086C-4000-BE94-688F9AA3B09D}', '{DFF3A12F-697F-47EB-B7E3-C8B176B70F5E}', '', 'opt2', 'mkazi078@uottawa.ca', '2017-08-05'),
('{14A02F63-A9CB-437E-8D21-7A343E4BEC8B}', '{AD431532-48D8-4605-9EB3-F1C4E4470044}', '{0D26A03E-2726-42A8-8635-5DDB416A1AAF}', '', 'hhh', 'sujanasaha27@gmail.com', '2019-11-01'),
('{D9C0B0A7-27BA-4381-9F43-B6D8DC8103BE}', '{AD431532-48D8-4605-9EB3-F1C4E4470044}', '{F9AACEEF-C216-413A-BF28-7A669041F222}', '', 'hh2', 'sujanasaha27@gmail.com', '2019-11-01'),
('{7408EFAC-A405-4D48-89E0-88A3004C2858}', '{AD431532-48D8-4605-9EB3-F1C4E4470044}', '{0D26A03E-2726-42A8-8635-5DDB416A1AAF}', '', 'hhh', 'sujanasaha27@gmail.com', '2019-11-01'),
('{BAD0F017-672B-4F89-BDE6-39612948C537}', '{AD431532-48D8-4605-9EB3-F1C4E4470044}', '{0D26A03E-2726-42A8-8635-5DDB416A1AAF}', '', 'hhhh', 'sujanasaha27@gmail.com', '2019-11-01'),
('{9D4E3E1A-2D54-4DB2-A356-A036FFEA25C9}', '{AD431532-48D8-4605-9EB3-F1C4E4470044}', '{F9AACEEF-C216-413A-BF28-7A669041F222}', '', 'hh2', 'sujanasaha27@gmail.com', '2019-11-01'),
('{DC54B769-3C87-4017-BD14-8491D082215E}', '{AD431532-48D8-4605-9EB3-F1C4E4470044}', '{F9AACEEF-C216-413A-BF28-7A669041F222}', '', 'hh3', 'sujanasaha27@gmail.com', '2019-11-01'),
('{ED32DB8D-2521-495B-AB32-6A9F52A649CF}', '{AD431532-48D8-4605-9EB3-F1C4E4470044}', '{0D26A03E-2726-42A8-8635-5DDB416A1AAF}', '', 'hhh', 'sujanasaha27@gmail.com', '2019-11-01'),
('{0D8F0E4B-D1DA-42A3-B5CA-4F731046692A}', '{AD431532-48D8-4605-9EB3-F1C4E4470044}', '{0D26A03E-2726-42A8-8635-5DDB416A1AAF}', '', 'hh2', 'sujanasaha27@gmail.com', '2019-11-01'),
('{0ABAA770-D42B-435F-801B-E33E3DDCBE33}', '{AD431532-48D8-4605-9EB3-F1C4E4470044}', '{0D26A03E-2726-42A8-8635-5DDB416A1AAF}', '{CB8F291F-6C0E-4C0E-9739-1B38FAB5A391}', 'hhh', 'sujanasaha27@gmail.com', '2019-11-01'),
('{16AF5934-0E9D-4F15-BA3F-33479F39F0FC}', '{778659F5-E402-41D8-8CBC-73AF45A6E5DD}', '{7EA518FF-5D16-4047-B8F1-F4B826356318}', '{5A98214E-2DEF-4D0D-A47F-555DD1E0BD01}', 'Yes', 'sujanasaha27@gmail.com', '2019-11-01'),
('{F88B7A09-BBEF-47DD-83F7-9F10A97DB52D}', '{778659F5-E402-41D8-8CBC-73AF45A6E5DD}', '{7EA518FF-5D16-4047-B8F1-F4B826356318}', '{3BE0DB7D-E413-440C-A2D7-9C0E0400DD18}', 'Noise', 'sujanasaha27@gmail.com', '2019-11-01'),
('{32A68D16-DD06-4C11-91CF-C7CCB630FFDD}', '{778659F5-E402-41D8-8CBC-73AF45A6E5DD}', '{7EA518FF-5D16-4047-B8F1-F4B826356318}', '{5A98214E-2DEF-4D0D-A47F-555DD1E0BD01}', 'Yes', 'tina27@gmail.com', '2019-11-01'),
('{50C99734-712B-4E3D-BC7A-194DFB9A083E}', '{778659F5-E402-41D8-8CBC-73AF45A6E5DD}', '{7EA518FF-5D16-4047-B8F1-F4B826356318}', '{3BE0DB7D-E413-440C-A2D7-9C0E0400DD18}', 'Noise', 'tina27@gmail.com', '2019-11-01'),
('{3B5C7315-1515-495D-9CB2-BD394140073C}', '{AD431532-48D8-4605-9EB3-F1C4E4470044}', '{F9AACEEF-C216-413A-BF28-7A669041F222}', '{C99208BF-12F3-4DD2-AD5E-35E29DE44D1A}', 'hh4', 'sujanasaha27@gmail.com', '2019-12-04'),
('{9525A2A5-B129-49FE-9399-462AB9CCF21E}', '{696E2AA1-7B89-4ED9-97B3-80AD8127400A}', '{380652C6-4FC6-481B-969B-8890C2C90243}', '{3432A02B-36B9-4CE8-9A65-D986B6132E76}', 'a', 'tina27@gmail.com', '2019-12-04'),
('{481BA2D9-685C-4FEE-8DB0-1C7326892C42}', '{696E2AA1-7B89-4ED9-97B3-80AD8127400A}', '{380652C6-4FC6-481B-969B-8890C2C90243}', '{2E0F4E75-D543-495A-8F88-66C71E4B1EA6}', 'p n2', 'tina27@gmail.com', '2019-12-04'),
('{13487BAC-8085-485A-9BA7-676782C376FD}', '{696E2AA1-7B89-4ED9-97B3-80AD8127400A}', '{380652C6-4FC6-481B-969B-8890C2C90243}', '{3432A02B-36B9-4CE8-9A65-D986B6132E76}', 'a', 'tina27@gmail.com', '2019-12-04'),
('{1108163A-CE96-41F6-AA03-21A5F9F5D7CA}', '{696E2AA1-7B89-4ED9-97B3-80AD8127400A}', '{380652C6-4FC6-481B-969B-8890C2C90243}', '{2E0F4E75-D543-495A-8F88-66C71E4B1EA6}', 'p n2', 'tina27@gmail.com', '2019-12-04'),
('{BE54261F-D594-4066-9C86-86F27CD70276}', '{696E2AA1-7B89-4ED9-97B3-80AD8127400A}', '{380652C6-4FC6-481B-969B-8890C2C90243}', '{3432A02B-36B9-4CE8-9A65-D986B6132E76}', 'a', 'tina27@gmail.com', '2019-12-04'),
('{780ADB32-2059-457A-967F-B9CEA9104FC6}', '{696E2AA1-7B89-4ED9-97B3-80AD8127400A}', '{D05750C9-632F-49C2-B493-6134EB06E2C4}', '{FAED6703-48C8-4E55-AAF8-74CEC33E6DB8}', 'q n2', 'tina27@gmail.com', '2019-12-04'),
('{1DC70D70-D9F5-4E26-A5E2-1A50326A6A3C}', '{696E2AA1-7B89-4ED9-97B3-80AD8127400A}', '{D05750C9-632F-49C2-B493-6134EB06E2C4}', '{648556B9-5DF3-46CF-9BFC-9A34A18FFC71}', 'b', 'tina27@gmail.com', '2019-12-04'),
('{4AA831F2-F53F-47BA-8791-AAA4A202B621}', '{696E2AA1-7B89-4ED9-97B3-80AD8127400A}', '{D05750C9-632F-49C2-B493-6134EB06E2C4}', '{FAED6703-48C8-4E55-AAF8-74CEC33E6DB8}', 'q n2', 'tina27@gmail.com', '2019-12-04'),
('{3A051E2D-9D0F-484D-BB40-A1F95F55D9C9}', '{696E2AA1-7B89-4ED9-97B3-80AD8127400A}', '{380652C6-4FC6-481B-969B-8890C2C90243}', '{3432A02B-36B9-4CE8-9A65-D986B6132E76}', 'a', 'tina27@gmail.com', '2019-12-04'),
('{A9E4E287-EBAF-49CF-B03D-08CB75032C38}', '{696E2AA1-7B89-4ED9-97B3-80AD8127400A}', '{D05750C9-632F-49C2-B493-6134EB06E2C4}', '{FAED6703-48C8-4E55-AAF8-74CEC33E6DB8}', 'q n2', 'tina27@gmail.com', '2019-12-04'),
('{DFF9EE9A-2107-4DDC-9A4C-6E1AC797E74B}', '{696E2AA1-7B89-4ED9-97B3-80AD8127400A}', '{380652C6-4FC6-481B-969B-8890C2C90243}', '{3432A02B-36B9-4CE8-9A65-D986B6132E76}', 'a', 'tina27@gmail.com', '2019-12-04'),
('{057EC263-DF21-45DE-BD8B-C3CDF4CF50EA}', '{696E2AA1-7B89-4ED9-97B3-80AD8127400A}', '{380652C6-4FC6-481B-969B-8890C2C90243}', '{2E0F4E75-D543-495A-8F88-66C71E4B1EA6}', 'p n2', 'tina27@gmail.com', '2019-12-04'),
('{21B6D874-104C-41C8-A9DF-8CAF889D9576}', '{A70D8B85-086C-4000-BE94-688F9AA3B09D}', '{CA6F461D-B614-4499-B5A3-F6681D2EE4DB}', '{FE6ACD40-0E08-4935-A9BE-90D8DA817CEF}', '9:00 A.M.', 'sujanasaha27@gmail.com', '2019-12-04'),
('{D9F6919B-FDF5-443D-BCFD-91D1C8834BDD}', '{A70D8B85-086C-4000-BE94-688F9AA3B09D}', '{CA6F461D-B614-4499-B5A3-F6681D2EE4DB}', '{F4081BA9-1CF4-4EE8-87B8-DBB2F1795D5E}', 'morning', 'sujanasaha27@gmail.com', '2019-12-04'),
('{E36B8BA3-0EEF-4E0F-8A58-2E6A03F2035F}', '{A70D8B85-086C-4000-BE94-688F9AA3B09D}', '{CA6F461D-B614-4499-B5A3-F6681D2EE4DB}', '{74F74D13-DDE2-44E7-8811-7E686D0B6935}', 'rain', 'sujanasaha27@gmail.com', '2019-12-04'),
('{2EE30DA9-5BFD-4275-A0D6-8378E2A0B481}', '{A70D8B85-086C-4000-BE94-688F9AA3B09D}', '{CA6F461D-B614-4499-B5A3-F6681D2EE4DB}', '{93BE39EA-6B10-4183-BF97-1DDD44F4A04D}', 'good', 'sujanasaha27@gmail.com', '2019-12-04'),
('{2D4CC14B-5D88-47A1-9262-571FFD721228}', '{A70D8B85-086C-4000-BE94-688F9AA3B09D}', '{CA6F461D-B614-4499-B5A3-F6681D2EE4DB}', '{A141BD7C-C0B6-4090-867F-1D45F9B4BAC2}', 'Mina', 'sujanasaha27@gmail.com', '2019-12-04'),
('{E62A3060-A47F-4AD3-B3C7-C49C7B389CBE}', '{696E2AA1-7B89-4ED9-97B3-80AD8127400A}', '{380652C6-4FC6-481B-969B-8890C2C90243}', '{3432A02B-36B9-4CE8-9A65-D986B6132E76}', 'a', 'sujanasaha27@gmail.com', '2019-12-04'),
('{FC43DC9D-A4C4-4291-82AA-508678E5933A}', '{696E2AA1-7B89-4ED9-97B3-80AD8127400A}', '{D05750C9-632F-49C2-B493-6134EB06E2C4}', '{648556B9-5DF3-46CF-9BFC-9A34A18FFC71}', 'b', 'sujanasaha27@gmail.com', '2019-12-04'),
('{9E6973E3-47A7-424A-A5BE-6DB6B54F1278}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{F39D99E6-6B76-4008-ADB5-FAC62F144BD8}', '{17679033-408A-4746-9887-E7CDD2F56BF0}', 'Agree', 'razu@gmail.com', '2019-12-11'),
('{EAB1F2E1-E329-4F31-942D-B8237D932E47}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{F39D99E6-6B76-4008-ADB5-FAC62F144BD8}', '{EBE42549-894B-478A-9D45-A9EBAEDA4674}', 'Agree', 'razu@gmail.com', '2019-12-11'),
('{19C1F0FB-E222-41AA-845E-FE8B6644B160}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{F39D99E6-6B76-4008-ADB5-FAC62F144BD8}', '{D84E3692-B8FA-41C4-AA04-A1BF5780B592}', 'Agree', 'razu@gmail.com', '2019-12-11'),
('{A5C1E01E-437F-438B-8DAF-1D0876C403D7}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{F39D99E6-6B76-4008-ADB5-FAC62F144BD8}', '{3A8E425F-C21C-4590-9353-9795FC30307A}', 'Agree', 'razu@gmail.com', '2019-12-11'),
('{ED28D2CF-B236-4396-AE48-485BA3B8E48E}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{F39D99E6-6B76-4008-ADB5-FAC62F144BD8}', '{A4FFB8E8-72A8-4045-9D55-4FC9CDFC2364}', 'Agree', 'razu@gmail.com', '2019-12-11'),
('{40E3C408-2A69-45B1-BFFD-A853819269B3}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{F39D99E6-6B76-4008-ADB5-FAC62F144BD8}', '{FFCB3EB9-C1DA-46F8-87D5-4D2D253AA16A}', 'Agree', 'razu@gmail.com', '2019-12-11'),
('{5B25FC2E-E036-42DB-BD4C-55E2A60A2E08}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{0E33D222-2447-4F4D-9FA1-B9C5F3792D59}', '{B5D1D335-4F20-4C02-9761-3B7FBA6A99B3}', 'Disagree', 'razu@gmail.com', '2019-12-11'),
('{8C122967-40B2-484C-9413-C22F78FC2974}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{F39D99E6-6B76-4008-ADB5-FAC62F144BD8}', '{BC81A8D0-F65F-420C-9CAA-8030D6072AC3}', 'Agree', 'razu@gmail.com', '2019-12-11'),
('{D9DC80E0-B037-42F2-A81D-411871481A05}', '{45F45716-223E-4401-A0C2-34AAF1B6B48B}', '{FE9A7208-2922-4FE6-87BC-A644F1373BE1}', '{2CBF4645-76C6-4166-9D4A-D21B15308DB3}', 'Junior Year', 'mina@gmail.com', '2019-12-12'),
('{B466FDEB-FC56-496B-952E-8E1CAE1FFAB7}', '{45F45716-223E-4401-A0C2-34AAF1B6B48B}', '{FE748943-2508-427D-BD0A-4A0F8783AE03}', '{8BC11171-9AE6-4FFB-B271-D34C74E2F74B}', 'Female', 'mina@gmail.com', '2019-12-12'),
('{E8B23EDE-B8BD-4690-9D29-20FF20B27199}', '{45F45716-223E-4401-A0C2-34AAF1B6B48B}', '{FE748943-2508-427D-BD0A-4A0F8783AE03}', '{BEA9B9BE-E998-49CC-859F-D1E24C179C3D}', '19 â€“ 25 years', 'mina@gmail.com', '2019-12-12'),
('{1E2DD77B-FE18-4EE2-8ECA-FBF85A3E0211}', '{45F45716-223E-4401-A0C2-34AAF1B6B48B}', '{FE748943-2508-427D-BD0A-4A0F8783AE03}', '{993F60CF-A40E-42F2-A30C-E99658EBB538}', 'Laboratory', 'mina@gmail.com', '2019-12-12'),
('{C87E5F91-848E-46F6-89DB-CF770C174E7C}', '{45F45716-223E-4401-A0C2-34AAF1B6B48B}', '{7B36AE1F-6F1F-403D-98AE-EB6384E7C590}', '{045465A7-D46F-4BFB-AB5B-ACD8FDEDEA85}', 'Yes', 'mina@gmail.com', '2019-12-12'),
('{57876204-8862-4C47-B378-9D3859228CB4}', '{45F45716-223E-4401-A0C2-34AAF1B6B48B}', '{FE748943-2508-427D-BD0A-4A0F8783AE03}', '{5BD9182E-2832-4EBB-B7F4-5C8FF47AA968}', 'Satisfied', 'mina@gmail.com', '2019-12-12'),
('{84FB3CBF-04B0-40BE-B6EF-A3E0DA93C9C5}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{F39D99E6-6B76-4008-ADB5-FAC62F144BD8}', '{17679033-408A-4746-9887-E7CDD2F56BF0}', 'Agree', 'razu@gmail.com', '2019-12-12'),
('{A3AA32BB-63C9-40FF-B8EE-8FCC0DAFE551}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{F39D99E6-6B76-4008-ADB5-FAC62F144BD8}', '{EBE42549-894B-478A-9D45-A9EBAEDA4674}', 'Agree', 'razu@gmail.com', '2019-12-12'),
('{202BF7A0-956B-4230-91F5-C2C9F34F92CC}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{F39D99E6-6B76-4008-ADB5-FAC62F144BD8}', '{D84E3692-B8FA-41C4-AA04-A1BF5780B592}', 'Agree', 'razu@gmail.com', '2019-12-12'),
('{32E307F9-69F3-46F0-9576-E449A750CFED}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{F39D99E6-6B76-4008-ADB5-FAC62F144BD8}', '{3A8E425F-C21C-4590-9353-9795FC30307A}', 'Agree', 'razu@gmail.com', '2019-12-12'),
('{62CF8CDF-D21B-4BCD-B4FC-FFDAF84F291C}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{F39D99E6-6B76-4008-ADB5-FAC62F144BD8}', '{A4FFB8E8-72A8-4045-9D55-4FC9CDFC2364}', 'Agree', 'razu@gmail.com', '2019-12-12'),
('{F33C418A-F872-4700-92D1-2B4E7ED125C7}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{F39D99E6-6B76-4008-ADB5-FAC62F144BD8}', '{FFCB3EB9-C1DA-46F8-87D5-4D2D253AA16A}', 'Agree', 'razu@gmail.com', '2019-12-12'),
('{51C48090-1361-4413-BC35-82FF10209B49}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{0E33D222-2447-4F4D-9FA1-B9C5F3792D59}', '{B5D1D335-4F20-4C02-9761-3B7FBA6A99B3}', 'Disagree', 'razu@gmail.com', '2019-12-12'),
('{88D98ED5-BAEA-43D1-BA5C-4D8AFC00672E}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{F39D99E6-6B76-4008-ADB5-FAC62F144BD8}', '{BC81A8D0-F65F-420C-9CAA-8030D6072AC3}', 'Agree', 'razu@gmail.com', '2019-12-12'),
('{39F507D4-2855-4F90-B3AB-5E19E6E11DC2}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{F39D99E6-6B76-4008-ADB5-FAC62F144BD8}', '{17679033-408A-4746-9887-E7CDD2F56BF0}', 'Agree', 'razu@gmail.com', '2019-12-12'),
('{424269C6-E96D-4536-A776-7AB88471D3FE}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{F39D99E6-6B76-4008-ADB5-FAC62F144BD8}', '{EBE42549-894B-478A-9D45-A9EBAEDA4674}', 'Agree', 'razu@gmail.com', '2019-12-12'),
('{051B88EC-AA7B-43BD-A9DF-880BFCF9BB37}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{F39D99E6-6B76-4008-ADB5-FAC62F144BD8}', '{D84E3692-B8FA-41C4-AA04-A1BF5780B592}', 'Agree', 'razu@gmail.com', '2019-12-12'),
('{A07013C8-F3B2-4B1D-90B5-A21CA45A802E}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{F39D99E6-6B76-4008-ADB5-FAC62F144BD8}', '{3A8E425F-C21C-4590-9353-9795FC30307A}', 'Agree', 'razu@gmail.com', '2019-12-12'),
('{D5E8C510-CCC5-464E-A956-71354A102D2C}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{F39D99E6-6B76-4008-ADB5-FAC62F144BD8}', '{A4FFB8E8-72A8-4045-9D55-4FC9CDFC2364}', 'Agree', 'razu@gmail.com', '2019-12-12'),
('{3413254D-C11B-4D21-990D-F704FD35F7AE}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{F39D99E6-6B76-4008-ADB5-FAC62F144BD8}', '{FFCB3EB9-C1DA-46F8-87D5-4D2D253AA16A}', 'Agree', 'razu@gmail.com', '2019-12-12'),
('{2ADE0DCC-6B61-4951-B74F-3B980027B8D1}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{C02F03DD-1EAA-4005-B300-790D6569E27C}', '{D55B55E7-8C73-4F69-AFDF-03727C9749CC}', 'Strongly agree', 'razu@gmail.com', '2019-12-12'),
('{E9FD114F-DDF8-46D1-935D-CC1F0005AAD6}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{F39D99E6-6B76-4008-ADB5-FAC62F144BD8}', '{BC81A8D0-F65F-420C-9CAA-8030D6072AC3}', 'Agree', 'razu@gmail.com', '2019-12-12'),
('{50CC63A7-B92B-4372-89FE-54CE69885F26}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{F39D99E6-6B76-4008-ADB5-FAC62F144BD8}', '{17679033-408A-4746-9887-E7CDD2F56BF0}', 'Agree', 'razu@gmail.com', '2019-12-12'),
('{655AB601-9827-419F-B526-348848A374CB}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{F39D99E6-6B76-4008-ADB5-FAC62F144BD8}', '{EBE42549-894B-478A-9D45-A9EBAEDA4674}', 'Agree', 'razu@gmail.com', '2019-12-12'),
('{42D78037-50A0-4E51-9DB1-F4465CE782EC}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{F39D99E6-6B76-4008-ADB5-FAC62F144BD8}', '{D84E3692-B8FA-41C4-AA04-A1BF5780B592}', 'Agree', 'razu@gmail.com', '2019-12-12'),
('{F848D0A9-8360-4C3E-8CD3-14CF355B46AA}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{F39D99E6-6B76-4008-ADB5-FAC62F144BD8}', '{3A8E425F-C21C-4590-9353-9795FC30307A}', 'Agree', 'razu@gmail.com', '2019-12-12'),
('{2236DE8A-4AEB-481F-9527-4223912D47DB}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{F39D99E6-6B76-4008-ADB5-FAC62F144BD8}', '{A4FFB8E8-72A8-4045-9D55-4FC9CDFC2364}', 'Agree', 'razu@gmail.com', '2019-12-12'),
('{780FA217-A26F-4933-9E54-E870B019A5D5}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{F39D99E6-6B76-4008-ADB5-FAC62F144BD8}', '{FFCB3EB9-C1DA-46F8-87D5-4D2D253AA16A}', 'Agree', 'razu@gmail.com', '2019-12-12'),
('{5806F7FD-16E8-4FA6-9549-F587A3A9BBB2}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{C02F03DD-1EAA-4005-B300-790D6569E27C}', '{E8658BA6-450D-485E-A5F3-2EA2778894B8}', 'Strongly agree', 'razu@gmail.com', '2019-12-12'),
('{6ECACF8D-2D60-4D55-83FB-3062605FB5E9}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{F39D99E6-6B76-4008-ADB5-FAC62F144BD8}', '{02F19900-2C8A-409F-98A6-0155C222DA7B}', 'Agree', 'razu@gmail.com', '2019-12-12'),
('{6CE78A95-1966-429E-8B6A-F2B8CFCC6853}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{F39D99E6-6B76-4008-ADB5-FAC62F144BD8}', '{BC81A8D0-F65F-420C-9CAA-8030D6072AC3}', 'Agree', 'razu@gmail.com', '2019-12-12'),
('{502BBD2C-C759-4AF4-92F8-09F9EB254647}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{F39D99E6-6B76-4008-ADB5-FAC62F144BD8}', '{17679033-408A-4746-9887-E7CDD2F56BF0}', 'Agree', 'razu@gmail.com', '2019-12-12'),
('{F628143D-8FBE-4AA4-8607-97CC044155A5}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{F39D99E6-6B76-4008-ADB5-FAC62F144BD8}', '{EBE42549-894B-478A-9D45-A9EBAEDA4674}', 'Agree', 'razu@gmail.com', '2019-12-12'),
('{70965DC6-E9C2-40F4-9D94-4977824DC5F7}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{F39D99E6-6B76-4008-ADB5-FAC62F144BD8}', '{D84E3692-B8FA-41C4-AA04-A1BF5780B592}', 'Agree', 'razu@gmail.com', '2019-12-12'),
('{EC54C0CD-DD3C-4C2D-B825-27EF080AB594}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{F39D99E6-6B76-4008-ADB5-FAC62F144BD8}', '{3A8E425F-C21C-4590-9353-9795FC30307A}', 'Agree', 'razu@gmail.com', '2019-12-12'),
('{F376A869-8B94-4A0F-A9F2-6577607E2EC6}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{F39D99E6-6B76-4008-ADB5-FAC62F144BD8}', '{A4FFB8E8-72A8-4045-9D55-4FC9CDFC2364}', 'Agree', 'razu@gmail.com', '2019-12-12'),
('{DCEF6C96-7871-4BD3-956C-076A6466FFCA}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{F39D99E6-6B76-4008-ADB5-FAC62F144BD8}', '{FFCB3EB9-C1DA-46F8-87D5-4D2D253AA16A}', 'Agree', 'razu@gmail.com', '2019-12-12'),
('{5B00E894-D0FE-4CCC-8E85-CFC56BDA7411}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{0E33D222-2447-4F4D-9FA1-B9C5F3792D59}', '{B5D1D335-4F20-4C02-9761-3B7FBA6A99B3}', 'Disagree', 'razu@gmail.com', '2019-12-12'),
('{40E15090-65B6-4A5C-99DB-8B6C876F39DB}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{F39D99E6-6B76-4008-ADB5-FAC62F144BD8}', '{BC81A8D0-F65F-420C-9CAA-8030D6072AC3}', 'Agree', 'razu@gmail.com', '2019-12-12'),
('{75545BA4-016B-494B-A4B0-1A55302EAF9F}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{F39D99E6-6B76-4008-ADB5-FAC62F144BD8}', '{17679033-408A-4746-9887-E7CDD2F56BF0}', 'Agree', 'razu@gmail.com', '2019-12-12'),
('{0AD6D128-C59E-4BA6-801E-C0543FDCE401}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{C02F03DD-1EAA-4005-B300-790D6569E27C}', '{9178A43F-1F29-40AE-9679-3D492080786C}', 'Strongly agree', 'razu@gmail.com', '2019-12-12'),
('{B67035A4-CA46-4C98-9EC7-35040985DD4D}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{F39D99E6-6B76-4008-ADB5-FAC62F144BD8}', '{D84E3692-B8FA-41C4-AA04-A1BF5780B592}', 'Agree', 'razu@gmail.com', '2019-12-12'),
('{AA565EAF-D2B6-485F-9E37-37A2C4176A70}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{F39D99E6-6B76-4008-ADB5-FAC62F144BD8}', '{3A8E425F-C21C-4590-9353-9795FC30307A}', 'Agree', 'razu@gmail.com', '2019-12-12'),
('{8F8EC59B-8660-41C3-897F-4E84D1E681AD}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{207A4BEB-3B28-4D7F-A62E-1E0C3D05C331}', '{54742919-61CB-4AE6-852F-E39CE7C51DF6}', 'Neutral', 'razu@gmail.com', '2019-12-12'),
('{8BF8A978-37F8-4656-B1C0-A23F67762C48}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{F39D99E6-6B76-4008-ADB5-FAC62F144BD8}', '{FFCB3EB9-C1DA-46F8-87D5-4D2D253AA16A}', 'Agree', 'razu@gmail.com', '2019-12-12'),
('{AD816CD0-E24A-4BCF-B5C2-D4B9FF690E96}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{207A4BEB-3B28-4D7F-A62E-1E0C3D05C331}', '{D30517A8-8E51-4B84-8BD7-C27E0D294E16}', 'Neutral', 'razu@gmail.com', '2019-12-12'),
('{77337D9A-A381-4418-9344-24282F3F1080}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{F39D99E6-6B76-4008-ADB5-FAC62F144BD8}', '{BC81A8D0-F65F-420C-9CAA-8030D6072AC3}', 'Agree', 'razu@gmail.com', '2019-12-12'),
('{2801F7EA-4E39-4ADB-8FD9-31D4AB7219E8}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{C02F03DD-1EAA-4005-B300-790D6569E27C}', '{0FF5EF6E-2259-45B7-89EF-5658390C0E84}', 'Strongly agree', 'razu@gmail.com', '2019-12-12'),
('{4BCA1DF1-C489-47D4-A5E0-87AC847C9494}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{F39D99E6-6B76-4008-ADB5-FAC62F144BD8}', '{EBE42549-894B-478A-9D45-A9EBAEDA4674}', 'Agree', 'razu@gmail.com', '2019-12-12'),
('{90418E6F-1F08-4E95-9EF4-7D57F422E128}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{F39D99E6-6B76-4008-ADB5-FAC62F144BD8}', '{D84E3692-B8FA-41C4-AA04-A1BF5780B592}', 'Agree', 'razu@gmail.com', '2019-12-12'),
('{12342CB9-BA39-498D-A5CC-36064CB54514}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{C02F03DD-1EAA-4005-B300-790D6569E27C}', '{6200A36A-DBCB-452C-85AD-67F49660D4A9}', 'Strongly agree', 'razu@gmail.com', '2019-12-12'),
('{9C2BE633-156E-4C2B-8EF8-B80D547D8CCF}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{207A4BEB-3B28-4D7F-A62E-1E0C3D05C331}', '{54742919-61CB-4AE6-852F-E39CE7C51DF6}', 'Neutral', 'razu@gmail.com', '2019-12-12'),
('{4CB98BE9-3AFD-4CDD-AF4A-8F00457CF09D}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{0E33D222-2447-4F4D-9FA1-B9C5F3792D59}', '{52B20E0E-D3E9-4D23-95D0-BE3898006310}', 'Disagree', 'razu@gmail.com', '2019-12-12'),
('{6BD41F27-4EE2-4872-A91A-7487AAADF2E0}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{207A4BEB-3B28-4D7F-A62E-1E0C3D05C331}', '{D30517A8-8E51-4B84-8BD7-C27E0D294E16}', 'Neutral', 'razu@gmail.com', '2019-12-12'),
('{1C36115D-5466-4D2D-8B56-EFE63375D894}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{F39D99E6-6B76-4008-ADB5-FAC62F144BD8}', '{BC81A8D0-F65F-420C-9CAA-8030D6072AC3}', 'Agree', 'razu@gmail.com', '2019-12-12'),
('{ADD962B8-7648-4B14-A123-16FBAD850C4F}', '{0B359845-6D5D-4AB7-9871-3195F1A9C946}', '{1230CA00-61A1-430B-A042-7AA307A6EDCD}', '{6738BC7A-F868-4FB3-A3D8-1869AE525254}', 'Always', 'sujanasaha27@gmail.com', '2019-12-12'),
('{E40E74AC-BB39-4F2F-9DF3-140EEBBA9DC7}', '{0B359845-6D5D-4AB7-9871-3195F1A9C946}', '{1230CA00-61A1-430B-A042-7AA307A6EDCD}', '{B9B353AE-B48D-48F5-B768-4422A988D05F}', 'Always', 'sujanasaha27@gmail.com', '2019-12-12'),
('{BB94C946-058F-4CC2-8C99-22AA52B96419}', '{0B359845-6D5D-4AB7-9871-3195F1A9C946}', '{1230CA00-61A1-430B-A042-7AA307A6EDCD}', '{63EEC587-E515-4366-ABAA-169F8AF4E4C9}', 'Always', 'sujanasaha27@gmail.com', '2019-12-12'),
('{148E2571-8F22-4D23-AF0D-EB4BDCBDFE77}', '{0B359845-6D5D-4AB7-9871-3195F1A9C946}', '{1230CA00-61A1-430B-A042-7AA307A6EDCD}', '{DC25D761-230D-4DDE-B1AD-8619825842B2}', 'Always', 'sujanasaha27@gmail.com', '2019-12-12'),
('{D20CD89F-D99B-45EC-BABD-9BFB3977443C}', '{A70D8B85-086C-4000-BE94-688F9AA3B09D}', '{CA6F461D-B614-4499-B5A3-F6681D2EE4DB}', '{FE6ACD40-0E08-4935-A9BE-90D8DA817CEF}', '9:00 A.M.', 'tina27@gmail.com', '2019-12-12'),
('{2BFBC394-7E38-43F4-A1FF-DF6E1A20DA33}', '{A70D8B85-086C-4000-BE94-688F9AA3B09D}', '{CA6F461D-B614-4499-B5A3-F6681D2EE4DB}', '{F4081BA9-1CF4-4EE8-87B8-DBB2F1795D5E}', 'morning', 'tina27@gmail.com', '2019-12-12'),
('{5028500D-D9D6-40F9-8D64-FC18CCF61CB6}', '{A70D8B85-086C-4000-BE94-688F9AA3B09D}', '{CA6F461D-B614-4499-B5A3-F6681D2EE4DB}', '{74F74D13-DDE2-44E7-8811-7E686D0B6935}', 'rain', 'tina27@gmail.com', '2019-12-12'),
('{44007A0E-10C4-4328-BEC8-86DD8ED8D2AB}', '{A70D8B85-086C-4000-BE94-688F9AA3B09D}', '{CA6F461D-B614-4499-B5A3-F6681D2EE4DB}', '{93BE39EA-6B10-4183-BF97-1DDD44F4A04D}', 'good', 'tina27@gmail.com', '2019-12-12'),
('{837CE451-59B0-4BB9-8151-58FEDA17E4B7}', '{A70D8B85-086C-4000-BE94-688F9AA3B09D}', '{CA6F461D-B614-4499-B5A3-F6681D2EE4DB}', '{A141BD7C-C0B6-4090-867F-1D45F9B4BAC2}', 'Mina', 'tina27@gmail.com', '2019-12-12'),
('{62018E61-5880-4149-907D-2FEC8068E914}', '{A70D8B85-086C-4000-BE94-688F9AA3B09D}', '{8B5D42FD-5781-4F16-BC4E-B0C20A4E172E}', '{6DE5083F-6550-4D27-B026-A2313E36DA6F}', '3:00 P.M.', 'tina27@gmail.com', '2019-12-12'),
('{5A859295-3D75-4956-9BD9-490F0D6C39C0}', '{A70D8B85-086C-4000-BE94-688F9AA3B09D}', '{8B5D42FD-5781-4F16-BC4E-B0C20A4E172E}', '{25CA22CC-00B4-41A8-B18F-F733A9224FCB}', 'night', 'tina27@gmail.com', '2019-12-12'),
('{F099AEDB-5771-4316-BCFC-C17F0CF77493}', '{A70D8B85-086C-4000-BE94-688F9AA3B09D}', '{CA6F461D-B614-4499-B5A3-F6681D2EE4DB}', '{93BE39EA-6B10-4183-BF97-1DDD44F4A04D}', 'good', 'tina27@gmail.com', '2019-12-12'),
('{8EC3FB5B-7A88-4494-924F-0AE182DB6711}', '{A70D8B85-086C-4000-BE94-688F9AA3B09D}', '{8B5D42FD-5781-4F16-BC4E-B0C20A4E172E}', '{F1BA446C-654D-46CA-B2EA-6A46F2756571}', 'Razu', 'tina27@gmail.com', '2019-12-12'),
('{4F546B96-817E-432E-91E7-942DECAAF2BC}', '{0B359845-6D5D-4AB7-9871-3195F1A9C946}', '{F878CE90-010C-4C8E-9BBD-3CFEE873C327}', '{EF474330-2CB6-4629-983F-6E340088EA54}', 'Sometimes', 'tina27@gmail.com', '2019-12-12'),
('{287C0722-0BF6-4DEA-9CC3-BE00C6B1CFDA}', '{0B359845-6D5D-4AB7-9871-3195F1A9C946}', '{156248D2-1860-4E9E-B6A1-7FDFE5194C70}', '{F10D7E12-7FF8-4EF3-BE7A-52574CB6416C}', 'Usually', 'tina27@gmail.com', '2019-12-12'),
('{937F981D-2ED2-4231-9883-0839DC36079B}', '{0B359845-6D5D-4AB7-9871-3195F1A9C946}', '{1230CA00-61A1-430B-A042-7AA307A6EDCD}', '{63EEC587-E515-4366-ABAA-169F8AF4E4C9}', 'Always', 'tina27@gmail.com', '2019-12-12'),
('{9CBD020F-5303-4004-9394-0650AC7F7BDC}', '{0B359845-6D5D-4AB7-9871-3195F1A9C946}', '{156248D2-1860-4E9E-B6A1-7FDFE5194C70}', '{A52CD82A-686A-4445-A915-FB0F0EA043B6}', 'Usually', 'tina27@gmail.com', '2019-12-12'),
('{EB6F91A0-184C-419C-B82C-354CAA3C2D18}', '{0B359845-6D5D-4AB7-9871-3195F1A9C946}', '{156248D2-1860-4E9E-B6A1-7FDFE5194C70}', '{28470122-A9BC-463D-8997-1667556A58BA}', 'Usually', 'tina27@gmail.com', '2019-12-12'),
('{FDBEF858-4E59-446B-909F-ECE0D52AB4D4}', '{0B359845-6D5D-4AB7-9871-3195F1A9C946}', '{1230CA00-61A1-430B-A042-7AA307A6EDCD}', '{B9B353AE-B48D-48F5-B768-4422A988D05F}', 'Always', 'tina27@gmail.com', '2019-12-12'),
('{BF680FB4-F21C-41D8-B496-68F3C5D81F65}', '{0B359845-6D5D-4AB7-9871-3195F1A9C946}', '{1230CA00-61A1-430B-A042-7AA307A6EDCD}', '{63EEC587-E515-4366-ABAA-169F8AF4E4C9}', 'Always', 'tina27@gmail.com', '2019-12-12'),
('{3BE29137-9CAF-4949-9DB5-466BD6418B55}', '{0B359845-6D5D-4AB7-9871-3195F1A9C946}', '{156248D2-1860-4E9E-B6A1-7FDFE5194C70}', '{A52CD82A-686A-4445-A915-FB0F0EA043B6}', 'Usually', 'tina27@gmail.com', '2019-12-12'),
('{DCFFE9F4-1A6A-4F2A-B913-A97C531110C9}', '{0B359845-6D5D-4AB7-9871-3195F1A9C946}', '{F878CE90-010C-4C8E-9BBD-3CFEE873C327}', '{EF474330-2CB6-4629-983F-6E340088EA54}', 'Sometimes', 'tina27@gmail.com', '2019-12-12'),
('{6A1C39B9-DBAB-4036-9525-6793535DE719}', '{0B359845-6D5D-4AB7-9871-3195F1A9C946}', '{156248D2-1860-4E9E-B6A1-7FDFE5194C70}', '{F10D7E12-7FF8-4EF3-BE7A-52574CB6416C}', 'Usually', 'tina27@gmail.com', '2019-12-12'),
('{207DF4D6-189B-44F5-849F-FE2308F4103E}', '{0B359845-6D5D-4AB7-9871-3195F1A9C946}', '{1230CA00-61A1-430B-A042-7AA307A6EDCD}', '{63EEC587-E515-4366-ABAA-169F8AF4E4C9}', 'Always', 'tina27@gmail.com', '2019-12-12'),
('{57B237DA-0DF8-414E-BF1C-2D32A5AFD3E7}', '{0B359845-6D5D-4AB7-9871-3195F1A9C946}', '{F878CE90-010C-4C8E-9BBD-3CFEE873C327}', '{340E9023-4FDE-4AC2-BAD9-41878DE27B32}', 'Sometimes', 'tina27@gmail.com', '2019-12-12'),
('{58CC67DC-6B73-4065-95F2-13BA05A176A8}', '{0B359845-6D5D-4AB7-9871-3195F1A9C946}', '{156248D2-1860-4E9E-B6A1-7FDFE5194C70}', '{28470122-A9BC-463D-8997-1667556A58BA}', 'Usually', 'tina27@gmail.com', '2019-12-12'),
('{E6C73A26-FC0A-4B57-BED4-F3818A35C238}', '{0B359845-6D5D-4AB7-9871-3195F1A9C946}', '{156248D2-1860-4E9E-B6A1-7FDFE5194C70}', '{F10D7E12-7FF8-4EF3-BE7A-52574CB6416C}', 'Usually', 'tina27@gmail.com', '2019-12-12'),
('{84D87350-9A82-483F-9411-6A24BC4DF211}', '{0B359845-6D5D-4AB7-9871-3195F1A9C946}', '{156248D2-1860-4E9E-B6A1-7FDFE5194C70}', '{3633A8B5-4288-4D23-8303-A26EA002FF5D}', 'Usually', 'tina27@gmail.com', '2019-12-12'),
('{8403C100-62A3-4017-A4C6-E6BDDC3A0785}', '{0B359845-6D5D-4AB7-9871-3195F1A9C946}', '{1230CA00-61A1-430B-A042-7AA307A6EDCD}', '{DC25D761-230D-4DDE-B1AD-8619825842B2}', 'Always', 'tina27@gmail.com', '2019-12-12'),
('{83C98A75-7D67-432E-BE54-6E376AEB346F}', '{0B359845-6D5D-4AB7-9871-3195F1A9C946}', '{1230CA00-61A1-430B-A042-7AA307A6EDCD}', '{6738BC7A-F868-4FB3-A3D8-1869AE525254}', 'Always', 'tina27@gmail.com', '2019-12-12'),
('{D879B2A3-1162-4EDA-BDB0-00AC77441E4F}', '{0B359845-6D5D-4AB7-9871-3195F1A9C946}', '{1230CA00-61A1-430B-A042-7AA307A6EDCD}', '{B9B353AE-B48D-48F5-B768-4422A988D05F}', 'Always', 'tina27@gmail.com', '2019-12-12'),
('{7DFEE11B-6D94-438A-BF91-306E28663528}', '{0B359845-6D5D-4AB7-9871-3195F1A9C946}', '{1230CA00-61A1-430B-A042-7AA307A6EDCD}', '{63EEC587-E515-4366-ABAA-169F8AF4E4C9}', 'Always', 'tina27@gmail.com', '2019-12-12'),
('{4548472E-321B-425C-8FC9-CF0D2D6E9F5D}', '{0B359845-6D5D-4AB7-9871-3195F1A9C946}', '{1230CA00-61A1-430B-A042-7AA307A6EDCD}', '{DC25D761-230D-4DDE-B1AD-8619825842B2}', 'Always', 'tina27@gmail.com', '2019-12-12'),
('{8CF46C63-C143-4A7B-8C9E-F92973611FF6}', '{0B359845-6D5D-4AB7-9871-3195F1A9C946}', '{1230CA00-61A1-430B-A042-7AA307A6EDCD}', '{6738BC7A-F868-4FB3-A3D8-1869AE525254}', 'Always', 'tina27@gmail.com', '2019-12-12'),
('{85030912-FDFF-4D5F-8BD0-DD15898E2C59}', '{0B359845-6D5D-4AB7-9871-3195F1A9C946}', '{1230CA00-61A1-430B-A042-7AA307A6EDCD}', '{B9B353AE-B48D-48F5-B768-4422A988D05F}', 'Always', 'tina27@gmail.com', '2019-12-12'),
('{6903A134-4992-42C7-A768-E014D1981CA9}', '{0B359845-6D5D-4AB7-9871-3195F1A9C946}', '{1230CA00-61A1-430B-A042-7AA307A6EDCD}', '{63EEC587-E515-4366-ABAA-169F8AF4E4C9}', 'Always', 'tina27@gmail.com', '2019-12-12'),
('{F44D3C0A-106B-41B0-B00D-03734AC50516}', '{0B359845-6D5D-4AB7-9871-3195F1A9C946}', '{1230CA00-61A1-430B-A042-7AA307A6EDCD}', '{DC25D761-230D-4DDE-B1AD-8619825842B2}', 'Always', 'tina27@gmail.com', '2019-12-12'),
('{DF46D40C-36EF-4D51-9006-850488678D71}', '{0B359845-6D5D-4AB7-9871-3195F1A9C946}', '{156248D2-1860-4E9E-B6A1-7FDFE5194C70}', '{28470122-A9BC-463D-8997-1667556A58BA}', 'Usually', 'tina27@gmail.com', '2019-12-12'),
('{1092D39D-FB2A-4AE3-AB27-64CDDAE270E7}', '{0B359845-6D5D-4AB7-9871-3195F1A9C946}', '{156248D2-1860-4E9E-B6A1-7FDFE5194C70}', '{F10D7E12-7FF8-4EF3-BE7A-52574CB6416C}', 'Usually', 'tina27@gmail.com', '2019-12-12'),
('{B45F751C-8D62-4F0B-BFA1-897DBC1FF75A}', '{0B359845-6D5D-4AB7-9871-3195F1A9C946}', '{156248D2-1860-4E9E-B6A1-7FDFE5194C70}', '{3633A8B5-4288-4D23-8303-A26EA002FF5D}', 'Usually', 'tina27@gmail.com', '2019-12-12'),
('{711F2B0F-584C-4F03-947D-B679FCFC9292}', '{0B359845-6D5D-4AB7-9871-3195F1A9C946}', '{156248D2-1860-4E9E-B6A1-7FDFE5194C70}', '{A52CD82A-686A-4445-A915-FB0F0EA043B6}', 'Usually', 'tina27@gmail.com', '2019-12-12'),
('{1634B21E-76FA-4E44-B5B6-60E0A5C635AF}', '{4642FB29-3922-47A5-BE31-857E946D0AE9}', '{7C68E013-5CF5-476C-8494-F31346CEBA2F}', '{21D15F50-99F6-41AE-B9C3-80210AFECB19}', 'Usually', 'tina27@gmail.com', '2019-12-12'),
('{543F2DB4-E7EE-4ADB-8236-C88C6820F68A}', '{4642FB29-3922-47A5-BE31-857E946D0AE9}', '{7C68E013-5CF5-476C-8494-F31346CEBA2F}', '{9086EB58-A878-4B62-A0FF-4141BEBCEE4F}', 'Usually', 'tina27@gmail.com', '2019-12-12'),
('{48CD453D-5BCC-4F6F-9089-513F67DC535E}', '{4642FB29-3922-47A5-BE31-857E946D0AE9}', '{7C68E013-5CF5-476C-8494-F31346CEBA2F}', '{1C11D333-7EBB-4B60-8246-718A27EEB3E7}', 'Usually', 'tina27@gmail.com', '2019-12-12'),
('{A5BFF901-3063-4547-A9A1-6BC5E753088D}', '{4642FB29-3922-47A5-BE31-857E946D0AE9}', '{7C68E013-5CF5-476C-8494-F31346CEBA2F}', '{23E8F3F6-0F25-46AF-BBEA-6DDB2CA0C219}', 'Usually', 'tina27@gmail.com', '2019-12-12'),
('{3BFCACA0-92F0-4D37-A10F-37A3E656BC45}', '{4642FB29-3922-47A5-BE31-857E946D0AE9}', '{7C68E013-5CF5-476C-8494-F31346CEBA2F}', '{DC1F3F27-9CAD-452A-9581-A6DC432A7507}', 'Usually', 'tina27@gmail.com', '2019-12-12'),
('{CA1BDE6E-F2DF-4167-9A5C-778441871185}', '{4642FB29-3922-47A5-BE31-857E946D0AE9}', '{7C68E013-5CF5-476C-8494-F31346CEBA2F}', '{42C92AD2-EF3F-4E17-9AC5-3E16D7B7F25F}', 'Usually', 'tina27@gmail.com', '2019-12-12'),
('{DD02CFD1-2BB7-424A-B089-76179D5EC227}', '{4642FB29-3922-47A5-BE31-857E946D0AE9}', '{842EF113-2AB4-4409-9E48-3A76E862A950}', '{4F77F42F-422F-4081-8D1D-7C4EDB740584}', 'Always', 'tina27@gmail.com', '2019-12-12'),
('{32FE25B3-6D49-49D2-9FC6-9B9F83F04DEA}', '{4642FB29-3922-47A5-BE31-857E946D0AE9}', '{842EF113-2AB4-4409-9E48-3A76E862A950}', '{13B10B78-9607-45CA-9AD1-461E32D96CA2}', 'Always', 'tina27@gmail.com', '2019-12-12'),
('{CC889EBE-4D67-40F6-96C5-A33D713A078F}', '{4642FB29-3922-47A5-BE31-857E946D0AE9}', '{842EF113-2AB4-4409-9E48-3A76E862A950}', '{5C5CFFB9-5BEE-4C96-9908-522024FE0ABF}', 'Always', 'tina27@gmail.com', '2019-12-12'),
('{F1713560-D0CC-4141-B94E-23218EBB363F}', '{4642FB29-3922-47A5-BE31-857E946D0AE9}', '{842EF113-2AB4-4409-9E48-3A76E862A950}', '{26526B71-8498-488B-9BF9-E796EB2AFB8F}', 'Always', 'tina27@gmail.com', '2019-12-12'),
('{B85E6228-6249-42F1-8440-3E72F8901AA8}', '{4642FB29-3922-47A5-BE31-857E946D0AE9}', '{842EF113-2AB4-4409-9E48-3A76E862A950}', '{F3C8301A-2F4D-40EA-A0ED-226669F0F77B}', 'Always', 'tina27@gmail.com', '2019-12-12'),
('{B978E348-5A42-4A85-B1A3-B5752AF7A8DD}', '{4642FB29-3922-47A5-BE31-857E946D0AE9}', '{842EF113-2AB4-4409-9E48-3A76E862A950}', '{38149FB0-4EE6-4F01-8BAD-309D59BB6075}', 'Always', 'tina27@gmail.com', '2019-12-12'),
('{314D457C-BECE-472E-8251-09BE8518D8F8}', '{4642FB29-3922-47A5-BE31-857E946D0AE9}', '{7C68E013-5CF5-476C-8494-F31346CEBA2F}', '{21D15F50-99F6-41AE-B9C3-80210AFECB19}', 'Usually', 'tina27@gmail.com', '2019-12-12'),
('{D3491BDA-034D-4D42-A370-B0A9674D9079}', '{4642FB29-3922-47A5-BE31-857E946D0AE9}', '{9C5D9ABE-B898-40A0-984B-AB2C780F9D18}', '{1A77F285-9987-4931-A1BC-17E823138C04}', 'Sometimes', 'tina27@gmail.com', '2019-12-12'),
('{7883DACB-CE48-4A54-B718-6DF8B7146681}', '{4642FB29-3922-47A5-BE31-857E946D0AE9}', '{9C5D9ABE-B898-40A0-984B-AB2C780F9D18}', '{69CBBEB6-DCDA-44E7-ADF0-249062F542B1}', 'Sometimes', 'tina27@gmail.com', '2019-12-12'),
('{6EBC6C1D-D891-4057-84A1-C8A653CD87AE}', '{4642FB29-3922-47A5-BE31-857E946D0AE9}', '{7C68E013-5CF5-476C-8494-F31346CEBA2F}', '{23E8F3F6-0F25-46AF-BBEA-6DDB2CA0C219}', 'Usually', 'tina27@gmail.com', '2019-12-12'),
('{DB0054AC-6725-4EE8-899A-77D5DAD74897}', '{4642FB29-3922-47A5-BE31-857E946D0AE9}', '{7C68E013-5CF5-476C-8494-F31346CEBA2F}', '{42C92AD2-EF3F-4E17-9AC5-3E16D7B7F25F}', 'Usually', 'tina27@gmail.com', '2019-12-12'),
('{FE01A95C-7230-4E87-9D8B-6B022DF50EF2}', '{4642FB29-3922-47A5-BE31-857E946D0AE9}', '{842EF113-2AB4-4409-9E48-3A76E862A950}', '{4F77F42F-422F-4081-8D1D-7C4EDB740584}', 'Always', 'tina27@gmail.com', '2019-12-12'),
('{B39E0B23-2859-4828-87AC-E066E6DD26F8}', '{4642FB29-3922-47A5-BE31-857E946D0AE9}', '{842EF113-2AB4-4409-9E48-3A76E862A950}', '{13B10B78-9607-45CA-9AD1-461E32D96CA2}', 'Always', 'tina27@gmail.com', '2019-12-12'),
('{0ABD4261-6A24-4C6E-A91E-23BF848D0BF8}', '{4642FB29-3922-47A5-BE31-857E946D0AE9}', '{842EF113-2AB4-4409-9E48-3A76E862A950}', '{5C5CFFB9-5BEE-4C96-9908-522024FE0ABF}', 'Always', 'tina27@gmail.com', '2019-12-12'),
('{3E75A91A-76B2-476E-93D1-D746ED77D12C}', '{4642FB29-3922-47A5-BE31-857E946D0AE9}', '{842EF113-2AB4-4409-9E48-3A76E862A950}', '{26526B71-8498-488B-9BF9-E796EB2AFB8F}', 'Always', 'tina27@gmail.com', '2019-12-12'),
('{6D0552B8-D4C2-4370-925D-31E8C9E50793}', '{4642FB29-3922-47A5-BE31-857E946D0AE9}', '{842EF113-2AB4-4409-9E48-3A76E862A950}', '{F3C8301A-2F4D-40EA-A0ED-226669F0F77B}', 'Always', 'tina27@gmail.com', '2019-12-12'),
('{8B90DCD6-2939-4D95-9F95-6C7E9F8F9010}', '{4642FB29-3922-47A5-BE31-857E946D0AE9}', '{842EF113-2AB4-4409-9E48-3A76E862A950}', '{38149FB0-4EE6-4F01-8BAD-309D59BB6075}', 'Always', 'tina27@gmail.com', '2019-12-12'),
('{5359AF94-651A-4A9F-A56C-1426618CFD02}', '{4642FB29-3922-47A5-BE31-857E946D0AE9}', '{842EF113-2AB4-4409-9E48-3A76E862A950}', '{4F77F42F-422F-4081-8D1D-7C4EDB740584}', 'Always', 'tina27@gmail.com', '2019-12-12'),
('{A189FF41-8B91-4D7D-BFDA-3EF3F61B19FB}', '{4642FB29-3922-47A5-BE31-857E946D0AE9}', '{842EF113-2AB4-4409-9E48-3A76E862A950}', '{13B10B78-9607-45CA-9AD1-461E32D96CA2}', 'Always', 'tina27@gmail.com', '2019-12-12'),
('{3B988A6A-4A36-48B2-9100-FC1203A7BDEB}', '{4642FB29-3922-47A5-BE31-857E946D0AE9}', '{842EF113-2AB4-4409-9E48-3A76E862A950}', '{5C5CFFB9-5BEE-4C96-9908-522024FE0ABF}', 'Always', 'tina27@gmail.com', '2019-12-12'),
('{F22C7B5B-A146-4337-8D2D-8DE98B12D30A}', '{4642FB29-3922-47A5-BE31-857E946D0AE9}', '{842EF113-2AB4-4409-9E48-3A76E862A950}', '{26526B71-8498-488B-9BF9-E796EB2AFB8F}', 'Always', 'tina27@gmail.com', '2019-12-12'),
('{2F1BDC76-2C39-48C2-9D29-0E0E49690BEB}', '{4642FB29-3922-47A5-BE31-857E946D0AE9}', '{7C68E013-5CF5-476C-8494-F31346CEBA2F}', '{DC1F3F27-9CAD-452A-9581-A6DC432A7507}', 'Usually', 'tina27@gmail.com', '2019-12-12'),
('{C81DF6C0-8755-4390-BFB8-4F1211C396AB}', '{4642FB29-3922-47A5-BE31-857E946D0AE9}', '{7C68E013-5CF5-476C-8494-F31346CEBA2F}', '{42C92AD2-EF3F-4E17-9AC5-3E16D7B7F25F}', 'Usually', 'tina27@gmail.com', '2019-12-12'),
('{D926818B-EE34-42CC-B608-88126654D00B}', '{4642FB29-3922-47A5-BE31-857E946D0AE9}', '{826AE826-C1F0-4CA0-9F28-974046514CEC}', '{4241B55D-C4DD-47E0-B8EC-C1F09404034E}', 'Not at all', 'tina27@gmail.com', '2019-12-12'),
('{9761CD4E-15CA-4983-8464-95EDC541FDDC}', '{4642FB29-3922-47A5-BE31-857E946D0AE9}', '{9C5D9ABE-B898-40A0-984B-AB2C780F9D18}', '{1A77F285-9987-4931-A1BC-17E823138C04}', 'Sometimes', 'tina27@gmail.com', '2019-12-12'),
('{122BEAB6-7EDE-4434-B1D8-587E3BA56921}', '{4642FB29-3922-47A5-BE31-857E946D0AE9}', '{9C5D9ABE-B898-40A0-984B-AB2C780F9D18}', '{69CBBEB6-DCDA-44E7-ADF0-249062F542B1}', 'Sometimes', 'tina27@gmail.com', '2019-12-12'),
('{F033128B-F9A9-4B32-A272-126B2EDF51C5}', '{4642FB29-3922-47A5-BE31-857E946D0AE9}', '{826AE826-C1F0-4CA0-9F28-974046514CEC}', '{6299A310-2AEF-4AD7-B1B3-982464CD0532}', 'Not at all', 'tina27@gmail.com', '2019-12-12'),
('{D7C53F26-ECCE-45A2-AD20-5C8330424916}', '{4642FB29-3922-47A5-BE31-857E946D0AE9}', '{9C5D9ABE-B898-40A0-984B-AB2C780F9D18}', '{1B2C159B-7260-4874-A24C-FA7408E07D37}', 'Sometimes', 'tina27@gmail.com', '2019-12-12'),
('{0F385E45-C576-4B4D-A77F-DD27BE665529}', '{4642FB29-3922-47A5-BE31-857E946D0AE9}', '{826AE826-C1F0-4CA0-9F28-974046514CEC}', '{D7EE2EA5-A3E9-47B5-83CC-B35DE7F40607}', 'Not at all', 'tina27@gmail.com', '2019-12-12'),
('{A23EE737-EDC9-459F-8502-1C10127AFD60}', '{4642FB29-3922-47A5-BE31-857E946D0AE9}', '{9C5D9ABE-B898-40A0-984B-AB2C780F9D18}', '{1776E472-C5BB-40D1-95AA-4F8E850FE8D1}', 'Sometimes', 'tina27@gmail.com', '2019-12-12'),
('{D73A46AF-BCC6-4482-B08A-BDE24D0AC2B1}', '{4642FB29-3922-47A5-BE31-857E946D0AE9}', '{7C68E013-5CF5-476C-8494-F31346CEBA2F}', '{9086EB58-A878-4B62-A0FF-4141BEBCEE4F}', 'Usually', 'tina27@gmail.com', '2019-12-12'),
('{FB0BD4D3-CCDC-496E-9904-DA5E4E2839F3}', '{4642FB29-3922-47A5-BE31-857E946D0AE9}', '{7C68E013-5CF5-476C-8494-F31346CEBA2F}', '{1C11D333-7EBB-4B60-8246-718A27EEB3E7}', 'Usually', 'tina27@gmail.com', '2019-12-12'),
('{E202EDD8-D1BE-4D41-8708-5274523E8340}', '{4642FB29-3922-47A5-BE31-857E946D0AE9}', '{7C68E013-5CF5-476C-8494-F31346CEBA2F}', '{23E8F3F6-0F25-46AF-BBEA-6DDB2CA0C219}', 'Usually', 'tina27@gmail.com', '2019-12-12'),
('{E8D23BF5-47C4-4059-889D-F3D52EB0F0F3}', '{4642FB29-3922-47A5-BE31-857E946D0AE9}', '{7C68E013-5CF5-476C-8494-F31346CEBA2F}', '{DC1F3F27-9CAD-452A-9581-A6DC432A7507}', 'Usually', 'tina27@gmail.com', '2019-12-12'),
('{80E7B8A8-08F0-4D9D-A786-D836E9A2D024}', '{4642FB29-3922-47A5-BE31-857E946D0AE9}', '{7C68E013-5CF5-476C-8494-F31346CEBA2F}', '{42C92AD2-EF3F-4E17-9AC5-3E16D7B7F25F}', 'Usually', 'tina27@gmail.com', '2019-12-12'),
('{635A0CF2-C87F-4C6C-B9B7-AFE1C6ABD9B0}', '{4642FB29-3922-47A5-BE31-857E946D0AE9}', '{842EF113-2AB4-4409-9E48-3A76E862A950}', '{4F77F42F-422F-4081-8D1D-7C4EDB740584}', 'Always', 'tina27@gmail.com', '2019-12-12'),
('{90038CF5-3B36-4A5E-AB14-99D71D27BB48}', '{4642FB29-3922-47A5-BE31-857E946D0AE9}', '{842EF113-2AB4-4409-9E48-3A76E862A950}', '{13B10B78-9607-45CA-9AD1-461E32D96CA2}', 'Always', 'tina27@gmail.com', '2019-12-12'),
('{9FB4A30A-FFFC-40D8-B1A0-6ACCECEBF841}', '{4642FB29-3922-47A5-BE31-857E946D0AE9}', '{826AE826-C1F0-4CA0-9F28-974046514CEC}', '{FD570DA3-1F07-4301-B1E0-8B916AAF327D}', 'Not at all', 'tina27@gmail.com', '2019-12-12'),
('{9A765648-93DB-4DA0-985E-97131B2098FA}', '{4642FB29-3922-47A5-BE31-857E946D0AE9}', '{9C5D9ABE-B898-40A0-984B-AB2C780F9D18}', '{57A92B92-5F41-4DD9-83AA-581F7134EC58}', 'Sometimes', 'tina27@gmail.com', '2019-12-12'),
('{AC011468-7245-4907-B1EC-0210366A8997}', '{4642FB29-3922-47A5-BE31-857E946D0AE9}', '{9C5D9ABE-B898-40A0-984B-AB2C780F9D18}', '{1B2C159B-7260-4874-A24C-FA7408E07D37}', 'Sometimes', 'tina27@gmail.com', '2019-12-12'),
('{5B50D6C1-5B64-4B3E-8652-BDB4305AC749}', '{4642FB29-3922-47A5-BE31-857E946D0AE9}', '{9C5D9ABE-B898-40A0-984B-AB2C780F9D18}', '{F2E34804-CB4E-4680-B5BB-0882A22CB360}', 'Sometimes', 'tina27@gmail.com', '2019-12-12'),
('{DDFF149D-4777-4380-8317-E55C01F2E004}', '{03FA7E28-A239-4E38-BB17-F48891D225D9}', '{78FC27B8-D9D9-426C-9573-658165701EDC}', '{E787293B-C12D-485F-9645-4D85BC457851}', 'Sometimes', 'tina27@gmail.com', '2019-12-12'),
('{78358035-3ACB-425D-806D-A4AA02576F0F}', '{03FA7E28-A239-4E38-BB17-F48891D225D9}', '{5518CAAB-0BCE-4113-A91E-821CB5737E4A}', '{040FD81A-401A-419C-BBE9-0328CDAAC566}', 'Often', 'tina27@gmail.com', '2019-12-12'),
('{55F84F71-BC29-465C-8021-17CFA959CA89}', '{03FA7E28-A239-4E38-BB17-F48891D225D9}', '{78FC27B8-D9D9-426C-9573-658165701EDC}', '{6BB66B4D-8453-4967-B2A1-9395434B734C}', 'Sometimes', 'tina27@gmail.com', '2019-12-12'),
('{3D44CF41-5B48-4E63-9216-A30C80258F86}', '{03FA7E28-A239-4E38-BB17-F48891D225D9}', '{5518CAAB-0BCE-4113-A91E-821CB5737E4A}', '{A642E294-6BE4-4971-89BC-37EBAD51DBB1}', 'Often', 'tina27@gmail.com', '2019-12-12'),
('{E7D2C969-3DCC-4AA1-99E8-FA781E7E6424}', '{03FA7E28-A239-4E38-BB17-F48891D225D9}', '{5518CAAB-0BCE-4113-A91E-821CB5737E4A}', '{190BDACA-ED30-47EC-9421-9F4C44C1E18B}', 'Often', 'tina27@gmail.com', '2019-12-12'),
('{7E55C2C7-ADE8-4502-9424-F7E9BC84CE54}', '{03FA7E28-A239-4E38-BB17-F48891D225D9}', '{78FC27B8-D9D9-426C-9573-658165701EDC}', '{E787293B-C12D-485F-9645-4D85BC457851}', 'Sometimes', 'tina27@gmail.com', '2019-12-12'),
('{CDD41DCB-E555-4E99-A1F8-D7B41CCFE210}', '{03FA7E28-A239-4E38-BB17-F48891D225D9}', '{5518CAAB-0BCE-4113-A91E-821CB5737E4A}', '{040FD81A-401A-419C-BBE9-0328CDAAC566}', 'Often', 'tina27@gmail.com', '2019-12-12'),
('{6F1AF175-CE1E-45AB-9009-A26F827C77DD}', '{03FA7E28-A239-4E38-BB17-F48891D225D9}', '{78FC27B8-D9D9-426C-9573-658165701EDC}', '{6BB66B4D-8453-4967-B2A1-9395434B734C}', 'Sometimes', 'tina27@gmail.com', '2019-12-12'),
('{DB077057-2A71-4FC1-9215-8520AA8D570E}', '{03FA7E28-A239-4E38-BB17-F48891D225D9}', '{5518CAAB-0BCE-4113-A91E-821CB5737E4A}', '{A642E294-6BE4-4971-89BC-37EBAD51DBB1}', 'Often', 'tina27@gmail.com', '2019-12-12'),
('{816C721E-5C02-4207-A757-F8DEE07520AE}', '{03FA7E28-A239-4E38-BB17-F48891D225D9}', '{78FC27B8-D9D9-426C-9573-658165701EDC}', '{8410B92B-6CF0-4E84-A612-A7083AE779DB}', 'Sometimes', 'tina27@gmail.com', '2019-12-12'),
('{4F8F9D0B-6AF8-4862-9C42-7B81DBCBDC91}', '{03FA7E28-A239-4E38-BB17-F48891D225D9}', '{78FC27B8-D9D9-426C-9573-658165701EDC}', '{E787293B-C12D-485F-9645-4D85BC457851}', 'Sometimes', 'tina27@gmail.com', '2019-12-12'),
('{555B16A5-136F-4B75-BDD0-A74BC2516724}', '{03FA7E28-A239-4E38-BB17-F48891D225D9}', '{78FC27B8-D9D9-426C-9573-658165701EDC}', '{EEA36448-3271-4AC7-9A33-5EF02B35A1A8}', 'Sometimes', 'tina27@gmail.com', '2019-12-12'),
('{AAF5D5CA-CCCE-4A29-A337-6BFF3F8E46A8}', '{03FA7E28-A239-4E38-BB17-F48891D225D9}', '{78FC27B8-D9D9-426C-9573-658165701EDC}', '{6BB66B4D-8453-4967-B2A1-9395434B734C}', 'Sometimes', 'tina27@gmail.com', '2019-12-12'),
('{C019CC09-15AF-4B62-B1A4-BDED0E019B71}', '{03FA7E28-A239-4E38-BB17-F48891D225D9}', '{78FC27B8-D9D9-426C-9573-658165701EDC}', '{08F3AF2E-BD10-4766-AC65-18DB50FCDE18}', 'Sometimes', 'tina27@gmail.com', '2019-12-12'),
('{FA64C3BC-56C3-4A60-8D55-196A2E4AECCF}', '{03FA7E28-A239-4E38-BB17-F48891D225D9}', '{78FC27B8-D9D9-426C-9573-658165701EDC}', '{8410B92B-6CF0-4E84-A612-A7083AE779DB}', 'Sometimes', 'tina27@gmail.com', '2019-12-12'),
('{1E74A911-A124-4F14-84AC-2DCA16A525E0}', '{03FA7E28-A239-4E38-BB17-F48891D225D9}', '{78FC27B8-D9D9-426C-9573-658165701EDC}', '{E787293B-C12D-485F-9645-4D85BC457851}', 'Sometimes', 'tina27@gmail.com', '2019-12-12'),
('{F27E230F-E91A-4FEF-A47D-E034CD0509CF}', '{03FA7E28-A239-4E38-BB17-F48891D225D9}', '{78FC27B8-D9D9-426C-9573-658165701EDC}', '{EEA36448-3271-4AC7-9A33-5EF02B35A1A8}', 'Sometimes', 'tina27@gmail.com', '2019-12-12'),
('{D8667D23-E739-41CA-AE0E-B194D9ED6D6F}', '{03FA7E28-A239-4E38-BB17-F48891D225D9}', '{78FC27B8-D9D9-426C-9573-658165701EDC}', '{6BB66B4D-8453-4967-B2A1-9395434B734C}', 'Sometimes', 'tina27@gmail.com', '2019-12-12'),
('{18009A0B-446D-434B-A6DF-0A14382B9486}', '{03FA7E28-A239-4E38-BB17-F48891D225D9}', '{5518CAAB-0BCE-4113-A91E-821CB5737E4A}', '{A642E294-6BE4-4971-89BC-37EBAD51DBB1}', 'Often', 'tina27@gmail.com', '2019-12-12'),
('{EACA5017-59F1-4B5C-88FD-325B96FF89C4}', '{03FA7E28-A239-4E38-BB17-F48891D225D9}', '{5518CAAB-0BCE-4113-A91E-821CB5737E4A}', '{190BDACA-ED30-47EC-9421-9F4C44C1E18B}', 'Often', 'tina27@gmail.com', '2019-12-12'),
('{3008C97A-C3BE-479B-A22F-7CC68BCE56EA}', '{03FA7E28-A239-4E38-BB17-F48891D225D9}', '{887A967F-1D5F-400B-AE16-60DCAD5C109C}', '{A2A8CC26-DA0E-4AD5-A116-5E22D92CB934}', 'Always', 'tina27@gmail.com', '2019-12-12'),
('{58EB43C4-5006-4E14-AE0D-5D4FFBEE4FE7}', '{03FA7E28-A239-4E38-BB17-F48891D225D9}', '{0FC6733B-A1DE-479B-BDEB-2580FF51F410}', '{45E518F7-865C-481C-96E2-A215C8B98425}', 'Never', 'tina27@gmail.com', '2019-12-12'),
('{1C5BFE2C-AE09-459C-91F5-CCBADDDE4A94}', '{03FA7E28-A239-4E38-BB17-F48891D225D9}', '{887A967F-1D5F-400B-AE16-60DCAD5C109C}', '{44283C94-D7F4-4078-A7A7-4F05C03625DD}', 'Always', 'tina27@gmail.com', '2019-12-12'),
('{493CE860-EF46-418D-B748-2DB28A0B1E39}', '{03FA7E28-A239-4E38-BB17-F48891D225D9}', '{0FC6733B-A1DE-479B-BDEB-2580FF51F410}', '{984D6B4E-E86F-4A3A-AAB8-C4113CAC8329}', 'Never', 'tina27@gmail.com', '2019-12-12'),
('{1E281DAC-C7C3-4997-9E25-E142FCF9777E}', '{03FA7E28-A239-4E38-BB17-F48891D225D9}', '{5518CAAB-0BCE-4113-A91E-821CB5737E4A}', '{190BDACA-ED30-47EC-9421-9F4C44C1E18B}', 'Often', 'tina27@gmail.com', '2019-12-12'),
('{BC73EE4D-400F-474C-B8FA-360EB4B55F4F}', '{03FA7E28-A239-4E38-BB17-F48891D225D9}', '{5518CAAB-0BCE-4113-A91E-821CB5737E4A}', '{055428A9-3F6C-46F7-A816-F560922C51B5}', 'Often', 'tina27@gmail.com', '2019-12-12'),
('{07FF35CE-4028-4D1B-82B7-4387350611EF}', '{03FA7E28-A239-4E38-BB17-F48891D225D9}', '{78FC27B8-D9D9-426C-9573-658165701EDC}', '{EEA36448-3271-4AC7-9A33-5EF02B35A1A8}', 'Sometimes', 'tina27@gmail.com', '2019-12-12'),
('{61171D03-F85A-4934-966D-16F0709F359F}', '{03FA7E28-A239-4E38-BB17-F48891D225D9}', '{78FC27B8-D9D9-426C-9573-658165701EDC}', '{6BB66B4D-8453-4967-B2A1-9395434B734C}', 'Sometimes', 'tina27@gmail.com', '2019-12-12'),
('{4392B1E1-8ACB-4C91-B999-DCAC51EE1778}', '{03FA7E28-A239-4E38-BB17-F48891D225D9}', '{5518CAAB-0BCE-4113-A91E-821CB5737E4A}', '{A642E294-6BE4-4971-89BC-37EBAD51DBB1}', 'Often', 'tina27@gmail.com', '2019-12-12'),
('{02AE4ECB-A060-4733-9F9F-8421E8949198}', '{03FA7E28-A239-4E38-BB17-F48891D225D9}', '{78FC27B8-D9D9-426C-9573-658165701EDC}', '{8410B92B-6CF0-4E84-A612-A7083AE779DB}', 'Sometimes', 'tina27@gmail.com', '2019-12-12'),
('{420960BA-C72F-4241-9D89-1464D2DC8AD6}', '{03FA7E28-A239-4E38-BB17-F48891D225D9}', '{78FC27B8-D9D9-426C-9573-658165701EDC}', '{E787293B-C12D-485F-9645-4D85BC457851}', 'Sometimes', 'tina27@gmail.com', '2019-12-12'),
('{5C92179D-0415-4CBD-A252-305FB629DD21}', '{03FA7E28-A239-4E38-BB17-F48891D225D9}', '{5518CAAB-0BCE-4113-A91E-821CB5737E4A}', '{040FD81A-401A-419C-BBE9-0328CDAAC566}', 'Often', 'tina27@gmail.com', '2019-12-12'),
('{7108C7A6-BC07-49A1-90BB-B3479518FCB5}', '{03FA7E28-A239-4E38-BB17-F48891D225D9}', '{78FC27B8-D9D9-426C-9573-658165701EDC}', '{6BB66B4D-8453-4967-B2A1-9395434B734C}', 'Sometimes', 'tina27@gmail.com', '2019-12-12'),
('{CFD123EA-CBBB-49AB-959D-1B3B14D79CB0}', '{03FA7E28-A239-4E38-BB17-F48891D225D9}', '{5518CAAB-0BCE-4113-A91E-821CB5737E4A}', '{A642E294-6BE4-4971-89BC-37EBAD51DBB1}', 'Often', 'tina27@gmail.com', '2019-12-12'),
('{0184AD11-D9CB-4F07-8599-AAF127818557}', '{03FA7E28-A239-4E38-BB17-F48891D225D9}', '{5518CAAB-0BCE-4113-A91E-821CB5737E4A}', '{190BDACA-ED30-47EC-9421-9F4C44C1E18B}', 'Often', 'tina27@gmail.com', '2019-12-12'),
('{653F7D25-064A-4C86-BC5F-73403EA71E8A}', '{0B359845-6D5D-4AB7-9871-3195F1A9C946}', '{156248D2-1860-4E9E-B6A1-7FDFE5194C70}', '{28470122-A9BC-463D-8997-1667556A58BA}', 'Usually', 'tina27@gmail.com', '2019-12-12'),
('{21200829-105B-4BA1-8E7E-760DB6F33977}', '{0B359845-6D5D-4AB7-9871-3195F1A9C946}', '{F878CE90-010C-4C8E-9BBD-3CFEE873C327}', '{3AB1F22A-F577-48AD-ADAE-5A3BE3A102B0}', 'Sometimes', 'tina27@gmail.com', '2019-12-12'),
('{D1F23D57-F379-4CBB-9465-7A597BC93978}', '{0B359845-6D5D-4AB7-9871-3195F1A9C946}', '{F878CE90-010C-4C8E-9BBD-3CFEE873C327}', '{4F3345E7-B57E-46F7-8272-30C388F02544}', 'Sometimes', 'tina27@gmail.com', '2019-12-12'),
('{ADFB2291-524E-418A-BC3A-98FFD9C48E38}', '{0B359845-6D5D-4AB7-9871-3195F1A9C946}', '{F878CE90-010C-4C8E-9BBD-3CFEE873C327}', '{340E9023-4FDE-4AC2-BAD9-41878DE27B32}', 'Sometimes', 'tina27@gmail.com', '2019-12-12'),
('{0B66CF8F-2314-4DBA-9B04-6FD421FB558B}', '{A70D8B85-086C-4000-BE94-688F9AA3B09D}', '{CA6F461D-B614-4499-B5A3-F6681D2EE4DB}', '{FE6ACD40-0E08-4935-A9BE-90D8DA817CEF}', '9:00 A.M.', 'sujanasaha27@gmail.com', '2019-12-12'),
('{93B4E547-914B-434F-BA1F-F24088F3EE8B}', '{A70D8B85-086C-4000-BE94-688F9AA3B09D}', '{CA6F461D-B614-4499-B5A3-F6681D2EE4DB}', '{F4081BA9-1CF4-4EE8-87B8-DBB2F1795D5E}', 'morning', 'sujanasaha27@gmail.com', '2019-12-12'),
('{439B801B-3786-41B7-80AD-4303CC80D0AA}', '{A70D8B85-086C-4000-BE94-688F9AA3B09D}', '{CA6F461D-B614-4499-B5A3-F6681D2EE4DB}', '{74F74D13-DDE2-44E7-8811-7E686D0B6935}', 'rain', 'sujanasaha27@gmail.com', '2019-12-12'),
('{E1175058-0FB2-4EA6-8827-33F0C5931184}', '{A70D8B85-086C-4000-BE94-688F9AA3B09D}', '{CA6F461D-B614-4499-B5A3-F6681D2EE4DB}', '{93BE39EA-6B10-4183-BF97-1DDD44F4A04D}', 'good', 'sujanasaha27@gmail.com', '2019-12-12'),
('{60865140-3FCD-4627-B503-E91FC351E039}', '{A70D8B85-086C-4000-BE94-688F9AA3B09D}', '{CA6F461D-B614-4499-B5A3-F6681D2EE4DB}', '{A141BD7C-C0B6-4090-867F-1D45F9B4BAC2}', 'Mina', 'sujanasaha27@gmail.com', '2019-12-12'),
('{508A7E58-1DBA-4AC3-BAA7-6CB73A946433}', '{A70D8B85-086C-4000-BE94-688F9AA3B09D}', '{CA6F461D-B614-4499-B5A3-F6681D2EE4DB}', '{FE6ACD40-0E08-4935-A9BE-90D8DA817CEF}', '9:00 A.M.', 'sujanasaha27@gmail.com', '2020-05-31'),
('{B8742266-78A0-4037-BB4B-2A7A8D4DA1B5}', '{A70D8B85-086C-4000-BE94-688F9AA3B09D}', '{CA6F461D-B614-4499-B5A3-F6681D2EE4DB}', '{F4081BA9-1CF4-4EE8-87B8-DBB2F1795D5E}', 'morning', 'sujanasaha27@gmail.com', '2020-05-31');
INSERT INTO `svms_survey_question_filled` (`ID`, `SurveyID`, `QuestionID`, `OptionID`, `FilledValue`, `FilledUserID`, `FilledTime`) VALUES
('{7090DD54-AA75-4E3B-BB26-1C00DEE18BDF}', '{A70D8B85-086C-4000-BE94-688F9AA3B09D}', '{CA6F461D-B614-4499-B5A3-F6681D2EE4DB}', '{93BE39EA-6B10-4183-BF97-1DDD44F4A04D}', 'good', 'sujanasaha27@gmail.com', '2020-05-31'),
('{B2BF92C2-0104-46CC-82FC-3A3CF8954071}', '{A70D8B85-086C-4000-BE94-688F9AA3B09D}', '{CA6F461D-B614-4499-B5A3-F6681D2EE4DB}', '{A141BD7C-C0B6-4090-867F-1D45F9B4BAC2}', 'Mina', 'sujanasaha27@gmail.com', '2020-05-31'),
('{07352CA3-FAF5-4F12-92DD-B3C5ACF14577}', '{A70D8B85-086C-4000-BE94-688F9AA3B09D}', '{8B5D42FD-5781-4F16-BC4E-B0C20A4E172E}', '{6DE5083F-6550-4D27-B026-A2313E36DA6F}', '3:00 P.M.', 'sujanasaha27@gmail.com', '2020-05-31'),
('{BC5BAC46-905D-4A45-A071-8EBF350B9992}', '{A70D8B85-086C-4000-BE94-688F9AA3B09D}', '{8C459DBD-0166-4239-B297-DAFDCEA03376}', '{2D6D8FF3-40BB-4E25-A21D-D3EB09F4A2EE}', 'afternoon', 'sujanasaha27@gmail.com', '2020-05-31'),
('{A5A68EDC-27A3-4347-93CE-4DCE27291754}', '{A70D8B85-086C-4000-BE94-688F9AA3B09D}', '{8B5D42FD-5781-4F16-BC4E-B0C20A4E172E}', '{2B75F4BF-9788-45D7-B1F4-34193013AFAF}', 'sunny', 'sujanasaha27@gmail.com', '2020-05-31'),
('{9365E36B-74EE-4E36-9348-5274CA5E4023}', '{A70D8B85-086C-4000-BE94-688F9AA3B09D}', '{8B5D42FD-5781-4F16-BC4E-B0C20A4E172E}', '{50E983D3-4233-43FB-A490-C03B76FE5EA2}', 'bad', 'sujanasaha27@gmail.com', '2020-05-31'),
('{6FEC2A76-56CE-473B-B946-109DC693ABDE}', '{A70D8B85-086C-4000-BE94-688F9AA3B09D}', '{8B5D42FD-5781-4F16-BC4E-B0C20A4E172E}', '{F1BA446C-654D-46CA-B2EA-6A46F2756571}', 'Razu', 'sujanasaha27@gmail.com', '2020-05-31');

-- --------------------------------------------------------

--
-- Table structure for table `svms_survey_question_option`
--

DROP TABLE IF EXISTS `svms_survey_question_option`;
CREATE TABLE IF NOT EXISTS `svms_survey_question_option` (
  `ID` varchar(40) NOT NULL,
  `SurveyID` varchar(40) NOT NULL,
  `QuestionID` varchar(40) NOT NULL,
  `OptionNo` int(11) NOT NULL,
  `OptionFieldValue` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `svms_survey_question_option`
--

INSERT INTO `svms_survey_question_option` (`ID`, `SurveyID`, `QuestionID`, `OptionNo`, `OptionFieldValue`) VALUES
('{4F5C40F8-6B71-4F4D-BEFA-AE5E04D56831}', '{A70D8B85-086C-4000-BE94-688F9AA3B09D}', '{DFF3A12F-697F-47EB-B7E3-C8B176B70F5E}', 0, 'opt1'),
('{BF1B366B-95BC-4161-8FD7-DD99444B6393}', '{A70D8B85-086C-4000-BE94-688F9AA3B09D}', '{DFF3A12F-697F-47EB-B7E3-C8B176B70F5E}', 0, 'opt2'),
('{D3C51280-6D89-465E-86DD-E59864B64EC6}', '{55716E42-4DC3-4F1B-9F25-C3AF75D74C6C}', '{37135BC1-A5C0-4E61-8BDE-82A05502D117}', 1, 'aa2'),
('{83B2EEC4-183F-4F8B-BEF7-92304A7FFC68}', '{55716E42-4DC3-4F1B-9F25-C3AF75D74C6C}', '{9D2952C2-D45F-4648-8C06-074B0356AE55}', 1, 'bb1'),
('{CECDAA7D-42A8-4092-B012-08B1290DAC27}', '{55716E42-4DC3-4F1B-9F25-C3AF75D74C6C}', '{9D2952C2-D45F-4648-8C06-074B0356AE55}', 2, 'bb2'),
('{648C40B8-0AE8-45A7-82D9-8ADE8FFB1C2C}', '{A70D8B85-086C-4000-BE94-688F9AA3B09D}', '{5DE47163-3D5C-463A-99EC-6406E54F0B6A}', 1, 'hy'),
('{6DF76613-CE8F-4BF6-BB36-0C876315C477}', '{A70D8B85-086C-4000-BE94-688F9AA3B09D}', '{5DE47163-3D5C-463A-99EC-6406E54F0B6A}', 2, 'hhy'),
('{16404A2C-4834-4B49-BE5A-085E4FF95254}', '{55716E42-4DC3-4F1B-9F25-C3AF75D74C6C}', '{524969C5-A1F0-49B8-BEB1-90E364F480D3}', 1, 'ee'),
('{5598445B-B974-4E4A-AAC3-2443B3DCC179}', '{55716E42-4DC3-4F1B-9F25-C3AF75D74C6C}', '{524969C5-A1F0-49B8-BEB1-90E364F480D3}', 2, 'eee'),
('{CD43E139-3DA6-4D9B-80C0-2BBE3049A717}', '{55716E42-4DC3-4F1B-9F25-C3AF75D74C6C}', '{E71CAE2E-1E45-4E83-9491-FDC285F8A769}', 1, 'dd'),
('{E8DAB173-6646-4050-902A-2E029D9C63CE}', '{55716E42-4DC3-4F1B-9F25-C3AF75D74C6C}', '{E71CAE2E-1E45-4E83-9491-FDC285F8A769}', 2, 'ddd'),
('{899D5612-2928-47EC-9C94-DCD1D3A260ED}', '{55716E42-4DC3-4F1B-9F25-C3AF75D74C6C}', '{37135BC1-A5C0-4E61-8BDE-82A05502D117}', 2, 'aaa2'),
('{DBBD794B-FB48-43B9-8E18-5CB956236E27}', '{55716E42-4DC3-4F1B-9F25-C3AF75D74C6C}', '{35EA7B5B-66ED-4390-9FE3-95C5D2632843}', 1, 'd1'),
('{55E788C1-8F86-4221-AE6E-3791B2FD48E7}', '{55716E42-4DC3-4F1B-9F25-C3AF75D74C6C}', '{35EA7B5B-66ED-4390-9FE3-95C5D2632843}', 2, 'd2'),
('{67391F46-878A-4C9A-9366-B4CE98F27F0C}', '{55716E42-4DC3-4F1B-9F25-C3AF75D74C6C}', '{20205C32-F814-40D2-BF31-E0276797F38B}', 1, 'c1'),
('{7373E733-3F04-4D5A-8151-5559B7626FD7}', '{55716E42-4DC3-4F1B-9F25-C3AF75D74C6C}', '{20205C32-F814-40D2-BF31-E0276797F38B}', 2, 'c2'),
('{B4A5B114-A82D-41E4-944F-8A66FFF06AAF}', '{55716E42-4DC3-4F1B-9F25-C3AF75D74C6C}', '{412F853B-3324-48E0-87E4-3AF975196BD8}', 1, 'e1'),
('{97C9FF3C-6FDD-472D-A7DA-577C55763EFE}', '{55716E42-4DC3-4F1B-9F25-C3AF75D74C6C}', '{412F853B-3324-48E0-87E4-3AF975196BD8}', 2, 'e2'),
('{A141BD7C-C0B6-4090-867F-1D45F9B4BAC2}', '{A70D8B85-086C-4000-BE94-688F9AA3B09D}', '{517701C3-8B3C-47DD-A82A-DFAA2716A147}', 1, 'Mina'),
('{F1BA446C-654D-46CA-B2EA-6A46F2756571}', '{A70D8B85-086C-4000-BE94-688F9AA3B09D}', '{517701C3-8B3C-47DD-A82A-DFAA2716A147}', 2, 'Razu'),
('{93BE39EA-6B10-4183-BF97-1DDD44F4A04D}', '{A70D8B85-086C-4000-BE94-688F9AA3B09D}', '{EB5B49A5-DA6A-4234-BFAC-B4AFCEE81138}', 1, 'good'),
('{50E983D3-4233-43FB-A490-C03B76FE5EA2}', '{A70D8B85-086C-4000-BE94-688F9AA3B09D}', '{EB5B49A5-DA6A-4234-BFAC-B4AFCEE81138}', 2, 'bad'),
('{74F74D13-DDE2-44E7-8811-7E686D0B6935}', '{A70D8B85-086C-4000-BE94-688F9AA3B09D}', '{8C459DBD-0166-4239-B297-DAFDCEA03376}', 1, 'rain'),
('{2B75F4BF-9788-45D7-B1F4-34193013AFAF}', '{A70D8B85-086C-4000-BE94-688F9AA3B09D}', '{8C459DBD-0166-4239-B297-DAFDCEA03376}', 2, 'sunny'),
('{F4081BA9-1CF4-4EE8-87B8-DBB2F1795D5E}', '{A70D8B85-086C-4000-BE94-688F9AA3B09D}', '{8B5D42FD-5781-4F16-BC4E-B0C20A4E172E}', 1, 'morning'),
('{25CA22CC-00B4-41A8-B18F-F733A9224FCB}', '{A70D8B85-086C-4000-BE94-688F9AA3B09D}', '{8B5D42FD-5781-4F16-BC4E-B0C20A4E172E}', 2, 'night'),
('{2D6D8FF3-40BB-4E25-A21D-D3EB09F4A2EE}', '{A70D8B85-086C-4000-BE94-688F9AA3B09D}', '{8B5D42FD-5781-4F16-BC4E-B0C20A4E172E}', 3, 'afternoon'),
('{FE6ACD40-0E08-4935-A9BE-90D8DA817CEF}', '{A70D8B85-086C-4000-BE94-688F9AA3B09D}', '{CA6F461D-B614-4499-B5A3-F6681D2EE4DB}', 1, '9:00 A.M.'),
('{6DE5083F-6550-4D27-B026-A2313E36DA6F}', '{A70D8B85-086C-4000-BE94-688F9AA3B09D}', '{CA6F461D-B614-4499-B5A3-F6681D2EE4DB}', 2, '3:00 P.M.'),
('{805BDF60-8B94-4FA7-B7C0-3DACE281BDAE}', '{34CDE195-E1F4-4290-867C-C8CCE907BFAB}', '{AE9F7911-054D-4F1F-B0D0-450CF7F5C72A}', 1, 'By bus.'),
('{08EF8472-AE5B-4DD4-A00D-81C462D8CDB8}', '{34CDE195-E1F4-4290-867C-C8CCE907BFAB}', '{AE9F7911-054D-4F1F-B0D0-450CF7F5C72A}', 2, 'By train.'),
('{5A98214E-2DEF-4D0D-A47F-555DD1E0BD01}', '{778659F5-E402-41D8-8CBC-73AF45A6E5DD}', '{7EA518FF-5D16-4047-B8F1-F4B826356318}', 1, 'Yes'),
('{63F41DFD-754A-40A5-A2DD-A85B8431051E}', '{778659F5-E402-41D8-8CBC-73AF45A6E5DD}', '{7EA518FF-5D16-4047-B8F1-F4B826356318}', 2, 'No'),
('{3BE0DB7D-E413-440C-A2D7-9C0E0400DD18}', '{778659F5-E402-41D8-8CBC-73AF45A6E5DD}', '{05FEDB9F-DCD9-46B1-9C93-27FA5296B460}', 1, 'Noise'),
('{7DB6EB4B-1774-46A8-8E3D-474F3CA956B3}', '{778659F5-E402-41D8-8CBC-73AF45A6E5DD}', '{05FEDB9F-DCD9-46B1-9C93-27FA5296B460}', 2, 'Silent'),
('{CA719432-9427-4627-8CE1-8B142772C5F9}', '{E94DFD62-092B-4196-9465-E9E5451C2A8F}', '{0A850CB8-EDDC-4AD6-8F9E-1480247A34F0}', 1, 'Not at all'),
('{857523A2-A0AC-455A-9EC9-F53EE4E72264}', '{E94DFD62-092B-4196-9465-E9E5451C2A8F}', '{0A850CB8-EDDC-4AD6-8F9E-1480247A34F0}', 2, 'Sometimes'),
('{B509D120-1EAB-4D3C-96F9-2F8270576478}', '{E94DFD62-092B-4196-9465-E9E5451C2A8F}', '{0A850CB8-EDDC-4AD6-8F9E-1480247A34F0}', 3, 'Always'),
('{728F0DC9-9276-4C86-BA69-D6F133FF9B16}', '{E94DFD62-092B-4196-9465-E9E5451C2A8F}', '{0A850CB8-EDDC-4AD6-8F9E-1480247A34F0}', 4, 'Usually'),
('{0E1BFD6E-F00B-4D8D-9CD1-08CBCE64B319}', '{E94DFD62-092B-4196-9465-E9E5451C2A8F}', '{A27CBACD-1EA9-4270-80B6-62D15785CFFA}', 1, 'Not at all'),
('{06B9EEE8-6102-4CEE-917F-B205164BE589}', '{E94DFD62-092B-4196-9465-E9E5451C2A8F}', '{A27CBACD-1EA9-4270-80B6-62D15785CFFA}', 2, 'Sometimes'),
('{5372FCE6-E8BF-46AB-BC64-364048641963}', '{E94DFD62-092B-4196-9465-E9E5451C2A8F}', '{A27CBACD-1EA9-4270-80B6-62D15785CFFA}', 3, 'Usually'),
('{BB8E8F16-DCC2-4D33-91DC-D490B0CEAD7A}', '{E94DFD62-092B-4196-9465-E9E5451C2A8F}', '{A27CBACD-1EA9-4270-80B6-62D15785CFFA}', 4, 'Always'),
('{85D9E0AD-D175-42A3-9CEB-A232D447A270}', '{E94DFD62-092B-4196-9465-E9E5451C2A8F}', '{BB817CE4-0F13-4910-B3A4-20ECBE3C8411}', 1, 'Not at all'),
('{63070019-B154-4529-8D57-8C385288B75B}', '{E94DFD62-092B-4196-9465-E9E5451C2A8F}', '{BB817CE4-0F13-4910-B3A4-20ECBE3C8411}', 2, 'Sometimes'),
('{A81BFF45-B522-41F4-91AB-45AF388C1751}', '{E94DFD62-092B-4196-9465-E9E5451C2A8F}', '{BB817CE4-0F13-4910-B3A4-20ECBE3C8411}', 3, 'Usually'),
('{63460835-C57D-4120-B0A1-BAC0FD4EBE1D}', '{E94DFD62-092B-4196-9465-E9E5451C2A8F}', '{BB817CE4-0F13-4910-B3A4-20ECBE3C8411}', 4, 'Always'),
('{FF9BCD07-48E6-46E1-A991-1778460B51F6}', '{0B359845-6D5D-4AB7-9871-3195F1A9C946}', '{3E64A3D6-704D-4138-8491-B962FDAFEDAC}', 1, 'Not at all'),
('{EF474330-2CB6-4629-983F-6E340088EA54}', '{0B359845-6D5D-4AB7-9871-3195F1A9C946}', '{3E64A3D6-704D-4138-8491-B962FDAFEDAC}', 2, 'Sometimes'),
('{28470122-A9BC-463D-8997-1667556A58BA}', '{0B359845-6D5D-4AB7-9871-3195F1A9C946}', '{3E64A3D6-704D-4138-8491-B962FDAFEDAC}', 3, 'Usually'),
('{6738BC7A-F868-4FB3-A3D8-1869AE525254}', '{0B359845-6D5D-4AB7-9871-3195F1A9C946}', '{3E64A3D6-704D-4138-8491-B962FDAFEDAC}', 4, 'Always'),
('{B847727C-AA98-4EF5-AAC5-180889D5A4AE}', '{0B359845-6D5D-4AB7-9871-3195F1A9C946}', '{F878CE90-010C-4C8E-9BBD-3CFEE873C327}', 1, 'Not at all'),
('{3AB1F22A-F577-48AD-ADAE-5A3BE3A102B0}', '{0B359845-6D5D-4AB7-9871-3195F1A9C946}', '{F878CE90-010C-4C8E-9BBD-3CFEE873C327}', 2, 'Sometimes'),
('{F10D7E12-7FF8-4EF3-BE7A-52574CB6416C}', '{0B359845-6D5D-4AB7-9871-3195F1A9C946}', '{F878CE90-010C-4C8E-9BBD-3CFEE873C327}', 3, 'Usually'),
('{B9B353AE-B48D-48F5-B768-4422A988D05F}', '{0B359845-6D5D-4AB7-9871-3195F1A9C946}', '{F878CE90-010C-4C8E-9BBD-3CFEE873C327}', 4, 'Always'),
('{7BCBC0D5-B225-4BB2-BFDF-E2CB57A1EFDF}', '{0B359845-6D5D-4AB7-9871-3195F1A9C946}', '{156248D2-1860-4E9E-B6A1-7FDFE5194C70}', 1, 'Not at all'),
('{4F3345E7-B57E-46F7-8272-30C388F02544}', '{0B359845-6D5D-4AB7-9871-3195F1A9C946}', '{156248D2-1860-4E9E-B6A1-7FDFE5194C70}', 2, 'Sometimes'),
('{3633A8B5-4288-4D23-8303-A26EA002FF5D}', '{0B359845-6D5D-4AB7-9871-3195F1A9C946}', '{156248D2-1860-4E9E-B6A1-7FDFE5194C70}', 3, 'Usually'),
('{63EEC587-E515-4366-ABAA-169F8AF4E4C9}', '{0B359845-6D5D-4AB7-9871-3195F1A9C946}', '{156248D2-1860-4E9E-B6A1-7FDFE5194C70}', 4, 'Always'),
('{485E61DD-9652-4AF8-B3EB-EAF4C33F5A84}', '{0B359845-6D5D-4AB7-9871-3195F1A9C946}', '{1230CA00-61A1-430B-A042-7AA307A6EDCD}', 1, 'Not at all'),
('{340E9023-4FDE-4AC2-BAD9-41878DE27B32}', '{0B359845-6D5D-4AB7-9871-3195F1A9C946}', '{1230CA00-61A1-430B-A042-7AA307A6EDCD}', 2, 'Sometimes'),
('{A52CD82A-686A-4445-A915-FB0F0EA043B6}', '{0B359845-6D5D-4AB7-9871-3195F1A9C946}', '{1230CA00-61A1-430B-A042-7AA307A6EDCD}', 3, 'Usually'),
('{DC25D761-230D-4DDE-B1AD-8619825842B2}', '{0B359845-6D5D-4AB7-9871-3195F1A9C946}', '{1230CA00-61A1-430B-A042-7AA307A6EDCD}', 4, 'Always'),
('{4241B55D-C4DD-47E0-B8EC-C1F09404034E}', '{4642FB29-3922-47A5-BE31-857E946D0AE9}', '{826AE826-C1F0-4CA0-9F28-974046514CEC}', 1, 'Not at all'),
('{1776E472-C5BB-40D1-95AA-4F8E850FE8D1}', '{4642FB29-3922-47A5-BE31-857E946D0AE9}', '{826AE826-C1F0-4CA0-9F28-974046514CEC}', 2, 'Sometimes'),
('{21D15F50-99F6-41AE-B9C3-80210AFECB19}', '{4642FB29-3922-47A5-BE31-857E946D0AE9}', '{826AE826-C1F0-4CA0-9F28-974046514CEC}', 3, 'Usually'),
('{4F77F42F-422F-4081-8D1D-7C4EDB740584}', '{4642FB29-3922-47A5-BE31-857E946D0AE9}', '{826AE826-C1F0-4CA0-9F28-974046514CEC}', 4, 'Always'),
('{91CCDB6F-2C89-4F71-9FCD-1AEDF72D66F4}', '{4642FB29-3922-47A5-BE31-857E946D0AE9}', '{9C5D9ABE-B898-40A0-984B-AB2C780F9D18}', 1, 'Not at all'),
('{1A77F285-9987-4931-A1BC-17E823138C04}', '{4642FB29-3922-47A5-BE31-857E946D0AE9}', '{9C5D9ABE-B898-40A0-984B-AB2C780F9D18}', 2, 'Sometimes'),
('{9086EB58-A878-4B62-A0FF-4141BEBCEE4F}', '{4642FB29-3922-47A5-BE31-857E946D0AE9}', '{9C5D9ABE-B898-40A0-984B-AB2C780F9D18}', 3, 'Usually'),
('{13B10B78-9607-45CA-9AD1-461E32D96CA2}', '{4642FB29-3922-47A5-BE31-857E946D0AE9}', '{9C5D9ABE-B898-40A0-984B-AB2C780F9D18}', 4, 'Always'),
('{FD570DA3-1F07-4301-B1E0-8B916AAF327D}', '{4642FB29-3922-47A5-BE31-857E946D0AE9}', '{7C68E013-5CF5-476C-8494-F31346CEBA2F}', 1, 'Not at all'),
('{69CBBEB6-DCDA-44E7-ADF0-249062F542B1}', '{4642FB29-3922-47A5-BE31-857E946D0AE9}', '{7C68E013-5CF5-476C-8494-F31346CEBA2F}', 2, 'Sometimes'),
('{1C11D333-7EBB-4B60-8246-718A27EEB3E7}', '{4642FB29-3922-47A5-BE31-857E946D0AE9}', '{7C68E013-5CF5-476C-8494-F31346CEBA2F}', 3, 'Usually'),
('{5C5CFFB9-5BEE-4C96-9908-522024FE0ABF}', '{4642FB29-3922-47A5-BE31-857E946D0AE9}', '{7C68E013-5CF5-476C-8494-F31346CEBA2F}', 4, 'Always'),
('{6299A310-2AEF-4AD7-B1B3-982464CD0532}', '{4642FB29-3922-47A5-BE31-857E946D0AE9}', '{842EF113-2AB4-4409-9E48-3A76E862A950}', 1, 'Not at all'),
('{57A92B92-5F41-4DD9-83AA-581F7134EC58}', '{4642FB29-3922-47A5-BE31-857E946D0AE9}', '{842EF113-2AB4-4409-9E48-3A76E862A950}', 2, 'Sometimes'),
('{23E8F3F6-0F25-46AF-BBEA-6DDB2CA0C219}', '{4642FB29-3922-47A5-BE31-857E946D0AE9}', '{842EF113-2AB4-4409-9E48-3A76E862A950}', 3, 'Usually'),
('{26526B71-8498-488B-9BF9-E796EB2AFB8F}', '{4642FB29-3922-47A5-BE31-857E946D0AE9}', '{842EF113-2AB4-4409-9E48-3A76E862A950}', 4, 'Always'),
('{F3D8B81D-8FE2-4F41-9BFA-377A0A777FC0}', '{4642FB29-3922-47A5-BE31-857E946D0AE9}', '{3C865989-49F0-4AC2-925B-25AE39C68BC7}', 1, 'Not at all'),
('{1B2C159B-7260-4874-A24C-FA7408E07D37}', '{4642FB29-3922-47A5-BE31-857E946D0AE9}', '{3C865989-49F0-4AC2-925B-25AE39C68BC7}', 2, 'Sometimes'),
('{DC1F3F27-9CAD-452A-9581-A6DC432A7507}', '{4642FB29-3922-47A5-BE31-857E946D0AE9}', '{3C865989-49F0-4AC2-925B-25AE39C68BC7}', 3, 'Usually'),
('{F3C8301A-2F4D-40EA-A0ED-226669F0F77B}', '{4642FB29-3922-47A5-BE31-857E946D0AE9}', '{3C865989-49F0-4AC2-925B-25AE39C68BC7}', 4, 'Always'),
('{D7EE2EA5-A3E9-47B5-83CC-B35DE7F40607}', '{4642FB29-3922-47A5-BE31-857E946D0AE9}', '{CE05F8C1-67B5-42AC-866E-4C3301ABDFDD}', 1, 'Not at all'),
('{F2E34804-CB4E-4680-B5BB-0882A22CB360}', '{4642FB29-3922-47A5-BE31-857E946D0AE9}', '{CE05F8C1-67B5-42AC-866E-4C3301ABDFDD}', 2, 'Sometimes'),
('{42C92AD2-EF3F-4E17-9AC5-3E16D7B7F25F}', '{4642FB29-3922-47A5-BE31-857E946D0AE9}', '{CE05F8C1-67B5-42AC-866E-4C3301ABDFDD}', 3, 'Usually'),
('{38149FB0-4EE6-4F01-8BAD-309D59BB6075}', '{4642FB29-3922-47A5-BE31-857E946D0AE9}', '{CE05F8C1-67B5-42AC-866E-4C3301ABDFDD}', 4, 'Always'),
('{A2A8CC26-DA0E-4AD5-A116-5E22D92CB934}', '{03FA7E28-A239-4E38-BB17-F48891D225D9}', '{887A967F-1D5F-400B-AE16-60DCAD5C109C}', 1, 'Always'),
('{055428A9-3F6C-46F7-A816-F560922C51B5}', '{03FA7E28-A239-4E38-BB17-F48891D225D9}', '{887A967F-1D5F-400B-AE16-60DCAD5C109C}', 2, 'Often'),
('{E787293B-C12D-485F-9645-4D85BC457851}', '{03FA7E28-A239-4E38-BB17-F48891D225D9}', '{887A967F-1D5F-400B-AE16-60DCAD5C109C}', 3, 'Sometimes'),
('{891B6C55-5BC4-4B07-8968-5AF459913D60}', '{03FA7E28-A239-4E38-BB17-F48891D225D9}', '{887A967F-1D5F-400B-AE16-60DCAD5C109C}', 4, 'Never'),
('{9A129401-81C6-417E-87CB-AE62FFD76CF4}', '{03FA7E28-A239-4E38-BB17-F48891D225D9}', '{5518CAAB-0BCE-4113-A91E-821CB5737E4A}', 1, 'Always'),
('{040FD81A-401A-419C-BBE9-0328CDAAC566}', '{03FA7E28-A239-4E38-BB17-F48891D225D9}', '{5518CAAB-0BCE-4113-A91E-821CB5737E4A}', 2, 'Often'),
('{EEA36448-3271-4AC7-9A33-5EF02B35A1A8}', '{03FA7E28-A239-4E38-BB17-F48891D225D9}', '{5518CAAB-0BCE-4113-A91E-821CB5737E4A}', 3, 'Sometimes'),
('{45E518F7-865C-481C-96E2-A215C8B98425}', '{03FA7E28-A239-4E38-BB17-F48891D225D9}', '{5518CAAB-0BCE-4113-A91E-821CB5737E4A}', 4, 'Never'),
('{44283C94-D7F4-4078-A7A7-4F05C03625DD}', '{03FA7E28-A239-4E38-BB17-F48891D225D9}', '{78FC27B8-D9D9-426C-9573-658165701EDC}', 1, 'Always'),
('{EF1EF8CB-FF22-42AC-8910-132737CEA3CC}', '{03FA7E28-A239-4E38-BB17-F48891D225D9}', '{78FC27B8-D9D9-426C-9573-658165701EDC}', 2, 'Often'),
('{6BB66B4D-8453-4967-B2A1-9395434B734C}', '{03FA7E28-A239-4E38-BB17-F48891D225D9}', '{78FC27B8-D9D9-426C-9573-658165701EDC}', 3, 'Sometimes'),
('{BA2E405C-AFA7-44C2-9C05-AC2B58A662D3}', '{03FA7E28-A239-4E38-BB17-F48891D225D9}', '{78FC27B8-D9D9-426C-9573-658165701EDC}', 4, 'Never'),
('{F912FCF4-365E-4271-8426-764B8769110D}', '{03FA7E28-A239-4E38-BB17-F48891D225D9}', '{0FC6733B-A1DE-479B-BDEB-2580FF51F410}', 1, 'Always'),
('{A642E294-6BE4-4971-89BC-37EBAD51DBB1}', '{03FA7E28-A239-4E38-BB17-F48891D225D9}', '{0FC6733B-A1DE-479B-BDEB-2580FF51F410}', 2, 'Often'),
('{08F3AF2E-BD10-4766-AC65-18DB50FCDE18}', '{03FA7E28-A239-4E38-BB17-F48891D225D9}', '{0FC6733B-A1DE-479B-BDEB-2580FF51F410}', 3, 'Sometimes'),
('{984D6B4E-E86F-4A3A-AAB8-C4113CAC8329}', '{03FA7E28-A239-4E38-BB17-F48891D225D9}', '{0FC6733B-A1DE-479B-BDEB-2580FF51F410}', 4, 'Never'),
('{5411EB7E-8859-4944-9882-415A12ABBADB}', '{03FA7E28-A239-4E38-BB17-F48891D225D9}', '{B4D6C4C3-1BCA-4B78-B15A-ED85738BEE49}', 1, 'Always'),
('{190BDACA-ED30-47EC-9421-9F4C44C1E18B}', '{03FA7E28-A239-4E38-BB17-F48891D225D9}', '{B4D6C4C3-1BCA-4B78-B15A-ED85738BEE49}', 2, 'Often'),
('{8410B92B-6CF0-4E84-A612-A7083AE779DB}', '{03FA7E28-A239-4E38-BB17-F48891D225D9}', '{B4D6C4C3-1BCA-4B78-B15A-ED85738BEE49}', 3, 'Sometimes'),
('{7643B538-4E8E-4276-8ADC-3554BB91C17D}', '{03FA7E28-A239-4E38-BB17-F48891D225D9}', '{B4D6C4C3-1BCA-4B78-B15A-ED85738BEE49}', 4, 'Never'),
('{94490E62-39A5-47B4-80AA-6C2E6C6705C8}', '{4DF8525B-FBCC-4893-9B6A-86631B19F4A5}', '{8E656CEA-7F7B-409A-97C4-C5153C819FBE}', 1, 'Yes'),
('{26F2A2A4-8EF2-4E96-AD83-C84860ECC808}', '{4DF8525B-FBCC-4893-9B6A-86631B19F4A5}', '{8E656CEA-7F7B-409A-97C4-C5153C819FBE}', 2, 'No'),
('{B51A9C8F-3420-4493-8026-1737CB040BE3}', '{4DF8525B-FBCC-4893-9B6A-86631B19F4A5}', '{155F81FB-6558-4B8D-9D50-7ABCBBCE5468}', 1, 'Associate degree'),
('{BB209C56-C017-47B7-B3E2-DB876755108B}', '{4DF8525B-FBCC-4893-9B6A-86631B19F4A5}', '{155F81FB-6558-4B8D-9D50-7ABCBBCE5468}', 2, 'Online degree'),
('{7681AA2C-443C-4BD7-9FA2-916EC562091C}', '{4DF8525B-FBCC-4893-9B6A-86631B19F4A5}', '{155F81FB-6558-4B8D-9D50-7ABCBBCE5468}', 3, 'Bachelorâ€™s degree'),
('{1B79765D-9373-4DB1-9378-EDF94AF355B5}', '{4DF8525B-FBCC-4893-9B6A-86631B19F4A5}', '{155F81FB-6558-4B8D-9D50-7ABCBBCE5468}', 4, 'Masterâ€™s degree'),
('{0D7295EE-E200-466B-BAFA-C8EDC799F67A}', '{4DF8525B-FBCC-4893-9B6A-86631B19F4A5}', '{155F81FB-6558-4B8D-9D50-7ABCBBCE5468}', 5, 'Doctorate'),
('{45A48D3C-0215-41CE-8A24-A1D77642AB95}', '{4DF8525B-FBCC-4893-9B6A-86631B19F4A5}', '{56D44FB9-FF6A-4374-9B0E-50C780421464}', 1, 'Permanent employee'),
('{743239FD-AAD6-4D9F-AA8E-C6F627E4C4CF}', '{4DF8525B-FBCC-4893-9B6A-86631B19F4A5}', '{56D44FB9-FF6A-4374-9B0E-50C780421464}', 2, 'Fixed term contract of more than a year'),
('{D13A9244-B179-49E9-8E68-F92B17AE84DC}', '{4DF8525B-FBCC-4893-9B6A-86631B19F4A5}', '{56D44FB9-FF6A-4374-9B0E-50C780421464}', 3, 'Fixed term contract of less than a year'),
('{B71C7DD1-2374-4925-B82F-637A1C1020E2}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{C0B5CFDE-3CD6-42AA-8854-955DE94A00E0}', 1, 'Strongly disagree'),
('{752956F0-DAA1-4B57-90E8-F99CD21E328C}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{C0B5CFDE-3CD6-42AA-8854-955DE94A00E0}', 2, 'Disagree'),
('{4D57CA72-15CB-4312-A23B-A36E829406FB}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{C0B5CFDE-3CD6-42AA-8854-955DE94A00E0}', 3, 'Neutral'),
('{17679033-408A-4746-9887-E7CDD2F56BF0}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{C0B5CFDE-3CD6-42AA-8854-955DE94A00E0}', 4, 'Agree'),
('{0FF5EF6E-2259-45B7-89EF-5658390C0E84}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{C0B5CFDE-3CD6-42AA-8854-955DE94A00E0}', 5, 'Strongly agree'),
('{E9740C35-57A0-4EFD-ACD3-2406327957C4}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{0E33D222-2447-4F4D-9FA1-B9C5F3792D59}', 1, 'Strongly disagree'),
('{E913B6B0-48CF-45A4-8561-F53B3CB5E3A5}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{0E33D222-2447-4F4D-9FA1-B9C5F3792D59}', 2, 'Disagree'),
('{730DB63E-D87C-47A1-B82B-5BAC45258011}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{0E33D222-2447-4F4D-9FA1-B9C5F3792D59}', 3, 'Neutral'),
('{EBE42549-894B-478A-9D45-A9EBAEDA4674}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{0E33D222-2447-4F4D-9FA1-B9C5F3792D59}', 4, 'Agree'),
('{9178A43F-1F29-40AE-9679-3D492080786C}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{0E33D222-2447-4F4D-9FA1-B9C5F3792D59}', 5, 'Strongly agree'),
('{F6E030E7-E0C0-4F69-AA44-D7144794B156}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{207A4BEB-3B28-4D7F-A62E-1E0C3D05C331}', 1, 'Strongly disagree'),
('{B52B4236-ABDC-4547-A20F-4B3E07CA284F}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{207A4BEB-3B28-4D7F-A62E-1E0C3D05C331}', 2, 'Disagree'),
('{768400C7-3F87-4277-A47B-B0EE3E5DEAF7}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{207A4BEB-3B28-4D7F-A62E-1E0C3D05C331}', 3, 'Neutral'),
('{D84E3692-B8FA-41C4-AA04-A1BF5780B592}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{207A4BEB-3B28-4D7F-A62E-1E0C3D05C331}', 4, 'Agree'),
('{A1FAD502-CC84-4056-A710-39D120B82CD4}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{207A4BEB-3B28-4D7F-A62E-1E0C3D05C331}', 5, 'Strongly agree'),
('{7CD65E3E-676B-4F7C-8980-8D0EE9B273CA}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{F39D99E6-6B76-4008-ADB5-FAC62F144BD8}', 1, 'Strongly disagree'),
('{2B84D3B2-709C-4588-A405-5BB61FCC39BA}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{F39D99E6-6B76-4008-ADB5-FAC62F144BD8}', 2, 'Disagree'),
('{90323AEE-8C28-4EA0-AB6A-44074705C593}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{F39D99E6-6B76-4008-ADB5-FAC62F144BD8}', 3, 'Neutral'),
('{3A8E425F-C21C-4590-9353-9795FC30307A}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{F39D99E6-6B76-4008-ADB5-FAC62F144BD8}', 4, 'Agree'),
('{6200A36A-DBCB-452C-85AD-67F49660D4A9}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{F39D99E6-6B76-4008-ADB5-FAC62F144BD8}', 5, 'Strongly agree'),
('{1A6ADCA0-6615-485A-87C1-D9C37D644F2D}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{C02F03DD-1EAA-4005-B300-790D6569E27C}', 1, 'Strongly disagree'),
('{D7B061EA-7859-4116-8717-797E8089D61D}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{C02F03DD-1EAA-4005-B300-790D6569E27C}', 2, 'Disagree'),
('{54742919-61CB-4AE6-852F-E39CE7C51DF6}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{C02F03DD-1EAA-4005-B300-790D6569E27C}', 3, 'Neutral'),
('{A4FFB8E8-72A8-4045-9D55-4FC9CDFC2364}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{C02F03DD-1EAA-4005-B300-790D6569E27C}', 4, 'Agree'),
('{1C9F2AD6-9073-4F78-8A64-080FFFB35D81}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{C02F03DD-1EAA-4005-B300-790D6569E27C}', 5, 'Strongly agree'),
('{9C0F368F-BDCD-47FE-A4CC-787BCDB8BF31}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{390F4AD0-AC0C-4C8F-BC8E-FCCBA876170C}', 1, 'Strongly disagree'),
('{52B20E0E-D3E9-4D23-95D0-BE3898006310}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{390F4AD0-AC0C-4C8F-BC8E-FCCBA876170C}', 2, 'Disagree'),
('{0B3A390E-1A9F-4931-8AE4-DF7BB650D236}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{390F4AD0-AC0C-4C8F-BC8E-FCCBA876170C}', 3, 'Neutral'),
('{FFCB3EB9-C1DA-46F8-87D5-4D2D253AA16A}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{390F4AD0-AC0C-4C8F-BC8E-FCCBA876170C}', 4, 'Agree'),
('{E8658BA6-450D-485E-A5F3-2EA2778894B8}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{390F4AD0-AC0C-4C8F-BC8E-FCCBA876170C}', 5, 'Strongly agree'),
('{8BFD2F11-60A2-41E5-906C-20B020243A6D}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{7760436A-2CCF-4FF3-BBF1-E69E6CA14585}', 1, 'Strongly disagree'),
('{B5D1D335-4F20-4C02-9761-3B7FBA6A99B3}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{7760436A-2CCF-4FF3-BBF1-E69E6CA14585}', 2, 'Disagree'),
('{D30517A8-8E51-4B84-8BD7-C27E0D294E16}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{7760436A-2CCF-4FF3-BBF1-E69E6CA14585}', 3, 'Neutral'),
('{02F19900-2C8A-409F-98A6-0155C222DA7B}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{7760436A-2CCF-4FF3-BBF1-E69E6CA14585}', 4, 'Agree'),
('{D55B55E7-8C73-4F69-AFDF-03727C9749CC}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{7760436A-2CCF-4FF3-BBF1-E69E6CA14585}', 5, 'Strongly agree'),
('{DA55E848-D6F6-4A60-9BDC-12DE4722DACB}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{32E8AF81-BF12-446D-B7DB-C0E9FB90F44B}', 1, 'Strongly disagree'),
('{B52F1E9D-3F76-4F9D-A631-DEF8AD06DAD0}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{32E8AF81-BF12-446D-B7DB-C0E9FB90F44B}', 2, 'Disagree'),
('{56146AB4-41F4-415E-AA89-F071A8BC4B16}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{32E8AF81-BF12-446D-B7DB-C0E9FB90F44B}', 3, 'Neutral'),
('{BC81A8D0-F65F-420C-9CAA-8030D6072AC3}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{32E8AF81-BF12-446D-B7DB-C0E9FB90F44B}', 4, 'Agree'),
('{8C15B646-587E-444B-A5F1-6B994FDE97F4}', '{46772331-4D94-4A6C-B0DF-F84C6151AA7F}', '{32E8AF81-BF12-446D-B7DB-C0E9FB90F44B}', 5, 'Strongly agree'),
('{529FF02B-E721-4FA0-8198-B1715FD04C80}', '{7B195AE8-03BF-45CA-B50D-EF76C45012CD}', '{353A08D1-E238-451A-A9CD-F531C976EB01}', 1, 'Yes'),
('{0AF10D38-E0E6-4D2E-AF14-420BBAD27C82}', '{7B195AE8-03BF-45CA-B50D-EF76C45012CD}', '{353A08D1-E238-451A-A9CD-F531C976EB01}', 2, 'No'),
('{35242EB8-30B0-4DD3-8EBC-647B3F691C4F}', '{7B195AE8-03BF-45CA-B50D-EF76C45012CD}', '{353A08D1-E238-451A-A9CD-F531C976EB01}', 3, 'Donâ€™t know'),
('{1DB65190-AAD1-4106-B1B2-112F70A0D252}', '{7B195AE8-03BF-45CA-B50D-EF76C45012CD}', '{C9BCFCB9-091F-4D15-AAAD-E378B8C95E47}', 1, '1 year or less'),
('{15F3B0AF-EA15-449C-B487-1547960CBF76}', '{7B195AE8-03BF-45CA-B50D-EF76C45012CD}', '{C9BCFCB9-091F-4D15-AAAD-E378B8C95E47}', 2, '1-2 years'),
('{53116633-E28A-4B67-B9A4-E831008D3827}', '{7B195AE8-03BF-45CA-B50D-EF76C45012CD}', '{C9BCFCB9-091F-4D15-AAAD-E378B8C95E47}', 3, '3-5 years'),
('{2ECC586B-9B13-49D4-A235-11DBDEFD0483}', '{7B195AE8-03BF-45CA-B50D-EF76C45012CD}', '{C9BCFCB9-091F-4D15-AAAD-E378B8C95E47}', 4, '6-10 years'),
('{CE5BED21-D405-40D7-8251-5E2D1C8C780D}', '{7B195AE8-03BF-45CA-B50D-EF76C45012CD}', '{C9BCFCB9-091F-4D15-AAAD-E378B8C95E47}', 5, '10+ years'),
('{1DA9CD82-A4E3-4A0D-9EED-6556B23BEBD4}', '{7B195AE8-03BF-45CA-B50D-EF76C45012CD}', '{975AE4EB-CC13-4CAE-AA7E-6C7EC4FE4527}', 1, 'Very dissatisfied'),
('{1834DB2A-688E-46EF-BFFF-6A6C8BBD3CCE}', '{7B195AE8-03BF-45CA-B50D-EF76C45012CD}', '{975AE4EB-CC13-4CAE-AA7E-6C7EC4FE4527}', 2, 'Not satisfied'),
('{7EA24B51-8125-4C47-ACE0-1F1A09986802}', '{7B195AE8-03BF-45CA-B50D-EF76C45012CD}', '{975AE4EB-CC13-4CAE-AA7E-6C7EC4FE4527}', 3, 'Neutral'),
('{4B96A1B1-7E13-4DA9-8B33-FF427528558F}', '{7B195AE8-03BF-45CA-B50D-EF76C45012CD}', '{975AE4EB-CC13-4CAE-AA7E-6C7EC4FE4527}', 4, 'Satisfied'),
('{490A5A3B-B228-48E4-8E88-071CF0453214}', '{7B195AE8-03BF-45CA-B50D-EF76C45012CD}', '{975AE4EB-CC13-4CAE-AA7E-6C7EC4FE4527}', 5, 'Very satisfied'),
('{A7FF9819-AA31-4AF0-91C9-E19522E8806C}', '{7B195AE8-03BF-45CA-B50D-EF76C45012CD}', '{89F4A2CF-4CE5-42B0-8E2F-23B1C7378F97}', 1, 'Yes'),
('{D299E955-CD3F-469D-A728-87100F69E710}', '{7B195AE8-03BF-45CA-B50D-EF76C45012CD}', '{89F4A2CF-4CE5-42B0-8E2F-23B1C7378F97}', 2, 'No'),
('{10ED90B3-0772-4148-82CA-37CF4410EB13}', '{7B195AE8-03BF-45CA-B50D-EF76C45012CD}', '{61908F04-9B12-45B0-905C-DB00AE97EB9B}', 1, 'Very often'),
('{ADA97FA0-FFCA-4337-ACD1-B054648F8402}', '{7B195AE8-03BF-45CA-B50D-EF76C45012CD}', '{61908F04-9B12-45B0-905C-DB00AE97EB9B}', 2, 'Sometimes'),
('{53117E4F-2BB2-40B8-AA84-C74C34451F2B}', '{7B195AE8-03BF-45CA-B50D-EF76C45012CD}', '{61908F04-9B12-45B0-905C-DB00AE97EB9B}', 3, 'Rarely'),
('{0067903E-001F-4D7B-AB82-FF1069ED7E2B}', '{7B195AE8-03BF-45CA-B50D-EF76C45012CD}', '{61908F04-9B12-45B0-905C-DB00AE97EB9B}', 4, 'Never'),
('{27916668-1D2B-41EE-A065-74E020B7C4DA}', '{7B195AE8-03BF-45CA-B50D-EF76C45012CD}', '{A025172C-D8BE-4087-B2AB-390D23D86432}', 1, 'Yes'),
('{D5E2822C-EB5E-4278-B7B2-5D5F3A10A423}', '{7B195AE8-03BF-45CA-B50D-EF76C45012CD}', '{A025172C-D8BE-4087-B2AB-390D23D86432}', 2, 'No'),
('{F6A0FC2D-6ACC-42B9-AAAF-4FDCAC72D6BD}', '{7B195AE8-03BF-45CA-B50D-EF76C45012CD}', '{920603B2-043A-45E8-BE40-68A97922274C}', 1, 'Yes'),
('{CAA0EBCA-F1C5-4624-8428-32D68F25452D}', '{7B195AE8-03BF-45CA-B50D-EF76C45012CD}', '{920603B2-043A-45E8-BE40-68A97922274C}', 2, 'No'),
('{81A4C89B-E924-4842-8F93-A0B5D37E2699}', '{803D6B71-4572-4150-A64F-CF878A317903}', '{E6CE7100-3F0C-4B25-8291-E3B20A65331D}', 1, 'Very often'),
('{A3EC88C5-433B-489A-A044-D9315A8832ED}', '{803D6B71-4572-4150-A64F-CF878A317903}', '{E6CE7100-3F0C-4B25-8291-E3B20A65331D}', 2, 'Often'),
('{D8E1CAD8-5EEA-46D5-BC42-4CCE801DAC92}', '{803D6B71-4572-4150-A64F-CF878A317903}', '{E6CE7100-3F0C-4B25-8291-E3B20A65331D}', 3, 'Sometimes'),
('{79B67F86-A75D-47F4-8DB3-09F049F9B58B}', '{803D6B71-4572-4150-A64F-CF878A317903}', '{E6CE7100-3F0C-4B25-8291-E3B20A65331D}', 4, 'Never'),
('{EF61C2F6-1FA0-4A93-9049-990CA8F1B3B8}', '{803D6B71-4572-4150-A64F-CF878A317903}', '{714E27CF-E381-4FA0-8878-6EC1A1931A0C}', 1, 'Very often'),
('{E8B44DED-ECB1-402C-8516-6C6631ECE5AC}', '{803D6B71-4572-4150-A64F-CF878A317903}', '{714E27CF-E381-4FA0-8878-6EC1A1931A0C}', 2, 'Often'),
('{099C8BDC-1FF1-42D8-8F7B-54B84667AFA3}', '{803D6B71-4572-4150-A64F-CF878A317903}', '{714E27CF-E381-4FA0-8878-6EC1A1931A0C}', 3, 'Sometimes'),
('{9FB0B52F-3D0A-4FB5-80E6-BBCF6520AEB7}', '{803D6B71-4572-4150-A64F-CF878A317903}', '{714E27CF-E381-4FA0-8878-6EC1A1931A0C}', 4, 'Never'),
('{491BFD90-CCF6-4792-8F70-37AA689F726E}', '{803D6B71-4572-4150-A64F-CF878A317903}', '{ABAD99C1-527F-446F-BE4A-00FB501CC618}', 1, 'Very often'),
('{890A435E-8173-4C28-8B57-E1DF12FC0352}', '{803D6B71-4572-4150-A64F-CF878A317903}', '{ABAD99C1-527F-446F-BE4A-00FB501CC618}', 2, 'Often'),
('{631EE37E-6D5E-4C09-849A-3B5E3A5D763C}', '{803D6B71-4572-4150-A64F-CF878A317903}', '{ABAD99C1-527F-446F-BE4A-00FB501CC618}', 3, 'Sometimes'),
('{7BBBEAF3-46FC-4E87-B5D2-E8C7E69FF9CE}', '{803D6B71-4572-4150-A64F-CF878A317903}', '{ABAD99C1-527F-446F-BE4A-00FB501CC618}', 4, 'Never'),
('{9B1D9EDE-FC86-4A7A-AEE1-E49768DE3CF1}', '{803D6B71-4572-4150-A64F-CF878A317903}', '{5ECAD52D-6344-4567-B73A-83B76AB76C13}', 1, 'Very often'),
('{AB7BE959-8883-4DA3-B236-7C2B58F88468}', '{803D6B71-4572-4150-A64F-CF878A317903}', '{5ECAD52D-6344-4567-B73A-83B76AB76C13}', 2, 'Often'),
('{0C3EA697-D971-40EA-ACF6-8528074E8065}', '{803D6B71-4572-4150-A64F-CF878A317903}', '{5ECAD52D-6344-4567-B73A-83B76AB76C13}', 3, 'Sometimes'),
('{12DAD00E-C367-48E5-B674-ACB843B5B86F}', '{803D6B71-4572-4150-A64F-CF878A317903}', '{5ECAD52D-6344-4567-B73A-83B76AB76C13}', 4, 'Never'),
('{271A4445-C248-4BC9-9933-F46E65DDE2A5}', '{803D6B71-4572-4150-A64F-CF878A317903}', '{D325A6A7-7FF4-4604-BCDA-E1F46F919958}', 1, 'Very often'),
('{E7CCF002-EDF8-47E2-8016-CE09B2EE01E3}', '{803D6B71-4572-4150-A64F-CF878A317903}', '{D325A6A7-7FF4-4604-BCDA-E1F46F919958}', 2, 'Often'),
('{A7382165-F83F-4CDB-9F66-41FA2F6E8698}', '{803D6B71-4572-4150-A64F-CF878A317903}', '{D325A6A7-7FF4-4604-BCDA-E1F46F919958}', 3, 'Sometimes'),
('{0056625B-249E-4634-8252-AAB514933D08}', '{803D6B71-4572-4150-A64F-CF878A317903}', '{D325A6A7-7FF4-4604-BCDA-E1F46F919958}', 4, 'Never'),
('{115615E8-5443-457F-90CC-FC1ADED477C4}', '{45F45716-223E-4401-A0C2-34AAF1B6B48B}', '{F51277EE-FA82-4083-8553-F8EDD0247A8F}', 1, 'Very satisfied'),
('{5BD9182E-2832-4EBB-B7F4-5C8FF47AA968}', '{45F45716-223E-4401-A0C2-34AAF1B6B48B}', '{F51277EE-FA82-4083-8553-F8EDD0247A8F}', 2, 'Satisfied'),
('{9D3AF31B-DF93-4DC3-A6D1-315E9DF724E8}', '{45F45716-223E-4401-A0C2-34AAF1B6B48B}', '{F51277EE-FA82-4083-8553-F8EDD0247A8F}', 3, 'Neutral'),
('{12E5DFA8-1EA3-41C8-8F4F-BB25F1169005}', '{45F45716-223E-4401-A0C2-34AAF1B6B48B}', '{F51277EE-FA82-4083-8553-F8EDD0247A8F}', 4, 'Dissatisfied'),
('{B75C3D8A-2D2C-411E-9D68-77B6A0D370E7}', '{45F45716-223E-4401-A0C2-34AAF1B6B48B}', '{F51277EE-FA82-4083-8553-F8EDD0247A8F}', 5, 'Very dissatisfied'),
('{045465A7-D46F-4BFB-AB5B-ACD8FDEDEA85}', '{45F45716-223E-4401-A0C2-34AAF1B6B48B}', '{3B433760-A571-4C35-A1A5-0289C6A9F4CB}', 1, 'Yes'),
('{B0073EFF-34C4-41E8-A711-3FE3F2DAB0D5}', '{45F45716-223E-4401-A0C2-34AAF1B6B48B}', '{3B433760-A571-4C35-A1A5-0289C6A9F4CB}', 2, 'No'),
('{62EA946D-970F-41D0-9808-A6C823EF406F}', '{45F45716-223E-4401-A0C2-34AAF1B6B48B}', '{D5990BE6-B0E1-4212-8AAC-D51959009CFD}', 1, 'Library'),
('{993F60CF-A40E-42F2-A30C-E99658EBB538}', '{45F45716-223E-4401-A0C2-34AAF1B6B48B}', '{D5990BE6-B0E1-4212-8AAC-D51959009CFD}', 2, 'Laboratory'),
('{9AA7E56C-94CB-4CB0-BE9B-EAE897186BBD}', '{45F45716-223E-4401-A0C2-34AAF1B6B48B}', '{D5990BE6-B0E1-4212-8AAC-D51959009CFD}', 3, 'Cafeteria'),
('{C99F31CC-5746-4B0D-8D68-4C846F8F183D}', '{45F45716-223E-4401-A0C2-34AAF1B6B48B}', '{D5990BE6-B0E1-4212-8AAC-D51959009CFD}', 4, 'Hostel'),
('{6409AFC7-DE5C-4287-A8E3-4B742D9A6A56}', '{45F45716-223E-4401-A0C2-34AAF1B6B48B}', '{D5990BE6-B0E1-4212-8AAC-D51959009CFD}', 5, 'Sports Complex'),
('{ADD1E7F0-AC38-47ED-8072-CC6738D2F0E6}', '{45F45716-223E-4401-A0C2-34AAF1B6B48B}', '{FE9A7208-2922-4FE6-87BC-A644F1373BE1}', 1, '18 years'),
('{BEA9B9BE-E998-49CC-859F-D1E24C179C3D}', '{45F45716-223E-4401-A0C2-34AAF1B6B48B}', '{FE9A7208-2922-4FE6-87BC-A644F1373BE1}', 2, '19 â€“ 25 years'),
('{1C79DBA4-D2F8-4A9C-8699-BAF3849D94BE}', '{45F45716-223E-4401-A0C2-34AAF1B6B48B}', '{FE9A7208-2922-4FE6-87BC-A644F1373BE1}', 3, '26 â€“ 30 years'),
('{5C7CFF1D-ACE2-460B-A600-4445B5D5490D}', '{45F45716-223E-4401-A0C2-34AAF1B6B48B}', '{FE9A7208-2922-4FE6-87BC-A644F1373BE1}', 4, '31- 35 years'),
('{E28B6294-AB5A-4BE1-B90D-364AA0AD0E01}', '{45F45716-223E-4401-A0C2-34AAF1B6B48B}', '{FE9A7208-2922-4FE6-87BC-A644F1373BE1}', 5, '36 years and above'),
('{741C5FB9-D4B7-45D3-93AC-F41F4C79C307}', '{45F45716-223E-4401-A0C2-34AAF1B6B48B}', '{FE748943-2508-427D-BD0A-4A0F8783AE03}', 1, 'Male'),
('{8BC11171-9AE6-4FFB-B271-D34C74E2F74B}', '{45F45716-223E-4401-A0C2-34AAF1B6B48B}', '{FE748943-2508-427D-BD0A-4A0F8783AE03}', 2, 'Female'),
('{52638BE8-A7F4-45BD-874A-92D4AC66F8F7}', '{45F45716-223E-4401-A0C2-34AAF1B6B48B}', '{7B36AE1F-6F1F-403D-98AE-EB6384E7C590}', 1, 'Freshman'),
('{778A992C-3D4E-4F79-875F-02D0B7152DA3}', '{45F45716-223E-4401-A0C2-34AAF1B6B48B}', '{7B36AE1F-6F1F-403D-98AE-EB6384E7C590}', 2, 'Sophomore'),
('{2CBF4645-76C6-4166-9D4A-D21B15308DB3}', '{45F45716-223E-4401-A0C2-34AAF1B6B48B}', '{7B36AE1F-6F1F-403D-98AE-EB6384E7C590}', 3, 'Junior Year'),
('{22E488F5-00FE-4157-BD06-399C6B9D5E23}', '{45F45716-223E-4401-A0C2-34AAF1B6B48B}', '{7B36AE1F-6F1F-403D-98AE-EB6384E7C590}', 4, 'Senior Year'),
('{2EBA3C04-1DF1-4326-86F6-4DB01EDED51E}', '{45F45716-223E-4401-A0C2-34AAF1B6B48B}', '{7B36AE1F-6F1F-403D-98AE-EB6384E7C590}', 5, 'Graduate students'),
('{C7798FFA-31B2-4566-935E-02E0BC567157}', '{6CD09A94-DE73-46E8-8CA2-B447E5A4F65E}', '{C3255285-49F8-4B0D-92F4-83FCAD560CCA}', 1, 'Extremely easy'),
('{36D45E05-125D-46DB-A319-9489CBB70A02}', '{6CD09A94-DE73-46E8-8CA2-B447E5A4F65E}', '{C3255285-49F8-4B0D-92F4-83FCAD560CCA}', 2, 'Very easy'),
('{E604372F-143F-4D4B-A2A8-F4EF9C79FA36}', '{6CD09A94-DE73-46E8-8CA2-B447E5A4F65E}', '{C3255285-49F8-4B0D-92F4-83FCAD560CCA}', 3, 'Somewhat easy'),
('{9CB2D895-B84E-43E7-9357-5791929CBFDF}', '{6CD09A94-DE73-46E8-8CA2-B447E5A4F65E}', '{C3255285-49F8-4B0D-92F4-83FCAD560CCA}', 4, 'Not so easy'),
('{4D04E2BE-BD97-4A1F-A6EA-5AC500AEAAEC}', '{6CD09A94-DE73-46E8-8CA2-B447E5A4F65E}', '{C3255285-49F8-4B0D-92F4-83FCAD560CCA}', 5, 'Not at all easy'),
('{8E2E50A4-2D52-4F43-8C39-E0573FFE12D3}', '{6CD09A94-DE73-46E8-8CA2-B447E5A4F65E}', '{F79CBD91-9042-428E-B003-0232CEE60F44}', 1, 'Extremely likely'),
('{B11E8DD9-3E79-4EE2-B1D8-D0CD0DE3C7FF}', '{6CD09A94-DE73-46E8-8CA2-B447E5A4F65E}', '{F79CBD91-9042-428E-B003-0232CEE60F44}', 2, 'Very likely'),
('{69499C2A-7ACA-454F-886D-E19334896532}', '{6CD09A94-DE73-46E8-8CA2-B447E5A4F65E}', '{F79CBD91-9042-428E-B003-0232CEE60F44}', 3, 'Somewhat likely'),
('{B7D54AEE-914C-4988-8EC8-5BBAF8F994F8}', '{6CD09A94-DE73-46E8-8CA2-B447E5A4F65E}', '{F79CBD91-9042-428E-B003-0232CEE60F44}', 4, 'Not so likely'),
('{82C765C2-0007-4575-948A-7DE4A31F3E54}', '{6CD09A94-DE73-46E8-8CA2-B447E5A4F65E}', '{F79CBD91-9042-428E-B003-0232CEE60F44}', 5, 'Not at all likely'),
('{3E73637D-6513-4C86-843C-D0006E140094}', '{6CD09A94-DE73-46E8-8CA2-B447E5A4F65E}', '{84CAF18C-04E5-41E9-8798-D88C7F608D50}', 1, 'Very helpful'),
('{90A0EA47-251A-4616-9390-AC217E0C2FA3}', '{6CD09A94-DE73-46E8-8CA2-B447E5A4F65E}', '{84CAF18C-04E5-41E9-8798-D88C7F608D50}', 2, 'Helpful'),
('{A906DD24-C7DD-4726-BEA3-52C377E42431}', '{6CD09A94-DE73-46E8-8CA2-B447E5A4F65E}', '{84CAF18C-04E5-41E9-8798-D88C7F608D50}', 3, 'Neither helpful nor unhelpful'),
('{98C5C161-C216-4272-BB74-8A02B5A529B9}', '{6CD09A94-DE73-46E8-8CA2-B447E5A4F65E}', '{84CAF18C-04E5-41E9-8798-D88C7F608D50}', 4, 'Unhelpful'),
('{21A5C1B6-50CE-4F49-8530-F8A5099D26F0}', '{6CD09A94-DE73-46E8-8CA2-B447E5A4F65E}', '{84CAF18C-04E5-41E9-8798-D88C7F608D50}', 5, 'Very unhelpful'),
('{BF16D34F-A9F9-4196-A794-5960509E763E}', '{6CD09A94-DE73-46E8-8CA2-B447E5A4F65E}', '{D34D9EF5-D482-41A7-A958-F0E19897BC93}', 1, 'Yes'),
('{B40D4B9B-BD30-46FB-A5D3-2FBE60BD5F38}', '{6CD09A94-DE73-46E8-8CA2-B447E5A4F65E}', '{D34D9EF5-D482-41A7-A958-F0E19897BC93}', 2, 'No'),
('{5D162436-D0D4-4388-8C0A-BD9774CDD3C2}', '{7D479014-1A85-4A6D-82CB-C62C6542A29A}', '{EEC37376-A5EA-483F-8ED3-0811DA621485}', 1, 'secA-1'),
('{8BF965F1-997E-48A9-803A-8467284A69E4}', '{7D479014-1A85-4A6D-82CB-C62C6542A29A}', '{EEC37376-A5EA-483F-8ED3-0811DA621485}', 2, 'secA-2');

-- --------------------------------------------------------

--
-- Table structure for table `svms_survey_question_type`
--

DROP TABLE IF EXISTS `svms_survey_question_type`;
CREATE TABLE IF NOT EXISTS `svms_survey_question_type` (
  `ID` varchar(40) NOT NULL,
  `Type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `svms_survey_question_type`
--

INSERT INTO `svms_survey_question_type` (`ID`, `Type`) VALUES
('{B9DAF654-498D-4CC6-B4D3-F4225F9A8094}', 'radio button'),
('{2DC40673-B6F3-4048-A767-71A434AE9FD4}', 'question');

-- --------------------------------------------------------

--
-- Table structure for table `tms_assign`
--

DROP TABLE IF EXISTS `tms_assign`;
CREATE TABLE IF NOT EXISTS `tms_assign` (
  `id` varchar(40) NOT NULL,
  `assign_to` varchar(40) NOT NULL,
  `assign_by` varchar(40) NOT NULL,
  `assing_date` date NOT NULL,
  `comment` varchar(1000) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`,`assign_to`,`assign_by`,`assing_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tms_assign`
--

INSERT INTO `tms_assign` (`id`, `assign_to`, `assign_by`, `assing_date`, `comment`, `status`) VALUES
('24', 'naeema@gmail.com', 'ryhan@gmail.com', '2018-09-25', 'TEST2                               \r\n                ', 0),
('24', 'naeema@gmail.com', 'ryhan@gmail.com', '2018-10-01', '                 test                ', 1),
('24', 'ryhan@gmail.com', 'ryhan@gmail.com', '2018-10-01', 'Test                          \r\n                ', 0),
('25', 'naeema@gmail.com', 'ryhan@gmail.com', '2018-10-08', 'Do the task very carefully                 \r\n                ', 1),
('27', 'naeema@gmail.com', 'ryhan@gmail.com', '2018-09-25', 'test\r\n                                  \r\n                ', 0),
('27', 'ryhan@gmail.com', 'naeema@gmail.com', '2018-09-25', '\r\n       tesy2                          \r\n                ', 1),
('28', 'ryhan@gmail.com', 'naeema@gmail.com', '2018-09-30', '\r\n          test                       \r\n                ', 1),
('32', 'ryhan@gmail.com', 'naeema@gmail.com', '2018-10-08', 'TEST               \r\n                ', 1),
('33', 'ryhan@gmail.com', 'naeema@gmail.com', '2018-10-08', 'TEST2                \r\n                ', 1),
('34', 'ryhan@gmail.com', 'ryhan@gmail.com', '2018-10-09', 'Study more and more               \r\n                ', 1),
('35', 'ryhan@gmail.com', 'avi@gmail.com', '2018-10-09', '  Do study                \r\n                ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tms_task`
--

DROP TABLE IF EXISTS `tms_task`;
CREATE TABLE IF NOT EXISTS `tms_task` (
  `id` varchar(40) NOT NULL,
  `task_name` varchar(20) NOT NULL,
  `task_creator` varchar(40) NOT NULL,
  `task_category` varchar(20) NOT NULL,
  `date_of_assign` date NOT NULL,
  `date_of_submission` date NOT NULL,
  `last_date_of_update` date NOT NULL,
  `progress` int(11) NOT NULL DEFAULT '0',
  `details` varchar(1000) NOT NULL,
  `attachment` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tms_task`
--

INSERT INTO `tms_task` (`id`, `task_name`, `task_creator`, `task_category`, `date_of_assign`, `date_of_submission`, `last_date_of_update`, `progress`, `details`, `attachment`) VALUES
('1539613941', 'Class Test', 'ryhan@gmail.com', 'Study', '2018-10-15', '2018-10-26', '2018-10-15', 0, ';ljlj', '1539613941'),
('1539614267', 'Class Test', 'ryhan@gmail.com', 'Office', '2018-10-15', '2018-10-20', '2018-10-15', 0, 'tem,s', '1539614267.pdf'),
('24', 'test11', 'ryhan@gmail.com', 'Study', '2018-09-17', '2018-10-26', '2018-10-08', 11, 'DIP', '0'),
('25', 'Class Test', 'ryhan@gmail.com', 'Study', '2018-09-17', '2018-10-29', '2018-10-08', 6, 'DIP Class test', '0'),
('26', 'test11', 'ryhan@gmail.com', 'Study', '2018-08-09', '2018-10-26', '2018-10-08', 7, 'update date test', '0'),
('27', 'Solve the 5x5x5 cube', 'ryhan@gmail.com', 'Study', '2018-09-25', '2018-10-27', '2018-10-09', 3, 'You Have to solve the cube in 30 Minutes', '0'),
('32', 'test11111133', 'naeema@gmail.com', 'Appointment', '2018-10-08', '2018-10-31', '2018-10-09', 0, 'TEST', '0'),
('33', 'test2', 'naeema@gmail.com', 'Study', '2018-10-08', '2018-10-31', '2018-10-08', 0, 'TEST2', '0'),
('35', 'Class Test', 'avi@gmail.com', 'Study', '2018-10-09', '2018-10-30', '2018-10-09', 0, 'Class TEST', '0'),
('36', 'test11', '160230', 'hh', '2018-10-11', '2018-10-18', '2018-10-18', 0, 'lll', '0'),
('53', 'test11', '160230', 'hh', '2018-10-10', '2018-10-10', '2018-10-12', 0, ';lk;lkj', NULL),
('75', 'test', 'ryhan@gmail.com', 'Programming Contest', '2018-10-15', '2018-10-26', '2018-10-15', 0, 'kkkkk', '1539613080');

-- --------------------------------------------------------

--
-- Table structure for table `tms_task_category`
--

DROP TABLE IF EXISTS `tms_task_category`;
CREATE TABLE IF NOT EXISTS `tms_task_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `task_type` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tms_task_category`
--

INSERT INTO `tms_task_category` (`id`, `task_type`) VALUES
(1, 'Study'),
(2, 'Office'),
(3, 'Appointment'),
(4, 'Programming Contest');

-- --------------------------------------------------------

--
-- Table structure for table `ums_discipline`
--

DROP TABLE IF EXISTS `ums_discipline`;
CREATE TABLE IF NOT EXISTS `ums_discipline` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `ShortCode` varchar(20) DEFAULT NULL,
  `SchoolID` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ums_discipline`
--

INSERT INTO `ums_discipline` (`ID`, `Name`, `ShortCode`, `SchoolID`) VALUES
('{0CF37516-06FE-41CD-93AD-D2D1652509D6}', 'Mathematics', 'MATH', '{39DDC0C2-CFC2-4246-8748-8812B1751A5C}'),
('{560A0FC0-6221-497D-8D41-E584EE4BBEE3}', 'Architecture', 'ARCH', '{39DDC0C2-CFC2-4246-8748-8812B1751A5C}'),
('{63F3C00B-6168-4FBD-AB01-7A1FE413BDDE}', 'Forestry and Wood Technology', 'FWT', '{4D46079B-AFA3-40F1-B8D1-6CC9E9F56812}'),
('{AF41CC9F-3BCD-4952-9D02-17184CC40C79}', 'Urban and Rural Planning', 'URP', '{4D46079B-AFA3-40F1-B8D1-6CC9E9F56812}'),
('{E065BBA7-D0C5-4DFA-9768-81B6F056EB4A}', 'Foresty and Marine Resource Technology', 'FMRT', '{4D46079B-AFA3-40F1-B8D1-6CC9E9F56812}'),
('{E7280448-E379-424E-A11D-357F4334AC8D}', 'Physics', 'PHY', '{39DDC0C2-CFC2-4246-8748-8812B1751A5C}'),
('{FFDB1CB8-AF34-4381-8971-9784DCB516C5}', 'Computer Science and Engineering', 'CSE', '{39DDC0C2-CFC2-4246-8748-8812B1751A5C}');

-- --------------------------------------------------------

--
-- Table structure for table `ums_permission`
--

DROP TABLE IF EXISTS `ums_permission`;
CREATE TABLE IF NOT EXISTS `ums_permission` (
  `TableID` int(11) NOT NULL AUTO_INCREMENT,
  `ID` varchar(100) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Category` varchar(100) NOT NULL,
  PRIMARY KEY (`TableID`)
) ENGINE=InnoDB AUTO_INCREMENT=3309 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ums_permission`
--

INSERT INTO `ums_permission` (`TableID`, `ID`, `Name`, `Category`) VALUES
(3185, 'COURSE_C', 'COURSE_C', 'COURSE'),
(3186, 'COURSE_R', 'COURSE_R', 'COURSE'),
(3187, 'COURSE_U', 'COURSE_U', 'COURSE'),
(3188, 'COURSE_D', 'COURSE_D', 'COURSE'),
(3189, 'COURSE_TYPE_C', 'COURSE_TYPE_C', 'COURSE TYPE'),
(3190, 'COURSE_TYPE_R', 'COURSE_TYPE_R', 'COURSE TYPE'),
(3191, 'COURSE_TYPE_U', 'COURSE_TYPE_U', 'COURSE TYPE'),
(3192, 'COURSE_TYPE_D', 'COURSE_TYPE_D', 'COURSE TYPE'),
(3193, 'COURSE_SESSIONAL_TYPE_C', 'COURSE_SESSIONAL_TYPE_C', 'COURSE SESSIONAL TYPE'),
(3194, 'COURSE_SESSIONAL_TYPE_R', 'COURSE_SESSIONAL_TYPE_R', 'COURSE SESSIONAL TYPE'),
(3195, 'COURSE_SESSIONAL_TYPE_U', 'COURSE_SESSIONAL_TYPE_U', 'COURSE SESSIONAL TYPE'),
(3196, 'COURSE_SESSIONAL_TYPE_D', 'COURSE_SESSIONAL_TYPE_D', 'COURSE SESSIONAL TYPE'),
(3197, 'CLUB_C', 'CLUB_C', 'CLUB'),
(3198, 'CLUB_R', 'CLUB_R', 'CLUB'),
(3199, 'CLUB_U', 'CLUB_U', 'CLUB'),
(3200, 'CLUB_D', 'CLUB_D', 'CLUB'),
(3201, 'DISCUSSION_C', 'DISCUSSION_C', 'DISCUSSION'),
(3202, 'DISCUSSION_R', 'DISCUSSION_R', 'DISCUSSION'),
(3203, 'DISCUSSION_U', 'DISCUSSION_U', 'DISCUSSION'),
(3204, 'DISCUSSION_D', 'DISCUSSION_D', 'DISCUSSION'),
(3205, 'DISCUSSION_CAT_C', 'DISCUSSION_CAT_C', 'DISCUSSION CATEGORY'),
(3206, 'DISCUSSION_CAT_R', 'DISCUSSION_CAT_R', 'DISCUSSION CATEGORY'),
(3207, 'DISCUSSION_CAT_U', 'DISCUSSION_CAT_U', 'DISCUSSION CATEGORY'),
(3208, 'DISCUSSION_CAT_D', 'DISCUSSION_CAT_D', 'DISCUSSION CATEGORY'),
(3209, 'DISCUSSION_COMMENT_C', 'DISCUSSION_COMMENT_C', 'DISCUSSION COMMENT'),
(3210, 'DISCUSSION_COMMENT_R', 'DISCUSSION_COMMENT_R', 'DISCUSSION COMMENT'),
(3211, 'DISCUSSION_COMMENT_U', 'DISCUSSION_COMMENT_U', 'DISCUSSION COMMENT'),
(3212, 'DISCUSSION_COMMENT_D', 'DISCUSSION_COMMENT_D', 'DISCUSSION COMMENT'),
(3213, 'DISCIPLINE_C', 'DISCIPLINE_C', 'DISCIPLINE'),
(3214, 'DISCIPLINE_R', 'DISCIPLINE_R', 'DISCIPLINE'),
(3215, 'DISCIPLINE_U', 'DISCIPLINE_U', 'DISCIPLINE'),
(3216, 'DISCIPLINE_D', 'DISCIPLINE_D', 'DISCIPLINE'),
(3217, 'FILE_C', 'FILE_C', 'FILE'),
(3218, 'FILE_R', 'FILE_R', 'FILE'),
(3219, 'FILE_U', 'FILE_U', 'FILE'),
(3220, 'FILE_D', 'FILE_D', 'FILE'),
(3221, 'PERMISSION_C', 'PERMISSION_C', 'PERMISSION'),
(3222, 'PERMISSION_R', 'PERMISSION_R', 'PERMISSION'),
(3223, 'PERMISSION_U', 'PERMISSION_U', 'PERMISSION'),
(3224, 'PERMISSION_D', 'PERMISSION_D', 'PERMISSION'),
(3225, 'POSITION_C', 'POSITION_C', 'POSITION'),
(3226, 'POSITION_R', 'POSITION_R', 'POSITION'),
(3227, 'POSITION_U', 'POSITION_U', 'POSITION'),
(3228, 'POSITION_D', 'POSITION_D', 'POSITION'),
(3229, 'PROJECT_C', 'PROJECT_C', 'PROJECT'),
(3230, 'PROJECT_R', 'PROJECT_R', 'PROJECT'),
(3231, 'PROJECT_U', 'PROJECT_U', 'PROJECT'),
(3232, 'PROJECT_D', 'PROJECT_D', 'PROJECT'),
(3233, 'QUESTION_C', 'QUESTION_C', 'QUESTION'),
(3234, 'QUESTION_R', 'QUESTION_R', 'QUESTION'),
(3235, 'QUESTION_U', 'QUESTION_U', 'QUESTION'),
(3236, 'QUESTION_D', 'QUESTION_D', 'QUESTION'),
(3237, 'REGISTRATION_C', 'REGISTRATION_C', 'REGISTRATION'),
(3238, 'REGISTRATION_R', 'REGISTRATION_R', 'REGISTRATION'),
(3239, 'REGISTRATION_U', 'REGISTRATION_U', 'REGISTRATION'),
(3240, 'REGISTRATION_D', 'REGISTRATION_D', 'REGISTRATION'),
(3241, 'RESULT_C', 'RESULT_C', 'RESULT'),
(3242, 'RESULT_R', 'RESULT_R', 'RESULT'),
(3243, 'RESULT_U', 'RESULT_U', 'RESULT'),
(3244, 'RESULT_D', 'RESULT_D', 'RESULT'),
(3245, 'ATTENDANCE_C', 'ATTENDANCE_C', 'ATTENDANCE'),
(3246, 'ATTENDANCE_R', 'ATTENDANCE_R', 'ATTENDANCE'),
(3247, 'ATTENDANCE_U', 'ATTENDANCE_U', 'ATTENDANCE'),
(3248, 'ATTENDANCE_D', 'ATTENDANCE_D', 'ATTENDANCE'),
(3249, 'MARKS_SETUP_C', 'MARKS_SETUP_C', 'MARKS_SETUP'),
(3250, 'MARKS_SETUP_R', 'MARKS_SETUP_R', 'MARKS_SETUP'),
(3251, 'MARKS_SETUP_U', 'MARKS_SETUP_U', 'MARKS_SETUP'),
(3252, 'MARKS_SETUP_D', 'MARKS_SETUP_D', 'MARKS_SETUP'),
(3253, 'GRADE_SETUP_C', 'GRADE_SETUP_C', 'GRADE_SETUP'),
(3254, 'GRADE_SETUP_R', 'GRADE_SETUP_R', 'GRADE_SETUP'),
(3255, 'GRADE_SETUP_U', 'GRADE_SETUP_U', 'GRADE_SETUP'),
(3256, 'GRADE_SETUP_D', 'GRADE_SETUP_D', 'GRADE_SETUP'),
(3257, 'ROLE_C', 'ROLE_C', 'ROLE'),
(3258, 'ROLE_R', 'ROLE_R', 'ROLE'),
(3259, 'ROLE_U', 'ROLE_U', 'ROLE'),
(3260, 'ROLE_D', 'ROLE_D', 'ROLE'),
(3261, 'SCHOOL_C', 'SCHOOL_C', 'SCHOOL'),
(3262, 'SCHOOL_R', 'SCHOOL_R', 'SCHOOL'),
(3263, 'SCHOOL_U', 'SCHOOL_U', 'SCHOOL'),
(3264, 'SCHOOL_D', 'SCHOOL_D', 'SCHOOL'),
(3265, 'SESSION_C', 'SESSION_C', 'SESSION'),
(3266, 'SESSION_R', 'SESSION_R', 'SESSION'),
(3267, 'SESSION_U', 'SESSION_U', 'SESSION'),
(3268, 'SESSION_D', 'SESSION_D', 'SESSION'),
(3269, 'SURVEY_C', 'SURVEY_C', 'SURVEY'),
(3270, 'SURVEY_R', 'SURVEY_R', 'SURVEY'),
(3271, 'SURVEY_U', 'SURVEY_U', 'SURVEY'),
(3272, 'SURVEY_D', 'SURVEY_D', 'SURVEY'),
(3273, 'SURVEY_QUESTION_C', 'SURVEY_QUESTION_C', 'SURVEY QUESTION'),
(3274, 'SURVEY_QUESTION_R', 'SURVEY_QUESTION_R', 'SURVEY QUESTION'),
(3275, 'SURVEY_QUESTION_U', 'SURVEY_QUESTION_U', 'SURVEY QUESTION'),
(3276, 'SURVEY_QUESTION_D', 'SURVEY_QUESTION_D', 'SURVEY QUESTION'),
(3277, 'SURVEY_QUESTION_TYPE_C', 'SURVEY_QUESTION_TYPE_C', 'SURVEY QUESTION TYPE'),
(3278, 'SURVEY_QUESTION_TYPE_R', 'SURVEY_QUESTION_TYPE_R', 'SURVEY QUESTION TYPE'),
(3279, 'SURVEY_QUESTION_TYPE_U', 'SURVEY_QUESTION_TYPE_U', 'SURVEY QUESTION TYPE'),
(3280, 'SURVEY_QUESTION_TYPE_D', 'SURVEY_QUESTION_TYPE_D', 'SURVEY QUESTION TYPE'),
(3281, 'TERM_C', 'TERM_C', 'TERM'),
(3282, 'TERM_R', 'TERM_R', 'TERM'),
(3283, 'TERM_U', 'TERM_U', 'TERM'),
(3284, 'TERM_D', 'TERM_D', 'TERM'),
(3285, 'USER_C', 'USER_C', 'USER'),
(3286, 'USER_R', 'USER_R', 'USER'),
(3287, 'USER_U', 'USER_U', 'USER'),
(3288, 'USER_D', 'USER_D', 'USER'),
(3289, 'YEAR_C', 'YEAR_C', 'YEAR'),
(3290, 'YEAR_R', 'YEAR_R', 'YEAR'),
(3291, 'YEAR_U', 'YEAR_U', 'YEAR'),
(3292, 'YEAR_D', 'YEAR_D', 'YEAR'),
(3293, 'VIDEO_C', 'VIDEO_C', 'VIDEO'),
(3294, 'VIDEO_R', 'VIDEO_R', 'VIDEO'),
(3295, 'VIDEO_U', 'VIDEO_U', 'VIDEO'),
(3296, 'VIDEO_D', 'VIDEO_D', 'VIDEO'),
(3297, 'VIDEO_COMMENT_C', 'VIDEO_COMMENT_C', 'VIDEO COMMENT'),
(3298, 'VIDEO_COMMENT_R', 'VIDEO_COMMENT_R', 'VIDEO COMMENT'),
(3299, 'VIDEO_COMMENT_U', 'VIDEO_COMMENT_U', 'VIDEO COMMENT'),
(3300, 'VIDEO_COMMENT_D', 'VIDEO_COMMENT_D', 'VIDEO COMMENT'),
(3301, 'TASK_C', 'TASK_C', 'TASK'),
(3302, 'TASK_R', 'TASK_R', 'TASK'),
(3303, 'TASK_U', 'TASK_U', 'TASK'),
(3304, 'TASK_D', 'TASK_D', 'TASK'),
(3305, 'TASK_CATEGORY_C', 'TASK_CATEGORY_C', 'TASK_CATEGORY'),
(3306, 'TASK_CATEGORY_R', 'TASK_CATEGORY_R', 'TASK_CATEGORY'),
(3307, 'TASK_CATEGORY_U', 'TASK_CATEGORY_U', 'TASK_CATEGORY'),
(3308, 'TASK_CATEGORY_D', 'TASK_CATEGORY_D', 'TASK_CATEGORY');

-- --------------------------------------------------------

--
-- Table structure for table `ums_position`
--

DROP TABLE IF EXISTS `ums_position`;
CREATE TABLE IF NOT EXISTS `ums_position` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ums_position`
--

INSERT INTO `ums_position` (`ID`, `Name`) VALUES
('{1BFE76DB-C2AA-4FAA-A23B-F43E6150A2F6}', 'Section Officer'),
('{2E024DF5-BD45-4EF2-A5E3-43BCA3E9777F}', 'Pro-vice Chancellor'),
('{64D25DDA-16B6-47B8-BBFC-4E2AAF5680C7}', 'Assistant Professor'),
('{7CDA1F32-A2F8-4469-B5A8-C2038FCE1F9A}', 'Lecturer'),
('{818DE12F-60CC-42E4-BAEC-48EAAED65179}', 'Dean of School'),
('{928EE9FF-E02D-470F-9A6A-AD0EB38B848F}', 'Vice Chancellor'),
('{92FDDA3F-1E91-4AA3-918F-EB595F85790C}', 'Daywise Worker'),
('{932CB0EE-76C2-448E-A40E-2D167EECC479}', 'Registrar'),
('{ADA027D3-21C1-47AF-A21D-759CAFCFE58D}', 'Assistant Registrar'),
('{B76EB035-EA26-4CEB-B029-1C6129574D98}', 'Librarian'),
('{B78C7A7B-4D38-4025-8170-7B8C9F291946}', 'Head of Discipline'),
('{C27B6BCF-FB83-4F3D-85CA-B7870D8B12D0}', 'Associate Professor'),
('{EB4880E2-01B3-4C6E-A2C9-89B6E5427C0A}', 'Professor');

-- --------------------------------------------------------

--
-- Table structure for table `ums_role`
--

DROP TABLE IF EXISTS `ums_role`;
CREATE TABLE IF NOT EXISTS `ums_role` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ums_role`
--

INSERT INTO `ums_role` (`ID`, `Name`) VALUES
('administrator', 'Administrator'),
('registration coordinator', 'Registration Coordinator'),
('student', 'Student'),
('stuff', 'Stuff'),
('tabulator', 'Tabulator'),
('teacher', 'Teacher');

-- --------------------------------------------------------

--
-- Table structure for table `ums_role_permission`
--

DROP TABLE IF EXISTS `ums_role_permission`;
CREATE TABLE IF NOT EXISTS `ums_role_permission` (
  `Row` int(11) NOT NULL AUTO_INCREMENT,
  `RoleID` varchar(40) NOT NULL,
  `PermissionID` varchar(100) NOT NULL,
  PRIMARY KEY (`Row`)
) ENGINE=InnoDB AUTO_INCREMENT=2658 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ums_role_permission`
--

INSERT INTO `ums_role_permission` (`Row`, `RoleID`, `PermissionID`) VALUES
(2090, 'administrator', 'ATTENDANCE_C'),
(2091, 'administrator', 'ATTENDANCE_R'),
(2092, 'administrator', 'ATTENDANCE_U'),
(2093, 'administrator', 'ATTENDANCE_D'),
(2094, 'administrator', 'CLUB_C'),
(2095, 'administrator', 'CLUB_R'),
(2096, 'administrator', 'CLUB_U'),
(2097, 'administrator', 'CLUB_D'),
(2098, 'administrator', 'COURSE_C'),
(2099, 'administrator', 'COURSE_R'),
(2100, 'administrator', 'COURSE_U'),
(2101, 'administrator', 'COURSE_D'),
(2102, 'administrator', 'COURSE_SESSIONAL_TYPE_C'),
(2103, 'administrator', 'COURSE_SESSIONAL_TYPE_R'),
(2104, 'administrator', 'COURSE_SESSIONAL_TYPE_U'),
(2105, 'administrator', 'COURSE_SESSIONAL_TYPE_D'),
(2106, 'administrator', 'COURSE_TYPE_C'),
(2107, 'administrator', 'COURSE_TYPE_R'),
(2108, 'administrator', 'COURSE_TYPE_U'),
(2109, 'administrator', 'COURSE_TYPE_D'),
(2110, 'administrator', 'DISCIPLINE_C'),
(2111, 'administrator', 'DISCIPLINE_R'),
(2112, 'administrator', 'DISCIPLINE_U'),
(2113, 'administrator', 'DISCIPLINE_D'),
(2114, 'administrator', 'DISCUSSION_C'),
(2115, 'administrator', 'DISCUSSION_R'),
(2116, 'administrator', 'DISCUSSION_U'),
(2117, 'administrator', 'DISCUSSION_D'),
(2118, 'administrator', 'DISCUSSION_CAT_C'),
(2119, 'administrator', 'DISCUSSION_CAT_R'),
(2120, 'administrator', 'DISCUSSION_CAT_U'),
(2121, 'administrator', 'DISCUSSION_CAT_D'),
(2122, 'administrator', 'DISCUSSION_COMMENT_C'),
(2123, 'administrator', 'DISCUSSION_COMMENT_R'),
(2124, 'administrator', 'DISCUSSION_COMMENT_U'),
(2125, 'administrator', 'DISCUSSION_COMMENT_D'),
(2126, 'administrator', 'FILE_C'),
(2127, 'administrator', 'FILE_R'),
(2128, 'administrator', 'FILE_U'),
(2129, 'administrator', 'FILE_D'),
(2130, 'administrator', 'GRADE_SETUP_C'),
(2131, 'administrator', 'GRADE_SETUP_R'),
(2132, 'administrator', 'GRADE_SETUP_U'),
(2133, 'administrator', 'GRADE_SETUP_D'),
(2134, 'administrator', 'MARKS_SETUP_C'),
(2135, 'administrator', 'MARKS_SETUP_R'),
(2136, 'administrator', 'MARKS_SETUP_U'),
(2137, 'administrator', 'MARKS_SETUP_D'),
(2138, 'administrator', 'PERMISSION_C'),
(2139, 'administrator', 'PERMISSION_R'),
(2140, 'administrator', 'PERMISSION_U'),
(2141, 'administrator', 'PERMISSION_D'),
(2142, 'administrator', 'POSITION_C'),
(2143, 'administrator', 'POSITION_R'),
(2144, 'administrator', 'POSITION_U'),
(2145, 'administrator', 'POSITION_D'),
(2146, 'administrator', 'PROJECT_C'),
(2147, 'administrator', 'PROJECT_R'),
(2148, 'administrator', 'PROJECT_U'),
(2149, 'administrator', 'PROJECT_D'),
(2150, 'administrator', 'QUESTION_C'),
(2151, 'administrator', 'QUESTION_R'),
(2152, 'administrator', 'QUESTION_U'),
(2153, 'administrator', 'QUESTION_D'),
(2154, 'administrator', 'REGISTRATION_C'),
(2155, 'administrator', 'REGISTRATION_R'),
(2156, 'administrator', 'REGISTRATION_U'),
(2157, 'administrator', 'REGISTRATION_D'),
(2158, 'administrator', 'RESULT_C'),
(2159, 'administrator', 'RESULT_R'),
(2160, 'administrator', 'RESULT_U'),
(2161, 'administrator', 'RESULT_D'),
(2162, 'administrator', 'ROLE_C'),
(2163, 'administrator', 'ROLE_R'),
(2164, 'administrator', 'ROLE_U'),
(2165, 'administrator', 'ROLE_D'),
(2166, 'administrator', 'SCHOOL_C'),
(2167, 'administrator', 'SCHOOL_R'),
(2168, 'administrator', 'SCHOOL_U'),
(2169, 'administrator', 'SCHOOL_D'),
(2170, 'administrator', 'SESSION_C'),
(2171, 'administrator', 'SESSION_R'),
(2172, 'administrator', 'SESSION_U'),
(2173, 'administrator', 'SESSION_D'),
(2174, 'administrator', 'SURVEY_C'),
(2175, 'administrator', 'SURVEY_R'),
(2176, 'administrator', 'SURVEY_U'),
(2177, 'administrator', 'SURVEY_D'),
(2178, 'administrator', 'SURVEY_QUESTION_C'),
(2179, 'administrator', 'SURVEY_QUESTION_R'),
(2180, 'administrator', 'SURVEY_QUESTION_U'),
(2181, 'administrator', 'SURVEY_QUESTION_D'),
(2182, 'administrator', 'SURVEY_QUESTION_FILLUP_C'),
(2183, 'administrator', 'SURVEY_QUESTION_FILLUP_R'),
(2184, 'administrator', 'SURVEY_QUESTION_FILLUP_U'),
(2185, 'administrator', 'SURVEY_QUESTION_FILLUP_D'),
(2186, 'administrator', 'SURVEY_QUESTION_TYPE_C'),
(2187, 'administrator', 'SURVEY_QUESTION_TYPE_R'),
(2188, 'administrator', 'SURVEY_QUESTION_TYPE_U'),
(2189, 'administrator', 'SURVEY_QUESTION_TYPE_D'),
(2190, 'administrator', 'TASK_C'),
(2191, 'administrator', 'TASK_R'),
(2192, 'administrator', 'TASK_U'),
(2193, 'administrator', 'TASK_D'),
(2194, 'administrator', 'TASK_CATEGORY_C'),
(2195, 'administrator', 'TASK_CATEGORY_R'),
(2196, 'administrator', 'TASK_CATEGORY_U'),
(2197, 'administrator', 'TASK_CATEGORY_D'),
(2198, 'administrator', 'TERM_C'),
(2199, 'administrator', 'TERM_R'),
(2200, 'administrator', 'TERM_U'),
(2201, 'administrator', 'TERM_D'),
(2202, 'administrator', 'USER_C'),
(2203, 'administrator', 'USER_R'),
(2204, 'administrator', 'USER_U'),
(2205, 'administrator', 'USER_D'),
(2206, 'administrator', 'VIDEO_C'),
(2207, 'administrator', 'VIDEO_R'),
(2208, 'administrator', 'VIDEO_U'),
(2209, 'administrator', 'VIDEO_D'),
(2210, 'administrator', 'VIDEO_COMMENT_C'),
(2211, 'administrator', 'VIDEO_COMMENT_R'),
(2212, 'administrator', 'VIDEO_COMMENT_U'),
(2213, 'administrator', 'VIDEO_COMMENT_D'),
(2214, 'administrator', 'YEAR_C'),
(2215, 'administrator', 'YEAR_R'),
(2216, 'administrator', 'YEAR_U'),
(2217, 'administrator', 'YEAR_D'),
(2509, 'student', 'CLUB_C'),
(2510, 'student', 'CLUB_R'),
(2511, 'student', 'CLUB_U'),
(2512, 'student', 'CLUB_D'),
(2513, 'student', 'DISCUSSION_C'),
(2514, 'student', 'DISCUSSION_R'),
(2515, 'student', 'DISCUSSION_U'),
(2516, 'student', 'DISCUSSION_D'),
(2517, 'student', 'DISCUSSION_COMMENT_C'),
(2518, 'student', 'DISCUSSION_COMMENT_R'),
(2519, 'student', 'DISCUSSION_COMMENT_U'),
(2520, 'student', 'DISCUSSION_COMMENT_D'),
(2521, 'student', 'PROJECT_C'),
(2522, 'student', 'PROJECT_R'),
(2523, 'student', 'PROJECT_U'),
(2524, 'student', 'PROJECT_D'),
(2525, 'student', 'QUESTION_C'),
(2526, 'student', 'QUESTION_R'),
(2527, 'student', 'QUESTION_U'),
(2528, 'student', 'QUESTION_D'),
(2529, 'student', 'REGISTRATION_R'),
(2530, 'student', 'RESULT_R'),
(2531, 'student', 'SURVEY_R'),
(2532, 'student', 'TASK_C'),
(2533, 'student', 'TASK_R'),
(2534, 'student', 'TASK_U'),
(2535, 'student', 'TASK_D'),
(2536, 'student', 'USER_R'),
(2537, 'student', 'VIDEO_C'),
(2538, 'student', 'VIDEO_R'),
(2539, 'student', 'VIDEO_U'),
(2540, 'student', 'VIDEO_D'),
(2582, 'teacher', 'COURSE_C'),
(2583, 'teacher', 'COURSE_R'),
(2584, 'teacher', 'COURSE_U'),
(2585, 'teacher', 'COURSE_D'),
(2586, 'teacher', 'DISCUSSION_C'),
(2587, 'teacher', 'DISCUSSION_R'),
(2588, 'teacher', 'DISCUSSION_U'),
(2589, 'teacher', 'DISCUSSION_D'),
(2590, 'teacher', 'DISCUSSION_CAT_C'),
(2591, 'teacher', 'DISCUSSION_CAT_R'),
(2592, 'teacher', 'DISCUSSION_CAT_U'),
(2593, 'teacher', 'DISCUSSION_CAT_D'),
(2594, 'teacher', 'DISCUSSION_COMMENT_C'),
(2595, 'teacher', 'DISCUSSION_COMMENT_R'),
(2596, 'teacher', 'DISCUSSION_COMMENT_U'),
(2597, 'teacher', 'DISCUSSION_COMMENT_D'),
(2598, 'teacher', 'FILE_C'),
(2599, 'teacher', 'FILE_R'),
(2600, 'teacher', 'FILE_U'),
(2601, 'teacher', 'FILE_D'),
(2602, 'teacher', 'PROJECT_C'),
(2603, 'teacher', 'PROJECT_R'),
(2604, 'teacher', 'PROJECT_U'),
(2605, 'teacher', 'PROJECT_D'),
(2606, 'teacher', 'QUESTION_C'),
(2607, 'teacher', 'QUESTION_R'),
(2608, 'teacher', 'QUESTION_U'),
(2609, 'teacher', 'QUESTION_D'),
(2610, 'teacher', 'REGISTRATION_C'),
(2611, 'teacher', 'REGISTRATION_R'),
(2612, 'teacher', 'REGISTRATION_U'),
(2613, 'teacher', 'REGISTRATION_D'),
(2614, 'teacher', 'RESULT_C'),
(2615, 'teacher', 'RESULT_R'),
(2616, 'teacher', 'RESULT_U'),
(2617, 'teacher', 'RESULT_D'),
(2618, 'teacher', 'SURVEY_R'),
(2619, 'teacher', 'TASK_C'),
(2620, 'teacher', 'TASK_R'),
(2621, 'teacher', 'TASK_U'),
(2622, 'teacher', 'TASK_D'),
(2643, 'stuff', 'PROJECT_C'),
(2644, 'stuff', 'PROJECT_R'),
(2645, 'stuff', 'PROJECT_U'),
(2646, 'stuff', 'PROJECT_D'),
(2647, 'stuff', 'QUESTION_C'),
(2648, 'stuff', 'QUESTION_R'),
(2649, 'stuff', 'QUESTION_U'),
(2650, 'stuff', 'QUESTION_D'),
(2651, 'stuff', 'REGISTRATION_R'),
(2652, 'stuff', 'RESULT_R'),
(2653, 'stuff', 'SURVEY_R'),
(2654, 'stuff', 'TASK_C'),
(2655, 'stuff', 'TASK_R'),
(2656, 'stuff', 'TASK_U'),
(2657, 'stuff', 'TASK_D');

-- --------------------------------------------------------

--
-- Table structure for table `ums_school`
--

DROP TABLE IF EXISTS `ums_school`;
CREATE TABLE IF NOT EXISTS `ums_school` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `DeanID` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ums_school`
--

INSERT INTO `ums_school` (`ID`, `Name`, `DeanID`) VALUES
('{39DDC0C2-CFC2-4246-8748-8812B1751A5C}', 'Science Engineering and Technology', ''),
('{4D46079B-AFA3-40F1-B8D1-6CC9E9F56812}', 'Life Science', ''),
('{86E0F021-B30D-48D2-B177-247180633C5E}', 'Social Science', ''),
('{879375F7-0A15-4705-AC90-C6786D279EF1}', 'Law and Humanities', ''),
('{CE09AA38-205B-4F50-A0E0-14DB8686C912}', 'Fine Arts', '');

-- --------------------------------------------------------

--
-- Table structure for table `ums_user`
--

DROP TABLE IF EXISTS `ums_user`;
CREATE TABLE IF NOT EXISTS `ums_user` (
  `ID` varchar(40) NOT NULL,
  `UniversityID` varchar(20) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `FirstName` varchar(50) DEFAULT NULL,
  `MiddleName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `DisciplineID` varchar(40) DEFAULT NULL,
  `Status` varchar(20) DEFAULT NULL,
  `IsLogged` varchar(10) DEFAULT NULL,
  `IsArchived` varchar(10) DEFAULT NULL,
  `IsDeleted` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Email` (`Email`),
  UNIQUE KEY `UniversityID` (`UniversityID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ums_user`
--

INSERT INTO `ums_user` (`ID`, `UniversityID`, `Email`, `Password`, `FirstName`, `MiddleName`, `LastName`, `DisciplineID`, `Status`, `IsLogged`, `IsArchived`, `IsDeleted`) VALUES
('a@gmail.com', '00', 'a@gmail.com', '$2y$10$K9pZXYBcyUVRFbxhBwvRn.aXNLisz/jHRj35FqW2b7OIIZSF7ox0S', 'Misty', '', 'Abir', '{560A0FC0-6221-497D-8D41-E584EE4BBEE3}', 'approved', NULL, NULL, NULL),
('avi@gmail.com', '160211', 'avi@gmail.com', '$2y$10$wXagOYqARCngVWm3ruVgteJ6Yqi0C.SKMTBlQaJsdOgs7SOrPEioe', 'Avi', 'Dev', 'Raha', '{FFDB1CB8-AF34-4381-8971-9784DCB516C5}', 'approved', NULL, NULL, NULL),
('aysha@gmail.com', '020208', 'aysha@gmail.com', '$2y$10$pJX46d.T.jkANrRShAm0qOMYkYJ/YbNfu09BFmcmMiYGKfuuEcWgO', 'Aysha', 'mrs', 'Akther', '{FFDB1CB8-AF34-4381-8971-9784DCB516C5}', 'approved', NULL, NULL, NULL),
('hafsasultana1720@gmail.com', '170215', 'hafsasultana1720@gmail.com', '$2y$10$IG8JpFLBAOdHiQY/6Kkj/OLG0l5PkxzmeipytqrBU6SnJ9PF.tq1.', 'Hafsa', '', 'Sultana', '{FFDB1CB8-AF34-4381-8971-9784DCB516C5}', 'approved', NULL, NULL, NULL),
('kashif@gmail.com', '020202', 'kashif@gmail.com', '$2y$10$pM7S85LE300vkDhYnFIz0.WKfpSPJLMNzTS4y1wLCH0TeR0qno27q', 'Kashif', 'Nizam', 'Khan', '{FFDB1CB8-AF34-4381-8971-9784DCB516C5}', 'approved', NULL, NULL, NULL),
('mina@gmail.com', '170088', 'mina@gmail.com', '$2y$10$auDf90WdgSCJRl7A07FNNuBJpV.dgJ6IHILI/49gAL7BWGCuk/34u', 'Miss', '', 'Mina', '{FFDB1CB8-AF34-4381-8971-9784DCB516C5}', 'approved', NULL, NULL, NULL),
('mkazi078@uottawa.ca', '020229', 'mkazi078@uottawa.ca', '$2y$10$l0gFzILMq03DcwcBGxIdgunnOd9G5kF8J8ucZZvCKkt8mNGlI74/W', 'Kazi', 'Masudul', 'Alam', '{FFDB1CB8-AF34-4381-8971-9784DCB516C5}', 'approved', NULL, NULL, NULL),
('naeema@gmail.com', '160231', 'naeema@gmail.com', '$2y$10$GNmdhbwSX54JFkI7vdHsTeTLbtumZKEbNB/ucPeDv77ANwE1.z7ly', 'Naeema', 'Binthe', 'Ashraf', '{FFDB1CB8-AF34-4381-8971-9784DCB516C5}', 'approved', NULL, NULL, NULL),
('razu@gmail.com', '110244', 'razu@gmail.com', '$2y$10$YMVm63Gd6dEiGPTHYf37e..O.A6sKmOlBeAUcl5GstxOvRTXjJcZK', 'Razu', '', 'Saha', '{FFDB1CB8-AF34-4381-8971-9784DCB516C5}', 'approved', NULL, NULL, NULL),
('ryhan@gmail.com', '160230', 'ryhan@gmail.com', '$2y$10$xqiBs8.uSifFPgOyDJ6./elFZhTVNMeS4UfRky9xzSldeqks/q8zu', 'Ryhan', 'Ahmed', 'Tamim', '{FFDB1CB8-AF34-4381-8971-9784DCB516C5}', 'approved', NULL, NULL, NULL),
('sujanasaha27@gmail.com', '170227', 'sujanasaha27@gmail.com', '$2y$10$03oskVSYF/rSGoK6sgOlTedhDmz571B0wBXgsjhrJHbIBl8fV9vUC', 'Sujana', '', 'Saha', '{FFDB1CB8-AF34-4381-8971-9784DCB516C5}', 'approved', NULL, NULL, NULL),
('tina27@gmail.com', '27', 'tina27@gmail.com', '$2y$10$q9FUnZiYHe5ZfWry5c1ktOco9z27JaQKllfCcHpo5vBXO6hxHTD1q', 'Miss', '', 'Tina', '{FFDB1CB8-AF34-4381-8971-9784DCB516C5}', 'approved', NULL, NULL, NULL),
('zahid@gmail.com', '020203', 'zahid@gmail.com', '$2y$10$nLZhZRneURR.v2AFqWw9KOe6/J60pCV/ioBnJnruw5H/Xf3x0lFy6', 'Zahidul', '', 'Islam', '{FFDB1CB8-AF34-4381-8971-9784DCB516C5}', 'approved', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ums_user_details`
--

DROP TABLE IF EXISTS `ums_user_details`;
CREATE TABLE IF NOT EXISTS `ums_user_details` (
  `ID` varchar(40) NOT NULL,
  `FatherName` varchar(100) DEFAULT NULL,
  `MotherName` varchar(100) DEFAULT NULL,
  `PermanentAddress` varchar(200) DEFAULT NULL,
  `HomePhone` varchar(20) DEFAULT NULL,
  `CurrentAddress` varchar(200) DEFAULT NULL,
  `MobilePhone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ums_user_details`
--

INSERT INTO `ums_user_details` (`ID`, `FatherName`, `MotherName`, `PermanentAddress`, `HomePhone`, `CurrentAddress`, `MobilePhone`) VALUES
('a@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
('avi@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
('aysha@gmail.com', 'f', 'm', 'Dr. Kazi Masudul Alam', '12313123123', 'Computer Science and Engineering Discipline, Khulna University', '45 '),
('hafsasultana1720@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
('kashif@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
('mina@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
('mkazi078@uottawa.ca', 'Kazi Shahidul Alam', 'Hosneara Jahan', '49/2, Rokon Uddin Sarak, East Baniakhamar, Khulna', '0417223344', 'Same', '01711149360 '),
('naeema@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
('razu@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
('ryhan@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
('sujanasaha27@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
('tina27@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
('zahid@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ums_user_discipline`
--

DROP TABLE IF EXISTS `ums_user_discipline`;
CREATE TABLE IF NOT EXISTS `ums_user_discipline` (
  `UserID` varchar(40) NOT NULL,
  `DisciplineID` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ums_user_position`
--

DROP TABLE IF EXISTS `ums_user_position`;
CREATE TABLE IF NOT EXISTS `ums_user_position` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `UserID` varchar(40) NOT NULL,
  `PositionID` varchar(40) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ums_user_position`
--

INSERT INTO `ums_user_position` (`ID`, `UserID`, `PositionID`) VALUES
(50, 'aysha@gmail.com', '{7CDA1F32-A2F8-4469-B5A8-C2038FCE1F9A}'),
(51, 'mkazi078@uottawa.ca', '{C27B6BCF-FB83-4F3D-85CA-B7870D8B12D0}'),
(52, 'hafsasultana1720@gmail.com', '{C27B6BCF-FB83-4F3D-85CA-B7870D8B12D0}'),
(53, 'razu@gmail.com', '{64D25DDA-16B6-47B8-BBFC-4E2AAF5680C7}');

-- --------------------------------------------------------

--
-- Table structure for table `ums_user_role`
--

DROP TABLE IF EXISTS `ums_user_role`;
CREATE TABLE IF NOT EXISTS `ums_user_role` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `UserID` varchar(40) NOT NULL,
  `RoleID` varchar(40) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=175 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ums_user_role`
--

INSERT INTO `ums_user_role` (`ID`, `UserID`, `RoleID`) VALUES
(122, 'middle@test.com', 'student'),
(123, 'middle@test.com', 'student'),
(124, 'middle@test.com', 'student'),
(125, 'middle@test.com', 'student'),
(126, 'middle@test.com', 'student'),
(127, 'middle@test.com', 'student'),
(128, 'middle@test.com', 'student'),
(129, 'middle@test.com', 'student'),
(130, 'middle@test.com', 'student'),
(131, 'middle@test.com', 'student'),
(132, 'middle@test.com', 'student'),
(133, 'middle@test.com', 'student'),
(134, 'middle@test.com', 'student'),
(135, 'middle@test.com', 'student'),
(136, 'middle@test.com', 'student'),
(137, 'middle@test.com', 'student'),
(138, 'middle@test.com', 'student'),
(142, 'zahid@gmail.com', 'student'),
(144, 'middle1@test.com', 'student'),
(145, 'kashif@gmail.com', 'student'),
(164, 'aysha@gmail.com', 'administrator'),
(165, 'mkazi078@uottawa.ca', 'administrator'),
(166, 'ryhan@gmail.com', 'administrator'),
(167, 'naeema@gmail.com', 'student'),
(168, 'avi@gmail.com', 'administrator'),
(169, 'sujanasaha27@gmail.com', 'administrator'),
(170, 'hafsasultana1720@gmail.com', 'administrator'),
(171, 'a@gmail.com', 'student'),
(172, 'tina27@gmail.com', 'student'),
(173, 'razu@gmail.com', 'teacher'),
(174, 'mina@gmail.com', 'stuff');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
