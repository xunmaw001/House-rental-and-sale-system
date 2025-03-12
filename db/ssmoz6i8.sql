-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssmoz6i8
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
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611136360676 DEFAULT CHARSET=utf8 COMMENT='在线客服';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (71,'2021-01-20 09:38:32',1,1,'提问1','回复1',1),(72,'2021-01-20 09:38:32',2,2,'提问2','回复2',2),(73,'2021-01-20 09:38:32',3,3,'提问3','回复3',3),(74,'2021-01-20 09:38:32',4,4,'提问4','回复4',4),(75,'2021-01-20 09:38:32',5,5,'提问5','回复5',5),(76,'2021-01-20 09:38:32',6,6,'提问6','回复6',6),(1611136148864,'2021-01-20 09:49:08',1611135989080,NULL,'你好',NULL,0),(1611136360675,'2021-01-20 09:52:40',1611135989080,1,NULL,'你好',NULL);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chuzudingdan`
--

DROP TABLE IF EXISTS `chuzudingdan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chuzudingdan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangwubianhao` varchar(200) DEFAULT NULL COMMENT '房屋编号',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `fangxing` varchar(200) DEFAULT NULL COMMENT '房型',
  `chuzudingjin` varchar(200) DEFAULT NULL COMMENT '出租定金',
  `chuzujiage` varchar(200) DEFAULT NULL COMMENT '出租价格',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611136054221 DEFAULT CHARSET=utf8 COMMENT='出租订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chuzudingdan`
--

LOCK TABLES `chuzudingdan` WRITE;
/*!40000 ALTER TABLE `chuzudingdan` DISABLE KEYS */;
INSERT INTO `chuzudingdan` VALUES (41,'2021-01-20 09:38:32','房屋编号1','标题1','房型1','出租定金1','出租价格1','用户名1','姓名1','手机1','备注1','否','','未支付'),(42,'2021-01-20 09:38:32','房屋编号2','标题2','房型2','出租定金2','出租价格2','用户名2','姓名2','手机2','备注2','否','','未支付'),(43,'2021-01-20 09:38:32','房屋编号3','标题3','房型3','出租定金3','出租价格3','用户名3','姓名3','手机3','备注3','否','','未支付'),(44,'2021-01-20 09:38:32','房屋编号4','标题4','房型4','出租定金4','出租价格4','用户名4','姓名4','手机4','备注4','否','','未支付'),(45,'2021-01-20 09:38:32','房屋编号5','标题5','房型5','出租定金5','出租价格5','用户名5','姓名5','手机5','备注5','否','','未支付'),(46,'2021-01-20 09:38:32','房屋编号6','标题6','房型6','出租定金6','出租价格6','用户名6','姓名6','手机6','备注6','否','','未支付'),(1611136054220,'2021-01-20 09:47:33','房屋编号1','标题1','房型1','100','2000','123','手打','13455667788','讽德诵功范德萨割发代首','是','发过火发过的很反感很反感','已支付');
/*!40000 ALTER TABLE `chuzudingdan` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/ssmoz6i8/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssmoz6i8/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssmoz6i8/upload/picture3.jpg'),(6,'homepage',NULL),(7,'首页轮播图上传的低昂','http://localhost:8080/ssmoz6i8/upload/1611136391389.png');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussfangwuzushou`
--

DROP TABLE IF EXISTS `discussfangwuzushou`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussfangwuzushou` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611136036666 DEFAULT CHARSET=utf8 COMMENT='房屋租售评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussfangwuzushou`
--

LOCK TABLES `discussfangwuzushou` WRITE;
/*!40000 ALTER TABLE `discussfangwuzushou` DISABLE KEYS */;
INSERT INTO `discussfangwuzushou` VALUES (111,'2021-01-20 09:38:32',1,1,'评论内容1','回复内容1'),(112,'2021-01-20 09:38:32',2,2,'评论内容2','回复内容2'),(113,'2021-01-20 09:38:32',3,3,'评论内容3','回复内容3'),(114,'2021-01-20 09:38:32',4,4,'评论内容4','回复内容4'),(115,'2021-01-20 09:38:32',5,5,'评论内容5','回复内容5'),(116,'2021-01-20 09:38:32',6,6,'评论内容6','回复内容6'),(1611136036665,'2021-01-20 09:47:15',31,1611135989080,'fds让他羊肉汤用人土土邸割发代首',NULL);
/*!40000 ALTER TABLE `discussfangwuzushou` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fangwuzushou`
--

DROP TABLE IF EXISTS `fangwuzushou`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fangwuzushou` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangwubianhao` varchar(200) DEFAULT NULL COMMENT '房屋编号',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `fangxing` varchar(200) DEFAULT NULL COMMENT '房型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `chuzudingjin` varchar(200) DEFAULT NULL COMMENT '出租定金',
  `chuzujiage` varchar(200) DEFAULT NULL COMMENT '出租价格',
  `chushoujiage` varchar(200) DEFAULT NULL COMMENT '出售价格',
  `chushoudingjin` varchar(200) DEFAULT NULL COMMENT '出售定金',
  `fangwusheshi` longtext COMMENT '房屋设施',
  `fangwujieshao` longtext COMMENT '房屋介绍',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611136272127 DEFAULT CHARSET=utf8 COMMENT='房屋租售';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fangwuzushou`
--

LOCK TABLES `fangwuzushou` WRITE;
/*!40000 ALTER TABLE `fangwuzushou` DISABLE KEYS */;
INSERT INTO `fangwuzushou` VALUES (31,'2021-01-20 09:38:32','房屋编号1','标题1','房型1','http://localhost:8080/ssmoz6i8/upload/1611135890372.jpg','地址1','100','2000','18800000','10000','房屋设施1电风扇广东佛山割发代首广泛地范德萨很反感花港饭店花费更多','<p>房屋介绍1电风扇广东佛山割发代首广东佛山广东佛山gdfs电风扇感到十分广东佛山广东佛山</p><p><br></p><p>第三方广东佛山广东佛山广东佛山</p><p>第三方广东佛山广东佛山</p><p><img src=\"http://localhost:8080/ssmoz6i8/upload/1611135883945.jpg\"></p>',2,2,'2021-01-20 17:47:48'),(32,'2021-01-20 09:38:32','房屋编号2','标题2','房型2','http://localhost:8080/ssmoz6i8/upload/fangwuzushou_tupian2.jpg','地址2','出租定金2','出租价格2','出售价格2','出售定金2','房屋设施2','房屋介绍2',2,2,'2021-01-20 17:46:50'),(33,'2021-01-20 09:38:32','房屋编号3','标题3','房型3','http://localhost:8080/ssmoz6i8/upload/fangwuzushou_tupian3.jpg','地址3','出租定金3','出租价格3','出售价格3','出售定金3','房屋设施3','房屋介绍3',3,3,'2021-01-20 17:38:32'),(34,'2021-01-20 09:38:32','房屋编号4','标题4','房型4','http://localhost:8080/ssmoz6i8/upload/fangwuzushou_tupian4.jpg','地址4','出租定金4','出租价格4','出售价格4','出售定金4','房屋设施4','房屋介绍4',4,4,'2021-01-20 17:38:32'),(35,'2021-01-20 09:38:32','房屋编号5','标题5','房型5','http://localhost:8080/ssmoz6i8/upload/fangwuzushou_tupian5.jpg','地址5','出租定金5','出租价格5','出售价格5','出售定金5','房屋设施5','房屋介绍5',5,5,'2021-01-20 17:38:32'),(36,'2021-01-20 09:38:32','房屋编号6','标题6','房型6','http://localhost:8080/ssmoz6i8/upload/fangwuzushou_tupian6.jpg','地址6','出租定金6','出租价格6','出售价格6','出售定金6','房屋设施6','房屋介绍6',6,6,'2021-01-20 17:38:32'),(1611136272126,'2021-01-20 09:51:11','43545','范德萨给对方广泛地广泛地广东佛山广东佛山','单人公寓','http://localhost:8080/ssmoz6i8/upload/1611136242771.jpg','阿萨德发广泛地发的花港饭店h','120','1200','50000','5000','发电工范德萨广泛地给对方广东佛山广东佛山','<p>个发第三个电风扇广东佛山感到十分感到十分</p><p>电风扇广东佛山感到十分</p><p><img src=\"http://localhost:8080/ssmoz6i8/upload/1611136270656.jpg\"></p>',0,0,NULL);
/*!40000 ALTER TABLE `fangwuzushou` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fangxingxinxi`
--

DROP TABLE IF EXISTS `fangxingxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fangxingxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangxing` varchar(200) DEFAULT NULL COMMENT '房型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611136223244 DEFAULT CHARSET=utf8 COMMENT='房型信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fangxingxinxi`
--

LOCK TABLES `fangxingxinxi` WRITE;
/*!40000 ALTER TABLE `fangxingxinxi` DISABLE KEYS */;
INSERT INTO `fangxingxinxi` VALUES (21,'2021-01-20 09:38:32','三房一厅'),(22,'2021-01-20 09:38:32','三房两厅'),(23,'2021-01-20 09:38:32','四房两厅'),(24,'2021-01-20 09:38:32','两房一厅'),(1611136223243,'2021-01-20 09:50:22','单人公寓');
/*!40000 ALTER TABLE `fangxingxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goumaidingdan`
--

DROP TABLE IF EXISTS `goumaidingdan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goumaidingdan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangwubianhao` varchar(200) DEFAULT NULL COMMENT '房屋编号',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `fangxing` varchar(200) DEFAULT NULL COMMENT '房型',
  `chushoudingjin` varchar(200) DEFAULT NULL COMMENT '出售定金',
  `chushoujiage` varchar(200) DEFAULT NULL COMMENT '出售价格',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611136065041 DEFAULT CHARSET=utf8 COMMENT='购买订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goumaidingdan`
--

LOCK TABLES `goumaidingdan` WRITE;
/*!40000 ALTER TABLE `goumaidingdan` DISABLE KEYS */;
INSERT INTO `goumaidingdan` VALUES (51,'2021-01-20 09:38:32','房屋编号1','标题1','房型1','出售定金1','出售价格1','用户名1','姓名1','手机1','备注1','否','','未支付'),(52,'2021-01-20 09:38:32','房屋编号2','标题2','房型2','出售定金2','出售价格2','用户名2','姓名2','手机2','备注2','否','','未支付'),(53,'2021-01-20 09:38:32','房屋编号3','标题3','房型3','出售定金3','出售价格3','用户名3','姓名3','手机3','备注3','否','','未支付'),(54,'2021-01-20 09:38:32','房屋编号4','标题4','房型4','出售定金4','出售价格4','用户名4','姓名4','手机4','备注4','否','','未支付'),(55,'2021-01-20 09:38:32','房屋编号5','标题5','房型5','出售定金5','出售价格5','用户名5','姓名5','手机5','备注5','否','','未支付'),(56,'2021-01-20 09:38:32','房屋编号6','标题6','房型6','出售定金6','出售价格6','用户名6','姓名6','手机6','备注6','否','','未支付'),(1611136065040,'2021-01-20 09:47:44','房屋编号1','标题1','房型1','10000','18800000','123','手打','13455667788','森岛帆高电风扇广泛地','是','发过火发给花费更多','已支付');
/*!40000 ALTER TABLE `goumaidingdan` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=1611136093753 DEFAULT CHARSET=utf8 COMMENT='留言板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (101,'2021-01-20 09:38:32',1,'用户名1','留言内容1','回复内容1'),(102,'2021-01-20 09:38:32',2,'用户名2','留言内容2','回复内容2'),(103,'2021-01-20 09:38:32',3,'用户名3','留言内容3','回复内容3'),(104,'2021-01-20 09:38:32',4,'用户名4','留言内容4','回复内容4'),(105,'2021-01-20 09:38:32',5,'用户名5','留言内容5','回复内容5'),(106,'2021-01-20 09:38:32',6,'用户名6','留言内容6','回复内容6'),(1611136093752,'2021-01-20 09:48:13',1611135989080,'123','富商大贾电风扇割发代首广东佛山的双方各','地方广东分公司单方事故发的是');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611136409030 DEFAULT CHARSET=utf8 COMMENT='系统公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (91,'2021-01-20 09:38:32','标题1士大夫都是割发代首广东佛山广东佛山广东佛山','http://localhost:8080/ssmoz6i8/upload/news_picture1.jpg','<p>内容1讽德诵功电风扇广东佛山广东佛山</p><p>第三方给对方广东佛山割发代首</p><p>森岛帆高电风扇广东佛山感到十分</p>'),(92,'2021-01-20 09:38:32','标题2','http://localhost:8080/ssmoz6i8/upload/news_picture2.jpg','内容2'),(93,'2021-01-20 09:38:32','标题3','http://localhost:8080/ssmoz6i8/upload/news_picture3.jpg','内容3'),(94,'2021-01-20 09:38:32','标题4','http://localhost:8080/ssmoz6i8/upload/news_picture4.jpg','内容4'),(95,'2021-01-20 09:38:32','标题5','http://localhost:8080/ssmoz6i8/upload/news_picture5.jpg','内容5'),(96,'2021-01-20 09:38:32','标题6','http://localhost:8080/ssmoz6i8/upload/news_picture6.jpg','内容6'),(1611136409029,'2021-01-20 09:53:28','讽德诵功电风扇广东佛山广东佛山','http://localhost:8080/ssmoz6i8/upload/1611136406289.jpg','<p>发给士大夫感到十分广东佛山广东佛山</p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=1611136041179 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1611136038858,'2021-01-20 09:47:18',1611135989080,31,'fangwuzushou','标题1','http://localhost:8080/ssmoz6i8/upload/1611135890372.jpg'),(1611136041178,'2021-01-20 09:47:21',1611135989080,31,'fangwuzushou','标题1','http://localhost:8080/ssmoz6i8/upload/1611135890372.jpg');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','z7l3v3tuno3fu1dhbo9cdpvbtk722kgs','2021-01-20 09:41:40','2021-01-20 10:49:53'),(2,1611135989080,'123','yonghu','用户','nc68yn1almhpuvf1gcr8cok2l64zxolz','2021-01-20 09:46:36','2021-01-20 10:53:37');
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
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-01-20 09:38:32');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
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
  `mima` varchar(200) DEFAULT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1611135989081 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-01-20 09:38:32','用户1','123456','姓名1','年龄1','男','13823888881','773890001@qq.com','440300199101010001'),(12,'2021-01-20 09:38:32','用户2','123456','姓名2','年龄2','男','13823888882','773890002@qq.com','440300199202020002'),(13,'2021-01-20 09:38:32','用户3','123456','姓名3','年龄3','男','13823888883','773890003@qq.com','440300199303030003'),(14,'2021-01-20 09:38:32','用户4','123456','姓名4','年龄4','男','13823888884','773890004@qq.com','440300199404040004'),(15,'2021-01-20 09:38:32','用户5','123456','姓名5','年龄5','男','13823888885','773890005@qq.com','440300199505050005'),(16,'2021-01-20 09:38:32','用户6','123456','姓名6','年龄6','男','13823888886','773890006@qq.com','440300199606060006'),(1611135989080,'2021-01-20 09:46:29','123','123','手打','23','男','13455667788','345435@qq.com','223344556677889900');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zushouhetong`
--

DROP TABLE IF EXISTS `zushouhetong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zushouhetong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `zushouleixing` varchar(200) DEFAULT NULL COMMENT '租售类型',
  `hetongmingcheng` varchar(200) DEFAULT NULL COMMENT '合同名称',
  `hetong` varchar(200) DEFAULT NULL COMMENT '合同',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611136333423 DEFAULT CHARSET=utf8 COMMENT='租售合同';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zushouhetong`
--

LOCK TABLES `zushouhetong` WRITE;
/*!40000 ALTER TABLE `zushouhetong` DISABLE KEYS */;
INSERT INTO `zushouhetong` VALUES (61,'2021-01-20 09:38:32','用户名1','姓名1','手机1','出租','合同名称1',''),(62,'2021-01-20 09:38:32','用户名2','姓名2','手机2','出租','合同名称2',''),(63,'2021-01-20 09:38:32','用户名3','姓名3','手机3','出租','合同名称3',''),(64,'2021-01-20 09:38:32','用户名4','姓名4','手机4','出租','合同名称4',''),(65,'2021-01-20 09:38:32','用户名5','姓名5','手机5','出租','合同名称5',''),(66,'2021-01-20 09:38:32','用户名6','姓名6','手机6','出租','合同名称6',''),(1611136333422,'2021-01-20 09:52:13','123','手打','13455667788','出租','发电工花费更多','http://localhost:8080/ssmoz6i8/upload/1611136331040.pptx');
/*!40000 ALTER TABLE `zushouhetong` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-21  9:31:07
