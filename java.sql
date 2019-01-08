/*
Navicat MySQL Data Transfer

Source Server         : 腾讯数据库
Source Server Version : 50718
Source Host           : cdb-qx80diyu.cd.tencentcdb.com:10017
Source Database       : java

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2019-01-08 18:12:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `bottle`
-- ----------------------------
DROP TABLE IF EXISTS `bottle`;
CREATE TABLE `bottle` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `message` text,
  `kinds` int(2) NOT NULL DEFAULT '0',
  `state` int(2) NOT NULL DEFAULT '0',
  `create_time` date NOT NULL,
  `uid` int(10) NOT NULL,
  `update_time` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bottle
-- ----------------------------
INSERT INTO `bottle` VALUES ('5', '新版第一个漂流瓶|xx', '0', '0', '2018-12-26', '4', '2018-12-28');
INSERT INTO `bottle` VALUES ('6', '测试提问瓶|回答', '2', '0', '2018-12-26', '1', '2018-12-28');
INSERT INTO `bottle` VALUES ('12', '一个问题|回答改变了', '2', '0', '2018-12-27', '13', '2018-12-28');
INSERT INTO `bottle` VALUES ('18', '123123', '0', '15', '2018-12-27', '14', '2018-12-28');
INSERT INTO `bottle` VALUES ('20', '2|有心事', '1', '13', '2018-12-28', '15', '2018-12-28');
INSERT INTO `bottle` VALUES ('21', '1231|', '2', '13', '2018-12-28', '16', '2018-12-28');
INSERT INTO `bottle` VALUES ('22', '1|自闭了|哦', '1', '0', '2018-12-28', '13', '2018-12-29');
INSERT INTO `bottle` VALUES ('23', '1|自闭了', '1', '13', '2018-12-28', '14', '2018-12-28');
INSERT INTO `bottle` VALUES ('25', '12345，上山打老虎，老虎打不到，打到小松鼠|', '2', '13', '2018-12-28', '13', '2018-12-28');
INSERT INTO `bottle` VALUES ('26', '看过可以|', '2', '14', '2018-12-28', '14', '2018-12-28');
INSERT INTO `bottle` VALUES ('30', 'what is your name?|', '2', '17', '2018-12-28', '17', '2018-12-28');
INSERT INTO `bottle` VALUES ('32', '傻逼文婵妮', '0', '20', '2018-12-28', '14', '2018-12-28');
INSERT INTO `bottle` VALUES ('33', '你是施安娴吗??|不是\n', '2', '19', '2018-12-28', '17', '2018-12-28');
INSERT INTO `bottle` VALUES ('34', '请问申月小哥哥的QQ？|1111', '2', '14', '2018-12-28', '14', '2018-12-28');
INSERT INTO `bottle` VALUES ('35', '你好，你是施安娴吗？？？|', '2', '14', '2018-12-28', '18', '2018-12-28');
INSERT INTO `bottle` VALUES ('36', 'hi', '0', '14', '2018-12-28', '18', '2018-12-28');
INSERT INTO `bottle` VALUES ('37', '1|心情有点遭', '1', '14', '2018-12-28', '13', '2018-12-28');
INSERT INTO `bottle` VALUES ('38', '测试文本', '0', '20', '2018-12-28', '20', '2018-12-28');
INSERT INTO `bottle` VALUES ('39', '你在干什么|', '2', '0', '2018-12-28', '13', '2018-12-28');
INSERT INTO `bottle` VALUES ('40', '1|要考试了烦人|没关系', '1', '0', '2018-12-28', '13', '2018-12-28');
INSERT INTO `bottle` VALUES ('41', '0|开心', '1', '0', '2018-12-28', '13', '2018-12-28');
INSERT INTO `bottle` VALUES ('42', '0|今天天气不错', '1', '25', '2018-12-28', '13', '2018-12-29');
INSERT INTO `bottle` VALUES ('43', '随便扔一个', '0', '0', '2018-12-29', '25', '2018-12-29');

-- ----------------------------
-- Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `uid` int(10) NOT NULL AUTO_INCREMENT,
  `uname` varchar(50) NOT NULL,
  `pwd` varchar(50) NOT NULL,
  `sex` int(2) NOT NULL,
  `birth` date DEFAULT NULL,
  `pick_up_times` int(3) NOT NULL DEFAULT '3',
  `throw_times` int(3) NOT NULL DEFAULT '6',
  PRIMARY KEY (`uid`,`uname`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', '张三', 'asd', '0', '1998-11-09', '3', '6');
INSERT INTO `t_user` VALUES ('2', '李四', '123', '0', '1998-11-10', '3', '6');
INSERT INTO `t_user` VALUES ('3', '王五', '789', '1', '1998-11-10', '3', '6');
INSERT INTO `t_user` VALUES ('4', '小六子', '456', '1', '1998-11-10', '3', '6');
INSERT INTO `t_user` VALUES ('5', '花花', '147', '0', '1998-11-10', '3', '6');
INSERT INTO `t_user` VALUES ('6', '申月', 'sb', '0', '2018-12-25', '3', '6');
INSERT INTO `t_user` VALUES ('7', '小月月', '123', '1', '2018-11-10', '3', '6');
INSERT INTO `t_user` VALUES ('8', 'test', '123', '1', '1110-12-31', '3', '6');
INSERT INTO `t_user` VALUES ('9', 'test2', '123', '0', '1110-12-31', '3', '6');
INSERT INTO `t_user` VALUES ('10', 'test3', '123', '0', '2018-12-09', '3', '6');
INSERT INTO `t_user` VALUES ('11', 'test4', '123', '0', null, '3', '6');
INSERT INTO `t_user` VALUES ('12', '小幺', '123', '1', null, '3', '6');
INSERT INTO `t_user` VALUES ('13', '456', '123', '0', '1998-12-27', '0', '2');
INSERT INTO `t_user` VALUES ('14', '1234', '1234', '0', null, '2', '6');
INSERT INTO `t_user` VALUES ('15', '111', '111', '0', '8101-12-31', '3', '6');
INSERT INTO `t_user` VALUES ('16', '222', '222', '0', '0123-11-30', '3', '6');
INSERT INTO `t_user` VALUES ('17', 'KKK', '123456789', '1', '1999-06-01', '3', '6');
INSERT INTO `t_user` VALUES ('18', 'wcn', '1234', '1', '2000-08-10', '3', '6');
INSERT INTO `t_user` VALUES ('19', '小月月', '123456', '0', '1999-11-29', '3', '6');
INSERT INTO `t_user` VALUES ('20', '测试233', '123456', '0', '1969-12-31', '1', '5');
INSERT INTO `t_user` VALUES ('21', 'AB', '987', '0', '1998-11-10', '3', '6');
INSERT INTO `t_user` VALUES ('22', '123', '123', '0', null, '3', '6');
INSERT INTO `t_user` VALUES ('23', '啊啊', '1111', '0', null, '3', '6');
INSERT INTO `t_user` VALUES ('24', 'qq', '999', '0', null, '3', '6');
INSERT INTO `t_user` VALUES ('25', '123456', '123456', '0', '1969-12-31', '1', '5');
