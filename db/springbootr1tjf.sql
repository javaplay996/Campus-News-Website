-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springbootr1tjf
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/springbootr1tjf/upload/1617154297722.jpg'),(2,'picture2','http://localhost:8080/springbootr1tjf/upload/1617154305423.jpg'),(3,'picture3','http://localhost:8080/springbootr1tjf/upload/1617154312346.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussxiaoyuanxinwen`
--

DROP TABLE IF EXISTS `discussxiaoyuanxinwen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussxiaoyuanxinwen` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617154546293 DEFAULT CHARSET=utf8 COMMENT='校园新闻评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussxiaoyuanxinwen`
--

LOCK TABLES `discussxiaoyuanxinwen` WRITE;
/*!40000 ALTER TABLE `discussxiaoyuanxinwen` DISABLE KEYS */;
INSERT INTO `discussxiaoyuanxinwen` VALUES (71,'2021-03-31 01:08:17',1,1,'用户名1','评论内容1','回复内容1'),(72,'2021-03-31 01:08:17',2,2,'用户名2','评论内容2','回复内容2'),(73,'2021-03-31 01:08:17',3,3,'用户名3','评论内容3','回复内容3'),(74,'2021-03-31 01:08:17',4,4,'用户名4','评论内容4','回复内容4'),(75,'2021-03-31 01:08:17',5,5,'用户名5','评论内容5','回复内容5'),(76,'2021-03-31 01:08:17',6,6,'用户名6','评论内容6','回复内容6'),(1617154546292,'2021-03-31 01:35:45',1617154283641,1617154332727,'1','作为一名即将毕业的学生，能够在毕业前见证母校建校百年的历史性时刻，何其荣幸！','是的');
/*!40000 ALTER TABLE `discussxiaoyuanxinwen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617154586645 DEFAULT CHARSET=utf8 COMMENT='论坛交流';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (41,'2021-03-31 01:08:17','帖子标题1','帖子内容1',1,1,'用户名1','开放'),(42,'2021-03-31 01:08:17','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(43,'2021-03-31 01:08:17','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(44,'2021-03-31 01:08:17','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(45,'2021-03-31 01:08:17','帖子标题5','帖子内容5',5,5,'用户名5','开放'),(46,'2021-03-31 01:08:17','帖子标题6','帖子内容6',6,6,'用户名6','开放'),(1617154577611,'2021-03-31 01:36:17','百年校庆','<p>百年校庆之日，正是花团锦簇之时，每一盏花蕾，都在春风中奏着庆祝的乐章！</p>\n<p>或许你已经注意到，最近学校里多了许多条幅和立牌，这些承载着厦大深厚历史，彰显着厦大对未来之决心的字句，每次读来 都令人倍觉振奋！</p>\n<p>来看看 厦大与各地的故事，来找找 你的家乡在哪里吧，校园中还增设了留言墙，可在母校百年生日之际，写下你对厦大的怀恋与祝愿，岁岁光阴 代代延续！</p>\n<p>终于铸就了最好的厦园，我们也成了最好的自己</p>',0,1617154332727,'1','开放');
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617154615596 DEFAULT CHARSET=utf8 COMMENT='留言板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (61,'2021-03-31 01:08:17',1,'用户名1','留言内容1','回复内容1'),(62,'2021-03-31 01:08:17',2,'用户名2','留言内容2','回复内容2'),(63,'2021-03-31 01:08:17',3,'用户名3','留言内容3','回复内容3'),(64,'2021-03-31 01:08:17',4,'用户名4','留言内容4','回复内容4'),(65,'2021-03-31 01:08:17',5,'用户名5','留言内容5','回复内容5'),(66,'2021-03-31 01:08:17',6,'用户名6','留言内容6','回复内容6'),(1617154615595,'2021-03-31 01:36:55',1617154332727,'1','REET','SRE ');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617154371453 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1617154371452,'2021-03-31 01:32:50',1617154332727,1617154283641,'xiaoyuanxinwen','百年校庆','http://localhost:8080/springbootr1tjf/upload/1617154271446.webp');
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','g18ia9fsljnhtpwqygpmas0ny42jxtal','2021-03-31 01:16:47','2021-03-31 02:37:05'),(2,11,'用户1','yonghu','用户','85bt5g4z530mvph77wsm7jv8c9pgxrl3','2021-03-31 01:27:53','2021-03-31 02:29:43'),(3,1617154332727,'1','yonghu','用户','cx58w98o05hi2b7vujrxiv3y2mvpvrbb','2021-03-31 01:32:18','2021-03-31 02:38:26');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-03-31 01:08:17');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xiaoyuanxinwen`
--

DROP TABLE IF EXISTS `xiaoyuanxinwen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xiaoyuanxinwen` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `leixing` varchar(200) NOT NULL COMMENT '类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `neirong` longtext COMMENT '内容',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617154283642 DEFAULT CHARSET=utf8 COMMENT='校园新闻';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xiaoyuanxinwen`
--

LOCK TABLES `xiaoyuanxinwen` WRITE;
/*!40000 ALTER TABLE `xiaoyuanxinwen` DISABLE KEYS */;
INSERT INTO `xiaoyuanxinwen` VALUES (31,'2021-03-31 01:08:17','标题1','类型1','http://localhost:8080/springbootr1tjf/upload/xiaoyuanxinwen_tupian1.jpg','内容1','2021-03-31'),(32,'2021-03-31 01:08:17','标题2','类型2','http://localhost:8080/springbootr1tjf/upload/xiaoyuanxinwen_tupian2.jpg','内容2','2021-03-31'),(33,'2021-03-31 01:08:17','标题3','类型3','http://localhost:8080/springbootr1tjf/upload/xiaoyuanxinwen_tupian3.jpg','内容3','2021-03-31'),(34,'2021-03-31 01:08:17','标题4','类型4','http://localhost:8080/springbootr1tjf/upload/xiaoyuanxinwen_tupian4.jpg','内容4','2021-03-31'),(36,'2021-03-31 01:08:17','标题6','类型6','http://localhost:8080/springbootr1tjf/upload/xiaoyuanxinwen_tupian6.jpg','内容6','2021-03-31'),(1617154283641,'2021-03-31 01:31:23','百年校庆','活动类','http://localhost:8080/springbootr1tjf/upload/1617154271446.webp','<p>百年校庆之日，正是花团锦簇之时，每一盏花蕾，都在春风中奏着庆祝的乐章！</p><p>或许你已经注意到，最近学校里多了许多条幅和立牌，这些承载着厦大深厚历史，彰显着厦大对未来之决心的字句，每次读来 都令人倍觉振奋！</p><p>来看看 厦大与各地的故事，来找找 你的家乡在哪里吧，校园中还增设了留言墙，可在母校百年生日之际，写下你对厦大的怀恋与祝愿，岁岁光阴 代代延续！</p><p>终于铸就了最好的厦园，我们也成了最好的自己</p><p><br></p><p><img src=\"http://localhost:8080/springbootr1tjf/upload/1617154280937.webp\"></p>','2021-03-31');
/*!40000 ALTER TABLE `xiaoyuanxinwen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xinwenleixing`
--

DROP TABLE IF EXISTS `xinwenleixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xinwenleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `leixing` varchar(200) NOT NULL COMMENT '类型',
  PRIMARY KEY (`id`),
  UNIQUE KEY `leixing` (`leixing`)
) ENGINE=InnoDB AUTO_INCREMENT=1617154259533 DEFAULT CHARSET=utf8 COMMENT='新闻类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xinwenleixing`
--

LOCK TABLES `xinwenleixing` WRITE;
/*!40000 ALTER TABLE `xinwenleixing` DISABLE KEYS */;
INSERT INTO `xinwenleixing` VALUES (21,'2021-03-31 01:08:17','类型1'),(22,'2021-03-31 01:08:17','类型2'),(23,'2021-03-31 01:08:17','类型3'),(24,'2021-03-31 01:08:17','类型4'),(25,'2021-03-31 01:08:17','类型5'),(26,'2021-03-31 01:08:17','类型6'),(1617154246697,'2021-03-31 01:30:45','体育竞赛'),(1617154253332,'2021-03-31 01:30:52','表彰类'),(1617154259532,'2021-03-31 01:30:58','活动类');
/*!40000 ALTER TABLE `xinwenleixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1617154332728 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-03-31 01:08:17','用户1','123456','姓名1','http://localhost:8080/springbootr1tjf/upload/yonghu_touxiang1.jpg','男','13823888881'),(12,'2021-03-31 01:08:17','用户2','123456','姓名2','http://localhost:8080/springbootr1tjf/upload/yonghu_touxiang2.jpg','男','13823888882'),(13,'2021-03-31 01:08:17','用户3','123456','姓名3','http://localhost:8080/springbootr1tjf/upload/yonghu_touxiang3.jpg','男','13823888883'),(14,'2021-03-31 01:08:17','用户4','123456','姓名4','http://localhost:8080/springbootr1tjf/upload/yonghu_touxiang4.jpg','男','13823888884'),(15,'2021-03-31 01:08:17','用户5','123456','姓名5','http://localhost:8080/springbootr1tjf/upload/yonghu_touxiang5.jpg','男','13823888885'),(16,'2021-03-31 01:08:17','用户6','123456','姓名6','http://localhost:8080/springbootr1tjf/upload/yonghu_touxiang6.jpg','男','13823888886'),(1617154332727,'2021-03-31 01:32:12','1','1','陈一','http://localhost:8080/springbootr1tjf/upload/1617154348275.jpg','女','12312312312');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-01 10:07:58
