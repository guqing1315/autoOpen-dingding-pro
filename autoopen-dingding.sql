/*
 Navicat Premium Data Transfer

 Source Server         : 101.42.44.22
 Source Server Type    : MySQL
 Source Server Version : 50740
 Source Host           : 101.42.44.22:3306
 Source Schema         : autoopen-dingding

 Target Server Type    : MySQL
 Target Server Version : 50740
 File Encoding         : 65001

 Date: 12/05/2023 21:32:48
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for device_info
-- ----------------------------
DROP TABLE IF EXISTS `device_info`;
CREATE TABLE `device_info`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `charging` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '充电状态',
  `update_time` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新时间',
  `battery_status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '电池状态',
  `phone_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '详细型号',
  `sysver` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '系统版本号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for run_time_log
-- ----------------------------
DROP TABLE IF EXISTS `run_time_log`;
CREATE TABLE `run_time_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `start_time` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '开始时间',
  `end_time` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '结束时间',
  `log_str` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '操作日志',
  `daka_img` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '最后打卡情况图片base64',
  `status` int(11) NULL DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '脚本运行时间日志' ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
