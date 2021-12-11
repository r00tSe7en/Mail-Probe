/*
 Navicat Premium Data Transfer

 Source Server         : 127.0.0.1
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : mail

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 01/10/2020 16:06:42
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for mail_admin
-- ----------------------------
DROP TABLE IF EXISTS `mail_admin`;
CREATE TABLE `mail_admin`  (
  `uid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `account` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '账户',
  `password` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '密码',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '姓名',
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '后台管理员' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mail_admin
-- ----------------------------
INSERT INTO `mail_admin` VALUES (1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'admin');

-- ----------------------------
-- Table structure for mail_goods
-- ----------------------------
DROP TABLE IF EXISTS `mail_goods`;
CREATE TABLE `mail_goods`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT ' ID',
  `random` int(10) UNSIGNED NOT NULL DEFAULT 1 COMMENT '随机码',
  `mail` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '邮件地址',
  `ip` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'IP地址',
  `agent` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'UA',
  `add_time` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '商品表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mail_goods
-- ----------------------------
INSERT INTO `mail_goods` VALUES (1, 486516, 'mail1@qq.com', '103.144.213.63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36', '2020-10-01 01:01:52');
INSERT INTO `mail_goods` VALUES (2, 855113, 'mail2@qq.com', '181.39.74.210', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36', '2020-10-01 01:02:14');
INSERT INTO `mail_goods` VALUES (3, 847177, 'mail3@qq.com', '103.86.49.193', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36', '2020-10-01 13:03:18');
INSERT INTO `mail_goods` VALUES (4, 582678, 'mail4@163.com', '97.73.2.94', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36', '2020-10-01 13:03:43');
INSERT INTO `mail_goods` VALUES (5, 311498, 'mail5@163.com', '103.122.67.228', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36', '2020-10-01 14:37:09');
INSERT INTO `mail_goods` VALUES (6, 392721, 'mail6@163.com', '103.47.67.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36', '2020-10-01 14:37:44');

-- ----------------------------
-- Table structure for mail_menu
-- ----------------------------
DROP TABLE IF EXISTS `mail_menu`;
CREATE TABLE `mail_menu`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '菜单名',
  `fid` int(10) NOT NULL COMMENT '父ID',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态 1开启 2关闭',
  `controller` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'url',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '左侧菜单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mail_menu
-- ----------------------------
INSERT INTO `mail_menu` VALUES (1, '信息管理', 0, 1, '');
INSERT INTO `mail_menu` VALUES (2, '信息列表', 1, 1, 'Index');
INSERT INTO `mail_menu` VALUES (5, '关于程序', 3, 1, 'About');
INSERT INTO `mail_menu` VALUES (3, '个人中心', 0, 1, '');
INSERT INTO `mail_menu` VALUES (4, '链接生成', 3, 1, 'Url');

SET FOREIGN_KEY_CHECKS = 1;
