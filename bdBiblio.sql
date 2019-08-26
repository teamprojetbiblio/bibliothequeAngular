-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: db_bibliotheques
-- ------------------------------------------------------
-- Server version	8.0.16

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
-- Table structure for table `adherents`
--

DROP TABLE IF EXISTS `adherents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `adherents` (
  `id_adh` bigint(20) NOT NULL AUTO_INCREMENT,
  `adresse` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `ville` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_adh`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adherents`
--

LOCK TABLES `adherents` WRITE;
/*!40000 ALTER TABLE `adherents` DISABLE KEYS */;
INSERT INTO `adherents` VALUES (1,'10 rue des moulins','toto@free.fr','Duchemin','123','Toto','102030405','marseille'),(2,'1 route d\'espagne','vava@test.fr','Doris','123','Vava','203040506','nice'),(3,'2 rue des Fleurs','jean@jean.fr','Dupont','123','Jean','506070809','Toulouse'),(4,'rue efsd','san@test.fr','san','123','san','0','CASTELGINEST'),(5,'grf','test@test.fr','test','123','test','0','grfd'),(6,'qesrfd','test2@test.fr','test2','123','test2','0','kujyh');
/*!40000 ALTER TABLE `adherents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `administrateurs`
--

DROP TABLE IF EXISTS `administrateurs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `administrateurs` (
  `id_adm` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `mdp` varchar(255) DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_adm`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrateurs`
--

LOCK TABLES `administrateurs` WRITE;
/*!40000 ALTER TABLE `administrateurs` DISABLE KEYS */;
/*!40000 ALTER TABLE `administrateurs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `categories` (
  `id_cat` bigint(20) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_cat`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'BD'),(2,'Jeunesse'),(3,'Loisir'),(4,'Roman'),(5,'Economie et finance'),(6,'Informatique'),(7,'Théatre'),(8,'Science fiction'),(12,'test');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emprunts`
--

DROP TABLE IF EXISTS `emprunts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `emprunts` (
  `id_emp` bigint(20) NOT NULL AUTO_INCREMENT,
  `date_emprunt` date DEFAULT NULL,
  `date_retour` date DEFAULT NULL,
  `adh_id` bigint(20) DEFAULT NULL,
  `exe_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id_emp`),
  KEY `FKc37mshx3pykfi0cj37qe7wbsr` (`adh_id`),
  KEY `FK4otqaye65g1xkbc3af0av6rr7` (`exe_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emprunts`
--

LOCK TABLES `emprunts` WRITE;
/*!40000 ALTER TABLE `emprunts` DISABLE KEYS */;
INSERT INTO `emprunts` VALUES (3,'2019-07-12','2019-07-25',2,8),(4,'2019-07-02',NULL,1,5),(5,'2019-08-01',NULL,1,10),(7,'2019-07-26',NULL,3,8);
/*!40000 ALTER TABLE `emprunts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exemplaires`
--

DROP TABLE IF EXISTS `exemplaires`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `exemplaires` (
  `id_exe` bigint(20) NOT NULL AUTO_INCREMENT,
  `etat` varchar(255) DEFAULT NULL,
  `liv_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id_exe`),
  KEY `FKt68w2vvmkopwpyns6ipjqui86` (`liv_id`)
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exemplaires`
--

LOCK TABLES `exemplaires` WRITE;
/*!40000 ALTER TABLE `exemplaires` DISABLE KEYS */;
INSERT INTO `exemplaires` VALUES (1,'neuf',1),(2,'mauvais',1),(3,'usé',2),(4,'mauvais',2),(5,'mauvais',2),(6,'bon',3),(7,'bon',3),(8,'usé',4),(9,'neuf',4),(10,'neuf',4),(11,'bon',5),(12,'bon',5),(13,'usé',5),(14,'neuf',6),(15,'neuf',6),(16,'mauvais',6),(17,'usé',7),(18,'mauvais',7),(19,'bon',8),(20,'bon',9),(21,'neuf',9),(22,'usé',10),(23,'usé',10),(24,'bon',12),(25,'bon',12),(26,'bon',12),(27,'neuf',12),(28,'neuf',13),(29,'usé',13),(30,'usé',13),(31,'neuf',13),(32,'mauvais',14),(33,'neuf',14),(34,'bon',14),(35,'neuf',15),(36,'usé',15),(37,'usé',16),(38,'neuf',17),(39,'usé',17),(40,'bon',17),(41,'bon',18),(42,'neuf',18),(43,'mauvais',18),(44,'neuf',19),(45,'bon',19),(46,'usé',20),(47,'bon',20),(48,'neuf',20),(49,'mauvais',20),(50,'neuf',20),(51,'bon',21),(52,'usé',22),(53,'neuf',23),(54,'bon',23),(55,'bon',23),(56,'neuf',24),(57,'usé',24),(58,'neuf',25),(59,'bon',26);
/*!40000 ALTER TABLE `exemplaires` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `livres`
--

DROP TABLE IF EXISTS `livres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `livres` (
  `id_liv` bigint(20) NOT NULL AUTO_INCREMENT,
  `auteur` varchar(255) DEFAULT NULL,
  `editeur` varchar(255) DEFAULT NULL,
  `img_livre` varchar(600) DEFAULT NULL,
  `titre` varchar(255) DEFAULT NULL,
  `cat_id` bigint(20) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_liv`),
  KEY `FKm9tai3fyyuswc6v0qwixappbh` (`cat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `livres`
--

LOCK TABLES `livres` WRITE;
/*!40000 ALTER TABLE `livres` DISABLE KEYS */;
INSERT INTO `livres` VALUES (1,'Morris','Dupuis','http://boutique.lucky-luke.com/Couvertures/Small/1010/LL-21-DaisyTown-ART.jpg','Lucky Luke',1,'Mercede infaustos ignobiles et vitant adsueti eruditos et quoque mercede ignobiles lucris enim subditicios venditare prandiis quoque ut accedente quod mercede et ut et et infaustos subditicios et inserunt obscuros.'),(2,'Akira Toriyama','Glénat','https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcRCQxhhiY3oXmbDzWkf2O0yAqGrREkt04eY95zUMCd_dv-c1jmRYGyW7klbFOeC2hz9HfgXhJ97y1Rv_IwU8iVjKNxh58NAgiB_ijCfk6Q8rawdo7zPfC4tlw&usqp=CAchttps://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcRCQxhhiY3oXmbDzWkf2O0yAqGrREkt04eY95zUMCd_dv-c1jmRYGyW7klbFOeC2hz9HfgXhJ97y1Rv_IwU8iVjKNxh58NAgiB_ijCfk6Q8rawdo7zPfC4tlw&usqp=CAc','Dragon Ball',1,'Mercede infaustos ignobiles et vitant adsueti eruditos et quoque mercede ignobiles lucris enim subditicios venditare prandiis quoque ut accedente quod mercede et ut et et infaustos subditicios et inserunt obscuros.'),(3,'Hergé','Casterman','https://www.casterman.com/media/cache/couverture_large/casterman_img/Couvertures/9782203001022.jpg','Les aventures de Tintin',1,'Mercede infaustos ignobiles et vitant adsueti eruditos et quoque mercede ignobiles lucris enim subditicios venditare prandiis quoque ut accedente quod mercede et ut et et infaustos subditicios et inserunt obscuros.'),(4,'Meitantei Konan','Kana','https://static.fnac-static.com/multimedia/Images/FR/NR/c2/a4/01/107714/1540-1/tsp20181029115156/Detective-Conan.jpg','Détective Conan',1,'Tranquillis appellentur viribus rexit quam enim in non nomina indiderunt sunt nominibus et et urbes non institutores Graecis enim quae arbitrium lingua licet ex licet quae institutores in indiderunt ad.'),(5,'Masashi Kishimoto','Kana','https://static.fnac-static.com/multimedia/Images/FR/NR/c8/8c/13/1281224/1540-1/tsp20160606162704/Naruto.jpg','Naruto',1,'Tranquillis appellentur viribus rexit quam enim in non nomina indiderunt sunt nominibus et et urbes non institutores Graecis enim quae arbitrium lingua licet ex licet quae institutores in indiderunt ad.'),(6,'J.K. wling','Gallimard','https://static.fnac-static.com/multimedia/FR/Images_Produits/FR/fnac.com/Visual_Principal_340/0/7/2/9782070541270/tsp20121001192936/Harry-Potter-a-l-ecole-des-sorciers.jpg','Harry Potter à l\'école des sorciers',2,'Tranquillis appellentur viribus rexit quam enim in non nomina indiderunt sunt nominibus et et urbes non institutores Graecis enim quae arbitrium lingua licet ex licet quae institutores in indiderunt ad.'),(7,'Diane Le Feyer','Tourbillon','https://static.fnac-static.com/multimedia/Images/FR/NR/e1/b3/a3/10728417/1540-1/tsp20190508165139/Juraic-Mamie.jpg','Mortelle Adèle Tome 16 - Jurassic Mamie',2,'Usque porrigitur vero in post Persidis longum in cum Nicator porrigitur gentibus Euphratis ad efficaciae Nili Persidis modum efficaciae ripis longum ripis magnum magnum in Persidis gentibus gentibus ad in.'),(8,'Alison Smith','Flammarion','https://static.fnac-static.com/multimedia/Images/FR/NR/5a/d3/99/10081114/1540-1/tsp20190103100150/La-nouvelle-encyclopedie-de-la-couture.jpg','La nouvelle encyclopédie de la couture',3,'Usque porrigitur vero in post Persidis longum in cum Nicator porrigitur gentibus Euphratis ad efficaciae Nili Persidis modum efficaciae ripis longum ripis magnum magnum in Persidis gentibus gentibus ad in.'),(9,'Elisabeth Dumont','Eugen Ulmer Eds','https://static.fnac-static.com/multimedia/Images/FR/NR/1f/8c/29/2722847/1540-1/tsp20190417120213/Teindre-avec-les-plantes.jpg','Teindre avec les plantes',3,'Usque porrigitur vero in post Persidis longum in cum Nicator porrigitur gentibus Euphratis ad efficaciae Nili Persidis modum efficaciae ripis longum ripis magnum magnum in Persidis gentibus gentibus ad in.'),(10,'Lise Herzog','Mango','https://static.fnac-static.com/multimedia/Images/FR/NR/87/a1/87/8888711/1540-1/tsp20180627145030/Le-manuel-complet-du-deinateur.jpg','Le manuel complet du dessinateur',3,'Usque porrigitur vero in post Persidis longum in cum Nicator porrigitur gentibus Euphratis ad efficaciae Nili Persidis modum efficaciae ripis longum ripis magnum magnum in Persidis gentibus gentibus ad in.'),(12,'Cécile Guidot','Lattes','https://static.fnac-static.com/multimedia/Images/FR/NR/58/ef/a4/10809176/1540-1/tsp20190718154120/Les-actes.jpg','Les actes',4,'Non occiduntur vicensimo levius quarto et dilatata cruribus clades in locum vicensimo ambigerentur nomine cruribus cum cum non per suam Antiochia villam et constaret quaedam levius suam Antiochia Apollinares occiduntur.'),(13,'Laétitia Colombani','Grasset','https://static.fnac-static.com/multimedia/Images/FR/NR/61/35/a8/11023713/1540-1/tsp20190521164104/Les-victorieuses.jpg','Les victorieuses',4,'Usque porrigitur vero in post Persidis longum in cum Nicator porrigitur gentibus Euphratis ad efficaciae Nili Persidis modum efficaciae ripis longum ripis magnum magnum in Persidis gentibus gentibus ad in.'),(14,'E.L. James','Lattes','https://static.fnac-static.com/multimedia/Images/FR/NR/20/0b/a8/11012896/1540-1/tsp20190529152203/Monsieur.jpg','Monsieur',4,'Usque porrigitur vero in post Persidis longum in cum Nicator porrigitur gentibus Euphratis ad efficaciae Nili Persidis modum efficaciae ripis longum ripis magnum magnum in Persidis gentibus gentibus ad in.'),(15,'Thami Kabbaj','Eyrolles','https://static.fnac-static.com/multimedia/Images/FR/NR/e9/f1/a0/10547689/1540-1/tsp20190307154231/Agir.jpg','Agir',5,'Usque porrigitur vero in post Persidis longum in cum Nicator porrigitur gentibus Euphratis ad efficaciae Nili Persidis modum efficaciae ripis longum ripis magnum magnum in Persidis gentibus gentibus ad in.'),(16,'Philippe Chalmin','Bourin Francois Eds','https://static.fnac-static.com/multimedia/Images/FR/NR/bc/b2/a0/10531516/1540-1/tsp20190503173658/Une-breve-histoire-economique-d-un-long-XXe-siecle-1913-20.jpg','Une brève histoire économique d\'un long XXe siècle',5,'Usque porrigitur vero in post Persidis longum in cum Nicator porrigitur gentibus Euphratis ad efficaciae Nili Persidis modum efficaciae ripis longum ripis magnum magnum in Persidis gentibus gentibus ad in.'),(17,'Louie Stowell','Usborne','https://static.fnac-static.com/multimedia/Images/FR/NR/a3/43/86/8799139/1540-1/tsp20170525161331/J-apprends-a-programmer-avec-Python.jpg','J\'apprends à programmer avec Python',6,'Non occiduntur vicensimo levius quarto et dilatata cruribus clades in locum vicensimo ambigerentur nomine cruribus cum cum non per suam Antiochia villam et constaret quaedam levius suam Antiochia Apollinares occiduntur.'),(18,'Olivier Honder','Dunod','https://static.fnac-static.com/multimedia/Images/FR/NR/0d/4a/99/10045965/1540-1/tsp20181225081034/Tout-Javascript.jpg','Tout JavaScript',6,'Non occiduntur vicensimo levius quarto et dilatata cruribus clades in locum vicensimo ambigerentur nomine cruribus cum cum non per suam Antiochia villam et constaret quaedam levius suam Antiochia Apollinares occiduntur.'),(19,'Barbara Obermeier','First Interactive','https://static.fnac-static.com/multimedia/Images/FR/NR/01/d0/a1/10604545/1540-1/tsp20190109120143/Photoshop-Elements-2019-Pour-les-Nuls.jpg','Photoshop Elements 2019 Pour les Nuls',6,'Quarum tamen licet veteres lingua Assyria ad primigenia nominibus habitaculis tamen amittunt isdem multis nomina tamen multitudine enim quae firmas tamen isdem firmas conditoris hominum nominibus nomina sunt conditoris tamen.'),(20,'José Dordoigne','Eni Editions','https://static.fnac-static.com/multimedia/Images/FR/NR/eb/85/63/6522347/1540-1/tsp20170821155320/Reseaux-informatiques-Notions-fondamentales.jpg','Réseaux informatiques, Notions fondamentales',6,'Quarum tamen licet veteres lingua Assyria ad primigenia nominibus habitaculis tamen amittunt isdem multis nomina tamen multitudine enim quae firmas tamen isdem firmas conditoris hominum nominibus nomina sunt conditoris tamen.'),(21,'Eugène Ionesco','Gallimard','https://static.fnac-static.com/multimedia/Images/FR/NR/7a/bc/8d/9288826/1540-1/tsp20180502180212/Rhinoceros-et-deux-autres-nouvelles.jpg','Rhinocéros',7,'Quarum tamen licet veteres lingua Assyria ad primigenia nominibus habitaculis tamen amittunt isdem multis nomina tamen multitudine enim quae firmas tamen isdem firmas conditoris hominum nominibus nomina sunt conditoris tamen.'),(22,'Samuel Beckett','Minuit','https://static.fnac-static.com/multimedia/Images/FR/NR/ca/9f/a9/11116490/1540-1/tsp20190531113110/Oh-les-beaux-jours.jpg','Oh les beaux jours',7,'Quarum tamen licet veteres lingua Assyria ad primigenia nominibus habitaculis tamen amittunt isdem multis nomina tamen multitudine enim quae firmas tamen isdem firmas conditoris hominum nominibus nomina sunt conditoris tamen.'),(23,'Beaumarchais','Pocket','https://static.fnac-static.com/multimedia/Images/FR/NR/2e/7d/1b/1801518/1540-1/tsp20160823175617/Le-mariage-de-Figaro.jpg','Le mariage de Figaro',7,'Admissusque et sciens conspectum Caesar tuas quod dicto venit inquit eius ultimum leviter arcessitus ambage nulla sciens palatii nulla et ultimum praeceptum in et in subiratus saepius ut diem abscessit.'),(24,'Aldous Huxley','Pocket','https://static.fnac-static.com/multimedia/Images/FR/NR/d0/1d/15/1383888/1540-1/tsp20171005120541/Le-meilleur-des-mondes.jpg','Le meilleur des mondes',8,'Admissusque et sciens conspectum Caesar tuas quod dicto venit inquit eius ultimum leviter arcessitus ambage nulla sciens palatii nulla et ultimum praeceptum in et in subiratus saepius ut diem abscessit.'),(25,'Ray Bradbury','Gallimard','https://static.fnac-static.com/multimedia/Images/FR/NR/8a/4c/11/1133706/1540-1/tsp20170106102215/Fahrenheit-451.jpg','Fahrenheit 451',8,'Admissusque et sciens conspectum Caesar tuas quod dicto venit inquit eius ultimum leviter arcessitus ambage nulla sciens palatii nulla et ultimum praeceptum in et in subiratus saepius ut diem abscessit.'),(26,'Pierre Boule','Pocket','https://static.fnac-static.com/multimedia/Images/FR/NR/34/23/89/8987444/1540-1/tsp20170927120429/La-Planete-des-Singes.jpg','La planète des singes',8,'Admissusque et sciens conspectum Caesar tuas quod dicto venit inquit eius ultimum leviter arcessitus ambage nulla sciens palatii nulla et ultimum praeceptum in et in subiratus saepius ut diem abscessit.'),(27,'auteur','editeur',NULL,'test',12,'Admissusque et sciens conspectum Caesar tuas quod dicto venit inquit eius ultimum leviter arcessitus ambage nulla sciens palatii nulla et ultimum praeceptum in et in subiratus saepius ut diem abscessit.');
/*!40000 ALTER TABLE `livres` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-26 22:25:24
