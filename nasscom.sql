/*
SQLyog Community v11.3 (32 bit)
MySQL - 5.6.42 : Database - nasscom
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
  `notify_status` int(11) DEFAULT '0',
  `mentor_id` int(11) DEFAULT NULL,
  `time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

/*Data for the table `nscm_ask` */

LOCK TABLES `nscm_ask` WRITE;

insert  into `nscm_ask`(`id`,`s_type`,`sender_id`,`receiver_id`,`msg`,`notify_status`,`mentor_id`,`time`) values (1,2,1,6,'hi',1,1,'2018-12-17 18:58:08'),(2,2,1,6,'where are you now?',1,1,'2018-12-17 18:58:27'),(3,3,6,1,'Hi....I am in gurgaon.',1,1,'2018-12-17 18:59:23'),(4,3,6,1,'hello',1,1,'2018-12-17 21:21:41'),(5,3,6,1,'hi',1,1,'2018-12-18 13:10:14'),(6,3,6,1,'hello',1,1,'2018-12-18 13:11:45'),(7,2,1,6,'hi',1,1,'2018-12-18 13:15:51'),(8,3,6,1,'hi',1,1,'2018-12-18 13:19:10'),(9,3,6,1,'Hi Sir',1,1,'2018-12-18 13:25:09'),(10,2,1,6,'hi',1,1,'2018-12-18 13:40:29'),(11,3,6,1,'hi',1,1,'2018-12-18 14:06:04'),(12,3,6,1,'hi',1,1,'2018-12-18 14:08:44'),(13,3,6,1,'hi',1,1,'2018-12-18 14:18:26'),(14,2,1,6,'hi',1,1,'2018-12-18 14:55:29');

UNLOCK TABLES;

/*Table structure for table `nscm_ask1_unused` */

DROP TABLE IF EXISTS `nscm_ask1_unused`;

CREATE TABLE `nscm_ask1_unused` (
  `thread_id` varchar(200) DEFAULT NULL,
  `guru_id` varchar(200) DEFAULT NULL,
  `user_id` varchar(200) DEFAULT NULL,
  `user_respond` text,
  `user_respondtime` datetime DEFAULT NULL,
  `guru_respond` text,
  `guru_respondtime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `nscm_ask1_unused` */

LOCK TABLES `nscm_ask1_unused` WRITE;

insert  into `nscm_ask1_unused`(`thread_id`,`guru_id`,`user_id`,`user_respond`,`user_respondtime`,`guru_respond`,`guru_respondtime`) values ('thread1','guru_123','user_123','test','2018-10-26 19:18:42','test2','2018-10-27 19:23:31');

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
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

/*Data for the table `nscm_attendance` */

LOCK TABLES `nscm_attendance` WRITE;

insert  into `nscm_attendance`(`id`,`event_id`,`student_id`,`mentor_id`,`apply_status`,`feedback`,`rating`,`created_date`) values (1,2,6,2,'Present','I feel better equipped to manage after completing the course. ',4,'2018-11-08 10:58:12'),(3,2,7,2,'Present','',0,'2018-11-08 20:34:46'),(27,8,6,2,'Applied',NULL,NULL,'2018-12-05 18:56:31'),(28,8,21,2,'Applied',NULL,NULL,'2018-12-07 19:18:17'),(29,11,43,1,'Present',NULL,NULL,'2018-12-08 16:15:17'),(30,11,18,1,'Applied',NULL,NULL,'2018-12-10 13:28:22');

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
  `company_logo` varchar(255) DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

/*Data for the table `nscm_events` */

LOCK TABLES `nscm_events` WRITE;

insert  into `nscm_events`(`id`,`event_name`,`mentor_id`,`technology`,`start_date`,`end_date`,`city`,`address`,`logo`,`company_logo`,`created_date`) values (1,'Big Data',1,'Big Data Analytics','2018-11-06 15:55:17','2018-11-06 20:35:35','Bengaluru','IT Techno Park','course1.jpg',NULL,'2018-11-07 20:35:35'),(2,'Artificial Intelligence (AI)',2,'Artificial intelligence (AI)','2018-11-06 19:00:38','2018-11-09 09:00:00','New Delhi','IG Stadium','course1.jpg',NULL,'2018-11-07 02:00:00'),(3,'Cloud Computing',3,'Cloud Computing','2018-11-06 15:55:09','2018-11-08 15:55:24','Gurugram','MG Road','course1.jpg',NULL,'2018-11-08 15:55:24'),(8,'Artificial',2,'Artificial intelligence (AI)','2018-12-04 19:46:23','2018-12-06 15:00:00','Gurugram','MG Road','bg-01.jpg','logo.png','2018-12-03 18:20:35'),(9,'DurgaSoft',1,'Big Data Analytics','2018-12-08 17:10:00','2018-12-08 19:10:00','Bengaluru','BTM','Jellyfish.jpg','Koala.jpg','2018-12-08 16:09:44'),(10,'bits',3,'Robotic Process Automation (RPA)','2018-12-08 18:30:00','2018-12-08 20:30:00','Gurugram','34, Udyog Vihar, Phase IV Gurgaon, Haryana, 34, Udyog Vihar, Phase IV Gurgaon, Haryana','Desert.jpg','Tulips.jpg','2018-12-08 16:12:50'),(11,'iit',1,'Big Data Analytics','2018-12-11 13:25:35','2018-12-13 22:35:00','Gurugram','34, Udyog Vihar, Phase IV Gurgaon, Haryana, 34, Udyog Vihar, Phase IV Gurgaon, Haryana','Penguins.jpg','Chrysanthemum.jpg','2018-12-08 16:14:35');

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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `nscm_feedback` */

LOCK TABLES `nscm_feedback` WRITE;

insert  into `nscm_feedback`(`id`,`fk_att`,`first_name`,`last_name`,`email`,`let_know`,`session_name`,`satisfied`,`information`,`interest`,`assessment`,`comments`,`rating`,`submit_date`) values (5,3,'user1','aa','user1@a.a','Meeting your fellow participants was one of the highlights of the session?','aa','aa','aa','aa','aa','aa',5,'2018-10-31 18:27:26'),(6,6,'user','','user@a.a','the Presenter was easy to understand?','big data','satisfied','scala','yes','good','very motivating',5,'2018-11-20 12:45:57'),(7,17,'user','','user@a.a','Meeting your fellow participants was one of the highlights of the session?','mapreduce','good','spark','yes','good','no',5,'2018-11-21 13:18:47'),(8,1,'user','aa','user@a.a','Meeting your fellow participants was one of the highlights of the session?','aa','aa','aa','ss','gfdg','dfgdfgf',4,'2018-12-05 18:48:42'),(9,NULL,'SONAM','sharma','sonam@gmail.com','Meeting your fellow participants was one of the highlights of the session?','bigdata','good','mapreduce','yes','good','hfgfgfggfgf',4,'2018-12-07 17:14:13');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `nscm_linkedin` */

LOCK TABLES `nscm_linkedin` WRITE;

insert  into `nscm_linkedin`(`id`,`oauth_provider`,`oauth_uid`,`mentor_id`,`first_name`,`last_name`,`email`,`gender`,`locale`,`position`,`company`,`company_address`,`picture_url`,`profile_url`,`created`,`modified`) values (1,'linkedin','fInMDbPqcv',1,'john','polaai','jpolaai@gmail.com','','New Delhi ','Developer','MattsenKumar LLC',NULL,'https://media.licdn.com/dms/image/C5103AQHaw0efJMJ6jA/profile-displayphoto-shrink_100_100/0?e=1546473600&v=beta&t=vFiGtMIE07PHxhqk9RS0ijKSllINi8DkSYUdOoArD0Q','http://www.linkedin.com/in/john-polaai-750989173','2018-10-25 18:38:55','2018-10-31 18:58:03'),(2,'linkedin','fv2WFmrcj7',1,'Abhi','Test','testpro00789@gmail.com','','Mysuru Are','Hadoop Developer','IBM',NULL,'','http://www.linkedin.com/in/abhi-test-7b6a89174','2018-11-19 13:13:42','2018-11-19 15:58:34'),(3,'linkedin','fv2WFmrcj7',2,'Abhi','Test','testpro00789@gmail.com','','Mysuru Are','Hadoop Developer','IBM',NULL,'','http://www.linkedin.com/in/abhi-test-7b6a89174','2018-11-20 16:58:53','2018-11-20 16:58:53');

UNLOCK TABLES;

/*Table structure for table `nscm_login` */

DROP TABLE IF EXISTS `nscm_login`;

CREATE TABLE `nscm_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `profile_img` text,
  `user_type` enum('1','2','3') NOT NULL DEFAULT '3',
  `active` enum('0','1') DEFAULT '1',
  `last_login` timestamp NULL DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `nscm_login` */

LOCK TABLES `nscm_login` WRITE;

insert  into `nscm_login`(`id`,`name`,`email`,`password`,`profile_img`,`user_type`,`active`,`last_login`,`created_date`) values (1,'Admin','admin@a.a','123','1544696400-96_new.jpg','1','1',NULL,'2018-12-13 16:17:28');

UNLOCK TABLES;

/*Table structure for table `nscm_mentors` */

DROP TABLE IF EXISTS `nscm_mentors`;

CREATE TABLE `nscm_mentors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unique_id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `technology` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL DEFAULT '123',
  `gender` enum('Male','Female') NOT NULL DEFAULT 'Male',
  `contact` bigint(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `location` varchar(50) NOT NULL,
  `linkedin_url` text,
  `company_name` varchar(100) DEFAULT NULL,
  `company_logo` varchar(255) DEFAULT NULL,
  `profile_img` varchar(255) DEFAULT NULL,
  `user_type` int(11) NOT NULL DEFAULT '2',
  `active` enum('0','1') CHARACTER SET utf8 NOT NULL DEFAULT '1',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

/*Data for the table `nscm_mentors` */

LOCK TABLES `nscm_mentors` WRITE;

insert  into `nscm_mentors`(`id`,`unique_id`,`name`,`technology`,`email`,`password`,`gender`,`contact`,`description`,`location`,`linkedin_url`,`company_name`,`company_logo`,`profile_img`,`user_type`,`active`,`created_date`,`updated_date`) values (1,'5bc9f0ba0c13c','Abhishek','Big Data Analytics','guru@a.a','123','Male',2565412398,'','Bengaluru','https://www.linkedin.com/in/abhi-test-7b6a89174','Mattsenkumar',NULL,'1545042668-21_new.jpg',2,'1','2018-10-19 20:26:58','2018-12-07 05:01:30'),(2,'5bc9f1c618fd3','Manish Gupta','Artificial intelligence (AI)','manish@a.a','123','Male',9540660308,'','Bengaluru','','Mattsenkumar',NULL,NULL,2,'1','2018-10-19 20:31:26','2018-12-07 05:02:39'),(3,'5bc9f282c37c5','Paramita Biswas','Cloud Computing','paramita@nasscom.com','123','Female',9540660308,'','Bengaluru','','Mattsenkumar',NULL,NULL,2,'1','2018-10-19 20:34:34','2018-12-07 04:39:51'),(4,'5bcd5ed6ad282','Rajesh','Artificial intelligence (AI)','aaa@a.a','123','Male',1234567890,'good','Bengaluru',NULL,'Mattsenkumar',NULL,NULL,2,'1','2018-10-22 10:53:34','2018-11-28 12:13:58'),(6,'5beea7c2a5ed8','Adam','3D Printing','adam@a.a','123','Male',9999999999,'good','Noida','https://www.linkedin.com/in/abhi-test-7b6a89174','Mattsenkumar',NULL,NULL,2,'1','2018-11-16 16:49:30',NULL),(7,'5beea8d3817dd','Juliet','Cyber Security','juliet@nascom.com','123','Female',7878787878,'','Bengaluru','https://www.linkedin.com/in/abhi-test-7b6a89174','Mattsenkumar',NULL,NULL,2,'1','2018-11-16 16:54:03','2018-12-07 04:39:05'),(13,'5c0a721ce532d','cc','Cloud Computing','aaa@a.a','123','Male',1234567890,'rrrrr','New Delhi','https://www.linkedin.com/in/abhi-test-7b6a89174','Mattsenkumar','logo19.png',NULL,2,'1','2018-12-07 18:44:04',NULL),(11,'5c0a5236c8d3f','srikant','Selenium','sri.kant@gamil.com','123','Male',9852785212,'xvdfge','Bengaluru','','TCS',NULL,NULL,2,'1','2018-12-07 16:27:58',NULL),(12,'5c0a53b96faf9','bb','Virtual Reality','bb@a.a','123','Male',1234567890,'','Hyderabad','https://www.linkedin.com/in/abhi-test-7b6a89174','Mattsenkumar','logo18.png','a71.jpg',2,'1','2018-12-07 16:34:25','2018-12-07 06:37:06'),(10,'5c0a51c427967','aa','3D Printing','aaa@a.a','123','Male',1234567890,'aaaa','Gurugram','https://www.linkedin.com/in/abhi-test-7b6a89174','Mattsenkumar',NULL,NULL,2,'1','2018-12-07 16:26:04',NULL),(14,'5c0ba5bd8427c','AMOl','Virtual Reality','amol@a.a','123','Male',9258631248,'good','Noida','https://www.linkedin.com/in/abhi-test-7b6a89174','bosch','1544703295-13_new.jpg','1544703324-2_new.jpg',2,'1','2018-12-08 16:36:37','2018-12-13 05:45:24');

UNLOCK TABLES;

/*Table structure for table `nscm_students` */

DROP TABLE IF EXISTS `nscm_students`;

CREATE TABLE `nscm_students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unique_id` varchar(100) DEFAULT NULL,
  `title` varchar(10) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `technology` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `gender` enum('Male','Female') NOT NULL DEFAULT 'Male',
  `contact` bigint(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `user_type` int(11) NOT NULL DEFAULT '3',
  `designation` text,
  `company_name` varchar(255) DEFAULT NULL,
  `profile_img` text,
  `active` enum('0','1') NOT NULL DEFAULT '1',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

/*Data for the table `nscm_students` */

LOCK TABLES `nscm_students` WRITE;

insert  into `nscm_students`(`id`,`unique_id`,`title`,`name`,`technology`,`email`,`password`,`gender`,`contact`,`address`,`location`,`user_type`,`designation`,`company_name`,`profile_img`,`active`,`created_date`,`updated_date`) values (6,'5bc9f0ba0913c',NULL,'user','Artificial intelligence (AI)','user@a.a','123','Male',1234567890,'xyza','New Delhi',3,NULL,'Mattsenkumar LLC','1544698830-1_new.jpg','1','2018-10-22 10:15:40','2018-12-13 04:30:30'),(7,'5bc9f0ba0c19g',NULL,'user1','Artificial intelligence (AI)','user1@a.a','123','Male',1234567890,'xyz','Gurgaon',3,NULL,'Mattsenkumar LLC',NULL,'1','2018-10-22 10:16:12',NULL),(8,'5bc3f0ba0c13r',NULL,'user2','Big Data Analytics','user2@a.a','123','Male',1234567890,'xyz','Delhi',3,NULL,'Mattsenkumar LLC',NULL,'1','2018-10-22 10:17:21',NULL),(9,'5bc9d0ba0c13k',NULL,'user4','3D Printing','user4@a.a','123','Male',1234567890,'abc','Chennai',3,NULL,'Mattsenkumar LLC',NULL,'1','2018-10-22 10:17:47',NULL),(13,'5bfe83b27b85d','Ms.','Radhika Shet','Internet Of Things (IOT)','radhika.shet@absyz.com','123','Male',NULL,NULL,'Hyderabad',3,'Senior Software engineer','Absyz Software Consulting',NULL,'1','2018-11-28 17:31:54',NULL),(12,'5bfe69afc44e3','Ms.','Nidhiben Bhatt','Artificial intelligence (AI)','nidhi.bhatt@absyz.com','123','Male',NULL,NULL,'Hyderabad',3,'Sr. Software Engineer','Absyz Software Consulting',NULL,'1','2018-11-28 15:40:55',NULL),(14,'5bfe83e61ad3e','Ms.','Debasmita Rawooth','Internet Of Things (IOT)','debasmita.rawooth@absyz.com','123','Male',NULL,NULL,'Hyderabad',3,'Lead Consultant','Absyz Software Consulting',NULL,'1','2018-11-28 17:32:46',NULL),(15,'5bfe8464bf5d6','Mrs.','Aryaa Mukund Naik','Artificial intelligence (AI)','aryaa@anibrain.com','123','Male',NULL,NULL,'Pune',3,'Product Head & Editor','Anibrain Digital Technologies Pvt. Ltd.',NULL,'1','2018-11-28 17:34:52',NULL),(16,'5bfe848fd6610','Ms.','Monica Sharma','Virtual Reality','shubhada@anibrain.com','123','Male',NULL,NULL,'Pune',3,'Jr. Team Lead - Hair & Fur','Anibrain Digital Technologies Pvt. Ltd.',NULL,'1','2018-11-28 17:35:35',NULL),(17,'5bfe84bf4701f','Mrs.','Shubhada Milind Phadke','Virtual Reality','monica@anibrain.com','123','Male',NULL,NULL,'Pune',3,'Vice President - Interactive (HOD)','Anibrain Digital Technologies Pvt. Ltd.',NULL,'1','2018-11-28 17:36:23',NULL),(18,'5bfe8549c4d14','Ms','Arunachalam, Abinaya','Big Data Analytics','Abinaya.Arunachalam@anz.com','123','Male',NULL,NULL,'Bengaluru',3,'','ANZ','a21.jpg','1','2018-11-28 17:38:41','2018-12-10 04:11:27'),(19,'5bfe856b577a6','Ms','B, Akilandeswari(Akila)','Big Data Analytics','Akilandeswari.B@anz.com','123','Male',NULL,NULL,'Bengaluru',3,'','ANZ',NULL,'1','2018-11-28 17:39:15',NULL),(20,'5bfe8594b64e7','Ms','Alluri, Vijaya','Cloud Computing','Alluri.Vijaya@anz.com','123','Male',NULL,NULL,'Bengaluru',3,'','ANZ',NULL,'1','2018-11-28 17:39:56',NULL),(21,'5bfe85bd12b97','Ms','H C, Anupama','Artificial intelligence (AI)','Anupama.HC@anz.com','123','Male',NULL,NULL,'Bengaluru',3,'','ANZ',NULL,'1','2018-11-28 17:40:37',NULL),(22,'5bfe85dfb0b2e','Ms','M R, Anupama','Artificial intelligence (AI)','Anupama.MR@anz.com','123','Male',NULL,NULL,'Bengaluru',3,'','ANZ',NULL,'1','2018-11-28 17:41:11',NULL),(23,'5bfe8605dc225','Ms','Chadalawada, Aparna','Cyber Security','Aparna.Chadalawada@anz.com','123','Male',NULL,NULL,'Bengaluru',3,'','ANZ',NULL,'1','2018-11-28 17:41:49',NULL),(24,'5bfe8642a3c39','Ms','Mallick, Arpita','Artificial intelligence (AI)','Arpita.Mallick@anz.com','123','Male',NULL,NULL,'Bengaluru',3,'','ANZ',NULL,'1','2018-11-28 17:42:50',NULL),(25,'5bfe86667011a','Ms','C, Mukila','3D Printing','C.Mukila@anz.com','123','Male',NULL,NULL,'Bengaluru',3,'','ANZ',NULL,'1','2018-11-28 17:43:26',NULL),(26,'5bfe868a18642','Ms','Celestine, Celin','Cyber Security','Celin.Celestine@anz.com','123','Male',NULL,NULL,'Bengaluru',3,'','ANZ',NULL,'1','2018-11-28 17:44:02',NULL),(27,'5bfe86aab0a02','Ms','Hiremath, Champa S','Cyber Security','ChampaS.Hiremath@anz.com','123','Male',NULL,NULL,'Bengaluru',3,'','ANZ',NULL,'1','2018-11-28 17:44:34',NULL),(28,'5bfe86cf03eb9','Ms','Chandrasekharan, Deepa','Big Data Analytics','Deepa.Chandrasekharan@anz.com','123','Male',NULL,NULL,'Bengaluru',3,'','ANZ',NULL,'1','2018-11-28 17:45:11',NULL),(29,'5bfe8705660d2','Ms','Ravi, Deepika','Big Data Analytics','Deepika.Ravi@anz.com','123','Male',NULL,NULL,'Bengaluru',3,'','ANZ',NULL,'1','2018-11-28 17:46:05',NULL),(30,'5bfe87257fac1','Ms','Gupta, Deepti','Artificial intelligence (AI)','Deepti.Gupta@anz.com','123','Male',NULL,NULL,'Bengaluru',3,'','ANZ',NULL,'1','2018-11-28 17:46:37',NULL),(31,'5bfe875e99094','Ms','Francis, Geetha','Cloud Computing','Geetha.Francis@anz.com','123','Male',NULL,NULL,'Bengaluru',3,'','ANZ',NULL,'1','2018-11-28 17:47:34',NULL),(32,'5bfe877cd5bce','Ms','Ghosh, Payal','Big Data Analytics','ghoshp4@anz.com','123','Male',NULL,NULL,'Bengaluru',3,'','ANZ',NULL,'1','2018-11-28 17:48:04',NULL),(33,'5bfe879c67a85','Ms','K S, Jayashree','Big Data Analytics','Jayashree.KS@anz.com','123','Male',NULL,NULL,'Bengaluru',3,'','ANZ',NULL,'1','2018-11-28 17:48:36',NULL),(34,'5bfe87bb0f4c3','Ms','Roopa, Jiji','Artificial intelligence (AI)','Jiji.Roopa@anz.com','123','Male',NULL,NULL,'Bengaluru',3,'','ANZ',NULL,'1','2018-11-28 17:49:07',NULL),(35,'5bfe87dac498f','Ms','Joseph, Jinimol','Big Data Analytics','Jinimol.Joseph@anz.com','123','Male',NULL,NULL,'Bengaluru',3,'','ANZ',NULL,'1','2018-11-28 17:49:38',NULL),(36,'5bfe8809d2d65','Ms','Joshi, Jyoti','Artificial intelligence (AI)','Jyoti.Joshi@anz.com','123','Male',NULL,NULL,'Bengaluru',3,'','ANZ',NULL,'1','2018-11-28 17:50:25',NULL),(37,'5bfe8827bcf19','Ms','Joshi, Kanchan','Robotic Process Automation (RPA)','Kanchan.Joshi@anz.com','123','Male',NULL,NULL,'Bengaluru',3,'','ANZ',NULL,'1','2018-11-28 17:50:55',NULL),(38,'5bfe884a2dcd3','Ms','Kashiv, Deepali','Artificial intelligence (AI)','kashivd1@anz.com','123','Male',NULL,NULL,'Bengaluru',3,'','ANZ',NULL,'1','2018-11-28 17:51:30',NULL),(39,'5bfe8868c29ae','Ms','Gupta, Kavita','Big Data Analytics','Kavita.Gupta@anz.com','123','Male',NULL,NULL,'Bengaluru',3,'','ANZ',NULL,'1','2018-11-28 17:52:00',NULL),(40,'5bfe8886371c6','Ms','M, Kavitha','Cloud Computing','Kavitha.M@anz.com','123','Male',NULL,NULL,'Bengaluru',3,'','ANZ',NULL,'1','2018-11-28 17:52:30',NULL),(41,'5c0a1f4984bc1','Mr','abhi007','Social & Mobile','abhishek@gmail.com','11988007','Male',NULL,NULL,'Gurugram',3,'Tester','MattsenKumar',NULL,'1','2018-12-07 12:50:41',NULL),(42,'5c0a2c32c5840','Mrs','Anita','Cloud Computing','anita@gmail.com','123','Male',NULL,NULL,'Benguluru',3,'Devloper','IBM',NULL,'1','2018-12-07 13:45:46',NULL),(43,'5c0a5aa37f38d','Mrs','SONAM','Big Data Analytics','sonam@gmail.com','123','Male',NULL,NULL,'gurgaon',3,'Devloper','FIS',NULL,'1','2018-12-07 17:03:55',NULL);

UNLOCK TABLES;

/*Table structure for table `nscm_technology` */

DROP TABLE IF EXISTS `nscm_technology`;

CREATE TABLE `nscm_technology` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

/*Data for the table `nscm_technology` */

LOCK TABLES `nscm_technology` WRITE;

insert  into `nscm_technology`(`id`,`name`,`logo`,`active`) values (1,'Artificial intelligence (AI)','https://bi-test.mattsenkumar.com/nasscom_ci/',1),(2,'Big Data Analytics','https://bi-test.mattsenkumar.com/nasscom_ci/',1),(3,'Robotic Process Automation (RPA)','https://bi-test.mattsenkumar.com/nasscom_ci/',1),(4,'Virtual Reality','https://bi-test.mattsenkumar.com/nasscom_ci/',1),(5,'Internet Of Things (IOT)','https://bi-test.mattsenkumar.com/nasscom_ci/',1),(6,'3D Printing','https://bi-test.mattsenkumar.com/nasscom_ci/',1),(7,'Cloud Computing','https://bi-test.mattsenkumar.com/nasscom_ci/',1),(8,'Social & Mobile','https://bi-test.mattsenkumar.com/nasscom_ci/',1),(9,'Cyber Security','https://bi-test.mattsenkumar.com/nasscom_ci/',1),(22,'a','',0),(23,'a','',0),(24,'Selenium','',1),(25,'tester','',0),(26,'photoshop','',0);

UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
