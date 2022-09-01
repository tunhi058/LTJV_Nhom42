/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80027
 Source Host           : localhost:3306
 Source Schema         : gtvldb

 Target Server Type    : MySQL
 Target Server Version : 80027
 File Encoding         : 65001

 Date: 01/09/2022 14:56:29
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('Bất động sản');
INSERT INTO `category` VALUES ('Cơ khí');
INSERT INTO `category` VALUES ('Công nghệ thông tin');
INSERT INTO `category` VALUES ('Kế toán/ Kiểm toán');
INSERT INTO `category` VALUES ('Logistics - Vận tải');
INSERT INTO `category` VALUES ('Luật');
INSERT INTO `category` VALUES ('Marketing/ Truyền thông/ Quản cáo');
INSERT INTO `category` VALUES ('Ngân hàng');
INSERT INTO `category` VALUES ('Nhà hàng/ Khách sạn');
INSERT INTO `category` VALUES ('Nhân sự');
INSERT INTO `category` VALUES ('Thời trang');
INSERT INTO `category` VALUES ('Thương mại điện tử');
INSERT INTO `category` VALUES ('Xây dựng');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `rating` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `user_id` int NULL DEFAULT NULL,
  `employer_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_comment_user`(`user_id`) USING BTREE,
  INDEX `fk_comment_employer`(`employer_id`) USING BTREE,
  CONSTRAINT `fk_comment_employer` FOREIGN KEY (`employer_id`) REFERENCES `employer_info` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_comment_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (1, 'Kiểm soát các tài khoản của Công ty, thực hiện lập kế hoạch và phân tích, báo cáo tài chính. Từ đó nắm bắt biến động về chi phí, công nợ… để kịp thời đưa ra những giải pháp để kiểm soát chi phí theo kế hoạch đã đề ra.', NULL, 3, NULL);

-- ----------------------------
-- Table structure for employer_info
-- ----------------------------
DROP TABLE IF EXISTS `employer_info`;
CREATE TABLE `employer_info`  (
  `id` int NOT NULL,
  `employer_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `employer_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  CONSTRAINT `fk_empinfo_user` FOREIGN KEY (`id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of employer_info
-- ----------------------------
INSERT INTO `employer_info` VALUES (1, 'CÔNG TY CỔ PHẦN ĐẦU TƯ BẤT ĐỘNG SẢN RIO LAND', 'Quy mô: 100-499 nhân viên', 'A-TM1-2 Chung cư Centana Thủ Thiêm, số 36A đường Mai Chí Thọ, Phường An Phú, Thành phố Thủ Đức, Thành phố Hồ Chí Minh, Việt Nam');
INSERT INTO `employer_info` VALUES (2, 'CÔNG TY TNHH OPPLE LIGHTING VIỆT NAM', 'Quy mô: 25-99 nhân viên', 'Tầng 4, Số 195 Đường 9A, Khu Dân Cư Trung Sơn, Xã Bình Hưng, Huyện Bình Chánh, Thành phố Hồ Chí Minh, Việt Nam');

-- ----------------------------
-- Table structure for job
-- ----------------------------
DROP TABLE IF EXISTS `job`;
CREATE TABLE `job`  (
  `job_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`job_name`) USING BTREE,
  INDEX `fk_job_category`(`category_name`) USING BTREE,
  CONSTRAINT `fk_job_category` FOREIGN KEY (`category_name`) REFERENCES `category` (`name`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of job
-- ----------------------------
INSERT INTO `job` VALUES ('Kế toán', 'Kế toán/ Kiểm toán');
INSERT INTO `job` VALUES ('Chuyên viên cung ứng', 'Logistics - Vận tải');

-- ----------------------------
-- Table structure for recruitment_news
-- ----------------------------
DROP TABLE IF EXISTS `recruitment_news`;
CREATE TABLE `recruitment_news`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `job_level` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `salary` decimal(10, 2) NULL DEFAULT NULL,
  `experience` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `employer_id` int NULL DEFAULT NULL,
  `field` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_date` datetime(0) NULL DEFAULT NULL,
  `deadline_date` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_recnews_empinfo`(`employer_id`) USING BTREE,
  INDEX `fk_recnews_category`(`field`) USING BTREE,
  CONSTRAINT `fk_recnews_category` FOREIGN KEY (`field`) REFERENCES `category` (`name`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_recnews_empinfo` FOREIGN KEY (`employer_id`) REFERENCES `employer_info` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of recruitment_news
-- ----------------------------
INSERT INTO `recruitment_news` VALUES (1, 'Kế toán trưởng', 'Nhân viên', 12000000.00, '3 năm', 1, 'Kế toán/ Kiểm toán', '2022-08-31 23:31:09', '2022-09-30 23:31:13');
INSERT INTO `recruitment_news` VALUES (2, 'Supply Chain', 'Nhân viên', 12000000.00, '2 năm', 2, 'Logistics - Vận tải', '2022-08-31 23:38:57', '2022-09-30 23:39:00');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `field` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `active` bit(1) NULL DEFAULT b'1',
  `user_role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_user_category`(`field`) USING BTREE,
  CONSTRAINT `fk_user_category` FOREIGN KEY (`field`) REFERENCES `category` (`name`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'Nhi', 'Lien', '1951012086nhi@ou.edu.vn', '0855265426', 'admin1', '123456', NULL, NULL, b'1', 'ROLE_ADMIN');
INSERT INTO `user` VALUES (2, 'Cuong', 'Nguyen', '1951012003', '0587164963', 'admin2', '123456', NULL, NULL, b'1', 'ROLE_ADMIN');
INSERT INTO `user` VALUES (3, 'Tan ', 'Nguyen', 'tannguyen@gmail.com', '01236987456', 'user1', '123465', NULL, NULL, b'1', 'ROLE_USER');

SET FOREIGN_KEY_CHECKS = 1;
