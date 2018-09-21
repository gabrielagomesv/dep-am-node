CREATE DATABASE  IF NOT EXISTS `bfyme` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `bfyme`;
-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: bfyme
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `t_sbfy_categoria`
--

DROP TABLE IF EXISTS `t_sbfy_categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `t_sbfy_categoria` (
  `cd_categoria` int(11) NOT NULL AUTO_INCREMENT,
  `nm_categoria` varchar(45) NOT NULL,
  PRIMARY KEY (`cd_categoria`),
  UNIQUE KEY `UN_SBFY_CATEGORIA` (`nm_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_sbfy_categoria`
--

LOCK TABLES `t_sbfy_categoria` WRITE;
/*!40000 ALTER TABLE `t_sbfy_categoria` DISABLE KEYS */;
INSERT INTO `t_sbfy_categoria` VALUES (3,'CABELO'),(6,'ESTÉTICA CORPORAL'),(7,'ESTÉTICA FACIAL'),(1,'MAQUIAGEM'),(4,'MASSAGEM'),(5,'SOBRANCELHA'),(2,'UNHAS');
/*!40000 ALTER TABLE `t_sbfy_categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_sbfy_postagens`
--

DROP TABLE IF EXISTS `t_sbfy_postagens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `t_sbfy_postagens` (
  `id_postagem` int(11) NOT NULL AUTO_INCREMENT,
  `nm_autor` varchar(100) DEFAULT NULL,
  `ds_postagem` varchar(800) DEFAULT NULL,
  `ds_imagem` varchar(120) DEFAULT NULL,
  `nm_titulo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_postagem`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_sbfy_postagens`
--

LOCK TABLES `t_sbfy_postagens` WRITE;
/*!40000 ALTER TABLE `t_sbfy_postagens` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_sbfy_postagens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_sbfy_servico`
--

DROP TABLE IF EXISTS `t_sbfy_servico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `t_sbfy_servico` (
  `cd_servico` int(11) NOT NULL AUTO_INCREMENT,
  `cd_categoria` int(11) NOT NULL,
  `nm_servico` varchar(45) NOT NULL,
  `ds_servico` varchar(255) NOT NULL,
  `nr_duracao_maxima_servico` int(11) NOT NULL,
  `vl_servico` decimal(5,2) NOT NULL,
  PRIMARY KEY (`cd_servico`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_sbfy_servico`
--

LOCK TABLES `t_sbfy_servico` WRITE;
/*!40000 ALTER TABLE `t_sbfy_servico` DISABLE KEYS */;
INSERT INTO `t_sbfy_servico` VALUES (1,1,'MAQUIAGEM ARTISTICA','Precisa de uma maquiagem para aquela festa a fantasia ou até para uma apresentação no teatro?\n		A maquiagem artística é perfeita para essas ocasiões.',45,130.00),(2,1,'MAQUIAGEM','Festas de casamento, formatura ou aquela ocasião especial pedem destaque para sua beleza e a maquiagem é uma ótima\n    forma de completar o look.',60,110.00),(3,2,'MANICURE','No serviço de manicure simples é realizado a limpeza das unhas e esmaltação.',30,25.00),(4,2,'PEDICURE','Serviço oferece a limpeza das unhas e esmaltação',30,25.00),(5,2,'UNHAS DECORADAS','Unhas postiças ou naturais ganham cor e formatos diferente com essa técnica',40,45.00),(6,2,'MANICURE E PEDICURE','Serviço completo de limpeza e esmaltação de mãos e pés.',40,40.00),(7,3,'PENTEADOS','Penteados para todos os tipos de ocasiões podem ser solicitados.',60,150.00),(8,3,'CORTE','Cortes simples para manutenção ou cortes mais elaborados',45,40.00),(9,3,'ESCOVA','Para a modelagem, é utilizada a técnica que seca e modela o cabelo com ajuda do secador, conforme gosto do cliente.',60,30.00),(10,4,'BAMBUTERAPIA','Massagem que utiliza bambus para movimentos rigorosos e que promove relaxamento e contorno corporal',45,140.00),(11,4,'PEDRAS QUENTES','Massagem que proporciona relaxamento intenso, por meio de pedras vulcânicas aquecidas',45,110.00),(12,4,'RELAXANTE','A massagem relaxante é uma técnica que beneficia a flexibilidade e aumenta a circulação sanguínea do corpo, de modo\n    que alivia o estresse e tensão muscular.',45,85.00),(13,5,'DESIGN DE SOBRANCELHA','Técnica que desenha e alinha harmoniosamente as sobrancelhas, seguindo o formato de rosto e gosto do\n    cliente.',45,40.00),(14,5,'COLORAÇÃO DE SOBRANCELHA','Utilizada para realçar sobrancelhas que são mais claras, criando o aspecto de sobrancelha preenchida',45,45.00),(15,6,'DRENAGEM LINFÁTICA','Procedimento realizado para redução de inchaço corporal.',60,80.00),(16,6,'TRATAMENTO DE CELULITE','Procedimento pode reunir várias tecnologias e técnicas manuais para redução da aparência das celulites',60,220.00),(17,6,'GORDURA LOCALIZADA','Voltado para redução de medidas, com produtos específicos e massagem rigorosa.',60,200.00),(18,7,'LIMPEZA DE PELE','Procedimento voltado para extração de cravos e melhora da aparência da pele do rosto.',45,85.00),(19,7,'PEELING','Por meio de uma leve descamação da pele, acontece a renovação celular da pele promovendo aspecto de saudável e limpa.',60,100.00),(20,7,'HIDRATAÇÃO FACIAL','Para melhorar a textura e retenção de líquido da pele.',30,75.00);
/*!40000 ALTER TABLE `t_sbfy_servico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_sbfy_usuario`
--

DROP TABLE IF EXISTS `t_sbfy_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `t_sbfy_usuario` (
  `cd_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `nm_cliente` varchar(100) NOT NULL,
  `nm_usuario` varchar(30) NOT NULL,
  `ds_email` varchar(100) NOT NULL,
  `nr_cpf` char(11) NOT NULL,
  `dt_nascimento` datetime NOT NULL,
  `ds_senha` varchar(16) NOT NULL,
  `ds_sexo` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`cd_usuario`),
  UNIQUE KEY `UN_SBFY_EMAIL` (`ds_email`),
  UNIQUE KEY `UN_SBFY_CPF` (`nr_cpf`),
  UNIQUE KEY `UN_SBFY_NMUSUARIO` (`nm_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_sbfy_usuario`
--

LOCK TABLES `t_sbfy_usuario` WRITE;
/*!40000 ALTER TABLE `t_sbfy_usuario` DISABLE KEYS */;
INSERT INTO `t_sbfy_usuario` VALUES (1,'Joana Durvalo','JOBS','j.durval@gmail.com','44816696830','1997-03-12 00:00:00','J7wKwsV6B','F');
/*!40000 ALTER TABLE `t_sbfy_usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-21  8:27:23
