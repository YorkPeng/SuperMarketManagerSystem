/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80018
 Source Host           : localhost:3306
 Source Schema         : marketdb

 Target Server Type    : MySQL
 Target Server Version : 80018
 File Encoding         : 65001

 Date: 04/01/2020 22:46:11
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer`  (
  `customerId` int(11) NOT NULL AUTO_INCREMENT,
  `customerName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `customerAddress` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `customerTelephone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`customerId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES (1, '蔡哥', '广东广州', '1234543');
INSERT INTO `customer` VALUES (2, '黄总', '广东广州', '1234543');
INSERT INTO `customer` VALUES (3, '张总', '广东广州', '12345432');
INSERT INTO `customer` VALUES (4, '飞机哥', '湖北武汉', '1234543');
INSERT INTO `customer` VALUES (15, '牛大侠', '广西南宁', '12314175981');

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee`  (
  `empId` int(11) NOT NULL AUTO_INCREMENT,
  `empName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `empGender` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `empAge` int(255) NULL DEFAULT NULL,
  `empSalary` int(10) NULL DEFAULT NULL,
  `empType` int(255) NULL DEFAULT NULL,
  `empTelephone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `empPassword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`empId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES (1, '张三', '男', 30, 5000, 0, '13400000000', '81dc9bdb52d04dc20036dbd8313ed055');
INSERT INTO `employee` VALUES (2, '李四', '男', 25, 3333, 1, '1231412412', '202cb962ac59075b964b07152d234b70');
INSERT INTO `employee` VALUES (3, '王五', '男', 19, 2500, 0, '12345', '	81dc9bdb52d04dc20036dbd8313ed055');
INSERT INTO `employee` VALUES (12, '胡国庆', '女', 60, 25678, 1, '333222', '	81dc9bdb52d04dc20036dbd8313ed055');
INSERT INTO `employee` VALUES (14, '铁憨憨', '男', 24, 2444, 0, '14214', '	81dc9bdb52d04dc20036dbd8313ed055');
INSERT INTO `employee` VALUES (15, '李国庆', '男', 23, 444, 0, '31231', '6074c6aa3488f3c2dddff2a7ca821aab');
INSERT INTO `employee` VALUES (17, '张飞', '男', 45, 2000, 0, '1350000000', '46d045ff5190f6ea93739da6c0aa19bc');

-- ----------------------------
-- Table structure for house
-- ----------------------------
DROP TABLE IF EXISTS `house`;
CREATE TABLE `house`  (
  `houseId` int(11) NOT NULL AUTO_INCREMENT,
  `houseAddress` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `houseTelephone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `houseName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`houseId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of house
-- ----------------------------
INSERT INTO `house` VALUES (1, '广东广州', '1231231', '广州一号仓');
INSERT INTO `house` VALUES (2, '北京', '1231232', '北京一号仓');
INSERT INTO `house` VALUES (3, '广东深圳', '2133332', '深圳一号仓');
INSERT INTO `house` VALUES (4, '天津', '12333', '天津一号仓');
INSERT INTO `house` VALUES (5, '上海', '777777', '上海一号仓');

-- ----------------------------
-- Table structure for inlist
-- ----------------------------
DROP TABLE IF EXISTS `inlist`;
CREATE TABLE `inlist`  (
  `inId` int(11) NOT NULL AUTO_INCREMENT,
  `inItemId` int(11) NULL DEFAULT NULL,
  `inSupplierId` int(11) NULL DEFAULT NULL,
  `inAmount` int(255) NULL DEFAULT NULL,
  `inPrice` int(10) NULL DEFAULT NULL,
  PRIMARY KEY (`inId`) USING BTREE,
  INDEX `进货单供应商外键`(`inSupplierId`) USING BTREE,
  INDEX `进货单商品外键`(`inItemId`) USING BTREE,
  CONSTRAINT `进货单供应商外键` FOREIGN KEY (`inSupplierId`) REFERENCES `supplier` (`supplierId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `进货单商品外键` FOREIGN KEY (`inItemId`) REFERENCES `item` (`itemId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of inlist
-- ----------------------------
INSERT INTO `inlist` VALUES (1, 1, 2, 500, 2000);
INSERT INTO `inlist` VALUES (4, 2, 2, 233, 5002);
INSERT INTO `inlist` VALUES (5, 3, 3, 25, 50);
INSERT INTO `inlist` VALUES (6, 8, 3, 3, 1888);
INSERT INTO `inlist` VALUES (7, 1, 4, 150, 5050);
INSERT INTO `inlist` VALUES (8, 5, 5, 2, 1239812);
INSERT INTO `inlist` VALUES (12, 10, 4, 45, 135);

-- ----------------------------
-- Table structure for item
-- ----------------------------
DROP TABLE IF EXISTS `item`;
CREATE TABLE `item`  (
  `itemId` int(11) NOT NULL AUTO_INCREMENT,
  `itemName` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `itemPrice` int(10) NULL DEFAULT NULL,
  `itemAmount` int(255) NULL DEFAULT NULL,
  `itemMan` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `itemSupplierId` int(11) NULL DEFAULT NULL,
  `itemHouseId` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`itemId`) USING BTREE,
  INDEX `商品仓库外键`(`itemHouseId`) USING BTREE,
  INDEX `商品供应商外键`(`itemSupplierId`) USING BTREE,
  CONSTRAINT `商品仓库外键` FOREIGN KEY (`itemHouseId`) REFERENCES `house` (`houseId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `商品供应商外键` FOREIGN KEY (`itemSupplierId`) REFERENCES `supplier` (`supplierId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item
-- ----------------------------
INSERT INTO `item` VALUES (1, '肥皂', 5, 151, '白猫日化', 1, 1);
INSERT INTO `item` VALUES (2, '手机', 2500, 1233, '小米移动通信', 2, 2);
INSERT INTO `item` VALUES (3, '洗发水', 25, 198, '海飞丝', 2, 3);
INSERT INTO `item` VALUES (4, '电脑', 12500, 2490, '联想', 4, 4);
INSERT INTO `item` VALUES (5, '飞机', 5000000, 3, '波音', 3, 2);
INSERT INTO `item` VALUES (6, '火箭', 213456, 5, '东风', 1, 5);
INSERT INTO `item` VALUES (8, '坦克', 888, 5, '东风', 3, 3);
INSERT INTO `item` VALUES (9, '小火车', 20, 5555, '奥迪双钻', 4, 4);
INSERT INTO `item` VALUES (10, '牙膏', 5, 590, '宝洁', 1, 3);

-- ----------------------------
-- Table structure for sale
-- ----------------------------
DROP TABLE IF EXISTS `sale`;
CREATE TABLE `sale`  (
  `saleId` int(11) NOT NULL AUTO_INCREMENT,
  `saleTime` datetime(0) NULL DEFAULT NULL,
  `saleEmpId` int(11) NULL DEFAULT NULL,
  `saleItemId` int(11) NULL DEFAULT NULL,
  `saleAmount` int(255) NULL DEFAULT NULL,
  `saleCustomerId` int(11) NULL DEFAULT NULL,
  `salePrice` int(10) NULL DEFAULT NULL,
  PRIMARY KEY (`saleId`) USING BTREE,
  INDEX `销售单员工外键`(`saleEmpId`) USING BTREE,
  INDEX `销售单商品外键`(`saleItemId`) USING BTREE,
  INDEX `销售单客户外键`(`saleCustomerId`) USING BTREE,
  CONSTRAINT `销售单员工外键` FOREIGN KEY (`saleEmpId`) REFERENCES `employee` (`empId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `销售单商品外键` FOREIGN KEY (`saleItemId`) REFERENCES `item` (`itemId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `销售单客户外键` FOREIGN KEY (`saleCustomerId`) REFERENCES `customer` (`customerId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sale
-- ----------------------------
INSERT INTO `sale` VALUES (2, '2019-12-31 12:41:59', 2, 4, 10, 4, 50000);
INSERT INTO `sale` VALUES (3, '2020-01-02 02:48:54', 12, 5, 1, 4, 51609);
INSERT INTO `sale` VALUES (4, '2020-01-02 02:53:45', 2, 1, 99, 3, 5050);
INSERT INTO `sale` VALUES (5, '2020-01-03 02:12:15', 3, 3, 2, 3, 58);
INSERT INTO `sale` VALUES (7, '2020-01-03 04:15:33', 3, 10, 10, 3, 55);

-- ----------------------------
-- Table structure for supplier
-- ----------------------------
DROP TABLE IF EXISTS `supplier`;
CREATE TABLE `supplier`  (
  `supplierId` int(11) NOT NULL AUTO_INCREMENT,
  `supplierName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `supplierAddress` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `supplierTelephone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`supplierId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of supplier
-- ----------------------------
INSERT INTO `supplier` VALUES (1, '京东', '北京', '2131312');
INSERT INTO `supplier` VALUES (2, '苏宁', '江苏南京', '124142');
INSERT INTO `supplier` VALUES (3, '淘宝', '浙江杭州', '312312');
INSERT INTO `supplier` VALUES (4, '全家', '广东广州', '333444');
INSERT INTO `supplier` VALUES (5, '亚马逊', '美国得克萨斯州', '414142');

-- ----------------------------
-- View structure for emp_view
-- ----------------------------
DROP VIEW IF EXISTS `emp_view`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `emp_view` AS select `employee`.`empId` AS `empId`,`employee`.`empName` AS `empName`,`employee`.`empGender` AS `empGender`,`employee`.`empAge` AS `empAge`,`employee`.`empSalary` AS `empSalary`,`employee`.`empType` AS `empType`,`employee`.`empTelephone` AS `empTelephone` from `employee`;

-- ----------------------------
-- View structure for in_item_supplier_view
-- ----------------------------
DROP VIEW IF EXISTS `in_item_supplier_view`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `in_item_supplier_view` AS select `inlist`.`inId` AS `inId`,`inlist`.`inAmount` AS `inAmount`,`inlist`.`inPrice` AS `inPrice`,`item`.`itemName` AS `itemName`,`supplier`.`supplierName` AS `supplierName` from ((`inlist` join `item` on((`inlist`.`inItemId` = `item`.`itemId`))) join `supplier` on((`inlist`.`inSupplierId` = `supplier`.`supplierId`)));

-- ----------------------------
-- View structure for item_supplier_house_view
-- ----------------------------
DROP VIEW IF EXISTS `item_supplier_house_view`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `item_supplier_house_view` AS select `house`.`houseName` AS `houseName`,`item`.`itemId` AS `itemId`,`item`.`itemName` AS `itemName`,`item`.`itemPrice` AS `itemPrice`,`item`.`itemAmount` AS `itemAmount`,`item`.`itemMan` AS `itemMan`,`supplier`.`supplierName` AS `supplierName` from ((`item` join `supplier` on((`item`.`itemSupplierId` = `supplier`.`supplierId`))) join `house` on((`item`.`itemHouseId` = `house`.`houseId`))) where ((`item`.`itemHouseId` = `house`.`houseId`) and (`item`.`itemSupplierId` = `supplier`.`supplierId`));

-- ----------------------------
-- View structure for item_view
-- ----------------------------
DROP VIEW IF EXISTS `item_view`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `item_view` AS select `item`.`itemId` AS `商品编号`,`item`.`itemName` AS `商品姓名`,`item`.`itemPrice` AS `商品价格`,`item`.`itemAmount` AS `商品库存数量`,`item`.`itemMan` AS `商品制造商`,`item`.`itemSupplierId` AS `商品供应商ID`,`item`.`itemHouseId` AS `商品仓库ID` from `item`;

-- ----------------------------
-- View structure for sale_employee_item_customer_view
-- ----------------------------
DROP VIEW IF EXISTS `sale_employee_item_customer_view`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `sale_employee_item_customer_view` AS select `sale`.`saleId` AS `saleId`,`sale`.`saleTime` AS `saleTime`,`sale`.`saleAmount` AS `saleAmount`,`sale`.`salePrice` AS `salePrice`,`item`.`itemName` AS `itemName`,`employee`.`empName` AS `empName`,`customer`.`customerName` AS `customerName` from (((`sale` join `employee` on((`sale`.`saleEmpId` = `employee`.`empId`))) join `item` on((`sale`.`saleItemId` = `item`.`itemId`))) join `customer` on((`sale`.`saleCustomerId` = `customer`.`customerId`)));

-- ----------------------------
-- Triggers structure for table inlist
-- ----------------------------
DROP TRIGGER IF EXISTS `更新库存`;
delimiter ;;
CREATE TRIGGER `更新库存` AFTER INSERT ON `inlist` FOR EACH ROW BEGIN
 UPDATE item
SET item.itemAmount = item.itemAmount + new.inAmount
WHERE item.itemId = new.inItemId;
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table sale
-- ----------------------------
DROP TRIGGER IF EXISTS `减少库存`;
delimiter ;;
CREATE TRIGGER `减少库存` AFTER INSERT ON `sale` FOR EACH ROW BEGIN
 UPDATE item
SET item.itemAmount = item.itemAmount - new.saleAmount
WHERE item.itemId = new.saleItemId;
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
