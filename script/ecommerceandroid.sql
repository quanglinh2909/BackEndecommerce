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
INSERT INTO `description_entity` VALUES (1, 'Chi tiết sản phẩm', 'Kiểu dáng: đầm liền thiết kế dáng chữ A dài qua gối, phần thân dáng gile kết hợp họa tiết kẻ, tay và cổ sơ mi tone màu trắng', 'AD00132');
INSERT INTO `description_entity` VALUES (2, 'Chi tiết sản phẩm', 'Kiểu dáng: đầm liền thiết kế dáng chữ A dài qua gối, phần thân họa tiết kẻ kết hợp tay và cổ sơ mi trắng', 'AD00472');
INSERT INTO `description_entity` VALUES (3, 'Chi tiết sản phẩm', 'Phù hợp: đi làm, sự kiện, hay đi dạo phố, tạo vẻ trẻ trung nữ tính cho người mặc.\"', 'AD01822A');
INSERT INTO `description_entity` VALUES (4, 'Chi tiết sản phẩm', '\"Chất liệu: vải tổng hợp cao cấp', 'AD01822B');
INSERT INTO `description_entity` VALUES (5, 'Chi tiết sản phẩm', '\"Chất liệu: vải tổng hợp cao cấp', 'AD08632');
INSERT INTO `description_entity` VALUES (6, 'Chi tiết sản phẩm', 'Phù hợp: đi làm, sự kiện, hay đi dạo phố, tạo vẻ trẻ trung nữ tính cho người mặc.\"', 'AD08662');
INSERT INTO `description_entity` VALUES (7, 'Chi tiết sản phẩm', 'Kiểu dáng: đầm liền thiết kế 2 trong 1, dáng chữ A dài qua gối, tone màu nâu.', 'AD08852');
INSERT INTO `description_entity` VALUES (8, 'Chi tiết sản phẩm', '\"Chất liệu: vải tổng hợp cao cấp', 'AD09202');
INSERT INTO `description_entity` VALUES (9, 'Chi tiết sản phẩm', 'Phù hợp: đi làm, sự kiện, hay đi dạo phố, tạo vẻ trẻ trung nữ tính cho người mặc.\"', 'AD09222');
INSERT INTO `description_entity` VALUES (10, 'Chi tiết sản phẩm', '\"Chất liệu: vải tổng hợp cao cấp', 'AD09262A');
INSERT INTO `description_entity` VALUES (11, 'Chi tiết sản phẩm', 'Kiểu dáng: đầm thiết kế dáng suông dài qua gối, tone màu đen trơn, kết hợp họa tiết thêu', 'AD09262B');
INSERT INTO `description_entity` VALUES (12, 'Chi tiết sản phẩm', 'Kiểu dáng: ​đầm thiết kế dáng chữ A dài qua gối, tone màu hồng pastel, tay lỡ bồng nhẹ', 'AD09492A');
INSERT INTO `description_entity` VALUES (13, 'Chi tiết sản phẩm', 'Phù hợp: đi làm, sự kiện, hay đi dạo phố, tạo vẻ thanh lịch cho người mặc.\"', 'AD09492B');
INSERT INTO `description_entity` VALUES (14, 'Chi tiết sản phẩm', 'Phù hợp: đi làm, sự kiện, hay đi dạo phố, tạo vẻ trẻ trung nữ tính cho người mặc.\"', 'AD11069');
INSERT INTO `description_entity` VALUES (15, 'Chi tiết sản phẩm', '\"Chất liệu: vải dạ tweed cao cấp', 'AD11449');
INSERT INTO `description_entity` VALUES (16, 'Chi tiết sản phẩm', 'Kiểu dáng: đầm thiết kế ngắn tay dáng chữ A, độ dài qua gối,tone màu đen trơn kết hợp bông hoa 3D đính nổi', 'AD11499');
INSERT INTO `description_entity` VALUES (17, 'Chi tiết sản phẩm', 'Phù hợp: đi làm, sự kiện, hay đi dạo phố, tạo vẻ trẻ trung nữ tính cho người mặc.\"', 'AD27319');
INSERT INTO `description_entity` VALUES (18, 'Chi tiết sản phẩm', 'Kiểu dáng: ​đầm thiết kế dáng chữ A chiết eo nhẹ, tone màu trắng kem, tay dài bồng nhẹ', 'C101015C');
INSERT INTO `description_entity` VALUES (19, 'Chi tiết sản phẩm', 'Kiểu dáng: ​đầm thiết kế dáng chữ A chiết eo nhẹ, tone màu trắng kem, tay dài bồng nhẹ', 'C13115C');
INSERT INTO `description_entity` VALUES (20, 'Chi tiết sản phẩm', 'Đầm ôm sát nách tay bèo Thô đen ốp ren. Dáng đầm dài quá gối thanh lịch, sang trọng. Phù hợp các buổi dạ hội, dạo chơi của phái đẹp', 'C52461C');
INSERT INTO `description_entity` VALUES (21, 'Chi tiết sản phẩm', 'Đầm 2 dây phối kim tuyến, đăng ten, dáng xòe. Dây dải kết cổ điển, sang trọng,', 'C58828C');
INSERT INTO `description_entity` VALUES (22, 'Chi tiết sản phẩm', 'Kiểu dáng: ​đầm thiết kế dáng chữ A chiết eo nhẹ, tone màu trắng kem, tay dài bồng nhẹ', 'C613011');
INSERT INTO `description_entity` VALUES (23, 'Chi tiết sản phẩm', 'Kiểu dáng: ​đầm thiết kế dáng chữ A chiết eo nhẹ, tone màu trắng kem, tay dài bồng nhẹ', 'C624001C');
INSERT INTO `description_entity` VALUES (24, 'Chi tiết sản phẩm', 'Đầm xòe trễ vai đen, nơ ngực cách điệu. Dáng đầm dài quá gối thanh lịch, sang trọng. Phù hợp các buổi dạ hội, dạo chơi của phái đẹp', 'C633005C');
INSERT INTO `description_entity` VALUES (25, 'Chi tiết sản phẩm', 'Đầm suông kết hợp đây tết buộc eo duyên dáng. Sản phẩm mang lại cảm giác thoải mái, nhẹ nhàng, màu sắc tươi sáng, trang nhã.', 'C633006C');
INSERT INTO `description_entity` VALUES (26, 'Chi tiết sản phẩm', 'Kiểu dáng: ​đầm thiết kế dáng chữ A chiết eo nhẹ, tone màu trắng kem, tay dài bồng nhẹ', 'C633015I');
INSERT INTO `description_entity` VALUES (27, 'Chi tiết sản phẩm', 'Hình ảnh nàng công nương của thập 80-90 như được tái hiện với set trang phục mới nhất của Seven.AM mang đậm nét vintage và thanh lịch.', 'C78189C');
INSERT INTO `description_entity` VALUES (28, 'Chi tiết sản phẩm', 'Kiểu dáng: ​đầm thiết kế dáng chữ A chiết eo nhẹ, tone màu trắng kem, tay dài bồng nhẹ', 'C78191C');
INSERT INTO `description_entity` VALUES (29, 'Chi tiết sản phẩm', 'Phù hợp: đi làm, sự kiện, hay đi dạo phố, tạo vẻ trẻ trung nữ tính cho người mặc.\"', 'D02032');
INSERT INTO `description_entity` VALUES (30, 'Chi tiết sản phẩm', 'Kiểu dáng: đầm tiệc thiết kế dáng chữ A dài qua gối tone màu đỏ tươi, phần tay và vai pha voan lụa, tay lỡ bồng nhẹ', 'D02232');
INSERT INTO `description_entity` VALUES (31, 'Chi tiết sản phẩm', 'Kiểu dáng: ​đầm thiết kế dáng chữ A chiết eo nhẹ, tone màu trắng kem, tay dài bồng nhẹ', 'D02452');
INSERT INTO `description_entity` VALUES (32, 'Chi tiết sản phẩm', '\"Chất liệu: vải nhung cao cấp', 'D03322');
INSERT INTO `description_entity` VALUES (33, 'Chi tiết sản phẩm', '\"NGỌT NGÀO VÀ SANG TRỌNG VỚI GAM MÀU BE TRANG NHÃ', 'D03862');
INSERT INTO `description_entity` VALUES (34, 'Chi tiết sản phẩm', '\"Chất liệu: vải taffta cao cấp', 'D04222');
INSERT INTO `description_entity` VALUES (35, 'Chi tiết sản phẩm', 'Kiểu dáng: đầm tiệc dáng ôm họa tiết nanh sói, độ dài qua gối, tay dơi bồng nhẹ kết hợp cổ nhún cách điệu', 'D04932');
INSERT INTO `description_entity` VALUES (36, 'Chi tiết sản phẩm', 'Kiểu dáng: ​đầm thiết kế dáng chữ A chiết eo nhẹ, tone màu trắng kem, tay dài bồng nhẹ', 'D05162');
INSERT INTO `description_entity` VALUES (37, 'Chi tiết sản phẩm', '\"Chất liệu: vải tổng hợp cao cấp', 'D05529');
INSERT INTO `description_entity` VALUES (38, 'Chi tiết sản phẩm', 'Phù hợp: đi làm, sự kiện, hay đi dạo phố, tạo vẻ trẻ trung nữ tính cho người mặc.\"', 'D05692');
INSERT INTO `description_entity` VALUES (39, 'Chi tiết sản phẩm', 'Phù hợp: đi làm, sự kiện, hay đi dạo phố, tạo vẻ trẻ trung nữ tính cho người mặc.\"', 'D05862');
INSERT INTO `description_entity` VALUES (40, 'Chi tiết sản phẩm', 'Kiểu dáng: đầm tiệc 2 dây dáng ôm, dài qua gối, tone màu đen hồng nhạt, eo đính nơ bản to, kết hợp tà chất liệu voan sequin', 'D05879');
INSERT INTO `description_entity` VALUES (41, 'Chi tiết sản phẩm', 'Phù hợp: đi làm, sự kiện, hay đi dạo phố, tạo vẻ trẻ trung nữ tính cho người mặc.\"', 'D06202');
INSERT INTO `description_entity` VALUES (42, 'Chi tiết sản phẩm', 'Kiểu dáng: đầm thiết kế dáng ôn dài qua gối, tone màu hồng nhạt, phần cổ đổ cách điệu', 'D06442');
INSERT INTO `description_entity` VALUES (43, 'Chi tiết sản phẩm', '\"Chất liệu: vải tổng hợp cao cấp', 'D06602');
INSERT INTO `description_entity` VALUES (44, 'Chi tiết sản phẩm', 'Kiểu dáng: đầm tiệc thiết kế rớt vai, dáng chữ A dài qua gối tone màu cam trơn', 'D06662');
INSERT INTO `description_entity` VALUES (45, 'Chi tiết sản phẩm', '\"Chất liệu: vải tafta cao cấp', 'D06942');
INSERT INTO `description_entity` VALUES (46, 'Chi tiết sản phẩm', '\"Chất liệu: vải tafta cao cấp', 'D06952');
INSERT INTO `description_entity` VALUES (47, 'Chi tiết sản phẩm', 'Cùng sở hữu ngay nhé!\"', 'D06982');
INSERT INTO `description_entity` VALUES (48, 'Chi tiết sản phẩm', 'Phù hợp: đi làm, sự kiện, hay đi dạo phố, tạo vẻ trẻ trung nữ tính cho người mặc.\"', 'D07132');
INSERT INTO `description_entity` VALUES (49, 'Chi tiết sản phẩm', 'Kiểu dáng: đầm thiết kế dáng ôm, dài qua gối, tone màu nâu trơn, cổ nhún cách điệu', 'D07342');
INSERT INTO `description_entity` VALUES (50, 'Chi tiết sản phẩm', 'Phù hợp: đi làm, sự kiện, hay đi dạo phố, tạo vẻ trẻ trung nữ tính cho người mặc.\"', 'D07492');
INSERT INTO `description_entity` VALUES (51, 'Chi tiết sản phẩm', 'Kiểu dáng: đầm tiệc 2 dây dáng ôm, dài qua gối, tone màu đen trơn, eo đính nơ bản to, kết hợp tà chất liệu voan sequin', 'D07592');
INSERT INTO `description_entity` VALUES (52, 'Chi tiết sản phẩm', 'Kiểu dáng: ​đầm thiết kế dáng chữ A chiết eo nhẹ, tone màu trắng kem, tay dài bồng nhẹ', 'D07609');
INSERT INTO `description_entity` VALUES (53, 'Chi tiết sản phẩm', '\"Chất liệu: vải tafta cao cấp', 'D08202');
INSERT INTO `description_entity` VALUES (54, 'Chi tiết sản phẩm', 'Kết hợp với một chiếc quần short cạp cao, crop blazer tạo nên set đồ chinh phục mọi ánh nhìn của phái đẹp.\"', 'D08742A');
INSERT INTO `description_entity` VALUES (55, 'Chi tiết sản phẩm', 'Chân váy tà bung dễ dàng mix với áo sơ mi, tạo set đồ thanh lịch, sang trọng. ', 'D08742B');
INSERT INTO `description_entity` VALUES (56, 'Chi tiết sản phẩm', 'Kiểu dáng: ​đầm thiết kế dáng chữ A chiết eo nhẹ, tone màu trắng kem, tay dài bồng nhẹ', 'D09322A');
INSERT INTO `description_entity` VALUES (57, 'Chi tiết sản phẩm', 'Phù hợp: đi làm, sự kiện, hay đi dạo phố, tạo vẻ trẻ trung nữ tính cho người mặc.\"', 'D09322B');
INSERT INTO `description_entity` VALUES (58, 'Chi tiết sản phẩm', 'Phù hợp: đi làm, sự kiện, hay đi dạo phố, tạo vẻ trẻ trung nữ tính cho người mặc.\"', 'D09382');
INSERT INTO `description_entity` VALUES (59, 'Chi tiết sản phẩm', 'Kiểu dáng: đầm thiết kế dáng suông dài qua gối, tone màu đỏ , kết hợp bông hoa 3D bản to đính nổi', 'D09432A');
INSERT INTO `description_entity` VALUES (60, 'Chi tiết sản phẩm', 'Phù hợp: đi làm, sự kiện, hay đi dạo phố, tạo vẻ trẻ trung nữ tính cho người mặc.\"', 'D09432B');
INSERT INTO `description_entity` VALUES (61, 'Chi tiết sản phẩm', '\"Chất liệu: vải tổng hợp cao cấp', 'D09432C');
INSERT INTO `description_entity` VALUES (62, 'Chi tiết sản phẩm', 'Kiểu dáng: ​đầm thiết kế dáng chữ A chiết eo nhẹ, tone màu trắng kem, tay dài bồng nhẹ', 'D09622');
INSERT INTO `description_entity` VALUES (63, 'Chi tiết sản phẩm', 'Kiểu dáng: ​đầm thiết kế dáng chữ A chiết eo nhẹ, tone màu trắng kem, tay dài bồng nhẹ', 'D09762');
INSERT INTO `description_entity` VALUES (64, 'Chi tiết sản phẩm', 'Kiểu dáng: ​đầm thiết kế dáng chữ A chiết eo nhẹ, tone màu trắng kem, tay dài bồng nhẹ', 'D09852');
INSERT INTO `description_entity` VALUES (65, 'Chi tiết sản phẩm', '\"Chất liệu: vải dạ cao cấp', 'D09942A');
INSERT INTO `description_entity` VALUES (66, 'Chi tiết sản phẩm', 'Kiểu dáng: đầm tiệc dáng ôm dài qua gối, tone màu nâu ánh nhũ, thiết kế vạt đáp chéo cách điệu, vai đính hoa 3D bản to', 'D09942B');
INSERT INTO `description_entity` VALUES (67, 'Chi tiết sản phẩm', '\"Chất liệu: vải tổng hợp cao cấp', 'D09962');
INSERT INTO `description_entity` VALUES (68, 'Chi tiết sản phẩm', '\"Chất liệu: vải len cao cấp', 'D10002');
INSERT INTO `description_entity` VALUES (69, 'Chi tiết sản phẩm', 'Kiểu dáng: ​đầm thiết kế dáng chữ A chiết eo nhẹ, tone màu trắng kem, tay dài bồng nhẹ', 'D10012');
INSERT INTO `description_entity` VALUES (70, 'Chi tiết sản phẩm', 'Kiểu dáng: đầm tthiết kế dáng chữ suông dài qua gối, tone màu đen trơn đính cườm, tay voan bồng ', 'D10022');
INSERT INTO `description_entity` VALUES (71, 'Chi tiết sản phẩm', '\"Chất liệu: vải tổng hợp cao cấp', 'D10072');
INSERT INTO `description_entity` VALUES (72, 'Chi tiết sản phẩm', 'Kiểu dáng: ​đầm thiết kế dáng chữ A chiết eo nhẹ, tone màu trắng kem, tay dài bồng nhẹ', 'D10102');
INSERT INTO `description_entity` VALUES (73, 'Chi tiết sản phẩm', 'Kiểu dáng: đầm thiết kế dáng chữ A dài qua gối, tone màu đen trơn kết hợp đường trần chỉ, tay voan rủ', 'D10142');
INSERT INTO `description_entity` VALUES (74, 'Chi tiết sản phẩm', 'Phù hợp: đi làm, sự kiện, hay đi dạo phố, tạo vẻ trẻ trung nữ tính cho người mặc.\"', 'D10169');
INSERT INTO `description_entity` VALUES (75, 'Chi tiết sản phẩm', 'Phù hợp: đi làm, sự kiện, hay đi dạo phố, tạo vẻ trẻ trung nữ tính cho người mặc.\"', 'D10292');
INSERT INTO `description_entity` VALUES (76, 'Chi tiết sản phẩm', 'Kiểu dáng: đầm thiết kế dáng chữ A dài qua gối, tone màu đen trơn, cổ phối đăng ten cách điệu', 'D10312');
INSERT INTO `description_entity` VALUES (77, 'Chi tiết sản phẩm', 'Phù hợp: đi làm, sự kiện, hay đi dạo phố, tạo vẻ trẻ trung nữ tính cho người mặc.\"', 'D10312B');
INSERT INTO `description_entity` VALUES (78, 'Chi tiết sản phẩm', 'Kiểu dáng: đầm thiết kế dáng suông tone màu đen trơn, kết hợp tay chất liệu nhũ ánh', 'D10372');
INSERT INTO `description_entity` VALUES (79, 'Chi tiết sản phẩm', 'Kiểu dáng: ​đầm thiết kế dáng chữ A chiết eo nhẹ, tone màu trắng kem, tay dài bồng nhẹ', 'D10382');
INSERT INTO `description_entity` VALUES (80, 'Chi tiết sản phẩm', 'Kiểu dáng: ​đầm thiết kế dáng chữ A chiết eo nhẹ, tone màu trắng kem, tay dài bồng nhẹ', 'D10392');
INSERT INTO `description_entity` VALUES (81, 'Chi tiết sản phẩm', 'Kiểu dáng: đầm tiệc dáng chữ A dài qua gối, tay bồng nhẹ, tone màu vàng ánh kim in họa tiết hoa bản to', 'D10442');
INSERT INTO `description_entity` VALUES (82, 'Chi tiết sản phẩm', 'Phù hợp: đi làm, sự kiện, hay đi dạo phố, tạo vẻ trẻ trung nữ tính cho người mặc.\"', 'D10452A');
INSERT INTO `description_entity` VALUES (83, 'Chi tiết sản phẩm', '\"Chất liệu: vải tổng hợp cao cấp', 'D10452B');
INSERT INTO `description_entity` VALUES (84, 'Chi tiết sản phẩm', '\"Chất liệu: vải tổng hợp cao cấp', 'D10592');
INSERT INTO `description_entity` VALUES (85, 'Chi tiết sản phẩm', 'Kiểu dáng: đầm thiết kế dáng suông tone màu đỏ, kết hợp họa tiết trắng', 'D10602A');
INSERT INTO `description_entity` VALUES (86, 'Chi tiết sản phẩm', 'Phù hợp: đi làm, sự kiện, hay đi dạo phố, tạo vẻ trẻ trung nữ tính cho người mặc.\"', 'D10602B');
INSERT INTO `description_entity` VALUES (87, 'Chi tiết sản phẩm', 'Kiểu dáng: đầm thiết kế dáng ôm dài qua gối, phần eo cách điệu, chân váy xẻ cao ', 'D10742');
INSERT INTO `description_entity` VALUES (88, 'Chi tiết sản phẩm', '\"Chất liệu: vải tổng hợp cao cấp', 'D10752');
INSERT INTO `description_entity` VALUES (89, 'Chi tiết sản phẩm', 'Phù hợp: đi làm, sự kiện, hay đi dạo phố, tạo vẻ trẻ trung nữ tính cho người mặc.\"', 'D10932');
INSERT INTO `description_entity` VALUES (90, 'Chi tiết sản phẩm', 'Phù hợp: đi làm, sự kiện, hay đi dạo phố, tạo vẻ trẻ trung nữ tính cho người mặc.\"', 'D10942');
INSERT INTO `description_entity` VALUES (91, 'Chi tiết sản phẩm', '\"Chất liệu: vải nhung cao cấp', 'D10972');
INSERT INTO `description_entity` VALUES (92, 'Chi tiết sản phẩm', 'Kiểu dáng: ​đầm thiết kế dáng chữ A chiết eo nhẹ, tone màu trắng kem, tay dài bồng nhẹ', 'D11029A');
INSERT INTO `description_entity` VALUES (93, 'Chi tiết sản phẩm', 'Kiểu dáng: Dáng áo trẻ trung. Kết hợp cùng Chân váy Y81262B để có set đồ hoàn hảo', 'D11029B');
INSERT INTO `description_entity` VALUES (94, 'Chi tiết sản phẩm', 'Kiểu dáng: ​đầm thiết kế dáng chữ A chiết eo nhẹ, tone màu trắng kem, tay dài bồng nhẹ', 'D11089');
INSERT INTO `description_entity` VALUES (95, 'Chi tiết sản phẩm', 'Kiểu dáng: ​đầm thiết kế dáng chữ A chiết eo nhẹ, tone màu trắng kem, tay dài bồng nhẹ', 'D11099');
INSERT INTO `description_entity` VALUES (96, 'Chi tiết sản phẩm', 'Phù hợp cho chị em đi làm, đi chơi\"', 'D11119');
INSERT INTO `description_entity` VALUES (97, 'Chi tiết sản phẩm', 'Màu sắc: Đen', 'D11132A');
INSERT INTO `description_entity` VALUES (98, 'Chi tiết sản phẩm', 'Kiểu dáng: ​đầm thiết kế dáng chữ A chiết eo nhẹ, tone màu trắng kem, tay dài bồng nhẹ', 'D11132B');
INSERT INTO `description_entity` VALUES (99, 'Chi tiết sản phẩm', 'Kiểu dáng: ​đầm thiết kế dáng chữ A chiết eo nhẹ, tone màu trắng kem, tay dài bồng nhẹ', 'D11149');
INSERT INTO `description_entity` VALUES (100, 'Chi tiết sản phẩm', '\"Chất liệu: Nhũ', 'D11159');
INSERT INTO `description_entity` VALUES (101, 'Chi tiết sản phẩm', '\"Chất liệu: vải xốp cao cấp', 'D11292A');
INSERT INTO `description_entity` VALUES (102, 'Chi tiết sản phẩm', '\"Chất liệu: vải nhung cao cấp', 'D11292B');
INSERT INTO `description_entity` VALUES (103, 'Chi tiết sản phẩm', '\"Chất liệu: vải tổng hợp cao cấp', 'D11292C');
INSERT INTO `description_entity` VALUES (104, 'Chi tiết sản phẩm', 'Sở hữu ngay Set đồ xinh đẹp này cho những ngày Back Office rạng rỡ chị em nhé!\"', 'D11469');
INSERT INTO `description_entity` VALUES (105, 'Chi tiết sản phẩm', 'Kiểu dáng: đầm tthiết kế dáng chữ A dài qua gối, vai xếp nếp cách điệu, tone màu vàng nhạt', 'D11552');
INSERT INTO `description_entity` VALUES (106, 'Chi tiết sản phẩm', 'Kiểu dáng: đầm tiệc thiết kế 2 dây, dáng chữ A dài qua gối, tone màu trắng trơn, kết hợp hoa 3D bản to', 'D11609');
INSERT INTO `description_entity` VALUES (107, 'Chi tiết sản phẩm', 'Các đường kẻ ô nhỏ mang lại vẻ tinh tế và một chút cổ điển kết hợp cùng thiết kế áo croptop khiến tổng thể trang phục trở nên hấp dẫn mọi ánh nhìn.', 'D11622');
INSERT INTO `description_entity` VALUES (108, 'Chi tiết sản phẩm', 'Một set đồ được phối giữa blazer dáng ngắn và quần short sẽ trở thành điểm nhấn đầy ấn tượng cho nàng trong mùa thu này.', 'D11722');
INSERT INTO `description_entity` VALUES (109, 'Chi tiết sản phẩm', 'Phù hợp: đi làm, sự kiện, hay đi dạo phố, tạo vẻ trẻ trung nữ tính cho người mặc.\"', 'D11922');
INSERT INTO `description_entity` VALUES (110, 'Chi tiết sản phẩm', 'Kiểu dáng: ​đầm thiết kế dáng chữ A chiết eo nhẹ, tone màu trắng kem, tay dài bồng nhẹ', 'D12049');
INSERT INTO `description_entity` VALUES (111, 'Chi tiết sản phẩm', 'Set đầm kết hợp cùng blazer croptop bên dưới sẽ là đáp án hoàn hảo cho nàng để tỏa sáng trong những ngày thu lãng mạn.', 'D12052');
INSERT INTO `description_entity` VALUES (112, 'Chi tiết sản phẩm', 'Kiểu dáng: ​đầm thiết kế dáng chữ A chiết eo nhẹ, tone màu trắng kem, tay dài bồng nhẹ', 'D12092');
INSERT INTO `description_entity` VALUES (113, 'Chi tiết sản phẩm', 'Phù hợp: đi làm, sự kiện, hay đi dạo phố, tạo vẻ trẻ trung nữ tính cho người mặc.\"', 'D12199');
INSERT INTO `description_entity` VALUES (114, 'Chi tiết sản phẩm', '\"Chất liệu: vải gấm kim tuyến', 'D12492');
INSERT INTO `description_entity` VALUES (115, 'Chi tiết sản phẩm', 'Kiểu dáng: đầm tiệc dáng chữ A dài qua gối tone màu xanh lá, thiết kế rớt vai cách điệu', 'D12682');
INSERT INTO `description_entity` VALUES (116, 'Chi tiết sản phẩm', 'Họa tiết hoa màu vàng gold sang trọng, cùng kiểu với áo. Kết hợp cùng áo  mã C13118C thành một bộ hoàn chỉnh.', 'D1399');
INSERT INTO `description_entity` VALUES (117, 'Chi tiết sản phẩm', '\"Chất liệu: vải tafta cao cấp', 'D20522');
INSERT INTO `description_entity` VALUES (118, 'Chi tiết sản phẩm', 'Phù hợp: đi làm, sự kiện, hay đi dạo phố, tạo vẻ trẻ trung nữ tính cho người mặc.\"', 'D21172');
INSERT INTO `description_entity` VALUES (119, 'Chi tiết sản phẩm', 'Tự thưởng cho mình set đồ tuyệt vời này để chào mùa thu xinh tươi ngay thôi!\"', 'D23212');
INSERT INTO `description_entity` VALUES (120, 'Chi tiết sản phẩm', 'Phù hợp: đi làm, sự kiện, hay đi dạo phố, tạo vẻ trẻ trung nữ tính cho người mặc.\"', 'D23852');
INSERT INTO `description_entity` VALUES (121, 'Chi tiết sản phẩm', '\"Set đồ xinh đẹp này đang trở thành hot items tại Seven.AM vì thiết kế đặc biệt và vô cùng trendy của mình.', 'D26692');
INSERT INTO `description_entity` VALUES (122, 'Chi tiết sản phẩm', 'Phù hợp: đi làm, sự kiện, hay đi dạo phố, tạo vẻ trẻ trung nữ tính cho người mặc.\"', 'D27072');
INSERT INTO `description_entity` VALUES (123, 'Chi tiết sản phẩm', 'Kiểu dáng: ​đầm thiết kế dáng chữ A chiết eo nhẹ, tone màu trắng kem, tay dài bồng nhẹ', 'D29162');
INSERT INTO `description_entity` VALUES (124, 'Chi tiết sản phẩm', 'Kiểu dáng: ​đầm thiết kế dáng chữ A chiết eo nhẹ, tone màu trắng kem, tay dài bồng nhẹ', 'D29652');
INSERT INTO `description_entity` VALUES (125, 'Chi tiết sản phẩm', 'Kiểu dáng: đầm tiệc dáng ôm dài qua gối, tone màu đỏ ánh nhũ, thiết kế vạt đáp chéo cách điệu, vai đính hoa 3D bản to', 'D30312');
INSERT INTO `description_entity` VALUES (126, 'Chi tiết sản phẩm', 'Kiểu dáng: ​đầm thiết kế dáng chữ A chiết eo nhẹ, tone màu trắng kem, tay dài bồng nhẹ', 'D30722');
INSERT INTO `description_entity` VALUES (127, 'Chi tiết sản phẩm', 'Kiểu dáng: ​đầm thiết kế dáng chữ A chiết eo nhẹ, tone màu trắng kem, tay dài bồng nhẹ', 'D31182');
INSERT INTO `description_entity` VALUES (128, 'Chi tiết sản phẩm', 'Dáng blazer ngắn kết hợp quần short trên nền họa tiết kẻ caro mang đến sự trẻ trung và năng động. Bên cạnh đó thiết kế tay áo tinh tế với đường xẻ và mở rộng về phía tay, tạo nên sự nhịp nhàng cho tổng thể trang phục.', 'D31632');
INSERT INTO `description_entity` VALUES (129, 'Chi tiết sản phẩm', 'Kiểu dáng: ​đầm thiết kế dáng chữ A chiết eo nhẹ, tone màu trắng kem, tay dài bồng nhẹ', 'D32169A');
INSERT INTO `description_entity` VALUES (130, 'Chi tiết sản phẩm', '\"Họa tiết kẻ caro đang hot trở lại vào những ngày giao mùa với sức hút đặc biệt chưa bao giờ thuyên giảm của nó. Bên cạnh sự thanh lịch khi ứng dụng trong thiết kế áo blazer, họa tiết kẻ caro bản to còn vô cùng hiệu quả trong việc mang lại nét trẻ trung và năng động cho các quý cô.', 'D32169B');
INSERT INTO `description_entity` VALUES (131, 'Chi tiết sản phẩm', 'Kiểu dáng: ​đầm thiết kế dáng chữ A chiết eo nhẹ, tone màu trắng kem, tay dài bồng nhẹ', 'D32299');
INSERT INTO `description_entity` VALUES (132, 'Chi tiết sản phẩm', 'Kiểu dáng: đầm tthiết kế dáng chữ A dài qua gối, chiết eo nhẹ, tone màu cam trơn kết hợp dây xích ', 'D33942');
INSERT INTO `description_entity` VALUES (133, 'Chi tiết sản phẩm', 'Phù hợp: đi làm, sự kiện, hay đi dạo phố, tạo vẻ trẻ trung nữ tính cho người mặc.\"', 'D34152');
INSERT INTO `description_entity` VALUES (134, 'Chi tiết sản phẩm', '\"Chất liệu: vải tổng hợp cao cấp', 'D44832');
INSERT INTO `description_entity` VALUES (135, 'Chi tiết sản phẩm', 'Kiểu dáng: đầm thiết kế xếp ly tone màu đen trơn, tay bồng nhẹ', 'D60102');
INSERT INTO `description_entity` VALUES (136, 'Chi tiết sản phẩm', 'Phù hợp: đi làm, sự kiện, hay đi dạo phố, tạo vẻ trẻ trung nữ tính cho người mặc.\"', 'D60232A');
INSERT INTO `description_entity` VALUES (137, 'Chi tiết sản phẩm', 'Kiểu dáng: đầm tiệc thiết kế dáng chữ A dài qua gối, kết hợp họa tiết hoa nhí, eo đính nổi hoa 3D đỏ nhung nổi bật', 'D60232B');
INSERT INTO `description_entity` VALUES (138, 'Chi tiết sản phẩm', '\"Chất liệu: vải nhung cao cấp', 'D60292');
INSERT INTO `description_entity` VALUES (139, 'Chi tiết sản phẩm', '\"Chất liệu: vải dạ tweed cao cấp', 'D60362A');
INSERT INTO `description_entity` VALUES (140, 'Chi tiết sản phẩm', '\"Chất liệu: vải gấm cao cấp', 'D60362B');
INSERT INTO `description_entity` VALUES (141, 'Chi tiết sản phẩm', 'Kiểu dáng: đầm tthiết kế dáng suông dài qua gối, cổ tròn, kết hợp tay tơ bồng nhẹ', 'D62052A');
INSERT INTO `description_entity` VALUES (142, 'Chi tiết sản phẩm', 'Phù hợp: đi làm, sự kiện, hay đi dạo phố, tạo vẻ trẻ trung nữ tính cho người mặc.\"', 'D62052B');
INSERT INTO `description_entity` VALUES (143, 'Chi tiết sản phẩm', 'Làm sao để sở hữu một outfit tổng hòa giữa sang trọng và ngọt ngào?', 'D64102');
INSERT INTO `description_entity` VALUES (144, 'Chi tiết sản phẩm', 'Kiểu dáng: ​đầm thiết kế dáng chữ A chiết eo nhẹ, tone màu trắng kem, tay dài bồng nhẹ', 'D80062');
INSERT INTO `description_entity` VALUES (145, 'Chi tiết sản phẩm', 'Một ngày của nàng sẽ trở nên tuyệt vời biết mấy khi khoác lên mình outfit đậm chất cổ điển này!', 'D80412');
INSERT INTO `description_entity` VALUES (146, 'Chi tiết sản phẩm', 'Kiểu dáng: ​đầm thiết kế dáng chữ A chiết eo nhẹ, tone màu trắng kem, tay dài bồng nhẹ', 'E351001');
INSERT INTO `description_entity` VALUES (147, 'Chi tiết sản phẩm', 'Kiểu dáng: ​đầm thiết kế dáng chữ A chiết eo nhẹ, tone màu trắng kem, tay dài bồng nhẹ', 'E730001');
INSERT INTO `description_entity` VALUES (148, 'Chi tiết sản phẩm', '\"Sơ mi tay dài Lụa đen lá họa tiết vàng cổ đức', 'H101026C');
INSERT INTO `description_entity` VALUES (149, 'Chi tiết sản phẩm', 'Kiểu dáng: ​đầm thiết kế dáng chữ A chiết eo nhẹ, tone màu trắng kem, tay dài bồng nhẹ', 'H101027C');
INSERT INTO `description_entity` VALUES (150, 'Chi tiết sản phẩm', 'Kiểu dáng: ​đầm thiết kế dáng chữ A chiết eo nhẹ, tone màu trắng kem, tay dài bồng nhẹ', 'H111013C');
INSERT INTO `description_entity` VALUES (151, 'Chi tiết sản phẩm', 'Áo sơ mi sang trọng thanh lịch, phù hợp mix với chân váy, quần sáng màu\"', 'H301016C');
INSERT INTO `description_entity` VALUES (152, 'Chi tiết sản phẩm', 'Họa tiết kẻ ô nhỏ mang đến tổng thể gam màu ghi nhẹ nhàng, trầm ấm. Thiết kế áo dáng peplum với phần eo được đẩy cao kèm theo thắt lưng duyên dáng kết hợp một chiếc chân váy dáng dài với độ rộng vừa phải, đủ tạo nên độ bồng bềnh, tha thướt mà vẫn giữ được nét sang trọng, thanh lịch.', 'H301016CA');
INSERT INTO `description_entity` VALUES (153, 'Chi tiết sản phẩm', 'Kiểu dáng: ​đầm thiết kế dáng chữ A chiết eo nhẹ, tone màu trắng kem, tay dài bồng nhẹ', 'H331013C');
INSERT INTO `description_entity` VALUES (154, 'Chi tiết sản phẩm', '\"Chất liệu: vải tổng hợp cao cấp', 'J00142');
INSERT INTO `description_entity` VALUES (155, 'Chi tiết sản phẩm', '\"Chất liệu: vải nhung tăm cao cấp', 'J00652');
INSERT INTO `description_entity` VALUES (156, 'Chi tiết sản phẩm', 'Phù hợp: đi làm, sự kiện, hay đi dạo phố, tạo vẻ trẻ trung nữ tính cho người mặc.\"', 'J01192');
INSERT INTO `description_entity` VALUES (157, 'Chi tiết sản phẩm', '\"Chất liệu: vải tổng hợp cao cấp', 'J01752');
INSERT INTO `description_entity` VALUES (158, 'Chi tiết sản phẩm', '\"Chất liệu: vải nhung cao cấp', 'J02162');
INSERT INTO `description_entity` VALUES (159, 'Chi tiết sản phẩm', 'Kiểu dáng: đầm thiết kế dài qua gối, tone màu nâu kết hợp họa tiết da beo, cổ trụ phối khóa kéo', 'J02242');
INSERT INTO `description_entity` VALUES (160, 'Chi tiết sản phẩm', 'Phù hợp: đi làm, sự kiện, hay đi dạo phố, tạo vẻ trẻ trung nữ tính cho người mặc.\"', 'J03112');
INSERT INTO `description_entity` VALUES (161, 'Chi tiết sản phẩm', 'Phù hợp: đi làm, sự kiện, hay đi dạo phố, tạo vẻ trẻ trung nữ tính cho người mặc.\"', 'J03332');
INSERT INTO `description_entity` VALUES (162, 'Chi tiết sản phẩm', 'Phù hợp: đi làm, sự kiện, hay đi dạo phố, tạo vẻ trẻ trung nữ tính cho người mặc.\"', 'J03832');
INSERT INTO `description_entity` VALUES (163, 'Chi tiết sản phẩm', '\"Chất liệu: vải nhung cao cấp', 'J04232');
INSERT INTO `description_entity` VALUES (164, 'Chi tiết sản phẩm', 'Kiểu dáng: đầm thiết kế dáng chữ A dài qua gối, tone màu nâu kết hợp họa tiết hoa in sắc nét', 'J04242');
INSERT INTO `description_entity` VALUES (165, 'Chi tiết sản phẩm', 'Kiểu dáng: đầm thiết kế dáng chữ A dài qua gối, tay bồng, kết hợp họa tiết kẻ ô', 'J04272');
INSERT INTO `description_entity` VALUES (166, 'Chi tiết sản phẩm', 'Phù hợp: đi làm, sự kiện, hay đi dạo phố, tạo vẻ trẻ trung nữ tính cho người mặc.\"', 'J04322');
INSERT INTO `description_entity` VALUES (167, 'Chi tiết sản phẩm', 'Phù hợp: đi làm, sự kiện, hay đi dạo phố, tạo vẻ trẻ trung nữ tính cho người mặc.\"', 'J05242');
INSERT INTO `description_entity` VALUES (168, 'Chi tiết sản phẩm', 'Kiểu dáng: đầm liền thiết kế dáng ôm, tone màu nâu trơn, cổ phối nơ bản to', 'J06452');
INSERT INTO `description_entity` VALUES (169, 'Chi tiết sản phẩm', '\"Chất liệu: vải len cao cấp', 'J06672');
INSERT INTO `description_entity` VALUES (170, 'Chi tiết sản phẩm', 'Kiểu dáng: đầm thiết kế không tay tone màu xám nhạt,kết hợp đường họa tiết tạo điểm nhấn', 'J31772');
INSERT INTO `description_entity` VALUES (171, 'Chi tiết sản phẩm', 'Kiểu dáng: đầm thiết kế dáng chữ A, tone màu đen trơn, tay voan bông nhẹ', 'J32522');
INSERT INTO `description_entity` VALUES (172, 'Chi tiết sản phẩm', 'Phù hợp: đi làm, sự kiện, hay đi dạo phố, tạo vẻ trẻ trung nữ tính cho người mặc.\"', 'J33282');
INSERT INTO `description_entity` VALUES (173, 'Chi tiết sản phẩm', 'Kiểu dáng: đầm thiết kế dáng chữ A, tone màu vàng trơn, kết hợp chun eo', 'J33552');
INSERT INTO `description_entity` VALUES (174, 'Chi tiết sản phẩm', 'Kiểu dáng: đầm thiết kế dáng chữ A dài qua gối, tone màu đen trơn đính đá, cổ vuông', 'J34192');
INSERT INTO `description_entity` VALUES (175, 'Chi tiết sản phẩm', '\"Chất liệu: vải tổng hợp cao cấp', 'J34342');
INSERT INTO `description_entity` VALUES (176, 'Chi tiết sản phẩm', 'sản phẩm ngừng kinh doanh', 'SANPHAMNGUNGKINHDOANH');
INSERT INTO `description_entity` VALUES (177, 'Chi tiết sản phẩm', '\"Chất liệu: vải tổng hợp cao cấp', 'SM08532');
INSERT INTO `description_entity` VALUES (178, 'Chi tiết sản phẩm', '\"Chất liệu: vải tổng hợp cao cấp', 'SM09822');
INSERT INTO `description_entity` VALUES (179, 'Chi tiết sản phẩm', 'Phù hợp: đi làm, sự kiện, hay đi dạo phố, tạo vẻ trẻ trung nữ tính cho người mặc.\"', 'SM11282');
INSERT INTO `description_entity` VALUES (180, 'Chi tiết sản phẩm', 'Kiểu dáng: đầm thiết kế không tay dáng suông, tone màu xám trơn kết hợp cổ bẻ ', 'SM13822');
INSERT INTO `description_entity` VALUES (181, 'Chi tiết sản phẩm', 'Phù hợp: đi làm, sự kiện, hay đi dạo phố, tạo vẻ trẻ trung nữ tính cho người mặc.\"', 'TS08872');
INSERT INTO `description_entity` VALUES (182, 'Chi tiết sản phẩm', 'Kiểu dáng: đầm thiết kế dáng suông dài qua gối, chiết eo nhẹ, tone màu đen trơn phối hoa thêu nổi bật', 'TS10042');
INSERT INTO `description_entity` VALUES (183, 'Chi tiết sản phẩm', 'Kiểu dáng: đầm thiết kế chữ A dài qua gối, tay lỡ bồng nhẹ, tone màu trắng trơn', 'TS10132');
INSERT INTO `description_entity` VALUES (184, 'Chi tiết sản phẩm', 'Phù hợp: đi làm, sự kiện, hay đi dạo phố, tạo vẻ trẻ trung nữ tính cho người mặc.\"', 'TS10302');
INSERT INTO `description_entity` VALUES (185, 'Chi tiết sản phẩm', '\"Chất liệu: vải tổng hợp cao cấp', 'TS10642A');
INSERT INTO `description_entity` VALUES (186, 'Chi tiết sản phẩm', '\"Chất liệu: vải tổng hợp cao cấp', 'TS10642B');
INSERT INTO `description_entity` VALUES (187, 'Chi tiết sản phẩm', 'Kiểu dáng: đầm liền thiết kế 2 trong 1, dáng chữ A dài qua gối, tone màu nâu.', 'TS10902');
INSERT INTO `description_entity` VALUES (188, 'Chi tiết sản phẩm', 'Phù hợp: đi làm, sự kiện, hay đi dạo phố, tạo vẻ trẻ trung nữ tính cho người mặc.\"', 'TS11859');
INSERT INTO `description_entity` VALUES (189, 'Chi tiết sản phẩm', '\"Chất liệu: vải tổng hợp cao cấp', 'TS11872');
INSERT INTO `description_entity` VALUES (190, 'Chi tiết sản phẩm', 'Kiểu dáng: ​đầm thiết kế dáng chữ A chiết eo nhẹ, tone màu trắng kem, tay dài bồng nhẹ', 'V101019C');
INSERT INTO `description_entity` VALUES (191, 'Chi tiết sản phẩm', 'Kiểu dáng: ​đầm thiết kế dáng chữ A chiết eo nhẹ, tone màu trắng kem, tay dài bồng nhẹ', 'V301005D');
INSERT INTO `description_entity` VALUES (192, 'Chi tiết sản phẩm', 'Tự thưởng cho mình set đồ tuyệt vời này để chào mùa thu xinh tươi ngay thôi!\"', 'V301006C');
INSERT INTO `description_entity` VALUES (193, 'Chi tiết sản phẩm', 'Đầm maxi tay rộng, thiết kế dây tết nữ tính, quyến rũ. Kiểu dáng đầm bay bổng phù hợp chị em diện trong các bữa tiệc, cuộc dạo chơi.', 'V301007D');
INSERT INTO `description_entity` VALUES (194, 'Chi tiết sản phẩm', 'Kiểu dáng: ​đầm thiết kế dáng chữ A chiết eo nhẹ, tone màu trắng kem, tay dài bồng nhẹ', 'V301010');
INSERT INTO `description_entity` VALUES (195, 'Chi tiết sản phẩm', 'Kiểu dáng: ​đầm thiết kế dáng chữ A chiết eo nhẹ, tone màu trắng kem, tay dài bồng nhẹ', 'V301010D');
INSERT INTO `description_entity` VALUES (196, 'Chi tiết sản phẩm', 'Một set đồ được phối giữa blazer dáng ngắn và quần short sẽ trở thành điểm nhấn đầy ấn tượng cho nàng trong mùa thu này.', 'V301011C');
INSERT INTO `description_entity` VALUES (197, 'Chi tiết sản phẩm', 'Kiểu dáng: ​đầm thiết kế dáng chữ A chiết eo nhẹ, tone màu trắng kem, tay dài bồng nhẹ', 'V331006');
INSERT INTO `description_entity` VALUES (198, 'Chi tiết sản phẩm', 'Kiểu dáng: ​đầm thiết kế dáng chữ A chiết eo nhẹ, tone màu trắng kem, tay dài bồng nhẹ', 'V331006H');
INSERT INTO `description_entity` VALUES (199, 'Chi tiết sản phẩm', 'Kiểu dáng: ​đầm thiết kế dáng chữ A chiết eo nhẹ, tone màu trắng kem, tay dài bồng nhẹ', 'V331007C');
INSERT INTO `description_entity` VALUES (200, 'Chi tiết sản phẩm', 'Kiểu dáng: ​đầm thiết kế dáng chữ A chiết eo nhẹ, tone màu trắng kem, tay dài bồng nhẹ', 'V331011C');
INSERT INTO `description_entity` VALUES (201, 'Chi tiết sản phẩm', 'Kiểu dáng: ​đầm thiết kế dáng chữ A chiết eo nhẹ, tone màu trắng kem, tay dài bồng nhẹ', 'V331017C');
INSERT INTO `description_entity` VALUES (202, 'Chi tiết sản phẩm', 'Đầm dáng xòe trễ vai họa tiết hoa chìm sang trọng trên nền vài gấm phối đăng ten sang trọng và quyến rũ.', 'V351014');
INSERT INTO `description_entity` VALUES (203, 'Chi tiết sản phẩm', 'Kiểu dáng: ​đầm thiết kế dáng chữ A chiết eo nhẹ, tone màu trắng kem, tay dài bồng nhẹ', 'V352002');
INSERT INTO `description_entity` VALUES (204, 'Chi tiết sản phẩm', 'Kiểu dáng: ​đầm thiết kế dáng chữ A chiết eo nhẹ, tone màu trắng kem, tay dài bồng nhẹ', 'V401007C');
INSERT INTO `description_entity` VALUES (205, 'Chi tiết sản phẩm', 'Kiểu dáng: ​đầm thiết kế dáng chữ A chiết eo nhẹ, tone màu trắng kem, tay dài bồng nhẹ', 'V401008C');
INSERT INTO `description_entity` VALUES (206, 'Chi tiết sản phẩm', 'Kiểu dáng: ​đầm thiết kế dáng chữ A chiết eo nhẹ, tone màu trắng kem, tay dài bồng nhẹ', 'V601005C');
INSERT INTO `description_entity` VALUES (207, 'Chi tiết sản phẩm', 'Kiểu dáng: ​đầm thiết kế dáng chữ A chiết eo nhẹ, tone màu trắng kem, tay dài bồng nhẹ', 'V601008C');
INSERT INTO `description_entity` VALUES (208, 'Chi tiết sản phẩm', 'Kiểu dáng: Đầm cổ tròn , khoét lệ hình cánh hoa ở cổ , đầu tay bồng nhẹ , cửa tay măngsec bản to , tùng thiên rủ nhẹ tạo hình ảnh nữ tính , thanh lịch \"', 'V601009D');
INSERT INTO `description_entity` VALUES (209, 'Chi tiết sản phẩm', 'Kiểu dáng: ​đầm thiết kế dáng chữ A chiết eo nhẹ, tone màu trắng kem, tay dài bồng nhẹ', 'V601016D');
INSERT INTO `description_entity` VALUES (210, 'Chi tiết sản phẩm', '\"Đầm cổ tròn , khoét lệ hình cánh hoa ở cổ , tay bồng nhẹ.', 'V604004');
INSERT INTO `description_entity` VALUES (211, 'Chi tiết sản phẩm', 'Kiểu dáng: ​đầm thiết kế dáng chữ A chiết eo nhẹ, tone màu trắng kem, tay dài bồng nhẹ', 'V611007C');
INSERT INTO `description_entity` VALUES (212, 'Chi tiết sản phẩm', 'Kiểu dáng: ​đầm thiết kế dáng chữ A chiết eo nhẹ, tone màu trắng kem, tay dài bồng nhẹ', 'V611008H');
INSERT INTO `description_entity` VALUES (213, 'Chi tiết sản phẩm', '\"Đầm xốp vàng dáng ôm thêu cành hoa lá trang trí eo', 'V611010D');
INSERT INTO `description_entity` VALUES (214, 'Chi tiết sản phẩm', 'Kiểu dáng: ​đầm thiết kế dáng chữ A chiết eo nhẹ, tone màu trắng kem, tay dài bồng nhẹ', 'V611014C');
INSERT INTO `description_entity` VALUES (215, 'Chi tiết sản phẩm', 'Kiểu dáng: ​đầm thiết kế dáng chữ A chiết eo nhẹ, tone màu trắng kem, tay dài bồng nhẹ', 'V611016C');
INSERT INTO `description_entity` VALUES (216, 'Chi tiết sản phẩm', 'Kiểu dáng: ​đầm thiết kế dáng chữ A chiết eo nhẹ, tone màu trắng kem, tay dài bồng nhẹ', 'V611017H');
INSERT INTO `description_entity` VALUES (217, 'Chi tiết sản phẩm', 'Kiểu dáng: ​đầm thiết kế dáng chữ A chiết eo nhẹ, tone màu trắng kem, tay dài bồng nhẹ', 'V611020C');
INSERT INTO `description_entity` VALUES (218, 'Chi tiết sản phẩm', 'Kiểu dáng: ​đầm thiết kế dáng chữ A chiết eo nhẹ, tone màu trắng kem, tay dài bồng nhẹ', 'V611021D');
INSERT INTO `description_entity` VALUES (219, 'Chi tiết sản phẩm', 'Kiểu dáng: ​đầm thiết kế dáng chữ A chiết eo nhẹ, tone màu trắng kem, tay dài bồng nhẹ', 'V612017C');
INSERT INTO `description_entity` VALUES (220, 'Chi tiết sản phẩm', 'Kiểu dáng: Đầm dáng suông nhưng thân trên ôm tôn dáng, không lộ bụng. Eo váy được thêu 3D cành hoa kết hợp kim sa rất tinh tế, sang trọng. Tay đầm dài trên khuỷu giúp che bắp tay\"', 'V612018C');
INSERT INTO `description_entity` VALUES (221, 'Chi tiết sản phẩm', ' Kiểu dáng: Đầm ôm sát , tôn dáng . Dải lá thêu tung bay nhẹ nhàng , uyển chuyển', 'V614004');
INSERT INTO `description_entity` VALUES (222, 'Chi tiết sản phẩm', 'Kiểu dáng: ​đầm thiết kế dáng chữ A chiết eo nhẹ, tone màu trắng kem, tay dài bồng nhẹ', 'V614006C');
INSERT INTO `description_entity` VALUES (223, 'Chi tiết sản phẩm', 'Kiểu dáng: ​đầm thiết kế dáng chữ A chiết eo nhẹ, tone màu trắng kem, tay dài bồng nhẹ', 'V621006');
INSERT INTO `description_entity` VALUES (224, 'Chi tiết sản phẩm', 'Kiểu dáng: ​đầm thiết kế dáng chữ A chiết eo nhẹ, tone màu trắng kem, tay dài bồng nhẹ', 'V621007H');
INSERT INTO `description_entity` VALUES (225, 'Chi tiết sản phẩm', 'Kiểu dáng: ​đầm thiết kế dáng chữ A chiết eo nhẹ, tone màu trắng kem, tay dài bồng nhẹ', 'V624002D');
INSERT INTO `description_entity` VALUES (226, 'Chi tiết sản phẩm', 'Kiểu dáng: ​đầm thiết kế dáng chữ A chiết eo nhẹ, tone màu trắng kem, tay dài bồng nhẹ', 'V631006C');
INSERT INTO `description_entity` VALUES (227, 'Chi tiết sản phẩm', 'Kiểu dáng: Đầm xòe cổ bẻ, giao 2 hàng khuy, tùng váy xếp ly', 'V631008');
INSERT INTO `description_entity` VALUES (228, 'Chi tiết sản phẩm', 'Kiểu dáng: ​đầm thiết kế dáng chữ A chiết eo nhẹ, tone màu trắng kem, tay dài bồng nhẹ', 'V631009D');
INSERT INTO `description_entity` VALUES (229, 'Chi tiết sản phẩm', 'Kiểu dáng: ​đầm thiết kế dáng chữ A chiết eo nhẹ, tone màu trắng kem, tay dài bồng nhẹ', 'V631010C');
INSERT INTO `description_entity` VALUES (230, 'Chi tiết sản phẩm', 'Kiểu dáng: ​đầm thiết kế dáng chữ A chiết eo nhẹ, tone màu trắng kem, tay dài bồng nhẹ', 'V631012D');
INSERT INTO `description_entity` VALUES (231, 'Chi tiết sản phẩm', '\"Đầm xòe lụa nền trắng họa tiết hoa', 'V631013');
INSERT INTO `description_entity` VALUES (232, 'Chi tiết sản phẩm', 'Kiểu dáng: ​đầm thiết kế dáng chữ A chiết eo nhẹ, tone màu trắng kem, tay dài bồng nhẹ', 'V631020H');
INSERT INTO `description_entity` VALUES (233, 'Chi tiết sản phẩm', 'Kiểu dáng: ​đầm thiết kế dáng chữ A chiết eo nhẹ, tone màu trắng kem, tay dài bồng nhẹ', 'V641004C');
INSERT INTO `description_entity` VALUES (234, 'Chi tiết sản phẩm', 'Kiểu dáng: Đầm dài ngang bắp chân , xếp ly tùng mềm mai\"', 'V641006');
INSERT INTO `description_entity` VALUES (235, 'Chi tiết sản phẩm', 'Kiểu dáng: ​đầm thiết kế dáng chữ A chiết eo nhẹ, tone màu trắng kem, tay dài bồng nhẹ', 'V641007');
INSERT INTO `description_entity` VALUES (236, 'Chi tiết sản phẩm', 'Kiểu dáng: ​đầm thiết kế dáng chữ A chiết eo nhẹ, tone màu trắng kem, tay dài bồng nhẹ', 'V641009');
INSERT INTO `description_entity` VALUES (237, 'Chi tiết sản phẩm', 'Kiểu dáng: ​đầm thiết kế dáng chữ A chiết eo nhẹ, tone màu trắng kem, tay dài bồng nhẹ', 'V644002C');
INSERT INTO `description_entity` VALUES (238, 'Chi tiết sản phẩm', 'Dáng blazer ngắn kết hợp quần short trên nền họa tiết kẻ caro mang đến sự trẻ trung và năng động. Bên cạnh đó thiết kế tay áo tinh tế với đường xẻ và mở rộng về phía tay, tạo nên sự nhịp nhàng cho tổng thể trang phục.', 'V700005');
INSERT INTO `description_entity` VALUES (239, 'Chi tiết sản phẩm', 'Kết hợp với một chiếc quần short cạp cao, crop blazer tạo nên set đồ chinh phục mọi ánh nhìn của phái đẹp.\"', 'V710009C');
INSERT INTO `description_entity` VALUES (240, 'Chi tiết sản phẩm', 'Hoàn toàn có thể kết hợp set đồ với áo mặc trong tối màu, một gợi ý nhỏ cho nàng đó là áo ren đi kèm để tạo nên set đồ hoàn chỉnh nhất.', 'V710014D');
INSERT INTO `description_entity` VALUES (241, 'Chi tiết sản phẩm', 'Kiểu dáng: ​đầm thiết kế dáng chữ A chiết eo nhẹ, tone màu trắng kem, tay dài bồng nhẹ', 'V730006');
INSERT INTO `description_entity` VALUES (242, 'Chi tiết sản phẩm', 'Kiểu dáng: ​đầm thiết kế dáng chữ A chiết eo nhẹ, tone màu trắng kem, tay dài bồng nhẹ', 'V800009C');
INSERT INTO `description_entity` VALUES (243, 'Chi tiết sản phẩm', 'Đầm xòe trễ vai, nơ ngực to bản. Màu sắc: Vàng gold sang trọng, quý phái. Phù hợp cho các buổi tiệc tối, những cuộc dạo chơi,.', 'V850004C');
INSERT INTO `description_entity` VALUES (244, 'Chi tiết sản phẩm', 'Kiểu dáng: ​đầm thiết kế dáng chữ A chiết eo nhẹ, tone màu trắng kem, tay dài bồng nhẹ', 'V850009');
INSERT INTO `description_entity` VALUES (245, 'Chi tiết sản phẩm', 'Kiểu dáng: ​đầm thiết kế dáng chữ A chiết eo nhẹ, tone màu trắng kem, tay dài bồng nhẹ', 'Y331002');
INSERT INTO `description_entity` VALUES (246, 'Chi tiết sản phẩm', 'Kiểu dáng: ​đầm thiết kế dáng chữ A chiết eo nhẹ, tone màu trắng kem, tay dài bồng nhẹ', 'Y33407A');
INSERT INTO `description_entity` VALUES (247, 'Chi tiết sản phẩm', 'Kiểu dáng: ​đầm thiết kế dáng chữ A chiết eo nhẹ, tone màu trắng kem, tay dài bồng nhẹ', 'Y33407B');
INSERT INTO `description_entity` VALUES (248, 'Chi tiết sản phẩm', 'Kiểu dáng: ​đầm thiết kế dáng chữ A chiết eo nhẹ, tone màu trắng kem, tay dài bồng nhẹ', 'Y401014C');
INSERT INTO `description_entity` VALUES (249, 'Chi tiết sản phẩm', 'Kiểu dáng: ​đầm thiết kế dáng chữ A chiết eo nhẹ, tone màu trắng kem, tay dài bồng nhẹ', 'Y720002');
INSERT INTO `description_entity` VALUES (250, 'Chi tiết sản phẩm', '\"THIẾT KẾ SANG TRỌNG CHO QUÝ CÔ YÊU THÍCH SỰ CỔ ĐIỂN', 'Y720003');
INSERT INTO `description_entity` VALUES (251, 'Chi tiết sản phẩm', '\"Set đồ xinh đẹp này đang trở thành hot items tại Seven.AM vì thiết kế đặc biệt và vô cùng trendy của mình.', 'Y81269');
INSERT INTO `description_entity` VALUES (252, 'Chi tiết sản phẩm', 'Kiểu dáng: ​đầm thiết kế dáng chữ A chiết eo nhẹ, tone màu trắng kem, tay dài bồng nhẹ', 'Y81269F');
INSERT INTO `description_entity` VALUES (253, 'Chi tiết sản phẩm', 'Kiểu dáng: ​đầm thiết kế dáng chữ A chiết eo nhẹ, tone màu trắng kem, tay dài bồng nhẹ', 'Z04892');
INSERT INTO `description_entity` VALUES (254, 'Chi tiết sản phẩm', '\"Chất liệu: vải tổng hợp cao cấp', 'Z05552');
INSERT INTO `description_entity` VALUES (255, 'Chi tiết sản phẩm', 'Phù hợp: đi làm, sự kiện, hay đi dạo phố, tạo vẻ thanh lịch cho người mặc.\"', 'Z05592');
INSERT INTO `description_entity` VALUES (256, 'Chi tiết sản phẩm', 'Kiểu dáng: ​đầm thiết kế dáng chữ A dài qua gối, tone màu đỏ trơn, vai bồng, phần eo đính cách điệu', 'Z05722');
INSERT INTO `description_entity` VALUES (257, 'Chi tiết sản phẩm', 'Kiểu dáng: ​đầm thiết kế dáng chữ A dài qua gối, tone màu đỏ trơn, vai bồng, phần eo đính cách điệu', 'Z05732');
INSERT INTO `description_entity` VALUES (258, 'Chi tiết sản phẩm', '\"Chất liệu: vải tổng hợp cao cấp', 'Z05992');
INSERT INTO `description_entity` VALUES (259, 'Chi tiết sản phẩm', 'Phù hợp: đi làm, sự kiện, hay đi dạo phố, tạo vẻ thanh lịch cho người mặc.\"', 'Z06042');
INSERT INTO `description_entity` VALUES (260, 'Chi tiết sản phẩm', 'Kiểu dáng: ​đầm thiết kế dáng chữ A dài qua gối, tone màu đen trơn, vai bồng, phần eo đính cách điệu', 'Z06372');
INSERT INTO `description_entity` VALUES (261, 'Chi tiết sản phẩm', 'Kiểu dáng: đầm thiết kế dáng suông dài qua gối kết hợp họa tiết nổi bật', 'Z06402');
INSERT INTO `description_entity` VALUES (262, 'Chi tiết sản phẩm', '\"Chất liệu: vải tổng hợp cao cấp', 'Z08122');
INSERT INTO `description_entity` VALUES (263, 'Chi tiết sản phẩm', '\"Chất liệu: vải tổng hợp cao cấp', 'Z08132');
INSERT INTO `description_entity` VALUES (264, 'Chi tiết sản phẩm', 'Kiểu dáng: ​đầm liền thiết kế dài tay, tone màu đỏ trơn, cổ vest 2 ve, vai bồng nhẹ', 'Z08492');
INSERT INTO `description_entity` VALUES (265, 'Chi tiết sản phẩm', 'Kiểu dáng: ​đầm thiết kế tone màu đỏ trơn, kết hợp tay voan kính, chiết eo nhẹ', 'Z08562');
INSERT INTO `description_entity` VALUES (266, 'Chi tiết sản phẩm', '\"Chất liệu: vải nhung cao cấp', 'Z08612');
INSERT INTO `description_entity` VALUES (267, 'Chi tiết sản phẩm', 'Phù hợp: đi làm, sự kiện, hay đi dạo phố, tạo vẻ thanh lịch cho người mặc.\"', 'Z08642');
INSERT INTO `description_entity` VALUES (268, 'Chi tiết sản phẩm', '\"Chất liệu: vải tổng hợp cao cấp', 'Z08832');
INSERT INTO `description_entity` VALUES (269, 'Chi tiết sản phẩm', 'Phù hợp: đi làm, sự kiện, hay đi dạo phố, tạo vẻ trẻ trung nữ tính cho người mặc.\"', 'Z08992');
INSERT INTO `description_entity` VALUES (270, 'Chi tiết sản phẩm', '\"Chất liệu: vải nhung cao cấp', 'Z09042');
INSERT INTO `description_entity` VALUES (271, 'Chi tiết sản phẩm', 'Kiểu dáng: đầm thiết kế dáng ôm dài qua gối, kết hợp họa tiết da beo ', 'Z09122');
INSERT INTO `description_entity` VALUES (272, 'Chi tiết sản phẩm', 'Kiểu dáng: đầm thiết kế dáng sơ mi cổ vẻ, tone màu nâu be trơn kết hợp dây đai cùng tone màu', 'Z09152');
INSERT INTO `description_entity` VALUES (273, 'Chi tiết sản phẩm', '\"Chất liệu: vải tổng hợp cao cấp', 'Z09292');
INSERT INTO `description_entity` VALUES (274, 'Chi tiết sản phẩm', 'Phù hợp: đi làm, sự kiện, hay đi dạo phố, tạo vẻ thanh lịch cho người mặc.\"', 'Z09312');
INSERT INTO `description_entity` VALUES (275, 'Chi tiết sản phẩm', 'Phù hợp: đi làm, hay đi dạo phố, tạo vẻ trẻ trung cho người mặc.\"', 'Z09612A');
INSERT INTO `description_entity` VALUES (276, 'Chi tiết sản phẩm', '\"Chất liệu: vải tổng hợp cao cấp', 'Z09612B');
INSERT INTO `description_entity` VALUES (277, 'Chi tiết sản phẩm', 'Phù hợp: đi làm, sự kiện, hay đi dạo phố, tạo vẻ trẻ trung nữ tính cho người mặc.\"', 'Z09722');
INSERT INTO `description_entity` VALUES (278, 'Chi tiết sản phẩm', 'Kiểu dáng: ​đầm thiết kế hạ eo, cổ bẻ, kèm đai thắt eo như hình', 'Z09752');
INSERT INTO `description_entity` VALUES (279, 'Chi tiết sản phẩm', '\"Chất liệu: vải nhung cao cấp', 'Z09812');
INSERT INTO `description_entity` VALUES (280, 'Chi tiết sản phẩm', 'Kiểu dáng: đầm thiết kế dáng chữ A dài qua gối, tone màu đỏ kết hợp họa tiết kẻ, tay bồng nhẹ', 'Z09832');
INSERT INTO `description_entity` VALUES (281, 'Chi tiết sản phẩm', '\"Chất liệu: vải tổng hợp cao cấp', 'Z09862');
INSERT INTO `description_entity` VALUES (282, 'Chi tiết sản phẩm', '\"Chất liệu: vải tổng hợp cao cấp', 'Z10152');
INSERT INTO `description_entity` VALUES (283, 'Chi tiết sản phẩm', 'Phù hợp: đi làm, sự kiện, hay đi dạo phố, tạo vẻ trẻ trung nữ tính cho người mặc.\"', 'Z10192');
INSERT INTO `description_entity` VALUES (284, 'Chi tiết sản phẩm', 'Phù hợp: đi làm, sự kiện, hay đi dạo phố, tạo vẻ trẻ trung nữ tính cho người mặc.\"', 'Z10212');
INSERT INTO `description_entity` VALUES (285, 'Chi tiết sản phẩm', 'Phù hợp: đi làm, sự kiện, hay đi dạo phố, tạo vẻ trẻ trung nữ tính cho người mặc.\"', 'Z10262');
INSERT INTO `description_entity` VALUES (286, 'Chi tiết sản phẩm', '\"Chất liệu: vải len cao cấp', 'Z10552A');
INSERT INTO `description_entity` VALUES (287, 'Chi tiết sản phẩm', 'Kiểu dáng: đầm thiết kế dáng chữ A dài qua gối, tone màu be kết hợp họa tiết chấm bi ', 'Z10552B');
INSERT INTO `description_entity` VALUES (288, 'Chi tiết sản phẩm', 'Phù hợp: đi làm, sự kiện, hay đi dạo phố, tạo vẻ trẻ trung nữ tính cho người mặc.\"', 'Z10772');
INSERT INTO `description_entity` VALUES (289, 'Chi tiết sản phẩm', 'Kiểu dáng: đầm liền thiết kế dáng chữ A dài qua gối, phần thân tone màu đen kết hợp chân váy họa tiết da beo', 'Z10782');
INSERT INTO `description_entity` VALUES (290, 'Chi tiết sản phẩm', 'Kiểu dáng: đầm thiết kế dáng ôm, tone màu đen kết hợp họa tiết hoa in sắc nét', 'Z10852');
INSERT INTO `description_entity` VALUES (291, 'Chi tiết sản phẩm', 'Kiểu dáng: ​đầm thiết kế dài tay, dáng chữ dài qua gối, tone màu đen trơn, cổ tròn đính đá ', 'Z10882');
INSERT INTO `description_entity` VALUES (292, 'Chi tiết sản phẩm', '\"Chất liệu: vải len cao cấp', 'Z11212');
INSERT INTO `description_entity` VALUES (293, 'Chi tiết sản phẩm', 'Phù hợp: đi làm, sự kiện, hay đi dạo phố, tạo vẻ trẻ trung nữ tính cho người mặc.\"', 'Z11222');
INSERT INTO `description_entity` VALUES (294, 'Chi tiết sản phẩm', '\"Họa tiết kẻ caro đang hot trở lại vào những ngày giao mùa với sức hút đặc biệt chưa bao giờ thuyên giảm của nó. Bên cạnh sự thanh lịch khi ứng dụng trong thiết kế áo blazer, họa tiết kẻ caro bản to còn vô cùng hiệu quả trong việc mang lại nét trẻ trung và năng động cho các quý cô.', 'Z16011A');
INSERT INTO `description_entity` VALUES (295, 'Chi tiết sản phẩm', '\"Chất liệu: vải gấm tafta cao cấp', 'Z16981');
INSERT INTO `description_entity` VALUES (296, 'Chi tiết sản phẩm', 'Phù hợp: đi làm, sự kiện, hay đi dạo phố, tạo vẻ thanh lịch cho người mặc.\"', 'Z25372');
INSERT INTO `description_entity` VALUES (297, 'Chi tiết sản phẩm', 'Phù hợp: đi làm, sự kiện, hay đi dạo phố, tạo vẻ trẻ trung nữ tính cho người mặc.\"', 'Z67052A');
INSERT INTO `description_entity` VALUES (298, 'Chi tiết sản phẩm', '\"Chất liệu: vải tổng hợp cao cấp', 'Z67052B');
INSERT INTO `description_entity` VALUES (299, 'Chi tiết sản phẩm', 'Phù hợp: đi làm, sự kiện, hay đi dạo phố, tạo vẻ thanh lịch cho người mặc.\"', 'Z80012');
INSERT INTO `description_entity` VALUES (300, 'Chi tiết sản phẩm', 'Phù hợp: đi làm, sự kiện, hay đi dạo phố, tạo vẻ thanh lịch cho người mặc.\"', 'Z80182');
INSERT INTO `description_entity` VALUES (301, 'Chi tiết sản phẩm', 'Kiểu dáng: ​đầm thiết kế dáng ôm dài qua gối tone màu đỏ trơn, tay lỡ bo chun, đính hoa thêu', 'Z80322');

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
INSERT INTO `product_entity` VALUES ('AD00132', 'Áo Dài Phối Họa Tiết', 1795000, 30, 30, 30, 0, 1, NULL, 3, 6, '2022-05-29 23:01:13.719185', 1);
INSERT INTO `product_entity` VALUES ('AD00472', 'Áo Dài Phối Hoa Thêu', 1699000, 28, 28, 0, 28, 2, NULL, 3, 3, '2022-05-29 23:01:13.719185', 2);
INSERT INTO `product_entity` VALUES ('AD01822A', 'Áo Dài Đỏ Phối Hoa Thêu', 1694000, 1, 0, 1, 1, 3, NULL, 3, 2, '2022-05-29 23:01:13.719185', 4);
INSERT INTO `product_entity` VALUES ('AD01822B', 'Áo Dai Phối Hoa Thêu', 1795000, 0, 21, 21, 21, 4, NULL, 3, 7, '2022-05-29 23:01:13.719185', 7);
INSERT INTO `product_entity` VALUES ('AD08632', 'Áo Dài Trắng Tay Bồng', 1799000, 67, 67, 67, 67, 5, NULL, 3, 0, '2022-05-29 23:01:13.719185', 9);
INSERT INTO `product_entity` VALUES ('AD08662', 'Áo Dài Đỏ Phối Hoa Cắt', 1899000, 86, 86, 86, 86, 6, NULL, 3, 0, '2022-05-29 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('AD08852', 'Áo Dài Đính Hoa Nổi', 1999000, 61, 61, 61, 61, 1, NULL, 3, 0, '2022-05-30 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('AD09202', 'Áo Dài ĐínhsHoa Nổi', 1799000, 8, 8, 8, 8, 2, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('AD09222', 'Áo Dài Xanh Thiết Kế', 1699000, 54, 54, 54, 54, 3, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('AD09262A', 'Áo Dài Phối Hoa Thêu', 1859000, 49, 49, 49, 49, 4, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('AD09262B', 'Áo Dài Phối Hoa Thêu', 1699000, 2, 2, 2, 2, 5, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('AD09492A', 'Áo Dài Cách Tân Dáng Ngắn', 1859000, 61, 61, 61, 61, 6, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('AD09492B', 'Áo Dài Cách Tân Dáng Ngắn', 1859000, 23, 23, 23, 23, 1, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('AD11069', 'Áo Dài Đính Hoa Sen', 1699000, 46, 46, 46, 46, 2, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('AD11449', 'Áo Dài Hoa Xanh', 1759000, 93, 93, 93, 93, 3, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('AD11499', 'Áo Dài Gấm Hoa', 1299000, 58, 58, 58, 58, 4, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('AD27319', 'Áo Dài Phối Hoa', 2592000, 39, 39, 39, 39, 5, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('C101015C', 'Áo Sơ Mi Chất Liệu Lụa Kiểu Dáng Cổ Đức Dài Tay Họa Tiết Lá Vàng', 897000, 21, 21, 21, 21, 6, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('C13115C', 'Áo Kiểu Dáng NgắnTay Thiết Kế Thêu Cúp Ngực Màu Đen', 1297000, 98, 98, 98, 98, 1, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('C52461C', 'Đầm Dáng Xòe Kiểu Dáng 2 Dây Chất Liệu Ren Lưới Màu Đen', 1697000, 63, 63, 63, 63, 2, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('C58828C', 'Đầm Maxi Kiểu Dáng Ngắn Tay Màu Vàng', 0, 45, 45, 45, 45, 3, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('C613011', 'Đầm Dáng Ôm Kiểu Dáng Sát Nách Thiết Kế Tay Bèo Chất Liệu Ren Màu Đen', 1597000, 22, 22, 22, 22, 4, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('C624001C', 'Đầm Dáng Xòe Kiểu Dáng Sát Nách Thiết Kế Vạt Lệch Màu Trắng', 1597000, 70, 70, 70, 70, 5, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('C633005C', 'Đầm Dáng Xòe Kiểu Dáng 2 Dây Thiết Kế Kim Tuyến Màu Đen', 1797000, 14, 14, 14, 14, 6, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('C633006C', 'Đầm Dáng Xòe Kiểu Dáng Sát Nách Thiết Kế Vai Lệch Màu Vàng', 0, 81, 81, 81, 81, 1, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('C633015I', 'Đầm Dáng Xòe Kiểu Dáng Hai Dây Chất Liệu Lụa Thiết Kế Bèo Cổ Vai Nơ Màu Đen', 1797000, 75, 75, 75, 75, 2, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('C78189C', 'Chân Váy Dáng Xòe Seven.AM Chất Liệu Ren Màu Đen', 898000, 40, 40, 40, 40, 3, NULL, 5, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('C78191C', 'Chân Váy Dáng Xòe Seven.AM Họa Tiết Hoa Nổi Màu Vàng Kim Tuyến', 449000, 72, 72, 72, 72, 4, NULL, 5, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D02032', 'Đầm Thiết Kế Xếp Ly', 999000, 26, 26, 26, 26, 5, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D02232', 'Đầm Đen Thiết Kế', 1299000, 86, 86, 86, 86, 6, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D02452', 'Đầm Vàng Tay Rủ', 999000, 69, 69, 69, 69, 1, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D03322', 'Đầm Cam Đính Hoa 3D', 1159000, 22, 22, 22, 22, 2, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D03862', 'Đầm Suông Đỏ Phối Hoa 3D', 1399000, 60, 60, 60, 60, 3, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D04222', 'Đầm Chấm Bi', 999000, 45, 45, 45, 45, 4, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D04932', 'Đầm Ôm Đen', 1159000, 93, 93, 93, 93, 5, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D05162', 'Đầm Suông Đen', 1399000, 39, 39, 39, 39, 6, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D05529', 'Đầm Tiệc Xanh Không Tay', 1159000, 84, 84, 84, 84, 1, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D05692', 'Đầm Họa Tiết', 1299000, 77, 77, 77, 77, 2, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D05862', 'Đầm Đen Không Tay', 1159000, 4, 4, 4, 4, 3, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D05879', 'Đầm Đen Đính Hoa Nổi', 1159000, 52, 52, 52, 52, 4, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D06202', 'Đầm Đuôi Cá Xếp Ly', 1299000, 59, 59, 59, 59, 5, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D06442', 'Đầm Thiết Kế', 1199000, 84, 84, 84, 84, 6, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D06602', 'Đầm Hoa Nhí', 1259000, 50, 50, 50, 50, 1, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D06662', 'Đầm MAXI Thiết Kế', 1199000, 91, 91, 91, 91, 2, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D06942', 'Đầm Đuôi Cá Thêu Hoa', 1299000, 68, 68, 68, 68, 3, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D06952', 'Đầm Thiết Kế Phối Bèo', 1691000, 62, 62, 62, 62, 4, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D06982', 'Đầm Đen Phối Chỉ Nổi', 1099000, 80, 80, 80, 80, 5, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D07132', 'Đầm Thiết Kế', 1652000, 6, 6, 6, 6, 6, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D07342', 'Đầm Suông Thiết Kế', 1159000, 3, 3, 3, 3, 1, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D07492', 'Đầm Hoa Thiết Kế', 999000, 62, 62, 62, 62, 2, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D07592', 'Đầm Suông Thêu Họa Tiết', 699300, 36, 36, 36, 36, 3, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D07609', 'Đầm Thiết Kế Thêu Hoa', 1755000, 28, 28, 28, 28, 4, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D08202', 'Đầm Suông Tay Bồng', 1159000, 39, 39, 39, 39, 5, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D08742A', 'Đầm Thiết Kế Tay Lỡ', 1459000, 97, 97, 97, 97, 6, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D08742B', 'Đầm Kẻ Tay Bồng', 999000, 53, 53, 53, 53, 1, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D09322A', 'Đầm Hoa Dài Tay', 859000, 86, 86, 86, 86, 2, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D09322B', 'Đầm Hoa Dài Tay', 1159000, 59, 59, 59, 59, 3, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D09382', 'Đầm Ôm Cổ Bẻ', 1499000, 28, 28, 28, 28, 4, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D09432A', 'Đầm Đỏ Tay Bồng', 1359000, 70, 70, 70, 70, 5, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D09432B', 'Đầm Đen Tay Bồng', 1399000, 84, 84, 84, 84, 6, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D09432C', 'Đầm Đỏ Tay Bồng', 1559000, 26, 26, 26, 26, 1, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D09622', 'Đầm Vàng Thiết Kế', 1459000, 55, 55, 55, 55, 2, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D09762', 'Đầm MIDI Họa Tiết', 1299000, 39, 39, 39, 39, 3, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D09852', 'Đầm Thiết Kế', 1299000, 66, 66, 66, 66, 4, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D09942A', 'Đầm Đuôi Cá', 899000, 22, 22, 22, 22, 5, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D09942B', 'Đầm Đuôi Cá', 1259000, 38, 38, 38, 38, 6, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D09962', 'Đầm Nhung Tay Bồng', 1299000, 24, 24, 24, 24, 1, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D10002', 'Đầm Nhung Đỏ Tay Bồng', 1299000, 5, 5, 5, 5, 2, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D10012', 'Đầm Thiết Kế Không Tay', 899000, 49, 49, 49, 49, 3, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D10022', 'Đầm Liền Phối Da Beo', 1299000, 95, 95, 95, 95, 4, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D10072', 'Đầm Đen Thiết Kế', 1159000, 40, 40, 40, 40, 5, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D10102', 'Đầm Nhung Tay Bông', 999000, 36, 36, 36, 36, 6, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D10142', 'Đầm Nhung Tay Voan', 1359000, 20, 20, 20, 20, 1, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D10169', 'Đầm Nhung Tay Lỡ', 1259000, 74, 74, 74, 74, 2, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D10292', 'Đầm Thiết Kế', 1259000, 99, 99, 99, 99, 3, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D10312', 'Đầm Xanh Tay Bồng', 659000, 42, 42, 42, 42, 4, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D10312B', 'Đầm Nâu Tay Bồng', 1399000, 39, 39, 39, 39, 5, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D10372', 'Đầm Xếp Ly', 1099000, 48, 48, 48, 48, 6, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D10382', 'Đầm Da Beo', 1059000, 91, 91, 91, 91, 1, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D10392', 'Đầm Len Ôm Phối Nơ', 1399000, 78, 78, 78, 78, 2, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D10442', 'Đầm Đen Thiết Kế', 1299000, 15, 15, 15, 15, 3, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D10452A', 'Đầm Kẻ Đỏ', 1159000, 24, 24, 24, 24, 4, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D10452B', 'Đầm Len In Chữ', 1459000, 48, 48, 48, 48, 5, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D10592', 'Đầm Liền Thiết Kế', 1659000, 83, 83, 83, 83, 6, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D10602A', 'Đầm Nhung Xếp Ly', 1499000, 45, 45, 45, 45, 1, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D10602B', 'Đầm Nhung Xếp Ly', 1099000, 63, 63, 63, 63, 2, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D10742', 'Đầm GILE Thiết Kế', 1159000, 50, 50, 50, 50, 3, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D10752', 'Đầm Ôm Da Beo', 1259000, 47, 47, 47, 47, 4, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D10932', 'Đầm Thiết Kế Thêu Chữ', 1399000, 43, 43, 43, 43, 5, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D10942', 'Đầm Thiết Kế', 1499000, 84, 84, 84, 84, 6, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D10972', 'Đầm Liền Thiết Kế', 1751000, 87, 87, 87, 87, 1, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D11029A', 'Đầm Tiệc Nâu', 1299000, 34, 34, 34, 34, 2, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D11029B', 'Đầm Tiệc Đỏ', 1459000, 57, 57, 57, 57, 3, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D11089', 'Đầm Tiệc Cao Cấp', 1459000, 91, 91, 91, 91, 4, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D11099', 'Đầm Trắng Phối Hoa 3D', 1399000, 73, 73, 73, 73, 5, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D11119', 'Đầm Tiệc Thiết Kế', 1659000, 84, 84, 84, 84, 6, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D11132A', 'Đầm Tiệc Xám Thắt Eo', 1559000, 83, 83, 83, 83, 1, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D11132B', 'Đầm Nhung Thiết Kế', 1499000, 63, 63, 63, 63, 2, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D11149', 'Đầm Nhung Thiết Kế', 1459000, 82, 82, 82, 82, 3, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D11159', 'Đầm Tiệc Phối Họa Tiết Hoa', 1759000, 31, 31, 31, 31, 4, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D11292A', 'Đầm Hoa Đen', 1359000, 18, 18, 18, 18, 5, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D11292B', 'Đầm Suông Trắng', 1299000, 3, 3, 3, 3, 6, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D11292C', 'Đầm Nhung Đuôi Cá', 1499000, 29, 29, 29, 29, 1, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D11469', 'Đầm Tiệc Cao Cấp', 1499000, 88, 88, 88, 88, 2, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D11552', 'Đầm Thiết Kế Tay Bồng', 1559000, 37, 37, 37, 37, 3, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D11609', 'Đầm Dạ Không Tay', 1159000, 98, 98, 98, 98, 4, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D11622', 'Đầm Nhung Thiết Kế', 1559000, 44, 44, 44, 44, 5, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D11722', 'Đầm Hồng Tay Bồng', 1299000, 1, 1, 1, 1, 6, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D11922', 'Đầm Thiết Kế', 599000, 88, 88, 88, 88, 1, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D12049', 'Đầm Nhung Xếp Li', 1299000, 23, 23, 23, 23, 2, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D12052', 'Đầm Dạ Tweed Phối Tay Tơ', 1259000, 1, 1, 1, 1, 3, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D12092', 'Đầm Dạ Suông', 759000, 84, 84, 84, 84, 4, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D12199', 'Đầm Thiết Kế', 1259000, 32, 32, 32, 32, 5, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D12492', 'Đầm Nhung Tay Bồng', 599000, 80, 80, 80, 80, 6, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D12682', 'Đầm Họa Tiết', 2381000, 58, 58, 58, 58, 1, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D1399', 'Đầm Tay Dài', 1459000, 63, 63, 63, 63, 2, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D20522', 'Đầm Họa Tiết Da Beo', 1796000, 86, 86, 86, 86, 3, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D21172', 'Đầm Liền Cổ Nơ', 759000, 39, 39, 39, 39, 4, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D23212', 'Đầm Thiết Kế', 1159000, 62, 62, 62, 62, 5, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D23852', 'Đầm Thiết Kế Phối Bèo', 1855000, 3, 3, 3, 3, 6, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D26692', 'Đầm Thiết Kế Phối Kẻ', 1754000, 66, 66, 66, 66, 1, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D27072', 'Đầm Họa Tiết', 1811000, 6, 6, 6, 6, 2, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D29162', 'Đầm Không Tay Cổ Bẻ', 1259000, 70, 70, 70, 70, 3, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D29652', 'Đầm Tiệc Tay Lỡ', 1399000, 55, 55, 55, 55, 4, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D30312', 'Đầm Ôm Cổ Sơ Mi', 2153000, 50, 50, 50, 50, 5, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D30722', 'Đầm Liền Thiết Kế Phối Kẻ', 1851000, 66, 66, 66, 66, 6, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D31182', 'Đầm Đen Tay Bồng', 1493000, 48, 48, 48, 48, 1, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D31632', 'Đầm Không Tay', 1794000, 62, 62, 62, 62, 2, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D32169A', 'Đầm Tiệc Hồng Phối Sequin', 1499000, 99, 99, 99, 99, 3, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D32169B', 'Đầm Tiệc Đen Phối Sequin', 1493000, 100, 100, 100, 100, 4, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D32299', 'Đầm Tiệc Thiết Kế', 1459000, 83, 83, 83, 83, 5, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D33942', 'Đầm Suông Họa Tiết', 1199000, 89, 89, 89, 89, 6, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D34152', 'Đầm Liền Phối Hoa 3D', 1459000, 76, 76, 76, 76, 1, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D44832', 'Đầm Thiết Kế', 1499000, 76, 76, 76, 76, 2, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D60102', 'Đầm Hai Dây Hồng', 1299000, 45, 45, 45, 45, 3, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D60232A', 'Đầm Len Không Tay', 1199000, 44, 44, 44, 44, 4, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D60232B', 'Đầm Len Không Tay', 859000, 86, 86, 86, 86, 5, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D60292', 'Đầm Len Không Tay', 759000, 67, 67, 67, 67, 6, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D60362A', 'Đầm Len Thiết Kế', 1459000, 82, 82, 82, 82, 1, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D60362B', 'Đầm Len Thiết Kế', 1259000, 65, 65, 65, 65, 2, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D62052A', 'Đầm Len Đen', 859000, 16, 16, 16, 16, 3, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D62052B', 'Đầm Len Nâu', 799000, 48, 48, 48, 48, 4, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D64102', 'Đầm Suông Len Họa Tiết', 1099000, 90, 90, 90, 90, 5, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D80062', 'Đầm Cam Phối Xích', 1099000, 12, 12, 12, 12, 6, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('D80412', 'Đầm Suông Đính Cườm', 899000, 73, 73, 73, 73, 1, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('E351001', 'Áo Khoác Seven.AM Chất Liệu Dạ Kiểu Dáng Tay Lỡ Họa Tiết Caro', 1099000, 32, 32, 32, 32, 2, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('E730001', 'Chân Váy Dáng Xòe Seven.AM Chất Liệu Dạ Họa Tiết Caro', 699000, 57, 57, 57, 57, 3, NULL, 5, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('H101026C', 'Áo Sơ Mi Chui Tay Dài Sifong Đỏ Cổ Tàu Nơ Sau Cổ', 999000, 16, 16, 16, 16, 4, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('H101027C', 'Áo Sơ Mi Chui Tay Dài Sifong Nền Hồng Hoa Hồng', 1249500, 83, 83, 83, 83, 5, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('H111013C', 'Áo Sơ Mi Chui Tay Lỡ Thô Tím Hồng Cổ Tàu Nơ Cổ', 1499000, 58, 58, 58, 58, 6, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('H301016C', 'Áo Vest Tay Dài Dạ Hồng Túi Ốp Tua Rua Trang Trí', 849000, 70, 70, 70, 70, 1, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('H301016CA', 'Chân Váy Juyp A Dạ Hồng Phối Cạp Và Gấu', 997000, 4, 4, 4, 4, 2, NULL, 5, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('H331013C', 'Chân Váy Juyp Ôm Dạ Hồng Xẻ Sau', 899000, 74, 74, 74, 74, 3, NULL, 5, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('J00142', 'JUMPSUIT Thiết Kế', 1199000, 83, 83, 83, 83, 4, NULL, 5, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('J00652', 'JUMPSUIT Dáng Lửng', 1399000, 3, 3, 3, 3, 5, NULL, 5, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('J01192', 'JUMPSUIT Dáng Dài Họa Tiết', 899000, 58, 58, 58, 58, 6, NULL, 5, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('J01752', 'JUMPSUIT Dáng Dài', 999000, 7, 7, 7, 7, 1, NULL, 5, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('J02162', 'JUMPSUIT Hoa Dáng Ngắn', 999000, 69, 69, 69, 69, 2, NULL, 5, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('J02242', 'JUMPSUIT Dáng Dài', 1099000, 52, 52, 52, 52, 3, NULL, 5, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('J03112', 'JUMPSUIT Dáng Dài', 999000, 54, 54, 54, 54, 4, NULL, 5, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('J03332', 'JUMPSUIT Dáng Dài Phối Hoa', 1294000, 15, 15, 15, 15, 5, NULL, 5, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('J03832', 'JUMPSUIT Hoa Nhí', 1454000, 65, 65, 65, 65, 6, NULL, 5, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('J04232', 'JUMPSUIT Dáng Dài', 1159000, 60, 60, 60, 60, 1, NULL, 5, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('J04242', 'JUMPSUIT Hoa Dáng Dài', 1451000, 35, 35, 35, 35, 2, NULL, 5, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('J04272', 'JUMPSUIT Chấm Bi', 839000, 53, 53, 53, 53, 3, NULL, 5, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('J04322', 'JUMPSUIT Ống Rộng', 1099000, 58, 58, 58, 58, 4, NULL, 5, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('J05242', 'JUMPSUIT Hoa Dáng Dài', 999000, 96, 96, 96, 96, 5, NULL, 5, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('J06452', 'JUMPSUIT Hoa Nhí', 859000, 55, 55, 55, 55, 6, NULL, 5, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('J06672', 'JUMPSUIT Họa Tiết', 899000, 75, 75, 75, 75, 1, NULL, 5, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('J31772', 'JUMPSUIT Thiết Kế', 1524000, 83, 83, 83, 83, 2, NULL, 5, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('J32522', 'JUMPSUIT Hoa Dáng Ngắn', 899000, 90, 90, 90, 90, 3, NULL, 5, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('J33282', 'JUMPSUIT Dáng Ngắn', 899000, 32, 32, 32, 32, 4, NULL, 5, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('J33552', 'JUMPSUIT Dáng Lửng', 1196000, 11, 11, 11, 11, 5, NULL, 5, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('J34192', 'JUMPSUIT Dáng Dài', 1199000, 34, 34, 34, 34, 6, NULL, 5, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('J34342', 'JUMPSUIT Hoa Dáng Ngắn', 1456000, 54, 54, 54, 54, 1, NULL, 5, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('SANPHAMNGUNGKINHDOANH', 'sản phẩm ngừng kinh doanh', 0, 0, 0, 0, 0, 2, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('SM08532', 'Áo Sơ Mi Họa Tiết', 359000, 65, 65, 65, 65, 3, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('SM09822', 'Sơ Mi Thêu Hoa', 799000, 71, 71, 71, 71, 4, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('SM11282', 'Sơ Mi Trắng Dáng Dài', 599000, 37, 37, 37, 37, 5, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('SM13822', 'Dơ Mi Tay Bồng', 799000, 57, 57, 57, 57, 6, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('TS08872', 'Áo Hai Dây Cổ Đổ', 699000, 49, 49, 49, 49, 1, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('TS10042', 'Áo Trắng Có Mũ', 599000, 28, 28, 28, 28, 2, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('TS10132', 'Áo Nhung Bo Gấu', 599000, 87, 87, 87, 87, 3, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('TS10302', 'Áo Thun Tay Bồng', 469000, 58, 58, 58, 58, 4, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('TS10642A', 'Áo Cam Phối Bèo', 559000, 48, 48, 48, 48, 5, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('TS10642B', 'Áo Hồng Phối Bèo', 659000, 20, 20, 20, 20, 6, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('TS10902', 'Áo Nỉ Đen', 399000, 72, 72, 72, 72, 1, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('TS11859', 'Áo Thun Nâu', 589000, 19, 19, 19, 19, 2, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('TS11872', 'Áo Nhũ Dài Tay', 2982000, 92, 92, 92, 92, 3, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V101019C', 'Áo Sơ Mi Chất Liệu Chiffon Kiểu Dáng Tay Bồng Dài Màu Trắng Có Dây Nơ Cổ', 1497000, 97, 97, 97, 97, 4, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V301005D', 'Áo Vest Chất Liệu Da Thiết Kế Dài Tay Họa Tiết Xám Kẻ Đen Hồng', 1999000, 40, 40, 40, 40, 5, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V301006C', 'Quần Âu Dài Seven.AM Màu Đen Họa Tiết Kẻ Trắng', 949000, 33, 33, 33, 33, 6, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V301007D', 'Áo Vest Tay Dài Thô Vàng Nâu Cổ Sam Mix', 1499000, 73, 73, 73, 73, 1, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V301010', 'Áo Khoác Blazer Kiểu Dáng Tay Dài Chất Thô Màu Đỏ Gạch Thiết Kế Phối Nẹp Ve Cổ', 1299000, 85, 85, 85, 85, 2, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V301010D', 'Quần Âu Dài Seven.AM Chất Thô Màu Đỏ Gạch', 949000, 18, 18, 18, 18, 3, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V301011C', 'Quần Suông Dài Thô Vàng Nâu Mix', 949000, 61, 61, 61, 61, 4, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V331006', 'Áo Khoác Kiểu Dáng Lửng Tay Chất Liệu Dạ Màu Be Họa Tiết Chấm Bi Có Khóa Nẹp', 1599000, 11, 11, 11, 11, 5, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V331006H', 'Đầm Dáng A Kiểu Dáng Sát Nách Chất Dạ Màu Be Họa Tiết Chấm Bi', 1699000, 63, 63, 63, 63, 6, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V331007C', 'Áo Khoác Chất Liệu Dạ Thiết Kế Dài Tay Cổ Đức Màu Trắng Đen', 1699000, 16, 16, 16, 16, 1, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V331011C', 'Áo Khoác Chất Liệu Dạ Thiết Kế Dáng Lửng Dài Tay Họa Tiết Kẻ Xanh Đen', 1398500, 77, 77, 77, 77, 2, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V331017C', 'Áo Khoác Lửng Tay Dài Dạ Đỏ Sợi Trắng Cổ Tròn', 1299000, 94, 94, 94, 94, 3, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V351014', 'Áo Vest Cổ 2 Ve 2 Túi Ốp, Thô Nâu Mix', 1697000, 96, 96, 96, 96, 4, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V352002', 'Áo Khoác Tay Dài Chất Liệu Dạ Xanh Kẻ Trắng Vàng', 999000, 57, 57, 57, 57, 5, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V401007C', 'Áo Khác Manto Dáng Dài Kiểu Dáng Tay Dài Chất Liệu Dạ Họa Tiết Kẻ Xanh Đen', 797000, 42, 42, 42, 42, 6, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V401008C', 'Áo Khoác Manto Dài Tay Có Đai Chất Liệu Dạ Màu Nâu Cổ 2 Ve', 1299000, 72, 72, 72, 72, 1, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V601005C', 'Đầm Dáng Thiết Kế Tay Lỡ Màu Xanh Có Đai Dời', 1597000, 45, 45, 45, 45, 2, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V601008C', 'Đầm Dáng A  Kiểu Dáng Tay Dài Chất Liệu Dạ Họa Tiết Kẻ Vàng Đen Túi Ốp', 1599000, 2, 2, 2, 2, 3, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V601009D', 'Đầm Dáng Ôm Kiểu Dáng Tay Dài Chất Liệu Ren Họa Tiết Xanh Cổ Tròn Có Đai Dời', 1599000, 1, 1, 1, 1, 4, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V601016D', 'Đầm A Tay Dài Thô Caro Đỏ Trắng Cổ Đính Đá', 1599000, 57, 57, 57, 57, 5, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V604004', 'Đầm Xốp Màu Vàng Thiết Kế Dáng Ôm', 1699000, 91, 91, 91, 91, 6, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V611007C', 'Đầm Dáng Ôm Kiểu Dáng Dài Tay Họa Màu Trắng Cổ Tròn', 1597000, 66, 66, 66, 66, 1, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V611008H', 'Đầm Đuôi Cá  Kiểu Dáng Tay Lỡ Umi Màu Đỏ', 1499000, 59, 59, 59, 59, 2, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V611010D', 'Đầm Dáng Ôm  Kiểu Dáng Tay Dài Họa Tiết Kem Hồng Đính Kèm Khăn Choàng', 1599000, 30, 30, 30, 30, 3, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V611014C', 'Đầm Dáng Ôm Thiết Kế Tay Bồng Chất Liệu Len Màu Trắng Kẻ Đen Có Đai Dời', 1697000, 92, 92, 92, 92, 4, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V611016C', 'Đầm Ôm Tay Phối Lỡ Có Nơthun Đen Kim Tuyến', 1599000, 3, 3, 3, 3, 5, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V611017H', 'Đầm Ôm Tay Dài Trắng Thô Xốp Cổ Xẻ Giọt Lệ', 1499000, 50, 50, 50, 50, 6, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V611020C', 'Tay Lỡ Nhung Đen Cổ Tròn Đính Hạt Trai', 1799000, 7, 7, 7, 7, 1, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V611021D', 'Đầm Ôm Tay Ren Dài Thô Đỏ Cổ Ngang Thêu Đá', 1499000, 82, 82, 82, 82, 2, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V612017C', 'Đầm Dáng Ôm Kiểu Dáng Tay Bồng Chất Liệu Len Màu Tím Cổ Tròn', 1697000, 89, 89, 89, 89, 3, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V612018C', 'Đầm Ôm Tay Lỡ Thun Đen Kim Tuyến Xếp Ly Ngực', 1699000, 9, 9, 9, 9, 4, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V614004', 'Đầm Dáng Ôm Kiểu Dáng Tay Dài Màu Đen Thiết Kế Thêu Gấu Cổ Tròn', 1799000, 95, 95, 95, 95, 5, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V614006C', 'Nách Thô Đỏ Bong Tùng Nơ Eo', 1699000, 40, 40, 40, 40, 6, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V621006', 'Đầm Dáng Suông Kiểu Dáng Tay Lỡ Chất Thô Họa Tiết Kẻ Caro Đen Trắng Thiết Kế Cổ Ren', 1699000, 50, 50, 50, 50, 1, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V621007H', 'Đầm Suông Tay Dài Thô Xanh Cổ Tròn Nơ Cổ', 1499000, 79, 79, 79, 79, 2, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V624002D', 'Đầm Dáng Suông  Kiểu Dáng Sát Nách Chất Liệu Dạ Màu Xanh Than Cổ 2 Vẹ', 1599000, 18, 18, 18, 18, 3, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V631006C', 'Đầm Dáng Xòe Kiểu Dáng Tay Bồng Màu Đỏ', 1797000, 51, 51, 51, 51, 4, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V631008', 'Đầm Dáng Xòe Kiểu Dáng Tay Lỡ Màu Hồng', 1699000, 67, 67, 67, 67, 5, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V631009D', 'Đầm Dáng Xòe  Kiểu Dáng Tay Dài Thô Xanh Than Cổ Bẻ Xếp Ly', 1699000, 17, 17, 17, 17, 6, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V631010C', 'Đầm xòe Tay Lỡ Len Trắng Vằn Đen Mã', 1799000, 71, 71, 71, 71, 1, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V631012D', 'Đầm Dáng Xòe Kiểu Dáng Ôm Eo Chân Váy Xếp Ly', 1, 21, 21, 21, 21, 2, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V631013', 'Đầm Dáng Xòe Chất Liêu Lụa Thiết Kế Nền Trắng Họa Tiết Hoa', 1799000, 10, 10, 10, 10, 3, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V631020H', 'Đầm Xòe Tay Dài Thun Đen Lom Tuyến Cổ Rộng', 1699000, 90, 90, 90, 90, 4, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V641004C', 'Đầm Dáng Xòe Kiểu Dáng Dài Tay Màu Đỏ Cổ Tàu', 1597000, 33, 33, 33, 33, 5, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V641006', 'Đầm Cổ Tròn Màu Đỏ', 1599000, 2, 2, 2, 2, 6, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V641007', 'Đầm Dáng Xòe Kiểu Dáng Tay Dài Chất Thô Nền Đen Hoa Trắng Thiết Kế Nhún Eo', 1799000, 34, 34, 34, 34, 1, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V641009', 'Đầm Dáng Xòe Kiểu Dáng Tay Dài Màu Be Thiết Kế Hoa Vàng Xanh Cổ Đức', 1799000, 65, 65, 65, 65, 2, NULL, 2, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V644002C', 'Đầm Midi Sát Nách Màu Xanh Kiểu Dáng Nhún Eo', 1697000, 93, 93, 93, 93, 3, NULL, 5, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V700005', 'Chân Váy Dáng A Seven.AM Chất Liệu Dạ Xanh Kẻ Trắng Vàng', 699000, 69, 69, 69, 69, 4, NULL, 5, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V710009C', 'Chân Váy Dáng Ôm Seven.AM Chất Liệu Dạ Họa Tiết Xanh Kẻ Đen', 897000, 71, 71, 71, 71, 5, NULL, 5, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V710014D', 'Chân Váy Ôm Thô Vàng Nâu Mix', 999000, 71, 71, 71, 71, 6, NULL, 5, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V730006', 'Chân Váy Seven.AM Dáng Xòe Chất Liệu Dạ Họa Tiết Xám Kẻ Đen Hồng', 849000, 45, 45, 45, 45, 1, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V800009C', 'Áo Khoác Blazer Màu Đen Họa Tiết Kẻ Trắng', 949000, 71, 71, 71, 71, 2, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V850004C', 'Áo Blazer Thô Vàng Nâu Túi Cơi Mix', 1499000, 59, 59, 59, 59, 3, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('V850009', 'Quần Dài Thô Nâu Túi Chéo', 279000, 61, 61, 61, 61, 4, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Y331002', 'Áo Khoác Dài Tay Seven.AM Dạ Họa Tiết Caro', 1498000, 71, 71, 71, 71, 5, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Y33407A', 'Áo Vest Seven.AM Kiểu Dáng Tay Lỡ Chất Liệu Dạ Họa Tiết Caro Đen Trắng', 849000, 97, 97, 97, 97, 6, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Y33407B', 'Áo Vest Seven.AM Dáng Lửng Thiết Kế Tay Lỡ Chất Liệu Dạ Họa Tiết Caro', 1099000, 45, 45, 45, 45, 1, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Y401014C', 'Áo Khoác Manto Dài Tay Dài Dạ Vàng Nâu Xẻ Sau Cổ Lông Mã', 897000, 33, 33, 33, 33, 2, NULL, 5, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Y720002', 'Chân Váy Dáng A Seven.AM Chất Liệu Lụa Kiểu Dáng Tà Bung Màu Đen', 849000, 94, 94, 94, 94, 3, NULL, 5, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Y720003', 'Chân Váy Dáng Ôm Seven.AM Màu Đen', 897000, 93, 93, 93, 93, 4, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Y81269', 'Quần Short Seven.AM Chất Liệu Dạ Họa Tiết Caro Ô Đen Kẻ Trắng', 897000, 57, 57, 57, 57, 5, NULL, 1, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Y81269F', 'Quần Short Seven.AM Chất Liệu Dạ Họa Tiết Caro', 699000, 85, 85, 85, 85, 6, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z04892', 'Chân Váy Bút Chì Đỏ', 659000, 77, 77, 77, 77, 1, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z05552', 'Chân Váy Chấm Bi', 559000, 42, 42, 42, 42, 2, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z05592', 'Chân Váy Bút Chì', 599000, 51, 51, 51, 51, 3, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z05722', 'Chân Váy Thiết Kế', 599000, 78, 78, 78, 78, 4, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z05732', 'Chân Váy Bút Chì', 893000, 19, 19, 19, 19, 5, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z05992', 'Chân Váy Chữ A', 499000, 13, 13, 13, 13, 6, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z06042', 'Chân Váy Đuôi Cá Dáng Ngắn', 599000, 96, 96, 96, 96, 1, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z06372', 'Chân Váy Xếp Ly', 659000, 76, 76, 76, 76, 2, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z06402', 'Chân Váy Bút Chì', 699000, 86, 86, 86, 86, 3, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z08122', 'Chân Váy Kẻ Phối Nơ', 459000, 28, 28, 28, 28, 4, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z08132', 'Chân Váy Xẻ Tà', 559000, 90, 90, 90, 90, 5, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z08492', 'Chân Váy Thiết Kế', 659000, 17, 17, 17, 17, 6, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z08562', 'Chân Váy Xếp Ly Họa Tiết', 759000, 24, 24, 24, 24, 1, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z08612', 'Chân Váy Thiết Kế', 599000, 15, 15, 15, 15, 2, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z08642', 'Chân Váy Dáng Ngắn', 659000, 74, 74, 74, 74, 3, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z08832', 'Chân Váy MIDI', 599000, 96, 96, 96, 96, 4, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z08992', 'Chân Váy Dáng Chữ A', 839000, 85, 85, 85, 85, 5, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z09042', 'Chân Váy MIDI', 599000, 4, 4, 4, 4, 6, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z09122', 'Chân Váy Xếp Ly', 699000, 26, 26, 26, 26, 1, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z09152', 'Chân Váy Thiết Kế', 859000, 67, 67, 67, 67, 2, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z09292', 'Chân Váy Dáng Chữ A', 599000, 99, 99, 99, 99, 3, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z09312', 'Chân Váy Chữ A', 759000, 65, 65, 65, 65, 4, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z09612A', 'Chân Váy Nâu', 659000, 65, 65, 65, 65, 5, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z09612B', 'Chân Váy Hồng', 699000, 42, 42, 42, 42, 6, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z09722', 'Chân Váy Dáng Chữ A', 699000, 85, 85, 85, 85, 1, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z09752', 'Chân Váy Chấm Bi', 759000, 65, 65, 65, 65, 2, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z09812', 'Chân Váy Hoa Thêu', 599000, 79, 79, 79, 79, 1, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z09832', 'Chân Váy Da Khóa Trước', 699000, 29, 29, 29, 29, 2, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z09862', 'Chân Váy MIDI', 699000, 18, 18, 18, 18, 3, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z10152', 'Chân Váy Nhung Đỏ', 759000, 63, 63, 63, 63, 4, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z10192', 'Chân Váy Da Dáng Ôm', 699000, 39, 39, 39, 39, 5, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z10212', 'Chân Váy Da Beo', 559000, 56, 56, 56, 56, 6, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z10262', 'Chân Váy Da', 659000, 5, 5, 5, 5, 1, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z10552A', 'Chân Váy Nhung', 759000, 86, 86, 86, 86, 2, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z10552B', 'Chân Váy Nhung', 559000, 97, 97, 97, 97, 3, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z10772', 'Chân Váy Dạ Xếp Ly', 599000, 30, 30, 30, 30, 4, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z10782', 'Chân Váy Nhung Xếp Ly', 659000, 74, 74, 74, 74, 5, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z10852', 'Chân Váy ', 659000, 23, 23, 23, 23, 6, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z10882', 'Chân Váy Xếp Ly', 699000, 13, 13, 13, 13, 1, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z11212', 'Chân Váy Nhung Thiết Kế', 799000, 11, 11, 11, 11, 2, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z11222', 'Chân Váy Dáng A', 1696000, 28, 28, 28, 28, 3, NULL, 3, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z16011A', 'Áo Nhũ đen cổ 3p dài tay', 299000, 99, 99, 99, 99, 4, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z16981', 'Chân Váy Dáng A', 936000, 17, 17, 17, 17, 5, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z25372', 'Chân Váy Dáng Chữ A', 659000, 18, 18, 18, 18, 6, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z67052A', 'Chân Váy JEANS', 759000, 55, 55, 55, 55, 1, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z67052B', 'Chân Váy JEANS', 659000, 37, 37, 37, 37, 2, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z80012', 'Chân Váy Chấm Bi', 599000, 90, 90, 90, 90, 3, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z80182', 'Chân Váy MIDI', 499500, 64, 64, 64, 64, 4, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);
INSERT INTO `product_entity` VALUES ('Z80322', 'Chân Váy Thiết Kế', 659000, 42, 42, 42, 42, 5, NULL, 4, 0, '2022-05-28 23:01:13.719185', 0);

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
INSERT INTO `tag_child_entity` VALUES (1, 'Sản phẩm nổi bật', 1, 0);
INSERT INTO `tag_child_entity` VALUES (2, 'Sản phẩm mới', 1, 1);
INSERT INTO `tag_child_entity` VALUES (4, 'Khuyến mãi', 1, 2);
INSERT INTO `tag_child_entity` VALUES (5, 'Sản phẩm nổi bật', 2, 0);
INSERT INTO `tag_child_entity` VALUES (6, 'Sản phẩm mới', 2, 1);
INSERT INTO `tag_child_entity` VALUES (8, 'Khuyến mãi', 2, 2);
INSERT INTO `tag_child_entity` VALUES (9, 'Sản phẩm nổi bật', 3, 0);
INSERT INTO `tag_child_entity` VALUES (10, 'Sản phẩm mới', 3, 1);
INSERT INTO `tag_child_entity` VALUES (12, 'Khuyến mãi', 3, 2);
INSERT INTO `tag_child_entity` VALUES (13, 'Sản phẩm nổi bật', 4, 0);
INSERT INTO `tag_child_entity` VALUES (14, 'Sản phẩm mới', 4, 1);
INSERT INTO `tag_child_entity` VALUES (16, 'Khuyến mãi', 4, 2);
INSERT INTO `tag_child_entity` VALUES (17, 'Sản phẩm nổi bật', 5, 0);
INSERT INTO `tag_child_entity` VALUES (18, 'Sản phẩm mới', 5, 1);
INSERT INTO `tag_child_entity` VALUES (20, 'Khuyến mãi', 5, 2);

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
INSERT INTO `tag_parent_entity` VALUES (1, 'Quần');
INSERT INTO `tag_parent_entity` VALUES (2, 'Đầm');
INSERT INTO `tag_parent_entity` VALUES (3, 'Áo');
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
