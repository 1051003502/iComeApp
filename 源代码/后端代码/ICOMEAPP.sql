/*
Navicat MySQL Data Transfer

Source Server         : 阿里云mysql
Source Server Version : 50633
Source Host           : 39.96.40.150:3306
Source Database       : ICOMEAPP

Target Server Type    : MYSQL
Target Server Version : 50633
File Encoding         : 65001

Date: 2019-07-17 10:56:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for 123123-teacher_zhangju
-- ----------------------------
DROP TABLE IF EXISTS `123123-teacher_zhangju`;
CREATE TABLE `123123-teacher_zhangju` (
  `usr1_id` varchar(200) NOT NULL,
  `sign` varchar(20) NOT NULL,
  `submit` varchar(20) NOT NULL,
  PRIMARY KEY (`usr1_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of 123123-teacher_zhangju
-- ----------------------------

-- ----------------------------
-- Table structure for num-class
-- ----------------------------
DROP TABLE IF EXISTS `num-class`;
CREATE TABLE `num-class` (
  `invite_num` varchar(10) NOT NULL,
  `class_name` varchar(255) NOT NULL,
  PRIMARY KEY (`invite_num`,`class_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of num-class
-- ----------------------------
INSERT INTO `num-class` VALUES ('1028', '123123-teacher_zhangju');
INSERT INTO `num-class` VALUES ('1029', 'wangluo-teacher_zhangju');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `id` varchar(20) NOT NULL,
  `passwd` varchar(20) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `class_id` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('teacher1', '123456', '黄大海', '{\"t_class_id\": []}');
INSERT INTO `teacher` VALUES ('teacher2', '123456', '正二', '{\"t_class_id\": []}');
INSERT INTO `teacher` VALUES ('teacher3', '123456', '李三', '{\"t_class_id\": []}');
INSERT INTO `teacher` VALUES ('teacher4', '123456', '赵四', '{\"t_class_id\": []}');
INSERT INTO `teacher` VALUES ('teacher5', '123456', '王无', '{\"t_class_id\": []}');
INSERT INTO `teacher` VALUES ('teacher_zhangju', '123456', '张举', '{\"t_class_id\": [\"123123\", \"wangluo\"]}');

-- ----------------------------
-- Table structure for usr1
-- ----------------------------
DROP TABLE IF EXISTS `usr1`;
CREATE TABLE `usr1` (
  `id` varchar(20) NOT NULL,
  `name` text,
  `password` text,
  `face_token` text,
  `sex` char(1) DEFAULT NULL,
  `class_id` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usr1
-- ----------------------------
INSERT INTO `usr1` VALUES ('1', '心心1', '1', '36fd75a49be7fff05490fa2ddb5d2418', '1', '{\"s_class_id\": []}');
INSERT INTO `usr1` VALUES ('12345', '12345 呵呵', '1', '0f347bba3c01c2709d26a3c912477c9c', '1', '{\"s_class_id\": []}');
INSERT INTO `usr1` VALUES ('2', '啊', '2', 'c0d0817c6344db8d9b826e89ea2d8917', '1', '{\"s_class_id\": []}');

-- ----------------------------
-- Table structure for wangluo-teacher_zhangju
-- ----------------------------
DROP TABLE IF EXISTS `wangluo-teacher_zhangju`;
CREATE TABLE `wangluo-teacher_zhangju` (
  `usr1_id` varchar(200) NOT NULL,
  `sign` varchar(20) NOT NULL,
  `submit` varchar(20) NOT NULL,
  PRIMARY KEY (`usr1_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of wangluo-teacher_zhangju
-- ----------------------------
