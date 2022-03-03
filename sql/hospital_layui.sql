/*
 Navicat Premium Data Transfer

 Source Server         : ssm
 Source Server Type    : MySQL
 Source Server Version : 50727
 Source Host           : localhost:3306
 Source Schema         : hospital_layui

 Target Server Type    : MySQL
 Target Server Version : 50727
 File Encoding         : 65001

 Date: 22/03/2021 18:56:35
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nickname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `roleId` bigint(20) NULL DEFAULT NULL,
  `roleName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'jack', 'E10ADC3949BA59ABBE56E057F20F883E', '杰克', 1, '超级管理员', '1', '13312341234', '123@qq.com');
INSERT INTO `admin` VALUES (3, 'rose', 'E10ADC3949BA59ABBE56E057F20F883E', '露丝', 2, NULL, '0', '13212341234', 'rose@qq.com');
INSERT INTO `admin` VALUES (5, 'rony', 'E10ADC3949BA59ABBE56E057F20F883E', '鲁尼', 3, NULL, '1', NULL, NULL);
INSERT INTO `admin` VALUES (7, '超人', 'E10ADC3949BA59ABBE56E057F20F883E', '超人', 2, NULL, '2', '12312341234', '123@125.com');
INSERT INTO `admin` VALUES (8, 'wer5', 'E10ADC3949BA59ABBE56E057F20F883E', NULL, 2, NULL, '0', NULL, NULL);
INSERT INTO `admin` VALUES (10, 'taiyizhenren', 'E10ADC3949BA59ABBE56E057F20F883E', '太乙真人', 10, NULL, '0', '13212121212', 'adfa12ew3@qq.com');
INSERT INTO `admin` VALUES (13, 'shfhdf', 'E10ADC3949BA59ABBE56E057F20F883E', NULL, 3, NULL, '1', NULL, NULL);
INSERT INTO `admin` VALUES (14, 'jj', 'E10ADC3949BA59ABBE56E057F20F883E', '叽叽', 3, NULL, '1', '13111111111', 'jiji@126.com');
INSERT INTO `admin` VALUES (16, 'ww', 'E10ADC3949BA59ABBE56E057F20F883E', 'wwww', 3, NULL, '1', '12311111111', '121@126.com');
INSERT INTO `admin` VALUES (22, 'wwww', 'E10ADC3949BA59ABBE56E057F20F883E', '12313', 10, NULL, '1', '13212341234', '1232@126.com');

-- ----------------------------
-- Table structure for adminlog
-- ----------------------------
DROP TABLE IF EXISTS `adminlog`;
CREATE TABLE `adminlog`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adminUsername` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `loginIp` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `loginTime` timestamp(0) NULL DEFAULT NULL,
  `logoutTime` timestamp(0) NULL DEFAULT NULL,
  `isSafeExit` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 815 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of adminlog
-- ----------------------------
INSERT INTO `adminlog` VALUES (769, 'jack', '0:0:0:0:0:0:0:1', '2021-03-15 13:00:31', '2021-03-15 13:00:31', 0);
INSERT INTO `adminlog` VALUES (770, 'jack', '0:0:0:0:0:0:0:1', '2021-03-15 13:05:01', '2021-03-15 13:05:45', 1);
INSERT INTO `adminlog` VALUES (771, 'jack', '0:0:0:0:0:0:0:1', '2021-03-15 13:46:10', '2021-03-15 13:46:13', 1);
INSERT INTO `adminlog` VALUES (772, 'jack', '0:0:0:0:0:0:0:1', '2021-03-15 13:49:57', '2021-03-15 13:55:27', 1);
INSERT INTO `adminlog` VALUES (773, 'jack', '0:0:0:0:0:0:0:1', '2021-03-15 13:55:40', '2021-03-15 13:56:00', 1);
INSERT INTO `adminlog` VALUES (774, 'jack', '0:0:0:0:0:0:0:1', '2021-03-15 14:05:38', '2021-03-15 14:05:38', 0);
INSERT INTO `adminlog` VALUES (775, 'jack', '0:0:0:0:0:0:0:1', '2021-03-15 14:10:39', '2021-03-15 14:13:01', 1);
INSERT INTO `adminlog` VALUES (776, 'jack', '0:0:0:0:0:0:0:1', '2021-03-15 19:36:21', '2021-03-15 19:36:52', 1);
INSERT INTO `adminlog` VALUES (777, 'jack', '0:0:0:0:0:0:0:1', '2021-03-16 08:27:31', '2021-03-16 08:27:31', 0);
INSERT INTO `adminlog` VALUES (778, 'jack', '0:0:0:0:0:0:0:1', '2021-03-16 08:30:33', '2021-03-16 08:30:33', 0);
INSERT INTO `adminlog` VALUES (779, 'jack', '0:0:0:0:0:0:0:1', '2021-03-16 08:35:45', '2021-03-16 08:35:45', 0);
INSERT INTO `adminlog` VALUES (780, 'jack', '0:0:0:0:0:0:0:1', '2021-03-16 08:41:37', '2021-03-16 08:41:37', 0);
INSERT INTO `adminlog` VALUES (781, 'jack', '0:0:0:0:0:0:0:1', '2021-03-16 12:36:04', '2021-03-16 12:36:04', 0);
INSERT INTO `adminlog` VALUES (782, 'jack', '0:0:0:0:0:0:0:1', '2021-03-16 12:40:09', '2021-03-16 12:40:41', 1);
INSERT INTO `adminlog` VALUES (783, 'jack', '0:0:0:0:0:0:0:1', '2021-03-16 12:41:12', '2021-03-16 12:42:47', 1);
INSERT INTO `adminlog` VALUES (784, 'jack', '0:0:0:0:0:0:0:1', '2021-03-16 13:15:31', '2021-03-16 13:15:31', 0);
INSERT INTO `adminlog` VALUES (785, 'jack', '0:0:0:0:0:0:0:1', '2021-03-16 13:27:58', '2021-03-16 13:27:58', 0);
INSERT INTO `adminlog` VALUES (786, 'jack', '0:0:0:0:0:0:0:1', '2021-03-16 13:43:14', '2021-03-16 13:43:14', 0);
INSERT INTO `adminlog` VALUES (787, 'jack', '0:0:0:0:0:0:0:1', '2021-03-16 13:48:39', '2021-03-16 13:48:39', 0);
INSERT INTO `adminlog` VALUES (788, 'jack', '0:0:0:0:0:0:0:1', '2021-03-16 13:50:36', '2021-03-16 13:51:01', 1);
INSERT INTO `adminlog` VALUES (789, 'jack', '0:0:0:0:0:0:0:1', '2021-03-16 13:51:13', '2021-03-16 13:51:13', 0);
INSERT INTO `adminlog` VALUES (790, 'jack', '0:0:0:0:0:0:0:1', '2021-03-16 13:53:42', '2021-03-16 13:53:42', 0);
INSERT INTO `adminlog` VALUES (791, 'jack', '0:0:0:0:0:0:0:1', '2021-03-17 15:30:50', '2021-03-17 15:31:09', 1);
INSERT INTO `adminlog` VALUES (792, 'jack', '0:0:0:0:0:0:0:1', '2021-03-18 09:53:39', '2021-03-18 09:53:39', 0);
INSERT INTO `adminlog` VALUES (793, 'jack', '0:0:0:0:0:0:0:1', '2021-03-18 09:57:05', '2021-03-18 09:57:05', 0);
INSERT INTO `adminlog` VALUES (794, 'jack', '0:0:0:0:0:0:0:1', '2021-03-18 10:00:21', '2021-03-18 10:00:21', 0);
INSERT INTO `adminlog` VALUES (795, 'jack', '0:0:0:0:0:0:0:1', '2021-03-18 10:05:39', '2021-03-18 10:05:39', 0);
INSERT INTO `adminlog` VALUES (796, 'jack', '0:0:0:0:0:0:0:1', '2021-03-18 10:07:29', '2021-03-18 10:07:29', 0);
INSERT INTO `adminlog` VALUES (797, 'jack', '0:0:0:0:0:0:0:1', '2021-03-18 14:22:02', '2021-03-18 14:22:02', 0);
INSERT INTO `adminlog` VALUES (798, 'jack', '0:0:0:0:0:0:0:1', '2021-03-18 14:33:11', '2021-03-18 14:33:11', 0);
INSERT INTO `adminlog` VALUES (799, 'jack', '0:0:0:0:0:0:0:1', '2021-03-18 14:37:47', '2021-03-18 14:37:47', 0);
INSERT INTO `adminlog` VALUES (800, 'jack', '0:0:0:0:0:0:0:1', '2021-03-18 14:48:41', '2021-03-18 14:48:41', 0);
INSERT INTO `adminlog` VALUES (801, 'jack', '0:0:0:0:0:0:0:1', '2021-03-18 14:49:58', '2021-03-18 14:49:58', 0);
INSERT INTO `adminlog` VALUES (802, 'jack', '0:0:0:0:0:0:0:1', '2021-03-18 14:52:46', '2021-03-18 14:52:46', 0);
INSERT INTO `adminlog` VALUES (803, 'jack', '0:0:0:0:0:0:0:1', '2021-03-18 14:54:59', '2021-03-18 14:56:07', 1);
INSERT INTO `adminlog` VALUES (804, 'jack', '0:0:0:0:0:0:0:1', '2021-03-18 14:59:11', '2021-03-18 14:59:11', 0);
INSERT INTO `adminlog` VALUES (805, 'jack', '0:0:0:0:0:0:0:1', '2021-03-19 08:26:14', '2021-03-19 08:26:14', 0);
INSERT INTO `adminlog` VALUES (806, 'jack', '0:0:0:0:0:0:0:1', '2021-03-19 08:33:39', '2021-03-19 08:33:39', 0);
INSERT INTO `adminlog` VALUES (807, 'jack', '0:0:0:0:0:0:0:1', '2021-03-19 08:36:38', '2021-03-19 08:36:38', 0);
INSERT INTO `adminlog` VALUES (808, 'jack', '0:0:0:0:0:0:0:1', '2021-03-19 08:37:37', '2021-03-19 08:37:37', 0);
INSERT INTO `adminlog` VALUES (809, 'jack', '0:0:0:0:0:0:0:1', '2021-03-19 08:38:55', '2021-03-19 08:38:55', 0);
INSERT INTO `adminlog` VALUES (810, 'jack', '0:0:0:0:0:0:0:1', '2021-03-19 09:10:29', '2021-03-19 09:10:29', 0);
INSERT INTO `adminlog` VALUES (811, 'jack', '0:0:0:0:0:0:0:1', '2021-03-19 09:17:39', '2021-03-19 09:18:22', 1);
INSERT INTO `adminlog` VALUES (812, 'jack', '0:0:0:0:0:0:0:1', '2021-03-19 15:01:23', '2021-03-19 15:02:02', 1);
INSERT INTO `adminlog` VALUES (813, 'jack', '0:0:0:0:0:0:0:1', '2021-03-22 08:32:13', '2021-03-22 08:32:20', 1);
INSERT INTO `adminlog` VALUES (814, 'jack', '0:0:0:0:0:0:0:1', '2021-03-22 11:13:30', '2021-03-22 11:13:43', 1);

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `menuId` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `icon` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `href` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `perms` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `spread` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `parentId` bigint(20) NULL DEFAULT NULL,
  `sorting` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`menuId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 67 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES (1, '登录首页', 'layui-icon-home', NULL, NULL, 'false', 0, 1);
INSERT INTO `menu` VALUES (2, '我的面板', 'layui-icon-username', '', '', 'false', 0, 2);
INSERT INTO `menu` VALUES (3, '个人信息', 'layui-icon-username', '../admin/personalDate', NULL, 'false', 2, 111);
INSERT INTO `menu` VALUES (4, '修改密码', 'layui-icon-password', '../admin/changePassword', NULL, 'false', 2, 112);
INSERT INTO `menu` VALUES (5, '登录日志', 'layui-icon-log', '../admin/adminLoginLog', NULL, 'false', 2, 113);
INSERT INTO `menu` VALUES (6, '医生管理', 'layui-icon-login-wechat', '', '', 'false', 0, 3);
INSERT INTO `menu` VALUES (7, '医生列表', 'layui-icon-tabs', '../admin/doctorList', '', 'false', 6, 114);
INSERT INTO `menu` VALUES (8, '患者管理', 'layui-icon-template-1', NULL, NULL, 'false', 0, 4);
INSERT INTO `menu` VALUES (9, '患者列表', 'layui-icon-template', '../admin/userList', NULL, 'false', 8, 115);
INSERT INTO `menu` VALUES (41, '预约管理', 'layui-icon-app', '', '', 'false', 0, 8);
INSERT INTO `menu` VALUES (42, '预约患者列表', 'layui-icon-read', '../reservation/doctorResList', '', 'false', 41, 117);
INSERT INTO `menu` VALUES (44, '患者病历菜单', 'layui-icon-username', '', '', 'false', 0, 9);
INSERT INTO `menu` VALUES (45, '病历列表', 'layui-icon-tabs', '../note/noteList', '', 'false', 44, 120);
INSERT INTO `menu` VALUES (49, '医生信息', 'layui-icon-vercode', '', '', 'false', 0, 10);
INSERT INTO `menu` VALUES (50, '个人信息', 'layui-icon-snowflake', '../doctor/info', '', 'false', 49, 123);
INSERT INTO `menu` VALUES (51, '修改密码', 'layui-icon-password', '../doctor/changePassword', '', 'false', 49, 124);
INSERT INTO `menu` VALUES (52, '患者信息', 'layui-icon-rate', '', '', 'false', 0, 11);
INSERT INTO `menu` VALUES (53, '个人信息', 'layui-icon-rate', '../user/info', '', 'false', 52, 125);
INSERT INTO `menu` VALUES (54, '修改密码', 'layui-icon-password', '../user/changePassword', '', 'false', 52, 126);
INSERT INTO `menu` VALUES (56, '我院医生', 'layui-icon-rate', NULL, NULL, 'false', 0, 12);
INSERT INTO `menu` VALUES (57, '医生列表', 'layui-icon-tabs', '../user/doctorList', NULL, 'false', 56, 127);
INSERT INTO `menu` VALUES (59, '医院公告', 'layui-icon-form', NULL, NULL, 'false', 0, 5);
INSERT INTO `menu` VALUES (60, '公告列表管理', 'layui-icon-form', '../promotion/AdminPromotionList', NULL, 'false', 59, 128);
INSERT INTO `menu` VALUES (62, '我的预约', 'layui-icon-snowflake', NULL, NULL, 'false', 0, 6);
INSERT INTO `menu` VALUES (63, '预约医生列表', 'layui-icon-form', '../reservation/myReservationList', NULL, 'false', 62, 129);
INSERT INTO `menu` VALUES (64, '科室管理', 'layui-icon-snowflake', NULL, NULL, 'false', 0, 7);
INSERT INTO `menu` VALUES (65, '科室列表', 'layui-icon-form', '../depart/departList', NULL, 'false', 64, 130);
INSERT INTO `menu` VALUES (66, '已接诊的预约', 'layui-icon-form', '../reservation/doctorResDoneList', NULL, 'false', 41, 131);

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `roleId` bigint(20) NOT NULL AUTO_INCREMENT,
  `roleName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `roleRemark` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`roleId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, '超级管理员', '所有权限');
INSERT INTO `role` VALUES (2, '患者', '查看 预约医生');
INSERT INTO `role` VALUES (3, '医生', '管理患者预约 病历');

-- ----------------------------
-- Table structure for rolemenu
-- ----------------------------
DROP TABLE IF EXISTS `rolemenu`;
CREATE TABLE `rolemenu`  (
  `roleId` bigint(20) NULL DEFAULT NULL,
  `menuId` bigint(20) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rolemenu
-- ----------------------------
INSERT INTO `rolemenu` VALUES (1, 1);
INSERT INTO `rolemenu` VALUES (1, 2);
INSERT INTO `rolemenu` VALUES (1, 3);
INSERT INTO `rolemenu` VALUES (1, 4);
INSERT INTO `rolemenu` VALUES (1, 5);
INSERT INTO `rolemenu` VALUES (1, 6);
INSERT INTO `rolemenu` VALUES (1, 7);
INSERT INTO `rolemenu` VALUES (1, 8);
INSERT INTO `rolemenu` VALUES (1, 9);
INSERT INTO `rolemenu` VALUES (1, 59);
INSERT INTO `rolemenu` VALUES (1, 60);
INSERT INTO `rolemenu` VALUES (2, 52);
INSERT INTO `rolemenu` VALUES (2, 53);
INSERT INTO `rolemenu` VALUES (2, 54);
INSERT INTO `rolemenu` VALUES (2, 56);
INSERT INTO `rolemenu` VALUES (2, 57);
INSERT INTO `rolemenu` VALUES (2, 62);
INSERT INTO `rolemenu` VALUES (2, 63);
INSERT INTO `rolemenu` VALUES (3, 41);
INSERT INTO `rolemenu` VALUES (3, 42);
INSERT INTO `rolemenu` VALUES (3, 44);
INSERT INTO `rolemenu` VALUES (3, 45);
INSERT INTO `rolemenu` VALUES (3, 49);
INSERT INTO `rolemenu` VALUES (3, 50);
INSERT INTO `rolemenu` VALUES (3, 51);
INSERT INTO `rolemenu` VALUES (1, 64);
INSERT INTO `rolemenu` VALUES (1, 65);
INSERT INTO `rolemenu` VALUES (3, 66);

-- ----------------------------
-- Table structure for tb_depart
-- ----------------------------
DROP TABLE IF EXISTS `tb_depart`;
CREATE TABLE `tb_depart`  (
  `depart_id` int(11) NOT NULL AUTO_INCREMENT,
  `depart_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`depart_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_depart
-- ----------------------------
INSERT INTO `tb_depart` VALUES (1, '未分配科室');
INSERT INTO `tb_depart` VALUES (2, '外科');
INSERT INTO `tb_depart` VALUES (3, '小儿科');
INSERT INTO `tb_depart` VALUES (6, '中医科');
INSERT INTO `tb_depart` VALUES (7, '骨科');
INSERT INTO `tb_depart` VALUES (8, '泌尿科');
INSERT INTO `tb_depart` VALUES (11, '骨科二科');

-- ----------------------------
-- Table structure for tb_doctor
-- ----------------------------
DROP TABLE IF EXISTS `tb_doctor`;
CREATE TABLE `tb_doctor`  (
  `doctor_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gender` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `birthday` timestamp(0) NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `roleId` bigint(20) NULL DEFAULT NULL,
  `rank` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `photo_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createTime` datetime(0) NULL DEFAULT NULL,
  `depart_id` int(11) NULL DEFAULT NULL,
  `realname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`doctor_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_doctor
-- ----------------------------
INSERT INTO `tb_doctor` VALUES (1, 'ys1212', 'E10ADC3949BA59ABBE56E057F20F883E', '0', '2021-03-01 00:00:00', '13211112222', '1211221@126.com', '北京', 3, '2', '32653179aa5f203801514913b9813a2c1d345fa4.jpeg', '2021-03-17 15:14:34', 3, '李铭222');
INSERT INTO `tb_doctor` VALUES (2, 'ys0', 'E10ADC3949BA59ABBE56E057F20F883E', '1', '2021-03-01 00:00:00', '13211111123', '1@126.com', '北京', 3, '3', '28702545895576036be147aa82abf3ccfaaca79f.jpeg', '2021-03-18 14:17:47', 1, '刘德虎');
INSERT INTO `tb_doctor` VALUES (3, 'ys1', 'E10ADC3949BA59ABBE56E057F20F883E', '1', '2019-03-05 00:00:00', '13212312312', '123@212.com', '武汉', 3, '1', '699029482a99ea92269e4ab586678a7377dfed64.jpeg', '2021-03-18 14:20:51', 1, '王德彪');
INSERT INTO `tb_doctor` VALUES (4, 'ys', 'E10ADC3949BA59ABBE56E057F20F883E', '1', '2018-03-06 00:00:00', '13212121211', '12@126.com', '上海', 3, '5', '626640818d177d2968bf4919b686a38222acbb64.jpeg', '2021-03-18 14:56:46', 1, '郝蕾');

-- ----------------------------
-- Table structure for tb_note
-- ----------------------------
DROP TABLE IF EXISTS `tb_note`;
CREATE TABLE `tb_note`  (
  `note_id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NOT NULL,
  `realname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `gender` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `birthday` datetime(0) NOT NULL,
  `note_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `note_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `doctor_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`note_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_note
-- ----------------------------
INSERT INTO `tb_note` VALUES (2, '2021-03-22 11:00:02', '王铁', '男', '2018-03-19 00:00:00', '感冒', '输液', 31, 3);
INSERT INTO `tb_note` VALUES (3, '2021-03-22 11:05:32', '汪明', '男', '2021-03-01 00:00:00', '咳嗽', '咳喘灵', 33, 1);
INSERT INTO `tb_note` VALUES (4, '2021-03-22 11:12:17', '李刚', '男', '2021-03-02 00:00:00', '发烧', '输液', 34, 1);
INSERT INTO `tb_note` VALUES (5, '2021-03-03 11:12:35', '王铁12', '男12', '2018-03-19 00:00:00', '骨折1', '手术治疗', 31, 1);
INSERT INTO `tb_note` VALUES (7, '2021-03-22 11:14:34', '患者2', '男', '2021-03-08 00:00:00', '感冒', '多喝热水', 32, 2);

-- ----------------------------
-- Table structure for tb_promotion
-- ----------------------------
DROP TABLE IF EXISTS `tb_promotion`;
CREATE TABLE `tb_promotion`  (
  `promotion_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pub_date` datetime(0) NOT NULL,
  PRIMARY KEY (`promotion_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_promotion
-- ----------------------------
INSERT INTO `tb_promotion` VALUES (1, '新设别招标', '本院需要新型肠镜检测仪', '2021-03-10 14:00:25');
INSERT INTO `tb_promotion` VALUES (2, '就诊卡丢失', '需要到相关部门备案', '2021-03-09 14:01:08');

-- ----------------------------
-- Table structure for tb_reservation
-- ----------------------------
DROP TABLE IF EXISTS `tb_reservation`;
CREATE TABLE `tb_reservation`  (
  `res_id` int(11) NOT NULL AUTO_INCREMENT,
  `status` int(11) NOT NULL,
  `order_time` datetime(0) NOT NULL,
  `create_time` datetime(0) NOT NULL,
  `res_user_id` int(11) NOT NULL,
  `res_doc_id` int(11) NOT NULL,
  PRIMARY KEY (`res_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_reservation
-- ----------------------------
INSERT INTO `tb_reservation` VALUES (4, 3, '2021-03-01 00:00:00', '2021-03-21 17:08:54', 31, 3);
INSERT INTO `tb_reservation` VALUES (5, 1, '2021-03-01 00:00:00', '2021-03-21 17:10:04', 31, 4);
INSERT INTO `tb_reservation` VALUES (8, 1, '2021-03-17 00:00:00', '2021-03-21 17:34:13', 32, 4);
INSERT INTO `tb_reservation` VALUES (9, 2, '2021-03-22 08:58:56', '2021-03-22 08:58:59', 31, 2);
INSERT INTO `tb_reservation` VALUES (10, 3, '2021-03-10 08:59:11', '2021-03-08 08:59:13', 32, 2);
INSERT INTO `tb_reservation` VALUES (11, 3, '2021-03-16 00:00:00', '2021-03-22 09:13:59', 31, 1);
INSERT INTO `tb_reservation` VALUES (12, 1, '2021-03-10 00:00:00', '2021-03-22 09:16:02', 32, 1);
INSERT INTO `tb_reservation` VALUES (13, 3, '2021-03-16 00:00:00', '2021-03-22 09:16:56', 30, 1);
INSERT INTO `tb_reservation` VALUES (14, 3, '2021-03-03 00:00:00', '2021-03-22 11:04:23', 33, 1);
INSERT INTO `tb_reservation` VALUES (15, 1, '2021-03-03 00:00:00', '2021-03-22 11:04:31', 33, 2);
INSERT INTO `tb_reservation` VALUES (16, 3, '2021-03-03 00:00:00', '2021-03-22 11:11:11', 34, 1);
INSERT INTO `tb_reservation` VALUES (17, 1, '2021-03-10 00:00:00', '2021-03-22 11:11:25', 34, 2);

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user`  (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gender` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `birthday` timestamp(0) NULL DEFAULT NULL,
  `phone` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `note` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `levelId` int(11) NULL DEFAULT NULL,
  `createTime` timestamp(0) NULL DEFAULT NULL,
  `roleId` bigint(20) NULL DEFAULT NULL,
  `photo_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `realname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES (30, 'aa1', 'E10ADC3949BA59ABBE56E057F20F883E', '1', '2017-03-08 00:00:00', '13211111111', '1213212@126.com', '北京', NULL, 1, 1, '2021-03-15 19:23:31', 2, '7411208163bcbbfd6628496fb2b6b7e6df44e6cf.jpeg', '王刚');
INSERT INTO `tb_user` VALUES (31, 'hz1', 'E10ADC3949BA59ABBE56E057F20F883E', '1', '2018-03-19 00:00:00', '13212121211', '12@126.com', '吉林', NULL, 1, 1, '2021-03-19 09:20:58', 2, '51536692b424b6e7ae914bf2af33c8ce725800b7.jpeg', '王铁');
INSERT INTO `tb_user` VALUES (32, 'hz2', 'E10ADC3949BA59ABBE56E057F20F883E', '1', '2021-03-08 00:00:00', '13211111111', '12@126.com', '济南', NULL, 1, 1, '2021-03-21 17:33:41', 2, '55135418b2b86404348f40199812ea2562aa8185.jpeg', '患者2');
INSERT INTO `tb_user` VALUES (33, 'hz3', 'E10ADC3949BA59ABBE56E057F20F883E', '1', '2021-03-01 00:00:00', '13212121212', '121@126.com', '北京', NULL, 1, 1, '2021-03-22 11:03:50', 2, '2507920263b81d65f849489894c98274b8fac85e.jpeg', '汪明');
INSERT INTO `tb_user` VALUES (34, 'hz4', 'E10ADC3949BA59ABBE56E057F20F883E', '1', '2021-03-02 00:00:00', '13223232323', '121@126.com', '济南', NULL, 1, 1, '2021-03-22 11:10:45', 2, '56729493cf5e0cab0c8f4932a108646b0d916479.jpeg', '李刚');

SET FOREIGN_KEY_CHECKS = 1;
