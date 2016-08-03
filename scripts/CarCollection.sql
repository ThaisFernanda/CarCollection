/*
SQLyog Community v12.2.1 (64 bit)
MySQL - 10.1.13-MariaDB : Database - car_collection
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`car_collection` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `car_collection`;

/*Table structure for table `carro` */

DROP TABLE IF EXISTS `carro`;

CREATE TABLE `carro` (
  `id_carro` int(10) NOT NULL AUTO_INCREMENT,
  `portas` int(10) DEFAULT NULL,
  `ocupantes` int(10) DEFAULT NULL,
  `marca` varchar(50) DEFAULT NULL,
  `img` varchar(30) DEFAULT NULL,
  `modelo` varchar(30) DEFAULT NULL,
  `cor` varchar(30) DEFAULT NULL,
  `anoFabricacao` varchar(4) DEFAULT NULL,
  `dimensoesCLA` varchar(30) DEFAULT NULL,
  `placa` varchar(10) DEFAULT NULL,
  `conversivel` tinyint(1) DEFAULT NULL,
  `quilometragem` varchar(50) DEFAULT NULL,
  `valor` int(50) DEFAULT NULL,
  PRIMARY KEY (`id_carro`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `carro` */

insert  into `carro`(`id_carro`,`portas`,`ocupantes`,`marca`,`img`,`modelo`,`cor`,`anoFabricacao`,`dimensoesCLA`,`placa`,`conversivel`,`quilometragem`,`valor`) values 
(1,4,5,'Ford',NULL,'Mustang','Preto','2015','1111x6666x2222','kkkk8525',0,'125.0',325000),
(2,4,2,'Ferrari',NULL,'T50','Prata','1946','111x235x135','HHH3333',0,'12.0',135000);

/*Table structure for table `mecanica_seguranca` */

DROP TABLE IF EXISTS `mecanica_seguranca`;

CREATE TABLE `mecanica_seguranca` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `combustivel` varchar(10) DEFAULT NULL,
  `motor` varchar(15) DEFAULT NULL,
  `potencia` int(11) DEFAULT NULL,
  `velocidade_max` int(11) DEFAULT NULL,
  `cambio` varchar(35) DEFAULT NULL,
  `tracao` varchar(10) DEFAULT NULL,
  `aceleracao_0a100` double DEFAULT NULL,
  `freios` varchar(35) DEFAULT NULL,
  `rodas` varchar(20) DEFAULT NULL,
  `airbag` varchar(20) DEFAULT NULL,
  `carro_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `carro_id` (`carro_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `mecanica_seguranca` */

insert  into `mecanica_seguranca`(`id`,`combustivel`,`motor`,`potencia`,`velocidade_max`,`cambio`,`tracao`,`aceleracao_0a100`,`freios`,`rodas`,`airbag`,`carro_id`) values 
(1,'Gasolina','2.0',242,360,'CVT','dianteira',9,'disco',NULL,'NÃ£o',1),
(2,'Gasolina','2.0',370,320,'CVT','dianteira',9,'disco','17','Sim',2);

/*Table structure for table `oferta` */

DROP TABLE IF EXISTS `oferta`;

CREATE TABLE `oferta` (
  `cod` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) DEFAULT NULL,
  `id_carro` int(11) DEFAULT NULL,
  `mensagem` varchar(255) DEFAULT NULL,
  `dataOferta` date DEFAULT NULL,
  PRIMARY KEY (`cod`),
  KEY `id_usurario` (`id_user`),
  KEY `id_carro` (`id_carro`),
  CONSTRAINT `oferta_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`),
  CONSTRAINT `oferta_ibfk_2` FOREIGN KEY (`id_carro`) REFERENCES `carro` (`id_carro`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `oferta` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) DEFAULT NULL,
  `cpf` varchar(11) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `endereco` varchar(50) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `login` varchar(20) NOT NULL,
  `senha` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cpf` (`cpf`,`login`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`id`,`nome`,`cpf`,`email`,`endereco`,`telefone`,`login`,`senha`) values 
(1,'Gustavo Pereira de Lima',NULL,'gustavo.pereira.lima@gmail.com','Rua Madre de Deus','8199002004','guplima','12345');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
