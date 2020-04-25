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

 Date: 25/04/2020 23:14:14
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for fa_article
-- ----------------------------
DROP TABLE IF EXISTS `fa_article`;
CREATE TABLE `fa_article`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '文章标题',
  `keywords` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '关键字',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '图片',
  `vediofile` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '视频',
  `createtime` int(10) NULL DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) NULL DEFAULT NULL COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT 0 COMMENT '权重',
  `status` enum('0','1') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1' COMMENT '状态:1=显示,0=不显示',
  `types` enum('1','2','3') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1' COMMENT '类型:1=视频,2=图片,3=文章',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fa_article
-- ----------------------------
INSERT INTO `fa_article` VALUES (1, '测试123', '关键字111', '将你的故事心情、优美的图片、有共鸣的音乐以及心动的视频随时随地分享', '/uploads/20200425/f86df36bee47335d299a6fda54ec03dd.jpg', '', 1587568353, 1587820523, 1, '1', '2');
INSERT INTO `fa_article` VALUES (2, '测试12345', '', '', '', '', 1587654709, 1587654709, 2, '1', '3');
INSERT INTO `fa_article` VALUES (3, '视频制作123', '视频关键字123', '寻找最真实的自己，发现新奇或美好的、 珍贵的事物，制作成影片和音乐123；寻找最真实的自己，发现新奇或美好的、 珍贵的事物，制作成影片和音乐', '/uploads/20200425/76d5432dd97d43b2d334a85f5bcf48b5.png', '/uploads/20200425/04d615ba38bdb73aaf2ee200d826b00c.mp4', 1587808805, 1587823394, 3, '1', '1');

SET FOREIGN_KEY_CHECKS = 1;
