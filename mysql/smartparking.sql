/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50736
 Source Host           : localhost:3306
 Source Schema         : smartparking

 Target Server Type    : MySQL
 Target Server Version : 50736
 File Encoding         : 65001

 Date: 26/05/2022 22:43:18
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for app_car_manage
-- ----------------------------
DROP TABLE IF EXISTS `app_car_manage`;
CREATE TABLE `app_car_manage`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '车辆id',
  `gender` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `gmt_create` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `gmt_modified` datetime(0) NULL DEFAULT NULL COMMENT '更改时间',
  `name` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车主名称',
  `nickname` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车主昵称',
  `org_id` bigint(20) NOT NULL COMMENT '机构id',
  `org_name` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '机构名称',
  `park_manage_id` bigint(20) NOT NULL COMMENT '停车场id',
  `park_manage_name` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '停车场名称',
  `parking_lot` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `plate_number` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车牌号',
  `remark` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `status` smallint(6) NULL DEFAULT NULL COMMENT '状态',
  `type` smallint(6) NULL DEFAULT NULL COMMENT '车辆类型',
  `user_id_create` bigint(20) NULL DEFAULT NULL COMMENT '创建的用户角色',
  `validity_time` datetime(0) NULL DEFAULT NULL COMMENT '有效期限',
  `mobile` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '车辆信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of app_car_manage
-- ----------------------------
INSERT INTO `app_car_manage` VALUES (1, '1', '2021-04-11 21:58:50', '2022-05-03 10:38:03', NULL, '老张', 36, '万达广场', 3, '万达广场（红谷滩店）', 'A1', '赣A52321', NULL, 1, 0, NULL, '2022-05-31 00:00:00', '17762018584');
INSERT INTO `app_car_manage` VALUES (2, '0', '2022-05-03 10:37:39', '2022-05-16 14:27:54', NULL, '小小', 36, '万达广场', 3, '万达广场（红谷滩店）', 'A2', '赣B86Z88', NULL, 1, 0, NULL, '2022-05-29 00:00:00', '13654565898');
INSERT INTO `app_car_manage` VALUES (3, '1', '2022-05-03 10:39:30', '2022-05-16 16:21:15', NULL, '十一', 36, '万达广场', 2, '万达广场（八一广场店）', 'A6', '赣AEW018', NULL, 1, 1, NULL, '2022-06-05 00:00:00', '17845693212');
INSERT INTO `app_car_manage` VALUES (4, '1', '2022-05-03 10:40:29', '2022-05-16 14:25:56', NULL, '张三', 36, '万达广场', 3, '万达广场（红谷滩店）', 'A7', '赣LK9999', NULL, 1, 1, NULL, '2022-05-18 00:00:00', '13852564141');
INSERT INTO `app_car_manage` VALUES (5, '1', '2022-05-16 14:29:17', '2022-05-17 02:00:00', NULL, 'lin', 36, '万达广场', 3, '万达广场（红谷滩店）', 'A13', '赣LZ6002', NULL, 1, 0, NULL, '2022-05-29 00:00:00', '13652256565');

-- ----------------------------
-- Table structure for app_car_park_manage
-- ----------------------------
DROP TABLE IF EXISTS `app_car_park_manage`;
CREATE TABLE `app_car_park_manage`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '停车场id',
  `free_time` int(11) NULL DEFAULT NULL COMMENT '免费时间',
  `gmt_create` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `gmt_modified` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更改时间',
  `max_money` decimal(18, 2) NULL DEFAULT NULL COMMENT '最高费用',
  `name` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '停车场名称',
  `org_id` bigint(20) NOT NULL COMMENT '机构id',
  `org_name` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '机构名称',
  `parking_space_number` int(11) NULL DEFAULT NULL COMMENT '车位数量',
  `status` smallint(6) NULL DEFAULT NULL COMMENT '状态',
  `time_unit` int(11) NULL DEFAULT NULL COMMENT '单位时间',
  `unit_cost` decimal(18, 2) NULL DEFAULT NULL COMMENT '单位金额',
  `user_id_create` bigint(20) NULL DEFAULT NULL COMMENT '创建的用户角色',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '停车场数据' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of app_car_park_manage
-- ----------------------------
INSERT INTO `app_car_park_manage` VALUES (2, 30, '2021-03-27 21:52:08', '2022-05-16 15:28:10', 100.00, '万达广场（八一广场店）', 36, '万达广场', 50, 1, 30, 5.00, NULL);
INSERT INTO `app_car_park_manage` VALUES (3, 30, '2022-05-01 01:03:12', '2022-05-17 09:33:43', 200.00, '万达广场（红谷滩店）', 36, '万达广场', 30, 1, 15, 5.00, NULL);
INSERT INTO `app_car_park_manage` VALUES (4, 30, '2022-05-03 12:07:13', '2022-05-17 09:33:18', 200.00, '万达广场（西湖店）', 36, '万达广场', 50, 1, 30, 6.00, NULL);
INSERT INTO `app_car_park_manage` VALUES (5, 15, '2022-05-03 15:03:56', '2022-05-16 16:01:31', 100.00, '万达广场（青山湖店）', 36, '万达广场', 60, 1, 30, 5.00, NULL);

-- ----------------------------
-- Table structure for app_car_parking_record
-- ----------------------------
DROP TABLE IF EXISTS `app_car_parking_record`;
CREATE TABLE `app_car_parking_record`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '停车记录id',
  `cost` decimal(18, 2) NULL DEFAULT NULL COMMENT '费用',
  `gmt_into` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '入库时间',
  `gmt_out` datetime(0) NULL DEFAULT NULL COMMENT '出库时间',
  `org_id` bigint(20) NOT NULL COMMENT '机构id',
  `org_name` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '机构名称',
  `park_manage_id` bigint(20) NOT NULL COMMENT '停车场id',
  `park_manage_name` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '停车场名称',
  `plate_number` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车牌号',
  `type` smallint(6) NULL DEFAULT NULL COMMENT '车辆类型',
  `order_no` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '停车记录数据' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of app_car_parking_record
-- ----------------------------
INSERT INTO `app_car_parking_record` VALUES (4, 0.00, '2022-05-16 14:01:00', '2022-05-16 14:01:16', 36, '万达广场', 2, '万达广场（八一广场店）', '苏U00000', 2, NULL);
INSERT INTO `app_car_parking_record` VALUES (5, 0.00, '2022-05-16 14:03:42', '2022-05-16 14:04:15', 36, '万达广场', 2, '万达广场（八一广场店）', '浙A66666', 2, NULL);
INSERT INTO `app_car_parking_record` VALUES (6, 10.00, '2022-05-16 14:11:46', '2022-05-16 15:12:10', 36, '万达广场', 3, '万达广场（红谷滩店）', '沪KR9888', 2, NULL);
INSERT INTO `app_car_parking_record` VALUES (7, 5.00, '2022-05-16 15:11:14', '2022-05-16 16:09:27', 36, '万达广场', 5, '万达广场（青山湖店）', '赣B2B250', 2, NULL);
INSERT INTO `app_car_parking_record` VALUES (8, 5.00, '2022-05-16 15:13:19', '2022-05-16 16:10:31', 36, '万达广场', 2, '万达广场（八一广场店）', '赣J98081', 2, NULL);
INSERT INTO `app_car_parking_record` VALUES (9, 0.00, '2022-05-16 15:13:30', '2022-05-16 15:14:12', 36, '万达广场', 3, '万达广场（红谷滩店）', '赣LK9999', 1, NULL);
INSERT INTO `app_car_parking_record` VALUES (10, NULL, '2022-05-16 15:13:37', NULL, 36, '万达广场', 3, '万达广场（红谷滩店）', '赣AQ7182', 2, NULL);
INSERT INTO `app_car_parking_record` VALUES (11, 10.00, '2022-05-16 15:13:42', '2022-05-16 16:12:47', 36, '万达广场', 3, '万达广场（红谷滩店）', '赣B0M848', 2, NULL);
INSERT INTO `app_car_parking_record` VALUES (12, 10.00, '2022-05-16 15:13:47', '2022-05-16 16:13:04', 36, '万达广场', 3, '万达广场（红谷滩店）', '赣AEW018', 2, NULL);
INSERT INTO `app_car_parking_record` VALUES (13, 0.00, '2022-05-16 15:13:55', '2022-05-16 15:14:30', 36, '万达广场', 3, '万达广场（红谷滩店）', '赣J98081', 2, NULL);
INSERT INTO `app_car_parking_record` VALUES (14, 10.00, '2022-05-16 15:14:06', '2022-05-16 16:11:24', 36, '万达广场', 3, '万达广场（红谷滩店）', '赣LZ6002', 0, NULL);
INSERT INTO `app_car_parking_record` VALUES (15, NULL, '2022-05-16 15:14:19', NULL, 36, '万达广场', 3, '万达广场（红谷滩店）', '赣C99963', 2, NULL);
INSERT INTO `app_car_parking_record` VALUES (16, NULL, '2022-05-16 15:14:25', NULL, 36, '万达广场', 3, '万达广场（红谷滩店）', '赣LK9999', 1, NULL);
INSERT INTO `app_car_parking_record` VALUES (17, 12.00, '2022-05-16 15:15:13', '2022-05-16 16:45:31', 36, '万达广场', 4, '万达广场（西湖店）', '苏U00000', 2, NULL);
INSERT INTO `app_car_parking_record` VALUES (18, NULL, '2022-05-16 15:21:42', NULL, 36, '万达广场', 3, '万达广场（红谷滩店）', '赣J05D98', 2, NULL);
INSERT INTO `app_car_parking_record` VALUES (19, 0.00, '2022-05-16 16:02:02', '2022-05-16 16:04:24', 36, '万达广场', 3, '万达广场（红谷滩店）', '赣CS6577', 2, NULL);
INSERT INTO `app_car_parking_record` VALUES (20, NULL, '2022-05-16 16:11:05', NULL, 36, '万达广场', 2, '万达广场（八一广场店）', '赣LZ6002', 2, NULL);
INSERT INTO `app_car_parking_record` VALUES (21, NULL, '2022-05-16 16:44:02', NULL, 36, '万达广场', 3, '万达广场（红谷滩店）', '沪KR9888', 2, NULL);
INSERT INTO `app_car_parking_record` VALUES (22, 445.00, '2022-05-16 16:44:33', '2022-05-17 15:37:16', 36, '万达广场', 3, '万达广场（红谷滩店）', '浙A66666', 2, NULL);
INSERT INTO `app_car_parking_record` VALUES (23, 0.00, '2022-05-17 09:24:38', '2022-05-17 09:26:05', 36, '万达广场', 3, '万达广场（红谷滩店）', '赣B2B250', 2, NULL);
INSERT INTO `app_car_parking_record` VALUES (24, 0.00, '2022-05-17 09:29:04', '2022-05-17 09:29:28', 36, '万达广场', 2, '万达广场（八一广场店）', '赣AEW018', 1, NULL);
INSERT INTO `app_car_parking_record` VALUES (25, 0.00, '2022-05-17 12:43:47', '2022-05-17 12:44:21', 36, '万达广场', 3, '万达广场（红谷滩店）', '赣B86Z88', 0, NULL);
INSERT INTO `app_car_parking_record` VALUES (26, 0.00, '2022-05-17 15:35:48', '2022-05-17 15:36:12', 36, '万达广场', 2, '万达广场（八一广场店）', '赣B2B250', 2, NULL);

-- ----------------------------
-- Table structure for app_order
-- ----------------------------
DROP TABLE IF EXISTS `app_order`;
CREATE TABLE `app_order`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '订单id',
  `body` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '主体',
  `gmt_create` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `order_no` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单号',
  `org_Id` bigint(20) NOT NULL COMMENT '所属机构id',
  `park_manage_id` bigint(20) NOT NULL COMMENT '停车场id',
  `plate_number` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车牌号',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `status` smallint(6) NULL DEFAULT NULL COMMENT '状态',
  `total_Fee` decimal(18, 2) NULL DEFAULT NULL COMMENT '费用',
  `type` smallint(6) NULL DEFAULT NULL COMMENT '车辆类型',
  `user_create` bigint(20) NULL DEFAULT NULL COMMENT '创建的用户角色',
  `validity_time` datetime(0) NULL DEFAULT NULL COMMENT '有效期限',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 73 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '订单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of app_order
-- ----------------------------
INSERT INTO `app_order` VALUES (1, '车位续租', '2022-05-17 12:47:27', '32022051712472720706285435', 36, 3, '赣A52321', '', 1, 10.00, 0, 1, '2022-05-31 00:00:00');
INSERT INTO `app_order` VALUES (2, '车位续租', '2022-05-06 22:47:53', '32022050622475310320267218', 36, 3, '赣A52562', '', 1, 10.00, 0, 1, '2022-05-30 00:00:00');
INSERT INTO `app_order` VALUES (4, NULL, '2022-05-02 20:37:47', '6104494', 38, 2, '京N267EF', NULL, 1, 87.00, 1, 1, '2021-07-20 22:46:32');
INSERT INTO `app_order` VALUES (5, '车位续租', '2022-05-17 09:34:43', '32022051709344266430375791', 36, 3, '赣LZ6002', '', 1, 50.00, 2, 1, '2022-05-29 00:00:00');
INSERT INTO `app_order` VALUES (6, NULL, '2022-04-26 04:25:30', '1358989', 38, 2, '京N267EF', NULL, 1, 58.00, 1, 1, '2021-12-27 04:11:38');
INSERT INTO `app_order` VALUES (7, NULL, '2022-03-16 12:42:25', '4582642', 36, 2, '京N267EF', NULL, 0, 96.00, 2, 1, '2021-08-09 01:21:01');
INSERT INTO `app_order` VALUES (8, NULL, '2022-03-16 10:07:27', '1815860', 38, 2, '京N267EF', NULL, 1, 77.00, 2, 1, '2021-12-08 20:25:02');
INSERT INTO `app_order` VALUES (25, NULL, '2022-02-17 04:33:58', '5809216', 36, 2, '京N267EF', NULL, 1, 13.00, 0, 1, '2021-10-14 02:16:30');
INSERT INTO `app_order` VALUES (26, NULL, '2022-02-10 02:11:05', '9589123', 36, 2, '京N267EF', NULL, 1, 43.00, 2, 1, '2021-08-22 13:54:48');
INSERT INTO `app_order` VALUES (27, NULL, '2022-02-02 05:42:48', '1175913', 38, 2, '京N267EF', NULL, 1, 83.00, 0, 1, '2021-09-25 15:58:17');
INSERT INTO `app_order` VALUES (28, NULL, '2022-02-01 19:29:18', '2292145', 36, 2, '京N267EF', NULL, 1, 39.00, 1, 1, '2021-11-15 09:00:25');
INSERT INTO `app_order` VALUES (29, NULL, '2021-06-29 16:04:14', '6980470', 36, 2, '京N267EF', NULL, 1, 80.00, 3, 1, '2021-12-30 13:52:27');
INSERT INTO `app_order` VALUES (30, NULL, '2021-07-01 13:26:43', '1368118', 36, 2, '京N267EF', NULL, 1, 88.00, 2, 1, '2021-11-22 21:16:25');
INSERT INTO `app_order` VALUES (31, NULL, '2021-07-09 00:43:26', '6118498', 36, 2, '京N267EF', NULL, 0, 59.00, 0, 1, '2021-10-29 16:14:38');
INSERT INTO `app_order` VALUES (32, NULL, '2021-06-29 20:02:35', '4906716', 36, 2, '京N267EF', NULL, 1, 31.00, 0, 1, '2021-10-18 12:37:59');
INSERT INTO `app_order` VALUES (33, NULL, '2021-06-27 20:51:30', '6864885', 38, 2, '京N267EF', NULL, 1, 38.00, 2, 1, '2021-11-09 10:55:35');
INSERT INTO `app_order` VALUES (34, NULL, '2021-06-30 03:55:28', '8528351', 36, 2, '京N267EF', NULL, 1, 89.00, 1, 1, '2021-08-18 08:06:20');
INSERT INTO `app_order` VALUES (35, NULL, '2021-07-06 01:08:46', '6497539', 38, 2, '京N267EF', NULL, 1, 34.00, 0, 1, '2021-11-23 08:44:28');
INSERT INTO `app_order` VALUES (36, NULL, '2021-06-29 09:16:19', '9712904', 36, 2, '京N267EF', NULL, 1, 17.00, 0, 1, '2021-08-19 19:39:41');
INSERT INTO `app_order` VALUES (37, NULL, '2021-07-04 00:25:19', '8270634', 36, 2, '京N267EF', NULL, 1, 38.00, 1, 1, '2021-11-20 05:25:29');
INSERT INTO `app_order` VALUES (38, NULL, '2021-07-05 10:31:07', '9558278', 38, 2, '京N267EF', NULL, 1, 19.00, 0, 1, '2021-08-19 19:53:25');
INSERT INTO `app_order` VALUES (39, NULL, '2021-06-28 19:33:30', '7232909', 36, 2, '京N267EF', NULL, 1, 11.00, 0, 1, '2021-08-14 12:45:24');
INSERT INTO `app_order` VALUES (40, NULL, '2021-06-29 18:19:47', '4947761', 36, 2, '京N267EF', NULL, 1, 86.00, 2, 1, '2021-07-20 03:24:58');
INSERT INTO `app_order` VALUES (41, NULL, '2021-07-06 13:15:16', '1471801', 36, 2, '京N267EF', NULL, 1, 85.00, 0, 1, '2021-12-26 07:59:43');
INSERT INTO `app_order` VALUES (42, NULL, '2021-07-07 01:01:03', '5485469', 36, 2, '京N267EF', NULL, 1, 81.00, 2, 1, '2021-08-06 11:36:40');
INSERT INTO `app_order` VALUES (43, NULL, '2021-06-27 18:24:24', '2342543', 36, 2, '京N267EF', NULL, 1, 28.00, 2, 1, '2021-12-13 02:27:12');
INSERT INTO `app_order` VALUES (44, NULL, '2021-07-06 21:53:45', '5230734', 36, 2, '京N267EF', NULL, 1, 57.00, 0, 1, '2021-09-07 19:12:46');
INSERT INTO `app_order` VALUES (45, NULL, '2021-07-08 20:10:16', '2175632', 36, 2, '京N267EF', NULL, 1, 93.00, 0, 1, '2021-11-30 12:16:04');
INSERT INTO `app_order` VALUES (46, NULL, '2021-07-07 15:10:14', '5039887', 36, 2, '京N267EF', NULL, 1, 85.00, 2, 1, '2021-10-13 19:32:10');
INSERT INTO `app_order` VALUES (47, NULL, '2021-06-30 06:40:46', '5472756', 38, 2, '京N267EF', NULL, 1, 59.00, 2, 1, '2021-09-20 09:50:12');
INSERT INTO `app_order` VALUES (48, NULL, '2021-06-30 20:35:32', '3115599', 36, 2, '京N267EF', NULL, 0, 79.00, 0, 1, '2021-09-17 22:15:25');
INSERT INTO `app_order` VALUES (49, NULL, '2021-06-26 04:43:14', '5552709', 38, 2, '京N267EF', NULL, 1, 22.00, 0, 1, '2021-08-21 20:52:15');
INSERT INTO `app_order` VALUES (50, NULL, '2021-06-29 18:16:16', '9557315', 36, 2, '京N267EF', NULL, 1, 56.00, 3, 1, '2021-10-21 09:18:46');
INSERT INTO `app_order` VALUES (51, NULL, '2021-06-29 03:43:14', '8877496', 38, 2, '京N267EF', NULL, 1, 36.00, 0, 1, '2021-12-27 22:07:04');
INSERT INTO `app_order` VALUES (52, NULL, '2021-06-26 12:05:06', '5131280', 38, 2, '京N267EF', NULL, 1, 61.00, 3, 1, '2021-11-12 13:38:53');
INSERT INTO `app_order` VALUES (53, NULL, '2021-07-01 19:56:21', '2328367', 38, 2, '京N267EF', NULL, 1, 37.00, 1, 1, '2021-09-08 08:19:46');
INSERT INTO `app_order` VALUES (54, NULL, '2021-07-07 22:42:53', '5266517', 36, 2, '京N267EF', NULL, 1, 53.00, 3, 1, '2021-12-22 07:18:40');
INSERT INTO `app_order` VALUES (55, NULL, '2021-06-25 16:23:33', '8912446', 36, 2, '京N267EF', NULL, 1, 90.00, 1, 1, '2021-08-23 23:53:49');
INSERT INTO `app_order` VALUES (56, NULL, '2021-07-06 01:20:13', '1032098', 36, 2, '京N267EF', NULL, 1, 49.00, 3, 1, '2021-11-22 19:20:16');
INSERT INTO `app_order` VALUES (57, NULL, '2021-07-05 18:13:58', '9991595', 38, 2, '京N267EF', NULL, 1, 25.00, 1, 1, '2021-12-29 04:06:10');
INSERT INTO `app_order` VALUES (58, NULL, '2021-07-02 03:53:44', '1109827', 38, 2, '京N267EF', NULL, 1, 96.00, 0, 1, '2021-10-10 13:15:36');
INSERT INTO `app_order` VALUES (59, NULL, '2021-07-09 10:55:34', '6237167', 36, 2, '京N267EF', NULL, 1, 43.00, 1, 1, '2021-08-19 06:52:00');
INSERT INTO `app_order` VALUES (60, NULL, '2021-07-06 22:25:52', '8496962', 36, 2, '京N267EF', NULL, 1, 45.00, 3, 1, '2021-09-15 19:58:52');
INSERT INTO `app_order` VALUES (61, NULL, '2021-07-02 06:31:50', '2869718', 38, 2, '京N267EF', NULL, 1, 78.00, 2, 1, '2021-12-28 00:58:05');
INSERT INTO `app_order` VALUES (62, NULL, '2021-06-26 03:31:55', '5371635', 36, 2, '京N267EF', NULL, 0, 78.00, 1, 1, '2021-08-12 15:40:16');
INSERT INTO `app_order` VALUES (63, NULL, '2021-06-28 05:05:41', '6513363', 38, 2, '京N267EF', NULL, 1, 62.00, 1, 1, '2021-09-20 11:09:01');
INSERT INTO `app_order` VALUES (64, NULL, '2021-06-29 18:49:17', '7991878', 36, 2, '京N267EF', NULL, 1, 46.00, 0, 1, '2021-12-22 13:54:42');
INSERT INTO `app_order` VALUES (65, NULL, '2021-07-02 14:19:55', '2305307', 38, 2, '京N267EF', NULL, 1, 75.00, 0, 1, '2021-12-26 00:29:59');
INSERT INTO `app_order` VALUES (66, NULL, '2021-07-09 01:13:05', '1701931', 36, 2, '京N267EF', NULL, 1, 63.00, 0, 1, '2021-08-18 21:42:38');
INSERT INTO `app_order` VALUES (67, NULL, '2021-07-06 03:18:43', '5986298', 36, 2, '京N267EF', NULL, 1, 47.00, 0, 1, '2021-10-17 01:16:02');
INSERT INTO `app_order` VALUES (68, NULL, '2021-07-02 17:19:23', '6827061', 38, 2, '京N267EF', NULL, 1, 47.00, 0, 1, '2021-09-16 20:30:01');
INSERT INTO `app_order` VALUES (69, '临时车辆', '2022-05-16 15:14:12', '32022051615141247435931616', 36, 3, '赣LK9999', NULL, 0, 0.00, NULL, -1, NULL);
INSERT INTO `app_order` VALUES (70, '临时车辆', '2022-05-16 16:11:24', '32022051616112375295456894', 36, 3, '赣LZ6002', NULL, 0, 10.00, NULL, -1, NULL);
INSERT INTO `app_order` VALUES (71, '临时车辆', '2022-05-17 09:29:28', '22022051709292822263142348', 36, 2, '赣AEW018', NULL, 0, 0.00, NULL, -1, NULL);
INSERT INTO `app_order` VALUES (72, '临时车辆', '2022-05-17 12:44:21', '32022051712442111795461857', 36, 3, '赣B86Z88', NULL, 0, 0.00, NULL, -1, NULL);

-- ----------------------------
-- Table structure for app_pay_config
-- ----------------------------
DROP TABLE IF EXISTS `app_pay_config`;
CREATE TABLE `app_pay_config`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `car_park_id` bigint(20) NULL DEFAULT NULL,
  `gmt_create` datetime(0) NULL DEFAULT NULL,
  `gmt_modified` datetime(0) NULL DEFAULT NULL,
  `mch_id` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `secret_key` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_id_create` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '支付配置' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of app_pay_config
-- ----------------------------
INSERT INTO `app_pay_config` VALUES (1, 4, '2022-05-06 22:37:08', '2022-05-06 22:37:08', '001', 'WANDA', 1);

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `config_key` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '唯一标识',
  `config_value` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '值',
  `config_remark` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '备注',
  `user_id_create` bigint(20) NOT NULL COMMENT '创建人',
  `gmt_create` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `gmt_modified` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `status` tinyint(4) NOT NULL COMMENT '状态 0 禁用 1 可用',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '基础配置' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_config
-- ----------------------------

-- ----------------------------
-- Table structure for sys_interface
-- ----------------------------
DROP TABLE IF EXISTS `sys_interface`;
CREATE TABLE `sys_interface`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gmt_create` datetime(0) NULL DEFAULT NULL,
  `gmt_modified` datetime(0) NULL DEFAULT NULL,
  `params` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `query` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `status` smallint(6) NULL DEFAULT NULL,
  `token` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_id_create` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '数据接口信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_interface
-- ----------------------------
INSERT INTO `sys_interface` VALUES (1, '首页 统计信息', '2021-07-05 17:51:59', NULL, NULL, 'select * from (select count(1) as orgNumber from sys_org) AS a \nJOIN (select count(1) as parkNumber from app_car_park_manage ) as b on 1=1\nJOIN (select count(1) as carNumber from app_car_manage) as c on 1=1\nJOIN (select sum(total_Fee) as cost from app_order where status = 1) as d on 1=1', 0, NULL, 'indexStatistics', 1);
INSERT INTO `sys_interface` VALUES (2, '最近7天支付订单', '2021-07-06 11:38:28', NULL, NULL, 'select case type when 0 then \'微信\' when 1 then \'支付宝\' when 2 then \'Apple Pay\' when 3 then \'HUAWEI pay\' end as `name`, count(order_no) as `data` from app_order where status = 1 group by type;', 1, NULL, 'payTypeStatistics', 1);
INSERT INTO `sys_interface` VALUES (3, '最近7天停车占比', '2022-05-16 15:20:45', NULL, NULL, 'SELECT a.date, case a.type when 0 then \'微信\' when 1 then \'支付宝\' when 2 then \'Apple Pay\' when 3 then \'HUAWEI pay\' end as payType, ifnull( total_fee, 0 ) amount \nFROM (SELECT * FROM\n	(\n		select DATE(DATE_SUB(CURRENT_DATE, INTERVAL help_topic_id DAY)) date from  mysql.help_topic\nwhere help_topic_id<7\norder by help_topic_id\n	) AS a\n	JOIN ( SELECT DISTINCT type FROM app_order ) AS b ON 1 = 1 \n) AS a\nLEFT JOIN ( \n	SELECT date( gmt_create ) gmt_create, type, sum( total_fee ) total_fee \n	FROM `app_order` WHERE STATUS = 1 GROUP BY date( gmt_create ), type \n) AS b ON a.date = b.gmt_create AND a.type = b.type \nWHERE\n	a.date < DATE(NOW()) \nORDER BY\n	a.date', 1, NULL, 'total7Park', 1);

-- ----------------------------
-- Table structure for sys_landing_records
-- ----------------------------
DROP TABLE IF EXISTS `sys_landing_records`;
CREATE TABLE `sys_landing_records`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` bigint(20) UNSIGNED NOT NULL COMMENT '用户ID',
  `login_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '最近登录时间',
  `place` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '最近登录地点',
  `ip` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '最近登录IP',
  `login_way` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '登录方式',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户登录日志' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_landing_records
-- ----------------------------

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '用户id',
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `operation` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户操作',
  `time` int(11) NULL DEFAULT NULL COMMENT '响应时间',
  `method` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '请求方法',
  `params` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '请求参数',
  `ip` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'IP地址',
  `device_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '访问方式 0:PC 1:手机 2:未知',
  `log_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '类型 0: 一般日志记录 1: 异常错误日志',
  `exception_detail` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '异常详细信息',
  `gmt_create` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 93 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统日志' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES (1, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-03-08 19:58:39');
INSERT INTO `sys_log` VALUES (2, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-03-16 20:26:27');
INSERT INTO `sys_log` VALUES (3, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-03-26 20:51:14');
INSERT INTO `sys_log` VALUES (4, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-03-26 21:10:51');
INSERT INTO `sys_log` VALUES (5, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-04-11 20:45:05');
INSERT INTO `sys_log` VALUES (6, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-04-13 20:15:18');
INSERT INTO `sys_log` VALUES (7, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-04-13 20:15:21');
INSERT INTO `sys_log` VALUES (8, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-04-19 19:47:39');
INSERT INTO `sys_log` VALUES (9, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-04-19 20:17:24');
INSERT INTO `sys_log` VALUES (10, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-04-19 20:46:12');
INSERT INTO `sys_log` VALUES (11, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-07-02 11:46:11');
INSERT INTO `sys_log` VALUES (12, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-07-02 11:51:03');
INSERT INTO `sys_log` VALUES (13, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-07-02 12:02:45');
INSERT INTO `sys_log` VALUES (14, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-07-02 12:11:00');
INSERT INTO `sys_log` VALUES (15, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-07-02 12:16:17');
INSERT INTO `sys_log` VALUES (16, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-07-02 12:19:58');
INSERT INTO `sys_log` VALUES (17, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-07-05 14:07:55');
INSERT INTO `sys_log` VALUES (18, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-07-05 14:41:46');
INSERT INTO `sys_log` VALUES (19, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-07-05 14:43:09');
INSERT INTO `sys_log` VALUES (20, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-07-05 16:40:09');
INSERT INTO `sys_log` VALUES (21, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-07-05 17:08:35');
INSERT INTO `sys_log` VALUES (22, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-07-05 17:52:51');
INSERT INTO `sys_log` VALUES (23, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-07-05 18:24:18');
INSERT INTO `sys_log` VALUES (24, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-07-05 18:26:12');
INSERT INTO `sys_log` VALUES (25, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-07-05 18:28:30');
INSERT INTO `sys_log` VALUES (26, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-07-05 18:38:26');
INSERT INTO `sys_log` VALUES (27, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-07-05 18:40:25');
INSERT INTO `sys_log` VALUES (28, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-07-06 10:22:21');
INSERT INTO `sys_log` VALUES (29, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-07-06 10:30:51');
INSERT INTO `sys_log` VALUES (30, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-07-06 10:32:45');
INSERT INTO `sys_log` VALUES (31, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-07-06 11:39:30');
INSERT INTO `sys_log` VALUES (32, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-07-06 11:41:18');
INSERT INTO `sys_log` VALUES (33, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-07-06 15:29:24');
INSERT INTO `sys_log` VALUES (34, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-07-06 15:34:27');
INSERT INTO `sys_log` VALUES (35, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-07-06 15:36:17');
INSERT INTO `sys_log` VALUES (36, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-07-06 15:55:45');
INSERT INTO `sys_log` VALUES (37, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-07-06 15:56:55');
INSERT INTO `sys_log` VALUES (38, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-07-06 15:58:13');
INSERT INTO `sys_log` VALUES (39, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-07-06 16:00:07');
INSERT INTO `sys_log` VALUES (40, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-07-06 17:55:50');
INSERT INTO `sys_log` VALUES (41, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-07-06 17:58:23');
INSERT INTO `sys_log` VALUES (42, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-07-06 18:00:18');
INSERT INTO `sys_log` VALUES (43, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-07-06 18:03:36');
INSERT INTO `sys_log` VALUES (44, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-07-06 18:07:17');
INSERT INTO `sys_log` VALUES (45, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2022-04-30 17:21:50');
INSERT INTO `sys_log` VALUES (46, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2022-04-30 17:26:22');
INSERT INTO `sys_log` VALUES (47, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2022-04-30 17:58:00');
INSERT INTO `sys_log` VALUES (48, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2022-05-01 00:43:37');
INSERT INTO `sys_log` VALUES (49, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2022-05-01 09:30:21');
INSERT INTO `sys_log` VALUES (50, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2022-05-01 09:40:46');
INSERT INTO `sys_log` VALUES (51, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2022-05-01 10:22:44');
INSERT INTO `sys_log` VALUES (52, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2022-05-01 11:43:45');
INSERT INTO `sys_log` VALUES (53, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2022-05-01 11:58:41');
INSERT INTO `sys_log` VALUES (54, 2, 'suny', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2022-05-01 12:05:27');
INSERT INTO `sys_log` VALUES (55, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2022-05-03 10:01:32');
INSERT INTO `sys_log` VALUES (56, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2022-05-03 10:03:41');
INSERT INTO `sys_log` VALUES (57, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2022-05-04 12:43:47');
INSERT INTO `sys_log` VALUES (58, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2022-05-04 14:34:50');
INSERT INTO `sys_log` VALUES (59, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2022-05-04 19:58:18');
INSERT INTO `sys_log` VALUES (60, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2022-05-05 01:26:00');
INSERT INTO `sys_log` VALUES (61, 3, '普通管理员', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2022-05-05 01:33:36');
INSERT INTO `sys_log` VALUES (62, 2, '普通用户', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2022-05-05 01:35:41');
INSERT INTO `sys_log` VALUES (63, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2022-05-05 11:33:12');
INSERT INTO `sys_log` VALUES (64, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2022-05-05 16:19:30');
INSERT INTO `sys_log` VALUES (65, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2022-05-05 16:35:08');
INSERT INTO `sys_log` VALUES (66, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2022-05-06 22:36:31');
INSERT INTO `sys_log` VALUES (67, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2022-05-07 16:36:14');
INSERT INTO `sys_log` VALUES (68, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2022-05-13 22:40:55');
INSERT INTO `sys_log` VALUES (69, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2022-05-15 21:19:39');
INSERT INTO `sys_log` VALUES (70, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2022-05-16 10:49:37');
INSERT INTO `sys_log` VALUES (71, 3, '普通管理员', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2022-05-16 11:53:23');
INSERT INTO `sys_log` VALUES (72, 2, '普通用户', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2022-05-16 12:23:47');
INSERT INTO `sys_log` VALUES (73, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2022-05-16 12:28:00');
INSERT INTO `sys_log` VALUES (74, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2022-05-16 14:00:40');
INSERT INTO `sys_log` VALUES (75, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2022-05-16 14:10:47');
INSERT INTO `sys_log` VALUES (76, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2022-05-16 15:07:02');
INSERT INTO `sys_log` VALUES (77, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2022-05-16 15:27:29');
INSERT INTO `sys_log` VALUES (78, 3, '普通管理员', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2022-05-16 16:22:06');
INSERT INTO `sys_log` VALUES (79, 2, '普通用户', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2022-05-16 16:23:45');
INSERT INTO `sys_log` VALUES (80, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2022-05-16 16:24:27');
INSERT INTO `sys_log` VALUES (81, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2022-05-16 16:43:19');
INSERT INTO `sys_log` VALUES (82, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2022-05-17 01:56:10');
INSERT INTO `sys_log` VALUES (83, 2, '普通用户', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2022-05-17 02:04:33');
INSERT INTO `sys_log` VALUES (84, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2022-05-17 08:39:26');
INSERT INTO `sys_log` VALUES (85, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2022-05-17 09:22:10');
INSERT INTO `sys_log` VALUES (86, 2, '普通用户', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2022-05-17 09:38:05');
INSERT INTO `sys_log` VALUES (87, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2022-05-17 09:39:24');
INSERT INTO `sys_log` VALUES (88, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2022-05-17 12:42:54');
INSERT INTO `sys_log` VALUES (89, 2, '普通用户', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2022-05-17 12:51:45');
INSERT INTO `sys_log` VALUES (90, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2022-05-17 12:59:51');
INSERT INTO `sys_log` VALUES (91, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2022-05-17 15:35:05');
INSERT INTO `sys_log` VALUES (92, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2022-05-26 22:42:37');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单id',
  `parent_id` bigint(20) NULL DEFAULT NULL COMMENT '父菜单ID，一级菜单为0',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单名称',
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单URL',
  `perms` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '授权(多个用逗号分隔，如：user:list,user:create)',
  `type` int(11) NULL DEFAULT NULL COMMENT '类型   0：目录   1：菜单   2：按钮',
  `icon` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单图标',
  `order_num` int(11) NULL DEFAULT NULL COMMENT '排序',
  `gmt_create` timestamp(0) NULL DEFAULT NULL COMMENT '创建时间',
  `gmt_modified` timestamp(0) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 76 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单管理' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, 0, '系统管理', NULL, '', 0, 'layui-icon layui-icon-template-1', 8, '2017-08-09 22:49:47', '2017-09-11 17:25:22');
INSERT INTO `sys_menu` VALUES (2, 0, '系统监控', NULL, NULL, 0, 'layui-icon layui-icon-notice', 4, NULL, NULL);
INSERT INTO `sys_menu` VALUES (3, 0, '停车场管理', NULL, NULL, 0, 'layui-icon layui-icon-templeate-1', 5, NULL, NULL);
INSERT INTO `sys_menu` VALUES (4, 0, '车辆管理', NULL, NULL, 0, 'layui-icon layui-icon-app', 6, NULL, NULL);
INSERT INTO `sys_menu` VALUES (5, 0, '停车管理', NULL, NULL, 0, 'layui-icon layui-icon-file-b', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (6, 0, '账户管理', NULL, NULL, 0, 'layui-icon layui-icon-username', 7, NULL, NULL);
INSERT INTO `sys_menu` VALUES (7, 0, '财务管理', NULL, NULL, 0, 'layui-icon layui-icon-rmb', 3, NULL, NULL);
INSERT INTO `sys_menu` VALUES (8, 0, '车牌识别', NULL, NULL, 0, 'layui-icon layui-icon-camera', 1, NULL, NULL);
INSERT INTO `sys_menu` VALUES (21, 1, '角色管理', 'sys/role/list.html', '', 1, 'layui-icon layui-icon-tree', 1, '2017-08-10 14:13:19', '2017-09-05 12:57:30');
INSERT INTO `sys_menu` VALUES (22, 1, '全局配置', 'sys/config/list.html', NULL, 1, 'layui-icon layui-icon-templeate-1', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (23, 1, '菜单管理', 'sys/menu/list.html', NULL, 1, 'layui-icon layui-icon-template', 3, '2017-08-09 22:55:15', '2017-08-17 10:00:12');
INSERT INTO `sys_menu` VALUES (24, 1, '日志管理', 'sys/log/list.html', NULL, 1, 'layui-icon layui-icon-tabs', 4, '2017-08-14 22:11:53', '2017-08-17 09:55:19');
INSERT INTO `sys_menu` VALUES (25, 2, '监控设置', '/sys/interface/list.html', NULL, 1, 'layui-icon layui-icon-set-fill', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (26, 3, '停车场管理', 'car/parkManage/list.html', NULL, 1, 'layui-icon layui-icon-find-fill', 1, NULL, NULL);
INSERT INTO `sys_menu` VALUES (27, 4, '车辆管理', 'car/carManage/list.html', NULL, 1, 'layui-icon layui-icon-release', 1, NULL, NULL);
INSERT INTO `sys_menu` VALUES (28, 5, '停车记录', 'car/parkingRecord/list.html', NULL, 1, 'layui-icon layui-icon-location', 1, NULL, NULL);
INSERT INTO `sys_menu` VALUES (29, 6, '用户管理', 'sys/user/list.html', '', 1, 'layui-icon layui-icon-friends', 1, '2017-08-10 14:12:11', '2017-09-05 12:57:42');
INSERT INTO `sys_menu` VALUES (30, 6, '合作单位', '/sys/org/list.html', NULL, 1, 'layui-icon layui-icon-group', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (31, 7, '订单列表', '/finance/list.html', NULL, 1, 'layui-icon layui-icon-form', 1, NULL, NULL);
INSERT INTO `sys_menu` VALUES (32, 8, '车牌识别', 'car/distinguish/list.html', NULL, 1, 'layui-icon layui-icon-camera-fill', 1, NULL, NULL);
INSERT INTO `sys_menu` VALUES (33, 2, '监控大盘', '/dataV/bigdataview.html', NULL, 1, 'layui-icon layui-icon-chart-screen', 1, NULL, NULL);
INSERT INTO `sys_menu` VALUES (51, 29, '编辑', '/sys/user/update', 'sys:user:edit', 2, NULL, 0, '2017-08-14 10:52:06', '2017-09-05 12:47:46');
INSERT INTO `sys_menu` VALUES (52, 29, '刷新', '/sys/user/list', 'sys:user:list', 2, NULL, 0, '2017-08-14 10:51:05', '2017-09-05 12:47:23');
INSERT INTO `sys_menu` VALUES (53, 29, '启用', '/sys/user/enable', 'sys:user:enable', 2, NULL, 0, '2017-08-14 17:27:18', '2017-09-05 12:48:30');
INSERT INTO `sys_menu` VALUES (54, 29, '删除', '/sys/user/remove', 'sys:user:remove', 2, NULL, 0, '2017-08-14 10:52:24', '2017-09-05 12:48:03');
INSERT INTO `sys_menu` VALUES (55, 29, '重置密码', '/sys/user/rest', 'sys:user:resetPassword', 2, NULL, 0, '2017-08-14 17:28:34', '2017-09-05 12:49:17');
INSERT INTO `sys_menu` VALUES (56, 29, '停用', '/sys/user/disable', 'sys:user:disable', 2, NULL, 0, '2017-08-14 17:27:43', '2017-09-05 12:48:49');
INSERT INTO `sys_menu` VALUES (57, 29, '新增', '/sys/user/save', 'sys:user:save', 2, NULL, 0, '2017-08-14 10:51:35', '2017-09-05 12:47:34');
INSERT INTO `sys_menu` VALUES (58, 24, '刷新', '/sys/org/list', 'sys:org:list', 2, NULL, 0, '2017-08-17 10:03:36', '2017-09-05 11:47:37');
INSERT INTO `sys_menu` VALUES (59, 24, '删除', '/sys/org/remove', 'sys:org:remove', 2, NULL, 0, '2017-08-17 10:04:30', '2017-09-05 12:42:19');
INSERT INTO `sys_menu` VALUES (60, 24, '编辑', '/sys/org/update', 'sys:org:edit', 2, NULL, 0, '2017-08-17 10:04:11', '2017-09-05 12:43:06');
INSERT INTO `sys_menu` VALUES (61, 24, '新增', '/sys/org/save', 'sys:org:save', 2, NULL, 0, '2017-08-17 10:03:54', '2017-09-05 12:40:55');
INSERT INTO `sys_menu` VALUES (62, 31, '查询', '/finance/order/list', 'finance:order:list', 2, '', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (63, 21, '新增', '/sys/role/save', 'sys:role:save', 2, NULL, 0, '2017-08-14 10:57:02', '2017-09-05 12:44:23');
INSERT INTO `sys_menu` VALUES (64, 21, '操作权限', '/sys/role/authorize/opt', 'sys:role:authorizeOpt', 2, NULL, 0, '2017-08-14 10:58:55', '2017-09-05 12:45:29');
INSERT INTO `sys_menu` VALUES (65, 21, '刷新', '/sys/role/list', 'sys:role:list', 2, NULL, 0, '2017-08-14 10:56:37', '2017-09-05 12:44:04');
INSERT INTO `sys_menu` VALUES (66, 21, '编辑', '/sys/role/update', 'sys:role:edit', 2, NULL, 0, '2017-08-14 10:57:31', '2017-09-05 12:44:48');
INSERT INTO `sys_menu` VALUES (67, 21, '删除', '/sys/role/remove', 'sys:role:remove', 2, NULL, 0, '2017-08-14 10:57:50', '2017-09-05 12:45:02');
INSERT INTO `sys_menu` VALUES (68, 21, '数据权限', '/sys/role/authorize/data', 'sys:role:authorizeData', 2, NULL, 0, '2017-08-17 13:48:11', '2017-09-05 12:45:54');
INSERT INTO `sys_menu` VALUES (69, 23, '刷新', '/sys/menu/list', 'sys:menu:list', 2, NULL, 0, '2017-08-14 10:59:32', '2017-09-05 13:06:24');
INSERT INTO `sys_menu` VALUES (70, 23, '新增', '/sys/menu/save', 'sys:menu:save', 2, NULL, 0, '2017-08-14 10:59:56', '2017-09-05 13:06:35');
INSERT INTO `sys_menu` VALUES (71, 23, '编辑', '/sys/menu/update', 'sys:menu:edit', 2, NULL, 0, '2017-08-14 11:00:26', '2017-09-05 13:06:48');
INSERT INTO `sys_menu` VALUES (72, 23, '删除', '/sys/menu/remove', 'sys:menu:remove', 2, NULL, 0, '2017-08-14 11:00:58', '2017-09-05 13:07:00');
INSERT INTO `sys_menu` VALUES (73, 24, '删除', '/sys/log/remove', 'sys:log:remove', 2, NULL, 0, '2017-08-14 22:30:43', '2017-09-05 13:05:37');
INSERT INTO `sys_menu` VALUES (74, 24, '刷新', '/sys/log/list', 'sys:log:list', 2, NULL, 0, '2017-08-14 22:30:22', '2017-09-05 13:05:24');
INSERT INTO `sys_menu` VALUES (75, 24, '清空', '/sys/log/clear', 'sys:log:clear', 2, NULL, 0, '2017-08-14 22:31:02', '2017-09-05 13:05:53');

-- ----------------------------
-- Table structure for sys_org
-- ----------------------------
DROP TABLE IF EXISTS `sys_org`;
CREATE TABLE `sys_org`  (
  `org_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '机构id',
  `parent_id` bigint(20) NULL DEFAULT NULL COMMENT '上级机构ID，一级机构为0',
  `code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '机构编码',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '机构名称',
  `full_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '机构名称(全称)',
  `director` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '机构负责人',
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系邮箱',
  `phone` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `address` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  `order_num` int(11) NULL DEFAULT NULL COMMENT '排序',
  `status` tinyint(4) NULL DEFAULT 1 COMMENT '可用标识  1：可用  0：不可用',
  `gmt_create` timestamp(0) NULL DEFAULT NULL COMMENT '创建时间',
  `gmt_modified` timestamp(0) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`org_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '机构管理' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_org
-- ----------------------------
INSERT INTO `sys_org` VALUES (36, 0, '0002', '万达广场', '万达广场', '老张', NULL, NULL, NULL, NULL, 1, '2022-05-01 00:53:52', '2022-05-01 00:53:52');
INSERT INTO `sys_org` VALUES (38, 0, '0001', '江西科技师范大学', '江西科技师范大学', '江西科技师范大学', NULL, NULL, '江西南昌', NULL, 1, '2022-05-01 00:53:02', '2022-05-01 00:53:02');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色id',
  `org_id` bigint(255) NULL DEFAULT NULL COMMENT '所属机构',
  `role_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色名称',
  `role_sign` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色标识',
  `remark` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `user_id_create` bigint(255) NULL DEFAULT NULL COMMENT '创建用户id',
  `gmt_create` timestamp(0) NULL DEFAULT NULL COMMENT '创建时间',
  `gmt_modified` timestamp(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统角色' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, 17, '超级管理员', 'admin', '【系统内置】', 2, '2017-08-12 00:43:52', '2017-11-21 10:19:08');
INSERT INTO `sys_role` VALUES (4, -1, '用户', 'user', '普通用户', 1, '2022-05-01 00:56:54', '2022-05-16 15:22:47');
INSERT INTO `sys_role` VALUES (5, -1, '管理员', 'common_admin', '普通管理员', 1, '2022-05-01 00:57:43', '2022-05-05 01:30:27');
INSERT INTO `sys_role` VALUES (6, -1, '测试人员', 'test', NULL, 1, '2022-05-17 02:02:39', '2022-05-17 02:02:39');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '记录id',
  `role_id` bigint(20) NULL DEFAULT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NULL DEFAULT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_rm_role_id`(`role_id`) USING BTREE,
  INDEX `fk_rm_menu_id`(`menu_id`) USING BTREE,
  CONSTRAINT `fk_rm_menu_id` FOREIGN KEY (`menu_id`) REFERENCES `sys_menu` (`menu_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_rm_role_id` FOREIGN KEY (`role_id`) REFERENCES `sys_role` (`role_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 15521 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色与菜单对应关系' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (15446, 5, 8);
INSERT INTO `sys_role_menu` VALUES (15447, 5, 32);
INSERT INTO `sys_role_menu` VALUES (15448, 5, 5);
INSERT INTO `sys_role_menu` VALUES (15449, 5, 28);
INSERT INTO `sys_role_menu` VALUES (15450, 5, 7);
INSERT INTO `sys_role_menu` VALUES (15451, 5, 31);
INSERT INTO `sys_role_menu` VALUES (15452, 5, 62);
INSERT INTO `sys_role_menu` VALUES (15453, 5, 2);
INSERT INTO `sys_role_menu` VALUES (15454, 5, 33);
INSERT INTO `sys_role_menu` VALUES (15455, 5, 3);
INSERT INTO `sys_role_menu` VALUES (15456, 5, 26);
INSERT INTO `sys_role_menu` VALUES (15457, 5, 4);
INSERT INTO `sys_role_menu` VALUES (15458, 5, 27);
INSERT INTO `sys_role_menu` VALUES (15459, 5, 6);
INSERT INTO `sys_role_menu` VALUES (15460, 5, 29);
INSERT INTO `sys_role_menu` VALUES (15461, 5, 51);
INSERT INTO `sys_role_menu` VALUES (15462, 5, 52);
INSERT INTO `sys_role_menu` VALUES (15463, 5, 53);
INSERT INTO `sys_role_menu` VALUES (15464, 5, 54);
INSERT INTO `sys_role_menu` VALUES (15465, 5, 56);
INSERT INTO `sys_role_menu` VALUES (15466, 5, 57);
INSERT INTO `sys_role_menu` VALUES (15467, 1, 8);
INSERT INTO `sys_role_menu` VALUES (15468, 1, 32);
INSERT INTO `sys_role_menu` VALUES (15469, 1, 5);
INSERT INTO `sys_role_menu` VALUES (15470, 1, 28);
INSERT INTO `sys_role_menu` VALUES (15471, 1, 7);
INSERT INTO `sys_role_menu` VALUES (15472, 1, 31);
INSERT INTO `sys_role_menu` VALUES (15473, 1, 62);
INSERT INTO `sys_role_menu` VALUES (15474, 1, 2);
INSERT INTO `sys_role_menu` VALUES (15475, 1, 33);
INSERT INTO `sys_role_menu` VALUES (15476, 1, 25);
INSERT INTO `sys_role_menu` VALUES (15477, 1, 3);
INSERT INTO `sys_role_menu` VALUES (15478, 1, 26);
INSERT INTO `sys_role_menu` VALUES (15479, 1, 4);
INSERT INTO `sys_role_menu` VALUES (15480, 1, 27);
INSERT INTO `sys_role_menu` VALUES (15481, 1, 6);
INSERT INTO `sys_role_menu` VALUES (15482, 1, 29);
INSERT INTO `sys_role_menu` VALUES (15483, 1, 51);
INSERT INTO `sys_role_menu` VALUES (15484, 1, 52);
INSERT INTO `sys_role_menu` VALUES (15485, 1, 53);
INSERT INTO `sys_role_menu` VALUES (15486, 1, 54);
INSERT INTO `sys_role_menu` VALUES (15487, 1, 55);
INSERT INTO `sys_role_menu` VALUES (15488, 1, 56);
INSERT INTO `sys_role_menu` VALUES (15489, 1, 57);
INSERT INTO `sys_role_menu` VALUES (15490, 1, 1);
INSERT INTO `sys_role_menu` VALUES (15491, 1, 21);
INSERT INTO `sys_role_menu` VALUES (15492, 1, 63);
INSERT INTO `sys_role_menu` VALUES (15493, 1, 64);
INSERT INTO `sys_role_menu` VALUES (15494, 1, 65);
INSERT INTO `sys_role_menu` VALUES (15495, 1, 66);
INSERT INTO `sys_role_menu` VALUES (15496, 1, 67);
INSERT INTO `sys_role_menu` VALUES (15497, 1, 68);
INSERT INTO `sys_role_menu` VALUES (15498, 1, 23);
INSERT INTO `sys_role_menu` VALUES (15499, 1, 69);
INSERT INTO `sys_role_menu` VALUES (15500, 1, 70);
INSERT INTO `sys_role_menu` VALUES (15501, 1, 71);
INSERT INTO `sys_role_menu` VALUES (15502, 1, 72);
INSERT INTO `sys_role_menu` VALUES (15503, 1, 24);
INSERT INTO `sys_role_menu` VALUES (15504, 1, 58);
INSERT INTO `sys_role_menu` VALUES (15505, 1, 59);
INSERT INTO `sys_role_menu` VALUES (15506, 1, 60);
INSERT INTO `sys_role_menu` VALUES (15507, 1, 61);
INSERT INTO `sys_role_menu` VALUES (15508, 1, 73);
INSERT INTO `sys_role_menu` VALUES (15509, 1, 74);
INSERT INTO `sys_role_menu` VALUES (15510, 1, 75);
INSERT INTO `sys_role_menu` VALUES (15511, 6, 8);
INSERT INTO `sys_role_menu` VALUES (15512, 6, 32);
INSERT INTO `sys_role_menu` VALUES (15513, 6, 5);
INSERT INTO `sys_role_menu` VALUES (15514, 6, 28);
INSERT INTO `sys_role_menu` VALUES (15515, 6, 7);
INSERT INTO `sys_role_menu` VALUES (15516, 6, 31);
INSERT INTO `sys_role_menu` VALUES (15517, 6, 62);
INSERT INTO `sys_role_menu` VALUES (15518, 6, 2);
INSERT INTO `sys_role_menu` VALUES (15519, 6, 33);
INSERT INTO `sys_role_menu` VALUES (15520, 6, 25);

-- ----------------------------
-- Table structure for sys_role_org
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_org`;
CREATE TABLE `sys_role_org`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '记录id',
  `role_id` bigint(20) NULL DEFAULT NULL COMMENT '角色ID',
  `org_id` bigint(20) NULL DEFAULT NULL COMMENT '机构ID',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_ro_role_id`(`role_id`) USING BTREE,
  CONSTRAINT `fk_ro_role_id` FOREIGN KEY (`role_id`) REFERENCES `sys_role` (`role_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色与机构对应关系' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_org
-- ----------------------------
INSERT INTO `sys_role_org` VALUES (17, 1, 17);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `org_id` bigint(20) NOT NULL COMMENT '所属机构',
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `nickname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名(昵称)',
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `mobile` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `status` tinyint(4) NULL DEFAULT NULL COMMENT '状态 0:禁用，1:正常',
  `avatar_status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '头像上传 0:未上传 1:上传',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `user_id_create` bigint(255) NULL DEFAULT NULL COMMENT '创建用户id',
  `gmt_create` timestamp(0) NULL DEFAULT NULL COMMENT '创建时间',
  `gmt_modified` timestamp(0) NULL DEFAULT NULL COMMENT '修改时间',
  `is_modify_pwd` tinyint(4) NULL DEFAULT 0 COMMENT '是否修改过初始密码',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统用户' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 36, 'admin', '4cf28b576b2af52c9441d653e5a79917', 'admin', 'admin@qq.com', '13546245658', 1, 0, NULL, 1, '2017-08-15 21:40:39', '2021-03-08 21:04:16', 1);
INSERT INTO `sys_user` VALUES (2, 38, 'user', '82199e8617a7f6dcd4ef8c1357542b1a', '普通用户', '123456@126.com', '15236854545', 1, 0, NULL, 1, '2022-05-01 12:04:34', '2022-05-05 01:32:45', NULL);
INSERT INTO `sys_user` VALUES (3, 36, 'admin1', '9c89b5cde93b3053e6febbf35f9c1f1e', '普通管理员', '2535@163.com', '12576458200', 1, 0, NULL, 1, '2022-05-03 12:17:40', '2022-05-03 12:17:40', NULL);
INSERT INTO `sys_user` VALUES (4, 36, 'admin2', '35ceb6be7eaed04a3624b5216d84ac7c', '章小鱼', '45751@163.com', '15523214787', 1, 0, NULL, 1, '2022-05-16 11:11:59', '2022-05-16 11:11:59', NULL);
INSERT INTO `sys_user` VALUES (5, 36, 'user1', '61d35d1a8099455aedd16c4b4e62711c', '测试用户', '25555@qq.com', '13814542314', 1, 0, NULL, 1, '2022-05-16 11:31:19', '2022-05-17 02:01:03', NULL);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '记录id',
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '用户ID',
  `role_id` bigint(20) NULL DEFAULT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_ur_user_id`(`user_id`) USING BTREE,
  INDEX `fk_ur_role_id`(`role_id`) USING BTREE,
  CONSTRAINT `fk_ur_role_id` FOREIGN KEY (`role_id`) REFERENCES `sys_role` (`role_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_ur_user_id` FOREIGN KEY (`user_id`) REFERENCES `sys_user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 274 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户与角色对应关系' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (265, 1, 1);
INSERT INTO `sys_user_role` VALUES (269, 3, 5);
INSERT INTO `sys_user_role` VALUES (270, 2, 4);
INSERT INTO `sys_user_role` VALUES (271, 4, 5);
INSERT INTO `sys_user_role` VALUES (273, 5, 4);

SET FOREIGN_KEY_CHECKS = 1;
