/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - tushuguanzhanzuo
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`tushuguanzhanzuo` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `tushuguanzhanzuo`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/tushuguanzhanzuo/upload/config1.jpg'),(2,'轮播图2','http://localhost:8080/tushuguanzhanzuo/upload/config2.jpg'),(3,'轮播图3','http://localhost:8080/tushuguanzhanzuo/upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2022-03-02 17:34:16'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2022-03-02 17:34:16'),(3,'shangxia_types','上下架',1,'上架',NULL,NULL,'2022-03-02 17:34:16'),(4,'shangxia_types','上下架',2,'下架',NULL,NULL,'2022-03-02 17:34:16'),(5,'fangjian_types','房间类型',1,'房间类型1',NULL,NULL,'2022-03-02 17:34:16'),(6,'fangjian_types','房间类型',2,'房间类型2',NULL,NULL,'2022-03-02 17:34:16'),(7,'fangjian_types','房间类型',3,'房间类型3',NULL,NULL,'2022-03-02 17:34:16'),(8,'fangjian_types','房间类型',4,'房间类型4',NULL,NULL,'2022-03-02 17:34:16'),(9,'fangjian_order_types','订单类型',1,'已预约',NULL,NULL,'2022-03-02 17:34:16'),(10,'fangjian_order_types','订单类型',2,'已签到',NULL,NULL,'2022-03-02 17:34:16'),(11,'fangjian_order_types','订单类型',3,'已超时',NULL,NULL,'2022-03-02 17:34:16'),(12,'fangjian_order_types','订单类型',4,'已退出',NULL,NULL,'2022-03-02 17:34:16'),(13,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2022-03-02 17:34:16'),(14,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2022-03-02 17:34:16'),(15,'forum_types','帖子类型',1,'帖子类型1',NULL,NULL,'2022-03-02 17:34:16'),(16,'forum_types','帖子类型',2,'帖子类型2',NULL,NULL,'2022-03-02 17:34:16'),(17,'forum_types','帖子类型',3,'帖子类型3',NULL,NULL,'2022-03-02 17:34:16'),(18,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2022-03-02 17:34:16'),(19,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2022-03-02 17:34:16'),(20,'xuesheng_jinyong_types','是否禁用',1,'使用',NULL,NULL,'2022-03-02 17:34:16'),(21,'xuesheng_jinyong_types','是否禁用',2,'禁用',NULL,'','2022-03-02 17:34:16');

/*Table structure for table `fangjian` */

DROP TABLE IF EXISTS `fangjian`;

CREATE TABLE `fangjian` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `fangjian_name` varchar(200) DEFAULT NULL COMMENT '房间名称  Search111 ',
  `fangjian_photo` varchar(200) DEFAULT NULL COMMENT '房间照片',
  `fangjian_types` int(11) DEFAULT NULL COMMENT '房间类型 Search111',
  `zuowei_number` int(11) DEFAULT NULL COMMENT '座位',
  `fangjian_clicknum` int(11) DEFAULT NULL COMMENT '点击次数 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `fangjian_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `fangjian_content` text COMMENT '房间介绍 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='房间';

/*Data for the table `fangjian` */

insert  into `fangjian`(`id`,`fangjian_name`,`fangjian_photo`,`fangjian_types`,`zuowei_number`,`fangjian_clicknum`,`shangxia_types`,`fangjian_delete`,`fangjian_content`,`create_time`) values (1,'房间名称1','http://localhost:8080/tushuguanzhanzuo/upload/fangjian1.jpg',4,20,153,1,1,'房间介绍1','2022-03-02 17:37:16'),(2,'房间名称2','http://localhost:8080/tushuguanzhanzuo/upload/fangjian2.jpg',4,20,442,1,1,'房间介绍2','2022-03-02 17:37:16'),(3,'房间名称3','http://localhost:8080/tushuguanzhanzuo/upload/fangjian3.jpg',2,20,159,1,1,'房间介绍3','2022-03-02 17:37:16'),(4,'房间名称4','http://localhost:8080/tushuguanzhanzuo/upload/fangjian4.jpg',3,20,60,1,1,'房间介绍4','2022-03-02 17:37:16'),(5,'房间名称5','http://localhost:8080/tushuguanzhanzuo/upload/fangjian5.jpg',4,20,123,1,1,'房间介绍5','2022-03-02 17:37:16');

/*Table structure for table `fangjian_order` */

DROP TABLE IF EXISTS `fangjian_order`;

CREATE TABLE `fangjian_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `fangjian_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单号',
  `fangjian_id` int(11) DEFAULT NULL COMMENT '房间',
  `xuesheng_id` int(11) DEFAULT NULL COMMENT '学生',
  `fangjian_order_types` int(11) DEFAULT NULL COMMENT '订单类型  Search111 ',
  `buy_zuowei_number` varchar(200) DEFAULT NULL COMMENT '占的座位',
  `buy_zuowei_time` date DEFAULT NULL COMMENT '占座日期',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '占座时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='房间占座';

/*Data for the table `fangjian_order` */

insert  into `fangjian_order`(`id`,`fangjian_order_uuid_number`,`fangjian_id`,`xuesheng_id`,`fangjian_order_types`,`buy_zuowei_number`,`buy_zuowei_time`,`insert_time`,`create_time`) values (1,'1646220594492',4,1,2,'3,4','2022-03-02','2022-03-02 19:29:56','2022-03-02 19:29:56'),(2,'1646220604054',4,1,3,'2','2022-03-02','2022-03-02 19:30:07','2022-03-02 19:30:07'),(3,'1646220594493',4,1,3,'6,7','2022-03-02','2022-03-02 19:29:56','2022-03-02 19:29:56'),(4,'1646220604059',4,1,4,'9','2022-03-02','2022-03-02 19:30:07','2022-03-02 19:30:07'),(5,'1646224828331',5,1,4,'2,3','2022-03-02','2022-03-02 20:40:31','2022-03-02 20:40:31'),(6,'1646224838031',5,1,4,'4','2022-03-02','2022-03-02 20:40:40','2022-03-02 20:40:40');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `xuesheng_id` int(11) DEFAULT NULL COMMENT '学生',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_types` int(11) DEFAULT NULL COMMENT '帖子类型',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`xuesheng_id`,`users_id`,`forum_content`,`super_ids`,`forum_types`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',2,NULL,'发布内容1',NULL,1,1,'2022-03-02 17:37:16','2022-03-02 17:37:16','2022-03-02 17:37:16'),(2,'帖子标题2',2,NULL,'发布内容2',NULL,3,1,'2022-03-02 17:37:16','2022-03-02 17:37:16','2022-03-02 17:37:16'),(3,'帖子标题3',3,NULL,'发布内容3',NULL,2,1,'2022-03-02 17:37:16','2022-03-02 17:37:16','2022-03-02 17:37:16'),(4,'帖子标题4',2,NULL,'发布内容4',NULL,2,1,'2022-03-02 17:37:16','2022-03-02 17:37:16','2022-03-02 17:37:16'),(5,'帖子标题5',3,NULL,'发布内容5',NULL,3,1,'2022-03-02 17:37:16','2022-03-02 17:37:16','2022-03-02 17:37:16'),(6,NULL,1,NULL,'1111',5,NULL,2,'2022-03-02 20:41:02',NULL,'2022-03-02 20:41:02'),(7,NULL,NULL,6,'ss',5,NULL,2,'2022-03-02 20:42:44',NULL,'2022-03-02 20:42:44');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` text COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','http://localhost:8080/tushuguanzhanzuo/upload/gonggao1.jpg',2,'2022-03-02 17:37:16','公告详情1','2022-03-02 17:37:16'),(2,'公告名称2','http://localhost:8080/tushuguanzhanzuo/upload/gonggao2.jpg',1,'2022-03-02 17:37:16','公告详情2','2022-03-02 17:37:16'),(3,'公告名称3','http://localhost:8080/tushuguanzhanzuo/upload/gonggao3.jpg',1,'2022-03-02 17:37:16','公告详情3','2022-03-02 17:37:16'),(4,'公告名称4','http://localhost:8080/tushuguanzhanzuo/upload/gonggao4.jpg',2,'2022-03-02 17:37:16','公告详情4','2022-03-02 17:37:16'),(5,'公告名称5','http://localhost:8080/tushuguanzhanzuo/upload/gonggao5.jpg',2,'2022-03-02 17:37:16','公告详情5','2022-03-02 17:37:16');

/*Table structure for table `jinggao` */

DROP TABLE IF EXISTS `jinggao`;

CREATE TABLE `jinggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `xuesheng_id` int(11) DEFAULT NULL COMMENT '学生',
  `jinggao_name` varchar(200) DEFAULT NULL COMMENT '警告标题  Search111 ',
  `jinggao_text` text COMMENT '警告内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '警告时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='警告';

/*Data for the table `jinggao` */

insert  into `jinggao`(`id`,`xuesheng_id`,`jinggao_name`,`jinggao_text`,`insert_time`,`create_time`) values (1,1,'警告标题1','警告内容1','2022-03-02 17:37:16','2022-03-02 17:37:16'),(2,1,'警告标题2','警告内容2','2022-03-02 17:37:16','2022-03-02 17:37:16'),(3,3,'警告标题3','警告内容3','2022-03-02 17:37:16','2022-03-02 17:37:16'),(4,1,'警告标题4','警告内容4','2022-03-02 17:37:16','2022-03-02 17:37:16'),(5,3,'警告标题5','警告内容5','2022-03-02 17:37:16','2022-03-02 17:37:16');

/*Table structure for table `liuyan` */

DROP TABLE IF EXISTS `liuyan`;

CREATE TABLE `liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `xuesheng_id` int(11) DEFAULT NULL COMMENT '学生',
  `liuyan_name` varchar(200) DEFAULT NULL COMMENT '留言标题  Search111 ',
  `liuyan_text` text COMMENT '留言内容',
  `reply_text` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='留言版';

/*Data for the table `liuyan` */

insert  into `liuyan`(`id`,`xuesheng_id`,`liuyan_name`,`liuyan_text`,`reply_text`,`insert_time`,`update_time`,`create_time`) values (1,1,'留言标题1','留言内容1','回复信息1','2022-03-02 17:37:16','2022-03-02 17:37:16','2022-03-02 17:37:16'),(2,2,'留言标题2','留言内容2','回复信息2','2022-03-02 17:37:16','2022-03-02 17:37:16','2022-03-02 17:37:16'),(3,2,'留言标题3','留言内容3','回复信息3','2022-03-02 17:37:16','2022-03-02 17:37:16','2022-03-02 17:37:16'),(4,2,'留言标题4','留言内容4','回复信息4','2022-03-02 17:37:16','2022-03-02 17:37:16','2022-03-02 17:37:16'),(5,2,'留言标题5','留言内容5','回复信息5','2022-03-02 17:37:16','2022-03-02 17:37:16','2022-03-02 17:37:16'),(6,1,'标题11','内容11','23s2ad1as','2022-03-02 20:41:19','2022-03-02 20:43:03','2022-03-02 20:41:19');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','qixlqnso5dgax2cam4m0oj8mffkcrszd','2022-03-02 17:40:43','2022-03-02 21:44:16'),(2,1,'a1','xuesheng','学生','qw2lmkkq11rgiwaxhbpfu2z69mczolvr','2022-03-02 17:53:20','2022-03-02 21:45:09');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','admin','管理员','2021-04-27 14:51:13');

/*Table structure for table `xuesheng` */

DROP TABLE IF EXISTS `xuesheng`;

CREATE TABLE `xuesheng` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `xuesheng_uuid_number` varchar(200) DEFAULT NULL COMMENT '学号 Search111 ',
  `xuesheng_name` varchar(200) DEFAULT NULL COMMENT '学生姓名 Search111 ',
  `xuesheng_phone` varchar(200) DEFAULT NULL COMMENT '学生手机号',
  `xuesheng_id_number` varchar(200) DEFAULT NULL COMMENT '学生身份证号',
  `xuesheng_photo` varchar(200) DEFAULT NULL COMMENT '学生头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `xuesheng_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `xuesheng_jinyong_types` int(11) DEFAULT NULL COMMENT '是否禁用',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `xuesheng` */

insert  into `xuesheng`(`id`,`username`,`password`,`xuesheng_uuid_number`,`xuesheng_name`,`xuesheng_phone`,`xuesheng_id_number`,`xuesheng_photo`,`sex_types`,`xuesheng_email`,`xuesheng_jinyong_types`,`create_time`) values (1,'a1','123456','164621383657113','学生姓名1','17703786901','410224199610232001','http://localhost:8080/tushuguanzhanzuo/upload/xuesheng1.jpg',1,'1@qq.com',1,'2022-03-02 17:37:16'),(2,'a2','123456','16462138365715','学生姓名2','17703786902','410224199610232002','http://localhost:8080/tushuguanzhanzuo/upload/xuesheng2.jpg',2,'2@qq.com',1,'2022-03-02 17:37:16'),(3,'a3','123456','164621383657120','学生姓名3','17703786903','410224199610232003','http://localhost:8080/tushuguanzhanzuo/upload/xuesheng3.jpg',1,'3@qq.com',1,'2022-03-02 17:37:16');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
