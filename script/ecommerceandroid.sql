/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 100424
 Source Host           : localhost:3306
 Source Schema         : ecommerceandroid

 Target Server Type    : MySQL
 Target Server Version : 100424
 File Encoding         : 65001

 Date: 31/05/2022 07:12:00
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for banner_entity
-- ----------------------------
DROP TABLE IF EXISTS `banner_entity`;
CREATE TABLE `banner_entity`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `linkImage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of banner_entity
-- ----------------------------
INSERT INTO `banner_entity` VALUES (1, 'images/banner/slider1.jpg', '2022-05-24 20:46:08.087204');
INSERT INTO `banner_entity` VALUES (2, 'images/banner/slider2.jpg', '2022-05-24 20:46:08.087204');
INSERT INTO `banner_entity` VALUES (3, 'images/banner/slider3.jpg', '2022-05-27 19:56:45.422954');
INSERT INTO `banner_entity` VALUES (4, 'images/banner/slider4.jpg', '2022-05-27 19:56:51.893297');
INSERT INTO `banner_entity` VALUES (5, 'images/banner/slider5.jpg', '2022-05-27 19:57:04.272280');

-- ----------------------------
-- Table structure for cart_entity
-- ----------------------------
DROP TABLE IF EXISTS `cart_entity`;
CREATE TABLE `cart_entity`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `quantity` int NOT NULL,
  `size` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `idProductId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `idUserId` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_62dac785d75459650ae9fec6be3`(`idProductId` ASC) USING BTREE,
  INDEX `FK_36183e068f155f4d68bcfca402a`(`idUserId` ASC) USING BTREE,
  CONSTRAINT `FK_36183e068f155f4d68bcfca402a` FOREIGN KEY (`idUserId`) REFERENCES `user_entity` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_62dac785d75459650ae9fec6be3` FOREIGN KEY (`idProductId`) REFERENCES `product_entity` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cart_entity
-- ----------------------------
INSERT INTO `cart_entity` VALUES (8, 9, 'M', 'D02032', 1);
INSERT INTO `cart_entity` VALUES (9, 2, 'L', 'D02032', 1);
INSERT INTO `cart_entity` VALUES (10, 8, 'XL', 'D02032', 1);
INSERT INTO `cart_entity` VALUES (11, 1, 'L', 'D02232', 1);
INSERT INTO `cart_entity` VALUES (12, 1, 'XL', 'D02232', 1);
INSERT INTO `cart_entity` VALUES (13, 1, 'XL', 'D04222', 1);

-- ----------------------------
-- Table structure for color_product_entity
-- ----------------------------
DROP TABLE IF EXISTS `color_product_entity`;
CREATE TABLE `color_product_entity`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `stock` int NOT NULL,
  `codeColor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `idProductId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_7614b23a75fdfea57e998f28de7`(`idProductId` ASC) USING BTREE,
  CONSTRAINT `FK_7614b23a75fdfea57e998f28de7` FOREIGN KEY (`idProductId`) REFERENCES `product_entity` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of color_product_entity
-- ----------------------------

-- ----------------------------
-- Table structure for conlection_entity
-- ----------------------------
DROP TABLE IF EXISTS `conlection_entity`;
CREATE TABLE `conlection_entity`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of conlection_entity
-- ----------------------------

-- ----------------------------
-- Table structure for description_entity
-- ----------------------------
DROP TABLE IF EXISTS `description_entity`;
CREATE TABLE `description_entity`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `idProductId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_1f3a67794a5d3f6027aecf75be3`(`idProductId` ASC) USING BTREE,
  CONSTRAINT `FK_1f3a67794a5d3f6027aecf75be3` FOREIGN KEY (`idProductId`) REFERENCES `product_entity` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 302 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of description_entity
-- ----------------------------
INSERT INTO `description_entity` VALUES (1, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ?????m li???n thi???t k??? d??ng ch??? A d??i qua g???i, ph???n th??n d??ng gile k???t h???p h???a ti???t k???, tay v?? c??? s?? mi tone m??u tr???ng', 'AD00132');
INSERT INTO `description_entity` VALUES (2, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ?????m li???n thi???t k??? d??ng ch??? A d??i qua g???i, ph???n th??n h???a ti???t k??? k???t h???p tay v?? c??? s?? mi tr???ng', 'AD00472');
INSERT INTO `description_entity` VALUES (3, 'Chi ti???t s???n ph???m', 'Ph?? h???p: ??i l??m, s??? ki???n, hay ??i d???o ph???, t???o v??? tr??? trung n??? t??nh cho ng?????i m???c.\"', 'AD01822A');
INSERT INTO `description_entity` VALUES (4, 'Chi ti???t s???n ph???m', '\"Ch???t li???u: v???i t???ng h???p cao c???p', 'AD01822B');
INSERT INTO `description_entity` VALUES (5, 'Chi ti???t s???n ph???m', '\"Ch???t li???u: v???i t???ng h???p cao c???p', 'AD08632');
INSERT INTO `description_entity` VALUES (6, 'Chi ti???t s???n ph???m', 'Ph?? h???p: ??i l??m, s??? ki???n, hay ??i d???o ph???, t???o v??? tr??? trung n??? t??nh cho ng?????i m???c.\"', 'AD08662');
INSERT INTO `description_entity` VALUES (7, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ?????m li???n thi???t k??? 2 trong 1, d??ng ch??? A d??i qua g???i, tone m??u n??u.', 'AD08852');
INSERT INTO `description_entity` VALUES (8, 'Chi ti???t s???n ph???m', '\"Ch???t li???u: v???i t???ng h???p cao c???p', 'AD09202');
INSERT INTO `description_entity` VALUES (9, 'Chi ti???t s???n ph???m', 'Ph?? h???p: ??i l??m, s??? ki???n, hay ??i d???o ph???, t???o v??? tr??? trung n??? t??nh cho ng?????i m???c.\"', 'AD09222');
INSERT INTO `description_entity` VALUES (10, 'Chi ti???t s???n ph???m', '\"Ch???t li???u: v???i t???ng h???p cao c???p', 'AD09262A');
INSERT INTO `description_entity` VALUES (11, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ?????m thi???t k??? d??ng su??ng d??i qua g???i, tone m??u ??en tr??n, k???t h???p h???a ti???t th??u', 'AD09262B');
INSERT INTO `description_entity` VALUES (12, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ????????m thi???t k??? d??ng ch??? A d??i qua g???i, tone m??u h???ng pastel, tay l??? b???ng nh???', 'AD09492A');
INSERT INTO `description_entity` VALUES (13, 'Chi ti???t s???n ph???m', 'Ph?? h???p: ??i l??m, s??? ki???n, hay ??i d???o ph???, t???o v??? thanh l???ch cho ng?????i m???c.\"', 'AD09492B');
INSERT INTO `description_entity` VALUES (14, 'Chi ti???t s???n ph???m', 'Ph?? h???p: ??i l??m, s??? ki???n, hay ??i d???o ph???, t???o v??? tr??? trung n??? t??nh cho ng?????i m???c.\"', 'AD11069');
INSERT INTO `description_entity` VALUES (15, 'Chi ti???t s???n ph???m', '\"Ch???t li???u: v???i d??? tweed cao c???p', 'AD11449');
INSERT INTO `description_entity` VALUES (16, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ?????m thi???t k??? ng???n tay d??ng ch??? A, ????? d??i qua g???i,tone m??u ??en tr??n k???t h???p b??ng hoa 3D ????nh n???i', 'AD11499');
INSERT INTO `description_entity` VALUES (17, 'Chi ti???t s???n ph???m', 'Ph?? h???p: ??i l??m, s??? ki???n, hay ??i d???o ph???, t???o v??? tr??? trung n??? t??nh cho ng?????i m???c.\"', 'AD27319');
INSERT INTO `description_entity` VALUES (18, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ????????m thi???t k??? d??ng ch??? A chi???t eo nh???, tone m??u tr???ng kem, tay d??i b???ng nh???', 'C101015C');
INSERT INTO `description_entity` VALUES (19, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ????????m thi???t k??? d??ng ch??? A chi???t eo nh???, tone m??u tr???ng kem, tay d??i b???ng nh???', 'C13115C');
INSERT INTO `description_entity` VALUES (20, 'Chi ti???t s???n ph???m', '?????m ??m s??t n??ch tay b??o Th?? ??en ???p ren. D??ng ?????m d??i qu?? g???i thanh l???ch, sang tr???ng. Ph?? h???p c??c bu???i d??? h???i, d???o ch??i c???a ph??i ?????p', 'C52461C');
INSERT INTO `description_entity` VALUES (21, 'Chi ti???t s???n ph???m', '?????m 2 d??y ph???i kim tuy???n, ????ng ten, d??ng x??e. D??y d???i k???t c??? ??i???n, sang tr???ng,', 'C58828C');
INSERT INTO `description_entity` VALUES (22, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ????????m thi???t k??? d??ng ch??? A chi???t eo nh???, tone m??u tr???ng kem, tay d??i b???ng nh???', 'C613011');
INSERT INTO `description_entity` VALUES (23, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ????????m thi???t k??? d??ng ch??? A chi???t eo nh???, tone m??u tr???ng kem, tay d??i b???ng nh???', 'C624001C');
INSERT INTO `description_entity` VALUES (24, 'Chi ti???t s???n ph???m', '?????m x??e tr??? vai ??en, n?? ng???c c??ch ??i???u. D??ng ?????m d??i qu?? g???i thanh l???ch, sang tr???ng. Ph?? h???p c??c bu???i d??? h???i, d???o ch??i c???a ph??i ?????p', 'C633005C');
INSERT INTO `description_entity` VALUES (25, 'Chi ti???t s???n ph???m', '?????m su??ng k???t h???p ????y t???t bu???c eo duy??n d??ng. S???n ph???m mang l???i c???m gi??c tho???i m??i, nh??? nh??ng, m??u s???c t????i s??ng, trang nh??.', 'C633006C');
INSERT INTO `description_entity` VALUES (26, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ????????m thi???t k??? d??ng ch??? A chi???t eo nh???, tone m??u tr???ng kem, tay d??i b???ng nh???', 'C633015I');
INSERT INTO `description_entity` VALUES (27, 'Chi ti???t s???n ph???m', 'H??nh ???nh n??ng c??ng n????ng c???a th???p 80-90 nh?? ???????c t??i hi???n v???i set trang ph???c m???i nh???t c???a Seven.AM mang ?????m n??t vintage v?? thanh l???ch.', 'C78189C');
INSERT INTO `description_entity` VALUES (28, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ????????m thi???t k??? d??ng ch??? A chi???t eo nh???, tone m??u tr???ng kem, tay d??i b???ng nh???', 'C78191C');
INSERT INTO `description_entity` VALUES (29, 'Chi ti???t s???n ph???m', 'Ph?? h???p: ??i l??m, s??? ki???n, hay ??i d???o ph???, t???o v??? tr??? trung n??? t??nh cho ng?????i m???c.\"', 'D02032');
INSERT INTO `description_entity` VALUES (30, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ?????m ti???c thi???t k??? d??ng ch??? A d??i qua g???i tone m??u ????? t????i, ph???n tay v?? vai pha voan l???a, tay l??? b???ng nh???', 'D02232');
INSERT INTO `description_entity` VALUES (31, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ????????m thi???t k??? d??ng ch??? A chi???t eo nh???, tone m??u tr???ng kem, tay d??i b???ng nh???', 'D02452');
INSERT INTO `description_entity` VALUES (32, 'Chi ti???t s???n ph???m', '\"Ch???t li???u: v???i nhung cao c???p', 'D03322');
INSERT INTO `description_entity` VALUES (33, 'Chi ti???t s???n ph???m', '\"NG???T NG??O V?? SANG TR???NG V???I GAM M??U BE TRANG NH??', 'D03862');
INSERT INTO `description_entity` VALUES (34, 'Chi ti???t s???n ph???m', '\"Ch???t li???u: v???i taffta cao c???p', 'D04222');
INSERT INTO `description_entity` VALUES (35, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ?????m ti???c d??ng ??m h???a ti???t nanh s??i, ????? d??i qua g???i, tay d??i b???ng nh??? k???t h???p c??? nh??n c??ch ??i???u', 'D04932');
INSERT INTO `description_entity` VALUES (36, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ????????m thi???t k??? d??ng ch??? A chi???t eo nh???, tone m??u tr???ng kem, tay d??i b???ng nh???', 'D05162');
INSERT INTO `description_entity` VALUES (37, 'Chi ti???t s???n ph???m', '\"Ch???t li???u: v???i t???ng h???p cao c???p', 'D05529');
INSERT INTO `description_entity` VALUES (38, 'Chi ti???t s???n ph???m', 'Ph?? h???p: ??i l??m, s??? ki???n, hay ??i d???o ph???, t???o v??? tr??? trung n??? t??nh cho ng?????i m???c.\"', 'D05692');
INSERT INTO `description_entity` VALUES (39, 'Chi ti???t s???n ph???m', 'Ph?? h???p: ??i l??m, s??? ki???n, hay ??i d???o ph???, t???o v??? tr??? trung n??? t??nh cho ng?????i m???c.\"', 'D05862');
INSERT INTO `description_entity` VALUES (40, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ?????m ti???c 2 d??y d??ng ??m, d??i qua g???i, tone m??u ??en h???ng nh???t, eo ????nh n?? b???n to, k???t h???p t?? ch???t li???u voan sequin', 'D05879');
INSERT INTO `description_entity` VALUES (41, 'Chi ti???t s???n ph???m', 'Ph?? h???p: ??i l??m, s??? ki???n, hay ??i d???o ph???, t???o v??? tr??? trung n??? t??nh cho ng?????i m???c.\"', 'D06202');
INSERT INTO `description_entity` VALUES (42, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ?????m thi???t k??? d??ng ??n d??i qua g???i, tone m??u h???ng nh???t, ph???n c??? ????? c??ch ??i???u', 'D06442');
INSERT INTO `description_entity` VALUES (43, 'Chi ti???t s???n ph???m', '\"Ch???t li???u: v???i t???ng h???p cao c???p', 'D06602');
INSERT INTO `description_entity` VALUES (44, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ?????m ti???c thi???t k??? r???t vai, d??ng ch??? A d??i qua g???i tone m??u cam tr??n', 'D06662');
INSERT INTO `description_entity` VALUES (45, 'Chi ti???t s???n ph???m', '\"Ch???t li???u: v???i tafta cao c???p', 'D06942');
INSERT INTO `description_entity` VALUES (46, 'Chi ti???t s???n ph???m', '\"Ch???t li???u: v???i tafta cao c???p', 'D06952');
INSERT INTO `description_entity` VALUES (47, 'Chi ti???t s???n ph???m', 'C??ng s??? h???u ngay nh??!\"', 'D06982');
INSERT INTO `description_entity` VALUES (48, 'Chi ti???t s???n ph???m', 'Ph?? h???p: ??i l??m, s??? ki???n, hay ??i d???o ph???, t???o v??? tr??? trung n??? t??nh cho ng?????i m???c.\"', 'D07132');
INSERT INTO `description_entity` VALUES (49, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ?????m thi???t k??? d??ng ??m, d??i qua g???i, tone m??u n??u tr??n, c??? nh??n c??ch ??i???u', 'D07342');
INSERT INTO `description_entity` VALUES (50, 'Chi ti???t s???n ph???m', 'Ph?? h???p: ??i l??m, s??? ki???n, hay ??i d???o ph???, t???o v??? tr??? trung n??? t??nh cho ng?????i m???c.\"', 'D07492');
INSERT INTO `description_entity` VALUES (51, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ?????m ti???c 2 d??y d??ng ??m, d??i qua g???i, tone m??u ??en tr??n, eo ????nh n?? b???n to, k???t h???p t?? ch???t li???u voan sequin', 'D07592');
INSERT INTO `description_entity` VALUES (52, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ????????m thi???t k??? d??ng ch??? A chi???t eo nh???, tone m??u tr???ng kem, tay d??i b???ng nh???', 'D07609');
INSERT INTO `description_entity` VALUES (53, 'Chi ti???t s???n ph???m', '\"Ch???t li???u: v???i tafta cao c???p', 'D08202');
INSERT INTO `description_entity` VALUES (54, 'Chi ti???t s???n ph???m', 'K???t h???p v???i m???t chi???c qu???n short c???p cao, crop blazer t???o n??n set ????? chinh ph???c m???i ??nh nh??n c???a ph??i ?????p.\"', 'D08742A');
INSERT INTO `description_entity` VALUES (55, 'Chi ti???t s???n ph???m', 'Ch??n v??y t?? bung d??? d??ng mix v???i ??o s?? mi, t???o set ????? thanh l???ch, sang tr???ng. ', 'D08742B');
INSERT INTO `description_entity` VALUES (56, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ????????m thi???t k??? d??ng ch??? A chi???t eo nh???, tone m??u tr???ng kem, tay d??i b???ng nh???', 'D09322A');
INSERT INTO `description_entity` VALUES (57, 'Chi ti???t s???n ph???m', 'Ph?? h???p: ??i l??m, s??? ki???n, hay ??i d???o ph???, t???o v??? tr??? trung n??? t??nh cho ng?????i m???c.\"', 'D09322B');
INSERT INTO `description_entity` VALUES (58, 'Chi ti???t s???n ph???m', 'Ph?? h???p: ??i l??m, s??? ki???n, hay ??i d???o ph???, t???o v??? tr??? trung n??? t??nh cho ng?????i m???c.\"', 'D09382');
INSERT INTO `description_entity` VALUES (59, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ?????m thi???t k??? d??ng su??ng d??i qua g???i, tone m??u ????? , k???t h???p b??ng hoa 3D b???n to ????nh n???i', 'D09432A');
INSERT INTO `description_entity` VALUES (60, 'Chi ti???t s???n ph???m', 'Ph?? h???p: ??i l??m, s??? ki???n, hay ??i d???o ph???, t???o v??? tr??? trung n??? t??nh cho ng?????i m???c.\"', 'D09432B');
INSERT INTO `description_entity` VALUES (61, 'Chi ti???t s???n ph???m', '\"Ch???t li???u: v???i t???ng h???p cao c???p', 'D09432C');
INSERT INTO `description_entity` VALUES (62, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ????????m thi???t k??? d??ng ch??? A chi???t eo nh???, tone m??u tr???ng kem, tay d??i b???ng nh???', 'D09622');
INSERT INTO `description_entity` VALUES (63, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ????????m thi???t k??? d??ng ch??? A chi???t eo nh???, tone m??u tr???ng kem, tay d??i b???ng nh???', 'D09762');
INSERT INTO `description_entity` VALUES (64, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ????????m thi???t k??? d??ng ch??? A chi???t eo nh???, tone m??u tr???ng kem, tay d??i b???ng nh???', 'D09852');
INSERT INTO `description_entity` VALUES (65, 'Chi ti???t s???n ph???m', '\"Ch???t li???u: v???i d??? cao c???p', 'D09942A');
INSERT INTO `description_entity` VALUES (66, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ?????m ti???c d??ng ??m d??i qua g???i, tone m??u n??u ??nh nh??, thi???t k??? v???t ????p ch??o c??ch ??i???u, vai ????nh hoa 3D b???n to', 'D09942B');
INSERT INTO `description_entity` VALUES (67, 'Chi ti???t s???n ph???m', '\"Ch???t li???u: v???i t???ng h???p cao c???p', 'D09962');
INSERT INTO `description_entity` VALUES (68, 'Chi ti???t s???n ph???m', '\"Ch???t li???u: v???i len cao c???p', 'D10002');
INSERT INTO `description_entity` VALUES (69, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ????????m thi???t k??? d??ng ch??? A chi???t eo nh???, tone m??u tr???ng kem, tay d??i b???ng nh???', 'D10012');
INSERT INTO `description_entity` VALUES (70, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ?????m tthi???t k??? d??ng ch??? su??ng d??i qua g???i, tone m??u ??en tr??n ????nh c?????m, tay voan b???ng ', 'D10022');
INSERT INTO `description_entity` VALUES (71, 'Chi ti???t s???n ph???m', '\"Ch???t li???u: v???i t???ng h???p cao c???p', 'D10072');
INSERT INTO `description_entity` VALUES (72, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ????????m thi???t k??? d??ng ch??? A chi???t eo nh???, tone m??u tr???ng kem, tay d??i b???ng nh???', 'D10102');
INSERT INTO `description_entity` VALUES (73, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ?????m thi???t k??? d??ng ch??? A d??i qua g???i, tone m??u ??en tr??n k???t h???p ???????ng tr???n ch???, tay voan r???', 'D10142');
INSERT INTO `description_entity` VALUES (74, 'Chi ti???t s???n ph???m', 'Ph?? h???p: ??i l??m, s??? ki???n, hay ??i d???o ph???, t???o v??? tr??? trung n??? t??nh cho ng?????i m???c.\"', 'D10169');
INSERT INTO `description_entity` VALUES (75, 'Chi ti???t s???n ph???m', 'Ph?? h???p: ??i l??m, s??? ki???n, hay ??i d???o ph???, t???o v??? tr??? trung n??? t??nh cho ng?????i m???c.\"', 'D10292');
INSERT INTO `description_entity` VALUES (76, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ?????m thi???t k??? d??ng ch??? A d??i qua g???i, tone m??u ??en tr??n, c??? ph???i ????ng ten c??ch ??i???u', 'D10312');
INSERT INTO `description_entity` VALUES (77, 'Chi ti???t s???n ph???m', 'Ph?? h???p: ??i l??m, s??? ki???n, hay ??i d???o ph???, t???o v??? tr??? trung n??? t??nh cho ng?????i m???c.\"', 'D10312B');
INSERT INTO `description_entity` VALUES (78, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ?????m thi???t k??? d??ng su??ng tone m??u ??en tr??n, k???t h???p tay ch???t li???u nh?? ??nh', 'D10372');
INSERT INTO `description_entity` VALUES (79, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ????????m thi???t k??? d??ng ch??? A chi???t eo nh???, tone m??u tr???ng kem, tay d??i b???ng nh???', 'D10382');
INSERT INTO `description_entity` VALUES (80, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ????????m thi???t k??? d??ng ch??? A chi???t eo nh???, tone m??u tr???ng kem, tay d??i b???ng nh???', 'D10392');
INSERT INTO `description_entity` VALUES (81, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ?????m ti???c d??ng ch??? A d??i qua g???i, tay b???ng nh???, tone m??u v??ng ??nh kim in h???a ti???t hoa b???n to', 'D10442');
INSERT INTO `description_entity` VALUES (82, 'Chi ti???t s???n ph???m', 'Ph?? h???p: ??i l??m, s??? ki???n, hay ??i d???o ph???, t???o v??? tr??? trung n??? t??nh cho ng?????i m???c.\"', 'D10452A');
INSERT INTO `description_entity` VALUES (83, 'Chi ti???t s???n ph???m', '\"Ch???t li???u: v???i t???ng h???p cao c???p', 'D10452B');
INSERT INTO `description_entity` VALUES (84, 'Chi ti???t s???n ph???m', '\"Ch???t li???u: v???i t???ng h???p cao c???p', 'D10592');
INSERT INTO `description_entity` VALUES (85, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ?????m thi???t k??? d??ng su??ng tone m??u ?????, k???t h???p h???a ti???t tr???ng', 'D10602A');
INSERT INTO `description_entity` VALUES (86, 'Chi ti???t s???n ph???m', 'Ph?? h???p: ??i l??m, s??? ki???n, hay ??i d???o ph???, t???o v??? tr??? trung n??? t??nh cho ng?????i m???c.\"', 'D10602B');
INSERT INTO `description_entity` VALUES (87, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ?????m thi???t k??? d??ng ??m d??i qua g???i, ph???n eo c??ch ??i???u, ch??n v??y x??? cao ', 'D10742');
INSERT INTO `description_entity` VALUES (88, 'Chi ti???t s???n ph???m', '\"Ch???t li???u: v???i t???ng h???p cao c???p', 'D10752');
INSERT INTO `description_entity` VALUES (89, 'Chi ti???t s???n ph???m', 'Ph?? h???p: ??i l??m, s??? ki???n, hay ??i d???o ph???, t???o v??? tr??? trung n??? t??nh cho ng?????i m???c.\"', 'D10932');
INSERT INTO `description_entity` VALUES (90, 'Chi ti???t s???n ph???m', 'Ph?? h???p: ??i l??m, s??? ki???n, hay ??i d???o ph???, t???o v??? tr??? trung n??? t??nh cho ng?????i m???c.\"', 'D10942');
INSERT INTO `description_entity` VALUES (91, 'Chi ti???t s???n ph???m', '\"Ch???t li???u: v???i nhung cao c???p', 'D10972');
INSERT INTO `description_entity` VALUES (92, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ????????m thi???t k??? d??ng ch??? A chi???t eo nh???, tone m??u tr???ng kem, tay d??i b???ng nh???', 'D11029A');
INSERT INTO `description_entity` VALUES (93, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: D??ng ??o tr??? trung. K???t h???p c??ng Ch??n v??y Y81262B ????? c?? set ????? ho??n h???o', 'D11029B');
INSERT INTO `description_entity` VALUES (94, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ????????m thi???t k??? d??ng ch??? A chi???t eo nh???, tone m??u tr???ng kem, tay d??i b???ng nh???', 'D11089');
INSERT INTO `description_entity` VALUES (95, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ????????m thi???t k??? d??ng ch??? A chi???t eo nh???, tone m??u tr???ng kem, tay d??i b???ng nh???', 'D11099');
INSERT INTO `description_entity` VALUES (96, 'Chi ti???t s???n ph???m', 'Ph?? h???p cho ch??? em ??i l??m, ??i ch??i\"', 'D11119');
INSERT INTO `description_entity` VALUES (97, 'Chi ti???t s???n ph???m', 'M??u s???c: ??en', 'D11132A');
INSERT INTO `description_entity` VALUES (98, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ????????m thi???t k??? d??ng ch??? A chi???t eo nh???, tone m??u tr???ng kem, tay d??i b???ng nh???', 'D11132B');
INSERT INTO `description_entity` VALUES (99, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ????????m thi???t k??? d??ng ch??? A chi???t eo nh???, tone m??u tr???ng kem, tay d??i b???ng nh???', 'D11149');
INSERT INTO `description_entity` VALUES (100, 'Chi ti???t s???n ph???m', '\"Ch???t li???u: Nh??', 'D11159');
INSERT INTO `description_entity` VALUES (101, 'Chi ti???t s???n ph???m', '\"Ch???t li???u: v???i x???p cao c???p', 'D11292A');
INSERT INTO `description_entity` VALUES (102, 'Chi ti???t s???n ph???m', '\"Ch???t li???u: v???i nhung cao c???p', 'D11292B');
INSERT INTO `description_entity` VALUES (103, 'Chi ti???t s???n ph???m', '\"Ch???t li???u: v???i t???ng h???p cao c???p', 'D11292C');
INSERT INTO `description_entity` VALUES (104, 'Chi ti???t s???n ph???m', 'S??? h???u ngay Set ????? xinh ?????p n??y cho nh???ng ng??y Back Office r???ng r??? ch??? em nh??!\"', 'D11469');
INSERT INTO `description_entity` VALUES (105, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ?????m tthi???t k??? d??ng ch??? A d??i qua g???i, vai x???p n???p c??ch ??i???u, tone m??u v??ng nh???t', 'D11552');
INSERT INTO `description_entity` VALUES (106, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ?????m ti???c thi???t k??? 2 d??y, d??ng ch??? A d??i qua g???i, tone m??u tr???ng tr??n, k???t h???p hoa 3D b???n to', 'D11609');
INSERT INTO `description_entity` VALUES (107, 'Chi ti???t s???n ph???m', 'C??c ???????ng k??? ?? nh??? mang l???i v??? tinh t??? v?? m???t ch??t c??? ??i???n k???t h???p c??ng thi???t k??? ??o croptop khi???n t???ng th??? trang ph???c tr??? n??n h???p d???n m???i ??nh nh??n.', 'D11622');
INSERT INTO `description_entity` VALUES (108, 'Chi ti???t s???n ph???m', 'M???t set ????? ???????c ph???i gi???a blazer d??ng ng???n v?? qu???n short s??? tr??? th??nh ??i???m nh???n ?????y ???n t?????ng cho n??ng trong m??a thu n??y.', 'D11722');
INSERT INTO `description_entity` VALUES (109, 'Chi ti???t s???n ph???m', 'Ph?? h???p: ??i l??m, s??? ki???n, hay ??i d???o ph???, t???o v??? tr??? trung n??? t??nh cho ng?????i m???c.\"', 'D11922');
INSERT INTO `description_entity` VALUES (110, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ????????m thi???t k??? d??ng ch??? A chi???t eo nh???, tone m??u tr???ng kem, tay d??i b???ng nh???', 'D12049');
INSERT INTO `description_entity` VALUES (111, 'Chi ti???t s???n ph???m', 'Set ?????m k???t h???p c??ng blazer croptop b??n d?????i s??? l?? ????p ??n ho??n h???o cho n??ng ????? t???a s??ng trong nh???ng ng??y thu l??ng m???n.', 'D12052');
INSERT INTO `description_entity` VALUES (112, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ????????m thi???t k??? d??ng ch??? A chi???t eo nh???, tone m??u tr???ng kem, tay d??i b???ng nh???', 'D12092');
INSERT INTO `description_entity` VALUES (113, 'Chi ti???t s???n ph???m', 'Ph?? h???p: ??i l??m, s??? ki???n, hay ??i d???o ph???, t???o v??? tr??? trung n??? t??nh cho ng?????i m???c.\"', 'D12199');
INSERT INTO `description_entity` VALUES (114, 'Chi ti???t s???n ph???m', '\"Ch???t li???u: v???i g???m kim tuy???n', 'D12492');
INSERT INTO `description_entity` VALUES (115, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ?????m ti???c d??ng ch??? A d??i qua g???i tone m??u xanh l??, thi???t k??? r???t vai c??ch ??i???u', 'D12682');
INSERT INTO `description_entity` VALUES (116, 'Chi ti???t s???n ph???m', 'H???a ti???t hoa m??u v??ng gold sang tr???ng, c??ng ki???u v???i ??o. K???t h???p c??ng ??o  m?? C13118C th??nh m???t b??? ho??n ch???nh.', 'D1399');
INSERT INTO `description_entity` VALUES (117, 'Chi ti???t s???n ph???m', '\"Ch???t li???u: v???i tafta cao c???p', 'D20522');
INSERT INTO `description_entity` VALUES (118, 'Chi ti???t s???n ph???m', 'Ph?? h???p: ??i l??m, s??? ki???n, hay ??i d???o ph???, t???o v??? tr??? trung n??? t??nh cho ng?????i m???c.\"', 'D21172');
INSERT INTO `description_entity` VALUES (119, 'Chi ti???t s???n ph???m', 'T??? th?????ng cho m??nh set ????? tuy???t v???i n??y ????? ch??o m??a thu xinh t????i ngay th??i!\"', 'D23212');
INSERT INTO `description_entity` VALUES (120, 'Chi ti???t s???n ph???m', 'Ph?? h???p: ??i l??m, s??? ki???n, hay ??i d???o ph???, t???o v??? tr??? trung n??? t??nh cho ng?????i m???c.\"', 'D23852');
INSERT INTO `description_entity` VALUES (121, 'Chi ti???t s???n ph???m', '\"Set ????? xinh ?????p n??y ??ang tr??? th??nh hot items t???i Seven.AM v?? thi???t k??? ?????c bi???t v?? v?? c??ng trendy c???a m??nh.', 'D26692');
INSERT INTO `description_entity` VALUES (122, 'Chi ti???t s???n ph???m', 'Ph?? h???p: ??i l??m, s??? ki???n, hay ??i d???o ph???, t???o v??? tr??? trung n??? t??nh cho ng?????i m???c.\"', 'D27072');
INSERT INTO `description_entity` VALUES (123, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ????????m thi???t k??? d??ng ch??? A chi???t eo nh???, tone m??u tr???ng kem, tay d??i b???ng nh???', 'D29162');
INSERT INTO `description_entity` VALUES (124, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ????????m thi???t k??? d??ng ch??? A chi???t eo nh???, tone m??u tr???ng kem, tay d??i b???ng nh???', 'D29652');
INSERT INTO `description_entity` VALUES (125, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ?????m ti???c d??ng ??m d??i qua g???i, tone m??u ????? ??nh nh??, thi???t k??? v???t ????p ch??o c??ch ??i???u, vai ????nh hoa 3D b???n to', 'D30312');
INSERT INTO `description_entity` VALUES (126, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ????????m thi???t k??? d??ng ch??? A chi???t eo nh???, tone m??u tr???ng kem, tay d??i b???ng nh???', 'D30722');
INSERT INTO `description_entity` VALUES (127, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ????????m thi???t k??? d??ng ch??? A chi???t eo nh???, tone m??u tr???ng kem, tay d??i b???ng nh???', 'D31182');
INSERT INTO `description_entity` VALUES (128, 'Chi ti???t s???n ph???m', 'D??ng blazer ng???n k???t h???p qu???n short tr??n n???n h???a ti???t k??? caro mang ?????n s??? tr??? trung v?? n??ng ?????ng. B??n c???nh ???? thi???t k??? tay ??o tinh t??? v???i ???????ng x??? v?? m??? r???ng v??? ph??a tay, t???o n??n s??? nh???p nh??ng cho t???ng th??? trang ph???c.', 'D31632');
INSERT INTO `description_entity` VALUES (129, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ????????m thi???t k??? d??ng ch??? A chi???t eo nh???, tone m??u tr???ng kem, tay d??i b???ng nh???', 'D32169A');
INSERT INTO `description_entity` VALUES (130, 'Chi ti???t s???n ph???m', '\"H???a ti???t k??? caro ??ang hot tr??? l???i v??o nh???ng ng??y giao m??a v???i s???c h??t ?????c bi???t ch??a bao gi??? thuy??n gi???m c???a n??. B??n c???nh s??? thanh l???ch khi ???ng d???ng trong thi???t k??? ??o blazer, h???a ti???t k??? caro b???n to c??n v?? c??ng hi???u qu??? trong vi???c mang l???i n??t tr??? trung v?? n??ng ?????ng cho c??c qu?? c??.', 'D32169B');
INSERT INTO `description_entity` VALUES (131, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ????????m thi???t k??? d??ng ch??? A chi???t eo nh???, tone m??u tr???ng kem, tay d??i b???ng nh???', 'D32299');
INSERT INTO `description_entity` VALUES (132, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ?????m tthi???t k??? d??ng ch??? A d??i qua g???i, chi???t eo nh???, tone m??u cam tr??n k???t h???p d??y x??ch ', 'D33942');
INSERT INTO `description_entity` VALUES (133, 'Chi ti???t s???n ph???m', 'Ph?? h???p: ??i l??m, s??? ki???n, hay ??i d???o ph???, t???o v??? tr??? trung n??? t??nh cho ng?????i m???c.\"', 'D34152');
INSERT INTO `description_entity` VALUES (134, 'Chi ti???t s???n ph???m', '\"Ch???t li???u: v???i t???ng h???p cao c???p', 'D44832');
INSERT INTO `description_entity` VALUES (135, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ?????m thi???t k??? x???p ly tone m??u ??en tr??n, tay b???ng nh???', 'D60102');
INSERT INTO `description_entity` VALUES (136, 'Chi ti???t s???n ph???m', 'Ph?? h???p: ??i l??m, s??? ki???n, hay ??i d???o ph???, t???o v??? tr??? trung n??? t??nh cho ng?????i m???c.\"', 'D60232A');
INSERT INTO `description_entity` VALUES (137, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ?????m ti???c thi???t k??? d??ng ch??? A d??i qua g???i, k???t h???p h???a ti???t hoa nh??, eo ????nh n???i hoa 3D ????? nhung n???i b???t', 'D60232B');
INSERT INTO `description_entity` VALUES (138, 'Chi ti???t s???n ph???m', '\"Ch???t li???u: v???i nhung cao c???p', 'D60292');
INSERT INTO `description_entity` VALUES (139, 'Chi ti???t s???n ph???m', '\"Ch???t li???u: v???i d??? tweed cao c???p', 'D60362A');
INSERT INTO `description_entity` VALUES (140, 'Chi ti???t s???n ph???m', '\"Ch???t li???u: v???i g???m cao c???p', 'D60362B');
INSERT INTO `description_entity` VALUES (141, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ?????m tthi???t k??? d??ng su??ng d??i qua g???i, c??? tr??n, k???t h???p tay t?? b???ng nh???', 'D62052A');
INSERT INTO `description_entity` VALUES (142, 'Chi ti???t s???n ph???m', 'Ph?? h???p: ??i l??m, s??? ki???n, hay ??i d???o ph???, t???o v??? tr??? trung n??? t??nh cho ng?????i m???c.\"', 'D62052B');
INSERT INTO `description_entity` VALUES (143, 'Chi ti???t s???n ph???m', 'L??m sao ????? s??? h???u m???t outfit t???ng h??a gi???a sang tr???ng v?? ng???t ng??o?', 'D64102');
INSERT INTO `description_entity` VALUES (144, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ????????m thi???t k??? d??ng ch??? A chi???t eo nh???, tone m??u tr???ng kem, tay d??i b???ng nh???', 'D80062');
INSERT INTO `description_entity` VALUES (145, 'Chi ti???t s???n ph???m', 'M???t ng??y c???a n??ng s??? tr??? n??n tuy???t v???i bi???t m???y khi kho??c l??n m??nh outfit ?????m ch???t c??? ??i???n n??y!', 'D80412');
INSERT INTO `description_entity` VALUES (146, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ????????m thi???t k??? d??ng ch??? A chi???t eo nh???, tone m??u tr???ng kem, tay d??i b???ng nh???', 'E351001');
INSERT INTO `description_entity` VALUES (147, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ????????m thi???t k??? d??ng ch??? A chi???t eo nh???, tone m??u tr???ng kem, tay d??i b???ng nh???', 'E730001');
INSERT INTO `description_entity` VALUES (148, 'Chi ti???t s???n ph???m', '\"S?? mi tay d??i L???a ??en l?? h???a ti???t v??ng c??? ?????c', 'H101026C');
INSERT INTO `description_entity` VALUES (149, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ????????m thi???t k??? d??ng ch??? A chi???t eo nh???, tone m??u tr???ng kem, tay d??i b???ng nh???', 'H101027C');
INSERT INTO `description_entity` VALUES (150, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ????????m thi???t k??? d??ng ch??? A chi???t eo nh???, tone m??u tr???ng kem, tay d??i b???ng nh???', 'H111013C');
INSERT INTO `description_entity` VALUES (151, 'Chi ti???t s???n ph???m', '??o s?? mi sang tr???ng thanh l???ch, ph?? h???p mix v???i ch??n v??y, qu???n s??ng m??u\"', 'H301016C');
INSERT INTO `description_entity` VALUES (152, 'Chi ti???t s???n ph???m', 'H???a ti???t k??? ?? nh??? mang ?????n t???ng th??? gam m??u ghi nh??? nh??ng, tr???m ???m. Thi???t k??? ??o d??ng peplum v???i ph???n eo ???????c ?????y cao k??m theo th???t l??ng duy??n d??ng k???t h???p m???t chi???c ch??n v??y d??ng d??i v???i ????? r???ng v???a ph???i, ????? t???o n??n ????? b???ng b???nh, tha th?????t m?? v???n gi??? ???????c n??t sang tr???ng, thanh l???ch.', 'H301016CA');
INSERT INTO `description_entity` VALUES (153, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ????????m thi???t k??? d??ng ch??? A chi???t eo nh???, tone m??u tr???ng kem, tay d??i b???ng nh???', 'H331013C');
INSERT INTO `description_entity` VALUES (154, 'Chi ti???t s???n ph???m', '\"Ch???t li???u: v???i t???ng h???p cao c???p', 'J00142');
INSERT INTO `description_entity` VALUES (155, 'Chi ti???t s???n ph???m', '\"Ch???t li???u: v???i nhung t??m cao c???p', 'J00652');
INSERT INTO `description_entity` VALUES (156, 'Chi ti???t s???n ph???m', 'Ph?? h???p: ??i l??m, s??? ki???n, hay ??i d???o ph???, t???o v??? tr??? trung n??? t??nh cho ng?????i m???c.\"', 'J01192');
INSERT INTO `description_entity` VALUES (157, 'Chi ti???t s???n ph???m', '\"Ch???t li???u: v???i t???ng h???p cao c???p', 'J01752');
INSERT INTO `description_entity` VALUES (158, 'Chi ti???t s???n ph???m', '\"Ch???t li???u: v???i nhung cao c???p', 'J02162');
INSERT INTO `description_entity` VALUES (159, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ?????m thi???t k??? d??i qua g???i, tone m??u n??u k???t h???p h???a ti???t da beo, c??? tr??? ph???i kh??a k??o', 'J02242');
INSERT INTO `description_entity` VALUES (160, 'Chi ti???t s???n ph???m', 'Ph?? h???p: ??i l??m, s??? ki???n, hay ??i d???o ph???, t???o v??? tr??? trung n??? t??nh cho ng?????i m???c.\"', 'J03112');
INSERT INTO `description_entity` VALUES (161, 'Chi ti???t s???n ph???m', 'Ph?? h???p: ??i l??m, s??? ki???n, hay ??i d???o ph???, t???o v??? tr??? trung n??? t??nh cho ng?????i m???c.\"', 'J03332');
INSERT INTO `description_entity` VALUES (162, 'Chi ti???t s???n ph???m', 'Ph?? h???p: ??i l??m, s??? ki???n, hay ??i d???o ph???, t???o v??? tr??? trung n??? t??nh cho ng?????i m???c.\"', 'J03832');
INSERT INTO `description_entity` VALUES (163, 'Chi ti???t s???n ph???m', '\"Ch???t li???u: v???i nhung cao c???p', 'J04232');
INSERT INTO `description_entity` VALUES (164, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ?????m thi???t k??? d??ng ch??? A d??i qua g???i, tone m??u n??u k???t h???p h???a ti???t hoa in s???c n??t', 'J04242');
INSERT INTO `description_entity` VALUES (165, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ?????m thi???t k??? d??ng ch??? A d??i qua g???i, tay b???ng, k???t h???p h???a ti???t k??? ??', 'J04272');
INSERT INTO `description_entity` VALUES (166, 'Chi ti???t s???n ph???m', 'Ph?? h???p: ??i l??m, s??? ki???n, hay ??i d???o ph???, t???o v??? tr??? trung n??? t??nh cho ng?????i m???c.\"', 'J04322');
INSERT INTO `description_entity` VALUES (167, 'Chi ti???t s???n ph???m', 'Ph?? h???p: ??i l??m, s??? ki???n, hay ??i d???o ph???, t???o v??? tr??? trung n??? t??nh cho ng?????i m???c.\"', 'J05242');
INSERT INTO `description_entity` VALUES (168, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ?????m li???n thi???t k??? d??ng ??m, tone m??u n??u tr??n, c??? ph???i n?? b???n to', 'J06452');
INSERT INTO `description_entity` VALUES (169, 'Chi ti???t s???n ph???m', '\"Ch???t li???u: v???i len cao c???p', 'J06672');
INSERT INTO `description_entity` VALUES (170, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ?????m thi???t k??? kh??ng tay tone m??u x??m nh???t,k???t h???p ???????ng h???a ti???t t???o ??i???m nh???n', 'J31772');
INSERT INTO `description_entity` VALUES (171, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ?????m thi???t k??? d??ng ch??? A, tone m??u ??en tr??n, tay voan b??ng nh???', 'J32522');
INSERT INTO `description_entity` VALUES (172, 'Chi ti???t s???n ph???m', 'Ph?? h???p: ??i l??m, s??? ki???n, hay ??i d???o ph???, t???o v??? tr??? trung n??? t??nh cho ng?????i m???c.\"', 'J33282');
INSERT INTO `description_entity` VALUES (173, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ?????m thi???t k??? d??ng ch??? A, tone m??u v??ng tr??n, k???t h???p chun eo', 'J33552');
INSERT INTO `description_entity` VALUES (174, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ?????m thi???t k??? d??ng ch??? A d??i qua g???i, tone m??u ??en tr??n ????nh ????, c??? vu??ng', 'J34192');
INSERT INTO `description_entity` VALUES (175, 'Chi ti???t s???n ph???m', '\"Ch???t li???u: v???i t???ng h???p cao c???p', 'J34342');
INSERT INTO `description_entity` VALUES (176, 'Chi ti???t s???n ph???m', 's???n ph???m ng???ng kinh doanh', 'SANPHAMNGUNGKINHDOANH');
INSERT INTO `description_entity` VALUES (177, 'Chi ti???t s???n ph???m', '\"Ch???t li???u: v???i t???ng h???p cao c???p', 'SM08532');
INSERT INTO `description_entity` VALUES (178, 'Chi ti???t s???n ph???m', '\"Ch???t li???u: v???i t???ng h???p cao c???p', 'SM09822');
INSERT INTO `description_entity` VALUES (179, 'Chi ti???t s???n ph???m', 'Ph?? h???p: ??i l??m, s??? ki???n, hay ??i d???o ph???, t???o v??? tr??? trung n??? t??nh cho ng?????i m???c.\"', 'SM11282');
INSERT INTO `description_entity` VALUES (180, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ?????m thi???t k??? kh??ng tay d??ng su??ng, tone m??u x??m tr??n k???t h???p c??? b??? ', 'SM13822');
INSERT INTO `description_entity` VALUES (181, 'Chi ti???t s???n ph???m', 'Ph?? h???p: ??i l??m, s??? ki???n, hay ??i d???o ph???, t???o v??? tr??? trung n??? t??nh cho ng?????i m???c.\"', 'TS08872');
INSERT INTO `description_entity` VALUES (182, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ?????m thi???t k??? d??ng su??ng d??i qua g???i, chi???t eo nh???, tone m??u ??en tr??n ph???i hoa th??u n???i b???t', 'TS10042');
INSERT INTO `description_entity` VALUES (183, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ?????m thi???t k??? ch??? A d??i qua g???i, tay l??? b???ng nh???, tone m??u tr???ng tr??n', 'TS10132');
INSERT INTO `description_entity` VALUES (184, 'Chi ti???t s???n ph???m', 'Ph?? h???p: ??i l??m, s??? ki???n, hay ??i d???o ph???, t???o v??? tr??? trung n??? t??nh cho ng?????i m???c.\"', 'TS10302');
INSERT INTO `description_entity` VALUES (185, 'Chi ti???t s???n ph???m', '\"Ch???t li???u: v???i t???ng h???p cao c???p', 'TS10642A');
INSERT INTO `description_entity` VALUES (186, 'Chi ti???t s???n ph???m', '\"Ch???t li???u: v???i t???ng h???p cao c???p', 'TS10642B');
INSERT INTO `description_entity` VALUES (187, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ?????m li???n thi???t k??? 2 trong 1, d??ng ch??? A d??i qua g???i, tone m??u n??u.', 'TS10902');
INSERT INTO `description_entity` VALUES (188, 'Chi ti???t s???n ph???m', 'Ph?? h???p: ??i l??m, s??? ki???n, hay ??i d???o ph???, t???o v??? tr??? trung n??? t??nh cho ng?????i m???c.\"', 'TS11859');
INSERT INTO `description_entity` VALUES (189, 'Chi ti???t s???n ph???m', '\"Ch???t li???u: v???i t???ng h???p cao c???p', 'TS11872');
INSERT INTO `description_entity` VALUES (190, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ????????m thi???t k??? d??ng ch??? A chi???t eo nh???, tone m??u tr???ng kem, tay d??i b???ng nh???', 'V101019C');
INSERT INTO `description_entity` VALUES (191, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ????????m thi???t k??? d??ng ch??? A chi???t eo nh???, tone m??u tr???ng kem, tay d??i b???ng nh???', 'V301005D');
INSERT INTO `description_entity` VALUES (192, 'Chi ti???t s???n ph???m', 'T??? th?????ng cho m??nh set ????? tuy???t v???i n??y ????? ch??o m??a thu xinh t????i ngay th??i!\"', 'V301006C');
INSERT INTO `description_entity` VALUES (193, 'Chi ti???t s???n ph???m', '?????m maxi tay r???ng, thi???t k??? d??y t???t n??? t??nh, quy???n r??. Ki???u d??ng ?????m bay b???ng ph?? h???p ch??? em di???n trong c??c b???a ti???c, cu???c d???o ch??i.', 'V301007D');
INSERT INTO `description_entity` VALUES (194, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ????????m thi???t k??? d??ng ch??? A chi???t eo nh???, tone m??u tr???ng kem, tay d??i b???ng nh???', 'V301010');
INSERT INTO `description_entity` VALUES (195, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ????????m thi???t k??? d??ng ch??? A chi???t eo nh???, tone m??u tr???ng kem, tay d??i b???ng nh???', 'V301010D');
INSERT INTO `description_entity` VALUES (196, 'Chi ti???t s???n ph???m', 'M???t set ????? ???????c ph???i gi???a blazer d??ng ng???n v?? qu???n short s??? tr??? th??nh ??i???m nh???n ?????y ???n t?????ng cho n??ng trong m??a thu n??y.', 'V301011C');
INSERT INTO `description_entity` VALUES (197, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ????????m thi???t k??? d??ng ch??? A chi???t eo nh???, tone m??u tr???ng kem, tay d??i b???ng nh???', 'V331006');
INSERT INTO `description_entity` VALUES (198, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ????????m thi???t k??? d??ng ch??? A chi???t eo nh???, tone m??u tr???ng kem, tay d??i b???ng nh???', 'V331006H');
INSERT INTO `description_entity` VALUES (199, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ????????m thi???t k??? d??ng ch??? A chi???t eo nh???, tone m??u tr???ng kem, tay d??i b???ng nh???', 'V331007C');
INSERT INTO `description_entity` VALUES (200, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ????????m thi???t k??? d??ng ch??? A chi???t eo nh???, tone m??u tr???ng kem, tay d??i b???ng nh???', 'V331011C');
INSERT INTO `description_entity` VALUES (201, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ????????m thi???t k??? d??ng ch??? A chi???t eo nh???, tone m??u tr???ng kem, tay d??i b???ng nh???', 'V331017C');
INSERT INTO `description_entity` VALUES (202, 'Chi ti???t s???n ph???m', '?????m d??ng x??e tr??? vai h???a ti???t hoa ch??m sang tr???ng tr??n n???n v??i g???m ph???i ????ng ten sang tr???ng v?? quy???n r??.', 'V351014');
INSERT INTO `description_entity` VALUES (203, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ????????m thi???t k??? d??ng ch??? A chi???t eo nh???, tone m??u tr???ng kem, tay d??i b???ng nh???', 'V352002');
INSERT INTO `description_entity` VALUES (204, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ????????m thi???t k??? d??ng ch??? A chi???t eo nh???, tone m??u tr???ng kem, tay d??i b???ng nh???', 'V401007C');
INSERT INTO `description_entity` VALUES (205, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ????????m thi???t k??? d??ng ch??? A chi???t eo nh???, tone m??u tr???ng kem, tay d??i b???ng nh???', 'V401008C');
INSERT INTO `description_entity` VALUES (206, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ????????m thi???t k??? d??ng ch??? A chi???t eo nh???, tone m??u tr???ng kem, tay d??i b???ng nh???', 'V601005C');
INSERT INTO `description_entity` VALUES (207, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ????????m thi???t k??? d??ng ch??? A chi???t eo nh???, tone m??u tr???ng kem, tay d??i b???ng nh???', 'V601008C');
INSERT INTO `description_entity` VALUES (208, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ?????m c??? tr??n , kho??t l??? h??nh c??nh hoa ??? c??? , ?????u tay b???ng nh??? , c???a tay m??ngsec b???n to , t??ng thi??n r??? nh??? t???o h??nh ???nh n??? t??nh , thanh l???ch \"', 'V601009D');
INSERT INTO `description_entity` VALUES (209, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ????????m thi???t k??? d??ng ch??? A chi???t eo nh???, tone m??u tr???ng kem, tay d??i b???ng nh???', 'V601016D');
INSERT INTO `description_entity` VALUES (210, 'Chi ti???t s???n ph???m', '\"?????m c??? tr??n , kho??t l??? h??nh c??nh hoa ??? c??? , tay b???ng nh???.', 'V604004');
INSERT INTO `description_entity` VALUES (211, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ????????m thi???t k??? d??ng ch??? A chi???t eo nh???, tone m??u tr???ng kem, tay d??i b???ng nh???', 'V611007C');
INSERT INTO `description_entity` VALUES (212, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ????????m thi???t k??? d??ng ch??? A chi???t eo nh???, tone m??u tr???ng kem, tay d??i b???ng nh???', 'V611008H');
INSERT INTO `description_entity` VALUES (213, 'Chi ti???t s???n ph???m', '\"?????m x???p v??ng d??ng ??m th??u c??nh hoa l?? trang tr?? eo', 'V611010D');
INSERT INTO `description_entity` VALUES (214, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ????????m thi???t k??? d??ng ch??? A chi???t eo nh???, tone m??u tr???ng kem, tay d??i b???ng nh???', 'V611014C');
INSERT INTO `description_entity` VALUES (215, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ????????m thi???t k??? d??ng ch??? A chi???t eo nh???, tone m??u tr???ng kem, tay d??i b???ng nh???', 'V611016C');
INSERT INTO `description_entity` VALUES (216, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ????????m thi???t k??? d??ng ch??? A chi???t eo nh???, tone m??u tr???ng kem, tay d??i b???ng nh???', 'V611017H');
INSERT INTO `description_entity` VALUES (217, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ????????m thi???t k??? d??ng ch??? A chi???t eo nh???, tone m??u tr???ng kem, tay d??i b???ng nh???', 'V611020C');
INSERT INTO `description_entity` VALUES (218, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ????????m thi???t k??? d??ng ch??? A chi???t eo nh???, tone m??u tr???ng kem, tay d??i b???ng nh???', 'V611021D');
INSERT INTO `description_entity` VALUES (219, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ????????m thi???t k??? d??ng ch??? A chi???t eo nh???, tone m??u tr???ng kem, tay d??i b???ng nh???', 'V612017C');
INSERT INTO `description_entity` VALUES (220, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ?????m d??ng su??ng nh??ng th??n tr??n ??m t??n d??ng, kh??ng l??? b???ng. Eo v??y ???????c th??u 3D c??nh hoa k???t h???p kim sa r???t tinh t???, sang tr???ng. Tay ?????m d??i tr??n khu???u gi??p che b???p tay\"', 'V612018C');
INSERT INTO `description_entity` VALUES (221, 'Chi ti???t s???n ph???m', ' Ki???u d??ng: ?????m ??m s??t , t??n d??ng . D???i l?? th??u tung bay nh??? nh??ng , uy???n chuy???n', 'V614004');
INSERT INTO `description_entity` VALUES (222, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ????????m thi???t k??? d??ng ch??? A chi???t eo nh???, tone m??u tr???ng kem, tay d??i b???ng nh???', 'V614006C');
INSERT INTO `description_entity` VALUES (223, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ????????m thi???t k??? d??ng ch??? A chi???t eo nh???, tone m??u tr???ng kem, tay d??i b???ng nh???', 'V621006');
INSERT INTO `description_entity` VALUES (224, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ????????m thi???t k??? d??ng ch??? A chi???t eo nh???, tone m??u tr???ng kem, tay d??i b???ng nh???', 'V621007H');
INSERT INTO `description_entity` VALUES (225, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ????????m thi???t k??? d??ng ch??? A chi???t eo nh???, tone m??u tr???ng kem, tay d??i b???ng nh???', 'V624002D');
INSERT INTO `description_entity` VALUES (226, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ????????m thi???t k??? d??ng ch??? A chi???t eo nh???, tone m??u tr???ng kem, tay d??i b???ng nh???', 'V631006C');
INSERT INTO `description_entity` VALUES (227, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ?????m x??e c??? b???, giao 2 h??ng khuy, t??ng v??y x???p ly', 'V631008');
INSERT INTO `description_entity` VALUES (228, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ????????m thi???t k??? d??ng ch??? A chi???t eo nh???, tone m??u tr???ng kem, tay d??i b???ng nh???', 'V631009D');
INSERT INTO `description_entity` VALUES (229, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ????????m thi???t k??? d??ng ch??? A chi???t eo nh???, tone m??u tr???ng kem, tay d??i b???ng nh???', 'V631010C');
INSERT INTO `description_entity` VALUES (230, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ????????m thi???t k??? d??ng ch??? A chi???t eo nh???, tone m??u tr???ng kem, tay d??i b???ng nh???', 'V631012D');
INSERT INTO `description_entity` VALUES (231, 'Chi ti???t s???n ph???m', '\"?????m x??e l???a n???n tr???ng h???a ti???t hoa', 'V631013');
INSERT INTO `description_entity` VALUES (232, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ????????m thi???t k??? d??ng ch??? A chi???t eo nh???, tone m??u tr???ng kem, tay d??i b???ng nh???', 'V631020H');
INSERT INTO `description_entity` VALUES (233, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ????????m thi???t k??? d??ng ch??? A chi???t eo nh???, tone m??u tr???ng kem, tay d??i b???ng nh???', 'V641004C');
INSERT INTO `description_entity` VALUES (234, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ?????m d??i ngang b???p ch??n , x???p ly t??ng m???m mai\"', 'V641006');
INSERT INTO `description_entity` VALUES (235, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ????????m thi???t k??? d??ng ch??? A chi???t eo nh???, tone m??u tr???ng kem, tay d??i b???ng nh???', 'V641007');
INSERT INTO `description_entity` VALUES (236, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ????????m thi???t k??? d??ng ch??? A chi???t eo nh???, tone m??u tr???ng kem, tay d??i b???ng nh???', 'V641009');
INSERT INTO `description_entity` VALUES (237, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ????????m thi???t k??? d??ng ch??? A chi???t eo nh???, tone m??u tr???ng kem, tay d??i b???ng nh???', 'V644002C');
INSERT INTO `description_entity` VALUES (238, 'Chi ti???t s???n ph???m', 'D??ng blazer ng???n k???t h???p qu???n short tr??n n???n h???a ti???t k??? caro mang ?????n s??? tr??? trung v?? n??ng ?????ng. B??n c???nh ???? thi???t k??? tay ??o tinh t??? v???i ???????ng x??? v?? m??? r???ng v??? ph??a tay, t???o n??n s??? nh???p nh??ng cho t???ng th??? trang ph???c.', 'V700005');
INSERT INTO `description_entity` VALUES (239, 'Chi ti???t s???n ph???m', 'K???t h???p v???i m???t chi???c qu???n short c???p cao, crop blazer t???o n??n set ????? chinh ph???c m???i ??nh nh??n c???a ph??i ?????p.\"', 'V710009C');
INSERT INTO `description_entity` VALUES (240, 'Chi ti???t s???n ph???m', 'Ho??n to??n c?? th??? k???t h???p set ????? v???i ??o m???c trong t???i m??u, m???t g???i ?? nh??? cho n??ng ???? l?? ??o ren ??i k??m ????? t???o n??n set ????? ho??n ch???nh nh???t.', 'V710014D');
INSERT INTO `description_entity` VALUES (241, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ????????m thi???t k??? d??ng ch??? A chi???t eo nh???, tone m??u tr???ng kem, tay d??i b???ng nh???', 'V730006');
INSERT INTO `description_entity` VALUES (242, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ????????m thi???t k??? d??ng ch??? A chi???t eo nh???, tone m??u tr???ng kem, tay d??i b???ng nh???', 'V800009C');
INSERT INTO `description_entity` VALUES (243, 'Chi ti???t s???n ph???m', '?????m x??e tr??? vai, n?? ng???c to b???n. M??u s???c: V??ng gold sang tr???ng, qu?? ph??i. Ph?? h???p cho c??c bu???i ti???c t???i, nh???ng cu???c d???o ch??i,.', 'V850004C');
INSERT INTO `description_entity` VALUES (244, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ????????m thi???t k??? d??ng ch??? A chi???t eo nh???, tone m??u tr???ng kem, tay d??i b???ng nh???', 'V850009');
INSERT INTO `description_entity` VALUES (245, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ????????m thi???t k??? d??ng ch??? A chi???t eo nh???, tone m??u tr???ng kem, tay d??i b???ng nh???', 'Y331002');
INSERT INTO `description_entity` VALUES (246, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ????????m thi???t k??? d??ng ch??? A chi???t eo nh???, tone m??u tr???ng kem, tay d??i b???ng nh???', 'Y33407A');
INSERT INTO `description_entity` VALUES (247, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ????????m thi???t k??? d??ng ch??? A chi???t eo nh???, tone m??u tr???ng kem, tay d??i b???ng nh???', 'Y33407B');
INSERT INTO `description_entity` VALUES (248, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ????????m thi???t k??? d??ng ch??? A chi???t eo nh???, tone m??u tr???ng kem, tay d??i b???ng nh???', 'Y401014C');
INSERT INTO `description_entity` VALUES (249, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ????????m thi???t k??? d??ng ch??? A chi???t eo nh???, tone m??u tr???ng kem, tay d??i b???ng nh???', 'Y720002');
INSERT INTO `description_entity` VALUES (250, 'Chi ti???t s???n ph???m', '\"THI???T K??? SANG TR???NG CHO QU?? C?? Y??U TH??CH S??? C??? ??I???N', 'Y720003');
INSERT INTO `description_entity` VALUES (251, 'Chi ti???t s???n ph???m', '\"Set ????? xinh ?????p n??y ??ang tr??? th??nh hot items t???i Seven.AM v?? thi???t k??? ?????c bi???t v?? v?? c??ng trendy c???a m??nh.', 'Y81269');
INSERT INTO `description_entity` VALUES (252, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ????????m thi???t k??? d??ng ch??? A chi???t eo nh???, tone m??u tr???ng kem, tay d??i b???ng nh???', 'Y81269F');
INSERT INTO `description_entity` VALUES (253, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ????????m thi???t k??? d??ng ch??? A chi???t eo nh???, tone m??u tr???ng kem, tay d??i b???ng nh???', 'Z04892');
INSERT INTO `description_entity` VALUES (254, 'Chi ti???t s???n ph???m', '\"Ch???t li???u: v???i t???ng h???p cao c???p', 'Z05552');
INSERT INTO `description_entity` VALUES (255, 'Chi ti???t s???n ph???m', 'Ph?? h???p: ??i l??m, s??? ki???n, hay ??i d???o ph???, t???o v??? thanh l???ch cho ng?????i m???c.\"', 'Z05592');
INSERT INTO `description_entity` VALUES (256, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ????????m thi???t k??? d??ng ch??? A d??i qua g???i, tone m??u ????? tr??n, vai b???ng, ph???n eo ????nh c??ch ??i???u', 'Z05722');
INSERT INTO `description_entity` VALUES (257, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ????????m thi???t k??? d??ng ch??? A d??i qua g???i, tone m??u ????? tr??n, vai b???ng, ph???n eo ????nh c??ch ??i???u', 'Z05732');
INSERT INTO `description_entity` VALUES (258, 'Chi ti???t s???n ph???m', '\"Ch???t li???u: v???i t???ng h???p cao c???p', 'Z05992');
INSERT INTO `description_entity` VALUES (259, 'Chi ti???t s???n ph???m', 'Ph?? h???p: ??i l??m, s??? ki???n, hay ??i d???o ph???, t???o v??? thanh l???ch cho ng?????i m???c.\"', 'Z06042');
INSERT INTO `description_entity` VALUES (260, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ????????m thi???t k??? d??ng ch??? A d??i qua g???i, tone m??u ??en tr??n, vai b???ng, ph???n eo ????nh c??ch ??i???u', 'Z06372');
INSERT INTO `description_entity` VALUES (261, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ?????m thi???t k??? d??ng su??ng d??i qua g???i k???t h???p h???a ti???t n???i b???t', 'Z06402');
INSERT INTO `description_entity` VALUES (262, 'Chi ti???t s???n ph???m', '\"Ch???t li???u: v???i t???ng h???p cao c???p', 'Z08122');
INSERT INTO `description_entity` VALUES (263, 'Chi ti???t s???n ph???m', '\"Ch???t li???u: v???i t???ng h???p cao c???p', 'Z08132');
INSERT INTO `description_entity` VALUES (264, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ????????m li???n thi???t k??? d??i tay, tone m??u ????? tr??n, c??? vest 2 ve, vai b???ng nh???', 'Z08492');
INSERT INTO `description_entity` VALUES (265, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ????????m thi???t k??? tone m??u ????? tr??n, k???t h???p tay voan k??nh, chi???t eo nh???', 'Z08562');
INSERT INTO `description_entity` VALUES (266, 'Chi ti???t s???n ph???m', '\"Ch???t li???u: v???i nhung cao c???p', 'Z08612');
INSERT INTO `description_entity` VALUES (267, 'Chi ti???t s???n ph???m', 'Ph?? h???p: ??i l??m, s??? ki???n, hay ??i d???o ph???, t???o v??? thanh l???ch cho ng?????i m???c.\"', 'Z08642');
INSERT INTO `description_entity` VALUES (268, 'Chi ti???t s???n ph???m', '\"Ch???t li???u: v???i t???ng h???p cao c???p', 'Z08832');
INSERT INTO `description_entity` VALUES (269, 'Chi ti???t s???n ph???m', 'Ph?? h???p: ??i l??m, s??? ki???n, hay ??i d???o ph???, t???o v??? tr??? trung n??? t??nh cho ng?????i m???c.\"', 'Z08992');
INSERT INTO `description_entity` VALUES (270, 'Chi ti???t s???n ph???m', '\"Ch???t li???u: v???i nhung cao c???p', 'Z09042');
INSERT INTO `description_entity` VALUES (271, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ?????m thi???t k??? d??ng ??m d??i qua g???i, k???t h???p h???a ti???t da beo ', 'Z09122');
INSERT INTO `description_entity` VALUES (272, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ?????m thi???t k??? d??ng s?? mi c??? v???, tone m??u n??u be tr??n k???t h???p d??y ??ai c??ng tone m??u', 'Z09152');
INSERT INTO `description_entity` VALUES (273, 'Chi ti???t s???n ph???m', '\"Ch???t li???u: v???i t???ng h???p cao c???p', 'Z09292');
INSERT INTO `description_entity` VALUES (274, 'Chi ti???t s???n ph???m', 'Ph?? h???p: ??i l??m, s??? ki???n, hay ??i d???o ph???, t???o v??? thanh l???ch cho ng?????i m???c.\"', 'Z09312');
INSERT INTO `description_entity` VALUES (275, 'Chi ti???t s???n ph???m', 'Ph?? h???p: ??i l??m, hay ??i d???o ph???, t???o v??? tr??? trung cho ng?????i m???c.\"', 'Z09612A');
INSERT INTO `description_entity` VALUES (276, 'Chi ti???t s???n ph???m', '\"Ch???t li???u: v???i t???ng h???p cao c???p', 'Z09612B');
INSERT INTO `description_entity` VALUES (277, 'Chi ti???t s???n ph???m', 'Ph?? h???p: ??i l??m, s??? ki???n, hay ??i d???o ph???, t???o v??? tr??? trung n??? t??nh cho ng?????i m???c.\"', 'Z09722');
INSERT INTO `description_entity` VALUES (278, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ????????m thi???t k??? h??? eo, c??? b???, k??m ??ai th???t eo nh?? h??nh', 'Z09752');
INSERT INTO `description_entity` VALUES (279, 'Chi ti???t s???n ph???m', '\"Ch???t li???u: v???i nhung cao c???p', 'Z09812');
INSERT INTO `description_entity` VALUES (280, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ?????m thi???t k??? d??ng ch??? A d??i qua g???i, tone m??u ????? k???t h???p h???a ti???t k???, tay b???ng nh???', 'Z09832');
INSERT INTO `description_entity` VALUES (281, 'Chi ti???t s???n ph???m', '\"Ch???t li???u: v???i t???ng h???p cao c???p', 'Z09862');
INSERT INTO `description_entity` VALUES (282, 'Chi ti???t s???n ph???m', '\"Ch???t li???u: v???i t???ng h???p cao c???p', 'Z10152');
INSERT INTO `description_entity` VALUES (283, 'Chi ti???t s???n ph???m', 'Ph?? h???p: ??i l??m, s??? ki???n, hay ??i d???o ph???, t???o v??? tr??? trung n??? t??nh cho ng?????i m???c.\"', 'Z10192');
INSERT INTO `description_entity` VALUES (284, 'Chi ti???t s???n ph???m', 'Ph?? h???p: ??i l??m, s??? ki???n, hay ??i d???o ph???, t???o v??? tr??? trung n??? t??nh cho ng?????i m???c.\"', 'Z10212');
INSERT INTO `description_entity` VALUES (285, 'Chi ti???t s???n ph???m', 'Ph?? h???p: ??i l??m, s??? ki???n, hay ??i d???o ph???, t???o v??? tr??? trung n??? t??nh cho ng?????i m???c.\"', 'Z10262');
INSERT INTO `description_entity` VALUES (286, 'Chi ti???t s???n ph???m', '\"Ch???t li???u: v???i len cao c???p', 'Z10552A');
INSERT INTO `description_entity` VALUES (287, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ?????m thi???t k??? d??ng ch??? A d??i qua g???i, tone m??u be k???t h???p h???a ti???t ch???m bi ', 'Z10552B');
INSERT INTO `description_entity` VALUES (288, 'Chi ti???t s???n ph???m', 'Ph?? h???p: ??i l??m, s??? ki???n, hay ??i d???o ph???, t???o v??? tr??? trung n??? t??nh cho ng?????i m???c.\"', 'Z10772');
INSERT INTO `description_entity` VALUES (289, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ?????m li???n thi???t k??? d??ng ch??? A d??i qua g???i, ph???n th??n tone m??u ??en k???t h???p ch??n v??y h???a ti???t da beo', 'Z10782');
INSERT INTO `description_entity` VALUES (290, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ?????m thi???t k??? d??ng ??m, tone m??u ??en k???t h???p h???a ti???t hoa in s???c n??t', 'Z10852');
INSERT INTO `description_entity` VALUES (291, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ????????m thi???t k??? d??i tay, d??ng ch??? d??i qua g???i, tone m??u ??en tr??n, c??? tr??n ????nh ???? ', 'Z10882');
INSERT INTO `description_entity` VALUES (292, 'Chi ti???t s???n ph???m', '\"Ch???t li???u: v???i len cao c???p', 'Z11212');
INSERT INTO `description_entity` VALUES (293, 'Chi ti???t s???n ph???m', 'Ph?? h???p: ??i l??m, s??? ki???n, hay ??i d???o ph???, t???o v??? tr??? trung n??? t??nh cho ng?????i m???c.\"', 'Z11222');
INSERT INTO `description_entity` VALUES (294, 'Chi ti???t s???n ph???m', '\"H???a ti???t k??? caro ??ang hot tr??? l???i v??o nh???ng ng??y giao m??a v???i s???c h??t ?????c bi???t ch??a bao gi??? thuy??n gi???m c???a n??. B??n c???nh s??? thanh l???ch khi ???ng d???ng trong thi???t k??? ??o blazer, h???a ti???t k??? caro b???n to c??n v?? c??ng hi???u qu??? trong vi???c mang l???i n??t tr??? trung v?? n??ng ?????ng cho c??c qu?? c??.', 'Z16011A');
INSERT INTO `description_entity` VALUES (295, 'Chi ti???t s???n ph???m', '\"Ch???t li???u: v???i g???m tafta cao c???p', 'Z16981');
INSERT INTO `description_entity` VALUES (296, 'Chi ti???t s???n ph???m', 'Ph?? h???p: ??i l??m, s??? ki???n, hay ??i d???o ph???, t???o v??? thanh l???ch cho ng?????i m???c.\"', 'Z25372');
INSERT INTO `description_entity` VALUES (297, 'Chi ti???t s???n ph???m', 'Ph?? h???p: ??i l??m, s??? ki???n, hay ??i d???o ph???, t???o v??? tr??? trung n??? t??nh cho ng?????i m???c.\"', 'Z67052A');
INSERT INTO `description_entity` VALUES (298, 'Chi ti???t s???n ph???m', '\"Ch???t li???u: v???i t???ng h???p cao c???p', 'Z67052B');
INSERT INTO `description_entity` VALUES (299, 'Chi ti???t s???n ph???m', 'Ph?? h???p: ??i l??m, s??? ki???n, hay ??i d???o ph???, t???o v??? thanh l???ch cho ng?????i m???c.\"', 'Z80012');
INSERT INTO `description_entity` VALUES (300, 'Chi ti???t s???n ph???m', 'Ph?? h???p: ??i l??m, s??? ki???n, hay ??i d???o ph???, t???o v??? thanh l???ch cho ng?????i m???c.\"', 'Z80182');
INSERT INTO `description_entity` VALUES (301, 'Chi ti???t s???n ph???m', 'Ki???u d??ng: ????????m thi???t k??? d??ng ??m d??i qua g???i tone m??u ????? tr??n, tay l??? bo chun, ????nh hoa th??u', 'Z80322');

-- ----------------------------
-- Table structure for image_entity
-- ----------------------------
DROP TABLE IF EXISTS `image_entity`;
CREATE TABLE `image_entity`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `idProductId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_92b2a5edb0fd81e16efaff6af45`(`idProductId` ASC) USING BTREE,
  CONSTRAINT `FK_92b2a5edb0fd81e16efaff6af45` FOREIGN KEY (`idProductId`) REFERENCES `product_entity` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 2002 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of image_entity
-- ----------------------------
INSERT INTO `image_entity` VALUES (1001, '/images/product/9_4.jpg', 'V631010C');
INSERT INTO `image_entity` VALUES (1002, '/images/product/192_2.jpg', 'D02232');
INSERT INTO `image_entity` VALUES (1003, '/images/product/96_2.jpg', 'D11159');
INSERT INTO `image_entity` VALUES (1004, '/images/product/154_1.jpg', 'D62052B');
INSERT INTO `image_entity` VALUES (1005, '/images/product/15_4.jpg', 'V631008');
INSERT INTO `image_entity` VALUES (1006, '/images/product/12_2.jpg', 'V331006H');
INSERT INTO `image_entity` VALUES (1007, '/images/product/156_2.jpg', 'D10312');
INSERT INTO `image_entity` VALUES (1008, '/images/product/40_3.jpg', 'C58828C');
INSERT INTO `image_entity` VALUES (1009, '/images/product/52_1.jpg', 'V101019C');
INSERT INTO `image_entity` VALUES (1010, '/images/product/282_4.jpg', 'Z08562');
INSERT INTO `image_entity` VALUES (1011, '/images/product/188_2.jpg', 'D06602');
INSERT INTO `image_entity` VALUES (1012, '/images/product/143_2.jpg', 'D10002');
INSERT INTO `image_entity` VALUES (1013, '/images/product/47_3.jpg', 'V352002');
INSERT INTO `image_entity` VALUES (1014, '/images/product/252_2.jpg', 'J31772');
INSERT INTO `image_entity` VALUES (1015, '/images/product/287_2.jpg', 'Z08132');
INSERT INTO `image_entity` VALUES (1016, '/images/product/200_4.jpg', 'D05529');
INSERT INTO `image_entity` VALUES (1017, '/images/product/273_2.jpg', 'Z06402');
INSERT INTO `image_entity` VALUES (1018, '/images/product/196_2.jpg', 'D34152');
INSERT INTO `image_entity` VALUES (1019, '/images/product/27_1.jpg', 'V641004C');
INSERT INTO `image_entity` VALUES (1020, '/images/product/38_4.jpg', 'C633005C');
INSERT INTO `image_entity` VALUES (1021, '/images/product/274_4.jpg', 'Z10262');
INSERT INTO `image_entity` VALUES (1022, '/images/product/131_2.jpg', 'D10752');
INSERT INTO `image_entity` VALUES (1023, '/images/product/121_4.jpg', 'D09622');
INSERT INTO `image_entity` VALUES (1024, '/images/product/98_3.jpg', 'D11132A');
INSERT INTO `image_entity` VALUES (1025, '/images/product/91_3.jpg', 'D12052');
INSERT INTO `image_entity` VALUES (1026, '/images/product/225_1.jpg', 'TS10132');
INSERT INTO `image_entity` VALUES (1027, '/images/product/138_3.jpg', 'D09432A');
INSERT INTO `image_entity` VALUES (1028, '/images/product/207_4.jpg', 'AD09262B');
INSERT INTO `image_entity` VALUES (1029, '/images/product/5_2.jpg', 'V621007H');
INSERT INTO `image_entity` VALUES (1030, '/images/product/234_2.jpg', 'J02242');
INSERT INTO `image_entity` VALUES (1031, '/images/product/7_2.jpg', 'V611016C');
INSERT INTO `image_entity` VALUES (1032, '/images/product/151_1.jpg', 'D21172');
INSERT INTO `image_entity` VALUES (1033, '/images/product/278_2.jpg', 'Z09612B');
INSERT INTO `image_entity` VALUES (1034, '/images/product/268_4.jpg', 'Z09722');
INSERT INTO `image_entity` VALUES (1035, '/images/product/103_1.jpg', 'D11132B');
INSERT INTO `image_entity` VALUES (1036, '/images/product/46_5.jpg', 'V331006');
INSERT INTO `image_entity` VALUES (1037, '/images/product/239_3.jpg', 'J00652');
INSERT INTO `image_entity` VALUES (1038, '/images/product/117_3.jpg', 'D29162');
INSERT INTO `image_entity` VALUES (1039, '/images/product/151_2.jpg', 'D21172');
INSERT INTO `image_entity` VALUES (1040, '/images/product/194_4.jpg', 'D06942');
INSERT INTO `image_entity` VALUES (1041, '/images/product/27_3.jpg', 'V641004C');
INSERT INTO `image_entity` VALUES (1042, '/images/product/169_2.jpg', 'D10312B');
INSERT INTO `image_entity` VALUES (1043, '/images/product/34_2.jpg', 'C613011');
INSERT INTO `image_entity` VALUES (1044, '/images/product/239_4.jpg', 'J00652');
INSERT INTO `image_entity` VALUES (1045, '/images/product/211_4.jpg', 'AD08662');
INSERT INTO `image_entity` VALUES (1046, '/images/product/137_1.jpg', 'D10592');
INSERT INTO `image_entity` VALUES (1047, '/images/product/300_1.jpg', 'Z04892');
INSERT INTO `image_entity` VALUES (1048, '/images/product/185_4.jpg', 'D03322');
INSERT INTO `image_entity` VALUES (1049, '/images/product/147_3.jpg', 'D10372');
INSERT INTO `image_entity` VALUES (1050, '/images/product/214_4.jpg', 'AD01822A');
INSERT INTO `image_entity` VALUES (1051, '/images/product/293_2.jpg', 'Z08122');
INSERT INTO `image_entity` VALUES (1052, '/images/product/265_2.jpg', 'Z10192');
INSERT INTO `image_entity` VALUES (1053, '/images/product/298_4.jpg', 'Z05592');
INSERT INTO `image_entity` VALUES (1054, '/images/product/163_2.jpg', 'D10292');
INSERT INTO `image_entity` VALUES (1055, '/images/product/28_2.jpg', 'V612017C');
INSERT INTO `image_entity` VALUES (1056, '/images/product/81_2.jpg', 'H331013C');
INSERT INTO `image_entity` VALUES (1057, '/images/product/223_3.jpg', 'TS10302');
INSERT INTO `image_entity` VALUES (1058, '/images/product/196_4.jpg', 'D34152');
INSERT INTO `image_entity` VALUES (1059, '/images/product/105_2.jpg', 'D29652');
INSERT INTO `image_entity` VALUES (1060, '/images/product/268_1.jpg', 'Z09722');
INSERT INTO `image_entity` VALUES (1061, '/images/product/220_1.jpg', 'TS11859');
INSERT INTO `image_entity` VALUES (1062, '/images/product/103_2.jpg', 'D11132B');
INSERT INTO `image_entity` VALUES (1063, '/images/product/273_3.jpg', 'Z06402');
INSERT INTO `image_entity` VALUES (1064, '/images/product/21_4.jpg', 'V612018C');
INSERT INTO `image_entity` VALUES (1065, '/images/product/218_1.jpg', 'TS11872');
INSERT INTO `image_entity` VALUES (1066, '/images/product/287_4.jpg', 'Z08132');
INSERT INTO `image_entity` VALUES (1067, '/images/product/88_1.jpg', 'D02452');
INSERT INTO `image_entity` VALUES (1068, '/images/product/62_3.jpg', 'Y33407A');
INSERT INTO `image_entity` VALUES (1069, '/images/product/65_4.jpg', 'Y331002');
INSERT INTO `image_entity` VALUES (1070, '/images/product/13_1.jpg', 'V641009');
INSERT INTO `image_entity` VALUES (1071, '/images/product/134_2.jpg', 'D10072');
INSERT INTO `image_entity` VALUES (1072, '/images/product/1_3.jpg', 'V611021D');
INSERT INTO `image_entity` VALUES (1073, '/images/product/160_3.jpg', 'D60232A');
INSERT INTO `image_entity` VALUES (1074, '/images/product/76_1.jpg', 'Y720003');
INSERT INTO `image_entity` VALUES (1075, '/images/product/79_3.jpg', 'C78191C');
INSERT INTO `image_entity` VALUES (1076, '/images/product/217_2.jpg', 'AD27319');
INSERT INTO `image_entity` VALUES (1077, '/images/product/185_2.jpg', 'D03322');
INSERT INTO `image_entity` VALUES (1078, '/images/product/38_1.jpg', 'C633005C');
INSERT INTO `image_entity` VALUES (1079, '/images/product/298_3.jpg', 'Z05592');
INSERT INTO `image_entity` VALUES (1080, '/images/product/291_4.jpg', 'Z05732');
INSERT INTO `image_entity` VALUES (1081, '/images/product/4_3.jpg', 'V601016D');
INSERT INTO `image_entity` VALUES (1082, '/images/product/29_1.jpg', 'V631006C');
INSERT INTO `image_entity` VALUES (1083, '/images/product/57_3.jpg', 'Y401014C');
INSERT INTO `image_entity` VALUES (1084, '/images/product/71_2.jpg', 'Y81269');
INSERT INTO `image_entity` VALUES (1085, '/images/product/248_2.jpg', 'J06672');
INSERT INTO `image_entity` VALUES (1086, '/images/product/162_4.jpg', 'D10442');
INSERT INTO `image_entity` VALUES (1087, '/images/product/203_3.jpg', 'AD11449');
INSERT INTO `image_entity` VALUES (1088, '/images/product/111_2.jpg', 'D23212');
INSERT INTO `image_entity` VALUES (1089, '/images/product/113_1.jpg', 'D30722');
INSERT INTO `image_entity` VALUES (1090, '/images/product/262_4.jpg', 'Z67052A');
INSERT INTO `image_entity` VALUES (1091, '/images/product/96_1.jpg', 'D11159');
INSERT INTO `image_entity` VALUES (1092, '/images/product/284_3.jpg', 'Z08612');
INSERT INTO `image_entity` VALUES (1093, '/images/product/50_2.jpg', 'V331007C');
INSERT INTO `image_entity` VALUES (1094, '/images/product/87_1.jpg', 'D03862');
INSERT INTO `image_entity` VALUES (1095, '/images/product/15_2.jpg', 'V631008');
INSERT INTO `image_entity` VALUES (1096, '/images/product/52_3.jpg', 'V101019C');
INSERT INTO `image_entity` VALUES (1097, '/images/product/264_2.jpg', 'Z10782');
INSERT INTO `image_entity` VALUES (1098, '/images/product/284_4.jpg', 'Z08612');
INSERT INTO `image_entity` VALUES (1099, '/images/product/173_3.jpg', 'D10452B');
INSERT INTO `image_entity` VALUES (1100, '/images/product/173_2.jpg', 'D10452B');
INSERT INTO `image_entity` VALUES (1101, '/images/product/130_3.jpg', 'D10452A');
INSERT INTO `image_entity` VALUES (1102, '/images/product/55_1.jpg', 'C13115C');
INSERT INTO `image_entity` VALUES (1103, '/images/product/280_1.jpg', 'Z08642');
INSERT INTO `image_entity` VALUES (1104, '/images/product/102_2.jpg', 'D11119');
INSERT INTO `image_entity` VALUES (1105, '/images/product/291_3.jpg', 'Z05732');
INSERT INTO `image_entity` VALUES (1106, '/images/product/114_2.jpg', 'D31632');
INSERT INTO `image_entity` VALUES (1107, '/images/product/110_1.jpg', 'D05162');
INSERT INTO `image_entity` VALUES (1108, '/images/product/182_2.jpg', 'D06952');
INSERT INTO `image_entity` VALUES (1109, '/images/product/148_3.jpg', 'D12199');
INSERT INTO `image_entity` VALUES (1110, '/images/product/207_2.jpg', 'AD09262B');
INSERT INTO `image_entity` VALUES (1111, '/images/product/3_1.jpg', 'V611020C');
INSERT INTO `image_entity` VALUES (1112, '/images/product/192_1.jpg', 'D02232');
INSERT INTO `image_entity` VALUES (1113, '/images/product/256_2.jpg', 'Z10772');
INSERT INTO `image_entity` VALUES (1114, '/images/product/105_1.jpg', 'D29652');
INSERT INTO `image_entity` VALUES (1115, '/images/product/296_2.jpg', 'Z05992');
INSERT INTO `image_entity` VALUES (1116, '/images/product/142_1.jpg', 'D10932');
INSERT INTO `image_entity` VALUES (1117, '/images/product/274_3.jpg', 'Z10262');
INSERT INTO `image_entity` VALUES (1118, '/images/product/121_2.jpg', 'D09622');
INSERT INTO `image_entity` VALUES (1119, '/images/product/129_1.jpg', 'D10022');
INSERT INTO `image_entity` VALUES (1120, '/images/product/82_2.jpg', 'V710014D');
INSERT INTO `image_entity` VALUES (1121, '/images/product/73_1.jpg', 'V700005');
INSERT INTO `image_entity` VALUES (1122, '/images/product/157_3.jpg', 'D10942');
INSERT INTO `image_entity` VALUES (1123, '/images/product/149_1.jpg', 'D60362A');
INSERT INTO `image_entity` VALUES (1124, '/images/product/80_1.jpg', 'H301016CA');
INSERT INTO `image_entity` VALUES (1125, '/images/product/4_4.jpg', 'V601016D');
INSERT INTO `image_entity` VALUES (1126, '/images/product/175_3.jpg', 'D10602B');
INSERT INTO `image_entity` VALUES (1127, '/images/product/92_1.jpg', 'D12049');
INSERT INTO `image_entity` VALUES (1128, '/images/product/238_4.jpg', 'J03332');
INSERT INTO `image_entity` VALUES (1129, '/images/product/286_1.jpg', 'Z80012');
INSERT INTO `image_entity` VALUES (1130, '/images/product/72_1.jpg', 'Y81269F');
INSERT INTO `image_entity` VALUES (1131, '/images/product/123_3.jpg', 'D1399');
INSERT INTO `image_entity` VALUES (1132, '/images/product/247_4.jpg', 'J03832');
INSERT INTO `image_entity` VALUES (1133, '/images/product/35_4.jpg', 'C633015I');
INSERT INTO `image_entity` VALUES (1134, '/images/product/282_2.jpg', 'Z08562');
INSERT INTO `image_entity` VALUES (1135, '/images/product/283_2.jpg', 'Z09312');
INSERT INTO `image_entity` VALUES (1136, '/images/product/181_3.jpg', 'D27072');
INSERT INTO `image_entity` VALUES (1137, '/images/product/130_2.jpg', 'D10452A');
INSERT INTO `image_entity` VALUES (1138, '/images/product/256_4.jpg', 'Z10772');
INSERT INTO `image_entity` VALUES (1139, '/images/product/115_1.jpg', 'D07609');
INSERT INTO `image_entity` VALUES (1140, '/images/product/125_1.jpg', 'D10012');
INSERT INTO `image_entity` VALUES (1141, '/images/product/101_1.jpg', 'D11089');
INSERT INTO `image_entity` VALUES (1142, '/images/product/261_2.jpg', 'Z09152');
INSERT INTO `image_entity` VALUES (1143, '/images/product/85_3.jpg', 'D80062');
INSERT INTO `image_entity` VALUES (1144, '/images/product/49_1.jpg', 'V301005D');
INSERT INTO `image_entity` VALUES (1145, '/images/product/103_4.jpg', 'D11132B');
INSERT INTO `image_entity` VALUES (1146, '/images/product/71_3.jpg', 'Y81269');
INSERT INTO `image_entity` VALUES (1147, '/images/product/195_3.jpg', 'D05879');
INSERT INTO `image_entity` VALUES (1148, '/images/product/146_3.jpg', 'D09942A');
INSERT INTO `image_entity` VALUES (1149, '/images/product/141_3.jpg', 'D11552');
INSERT INTO `image_entity` VALUES (1150, '/images/product/281_2.jpg', 'Z09042');
INSERT INTO `image_entity` VALUES (1151, '/images/product/272_4.jpg', 'Z08832');
INSERT INTO `image_entity` VALUES (1152, '/images/product/209_1.jpg', 'AD09202');
INSERT INTO `image_entity` VALUES (1153, '/images/product/284_1.jpg', 'Z08612');
INSERT INTO `image_entity` VALUES (1154, '/images/product/181_4.jpg', 'D27072');
INSERT INTO `image_entity` VALUES (1155, '/images/product/258_1.jpg', 'Z10552B');
INSERT INTO `image_entity` VALUES (1156, '/images/product/135_3.jpg', 'D10142');
INSERT INTO `image_entity` VALUES (1157, '/images/product/25_2.jpg', 'V611008H');
INSERT INTO `image_entity` VALUES (1158, '/images/product/278_3.jpg', 'Z09612B');
INSERT INTO `image_entity` VALUES (1159, '/images/product/116_4.jpg', 'D08742A');
INSERT INTO `image_entity` VALUES (1160, '/images/product/21_2.jpg', 'V612018C');
INSERT INTO `image_entity` VALUES (1161, '/images/product/185_1.jpg', 'D03322');
INSERT INTO `image_entity` VALUES (1162, '/images/product/277_1.jpg', 'Z09612A');
INSERT INTO `image_entity` VALUES (1163, '/images/product/93_1.jpg', 'D11622');
INSERT INTO `image_entity` VALUES (1164, '/images/product/283_4.jpg', 'Z09312');
INSERT INTO `image_entity` VALUES (1165, '/images/product/260_2.jpg', 'Z09812');
INSERT INTO `image_entity` VALUES (1166, '/images/product/294_3.jpg', 'Z06372');
INSERT INTO `image_entity` VALUES (1167, '/images/product/174_1.jpg', 'D09942B');
INSERT INTO `image_entity` VALUES (1168, '/images/product/231_4.jpg', 'J04272');
INSERT INTO `image_entity` VALUES (1169, '/images/product/248_4.jpg', 'J06672');
INSERT INTO `image_entity` VALUES (1170, '/images/product/11_4.jpg', 'V641007');
INSERT INTO `image_entity` VALUES (1171, '/images/product/238_2.jpg', 'J03332');
INSERT INTO `image_entity` VALUES (1172, '/images/product/68_3.jpg', 'V301011C');
INSERT INTO `image_entity` VALUES (1173, '/images/product/37_1.jpg', 'C52461C');
INSERT INTO `image_entity` VALUES (1174, '/images/product/119_1.jpg', 'D10382');
INSERT INTO `image_entity` VALUES (1175, '/images/product/235_3.jpg', 'J03112');
INSERT INTO `image_entity` VALUES (1176, '/images/product/122_1.jpg', 'D09852');
INSERT INTO `image_entity` VALUES (1177, '/images/product/205_3.jpg', 'AD09492B');
INSERT INTO `image_entity` VALUES (1178, '/images/product/233_4.jpg', 'J01752');
INSERT INTO `image_entity` VALUES (1179, '/images/product/106_4.jpg', 'D32169A');
INSERT INTO `image_entity` VALUES (1180, '/images/product/229_3.jpg', 'SM11282');
INSERT INTO `image_entity` VALUES (1181, '/images/product/168_4.jpg', 'D10742');
INSERT INTO `image_entity` VALUES (1182, '/images/product/101_4.jpg', 'D11089');
INSERT INTO `image_entity` VALUES (1183, '/images/product/84_4.jpg', 'D80412');
INSERT INTO `image_entity` VALUES (1184, '/images/product/24_2.jpg', 'V631009D');
INSERT INTO `image_entity` VALUES (1185, '/images/product/195_2.jpg', 'D05879');
INSERT INTO `image_entity` VALUES (1186, '/images/product/200_1.jpg', 'D05529');
INSERT INTO `image_entity` VALUES (1187, '/images/product/140_4.jpg', 'D09432C');
INSERT INTO `image_entity` VALUES (1188, '/images/product/161_1.jpg', 'D12492');
INSERT INTO `image_entity` VALUES (1189, '/images/product/78_4.jpg', 'C78189C');
INSERT INTO `image_entity` VALUES (1190, '/images/product/30_1.jpg', 'V644002C');
INSERT INTO `image_entity` VALUES (1191, '/images/product/159_2.jpg', 'D11609');
INSERT INTO `image_entity` VALUES (1192, '/images/product/147_1.jpg', 'D10372');
INSERT INTO `image_entity` VALUES (1193, '/images/product/246_2.jpg', 'J32522');
INSERT INTO `image_entity` VALUES (1194, '/images/product/74_2.jpg', 'Y720002');
INSERT INTO `image_entity` VALUES (1195, '/images/product/290_2.jpg', 'Z16981');
INSERT INTO `image_entity` VALUES (1196, '/images/product/230_4.jpg', 'SM09822');
INSERT INTO `image_entity` VALUES (1197, '/images/product/41_3.jpg', 'V351014');
INSERT INTO `image_entity` VALUES (1198, '/images/product/220_4.jpg', 'TS11859');
INSERT INTO `image_entity` VALUES (1199, '/images/product/235_4.jpg', 'J03112');
INSERT INTO `image_entity` VALUES (1200, '/images/product/110_4.jpg', 'D05162');
INSERT INTO `image_entity` VALUES (1201, '/images/product/173_1.jpg', 'D10452B');
INSERT INTO `image_entity` VALUES (1202, '/images/product/114_4.jpg', 'D31632');
INSERT INTO `image_entity` VALUES (1203, '/images/product/171_3.jpg', 'D04932');
INSERT INTO `image_entity` VALUES (1204, '/images/product/152_3.jpg', 'D10972');
INSERT INTO `image_entity` VALUES (1205, '/images/product/193_3.jpg', 'D09322B');
INSERT INTO `image_entity` VALUES (1206, '/images/product/204_2.jpg', 'AD09492A');
INSERT INTO `image_entity` VALUES (1207, '/images/product/3_4.jpg', 'V611020C');
INSERT INTO `image_entity` VALUES (1208, '/images/product/175_4.jpg', 'D10602B');
INSERT INTO `image_entity` VALUES (1209, '/images/product/271_2.jpg', 'Z08992');
INSERT INTO `image_entity` VALUES (1210, '/images/product/136_3.jpg', 'D10169');
INSERT INTO `image_entity` VALUES (1211, '/images/product/272_3.jpg', 'Z08832');
INSERT INTO `image_entity` VALUES (1212, '/images/product/203_4.jpg', 'AD11449');
INSERT INTO `image_entity` VALUES (1213, '/images/product/56_1.jpg', 'C101015C');
INSERT INTO `image_entity` VALUES (1214, '/images/product/44_4.jpg', 'V331017C');
INSERT INTO `image_entity` VALUES (1215, '/images/product/84_3.jpg', 'D80412');
INSERT INTO `image_entity` VALUES (1216, '/images/product/9_3.jpg', 'V631010C');
INSERT INTO `image_entity` VALUES (1217, '/images/product/160_2.jpg', 'D60232A');
INSERT INTO `image_entity` VALUES (1218, '/images/product/62_1.jpg', 'Y33407A');
INSERT INTO `image_entity` VALUES (1219, '/images/product/118_3.jpg', 'D08742B');
INSERT INTO `image_entity` VALUES (1220, '/images/product/53_2.jpg', 'V401007C');
INSERT INTO `image_entity` VALUES (1221, '/images/product/95_4.jpg', 'D11469');
INSERT INTO `image_entity` VALUES (1222, '/images/product/199_1.jpg', 'D06202');
INSERT INTO `image_entity` VALUES (1223, '/images/product/44_2.jpg', 'V331017C');
INSERT INTO `image_entity` VALUES (1224, '/images/product/165_1.jpg', 'D60232B');
INSERT INTO `image_entity` VALUES (1225, '/images/product/56_2.jpg', 'C101015C');
INSERT INTO `image_entity` VALUES (1226, '/images/product/191_1.jpg', 'D04222');
INSERT INTO `image_entity` VALUES (1227, '/images/product/28_1.jpg', 'V612017C');
INSERT INTO `image_entity` VALUES (1228, '/images/product/275_4.jpg', 'Z10152');
INSERT INTO `image_entity` VALUES (1229, '/images/product/40_4.jpg', 'C58828C');
INSERT INTO `image_entity` VALUES (1230, '/images/product/129_3.jpg', 'D10022');
INSERT INTO `image_entity` VALUES (1231, '/images/product/21_3.jpg', 'V612018C');
INSERT INTO `image_entity` VALUES (1232, '/images/product/295_1.jpg', 'Z06042');
INSERT INTO `image_entity` VALUES (1233, '/images/product/297_3.jpg', 'Z05722');
INSERT INTO `image_entity` VALUES (1234, '/images/product/13_4.jpg', 'V641009');
INSERT INTO `image_entity` VALUES (1235, '/images/product/121_3.jpg', 'D09622');
INSERT INTO `image_entity` VALUES (1236, '/images/product/76_4.jpg', 'Y720003');
INSERT INTO `image_entity` VALUES (1237, '/images/product/63_2.jpg', 'Y33407B');
INSERT INTO `image_entity` VALUES (1238, '/images/product/30_2.jpg', 'V644002C');
INSERT INTO `image_entity` VALUES (1239, '/images/product/9_2.jpg', 'V631010C');
INSERT INTO `image_entity` VALUES (1240, '/images/product/75_2.jpg', 'V710009C');
INSERT INTO `image_entity` VALUES (1241, '/images/product/152_2.jpg', 'D10972');
INSERT INTO `image_entity` VALUES (1242, '/images/product/263_3.jpg', 'Z67052B');
INSERT INTO `image_entity` VALUES (1243, '/images/product/35_3.jpg', 'C633015I');
INSERT INTO `image_entity` VALUES (1244, '/images/product/190_3.jpg', 'D05692');
INSERT INTO `image_entity` VALUES (1245, '/images/product/5_1.jpg', 'V621007H');
INSERT INTO `image_entity` VALUES (1246, '/images/product/286_4.jpg', 'Z80012');
INSERT INTO `image_entity` VALUES (1247, '/images/product/248_3.jpg', 'J06672');
INSERT INTO `image_entity` VALUES (1248, '/images/product/194_1.jpg', 'D06942');
INSERT INTO `image_entity` VALUES (1249, '/images/product/77_3.jpg', 'E730001');
INSERT INTO `image_entity` VALUES (1250, '/images/product/40_2.jpg', 'C58828C');
INSERT INTO `image_entity` VALUES (1251, '/images/product/222_4.jpg', 'TS10042');
INSERT INTO `image_entity` VALUES (1252, '/images/product/105_3.jpg', 'D29652');
INSERT INTO `image_entity` VALUES (1253, '/images/product/211_1.jpg', 'AD08662');
INSERT INTO `image_entity` VALUES (1254, '/images/product/39_2.jpg', 'C633006C');
INSERT INTO `image_entity` VALUES (1255, '/images/product/234_1.jpg', 'J02242');
INSERT INTO `image_entity` VALUES (1256, '/images/product/252_1.jpg', 'J31772');
INSERT INTO `image_entity` VALUES (1257, '/images/product/130_4.jpg', 'D10452A');
INSERT INTO `image_entity` VALUES (1258, '/images/product/178_2.jpg', 'D23852');
INSERT INTO `image_entity` VALUES (1259, '/images/product/1_1.jpg', 'V611021D');
INSERT INTO `image_entity` VALUES (1260, '/images/product/27_2.jpg', 'V641004C');
INSERT INTO `image_entity` VALUES (1261, '/images/product/206_1.jpg', 'AD09262A');
INSERT INTO `image_entity` VALUES (1262, '/images/product/209_2.jpg', 'AD09202');
INSERT INTO `image_entity` VALUES (1263, '/images/product/250_1.jpg', 'J04322');
INSERT INTO `image_entity` VALUES (1264, '/images/product/124_4.jpg', 'D10392');
INSERT INTO `image_entity` VALUES (1265, '/images/product/177_2.jpg', 'D30312');
INSERT INTO `image_entity` VALUES (1266, '/images/product/240_3.jpg', 'J33552');
INSERT INTO `image_entity` VALUES (1267, '/images/product/268_3.jpg', 'Z09722');
INSERT INTO `image_entity` VALUES (1268, '/images/product/116_2.jpg', 'D08742A');
INSERT INTO `image_entity` VALUES (1269, '/images/product/34_1.jpg', 'C613011');
INSERT INTO `image_entity` VALUES (1270, '/images/product/16_2.jpg', 'V631013');
INSERT INTO `image_entity` VALUES (1271, '/images/product/294_4.jpg', 'Z06372');
INSERT INTO `image_entity` VALUES (1272, '/images/product/64_1.jpg', 'E351001');
INSERT INTO `image_entity` VALUES (1273, '/images/product/128_2.jpg', 'D09962');
INSERT INTO `image_entity` VALUES (1274, '/images/product/86_4.jpg', 'D06982');
INSERT INTO `image_entity` VALUES (1275, '/images/product/2_4.jpg', 'V614006C');
INSERT INTO `image_entity` VALUES (1276, '/images/product/156_1.jpg', 'D10312');
INSERT INTO `image_entity` VALUES (1277, '/images/product/192_4.jpg', 'D02232');
INSERT INTO `image_entity` VALUES (1278, '/images/product/46_4.jpg', 'V331006');
INSERT INTO `image_entity` VALUES (1279, '/images/product/116_1.jpg', 'D08742A');
INSERT INTO `image_entity` VALUES (1280, '/images/product/38_3.jpg', 'C633005C');
INSERT INTO `image_entity` VALUES (1281, '/images/product/120_4.jpg', 'D10102');
INSERT INTO `image_entity` VALUES (1282, '/images/product/91_1.jpg', 'D12052');
INSERT INTO `image_entity` VALUES (1283, '/images/product/276_2.jpg', 'Z09752');
INSERT INTO `image_entity` VALUES (1284, '/images/product/158_2.jpg', 'D11292A');
INSERT INTO `image_entity` VALUES (1285, '/images/product/250_2.jpg', 'J04322');
INSERT INTO `image_entity` VALUES (1286, '/images/product/120_3.jpg', 'D10102');
INSERT INTO `image_entity` VALUES (1287, '/images/product/60_2.jpg', 'H301016C');
INSERT INTO `image_entity` VALUES (1288, '/images/product/116_3.jpg', 'D08742A');
INSERT INTO `image_entity` VALUES (1289, '/images/product/174_2.jpg', 'D09942B');
INSERT INTO `image_entity` VALUES (1290, '/images/product/247_3.jpg', 'J03832');
INSERT INTO `image_entity` VALUES (1291, '/images/product/272_2.jpg', 'Z08832');
INSERT INTO `image_entity` VALUES (1292, '/images/product/189_2.jpg', 'D06442');
INSERT INTO `image_entity` VALUES (1293, '/images/product/173_4.jpg', 'D10452B');
INSERT INTO `image_entity` VALUES (1294, '/images/product/276_3.jpg', 'Z09752');
INSERT INTO `image_entity` VALUES (1295, '/images/product/186_3.jpg', 'D07342');
INSERT INTO `image_entity` VALUES (1296, '/images/product/7_1.jpg', 'V611016C');
INSERT INTO `image_entity` VALUES (1297, '/images/product/254_1.jpg', 'Z11212');
INSERT INTO `image_entity` VALUES (1298, '/images/product/285_4.jpg', 'Z80322');
INSERT INTO `image_entity` VALUES (1299, '/images/product/240_4.jpg', 'J33552');
INSERT INTO `image_entity` VALUES (1300, '/images/product/133_1.jpg', 'D07132');
INSERT INTO `image_entity` VALUES (1301, '/images/product/253_1.jpg', 'Z11222');
INSERT INTO `image_entity` VALUES (1302, '/images/product/81_4.jpg', 'H331013C');
INSERT INTO `image_entity` VALUES (1303, '/images/product/75_1.jpg', 'V710009C');
INSERT INTO `image_entity` VALUES (1304, '/images/product/202_4.jpg', 'AD11069');
INSERT INTO `image_entity` VALUES (1305, '/images/product/16_1.jpg', 'V631013');
INSERT INTO `image_entity` VALUES (1306, '/images/product/25_4.jpg', 'V611008H');
INSERT INTO `image_entity` VALUES (1307, '/images/product/258_3.jpg', 'Z10552B');
INSERT INTO `image_entity` VALUES (1308, '/images/product/120_1.jpg', 'D10102');
INSERT INTO `image_entity` VALUES (1309, '/images/product/277_4.jpg', 'Z09612A');
INSERT INTO `image_entity` VALUES (1310, '/images/product/36_4.jpg', 'C624001C');
INSERT INTO `image_entity` VALUES (1311, '/images/product/128_1.jpg', 'D09962');
INSERT INTO `image_entity` VALUES (1312, '/images/product/125_2.jpg', 'D10012');
INSERT INTO `image_entity` VALUES (1313, '/images/product/17_3.jpg', 'V641006');
INSERT INTO `image_entity` VALUES (1314, '/images/product/292_1.jpg', 'Z80182');
INSERT INTO `image_entity` VALUES (1315, '/images/product/23_2.jpg', 'V624002D');
INSERT INTO `image_entity` VALUES (1316, '/images/product/168_1.jpg', 'D10742');
INSERT INTO `image_entity` VALUES (1317, '/images/product/169_1.jpg', 'D10312B');
INSERT INTO `image_entity` VALUES (1318, '/images/product/123_1.jpg', 'D1399');
INSERT INTO `image_entity` VALUES (1319, '/images/product/191_4.jpg', 'D04222');
INSERT INTO `image_entity` VALUES (1320, '/images/product/210_3.jpg', 'AD08852');
INSERT INTO `image_entity` VALUES (1321, '/images/product/193_4.jpg', 'D09322B');
INSERT INTO `image_entity` VALUES (1322, '/images/product/286_2.jpg', 'Z80012');
INSERT INTO `image_entity` VALUES (1323, '/images/product/22_3.jpg', 'V601008C');
INSERT INTO `image_entity` VALUES (1324, '/images/product/67_4.jpg', 'V850009');
INSERT INTO `image_entity` VALUES (1325, '/images/product/219_2.jpg', 'TS10902');
INSERT INTO `image_entity` VALUES (1326, '/images/product/271_1.jpg', 'Z08992');
INSERT INTO `image_entity` VALUES (1327, '/images/product/67_2.jpg', 'V850009');
INSERT INTO `image_entity` VALUES (1328, '/images/product/232_3.jpg', 'J01192');
INSERT INTO `image_entity` VALUES (1329, '/images/product/206_3.jpg', 'AD09262A');
INSERT INTO `image_entity` VALUES (1330, '/images/product/106_3.jpg', 'D32169A');
INSERT INTO `image_entity` VALUES (1331, '/images/product/270_4.jpg', 'Z09122');
INSERT INTO `image_entity` VALUES (1332, '/images/product/76_5.jpg', 'Y720003');
INSERT INTO `image_entity` VALUES (1333, '/images/product/282_3.jpg', 'Z08562');
INSERT INTO `image_entity` VALUES (1334, '/images/product/239_1.jpg', 'J00652');
INSERT INTO `image_entity` VALUES (1335, '/images/product/237_3.jpg', 'J34192');
INSERT INTO `image_entity` VALUES (1336, '/images/product/112_1.jpg', 'D26692');
INSERT INTO `image_entity` VALUES (1337, '/images/product/261_1.jpg', 'Z09152');
INSERT INTO `image_entity` VALUES (1338, '/images/product/118_1.jpg', 'D08742B');
INSERT INTO `image_entity` VALUES (1339, '/images/product/169_4.jpg', 'D10312B');
INSERT INTO `image_entity` VALUES (1340, '/images/product/241_3.jpg', 'J33282');
INSERT INTO `image_entity` VALUES (1341, '/images/product/67_1.jpg', 'V850009');
INSERT INTO `image_entity` VALUES (1342, '/images/product/215_3.jpg', 'AD01822B');
INSERT INTO `image_entity` VALUES (1343, '/images/product/82_3.jpg', 'V710014D');
INSERT INTO `image_entity` VALUES (1344, '/images/product/54_2.jpg', 'V331011C');
INSERT INTO `image_entity` VALUES (1345, '/images/product/249_4.jpg', 'J06452');
INSERT INTO `image_entity` VALUES (1346, '/images/product/244_4.jpg', 'J05242');
INSERT INTO `image_entity` VALUES (1347, '/images/product/260_1.jpg', 'Z09812');
INSERT INTO `image_entity` VALUES (1348, '/images/product/104_2.jpg', 'D32299');
INSERT INTO `image_entity` VALUES (1349, '/images/product/59_4.jpg', 'H101026C');
INSERT INTO `image_entity` VALUES (1350, '/images/product/183_3.jpg', 'D06662');
INSERT INTO `image_entity` VALUES (1351, '/images/product/188_4.jpg', 'D06602');
INSERT INTO `image_entity` VALUES (1352, '/images/product/103_3.jpg', 'D11132B');
INSERT INTO `image_entity` VALUES (1353, '/images/product/118_4.jpg', 'D08742B');
INSERT INTO `image_entity` VALUES (1354, '/images/product/60_3.jpg', 'H301016C');
INSERT INTO `image_entity` VALUES (1355, '/images/product/220_3.jpg', 'TS11859');
INSERT INTO `image_entity` VALUES (1356, '/images/product/110_3.jpg', 'D05162');
INSERT INTO `image_entity` VALUES (1357, '/images/product/41_1.jpg', 'V351014');
INSERT INTO `image_entity` VALUES (1358, '/images/product/193_2.jpg', 'D09322B');
INSERT INTO `image_entity` VALUES (1359, '/images/product/178_3.jpg', 'D23852');
INSERT INTO `image_entity` VALUES (1360, '/images/product/127_2.jpg', 'D09762');
INSERT INTO `image_entity` VALUES (1361, '/images/product/72_2.jpg', 'Y81269F');
INSERT INTO `image_entity` VALUES (1362, '/images/product/114_3.jpg', 'D31632');
INSERT INTO `image_entity` VALUES (1363, '/images/product/13_3.jpg', 'V641009');
INSERT INTO `image_entity` VALUES (1364, '/images/product/201_2.jpg', 'AD11499');
INSERT INTO `image_entity` VALUES (1365, '/images/product/147_4.jpg', 'D10372');
INSERT INTO `image_entity` VALUES (1366, '/images/product/54_3.jpg', 'V331011C');
INSERT INTO `image_entity` VALUES (1367, '/images/product/42_1.jpg', 'V850004C');
INSERT INTO `image_entity` VALUES (1368, '/images/product/232_1.jpg', 'J01192');
INSERT INTO `image_entity` VALUES (1369, '/images/product/84_2.jpg', 'D80412');
INSERT INTO `image_entity` VALUES (1370, '/images/product/141_1.jpg', 'D11552');
INSERT INTO `image_entity` VALUES (1371, '/images/product/89_2.jpg', 'D64102');
INSERT INTO `image_entity` VALUES (1372, '/images/product/52_2.jpg', 'V101019C');
INSERT INTO `image_entity` VALUES (1373, '/images/product/38_2.jpg', 'C633005C');
INSERT INTO `image_entity` VALUES (1374, '/images/product/292_3.jpg', 'Z80182');
INSERT INTO `image_entity` VALUES (1375, '/images/product/184_4.jpg', 'D05862');
INSERT INTO `image_entity` VALUES (1376, '/images/product/183_2.jpg', 'D06662');
INSERT INTO `image_entity` VALUES (1377, '/images/product/124_1.jpg', 'D10392');
INSERT INTO `image_entity` VALUES (1378, '/images/product/24_3.jpg', 'V631009D');
INSERT INTO `image_entity` VALUES (1379, '/images/product/31_3.jpg', 'V611007C');
INSERT INTO `image_entity` VALUES (1380, '/images/product/120_2.jpg', 'D10102');
INSERT INTO `image_entity` VALUES (1381, '/images/product/257_2.jpg', 'Z10552A');
INSERT INTO `image_entity` VALUES (1382, '/images/product/118_2.jpg', 'D08742B');
INSERT INTO `image_entity` VALUES (1383, '/images/product/231_2.jpg', 'J04272');
INSERT INTO `image_entity` VALUES (1384, '/images/product/30_3.jpg', 'V644002C');
INSERT INTO `image_entity` VALUES (1385, '/images/product/64_2.jpg', 'E351001');
INSERT INTO `image_entity` VALUES (1386, '/images/product/23_4.jpg', 'V624002D');
INSERT INTO `image_entity` VALUES (1387, '/images/product/139_3.jpg', 'D09432B');
INSERT INTO `image_entity` VALUES (1388, '/images/product/124_2.jpg', 'D10392');
INSERT INTO `image_entity` VALUES (1389, '/images/product/204_3.jpg', 'AD09492A');
INSERT INTO `image_entity` VALUES (1390, '/images/product/271_3.jpg', 'Z08992');
INSERT INTO `image_entity` VALUES (1391, '/images/product/258_4.jpg', 'Z10552B');
INSERT INTO `image_entity` VALUES (1392, '/images/product/144_1.jpg', 'D10602A');
INSERT INTO `image_entity` VALUES (1393, '/images/product/245_4.jpg', 'J02162');
INSERT INTO `image_entity` VALUES (1394, '/images/product/139_2.jpg', 'D09432B');
INSERT INTO `image_entity` VALUES (1395, '/images/product/12_3.jpg', 'V331006H');
INSERT INTO `image_entity` VALUES (1396, '/images/product/283_1.jpg', 'Z09312');
INSERT INTO `image_entity` VALUES (1397, '/images/product/162_2.jpg', 'D10442');
INSERT INTO `image_entity` VALUES (1398, '/images/product/99_4.jpg', 'D11029A');
INSERT INTO `image_entity` VALUES (1399, '/images/product/33_3.jpg', 'V601005C');
INSERT INTO `image_entity` VALUES (1400, '/images/product/11_2.jpg', 'V641007');
INSERT INTO `image_entity` VALUES (1401, '/images/product/92_4.jpg', 'D12049');
INSERT INTO `image_entity` VALUES (1402, '/images/product/54_4.jpg', 'V331011C');
INSERT INTO `image_entity` VALUES (1403, '/images/product/197_2.jpg', 'D08202');
INSERT INTO `image_entity` VALUES (1404, '/images/product/8_1.jpg', 'V611017H');
INSERT INTO `image_entity` VALUES (1405, '/images/product/6_4.jpg', 'V631020H');
INSERT INTO `image_entity` VALUES (1406, '/images/product/240_2.jpg', 'J33552');
INSERT INTO `image_entity` VALUES (1407, '/images/product/209_4.jpg', 'AD09202');
INSERT INTO `image_entity` VALUES (1408, '/images/product/3_2.jpg', 'V611020C');
INSERT INTO `image_entity` VALUES (1409, '/images/product/34_3.jpg', 'C613011');
INSERT INTO `image_entity` VALUES (1410, '/images/product/149_4.jpg', 'D60362A');
INSERT INTO `image_entity` VALUES (1411, '/images/product/143_1.jpg', 'D10002');
INSERT INTO `image_entity` VALUES (1412, '/images/product/124_3.jpg', 'D10392');
INSERT INTO `image_entity` VALUES (1413, '/images/product/269_3.jpg', 'Z09292');
INSERT INTO `image_entity` VALUES (1414, '/images/product/229_1.jpg', 'SM11282');
INSERT INTO `image_entity` VALUES (1415, '/images/product/208_1.jpg', 'AD09222');
INSERT INTO `image_entity` VALUES (1416, '/images/product/129_2.jpg', 'D10022');
INSERT INTO `image_entity` VALUES (1417, '/images/product/281_4.jpg', 'Z09042');
INSERT INTO `image_entity` VALUES (1418, '/images/product/2_2.jpg', 'V614006C');
INSERT INTO `image_entity` VALUES (1419, '/images/product/231_1.jpg', 'J04272');
INSERT INTO `image_entity` VALUES (1420, '/images/product/207_3.jpg', 'AD09262B');
INSERT INTO `image_entity` VALUES (1421, '/images/product/100_3.jpg', 'D11029B');
INSERT INTO `image_entity` VALUES (1422, '/images/product/198_2.jpg', 'D07592');
INSERT INTO `image_entity` VALUES (1423, '/images/product/93_3.jpg', 'D11622');
INSERT INTO `image_entity` VALUES (1424, '/images/product/47_2.jpg', 'V352002');
INSERT INTO `image_entity` VALUES (1425, '/images/product/175_2.jpg', 'D10602B');
INSERT INTO `image_entity` VALUES (1426, '/images/product/254_3.jpg', 'Z11212');
INSERT INTO `image_entity` VALUES (1427, '/images/product/182_4.jpg', 'D06952');
INSERT INTO `image_entity` VALUES (1428, '/images/product/11_3.jpg', 'V641007');
INSERT INTO `image_entity` VALUES (1429, '/images/product/61_3.jpg', 'H111013C');
INSERT INTO `image_entity` VALUES (1430, '/images/product/10_2.jpg', 'V621006');
INSERT INTO `image_entity` VALUES (1431, '/images/product/97_2.jpg', 'D11149');
INSERT INTO `image_entity` VALUES (1432, '/images/product/170_3.jpg', 'D11292C');
INSERT INTO `image_entity` VALUES (1433, '/images/product/200_3.jpg', 'D05529');
INSERT INTO `image_entity` VALUES (1434, '/images/product/195_4.jpg', 'D05879');
INSERT INTO `image_entity` VALUES (1435, '/images/product/46_1.jpg', 'V331006');
INSERT INTO `image_entity` VALUES (1436, '/images/product/172_3.jpg', 'D02032');
INSERT INTO `image_entity` VALUES (1437, '/images/product/142_2.jpg', 'D10932');
INSERT INTO `image_entity` VALUES (1438, '/images/product/189_4.jpg', 'D06442');
INSERT INTO `image_entity` VALUES (1439, '/images/product/9_1.jpg', 'V631010C');
INSERT INTO `image_entity` VALUES (1440, '/images/product/125_3.jpg', 'D10012');
INSERT INTO `image_entity` VALUES (1441, '/images/product/86_3.jpg', 'D06982');
INSERT INTO `image_entity` VALUES (1442, '/images/product/212_3.jpg', 'AD08632');
INSERT INTO `image_entity` VALUES (1443, '/images/product/190_1.jpg', 'D05692');
INSERT INTO `image_entity` VALUES (1444, '/images/product/285_2.jpg', 'Z80322');
INSERT INTO `image_entity` VALUES (1445, '/images/product/261_3.jpg', 'Z09152');
INSERT INTO `image_entity` VALUES (1446, '/images/product/259_3.jpg', 'Z10212');
INSERT INTO `image_entity` VALUES (1447, '/images/product/41_4.jpg', 'V351014');
INSERT INTO `image_entity` VALUES (1448, '/images/product/65_2.jpg', 'Y331002');
INSERT INTO `image_entity` VALUES (1449, '/images/product/109_2.jpg', 'D11722');
INSERT INTO `image_entity` VALUES (1450, '/images/product/89_3.jpg', 'D64102');
INSERT INTO `image_entity` VALUES (1451, '/images/product/95_2.jpg', 'D11469');
INSERT INTO `image_entity` VALUES (1452, '/images/product/227_3.jpg', 'SM08532');
INSERT INTO `image_entity` VALUES (1453, '/images/product/295_3.jpg', 'Z06042');
INSERT INTO `image_entity` VALUES (1454, '/images/product/191_3.jpg', 'D04222');
INSERT INTO `image_entity` VALUES (1455, '/images/product/75_4.jpg', 'V710009C');
INSERT INTO `image_entity` VALUES (1456, '/images/product/287_3.jpg', 'Z08132');
INSERT INTO `image_entity` VALUES (1457, '/images/product/82_4.jpg', 'V710014D');
INSERT INTO `image_entity` VALUES (1458, '/images/product/278_4.jpg', 'Z09612B');
INSERT INTO `image_entity` VALUES (1459, '/images/product/210_4.jpg', 'AD08852');
INSERT INTO `image_entity` VALUES (1460, '/images/product/42_3.jpg', 'V850004C');
INSERT INTO `image_entity` VALUES (1461, '/images/product/107_1.jpg', 'D32169B');
INSERT INTO `image_entity` VALUES (1462, '/images/product/88_2.jpg', 'D02452');
INSERT INTO `image_entity` VALUES (1463, '/images/product/119_2.jpg', 'D10382');
INSERT INTO `image_entity` VALUES (1464, '/images/product/134_1.jpg', 'D10072');
INSERT INTO `image_entity` VALUES (1465, '/images/product/247_1.jpg', 'J03832');
INSERT INTO `image_entity` VALUES (1466, '/images/product/123_2.jpg', 'D1399');
INSERT INTO `image_entity` VALUES (1467, '/images/product/222_3.jpg', 'TS10042');
INSERT INTO `image_entity` VALUES (1468, '/images/product/243_2.jpg', 'J04242');
INSERT INTO `image_entity` VALUES (1469, '/images/product/96_3.jpg', 'D11159');
INSERT INTO `image_entity` VALUES (1470, '/images/product/113_3.jpg', 'D30722');
INSERT INTO `image_entity` VALUES (1471, '/images/product/66_1.jpg', 'Z16011A');
INSERT INTO `image_entity` VALUES (1472, '/images/product/213_3.jpg', 'AD00472');
INSERT INTO `image_entity` VALUES (1473, '/images/product/102_4.jpg', 'D11119');
INSERT INTO `image_entity` VALUES (1474, '/images/product/236_2.jpg', 'J04232');
INSERT INTO `image_entity` VALUES (1475, '/images/product/200_2.jpg', 'D05529');
INSERT INTO `image_entity` VALUES (1476, '/images/product/174_3.jpg', 'D09942B');
INSERT INTO `image_entity` VALUES (1477, '/images/product/117_1.jpg', 'D29162');
INSERT INTO `image_entity` VALUES (1478, '/images/product/293_3.jpg', 'Z08122');
INSERT INTO `image_entity` VALUES (1479, '/images/product/117_4.jpg', 'D29162');
INSERT INTO `image_entity` VALUES (1480, '/images/product/59_5.jpg', 'H101026C');
INSERT INTO `image_entity` VALUES (1481, '/images/product/171_1.jpg', 'D04932');
INSERT INTO `image_entity` VALUES (1482, '/images/product/87_4.jpg', 'D03862');
INSERT INTO `image_entity` VALUES (1483, '/images/product/7_4.jpg', 'V611016C');
INSERT INTO `image_entity` VALUES (1484, '/images/product/210_2.jpg', 'AD08852');
INSERT INTO `image_entity` VALUES (1485, '/images/product/219_1.jpg', 'TS10902');
INSERT INTO `image_entity` VALUES (1486, '/images/product/171_2.jpg', 'D04932');
INSERT INTO `image_entity` VALUES (1487, '/images/product/55_4.jpg', 'C13115C');
INSERT INTO `image_entity` VALUES (1488, '/images/product/146_1.jpg', 'D09942A');
INSERT INTO `image_entity` VALUES (1489, '/images/product/281_1.jpg', 'Z09042');
INSERT INTO `image_entity` VALUES (1490, '/images/product/288_2.jpg', 'Z08492');
INSERT INTO `image_entity` VALUES (1491, '/images/product/202_2.jpg', 'AD11069');
INSERT INTO `image_entity` VALUES (1492, '/images/product/71_4.jpg', 'Y81269');
INSERT INTO `image_entity` VALUES (1493, '/images/product/127_4.jpg', 'D09762');
INSERT INTO `image_entity` VALUES (1494, '/images/product/179_1.jpg', 'D20522');
INSERT INTO `image_entity` VALUES (1495, '/images/product/20_3.jpg', 'V611010D');
INSERT INTO `image_entity` VALUES (1496, '/images/product/190_4.jpg', 'D05692');
INSERT INTO `image_entity` VALUES (1497, '/images/product/219_4.jpg', 'TS10902');
INSERT INTO `image_entity` VALUES (1498, '/images/product/273_1.jpg', 'Z06402');
INSERT INTO `image_entity` VALUES (1499, '/images/product/107_4.jpg', 'D32169B');
INSERT INTO `image_entity` VALUES (1500, '/images/product/77_2.jpg', 'E730001');
INSERT INTO `image_entity` VALUES (1501, '/images/product/263_1.jpg', 'Z67052B');
INSERT INTO `image_entity` VALUES (1502, '/images/product/32_2.jpg', 'V611014C');
INSERT INTO `image_entity` VALUES (1503, '/images/product/135_1.jpg', 'D10142');
INSERT INTO `image_entity` VALUES (1504, '/images/product/68_1.jpg', 'V301011C');
INSERT INTO `image_entity` VALUES (1505, '/images/product/158_4.jpg', 'D11292A');
INSERT INTO `image_entity` VALUES (1506, '/images/product/300_4.jpg', 'Z04892');
INSERT INTO `image_entity` VALUES (1507, '/images/product/150_1.jpg', 'D62052A');
INSERT INTO `image_entity` VALUES (1508, '/images/product/220_2.jpg', 'TS11859');
INSERT INTO `image_entity` VALUES (1509, '/images/product/43_3.jpg', 'V301007D');
INSERT INTO `image_entity` VALUES (1510, '/images/product/249_1.jpg', 'J06452');
INSERT INTO `image_entity` VALUES (1511, '/images/product/230_2.jpg', 'SM09822');
INSERT INTO `image_entity` VALUES (1512, '/images/product/58_2.jpg', 'H101027C');
INSERT INTO `image_entity` VALUES (1513, '/images/product/164_3.jpg', 'D60362B');
INSERT INTO `image_entity` VALUES (1514, '/images/product/130_1.jpg', 'D10452A');
INSERT INTO `image_entity` VALUES (1515, '/images/product/16_4.jpg', 'V631013');
INSERT INTO `image_entity` VALUES (1516, '/images/product/25_1.jpg', 'V611008H');
INSERT INTO `image_entity` VALUES (1517, '/images/product/95_1.jpg', 'D11469');
INSERT INTO `image_entity` VALUES (1518, '/images/product/51_1.jpg', 'V800009C');
INSERT INTO `image_entity` VALUES (1519, '/images/product/207_1.jpg', 'AD09262B');
INSERT INTO `image_entity` VALUES (1520, '/images/product/292_2.jpg', 'Z80182');
INSERT INTO `image_entity` VALUES (1521, '/images/product/70_2.jpg', 'V301006C');
INSERT INTO `image_entity` VALUES (1522, '/images/product/78_1.jpg', 'C78189C');
INSERT INTO `image_entity` VALUES (1523, '/images/product/18_1.jpg', 'V604004');
INSERT INTO `image_entity` VALUES (1524, '/images/product/109_4.jpg', 'D11722');
INSERT INTO `image_entity` VALUES (1525, '/images/product/280_4.jpg', 'Z08642');
INSERT INTO `image_entity` VALUES (1526, '/images/product/142_4.jpg', 'D10932');
INSERT INTO `image_entity` VALUES (1527, '/images/product/90_1.jpg', 'D12092');
INSERT INTO `image_entity` VALUES (1528, '/images/product/26_2.jpg', 'V631012D');
INSERT INTO `image_entity` VALUES (1529, '/images/product/184_3.jpg', 'D05862');
INSERT INTO `image_entity` VALUES (1530, '/images/product/255_1.jpg', 'Z10852');
INSERT INTO `image_entity` VALUES (1531, '/images/product/221_1.jpg', 'TS10642A');
INSERT INTO `image_entity` VALUES (1532, '/images/product/141_2.jpg', 'D11552');
INSERT INTO `image_entity` VALUES (1533, '/images/product/205_1.jpg', 'AD09492B');
INSERT INTO `image_entity` VALUES (1534, '/images/product/236_4.jpg', 'J04232');
INSERT INTO `image_entity` VALUES (1535, '/images/product/166_4.jpg', 'D11922');
INSERT INTO `image_entity` VALUES (1536, '/images/product/10_3.jpg', 'V621006');
INSERT INTO `image_entity` VALUES (1537, '/images/product/166_3.jpg', 'D11922');
INSERT INTO `image_entity` VALUES (1538, '/images/product/44_3.jpg', 'V331017C');
INSERT INTO `image_entity` VALUES (1539, '/images/product/43_1.jpg', 'V301007D');
INSERT INTO `image_entity` VALUES (1540, '/images/product/233_1.jpg', 'J01752');
INSERT INTO `image_entity` VALUES (1541, '/images/product/288_3.jpg', 'Z08492');
INSERT INTO `image_entity` VALUES (1542, '/images/product/215_2.jpg', 'AD01822B');
INSERT INTO `image_entity` VALUES (1543, '/images/product/92_2.jpg', 'D12049');
INSERT INTO `image_entity` VALUES (1544, '/images/product/134_3.jpg', 'D10072');
INSERT INTO `image_entity` VALUES (1545, '/images/product/46_3.jpg', 'V331006');
INSERT INTO `image_entity` VALUES (1546, '/images/product/32_1.jpg', 'V611014C');
INSERT INTO `image_entity` VALUES (1547, '/images/product/261_4.jpg', 'Z09152');
INSERT INTO `image_entity` VALUES (1548, '/images/product/225_2.jpg', 'TS10132');
INSERT INTO `image_entity` VALUES (1549, '/images/product/48_3.jpg', 'V401008C');
INSERT INTO `image_entity` VALUES (1550, '/images/product/153_2.jpg', 'D60102');
INSERT INTO `image_entity` VALUES (1551, '/images/product/288_1.jpg', 'Z08492');
INSERT INTO `image_entity` VALUES (1552, '/images/product/259_1.jpg', 'Z10212');
INSERT INTO `image_entity` VALUES (1553, '/images/product/226_3.jpg', 'TS08872');
INSERT INTO `image_entity` VALUES (1554, '/images/product/81_1.jpg', 'H331013C');
INSERT INTO `image_entity` VALUES (1555, '/images/product/20_1.jpg', 'V611010D');
INSERT INTO `image_entity` VALUES (1556, '/images/product/267_3.jpg', 'Z09832');
INSERT INTO `image_entity` VALUES (1557, '/images/product/106_2.jpg', 'D32169A');
INSERT INTO `image_entity` VALUES (1558, '/images/product/93_4.jpg', 'D11622');
INSERT INTO `image_entity` VALUES (1559, '/images/product/135_2.jpg', 'D10142');
INSERT INTO `image_entity` VALUES (1560, '/images/product/265_4.jpg', 'Z10192');
INSERT INTO `image_entity` VALUES (1561, '/images/product/293_1.jpg', 'Z08122');
INSERT INTO `image_entity` VALUES (1562, '/images/product/70_3.jpg', 'V301006C');
INSERT INTO `image_entity` VALUES (1563, '/images/product/299_3.jpg', 'Z05552');
INSERT INTO `image_entity` VALUES (1564, '/images/product/262_3.jpg', 'Z67052A');
INSERT INTO `image_entity` VALUES (1565, '/images/product/180_1.jpg', 'D12682');
INSERT INTO `image_entity` VALUES (1566, '/images/product/69_3.jpg', 'V301010D');
INSERT INTO `image_entity` VALUES (1567, '/images/product/288_4.jpg', 'Z08492');
INSERT INTO `image_entity` VALUES (1568, '/images/product/35_1.jpg', 'C633015I');
INSERT INTO `image_entity` VALUES (1569, '/images/product/158_3.jpg', 'D11292A');
INSERT INTO `image_entity` VALUES (1570, '/images/product/289_1.jpg', 'Z25372');
INSERT INTO `image_entity` VALUES (1571, '/images/product/281_3.jpg', 'Z09042');
INSERT INTO `image_entity` VALUES (1572, '/images/product/243_3.jpg', 'J04242');
INSERT INTO `image_entity` VALUES (1573, '/images/product/112_2.jpg', 'D26692');
INSERT INTO `image_entity` VALUES (1574, '/images/product/46_2.jpg', 'V331006');
INSERT INTO `image_entity` VALUES (1575, '/images/product/55_3.jpg', 'C13115C');
INSERT INTO `image_entity` VALUES (1576, '/images/product/167_1.jpg', 'D11292B');
INSERT INTO `image_entity` VALUES (1577, '/images/product/88_4.jpg', 'D02452');
INSERT INTO `image_entity` VALUES (1578, '/images/product/47_1.jpg', 'V352002');
INSERT INTO `image_entity` VALUES (1579, '/images/product/298_1.jpg', 'Z05592');
INSERT INTO `image_entity` VALUES (1580, '/images/product/296_3.jpg', 'Z05992');
INSERT INTO `image_entity` VALUES (1581, '/images/product/83_2.jpg', 'V730006');
INSERT INTO `image_entity` VALUES (1582, '/images/product/225_3.jpg', 'TS10132');
INSERT INTO `image_entity` VALUES (1583, '/images/product/29_4.jpg', 'V631006C');
INSERT INTO `image_entity` VALUES (1584, '/images/product/39_4.jpg', 'C633006C');
INSERT INTO `image_entity` VALUES (1585, '/images/product/171_4.jpg', 'D04932');
INSERT INTO `image_entity` VALUES (1586, '/images/product/214_2.jpg', 'AD01822A');
INSERT INTO `image_entity` VALUES (1587, '/images/product/222_2.jpg', 'TS10042');
INSERT INTO `image_entity` VALUES (1588, '/images/product/126_3.jpg', 'D09322A');
INSERT INTO `image_entity` VALUES (1589, '/images/product/233_3.jpg', 'J01752');
INSERT INTO `image_entity` VALUES (1590, '/images/product/28_4.jpg', 'V612017C');
INSERT INTO `image_entity` VALUES (1591, '/images/product/129_4.jpg', 'D10022');
INSERT INTO `image_entity` VALUES (1592, '/images/product/157_4.jpg', 'D10942');
INSERT INTO `image_entity` VALUES (1593, '/images/product/53_1.jpg', 'V401007C');
INSERT INTO `image_entity` VALUES (1594, '/images/product/119_4.jpg', 'D10382');
INSERT INTO `image_entity` VALUES (1595, '/images/product/166_1.jpg', 'D11922');
INSERT INTO `image_entity` VALUES (1596, '/images/product/74_3.jpg', 'Y720002');
INSERT INTO `image_entity` VALUES (1597, '/images/product/155_2.jpg', 'D60292');
INSERT INTO `image_entity` VALUES (1598, '/images/product/59_2.jpg', 'H101026C');
INSERT INTO `image_entity` VALUES (1599, '/images/product/267_1.jpg', 'Z09832');
INSERT INTO `image_entity` VALUES (1600, '/images/product/61_4.jpg', 'H111013C');
INSERT INTO `image_entity` VALUES (1601, '/images/product/19_2.jpg', 'V601009D');
INSERT INTO `image_entity` VALUES (1602, '/images/product/266_4.jpg', 'Z09862');
INSERT INTO `image_entity` VALUES (1603, '/images/product/3_3.jpg', 'V611020C');
INSERT INTO `image_entity` VALUES (1604, '/images/product/7_5.jpg', 'V611016C');
INSERT INTO `image_entity` VALUES (1605, '/images/product/183_1.jpg', 'D06662');
INSERT INTO `image_entity` VALUES (1606, '/images/product/127_1.jpg', 'D09762');
INSERT INTO `image_entity` VALUES (1607, '/images/product/24_4.jpg', 'V631009D');
INSERT INTO `image_entity` VALUES (1608, '/images/product/145_1.jpg', 'D09382');
INSERT INTO `image_entity` VALUES (1609, '/images/product/245_2.jpg', 'J02162');
INSERT INTO `image_entity` VALUES (1610, '/images/product/187_4.jpg', 'D07492');
INSERT INTO `image_entity` VALUES (1611, '/images/product/122_3.jpg', 'D09852');
INSERT INTO `image_entity` VALUES (1612, '/images/product/99_1.jpg', 'D11029A');
INSERT INTO `image_entity` VALUES (1613, '/images/product/291_1.jpg', 'Z05732');
INSERT INTO `image_entity` VALUES (1614, '/images/product/108_4.jpg', 'D31182');
INSERT INTO `image_entity` VALUES (1615, '/images/product/219_3.jpg', 'TS10902');
INSERT INTO `image_entity` VALUES (1616, '/images/product/51_2.jpg', 'V800009C');
INSERT INTO `image_entity` VALUES (1617, '/images/product/216_4.jpg', 'AD00132');
INSERT INTO `image_entity` VALUES (1618, '/images/product/201_4.jpg', 'AD11499');
INSERT INTO `image_entity` VALUES (1619, '/images/product/240_1.jpg', 'J33552');
INSERT INTO `image_entity` VALUES (1620, '/images/product/55_2.jpg', 'C13115C');
INSERT INTO `image_entity` VALUES (1621, '/images/product/140_3.jpg', 'D09432C');
INSERT INTO `image_entity` VALUES (1622, '/images/product/64_4.jpg', 'E351001');
INSERT INTO `image_entity` VALUES (1623, '/images/product/50_1.jpg', 'V331007C');
INSERT INTO `image_entity` VALUES (1624, '/images/product/32_4.jpg', 'V611014C');
INSERT INTO `image_entity` VALUES (1625, '/images/product/244_1.jpg', 'J05242');
INSERT INTO `image_entity` VALUES (1626, '/images/product/132_2.jpg', 'D33942');
INSERT INTO `image_entity` VALUES (1627, '/images/product/6_3.jpg', 'V631020H');
INSERT INTO `image_entity` VALUES (1628, '/images/product/181_1.jpg', 'D27072');
INSERT INTO `image_entity` VALUES (1629, '/images/product/10_1.jpg', 'V621006');
INSERT INTO `image_entity` VALUES (1630, '/images/product/94_3.jpg', 'D11099');
INSERT INTO `image_entity` VALUES (1631, '/images/product/148_4.jpg', 'D12199');
INSERT INTO `image_entity` VALUES (1632, '/images/product/117_2.jpg', 'D29162');
INSERT INTO `image_entity` VALUES (1633, '/images/product/86_1.jpg', 'D06982');
INSERT INTO `image_entity` VALUES (1634, '/images/product/296_4.jpg', 'Z05992');
INSERT INTO `image_entity` VALUES (1635, '/images/product/31_4.jpg', 'V611007C');
INSERT INTO `image_entity` VALUES (1636, '/images/product/144_3.jpg', 'D10602A');
INSERT INTO `image_entity` VALUES (1637, '/images/product/246_1.jpg', 'J32522');
INSERT INTO `image_entity` VALUES (1638, '/images/product/279_3.jpg', 'Z10882');
INSERT INTO `image_entity` VALUES (1639, '/images/product/29_2.jpg', 'V631006C');
INSERT INTO `image_entity` VALUES (1640, '/images/product/3_5.jpg', 'V611020C');
INSERT INTO `image_entity` VALUES (1641, '/images/product/99_3.jpg', 'D11029A');
INSERT INTO `image_entity` VALUES (1642, '/images/product/159_4.jpg', 'D11609');
INSERT INTO `image_entity` VALUES (1643, '/images/product/128_4.jpg', 'D09962');
INSERT INTO `image_entity` VALUES (1644, '/images/product/58_4.jpg', 'H101027C');
INSERT INTO `image_entity` VALUES (1645, '/images/product/262_1.jpg', 'Z67052A');
INSERT INTO `image_entity` VALUES (1646, '/images/product/276_4.jpg', 'Z09752');
INSERT INTO `image_entity` VALUES (1647, '/images/product/112_3.jpg', 'D26692');
INSERT INTO `image_entity` VALUES (1648, '/images/product/36_1.jpg', 'C624001C');
INSERT INTO `image_entity` VALUES (1649, '/images/product/161_4.jpg', 'D12492');
INSERT INTO `image_entity` VALUES (1650, '/images/product/76_3.jpg', 'Y720003');
INSERT INTO `image_entity` VALUES (1651, '/images/product/45_1.jpg', 'V301010');
INSERT INTO `image_entity` VALUES (1652, '/images/product/266_1.jpg', 'Z09862');
INSERT INTO `image_entity` VALUES (1653, '/images/product/56_3.jpg', 'C101015C');
INSERT INTO `image_entity` VALUES (1654, '/images/product/198_3.jpg', 'D07592');
INSERT INTO `image_entity` VALUES (1655, '/images/product/192_3.jpg', 'D02232');
INSERT INTO `image_entity` VALUES (1656, '/images/product/157_1.jpg', 'D10942');
INSERT INTO `image_entity` VALUES (1657, '/images/product/149_2.jpg', 'D60362A');
INSERT INTO `image_entity` VALUES (1658, '/images/product/143_3.jpg', 'D10002');
INSERT INTO `image_entity` VALUES (1659, '/images/product/111_4.jpg', 'D23212');
INSERT INTO `image_entity` VALUES (1660, '/images/product/138_4.jpg', 'D09432A');
INSERT INTO `image_entity` VALUES (1661, '/images/product/85_4.jpg', 'D80062');
INSERT INTO `image_entity` VALUES (1662, '/images/product/126_4.jpg', 'D09322A');
INSERT INTO `image_entity` VALUES (1663, '/images/product/299_4.jpg', 'Z05552');
INSERT INTO `image_entity` VALUES (1664, '/images/product/294_1.jpg', 'Z06372');
INSERT INTO `image_entity` VALUES (1665, '/images/product/190_2.jpg', 'D05692');
INSERT INTO `image_entity` VALUES (1666, '/images/product/89_4.jpg', 'D64102');
INSERT INTO `image_entity` VALUES (1667, '/images/product/237_1.jpg', 'J34192');
INSERT INTO `image_entity` VALUES (1668, '/images/product/198_4.jpg', 'D07592');
INSERT INTO `image_entity` VALUES (1669, '/images/product/205_4.jpg', 'AD09492B');
INSERT INTO `image_entity` VALUES (1670, '/images/product/263_2.jpg', 'Z67052B');
INSERT INTO `image_entity` VALUES (1671, '/images/product/7_3.jpg', 'V611016C');
INSERT INTO `image_entity` VALUES (1672, '/images/product/223_2.jpg', 'TS10302');
INSERT INTO `image_entity` VALUES (1673, '/images/product/183_4.jpg', 'D06662');
INSERT INTO `image_entity` VALUES (1674, '/images/product/170_4.jpg', 'D11292C');
INSERT INTO `image_entity` VALUES (1675, '/images/product/176_2.jpg', 'D44832');
INSERT INTO `image_entity` VALUES (1676, '/images/product/37_4.jpg', 'C52461C');
INSERT INTO `image_entity` VALUES (1677, '/images/product/251_1.jpg', 'J00142');
INSERT INTO `image_entity` VALUES (1678, '/images/product/94_1.jpg', 'D11099');
INSERT INTO `image_entity` VALUES (1679, '/images/product/73_2.jpg', 'V700005');
INSERT INTO `image_entity` VALUES (1680, '/images/product/235_2.jpg', 'J03112');
INSERT INTO `image_entity` VALUES (1681, '/images/product/66_2.jpg', 'Z16011A');
INSERT INTO `image_entity` VALUES (1682, '/images/product/187_1.jpg', 'D07492');
INSERT INTO `image_entity` VALUES (1683, '/images/product/27_4.jpg', 'V641004C');
INSERT INTO `image_entity` VALUES (1684, '/images/product/80_3.jpg', 'H301016CA');
INSERT INTO `image_entity` VALUES (1685, '/images/product/87_2.jpg', 'D03862');
INSERT INTO `image_entity` VALUES (1686, '/images/product/216_1.jpg', 'AD00132');
INSERT INTO `image_entity` VALUES (1687, '/images/product/24_1.jpg', 'V631009D');
INSERT INTO `image_entity` VALUES (1688, '/images/product/80_2.jpg', 'H301016CA');
INSERT INTO `image_entity` VALUES (1689, '/images/product/228_3.jpg', 'SM13822');
INSERT INTO `image_entity` VALUES (1690, '/images/product/85_1.jpg', 'D80062');
INSERT INTO `image_entity` VALUES (1691, '/images/product/104_4.jpg', 'D32299');
INSERT INTO `image_entity` VALUES (1692, '/images/product/82_1.jpg', 'V710014D');
INSERT INTO `image_entity` VALUES (1693, '/images/product/244_2.jpg', 'J05242');
INSERT INTO `image_entity` VALUES (1694, '/images/product/131_4.jpg', 'D10752');
INSERT INTO `image_entity` VALUES (1695, '/images/product/177_3.jpg', 'D30312');
INSERT INTO `image_entity` VALUES (1696, '/images/product/96_4.jpg', 'D11159');
INSERT INTO `image_entity` VALUES (1697, '/images/product/223_1.jpg', 'TS10302');
INSERT INTO `image_entity` VALUES (1698, '/images/product/269_1.jpg', 'Z09292');
INSERT INTO `image_entity` VALUES (1699, '/images/product/291_2.jpg', 'Z05732');
INSERT INTO `image_entity` VALUES (1700, '/images/product/83_4.jpg', 'V730006');
INSERT INTO `image_entity` VALUES (1701, '/images/product/72_3.jpg', 'Y81269F');
INSERT INTO `image_entity` VALUES (1702, '/images/product/57_1.jpg', 'Y401014C');
INSERT INTO `image_entity` VALUES (1703, '/images/product/231_3.jpg', 'J04272');
INSERT INTO `image_entity` VALUES (1704, '/images/product/137_3.jpg', 'D10592');
INSERT INTO `image_entity` VALUES (1705, '/images/product/298_2.jpg', 'Z05592');
INSERT INTO `image_entity` VALUES (1706, '/images/product/88_3.jpg', 'D02452');
INSERT INTO `image_entity` VALUES (1707, '/images/product/276_1.jpg', 'Z09752');
INSERT INTO `image_entity` VALUES (1708, '/images/product/198_1.jpg', 'D07592');
INSERT INTO `image_entity` VALUES (1709, '/images/product/30_4.jpg', 'V644002C');
INSERT INTO `image_entity` VALUES (1710, '/images/product/199_2.jpg', 'D06202');
INSERT INTO `image_entity` VALUES (1711, '/images/product/78_2.jpg', 'C78189C');
INSERT INTO `image_entity` VALUES (1712, '/images/product/229_2.jpg', 'SM11282');
INSERT INTO `image_entity` VALUES (1713, '/images/product/249_2.jpg', 'J06452');
INSERT INTO `image_entity` VALUES (1714, '/images/product/97_4.jpg', 'D11149');
INSERT INTO `image_entity` VALUES (1715, '/images/product/77_1.jpg', 'E730001');
INSERT INTO `image_entity` VALUES (1716, '/images/product/264_4.jpg', 'Z10782');
INSERT INTO `image_entity` VALUES (1717, '/images/product/277_3.jpg', 'Z09612A');
INSERT INTO `image_entity` VALUES (1718, '/images/product/26_3.jpg', 'V631012D');
INSERT INTO `image_entity` VALUES (1719, '/images/product/184_1.jpg', 'D05862');
INSERT INTO `image_entity` VALUES (1720, '/images/product/211_3.jpg', 'AD08662');
INSERT INTO `image_entity` VALUES (1721, '/images/product/267_2.jpg', 'Z09832');
INSERT INTO `image_entity` VALUES (1722, '/images/product/249_3.jpg', 'J06452');
INSERT INTO `image_entity` VALUES (1723, '/images/product/33_2.jpg', 'V601005C');
INSERT INTO `image_entity` VALUES (1724, '/images/product/257_1.jpg', 'Z10552A');
INSERT INTO `image_entity` VALUES (1725, '/images/product/163_1.jpg', 'D10292');
INSERT INTO `image_entity` VALUES (1726, '/images/product/227_1.jpg', 'SM08532');
INSERT INTO `image_entity` VALUES (1727, '/images/product/228_1.jpg', 'SM13822');
INSERT INTO `image_entity` VALUES (1728, '/images/product/62_4.jpg', 'Y33407A');
INSERT INTO `image_entity` VALUES (1729, '/images/product/164_4.jpg', 'D60362B');
INSERT INTO `image_entity` VALUES (1730, '/images/product/106_1.jpg', 'D32169A');
INSERT INTO `image_entity` VALUES (1731, '/images/product/43_2.jpg', 'V301007D');
INSERT INTO `image_entity` VALUES (1732, '/images/product/186_1.jpg', 'D07342');
INSERT INTO `image_entity` VALUES (1733, '/images/product/108_2.jpg', 'D31182');
INSERT INTO `image_entity` VALUES (1734, '/images/product/14_2.jpg', 'V614004');
INSERT INTO `image_entity` VALUES (1735, '/images/product/4_2.jpg', 'V601016D');
INSERT INTO `image_entity` VALUES (1736, '/images/product/76_2.jpg', 'Y720003');
INSERT INTO `image_entity` VALUES (1737, '/images/product/275_1.jpg', 'Z10152');
INSERT INTO `image_entity` VALUES (1738, '/images/product/81_3.jpg', 'H331013C');
INSERT INTO `image_entity` VALUES (1739, '/images/product/98_2.jpg', 'D11132A');
INSERT INTO `image_entity` VALUES (1740, '/images/product/280_3.jpg', 'Z08642');
INSERT INTO `image_entity` VALUES (1741, '/images/product/174_4.jpg', 'D09942B');
INSERT INTO `image_entity` VALUES (1742, '/images/product/125_4.jpg', 'D10012');
INSERT INTO `image_entity` VALUES (1743, '/images/product/108_1.jpg', 'D31182');
INSERT INTO `image_entity` VALUES (1744, '/images/product/279_4.jpg', 'Z10882');
INSERT INTO `image_entity` VALUES (1745, '/images/product/61_2.jpg', 'H111013C');
INSERT INTO `image_entity` VALUES (1746, '/images/product/56_4.jpg', 'C101015C');
INSERT INTO `image_entity` VALUES (1747, '/images/product/168_3.jpg', 'D10742');
INSERT INTO `image_entity` VALUES (1748, '/images/product/271_4.jpg', 'Z08992');
INSERT INTO `image_entity` VALUES (1749, '/images/product/241_2.jpg', 'J33282');
INSERT INTO `image_entity` VALUES (1750, '/images/product/19_3.jpg', 'V601009D');
INSERT INTO `image_entity` VALUES (1751, '/images/product/113_4.jpg', 'D30722');
INSERT INTO `image_entity` VALUES (1752, '/images/product/23_3.jpg', 'V624002D');
INSERT INTO `image_entity` VALUES (1753, '/images/product/138_1.jpg', 'D09432A');
INSERT INTO `image_entity` VALUES (1754, '/images/product/178_1.jpg', 'D23852');
INSERT INTO `image_entity` VALUES (1755, '/images/product/232_2.jpg', 'J01192');
INSERT INTO `image_entity` VALUES (1756, '/images/product/160_4.jpg', 'D60232A');
INSERT INTO `image_entity` VALUES (1757, '/images/product/97_1.jpg', 'D11149');
INSERT INTO `image_entity` VALUES (1758, '/images/product/206_4.jpg', 'AD09262A');
INSERT INTO `image_entity` VALUES (1759, '/images/product/83_1.jpg', 'V730006');
INSERT INTO `image_entity` VALUES (1760, '/images/product/131_3.jpg', 'D10752');
INSERT INTO `image_entity` VALUES (1761, '/images/product/199_4.jpg', 'D06202');
INSERT INTO `image_entity` VALUES (1762, '/images/product/250_4.jpg', 'J04322');
INSERT INTO `image_entity` VALUES (1763, '/images/product/59_1.jpg', 'H101026C');
INSERT INTO `image_entity` VALUES (1764, '/images/product/78_3.jpg', 'C78189C');
INSERT INTO `image_entity` VALUES (1765, '/images/product/102_3.jpg', 'D11119');
INSERT INTO `image_entity` VALUES (1766, '/images/product/230_1.jpg', 'SM09822');
INSERT INTO `image_entity` VALUES (1767, '/images/product/299_2.jpg', 'Z05552');
INSERT INTO `image_entity` VALUES (1768, '/images/product/254_2.jpg', 'Z11212');
INSERT INTO `image_entity` VALUES (1769, '/images/product/153_1.jpg', 'D60102');
INSERT INTO `image_entity` VALUES (1770, '/images/product/245_3.jpg', 'J02162');
INSERT INTO `image_entity` VALUES (1771, '/images/product/138_2.jpg', 'D09432A');
INSERT INTO `image_entity` VALUES (1772, '/images/product/229_4.jpg', 'SM11282');
INSERT INTO `image_entity` VALUES (1773, '/images/product/43_4.jpg', 'V301007D');
INSERT INTO `image_entity` VALUES (1774, '/images/product/267_4.jpg', 'Z09832');
INSERT INTO `image_entity` VALUES (1775, '/images/product/115_2.jpg', 'D07609');
INSERT INTO `image_entity` VALUES (1776, '/images/product/182_1.jpg', 'D06952');
INSERT INTO `image_entity` VALUES (1777, '/images/product/14_1.jpg', 'V614004');
INSERT INTO `image_entity` VALUES (1778, '/images/product/65_3.jpg', 'Y331002');
INSERT INTO `image_entity` VALUES (1779, '/images/product/212_4.jpg', 'AD08632');
INSERT INTO `image_entity` VALUES (1780, '/images/product/157_2.jpg', 'D10942');
INSERT INTO `image_entity` VALUES (1781, '/images/product/165_4.jpg', 'D60232B');
INSERT INTO `image_entity` VALUES (1782, '/images/product/28_3.jpg', 'V612017C');
INSERT INTO `image_entity` VALUES (1783, '/images/product/22_1.jpg', 'V601008C');
INSERT INTO `image_entity` VALUES (1784, '/images/product/270_2.jpg', 'Z09122');
INSERT INTO `image_entity` VALUES (1785, '/images/product/12_1.jpg', 'V331006H');
INSERT INTO `image_entity` VALUES (1786, '/images/product/164_2.jpg', 'D60362B');
INSERT INTO `image_entity` VALUES (1787, '/images/product/100_4.jpg', 'D11029B');
INSERT INTO `image_entity` VALUES (1788, '/images/product/272_1.jpg', 'Z08832');
INSERT INTO `image_entity` VALUES (1789, '/images/product/257_3.jpg', 'Z10552A');
INSERT INTO `image_entity` VALUES (1790, '/images/product/218_2.jpg', 'TS11872');
INSERT INTO `image_entity` VALUES (1791, '/images/product/169_3.jpg', 'D10312B');
INSERT INTO `image_entity` VALUES (1792, '/images/product/89_1.jpg', 'D64102');
INSERT INTO `image_entity` VALUES (1793, '/images/product/73_4.jpg', 'V700005');
INSERT INTO `image_entity` VALUES (1794, '/images/product/259_2.jpg', 'Z10212');
INSERT INTO `image_entity` VALUES (1795, '/images/product/256_1.jpg', 'Z10772');
INSERT INTO `image_entity` VALUES (1796, '/images/product/48_1.jpg', 'V401008C');
INSERT INTO `image_entity` VALUES (1797, '/images/product/19_1.jpg', 'V601009D');
INSERT INTO `image_entity` VALUES (1798, '/images/product/15_1.jpg', 'V631008');
INSERT INTO `image_entity` VALUES (1799, '/images/product/140_2.jpg', 'D09432C');
INSERT INTO `image_entity` VALUES (1800, '/images/product/237_2.jpg', 'J34192');
INSERT INTO `image_entity` VALUES (1801, '/images/product/155_1.jpg', 'D60292');
INSERT INTO `image_entity` VALUES (1802, '/images/product/188_3.jpg', 'D06602');
INSERT INTO `image_entity` VALUES (1803, '/images/product/23_1.jpg', 'V624002D');
INSERT INTO `image_entity` VALUES (1804, '/images/product/217_1.jpg', 'AD27319');
INSERT INTO `image_entity` VALUES (1805, '/images/product/47_4.jpg', 'V352002');
INSERT INTO `image_entity` VALUES (1806, '/images/product/25_3.jpg', 'V611008H');
INSERT INTO `image_entity` VALUES (1807, '/images/product/224_1.jpg', 'TS10642B');
INSERT INTO `image_entity` VALUES (1808, '/images/product/177_1.jpg', 'D30312');
INSERT INTO `image_entity` VALUES (1809, '/images/product/152_1.jpg', 'D10972');
INSERT INTO `image_entity` VALUES (1810, '/images/product/131_1.jpg', 'D10752');
INSERT INTO `image_entity` VALUES (1811, '/images/product/93_2.jpg', 'D11622');
INSERT INTO `image_entity` VALUES (1812, '/images/product/245_1.jpg', 'J02162');
INSERT INTO `image_entity` VALUES (1813, '/images/product/58_1.jpg', 'H101027C');
INSERT INTO `image_entity` VALUES (1814, '/images/product/136_2.jpg', 'D10169');
INSERT INTO `image_entity` VALUES (1815, '/images/product/268_2.jpg', 'Z09722');
INSERT INTO `image_entity` VALUES (1816, '/images/product/211_2.jpg', 'AD08662');
INSERT INTO `image_entity` VALUES (1817, '/images/product/31_1.jpg', 'V611007C');
INSERT INTO `image_entity` VALUES (1818, '/images/product/132_1.jpg', 'D33942');
INSERT INTO `image_entity` VALUES (1819, '/images/product/101_2.jpg', 'D11089');
INSERT INTO `image_entity` VALUES (1820, '/images/product/18_3.jpg', 'V604004');
INSERT INTO `image_entity` VALUES (1821, '/images/product/159_3.jpg', 'D11609');
INSERT INTO `image_entity` VALUES (1822, '/images/product/107_3.jpg', 'D32169B');
INSERT INTO `image_entity` VALUES (1823, '/images/product/299_1.jpg', 'Z05552');
INSERT INTO `image_entity` VALUES (1824, '/images/product/163_4.jpg', 'D10292');
INSERT INTO `image_entity` VALUES (1825, '/images/product/216_2.jpg', 'AD00132');
INSERT INTO `image_entity` VALUES (1826, '/images/product/226_1.jpg', 'TS08872');
INSERT INTO `image_entity` VALUES (1827, '/images/product/294_2.jpg', 'Z06372');
INSERT INTO `image_entity` VALUES (1828, '/images/product/146_2.jpg', 'D09942A');
INSERT INTO `image_entity` VALUES (1829, '/images/product/144_2.jpg', 'D10602A');
INSERT INTO `image_entity` VALUES (1830, '/images/product/262_2.jpg', 'Z67052A');
INSERT INTO `image_entity` VALUES (1831, '/images/product/63_3.jpg', 'Y33407B');
INSERT INTO `image_entity` VALUES (1832, '/images/product/92_3.jpg', 'D12049');
INSERT INTO `image_entity` VALUES (1833, '/images/product/248_1.jpg', 'J06672');
INSERT INTO `image_entity` VALUES (1834, '/images/product/49_3.jpg', 'V301005D');
INSERT INTO `image_entity` VALUES (1835, '/images/product/236_1.jpg', 'J04232');
INSERT INTO `image_entity` VALUES (1836, '/images/product/239_2.jpg', 'J00652');
INSERT INTO `image_entity` VALUES (1837, '/images/product/296_1.jpg', 'Z05992');
INSERT INTO `image_entity` VALUES (1838, '/images/product/1_2.jpg', 'V611021D');
INSERT INTO `image_entity` VALUES (1839, '/images/product/13_2.jpg', 'V641009');
INSERT INTO `image_entity` VALUES (1840, '/images/product/242_2.jpg', 'J34342');
INSERT INTO `image_entity` VALUES (1841, '/images/product/15_3.jpg', 'V631008');
INSERT INTO `image_entity` VALUES (1842, '/images/product/194_3.jpg', 'D06942');
INSERT INTO `image_entity` VALUES (1843, '/images/product/208_4.jpg', 'AD09222');
INSERT INTO `image_entity` VALUES (1844, '/images/product/208_3.jpg', 'AD09222');
INSERT INTO `image_entity` VALUES (1845, '/images/product/210_1.jpg', 'AD08852');
INSERT INTO `image_entity` VALUES (1846, '/images/product/18_2.jpg', 'V604004');
INSERT INTO `image_entity` VALUES (1847, '/images/product/167_2.jpg', 'D11292B');
INSERT INTO `image_entity` VALUES (1848, '/images/product/79_1.jpg', 'C78191C');
INSERT INTO `image_entity` VALUES (1849, '/images/product/253_4.jpg', 'Z11222');
INSERT INTO `image_entity` VALUES (1850, '/images/product/218_3.jpg', 'TS11872');
INSERT INTO `image_entity` VALUES (1851, '/images/product/265_1.jpg', 'Z10192');
INSERT INTO `image_entity` VALUES (1852, '/images/product/22_4.jpg', 'V601008C');
INSERT INTO `image_entity` VALUES (1853, '/images/product/228_4.jpg', 'SM13822');
INSERT INTO `image_entity` VALUES (1854, '/images/product/107_2.jpg', 'D32169B');
INSERT INTO `image_entity` VALUES (1855, '/images/product/64_3.jpg', 'E351001');
INSERT INTO `image_entity` VALUES (1856, '/images/product/90_2.jpg', 'D12092');
INSERT INTO `image_entity` VALUES (1857, '/images/product/187_2.jpg', 'D07492');
INSERT INTO `image_entity` VALUES (1858, '/images/product/119_3.jpg', 'D10382');
INSERT INTO `image_entity` VALUES (1859, '/images/product/16_3.jpg', 'V631013');
INSERT INTO `image_entity` VALUES (1860, '/images/product/280_2.jpg', 'Z08642');
INSERT INTO `image_entity` VALUES (1861, '/images/product/196_3.jpg', 'D34152');
INSERT INTO `image_entity` VALUES (1862, '/images/product/201_1.jpg', 'AD11499');
INSERT INTO `image_entity` VALUES (1863, '/images/product/70_1.jpg', 'V301006C');
INSERT INTO `image_entity` VALUES (1864, '/images/product/161_3.jpg', 'D12492');
INSERT INTO `image_entity` VALUES (1865, '/images/product/33_4.jpg', 'V601005C');
INSERT INTO `image_entity` VALUES (1866, '/images/product/45_3.jpg', 'V301010');
INSERT INTO `image_entity` VALUES (1867, '/images/product/270_3.jpg', 'Z09122');
INSERT INTO `image_entity` VALUES (1868, '/images/product/37_3.jpg', 'C52461C');
INSERT INTO `image_entity` VALUES (1869, '/images/product/165_3.jpg', 'D60232B');
INSERT INTO `image_entity` VALUES (1870, '/images/product/243_1.jpg', 'J04242');
INSERT INTO `image_entity` VALUES (1871, '/images/product/170_1.jpg', 'D11292C');
INSERT INTO `image_entity` VALUES (1872, '/images/product/283_3.jpg', 'Z09312');
INSERT INTO `image_entity` VALUES (1873, '/images/product/161_2.jpg', 'D12492');
INSERT INTO `image_entity` VALUES (1874, '/images/product/255_2.jpg', 'Z10852');
INSERT INTO `image_entity` VALUES (1875, '/images/product/26_1.jpg', 'V631012D');
INSERT INTO `image_entity` VALUES (1876, '/images/product/6_1.jpg', 'V631020H');
INSERT INTO `image_entity` VALUES (1877, '/images/product/100_1.jpg', 'D11029B');
INSERT INTO `image_entity` VALUES (1878, '/images/product/259_4.jpg', 'Z10212');
INSERT INTO `image_entity` VALUES (1879, '/images/product/266_2.jpg', 'Z09862');
INSERT INTO `image_entity` VALUES (1880, '/images/product/35_2.jpg', 'C633015I');
INSERT INTO `image_entity` VALUES (1881, '/images/product/69_2.jpg', 'V301010D');
INSERT INTO `image_entity` VALUES (1882, '/images/product/69_1.jpg', 'V301010D');
INSERT INTO `image_entity` VALUES (1883, '/images/product/49_2.jpg', 'V301005D');
INSERT INTO `image_entity` VALUES (1884, '/images/product/86_2.jpg', 'D06982');
INSERT INTO `image_entity` VALUES (1885, '/images/product/212_1.jpg', 'AD08632');
INSERT INTO `image_entity` VALUES (1886, '/images/product/167_4.jpg', 'D11292B');
INSERT INTO `image_entity` VALUES (1887, '/images/product/289_3.jpg', 'Z25372');
INSERT INTO `image_entity` VALUES (1888, '/images/product/188_1.jpg', 'D06602');
INSERT INTO `image_entity` VALUES (1889, '/images/product/126_1.jpg', 'D09322A');
INSERT INTO `image_entity` VALUES (1890, '/images/product/42_2.jpg', 'V850004C');
INSERT INTO `image_entity` VALUES (1891, '/images/product/214_1.jpg', 'AD01822A');
INSERT INTO `image_entity` VALUES (1892, '/images/product/209_3.jpg', 'AD09202');
INSERT INTO `image_entity` VALUES (1893, '/images/product/60_1.jpg', 'H301016C');
INSERT INTO `image_entity` VALUES (1894, '/images/product/282_1.jpg', 'Z08562');
INSERT INTO `image_entity` VALUES (1895, '/images/product/36_3.jpg', 'C624001C');
INSERT INTO `image_entity` VALUES (1896, '/images/product/156_4.jpg', 'D10312');
INSERT INTO `image_entity` VALUES (1897, '/images/product/122_4.jpg', 'D09852');
INSERT INTO `image_entity` VALUES (1898, '/images/product/273_4.jpg', 'Z06402');
INSERT INTO `image_entity` VALUES (1899, '/images/product/182_3.jpg', 'D06952');
INSERT INTO `image_entity` VALUES (1900, '/images/product/166_2.jpg', 'D11922');
INSERT INTO `image_entity` VALUES (1901, '/images/product/74_1.jpg', 'Y720002');
INSERT INTO `image_entity` VALUES (1902, '/images/product/205_2.jpg', 'AD09492B');
INSERT INTO `image_entity` VALUES (1903, '/images/product/85_2.jpg', 'D80062');
INSERT INTO `image_entity` VALUES (1904, '/images/product/286_3.jpg', 'Z80012');
INSERT INTO `image_entity` VALUES (1905, '/images/product/203_2.jpg', 'AD11449');
INSERT INTO `image_entity` VALUES (1906, '/images/product/49_4.jpg', 'V301005D');
INSERT INTO `image_entity` VALUES (1907, '/images/product/212_2.jpg', 'AD08632');
INSERT INTO `image_entity` VALUES (1908, '/images/product/227_2.jpg', 'SM08532');
INSERT INTO `image_entity` VALUES (1909, '/images/product/142_3.jpg', 'D10932');
INSERT INTO `image_entity` VALUES (1910, '/images/product/90_3.jpg', 'D12092');
INSERT INTO `image_entity` VALUES (1911, '/images/product/277_2.jpg', 'Z09612A');
INSERT INTO `image_entity` VALUES (1912, '/images/product/144_4.jpg', 'D10602A');
INSERT INTO `image_entity` VALUES (1913, '/images/product/218_4.jpg', 'TS11872');
INSERT INTO `image_entity` VALUES (1914, '/images/product/152_4.jpg', 'D10972');
INSERT INTO `image_entity` VALUES (1915, '/images/product/84_1.jpg', 'D80412');
INSERT INTO `image_entity` VALUES (1916, '/images/product/32_3.jpg', 'V611014C');
INSERT INTO `image_entity` VALUES (1917, '/images/product/216_3.jpg', 'AD00132');
INSERT INTO `image_entity` VALUES (1918, '/images/product/213_1.jpg', 'AD00472');
INSERT INTO `image_entity` VALUES (1919, '/images/product/297_4.jpg', 'Z05722');
INSERT INTO `image_entity` VALUES (1920, '/images/product/269_2.jpg', 'Z09292');
INSERT INTO `image_entity` VALUES (1921, '/images/product/279_2.jpg', 'Z10882');
INSERT INTO `image_entity` VALUES (1922, '/images/product/225_4.jpg', 'TS10132');
INSERT INTO `image_entity` VALUES (1923, '/images/product/11_1.jpg', 'V641007');
INSERT INTO `image_entity` VALUES (1924, '/images/product/126_2.jpg', 'D09322A');
INSERT INTO `image_entity` VALUES (1925, '/images/product/204_1.jpg', 'AD09492A');
INSERT INTO `image_entity` VALUES (1926, '/images/product/4_1.jpg', 'V601016D');
INSERT INTO `image_entity` VALUES (1927, '/images/product/159_1.jpg', 'D11609');
INSERT INTO `image_entity` VALUES (1928, '/images/product/162_1.jpg', 'D10442');
INSERT INTO `image_entity` VALUES (1929, '/images/product/14_3.jpg', 'V614004');
INSERT INTO `image_entity` VALUES (1930, '/images/product/289_2.jpg', 'Z25372');
INSERT INTO `image_entity` VALUES (1931, '/images/product/250_3.jpg', 'J04322');
INSERT INTO `image_entity` VALUES (1932, '/images/product/108_3.jpg', 'D31182');
INSERT INTO `image_entity` VALUES (1933, '/images/product/186_4.jpg', 'D07342');
INSERT INTO `image_entity` VALUES (1934, '/images/product/39_3.jpg', 'C633006C');
INSERT INTO `image_entity` VALUES (1935, '/images/product/134_4.jpg', 'D10072');
INSERT INTO `image_entity` VALUES (1936, '/images/product/149_3.jpg', 'D60362A');
INSERT INTO `image_entity` VALUES (1937, '/images/product/242_1.jpg', 'J34342');
INSERT INTO `image_entity` VALUES (1938, '/images/product/137_2.jpg', 'D10592');
INSERT INTO `image_entity` VALUES (1939, '/images/product/197_1.jpg', 'D08202');
INSERT INTO `image_entity` VALUES (1940, '/images/product/274_2.jpg', 'Z10262');
INSERT INTO `image_entity` VALUES (1941, '/images/product/59_3.jpg', 'H101026C');
INSERT INTO `image_entity` VALUES (1942, '/images/product/226_2.jpg', 'TS08872');
INSERT INTO `image_entity` VALUES (1943, '/images/product/37_2.jpg', 'C52461C');
INSERT INTO `image_entity` VALUES (1944, '/images/product/189_1.jpg', 'D06442');
INSERT INTO `image_entity` VALUES (1945, '/images/product/300_3.jpg', 'Z04892');
INSERT INTO `image_entity` VALUES (1946, '/images/product/6_2.jpg', 'V631020H');
INSERT INTO `image_entity` VALUES (1947, '/images/product/17_2.jpg', 'V641006');
INSERT INTO `image_entity` VALUES (1948, '/images/product/98_4.jpg', 'D11132A');
INSERT INTO `image_entity` VALUES (1949, '/images/product/145_2.jpg', 'D09382');
INSERT INTO `image_entity` VALUES (1950, '/images/product/164_1.jpg', 'D60362B');
INSERT INTO `image_entity` VALUES (1951, '/images/product/17_1.jpg', 'V641006');
INSERT INTO `image_entity` VALUES (1952, '/images/product/284_2.jpg', 'Z08612');
INSERT INTO `image_entity` VALUES (1953, '/images/product/265_3.jpg', 'Z10192');
INSERT INTO `image_entity` VALUES (1954, '/images/product/202_3.jpg', 'AD11069');
INSERT INTO `image_entity` VALUES (1955, '/images/product/254_4.jpg', 'Z11212');
INSERT INTO `image_entity` VALUES (1956, '/images/product/170_2.jpg', 'D11292C');
INSERT INTO `image_entity` VALUES (1957, '/images/product/233_2.jpg', 'J01752');
INSERT INTO `image_entity` VALUES (1958, '/images/product/230_3.jpg', 'SM09822');
INSERT INTO `image_entity` VALUES (1959, '/images/product/297_1.jpg', 'Z05722');
INSERT INTO `image_entity` VALUES (1960, '/images/product/201_3.jpg', 'AD11499');
INSERT INTO `image_entity` VALUES (1961, '/images/product/140_1.jpg', 'D09432C');
INSERT INTO `image_entity` VALUES (1962, '/images/product/94_4.jpg', 'D11099');
INSERT INTO `image_entity` VALUES (1963, '/images/product/143_4.jpg', 'D10002');
INSERT INTO `image_entity` VALUES (1964, '/images/product/264_1.jpg', 'Z10782');
INSERT INTO `image_entity` VALUES (1965, '/images/product/48_2.jpg', 'V401008C');
INSERT INTO `image_entity` VALUES (1966, '/images/product/97_3.jpg', 'D11149');
INSERT INTO `image_entity` VALUES (1967, '/images/product/5_3.jpg', 'V621007H');
INSERT INTO `image_entity` VALUES (1968, '/images/product/148_1.jpg', 'D12199');
INSERT INTO `image_entity` VALUES (1969, '/images/product/45_2.jpg', 'V301010');
INSERT INTO `image_entity` VALUES (1970, '/images/product/2_1.jpg', 'V614006C');
INSERT INTO `image_entity` VALUES (1971, '/images/product/102_1.jpg', 'D11119');
INSERT INTO `image_entity` VALUES (1972, '/images/product/208_2.jpg', 'AD09222');
INSERT INTO `image_entity` VALUES (1973, '/images/product/77_4.jpg', 'E730001');
INSERT INTO `image_entity` VALUES (1974, '/images/product/172_2.jpg', 'D02032');
INSERT INTO `image_entity` VALUES (1975, '/images/product/204_4.jpg', 'AD09492A');
INSERT INTO `image_entity` VALUES (1976, '/images/product/213_2.jpg', 'AD00472');
INSERT INTO `image_entity` VALUES (1977, '/images/product/61_1.jpg', 'H111013C');
INSERT INTO `image_entity` VALUES (1978, '/images/product/109_1.jpg', 'D11722');
INSERT INTO `image_entity` VALUES (1979, '/images/product/290_1.jpg', 'Z16981');
INSERT INTO `image_entity` VALUES (1980, '/images/product/194_2.jpg', 'D06942');
INSERT INTO `image_entity` VALUES (1981, '/images/product/227_4.jpg', 'SM08532');
INSERT INTO `image_entity` VALUES (1982, '/images/product/162_3.jpg', 'D10442');
INSERT INTO `image_entity` VALUES (1983, '/images/product/101_3.jpg', 'D11089');
INSERT INTO `image_entity` VALUES (1984, '/images/product/91_2.jpg', 'D12052');
INSERT INTO `image_entity` VALUES (1985, '/images/product/235_1.jpg', 'J03112');
INSERT INTO `image_entity` VALUES (1986, '/images/product/181_2.jpg', 'D27072');
INSERT INTO `image_entity` VALUES (1987, '/images/product/199_3.jpg', 'D06202');
INSERT INTO `image_entity` VALUES (1988, '/images/product/83_3.jpg', 'V730006');
INSERT INTO `image_entity` VALUES (1989, '/images/product/12_4.jpg', 'V331006H');
INSERT INTO `image_entity` VALUES (1990, '/images/product/154_2.jpg', 'D62052B');
INSERT INTO `image_entity` VALUES (1991, '/images/product/44_1.jpg', 'V331017C');
INSERT INTO `image_entity` VALUES (1992, '/images/product/113_2.jpg', 'D30722');
INSERT INTO `image_entity` VALUES (1993, '/images/product/115_4.jpg', 'D07609');
INSERT INTO `image_entity` VALUES (1994, '/images/product/22_2.jpg', 'V601008C');
INSERT INTO `image_entity` VALUES (1995, '/images/product/127_3.jpg', 'D09762');
INSERT INTO `image_entity` VALUES (1996, '/images/product/206_2.jpg', 'AD09262A');
INSERT INTO `image_entity` VALUES (1997, '/images/product/269_4.jpg', 'Z09292');
INSERT INTO `image_entity` VALUES (1998, '/images/product/203_1.jpg', 'AD11449');
INSERT INTO `image_entity` VALUES (1999, '/images/product/62_2.jpg', 'Y33407A');
INSERT INTO `image_entity` VALUES (2000, '/images/product/8_3.jpg', 'V611017H');

-- ----------------------------
-- Table structure for local_branch_entity
-- ----------------------------
DROP TABLE IF EXISTS `local_branch_entity`;
CREATE TABLE `local_branch_entity`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of local_branch_entity
-- ----------------------------
INSERT INTO `local_branch_entity` VALUES (1, 'PARADA', 'PARADA', 'images/trademark/prada_logo.png');
INSERT INTO `local_branch_entity` VALUES (2, 'Burberry', 'Burberry', 'images/trademark/burberry_logo.png');
INSERT INTO `local_branch_entity` VALUES (3, 'BOSS', 'BOSS', 'images/trademark/boss_logo.png');
INSERT INTO `local_branch_entity` VALUES (4, 'Catier', 'Catier', 'images/trademark/catier_logo.png');
INSERT INTO `local_branch_entity` VALUES (5, 'Gucci', 'Gucci', 'images/trademark/gucci_logo.png');
INSERT INTO `local_branch_entity` VALUES (6, 'tiffeany&co', 'tiffeany&co', 'images/trademark/tiffany_co_logo.png');

-- ----------------------------
-- Table structure for order_detail_entity
-- ----------------------------
DROP TABLE IF EXISTS `order_detail_entity`;
CREATE TABLE `order_detail_entity`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `price` float NOT NULL,
  `quantity` int NOT NULL,
  `size` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `altDelete` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `idColorId` int NULL DEFAULT NULL,
  `idProductId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_2b54cbae40db0ae9a3e00883719`(`idProductId` ASC) USING BTREE,
  INDEX `FK_754d7aacf67ef331508525d6a60`(`idColorId` ASC) USING BTREE,
  CONSTRAINT `FK_2b54cbae40db0ae9a3e00883719` FOREIGN KEY (`idProductId`) REFERENCES `product_entity` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_754d7aacf67ef331508525d6a60` FOREIGN KEY (`idColorId`) REFERENCES `color_product_entity` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_detail_entity
-- ----------------------------

-- ----------------------------
-- Table structure for order_entity
-- ----------------------------
DROP TABLE IF EXISTS `order_entity`;
CREATE TABLE `order_entity`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `total` float NOT NULL,
  `status` int NOT NULL,
  `oderDate` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `idUserId` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_be748901408ec3801bc047cc5ae`(`idUserId` ASC) USING BTREE,
  CONSTRAINT `FK_be748901408ec3801bc047cc5ae` FOREIGN KEY (`idUserId`) REFERENCES `user_entity` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_entity
-- ----------------------------

-- ----------------------------
-- Table structure for product_entity
-- ----------------------------
DROP TABLE IF EXISTS `product_entity`;
CREATE TABLE `product_entity`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` float NOT NULL,
  `S` int NOT NULL,
  `M` int NOT NULL,
  `L` int NOT NULL,
  `XL` int NOT NULL,
  `idlocalbranchId` int NULL DEFAULT NULL,
  `idColectionId` int NULL DEFAULT NULL,
  `idParentId` int NULL DEFAULT NULL,
  `rating` float NOT NULL,
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `sale` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_195599a2a10760c2d95e16e5f49`(`idlocalbranchId` ASC) USING BTREE,
  INDEX `FK_e1ef529dd9922d9a9586b82b0e8`(`idColectionId` ASC) USING BTREE,
  INDEX `FK_0c2a82075daf3c59457044e0ce4`(`idParentId` ASC) USING BTREE,
  CONSTRAINT `FK_0c2a82075daf3c59457044e0ce4` FOREIGN KEY (`idParentId`) REFERENCES `tag_parent_entity` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_195599a2a10760c2d95e16e5f49` FOREIGN KEY (`idlocalbranchId`) REFERENCES `local_branch_entity` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_e1ef529dd9922d9a9586b82b0e8` FOREIGN KEY (`idColectionId`) REFERENCES `color_product_entity` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_entity
-- ----------------------------
INSERT INTO `product_entity` VALUES ('AD00132', 'A??o Da??i Ph????i Ho??a Ti????t', 1795000, 30, 30, 30, 0, 1, NULL, 3, 6, '2022-05-29 23:01:13.719185', 1);
INSERT INTO `product_entity` VALUES ('AD00472', 'A??o Da??i Ph????i Hoa Th??u', 1699000, 28, 28, 0, 28, 2, NULL, 3, 3, '2022-05-29 23:01:13.719185', 2);
INSERT INTO `product_entity` VALUES ('AD01822A', 'A??o Da??i ??o?? Ph????i Hoa Th??u', 1694000, 1, 0, 1, 1, 3, NULL, 3, 2, '2022-05-29 23:01:13.719185', 4);
INSERT INTO `product_entity` VALUES ('AD01822B', 'A??o Dai Ph????i Hoa Th??u', 1795000, 0, 21, 21, 21, 4, NULL, 3, 7, '2022-05-29 23:01:13.719185', 7);
INSERT INTO `product_entity` VALUES ('AD08632', 'A??o Da??i Tr????ng Tay B????ng', 1799000, 67, 67, 67, 67, 5, NULL, 3, 0, '2022-05-29 23:01:13.719185', 9);
INSERT INTO `product_entity` VALUES ('AD08662', 'A??o Da??i ??o?? Ph????i Hoa C????t', 1899000, 86, 86, 86, 86, 6, NULL, 3, 0, '2022-05-29 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('AD08852', 'A??o Da??i ??i??nh Hoa N????i', 1999000, 61, 61, 61, 61, 1, NULL, 3, 0, '2022-05-30 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('AD09202', 'A??o Da??i ??i??nhsHoa N????i', 1799000, 8, 8, 8, 8, 2, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('AD09222', 'A??o Da??i Xanh Thi????t K????', 1699000, 54, 54, 54, 54, 3, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('AD09262A', 'A??o Da??i Ph????i Hoa Th??u', 1859000, 49, 49, 49, 49, 4, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('AD09262B', 'A??o Da??i Ph????i Hoa Th??u', 1699000, 2, 2, 2, 2, 5, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('AD09492A', 'A??o Da??i Ca??ch T??n Da??ng Ng????n', 1859000, 61, 61, 61, 61, 6, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('AD09492B', 'A??o Da??i Ca??ch T??n Da??ng Ng????n', 1859000, 23, 23, 23, 23, 1, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('AD11069', 'A??o Da??i ??i??nh Hoa Sen', 1699000, 46, 46, 46, 46, 2, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('AD11449', 'A??o Da??i Hoa Xanh', 1759000, 93, 93, 93, 93, 3, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('AD11499', 'A??o Da??i G????m Hoa', 1299000, 58, 58, 58, 58, 4, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('AD27319', 'A??o Da??i Ph????i Hoa', 2592000, 39, 39, 39, 39, 5, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('C101015C', '??o S?? Mi Ch???t Li???u L???a Ki???u D??ng C??? ?????c D??i Tay H???a Ti???t L?? V??ng', 897000, 21, 21, 21, 21, 6, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('C13115C', '??o Ki???u D??ng Ng???nTay Thi???t K??? Th??u C??p Ng???c M??u ??en', 1297000, 98, 98, 98, 98, 1, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('C52461C', '?????m D??ng X??e Ki???u D??ng 2 D??y Ch???t Li???u Ren L?????i M??u ??en', 1697000, 63, 63, 63, 63, 2, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('C58828C', '?????m Maxi Ki???u D??ng Ng???n Tay M??u V??ng', 0, 45, 45, 45, 45, 3, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('C613011', '?????m D??ng ??m Ki???u D??ng S??t N??ch Thi???t K??? Tay B??o Ch???t Li???u Ren M??u ??en', 1597000, 22, 22, 22, 22, 4, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('C624001C', '?????m D??ng X??e Ki???u D??ng S??t N??ch Thi???t K??? V???t L???ch M??u Tr???ng', 1597000, 70, 70, 70, 70, 5, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('C633005C', '?????m D??ng X??e Ki???u D??ng 2 D??y Thi???t K??? Kim Tuy???n M??u ??en', 1797000, 14, 14, 14, 14, 6, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('C633006C', '?????m D??ng X??e Ki???u D??ng S??t N??ch Thi???t K??? Vai L???ch M??u V??ng', 0, 81, 81, 81, 81, 1, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('C633015I', '?????m D??ng X??e Ki???u D??ng Hai D??y Ch???t Li???u L???a Thi???t K??? B??o C??? Vai N?? M??u ??en', 1797000, 75, 75, 75, 75, 2, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('C78189C', 'Ch??n V??y D??ng X??e Seven.AM Ch???t Li???u Ren M??u ??en', 898000, 40, 40, 40, 40, 3, NULL, 5, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('C78191C', 'Ch??n V??y D??ng X??e Seven.AM H???a Ti???t Hoa N???i M??u V??ng Kim Tuy???n', 449000, 72, 72, 72, 72, 4, NULL, 5, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D02032', '??????m Thi????t K???? X????p Ly', 999000, 26, 26, 26, 26, 5, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D02232', '??????m ??en Thi????t K????', 1299000, 86, 86, 86, 86, 6, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D02452', '??????m Va??ng Tay Ru??', 999000, 69, 69, 69, 69, 1, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D03322', '??????m Cam ??i??nh Hoa 3D', 1159000, 22, 22, 22, 22, 2, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D03862', '??????m Su??ng ??o?? Ph????i Hoa 3D', 1399000, 60, 60, 60, 60, 3, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D04222', '??????m Ch????m Bi', 999000, 45, 45, 45, 45, 4, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D04932', '??????m ??m ??en', 1159000, 93, 93, 93, 93, 5, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D05162', '??????m Su??ng ??en', 1399000, 39, 39, 39, 39, 6, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D05529', '??????m Ti????c Xanh Kh??ng Tay', 1159000, 84, 84, 84, 84, 1, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D05692', '??????m Ho??a Ti????t', 1299000, 77, 77, 77, 77, 2, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D05862', '??????m ??en Kh??ng Tay', 1159000, 4, 4, 4, 4, 3, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D05879', '??????m ??en ??i??nh Hoa N????i', 1159000, 52, 52, 52, 52, 4, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D06202', '??????m ??u??i Ca?? X????p Ly', 1299000, 59, 59, 59, 59, 5, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D06442', '??????m Thi????t K????', 1199000, 84, 84, 84, 84, 6, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D06602', '??????m Hoa Nhi??', 1259000, 50, 50, 50, 50, 1, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D06662', '??????m MAXI Thi????t K????', 1199000, 91, 91, 91, 91, 2, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D06942', '??????m ??u??i Ca?? Th??u Hoa', 1299000, 68, 68, 68, 68, 3, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D06952', '??????m Thi????t K???? Ph????i Be??o', 1691000, 62, 62, 62, 62, 4, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D06982', '??????m ??en Ph????i Chi?? N????i', 1099000, 80, 80, 80, 80, 5, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D07132', '??????m Thi????t K????', 1652000, 6, 6, 6, 6, 6, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D07342', '??????m Su??ng Thi????t K????', 1159000, 3, 3, 3, 3, 1, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D07492', '??????m Hoa Thi????t K????', 999000, 62, 62, 62, 62, 2, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D07592', '??????m Su??ng Th??u Ho??a Ti????t', 699300, 36, 36, 36, 36, 3, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D07609', '??????m Thi????t K???? Th??u Hoa', 1755000, 28, 28, 28, 28, 4, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D08202', '??????m Su??ng Tay B????ng', 1159000, 39, 39, 39, 39, 5, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D08742A', '??????m Thi????t K???? Tay L????', 1459000, 97, 97, 97, 97, 6, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D08742B', '??????m Ke?? Tay B????ng', 999000, 53, 53, 53, 53, 1, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D09322A', '??????m Hoa Da??i Tay', 859000, 86, 86, 86, 86, 2, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D09322B', '??????m Hoa Da??i Tay', 1159000, 59, 59, 59, 59, 3, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D09382', '??????m ??m C???? Be??', 1499000, 28, 28, 28, 28, 4, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D09432A', '??????m ??o?? Tay B????ng', 1359000, 70, 70, 70, 70, 5, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D09432B', '??????m ??en Tay B????ng', 1399000, 84, 84, 84, 84, 6, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D09432C', '??????m ??o?? Tay B????ng', 1559000, 26, 26, 26, 26, 1, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D09622', '??????m Va??ng Thi????t K????', 1459000, 55, 55, 55, 55, 2, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D09762', '??????m MIDI Ho??a Ti????t', 1299000, 39, 39, 39, 39, 3, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D09852', '??????m Thi????t K????', 1299000, 66, 66, 66, 66, 4, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D09942A', '??????m ??u??i Ca??', 899000, 22, 22, 22, 22, 5, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D09942B', '??????m ??u??i Ca??', 1259000, 38, 38, 38, 38, 6, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D09962', '??????m Nhung Tay B????ng', 1299000, 24, 24, 24, 24, 1, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D10002', '??????m Nhung ??o?? Tay B????ng', 1299000, 5, 5, 5, 5, 2, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D10012', '??????m Thi????t K???? Kh??ng Tay', 899000, 49, 49, 49, 49, 3, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D10022', '??????m Li????n Ph????i Da Beo', 1299000, 95, 95, 95, 95, 4, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D10072', '??????m ??en Thi????t K????', 1159000, 40, 40, 40, 40, 5, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D10102', '??????m Nhung Tay B??ng', 999000, 36, 36, 36, 36, 6, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D10142', '??????m Nhung Tay Voan', 1359000, 20, 20, 20, 20, 1, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D10169', '??????m Nhung Tay L????', 1259000, 74, 74, 74, 74, 2, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D10292', '??????m Thi????t K????', 1259000, 99, 99, 99, 99, 3, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D10312', '??????m Xanh Tay B????ng', 659000, 42, 42, 42, 42, 4, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D10312B', '??????m N??u Tay B????ng', 1399000, 39, 39, 39, 39, 5, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D10372', '??????m X????p Ly', 1099000, 48, 48, 48, 48, 6, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D10382', '??????m Da Beo', 1059000, 91, 91, 91, 91, 1, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D10392', '??????m Len ??m Ph????i N??', 1399000, 78, 78, 78, 78, 2, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D10442', '??????m ??en Thi????t K????', 1299000, 15, 15, 15, 15, 3, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D10452A', '??????m Ke?? ??o??', 1159000, 24, 24, 24, 24, 4, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D10452B', '??????m Len In Ch????', 1459000, 48, 48, 48, 48, 5, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D10592', '??????m Li????n Thi????t K????', 1659000, 83, 83, 83, 83, 6, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D10602A', '??????m Nhung X????p Ly', 1499000, 45, 45, 45, 45, 1, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D10602B', '??????m Nhung X????p Ly', 1099000, 63, 63, 63, 63, 2, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D10742', '??????m GILE Thi????t K????', 1159000, 50, 50, 50, 50, 3, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D10752', '??????m ??m Da Beo', 1259000, 47, 47, 47, 47, 4, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D10932', '??????m Thi????t K???? Th??u Ch????', 1399000, 43, 43, 43, 43, 5, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D10942', '??????m Thi????t K????', 1499000, 84, 84, 84, 84, 6, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D10972', '??????m Li????n Thi????t K????', 1751000, 87, 87, 87, 87, 1, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D11029A', '??????m Ti????c N??u', 1299000, 34, 34, 34, 34, 2, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D11029B', '??????m Ti????c ??o??', 1459000, 57, 57, 57, 57, 3, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D11089', '??????m Ti????c Cao C????p', 1459000, 91, 91, 91, 91, 4, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D11099', '??????m Tr????ng Ph????i Hoa 3D', 1399000, 73, 73, 73, 73, 5, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D11119', '??????m Ti????c Thi????t K????', 1659000, 84, 84, 84, 84, 6, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D11132A', '??????m Ti????c Xa??m Th????t Eo', 1559000, 83, 83, 83, 83, 1, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D11132B', '??????m Nhung Thi????t K????', 1499000, 63, 63, 63, 63, 2, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D11149', '??????m Nhung Thi????t K????', 1459000, 82, 82, 82, 82, 3, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D11159', '??????m Ti????c Ph????i Ho??a Ti????t Hoa', 1759000, 31, 31, 31, 31, 4, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D11292A', '??????m Hoa ??en', 1359000, 18, 18, 18, 18, 5, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D11292B', '??????m Su??ng Tr????ng', 1299000, 3, 3, 3, 3, 6, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D11292C', '??????m Nhung ??u??i Ca??', 1499000, 29, 29, 29, 29, 1, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D11469', '??????m Ti????c Cao C????p', 1499000, 88, 88, 88, 88, 2, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D11552', '??????m Thi????t K???? Tay B????ng', 1559000, 37, 37, 37, 37, 3, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D11609', '??????m Da?? Kh??ng Tay', 1159000, 98, 98, 98, 98, 4, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D11622', '??????m Nhung Thi????t K????', 1559000, 44, 44, 44, 44, 5, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D11722', '??????m H????ng Tay B????ng', 1299000, 1, 1, 1, 1, 6, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D11922', '??????m Thi????t K????', 599000, 88, 88, 88, 88, 1, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D12049', '??????m Nhung X????p Li', 1299000, 23, 23, 23, 23, 2, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D12052', '??????m Da?? Tweed Ph????i Tay T??', 1259000, 1, 1, 1, 1, 3, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D12092', '??????m Da?? Su??ng', 759000, 84, 84, 84, 84, 4, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D12199', '??????m Thi????t K????', 1259000, 32, 32, 32, 32, 5, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D12492', '??????m Nhung Tay B????ng', 599000, 80, 80, 80, 80, 6, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D12682', '??????m Ho??a Ti????t', 2381000, 58, 58, 58, 58, 1, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D1399', '??????m Tay Da??i', 1459000, 63, 63, 63, 63, 2, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D20522', '??????m Ho??a Ti????t Da Beo', 1796000, 86, 86, 86, 86, 3, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D21172', '??????m Li????n C???? N??', 759000, 39, 39, 39, 39, 4, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D23212', '??????m Thi????t K????', 1159000, 62, 62, 62, 62, 5, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D23852', '??????m Thi????t K???? Ph????i Be??o', 1855000, 3, 3, 3, 3, 6, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D26692', '??????m Thi????t K???? Ph????i Ke??', 1754000, 66, 66, 66, 66, 1, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D27072', '??????m Ho??a Ti????t', 1811000, 6, 6, 6, 6, 2, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D29162', '??????m Kh??ng Tay C???? Be??', 1259000, 70, 70, 70, 70, 3, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D29652', '??????m Ti????c Tay L????', 1399000, 55, 55, 55, 55, 4, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D30312', '??????m ??m C???? S?? Mi', 2153000, 50, 50, 50, 50, 5, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D30722', '??????m Li????n Thi????t K???? Ph????i Ke??', 1851000, 66, 66, 66, 66, 6, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D31182', '??????m ??en Tay B????ng', 1493000, 48, 48, 48, 48, 1, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D31632', '??????m Kh??ng Tay', 1794000, 62, 62, 62, 62, 2, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D32169A', '??????m Ti????c H????ng Ph????i Sequin', 1499000, 99, 99, 99, 99, 3, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D32169B', '??????m Ti????c ??en Ph????i Sequin', 1493000, 100, 100, 100, 100, 4, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D32299', '??????m Ti????c Thi????t K????', 1459000, 83, 83, 83, 83, 5, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D33942', '??????m Su??ng Ho??a Ti????t', 1199000, 89, 89, 89, 89, 6, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D34152', '??????m Li????n Ph????i Hoa 3D', 1459000, 76, 76, 76, 76, 1, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D44832', '??????m Thi????t K????', 1499000, 76, 76, 76, 76, 2, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D60102', '??????m Hai D??y H????ng', 1299000, 45, 45, 45, 45, 3, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D60232A', '??????m Len Kh??ng Tay', 1199000, 44, 44, 44, 44, 4, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D60232B', '??????m Len Kh??ng Tay', 859000, 86, 86, 86, 86, 5, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D60292', '??????m Len Kh??ng Tay', 759000, 67, 67, 67, 67, 6, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D60362A', '??????m Len Thi????t K????', 1459000, 82, 82, 82, 82, 1, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D60362B', '??????m Len Thi????t K????', 1259000, 65, 65, 65, 65, 2, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D62052A', '??????m Len ??en', 859000, 16, 16, 16, 16, 3, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D62052B', '??????m Len N??u', 799000, 48, 48, 48, 48, 4, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D64102', '??????m Su??ng Len Ho??a Ti????t', 1099000, 90, 90, 90, 90, 5, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D80062', '??????m Cam Ph????i Xi??ch', 1099000, 12, 12, 12, 12, 6, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D80412', '??????m Su??ng ??i??nh C??????m', 899000, 73, 73, 73, 73, 1, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('E351001', '??o Kho??c Seven.AM Ch???t Li???u D??? Ki???u D??ng Tay L??? H???a Ti???t Caro', 1099000, 32, 32, 32, 32, 2, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('E730001', 'Ch??n V??y D??ng X??e Seven.AM Ch???t Li???u D??? H???a Ti???t Caro', 699000, 57, 57, 57, 57, 3, NULL, 5, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('H101026C', '??o S?? Mi Chui Tay D??i Sifong ????? C??? T??u N?? Sau C???', 999000, 16, 16, 16, 16, 4, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('H101027C', '??o S?? Mi Chui Tay D??i Sifong N???n H???ng Hoa H???ng', 1249500, 83, 83, 83, 83, 5, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('H111013C', '??o S?? Mi Chui Tay L??? Th?? T??m H???ng C??? T??u N?? C???', 1499000, 58, 58, 58, 58, 6, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('H301016C', '??o Vest Tay D??i D??? H???ng T??i ???p Tua Rua Trang Tr??', 849000, 70, 70, 70, 70, 1, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('H301016CA', 'Ch??n V??y Juyp A D??? H???ng Ph???i C???p V?? G???u', 997000, 4, 4, 4, 4, 2, NULL, 5, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('H331013C', 'Ch??n V??y Juyp ??m D??? H???ng X??? Sau', 899000, 74, 74, 74, 74, 3, NULL, 5, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('J00142', 'JUMPSUIT Thi????t K????', 1199000, 83, 83, 83, 83, 4, NULL, 5, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('J00652', 'JUMPSUIT Da??ng L????ng', 1399000, 3, 3, 3, 3, 5, NULL, 5, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('J01192', 'JUMPSUIT Da??ng Da??i Ho??a Ti????t', 899000, 58, 58, 58, 58, 6, NULL, 5, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('J01752', 'JUMPSUIT Da??ng Da??i', 999000, 7, 7, 7, 7, 1, NULL, 5, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('J02162', 'JUMPSUIT Hoa Da??ng Ng????n', 999000, 69, 69, 69, 69, 2, NULL, 5, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('J02242', 'JUMPSUIT Da??ng Da??i', 1099000, 52, 52, 52, 52, 3, NULL, 5, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('J03112', 'JUMPSUIT Da??ng Da??i', 999000, 54, 54, 54, 54, 4, NULL, 5, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('J03332', 'JUMPSUIT Da??ng Da??i Ph????i Hoa', 1294000, 15, 15, 15, 15, 5, NULL, 5, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('J03832', 'JUMPSUIT Hoa Nhi??', 1454000, 65, 65, 65, 65, 6, NULL, 5, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('J04232', 'JUMPSUIT Da??ng Da??i', 1159000, 60, 60, 60, 60, 1, NULL, 5, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('J04242', 'JUMPSUIT Hoa Da??ng Da??i', 1451000, 35, 35, 35, 35, 2, NULL, 5, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('J04272', 'JUMPSUIT Ch????m Bi', 839000, 53, 53, 53, 53, 3, NULL, 5, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('J04322', 'JUMPSUIT ????ng R????ng', 1099000, 58, 58, 58, 58, 4, NULL, 5, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('J05242', 'JUMPSUIT Hoa Da??ng Da??i', 999000, 96, 96, 96, 96, 5, NULL, 5, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('J06452', 'JUMPSUIT Hoa Nhi??', 859000, 55, 55, 55, 55, 6, NULL, 5, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('J06672', 'JUMPSUIT Ho??a Ti????t', 899000, 75, 75, 75, 75, 1, NULL, 5, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('J31772', 'JUMPSUIT Thi????t K????', 1524000, 83, 83, 83, 83, 2, NULL, 5, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('J32522', 'JUMPSUIT Hoa Da??ng Ng????n', 899000, 90, 90, 90, 90, 3, NULL, 5, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('J33282', 'JUMPSUIT Da??ng Ng????n', 899000, 32, 32, 32, 32, 4, NULL, 5, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('J33552', 'JUMPSUIT Da??ng L????ng', 1196000, 11, 11, 11, 11, 5, NULL, 5, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('J34192', 'JUMPSUIT Da??ng Da??i', 1199000, 34, 34, 34, 34, 6, NULL, 5, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('J34342', 'JUMPSUIT Hoa Da??ng Ng????n', 1456000, 54, 54, 54, 54, 1, NULL, 5, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('SANPHAMNGUNGKINHDOANH', 's???n ph???m ng???ng kinh doanh', 0, 0, 0, 0, 0, 2, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('SM08532', 'A??o S?? Mi Ho??a Ti????t', 359000, 65, 65, 65, 65, 3, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('SM09822', 'S?? Mi Th??u Hoa', 799000, 71, 71, 71, 71, 4, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('SM11282', 'S?? Mi Tr????ng Da??ng Da??i', 599000, 37, 37, 37, 37, 5, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('SM13822', 'D?? Mi Tay B????ng', 799000, 57, 57, 57, 57, 6, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('TS08872', 'A??o Hai D??y C???? ??????', 699000, 49, 49, 49, 49, 1, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('TS10042', 'A??o Tr????ng Co?? Mu??', 599000, 28, 28, 28, 28, 2, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('TS10132', 'A??o Nhung Bo G????u', 599000, 87, 87, 87, 87, 3, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('TS10302', 'A??o Thun Tay B????ng', 469000, 58, 58, 58, 58, 4, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('TS10642A', 'A??o Cam Ph????i Be??o', 559000, 48, 48, 48, 48, 5, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('TS10642B', 'A??o H????ng Ph????i Be??o', 659000, 20, 20, 20, 20, 6, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('TS10902', 'A??o Ni?? ??en', 399000, 72, 72, 72, 72, 1, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('TS11859', 'A??o Thun N??u', 589000, 19, 19, 19, 19, 2, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('TS11872', 'A??o Nhu?? Da??i Tay', 2982000, 92, 92, 92, 92, 3, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V101019C', '??o S?? Mi Ch???t Li???u Chiffon Ki???u D??ng Tay B???ng D??i M??u Tr???ng C?? D??y N?? C???', 1497000, 97, 97, 97, 97, 4, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V301005D', '??o Vest Ch???t Li???u Da Thi???t K??? D??i Tay H???a Ti???t X??m K??? ??en H???ng', 1999000, 40, 40, 40, 40, 5, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V301006C', 'Qu???n ??u D??i Seven.AM M??u ??en H???a Ti???t K??? Tr???ng', 949000, 33, 33, 33, 33, 6, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V301007D', '??o Vest Tay D??i Th?? V??ng N??u C??? Sam Mix', 1499000, 73, 73, 73, 73, 1, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V301010', '??o Kho??c Blazer Ki???u D??ng Tay D??i Ch???t Th?? M??u ????? G???ch Thi???t K??? Ph???i N???p Ve C???', 1299000, 85, 85, 85, 85, 2, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V301010D', 'Qu???n ??u D??i Seven.AM Ch???t Th?? M??u ????? G???ch', 949000, 18, 18, 18, 18, 3, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V301011C', 'Qu???n Su??ng D??i Th?? V??ng N??u Mix', 949000, 61, 61, 61, 61, 4, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V331006', '??o Kho??c Ki???u D??ng L???ng Tay Ch???t Li???u D??? M??u Be H???a Ti???t Ch???m Bi C?? Kh??a N???p', 1599000, 11, 11, 11, 11, 5, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V331006H', '?????m D??ng A Ki???u D??ng S??t N??ch Ch???t D??? M??u Be H???a Ti???t Ch???m Bi', 1699000, 63, 63, 63, 63, 6, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V331007C', '??o Kho??c Ch???t Li???u D??? Thi???t K??? D??i Tay C??? ?????c M??u Tr???ng ??en', 1699000, 16, 16, 16, 16, 1, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V331011C', '??o Kho??c Ch???t Li???u D??? Thi???t K??? D??ng L???ng D??i Tay H???a Ti???t K??? Xanh ??en', 1398500, 77, 77, 77, 77, 2, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V331017C', '??o Kho??c L???ng Tay D??i D??? ????? S???i Tr???ng C??? Tr??n', 1299000, 94, 94, 94, 94, 3, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V351014', '??o Vest C??? 2 Ve 2 T??i ???p, Th?? N??u Mix', 1697000, 96, 96, 96, 96, 4, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V352002', '??o Kho??c Tay D??i Ch???t Li???u D??? Xanh K??? Tr???ng V??ng', 999000, 57, 57, 57, 57, 5, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V401007C', '??o Kh??c Manto D??ng D??i Ki???u D??ng Tay D??i Ch???t Li???u D??? H???a Ti???t K??? Xanh ??en', 797000, 42, 42, 42, 42, 6, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V401008C', '??o Kho??c Manto D??i Tay C?? ??ai Ch???t Li???u D??? M??u N??u C??? 2 Ve', 1299000, 72, 72, 72, 72, 1, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V601005C', '?????m D??ng Thi???t K??? Tay L??? M??u Xanh C?? ??ai D???i', 1597000, 45, 45, 45, 45, 2, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V601008C', '?????m D??ng A  Ki???u D??ng Tay D??i Ch???t Li???u D??? H???a Ti???t K??? V??ng ??en T??i ???p', 1599000, 2, 2, 2, 2, 3, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V601009D', '?????m D??ng ??m Ki???u D??ng Tay D??i Ch???t Li???u Ren H???a Ti???t Xanh C??? Tr??n C?? ??ai D???i', 1599000, 1, 1, 1, 1, 4, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V601016D', '?????m A Tay D??i Th?? Caro ????? Tr???ng C??? ????nh ????', 1599000, 57, 57, 57, 57, 5, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V604004', '?????m X???p M??u V??ng Thi???t K??? D??ng ??m', 1699000, 91, 91, 91, 91, 6, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V611007C', '?????m D??ng ??m Ki???u D??ng D??i Tay H???a M??u Tr???ng C??? Tr??n', 1597000, 66, 66, 66, 66, 1, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V611008H', '?????m ??u??i C??  Ki???u D??ng Tay L??? Umi M??u ?????', 1499000, 59, 59, 59, 59, 2, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V611010D', '?????m D??ng ??m  Ki???u D??ng Tay D??i H???a Ti???t Kem H???ng ????nh K??m Kh??n Cho??ng', 1599000, 30, 30, 30, 30, 3, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V611014C', '?????m D??ng ??m Thi???t K??? Tay B???ng Ch???t Li???u Len M??u Tr???ng K??? ??en C?? ??ai D???i', 1697000, 92, 92, 92, 92, 4, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V611016C', '?????m ??m Tay Ph???i L??? C?? N??thun ??en Kim Tuy???n', 1599000, 3, 3, 3, 3, 5, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V611017H', '?????m ??m Tay D??i Tr???ng Th?? X???p C??? X??? Gi???t L???', 1499000, 50, 50, 50, 50, 6, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V611020C', 'Tay L??? Nhung ??en C??? Tr??n ????nh H???t Trai', 1799000, 7, 7, 7, 7, 1, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V611021D', '?????m ??m Tay Ren D??i Th?? ????? C??? Ngang Th??u ????', 1499000, 82, 82, 82, 82, 2, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V612017C', '?????m D??ng ??m Ki???u D??ng Tay B???ng Ch???t Li???u Len M??u T??m C??? Tr??n', 1697000, 89, 89, 89, 89, 3, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V612018C', '?????m ??m Tay L??? Thun ??en Kim Tuy???n X???p Ly Ng???c', 1699000, 9, 9, 9, 9, 4, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V614004', '?????m D??ng ??m Ki???u D??ng Tay D??i M??u ??en Thi???t K??? Th??u G???u C??? Tr??n', 1799000, 95, 95, 95, 95, 5, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V614006C', 'N??ch Th?? ????? Bong T??ng N?? Eo', 1699000, 40, 40, 40, 40, 6, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V621006', '?????m D??ng Su??ng Ki???u D??ng Tay L??? Ch???t Th?? H???a Ti???t K??? Caro ??en Tr???ng Thi???t K??? C??? Ren', 1699000, 50, 50, 50, 50, 1, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V621007H', '?????m Su??ng Tay D??i Th?? Xanh C??? Tr??n N?? C???', 1499000, 79, 79, 79, 79, 2, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V624002D', '?????m D??ng Su??ng  Ki???u D??ng S??t N??ch Ch???t Li???u D??? M??u Xanh Than C??? 2 V???', 1599000, 18, 18, 18, 18, 3, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V631006C', '?????m D??ng X??e Ki???u D??ng Tay B???ng M??u ?????', 1797000, 51, 51, 51, 51, 4, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V631008', '?????m D??ng X??e Ki???u D??ng Tay L??? M??u H???ng', 1699000, 67, 67, 67, 67, 5, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V631009D', '?????m D??ng X??e  Ki???u D??ng Tay D??i Th?? Xanh Than C??? B??? X???p Ly', 1699000, 17, 17, 17, 17, 6, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V631010C', '?????m x??e Tay L??? Len Tr???ng V???n ??en M??', 1799000, 71, 71, 71, 71, 1, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V631012D', '?????m D??ng X??e Ki???u D??ng ??m Eo Ch??n V??y X???p Ly', 1, 21, 21, 21, 21, 2, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V631013', '?????m D??ng X??e Ch???t Li??u L???a Thi???t K??? N???n Tr???ng H???a Ti???t Hoa', 1799000, 10, 10, 10, 10, 3, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V631020H', '?????m X??e Tay D??i Thun ??en Lom Tuy???n C??? R???ng', 1699000, 90, 90, 90, 90, 4, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V641004C', '?????m D??ng X??e Ki???u D??ng D??i Tay M??u ????? C??? T??u', 1597000, 33, 33, 33, 33, 5, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V641006', '?????m C??? Tr??n M??u ?????', 1599000, 2, 2, 2, 2, 6, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V641007', '?????m D??ng X??e Ki???u D??ng Tay D??i Ch???t Th?? N???n ??en Hoa Tr???ng Thi???t K??? Nh??n Eo', 1799000, 34, 34, 34, 34, 1, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V641009', '?????m D??ng X??e Ki???u D??ng Tay D??i M??u Be Thi???t K??? Hoa V??ng Xanh C??? ?????c', 1799000, 65, 65, 65, 65, 2, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V644002C', '?????m Midi S??t N??ch M??u Xanh Ki???u D??ng Nh??n Eo', 1697000, 93, 93, 93, 93, 3, NULL, 5, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V700005', 'Ch??n V??y D??ng A Seven.AM Ch???t Li???u D??? Xanh K??? Tr???ng V??ng', 699000, 69, 69, 69, 69, 4, NULL, 5, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V710009C', 'Ch??n V??y D??ng ??m Seven.AM Ch???t Li???u D??? H???a Ti???t Xanh K??? ??en', 897000, 71, 71, 71, 71, 5, NULL, 5, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V710014D', 'Ch??n V??y ??m Th?? V??ng N??u Mix', 999000, 71, 71, 71, 71, 6, NULL, 5, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V730006', 'Ch??n V??y Seven.AM D??ng X??e Ch???t Li???u D??? H???a Ti???t X??m K??? ??en H???ng', 849000, 45, 45, 45, 45, 1, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V800009C', '??o Kho??c Blazer M??u ??en H???a Ti???t K??? Tr???ng', 949000, 71, 71, 71, 71, 2, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V850004C', '??o Blazer Th?? V??ng N??u T??i C??i Mix', 1499000, 59, 59, 59, 59, 3, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V850009', 'Qu???n D??i Th?? N??u T??i Ch??o', 279000, 61, 61, 61, 61, 4, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Y331002', '??o Kho??c D??i Tay Seven.AM D??? H???a Ti???t Caro', 1498000, 71, 71, 71, 71, 5, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Y33407A', '??o Vest Seven.AM Ki???u D??ng Tay L??? Ch???t Li???u D??? H???a Ti???t Caro ??en Tr???ng', 849000, 97, 97, 97, 97, 6, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Y33407B', '??o Vest Seven.AM D??ng L???ng Thi???t K??? Tay L??? Ch???t Li???u D??? H???a Ti???t Caro', 1099000, 45, 45, 45, 45, 1, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Y401014C', '??o Kho??c Manto D??i Tay D??i D??? V??ng N??u X??? Sau C??? L??ng M??', 897000, 33, 33, 33, 33, 2, NULL, 5, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Y720002', 'Ch??n V??y D??ng A Seven.AM Ch???t Li???u L???a Ki???u D??ng T?? Bung M??u ??en', 849000, 94, 94, 94, 94, 3, NULL, 5, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Y720003', 'Ch??n V??y D??ng ??m Seven.AM M??u ??en', 897000, 93, 93, 93, 93, 4, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Y81269', 'Qu???n Short Seven.AM Ch???t Li???u D??? H???a Ti???t Caro ?? ??en K??? Tr???ng', 897000, 57, 57, 57, 57, 5, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Y81269F', 'Qu???n Short Seven.AM Ch???t Li???u D??? H???a Ti???t Caro', 699000, 85, 85, 85, 85, 6, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z04892', 'Ch??n Va??y Bu??t Chi?? ??o??', 659000, 77, 77, 77, 77, 1, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z05552', 'Ch??n Va??y Ch????m Bi', 559000, 42, 42, 42, 42, 2, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z05592', 'Ch??n Va??y Bu??t Chi??', 599000, 51, 51, 51, 51, 3, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z05722', 'Ch??n Va??y Thi????t K????', 599000, 78, 78, 78, 78, 4, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z05732', 'Ch??n Va??y Bu??t Chi??', 893000, 19, 19, 19, 19, 5, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z05992', 'Ch??n Va??y Ch???? A', 499000, 13, 13, 13, 13, 6, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z06042', 'Ch??n Va??y ??u??i Ca?? Da??ng Ng????n', 599000, 96, 96, 96, 96, 1, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z06372', 'Ch??n Va??y X????p Ly', 659000, 76, 76, 76, 76, 2, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z06402', 'Ch??n Va??y Bu??t Chi??', 699000, 86, 86, 86, 86, 3, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z08122', 'Ch??n Va??y Ke?? Ph????i N??', 459000, 28, 28, 28, 28, 4, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z08132', 'Ch??n Va??y Xe?? Ta??', 559000, 90, 90, 90, 90, 5, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z08492', 'Ch??n Va??y Thi????t K????', 659000, 17, 17, 17, 17, 6, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z08562', 'Ch??n Va??y X????p Ly Ho??a Ti????t', 759000, 24, 24, 24, 24, 1, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z08612', 'Ch??n Va??y Thi????t K????', 599000, 15, 15, 15, 15, 2, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z08642', 'Ch??n Va??y Da??ng Ng????n', 659000, 74, 74, 74, 74, 3, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z08832', 'Ch??n Va??y MIDI', 599000, 96, 96, 96, 96, 4, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z08992', 'Ch??n Va??y Da??ng Ch???? A', 839000, 85, 85, 85, 85, 5, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z09042', 'Ch??n Va??y MIDI', 599000, 4, 4, 4, 4, 6, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z09122', 'Ch??n Va??y X????p Ly', 699000, 26, 26, 26, 26, 1, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z09152', 'Ch??n Va??y Thi????t K????', 859000, 67, 67, 67, 67, 2, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z09292', 'Ch??n Va??y Da??ng Ch???? A', 599000, 99, 99, 99, 99, 3, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z09312', 'Ch??n Va??y Ch???? A', 759000, 65, 65, 65, 65, 4, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z09612A', 'Ch??n Va??y N??u', 659000, 65, 65, 65, 65, 5, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z09612B', 'Ch??n Va??y H????ng', 699000, 42, 42, 42, 42, 6, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z09722', 'Ch??n Va??y Da??ng Ch???? A', 699000, 85, 85, 85, 85, 1, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z09752', 'Ch??n Va??y Ch????m Bi', 759000, 65, 65, 65, 65, 2, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z09812', 'Ch??n Va??y Hoa Th??u', 599000, 79, 79, 79, 79, 1, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z09832', 'Ch??n Va??y Da Kho??a Tr??????c', 699000, 29, 29, 29, 29, 2, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z09862', 'Ch??n Va??y MIDI', 699000, 18, 18, 18, 18, 3, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z10152', 'Ch??n Va??y Nhung ??o??', 759000, 63, 63, 63, 63, 4, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z10192', 'Ch??n Va??y Da Da??ng ??m', 699000, 39, 39, 39, 39, 5, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z10212', 'Ch??n Va??y Da Beo', 559000, 56, 56, 56, 56, 6, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z10262', 'Ch??n Va??y Da', 659000, 5, 5, 5, 5, 1, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z10552A', 'Ch??n Va??y Nhung', 759000, 86, 86, 86, 86, 2, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z10552B', 'Ch??n Va??y Nhung', 559000, 97, 97, 97, 97, 3, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z10772', 'Ch??n Va??y Da?? X????p Ly', 599000, 30, 30, 30, 30, 4, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z10782', 'Ch??n Va??y Nhung X????p Ly', 659000, 74, 74, 74, 74, 5, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z10852', 'Ch??n Va??y ', 659000, 23, 23, 23, 23, 6, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z10882', 'Ch??n Va??y X????p Ly', 699000, 13, 13, 13, 13, 1, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z11212', 'Ch??n Va??y Nhung Thi????t K????', 799000, 11, 11, 11, 11, 2, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z11222', 'Ch??n Va??y Da??ng A', 1696000, 28, 28, 28, 28, 3, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z16011A', '??o Nh?? ??en c??? 3p d??i tay', 299000, 99, 99, 99, 99, 4, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z16981', 'Ch??n Va??y Da??ng A', 936000, 17, 17, 17, 17, 5, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z25372', 'Ch??n Va??y Da??ng Ch???? A', 659000, 18, 18, 18, 18, 6, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z67052A', 'Ch??n Va??y JEANS', 759000, 55, 55, 55, 55, 1, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z67052B', 'Ch??n Va??y JEANS', 659000, 37, 37, 37, 37, 2, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z80012', 'Ch??n Va??y Ch????m Bi', 599000, 90, 90, 90, 90, 3, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z80182', 'Ch??n Va??y MIDI', 499500, 64, 64, 64, 64, 4, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z80322', 'Ch??n Va??y Thi????t K????', 659000, 42, 42, 42, 42, 5, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);

-- ----------------------------
-- Table structure for tag_child_entity
-- ----------------------------
DROP TABLE IF EXISTS `tag_child_entity`;
CREATE TABLE `tag_child_entity`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `idTagParentId` int NULL DEFAULT NULL,
  `code` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_7262d33ad1491ade0080a5cc4bc`(`idTagParentId` ASC) USING BTREE,
  CONSTRAINT `FK_7262d33ad1491ade0080a5cc4bc` FOREIGN KEY (`idTagParentId`) REFERENCES `tag_parent_entity` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tag_child_entity
-- ----------------------------
INSERT INTO `tag_child_entity` VALUES (1, 'S???n ph???m n???i b???t', 1, 0);
INSERT INTO `tag_child_entity` VALUES (2, 'S???n ph???m m???i', 1, 1);
INSERT INTO `tag_child_entity` VALUES (4, 'Khuy???n m??i', 1, 2);
INSERT INTO `tag_child_entity` VALUES (5, 'S???n ph???m n???i b???t', 2, 0);
INSERT INTO `tag_child_entity` VALUES (6, 'S???n ph???m m???i', 2, 1);
INSERT INTO `tag_child_entity` VALUES (8, 'Khuy???n m??i', 2, 2);
INSERT INTO `tag_child_entity` VALUES (9, 'S???n ph???m n???i b???t', 3, 0);
INSERT INTO `tag_child_entity` VALUES (10, 'S???n ph???m m???i', 3, 1);
INSERT INTO `tag_child_entity` VALUES (12, 'Khuy???n m??i', 3, 2);
INSERT INTO `tag_child_entity` VALUES (13, 'S???n ph???m n???i b???t', 4, 0);
INSERT INTO `tag_child_entity` VALUES (14, 'S???n ph???m m???i', 4, 1);
INSERT INTO `tag_child_entity` VALUES (16, 'Khuy???n m??i', 4, 2);
INSERT INTO `tag_child_entity` VALUES (17, 'S???n ph???m n???i b???t', 5, 0);
INSERT INTO `tag_child_entity` VALUES (18, 'S???n ph???m m???i', 5, 1);
INSERT INTO `tag_child_entity` VALUES (20, 'Khuy???n m??i', 5, 2);

-- ----------------------------
-- Table structure for tag_parent_entity
-- ----------------------------
DROP TABLE IF EXISTS `tag_parent_entity`;
CREATE TABLE `tag_parent_entity`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tag_parent_entity
-- ----------------------------
INSERT INTO `tag_parent_entity` VALUES (1, 'Qu???n');
INSERT INTO `tag_parent_entity` VALUES (2, '?????m');
INSERT INTO `tag_parent_entity` VALUES (3, '??o');
INSERT INTO `tag_parent_entity` VALUES (4, 'JUYP');
INSERT INTO `tag_parent_entity` VALUES (5, 'JUMPSUIT');

-- ----------------------------
-- Table structure for user_entity
-- ----------------------------
DROP TABLE IF EXISTS `user_entity`;
CREATE TABLE `user_entity`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_entity
-- ----------------------------
INSERT INTO `user_entity` VALUES (1, 'linh', 'hackco@gmail.com', '$2b$10$KkTJeS5pCksPGVCfImwPeeljZyxheoNWWJ.InuW7Id8On5E2Lepg2');
INSERT INTO `user_entity` VALUES (2, 'trong', 'trong@gmail.com', '$2b$10$ZgxmVQbkoQEZsIH/oGAWPeUQFgsxOuu/gbMWbUhABnqoeMppCCsxa');
INSERT INTO `user_entity` VALUES (3, 'trong2', 'trong1@gmail.com', '$2b$10$1TNS8KPaVyZ2DDgvZhZy/u9EfUZGLCFJ29ofOLBkJxOU9xBIQjYmm');
INSERT INTO `user_entity` VALUES (4, 'trong3', 'trong2@gmail.com', '$2b$10$qPF.jtcOT3w4flBogk.Upu2tQkrY8d08PwJIfhxJYJkDh..kHMAuq');

-- ----------------------------
-- Table structure for user_info_entity
-- ----------------------------
DROP TABLE IF EXISTS `user_info_entity`;
CREATE TABLE `user_info_entity`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `telephone` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `firstname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lastname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `idUserId` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_a38d5b24cdfc60967508bddd528`(`idUserId` ASC) USING BTREE,
  CONSTRAINT `FK_a38d5b24cdfc60967508bddd528` FOREIGN KEY (`idUserId`) REFERENCES `user_entity` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_info_entity
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
