/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : blogdb

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-03-14 18:40:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('5', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('8', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('9', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('10', 'Can add content type', '4', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('11', 'Can change content type', '4', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('12', 'Can delete content type', '4', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('13', 'Can add session', '5', 'add_session');
INSERT INTO `auth_permission` VALUES ('14', 'Can change session', '5', 'change_session');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete session', '5', 'delete_session');
INSERT INTO `auth_permission` VALUES ('16', 'Can add 用户', '6', 'add_user');
INSERT INTO `auth_permission` VALUES ('17', 'Can change 用户', '6', 'change_user');
INSERT INTO `auth_permission` VALUES ('18', 'Can delete 用户', '6', 'delete_user');
INSERT INTO `auth_permission` VALUES ('19', 'Can add 标签', '7', 'add_tag');
INSERT INTO `auth_permission` VALUES ('20', 'Can change 标签', '7', 'change_tag');
INSERT INTO `auth_permission` VALUES ('21', 'Can delete 标签', '7', 'delete_tag');
INSERT INTO `auth_permission` VALUES ('22', 'Can add 分类', '8', 'add_category');
INSERT INTO `auth_permission` VALUES ('23', 'Can change 分类', '8', 'change_category');
INSERT INTO `auth_permission` VALUES ('24', 'Can delete 分类', '8', 'delete_category');
INSERT INTO `auth_permission` VALUES ('25', 'Can add 文章', '9', 'add_article');
INSERT INTO `auth_permission` VALUES ('26', 'Can change 文章', '9', 'change_article');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete 文章', '9', 'delete_article');
INSERT INTO `auth_permission` VALUES ('28', 'Can add 评论', '10', 'add_comment');
INSERT INTO `auth_permission` VALUES ('29', 'Can change 评论', '10', 'change_comment');
INSERT INTO `auth_permission` VALUES ('30', 'Can delete 评论', '10', 'delete_comment');
INSERT INTO `auth_permission` VALUES ('31', 'Can add 友情链接', '11', 'add_links');
INSERT INTO `auth_permission` VALUES ('32', 'Can change 友情链接', '11', 'change_links');
INSERT INTO `auth_permission` VALUES ('33', 'Can delete 友情链接', '11', 'delete_links');
INSERT INTO `auth_permission` VALUES ('34', 'Can add 广告', '12', 'add_ad');
INSERT INTO `auth_permission` VALUES ('35', 'Can change 广告', '12', 'change_ad');
INSERT INTO `auth_permission` VALUES ('36', 'Can delete 广告', '12', 'delete_ad');

-- ----------------------------
-- Table structure for blog_ad
-- ----------------------------
DROP TABLE IF EXISTS `blog_ad`;
CREATE TABLE `blog_ad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `description` varchar(200) NOT NULL,
  `image_url` varchar(100) NOT NULL,
  `callback_url` varchar(200) DEFAULT NULL,
  `date_publish` datetime(6) NOT NULL,
  `index` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_ad
-- ----------------------------
INSERT INTO `blog_ad` VALUES ('1', 'iPhone 4', 'iPhone 4 智能时代', 'ad/2018/03/a1.jpg', null, '2017-12-20 03:36:22.490000', '999');
INSERT INTO `blog_ad` VALUES ('2', '迷你键盘', '迷你新科技', 'ad/2018/03/a2.jpg', null, '2017-12-20 04:07:07.155000', '999');

-- ----------------------------
-- Table structure for blog_article
-- ----------------------------
DROP TABLE IF EXISTS `blog_article`;
CREATE TABLE `blog_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `desc` varchar(50) NOT NULL,
  `content` longtext NOT NULL,
  `click_count` int(11) NOT NULL,
  `is_recommend` tinyint(1) NOT NULL,
  `date_publish` datetime(6) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_article_b583a629` (`category_id`),
  KEY `blog_article_e8701ad4` (`user_id`),
  CONSTRAINT `blog_article_category_id_7e38f15e_fk_blog_category_id` FOREIGN KEY (`category_id`) REFERENCES `blog_category` (`id`),
  CONSTRAINT `blog_article_user_id_5beb0cc1_fk_blog_user_id` FOREIGN KEY (`user_id`) REFERENCES `blog_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_article
-- ----------------------------
INSERT INTO `blog_article` VALUES ('1', '陌生人，愿您安好！', '陌生人', '<span style=\"color:#666666;font-family:Arial;font-size:14px;background-color:#FFFFFF;\">不知道您从哪里来，要到哪里去，可天很冷，我好想对您说，回家吧！可我还是装作若无其事，从您身旁走过，我甚至不敢看您一眼，我怕异样或同情的目光会伤害您。我安慰自己，您只是在等人，而不是流浪。</span>', '1', '0', '2017-03-24 04:58:40.000000', '2', '1');
INSERT INTO `blog_article` VALUES ('2', '属于自己的纯粹', '属于自己', '<span style=\"color:#666666;font-family:Arial;font-size:14px;background-color:#FFFFFF;\">经过</span><a href=\"https://www.duanwenxue.com/jingdian/shenghuo/\">生活</a><span style=\"color:#666666;font-family:Arial;font-size:14px;background-color:#FFFFFF;\">的洗礼，时间的沉淀，我们逐步踏入社会，感受着这个世界的人情冷暖，我们从少不更事的孩子成长成现在满怀心事的社会人。</span>', '2', '1', '2017-08-01 04:59:17.000000', '2', '1');
INSERT INTO `blog_article` VALUES ('3', '计划与人生', '计划与人生', '<span style=\"color:#666666;font-family:Arial;font-size:14px;background-color:#FFFFFF;\">《礼记·中庸》有这么一段话，凡事预则立，不预则废。这其中蕴含着深刻的</span><a href=\"https://www.duanwenxue.com/jingdian/zheli/\">哲理</a><span style=\"color:#666666;font-family:Arial;font-size:14px;background-color:#FFFFFF;\">，预：预先，指事先作好计划或准备;立：成就;废：败坏。这句话的主要意思是不管做什么，都要有计划、有打算，只有这样，才能圆满完成各项任务。对指导我们的工作实践具有非常重要的现实意义。</span>', '3', '0', '2017-09-15 04:59:41.000000', '2', '1');
INSERT INTO `blog_article` VALUES ('4', '清醒奋斗', '感悟', '<span style=\"color:#666666;font-family:Arial;font-size:14px;background-color:#FFFFFF;\">所谓80后，指出生于1980年到1990年期间出生的一代人，他们没有经历自然的灾难，没有经历时代的巨变，更没有经历国家的磨难。他们曾经被冠以“任性，矫情，自由散漫，被毁掉的一代”这样的时代标签，但随着他们的成长，随着社会的进步，随着国家的发展，请再看看周边的你，我和我们周边的朋友，同事与合作伙伴，咱们这一代正迅速的崛起，作为基石在各行各业茁壮的成长。</span>', '4', '1', '2017-10-05 05:00:05.000000', '3', '1');
INSERT INTO `blog_article` VALUES ('5', '万水千山走遍', '万水千山走遍', '<p style=\"text-indent:28px;color:#666666;font-family:Arial;font-size:14px;background-color:#FFFFFF;\">\r\n	《万水千山走遍》，来自三毛。三毛，台湾著名作家，是一个孤单流浪的人。\r\n</p>\r\n<p style=\"text-indent:28px;color:#666666;font-family:Arial;font-size:14px;background-color:#FFFFFF;\">\r\n	爱人荷西。荷西，追了三毛六年，与三毛相守了六年，在三毛热爱的撒哈拉沙漠。荷西，是三毛用灵魂爱着的人，却不幸水中遇难。\r\n</p>', '6', '1', '2017-11-15 05:00:35.000000', '3', '1');
INSERT INTO `blog_article` VALUES ('6', '珍惜时间，珍爱生活，珍重生命', '珍惜自我', '<img src=\"/uploads/kindeditor/2018/3/7e2cb33e-22d7-11e8-a735-40167eb1a281.jpg\" alt=\"\" /><span style=\"color:#666666;font-family:Arial;font-size:14px;background-color:#FFFFFF;\"><img src=\"http://127.0.0.1:8000/static/js/kindeditor/plugins/emoticons/images/1.gif\" border=\"0\" alt=\"\" /><img src=\"http://127.0.0.1:8000/static/js/kindeditor/plugins/emoticons/images/40.gif\" border=\"0\" alt=\"\" /><img src=\"http://127.0.0.1:8000/static/js/kindeditor/plugins/emoticons/images/37.gif\" border=\"0\" alt=\"\" />每一天看着</span><a href=\"https://www.duanwenxue.com/diary/ganwu/\">感悟</a><a href=\"https://www.duanwenxue.com/jingdian/ganwu/\">人生</a><span style=\"color:#666666;font-family:Arial;font-size:14px;background-color:#FFFFFF;\">，叹息时间的</span><a href=\"https://www.duanwenxue.com/jingdian/\">文章</a><span style=\"color:#666666;font-family:Arial;font-size:14px;background-color:#FFFFFF;\">，自己也写着，‘’时光流逝，岁月如梭，青春一去不复返‘’，但是重来没有切身体会到这字里行间的意思。这</span><a href=\"https://www.duanwenxue.com/qinggan/\">情感</a><span style=\"color:#666666;font-family:Arial;font-size:14px;background-color:#FFFFFF;\">式的</span><a href=\"https://www.duanwenxue.com/qinggan/meiwen/\">美文</a><span style=\"color:#666666;font-family:Arial;font-size:14px;background-color:#FFFFFF;\">，美文式的</span><a href=\"https://www.duanwenxue.com/jingdian/shenghuo/\">生活</a><span style=\"color:#666666;font-family:Arial;font-size:14px;background-color:#FFFFFF;\">，生活式的</span><a href=\"https://www.duanwenxue.com/jingdian/ganwu/\">感悟</a><span style=\"color:#666666;font-family:Arial;font-size:14px;background-color:#FFFFFF;\">，视乎已经麻痹了我的眼睛，麻醉了我的神经，麻木了我的大脑。凡事只有经历了，体会了，感悟到了，才会大彻大悟。</span>', '10', '1', '2017-12-20 05:00:55.884000', '2', '1');

-- ----------------------------
-- Table structure for blog_article_tag
-- ----------------------------
DROP TABLE IF EXISTS `blog_article_tag`;
CREATE TABLE `blog_article_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blog_article_tag_article_id_818e752b_uniq` (`article_id`,`tag_id`),
  KEY `blog_article_tag_tag_id_f2afe66b_fk_blog_tag_id` (`tag_id`),
  CONSTRAINT `blog_article_tag_article_id_8db2395e_fk_blog_article_id` FOREIGN KEY (`article_id`) REFERENCES `blog_article` (`id`),
  CONSTRAINT `blog_article_tag_tag_id_f2afe66b_fk_blog_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `blog_tag` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_article_tag
-- ----------------------------
INSERT INTO `blog_article_tag` VALUES ('6', '1', '3');
INSERT INTO `blog_article_tag` VALUES ('1', '2', '1');
INSERT INTO `blog_article_tag` VALUES ('5', '3', '3');
INSERT INTO `blog_article_tag` VALUES ('4', '4', '3');
INSERT INTO `blog_article_tag` VALUES ('3', '5', '3');
INSERT INTO `blog_article_tag` VALUES ('2', '6', '2');

-- ----------------------------
-- Table structure for blog_category
-- ----------------------------
DROP TABLE IF EXISTS `blog_category`;
CREATE TABLE `blog_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `index` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_category
-- ----------------------------
INSERT INTO `blog_category` VALUES ('2', '文章', '991');
INSERT INTO `blog_category` VALUES ('3', '心情', '992');

-- ----------------------------
-- Table structure for blog_comment
-- ----------------------------
DROP TABLE IF EXISTS `blog_comment`;
CREATE TABLE `blog_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` longtext NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `date_publish` datetime(6) NOT NULL,
  `article_id` int(11) DEFAULT NULL,
  `pid_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_comment_article_id_3d58bca6_fk_blog_article_id` (`article_id`),
  KEY `blog_comment_pid_id_2a2b4cc4_fk_blog_comment_id` (`pid_id`),
  KEY `blog_comment_user_id_59a54155_fk_blog_user_id` (`user_id`),
  CONSTRAINT `blog_comment_article_id_3d58bca6_fk_blog_article_id` FOREIGN KEY (`article_id`) REFERENCES `blog_article` (`id`),
  CONSTRAINT `blog_comment_pid_id_2a2b4cc4_fk_blog_comment_id` FOREIGN KEY (`pid_id`) REFERENCES `blog_comment` (`id`),
  CONSTRAINT `blog_comment_user_id_59a54155_fk_blog_user_id` FOREIGN KEY (`user_id`) REFERENCES `blog_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_comment
-- ----------------------------
INSERT INTO `blog_comment` VALUES ('1', '1111111', 'bigdata', '', '', '2017-12-21 02:26:01.942000', '6', null, '1');
INSERT INTO `blog_comment` VALUES ('2', '22222222222', 'bigdata', '', '', '2017-12-21 02:26:09.529000', '6', null, '1');
INSERT INTO `blog_comment` VALUES ('3', '3333333333333333', 'bigdata', '', '', '2017-12-21 02:26:15.237000', '4', null, '1');
INSERT INTO `blog_comment` VALUES ('4', '4444444444444444444', 'bigdata', '', '', '2017-12-21 02:26:22.556000', '4', null, '1');
INSERT INTO `blog_comment` VALUES ('5', '55555555555', 'bigdata', '', '', '2017-12-21 02:26:29.691000', '2', '2', '1');
INSERT INTO `blog_comment` VALUES ('6', '6666666666666', 'bigdata', '', '', '2017-12-21 02:26:37.326000', '1', '2', '1');
INSERT INTO `blog_comment` VALUES ('7', '很好的经历', 'admin', 'eed_xie@qq.com', 'http://www.moli.com', '2018-01-09 06:13:06.486000', '6', null, '1');
INSERT INTO `blog_comment` VALUES ('8', '感悟人生', 'eedxie', 'eed_xie@qq.com', 'http://www.moli.com', '2018-01-09 06:37:55.130000', '6', '7', '2');
INSERT INTO `blog_comment` VALUES ('9', '感悟人生', 'editer', 'eed_xie@qq.com', 'http://www.moli.com', '2018-03-13 13:16:28.524486', '6', null, null);
INSERT INTO `blog_comment` VALUES ('10', '你也一样', 'admin', 'eed_xie@qq.com', 'http://www.moli.com', '2018-03-13 13:18:08.628086', '6', '9', '1');

-- ----------------------------
-- Table structure for blog_links
-- ----------------------------
DROP TABLE IF EXISTS `blog_links`;
CREATE TABLE `blog_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `description` varchar(200) NOT NULL,
  `callback_url` varchar(200) NOT NULL,
  `date_publish` datetime(6) NOT NULL,
  `index` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_links
-- ----------------------------
INSERT INTO `blog_links` VALUES ('1', '百度', '百度搜索', 'http://baidu.com', '2018-03-13 15:25:21.173394', '999');
INSERT INTO `blog_links` VALUES ('2', '阿里云', '阿里云服务', 'http://www.aliyun.com', '2018-03-13 15:26:05.172911', '999');
INSERT INTO `blog_links` VALUES ('3', '麦子学院', '专职培训学院', 'http://www.maiziedu.com', '2018-03-13 15:26:49.695458', '998');

-- ----------------------------
-- Table structure for blog_tag
-- ----------------------------
DROP TABLE IF EXISTS `blog_tag`;
CREATE TABLE `blog_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_tag
-- ----------------------------
INSERT INTO `blog_tag` VALUES ('1', '纯粹');
INSERT INTO `blog_tag` VALUES ('2', '生命');
INSERT INTO `blog_tag` VALUES ('3', '人生');

-- ----------------------------
-- Table structure for blog_user
-- ----------------------------
DROP TABLE IF EXISTS `blog_user`;
CREATE TABLE `blog_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `avatar` varchar(200) DEFAULT NULL,
  `qq` varchar(20) DEFAULT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `mobile` (`mobile`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_user
-- ----------------------------
INSERT INTO `blog_user` VALUES ('1', 'pbkdf2_sha256$36000$voLdMXmgGY7Q$z3SuRUyedkcqmVBknE2sGrU2ghgwghQBnDoTWZ60edQ=', '2018-03-14 09:59:36.287004', '1', 'admin', '', '', 'eed_xie@qq.com', '1', '1', '2017-12-20 01:07:31.371000', 'avatar/default.png', null, null, null);
INSERT INTO `blog_user` VALUES ('2', 'pbkdf2_sha256$24000$JJ7IckVi3Dzp$jLetyX8BELwCNB9YDlCc5wklrxPZb4Vlh5jq1YR8sno=', '2018-01-09 06:37:39.000000', '0', 'eedxie', '', '', 'eed_xie@qq.com', '0', '1', '2018-01-09 06:37:39.000000', 'avatar/2018/03/15.jpg', null, null, 'http://www.moli.com');

-- ----------------------------
-- Table structure for blog_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `blog_user_groups`;
CREATE TABLE `blog_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blog_user_groups_user_id_9046f296_uniq` (`user_id`,`group_id`),
  KEY `blog_user_groups_group_id_29990e74_fk_auth_group_id` (`group_id`),
  CONSTRAINT `blog_user_groups_group_id_29990e74_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `blog_user_groups_user_id_4e1acb48_fk_blog_user_id` FOREIGN KEY (`user_id`) REFERENCES `blog_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for blog_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `blog_user_user_permissions`;
CREATE TABLE `blog_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blog_user_user_permissions_user_id_1d3c1311_uniq` (`user_id`,`permission_id`),
  KEY `blog_user_user_perm_permission_id_95ca6010_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `blog_user_user_perm_permission_id_95ca6010_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `blog_user_user_permissions_user_id_379a1502_fk_blog_user_id` FOREIGN KEY (`user_id`) REFERENCES `blog_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_blog_user_id` (`user_id`),
  CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_blog_user_id` FOREIGN KEY (`user_id`) REFERENCES `blog_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES ('1', '2017-12-20 03:08:48.951000', '1', 'Category object', '1', 'Added.', '8', '1');
INSERT INTO `django_admin_log` VALUES ('2', '2017-12-20 03:09:20.354000', '2', 'Category object', '1', 'Added.', '8', '1');
INSERT INTO `django_admin_log` VALUES ('3', '2017-12-20 03:12:22.382000', '2', 'Category object', '2', 'Changed index.', '8', '1');
INSERT INTO `django_admin_log` VALUES ('4', '2017-12-20 03:12:29.967000', '3', 'Category object', '1', 'Added.', '8', '1');
INSERT INTO `django_admin_log` VALUES ('5', '2017-12-20 03:12:39.309000', '1', 'Category object', '2', 'Changed index.', '8', '1');
INSERT INTO `django_admin_log` VALUES ('6', '2017-12-20 03:12:39.324000', '3', 'Category object', '2', 'Changed index.', '8', '1');
INSERT INTO `django_admin_log` VALUES ('7', '2017-12-20 03:12:48.803000', '3', 'Category object', '2', 'Changed index.', '8', '1');
INSERT INTO `django_admin_log` VALUES ('8', '2017-12-20 03:12:48.834000', '1', 'Category object', '2', 'Changed index.', '8', '1');
INSERT INTO `django_admin_log` VALUES ('9', '2017-12-20 03:12:54.770000', '2', 'Category object', '2', 'Changed index.', '8', '1');
INSERT INTO `django_admin_log` VALUES ('10', '2017-12-20 03:23:53.871000', '4', 'Category object', '1', 'Added.', '8', '1');
INSERT INTO `django_admin_log` VALUES ('11', '2017-12-20 03:23:59.511000', '5', 'Category object', '1', 'Added.', '8', '1');
INSERT INTO `django_admin_log` VALUES ('12', '2017-12-20 03:36:22.492000', '1', 'Ad object', '1', 'Added.', '12', '1');
INSERT INTO `django_admin_log` VALUES ('13', '2017-12-20 04:07:07.157000', '2', 'Ad object', '1', 'Added.', '12', '1');
INSERT INTO `django_admin_log` VALUES ('14', '2017-12-20 04:58:40.027000', '1', 'Article object', '1', 'Added.', '9', '1');
INSERT INTO `django_admin_log` VALUES ('15', '2017-12-20 04:59:17.532000', '2', 'Article object', '1', 'Added.', '9', '1');
INSERT INTO `django_admin_log` VALUES ('16', '2017-12-20 04:59:41.261000', '3', 'Article object', '1', 'Added.', '9', '1');
INSERT INTO `django_admin_log` VALUES ('17', '2017-12-20 05:00:05.129000', '4', 'Article object', '1', 'Added.', '9', '1');
INSERT INTO `django_admin_log` VALUES ('18', '2017-12-20 05:00:35.127000', '5', 'Article object', '1', 'Added.', '9', '1');
INSERT INTO `django_admin_log` VALUES ('19', '2017-12-20 05:00:55.885000', '6', 'Article object', '1', 'Added.', '9', '1');
INSERT INTO `django_admin_log` VALUES ('20', '2017-12-21 02:26:01.943000', '1', 'Comment object', '1', 'Added.', '10', '1');
INSERT INTO `django_admin_log` VALUES ('21', '2017-12-21 02:26:09.529000', '2', 'Comment object', '1', 'Added.', '10', '1');
INSERT INTO `django_admin_log` VALUES ('22', '2017-12-21 02:26:15.238000', '3', 'Comment object', '1', 'Added.', '10', '1');
INSERT INTO `django_admin_log` VALUES ('23', '2017-12-21 02:26:22.556000', '4', 'Comment object', '1', 'Added.', '10', '1');
INSERT INTO `django_admin_log` VALUES ('24', '2017-12-21 02:26:29.692000', '5', 'Comment object', '1', 'Added.', '10', '1');
INSERT INTO `django_admin_log` VALUES ('25', '2017-12-21 02:26:37.326000', '6', 'Comment object', '1', 'Added.', '10', '1');
INSERT INTO `django_admin_log` VALUES ('26', '2017-12-21 02:27:22.129000', '6', 'Article object', '2', 'Changed click_count.', '9', '1');
INSERT INTO `django_admin_log` VALUES ('27', '2017-12-21 02:27:22.141000', '5', 'Article object', '2', 'Changed click_count.', '9', '1');
INSERT INTO `django_admin_log` VALUES ('28', '2017-12-21 02:27:22.149000', '4', 'Article object', '2', 'Changed click_count.', '9', '1');
INSERT INTO `django_admin_log` VALUES ('29', '2017-12-21 02:27:22.157000', '3', 'Article object', '2', 'Changed click_count.', '9', '1');
INSERT INTO `django_admin_log` VALUES ('30', '2017-12-21 02:27:22.165000', '2', 'Article object', '2', 'Changed click_count.', '9', '1');
INSERT INTO `django_admin_log` VALUES ('31', '2017-12-21 02:27:22.173000', '1', 'Article object', '2', 'Changed click_count.', '9', '1');
INSERT INTO `django_admin_log` VALUES ('32', '2017-12-22 04:54:57.710998', '6', 'Article object', '2', 'Changed is_recommend.', '9', '1');
INSERT INTO `django_admin_log` VALUES ('33', '2017-12-22 04:55:08.876998', '5', 'Article object', '2', 'Changed is_recommend.', '9', '1');
INSERT INTO `django_admin_log` VALUES ('34', '2017-12-22 04:55:12.855998', '4', 'Article object', '2', 'Changed is_recommend.', '9', '1');
INSERT INTO `django_admin_log` VALUES ('35', '2017-12-22 04:55:18.646998', '2', 'Article object', '2', 'Changed is_recommend.', '9', '1');
INSERT INTO `django_admin_log` VALUES ('36', '2018-01-09 00:42:56.042000', '6', 'Comment object', '2', 'Changed username.', '10', '1');
INSERT INTO `django_admin_log` VALUES ('37', '2018-01-09 00:42:59.893000', '5', 'Comment object', '2', 'Changed username.', '10', '1');
INSERT INTO `django_admin_log` VALUES ('38', '2018-01-09 00:43:03.143000', '4', 'Comment object', '2', 'Changed username.', '10', '1');
INSERT INTO `django_admin_log` VALUES ('39', '2018-01-09 00:43:08.894000', '3', 'Comment object', '2', 'Changed username.', '10', '1');
INSERT INTO `django_admin_log` VALUES ('40', '2018-01-09 00:43:15.391000', '2', 'Comment object', '2', 'Changed username.', '10', '1');
INSERT INTO `django_admin_log` VALUES ('41', '2018-01-09 00:43:18.513000', '1', 'Comment object', '2', 'Changed username.', '10', '1');
INSERT INTO `django_admin_log` VALUES ('42', '2018-01-09 05:33:53.955000', '6', 'Comment object', '2', 'Changed pid.', '10', '1');
INSERT INTO `django_admin_log` VALUES ('43', '2018-01-09 05:34:10.586000', '5', 'Comment object', '2', 'Changed pid.', '10', '1');
INSERT INTO `django_admin_log` VALUES ('44', '2018-01-09 06:49:01.225000', '1', 'Category object', '3', '', '8', '1');
INSERT INTO `django_admin_log` VALUES ('45', '2018-02-28 15:36:09.580918', '1', '纯粹', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('46', '2018-02-28 15:36:12.720098', '2', '属于自己的纯粹', '2', '[{\"changed\": {\"fields\": [\"category\"]}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('47', '2018-03-01 13:59:51.328195', '6', '相册', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('48', '2018-03-01 13:59:55.605896', '7', '留言', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('49', '2018-03-01 14:00:22.192966', '3', '心情', '2', '[{\"changed\": {\"fields\": [\"index\"]}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('50', '2018-03-01 14:00:28.852618', '6', '相册', '2', '[{\"changed\": {\"fields\": [\"index\"]}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('51', '2018-03-01 14:00:54.196715', '2', '文章', '2', '[{\"changed\": {\"fields\": [\"index\"]}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('52', '2018-03-01 14:00:59.483918', '3', '心情', '2', '[{\"changed\": {\"fields\": [\"index\"]}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('53', '2018-03-01 14:01:06.482628', '6', '相册', '2', '[{\"changed\": {\"fields\": [\"index\"]}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('54', '2018-03-01 14:01:22.495176', '7', '留言', '2', '[{\"changed\": {\"fields\": [\"index\"]}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('55', '2018-03-01 14:01:39.146864', '4', '关于我', '2', '[{\"changed\": {\"fields\": [\"index\"]}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('56', '2018-03-01 14:01:42.932042', '5', '联系我', '2', '[{\"changed\": {\"fields\": [\"index\"]}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('57', '2018-03-07 14:00:45.925037', '2', '生命', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('58', '2018-03-07 14:00:48.405571', '6', '珍惜时间，珍爱生活，珍重生命', '2', '[{\"changed\": {\"fields\": [\"content\", \"category\"]}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('59', '2018-03-07 14:01:17.870688', '3', '人生', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('60', '2018-03-07 14:01:19.308568', '5', '万水千山走遍', '2', '[{\"changed\": {\"fields\": [\"category\"]}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('61', '2018-03-07 14:01:38.357393', '4', '清醒奋斗', '2', '[{\"changed\": {\"fields\": [\"category\"]}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('62', '2018-03-07 14:01:48.457069', '3', '计划与人生', '2', '[{\"changed\": {\"fields\": [\"category\"]}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('63', '2018-03-07 14:02:09.731470', '1', '陌生人，愿您安好！', '2', '[{\"changed\": {\"fields\": [\"category\"]}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('64', '2018-03-07 15:09:17.781986', '2', 'eedxie', '2', '[{\"changed\": {\"fields\": [\"avatar\"]}}]', '6', '1');
INSERT INTO `django_admin_log` VALUES ('65', '2018-03-08 13:48:10.752423', '2', '迷你键盘', '2', '[{\"changed\": {\"fields\": [\"image_url\"]}}]', '12', '1');
INSERT INTO `django_admin_log` VALUES ('66', '2018-03-08 13:48:23.384145', '1', 'iPhone 4', '2', '[{\"changed\": {\"fields\": [\"image_url\"]}}]', '12', '1');
INSERT INTO `django_admin_log` VALUES ('67', '2018-03-08 13:49:22.117505', '6', '珍惜时间，珍爱生活，珍重生命', '2', '[{\"changed\": {\"fields\": [\"content\"]}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('68', '2018-03-13 13:18:08.629086', '10', '10', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('69', '2018-03-13 13:49:26.904659', '8', '8', '2', '[{\"changed\": {\"fields\": [\"pid\"]}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('70', '2018-03-13 15:25:21.174394', '1', '百度', '1', '[{\"added\": {}}]', '11', '1');
INSERT INTO `django_admin_log` VALUES ('71', '2018-03-13 15:26:05.174911', '2', '阿里云', '1', '[{\"added\": {}}]', '11', '1');
INSERT INTO `django_admin_log` VALUES ('72', '2018-03-13 15:26:49.696458', '3', '麦子学院', '1', '[{\"added\": {}}]', '11', '1');
INSERT INTO `django_admin_log` VALUES ('73', '2018-03-13 15:30:39.268588', '3', '麦子学院', '2', '[{\"changed\": {\"fields\": [\"index\"]}}]', '11', '1');
INSERT INTO `django_admin_log` VALUES ('74', '2018-03-14 10:17:15.703004', '6', '相册', '3', '', '8', '1');
INSERT INTO `django_admin_log` VALUES ('75', '2018-03-14 10:17:15.708004', '7', '留言', '3', '', '8', '1');
INSERT INTO `django_admin_log` VALUES ('76', '2018-03-14 10:17:15.713004', '4', '关于我', '3', '', '8', '1');
INSERT INTO `django_admin_log` VALUES ('77', '2018-03-14 10:17:15.718004', '5', '联系我', '3', '', '8', '1');

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('12', 'blog', 'ad');
INSERT INTO `django_content_type` VALUES ('9', 'blog', 'article');
INSERT INTO `django_content_type` VALUES ('8', 'blog', 'category');
INSERT INTO `django_content_type` VALUES ('10', 'blog', 'comment');
INSERT INTO `django_content_type` VALUES ('11', 'blog', 'links');
INSERT INTO `django_content_type` VALUES ('7', 'blog', 'tag');
INSERT INTO `django_content_type` VALUES ('6', 'blog', 'user');
INSERT INTO `django_content_type` VALUES ('4', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('5', 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2017-12-20 01:06:12.896000');
INSERT INTO `django_migrations` VALUES ('2', 'contenttypes', '0002_remove_content_type_name', '2017-12-20 01:06:13.017000');
INSERT INTO `django_migrations` VALUES ('3', 'auth', '0001_initial', '2017-12-20 01:06:13.425000');
INSERT INTO `django_migrations` VALUES ('4', 'auth', '0002_alter_permission_name_max_length', '2017-12-20 01:06:13.504000');
INSERT INTO `django_migrations` VALUES ('5', 'auth', '0003_alter_user_email_max_length', '2017-12-20 01:06:13.513000');
INSERT INTO `django_migrations` VALUES ('6', 'auth', '0004_alter_user_username_opts', '2017-12-20 01:06:13.523000');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0005_alter_user_last_login_null', '2017-12-20 01:06:13.534000');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0006_require_contenttypes_0002', '2017-12-20 01:06:13.538000');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0007_alter_validators_add_error_messages', '2017-12-20 01:06:13.548000');
INSERT INTO `django_migrations` VALUES ('10', 'blog', '0001_initial', '2017-12-20 01:06:14.963000');
INSERT INTO `django_migrations` VALUES ('11', 'admin', '0001_initial', '2017-12-20 01:06:15.156000');
INSERT INTO `django_migrations` VALUES ('12', 'admin', '0002_logentry_remove_auto_add', '2017-12-20 01:06:15.187000');
INSERT INTO `django_migrations` VALUES ('13', 'sessions', '0001_initial', '2017-12-20 01:06:15.241000');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('3zdfj3jrkqgmqxdi8d9u9qjbx8zk5qv9', 'NDU3NDI3ZDlmYWRhMWU5NWJmMGJiMjMwZWM0NTk2ODUyZjhmNzhiNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyMzhmMjhmMGQ5ZmY1ZTViNjEwZDA3OTdhN2NkYWNjZDg0NmViNTE3In0=', '2018-03-28 09:59:36.294004');
INSERT INTO `django_session` VALUES ('g03j7m6oblbx99i5z7m53ykw29vr9anb', 'NDU3NDI3ZDlmYWRhMWU5NWJmMGJiMjMwZWM0NTk2ODUyZjhmNzhiNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyMzhmMjhmMGQ5ZmY1ZTViNjEwZDA3OTdhN2NkYWNjZDg0NmViNTE3In0=', '2018-03-28 01:28:53.476020');
INSERT INTO `django_session` VALUES ('gvy9ers4ic6ww9m6jnqw2lsxjoxzb0ad', 'ODBjZjEyOWQyZTIzNWZhNTNjZWJhZDkwZTIxZDQxNTk2MDE5ZDA1ODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlZTg5NDM5NjFlNTY3MTcxYmY1M2U0NmUzNjJmNDY0MTRlYjNlMTFiIn0=', '2018-02-03 05:08:15.102407');
INSERT INTO `django_session` VALUES ('rad48j8o8ylkz5dszl1r5kv46xchrp0p', 'ODBjZjEyOWQyZTIzNWZhNTNjZWJhZDkwZTIxZDQxNTk2MDE5ZDA1ODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlZTg5NDM5NjFlNTY3MTcxYmY1M2U0NmUzNjJmNDY0MTRlYjNlMTFiIn0=', '2018-01-03 01:07:36.500000');
INSERT INTO `django_session` VALUES ('tvmm6939l4wnh7sf3xvjrubplsxqn1qk', 'NDU3NDI3ZDlmYWRhMWU5NWJmMGJiMjMwZWM0NTk2ODUyZjhmNzhiNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyMzhmMjhmMGQ5ZmY1ZTViNjEwZDA3OTdhN2NkYWNjZDg0NmViNTE3In0=', '2018-03-27 14:10:00.980854');
INSERT INTO `django_session` VALUES ('wzls0nz89f4k1o4yeqc176m5p6z914d6', 'ODBjZjEyOWQyZTIzNWZhNTNjZWJhZDkwZTIxZDQxNTk2MDE5ZDA1ODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlZTg5NDM5NjFlNTY3MTcxYmY1M2U0NmUzNjJmNDY0MTRlYjNlMTFiIn0=', '2018-01-23 06:43:53.307000');
INSERT INTO `django_session` VALUES ('yuvwvdkdghzecz0lptu9cr7067tj4jv3', 'NDU3NDI3ZDlmYWRhMWU5NWJmMGJiMjMwZWM0NTk2ODUyZjhmNzhiNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyMzhmMjhmMGQ5ZmY1ZTViNjEwZDA3OTdhN2NkYWNjZDg0NmViNTE3In0=', '2018-03-21 14:18:38.654869');
