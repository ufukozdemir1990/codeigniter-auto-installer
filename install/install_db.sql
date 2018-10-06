/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50721
 Source Host           : localhost:3306
 Source Schema         : example

 Target Server Type    : MySQL
 Target Server Version : 50721
 File Encoding         : 65001

 Date: 06/10/2018 10:08:19
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for example_table
-- ----------------------------
DROP TABLE IF EXISTS `example_table`;
CREATE TABLE `example_table` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of example_table
-- ----------------------------
BEGIN;
INSERT INTO `example_table` VALUES (1, 'CodeIgniter 4.0.0-alpha.1 released');
INSERT INTO `example_table` VALUES (2, 'CodeIgniter 3.1.9 released');
INSERT INTO `example_table` VALUES (3, 'CodeIgniter 3.1.8 Released');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;