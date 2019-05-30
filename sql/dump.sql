-- MySQL dump 10.13  Distrib 5.7.24, for Linux (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	5.7.24-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `alternativas`
--

DROP TABLE IF EXISTS `alternativas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alternativas` (
  `id_alternativa` int(11) NOT NULL AUTO_INCREMENT,
  `alternativa` varchar(2) NOT NULL,
  `descricao` varchar(300) DEFAULT NULL,
  `id_pergunta` int(11) NOT NULL,
  PRIMARY KEY (`id_alternativa`,`id_pergunta`),
  UNIQUE KEY `id_alternativa_UNIQUE` (`id_alternativa`),
  KEY `fk_alternativas_perguntas1_idx` (`id_pergunta`),
  CONSTRAINT `fk_alternativas_perguntas1` FOREIGN KEY (`id_pergunta`) REFERENCES `perguntas` (`id_pergunta`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alternativas`
--

LOCK TABLES `alternativas` WRITE;
/*!40000 ALTER TABLE `alternativas` DISABLE KEYS */;
INSERT INTO `alternativas` VALUES (1,'a','2 refeições',1),(2,'b','3 refeições',1),(3,'c','4 refeições',1),(4,'d','5 ou mais',1),(5,'a','1 hora',2),(6,'b','2 horas',2),(7,'c','3 horas',2),(8,'d','5 horas ou mais',2),(9,'a','Menos que 1',3),(10,'b','1 litro',3),(11,'c','2 litros',3),(12,'d','3 litros',3),(13,'e','4 litros',3),(14,'f','5 litros ou mais',3),(15,'a','1 vez na semana ou menos',4),(16,'b','2 vezes por semana ',4),(17,'c','3 vezes por semana',4),(18,'d','4 vezes ou mais',4),(19,'a','Sim',5),(20,'b','Não',5),(21,'a','Sim',6),(22,'b','Não',6),(23,'a','Sim',7),(24,'b','Não',7),(25,'a','Sim',8),(26,'b','Não',8),(27,'a','Salgados',9),(28,'b','Doces',9),(29,'c','Snacks',9),(30,'d','Alimentos naturais',9),(31,'a','Sim',10),(32,'b','Não',10),(33,'a','Carnívoro',11),(34,'b','Vegetariano',11),(35,'c','Vegano',11),(36,'a','Sim',12),(37,'b','Não',12),(38,'a','Sim',13),(39,'b','Não',13),(40,'a','Sim',14),(41,'b','Não',14),(42,'a','Sim',15),(43,'b','Não',15);
/*!40000 ALTER TABLE `alternativas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perguntas`
--

DROP TABLE IF EXISTS `perguntas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perguntas` (
  `id_pergunta` int(6) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(300) NOT NULL,
  `formulario` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_pergunta`,`descricao`),
  UNIQUE KEY `id_perguntas_UNIQUE` (`id_pergunta`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perguntas`
--

LOCK TABLES `perguntas` WRITE;
/*!40000 ALTER TABLE `perguntas` DISABLE KEYS */;
INSERT INTO `perguntas` VALUES (1,'Quantas refeições você faz por dia?','Saude'),(2,'Qual é o intervalo médio entre as refeições?','Saude'),(3,'Quantos litros de água você consome por dia?','Saude'),(4,'Qual a frequência que você come fastfood?','Saude'),(5,'Come vegetais regularmente?','Saude'),(6,'Come saladas regularmente?','Saude'),(7,'Come frutas regularmente?','Saude'),(8,'Costuma pular refeições?','Saude'),(9,'Qual das opções você tem preferência?','Habitos'),(10,'Costuma sentir fraqueza ou falta de energia durante o dia?','Habitos'),(11,'Em qual das opções você se enquadra melhor?','Habitos'),(12,'Você tem problemas com diabete?','Habitos'),(13,'Você tem problemas com pressão alta?','Habitos'),(14,'Pratica exercícios físicos regularmente?','Habitos'),(15,'Toma algum tipo de suplemento alimentar?','Habitos');
/*!40000 ALTER TABLE `perguntas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recomendacoes`
--

DROP TABLE IF EXISTS `recomendacoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recomendacoes` (
  `id_recomendacao` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(300) DEFAULT NULL,
  `id_alternativa` int(11) NOT NULL,
  PRIMARY KEY (`id_recomendacao`,`id_alternativa`),
  UNIQUE KEY `id_rec_UNIQUE` (`id_recomendacao`),
  UNIQUE KEY `id_alternativa_UNIQUE` (`id_alternativa`),
  KEY `fk_recomendacoes_alternativas1_idx` (`id_alternativa`),
  CONSTRAINT `fk_recomendacoes_alternativas1` FOREIGN KEY (`id_alternativa`) REFERENCES `alternativas` (`id_alternativa`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recomendacoes`
--

LOCK TABLES `recomendacoes` WRITE;
/*!40000 ALTER TABLE `recomendacoes` DISABLE KEYS */;
INSERT INTO `recomendacoes` VALUES (1,'Sua alimentação não está adequada pois exige um alto consumo calórico\nem poucas refeição, causando subnutrição ou gerando um estoque em forma de gordura.',1),(2,'Sua alimentação não está adequada pois exige um alto consumo calórico\nem poucas refeições, causando subnutrição ou gerando um estoque em forma de gordura.',2),(3,'Muito bem, dividir refeições maiores em menores ao longo do dia aumenta\nseu nível de disposição e melhora seu metabolismo.',3),(4,'Fique atento, aumentar a quantidade de refeições à números maiores que 5\npodem gerar problemas de sobrepeso se não forem bem distribuídas, lembre-se, se aumentar a\nquantidade de refeições diminua a quantidade de comida.',4),(5,'Talvez você esteja se alimentando em excesso.',5),(6,'Você pode estar privando seu corpo de vitaminas, proteínas,\ncarboidratos entre outros componentes que são tão importantes para sua saúde.',8),(7,'O consumo de aguá propriamente dita, também é feita pela ingestão de alimentos,\nporém se você não consome água diretamente isso pode gerar muitos problemas de saúde.',9),(8,'Pouco é melhor que nada, mas aumente o consumo de água, principalmente se\nvocê faz atividades que faça que perca líquidos.',10),(9,'Muito bem, mas se você faz atividades que faça que você perca líquidos\naumente a ingestão de água.',11),(10,'Parabéns, a quantidade de água adequada a se beber varia de pessoa à\npessoa, porém 3 litros pode ser tido como uma recomendação universal.',12),(11,'Muito bom, porém pode ser um pouco demais, procure um nutricionista para\nque possa calcular qual a quantidade de água ideal para você.',13),(12,'Cuidado, tudo em exagero também faz mal, excesso de água pode\ncausar perda de minerais essenciais ao organismo.',14),(13,'Ninguém é de ferro, alimentos altamente calóricos podem\nser consumidos se você tem um bom equilíbrio alimentar.',15),(14,'Se você tem um bom controle alimentar, ainda é possível manter\numa boa saúde.',16),(15,'Fique atento, você está exagerando um pouquinho, fastfoods tem\num alto valor de sódio, açucares e gordura, podendo causar dentre vários problemas de saúde o\nmais conhecido hipertensão',17),(16,'Cuidado, pense bem se seu prazer imediato vale suas várias horas em\num hospital ou uma velhice difícil, dentre os vários problemas de saúde hipertensão e diabetes\nsão os mais comuns.',18),(17,'Parabéns, vegetais são fontes de vitaminas, minerais e fibras, alcalinizam e\nfortalecem o sangue e facilitam a digestão além de serem bons antioxidantes.',19),(18,'Adicione eles em sua dieta, vegetais são fontes de vitaminas, minerais e fibras,\nalcalinizam e fortalecem o sangue e facilitam a digestão além de serem bons antioxidantes.',20),(19,'Muito bem, As saladas possuem alto teor de água, o que contribui para a\nhidratação; possui baixo índice calórico e são liberadas para o consumo de qualquer pessoa, ou\nseja, sem nenhuma contraindicação. Dessa forma, ela traz uma série de benefícios para o corpo.',21),(20,'E por que não?, As saladas possuem alto teor de água, o que contribui para a\nhidratação; possui baixo índice calórico e são liberadas para o consumo de qualquer pessoa, ou\nseja, sem nenhuma contraindicação. Dessa forma, ela traz uma série de benefícios para o corpo.',22),(21,'Elas existem de diversas cores e podem ser doces, ácidas e até azedas. Algumas\nsão conhecidas por sua suculência, outras pela quantidade de fibras ou seu alto teor calórico.\nFontes de vitaminas e sais minerais, todos os tipos de frutas são altamente nutritivas.',23),(22,'Elas existem de diversas cores e podem ser doces, ácidas e até azedas. Algumas\nsão conhecidas por sua suculência, outras pela quantidade de fibras ou seu alto teor calórico.\nFontes de vitaminas e sais minerais, todos os tipos de frutas são altamente nutritivas.',24),(23,'Pular refeições faz que seu metabolismo trabalhe mais divagar pois precisa\nguardar energia até a próxima refeição, isso pode diminuir sua quantidade de energia e\ndisposição.',25),(24,'Contar com refeições regulares acelera o metabolismo e a queima de gorduras.',26),(25,'Os famosos salgadinhos são altamente gordurosos e calóricos então coma os com moderação.',27),(26,'Tem uma concentração muito grande de açucares o que pode causar problemas\nde saúde entre os mais graves diabete e obesidade.',28),(27,'Contém altas concentrações de sódio, coloríficos, e conservantes o que pode\ncausar inúmeros problemas de saúde.',29),(28,'Show! Alimentos livre de sódio, coloríficos e conservantes artificiais\nlhe garantiram uma melhor qualidade de vida.',30),(29,'Uma dieta equilibrada e variada contendo vegetais, saladas, carboidratos, carnes e\nfrutas ajudam a suprir melhor o sua necessidade diária.',31),(30,'Perfeito, provavelmente sua alimentação supri suas necessidades mesmo assim\nvale a pena passar em um medico ou nutricionista para melhora-la.',32),(31,'Consuma também de saladas, pois elas ajudam na digestão.',33),(32,'Fique atento na vitamina B12 pois é uma vitamina de origem animal\nessencial para os seres humanos.',34),(33,'Fique atento na vitamina B12 pois é uma vitamina de origem animal essencial\npara os seres humanos.',35),(34,'Sua alimentação tem que ser diferenciada, um nutricionista e medico é essencial\npara fazer boas recomendações.',36),(35,'Sal e gorduras são grandes vilões, se consulte com um médico para que ele passe\numa alimentação adequada.',38),(36,'Suplementos como o nome diz ajuda a suprir sua alimentação base, não as torne\nsua refeição principal.',42),(37,'Se você não consegue suprir suas necessidades com sua alimentação diária\ntalvez suplementos te ajudem a chegar ao seu objetivo.',43);
/*!40000 ALTER TABLE `recomendacoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `respostas`
--

DROP TABLE IF EXISTS `respostas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `respostas` (
  `id_resposta` int(11) NOT NULL AUTO_INCREMENT,
  `id_alternativa` int(11) NOT NULL,
  PRIMARY KEY (`id_resposta`,`id_alternativa`),
  UNIQUE KEY `id_resposta_UNIQUE` (`id_resposta`),
  KEY `fk_respostas_alternativas1_idx` (`id_alternativa`),
  CONSTRAINT `fk_respostas_alternativas1` FOREIGN KEY (`id_alternativa`) REFERENCES `alternativas` (`id_alternativa`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `respostas`
--

LOCK TABLES `respostas` WRITE;
/*!40000 ALTER TABLE `respostas` DISABLE KEYS */;
INSERT INTO `respostas` VALUES (1,27),(2,31),(3,33),(4,36),(5,38),(6,40),(7,42),(8,27),(9,31),(10,33),(11,36),(12,38),(13,40),(14,42),(15,1),(16,7),(17,12),(18,15),(19,19),(20,21),(21,24),(22,25),(23,4),(24,5),(25,9),(26,19),(27,21),(28,23),(29,25),(30,15);
/*!40000 ALTER TABLE `respostas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-30 17:31:12
