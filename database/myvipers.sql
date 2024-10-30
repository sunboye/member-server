/*
SQLyog Community v13.3.0 (64 bit)
MySQL - 5.6.20 : Database - myvipers
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`myvipers` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `myvipers`;

/*Table structure for table `admin_users` */

DROP TABLE IF EXISTS `admin_users`;

CREATE TABLE `admin_users` (
  `uuid` varchar(32) NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `admin_users` */

insert  into `admin_users`(`uuid`,`name`,`password`,`createtime`) values 
('uuid-admin-test','admin','123456','2024-09-05 13:32:03');

/*Table structure for table `oprate_log` */

DROP TABLE IF EXISTS `oprate_log`;

CREATE TABLE `oprate_log` (
  `uuid` varchar(32) DEFAULT NULL,
  `relation_uuid` varchar(32) DEFAULT NULL,
  `user_id` varchar(32) DEFAULT NULL,
  `op_type` int(11) DEFAULT NULL,
  `money` float DEFAULT NULL,
  `op_result` int(11) DEFAULT NULL,
  `op_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `oprate_log` */

insert  into `oprate_log`(`uuid`,`relation_uuid`,`user_id`,`op_type`,`money`,`op_result`,`op_time`) values 
(NULL,NULL,'111',1,10.78,1,'2024-09-05 15:49:19'),
(NULL,NULL,'111',2,13.75,1,'2024-09-05 15:49:19'),
(NULL,NULL,'111',1,56,1,'2024-09-05 15:49:19'),
(NULL,NULL,'222',2,44,1,'2024-09-05 15:49:19'),
(NULL,NULL,'222',2,40,1,'2024-09-05 15:49:19'),
(NULL,NULL,'222',1,72,1,'2024-09-05 15:49:19'),
(NULL,NULL,'111',1,0.99,1,'0000-00-00 00:00:00'),
(NULL,NULL,'111',1,10.78,1,'0000-00-00 00:00:00'),
(NULL,NULL,'111',1,1.98,1,'0000-00-00 00:00:00'),
(NULL,NULL,'111',1,10.89,1,'2024-09-05 15:59:32'),
(NULL,NULL,'111',2,1.25,1,'2024-09-05 16:00:40'),
(NULL,NULL,'111',1,0.99,1,'2024-09-05 16:05:38'),
(NULL,NULL,'111',1,0.99,1,'0000-00-00 00:00:00'),
(NULL,NULL,'111',2,41.25,1,'2024-09-05 16:15:06'),
(NULL,NULL,'111',2,166.5,1,'0000-00-00 00:00:00'),
(NULL,NULL,'',2,166.25,2,'2024-09-06 15:15:01'),
(NULL,NULL,'111',2,166.25,1,'2024-09-06 15:15:05');

/*Table structure for table `vip_users` */

DROP TABLE IF EXISTS `vip_users`;

CREATE TABLE `vip_users` (
  `name` varchar(32) DEFAULT NULL,
  `id` varchar(32) NOT NULL,
  `telephone` varchar(32) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `leval` int(11) DEFAULT NULL,
  `sex` int(11) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `balance` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `vip_users` */

insert  into `vip_users`(`name`,`id`,`telephone`,`status`,`leval`,`sex`,`birthday`,`create_time`,`balance`) values 
('111','',NULL,NULL,NULL,NULL,NULL,'2024-09-06 11:27:53',NULL),
('test111','111','15829236726',1,4,2,'2024-09-06','2024-09-06 15:15:05',1347.67),
('222','1231312312312','312313123123',1,3,2,'2024-09-07','2024-09-06 11:28:34',11.56),
('test222','222','12345678956',1,1,2,NULL,'2024-09-05 15:18:37',111.99);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
