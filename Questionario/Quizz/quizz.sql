# Host: localhost  (Version 5.6.24-log)
# Date: 2017-07-25 13:59:28
# Generator: MySQL-Front 6.0  (Build 2.20)

create database quizz;
use quizz;
#
# Structure for table "pergunta"
#

DROP TABLE IF EXISTS `pergunta`;
CREATE TABLE `pergunta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(80) DEFAULT NULL,
  `comentario` varchar(120) DEFAULT NULL,
  `resposta_certa` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

#
# Data for table "pergunta"
#

INSERT INTO `pergunta` VALUES (10,'Qual o nome do professor de Informática?','Vende chocolates',19),(11,'Qual professor(a) não ensina a programar?','Tem cabelo escuro',22),(13,'quem é o professor que nao trouxe chocolate?','',30);

#
# Structure for table "resposta"
#

DROP TABLE IF EXISTS `resposta`;
CREATE TABLE `resposta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(45) DEFAULT NULL,
  `id_pergunta` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_pergunta` (`id_pergunta`),
  CONSTRAINT `resposta_ibfk_1` FOREIGN KEY (`id_pergunta`) REFERENCES `pergunta` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

#
# Data for table "resposta"
#

INSERT INTO `resposta` VALUES (18,'Paulo',10),(19,'Leonardo',10),(20,'Matheus',10),(21,'Felipe',10),(22,'Altamira',11),(23,'Leonardo',11),(24,'Geraldo',11),(25,'Felipe',11),(30,'leonardo',13),(31,'geraldo',13),(32,'altamira',13),(33,'felipe',13);
