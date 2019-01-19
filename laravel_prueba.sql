/*
Navicat MySQL Data Transfer

Source Server         : ERWIN
Source Server Version : 50711
Source Host           : 127.0.0.1:3306
Source Database       : laravel_prueba

Target Server Type    : MYSQL
Target Server Version : 50711
File Encoding         : 65001

Date: 2019-01-18 19:28:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2019_01_18_212839_create_trainers_table', '1');
INSERT INTO `migrations` VALUES ('4', '2019_01_18_232623_add_avatar_to_trainer', '2');
INSERT INTO `migrations` VALUES ('5', '2019_01_19_001429_add_description_to_trainer', '3');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for trainers
-- ----------------------------
DROP TABLE IF EXISTS `trainers`;
CREATE TABLE `trainers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of trainers
-- ----------------------------
INSERT INTO `trainers` VALUES ('1', 'ERWIN', '2019-01-18 21:49:19', '2019-01-18 21:49:19', '', '');
INSERT INTO `trainers` VALUES ('2', 'ASH', '2019-01-18 22:24:58', '2019-01-18 22:24:58', '', '');
INSERT INTO `trainers` VALUES ('4', 'ERWIN', '2019-01-19 00:12:16', '2019-01-19 00:12:16', '154785673634030993_2043947402314510_2034021602860990464_n.jpg', '');
INSERT INTO `trainers` VALUES ('5', 'ERWIN', '2019-01-19 00:20:03', '2019-01-19 00:20:03', '154785720334030993_2043947402314510_2034021602860990464_n.jpg', 'DESCRIPCION DE PRUEBA');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
SET FOREIGN_KEY_CHECKS=1;
