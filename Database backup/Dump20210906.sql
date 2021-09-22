-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: lms
-- ------------------------------------------------------
-- Server version	8.0.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `announcements`
--

DROP TABLE IF EXISTS `announcements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `announcements` (
  `course_no` varchar(50) NOT NULL,
  `date_posted` date NOT NULL,
  `announcement` varchar(255) NOT NULL,
  PRIMARY KEY (`course_no`),
  CONSTRAINT `Announcements_fk0` FOREIGN KEY (`course_no`) REFERENCES `courses` (`course_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcements`
--

LOCK TABLES `announcements` WRITE;
/*!40000 ALTER TABLE `announcements` DISABLE KEYS */;
INSERT INTO `announcements` VALUES ('BSCS-302','2021-12-05','Assignment # 03 has been posted. Make sure you meet deadline!'),('BSCS-303','2021-09-12','Material of Lecture # 04 has been posted.'),('BSCS-304','2021-09-06','Material of Lecture # 03 has been posted.'),('BSCS-309','2021-09-25','Material of Lecture # 05 has been posted.'),('BSCS-310','2021-09-22','Material of Lecture # 02 has been posted.'),('BSCS-401','2021-09-05','Quiz consisting of 20 marks from Lecture # 03 will be held next week.'),('BSCS-406','2021-09-21','Quiz consisting of 20 marks from Lecture # 03 will be held next week.'),('BSCS-502','2021-09-05','Quiz consisting of 20 marks from Lecture # 03 will be held next week.'),('BSCS-504','2021-11-05','Mid term exam consisting of 30 marks will be conducted on Monday.'),('BSCS-506','2021-09-10','today is monday'),('BSCS-507','2021-09-17','Material of Lecture # 07 has been posted.'),('BSCS-508','2021-09-09','Assignment # 02 has been posted. Make sure you meet deadline!'),('BSCS-509','2021-09-18','Assignment # 04 has been posted. Make sure you meet deadline!'),('BSCS-520','2021-09-15','Quiz consisting of 20 marks from Lecture # 03 will be held next week.'),('BSCS-604','2021-09-10','test on monday');
/*!40000 ALTER TABLE `announcements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attendance`
--

DROP TABLE IF EXISTS `attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attendance` (
  `student_id` varchar(50) NOT NULL,
  `course_no` varchar(50) NOT NULL,
  `lecture_no` int NOT NULL,
  `status` tinytext NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`student_id`,`course_no`,`lecture_no`),
  KEY `Attendance_fk1` (`course_no`),
  CONSTRAINT `Attendance_fk0` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`),
  CONSTRAINT `Attendance_fk1` FOREIGN KEY (`course_no`) REFERENCES `courses` (`course_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance`
--

LOCK TABLES `attendance` WRITE;
/*!40000 ALTER TABLE `attendance` DISABLE KEYS */;
INSERT INTO `attendance` VALUES ('EB19102043','BSCS-502',1,'Present','2021-09-05'),('EB19102043','BSCS-502',2,'Present','2021-10-05'),('EB19102043','BSCS-502',3,'Absent','2021-11-05'),('EB19102043','BSCS-502',4,'Present','2021-12-05'),('EB19102043','BSCS-502',5,'Present','2021-12-05'),('EB19102043','BSCS-502',6,'Absent','2021-12-05'),('EB19102043','BSCS-502',7,'Present','2021-01-05'),('EB19102043','BSCS-502',8,'Absent','2021-02-05'),('EB19102043','BSCS-502',9,'Present','2021-03-05'),('EB19102043','BSCS-502',10,'Present','2021-04-05'),('EB19102043','BSCS-504',1,'Present','2021-05-09'),('EB19102043','BSCS-504',2,'Present','2021-05-10'),('EB19102043','BSCS-504',3,'Absent','2021-05-11'),('EB19102043','BSCS-504',4,'Present','2021-05-12'),('EB19102043','BSCS-504',5,'Present','2021-05-13'),('EB19102043','BSCS-504',6,'Absent','2021-05-14'),('EB19102043','BSCS-504',7,'Present','2021-05-15'),('EB19102043','BSCS-504',8,'Absent','2021-05-16'),('EB19102043','BSCS-504',9,'Present','2021-05-17'),('EB19102043','BSCS-504',10,'Present','2021-05-18'),('EB19102043','BSCS-504',12,'Absent','2021-09-28'),('EB19102043','BSCS-506',1,'Present','2021-05-09'),('EB19102043','BSCS-506',2,'Present','2021-05-10'),('EB19102043','BSCS-506',3,'Absent','2021-05-11'),('EB19102043','BSCS-506',4,'Present','2021-05-12'),('EB19102043','BSCS-506',5,'Present','2021-05-13'),('EB19102043','BSCS-506',6,'Absent','2021-05-14'),('EB19102043','BSCS-506',7,'Present','2021-05-15'),('EB19102043','BSCS-506',8,'Absent','2021-05-16'),('EB19102043','BSCS-506',9,'Present','2021-05-17'),('EB19102043','BSCS-506',10,'Present','2021-05-18'),('EB19102043','BSCS-508',1,'Present','2021-05-09'),('EB19102043','BSCS-508',2,'Present','2021-05-10'),('EB19102043','BSCS-508',3,'Absent','2021-05-11'),('EB19102043','BSCS-508',4,'Present','2021-05-12'),('EB19102043','BSCS-508',5,'Present','2021-05-13'),('EB19102043','BSCS-508',6,'Absent','2021-05-14'),('EB19102043','BSCS-508',7,'Present','2021-05-15'),('EB19102043','BSCS-508',8,'Absent','2021-05-16'),('EB19102043','BSCS-508',9,'Present','2021-05-17'),('EB19102043','BSCS-508',10,'Present','2021-05-18'),('EB19102043','BSCS-510',1,'Present','2021-05-09'),('EB19102043','BSCS-510',2,'Present','2021-05-10'),('EB19102043','BSCS-510',3,'Absent','2021-05-11'),('EB19102043','BSCS-510',4,'Present','2021-05-12'),('EB19102043','BSCS-510',5,'Present','2021-05-13'),('EB19102043','BSCS-510',6,'Absent','2021-05-14'),('EB19102043','BSCS-510',7,'Present','2021-05-15'),('EB19102043','BSCS-510',8,'Absent','2021-05-16'),('EB19102043','BSCS-510',9,'Present','2021-05-17'),('EB19102043','BSCS-510',10,'Present','2021-05-18'),('EB19102043','BSCS-512',1,'Present','2021-05-09'),('EB19102043','BSCS-512',2,'Present','2021-05-10'),('EB19102043','BSCS-512',3,'Absent','2021-05-11'),('EB19102043','BSCS-512',4,'Present','2021-05-12'),('EB19102043','BSCS-512',5,'Present','2021-05-13'),('EB19102043','BSCS-512',6,'Absent','2021-05-14'),('EB19102043','BSCS-512',7,'Present','2021-05-15'),('EB19102043','BSCS-512',8,'Absent','2021-05-16'),('EB19102043','BSCS-512',9,'Present','2021-05-17'),('EB19102043','BSCS-512',10,'Present','2021-05-18'),('EB19102043','BSCS-514',1,'Present','2021-05-09'),('EB19102043','BSCS-514',2,'Present','2021-05-10'),('EB19102043','BSCS-514',3,'Absent','2021-05-11'),('EB19102043','BSCS-514',4,'Present','2021-05-12'),('EB19102043','BSCS-514',5,'Present','2021-05-13'),('EB19102043','BSCS-514',6,'Absent','2021-05-14'),('EB19102043','BSCS-514',7,'Present','2021-05-15'),('EB19102043','BSCS-514',8,'Absent','2021-05-16'),('EB19102043','BSCS-514',9,'Present','2021-05-17'),('EB19102043','BSCS-514',10,'Present','2021-05-18'),('EB19102043','BSCS-520',1,'Present','2021-05-09'),('EB19102043','BSCS-520',2,'Present','2021-05-10'),('EB19102043','BSCS-520',3,'Absent','2021-05-11'),('EB19102043','BSCS-520',4,'Present','2021-05-12'),('EB19102043','BSCS-520',5,'Present','2021-05-13'),('EB19102043','BSCS-520',6,'Absent','2021-05-14'),('EB19102043','BSCS-520',7,'Present','2021-05-15'),('EB19102043','BSCS-520',8,'Absent','2021-05-16'),('EB19102043','BSCS-520',9,'Present','2021-05-17'),('EB19102043','BSCS-520',10,'Present','2021-05-18'),('EB19102043','BSCS-522',1,'Present','2021-05-09'),('EB19102043','BSCS-522',2,'Present','2021-05-10'),('EB19102043','BSCS-522',3,'Absent','2021-05-11'),('EB19102043','BSCS-522',4,'Present','2021-05-12'),('EB19102043','BSCS-522',5,'Present','2021-05-13'),('EB19102043','BSCS-522',6,'Absent','2021-05-14'),('EB19102043','BSCS-522',7,'Present','2021-05-15'),('EB19102043','BSCS-522',8,'Absent','2021-05-16'),('EB19102043','BSCS-522',9,'Present','2021-05-17'),('EB19102043','BSCS-522',10,'Present','2021-05-18'),('EB19102043','BSCS-604',15,'Present','2021-09-30');
/*!40000 ALTER TABLE `attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_material`
--

DROP TABLE IF EXISTS `course_material`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course_material` (
  `material_id` int NOT NULL AUTO_INCREMENT,
  `course_no` varchar(45) NOT NULL,
  `teacher_id` varchar(45) NOT NULL,
  `date_posted` date NOT NULL,
  `material_files` varchar(255) NOT NULL,
  `program` varchar(45) NOT NULL,
  `registration_id` int NOT NULL,
  PRIMARY KEY (`material_id`),
  KEY `Course_Material_fk0` (`registration_id`),
  KEY `Course_Material_fk1` (`course_no`),
  KEY `Course_Material_fk2` (`teacher_id`),
  CONSTRAINT `Course_Material_fk0` FOREIGN KEY (`registration_id`) REFERENCES `course_registration` (`registration_id`),
  CONSTRAINT `Course_Material_fk1` FOREIGN KEY (`course_no`) REFERENCES `courses` (`course_no`),
  CONSTRAINT `Course_Material_fk2` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`teacher_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_material`
--

LOCK TABLES `course_material` WRITE;
/*!40000 ALTER TABLE `course_material` DISABLE KEYS */;
INSERT INTO `course_material` VALUES (1,'BSCS-502','DCS-1000','2021-05-06','abcd','BSCS',1),(3,'BSCS-604','DCS-1000','2021-09-22','abcd','BSSE',4);
/*!40000 ALTER TABLE `course_material` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_registration`
--

DROP TABLE IF EXISTS `course_registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course_registration` (
  `registration_id` int NOT NULL AUTO_INCREMENT,
  `course_no` varchar(45) NOT NULL,
  `date_of_enroll` date NOT NULL,
  `student_id` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL,
  PRIMARY KEY (`registration_id`),
  KEY `Course_Registration_fk0` (`course_no`),
  KEY `Course_Registration_fk1` (`student_id`),
  CONSTRAINT `Course_Registration_fk0` FOREIGN KEY (`course_no`) REFERENCES `courses` (`course_no`),
  CONSTRAINT `Course_Registration_fk1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_registration`
--

LOCK TABLES `course_registration` WRITE;
/*!40000 ALTER TABLE `course_registration` DISABLE KEYS */;
INSERT INTO `course_registration` VALUES (1,'BSCS-502','2021-09-05','Eb19102043','enrolled'),(2,'BSCS-504','2021-09-05','Eb19102043','enrolled'),(3,'BSCS-506','2021-09-05','Eb19102043','enrolled'),(4,'BSCS-508','2021-09-05','Eb19102043','enrolled'),(5,'BSCS-510','2021-09-05','Eb19102043','enrolled'),(6,'BSCS-512','2021-09-05','Eb19102043','enrolled'),(7,'BSCS-514','2021-09-05','Eb19102043','enrolled'),(8,'BSCS-520','2021-09-05','Eb19102043','enrolled'),(9,'BSCS-522','2021-09-05','Eb19102043','enrolled');
/*!40000 ALTER TABLE `course_registration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses` (
  `course_no` varchar(255) NOT NULL,
  `course_title` text NOT NULL,
  `credit_hours` varchar(50) NOT NULL,
  `teacher_id` varchar(50) NOT NULL,
  `offer_in` varchar(45) NOT NULL,
  PRIMARY KEY (`course_no`),
  KEY `Courses_fk0` (`teacher_id`),
  CONSTRAINT `Courses_fk0` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`teacher_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES ('BSCS-301','Introduction to Computer Science - I','2+1','DCS-1002','1st'),('BSCS-302','Introduction to Computer Science - II	','2+1','DCS-1002','2nd'),('BSCS-303','Mathematics - I (Calculus)','3+0','DCS-1004','1st'),('BSCS-304','Mathematics - II (Differential Equations)','3+0','DCS-1004','2nd'),('BSCS-305','Statistics and Data Analysis','2+1','DCS-1005','1st'),('BSCS-306','Probability and Statistical Methods','2+1','DCS-1005','2nd'),('BSCS-307','Physics - I (General Physics)','2+1','DCS-1008','1st'),('BSCS-308','Physics - II (Electricity and Magnetism)','2+1','DCS-1008','2nd'),('BSCS-309','English','3+0','DCS-1009','1st'),('BSCS-310','English','3+0','DCS-1009','2nd'),('BSCS-311','Islamic Learning or Ethics','3+0','DCS-1001','1st'),('BSCS-312','Urdu/Humanities','3+0','DCS-1009','2nd'),('BSCS-313','Pakistan Studies','3+0','DCS-1006','1st'),('BSCS-401','Digital Computer Design Fundamentals','2+1','DCS-1002','3rd'),('BSCS-402','Data Structures','2+1','DCS-1002','4th'),('BSCS-403','Assembly Language Programming','2+1','DCS-1004','3rd'),('BSCS-404','System Design with Microprocessors','2+1','DCS-1004','4th'),('BSCS-405','Mathematics - III (Linear Algebra & Analytical Geometry)','3+0','DCS-1005','3rd'),('BSCS-406','Mathematics - IV (Numerical Computing)','2+1','DCS-1005','4th'),('BSCS-407','Materials, Semiconductors and Devices','2+1','DCS-1008','3rd'),('BSCS-409','Discrete Mathematics','3+0','DCS-1009','3rd'),('BSCS-410','Electronics','2+1','DCS-1008','4th'),('BSCS-411','Object Oriented Programming','2+1','DCS-1009','3rd'),('BSCS-412','Software Engineering and Project Management','2+1','DCS-1009','4th'),('BSCS-414','Communication Skills and Report Writing','3+0','DCS-1009','4th'),('BSCS-501','Theory of Computer Science','2+1','DCS-1002','5th'),('BSCS-502','Concepts of Operating Systems','2+1','DCS-1004','6th'),('BSCS-503','Data Communication and Networking - I','2+1','DCS-1004','5th'),('BSCS-504','Compiler Construction - I','2+1','DCS-1002','6th'),('BSCS-505','Stochastic Processes and Inference (Optional)','2+1','DCS-1005','5th'),('BSCS-506','Modeling and Simulation (Optional)','2+1','DCS-1005','6th'),('BSCS-507','Operations Research - I (Optional)','2+1','DCS-1008','5th'),('BSCS-508','Operations Research - II (Optional)	','2+1','DCS-1008','6th'),('BSCS-509','Database Systems','2+1','DCS-1009','5th'),('BSCS-510','Microcomputer Design & Interfacing-I (Optional)','2+1','DCS-1009','6th'),('BSCS-511','Computer Organization and Architecture','2+1','DCS-1002','5th'),('BSCS-512','Data Communication and Networking - II','2+1','DCS-1001','6th'),('BSCS-513','Advanced Numerical Analysis (Optional)','2+1','DCS-1004','5th'),('BSCS-514','Computer Graphics','2+1','DCS-1006','6th'),('BSCS-515','Artificial Intelligence','2+1','DCS-1005','5th'),('BSCS-517','System Analysis & Design (Optional)','2+1','DCS-1008','5th'),('BSCS-519','Business Programming Language (Optional)','2+1','DCS-1009','5th'),('BSCS-520','Advanced Software Engineering','2+1','DCS-1000','6th'),('BSCS-522','Expert Systems','2+1','DCS-1007','6th'),('BSCS-601','Theory of Operating Systems','2+1','DCS-1004','7th'),('BSCS-602','Operating System Case Study (Optional)','2+1','DCS-1004','8th'),('BSCS-603','Compiler Construction - II','2+1','DCS-1002','7th'),('BSCS-604','Natural Language Processing','2+1','DCS-1002','8th'),('BSCS-605','Advanced Computer Graphics (Optional)','2+1','DCS-1005','7th'),('BSCS-606','Distributed Database Systems','2+1','DCS-1005','8th'),('BSCS-607','Financial Accounting','3+0','DCS-1008','7th'),('BSCS-609','Microcomputer Design & Interfacing-II (Optional)','2+1','DCS-1009','7th'),('BSCS-610','Design and Analysis of Algorithms','2+1','DCS-1008','8th'),('BSCS-611','Parallel Computing (Optional)','2+1','DCS-1001','7th'),('BSCS-612','Financial Management','3+0','DCS-1009','8th'),('BSCS-613','Management Information System','2+1','DCS-1006','7th'),('BSCS-616','Multimedia Systems (Optional)','2+1','DCS-1001','8th'),('BSCS-618','Computational Linear Algebra (Optional)','2+1','DCS-1006','8th'),('BSCS-619','*Thesis','3+0','DCS-1000','7th'),('BSCS-620','*Thesis','3+0','DCS-1000','8th'),('BSCS-621','Topics of Current/Special Interest. Introduction to Machine and recent trends in Software Development. (Optional)','2+1','DCS-1007','7th'),('BSCS-624','Project','2+1','DCS-1007','8th'),('BSCS-625','VLSI Design Techniques (Optional)	','2+1','DCS-1007','7th'),('BSCS-631','Network Security and Cryptography (Optional)','2+1','DCS-1007','7th'),('BSCS-632','Wireless Communication (Optional)','2+1','DCS-1007','8th'),('BSCS-633','Internet Application Development (Optional)','2+1','DCS-1007','7th'),('BSCS-634','Neural Networks and Fuzzy Logic (Optional)','2+1','DCS-1007','8th'),('BSCS-635','Data Warehousing and Data Mining (Optional)','2+1','DCS-1007','7th'),('BSCS-636','Human Computer Interaction (Optional)','3+0','DCS-1007','8th'),('BSCS-638','Remote Sensing and Geographic Information System (Optional)','2+1','DCS-1007','8th');
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marks`
--

DROP TABLE IF EXISTS `marks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marks` (
  `student_id` varchar(50) NOT NULL,
  `course_no` varchar(50) NOT NULL,
  `Gpa` float NOT NULL,
  `semester` varchar(50) NOT NULL,
  PRIMARY KEY (`student_id`,`course_no`),
  KEY `Marks_fk1` (`course_no`),
  CONSTRAINT `Marks_fk0` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`),
  CONSTRAINT `Marks_fk1` FOREIGN KEY (`course_no`) REFERENCES `courses` (`course_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marks`
--

LOCK TABLES `marks` WRITE;
/*!40000 ALTER TABLE `marks` DISABLE KEYS */;
INSERT INTO `marks` VALUES ('EB19102043','BSCS-301',3.8,'1st'),('EB19102043','BSCS-302',3.6,'2nd'),('EB19102043','BSCS-303',3.4,'1st'),('EB19102043','BSCS-304',3.8,'2nd'),('EB19102043','BSCS-305',3.8,'1st'),('EB19102043','BSCS-306',3.3,'2nd'),('EB19102043','BSCS-307',3.2,'1st'),('EB19102043','BSCS-308',3.7,'2nd'),('EB19102043','BSCS-309',3.6,'1st'),('EB19102043','BSCS-310',3.5,'2nd'),('EB19102043','BSCS-311',3.7,'1st'),('EB19102043','BSCS-312',3.2,'2nd'),('EB19102043','BSCS-313',3.2,'1st'),('EB19102043','BSCS-401',3.4,'3rd'),('EB19102043','BSCS-402',3.4,'4th'),('EB19102043','BSCS-403',3.8,'3rd'),('EB19102043','BSCS-404',3.2,'4th'),('EB19102043','BSCS-405',3.1,'3rd'),('EB19102043','BSCS-406',3.8,'4th'),('EB19102043','BSCS-407',3.2,'3rd'),('EB19102043','BSCS-409',3.8,'3rd'),('EB19102043','BSCS-410',3.6,'4th'),('EB19102043','BSCS-411',3.5,'3rd'),('EB19102043','BSCS-412',3.7,'4th'),('EB19102043','BSCS-414',3,'4th'),('EB19102043','BSCS-501',3.8,'5th'),('EB19102043','BSCS-502',3.8,'6th'),('EB19102043','BSCS-503',3.4,'5th'),('EB19102043','BSCS-504',3.8,'6th'),('EB19102043','BSCS-505',3.8,'5th'),('EB19102043','BSCS-506',3.8,'6th'),('EB19102043','BSCS-507',3.2,'5th'),('EB19102043','BSCS-508',3.8,'6th'),('EB19102043','BSCS-509',3.6,'5th'),('EB19102043','BSCS-510',3.8,'6th'),('EB19102043','BSCS-511',3.8,'5th'),('EB19102043','BSCS-512',3.8,'6th'),('EB19102043','BSCS-513',3.4,'5th'),('EB19102043','BSCS-514',3.8,'6th'),('EB19102043','BSCS-515',3.8,'5th'),('EB19102043','BSCS-517',3.2,'5th'),('EB19102043','BSCS-519',3.6,'5th'),('EB19102043','BSCS-520',3.8,'6th'),('EB19102043','BSCS-522',3.8,'6th'),('EB19102043','BSCS-604',3,'8th'),('EB19102043','BSCS-606',2,'8th');
/*!40000 ALTER TABLE `marks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `student_id` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` tinytext NOT NULL,
  `father_name` tinytext NOT NULL,
  `gender` tinytext NOT NULL,
  `DOB` varchar(50) NOT NULL,
  `phone_no` mediumtext NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `cnic` varchar(50) NOT NULL,
  `shift` tinytext NOT NULL,
  `dept_name` tinytext NOT NULL,
  `enrollment_no` varchar(50) NOT NULL,
  `degree` tinytext NOT NULL,
  `semester` varchar(50) NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES ('EB19102011','EB2011','Huzaifa Akram ','Akram','Male','12-3-1999','03453187360','huzaifa@gmail.com','Gulshan','4200184732321','Evening','UBIT','4321','BSSE','6th',2019),('EB19102012','EB2012','Sufiyan Amjad ','Amjad','Male','29-7-1999','03453187360','sufiyan@gmail.com','Korangi','4230141364325','Evening','UBIT','3563','BSSE','5th',2019),('EB19102013','EB2013','Umar Saeed ','Saeed','Male','18-1-2000','03112365477','umar@gmail.com','Landhi ','423027875655','Morning','UBIT','6527','BSSE','3rd',2017),('EB19102014','EB2014','Shoaid Naseem ','Naseem','Male','11-3-1999','03234562788','shoaib@gmail.com','Saddar','440016747849','Evening','UBIT','4325','BSSE','2nd',2016),('EB19102015','EB2015','Sadiq Hassan','Hassan','Male','18-7-1999','03213874655','sadiq@gmail.com','Buffer Zone','432018375421','Evening','UBIT','5323','BSSE','7th',2020),('EB19102040','maryam123','Maryam Abbasi ','Abbas','Male','21-8-2000','03338765324','maryam@gmail.com','pechs','4300178654332','Morning','UBIT','4805','BSCS','3rd',2017),('EB19102043','moiz123','Moiz Fakhruddin ','Fakhruddin','Male','12-5-2000','03213456775','moiz.fakhruddin@gmail.com','North Karachi','4230172132321','Evening','UBIT','4808','BSCS','6th',2019),('EB19102073','khizer123','Khizer Khan ','Khan','Male','22-5-1998','03214763554','khizer@gmail.com','Gulistan e Jauhar','4230247635424','Evening','UBIT','4802','BSCS','5th',2019),('EB19102112','shaheer123','Shaheer Hasan ','Tariq Mehmood','Male','18-7-2000','03453187360','shhrhasan@gmail.com','Dha phase 2','4230159213553','Evening','UBIT','4806','BSCS','6th',2019),('EB19102122','jaffer123','Syed Jaffer Sunny ','Maqbool','Male','20-3-2000','03324576521','jaffer@gmail.com','Hussainabad','4200134876554','Evening','UBIT','4972','BSCS','2nd',2016);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teacher` (
  `teacher_id` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` tinytext NOT NULL,
  `father_name` tinytext NOT NULL,
  `gender` tinytext NOT NULL,
  `DOB` varchar(50) NOT NULL,
  `phone_no` mediumtext NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `cnic` varchar(50) NOT NULL,
  `shift` tinytext NOT NULL,
  `dept_name` tinytext NOT NULL,
  `salary` mediumtext NOT NULL,
  `rank` tinytext NOT NULL,
  PRIMARY KEY (`teacher_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher`
--

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` VALUES ('DCS-1000','12345678','Nadeem','Mehmood','Male','10-6-1970','03362447652','nadeem@uol.edu.pk','North Karachi','4210196724351','Full-Time','DCS UBIT','250000','Chairman'),('DCS-1001','DCS1','Farhan Ahmed ','Siddiqui','Male','11-5-1981','03376253228','farhanahmed@gmail.com','Naya Nazimabad','4201023154321','Full-Time','DCS UBIT','450000','Assist Professor'),('DCS-1002','DCS2','Badar Sami ','Sami','Male','12-3-1978','0337648768','badarsami@gmail.com','Gulistan e Jauhar','4201023121321','Full-Time','DCS UBIT','500000','Assist Professor'),('DCS-1003','DCS3','M Saeed ','Ajmal ','Male','21-4-1911','0323474464','msaeed@gmail.com','Gulshan e Iqbal','42010827353','Full-Time','DCS UBIT','350000','Assist Professor'),('DCS-1004','DCS4','Mukesh Kumar ','Kumar','Male','03-7-1987','03456783299','mukeshkumar@hotmail.com','Gurumandar','42010103244','Full-Time','DCS UBIT','250000','Assist Professor'),('DCS-1005','DCS5','Humera Bashir ','Bashir','Female','02-6-1980','03112346565','humera@outlook.com','Pechs','4201054672321','Full-Time','DCS UBIT','150000','Assist Professor'),('DCS-1006','DCS6','Sadiq Ali Khan ','Ali','Male','13-9-1976','0336532111','sadiqali@gmail.com','North Nazimabad','42302873499','Full-Time','DSE UBIT','400000','Assist Professor'),('DCS-1007','DCS7','Maryam Feroze ','Feroze','Female','17-6-1985','033732567418','maryam@gmail.com','Clifton','42401988363','Full-Time','DSE UBIT','300000','Assist Professor'),('DCS-1008','DCS8','Humera Tariq ','Tariq','Female','01-5-1987','032375437755','humeratariq@gmail.com','Buffer zone','420103676557','Full-Time','DSE UBIT','200000','Assist Professor'),('DCS-1009','DCS9','M Munir ','Jamal','Male','19-5-1991','03216253470','munir@gmail.com','Kharadar','424013465778','Full-Time','DSE UBIT','150000','Assist Professor'),('DCS-1010','DCS10','Aqil Burney','burney','Male','218-1971','03316452011','aqilburney@gmail.com','Dha phase 2','420104672662','Full-Time','DSE UBIT','500000','Assist Professor');
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-06 21:56:34
