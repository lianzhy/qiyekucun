/*
 Navicat Premium Data Transfer

 Source Server         : db
 Source Server Type    : MySQL
 Source Server Version : 80023
 Source Host           : localhost:3306
 Source Schema         : 企业库存管理db

 Target Server Type    : MySQL
 Target Server Version : 80023
 File Encoding         : 65001

 Date: 09/07/2021 22:00:23
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admi_info
-- ----------------------------
DROP TABLE IF EXISTS `admi_info`;
CREATE TABLE `admi_info`  (
  `Admi_ID` int(0) NOT NULL AUTO_INCREMENT COMMENT '管理员ID',
  `Anam` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '姓名',
  `Asex` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '性别',
  PRIMARY KEY (`Admi_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 124 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admi_info
-- ----------------------------
INSERT INTO `admi_info` VALUES (111, '张三', '男');
INSERT INTO `admi_info` VALUES (112, '李四', '男');
INSERT INTO `admi_info` VALUES (113, '王五', '男');
INSERT INTO `admi_info` VALUES (114, '王芳', '女');
INSERT INTO `admi_info` VALUES (115, '李玉', '女');
INSERT INTO `admi_info` VALUES (116, '陈晨', '女');
INSERT INTO `admi_info` VALUES (117, '赵六', '男');
INSERT INTO `admi_info` VALUES (118, '陈启', '男');
INSERT INTO `admi_info` VALUES (119, '何杰', '男');
INSERT INTO `admi_info` VALUES (120, '蒋羽', '女');
INSERT INTO `admi_info` VALUES (121, '王杰杰', '男');
INSERT INTO `admi_info` VALUES (123, '李华', '男');

-- ----------------------------
-- Table structure for comm_in
-- ----------------------------
DROP TABLE IF EXISTS `comm_in`;
CREATE TABLE `comm_in`  (
  `Asso1ID` int(0) NOT NULL AUTO_INCREMENT COMMENT '关联1ID',
  `comm_ID` int(0) NULL DEFAULT NULL COMMENT '商品ID',
  `In_ID` int(0) NULL DEFAULT NULL COMMENT '入库ID',
  PRIMARY KEY (`Asso1ID`) USING BTREE,
  INDEX `comm_ID`(`comm_ID`) USING BTREE,
  INDEX `In_ID`(`In_ID`) USING BTREE,
  CONSTRAINT `comm_in_ibfk_1` FOREIGN KEY (`comm_ID`) REFERENCES `comm_info` (`Comm_ID`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `comm_in_ibfk_2` FOREIGN KEY (`In_ID`) REFERENCES `in_info` (`In_ID`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 63 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comm_in
-- ----------------------------
INSERT INTO `comm_in` VALUES (32, 1245, 128);
INSERT INTO `comm_in` VALUES (33, 1245, 129);
INSERT INTO `comm_in` VALUES (34, 1245, 130);
INSERT INTO `comm_in` VALUES (35, 1616, 131);
INSERT INTO `comm_in` VALUES (36, 1617, 132);
INSERT INTO `comm_in` VALUES (37, 1245, 133);
INSERT INTO `comm_in` VALUES (38, 1618, 134);
INSERT INTO `comm_in` VALUES (39, 1620, 135);
INSERT INTO `comm_in` VALUES (40, 1620, 136);
INSERT INTO `comm_in` VALUES (41, 1620, 137);
INSERT INTO `comm_in` VALUES (42, 1620, 138);
INSERT INTO `comm_in` VALUES (43, 1617, 139);
INSERT INTO `comm_in` VALUES (44, 1622, 140);
INSERT INTO `comm_in` VALUES (45, 1621, 141);
INSERT INTO `comm_in` VALUES (46, 1621, 142);
INSERT INTO `comm_in` VALUES (47, 1643, 143);
INSERT INTO `comm_in` VALUES (48, 1630, 144);
INSERT INTO `comm_in` VALUES (49, 1643, 145);
INSERT INTO `comm_in` VALUES (50, 1628, 146);
INSERT INTO `comm_in` VALUES (51, 1628, 147);
INSERT INTO `comm_in` VALUES (52, 1623, 148);
INSERT INTO `comm_in` VALUES (53, 1625, 149);
INSERT INTO `comm_in` VALUES (54, 1625, 150);
INSERT INTO `comm_in` VALUES (55, 1624, 151);
INSERT INTO `comm_in` VALUES (56, 1629, 152);
INSERT INTO `comm_in` VALUES (57, 1619, 153);
INSERT INTO `comm_in` VALUES (58, 1619, 154);
INSERT INTO `comm_in` VALUES (59, 1620, 155);
INSERT INTO `comm_in` VALUES (60, 1618, 156);
INSERT INTO `comm_in` VALUES (61, 1245, 157);
INSERT INTO `comm_in` VALUES (62, 1245, 158);

-- ----------------------------
-- Table structure for comm_info
-- ----------------------------
DROP TABLE IF EXISTS `comm_info`;
CREATE TABLE `comm_info`  (
  `Comm_ID` int(0) NOT NULL AUTO_INCREMENT COMMENT '商品ID',
  `Comm_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '商品名',
  `Comm_inpr` float(11, 2) NULL DEFAULT NULL COMMENT '进价',
  `Comm_num` int(0) NULL DEFAULT NULL COMMENT '商品量',
  PRIMARY KEY (`Comm_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1644 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comm_info
-- ----------------------------
INSERT INTO `comm_info` VALUES (1245, '水杯', 11.00, 37);
INSERT INTO `comm_info` VALUES (1616, '花露水', 5.00, 52);
INSERT INTO `comm_info` VALUES (1617, '钢笔', 7.50, 156);
INSERT INTO `comm_info` VALUES (1618, '笔记本', 10.00, 80);
INSERT INTO `comm_info` VALUES (1619, '键盘', 30.00, 180);
INSERT INTO `comm_info` VALUES (1620, '鼠标', 35.00, 470);
INSERT INTO `comm_info` VALUES (1621, '鼠标垫', 10.00, 140);
INSERT INTO `comm_info` VALUES (1622, '有线耳机', 15.00, 70);
INSERT INTO `comm_info` VALUES (1623, '无线耳机', 30.00, 70);
INSERT INTO `comm_info` VALUES (1624, '数据线', 12.00, 30);
INSERT INTO `comm_info` VALUES (1625, '充电宝', 50.00, 140);
INSERT INTO `comm_info` VALUES (1628, '圆珠笔', 0.50, 140);
INSERT INTO `comm_info` VALUES (1629, '橡皮', 0.50, 90);
INSERT INTO `comm_info` VALUES (1630, '剪刀', 15.00, 70);
INSERT INTO `comm_info` VALUES (1643, '手机', 1000.00, 90);

-- ----------------------------
-- Table structure for comm_out
-- ----------------------------
DROP TABLE IF EXISTS `comm_out`;
CREATE TABLE `comm_out`  (
  `Asso4ID` int(0) NOT NULL AUTO_INCREMENT COMMENT '关联四',
  `comm_ID` int(0) NULL DEFAULT NULL COMMENT '商品ID',
  `out_ID` int(0) NULL DEFAULT NULL COMMENT '出库ID',
  PRIMARY KEY (`Asso4ID`) USING BTREE,
  INDEX `comm_ID`(`comm_ID`) USING BTREE,
  INDEX `out_ID`(`out_ID`) USING BTREE,
  CONSTRAINT `comm_out_ibfk_1` FOREIGN KEY (`comm_ID`) REFERENCES `comm_in` (`comm_ID`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `comm_out_ibfk_2` FOREIGN KEY (`out_ID`) REFERENCES `out_info` (`Out_ID`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comm_out
-- ----------------------------
INSERT INTO `comm_out` VALUES (27, 1245, 25);
INSERT INTO `comm_out` VALUES (28, 1624, 26);
INSERT INTO `comm_out` VALUES (29, 1624, 27);
INSERT INTO `comm_out` VALUES (30, 1643, 28);
INSERT INTO `comm_out` VALUES (31, 1616, 29);
INSERT INTO `comm_out` VALUES (32, 1245, 30);
INSERT INTO `comm_out` VALUES (33, 1245, 31);
INSERT INTO `comm_out` VALUES (34, 1245, 32);

-- ----------------------------
-- Table structure for comm_ware
-- ----------------------------
DROP TABLE IF EXISTS `comm_ware`;
CREATE TABLE `comm_ware`  (
  `Asso3ID` int(0) NOT NULL AUTO_INCREMENT COMMENT '关联3ID',
  `Comm_ID` int(0) NULL DEFAULT NULL COMMENT '商品ID',
  `Ware_ID` int(0) NULL DEFAULT NULL COMMENT '仓库ID',
  `ware_num` int(0) NULL DEFAULT NULL COMMENT '此商品在该仓库库存量',
  PRIMARY KEY (`Asso3ID`) USING BTREE,
  INDEX `Asso3ID`(`Asso3ID`) USING BTREE,
  INDEX `Comm_ID`(`Comm_ID`) USING BTREE,
  INDEX `Ware_ID`(`Ware_ID`) USING BTREE,
  CONSTRAINT `comm_ware_ibfk_1` FOREIGN KEY (`Comm_ID`) REFERENCES `comm_info` (`Comm_ID`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `comm_ware_ibfk_2` FOREIGN KEY (`Ware_ID`) REFERENCES `ware_info` (`Ware_ID`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 96 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comm_ware
-- ----------------------------
INSERT INTO `comm_ware` VALUES (50, 1245, 505, 30);
INSERT INTO `comm_ware` VALUES (51, 1245, 505, 52);
INSERT INTO `comm_ware` VALUES (52, 1245, 506, 52);
INSERT INTO `comm_ware` VALUES (53, 1616, 507, 50);
INSERT INTO `comm_ware` VALUES (54, 1617, 512, 86);
INSERT INTO `comm_ware` VALUES (62, 1245, 505, -10);
INSERT INTO `comm_ware` VALUES (63, 1245, 505, 30);
INSERT INTO `comm_ware` VALUES (64, 1618, 511, 30);
INSERT INTO `comm_ware` VALUES (65, 1620, 511, 30);
INSERT INTO `comm_ware` VALUES (66, 1620, 511, 130);
INSERT INTO `comm_ware` VALUES (67, 1620, 508, 130);
INSERT INTO `comm_ware` VALUES (68, 1620, 509, 130);
INSERT INTO `comm_ware` VALUES (69, 1617, 506, 70);
INSERT INTO `comm_ware` VALUES (70, 1622, 511, 70);
INSERT INTO `comm_ware` VALUES (71, 1621, 509, 70);
INSERT INTO `comm_ware` VALUES (72, 1621, 511, 70);
INSERT INTO `comm_ware` VALUES (73, 1643, 511, 70);
INSERT INTO `comm_ware` VALUES (74, 1630, 511, 70);
INSERT INTO `comm_ware` VALUES (75, 1643, 511, 70);
INSERT INTO `comm_ware` VALUES (76, 1628, 511, 70);
INSERT INTO `comm_ware` VALUES (77, 1628, 509, 70);
INSERT INTO `comm_ware` VALUES (78, 1623, 507, 70);
INSERT INTO `comm_ware` VALUES (79, 1625, 507, 70);
INSERT INTO `comm_ware` VALUES (80, 1625, 510, 70);
INSERT INTO `comm_ware` VALUES (81, 1624, 510, 70);
INSERT INTO `comm_ware` VALUES (82, 1629, 510, 90);
INSERT INTO `comm_ware` VALUES (83, 1619, 510, 90);
INSERT INTO `comm_ware` VALUES (84, 1619, 510, 90);
INSERT INTO `comm_ware` VALUES (86, 1624, 510, -20);
INSERT INTO `comm_ware` VALUES (88, 1620, 509, 50);
INSERT INTO `comm_ware` VALUES (89, 1618, 509, 50);
INSERT INTO `comm_ware` VALUES (91, 1245, 505, -10);
INSERT INTO `comm_ware` VALUES (92, 1245, 505, 2);
INSERT INTO `comm_ware` VALUES (93, 1245, 505, 4);
INSERT INTO `comm_ware` VALUES (94, 1245, 505, -98);
INSERT INTO `comm_ware` VALUES (95, 1245, 506, -5);

-- ----------------------------
-- Table structure for cust_info
-- ----------------------------
DROP TABLE IF EXISTS `cust_info`;
CREATE TABLE `cust_info`  (
  `Cust_ID` int(0) NOT NULL AUTO_INCREMENT COMMENT '客户ID',
  `Cpho_num` bigint(0) NULL DEFAULT NULL COMMENT '电话',
  `Cnam` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '姓名',
  `Csex` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '性别',
  PRIMARY KEY (`Cust_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 790 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cust_info
-- ----------------------------
INSERT INTO `cust_info` VALUES (2, 1234567891, '柳林', '女');
INSERT INTO `cust_info` VALUES (3, 1234567892, '刘林', '女');
INSERT INTO `cust_info` VALUES (4, 1234567893, '王岳', '男');
INSERT INTO `cust_info` VALUES (5, 1234567894, '李利', '女');
INSERT INTO `cust_info` VALUES (6, 1234567895, '李丽', '女');
INSERT INTO `cust_info` VALUES (7, 1234567896, '何丽', '女');
INSERT INTO `cust_info` VALUES (8, 1234567897, '张伟', '男');
INSERT INTO `cust_info` VALUES (9, 1234567898, '王杰', '男');
INSERT INTO `cust_info` VALUES (10, 1234567899, '李杰', '男');
INSERT INTO `cust_info` VALUES (11, 1234567991, '何倪', '女');
INSERT INTO `cust_info` VALUES (111, 13302774587, '柯基', '男');

-- ----------------------------
-- Table structure for in_info
-- ----------------------------
DROP TABLE IF EXISTS `in_info`;
CREATE TABLE `in_info`  (
  `In_ID` int(0) NOT NULL AUTO_INCREMENT COMMENT '出库ID',
  `Ware_ID` int(0) NOT NULL COMMENT '仓库ID',
  `In_time` datetime(6) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '出库时间',
  `Admi_ID` int(0) NULL DEFAULT NULL COMMENT '管理员ID',
  `Supp_ID` int(0) NULL DEFAULT NULL COMMENT '供应商ID',
  PRIMARY KEY (`In_ID`) USING BTREE,
  INDEX `in_info_ibfk_1`(`Ware_ID`) USING BTREE,
  INDEX `Admi_ID`(`Admi_ID`) USING BTREE,
  INDEX `Supp_ID`(`Supp_ID`) USING BTREE,
  CONSTRAINT `in_info_ibfk_1` FOREIGN KEY (`Admi_ID`) REFERENCES `admi_info` (`Admi_ID`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `in_info_ibfk_2` FOREIGN KEY (`Supp_ID`) REFERENCES `supp_info` (`Supp_ID`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 159 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of in_info
-- ----------------------------
INSERT INTO `in_info` VALUES (128, 505, '2021-07-08 18:19:16.000000', 111, 116);
INSERT INTO `in_info` VALUES (129, 505, '2021-07-08 18:21:23.000000', 111, 116);
INSERT INTO `in_info` VALUES (130, 506, '2021-07-08 18:21:23.000000', 111, 116);
INSERT INTO `in_info` VALUES (131, 507, '2021-07-08 18:21:23.000000', 112, 116);
INSERT INTO `in_info` VALUES (132, 512, '2021-07-08 18:36:32.000000', 117, 119);
INSERT INTO `in_info` VALUES (133, 505, '2021-07-09 12:05:55.000000', 111, 116);
INSERT INTO `in_info` VALUES (134, 511, '2021-07-09 12:05:55.000000', 114, 119);
INSERT INTO `in_info` VALUES (135, 511, '2021-07-09 12:05:55.000000', 114, 119);
INSERT INTO `in_info` VALUES (136, 511, '2021-07-09 12:05:55.000000', 114, 122);
INSERT INTO `in_info` VALUES (137, 508, '2021-07-09 12:05:55.000000', 113, 118);
INSERT INTO `in_info` VALUES (138, 509, '2021-07-09 12:05:55.000000', 115, 123);
INSERT INTO `in_info` VALUES (139, 506, '2021-07-09 12:05:55.000000', 115, 120);
INSERT INTO `in_info` VALUES (140, 511, '2021-07-09 12:05:55.000000', 113, 122);
INSERT INTO `in_info` VALUES (141, 509, '2021-07-09 12:05:55.000000', 116, 122);
INSERT INTO `in_info` VALUES (142, 511, '2021-07-09 12:05:55.000000', 112, 117);
INSERT INTO `in_info` VALUES (143, 511, '2021-07-09 12:05:55.000000', 112, 117);
INSERT INTO `in_info` VALUES (144, 511, '2021-07-09 12:05:55.000000', 114, 117);
INSERT INTO `in_info` VALUES (145, 511, '2021-07-09 12:05:55.000000', 114, 117);
INSERT INTO `in_info` VALUES (146, 511, '2021-07-09 12:05:55.000000', 117, 117);
INSERT INTO `in_info` VALUES (147, 509, '2021-07-09 12:05:55.000000', 117, 117);
INSERT INTO `in_info` VALUES (148, 507, '2021-07-09 12:05:55.000000', 115, 119);
INSERT INTO `in_info` VALUES (149, 507, '2021-07-09 12:05:55.000000', 115, 119);
INSERT INTO `in_info` VALUES (150, 510, '2021-07-09 12:05:55.000000', 116, 119);
INSERT INTO `in_info` VALUES (151, 510, '2021-07-09 12:05:55.000000', 118, 122);
INSERT INTO `in_info` VALUES (152, 510, '2021-07-09 12:05:55.000000', 115, 118);
INSERT INTO `in_info` VALUES (153, 510, '2021-07-09 12:05:55.000000', 115, 122);
INSERT INTO `in_info` VALUES (154, 510, '2021-07-09 12:05:55.000000', 115, 122);
INSERT INTO `in_info` VALUES (155, 509, '2021-07-09 15:23:55.000000', 117, 117);
INSERT INTO `in_info` VALUES (156, 509, '2021-07-09 15:23:55.000000', 116, 117);
INSERT INTO `in_info` VALUES (157, 505, '2021-07-09 15:58:06.000000', 111, 116);
INSERT INTO `in_info` VALUES (158, 505, '2021-07-09 16:00:10.000000', 111, 116);

-- ----------------------------
-- Table structure for out_info
-- ----------------------------
DROP TABLE IF EXISTS `out_info`;
CREATE TABLE `out_info`  (
  `Out_ID` int(0) NOT NULL AUTO_INCREMENT COMMENT '出库ID',
  `Out_cout` int(0) UNSIGNED NULL DEFAULT NULL COMMENT '出库量',
  `Ware_ID` int(0) NULL DEFAULT NULL COMMENT '仓库ID',
  `Out_time` datetime(6) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '出库时间',
  `Cust_ID` int(0) NULL DEFAULT NULL COMMENT '客户ID',
  `Comm_ID` int(0) NULL DEFAULT NULL COMMENT '商品ID',
  `Admi_ID` int(0) NULL DEFAULT NULL COMMENT '管理员ID',
  PRIMARY KEY (`Out_ID`) USING BTREE,
  INDEX `out_info_ibfk_1`(`Ware_ID`) USING BTREE,
  INDEX `Coom_ID`(`Comm_ID`) USING BTREE,
  INDEX `Cust_ID`(`Cust_ID`) USING BTREE,
  INDEX `Admi_ID`(`Admi_ID`) USING BTREE,
  CONSTRAINT `out_info_ibfk_1` FOREIGN KEY (`Ware_ID`) REFERENCES `ware_info` (`Ware_ID`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `out_info_ibfk_3` FOREIGN KEY (`Comm_ID`) REFERENCES `comm_info` (`Comm_ID`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `out_info_ibfk_4` FOREIGN KEY (`Cust_ID`) REFERENCES `cust_info` (`Cust_ID`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `out_info_ibfk_5` FOREIGN KEY (`Admi_ID`) REFERENCES `admi_info` (`Admi_ID`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of out_info
-- ----------------------------
INSERT INTO `out_info` VALUES (25, 10, 505, '2021-07-09 11:38:30.000000', 2, 1245, 111);
INSERT INTO `out_info` VALUES (26, 20, 507, '2021-07-09 12:11:50.000000', 2, 1624, 111);
INSERT INTO `out_info` VALUES (27, 20, 510, '2021-07-09 12:12:16.000000', 2, 1624, 111);
INSERT INTO `out_info` VALUES (28, 50, 510, '2021-07-09 12:22:58.000000', 2, 1643, 111);
INSERT INTO `out_info` VALUES (29, 80, 507, '2021-07-09 15:30:29.000000', 2, 1616, 111);
INSERT INTO `out_info` VALUES (30, 10, 505, '2021-07-09 15:33:57.000000', 2, 1245, 111);
INSERT INTO `out_info` VALUES (31, 98, 505, '2021-07-09 16:01:32.000000', 2, 1245, 111);
INSERT INTO `out_info` VALUES (32, 5, 506, '2021-07-09 16:03:09.000000', 2, 1245, 111);

-- ----------------------------
-- Table structure for supp_info
-- ----------------------------
DROP TABLE IF EXISTS `supp_info`;
CREATE TABLE `supp_info`  (
  `Supp_ID` int(0) NOT NULL AUTO_INCREMENT COMMENT '供货商ID',
  `Spho_num` bigint(0) NULL DEFAULT NULL COMMENT '电话',
  `Snam` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '姓名',
  `Ssex` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '性别',
  PRIMARY KEY (`Supp_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 145 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of supp_info
-- ----------------------------
INSERT INTO `supp_info` VALUES (116, 13356789321, '刘芳', '女');
INSERT INTO `supp_info` VALUES (117, 1987654322, '刘舒怀', '男');
INSERT INTO `supp_info` VALUES (118, 1987654323, '景保哲', '男');
INSERT INTO `supp_info` VALUES (119, 1987654324, '桂茜茜', '女');
INSERT INTO `supp_info` VALUES (120, 1987654325, '习依辰', '男');
INSERT INTO `supp_info` VALUES (121, 1987654326, '焦天媛', '女');
INSERT INTO `supp_info` VALUES (122, 1987654327, '曾怡金', '男');
INSERT INTO `supp_info` VALUES (123, 1987654328, '蔡思雨', '女');
INSERT INTO `supp_info` VALUES (124, 1987654329, '莘桂帆', '女');
INSERT INTO `supp_info` VALUES (125, 1987654311, '萧心慈', '女');

-- ----------------------------
-- Table structure for ware_admi
-- ----------------------------
DROP TABLE IF EXISTS `ware_admi`;
CREATE TABLE `ware_admi`  (
  `Asso2ID` int(0) NOT NULL AUTO_INCREMENT COMMENT '关联2ID',
  `Ware_ID` int(0) NULL DEFAULT NULL COMMENT '仓库ID',
  `Admi_ID` int(0) NULL DEFAULT NULL COMMENT '管理员ID',
  PRIMARY KEY (`Asso2ID`) USING BTREE,
  INDEX `Ware_ID`(`Ware_ID`) USING BTREE,
  INDEX `Admi_ID`(`Admi_ID`) USING BTREE,
  CONSTRAINT `ware_admi_ibfk_1` FOREIGN KEY (`Ware_ID`) REFERENCES `ware_info` (`Ware_ID`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `ware_admi_ibfk_2` FOREIGN KEY (`Admi_ID`) REFERENCES `admi_info` (`Admi_ID`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ware_admi
-- ----------------------------
INSERT INTO `ware_admi` VALUES (5, 506, 112);
INSERT INTO `ware_admi` VALUES (6, 507, 119);
INSERT INTO `ware_admi` VALUES (7, 507, 116);
INSERT INTO `ware_admi` VALUES (8, 512, 114);
INSERT INTO `ware_admi` VALUES (9, 513, 117);
INSERT INTO `ware_admi` VALUES (10, 508, 119);
INSERT INTO `ware_admi` VALUES (11, 507, 114);
INSERT INTO `ware_admi` VALUES (12, 511, 115);
INSERT INTO `ware_admi` VALUES (13, 514, 117);
INSERT INTO `ware_admi` VALUES (14, 512, 119);
INSERT INTO `ware_admi` VALUES (15, 511, 117);
INSERT INTO `ware_admi` VALUES (16, 510, 118);
INSERT INTO `ware_admi` VALUES (17, 505, 111);
INSERT INTO `ware_admi` VALUES (18, 505, 112);
INSERT INTO `ware_admi` VALUES (19, 505, 113);
INSERT INTO `ware_admi` VALUES (20, 505, 114);
INSERT INTO `ware_admi` VALUES (21, 505, 115);
INSERT INTO `ware_admi` VALUES (22, 505, 116);
INSERT INTO `ware_admi` VALUES (23, 505, 117);
INSERT INTO `ware_admi` VALUES (24, 505, 118);
INSERT INTO `ware_admi` VALUES (25, 505, 119);
INSERT INTO `ware_admi` VALUES (27, 505, 120);
INSERT INTO `ware_admi` VALUES (28, 514, 111);
INSERT INTO `ware_admi` VALUES (29, 514, 112);
INSERT INTO `ware_admi` VALUES (30, 514, 113);
INSERT INTO `ware_admi` VALUES (31, 514, 114);
INSERT INTO `ware_admi` VALUES (32, 514, 115);
INSERT INTO `ware_admi` VALUES (33, 514, 116);
INSERT INTO `ware_admi` VALUES (34, 514, 118);
INSERT INTO `ware_admi` VALUES (35, 514, 119);
INSERT INTO `ware_admi` VALUES (36, 514, 120);
INSERT INTO `ware_admi` VALUES (37, 512, 111);
INSERT INTO `ware_admi` VALUES (38, 512, 113);
INSERT INTO `ware_admi` VALUES (39, 512, 115);
INSERT INTO `ware_admi` VALUES (40, 512, 120);
INSERT INTO `ware_admi` VALUES (41, 512, 118);

-- ----------------------------
-- Table structure for ware_info
-- ----------------------------
DROP TABLE IF EXISTS `ware_info`;
CREATE TABLE `ware_info`  (
  `Ware_ID` int(0) NOT NULL AUTO_INCREMENT COMMENT '仓库ID',
  `Ware_addr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '仓库地址',
  `Ware_cout` int(0) NULL DEFAULT NULL COMMENT '库存量',
  PRIMARY KEY (`Ware_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 516 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ware_info
-- ----------------------------
INSERT INTO `ware_info` VALUES (505, '宜宾市翠屏区S206', 1);
INSERT INTO `ware_info` VALUES (506, '宜宾市翠屏区港园路西段与荆花路北段交叉路口往东南约180米', 2);
INSERT INTO `ware_info` VALUES (507, '宜宾市翠屏区西丘路与宜长路交叉路口往东南约160米', 3);
INSERT INTO `ware_info` VALUES (508, '宜宾市翠屏区牟府街宜宾市翠屏区牟坪镇人民政府西侧约290米', 4);
INSERT INTO `ware_info` VALUES (509, '四川省成都市锦江区锦江环城生态区', 5);
INSERT INTO `ware_info` VALUES (510, '成都市温江区柳台大道555号', 6);
INSERT INTO `ware_info` VALUES (511, '成都市西三环路五段289号', 7);
INSERT INTO `ware_info` VALUES (512, '四川省成都市成华区龙潭寺龙港路399号', 8);
INSERT INTO `ware_info` VALUES (513, '四川省成都市简阳市金龙山庄南路375号', 9);
INSERT INTO `ware_info` VALUES (514, '破解受到法律监督', 10);

-- ----------------------------
-- View structure for out
-- ----------------------------
DROP VIEW IF EXISTS `out`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `out` AS select distinct `comm_info`.`Comm_name` AS `Comm_name`,`ware_info`.`Ware_ID` AS `Ware_ID`,`comm_info`.`Comm_num` AS `Comm_num` from ((`comm_info` join `ware_info`) join `comm_ware`) where ((`comm_info`.`Comm_ID` = `comm_ware`.`Comm_ID`) and (`ware_info`.`Ware_ID` = `comm_ware`.`Ware_ID`));

SET FOREIGN_KEY_CHECKS = 1;
