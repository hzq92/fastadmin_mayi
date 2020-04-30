/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : mayi

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 30/04/2020 09:51:41
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for fa_admin
-- ----------------------------
DROP TABLE IF EXISTS `fa_admin`;
CREATE TABLE `fa_admin`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `nickname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '昵称',
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '密码',
  `salt` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '密码盐',
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '头像',
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '电子邮箱',
  `loginfailure` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '失败次数',
  `logintime` int(10) NULL DEFAULT NULL COMMENT '登录时间',
  `loginip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登录IP',
  `createtime` int(10) NULL DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) NULL DEFAULT NULL COMMENT '更新时间',
  `token` varchar(59) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'Session标识',
  `status` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'normal' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '管理员表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fa_admin
-- ----------------------------
INSERT INTO `fa_admin` VALUES (1, 'admin', 'Admin', 'ac31dec89a4d6e66e8475a505a4124b3', '123518', '/assets/img/avatar.png', 'admin@admin.com', 0, 1588211113, '127.0.0.1', 1492186163, 1588211113, 'c8589c81-b378-4e4c-9d26-8dc7710ed89b', 'normal');

-- ----------------------------
-- Table structure for fa_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `fa_admin_log`;
CREATE TABLE `fa_admin_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `admin_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '管理员ID',
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '管理员名字',
  `url` varchar(1500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '操作页面',
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '日志标题',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  `ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'IP',
  `useragent` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'User-Agent',
  `createtime` int(10) NULL DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `name`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 141 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '管理员日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fa_admin_log
-- ----------------------------
INSERT INTO `fa_admin_log` VALUES (1, 0, 'Unknown', '/GyISFgcCkX.php/index/login?url=%2FGyISFgcCkX.php', '', '{\"url\":\"\\/GyISFgcCkX.php\",\"__token__\":\"d50008be4e38adf2e6cef61156f3b630\",\"username\":\"admin\",\"captcha\":\"uvko\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 1584882142);
INSERT INTO `fa_admin_log` VALUES (2, 1, 'admin', '/GyISFgcCkX.php/index/login?url=%2FGyISFgcCkX.php', '登录', '{\"url\":\"\\/GyISFgcCkX.php\",\"__token__\":\"7ac69407f6fa307b4770c4c16627515e\",\"username\":\"admin\",\"captcha\":\"mpmh\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 1584882150);
INSERT INTO `fa_admin_log` VALUES (3, 0, 'Unknown', '/GyISFgcCkX.php/index/login?url=%2FGyISFgcCkX.php', '', '{\"url\":\"\\/GyISFgcCkX.php\",\"__token__\":\"59d583cc5bdd9c24901bd7229c6fc5ab\",\"username\":\"admin\",\"captcha\":\"oxie\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 1584973496);
INSERT INTO `fa_admin_log` VALUES (4, 1, 'admin', '/GyISFgcCkX.php/index/login?url=%2FGyISFgcCkX.php', '登录', '{\"url\":\"\\/GyISFgcCkX.php\",\"__token__\":\"f72c425ed6fa150f7fa23be22489e4c9\",\"username\":\"admin\",\"captcha\":\"3e42\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 1584973503);
INSERT INTO `fa_admin_log` VALUES (5, 1, 'admin', '/houtai.php/auth/rule/edit/ids/1?dialog=1', '权限管理 菜单规则 编辑', '{\"dialog\":\"1\",\"__token__\":\"7ee85cb9b946c7f3af37368e231d4dd8\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"dashboard\",\"title\":\"\\u63a7\\u5236\\u53f0\",\"icon\":\"fa fa-dashboard\",\"weigh\":\"143\",\"condition\":\"\",\"remark\":\"Dashboard tips\",\"status\":\"hidden\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 1584975683);
INSERT INTO `fa_admin_log` VALUES (6, 1, 'admin', '/houtai.php/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 1584975683);
INSERT INTO `fa_admin_log` VALUES (7, 1, 'admin', '/houtai.php/auth/group/roletree', '权限管理 角色组', '{\"id\":\"2\",\"pid\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 1584975731);
INSERT INTO `fa_admin_log` VALUES (8, 1, 'admin', '/houtai.php/auth/rule/edit/ids/4?dialog=1', '权限管理 菜单规则 编辑', '{\"dialog\":\"1\",\"__token__\":\"d56efa4c208ecde08bd63775fa07ed67\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"addon\",\"title\":\"\\u63d2\\u4ef6\\u7ba1\\u7406\",\"icon\":\"fa fa-rocket\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"Addon tips\",\"status\":\"hidden\"},\"ids\":\"4\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 1584975774);
INSERT INTO `fa_admin_log` VALUES (9, 1, 'admin', '/houtai.php/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 1584975774);
INSERT INTO `fa_admin_log` VALUES (10, 1, 'admin', '/houtai.php/index/login?url=%2Fhoutai.php', '登录', '{\"url\":\"\\/houtai.php\",\"__token__\":\"dc500a78af17291cb90b7093063f08cd\",\"username\":\"admin\",\"captcha\":\"vmhR\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 1585147796);
INSERT INTO `fa_admin_log` VALUES (11, 1, 'admin', '/houtai.php/ajax/upload', '', '{\"name\":\"12.jpeg\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 1585151739);
INSERT INTO `fa_admin_log` VALUES (12, 1, 'admin', '/houtai.php/general/attachment/del/ids/2', '常规管理 附件管理 删除', '{\"action\":\"del\",\"ids\":\"2\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 1585151802);
INSERT INTO `fa_admin_log` VALUES (13, 1, 'admin', '/houtai.php/index/login?url=%2Fhoutai.php', '登录', '{\"url\":\"\\/houtai.php\",\"__token__\":\"f8b80256e6a3ad118c4e07df0526c2f0\",\"username\":\"admin\",\"captcha\":\"77c3\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 1585749453);
INSERT INTO `fa_admin_log` VALUES (14, 1, 'admin', '/houtai.php/ajax/upload', '', '{\"name\":\"0001420098.mp4\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 1585753337);
INSERT INTO `fa_admin_log` VALUES (15, 1, 'admin', '/houtai.php/ajax/upload', '', '{\"name\":\"125619.mp4\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 1585754853);
INSERT INTO `fa_admin_log` VALUES (16, 1, 'admin', '/houtai.php/ajax/upload', '', '{\"name\":\"01.mp4\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 1585755201);
INSERT INTO `fa_admin_log` VALUES (17, 0, 'Unknown', '/houtai.php/index/login?url=%2Fhoutai.php', '登录', '{\"url\":\"\\/houtai.php\",\"__token__\":\"afebf23bd57dcdaf3b844bd84ca931cf\",\"username\":\"admin\",\"captcha\":\"GemL\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 1586782415);
INSERT INTO `fa_admin_log` VALUES (18, 0, 'Unknown', '/houtai.php/index/login?url=%2Fhoutai.php', '', '{\"url\":\"\\/houtai.php\",\"__token__\":\"afb03fb56efa75805b93cd6dca9175bb\",\"username\":\"admin\",\"captcha\":\"L28H\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 1586782430);
INSERT INTO `fa_admin_log` VALUES (19, 1, 'admin', '/houtai.php/index/login?url=%2Fhoutai.php', '登录', '{\"url\":\"\\/houtai.php\",\"__token__\":\"484a55731dc8a70dfbab11518ebac120\",\"username\":\"admin\",\"captcha\":\"AFZS\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 1586782440);
INSERT INTO `fa_admin_log` VALUES (20, 1, 'admin', '/houtai.php/index/login?url=%2Fhoutai.php', '登录', '{\"url\":\"\\/houtai.php\",\"__token__\":\"3a48a4ec8fe6dc7d1d63b14cc1880fa9\",\"username\":\"admin\",\"captcha\":\"kkej\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 1586955526);
INSERT INTO `fa_admin_log` VALUES (21, 1, 'admin', '/houtai.php/ajax/upload', '', '{\"name\":\"201911061573014951624742.png\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 1586956438);
INSERT INTO `fa_admin_log` VALUES (22, 1, 'admin', '/houtai.php/category/add?dialog=1', '分类管理 添加', '{\"dialog\":\"1\",\"row\":{\"type\":\"article\",\"pid\":\"0\",\"name\":\"\\u6d4b\\u8bd5\\u6587\\u7ae0\",\"nickname\":\"article\",\"image\":\"\\/uploads\\/20200415\\/9e1d7e79428b0c36e3d4ad404f6483b2.png\",\"keywords\":\"\",\"description\":\"\\u8fd9\\u662f\\u6d4b\\u8bd5\\u6587\\u7ae0\\uff01\\uff01\\uff01\\u8fd9\\u662f\\u6d4b\\u8bd5\\u6587\\u7ae0\\uff01\\uff01\\uff01\\u8fd9\\u662f\\u6d4b\\u8bd5\\u6587\\u7ae0\\uff01\\uff01\\uff01\\u8fd9\\u662f\\u6d4b\\u8bd5\\u6587\\u7ae0\\uff01\\uff01\\uff01\\u8fd9\\u662f\\u6d4b\\u8bd5\\u6587\\u7ae0\\uff01\\uff01\\uff01\\u8fd9\\u662f\\u6d4b\\u8bd5\\u6587\\u7ae0\\uff01\\uff01\\uff01\\u8fd9\\u662f\\u6d4b\\u8bd5\\u6587\\u7ae0\\uff01\\uff01\\uff01\\u8fd9\\u662f\\u6d4b\\u8bd5\\u6587\\u7ae0\\uff01\\uff01\\uff01\\u8fd9\\u662f\\u6d4b\\u8bd5\\u6587\\u7ae0\\uff01\\uff01\\uff01\\u8fd9\\u662f\\u6d4b\\u8bd5\\u6587\\u7ae0\\uff01\\uff01\\uff01\\u8fd9\\u662f\\u6d4b\\u8bd5\\u6587\\u7ae0\\uff01\\uff01\\uff01\\u8fd9\\u662f\\u6d4b\\u8bd5\\u6587\\u7ae0\\uff01\\uff01\\uff01\\u8fd9\\u662f\\u6d4b\\u8bd5\\u6587\\u7ae0\\uff01\\uff01\\uff01\\u8fd9\\u662f\\u6d4b\\u8bd5\\u6587\\u7ae0\\uff01\\uff01\\uff01\\u8fd9\\u662f\\u6d4b\\u8bd5\\u6587\\u7ae0\\uff01\\uff01\\uff01\",\"weigh\":\"1\",\"status\":\"normal\",\"flag\":[\"\"]}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 1586956476);
INSERT INTO `fa_admin_log` VALUES (23, 1, 'admin', '/houtai.php/category/edit/ids/14?dialog=1', '分类管理 编辑', '{\"dialog\":\"1\",\"row\":{\"type\":\"article\",\"pid\":\"0\",\"name\":\"\\u6d4b\\u8bd5\\u6587\\u7ae0\",\"nickname\":\"article\",\"flag\":[\"recommend\"],\"image\":\"\\/uploads\\/20200415\\/9e1d7e79428b0c36e3d4ad404f6483b2.png\",\"keywords\":\"tesTarticle\",\"description\":\"\\u8fd9\\u662f\\u6d4b\\u8bd5\\u6587\\u7ae0\\uff01\\uff01\\uff01\\u8fd9\\u662f\\u6d4b\\u8bd5\\u6587\\u7ae0\\uff01\\uff01\\uff01\\u8fd9\\u662f\\u6d4b\\u8bd5\\u6587\\u7ae0\\uff01\\uff01\\uff01\\u8fd9\\u662f\\u6d4b\\u8bd5\\u6587\\u7ae0\\uff01\\uff01\\uff01\\u8fd9\\u662f\\u6d4b\\u8bd5\\u6587\\u7ae0\\uff01\\uff01\\uff01\\u8fd9\\u662f\\u6d4b\\u8bd5\\u6587\\u7ae0\\uff01\\uff01\\uff01\\u8fd9\\u662f\\u6d4b\\u8bd5\\u6587\\u7ae0\\uff01\\uff01\\uff01\\u8fd9\\u662f\\u6d4b\\u8bd5\\u6587\\u7ae0\\uff01\\uff01\\uff01\\u8fd9\\u662f\\u6d4b\\u8bd5\\u6587\\u7ae0\\uff01\\uff01\\uff01\\u8fd9\\u662f\\u6d4b\\u8bd5\\u6587\\u7ae0\\uff01\\uff01\\uff01\\u8fd9\\u662f\\u6d4b\\u8bd5\\u6587\\u7ae0\\uff01\\uff01\\uff01\\u8fd9\\u662f\\u6d4b\\u8bd5\\u6587\\u7ae0\\uff01\\uff01\\uff01\\u8fd9\\u662f\\u6d4b\\u8bd5\\u6587\\u7ae0\\uff01\\uff01\\uff01\\u8fd9\\u662f\\u6d4b\\u8bd5\\u6587\\u7ae0\\uff01\\uff01\\uff01\\u8fd9\\u662f\\u6d4b\\u8bd5\\u6587\\u7ae0\\uff01\\uff01\\uff01\",\"weigh\":\"14\",\"status\":\"normal\"},\"ids\":\"14\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 1586956516);
INSERT INTO `fa_admin_log` VALUES (24, 1, 'admin', '/houtai.php/index/login?url=%2Fhoutai.php', '登录', '{\"url\":\"\\/houtai.php\",\"__token__\":\"216a9004e23541c4ff8ff44ad72c9046\",\"username\":\"admin\",\"captcha\":\"vwmw\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 1587191040);
INSERT INTO `fa_admin_log` VALUES (25, 1, 'admin', '/houtai.php/ajax/upload', '', '{\"name\":\"201911061573014951624742.png\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 1587196392);
INSERT INTO `fa_admin_log` VALUES (26, 1, 'admin', '/houtai.php/ajax/upload', '', '{\"name\":\"20191205_182752.png\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 1587196852);
INSERT INTO `fa_admin_log` VALUES (27, 1, 'admin', '/houtai.php/ajax/upload', '', '{\"name\":\"12\\u7535\\u79d12\\u73ed.avi\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 1587196888);
INSERT INTO `fa_admin_log` VALUES (28, 1, 'admin', '/houtai.php/article/add?dialog=1', '文章 添加', '{\"dialog\":\"1\",\"row\":{\"title\":\"\\u6d4b\\u8bd5123\",\"keywords\":\"\\u5173\\u952e\\u5b57123\",\"description\":\"\\u63cf\\u8ff0123\",\"image\":\"\\/uploads\\/20200418\\/9e1d7e79428b0c36e3d4ad404f6483b2.png\",\"vediofile\":\"\\/uploads\\/20200418\\/ce5ebc3647456311ad1b8e8c1c31ee51.avi\",\"weigh\":\"0\",\"status\":\"\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 1587196901);
INSERT INTO `fa_admin_log` VALUES (29, 1, 'admin', '/houtai.php/article/del/ids/1', '文章 删除', '{\"action\":\"del\",\"ids\":\"1\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 1587196987);
INSERT INTO `fa_admin_log` VALUES (30, 1, 'admin', '/houtai.php/article/add?dialog=1', '文章 添加', '{\"dialog\":\"1\",\"row\":{\"title\":\"\\u6d4b\\u8bd5123\",\"keywords\":\"\",\"description\":\"\",\"image\":\"\",\"vediofile\":\"\",\"weigh\":\"0\",\"status\":\"\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 1587197061);
INSERT INTO `fa_admin_log` VALUES (31, 1, 'admin', '/houtai.php/general/attachment/del/ids/4', '常规管理 附件管理 删除', '{\"action\":\"del\",\"ids\":\"4\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 1587198067);
INSERT INTO `fa_admin_log` VALUES (32, 1, 'admin', '/houtai.php/general/attachment/del/ids/3', '常规管理 附件管理 删除', '{\"action\":\"del\",\"ids\":\"3\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 1587198071);
INSERT INTO `fa_admin_log` VALUES (33, 1, 'admin', '/houtai.php/ajax/upload', '', '{\"name\":\"IMG_0042.JPG\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 1587198900);
INSERT INTO `fa_admin_log` VALUES (34, 1, 'admin', '/houtai.php/ajax/upload', '', '{\"name\":\"12\\u7535\\u79d12\\u73ed.avi\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 1587198917);
INSERT INTO `fa_admin_log` VALUES (35, 1, 'admin', '/houtai.php/article/add?dialog=1', '文章 添加', '{\"dialog\":\"1\",\"row\":{\"title\":\"\\u6d4b\\u8bd5123\",\"keywords\":\"\\u5173\\u952e\\u5b57123\",\"description\":\"\\u63cf\\u8ff0123\",\"image\":\"\\/uploads\\/20200418\\/b14bf1934d1b83e9c0840561c5b35732.jpg\",\"vediofile\":\"\\/uploads\\/20200418\\/ce5ebc3647456311ad1b8e8c1c31ee51.avi\",\"weigh\":\"1\",\"state\":[\"show\"]}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 1587198923);
INSERT INTO `fa_admin_log` VALUES (36, 1, 'admin', '/houtai.php/ajax/upload', '', '{\"name\":\"IMG_0050.JPG\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 1587198941);
INSERT INTO `fa_admin_log` VALUES (37, 1, 'admin', '/houtai.php/ajax/upload', '', '{\"name\":\"12\\u7535\\u79d12\\u73ed.avi\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 1587198954);
INSERT INTO `fa_admin_log` VALUES (38, 1, 'admin', '/houtai.php/article/add?dialog=1', '文章 添加', '{\"dialog\":\"1\",\"row\":{\"title\":\"\\u6d4b\\u8bd512345\",\"keywords\":\"\\u5173\\u952e\\u5b5712345\",\"description\":\"\\u63cf\\u8ff012345\",\"image\":\"\\/uploads\\/20200418\\/f86df36bee47335d299a6fda54ec03dd.jpg\",\"vediofile\":\"\\/uploads\\/20200418\\/ce5ebc3647456311ad1b8e8c1c31ee51.avi\",\"weigh\":\"2\",\"state\":[\"hide\"]}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 1587198955);
INSERT INTO `fa_admin_log` VALUES (39, 1, 'admin', '/houtai.php/article/edit/ids/4?dialog=1', '文章 编辑', '{\"dialog\":\"1\",\"row\":{\"title\":\"\\u6d4b\\u8bd512345\",\"keywords\":\"\\u5173\\u952e\\u5b5712345\",\"description\":\"\\u63cf\\u8ff012345\",\"image\":\"\\/uploads\\/20200415\\/9e1d7e79428b0c36e3d4ad404f6483b2.png\",\"vediofile\":\"\\/uploads\\/20200418\\/ce5ebc3647456311ad1b8e8c1c31ee51.avi\",\"weigh\":\"4\",\"state\":[\"hide\"]},\"ids\":\"4\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 1587199045);
INSERT INTO `fa_admin_log` VALUES (40, 1, 'admin', '/houtai.php/article/edit/ids/4?dialog=1', '文章 编辑', '{\"dialog\":\"1\",\"row\":{\"title\":\"\\u6d4b\\u8bd512345\",\"keywords\":\"\\u5173\\u952e\\u5b5712345\",\"description\":\"\\u63cf\\u8ff012345\",\"image\":\"\\/uploads\\/20200418\\/f86df36bee47335d299a6fda54ec03dd.jpg\",\"vediofile\":\"\\/uploads\\/20200418\\/ce5ebc3647456311ad1b8e8c1c31ee51.avi\",\"weigh\":\"4\",\"state\":[\"hide\"]},\"ids\":\"4\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 1587199094);
INSERT INTO `fa_admin_log` VALUES (41, 1, 'admin', '/houtai.php/article/multi/ids/4', '文章 批量更新', '{\"ids\":\"4\",\"params\":\"status=hidden\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 1587199180);
INSERT INTO `fa_admin_log` VALUES (42, 1, 'admin', '/houtai.php/article/multi/ids/3', '文章 批量更新', '{\"ids\":\"3\",\"params\":\"status=hidden\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 1587199187);
INSERT INTO `fa_admin_log` VALUES (43, 1, 'admin', '/houtai.php/auth/rule/edit/ids/85?dialog=1', '权限管理 菜单规则 编辑', '{\"dialog\":\"1\",\"__token__\":\"7bd107d6831292f5769c1e8c137f35b1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"article\",\"title\":\"\\u6587\\u7ae0\",\"icon\":\"fa fa-book\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"85\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 1587200500);
INSERT INTO `fa_admin_log` VALUES (44, 1, 'admin', '/houtai.php/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 1587200501);
INSERT INTO `fa_admin_log` VALUES (45, 1, 'admin', '/houtai.php/article/add?dialog=1', '文章 添加', '{\"dialog\":\"1\",\"row\":{\"title\":\"\\u6d4b\\u8bd5123\",\"keywords\":\"\\u5173\\u952e\\u5b57123\",\"description\":\"\\u63cf\\u8ff0123\",\"image\":\"\\/uploads\\/20200418\\/f86df36bee47335d299a6fda54ec03dd.jpg\",\"vediofile\":\"\\/uploads\\/20200418\\/ce5ebc3647456311ad1b8e8c1c31ee51.avi\",\"weigh\":\"0\",\"status\":\"1\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 1587200553);
INSERT INTO `fa_admin_log` VALUES (46, 1, 'admin', '/houtai.php/article/add?dialog=1', '文章 添加', '{\"dialog\":\"1\",\"row\":{\"title\":\"\\u6d4b\\u8bd512345\",\"keywords\":\"\\u5173\\u952e\\u5b5712345\",\"description\":\"\\u63cf\\u8ff012345\",\"image\":\"\\/uploads\\/20200418\\/b14bf1934d1b83e9c0840561c5b35732.jpg\",\"vediofile\":\"\\/uploads\\/20200418\\/ce5ebc3647456311ad1b8e8c1c31ee51.avi\",\"weigh\":\"0\",\"status\":\"0\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 1587200594);
INSERT INTO `fa_admin_log` VALUES (47, 1, 'admin', '/houtai.php/article/edit/ids/2?dialog=1', '文章 编辑', '{\"dialog\":\"1\",\"row\":{\"title\":\"\\u6d4b\\u8bd512345\",\"keywords\":\"\\u5173\\u952e\\u5b5712345\",\"description\":\"\\u63cf\\u8ff012345\",\"image\":\"\\/uploads\\/20200418\\/b14bf1934d1b83e9c0840561c5b35732.jpg\",\"vediofile\":\"\\/uploads\\/20200418\\/ce5ebc3647456311ad1b8e8c1c31ee51.avi\",\"weigh\":\"2\",\"status\":\"1\"},\"ids\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 1587200614);
INSERT INTO `fa_admin_log` VALUES (48, 1, 'admin', '/houtai.php/ajax/weigh', '', '{\"ids\":\"1,2\",\"changeid\":\"1\",\"pid\":\"\",\"field\":\"weigh\",\"orderway\":\"desc\",\"table\":\"article\",\"pk\":\"id\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 1587200619);
INSERT INTO `fa_admin_log` VALUES (49, 1, 'admin', '/houtai.php/ajax/weigh', '', '{\"ids\":\"2,1\",\"changeid\":\"2\",\"pid\":\"\",\"field\":\"weigh\",\"orderway\":\"desc\",\"table\":\"article\",\"pk\":\"id\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 1587200638);
INSERT INTO `fa_admin_log` VALUES (50, 1, 'admin', '/houtai.php/ajax/weigh', '', '{\"ids\":\"1,2\",\"changeid\":\"2\",\"pid\":\"\",\"field\":\"weigh\",\"orderway\":\"desc\",\"table\":\"article\",\"pk\":\"id\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 1587200649);
INSERT INTO `fa_admin_log` VALUES (51, 1, 'admin', '/houtai.php/ajax/weigh', '', '{\"ids\":\"2,1\",\"changeid\":\"1\",\"pid\":\"\",\"field\":\"weigh\",\"orderway\":\"desc\",\"table\":\"article\",\"pk\":\"id\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 1587200655);
INSERT INTO `fa_admin_log` VALUES (52, 1, 'admin', '/houtai.php/ajax/weigh', '', '{\"ids\":\"1,2\",\"changeid\":\"2\",\"pid\":\"\",\"field\":\"weigh\",\"orderway\":\"desc\",\"table\":\"article\",\"pk\":\"id\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 1587200658);
INSERT INTO `fa_admin_log` VALUES (53, 1, 'admin', '/houtai.php/ajax/weigh', '', '{\"ids\":\"2,1\",\"changeid\":\"1\",\"pid\":\"\",\"field\":\"weigh\",\"orderway\":\"desc\",\"table\":\"article\",\"pk\":\"id\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 1587200670);
INSERT INTO `fa_admin_log` VALUES (54, 1, 'admin', '/houtai.php/ajax/weigh', '', '{\"ids\":\"1,2\",\"changeid\":\"2\",\"pid\":\"\",\"field\":\"weigh\",\"orderway\":\"desc\",\"table\":\"article\",\"pk\":\"id\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 1587200675);
INSERT INTO `fa_admin_log` VALUES (55, 1, 'admin', '/houtai.php/article/multi/ids/1', '文章 批量更新', '{\"ids\":\"1\",\"params\":\"status=hidden\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 1587200688);
INSERT INTO `fa_admin_log` VALUES (56, 1, 'admin', '/houtai.php/article/multi/ids/1', '文章 批量更新', '{\"ids\":\"1\",\"params\":\"status=hidden\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 1587200697);
INSERT INTO `fa_admin_log` VALUES (57, 1, 'admin', '/houtai.php/article/multi/ids/1', '文章 批量更新', '{\"ids\":\"1\",\"params\":\"status=normal\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 1587200699);
INSERT INTO `fa_admin_log` VALUES (58, 1, 'admin', '/houtai.php/article/del/ids/1,2', '文章 删除', '{\"action\":\"del\",\"ids\":\"1,2\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 1587200732);
INSERT INTO `fa_admin_log` VALUES (59, 1, 'admin', '/houtai.php/auth/rule/edit/ids/3?dialog=1', '权限管理 菜单规则 编辑', '{\"dialog\":\"1\",\"__token__\":\"fe1a802948ac21ae131b03584e563f6a\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"category\",\"title\":\"\\u5206\\u7c7b\\u7ba1\\u7406\",\"icon\":\"fa fa-leaf\",\"weigh\":\"119\",\"condition\":\"\",\"remark\":\"Category tips\",\"status\":\"hidden\"},\"ids\":\"3\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 1587200853);
INSERT INTO `fa_admin_log` VALUES (60, 1, 'admin', '/houtai.php/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 1587200853);
INSERT INTO `fa_admin_log` VALUES (61, 1, 'admin', '/houtai.php/auth/rule/edit/ids/66?dialog=1', '权限管理 菜单规则 编辑', '{\"dialog\":\"1\",\"__token__\":\"2401d5bfe2b681258de178f9f804b484\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"user\",\"title\":\"\\u4f1a\\u5458\\u7ba1\\u7406\",\"icon\":\"fa fa-list\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"hidden\"},\"ids\":\"66\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 1587200884);
INSERT INTO `fa_admin_log` VALUES (62, 1, 'admin', '/houtai.php/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 1587200884);
INSERT INTO `fa_admin_log` VALUES (63, 1, 'admin', '/houtai.php/auth/rule/edit/ids/85?dialog=1', '权限管理 菜单规则 编辑', '{\"dialog\":\"1\",\"__token__\":\"572d1a96a91babe3337340f838e8a0e4\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"article\",\"title\":\"\\u6587\\u7ae0\\u7ba1\\u7406\",\"icon\":\"fa fa-book\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"85\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 1587200905);
INSERT INTO `fa_admin_log` VALUES (64, 1, 'admin', '/houtai.php/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 1587200905);
INSERT INTO `fa_admin_log` VALUES (65, 1, 'admin', '/houtai.php/general.config/edit', '常规管理 系统配置 编辑', '{\"__token__\":\"97c4bff626977876adacb247e70e079a\",\"row\":{\"name\":\"\\u6211\\u7684\\u6d4b\\u8bd5\\u7f51\\u7ad9\",\"keywords\":\"\\u5173\\u952e\\u5b57123\",\"description\":\"\\u63cf\\u8ff0123\",\"beian\":\"\",\"cdnurl\":\"\",\"version\":\"1.0.1\",\"timezone\":\"Asia\\/Shanghai\",\"forbiddenip\":\"\",\"languages\":\"{&quot;backend&quot;:&quot;zh-cn&quot;,&quot;frontend&quot;:&quot;zh-cn&quot;}\",\"fixedpage\":\"dashboard\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 1587289747);
INSERT INTO `fa_admin_log` VALUES (66, 1, 'admin', '/houtai.php/general.config/edit', '常规管理 系统配置 编辑', '{\"__token__\":\"7cad2eadd17ecef2731938195bdb9ff2\",\"row\":{\"name\":\"\\u6d4b\\u8bd5\\u7f51\\u7ad9\",\"keywords\":\"\\u5173\\u952e\\u5b57123\",\"description\":\"\\u63cf\\u8ff0123\",\"beian\":\"\",\"cdnurl\":\"\",\"version\":\"1.0.1\",\"timezone\":\"Asia\\/Shanghai\",\"forbiddenip\":\"\",\"languages\":\"{&quot;backend&quot;:&quot;zh-cn&quot;,&quot;frontend&quot;:&quot;zh-cn&quot;}\",\"fixedpage\":\"dashboard\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 1587289766);
INSERT INTO `fa_admin_log` VALUES (67, 1, 'admin', '/houtai.php/general.config/edit', '常规管理 系统配置 编辑', '{\"__token__\":\"360ecbc1bfbd9bd40f3e126241bbb42f\",\"row\":{\"name\":\"\\u6d4b\\u8bd5\\u7f51\\u7ad9\",\"keywords\":\"\\u5173\\u952e\\u5b57123\",\"description\":\"\\u63cf\\u8ff0123\",\"beian\":\"\",\"cdnurl\":\"\",\"version\":\"1.0.1\",\"timezone\":\"Asia\\/Shanghai\",\"forbiddenip\":\"\",\"languages\":\"{&quot;backend&quot;:&quot;zh-cn&quot;,&quot;frontend&quot;:&quot;zh-cn&quot;}\",\"fixedpage\":\"dashboard\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 1587289792);
INSERT INTO `fa_admin_log` VALUES (68, 1, 'admin', '/houtai.php/ajax/upload', '', '{\"name\":\"1.jpg\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 1587294440);
INSERT INTO `fa_admin_log` VALUES (69, 1, 'admin', '/houtai.php/general.config/edit', '常规管理 系统配置 编辑', '{\"__token__\":\"8a9d1db804f5732abcf10f9dd479c7e0\",\"row\":{\"name\":\"\\u6d4b\\u8bd5\\u7f51\\u7ad9\",\"keywords\":\"\\u5173\\u952e\\u5b57123\",\"description\":\"\\u63cf\\u8ff0123\",\"beian\":\"\",\"cdnurl\":\"\",\"version\":\"1.0.1\",\"timezone\":\"Asia\\/Shanghai\",\"forbiddenip\":\"\",\"languages\":\"{&quot;backend&quot;:&quot;zh-cn&quot;,&quot;frontend&quot;:&quot;zh-cn&quot;}\",\"fixedpage\":\"dashboard\",\"serviceQQ\":\"\",\"wechatQrcode\":\"\\/uploads\\/20200419\\/b30f8fe2bf5430dd3c063fc2aac75eeb.jpg\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 1587294444);
INSERT INTO `fa_admin_log` VALUES (70, 1, 'admin', '/houtai.php/ajax/upload', '', '{\"name\":\"ewm.jpg\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 1587294878);
INSERT INTO `fa_admin_log` VALUES (71, 1, 'admin', '/houtai.php/general.config/edit', '常规管理 系统配置 编辑', '{\"__token__\":\"32d36348bbe17f65558c1cfd82d57a86\",\"row\":{\"name\":\"\\u6d4b\\u8bd5\\u7f51\\u7ad9\",\"keywords\":\"\\u5173\\u952e\\u5b57123\",\"description\":\"\\u63cf\\u8ff0123\",\"serviceQQ\":\"154339617\",\"wechatQrcode\":\"\\/uploads\\/20200419\\/d91ec596fb53e5d9404ed787c726eb83.jpg\",\"beian\":\"\",\"cdnurl\":\"\",\"version\":\"1.0.1\",\"timezone\":\"Asia\\/Shanghai\",\"forbiddenip\":\"\",\"languages\":\"{&quot;backend&quot;:&quot;zh-cn&quot;,&quot;frontend&quot;:&quot;zh-cn&quot;}\",\"fixedpage\":\"dashboard\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 1587294881);
INSERT INTO `fa_admin_log` VALUES (72, 1, 'admin', '/houtai.php/ajax/upload', '', '{\"name\":\"qrcode.jpg\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 1587296168);
INSERT INTO `fa_admin_log` VALUES (73, 1, 'admin', '/houtai.php/general.config/edit', '常规管理 系统配置 编辑', '{\"__token__\":\"bf64f7d61f54848decfe1ed25a9fde6e\",\"row\":{\"name\":\"\\u6d4b\\u8bd5\\u7f51\\u7ad9\",\"keywords\":\"\\u5173\\u952e\\u5b57123\",\"description\":\"\\u63cf\\u8ff0123\",\"serviceQQ\":\"154339617\",\"wechatQrcode\":\"\\/uploads\\/20200419\\/15fd31f7d106b8442cdd43cdfa4df6ef.jpg\",\"beian\":\"\",\"cdnurl\":\"\",\"version\":\"1.0.1\",\"timezone\":\"Asia\\/Shanghai\",\"forbiddenip\":\"\",\"languages\":\"{&quot;backend&quot;:&quot;zh-cn&quot;,&quot;frontend&quot;:&quot;zh-cn&quot;}\",\"fixedpage\":\"dashboard\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 1587296172);
INSERT INTO `fa_admin_log` VALUES (74, 1, 'admin', '/houtai.php/general.config/edit', '常规管理 系统配置 编辑', '{\"__token__\":\"943664a72858fa3a406b29a951f3deb0\",\"row\":{\"name\":\"\\u6d4b\\u8bd5\\u7f51\\u7ad9\",\"keywords\":\"\\u5173\\u952e\\u5b57123\",\"description\":\"\\u63cf\\u8ff0123\",\"serviceQQ\":\"154339618\",\"wechatQrcode\":\"\\/uploads\\/20200419\\/15fd31f7d106b8442cdd43cdfa4df6ef.jpg\",\"beian\":\"\",\"cdnurl\":\"\",\"version\":\"1.0.1\",\"timezone\":\"Asia\\/Shanghai\",\"forbiddenip\":\"\",\"languages\":\"{&quot;backend&quot;:&quot;zh-cn&quot;,&quot;frontend&quot;:&quot;zh-cn&quot;}\",\"fixedpage\":\"dashboard\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 1587296287);
INSERT INTO `fa_admin_log` VALUES (75, 1, 'admin', '/houtai.php/general.config/edit', '常规管理 系统配置 编辑', '{\"__token__\":\"fa274eb7b06beb7d7b8846b536345ff6\",\"row\":{\"name\":\"\\u6d4b\\u8bd5\\u7f51\\u7ad9\",\"keywords\":\"\\u5173\\u952e\\u5b57123\",\"description\":\"\\u63cf\\u8ff0123\",\"serviceQQ\":\"154339617\",\"wechatQrcode\":\"\\/uploads\\/20200419\\/15fd31f7d106b8442cdd43cdfa4df6ef.jpg\",\"beian\":\"\",\"cdnurl\":\"\",\"version\":\"1.0.1\",\"timezone\":\"Asia\\/Shanghai\",\"forbiddenip\":\"\",\"languages\":\"{&quot;backend&quot;:&quot;zh-cn&quot;,&quot;frontend&quot;:&quot;zh-cn&quot;}\",\"fixedpage\":\"dashboard\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 1587296313);
INSERT INTO `fa_admin_log` VALUES (76, 1, 'admin', '/houtai.php/index/login?url=%2Fhoutai.php', '登录', '{\"url\":\"\\/houtai.php\",\"__token__\":\"bd51356415626c49f5e96d41ec97a401\",\"username\":\"admin\",\"captcha\":\"fnjh\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 1587478641);
INSERT INTO `fa_admin_log` VALUES (77, 1, 'admin', '/houtai.php/index/login?url=%2Fhoutai.php', '登录', '{\"url\":\"\\/houtai.php\",\"__token__\":\"9c7f84dea35714da79bc009463a2f846\",\"username\":\"admin\",\"captcha\":\"fmvv\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', 1587519935);
INSERT INTO `fa_admin_log` VALUES (78, 1, 'admin', '/houtai.php/general/attachment/del/ids/8', '常规管理 附件管理 删除', '{\"action\":\"del\",\"ids\":\"8\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', 1587519951);
INSERT INTO `fa_admin_log` VALUES (79, 1, 'admin', '/houtai.php/general/attachment/del/ids/6', '常规管理 附件管理 删除', '{\"action\":\"del\",\"ids\":\"6\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', 1587519955);
INSERT INTO `fa_admin_log` VALUES (80, 1, 'admin', '/houtai.php/general/attachment/del/ids/7', '常规管理 附件管理 删除', '{\"action\":\"del\",\"ids\":\"7\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', 1587519958);
INSERT INTO `fa_admin_log` VALUES (81, 1, 'admin', '/houtai.php/general/attachment/del/ids/5', '常规管理 附件管理 删除', '{\"action\":\"del\",\"ids\":\"5\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', 1587519960);
INSERT INTO `fa_admin_log` VALUES (82, 1, 'admin', '/houtai.php/general/attachment/del/ids/2', '常规管理 附件管理 删除', '{\"action\":\"del\",\"ids\":\"2\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', 1587519964);
INSERT INTO `fa_admin_log` VALUES (83, 1, 'admin', '/houtai.php/ajax/upload', '', '{\"name\":\"8-1\\u6b4c\\u5355\\u8be6\\u60c5\\u9875\\u5e03\\u5c40\\u4ecb\\u7ecdVuex\\u5b9e\\u73b0\\u8def\\u7531\\u6570\\u636e\\u901a\\u8baf.mp4\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', 1587526173);
INSERT INTO `fa_admin_log` VALUES (84, 1, 'admin', '/houtai.php/article/add?dialog=1', '文章管理 添加', '{\"dialog\":\"1\",\"row\":{\"title\":\"\\u6d4b\\u8bd5\\u6807\\u9898\",\"keywords\":\"\\u6d4b\\u8bd5\\u5173\\u952e\\u5b57\",\"description\":\"\\u63cf\\u8ff0\",\"image\":\"\\/uploads\\/20200419\\/15fd31f7d106b8442cdd43cdfa4df6ef.jpg\",\"vediofile\":\"\\/uploads\\/20200422\\/48615d149059e0eca606b92f4681de0f.mp4\",\"weigh\":\"1\",\"status\":\"1\",\"types\":\"1\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', 1587526181);
INSERT INTO `fa_admin_log` VALUES (85, 1, 'admin', '/houtai.php/article/add?dialog=1', '文章管理 添加', '{\"dialog\":\"1\",\"row\":{\"title\":\"\\u6d4b\\u8bd5\\u6807\\u9898\",\"keywords\":\"\",\"description\":\"\",\"image\":\"\\/uploads\\/20200419\\/15fd31f7d106b8442cdd43cdfa4df6ef.jpg\",\"vediofile\":\"\",\"weigh\":\"0\",\"status\":\"1\",\"types\":\"2\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', 1587526370);
INSERT INTO `fa_admin_log` VALUES (86, 1, 'admin', '/houtai.php/index/login?url=%2Fhoutai.php%2Farticle%3Fref%3Daddtabs', '登录', '{\"url\":\"\\/houtai.php\\/article?ref=addtabs\",\"__token__\":\"c8449eda0603ebd4df7b7940cc67db76\",\"username\":\"admin\",\"captcha\":\"iGpY\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', 1587537328);
INSERT INTO `fa_admin_log` VALUES (87, 0, 'Unknown', '/houtai.php/index/login?url=%2Fhoutai.php', '', '{\"url\":\"\\/houtai.php\",\"__token__\":\"d2080d2c2715fa51311b1c7fe74cd448\",\"username\":\"admin\",\"captcha\":\"j0pw\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', 1587606819);
INSERT INTO `fa_admin_log` VALUES (88, 0, 'Unknown', '/houtai.php/index/login?url=%2Fhoutai.php', '', '{\"url\":\"\\/houtai.php\",\"__token__\":\"290ad5b1297921b138af74441a65d9cb\",\"username\":\"admin\",\"captcha\":\"lsfv\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', 1587606825);
INSERT INTO `fa_admin_log` VALUES (89, 1, 'admin', '/houtai.php/index/login?url=%2Fhoutai.php', '登录', '{\"url\":\"\\/houtai.php\",\"__token__\":\"8ae45bd2da5cae9597c54c79c8d80c3c\",\"username\":\"admin\",\"captcha\":\"hhrx\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', 1587606831);
INSERT INTO `fa_admin_log` VALUES (90, 1, 'admin', '/houtai.php/auth/rule/edit/ids/91?dialog=1', '权限管理 菜单规则 编辑', '{\"dialog\":\"1\",\"__token__\":\"8d1f1e64355ebabc824ed2917806bc58\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"banners\",\"title\":\"\\u8f6e\\u64ad\\u56fe\\u7ba1\\u7406\",\"icon\":\"fa fa-upload\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"91\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', 1587607180);
INSERT INTO `fa_admin_log` VALUES (91, 1, 'admin', '/houtai.php/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', 1587607180);
INSERT INTO `fa_admin_log` VALUES (92, 1, 'admin', '/houtai.php/ajax/upload', '', '{\"name\":\"index_slide_1.png\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', 1587607220);
INSERT INTO `fa_admin_log` VALUES (93, 1, 'admin', '/houtai.php/banners/edit/ids/4?dialog=1', '轮播图管理 编辑', '{\"dialog\":\"1\",\"row\":{\"banner_image\":\"\\/uploads\\/20200423\\/994a47f3727a6c1ef14f9e067ab38b05.png\",\"weigh\":\"4\",\"status\":\"1\"},\"ids\":\"4\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', 1587607223);
INSERT INTO `fa_admin_log` VALUES (94, 1, 'admin', '/houtai.php/ajax/upload', '', '{\"name\":\"index_slide_3.png\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', 1587607234);
INSERT INTO `fa_admin_log` VALUES (95, 1, 'admin', '/houtai.php/banners/edit/ids/2?dialog=1', '轮播图管理 编辑', '{\"dialog\":\"1\",\"row\":{\"banner_image\":\"\\/uploads\\/20200423\\/358794a48faf153b34ba712b733800ea.png\",\"weigh\":\"3\",\"status\":\"1\"},\"ids\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', 1587607237);
INSERT INTO `fa_admin_log` VALUES (96, 1, 'admin', '/houtai.php/ajax/upload', '', '{\"name\":\"index_slide_2.png\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', 1587607261);
INSERT INTO `fa_admin_log` VALUES (97, 1, 'admin', '/houtai.php/banners/edit/ids/1?dialog=1', '轮播图管理 编辑', '{\"dialog\":\"1\",\"row\":{\"banner_image\":\"\\/uploads\\/20200423\\/a8cdbfd9f245ce460e9698fe30127383.png\",\"weigh\":\"2\",\"status\":\"1\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', 1587607262);
INSERT INTO `fa_admin_log` VALUES (98, 1, 'admin', '/houtai.php/ajax/upload', '', '{\"name\":\"index_slide_1.png\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', 1587607270);
INSERT INTO `fa_admin_log` VALUES (99, 1, 'admin', '/houtai.php/banners/edit/ids/3?dialog=1', '轮播图管理 编辑', '{\"dialog\":\"1\",\"row\":{\"banner_image\":\"\\/uploads\\/20200423\\/994a47f3727a6c1ef14f9e067ab38b05.png\",\"weigh\":\"1\",\"status\":\"1\"},\"ids\":\"3\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', 1587607270);
INSERT INTO `fa_admin_log` VALUES (100, 1, 'admin', '/houtai.php/banners/del/ids/4', '轮播图管理 删除', '{\"action\":\"del\",\"ids\":\"4\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', 1587607372);
INSERT INTO `fa_admin_log` VALUES (101, 1, 'admin', '/houtai.php/banners/del/ids/2', '轮播图管理 删除', '{\"action\":\"del\",\"ids\":\"2\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', 1587607377);
INSERT INTO `fa_admin_log` VALUES (102, 1, 'admin', '/houtai.php/article/add?dialog=1', '文章管理 添加', '{\"dialog\":\"1\",\"row\":{\"title\":\"\\u6d4b\\u8bd5\\u6807\\u98983\",\"keywords\":\"\\u6d4b\\u8bd5\\u5173\\u952e\\u5b573\",\"description\":\"\\u63cf\\u8ff03\",\"image\":\"\",\"vediofile\":\"\",\"weigh\":\"0\",\"status\":\"1\",\"types\":\"3\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', 1587608713);
INSERT INTO `fa_admin_log` VALUES (103, 1, 'admin', '/houtai.php/index/login?url=%2Fhoutai.php', '登录', '{\"url\":\"\\/houtai.php\",\"__token__\":\"76eefe4270d0ec52429a8e52442226f5\",\"username\":\"admin\",\"captcha\":\"srx6\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', 1587691615);
INSERT INTO `fa_admin_log` VALUES (104, 1, 'admin', '/houtai.php/article/add?dialog=1', '文章管理 添加', '{\"dialog\":\"1\",\"row\":{\"title\":\"\\u6d4b\\u8bd5\\u6807\\u98984\",\"keywords\":\"\\u6d4b\\u8bd5\\u5173\\u952e\\u5b574\",\"description\":\"\\u63cf\\u8ff04\",\"image\":\"\",\"vediofile\":\"\",\"weigh\":\"0\",\"status\":\"1\",\"types\":\"3\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', 1587691655);
INSERT INTO `fa_admin_log` VALUES (105, 1, 'admin', '/houtai.php/index/login?url=%2Fhoutai.php', '登录', '{\"url\":\"\\/houtai.php\",\"__token__\":\"baedeaad59ae2caab337c1d6e8f3fd80\",\"username\":\"admin\",\"captcha\":\"yuld\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', 1587865479);
INSERT INTO `fa_admin_log` VALUES (106, 1, 'admin', '/houtai.php/ajax/upload', '', '{\"name\":\"img-02.png\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', 1587865531);
INSERT INTO `fa_admin_log` VALUES (107, 1, 'admin', '/houtai.php/ajax/upload', '', '{\"name\":\"movie.mp4\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', 1587865789);
INSERT INTO `fa_admin_log` VALUES (108, 1, 'admin', '/houtai.php/article/edit/ids/3?dialog=1', '文章管理 编辑', '{\"dialog\":\"1\",\"row\":{\"title\":\"\\u89c6\\u9891\\u5236\\u4f5c123\",\"keywords\":\"\\u89c6\\u9891\\u5173\\u952e\\u5b57123\",\"content\":\"\\u5bfb\\u627e\\u6700\\u771f\\u5b9e\\u7684\\u81ea\\u5df1\\uff0c\\u53d1\\u73b0\\u65b0\\u5947\\u6216\\u7f8e\\u597d\\u7684\\u3001 \\u73cd\\u8d35\\u7684\\u4e8b\\u7269\\uff0c\\u5236\\u4f5c\\u6210\\u5f71\\u7247\\u548c\\u97f3\\u4e50123\\uff1b\\u5bfb\\u627e\\u6700\\u771f\\u5b9e\\u7684\\u81ea\\u5df1\\uff0c\\u53d1\\u73b0\\u65b0\\u5947\\u6216\\u7f8e\\u597d\\u7684\\u3001 \\u73cd\\u8d35\\u7684\\u4e8b\\u7269\\uff0c\\u5236\\u4f5c\\u6210\\u5f71\\u7247\\u548c\\u97f3\\u4e50\",\"image\":\"\\/uploads\\/20200426\\/76d5432dd97d43b2d334a85f5bcf48b5.png\",\"vediofile\":\"\\/uploads\\/20200426\\/3cf571d4cf2a4c4b2df823a27852a7d5.mp4\",\"weigh\":\"3\",\"status\":\"1\",\"types\":\"1\"},\"ids\":\"3\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', 1587865802);
INSERT INTO `fa_admin_log` VALUES (109, 1, 'admin', '/houtai.php/ajax/upload', '', '{\"name\":\"img-04.jpg\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', 1587865885);
INSERT INTO `fa_admin_log` VALUES (110, 1, 'admin', '/houtai.php/article/edit/ids/1?dialog=1', '文章管理 编辑', '{\"dialog\":\"1\",\"row\":{\"title\":\"\\u6d4b\\u8bd5123\",\"keywords\":\"\\u5173\\u952e\\u5b57111\",\"content\":\"\\u5c06\\u4f60\\u7684\\u6545\\u4e8b\\u5fc3\\u60c5\\u3001\\u4f18\\u7f8e\\u7684\\u56fe\\u7247\\u3001\\u6709\\u5171\\u9e23\\u7684\\u97f3\\u4e50\\u4ee5\\u53ca\\u5fc3\\u52a8\\u7684\\u89c6\\u9891\\u968f\\u65f6\\u968f\\u5730\\u5206\\u4eab\",\"image\":\"\\/uploads\\/20200426\\/553e9e3d7bb91e1007eaf256a9ea5cae.jpg\",\"vediofile\":\"\",\"weigh\":\"1\",\"status\":\"1\",\"types\":\"2\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', 1587865891);
INSERT INTO `fa_admin_log` VALUES (111, 1, 'admin', '/houtai.php/article/edit/ids/3?dialog=1', '文章管理 编辑', '{\"dialog\":\"1\",\"row\":{\"title\":\"\\u89c6\\u9891\\u5236\\u4f5c123\",\"keywords\":\"\\u89c6\\u9891\\u5173\\u952e\\u5b57123\",\"content\":\"\\u5bfb\\u627e\\u6700\\u771f\\u5b9e\\u7684\\u81ea\\u5df1\\uff0c\\u53d1\\u73b0\\u65b0\\u5947\\u6216\\u7f8e\\u597d\\u7684\\u3001 \\u73cd\\u8d35\\u7684\\u4e8b\\u7269\\uff0c\\u5236\\u4f5c\\u6210\\u5f71\\u7247\\u548c\\u97f3\\u4e50123\\uff1b\\u5bfb\\u627e\\u6700\\u771f\\u5b9e\\u7684\\u81ea\\u5df1\\uff0c\\u53d1\\u73b0\\u65b0\\u5947\\u6216\\u7f8e\\u597d\\u7684\\u3001 \\u73cd\\u8d35\\u7684\\u4e8b\\u7269\\uff0c\\u5236\\u4f5c\\u6210\\u5f71\\u7247\\u548c\\u97f3\\u4e50\",\"image\":\"\",\"vediofile\":\"\\/uploads\\/20200426\\/3cf571d4cf2a4c4b2df823a27852a7d5.mp4\",\"weigh\":\"3\",\"status\":\"1\",\"types\":\"1\"},\"ids\":\"3\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', 1587868584);
INSERT INTO `fa_admin_log` VALUES (112, 1, 'admin', '/houtai.php/ajax/upload', '', '{\"name\":\"mov_bbb.mp4\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', 1587871038);
INSERT INTO `fa_admin_log` VALUES (113, 1, 'admin', '/houtai.php/article/add?dialog=1', '文章管理 添加', '{\"dialog\":\"1\",\"row\":{\"title\":\"\\u89c6\\u9891\\u5236\\u4f5c555\",\"keywords\":\"\\u6d4b\\u8bd5\\u5173\\u952e\\u5b5755\",\"content\":\"\",\"image\":\"\\/uploads\\/20200426\\/553e9e3d7bb91e1007eaf256a9ea5cae.jpg\",\"vediofile\":\"\\/uploads\\/20200426\\/198918f40ecc7cab0fc4231adaf67c96.mp4\",\"weigh\":\"0\",\"status\":\"1\",\"types\":\"1\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', 1587871044);
INSERT INTO `fa_admin_log` VALUES (114, 1, 'admin', '/houtai.php/article/edit/ids/4?dialog=1', '文章管理 编辑', '{\"dialog\":\"1\",\"row\":{\"title\":\"\\u89c6\\u9891\\u5236\\u4f5c555\",\"keywords\":\"\\u6d4b\\u8bd5\\u5173\\u952e\\u5b5755\",\"content\":\"\\u5bfb\\u627e\\u6700\\u771f\\u5b9e\\u7684\\u81ea\\u5df1\\uff0c\\u53d1\\u73b0\\u65b0\\u5947\\u6216\\u7f8e\\u597d\\u7684\\u3001 \\u73cd\\u8d35\\u7684\\u4e8b\\u7269\\uff0c\\u5236\\u4f5c\\u6210\\u5f71\\u7247\\u548c\\u97f3\\u4e50\",\"image\":\"\\/uploads\\/20200426\\/553e9e3d7bb91e1007eaf256a9ea5cae.jpg\",\"vediofile\":\"\\/uploads\\/20200426\\/198918f40ecc7cab0fc4231adaf67c96.mp4\",\"weigh\":\"4\",\"status\":\"1\",\"types\":\"1\"},\"ids\":\"4\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', 1587871143);
INSERT INTO `fa_admin_log` VALUES (115, 1, 'admin', '/houtai.php/index/login?url=%2Fhoutai.php', '登录', '{\"url\":\"\\/houtai.php\",\"__token__\":\"e673c126214ee13316b03a8adbf5fbcf\",\"username\":\"admin\",\"captcha\":\"yjxc\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', 1588146942);
INSERT INTO `fa_admin_log` VALUES (116, 1, 'admin', '/houtai.php/article/edit/ids/2?dialog=1', '文章管理 编辑', '{\"dialog\":\"1\",\"row\":{\"title\":\"\\u6d4b\\u8bd512345\",\"keywords\":\"\",\"content\":\"\\u53d1\\u73b0\\u65b0\\u5947\\u6216\\u7f8e\\u597d\\u7684\\u3001\\u73cd\\u8d35\\u7684\\u4e8b\\u7269\\uff0c\\u5236\\u4f5c\\u6210\\u5f71\\u7247\\u6216\\u97f3\\u4e50\\u3002\\u6211\\u4eec\\u5206\\u4eab\\u7ed9\\u4eba\\u6700\\u65b0\\u3001\\u6700\\u6709\\u8da3\\u7684\\u6545\\u4e8b\\u3002\\u6211\\u4eec\\u4e0d\\u4ec5\\u539f\\u521b\\uff0c\\u6211\\u4eec\\u4e5f\\u540c\\u65f6\\u4e0e\\u4e0d\\u540c\\u7684\\u5408\\u4f5c\\u4f19\\u4f34\\u4e00\\u8d77\\u521b\\u9020\\u4ed6\\u4eec\\u7684\\u54c1\\u724c\\u6545\\u4e8b\\u3002\",\"image\":\"\",\"vediofile\":\"\",\"weigh\":\"2\",\"status\":\"1\",\"types\":\"3\"},\"ids\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', 1588147367);
INSERT INTO `fa_admin_log` VALUES (117, 1, 'admin', '/houtai.php/article/add?dialog=1', '文章管理 添加', '{\"dialog\":\"1\",\"row\":{\"title\":\"\\u6d4b\\u8bd5234\",\"keywords\":\"\\u6d4b\\u8bd5\\u5173\\u952e\\u5b57234\",\"content\":\"\\u53d1\\u73b0\\u65b0\\u5947\\u6216\\u7f8e\\u597d\\u7684\\u3001\\u73cd\\u8d35\\u7684\\u4e8b\\u7269\\uff0c\\u5236\\u4f5c\\u6210\\u5f71\\u7247\\u6216\\u97f3\\u4e50\\u3002\\u6211\\u4eec\\u5206\\u4eab\\u7ed9\\u4eba\\u6700\\u65b0\\u3001\\u6700\\u6709\\u8da3\\u7684\\u6545\\u4e8b\\u3002\\u6211\\u4eec\\u4e0d\\u4ec5\\u539f\\u521b\\uff0c\\u6211\\u4eec\\u4e5f\\u540c\\u65f6\\u4e0e\\u4e0d\\u540c\\u7684\\u5408\\u4f5c\\u4f19\\u4f34\\u4e00\\u8d77\\u521b\\u9020\\u4ed6\\u4eec\\u7684\\u54c1\\u724c\\u6545\\u4e8b\\u3002321312\",\"image\":\"\",\"vediofile\":\"\",\"weigh\":\"0\",\"status\":\"1\",\"types\":\"3\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', 1588147406);
INSERT INTO `fa_admin_log` VALUES (118, 1, 'admin', '/houtai.php/article/add?dialog=1', '文章管理 添加', '{\"dialog\":\"1\",\"row\":{\"title\":\"\\u6d4b\\u8bd5\\u6807\\u9898555\",\"keywords\":\"\\u6d4b\\u8bd5\\u5173\\u952e\\u5b5755666\",\"content\":\"\\u53d1\\u73b0\\u65b0\\u5947\\u6216\\u7f8e\\u597d\\u7684\\u3001\\u73cd\\u8d35\\u7684\\u4e8b\\u7269\\uff0c\\u5236\\u4f5c\\u6210\\u5f71\\u7247\\u6216\\u97f3\\u4e50\\u3002\\u6211\\u4eec\\u5206\\u4eab\\u7ed9\\u4eba\\u6700\\u65b0\\u3001\\u6700\\u6709\\u8da3\\u7684\\u6545\\u4e8b\\u3002\\u6211\\u4eec\\u4e0d\\u4ec5\\u539f\\u521b\\uff0c\\u6211\\u4eec\\u4e5f\\u540c\\u65f6\\u4e0e\\u4e0d\\u540c\\u7684\\u5408\\u4f5c\\u4f19\\u4f34\\u4e00\\u8d77\\u521b\\u9020\\u4ed6\\u4eec\\u7684\\u54c1\\u724c\\u6545\\u4e8b\\u300265656\",\"image\":\"\",\"vediofile\":\"\",\"weigh\":\"0\",\"status\":\"1\",\"types\":\"3\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', 1588147427);
INSERT INTO `fa_admin_log` VALUES (119, 1, 'admin', '/houtai.php/article/add?dialog=1', '文章管理 添加', '{\"dialog\":\"1\",\"row\":{\"title\":\"\\u6d4b\\u8bd5234\",\"keywords\":\"\\u6d4b\\u8bd5\\u5173\\u952e\\u5b5755\",\"content\":\"\\u53d1\\u73b0\\u65b0\\u5947\\u6216\\u7f8e\\u597d\\u7684\\u3001\\u73cd\\u8d35\\u7684\\u4e8b\\u7269\\uff0c\\u5236\\u4f5c\\u6210\\u5f71\\u7247\\u6216\\u97f3\\u4e50\\u3002\\u6211\\u4eec\\u5206\\u4eab\\u7ed9\\u4eba\\u6700\\u65b0\\u3001\\u6700\\u6709\\u8da3\\u7684\\u6545\\u4e8b\\u3002\\u6211\\u4eec\\u4e0d\\u4ec5\\u539f\\u521b\\uff0c\\u6211\\u4eec\\u4e5f\\u540c\\u65f6\\u4e0e\\u4e0d\\u540c\\u7684\\u5408\\u4f5c\\u4f19\\u4f34\\u4e00\\u8d77\\u521b\\u9020\\u4ed6\\u4eec\\u7684\\u54c1\\u724c\\u6545\\u4e8b\\u3002678\",\"image\":\"\",\"vediofile\":\"\",\"weigh\":\"0\",\"status\":\"1\",\"types\":\"3\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', 1588147453);
INSERT INTO `fa_admin_log` VALUES (120, 1, 'admin', '/houtai.php/article/add?dialog=1', '文章管理 添加', '{\"dialog\":\"1\",\"row\":{\"title\":\"\\u6d4b\\u8bd5\\u6807\\u9898111555\",\"keywords\":\"blogs\",\"content\":\"\\u53d1\\u73b0\\u65b0\\u5947\\u6216\\u7f8e\\u597d\\u7684\\u3001\\u73cd\\u8d35\\u7684\\u4e8b\\u7269\\uff0c\\u5236\\u4f5c\\u6210\\u5f71\\u7247\\u6216\\u97f3\\u4e50\\u3002\\u6211\\u4eec\\u5206\\u4eab\\u7ed9\\u4eba\\u6700\\u65b0\\u3001\\u6700\\u6709\\u8da3\\u7684\\u6545\\u4e8b\\u3002\\u6211\\u4eec\\u4e0d\\u4ec5\\u539f\\u521b\\uff0c\\u6211\\u4eec\\u4e5f\\u540c\\u65f6\\u4e0e\\u4e0d\\u540c\\u7684\\u5408\\u4f5c\\u4f19\\u4f34\\u4e00\\u8d77\\u521b\\u9020\\u4ed6\\u4eec\\u7684\\u54c1\\u724c\\u6545\\u4e8b\\u3002blog\",\"image\":\"\",\"vediofile\":\"\",\"weigh\":\"0\",\"status\":\"1\",\"types\":\"3\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', 1588147479);
INSERT INTO `fa_admin_log` VALUES (121, 1, 'admin', '/houtai.php/ajax/upload', '', '{\"name\":\"mov_bbb.mp4\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', 1588151629);
INSERT INTO `fa_admin_log` VALUES (122, 1, 'admin', '/houtai.php/ajax/upload', '', '{\"name\":\"mov_bbb.mp4\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', 1588151654);
INSERT INTO `fa_admin_log` VALUES (123, 1, 'admin', '/houtai.php/article/add?dialog=1', '文章管理 添加', '{\"dialog\":\"1\",\"row\":{\"title\":\"\\u6d4b\\u8bd5\\u6807\\u9898v\",\"keywords\":\"12\",\"content\":\"\",\"image\":\"\",\"vediofile\":\"\\/uploads\\/20200429\\/198918f40ecc7cab0fc4231adaf67c96.mp4\",\"weigh\":\"0\",\"status\":\"1\",\"types\":\"1\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', 1588151659);
INSERT INTO `fa_admin_log` VALUES (124, 1, 'admin', '/houtai.php/ajax/upload', '', '{\"name\":\"img-01.png\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', 1588152070);
INSERT INTO `fa_admin_log` VALUES (125, 1, 'admin', '/houtai.php/ajax/upload', '', '{\"name\":\"mov_bbb.mp4\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', 1588152103);
INSERT INTO `fa_admin_log` VALUES (126, 1, 'admin', '/houtai.php/article/add?dialog=1', '文章管理 添加', '{\"dialog\":\"1\",\"row\":{\"title\":\"\\u97f3\\u4e50\\u5236\\u4f5c\",\"keywords\":\"\\u97f3\\u4e50\\u5236\\u4f5c\",\"content\":\"\\u5c06\\u4f60\\u7684\\u6545\\u4e8b\\u5fc3\\u60c5\\u3001\\u4f18\\u7f8e\\u7684\\u56fe\\u7247\\u3001\\u6709\\u5171\\u9e23\\u7684\\u97f3\\u4e50\\u4ee5\\u53ca\\u5fc3\\u52a8\\u7684\\u89c6\\u9891\\u968f\\u65f6\\u968f\\u5730\\u5206\\u4eab\",\"image\":\"\\/uploads\\/20200429\\/d2f861da61c882e04ee34746d60192f1.png\",\"vediofile\":\"\\/uploads\\/20200429\\/198918f40ecc7cab0fc4231adaf67c96.mp4\",\"weigh\":\"0\",\"status\":\"1\",\"types\":\"1\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', 1588152107);
INSERT INTO `fa_admin_log` VALUES (127, 1, 'admin', '/houtai.php/ajax/upload', '', '{\"name\":\"img-02.png\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', 1588152158);
INSERT INTO `fa_admin_log` VALUES (128, 1, 'admin', '/houtai.php/ajax/upload', '', '{\"name\":\"movie.mp4\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', 1588152183);
INSERT INTO `fa_admin_log` VALUES (129, 1, 'admin', '/houtai.php/article/edit/ids/9?dialog=1', '文章管理 编辑', '{\"dialog\":\"1\",\"row\":{\"title\":\"\\u89c6\\u9891\\u5236\\u4f5c\",\"keywords\":\"\\u5bfb\\u627e\\u6700\\u771f\\u5b9e\\u7684\\u81ea\\u5df1\\uff0c\\u53d1\\u73b0\\u65b0\\u5947\\u6216\\u7f8e\\u597d\\u7684\\u3001 \\u73cd\\u8d35\\u7684\\u4e8b\\u7269\\uff0c\\u5236\\u4f5c\\u6210\\u5f71\\u7247\\u548c\\u97f3\\u4e50\",\"content\":\"\\u5bfb\\u627e\\u6700\\u771f\\u5b9e\\u7684\\u81ea\\u5df1\\uff0c\\u53d1\\u73b0\\u65b0\\u5947\\u6216\\u7f8e\\u597d\\u7684\\u3001 \\u73cd\\u8d35\\u7684\\u4e8b\\u7269\\uff0c\\u5236\\u4f5c\\u6210\\u5f71\\u7247\\u548c\\u97f3\\u4e50\",\"image\":\"\\/uploads\\/20200429\\/76d5432dd97d43b2d334a85f5bcf48b5.png\",\"vediofile\":\"\\/uploads\\/20200429\\/3cf571d4cf2a4c4b2df823a27852a7d5.mp4\",\"weigh\":\"9\",\"status\":\"1\",\"types\":\"1\"},\"ids\":\"9\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', 1588152188);
INSERT INTO `fa_admin_log` VALUES (130, 1, 'admin', '/houtai.php/ajax/upload', '', '{\"name\":\"img-03.png\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', 1588152224);
INSERT INTO `fa_admin_log` VALUES (131, 1, 'admin', '/houtai.php/article/edit/ids/4?dialog=1', '文章管理 编辑', '{\"dialog\":\"1\",\"row\":{\"title\":\"\\u89c6\\u9891\\u5236\\u4f5c555\",\"keywords\":\"\\u6d4b\\u8bd5\\u5173\\u952e\\u5b5755\",\"content\":\"\\u5bfb\\u627e\\u6700\\u771f\\u5b9e\\u7684\\u81ea\\u5df1\\uff0c\\u53d1\\u73b0\\u65b0\\u5947\\u6216\\u7f8e\\u597d\\u7684\\u3001 \\u73cd\\u8d35\\u7684\\u4e8b\\u7269\\uff0c\\u5236\\u4f5c\\u6210\\u5f71\\u7247\\u548c\\u97f3\\u4e50\",\"image\":\"\\/uploads\\/20200429\\/34f3d201ecd2b0695f13b0b7afab8a5e.png\",\"vediofile\":\"\\/uploads\\/20200429\\/198918f40ecc7cab0fc4231adaf67c96.mp4\",\"weigh\":\"4\",\"status\":\"1\",\"types\":\"1\"},\"ids\":\"4\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', 1588152232);
INSERT INTO `fa_admin_log` VALUES (132, 1, 'admin', '/houtai.php/article/edit/ids/4?dialog=1', '文章管理 编辑', '{\"dialog\":\"1\",\"row\":{\"title\":\"\\u56fe\\u7247\\u6444\\u5f71\",\"keywords\":\"\\u56fe\\u7247\\u6444\\u5f71\",\"content\":\"\\u56fe\\u7247\\u8bb0\\u5f55\\u4f60\\u7684\\u6545\\u4e8b\\uff0c\\u5206\\u4eab\\u4f60\\u7684\\u5fc3\\u60c5\\uff0c\\u4e3a\\u4f60\\u7684\\u751f\\u6d3b\\u5b58\\u7559\\u8bb0\\u5fc6\",\"image\":\"\\/uploads\\/20200429\\/34f3d201ecd2b0695f13b0b7afab8a5e.png\",\"vediofile\":\"\\/uploads\\/20200429\\/198918f40ecc7cab0fc4231adaf67c96.mp4\",\"weigh\":\"4\",\"status\":\"1\",\"types\":\"1\"},\"ids\":\"4\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', 1588152258);
INSERT INTO `fa_admin_log` VALUES (133, 1, 'admin', '/houtai.php/ajax/upload', '', '{\"name\":\"img-04.jpg\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', 1588152282);
INSERT INTO `fa_admin_log` VALUES (134, 1, 'admin', '/houtai.php/article/edit/ids/3?dialog=1', '文章管理 编辑', '{\"dialog\":\"1\",\"row\":{\"title\":\"\\u5e7f\\u544a\\u62cd\\u6444\",\"keywords\":\"\\u5e7f\\u544a\\u62cd\\u6444\",\"content\":\"\\u6bcf\\u4e00\\u5e27\\u7684\\u8bb0\\u5f55\\uff0c\\u90fd\\u662f\\u521b\\u610f\\u7684\\u5c55\\u73b0\\uff0c\\u6211\\u4eec\\u5c3d\\u91cf\\u6700\\u5927\\u7a0b\\u5ea6\\u7684\\u5c55\\u793a\\u4f60\\u7684\\u54c1\\u724c\\u4ef7\\u503c\\u548c\\u8bed\\u8a00\",\"image\":\"\\/uploads\\/20200429\\/553e9e3d7bb91e1007eaf256a9ea5cae.jpg\",\"vediofile\":\"\\/uploads\\/20200429\\/3cf571d4cf2a4c4b2df823a27852a7d5.mp4\",\"weigh\":\"3\",\"status\":\"1\",\"types\":\"1\"},\"ids\":\"3\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', 1588152290);
INSERT INTO `fa_admin_log` VALUES (135, 1, 'admin', '/houtai.php/article/del/ids/8,7,6,5', '文章管理 删除', '{\"action\":\"del\",\"ids\":\"8,7,6,5\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', 1588152383);
INSERT INTO `fa_admin_log` VALUES (136, 1, 'admin', '/houtai.php/article/edit/ids/2?dialog=1', '文章管理 编辑', '{\"dialog\":\"1\",\"row\":{\"title\":\"\\u75ab\\u60c5\\u540e\",\"keywords\":\"\\u4e2d\\u56fd\\u6a21\\u5f0f\",\"content\":\"\\u75ab\\u60c5\\u540e\\u72ec\\u7acb\\u5f71\\u50cf\\u4e2d\\u5fc3\\u5982\\u4f55\\u8d70\\u51fa\\u201c\\u4e2d\\u56fd\\u6a21\\u5f0f\\u201d\\uff1f\",\"image\":\"\",\"vediofile\":\"\",\"weigh\":\"2\",\"status\":\"1\",\"types\":\"3\"},\"ids\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', 1588152427);
INSERT INTO `fa_admin_log` VALUES (137, 1, 'admin', '/houtai.php/article/edit/ids/2?dialog=1', '文章管理 编辑', '{\"dialog\":\"1\",\"row\":{\"title\":\"\\u75ab\\u60c5\\u540e\\u72ec\\u7acb\\u5f71\\u50cf\\u4e2d\\u5fc3\\u5982\\u4f55\\u8d70\\u51fa\\u201c\\u4e2d\\u56fd\\u6a21\\u5f0f\\u201d\\uff1f\",\"keywords\":\"\\u4e2d\\u56fd\\u6a21\\u5f0f\",\"content\":\"\\u75ab\\u60c5\\u540e\\u72ec\\u7acb\\u5f71\\u50cf\\u4e2d\\u5fc3\\u5982\\u4f55\\u8d70\\u51fa\\u201c\\u4e2d\\u56fd\\u6a21\\u5f0f\\u201d\\uff1f\",\"image\":\"\",\"vediofile\":\"\",\"weigh\":\"2\",\"status\":\"1\",\"types\":\"3\"},\"ids\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', 1588152455);
INSERT INTO `fa_admin_log` VALUES (138, 1, 'admin', '/houtai.php/index/login?url=%2Fhoutai.php', '登录', '{\"url\":\"\\/houtai.php\",\"__token__\":\"7bd3caeadb6817f183e899178c6495ed\",\"username\":\"admin\",\"captcha\":\"dxal\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', 1588211113);
INSERT INTO `fa_admin_log` VALUES (139, 1, 'admin', '/houtai.php/ajax/upload', '', '{\"name\":\"movie.mp4\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', 1588211137);
INSERT INTO `fa_admin_log` VALUES (140, 1, 'admin', '/houtai.php/ajax/upload', '', '{\"name\":\"mov_bbb.mp4\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', 1588211171);

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
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fa_article
-- ----------------------------
INSERT INTO `fa_article` VALUES (1, '测试123', '关键字111', '将你的故事心情、优美的图片、有共鸣的音乐以及心动的视频随时随地分享', '/uploads/20200426/553e9e3d7bb91e1007eaf256a9ea5cae.jpg', '', 1587568353, 1587865891, 1, '1', '2');
INSERT INTO `fa_article` VALUES (2, '疫情后独立影像中心如何走出“中国模式”？', '中国模式', '疫情后独立影像中心如何走出“中国模式”？', '', '', 1587654709, 1588152455, 2, '1', '3');
INSERT INTO `fa_article` VALUES (3, '广告拍摄', '广告拍摄', '每一帧的记录，都是创意的展现，我们尽量最大程度的展示你的品牌价值和语言', '/uploads/20200429/553e9e3d7bb91e1007eaf256a9ea5cae.jpg', '/uploads/20200429/3cf571d4cf2a4c4b2df823a27852a7d5.mp4', 1587808805, 1588152290, 3, '1', '1');
INSERT INTO `fa_article` VALUES (4, '图片摄影', '图片摄影', '图片记录你的故事，分享你的心情，为你的生活存留记忆', '/uploads/20200429/34f3d201ecd2b0695f13b0b7afab8a5e.png', '/uploads/20200429/198918f40ecc7cab0fc4231adaf67c96.mp4', 1587871044, 1588152258, 4, '1', '1');
INSERT INTO `fa_article` VALUES (9, '视频制作', '寻找最真实的自己，发现新奇或美好的、 珍贵的事物，制作成影片和音乐', '寻找最真实的自己，发现新奇或美好的、 珍贵的事物，制作成影片和音乐', '/uploads/20200429/76d5432dd97d43b2d334a85f5bcf48b5.png', '/uploads/20200429/3cf571d4cf2a4c4b2df823a27852a7d5.mp4', 1588151659, 1588152188, 9, '1', '1');
INSERT INTO `fa_article` VALUES (10, '音乐制作', '音乐制作', '将你的故事心情、优美的图片、有共鸣的音乐以及心动的视频随时随地分享', '/uploads/20200429/d2f861da61c882e04ee34746d60192f1.png', '/uploads/20200429/198918f40ecc7cab0fc4231adaf67c96.mp4', 1588152107, 1588152107, 10, '1', '1');

-- ----------------------------
-- Table structure for fa_attachment
-- ----------------------------
DROP TABLE IF EXISTS `fa_attachment`;
CREATE TABLE `fa_attachment`  (
  `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `admin_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '管理员ID',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '会员ID',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '物理路径',
  `imagewidth` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '宽度',
  `imageheight` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '高度',
  `imagetype` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '图片类型',
  `imageframes` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '图片帧数',
  `filesize` bigint(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '文件大小',
  `mimetype` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'mime类型',
  `extparam` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '透传数据',
  `createtime` int(10) NULL DEFAULT NULL COMMENT '创建日期',
  `updatetime` int(10) NULL DEFAULT NULL COMMENT '更新时间',
  `uploadtime` int(10) NULL DEFAULT NULL COMMENT '上传时间',
  `storage` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'local' COMMENT '存储位置',
  `sha1` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '文件 sha1编码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '附件表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fa_attachment
-- ----------------------------
INSERT INTO `fa_attachment` VALUES (1, 1, 0, '/assets/img/qrcode.png', '150', '150', 'png', 0, 21859, 'image/png', '', 1499681848, 1499681848, 1499681848, 'local', '17163603d0263e4838b9387ff2cd4877e8b018f6');
INSERT INTO `fa_attachment` VALUES (9, 1, 0, '/uploads/20200419/d91ec596fb53e5d9404ed787c726eb83.jpg', '195', '195', 'jpg', 0, 8082, 'image/jpeg', '{\"name\":\"ewm.jpg\"}', 1587294878, 1587294878, 1587294878, 'local', 'ddf4df4b635f09170e1626fe608c5d4f60f90eb0');
INSERT INTO `fa_attachment` VALUES (10, 1, 0, '/uploads/20200419/15fd31f7d106b8442cdd43cdfa4df6ef.jpg', '430', '430', 'jpg', 0, 27052, 'image/jpeg', '{\"name\":\"qrcode.jpg\"}', 1587296168, 1587296168, 1587296168, 'local', '987ff62bee9c6a32ae2a824cd8208f3702addae6');
INSERT INTO `fa_attachment` VALUES (11, 1, 0, '/uploads/20200422/48615d149059e0eca606b92f4681de0f.mp4', '', '', 'mp4', 0, 99485998, 'video/mp4', '{\"name\":\"8-1\\u6b4c\\u5355\\u8be6\\u60c5\\u9875\\u5e03\\u5c40\\u4ecb\\u7ecdVuex\\u5b9e\\u73b0\\u8def\\u7531\\u6570\\u636e\\u901a\\u8baf.mp4\"}', 1587526173, 1587526173, 1587526173, 'local', '7b3d5569147b673d985ca18904149ce08bded422');
INSERT INTO `fa_attachment` VALUES (12, 1, 0, '/uploads/20200423/994a47f3727a6c1ef14f9e067ab38b05.png', '1920', '1080', 'png', 0, 1086792, 'image/png', '{\"name\":\"index_slide_1.png\"}', 1587607220, 1587607220, 1587607220, 'local', '0f2e226fba23b3c20be8d00cbc00714e70dfbf83');
INSERT INTO `fa_attachment` VALUES (13, 1, 0, '/uploads/20200423/358794a48faf153b34ba712b733800ea.png', '1920', '1080', 'png', 0, 636464, 'image/png', '{\"name\":\"index_slide_3.png\"}', 1587607234, 1587607234, 1587607234, 'local', 'd149c0d2b03f038a419c8329e21c6763a27f6150');
INSERT INTO `fa_attachment` VALUES (14, 1, 0, '/uploads/20200423/a8cdbfd9f245ce460e9698fe30127383.png', '1920', '1080', 'png', 0, 505427, 'image/png', '{\"name\":\"index_slide_2.png\"}', 1587607261, 1587607261, 1587607261, 'local', '4fe27d6bb256f26b61d34b55c368a1366432e4c0');
INSERT INTO `fa_attachment` VALUES (15, 1, 0, '/uploads/20200426/76d5432dd97d43b2d334a85f5bcf48b5.png', '480', '840', 'png', 0, 115193, 'image/png', '{\"name\":\"img-02.png\"}', 1587865531, 1587865531, 1587865531, 'local', 'b3f517cee2995a74f0ff5a89245e42518b66dbcf');
INSERT INTO `fa_attachment` VALUES (16, 1, 0, '/uploads/20200426/3cf571d4cf2a4c4b2df823a27852a7d5.mp4', '', '', 'mp4', 0, 318465, 'video/mp4', '{\"name\":\"movie.mp4\"}', 1587865789, 1587865789, 1587865789, 'local', 'c90b44a96ed080c1a6c8ce8888a40a5aaaa7e7ca');
INSERT INTO `fa_attachment` VALUES (17, 1, 0, '/uploads/20200426/553e9e3d7bb91e1007eaf256a9ea5cae.jpg', '480', '840', 'jpg', 0, 54406, 'image/jpeg', '{\"name\":\"img-04.jpg\"}', 1587865885, 1587865885, 1587865885, 'local', '9bbe26b0aa4d2771ca87fc609ef50208f501a8e7');
INSERT INTO `fa_attachment` VALUES (18, 1, 0, '/uploads/20200426/198918f40ecc7cab0fc4231adaf67c96.mp4', '', '', 'mp4', 0, 788493, 'video/mp4', '{\"name\":\"mov_bbb.mp4\"}', 1587871038, 1587871038, 1587871038, 'local', '438ad3bf24fed937085ffa101ed06cdb23e30007');
INSERT INTO `fa_attachment` VALUES (19, 1, 0, '/uploads/20200429/198918f40ecc7cab0fc4231adaf67c96.mp4', '', '', 'mp4', 0, 788493, 'video/mp4', '{\"name\":\"mov_bbb.mp4\"}', 1588151629, 1588151629, 1588151629, 'local', '438ad3bf24fed937085ffa101ed06cdb23e30007');
INSERT INTO `fa_attachment` VALUES (20, 1, 0, '/uploads/20200429/d2f861da61c882e04ee34746d60192f1.png', '480', '840', 'png', 0, 160341, 'image/png', '{\"name\":\"img-01.png\"}', 1588152070, 1588152070, 1588152070, 'local', '3e2721d75355af8aab8c1a137373cc37093d6bfa');
INSERT INTO `fa_attachment` VALUES (21, 1, 0, '/uploads/20200429/76d5432dd97d43b2d334a85f5bcf48b5.png', '480', '840', 'png', 0, 115193, 'image/png', '{\"name\":\"img-02.png\"}', 1588152158, 1588152158, 1588152158, 'local', 'b3f517cee2995a74f0ff5a89245e42518b66dbcf');
INSERT INTO `fa_attachment` VALUES (22, 1, 0, '/uploads/20200429/3cf571d4cf2a4c4b2df823a27852a7d5.mp4', '', '', 'mp4', 0, 318465, 'video/mp4', '{\"name\":\"movie.mp4\"}', 1588152183, 1588152183, 1588152183, 'local', 'c90b44a96ed080c1a6c8ce8888a40a5aaaa7e7ca');
INSERT INTO `fa_attachment` VALUES (23, 1, 0, '/uploads/20200429/34f3d201ecd2b0695f13b0b7afab8a5e.png', '480', '840', 'png', 0, 83526, 'image/png', '{\"name\":\"img-03.png\"}', 1588152224, 1588152224, 1588152224, 'local', '032e30afce95ba8145e4c437e97017d80aa6a317');
INSERT INTO `fa_attachment` VALUES (24, 1, 0, '/uploads/20200429/553e9e3d7bb91e1007eaf256a9ea5cae.jpg', '480', '840', 'jpg', 0, 54406, 'image/jpeg', '{\"name\":\"img-04.jpg\"}', 1588152282, 1588152282, 1588152282, 'local', '9bbe26b0aa4d2771ca87fc609ef50208f501a8e7');
INSERT INTO `fa_attachment` VALUES (25, 1, 0, '/uploads/20200430/3cf571d4cf2a4c4b2df823a27852a7d5.mp4', '', '', 'mp4', 0, 318465, 'video/mp4', '{\"name\":\"movie.mp4\"}', 1588211137, 1588211137, 1588211137, 'local', 'c90b44a96ed080c1a6c8ce8888a40a5aaaa7e7ca');
INSERT INTO `fa_attachment` VALUES (26, 1, 0, '/uploads/20200430/198918f40ecc7cab0fc4231adaf67c96.mp4', '', '', 'mp4', 0, 788493, 'video/mp4', '{\"name\":\"mov_bbb.mp4\"}', 1588211171, 1588211171, 1588211171, 'local', '438ad3bf24fed937085ffa101ed06cdb23e30007');

-- ----------------------------
-- Table structure for fa_auth_group
-- ----------------------------
DROP TABLE IF EXISTS `fa_auth_group`;
CREATE TABLE `fa_auth_group`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '父组别',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '组名',
  `rules` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '规则ID',
  `createtime` int(10) NULL DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) NULL DEFAULT NULL COMMENT '更新时间',
  `status` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '分组表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fa_auth_group
-- ----------------------------
INSERT INTO `fa_auth_group` VALUES (1, 0, 'Admin group', '*', 1490883540, 149088354, 'normal');
INSERT INTO `fa_auth_group` VALUES (2, 1, 'Second group', '13,14,16,15,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,40,41,42,43,44,45,46,47,48,49,50,55,56,57,58,59,60,61,62,63,64,65,1,9,10,11,7,6,8,2,4,5', 1490883540, 1505465692, 'normal');
INSERT INTO `fa_auth_group` VALUES (3, 2, 'Third group', '1,4,9,10,11,13,14,15,16,17,40,41,42,43,44,45,46,47,48,49,50,55,56,57,58,59,60,61,62,63,64,65,5', 1490883540, 1502205322, 'normal');
INSERT INTO `fa_auth_group` VALUES (4, 1, 'Second group 2', '1,4,13,14,15,16,17,55,56,57,58,59,60,61,62,63,64,65', 1490883540, 1502205350, 'normal');
INSERT INTO `fa_auth_group` VALUES (5, 2, 'Third group 2', '1,2,6,7,8,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34', 1490883540, 1502205344, 'normal');

-- ----------------------------
-- Table structure for fa_auth_group_access
-- ----------------------------
DROP TABLE IF EXISTS `fa_auth_group_access`;
CREATE TABLE `fa_auth_group_access`  (
  `uid` int(10) UNSIGNED NOT NULL COMMENT '会员ID',
  `group_id` int(10) UNSIGNED NOT NULL COMMENT '级别ID',
  UNIQUE INDEX `uid_group_id`(`uid`, `group_id`) USING BTREE,
  INDEX `uid`(`uid`) USING BTREE,
  INDEX `group_id`(`group_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '权限分组表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fa_auth_group_access
-- ----------------------------
INSERT INTO `fa_auth_group_access` VALUES (1, 1);

-- ----------------------------
-- Table structure for fa_auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `fa_auth_rule`;
CREATE TABLE `fa_auth_rule`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` enum('menu','file') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'file' COMMENT 'menu为菜单,file为权限节点',
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '父ID',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '规则名称',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '规则名称',
  `icon` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '图标',
  `condition` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '条件',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  `ismenu` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否为菜单',
  `createtime` int(10) NULL DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) NULL DEFAULT NULL COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT 0 COMMENT '权重',
  `status` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE,
  INDEX `pid`(`pid`) USING BTREE,
  INDEX `weigh`(`weigh`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 97 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '节点表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fa_auth_rule
-- ----------------------------
INSERT INTO `fa_auth_rule` VALUES (1, 'file', 0, 'dashboard', '控制台', 'fa fa-dashboard', '', 'Dashboard tips', 1, 1497429920, 1584975683, 143, 'hidden');
INSERT INTO `fa_auth_rule` VALUES (2, 'file', 0, 'general', 'General', 'fa fa-cogs', '', '', 1, 1497429920, 1497430169, 137, 'normal');
INSERT INTO `fa_auth_rule` VALUES (3, 'file', 0, 'category', '分类管理', 'fa fa-leaf', '', 'Category tips', 1, 1497429920, 1587200853, 119, 'hidden');
INSERT INTO `fa_auth_rule` VALUES (4, 'file', 0, 'addon', '插件管理', 'fa fa-rocket', '', 'Addon tips', 1, 1502035509, 1584975774, 0, 'hidden');
INSERT INTO `fa_auth_rule` VALUES (5, 'file', 0, 'auth', 'Auth', 'fa fa-group', '', '', 1, 1497429920, 1497430092, 99, 'normal');
INSERT INTO `fa_auth_rule` VALUES (6, 'file', 2, 'general/config', 'Config', 'fa fa-cog', '', 'Config tips', 1, 1497429920, 1497430683, 60, 'normal');
INSERT INTO `fa_auth_rule` VALUES (7, 'file', 2, 'general/attachment', 'Attachment', 'fa fa-file-image-o', '', 'Attachment tips', 1, 1497429920, 1497430699, 53, 'normal');
INSERT INTO `fa_auth_rule` VALUES (8, 'file', 2, 'general/profile', 'Profile', 'fa fa-user', '', '', 1, 1497429920, 1497429920, 34, 'normal');
INSERT INTO `fa_auth_rule` VALUES (9, 'file', 5, 'auth/admin', 'Admin', 'fa fa-user', '', 'Admin tips', 1, 1497429920, 1497430320, 118, 'normal');
INSERT INTO `fa_auth_rule` VALUES (10, 'file', 5, 'auth/adminlog', 'Admin log', 'fa fa-list-alt', '', 'Admin log tips', 1, 1497429920, 1497430307, 113, 'normal');
INSERT INTO `fa_auth_rule` VALUES (11, 'file', 5, 'auth/group', 'Group', 'fa fa-group', '', 'Group tips', 1, 1497429920, 1497429920, 109, 'normal');
INSERT INTO `fa_auth_rule` VALUES (12, 'file', 5, 'auth/rule', 'Rule', 'fa fa-bars', '', 'Rule tips', 1, 1497429920, 1497430581, 104, 'normal');
INSERT INTO `fa_auth_rule` VALUES (13, 'file', 1, 'dashboard/index', 'View', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 136, 'normal');
INSERT INTO `fa_auth_rule` VALUES (14, 'file', 1, 'dashboard/add', 'Add', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 135, 'normal');
INSERT INTO `fa_auth_rule` VALUES (15, 'file', 1, 'dashboard/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 133, 'normal');
INSERT INTO `fa_auth_rule` VALUES (16, 'file', 1, 'dashboard/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 134, 'normal');
INSERT INTO `fa_auth_rule` VALUES (17, 'file', 1, 'dashboard/multi', 'Multi', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 132, 'normal');
INSERT INTO `fa_auth_rule` VALUES (18, 'file', 6, 'general/config/index', 'View', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 52, 'normal');
INSERT INTO `fa_auth_rule` VALUES (19, 'file', 6, 'general/config/add', 'Add', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 51, 'normal');
INSERT INTO `fa_auth_rule` VALUES (20, 'file', 6, 'general/config/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 50, 'normal');
INSERT INTO `fa_auth_rule` VALUES (21, 'file', 6, 'general/config/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 49, 'normal');
INSERT INTO `fa_auth_rule` VALUES (22, 'file', 6, 'general/config/multi', 'Multi', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 48, 'normal');
INSERT INTO `fa_auth_rule` VALUES (23, 'file', 7, 'general/attachment/index', 'View', 'fa fa-circle-o', '', 'Attachment tips', 0, 1497429920, 1497429920, 59, 'normal');
INSERT INTO `fa_auth_rule` VALUES (24, 'file', 7, 'general/attachment/select', 'Select attachment', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 58, 'normal');
INSERT INTO `fa_auth_rule` VALUES (25, 'file', 7, 'general/attachment/add', 'Add', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 57, 'normal');
INSERT INTO `fa_auth_rule` VALUES (26, 'file', 7, 'general/attachment/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 56, 'normal');
INSERT INTO `fa_auth_rule` VALUES (27, 'file', 7, 'general/attachment/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 55, 'normal');
INSERT INTO `fa_auth_rule` VALUES (28, 'file', 7, 'general/attachment/multi', 'Multi', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 54, 'normal');
INSERT INTO `fa_auth_rule` VALUES (29, 'file', 8, 'general/profile/index', 'View', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 33, 'normal');
INSERT INTO `fa_auth_rule` VALUES (30, 'file', 8, 'general/profile/update', 'Update profile', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 32, 'normal');
INSERT INTO `fa_auth_rule` VALUES (31, 'file', 8, 'general/profile/add', 'Add', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 31, 'normal');
INSERT INTO `fa_auth_rule` VALUES (32, 'file', 8, 'general/profile/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 30, 'normal');
INSERT INTO `fa_auth_rule` VALUES (33, 'file', 8, 'general/profile/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 29, 'normal');
INSERT INTO `fa_auth_rule` VALUES (34, 'file', 8, 'general/profile/multi', 'Multi', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 28, 'normal');
INSERT INTO `fa_auth_rule` VALUES (35, 'file', 3, 'category/index', 'View', 'fa fa-circle-o', '', 'Category tips', 0, 1497429920, 1497429920, 142, 'normal');
INSERT INTO `fa_auth_rule` VALUES (36, 'file', 3, 'category/add', 'Add', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 141, 'normal');
INSERT INTO `fa_auth_rule` VALUES (37, 'file', 3, 'category/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 140, 'normal');
INSERT INTO `fa_auth_rule` VALUES (38, 'file', 3, 'category/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 139, 'normal');
INSERT INTO `fa_auth_rule` VALUES (39, 'file', 3, 'category/multi', 'Multi', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 138, 'normal');
INSERT INTO `fa_auth_rule` VALUES (40, 'file', 9, 'auth/admin/index', 'View', 'fa fa-circle-o', '', 'Admin tips', 0, 1497429920, 1497429920, 117, 'normal');
INSERT INTO `fa_auth_rule` VALUES (41, 'file', 9, 'auth/admin/add', 'Add', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 116, 'normal');
INSERT INTO `fa_auth_rule` VALUES (42, 'file', 9, 'auth/admin/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 115, 'normal');
INSERT INTO `fa_auth_rule` VALUES (43, 'file', 9, 'auth/admin/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 114, 'normal');
INSERT INTO `fa_auth_rule` VALUES (44, 'file', 10, 'auth/adminlog/index', 'View', 'fa fa-circle-o', '', 'Admin log tips', 0, 1497429920, 1497429920, 112, 'normal');
INSERT INTO `fa_auth_rule` VALUES (45, 'file', 10, 'auth/adminlog/detail', 'Detail', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 111, 'normal');
INSERT INTO `fa_auth_rule` VALUES (46, 'file', 10, 'auth/adminlog/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 110, 'normal');
INSERT INTO `fa_auth_rule` VALUES (47, 'file', 11, 'auth/group/index', 'View', 'fa fa-circle-o', '', 'Group tips', 0, 1497429920, 1497429920, 108, 'normal');
INSERT INTO `fa_auth_rule` VALUES (48, 'file', 11, 'auth/group/add', 'Add', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 107, 'normal');
INSERT INTO `fa_auth_rule` VALUES (49, 'file', 11, 'auth/group/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 106, 'normal');
INSERT INTO `fa_auth_rule` VALUES (50, 'file', 11, 'auth/group/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 105, 'normal');
INSERT INTO `fa_auth_rule` VALUES (51, 'file', 12, 'auth/rule/index', 'View', 'fa fa-circle-o', '', 'Rule tips', 0, 1497429920, 1497429920, 103, 'normal');
INSERT INTO `fa_auth_rule` VALUES (52, 'file', 12, 'auth/rule/add', 'Add', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 102, 'normal');
INSERT INTO `fa_auth_rule` VALUES (53, 'file', 12, 'auth/rule/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 101, 'normal');
INSERT INTO `fa_auth_rule` VALUES (54, 'file', 12, 'auth/rule/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 100, 'normal');
INSERT INTO `fa_auth_rule` VALUES (55, 'file', 4, 'addon/index', 'View', 'fa fa-circle-o', '', 'Addon tips', 0, 1502035509, 1502035509, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (56, 'file', 4, 'addon/add', 'Add', 'fa fa-circle-o', '', '', 0, 1502035509, 1502035509, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (57, 'file', 4, 'addon/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1502035509, 1502035509, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (58, 'file', 4, 'addon/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1502035509, 1502035509, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (59, 'file', 4, 'addon/downloaded', 'Local addon', 'fa fa-circle-o', '', '', 0, 1502035509, 1502035509, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (60, 'file', 4, 'addon/state', 'Update state', 'fa fa-circle-o', '', '', 0, 1502035509, 1502035509, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (63, 'file', 4, 'addon/config', 'Setting', 'fa fa-circle-o', '', '', 0, 1502035509, 1502035509, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (64, 'file', 4, 'addon/refresh', 'Refresh', 'fa fa-circle-o', '', '', 0, 1502035509, 1502035509, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (65, 'file', 4, 'addon/multi', 'Multi', 'fa fa-circle-o', '', '', 0, 1502035509, 1502035509, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (66, 'file', 0, 'user', '会员管理', 'fa fa-list', '', '', 1, 1516374729, 1587200884, 0, 'hidden');
INSERT INTO `fa_auth_rule` VALUES (67, 'file', 66, 'user/user', 'User', 'fa fa-user', '', '', 1, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (68, 'file', 67, 'user/user/index', 'View', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (69, 'file', 67, 'user/user/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (70, 'file', 67, 'user/user/add', 'Add', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (71, 'file', 67, 'user/user/del', 'Del', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (72, 'file', 67, 'user/user/multi', 'Multi', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (73, 'file', 66, 'user/group', 'User group', 'fa fa-users', '', '', 1, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (74, 'file', 73, 'user/group/add', 'Add', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (75, 'file', 73, 'user/group/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (76, 'file', 73, 'user/group/index', 'View', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (77, 'file', 73, 'user/group/del', 'Del', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (78, 'file', 73, 'user/group/multi', 'Multi', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (79, 'file', 66, 'user/rule', 'User rule', 'fa fa-circle-o', '', '', 1, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (80, 'file', 79, 'user/rule/index', 'View', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (81, 'file', 79, 'user/rule/del', 'Del', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (82, 'file', 79, 'user/rule/add', 'Add', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (83, 'file', 79, 'user/rule/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (84, 'file', 79, 'user/rule/multi', 'Multi', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (85, 'file', 0, 'article', '文章管理', 'fa fa-book', '', '', 1, 1587192920, 1587200905, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (86, 'file', 85, 'article/index', '查看', 'fa fa-circle-o', '', '', 0, 1587192920, 1587199482, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (87, 'file', 85, 'article/add', '添加', 'fa fa-circle-o', '', '', 0, 1587192920, 1587199482, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (88, 'file', 85, 'article/edit', '编辑', 'fa fa-circle-o', '', '', 0, 1587192920, 1587199483, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (89, 'file', 85, 'article/del', '删除', 'fa fa-circle-o', '', '', 0, 1587192920, 1587199483, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (90, 'file', 85, 'article/multi', '批量更新', 'fa fa-circle-o', '', '', 0, 1587192920, 1587199483, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (91, 'file', 0, 'banners', '轮播图管理', 'fa fa-upload', '', '', 1, 1587607077, 1587607180, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (92, 'file', 91, 'banners/index', '查看', 'fa fa-circle-o', '', '', 0, 1587607077, 1587607077, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (93, 'file', 91, 'banners/add', '添加', 'fa fa-circle-o', '', '', 0, 1587607077, 1587607077, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (94, 'file', 91, 'banners/edit', '编辑', 'fa fa-circle-o', '', '', 0, 1587607077, 1587607077, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (95, 'file', 91, 'banners/del', '删除', 'fa fa-circle-o', '', '', 0, 1587607077, 1587607077, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (96, 'file', 91, 'banners/multi', '批量更新', 'fa fa-circle-o', '', '', 0, 1587607077, 1587607077, 0, 'normal');

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
INSERT INTO `fa_banners` VALUES (1, '/uploads/20200423/a8cdbfd9f245ce460e9698fe30127383.png', 2, 1587569864, 1587607262, '1');
INSERT INTO `fa_banners` VALUES (3, '/uploads/20200423/994a47f3727a6c1ef14f9e067ab38b05.png', 1, 1587569907, 1587607270, '1');

-- ----------------------------
-- Table structure for fa_category
-- ----------------------------
DROP TABLE IF EXISTS `fa_category`;
CREATE TABLE `fa_category`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '父ID',
  `type` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '栏目类型',
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `nickname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `flag` set('hot','index','recommend') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '图片',
  `keywords` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '关键字',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '描述',
  `diyname` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '自定义名称',
  `createtime` int(10) NULL DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) NULL DEFAULT NULL COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT 0 COMMENT '权重',
  `status` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `weigh`(`weigh`, `id`) USING BTREE,
  INDEX `pid`(`pid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '分类表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fa_category
-- ----------------------------
INSERT INTO `fa_category` VALUES (1, 0, 'page', '官方新闻', 'news', 'recommend', '/assets/img/qrcode.png', '', '', 'news', 1495262190, 1495262190, 1, 'normal');
INSERT INTO `fa_category` VALUES (2, 0, 'page', '移动应用', 'mobileapp', 'hot', '/assets/img/qrcode.png', '', '', 'mobileapp', 1495262244, 1495262244, 2, 'normal');
INSERT INTO `fa_category` VALUES (3, 2, 'page', '微信公众号', 'wechatpublic', 'index', '/assets/img/qrcode.png', '', '', 'wechatpublic', 1495262288, 1495262288, 3, 'normal');
INSERT INTO `fa_category` VALUES (4, 2, 'page', 'Android开发', 'android', 'recommend', '/assets/img/qrcode.png', '', '', 'android', 1495262317, 1495262317, 4, 'normal');
INSERT INTO `fa_category` VALUES (5, 0, 'page', '软件产品', 'software', 'recommend', '/assets/img/qrcode.png', '', '', 'software', 1495262336, 1499681850, 5, 'normal');
INSERT INTO `fa_category` VALUES (6, 5, 'page', '网站建站', 'website', 'recommend', '/assets/img/qrcode.png', '', '', 'website', 1495262357, 1495262357, 6, 'normal');
INSERT INTO `fa_category` VALUES (7, 5, 'page', '企业管理软件', 'company', 'index', '/assets/img/qrcode.png', '', '', 'company', 1495262391, 1495262391, 7, 'normal');
INSERT INTO `fa_category` VALUES (8, 6, 'page', 'PC端', 'website-pc', 'recommend', '/assets/img/qrcode.png', '', '', 'website-pc', 1495262424, 1495262424, 8, 'normal');
INSERT INTO `fa_category` VALUES (9, 6, 'page', '移动端', 'website-mobile', 'recommend', '/assets/img/qrcode.png', '', '', 'website-mobile', 1495262456, 1495262456, 9, 'normal');
INSERT INTO `fa_category` VALUES (10, 7, 'page', 'CRM系统 ', 'company-crm', 'recommend', '/assets/img/qrcode.png', '', '', 'company-crm', 1495262487, 1495262487, 10, 'normal');
INSERT INTO `fa_category` VALUES (11, 7, 'page', 'SASS平台软件', 'company-sass', 'recommend', '/assets/img/qrcode.png', '', '', 'company-sass', 1495262515, 1495262515, 11, 'normal');
INSERT INTO `fa_category` VALUES (12, 0, 'test', '测试1', 'test1', 'recommend', '/assets/img/qrcode.png', '', '', 'test1', 1497015727, 1497015727, 12, 'normal');
INSERT INTO `fa_category` VALUES (13, 0, 'test', '测试2', 'test2', 'recommend', '/assets/img/qrcode.png', '', '', 'test2', 1497015738, 1497015738, 13, 'normal');
INSERT INTO `fa_category` VALUES (14, 0, 'article', '测试文章', 'article', 'recommend', '/uploads/20200415/9e1d7e79428b0c36e3d4ad404f6483b2.png', 'tesTarticle', '这是测试文章！！！这是测试文章！！！这是测试文章！！！这是测试文章！！！这是测试文章！！！这是测试文章！！！这是测试文章！！！这是测试文章！！！这是测试文章！！！这是测试文章！！！这是测试文章！！！这是测试文章！！！这是测试文章！！！这是测试文章！！！这是测试文章！！！', '', 1586956476, 1586956516, 14, 'normal');

-- ----------------------------
-- Table structure for fa_config
-- ----------------------------
DROP TABLE IF EXISTS `fa_config`;
CREATE TABLE `fa_config`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '变量名',
  `group` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '分组',
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '变量标题',
  `tip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '变量描述',
  `type` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '类型:string,text,int,bool,array,datetime,date,file',
  `value` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '变量值',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '变量字典数据',
  `rule` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '验证规则',
  `extend` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '扩展属性',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统配置' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fa_config
-- ----------------------------
INSERT INTO `fa_config` VALUES (1, 'name', 'basic', 'Site name', '请填写站点名称', 'string', '测试网站', '', 'required', '');
INSERT INTO `fa_config` VALUES (2, 'keywords', 'basic', 'Keywords', '请填写站点关键字', 'string', '关键字123', '', '', '');
INSERT INTO `fa_config` VALUES (3, 'description', 'basic', 'Description', '请填写站点描述', 'string', '描述123', '', '', '');
INSERT INTO `fa_config` VALUES (4, 'serviceQQ', 'basic', 'ServiceQQ', '客服QQ', 'string', '154339617', '', '', '');
INSERT INTO `fa_config` VALUES (5, 'wechatQrcode', 'basic', 'WechatQrcode', '微信客服二维码', 'file', '/uploads/20200419/15fd31f7d106b8442cdd43cdfa4df6ef.jpg', '', '', '');
INSERT INTO `fa_config` VALUES (6, 'beian', 'basic', 'Beian', '粤ICP备15000000号-1', 'string', '', '', '', '');
INSERT INTO `fa_config` VALUES (7, 'cdnurl', 'basic', 'Cdn url', '如果静态资源使用第三方云储存请配置该值', 'string', '', '', '', '');
INSERT INTO `fa_config` VALUES (8, 'version', 'basic', 'Version', '如果静态资源有变动请重新配置该值', 'string', '1.0.1', '', 'required', '');
INSERT INTO `fa_config` VALUES (9, 'timezone', 'basic', 'Timezone', '', 'string', 'Asia/Shanghai', '', 'required', '');
INSERT INTO `fa_config` VALUES (10, 'forbiddenip', 'basic', 'Forbidden ip', '一行一条记录', 'text', '', '', '', '');
INSERT INTO `fa_config` VALUES (11, 'languages', 'basic', 'Languages', '', 'array', '{\"backend\":\"zh-cn\",\"frontend\":\"zh-cn\"}', '', 'required', '');
INSERT INTO `fa_config` VALUES (12, 'fixedpage', 'basic', 'Fixed page', '请尽量输入左侧菜单栏存在的链接', 'string', 'dashboard', '', 'required', '');
INSERT INTO `fa_config` VALUES (13, 'categorytype', 'dictionary', 'Category type', '', 'array', '{\"default\":\"Default\",\"page\":\"Page\",\"article\":\"Article\",\"test\":\"Test\"}', '', '', '');
INSERT INTO `fa_config` VALUES (14, 'configgroup', 'dictionary', 'Config group', '', 'array', '{\"basic\":\"Basic\",\"email\":\"Email\",\"dictionary\":\"Dictionary\",\"user\":\"User\",\"example\":\"Example\"}', '', '', '');
INSERT INTO `fa_config` VALUES (15, 'mail_type', 'email', 'Mail type', '选择邮件发送方式', 'select', '1', '[\"Please select\",\"SMTP\",\"Mail\"]', '', '');
INSERT INTO `fa_config` VALUES (16, 'mail_smtp_host', 'email', 'Mail smtp host', '错误的配置发送邮件会导致服务器超时', 'string', 'smtp.qq.com', '', '', '');
INSERT INTO `fa_config` VALUES (17, 'mail_smtp_port', 'email', 'Mail smtp port', '(不加密默认25,SSL默认465,TLS默认587)', 'string', '465', '', '', '');
INSERT INTO `fa_config` VALUES (18, 'mail_smtp_user', 'email', 'Mail smtp user', '（填写完整用户名）', 'string', '10000', '', '', '');
INSERT INTO `fa_config` VALUES (19, 'mail_smtp_pass', 'email', 'Mail smtp password', '（填写您的密码）', 'string', 'password', '', '', '');
INSERT INTO `fa_config` VALUES (20, 'mail_verify_type', 'email', 'Mail vertify type', '（SMTP验证方式[推荐SSL]）', 'select', '2', '[\"None\",\"TLS\",\"SSL\"]', '', '');
INSERT INTO `fa_config` VALUES (21, 'mail_from', 'email', 'Mail from', '', 'string', '10000@qq.com', '', '', '');

-- ----------------------------
-- Table structure for fa_ems
-- ----------------------------
DROP TABLE IF EXISTS `fa_ems`;
CREATE TABLE `fa_ems`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `event` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '事件',
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '邮箱',
  `code` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '验证码',
  `times` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '验证次数',
  `ip` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'IP',
  `createtime` int(10) UNSIGNED NULL DEFAULT 0 COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '邮箱验证码表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for fa_sms
-- ----------------------------
DROP TABLE IF EXISTS `fa_sms`;
CREATE TABLE `fa_sms`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `event` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '事件',
  `mobile` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '手机号',
  `code` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '验证码',
  `times` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '验证次数',
  `ip` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'IP',
  `createtime` int(10) UNSIGNED NULL DEFAULT 0 COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '短信验证码表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for fa_test
-- ----------------------------
DROP TABLE IF EXISTS `fa_test`;
CREATE TABLE `fa_test`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `admin_id` int(10) NOT NULL DEFAULT 0 COMMENT '管理员ID',
  `category_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '分类ID(单选)',
  `category_ids` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '分类ID(多选)',
  `week` enum('monday','tuesday','wednesday') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '星期(单选):monday=星期一,tuesday=星期二,wednesday=星期三',
  `flag` set('hot','index','recommend') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '标志(多选):hot=热门,index=首页,recommend=推荐',
  `genderdata` enum('male','female') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'male' COMMENT '性别(单选):male=男,female=女',
  `hobbydata` set('music','reading','swimming') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '爱好(多选):music=音乐,reading=读书,swimming=游泳',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '标题',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '图片',
  `images` varchar(1500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '图片组',
  `attachfile` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '附件',
  `keywords` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '关键字',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '描述',
  `city` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '省市',
  `json` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '配置:key=名称,value=值',
  `price` float(10, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '价格',
  `views` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '点击',
  `startdate` date NULL DEFAULT NULL COMMENT '开始日期',
  `activitytime` datetime(0) NULL DEFAULT NULL COMMENT '活动时间(datetime)',
  `year` year NULL DEFAULT NULL COMMENT '年',
  `times` time(0) NULL DEFAULT NULL COMMENT '时间',
  `refreshtime` int(10) NULL DEFAULT NULL COMMENT '刷新时间(int)',
  `createtime` int(10) NULL DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) NULL DEFAULT NULL COMMENT '更新时间',
  `deletetime` int(10) NULL DEFAULT NULL COMMENT '删除时间',
  `weigh` int(10) NOT NULL DEFAULT 0 COMMENT '权重',
  `switch` tinyint(1) NOT NULL DEFAULT 0 COMMENT '开关',
  `status` enum('normal','hidden') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'normal' COMMENT '状态',
  `state` enum('0','1','2') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1' COMMENT '状态值:0=禁用,1=正常,2=推荐',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '测试表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fa_test
-- ----------------------------
INSERT INTO `fa_test` VALUES (1, 0, 12, '12,13', 'monday', 'hot,index', 'male', 'music,reading', '我是一篇测试文章', '<p>我是测试内容</p>', '/assets/img/avatar.png', '/assets/img/avatar.png,/assets/img/qrcode.png', '/assets/img/avatar.png', '关键字', '描述', '广西壮族自治区/百色市/平果县', '{\"a\":\"1\",\"b\":\"2\"}', 0.00, 0, '2017-07-10', '2017-07-10 18:24:45', 2017, '18:24:45', 1499682285, 1499682526, 1499682526, NULL, 0, 1, 'normal', '1');

-- ----------------------------
-- Table structure for fa_user
-- ----------------------------
DROP TABLE IF EXISTS `fa_user`;
CREATE TABLE `fa_user`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '组别ID',
  `username` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `nickname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '昵称',
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '密码',
  `salt` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '密码盐',
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '电子邮箱',
  `mobile` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '手机号',
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '头像',
  `level` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '等级',
  `gender` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '性别',
  `birthday` date NULL DEFAULT NULL COMMENT '生日',
  `bio` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '格言',
  `money` decimal(10, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '余额',
  `score` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分',
  `successions` int(10) UNSIGNED NOT NULL DEFAULT 1 COMMENT '连续登录天数',
  `maxsuccessions` int(10) UNSIGNED NOT NULL DEFAULT 1 COMMENT '最大连续登录天数',
  `prevtime` int(10) NULL DEFAULT NULL COMMENT '上次登录时间',
  `logintime` int(10) NULL DEFAULT NULL COMMENT '登录时间',
  `loginip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '登录IP',
  `loginfailure` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '失败次数',
  `joinip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '加入IP',
  `jointime` int(10) NULL DEFAULT NULL COMMENT '加入时间',
  `createtime` int(10) NULL DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) NULL DEFAULT NULL COMMENT '更新时间',
  `token` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'Token',
  `status` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '状态',
  `verification` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '验证',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `username`(`username`) USING BTREE,
  INDEX `email`(`email`) USING BTREE,
  INDEX `mobile`(`mobile`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '会员表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fa_user
-- ----------------------------
INSERT INTO `fa_user` VALUES (1, 1, 'admin', 'admin', 'c13f62012fd6a8fdf06b3452a94430e5', 'rpR6Bv', 'admin@163.com', '13888888888', '', 0, 0, '2017-04-15', '', 0.00, 0, 1, 1, 1516170492, 1516171614, '127.0.0.1', 0, '127.0.0.1', 1491461418, 0, 1516171614, '', 'normal', '');

-- ----------------------------
-- Table structure for fa_user_group
-- ----------------------------
DROP TABLE IF EXISTS `fa_user_group`;
CREATE TABLE `fa_user_group`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '组名',
  `rules` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '权限节点',
  `createtime` int(10) NULL DEFAULT NULL COMMENT '添加时间',
  `updatetime` int(10) NULL DEFAULT NULL COMMENT '更新时间',
  `status` enum('normal','hidden') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '会员组表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fa_user_group
-- ----------------------------
INSERT INTO `fa_user_group` VALUES (1, '默认组', '1,2,3,4,5,6,7,8,9,10,11,12', 1515386468, 1516168298, 'normal');

-- ----------------------------
-- Table structure for fa_user_money_log
-- ----------------------------
DROP TABLE IF EXISTS `fa_user_money_log`;
CREATE TABLE `fa_user_money_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '会员ID',
  `money` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '变更余额',
  `before` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '变更前余额',
  `after` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '变更后余额',
  `memo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  `createtime` int(10) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '会员余额变动表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for fa_user_rule
-- ----------------------------
DROP TABLE IF EXISTS `fa_user_rule`;
CREATE TABLE `fa_user_rule`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pid` int(10) NULL DEFAULT NULL COMMENT '父ID',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '标题',
  `remark` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `ismenu` tinyint(1) NULL DEFAULT NULL COMMENT '是否菜单',
  `createtime` int(10) NULL DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) NULL DEFAULT NULL COMMENT '更新时间',
  `weigh` int(10) NULL DEFAULT 0 COMMENT '权重',
  `status` enum('normal','hidden') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '会员规则表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fa_user_rule
-- ----------------------------
INSERT INTO `fa_user_rule` VALUES (1, 0, 'index', '前台', '', 1, 1516168079, 1516168079, 1, 'normal');
INSERT INTO `fa_user_rule` VALUES (2, 0, 'api', 'API接口', '', 1, 1516168062, 1516168062, 2, 'normal');
INSERT INTO `fa_user_rule` VALUES (3, 1, 'user', '会员模块', '', 1, 1515386221, 1516168103, 12, 'normal');
INSERT INTO `fa_user_rule` VALUES (4, 2, 'user', '会员模块', '', 1, 1515386221, 1516168092, 11, 'normal');
INSERT INTO `fa_user_rule` VALUES (5, 3, 'index/user/login', '登录', '', 0, 1515386247, 1515386247, 5, 'normal');
INSERT INTO `fa_user_rule` VALUES (6, 3, 'index/user/register', '注册', '', 0, 1515386262, 1516015236, 7, 'normal');
INSERT INTO `fa_user_rule` VALUES (7, 3, 'index/user/index', '会员中心', '', 0, 1516015012, 1516015012, 9, 'normal');
INSERT INTO `fa_user_rule` VALUES (8, 3, 'index/user/profile', '个人资料', '', 0, 1516015012, 1516015012, 4, 'normal');
INSERT INTO `fa_user_rule` VALUES (9, 4, 'api/user/login', '登录', '', 0, 1515386247, 1515386247, 6, 'normal');
INSERT INTO `fa_user_rule` VALUES (10, 4, 'api/user/register', '注册', '', 0, 1515386262, 1516015236, 8, 'normal');
INSERT INTO `fa_user_rule` VALUES (11, 4, 'api/user/index', '会员中心', '', 0, 1516015012, 1516015012, 10, 'normal');
INSERT INTO `fa_user_rule` VALUES (12, 4, 'api/user/profile', '个人资料', '', 0, 1516015012, 1516015012, 3, 'normal');

-- ----------------------------
-- Table structure for fa_user_score_log
-- ----------------------------
DROP TABLE IF EXISTS `fa_user_score_log`;
CREATE TABLE `fa_user_score_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '会员ID',
  `score` int(10) NOT NULL DEFAULT 0 COMMENT '变更积分',
  `before` int(10) NOT NULL DEFAULT 0 COMMENT '变更前积分',
  `after` int(10) NOT NULL DEFAULT 0 COMMENT '变更后积分',
  `memo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  `createtime` int(10) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '会员积分变动表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for fa_user_token
-- ----------------------------
DROP TABLE IF EXISTS `fa_user_token`;
CREATE TABLE `fa_user_token`  (
  `token` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Token',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '会员ID',
  `createtime` int(10) NULL DEFAULT NULL COMMENT '创建时间',
  `expiretime` int(10) NULL DEFAULT NULL COMMENT '过期时间',
  PRIMARY KEY (`token`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '会员Token表' ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
