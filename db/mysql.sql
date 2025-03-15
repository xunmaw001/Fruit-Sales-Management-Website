DROP DATABASE IF EXISTS jspmzp0m6;

CREATE DATABASE jspmzp0m6 default character set utf8mb4 collate utf8mb4_general_ci;

USE jspmzp0m6;

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`zhanghao` varchar(200) NOT NULL UNIQUE   COMMENT '账号',
	`xingming` varchar(200) NOT NULL   COMMENT '姓名',
	`mima` varchar(200) NOT NULL   COMMENT '密码',
	`xingbie` varchar(200)    COMMENT '性别',
	`nianling` int    COMMENT '年龄',
	`dianhua` varchar(200)    COMMENT '电话',
	`youxiang` varchar(200)    COMMENT '邮箱',
	`zhuzhi` varchar(200)    COMMENT '住址',
	`touxiang` varchar(200)    COMMENT '头像',
	`money` float   default '0' COMMENT '余额',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户';

INSERT INTO yonghu(id,zhanghao,xingming,mima,xingbie,nianling,dianhua,youxiang,zhuzhi,touxiang,money) VALUES(11,'用户1','姓名1','123456','男',1,'020-89819991','773890001@qq.com','住址1','http://localhost:8080/jspmzp0m6/upload/yonghu_touxiang1.jpg',100);
INSERT INTO yonghu(id,zhanghao,xingming,mima,xingbie,nianling,dianhua,youxiang,zhuzhi,touxiang,money) VALUES(12,'用户2','姓名2','123456','男',2,'020-89819992','773890002@qq.com','住址2','http://localhost:8080/jspmzp0m6/upload/yonghu_touxiang2.jpg',100);
INSERT INTO yonghu(id,zhanghao,xingming,mima,xingbie,nianling,dianhua,youxiang,zhuzhi,touxiang,money) VALUES(13,'用户3','姓名3','123456','男',3,'020-89819993','773890003@qq.com','住址3','http://localhost:8080/jspmzp0m6/upload/yonghu_touxiang3.jpg',100);
INSERT INTO yonghu(id,zhanghao,xingming,mima,xingbie,nianling,dianhua,youxiang,zhuzhi,touxiang,money) VALUES(14,'用户4','姓名4','123456','男',4,'020-89819994','773890004@qq.com','住址4','http://localhost:8080/jspmzp0m6/upload/yonghu_touxiang4.jpg',100);
INSERT INTO yonghu(id,zhanghao,xingming,mima,xingbie,nianling,dianhua,youxiang,zhuzhi,touxiang,money) VALUES(15,'用户5','姓名5','123456','男',5,'020-89819995','773890005@qq.com','住址5','http://localhost:8080/jspmzp0m6/upload/yonghu_touxiang5.jpg',100);
INSERT INTO yonghu(id,zhanghao,xingming,mima,xingbie,nianling,dianhua,youxiang,zhuzhi,touxiang,money) VALUES(16,'用户6','姓名6','123456','男',6,'020-89819996','773890006@qq.com','住址6','http://localhost:8080/jspmzp0m6/upload/yonghu_touxiang6.jpg',100);

DROP TABLE IF EXISTS `shuiguoxinxi`;

CREATE TABLE `shuiguoxinxi` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`bianhao` varchar(200) NOT NULL UNIQUE   COMMENT '编号',
	`mingcheng` varchar(200) NOT NULL   COMMENT '名称',
	`zhonglei` varchar(200)    COMMENT '种类',
	`tupian` varchar(200)    COMMENT '图片',
	`xiaoshoudanwei` varchar(200)    COMMENT '销售单位',
	`xiangqing` longtext    COMMENT '详情',
	`thumbsupnum` int   default '0' COMMENT '赞',
	`crazilynum` int   default '0' COMMENT '踩',
	`price` float NOT NULL   COMMENT '价格',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='水果信息';

INSERT INTO shuiguoxinxi(id,bianhao,mingcheng,zhonglei,tupian,xiaoshoudanwei,xiangqing,thumbsupnum,crazilynum,price) VALUES(21,'编号1','名称1','种类1','http://localhost:8080/jspmzp0m6/upload/shuiguoxinxi_tupian1.jpg','销售单位1','详情1',1,1,99.9);
INSERT INTO shuiguoxinxi(id,bianhao,mingcheng,zhonglei,tupian,xiaoshoudanwei,xiangqing,thumbsupnum,crazilynum,price) VALUES(22,'编号2','名称2','种类2','http://localhost:8080/jspmzp0m6/upload/shuiguoxinxi_tupian2.jpg','销售单位2','详情2',2,2,99.9);
INSERT INTO shuiguoxinxi(id,bianhao,mingcheng,zhonglei,tupian,xiaoshoudanwei,xiangqing,thumbsupnum,crazilynum,price) VALUES(23,'编号3','名称3','种类3','http://localhost:8080/jspmzp0m6/upload/shuiguoxinxi_tupian3.jpg','销售单位3','详情3',3,3,99.9);
INSERT INTO shuiguoxinxi(id,bianhao,mingcheng,zhonglei,tupian,xiaoshoudanwei,xiangqing,thumbsupnum,crazilynum,price) VALUES(24,'编号4','名称4','种类4','http://localhost:8080/jspmzp0m6/upload/shuiguoxinxi_tupian4.jpg','销售单位4','详情4',4,4,99.9);
INSERT INTO shuiguoxinxi(id,bianhao,mingcheng,zhonglei,tupian,xiaoshoudanwei,xiangqing,thumbsupnum,crazilynum,price) VALUES(25,'编号5','名称5','种类5','http://localhost:8080/jspmzp0m6/upload/shuiguoxinxi_tupian5.jpg','销售单位5','详情5',5,5,99.9);
INSERT INTO shuiguoxinxi(id,bianhao,mingcheng,zhonglei,tupian,xiaoshoudanwei,xiangqing,thumbsupnum,crazilynum,price) VALUES(26,'编号6','名称6','种类6','http://localhost:8080/jspmzp0m6/upload/shuiguoxinxi_tupian6.jpg','销售单位6','详情6',6,6,99.9);

DROP TABLE IF EXISTS `shuiguoleibie`;

CREATE TABLE `shuiguoleibie` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`leibie` varchar(200)    COMMENT '类别',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='水果类别';

INSERT INTO shuiguoleibie(id,leibie) VALUES(31,'类别1');
INSERT INTO shuiguoleibie(id,leibie) VALUES(32,'类别2');
INSERT INTO shuiguoleibie(id,leibie) VALUES(33,'类别3');
INSERT INTO shuiguoleibie(id,leibie) VALUES(34,'类别4');
INSERT INTO shuiguoleibie(id,leibie) VALUES(35,'类别5');
INSERT INTO shuiguoleibie(id,leibie) VALUES(36,'类别6');

DROP TABLE IF EXISTS `xiaoshoudanwei`;

CREATE TABLE `xiaoshoudanwei` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`danwei` varchar(200)    COMMENT '单位',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='销售单位';

INSERT INTO xiaoshoudanwei(id,danwei) VALUES(41,'单位1');
INSERT INTO xiaoshoudanwei(id,danwei) VALUES(42,'单位2');
INSERT INTO xiaoshoudanwei(id,danwei) VALUES(43,'单位3');
INSERT INTO xiaoshoudanwei(id,danwei) VALUES(44,'单位4');
INSERT INTO xiaoshoudanwei(id,danwei) VALUES(45,'单位5');
INSERT INTO xiaoshoudanwei(id,danwei) VALUES(46,'单位6');

DROP TABLE IF EXISTS `shuiguoxiaoshoufenxi`;

CREATE TABLE `shuiguoxiaoshoufenxi` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`bianhao` varchar(200) NOT NULL UNIQUE   COMMENT '编号',
	`mingcheng` varchar(200)    COMMENT '名称',
	`zhonglei` varchar(200)    COMMENT '种类',
	`xiaoshoudanwei` varchar(200)    COMMENT '销售单位',
	`xiaoshoushuliang` int    COMMENT '销售数量',
	`jiage` int    COMMENT '价格',
	`jinjia` int    COMMENT '进价',
	`lirun` int    COMMENT '利润',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='水果销售分析';

INSERT INTO shuiguoxiaoshoufenxi(id,bianhao,mingcheng,zhonglei,xiaoshoudanwei,xiaoshoushuliang,jiage,jinjia,lirun) VALUES(51,'编号1','名称1','种类1','销售单位1',1,1,1,1);
INSERT INTO shuiguoxiaoshoufenxi(id,bianhao,mingcheng,zhonglei,xiaoshoudanwei,xiaoshoushuliang,jiage,jinjia,lirun) VALUES(52,'编号2','名称2','种类2','销售单位2',2,2,2,2);
INSERT INTO shuiguoxiaoshoufenxi(id,bianhao,mingcheng,zhonglei,xiaoshoudanwei,xiaoshoushuliang,jiage,jinjia,lirun) VALUES(53,'编号3','名称3','种类3','销售单位3',3,3,3,3);
INSERT INTO shuiguoxiaoshoufenxi(id,bianhao,mingcheng,zhonglei,xiaoshoudanwei,xiaoshoushuliang,jiage,jinjia,lirun) VALUES(54,'编号4','名称4','种类4','销售单位4',4,4,4,4);
INSERT INTO shuiguoxiaoshoufenxi(id,bianhao,mingcheng,zhonglei,xiaoshoudanwei,xiaoshoushuliang,jiage,jinjia,lirun) VALUES(55,'编号5','名称5','种类5','销售单位5',5,5,5,5);
INSERT INTO shuiguoxiaoshoufenxi(id,bianhao,mingcheng,zhonglei,xiaoshoudanwei,xiaoshoushuliang,jiage,jinjia,lirun) VALUES(56,'编号6','名称6','种类6','销售单位6',6,6,6,6);

DROP TABLE IF EXISTS `huiyuanfenxi`;

CREATE TABLE `huiyuanfenxi` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`zhanghao` varchar(200) NOT NULL   COMMENT '账号',
	`xingming` varchar(200)    COMMENT '姓名',
	`xingbie` varchar(200)    COMMENT '性别',
	`nianling` varchar(200)    COMMENT '年龄',
	`dianhua` varchar(200)    COMMENT '电话',
	`zhuzhi` varchar(200)    COMMENT '住址',
	`goumaishijian` datetime    COMMENT '购买时间',
	`goumaicishu` int    COMMENT '购买次数',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员分析';

INSERT INTO huiyuanfenxi(id,zhanghao,xingming,xingbie,nianling,dianhua,zhuzhi,goumaishijian,goumaicishu) VALUES(61,'账号1','姓名1','性别1','年龄1','电话1','住址1',CURRENT_TIMESTAMP,1);
INSERT INTO huiyuanfenxi(id,zhanghao,xingming,xingbie,nianling,dianhua,zhuzhi,goumaishijian,goumaicishu) VALUES(62,'账号2','姓名2','性别2','年龄2','电话2','住址2',CURRENT_TIMESTAMP,2);
INSERT INTO huiyuanfenxi(id,zhanghao,xingming,xingbie,nianling,dianhua,zhuzhi,goumaishijian,goumaicishu) VALUES(63,'账号3','姓名3','性别3','年龄3','电话3','住址3',CURRENT_TIMESTAMP,3);
INSERT INTO huiyuanfenxi(id,zhanghao,xingming,xingbie,nianling,dianhua,zhuzhi,goumaishijian,goumaicishu) VALUES(64,'账号4','姓名4','性别4','年龄4','电话4','住址4',CURRENT_TIMESTAMP,4);
INSERT INTO huiyuanfenxi(id,zhanghao,xingming,xingbie,nianling,dianhua,zhuzhi,goumaishijian,goumaicishu) VALUES(65,'账号5','姓名5','性别5','年龄5','电话5','住址5',CURRENT_TIMESTAMP,5);
INSERT INTO huiyuanfenxi(id,zhanghao,xingming,xingbie,nianling,dianhua,zhuzhi,goumaishijian,goumaicishu) VALUES(66,'账号6','姓名6','性别6','年龄6','电话6','住址6',CURRENT_TIMESTAMP,6);

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`tablename` varchar(200)   default 'shuiguoxinxi' COMMENT '商品表名',
	`userid` bigint NOT NULL   COMMENT '用户id',
	`goodid` bigint NOT NULL   COMMENT '商品id',
	`goodname` varchar(200)    COMMENT '商品名称',
	`picture` varchar(200)    COMMENT '图片',
	`buynumber` int NOT NULL   COMMENT '购买数量',
	`price` float    COMMENT '单价',
	`discountprice` float    COMMENT '会员价',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购物车表';


DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`orderid` varchar(200) NOT NULL UNIQUE   COMMENT '订单编号',
	`tablename` varchar(200)   default 'shuiguoxinxi' COMMENT '商品表名',
	`userid` bigint NOT NULL   COMMENT '用户id',
	`goodid` bigint NOT NULL   COMMENT '商品id',
	`goodname` varchar(200)    COMMENT '商品名称',
	`picture` varchar(200)    COMMENT '商品图片',
	`buynumber` int NOT NULL   COMMENT '购买数量',
	`price` float NOT NULL  default '0' COMMENT '价格/积分',
	`discountprice` float   default '0' COMMENT '折扣价格',
	`total` float NOT NULL  default '0' COMMENT '总价格/总积分',
	`discounttotal` float   default '0' COMMENT '折扣总价格',
	`type` int   default '1' COMMENT '支付类型',
	`status` varchar(200)    COMMENT '状态',
	`address` varchar(200)    COMMENT '地址',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单';


DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`userid` bigint NOT NULL   COMMENT '用户id',
	`address` varchar(200) NOT NULL   COMMENT '地址',
	`name` varchar(200) NOT NULL   COMMENT '收货人',
	`phone` varchar(200) NOT NULL   COMMENT '电话',
	`isdefault` varchar(200) NOT NULL   COMMENT '是否默认地址[是/否]',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='地址';

INSERT INTO `address`(id,userid,address,name,phone,isdefault) VALUES (1, 1, '宇宙银河系金星1号', '金某', '13823888881', '是');
INSERT INTO `address`(id,userid,address,name,phone,isdefault) VALUES (2, 2, '宇宙银河系木星1号', '木某', '13823888882', '是');
INSERT INTO `address`(id,userid,address,name,phone,isdefault) VALUES (3, 3, '宇宙银河系水星1号', '水某', '13823888883', '是');
INSERT INTO `address`(id,userid,address,name,phone,isdefault) VALUES (4, 4, '宇宙银河系火星1号', '火某', '13823888884', '是');
INSERT INTO `address`(id,userid,address,name,phone,isdefault) VALUES (5, 5, '宇宙银河系土星1号', '土某', '13823888885', '是');
INSERT INTO `address`(id,userid,address,name,phone,isdefault) VALUES (6, 6, '宇宙银河系月球1号', '月某', '13823888886', '是');

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`userid` bigint NOT NULL   COMMENT '用户id',
	`refid` bigint    COMMENT '收藏id',
	`tablename` varchar(200)    COMMENT '表名',
	`name` varchar(200) NOT NULL   COMMENT '收藏名称',
	`picture` varchar(200) NOT NULL   COMMENT '收藏图片',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';


DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`title` varchar(200) NOT NULL   COMMENT '标题',
	`introduction` longtext    COMMENT '简介',
	`picture` varchar(200) NOT NULL   COMMENT '图片',
	`content` longtext NOT NULL   COMMENT '内容',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='水果资讯';

INSERT INTO news(id,title,introduction,picture,content) VALUES(111,'标题1','简介1','http://localhost:8080/jspmzp0m6/upload/news_picture1.jpg','内容1');
INSERT INTO news(id,title,introduction,picture,content) VALUES(112,'标题2','简介2','http://localhost:8080/jspmzp0m6/upload/news_picture2.jpg','内容2');
INSERT INTO news(id,title,introduction,picture,content) VALUES(113,'标题3','简介3','http://localhost:8080/jspmzp0m6/upload/news_picture3.jpg','内容3');
INSERT INTO news(id,title,introduction,picture,content) VALUES(114,'标题4','简介4','http://localhost:8080/jspmzp0m6/upload/news_picture4.jpg','内容4');
INSERT INTO news(id,title,introduction,picture,content) VALUES(115,'标题5','简介5','http://localhost:8080/jspmzp0m6/upload/news_picture5.jpg','内容5');
INSERT INTO news(id,title,introduction,picture,content) VALUES(116,'标题6','简介6','http://localhost:8080/jspmzp0m6/upload/news_picture6.jpg','内容6');

DROP TABLE IF EXISTS `discussshuiguoxinxi`;

CREATE TABLE `discussshuiguoxinxi` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`refid` bigint NOT NULL   COMMENT '关联表id',
	`userid` bigint NOT NULL   COMMENT '用户id',
	`content` longtext NOT NULL   COMMENT '评论内容',
	`reply` longtext    COMMENT '回复内容',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='水果信息评论表';

INSERT INTO discussshuiguoxinxi(id,refid,userid,content,reply) VALUES(121,1,1,'评论内容1','回复内容1');
INSERT INTO discussshuiguoxinxi(id,refid,userid,content,reply) VALUES(122,2,2,'评论内容2','回复内容2');
INSERT INTO discussshuiguoxinxi(id,refid,userid,content,reply) VALUES(123,3,3,'评论内容3','回复内容3');
INSERT INTO discussshuiguoxinxi(id,refid,userid,content,reply) VALUES(124,4,4,'评论内容4','回复内容4');
INSERT INTO discussshuiguoxinxi(id,refid,userid,content,reply) VALUES(125,5,5,'评论内容5','回复内容5');
INSERT INTO discussshuiguoxinxi(id,refid,userid,content,reply) VALUES(126,6,6,'评论内容6','回复内容6');


DROP TABLE IF EXISTS `config`;

CREATE TABLE `config`(
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`name` varchar(100) NOT NULL COMMENT '配置参数名称',
	`value` varchar(100) COMMENT '配置参数值',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='配置文件';

insert into config(id,name,value) values(1,'picture1','http://localhost:8080/jspmzp0m6/upload/picture1.jpg');
insert into config(id,name,value) values(2,'picture2','http://localhost:8080/jspmzp0m6/upload/picture2.jpg');
insert into config(id,name,value) values(3,'picture3','http://localhost:8080/jspmzp0m6/upload/picture3.jpg');
insert into config(id,name) values(6,'homepage');


DROP TABLE IF EXISTS `users`;

CREATE TABLE `users`(
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`username` varchar(100) NOT NULL COMMENT '用户名',
	`password` varchar(100) NOT NULL COMMENT '密码',
	`role` varchar(100) default '管理员' COMMENT '角色',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '新增时间',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

insert into users(id,username, password) values(1,'abo','abo');

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token`(
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`userid` bigint NOT NULL COMMENT '用户id',
	`username` varchar(100) NOT NULL COMMENT '用户名',
	`tablename` varchar(100) COMMENT '表名',
	`role` varchar(100) COMMENT '角色',
	`token` varchar(200) NOT NULL COMMENT '密码',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '新增时间',
	`expiratedtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '过期时间',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';

