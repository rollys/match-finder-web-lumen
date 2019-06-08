/*
SQLyog Community v13.1.1 (64 bit)
MySQL - 5.7.24-0ubuntu0.18.04.1 : Database - match-finder
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`match-finder` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;

USE `match-finder`;

/*Table structure for table `businesses` */

DROP TABLE IF EXISTS `businesses`;

CREATE TABLE `businesses` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `business_type` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `logo` varchar(150) NOT NULL,
  `description` varchar(250) NOT NULL,
  `price` varchar(5) NOT NULL,
  `seating` int(10) NOT NULL,
  `latitude` varchar(15) NOT NULL,
  `longitude` varchar(15) NOT NULL,
  `opening_days` varchar(150) NOT NULL,
  `init_hour` varchar(10) NOT NULL,
  `fin_hour` varchar(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `businesses` */

insert  into `businesses`(`id`,`business_type`,`name`,`logo`,`description`,`price`,`seating`,`latitude`,`longitude`,`opening_days`,`init_hour`,`fin_hour`,`created_at`,`updated_at`,`deleted_at`) values 
(1,'lancenter','good game','/images/etc.jpg','juega limpio, juega bien','1.50',15,'-12.0673542','-77.0384829','lunes, martes, miercoles, jueves, viernes, sabado, domingo','07:00AM','23:00PM',NULL,NULL,NULL),
(2,'lancenter','casonitanet','c','lancenter donde puedes comer','1.50',12,'-12.0661749','-77.0358227','s','a','b',NULL,NULL,NULL),
(3,'lancenter','valkyrianet','c','La 6ta hora es gratis','2.50',13,'-12.0678373','-77.0358406','s','a','b',NULL,NULL,NULL),
(4,'lancenter','marinet','c','d','1.50',25,'-12.0674589','-77.0380403','s','a','b',NULL,NULL,NULL),
(5,'lancenter','marie','','','1.5',25,'-12.0674589','-77.0380403','','','','2019-06-08 07:09:02','2019-06-08 07:13:48','2019-06-08 07:13:48'),
(6,'lancenter','mari','','','1.5',25,'-12.0674589','-77.0380403','','','','2019-06-08 07:10:50','2019-06-08 07:10:50',NULL);

/*Table structure for table `games` */

DROP TABLE IF EXISTS `games`;

CREATE TABLE `games` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `game_type` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `logo` varchar(250) NOT NULL,
  `description` varchar(250) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `games` */

insert  into `games`(`id`,`game_type`,`name`,`logo`,`description`,`created_at`,`updated_at`,`deleted_at`) values 
(1,'MOBA','Dota 2','/images/dota-2.jpg','Lorem ipsum',NULL,NULL,NULL),
(3,'MOBA','marie','','AAA',NULL,'2019-06-08 07:20:56',NULL),
(4,'MOBA','league of legends','/images/lol.jpg','videojuego de multijugadores en línea',NULL,NULL,NULL),
(5,'Battle Royale','PlayerUnknowns','/images/PlayerUnknowns.jpg','videojuego de acción en el cual hasta 100 jugadores pelean en una Batalla Real',NULL,NULL,NULL),
(6,'Battle Royale','Fornite','/images/Fornite.jpg','videojuego de acción en el cual hasta 100 jugadores pelean en una Batalla Real',NULL,NULL,NULL),
(7,'RTS','starcraft II','/images/starcraft.jpg','videojuego de estrategia en tiempo real de ciencia ficción militar',NULL,NULL,NULL),
(8,'MOBA','marie','','AAA','2019-06-08 07:21:53','2019-06-08 07:22:18','2019-06-08 07:22:18');

/*Table structure for table `reservations` */

DROP TABLE IF EXISTS `reservations`;

CREATE TABLE `reservations` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `business_id` int(12) NOT NULL,
  `user_id` int(12) NOT NULL,
  `date_time` varchar(10) NOT NULL,
  `init_hour` varchar(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `reservations` */

insert  into `reservations`(`id`,`business_id`,`user_id`,`date_time`,`init_hour`,`created_at`,`updated_at`,`deleted_at`) values 
(1,1,1,'25/18/2018','05:00PM',NULL,'2019-06-08 07:28:37',NULL),
(2,1,1,'25/18/2018','05:00PM',NULL,NULL,NULL),
(4,1,1,'25/18/2018','05:00PM',NULL,NULL,NULL),
(5,1,1,'android.su','android.su',NULL,NULL,NULL),
(6,1,1,'android.su','android.su',NULL,NULL,NULL),
(7,1,1,'android.su','android.su',NULL,NULL,NULL),
(8,1,1,'android.su','android.su',NULL,NULL,NULL),
(9,2,1,'25/18/2018','05:00PM','2019-06-08 07:29:13','2019-06-08 07:29:31','2019-06-08 07:29:31');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `rol` varchar(50) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `name` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `birthday` varchar(25) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `sex` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `users` */

insert  into `users`(`id`,`rol`,`username`,`password`,`name`,`lastname`,`birthday`,`mail`,`sex`,`created_at`,`updated_at`,`deleted_at`) values 
(1,'administrador','administrador','123456789','test2','test','01/12/18','asas@mail.com','masculino',NULL,'2019-06-08 07:35:26',NULL),
(3,'usuario','jeanhush','a123','jean','alfaro','09/13/97','alfaro@gmail.com','masculino',NULL,NULL,NULL),
(4,'usuario','sideral','b123','jesus','hinoztroza','05/05/93','jesus@gmail.com','masculino',NULL,NULL,NULL),
(5,'usuario','smasho','c123','freddy','sina','11/07/94','freddy@gmail.com','masculino',NULL,NULL,NULL),
(6,'dev','rolly','123456','test2','test','01/12/18','rolly@mail.com','masculino','2019-06-08 07:37:46','2019-06-08 07:38:09','2019-06-08 07:38:09');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
