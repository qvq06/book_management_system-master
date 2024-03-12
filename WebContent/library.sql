/*
 Navicat Premium Data Transfer

 Source Server         : myTest
 Source Server Type    : MySQL
 Source Server Version : 80030 (8.0.30)
 Source Host           : localhost:3306
 Source Schema         : library

 Target Server Type    : MySQL
 Target Server Version : 80030 (8.0.30)
 File Encoding         : 65001

 Date: 21/12/2022 15:58:16
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `userid` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `uname` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  `lend` int NULL DEFAULT NULL,
  `max` int NULL DEFAULT NULL,
  PRIMARY KEY (`userid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', '1', '1', '1', '1', 1, 1, 1);
INSERT INTO `admin` VALUES ('14123', '章三', '111111', '124@163.com', '18721391111', 1, 30, 5);
INSERT INTO `admin` VALUES ('14124', '里四', '123123', '125@163.com', '13865430145', 1, 30, 5);
INSERT INTO `admin` VALUES ('14125', '汪五', '123123', '126@163.com', '15155415341', 1, 30, 5);
INSERT INTO `admin` VALUES ('15001', '李浩', '123123', '123@qq.com', '15155415348', 2, 30, 5);

-- ----------------------------
-- Table structure for apply
-- ----------------------------
DROP TABLE IF EXISTS `apply`;
CREATE TABLE `apply`  (
  `aid` int NOT NULL AUTO_INCREMENT,
  `cn` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  `bname` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  `userid` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  `year` int NULL DEFAULT NULL,
  `volume` int NULL DEFAULT NULL,
  `issue` int NULL DEFAULT NULL,
  `astatus` int NULL DEFAULT NULL,
  `place` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  `applytime` datetime NULL DEFAULT NULL,
  `endtime` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`aid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of apply
-- ----------------------------
INSERT INTO `apply` VALUES (9, '11-2109/TP', '自动化学报', '14123', 2017, 43, 1, 2, '蜀山校区', '2022-11-18 15:34:29', '2022-11-18 15:37:54');
INSERT INTO `apply` VALUES (10, '11-1826TP', '计算机学报', '14123', 2017, 40, 2, 1, '蜀山校区', '2022-11-18 15:34:38', '2022-11-18 15:37:57');
INSERT INTO `apply` VALUES (11, '11-1302/C', '统计研究', '14123', 2014, 31, 1, 1, '蜀山校区', '2022-11-20 20:33:47', '2022-11-20 20:37:17');

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book`  (
  `bid` int NOT NULL AUTO_INCREMENT,
  `cn` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  `bname` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  `year` int NULL DEFAULT NULL,
  `volume` int NULL DEFAULT NULL,
  `issue` int NULL DEFAULT NULL,
  `library` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  `bstatus` int NULL DEFAULT NULL,
  PRIMARY KEY (`bid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES (1, '11-2109/TP', '自动化学报', 2017, 43, 1, '文典阁', 0);
INSERT INTO `book` VALUES (2, '11-2109/TP', '自动化学报', 2017, 43, 2, '文典阁', 0);
INSERT INTO `book` VALUES (3, '11-2109/TP', '自动化学报', 2017, 43, 3, '文典阁', 0);
INSERT INTO `book` VALUES (4, '11-1826TP', '计算机学报', 2017, 40, 1, '逸夫馆', 0);
INSERT INTO `book` VALUES (5, '11-1826TP', '计算机学报', 2017, 40, 2, '逸夫馆', 0);
INSERT INTO `book` VALUES (6, '11-1302/C', '统计研究', 2014, 31, 1, '金寨路馆', 0);
INSERT INTO `book` VALUES (7, '11-1826TP', '计算机学报', 2015, 38, 8, '蜀山馆', 0);

-- ----------------------------
-- Table structure for catalogue
-- ----------------------------
DROP TABLE IF EXISTS `catalogue`;
CREATE TABLE `catalogue`  (
  `cid` int NOT NULL AUTO_INCREMENT,
  `cn` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  `issn` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  `bname` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  `pcode` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  `publish` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  `place` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  `press` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`cid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of catalogue
-- ----------------------------
INSERT INTO `catalogue` VALUES (1, '11-2109/TP', '02544156', '自动化学报', '2-180', '月刊', '北京', '中国自动化学会');
INSERT INTO `catalogue` VALUES (2, '11-1302/C', '10024565', '统计研究', '82-14', '月刊', '北京', '中国统计学会');
INSERT INTO `catalogue` VALUES (3, '11-1826/TP', '02544164', '计算机学报', '2-833', '月刊', '北京', '中国科学院计算机技术研究所');
INSERT INTO `catalogue` VALUES (4, '11-1777/TP', '10001239', '计算机研究与发展', '2-654', '月刊', '北京', '中国科学院计算机技术研究所');
INSERT INTO `catalogue` VALUES (5, '11-2560/TP', '10009825', '软件学报', '82-367', '月刊', '北京', '中国科学院软件研究所');

-- ----------------------------
-- Table structure for history
-- ----------------------------
DROP TABLE IF EXISTS `history`;
CREATE TABLE `history`  (
  `hid` int NOT NULL AUTO_INCREMENT,
  `bid` int NULL DEFAULT NULL,
  `cn` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  `bname` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  `year` int NULL DEFAULT NULL,
  `volume` int NULL DEFAULT NULL,
  `issue` int NULL DEFAULT NULL,
  `userid` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  `begintime` datetime NULL DEFAULT NULL,
  `endttime` datetime NULL DEFAULT NULL,
  `hstatus` int NULL DEFAULT NULL,
  PRIMARY KEY (`hid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of history
-- ----------------------------
INSERT INTO `history` VALUES (26, 1, '11-2109/TP', '自动化学报', 2017, 43, 1, '14123', '2022-11-15 15:29:07', '2022-11-15 15:29:20', 0);
INSERT INTO `history` VALUES (27, 4, '11-1826TP', '计算机学报', 2017, 40, 1, '14124', '2022-11-18 15:37:22', '2022-11-18 15:37:34', 0);
INSERT INTO `history` VALUES (28, 1, '11-2109/TP', '自动化学报', 2017, 43, 1, '14125', '2022-11-18 15:38:46', '2022-11-18 15:39:06', 0);
INSERT INTO `history` VALUES (29, 5, '11-1826TP', '计算机学报', 2017, 40, 2, '14125', '2022-11-18 15:38:59', '2022-11-18 15:39:09', 0);
INSERT INTO `history` VALUES (30, 0, NULL, NULL, 0, 0, 0, '14123', '2022-11-20 20:33:33', '2022-12-20 20:33:33', 1);
INSERT INTO `history` VALUES (31, 4, '11-1826TP', '计算机学报', 2017, 40, 1, '14123', '2022-11-20 20:33:58', '2022-11-20 20:36:56', 0);

-- ----------------------------
-- Table structure for subsc
-- ----------------------------
DROP TABLE IF EXISTS `subsc`;
CREATE TABLE `subsc`  (
  `sid` int NOT NULL AUTO_INCREMENT,
  `cn` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  `bname` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  `syear` int NULL DEFAULT NULL,
  PRIMARY KEY (`sid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of subsc
-- ----------------------------
INSERT INTO `subsc` VALUES (1, '11-2560TP', '软件学报', 2023);
INSERT INTO `subsc` VALUES (2, '11-1826TP', '计算机学报', 2023);
INSERT INTO `subsc` VALUES (3, '11-2560/TP', '软件学报', 2022);
INSERT INTO `subsc` VALUES (4, '11-1826TP', '计算机学报', 2022);
INSERT INTO `subsc` VALUES (5, '11-2109/TP', '自动化学报', 2021);
INSERT INTO `subsc` VALUES (6, '11-1302/C', '统计研究', 2021);
INSERT INTO `subsc` VALUES (7, '11-1826TP', '计算机学报', 2021);
INSERT INTO `subsc` VALUES (8, '11-2109/TP', '自动化学报', 2020);
INSERT INTO `subsc` VALUES (9, '11-1302/C', '统计研究', 2020);
INSERT INTO `subsc` VALUES (10, '11-1826TP', '计算机学报', 2020);
INSERT INTO `subsc` VALUES (11, '11-2109/TP', '自动化学报', 2019);
INSERT INTO `subsc` VALUES (12, '11-1302/C', '统计研究', 2019);
INSERT INTO `subsc` VALUES (13, '11-1826TP', '计算机学报', 2019);
INSERT INTO `subsc` VALUES (14, '11-1777/TP', '计算机研究与发展', 2019);

SET FOREIGN_KEY_CHECKS = 1;
