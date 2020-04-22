/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : fastadmin

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 23/04/2020 00:47:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for fa_banners
-- ----------------------------
DROP TABLE IF EXISTS `fa_banners`;
CREATE TABLE `fa_banners`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `banner_image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '轮播图',
  `weigh` int(255) NOT NULL DEFAULT 0 COMMENT '排序',
  `createtime` int(10) NULL DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) NULL DEFAULT NULL COMMENT '更新时间',
  `status` enum('0','1') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1' COMMENT '状态:1=显示,0=不显示',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fa_banners
-- ----------------------------
INSERT INTO `fa_banners` VALUES (1, '/uploads/20200422/a8cdbfd9f245ce460e9698fe30127383.png', 2, 1587569864, 1587569864, '1');
INSERT INTO `fa_banners` VALUES (2, '/uploads/20200422/994a47f3727a6c1ef14f9e067ab38b05.png', 3, 1587569886, 1587569959, '1');
INSERT INTO `fa_banners` VALUES (3, '/uploads/20200422/358794a48faf153b34ba712b733800ea.png', 1, 1587569907, 1587569907, '1');
INSERT INTO `fa_banners` VALUES (4, '/uploads/20200422/4d1456b2b230121ba2a9dd67858111f1.png', 4, 1587569983, 1587569983, '1');

SET FOREIGN_KEY_CHECKS = 1;
