-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: jspmzp0m6
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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='地址';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'2021-03-02 04:50:10',1,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2021-03-02 04:50:10',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2021-03-02 04:50:10',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2021-03-02 04:50:10',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2021-03-02 04:50:10',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2021-03-02 04:50:10',6,'宇宙银河系月球1号','月某','13823888886','是');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'shuiguoxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购物车表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/jspmzp0m6/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/jspmzp0m6/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/jspmzp0m6/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussshuiguoxinxi`
--

DROP TABLE IF EXISTS `discussshuiguoxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussshuiguoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='水果信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussshuiguoxinxi`
--

LOCK TABLES `discussshuiguoxinxi` WRITE;
/*!40000 ALTER TABLE `discussshuiguoxinxi` DISABLE KEYS */;
INSERT INTO `discussshuiguoxinxi` VALUES (121,'2021-03-02 04:50:10',1,1,'评论内容1','回复内容1'),(122,'2021-03-02 04:50:10',2,2,'评论内容2','回复内容2'),(123,'2021-03-02 04:50:10',3,3,'评论内容3','回复内容3'),(124,'2021-03-02 04:50:10',4,4,'评论内容4','回复内容4'),(125,'2021-03-02 04:50:10',5,5,'评论内容5','回复内容5'),(126,'2021-03-02 04:50:10',6,6,'评论内容6','回复内容6');
/*!40000 ALTER TABLE `discussshuiguoxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huiyuanfenxi`
--

DROP TABLE IF EXISTS `huiyuanfenxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huiyuanfenxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  `zhuzhi` varchar(200) DEFAULT NULL COMMENT '住址',
  `goumaishijian` datetime DEFAULT NULL COMMENT '购买时间',
  `goumaicishu` int(11) DEFAULT NULL COMMENT '购买次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='会员分析';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huiyuanfenxi`
--

LOCK TABLES `huiyuanfenxi` WRITE;
/*!40000 ALTER TABLE `huiyuanfenxi` DISABLE KEYS */;
INSERT INTO `huiyuanfenxi` VALUES (61,'2021-03-02 04:50:10','','姓名1','性别1','年龄1','电话1','住址1','2021-03-02 12:50:10',1),(62,'2021-03-02 04:50:10','账号2','姓名2','性别2','年龄2','电话2','住址2','2021-03-02 12:50:10',2),(63,'2021-03-02 04:50:10','账号3','姓名3','性别3','年龄3','电话3','住址3','2021-03-02 12:50:10',3),(64,'2021-03-02 04:50:10','账号4','姓名4','性别4','年龄4','电话4','住址4','2021-03-02 12:50:10',4),(65,'2021-03-02 04:50:10','账号5','姓名5','性别5','年龄5','电话5','住址5','2021-03-02 12:50:10',5),(66,'2021-03-02 04:50:10','账号6','姓名6','性别6','年龄6','电话6','住址6','2021-03-02 12:50:10',6);
/*!40000 ALTER TABLE `huiyuanfenxi` ENABLE KEYS */;
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
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='水果资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (111,'2021-03-02 04:50:10','标题1','简介1','http://localhost:8080/jspmzp0m6/upload/news_picture1.jpg','内容1'),(112,'2021-03-02 04:50:10','标题2','简介2','http://localhost:8080/jspmzp0m6/upload/news_picture2.jpg','内容2'),(113,'2021-03-02 04:50:10','标题3','简介3','http://localhost:8080/jspmzp0m6/upload/news_picture3.jpg','内容3'),(114,'2021-03-02 04:50:10','标题4','简介4','http://localhost:8080/jspmzp0m6/upload/news_picture4.jpg','内容4'),(115,'2021-03-02 04:50:10','标题5','简介5','http://localhost:8080/jspmzp0m6/upload/news_picture5.jpg','内容5'),(116,'2021-03-02 04:50:10','标题6','简介6','http://localhost:8080/jspmzp0m6/upload/news_picture6.jpg','内容6');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'shuiguoxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shuiguoleibie`
--

DROP TABLE IF EXISTS `shuiguoleibie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shuiguoleibie` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `leibie` varchar(200) DEFAULT NULL COMMENT '类别',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='水果类别';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shuiguoleibie`
--

LOCK TABLES `shuiguoleibie` WRITE;
/*!40000 ALTER TABLE `shuiguoleibie` DISABLE KEYS */;
INSERT INTO `shuiguoleibie` VALUES (31,'2021-03-02 04:50:10','类别1'),(32,'2021-03-02 04:50:10','类别2'),(33,'2021-03-02 04:50:10','类别3'),(34,'2021-03-02 04:50:10','类别4'),(35,'2021-03-02 04:50:10','类别5'),(36,'2021-03-02 04:50:10','类别6');
/*!40000 ALTER TABLE `shuiguoleibie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shuiguoxiaoshoufenxi`
--

DROP TABLE IF EXISTS `shuiguoxiaoshoufenxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shuiguoxiaoshoufenxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bianhao` varchar(200) NOT NULL COMMENT '编号',
  `mingcheng` varchar(200) DEFAULT NULL COMMENT '名称',
  `zhonglei` varchar(200) DEFAULT NULL COMMENT '种类',
  `xiaoshoudanwei` varchar(200) DEFAULT NULL COMMENT '销售单位',
  `xiaoshoushuliang` int(11) DEFAULT NULL COMMENT '销售数量',
  `jiage` int(11) DEFAULT NULL COMMENT '价格',
  `jinjia` int(11) DEFAULT NULL COMMENT '进价',
  `lirun` int(11) DEFAULT NULL COMMENT '利润',
  PRIMARY KEY (`id`),
  UNIQUE KEY `bianhao` (`bianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='水果销售分析';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shuiguoxiaoshoufenxi`
--

LOCK TABLES `shuiguoxiaoshoufenxi` WRITE;
/*!40000 ALTER TABLE `shuiguoxiaoshoufenxi` DISABLE KEYS */;
INSERT INTO `shuiguoxiaoshoufenxi` VALUES (51,'2021-03-02 04:50:10','编号1','草莓','','',1,1,1,1),(52,'2021-03-02 04:50:10','编号2','柠檬','','',2,2,2,2),(53,'2021-03-02 04:50:10','编号3','西瓜','','',3,3,3,3),(54,'2021-03-02 04:50:10','编号6','橙子','','',4,4,4,4);
/*!40000 ALTER TABLE `shuiguoxiaoshoufenxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shuiguoxinxi`
--

DROP TABLE IF EXISTS `shuiguoxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shuiguoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bianhao` varchar(200) NOT NULL COMMENT '编号',
  `mingcheng` varchar(200) NOT NULL COMMENT '名称',
  `zhonglei` varchar(200) DEFAULT NULL COMMENT '种类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `xiaoshoudanwei` varchar(200) DEFAULT NULL COMMENT '销售单位',
  `xiangqing` longtext COMMENT '详情',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`),
  UNIQUE KEY `bianhao` (`bianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='水果信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shuiguoxinxi`
--

LOCK TABLES `shuiguoxinxi` WRITE;
/*!40000 ALTER TABLE `shuiguoxinxi` DISABLE KEYS */;
INSERT INTO `shuiguoxinxi` VALUES (21,'2021-03-02 04:50:10','编号1','西瓜','','http://localhost:8080/jspmzp0m6/upload/shuiguoxinxi_tupian1.jpg','','详情1\r\n',1,1,99.9),(22,'2021-03-02 04:50:10','编号2','柠檬','','http://localhost:8080/jspmzp0m6/upload/shuiguoxinxi_tupian2.jpg','','详情2\r\n',2,2,99.9),(23,'2021-03-02 04:50:10','编号3','草莓','','http://localhost:8080/jspmzp0m6/upload/shuiguoxinxi_tupian3.jpg','','详情3\r\n',3,3,99.9),(26,'2021-03-02 04:50:10','编号6','橙子','','http://localhost:8080/jspmzp0m6/upload/shuiguoxinxi_tupian6.jpg','','详情6\r\n',6,6,99.9);
/*!40000 ALTER TABLE `shuiguoxinxi` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
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
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','z81ql0r1dl3gk5blqjqvxav81ifwwfxi','2021-03-02 04:50:38','2021-03-02 05:50:39'),(2,1,'abo','users','管理员','ol24yyy0jrl1zh5pmku9vsuvmmvzog5u','2021-03-02 04:50:38','2021-03-02 05:50:39');
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
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-03-02 04:50:10');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xiaoshoudanwei`
--

DROP TABLE IF EXISTS `xiaoshoudanwei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xiaoshoudanwei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `danwei` varchar(200) DEFAULT NULL COMMENT '单位',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='销售单位';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xiaoshoudanwei`
--

LOCK TABLES `xiaoshoudanwei` WRITE;
/*!40000 ALTER TABLE `xiaoshoudanwei` DISABLE KEYS */;
INSERT INTO `xiaoshoudanwei` VALUES (41,'2021-03-02 04:50:10','单位1'),(42,'2021-03-02 04:50:10','单位2'),(43,'2021-03-02 04:50:10','单位3'),(44,'2021-03-02 04:50:10','单位4'),(45,'2021-03-02 04:50:10','单位5'),(46,'2021-03-02 04:50:10','单位6');
/*!40000 ALTER TABLE `xiaoshoudanwei` ENABLE KEYS */;
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
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhuzhi` varchar(200) DEFAULT NULL COMMENT '住址',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-03-02 04:50:10','用户1','莉莉','123456','女',1,'89819991','773890001@qq.com','住址1','http://localhost:8080/jspmzp0m6/upload/yonghu_touxiang1.jpg',100),(12,'2021-03-02 04:50:10','用户2','小强','123456','男',2,'89819992','773890002@qq.com','住址2','http://localhost:8080/jspmzp0m6/upload/yonghu_touxiang2.jpg',100),(13,'2021-03-02 04:50:10','用户3','诗诗','123456','女',12,'12345678988','773890003@qq.com','住址3','http://localhost:8080/jspmzp0m6/upload/yonghu_touxiang3.jpg',100),(14,'2021-03-02 04:50:10','用户4','十一','123456','男',24,'819994','773890004@qq.com','住址4','http://localhost:8080/jspmzp0m6/upload/yonghu_touxiang4.jpg',100);
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

-- Dump completed on 2021-03-03 15:10:38
