/*
Navicat MySQL Data Transfer

Source Server         : lye
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : library

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2020-04-09 12:51:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `publish` varchar(255) DEFAULT NULL,
  `pages` int(50) DEFAULT NULL,
  `price` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES ('1', '追风筝的人', '卡勒德胡赛尼', '上海人名出版社', '230', '33.5');
INSERT INTO `book` VALUES ('2', '人间失格', '太宰治', '作家出版社', '150', '17');
INSERT INTO `book` VALUES ('3', '白夜行', '东野圭吾', '南海出版社', '300', '22.5');
