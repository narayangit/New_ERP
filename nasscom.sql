/*
SQLyog Community v11.3 (32 bit)
MySQL - 5.6.41 : Database - nasscom
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`nasscom` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `nasscom`;

/*Table structure for table `nscm_ask` */

DROP TABLE IF EXISTS `nscm_ask`;

CREATE TABLE `nscm_ask` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `s_type` int(11) DEFAULT NULL,
  `sender_id` int(11) DEFAULT NULL,
  `receiver_id` int(11) DEFAULT NULL,
  `msg` text,
  `time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `nscm_ask` */

LOCK TABLES `nscm_ask` WRITE;

insert  into `nscm_ask`(`id`,`s_type`,`sender_id`,`receiver_id`,`msg`,`time`) values (1,3,6,1,'hi','2018-11-01 20:45:30'),(2,2,1,6,'hello','2018-11-01 20:45:36'),(3,3,6,1,'how are you','2018-11-01 20:46:07'),(4,2,1,6,'fine','2018-11-01 20:46:11'),(5,3,6,1,'hi','2018-11-01 20:46:33'),(6,2,1,6,'jdfjkdsf','2018-11-01 20:46:39'),(7,3,6,1,'hi','2018-11-01 20:48:14'),(8,3,6,0,'','2018-11-02 13:27:03'),(9,3,6,1,'ss','2018-11-02 13:31:59');

UNLOCK TABLES;

/*Table structure for table `nscm_ask1` */

DROP TABLE IF EXISTS `nscm_ask1`;

CREATE TABLE `nscm_ask1` (
  `thread_id` varchar(200) DEFAULT NULL,
  `guru_id` varchar(200) DEFAULT NULL,
  `user_id` varchar(200) DEFAULT NULL,
  `user_respond` text,
  `user_respondtime` datetime DEFAULT NULL,
  `guru_respond` text,
  `guru_respondtime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `nscm_ask1` */

LOCK TABLES `nscm_ask1` WRITE;

insert  into `nscm_ask1`(`thread_id`,`guru_id`,`user_id`,`user_respond`,`user_respondtime`,`guru_respond`,`guru_respondtime`) values ('thread1','guru_123','user_123','test','2018-10-26 19:18:42','test2','2018-10-27 19:23:31');

UNLOCK TABLES;

/*Table structure for table `nscm_attendance` */

DROP TABLE IF EXISTS `nscm_attendance`;

CREATE TABLE `nscm_attendance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `mentor_id` int(11) NOT NULL,
  `apply_status` varchar(50) DEFAULT NULL,
  `feedback` varchar(100) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `nscm_attendance` */

LOCK TABLES `nscm_attendance` WRITE;

insert  into `nscm_attendance`(`id`,`event_id`,`student_id`,`mentor_id`,`apply_status`,`feedback`,`rating`,`created_date`) values (1,2,6,1,'Present','I feel better equipped to manage after completing the course. ',4,'2018-10-22 10:58:12'),(3,2,7,1,'Present','',0,'2018-10-26 20:34:46');

UNLOCK TABLES;

/*Table structure for table `nscm_events` */

DROP TABLE IF EXISTS `nscm_events`;

CREATE TABLE `nscm_events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event_name` varchar(100) NOT NULL,
  `mentor_id` int(11) NOT NULL,
  `technology` varchar(100) DEFAULT NULL,
  `start_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `end_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `city` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `nscm_events` */

LOCK TABLES `nscm_events` WRITE;

insert  into `nscm_events`(`id`,`event_name`,`mentor_id`,`technology`,`start_date`,`end_date`,`city`,`address`,`logo`,`created_date`) values (1,'Technology Masterclass - Big Data',1,'Big Data Analytics','2018-10-19 20:35:35','2018-10-19 10:30:00','Bengaluru','IT Techno Park','course1.jpg','2018-10-19 20:35:35'),(2,'Technology Masterclass - Artificial Intelligence (AI)',2,'Artificial intelligence (AI)','2018-10-19 20:37:13','2018-10-30 02:00:00','New Delhi','IG Stadium','course1.jpg','2018-10-19 20:37:13'),(3,'Technology Masterclass - Cloud Computing',3,'Cloud Computing','2018-10-19 15:55:24','2018-10-23 15:55:19','Gurugram','MG Road','course1.jpg','2018-10-19 20:38:14');

UNLOCK TABLES;

/*Table structure for table `nscm_feedback` */

DROP TABLE IF EXISTS `nscm_feedback`;

CREATE TABLE `nscm_feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_att` int(11) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `let_know` text,
  `session_name` varchar(255) DEFAULT NULL,
  `satisfied` varchar(255) DEFAULT NULL,
  `information` varchar(255) DEFAULT NULL,
  `interest` varchar(100) DEFAULT NULL,
  `assessment` text,
  `comments` text,
  `rating` int(11) DEFAULT NULL,
  `submit_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `nscm_feedback` */

LOCK TABLES `nscm_feedback` WRITE;

insert  into `nscm_feedback`(`id`,`fk_att`,`first_name`,`last_name`,`email`,`let_know`,`session_name`,`satisfied`,`information`,`interest`,`assessment`,`comments`,`rating`,`submit_date`) values (1,1,'user','aa','user@a.a','Meeting your fellow participants was one of the highlights of the session?','aa','aa','aa','aa','aa','aa',2,'2018-10-31 18:27:26');

UNLOCK TABLES;

/*Table structure for table `nscm_linkedin` */

DROP TABLE IF EXISTS `nscm_linkedin`;

CREATE TABLE `nscm_linkedin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `oauth_provider` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `oauth_uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mentor_id` int(11) DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `position` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_address` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `profile_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `nscm_linkedin` */

LOCK TABLES `nscm_linkedin` WRITE;

insert  into `nscm_linkedin`(`id`,`oauth_provider`,`oauth_uid`,`mentor_id`,`first_name`,`last_name`,`email`,`gender`,`locale`,`position`,`company`,`company_address`,`picture_url`,`profile_url`,`created`,`modified`) values (1,'linkedin','fInMDbPqcv',1,'john','polaai','jpolaai@gmail.com','','New Delhi ','Developer','MattsenKumar LLC',NULL,'https://media.licdn.com/dms/image/C5103AQHaw0efJMJ6jA/profile-displayphoto-shrink_100_100/0?e=1546473600&v=beta&t=vFiGtMIE07PHxhqk9RS0ijKSllINi8DkSYUdOoArD0Q','http://www.linkedin.com/in/john-polaai-750989173','2018-10-25 18:38:55','2018-10-31 18:58:03');

UNLOCK TABLES;

/*Table structure for table `nscm_login` */

DROP TABLE IF EXISTS `nscm_login`;

CREATE TABLE `nscm_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` enum('1','2','3') NOT NULL DEFAULT '3',
  `active` enum('0','1') DEFAULT '1',
  `last_login` timestamp NULL DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `nscm_login` */

LOCK TABLES `nscm_login` WRITE;

insert  into `nscm_login`(`id`,`username`,`email`,`password`,`user_type`,`active`,`last_login`,`created_date`) values (10,'Admin','admin@a.a','123','1','1',NULL,'2018-10-22 10:23:55'),(1,'Srikanth Kumar','guru@a.a','123','2','1',NULL,'2018-10-22 10:24:07'),(2,'Manish Gupta','guru1@a.a','123','2','1',NULL,'2018-10-22 10:24:15'),(4,'Guru2','guru2@a.a','123','2','1',NULL,'2018-10-18 17:42:40'),(3,'Paramita Biswas','guru3@a.a','123','2','1',NULL,'2018-10-22 10:24:18'),(6,'user','user@a.a','123','3','1',NULL,'2018-10-18 17:42:43'),(7,'user1','user1@a.a','123','3','1',NULL,'2018-10-18 17:42:45'),(8,'user2','user2@a.a','123','3','1',NULL,'2018-10-18 17:42:47'),(9,'user4','user4@a.a','123','3','1',NULL,'2018-10-18 21:21:03');

UNLOCK TABLES;

/*Table structure for table `nscm_mentors` */

DROP TABLE IF EXISTS `nscm_mentors`;

CREATE TABLE `nscm_mentors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unique_id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `technology` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `gender` enum('Male','Female') NOT NULL DEFAULT 'Male',
  `contact` bigint(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `location` varchar(50) NOT NULL,
  `user_type` int(11) NOT NULL DEFAULT '2',
  `active` enum('0','1') CHARACTER SET utf8 NOT NULL DEFAULT '1',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `nscm_mentors` */

LOCK TABLES `nscm_mentors` WRITE;

insert  into `nscm_mentors`(`id`,`unique_id`,`name`,`technology`,`email`,`password`,`gender`,`contact`,`address`,`location`,`user_type`,`active`,`created_date`,`updated_date`) values (1,'5bc9f0ba0c13c','Srikanth','Big Data Analytics','srikanth@nasscom.com','','Male',9540660305,'MG Road','Hyderabad',2,'1','2018-10-19 20:26:58','2018-10-19 08:30:17'),(2,'5bc9f1c618fd3','Manish Gupta','Artificial intelligence (AI)','manish@nasscom.com','','Male',9540660308,'Videoken','Bengaluru',2,'1','2018-10-19 20:31:26',NULL),(3,'5bc9f282c37c5','Paramita Biswas','Cloud Computing','paramita@nasscom.com','','Female',9540660308,'IT Techno Park','Bengaluru',2,'0','2018-10-19 20:34:34','2018-10-22 10:53:04'),(4,'5bcd5ed6ad282','aa','Artificial intelligence (AI)','aaa@a.a','','Male',1234567890,'sdasdasdasd','Bengaluru',2,'1','2018-10-22 10:53:34','2018-10-22 02:19:03');

UNLOCK TABLES;

/*Table structure for table `nscm_students` */

DROP TABLE IF EXISTS `nscm_students`;

CREATE TABLE `nscm_students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unique_id` varchar(100) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `technology` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `gender` enum('Male','Female') NOT NULL DEFAULT 'Male',
  `contact` bigint(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `user_type` int(11) NOT NULL DEFAULT '3',
  `active` enum('0','1') NOT NULL DEFAULT '1',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `nscm_students` */

LOCK TABLES `nscm_students` WRITE;

insert  into `nscm_students`(`id`,`unique_id`,`name`,`technology`,`email`,`password`,`gender`,`contact`,`address`,`location`,`user_type`,`active`,`created_date`,`updated_date`) values (6,'5bc9f0ba0913c','user','Artificial intelligence (AI)','user@a.a','123','Male',1234567890,'xyz','Delhi',3,'1','2018-10-22 10:15:40',NULL),(7,'5bc9f0ba0c19g','user1','Big Data Analytics','user1@a.a','123','Male',1234567890,'xyz','Gurgaon',3,'1','2018-10-22 10:16:12',NULL),(8,'5bc3f0ba0c13r','user2','Big Data Analytics','user2@a.a','123','Male',1234567890,'xyz','Delhi',3,'1','2018-10-22 10:17:21',NULL),(9,'5bc9d0ba0c13k','user4','3D Printing','user4@a.a','123','Male',1234567890,'abc','Chennai',3,'1','2018-10-22 10:17:47',NULL);

UNLOCK TABLES;

/*Table structure for table `nscm_technology` */

DROP TABLE IF EXISTS `nscm_technology`;

CREATE TABLE `nscm_technology` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `nscm_technology` */

LOCK TABLES `nscm_technology` WRITE;

insert  into `nscm_technology`(`id`,`name`,`logo`,`active`) values (1,'Artificial intelligence (AI)','https://bi-test.mattsenkumar.com/nasscom_ci/',1),(2,'Big Data Analytics','https://bi-test.mattsenkumar.com/nasscom_ci/',1),(3,'Robotic Process Automation (RPA)','https://bi-test.mattsenkumar.com/nasscom_ci/',1),(4,'Virtual Reality','https://bi-test.mattsenkumar.com/nasscom_ci/',1),(5,'Internet Of Things (IOT)','https://bi-test.mattsenkumar.com/nasscom_ci/',1),(6,'3D Printing','https://bi-test.mattsenkumar.com/nasscom_ci/',1),(7,'Cloud Computing','https://bi-test.mattsenkumar.com/nasscom_ci/',1),(8,'Social & Mobile','https://bi-test.mattsenkumar.com/nasscom_ci/',1),(9,'Cyber Security','https://bi-test.mattsenkumar.com/nasscom_ci/',1);

UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
