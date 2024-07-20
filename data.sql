/*
Navicat MySQL Data Transfer

Source Server         : test
Source Server Version : 80036
Source Host           : localhost:3306
Source Database       : node

Target Server Type    : MYSQL
Target Server Version : 80036
File Encoding         : 65001

Date: 2024-07-20 18:08:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for addons
-- ----------------------------
DROP TABLE IF EXISTS `addons`;
CREATE TABLE `addons` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of addons
-- ----------------------------

-- ----------------------------
-- Table structure for average
-- ----------------------------
DROP TABLE IF EXISTS `average`;
CREATE TABLE `average` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `score` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `emotion` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `created` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of average
-- ----------------------------
INSERT INTO `average` VALUES ('4', 'Kevin ', '80', 'Happy ', '2024-07-20 16:44:44');
INSERT INTO `average` VALUES ('5', 'Josh ', '90', 'Sad ', '2024-07-20 16:44:44');
INSERT INTO `average` VALUES ('6', 'Kevin ', '85', 'Happy ', '2024-07-20 16:44:44');
INSERT INTO `average` VALUES ('7', 'Kevin ', '75', 'Sad ', '2024-07-20 16:44:44');
INSERT INTO `average` VALUES ('8', 'Josh ', '65', 'Angry', '2024-07-20 16:44:44');
INSERT INTO `average` VALUES ('9', 'David ', '85', 'Happy ', '2024-07-21 16:44:44');
INSERT INTO `average` VALUES ('10', 'Josh ', '90', 'Sad', '2024-07-21 16:44:44');
INSERT INTO `average` VALUES ('11', 'David ', '75', 'Sad', '2024-07-21 16:44:44');
INSERT INTO `average` VALUES ('12', 'Josh ', '85', 'Sad', '2024-07-21 16:44:44');
INSERT INTO `average` VALUES ('13', 'Josh ', '70', 'Happy', '2024-07-21 16:44:44');
INSERT INTO `average` VALUES ('14', 'Kevin ', '80', 'Sad', '2024-07-21 16:44:44');
INSERT INTO `average` VALUES ('15', 'Kevin ', '73', 'Sad', '2024-07-22 16:44:44');
INSERT INTO `average` VALUES ('16', 'Kevin ', '75', 'Angry', '2024-07-22 16:44:44');
INSERT INTO `average` VALUES ('17', 'David ', '82', 'Sad', '2024-07-22 16:44:44');
INSERT INTO `average` VALUES ('18', 'David ', '65', 'Sad', '2024-07-22 16:44:44');

-- ----------------------------
-- Table structure for pivot
-- ----------------------------
DROP TABLE IF EXISTS `pivot`;
CREATE TABLE `pivot` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of pivot
-- ----------------------------

-- ----------------------------
-- Table structure for preview
-- ----------------------------
DROP TABLE IF EXISTS `preview`;
CREATE TABLE `preview` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of preview
-- ----------------------------

-- ----------------------------
-- Table structure for price
-- ----------------------------
DROP TABLE IF EXISTS `price`;
CREATE TABLE `price` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of price
-- ----------------------------

-- ----------------------------
-- Table structure for product2
-- ----------------------------
DROP TABLE IF EXISTS `product2`;
CREATE TABLE `product2` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `id_product2` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of product2
-- ----------------------------

-- ----------------------------
-- Table structure for product3
-- ----------------------------
DROP TABLE IF EXISTS `product3`;
CREATE TABLE `product3` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of product3
-- ----------------------------

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `idproduct3` int DEFAULT NULL,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `slug` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `lang` varchar(255) DEFAULT NULL,
  `auth_id` int DEFAULT NULL,
  `status` int DEFAULT NULL,
  `type` int DEFAULT NULL,
  `count` int DEFAULT NULL,
  `create_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `update_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `categori_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES ('4', null, 'nasi goreng', 'nasi-goreng', 'eng', '11', '1', '6', '0', '2024-07-20 17:53:03', '2024-07-20 17:53:03', '1');
INSERT INTO `products` VALUES ('5', null, 'ayam', 'ayam-goreng', 'ina', '12', '2', '9', '1', '2024-07-20 17:53:37', '2024-07-20 17:53:37', '2');

-- ----------------------------
-- Table structure for stock
-- ----------------------------
DROP TABLE IF EXISTS `stock`;
CREATE TABLE `stock` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of stock
-- ----------------------------
