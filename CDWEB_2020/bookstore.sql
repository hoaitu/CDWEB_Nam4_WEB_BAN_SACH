/*
 Navicat Premium Data Transfer

 Source Server         : newTesst
 Source Server Type    : MySQL
 Source Server Version : 100411
 Source Host           : localhost:3306
 Source Schema         : bookstore

 Target Server Type    : MySQL
 Target Server Version : 100411
 File Encoding         : 65001

 Date: 24/01/2021 21:10:01
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bill
-- ----------------------------
DROP TABLE IF EXISTS `bill`;
CREATE TABLE `bill`  (
  `idBill` int(11) NOT NULL AUTO_INCREMENT,
  `detail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `idUserEmail` int(11) NULL DEFAULT NULL,
  `total` int(255) NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `payment` int(255) NULL DEFAULT NULL,
  `date` date NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `phoneNumber` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tinhTrangDonHang` int(255) NULL DEFAULT NULL,
  PRIMARY KEY (`idBill`) USING BTREE,
  INDEX `payment`(`payment`) USING BTREE,
  INDEX `idUserEmail`(`idUserEmail`) USING BTREE,
  INDEX `tinhTrangDonHang`(`tinhTrangDonHang`) USING BTREE,
  CONSTRAINT `FK_be2x4dfjk8gaxq6j8n4i4c0ul` FOREIGN KEY (`idUserEmail`) REFERENCES `user` (`idUser`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_ijc0c38hv6pnp6aqcywbv6b9u` FOREIGN KEY (`tinhTrangDonHang`) REFERENCES `tinhtrangbill` (`idTinhTrang`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_ijlm1ewr25y8dgh65poqv96vu` FOREIGN KEY (`payment`) REFERENCES `payment` (`idPayment`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `bill_ibfk_1` FOREIGN KEY (`payment`) REFERENCES `payment` (`idPayment`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `bill_ibfk_2` FOREIGN KEY (`idUserEmail`) REFERENCES `user` (`idUser`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `bill_ibfk_3` FOREIGN KEY (`tinhTrangDonHang`) REFERENCES `tinhtrangbill` (`idTinhTrang`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 9712 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bill
-- ----------------------------
INSERT INTO `bill` VALUES (220, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 5);
INSERT INTO `bill` VALUES (456, 'Detail', 21, 220, '', 1, '2019-12-19', ' ', '', 5);
INSERT INTO `bill` VALUES (2154, 'Detail', 19, 234, '', 1, '2019-12-19', 'dep trai tai', '02154545', 5);
INSERT INTO `bill` VALUES (3936, 'Detail', 22, 140, '', 1, '2020-01-10', 'Tai Nguyen', '4512264512', 1);
INSERT INTO `bill` VALUES (4149, 'Detail', 21, 300, '', 1, '2019-12-19', ' ', '', 5);
INSERT INTO `bill` VALUES (4454, 'Detail', 21, 1150, '', 1, '2019-12-16', ' ', '', 1);
INSERT INTO `bill` VALUES (4811, 'Detail', 25, 582, '', 1, '2020-04-01', 'Duc Tai', '', NULL);
INSERT INTO `bill` VALUES (5487, 'Detail', 19, 265, '', 1, '2019-12-19', 'dep trai', '02454854', 5);
INSERT INTO `bill` VALUES (5676, 'Detail', 25, 637, '', 1, '2020-04-01', 'Duc Tai', '', NULL);
INSERT INTO `bill` VALUES (6181, 'Detail', 21, 3910, '', 1, '2019-12-16', ' ', '', 2);
INSERT INTO `bill` VALUES (7280, 'Detail', 25, 885, '', 1, '2020-05-14', ' ', '', NULL);
INSERT INTO `bill` VALUES (8498, 'Detail', 22, 525, '', 1, '2019-12-20', ' ', '', 1);
INSERT INTO `bill` VALUES (8936, 'Detail', 22, 675, '', 1, '2019-12-16', 'dep trai thanh', '012454620', 3);

-- ----------------------------
-- Table structure for billcontainsach
-- ----------------------------
DROP TABLE IF EXISTS `billcontainsach`;
CREATE TABLE `billcontainsach`  (
  `idBill` int(11) NOT NULL,
  `idSach` int(11) NOT NULL,
  `quantity` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`idBill`, `idSach`) USING BTREE,
  INDEX `FK_ok81msm0m8ickirfr0233ojoi`(`idSach`) USING BTREE,
  CONSTRAINT `FK_gbe8jnufsvsx0nxpoj8jql4l4` FOREIGN KEY (`idBill`) REFERENCES `bill` (`idBill`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_ok81msm0m8ickirfr0233ojoi` FOREIGN KEY (`idSach`) REFERENCES `sach` (`maSach`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `idComment` int(11) NOT NULL AUTO_INCREMENT,
  `commentText` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `maSach` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  PRIMARY KEY (`idComment`) USING BTREE,
  INDEX `FK_clx9qj1wlayquin956osh2fhb`(`maSach`) USING BTREE,
  INDEX `FK_qpic8i3oc6syg5pv4acy9w1cd`(`idUser`) USING BTREE,
  CONSTRAINT `FK_clx9qj1wlayquin956osh2fhb` FOREIGN KEY (`maSach`) REFERENCES `sach` (`maSach`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_qpic8i3oc6syg5pv4acy9w1cd` FOREIGN KEY (`idUser`) REFERENCES `user` (`idUser`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for logo
-- ----------------------------
DROP TABLE IF EXISTS `logo`;
CREATE TABLE `logo`  (
  `idLogo` int(11) NOT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idLogo`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for payment
-- ----------------------------
DROP TABLE IF EXISTS `payment`;
CREATE TABLE `payment`  (
  `idPayment` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idPayment`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of payment
-- ----------------------------
INSERT INTO `payment` VALUES (1, 'Cash');
INSERT INTO `payment` VALUES (2, 'ATM');

-- ----------------------------
-- Table structure for receipt
-- ----------------------------
DROP TABLE IF EXISTS `receipt`;
CREATE TABLE `receipt`  (
  `receiptId` int(11) NOT NULL AUTO_INCREMENT,
  `receiptName` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `receiptMail` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `receiptAddress` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `receiptDate` datetime(0) NULL DEFAULT NULL,
  `receiptStatus` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `receiptPhone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `total` decimal(10, 0) NULL DEFAULT NULL,
  PRIMARY KEY (`receiptId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of receipt
-- ----------------------------
INSERT INTO `receipt` VALUES (1, 'hoaitugl123@gmail.com', 'hoaitugl123@gmail.com', 'tphcm,', '2021-01-17 20:53:59', '1', '0364572538,', 381);
INSERT INTO `receipt` VALUES (2, 'hoaitu@gmail.com', 'hoaitu@gmail.com', 'Nong Lam, TPHCM,', '2021-01-17 20:56:48', '1', '0364572538,', 648);
INSERT INTO `receipt` VALUES (3, 'hoaitugl123@gmail.com', 'hoaitugl123@gmail.com', 'Nong Lam, TPHCM,', '2021-01-17 23:55:15', '1', '0364572538,', 717);
INSERT INTO `receipt` VALUES (4, 'hoaitugl123@gmail.com', 'hoaitugl123@gmail.com', 'Nong Lam, TPHCM,', '2021-01-18 00:00:04', '1', '0364572538,', 16);

-- ----------------------------
-- Table structure for receiptitem
-- ----------------------------
DROP TABLE IF EXISTS `receiptitem`;
CREATE TABLE `receiptitem`  (
  `receiptItemId` int(11) NOT NULL AUTO_INCREMENT,
  `receipt` int(255) NULL DEFAULT NULL,
  `product` int(255) NULL DEFAULT NULL,
  `receiptItemQuantity` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `receiptItemPrice` decimal(10, 2) NULL DEFAULT NULL,
  `receiptItemSale` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `receiptItemStatus` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`receiptItemId`) USING BTREE,
  INDEX `receipt`(`receipt`) USING BTREE,
  INDEX `product`(`product`) USING BTREE,
  CONSTRAINT `receiptitem_ibfk_1` FOREIGN KEY (`receipt`) REFERENCES `receipt` (`receiptId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `receiptitem_ibfk_2` FOREIGN KEY (`product`) REFERENCES `sach` (`maSach`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of receiptitem
-- ----------------------------
INSERT INTO `receiptitem` VALUES (1, 1, 82, '1', 98.00, '1', '1');
INSERT INTO `receiptitem` VALUES (2, 1, 7, '1', 70.00, '0', '1');
INSERT INTO `receiptitem` VALUES (3, 1, 57, '1', 88.00, '1', '1');
INSERT INTO `receiptitem` VALUES (4, 1, 91, '1', 125.00, '1', '1');
INSERT INTO `receiptitem` VALUES (5, 2, 53, '1', 90.00, '1', '1');
INSERT INTO `receiptitem` VALUES (6, 2, 6, '1', 220.00, '40', '1');
INSERT INTO `receiptitem` VALUES (7, 2, 93, '1', 103.00, '1', '1');
INSERT INTO `receiptitem` VALUES (8, 2, 14, '1', 125.00, '30', '1');
INSERT INTO `receiptitem` VALUES (9, 2, 15, '1', 110.00, '30', '1');
INSERT INTO `receiptitem` VALUES (10, 3, 33, '1', 115.00, '0', '1');
INSERT INTO `receiptitem` VALUES (11, 3, 82, '3', 98.00, '1', '1');
INSERT INTO `receiptitem` VALUES (12, 3, 51, '1', 50.00, '1', '1');
INSERT INTO `receiptitem` VALUES (13, 3, 13, '2', 129.00, '30', '1');
INSERT INTO `receiptitem` VALUES (14, 4, 35, '1', 16.00, '10', '1');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, 'ROLE_ADMIN');
INSERT INTO `role` VALUES (2, 'ROLE_USER');

-- ----------------------------
-- Table structure for sach
-- ----------------------------
DROP TABLE IF EXISTS `sach`;
CREATE TABLE `sach`  (
  `maSach` int(11) NOT NULL AUTO_INCREMENT,
  `tenSach` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `loaiSach` int(11) NULL DEFAULT NULL,
  `gia` bigint(11) NOT NULL,
  `soLuong` int(11) NULL DEFAULT NULL,
  `tenTacGia` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `hinhAnh` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `moTa` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `khuyenMai` int(255) NOT NULL,
  `ngayXuatBan` date NULL DEFAULT NULL,
  PRIMARY KEY (`maSach`) USING BTREE,
  INDEX `loaiSach`(`loaiSach`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 553 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sach
-- ----------------------------
INSERT INTO `sach` VALUES (2, 'Mộng Đổi Đời', 1, 105, 30, 'Đông Tây', '/assets/img/shop/mongdoidoi-tk.jpeg', '<p>Kh&aacute;t vọng đổi đời như một hạt giống được gieo mầm, truyền từ đời n&agrave;y sang đời kh&aacute;c.Đ&ocirc;i khi hạt giống nơi đất cằn cũng tự ph&aacute;t triển mập mạp, nhưng phần lớn nhanh ch&oacute;ng bị &egrave;o uột giữa chừng bởi những điều ', 0, '0001-01-01');
INSERT INTO `sach` VALUES (3, 'Những Loài Hoa Có Gai', 1, 75, 30, 'Lý Thượng Long', '/assets/img/shop/nhungloaihoacogai-tk.jpg', 'Lý Thượng Long giới thiệu về cuốn sách Những loài hoa có gai:\r\n\r\nKể từ sau khi tôi bắt đầu quan tâm đến bạo lực học đường, rất nhiều bạn bè đã kể tôi nghe chuyện của họ, mỗi chuyện đều có những tình tiết và mức độ khác nhau. Lúc đó tôi mới biết, bạo lực c', 30, '2019-12-16');
INSERT INTO `sach` VALUES (4, 'Phố', 2, 95, 30, 'Chu Lai', '/assets/img/shop/pho-td.jpg', 'Phố là một bức tranh về cuộc sống của những người lính khi đất nước đã hòa bình. Những người lính chuyển từ rừng về phố, họ không cầm súng mà cầm trên tay những vất vả lo toan của cuộc sống mưu sinh...\r\n\r\nPhố Nhà Binh vốn nghèo bỗng một ngày thay da đổi t', 50, '2019-12-16');
INSERT INTO `sach` VALUES (5, 'Thiên Hành Giả', 2, 160, 30, 'Lưu Tỉnh Long', '/assets/img/shop/thienhanhgia-td.png', 'Một nền giáo dục có thể lột tả được bộ mặt xã hội Thiên hành giả là một trong những tác phẩm tiêu biểu của nhà văn Trung Quốc đương đại Lưu Tỉnh Long, từng đoạt giải Văn học Mao Thuẫn Trung Quốc năm 2009 cho tiểu thuyết xuất sắc nhất. Lấy bối cảnh là việc', 10, '2019-12-16');
INSERT INTO `sach` VALUES (6, 'Đừng Nói Chúng Ta Không Lợi Quyền', 3, 220, 30, 'Madeleine Thien', '/assets/img/shop/dungnoichungtakhongloiquyen-tn.jpeg', 'Madeleine Thien dẫn dắt người đọc đi sâu vào cuộc sống đầy biến động của một gia đình Trung Hoa qua hai thế hệ tiếp nối nhau: thế hệ những người sống qua cuộc Cách mạng Văn hóa của Mao Trạch Đông giữa thế kỷ XX, rồi đến đời con cái của họ - những sinh viê', 40, '2019-12-16');
INSERT INTO `sach` VALUES (7, 'Người Đàn Ông Hóa Thành Đàn Bà', 3, 70, 30, 'Sherwood Anderson', '/assets/img/shop/nguoidanonghoathanhdanba-tn.jpeg', 'Tác phẩm của Sherwood Anderson (1876 – 1941) tạo cảm hứng sáng tạo tinh thuần và mới mẻ cho văn chương Mỹ, dọn đường cho những ánh sao huyền thoại như William Faulkner và Ernest Hemingway, cả hai đều đón nhận có ý thức món nợ và ân tình của ông… Sherwood ', 0, '2019-12-16');
INSERT INTO `sach` VALUES (8, 'World Teacher - Tập 1', 4, 105, 30, 'Koichi Neko', '/assets/img/shop/worldteacher-ttn.jpeg', 'Một ông già từng được xưng tụng là điệp viên tài giỏi nhất thế giới, sau khi về hưu đã quyết định trở thành một thầy giáo, đào tạo cho những cô cậu trẻ tuổi để nối nghiệp mình. Tuy nhiên, chỉ vài năm sau đó, ông đã bị ám sát ở tuổi sáu mươi trong một nhiệ', 10, '2019-12-16');
INSERT INTO `sach` VALUES (10, 'Đừng Để Mẹ Khóc', 1, 79, 30, 'Kim Joo Young', '/assets/img/shop/tt10.jpeg', 'Cuốn sách mở ra khung cảnh một miền quê, ở nơi đó có người mẹ nghèo khó, tảo tần, hy sinh cả tuổi xuân những mong đổi lấy ngày tháng bình yên cho các con của mình. Thế nhưng vì những hiểu lầm dai dẳng trong quá khứ mà Bae Kyung-won – người con trai được b', 20, '2019-12-16');
INSERT INTO `sach` VALUES (11, 'Âm Mưu Thay Não', 1, 158, 30, 'Giản Tư Hải', '/assets/img/shop/tt11.jpg', 'Một lần nữa, những chiến sĩ an ninh Việt Nam lại phải đối mặt với âm mưu khủng bố mang tính quốc tế. Một kế hoạch tinh vi, xảo quyệt và đầy tham vọng đang được triển khai ở Campuchia. Và hơn hết, bọn khủng bố còn lôi kéo cả những nhà khoa học hàng đầu Việ', 70, '2019-12-16');
INSERT INTO `sach` VALUES (12, 'Bán Linh Hồn Cho Ác Qủy', 1, 86, 30, 'Kiya', '/assets/img/shop/tt12.jpg', 'Cuốn sách mở ra trước mắt người đọc hàng loạt cảnh tượng kì vĩ, huy hoàng, từ Los Angeles hào hoa với kinh đô điện ảnh Hollywood đến Las Vegas tráng lệ cùng những casino rực sáng thâu đêm. Nhưng ẩn sau chuyến du lịch tưởng chừng như món quà trời ban ấy là', 60, '2019-12-16');
INSERT INTO `sach` VALUES (13, 'Hy Sinh', 1, 129, 30, 'Pierre Lemaitre', '/assets/img/shop/tt13.jpg', '“Cái sự kiện có khả năng kích động cả hệ thần kinh ấy, bạn sẽ nhận ra nó ngay lập tức giữa tất cả các sự cố khác trong đời, bởi vì ngay khi nó xảy đến, bạn biết rằng nó sẽ gây ra những tác động khủng khiếp lên bạn, rằng điều xảy ra với bạn là không thể đả', 30, '2019-12-16');
INSERT INTO `sach` VALUES (14, 'Tiểu Thuyết Trinh Thám 1/14 Tập 2 - Khách Trọ Và Xác Sống', 1, 125, 30, 'Ninh Hàng Nhất', '/assets/img/shop/tt14.jpg', 'Cùng với các câu chuyện này, những sự kiện kì quái liên tiếp xảy ra, nỗi sợ hãi vô hình đang đè nặng lên tâm trí của mỗi người trong cuộc. Họ còn gặp phải những điều gì? \'Người tổ chức\' rốt cục là ai? Mục đích của kẻ đó là gì? Tất cả những bí ẩn đó liệu c', 30, '2019-12-16');
INSERT INTO `sach` VALUES (15, 'Tiểu Thuyết Trinh Thám 1/14 - Tập 1 - Trò Chơi Tử Thần', 1, 110, 30, 'Ninh Hàng Nhất', '/assets/img/shop/tt15.jpg', 'Cùng với các câu chuyện này, những sự kiện kì quái liên tiếp xảy ra, nỗi sợ hãi vô hình đang đè nặng lên tâm trí của mỗi người trong cuộc. Họ còn gặp phải những điều gì? \'Người tổ chức\' rốt cục là ai? Mục đích của kẻ đó là gì? Tất cả những bí ẩn đó liệu c', 30, '2019-12-16');
INSERT INTO `sach` VALUES (16, 'Mười Chín Ngày (Tập 1 + 2)', 1, 149, 30, 'Quân Ước', '/assets/img/shop/tt16.jpeg', 'Trong mười chín ngày, những hiểm nguy rình rập nơi nơi, những bí ẩn tầng tầng lớp lớp tưởng như đã ngủ say trong quá khứ dần được phơi bày. Và lý do cho sự biến mất đột ngột vào mười một năm trước của Hứa Duy cũng bất ngờ được hé lộ. Đến cuối cùng, ai sẽ ', 30, '2019-12-16');
INSERT INTO `sach` VALUES (17, 'Những Linh Hồn Chết', 1, 182, 30, 'Nikolai Gogol', '/assets/img/shop/tt17.jpg', 'Ít có cuốn tiểu thuyết nào có nhân vật chính “khó ưa” như vậy nhưng lại cuốn hút đến như vậy. Những linh hồn chết là câu hỏi lớn mà Nikolai Gogol đặt ra không chỉ cho người Nga cùng thời với ông mà cho con người ở mọi nước, mọi thời: bạn sống như thế nào ', 30, '2019-12-16');
INSERT INTO `sach` VALUES (18, 'Gái Già Xì Tin', 1, 148, 30, 'Nguyễn Thu Thủy', '/assets/img/shop/tt18.png', 'Tình cờ trong một chuyến công tác, Dương - cô nàng tuổi “băm” cá tính đã gặp một chàng trai áo đen tên Định. Lại tình cờ hơn nữa khi cô phát hiện ra anh chính là chàng hàng xóm kiến trúc sư tài năng, đẹp trai bên cạnh nhà cô. Những tình huống dở khóc dở c', 0, '2019-12-16');
INSERT INTO `sach` VALUES (19, 'Đường Về Thăng Long (Tiểu Thuyết Lịch Sử Về Đại Tướng Võ Nguyên Giáp)', 1, 86, 30, 'Nguyễn Thế Quang', '/assets/img/shop/tt19.jpeg', 'Đọc tác phẩm, chúng ta thấy tác giả đã chọn không gian, thời gian là những năm đầu thế kỷ XX, khi những ngọn cờ của phong trào Cần Vương đã ngã xuống, lớp lớp sĩ phu cũ, những trí thức mới cùng dân tộc tiếp bước đứng lên quyết giành lại non sông với nhiều', 0, '2019-12-16');
INSERT INTO `sach` VALUES (20, 'Hạnh Phúc Mang Hình Dáng Một Chú Mèo', 1, 189, 30, 'Rui Kodemari', '/assets/img/shop/tt20.jpeg', 'Trong sự giao mùa tại vùng đồng quê nước Mỹ, câu truyện kể về tình yêu của đôi vợ chồng mới cưới và chú mèo mà họ yêu thương như chính con đẻ. Câu chuyện được viết bởi những trải nghiệm của Rui Kodemari cùng với tình yêu thương động vật, đặc biệt là đối v', 30, '2019-12-16');
INSERT INTO `sach` VALUES (21, 'Phòng Truyền Thông Hàng Không', 1, 170, 30, 'Hiro Arikawa', '/assets/img/shop/tt21.jpeg', 'Inaba Rika là phóng viên của một đài truyền hình và chuyên đưa tin về Cơ quan Cảnh sát Quốc gia. Dù được đánh giá là một phóng viên đầy triển vọng nhưng niềm đam mê nhiệt huyết dành cho công việc của cô đôi khi làm phiền những người cô đưa tin và gây rắc ', 0, '2019-12-16');
INSERT INTO `sach` VALUES (22, 'Ánh Mặt Trời Lấp Lóa Ngón Tay', 1, 99, 30, 'Gabriele Clima', '/assets/img/shop/tt22.jpeg', 'Phải mất một lúc lâu trước khi hai đứa tiếp tục lên đường. Dario thả mình xuống bãi cỏ ngập nắng ngay ven đường, Andy ở cạnh, trên cỏ, không cần xe lăn, quên cha cái xe lăn đi một lúc đã. Nào Andy, quên cha cái xe lăn đi một lúc nhé, hãy cảm nhận một chút', 30, '2019-12-16');
INSERT INTO `sach` VALUES (23, 'Người Đến Từ Bóng Tối', 1, 75, 30, 'Tang Giới', '/assets/img/shop/tt23.jpg', '“Người đến từ bóng tối” không thể khiến người ta ôm bụng cười sảng khoái, mà nó khiến người ta rơi lệ nhiều hơn cả. Nhưng nhất định sẽ có một khoảng khắc nào đó, bạn cảm nhận được sự ấm áp. Bạn sở dĩ không nhìn thấy bóng tối, tuyệt đối không phải bởi vì t', 30, '2019-12-16');
INSERT INTO `sach` VALUES (24, 'Hình Như Ta Đã Yêu Nhau', 1, 200, 30, 'Emily Barr', '/assets/img/shop/tt24.jpg', 'Tình cảnh và chứng bệnh của Flora có thể hiếm gặp, nhưng mỗi người trưởng thành đều có thể nhìn thấy mình trong khát vọng vượt lên nghịch cảnh và ý chí kiếm tìm sự thật, cảm xúc yêu đương cuồng nộ của cô gái. Có lẽ bởi thế mà Hình như ta đã yêu nhau, tiểu', 30, '2019-12-16');
INSERT INTO `sach` VALUES (25, 'Bình Minh Của Cuộc Đời', 1, 82, 30, 'Tsujimura Mizuki', '/assets/img/shop/tt25.jpg', 'Đối với bố mẹ, Katakura Hikari chỉ là một cô bé mười bốn tuổi ngỗ ngược, học hành chẳng bằng ai và hoàn toàn không có hy vọng. Nhưng đối với Hikari, những áp đặt, kỳ vọng vô lý nơi bố mẹ cũng chỉ khiến cô thấy mệt mỏi và chán ghét. Cô bé ấy chỉ biết nổi l', 10, '2019-12-16');
INSERT INTO `sach` VALUES (26, 'Doraemon - Vol 12 Nobita Và Vương Quốc Trên Mây (Truyện Dài)', 2, 16, 30, 'Fujiko F Fujio', '/assets/img/shop/td1.jpg', 'Doraemon là một bộ truyện tranh Nhật Bản của tác giả Fujiko.F.Fujio, được sáng tác từ năm 1969 với mục đích ban đầu dành cho lứa tuổi thiếu nhi. Sau đó không lâu, tác phẩm đã được chuyển thể thành các tập phim hoạt hình ngắn, dài cùng các thể loại khác nh', 10, '2019-12-16');
INSERT INTO `sach` VALUES (27, 'Cây Chuối Non Đi Giày Xanh', 2, 110, 30, 'Nguyễn Nhật Ánh', '/assets/img/shop/td2.jpg', '\"Khác với mùa thu rón rén, bao giờ mùa hè cũng về với những bước chân rộn ràng. Cây phượng trước sân trường tôi và cây phượng trước sân chùa Giác Nguyên thi nhau nở đỏ thắm mấy hôm nay. Trên những ngọn cây cao hai bên bờ suối, tiếng ve đã bắt đầu râm ran.', 0, '2019-12-16');
INSERT INTO `sach` VALUES (28, 'Doraemon - Vol 5 Nobita Và Chuyến Phiêu Lưu Vào Xứ Quỷ (Truyện Dài)', 2, 16, 30, 'Fujiko F Fujio', '/assets/img/shop/td3.jpg', 'Đôrêmon là một bộ truyện tranh Nhật Bản của tác giả Fujiko Fujio được sáng tác từ năm 1969 với mục đích ban đầu dành cho lứa tuổi thiếu nhi. Tác phẩm sau đó đã được chuyển thể thành các tập phim hoạt hình ngắn, dài cùng các thể loại khác như kịch, trò chơ', 30, '2019-12-16');
INSERT INTO `sach` VALUES (29, 'Doraemon - Vol 10 Nobita Và Hành Tinh Muôn Thú (Truyện Dài)', 2, 16, 30, 'Fujiko F Fujio', '/assets/img/shop/td4.jpg', 'Hình ảnh thân thiện của Doraemon cùng những câu chuyện thú vị đã góp phần thúc đẩy quá trình tập đọc, tập viết của trẻ em Nhật trong những thập niên 1970 và 1980. Những \"bảo bối\" cùng các câu chuyện phiêu lưu trong Doraemon đã xây dựng cho độc giả nhỏ tuổ', 20, '2019-12-16');
INSERT INTO `sach` VALUES (30, 'Doraemon - Vol 7 Nobita Và Binh Đoàn Người Sắt (Truyện Dài)', 2, 16, 30, 'Fujiko F Fujio', '/assets/img/shop/td5.jpg', 'Doraemon - Vol.7: Nobita Và Binh Đoàn Người Sắt là tác phẩm thứ 7 trong sêri Doraemon truyện dài. Một chuyến phiêu lưu mới lại bắt đầu với Doraemon. Trong tập truyện này, Nobita và các bạn đã hợp sức đánh đuổi Binh đoàn người sắt - những kẻ từ vũ trụ tới ', 0, '2019-12-16');
INSERT INTO `sach` VALUES (31, 'Doraemon - Vol.8 Nobita Và Hiệp Sĩ Rồng (Truyện Dài)', 2, 16, 30, 'Fujiko F Fujio', '/assets/img/shop/td6.jpg', 'Doraemon - Vol.8: Nobita Và Hiệp Sĩ Rồng là câu chuyện về cuộc phiêu lưu thần kì của nhóm bạn Nobita tới thế giới bí ẩn trong lòng đất. Nơi họ tới chính là vương quốc của khủng long do những người dưới lòng đất thống trị...', 0, '2019-12-16');
INSERT INTO `sach` VALUES (32, 'Doraemon - Vol 13 Nobita Và Mê Cung Thiếc (Truyện Dài)', 2, 16, 30, 'Fujiko F Fujio', '/assets/img/shop/td7.jpg', 'Mỗi tập truyện là một cuộc phưu lưu khám phá những chân trời mới lạ. Hãy để trí tưởng tượng của bạn bay bổng cùng nhóm bạn Doraemon, Nobita, Shizuka, Jaian, Suneo đến các vùng đất xa xôi, kì bí và cảm nhận những khoảnh khắc tình bạn tươi đẹp của cuộc đời!', 0, '2019-12-16');
INSERT INTO `sach` VALUES (33, 'Ngày Xưa Có Một Chuyện Tình', 2, 115, 30, 'Nguyễn Nhật Ánh', '/assets/img/shop/td8.jpg', 'Khi mở sách ra, độc giả sẽ được chứng kiến làn gió tình yêu chảy qua như rải nắng trên khuôn mặt mùa đông của cô gái; nụ hôn đầu tiên ngọt mật, cái ôm đầu tiên, những giọt nước mắt và cái ôm xiết cuối cùng của tấm tình người yêu người… Và người đọc sẽ tìm', 0, '2019-12-16');
INSERT INTO `sach` VALUES (34, 'Còn Chút Gì Để Nhớ', 2, 53, 30, 'Nguyễn Nhật Ánh', '/assets/img/shop/td9.jpeg', 'Nơi đất khách ồn ào náo nhiệt, anh gặp gỡ những con người mới. Có những người chỉ đi qua cuộc đời anh, nhưng cũng có những người gắn bó với anh cả trọn cuộc đời. Đó là những người bạn đại học thân thiết Kim Dung và Bảo. Đó là gia đình bác Tám với ba cô co', 10, '2019-12-16');
INSERT INTO `sach` VALUES (35, 'Doraemon - Vol 9 Nobita Và Nước Nhật Thời Nguyên Thủy (Truyện Dài)', 2, 16, 30, 'Fujiko F Fujio', '/assets/img/shop/td10.jpg', 'Doraemon - Vol.9: Nobita Và Nước Nhật Thời Nguyên Thủy là tác phẩm đánh dấu 10 năm ra đời của sêri Doraemon truyện dài. Mỗi tác phẩm truyện dài là một câu chuyện phiêu lưu thần kì vô cùng lôi cuốn. Lần này, nhóm bạn Doraemon đã lên cỗ máy thời gian trở về', 10, '2019-12-16');
INSERT INTO `sach` VALUES (36, 'Doraemon - Vol 6 Nobita Và Cuộc Chiến Vũ Trụ (Truyện Dài)', 2, 16, 30, 'Fujiko F Fujio', '/assets/img/shop/td11.jpg', 'Doraemon - Vol.6: Nobita Và Cuộc Chiến Vũ Trụ là nguyên tác của bộ phim hoạt hình cùng tên, được công chiếu vào mùa xuân năm 1985, đây là tác phẩm thứ 6 trong sêri Doraemon truyện dài. Lần này, một người vũ trụ tí hon đã xuất hiện và đưa nhóm bạn Doraemon', 10, '2019-12-16');
INSERT INTO `sach` VALUES (37, 'Doraemon - Vol 11 Nobita Ở Xứ Sở Nghìn Lẻ Một Đêm (Truyện Dài)', 2, 16, 30, 'Fujiko F Fujio', '/assets/img/shop/td12.jpg', 'Doraemon - Vol.11: Nobita Ở Xứ Sở Nghìn Lẻ Một Đêm là dự định ấp ủ lồng ghép thế giới hư cấu đầy bí ẩn vào trong thể loại truyện tranh suốt một thời gian dài của tác giả. Ở tập truyện này, các bạn nhỏ sẽ được cùng tham gia chuyến phiêu lưu tới xứ sở phép ', 10, '2019-12-16');
INSERT INTO `sach` VALUES (38, 'Doraemon - Vol 4 Nobita Và Lâu Đài Dưới Đáy Biển (Truyện Dài)', 2, 16, 30, 'Fujiko F Fujio', '/assets/img/shop/td13.jpg', 'Doraemon - Vol.4: Nobita Và Lâu Đài Dưới Đáy Biển lấy bối cảnh về đại dương sâu thẳm, ở đây nhóm bạn Nobita phải đương đầu với mối nguy hiểm đe dọa toàn thể sinh vật trên Trái Đất...', 1, '2019-12-16');
INSERT INTO `sach` VALUES (39, 'Doraemon - Vol.1 Chú Khủng Long Của Nobita (Truyện Dài)', 2, 16, 30, 'Fujiko F Fujio', '/assets/img/shop/td14.jpeg', '“Chú khủng long của Nobita” là tác phẩm mở đầu cho xêri Doraemon truyện dài, và đã được chuyển thể thành phim hoạt hình. Trong tác phẩm này, 5 người nhóm bạn Doraemon đã ngược dòng thời gian, trở về thế giới khủng long Kỉ Bạch Á. Tất cả đã sát cánh bên nh', 1, '2019-12-16');
INSERT INTO `sach` VALUES (40, 'Doraemon - Vol.2 Nobita Và Lịch Sử Khai Phá Vũ Trụ (Truyện Dài)', 2, 16, 30, 'Fujiko F Fujio', '/assets/img/shop/td15.jpeg', 'Mỗi tập truyện là một cuộc phưu lưu khám phá những chân trời mới lạ. Hãy để trí tưởng tượng của bạn bay bổng cùng nhóm bạn Doraemon, Nobita, Shizuka, Jaian, Suneo đến các vùng đất xa xôi, kì bí và cảm nhận những khoảnh khắc tình bạn tươi đẹp của cuộc đời!', 1, '2019-12-16');
INSERT INTO `sach` VALUES (41, 'Doraemon - Vol.3 Nobita Thám Hiểm Vùng Đất Mới (Truyện Dài)', 2, 16, 30, 'Fujiko F Fujio', '/assets/img/shop/td16.jpeg', 'Nobita thám hiểm vùng đất mới” là tác phẩm thứ 3 trong xêri Doraemon truyện dài, và cũng là tác phẩm đã được chuyển thể thành phim hoạt hình. Câu chuyện xảy ra trên trái đất thời hiện đại, tại một vùng đất xa xôi nằm sâu trong lục địa Châu Phi. Nhóm bạn D', 1, '2019-12-16');
INSERT INTO `sach` VALUES (42, 'Hoa Hồng Xứ Khác', 2, 66, 30, 'Nguyễn Nhật Ánh', '/assets/img/shop/td17.jpeg', 'Trong truyện, Ngữ, Khoa và Hòa lé đều say mê cô bạn cùng lớp Gia Khanh. Cái cô gái bị ba người cùng theo đó sẽ phải làm sao. Ba anh chàng làm gì để “chiến thắng”. Điều lý thú là gần như tác giả tái hiện lại thời học trò của mình với ngôn ngữ thời bây giờ ', 1, '2019-12-16');
INSERT INTO `sach` VALUES (43, 'Bồ Câu Không Đưa Thư (Truyện Dài)', 2, 47, 30, 'Nguyễn Nhật Ánh', '/assets/img/shop/td18.jpeg', 'Lá thư chân tình đã thu hút sự tò mò của bộ ba, và họ bị cuốn hút vào trò chơi với người giấu mặt, dần hồi kéo theo Phán củi, anh chàng xấu xí vụng về của lớp làm quân sư và giúp xướng họa thơ. Cuộc truy tìm dẫn mọi người đến nhiều hiểu lầm tai hại và cả ', 1, '2019-12-16');
INSERT INTO `sach` VALUES (44, 'Gái Xinh Nổi Loạn', 2, 105, 30, 'Lê Hoàng', '/assets/img/shop/td19.jpeg', 'Đạo diễn Lê Hoàng không chỉ nổi tiếng với phim ảnh và ngồi trên ghế giám khảo của các gameshow phát hàng tuần trên sóng truyền hình, ông còn là cây bút quen thuộc với bạn đọc qua nhiều tiểu phẩm trên báo và các ấn phẩm đã xuất bản, tái bản nhiều lần. Xin ', 1, '2019-12-16');
INSERT INTO `sach` VALUES (45, 'Chú Bé Rắc Rối (Truyện Dài)', 2, 48, 30, 'Nguyễn Nhật Ánh', '/assets/img/shop/td20.jpeg', 'Không biết các bạn như thế nào, chứ tôi thì tôi chưa từng lo cho ai bao giờ. Tôi lo cho chính tôi còn chưa xong nữa là. (mới mở đầu truyện thì nhân vật chính đã tâm sự như vậy rồi, nghe thấy RẮC RỐI). Thực sự thì làm sao, vẫn là giọng văn “đọc tức cười”, ', 1, '2019-12-16');
INSERT INTO `sach` VALUES (46, 'Những Cô Em Gái', 2, 51, 30, 'Nguyễn Nhật Ánh', '/assets/img/shop/td21.jpeg', 'Khoa từ quê ra thành phố học, tấp tểnh làm thơ được đăng báo và bắt đầu nổi tiếng trong giới học sinh. Nhờ thế, Khoa được các bạn trai trong lớp hâm mộ, nhờ làm thơ tặng em gái mình, thực tế là dùng thơ ấy tặng bạn gái hoặc người yêu. Run rủi thế nào, nhữ', 1, '2019-12-16');
INSERT INTO `sach` VALUES (47, 'Nhà Hàng Ở Tận Cùng Vũ Trụ', 2, 96, 30, 'Douglas Adams', '/assets/img/shop/td22.jpeg', 'Bởi Trái Đất đã nổ tung, chúng ta hãy cứ tiếp tục lạc trôi trong Vũ Trụ cùng Bí kíp quá giang vào Ngân Hà và nhóm người ngoài hành tinh kỳ quặc: Arthur Dent người trái đất, Ford Prefect, bạn lâu năm kiêm biên tập viên kỳ cựu của Bí kíp; Zaphod Beeblebrox,', 1, '2019-12-16');
INSERT INTO `sach` VALUES (48, 'Buổi Chiều Windows', 2, 56, 30, 'Nguyễn Nhật Ánh', '/assets/img/shop/td23.jpeg', 'Truyện lấy khung cảnh phòng thu máy vi tính của một công ty trách nhiệm hữu hạn, nơi bộ ba nữ sinh vui nhộn và nghịch ngợm Xuyến, Thục, Cúc Hương bạo gan xin đến làm nhân viên vi tính (tạm thời trong thời gian hè) trong khi chưa biết tí gì về tin học. Tru', 1, '2019-12-16');
INSERT INTO `sach` VALUES (49, 'Hạ Đỏ', 2, 48, 30, 'Nguyễn Nhật Ánh', '/assets/img/shop/td24.jpeg', 'Mùa hè là khoảng thời gian mà học trò không còn lo lắng chuyện học hành và cũng là mùa để họ vui chơi giải trí. Mùa hè này, anh chàng Chương còm sẽ về quê ngoại để đổi gió và nghỉ ngơi sau chín tháng dài học hành căng thẳng với đầy nỗi âu lo. Nơi quê ngoạ', 1, '2019-12-16');
INSERT INTO `sach` VALUES (50, 'Chúc Một Ngày Tốt Lành', 2, 99, 30, 'Nguyễn Nhật Ánh', '/assets/img/shop/td25.jpg', 'Đọc tựa cuốn sách mới nhất của nhà văn Nguyễn Nhật Ánh là muốn mở ngay trang sách. Bạn sẽ thấy một thứ ngôn ngữ lạ của Hàn Quốc hay của nước nào tùy bạn đoán, Gô un un là Chào buổi sáng; Un gô gô là Chúc ngủ ngon, và nữa, Chiếp un un; Ăng gô gô; Chiếp chi', 1, '2019-12-16');
INSERT INTO `sach` VALUES (51, 'Mình Nói Chuyện Gì Khi Mình Nói Chuyện Tình', 3, 50, 30, 'Raymond Carver', '/assets/img/shop/tn1.jpeg', 'Một giọng tỉnh rụi miệt mài \"sao chép\" tâm thế nước Mỹ thời hậu công nghiệp, \"sao chép\" thế giới ở vào cái thời mà những mối liên kết trở nên đầy xung động, tan rã từ bên trong. Gọi là \"sao chép\" bởi có vẻ như nhà văn tài năng này chẳng mấy dụng công tron', 1, '2019-12-16');
INSERT INTO `sach` VALUES (52, 'Con Voi', 3, 86, 30, 'Slawomir Mrozek', '/assets/img/shop/tn2.jpeg', '“Con voi” là tập truyện ngắn của nhà văn trào phúng số một của Ba Lan từ trên nửa thế ký nay: Slawomir Mrozek. Những tác phẩm châm biếm giàu tính bi hài của ông thường nêu lên vấn đề quan hệ giữa cá nhân với tập thể, phê phán thói hư tật xấu, tư duy thấp ', 1, '2019-12-16');
INSERT INTO `sach` VALUES (53, 'Trăm Phần Trăm Hạnh Phúc', 3, 90, 30, 'Lao Mã', '/assets/img/shop/tn3.jpeg', '“Lao Mã đã đem cái hoang đường kì quái biến thành cái bình thường của cuộc sống thường nhật và tiểu thuyết. Trong nghệ thuật tự sự thiên về nhân vật, anh lại đem cái thường nhật chuyển hóa kì diệu thành cái hoang đường, chuyển hóa thành một quái lực tinh ', 1, '2019-12-16');
INSERT INTO `sach` VALUES (54, 'Ngày Một Người Không Còn Là Tất Cả', 3, 96, 30, 'Nam Thanh', '/assets/img/shop/tn4.jpg', '“Ngày một người không còn là tất cả” là cuốn sách viết về một cuộc gặp gỡ định mệnh như thế của chàng trai tên Xuân. Cuốn tiểu thuyết với nhiều tình tiết độc đáo, cách xây dựng nhân vật và tình huống, cùng cách kể chuyện mới lạ, đầy bất ngờ khiến người đọ', 1, '2019-12-16');
INSERT INTO `sach` VALUES (55, 'Danh Tác Văn Học Việt Nam - Tuyển Tập Truyện Ngắn Vũ Trọng Phụng', 3, 100, 30, 'Vũ Trọng Phụng', '/assets/img/shop/tn5.jpeg', 'Nhắc đến Vũ Trọng Phụng người ta nghĩ ngay tới một nhà văn tài hoa nhưng bạc mệnh. Có năng khiếu nghệ thuật từ nhỏ, ông sáng tác từ rất sớm và thử nghiệm mình trên nhiều thể loại: viết báo, viết kịch, sáng tác truyện ngắn, truyện vừa, tiểu thuyết, phê bìn', 1, '2019-12-16');
INSERT INTO `sach` VALUES (56, 'Phận Bướm Đêm', 3, 39, 30, 'Nhiều Tác Giả', '/assets/img/shop/tn6.jpeg', '“Loại người bị khinh rẻ nhất là gái điếm, không ai gọi cô điếm hay chị điếm mà chỉ là con đĩ, con điếm. Những con chó vẫn được người ta ôm ấp dù rằng họ chẳng được hưởng điều gì từ chó. Đằng này họ là con người, đàn ông chỉ tìm đến khi chán nản, khi cần c', 1, '2019-12-16');
INSERT INTO `sach` VALUES (57, 'Truyện Ngắn Jack London', 3, 88, 30, 'Jack London', '/assets/img/shop/tn7.jpeg', 'Jack London là nhà vǎn tiến bộ của Mỹ ở cuối thế kỷ 19 đầu thế kỷ 20. Sinh thời ông làm đủ mọi nghề từ bán báo, công nhân, cảnh sát, hàng hải rồi thuỷ thủ... sau cùng là tìm vàng và viết vǎn. Chính từ cuộc đời đầy gian nan vất vả đó mà ông hiểu được đời s', 1, '2019-12-16');
INSERT INTO `sach` VALUES (58, 'Người Đàn Ông Hoá Thành Đàn Bà', 3, 78, 30, 'Sherwood Anderson', '/assets/img/shop/tn8.jpeg', 'Truyện ngắn của Anderson thường có ba tố chất: giản đơn, trữ tình và huyền bí. Hóa thành đàn bà ở đây mang tính chất tâm lý, có cốt truyện giản đơn trong một ngôn ngữ giàu chất thơ và đậm biểu tượng. Và tất nhiên, có huyền bí âm dương: Đàn ông và đàn bà, ', 1, '2019-12-16');
INSERT INTO `sach` VALUES (59, 'Bài Thơ Trên Xương Cụt', 3, 79, 30, 'Chinh Ba', '/assets/img/shop/tn9.jpeg', 'Bài thơ trên xương cụt là truyện ngắn để đời của ông, bởi nó xuất hiện cách đây gần nửa thế kỷ nhưng chất văn học và tính hiện thực xã hội thì không hề mai một, cứ sáng lấp lánh như vì sao trên trời trong xanh, mỗi khi ta ngước lên và nhìn thấy.', 1, '2019-12-16');
INSERT INTO `sach` VALUES (60, 'Khóm Hoa Tử Đinh Hương', 3, 122, 30, 'Đoàn Tử Huyến', '/assets/img/shop/tn10.jpeg', 'Nicolai Evgrafuvitr Almazov sốt ruột đợi vợ mở cửa; và không cởi áo bành tô, vẫn đội mũ, anh đi thẳng vào phòng làm việc của mình. Vợ anh, chỉ vừa mới nhìn thấy vẻ mặt cau có với cặp lông mày nhíu lại gần nhau và vành môi dưới cắn chặt một cách giận dữ củ', 1, '2019-12-16');
INSERT INTO `sach` VALUES (61, 'Đôi Khi Tôi Chỉ Muốn Là Ai Đó Của Ai', 3, 78, 30, 'Nhiều Tác Giả', '/assets/img/shop/tn11.jpeg', 'Đôi khi tôi chỉ muốn là ai đó của ai giống như tiếng lòng của mỗi chúng ta. Chẳng cần phải là người thân, người thương, người yêu. Chẳng phải là anh trai hay em gái. Cũng chẳng phải bạn thân hay tri kỷ. Đôi khi cũng chẳng cần phải đặt tên cho mối quan hệ ', 1, '2019-12-16');
INSERT INTO `sach` VALUES (62, 'Bóng Chiều Quê - Nam Bộ Tục Hay Nếp Cũ - Tập Truyện Ngắn', 3, 82, 30, 'Trần Bảo Định', '/assets/img/shop/tn12.jpeg', 'Với tập truyện ngắn, ta lại bắt gặp nét chấm phá riêng, một thể tài mới đáng quý của cây bút cao niên khi truyền tải “tục hay nếp cũ” trên mảnh đất chín rồng. Bấy nay, tìm hiểu về phong tục, tập quán đất Nam Bộ, hẳn độc giả đã quen thuộc với những khảo cứ', 1, '2019-12-16');
INSERT INTO `sach` VALUES (63, 'Những Bài Ca Đi Qua Tôi Trong Chiến Tranh', 3, 30, 30, 'Trần Hữu Ngư', '/assets/img/shop/tn13.jpg', 'Tác giả Trần Hữu Ngư hiện đang làm việc tại Trường Đại học Sư phạm thành phố Hồ Chí Minh. Ông là người con tha hương, tha hương theo nhiều nghĩa, quê xưa bản quán của ông là làng Cây Khô thuộc xã Tân Thành, Hàm Thuận Nam ngày nay.', 1, '2019-12-16');
INSERT INTO `sach` VALUES (64, 'Văn Học Nga - Tuyển Truyện Ngắn Mikhain Sôlôkhôp', 3, 85, 30, 'Alecxander Puskin', '/assets/img/shop/tn14.jpeg', 'Cho tới nay, dù trải qua bao nhiêu biến đổi của thời cuộc lịch sử, không thể phủ nhận văn học Nga, văn học Xô viết ngày luôn để lại dấu ấn sâu đậm trong tâm hồn của nhiều thế hệ người Việt.', 1, '2019-12-16');
INSERT INTO `sach` VALUES (65, 'Bên Cạnh Rong Rêu', 3, 172, 30, 'Tạ Mỹ Dương', '/assets/img/shop/tn15.jpeg', 'Bên Cạnh Rong Rêu là tùy bút về những con người, những góc nhà nơi những cuộc dâu bể về thân phận diễn ra. Một cuộc diễu hành tập thể những con người Hà Nội của thời quá vãng. Nhưng mỗi người là một số phận riêng tư, gợi lại đầy ắp kỷ niệm. Viết về Hà Nội', 1, '2019-12-16');
INSERT INTO `sach` VALUES (66, 'Ghét Thân Thương Yêu Cưới', 3, 96, 30, 'Alice Munro', '/assets/img/shop/tn16.jpeg', 'Mỗi khi nhấc một tập truyện mới của Alice Munro lên, người ta luôn biết điều gì đang chờ đợi mình. Vẫn những thị trấn nhỏ và những thành phố mới ở Ontario và British Columbia. Vẫn những người trẻ đầy gai góc và mâu thuẫn. Vẫn những người già đối mặt với c', 1, '2019-12-16');
INSERT INTO `sach` VALUES (67, 'Visa', 3, 43, 30, 'Hải Miên', '/assets/img/shop/tn17.jpeg', 'Hải Miên đã làm được việc này, lại càng giỏi khi cái mất mát của thời này là cái mất mát vô hình, không phải là đạm, là xe, là học phí hữu hình. Là một sự mất mát tùy người nào thấy đó là mất mát. Còn không, đó là cái “được”, cái “hơn” của ngày hôm nay.” ', 1, '2019-12-16');
INSERT INTO `sach` VALUES (68, 'Bay Xuyên Những Tầng Mây', 3, 62, 30, 'Hà Nhân', '/assets/img/shop/tn18.jpeg', 'Bay Xuyên Qua Những Tầng Mây là một trong bộ ba cuốn tập hợp những bài viết hay nhất được tuyển chọn trong gần 500 bài được viết suốt 8 năm của chuyên mục \"Trò chuyện đầu tuần\" trên báo Hoa Học Trò của tác giả Hà Nhân. Anh chính là nhà báo Lê Thanh Hà, ph', 1, '2019-12-16');
INSERT INTO `sach` VALUES (70, 'AQ Chính Truyện', 3, 95, 30, 'Lỗ Tấn', '/assets/img/shop/tn20.jpeg', 'Câu chuyện kể lại cuộc phiêu lưu của A Q, một anh chàng thuộc tầng lớp bần nông ít học và không có nghề nghiệp ổn định. A Q nổi tiếng vì phương pháp thắng lợi tinh thần. Ví dụ như mỗi khi anh bị đánh thì anh lại cứ nghĩ : \"chúng đang đánh bố của chúng\". A', 1, '2019-12-16');
INSERT INTO `sach` VALUES (71, 'Lão Hạc - Truyện Ngắn', 3, 56, 30, 'Nam Cao', '/assets/img/shop/tn21.jpeg', 'Lão Hạc, một người nông dân chất phác, hiền lành. Lão góa vợ và có một người con trai nhưng vì quá nghèo nên không thể lấy vợ cho người con trai của mình. Người con trai lão vì thế đã rời bỏ quê hương để đến đồn điền cao su làm ăn kiếm tiền. Lão luôn trăn', 1, '2019-12-16');
INSERT INTO `sach` VALUES (72, 'Đủ Nắng Thì Hoa Nở', 3, 79, 30, 'Ba Gàn', '/assets/img/shop/tn22.jpg', 'Đủ nắng thì hoa nở. Cũng vậy, lửa con tim phải cháy đủ mạnh thì năng lượng của tình yêu mới có thể lan tỏa ra chung quanh. Chi khi ấy, lời nói và hành động của bạn mới tự nhiên có hào quang và có cánh.', 1, '2019-12-16');
INSERT INTO `sach` VALUES (73, 'Nàng Và Con Mèo Của Nàng', 3, 88, 30, 'Makoto Shinkai', '/assets/img/shop/tn23.jpeg', 'Nàng và con mèo của nànglà câu chuyện được chuyển thể dựa theo bộ phim hoạt hình dài 5 phút đầu tiên của Shinkai. Nhẹ nhàng, yên ắng và trải đều như hơi thở, Nàng và con mèo của nàng là một bài hát ru đằm thắm dành cho những ai đang bươn chải ngược xuôi, ', 1, '2019-12-16');
INSERT INTO `sach` VALUES (74, 'Chàng Trẻ Măng Ở Phố Treo Đầu', 3, 34, 30, 'Trần Nhã Thụy', '/assets/img/shop/tn24.jpg', 'Trần Nhã Thuỵ dẫn dụ người đọc đi theo những lối nhỏ bất ngờ, và vừa khi chớm đến đại lộ của một hiện thực rộng lớn thì nhà văn rời bỏ chúng ta, câu chuyện kết thúc. Để chúng ta giữa hai chọn lựa: hoặc đi tới trước, đi thẳng vào một phương diện xã hội mà ', 1, '2019-12-16');
INSERT INTO `sach` VALUES (75, 'Tự Thương Lấy Mình', 3, 89, 30, 'Bạch Lang', '/assets/img/shop/tn25.jpeg', 'Ở “Tự thương lấy mình”, những cảm xúc, những nỗi đau mà bạn từng không thể diễn đạt, không thể miêu tả, sẽ được Bạch Lang bóc tách và nhẹ nhàng đặt vào từng câu chữ. Đó là một ngày bạn chợt nhật ra, mình yêu người cũng đầy ích kỷ, chứ chẳng hề bao dung nh', 1, '2019-12-16');
INSERT INTO `sach` VALUES (76, 'Date A Live  - Tập 7', 4, 98, 30, 'Tachibana Koushi', '/assets/img/shop/ttn1.jpg', 'Trong lúc Itsuka Shidou đang rơi vào tình thế tiến thoái lưỡng nan vì DEM bắt cóc Tohka, một thiếu nữ đã xuất hiện,… Đó chính là Kurumi – Tinh linh xấu xa nhất từng cố gắng giết nhóm Shidou.', 1, '2019-12-16');
INSERT INTO `sach` VALUES (77, 'Iris Những Ngày Mưa', 4, 75, 30, 'Takeshi Matsuyama', '/assets/img/shop/ttn2.jpeg', 'Iris Những Ngày Mưa: Nơi đây có những tàn dư của một robot - Iris Rain Umbrella - một robot giúp việc từng phục vụ trong nhà của con người và được chủ nhân yêu quý như người thân trong gia đình.', 1, '2019-12-16');
INSERT INTO `sach` VALUES (78, 'Đến Thế Giới Mới Với Smartphone - Tập 4', 4, 98, 30, 'Patora Fuyuhara', '/assets/img/shop/ttn3.jpeg', 'Touya và những người bạn tiếp tục chuyến thám hiểm tại di tích trên sa mạc, kinh doanh quán café sách và bắt đầu cuộc sống riêng của mình. Để nhập sách cho quán cà phê, họ đã ghé thăm Đế quốc Regulus, đúng lúc nơi đó xảy ra một cuộc đảo chính quân sự. Trư', 1, '2019-12-16');
INSERT INTO `sach` VALUES (79, 'Khi Hikaru Còn Trên Thế Gian Này……Hanachirusato - Tập 8', 4, 115, 30, 'Nomura Mizuki', '/assets/img/shop/ttn4.jpeg', 'Khi Hikaru còn trên thế gian này…… là một trong những bộ light novel hiếm hoi thuộc thể loại lãng mạn, drama không có bản chuyển thể anime nhưng vẫn thu hút được sự quan tâm, tranh luận sôi nổi của độc giả. Một series truyện tranh ngắn chuyển thể lại tập ', 1, '2019-12-15');
INSERT INTO `sach` VALUES (80, 'Khi Hikaru Còn Trên Thế Gian Này……Utsusemi!  - Tập 7', 4, 115, 30, 'Nomura Mizuki', '/assets/img/shop/ttn5.jpeg', 'Khi Hikaru còn trên thế gian này…… là một trong những bộ light novel hiếm hoi thuộc thể loại lãng mạn, drama không có bản chuyển thể anime nhưng vẫn thu hút được sự quan tâm, tranh luận sôi nổi của độc giả. Một series truyện tranh ngắn chuyển thể lại tập ', 1, '2019-12-16');
INSERT INTO `sach` VALUES (81, 'World Teacher - Tập 1', 4, 129, 30, 'Koichi Neko', '/assets/img/shop/ttn6.jpeg', 'Một ông già từng được xưng tụng là điệp viên tài giỏi nhất thế giới, sau khi về hưu đã quyết định trở thành một thầy giáo, đào tạo cho những cô cậu trẻ tuổi để nối nghiệp mình. Tuy nhiên, chỉ vài năm sau đó, ông đã bị ám sát ở tuổi sáu mươi trong một nhiệ', 1, '2019-12-16');
INSERT INTO `sach` VALUES (82, 'Hành Trình Của Elaina (Tập 6)', 4, 98, 30, 'Jougi Shiraishi', '/assets/img/shop/ttn7.jpeg', 'Chuyến du hành của cô phù thủy Elaina được tiếp tục ở thành phố của những đường đua.Cô tham gia vào cuộc \"đua chổi\" ở thành phố xa lạ này và gặp những con người mới đầy thú vị.\"À, còn chỗ trống trên hàng ghế khán giả đấy. Ngồi đó xem bọn tao giành chiến t', 1, '2019-12-16');
INSERT INTO `sach` VALUES (83, 'Sói Và Gia Vị - Tập 10', 4, 98, 30, 'Isuna Hasekura', '/assets/img/shop/ttn8.jpg', 'Sói và Gia vị (Ookami to Koushinryou/Spice and Wolf) là một series light novel đình đám được phát hành vào năm 2006 của tác giả Isuna Hasekura. Sói & Gia vị đã tạo nên một cơn sốt cực lớn khi ở ngay những tập đầu tiên của series, bộ light novel này đã ghi', 1, '2019-12-16');
INSERT INTO `sach` VALUES (84, 'Công Việc Của Long Vương - Tập 3', 4, 109, 30, 'Shiratori Shirou', '/assets/img/shop/ttn9.jpg', 'Sau khi bất đắc dĩ nhận thêm một cô bé đệ tử nữa là Yashajin Ai’, Long Vương Kuzuryuu cùng trải qua cuộc sống thường ngày dở khóc dở cười bên cạnh hai cô nhóc đệ tử. Và trong tập này, có rất nhiều nhân vật mới xuất hiện, cũng có vô số các thế cờ được khai', 1, '2019-12-16');
INSERT INTO `sach` VALUES (85, 'Kẻ Dị Biệt Tại Trường Học Phép Thuật (Tập 5)', 4, 115, 30, 'Sato Tsutomu', '/assets/img/shop/ttn10.jpg', 'Kẻ dị biệt tại trường học phép thuật lấy bối cảnh thế giới tương lai, khi mà phép thuật không còn là sản phẩm của trí tưởng tượng, truyền thuyết hay cổ tích nữa mà đã trở thành công nghệ có thật. Phép thuật được giảng dạy phổ biến tại các trường cấp ba và', 1, '2019-12-16');
INSERT INTO `sach` VALUES (86, 'Gosick - Tập 1', 4, 109, 30, 'Kazuki Sakuraba', '/assets/img/shop/ttn11.jpg', 'Vào đầu thế kỉ trước, tại tiểu quốc Sauville nằm ở châu Âu, có một du học sinh đến từ đảo quốc cực Đông tên là Kujou Kazuya. Cậu gặp gỡ Victorique, một thiếu nữ xinh đẹp và bí ẩn tại toà tháp thư viện của học viện', 1, '2019-12-16');
INSERT INTO `sach` VALUES (87, 'Ẩn Tàng Thư Dantalian - Tập 2', 4, 136, 30, 'Mikumo Gakuto', '/assets/img/shop/ttn12.jpg', 'Tại thư viện mê cung ấy, hoặc một nơi được đặt cái tên như vậy, có hằng hà sa số những cuốn sách được xếp chật kín trên những kệ sách kéo dài như dãy hành lang trải đến vô tận. Trong mê cung của những giá sách hoành tráng là thế chỉ vang vọng âm thanh của', 1, '2019-12-16');
INSERT INTO `sach` VALUES (88, 'Ở Đây Sửa Kỷ Niệm Xưa - Tập 3', 4, 80, 30, 'Tani Mzue', '/assets/img/shop/ttn13.jpg', 'Chỉ là thiếu mất chữ đấy thôi, ai cũng dặn lòng mình như thế trước tấm biển “Ở đây sửa kỷ niệm xưa” của tiệm đồng hồ nơi góc con phố họa chăng mới thấy bóng người. Vậy mà, dòng chữ tựa hồ chứa đựng phép thuật ấy lại như cơ duyên đẩy họ bước vào tiệm, vô t', 1, '2019-12-16');
INSERT INTO `sach` VALUES (89, 'Ở Đây Sửa Kỷ Niệm Xưa - Tập 4', 4, 109, 30, 'Tani Mzue', '/assets/img/shop/ttn14.jpg', 'Chỉ là thiếu mất chữ đấy thôi, ai cũng dặn lòng mình như thế trước tấm biển “Ở đây sửa kỷ niệm xưa” của tiệm đồng hồ nơi góc con phố họa chăng mới thấy bóng người. Vậy mà, dòng chữ tựa hồ chứa đựng phép thuật ấy lại như cơ duyên đẩy họ bước vào tiệm, vô t', 1, '2019-12-16');
INSERT INTO `sach` VALUES (90, 'Ma Vương Kiến Tạo (Tập 5)', 4, 109, 30, 'Rui Tsukiyo', '/assets/img/shop/ttn15.jpeg', 'Sau cuộc chiến với con người, Ma Vương {Sáng Tạo} Procel phải đối mặt với một cuộc chiến còn khó khăn hơn gấp vạn lần. Đó là cuộc chiến với các Ma Vương lâu năm nhằm giúp đỡ Malco. Lần này, ngay cả một người nắm trong tay những Yêu Ma vô cùng mạnh như anh', 1, '2019-12-16');
INSERT INTO `sach` VALUES (91, 'Khi Hikaru Còn Trên Thế Gian Này……Asagao - Tập 6 ', 4, 125, 30, 'Nomura Mizuki', '/assets/img/shop/ttn16.jpeg', 'Kể từ sau cái chết của Hikaru, Asai có nhiều động thái kỳ lạ nhằm chen chân vào cuộc chiến giành quyền lực của gia tộc Mikado. Hikaru quả quyết Asai không phải người đam mê quyền lực, vậy cô cố giành quyền lực về tay mình để làm điều gì? Asai tin rằng để ', 1, '2019-12-16');
INSERT INTO `sach` VALUES (92, 'Date A Live (Tập 5)', 4, 105, 30, 'Tachibana Koushi', '/assets/img/shop/ttn17.jpeg', 'Trong lúc Itsuka Shidou đang rơi vào tình thế tiến thoái lưỡng nan vì DEM bắt cóc Tohka, một thiếu nữ đã xuất hiện,… Đó chính là Kurumi – Tinh linh xấu xa nhất từng cố gắng giết nhóm Shidou.', 1, '2019-12-16');
INSERT INTO `sach` VALUES (93, 'Re:Monster - Hồi Sinh Thành Quái Vật (Tập 3)', 4, 103, 30, 'Kanekiru Kogitsune', '/assets/img/shop/ttn18.jpeg', 'Tôi bị biến thành một thế giới khác với tư cách là một con yêu tinh yếu nhất và tôi trở thành một người khoan mạnh mẽ với \"khả năng mút\" mạnh hơn khi tôi nghe thấy. Trên đường đi, các thành viên mới tham gia và nhắm vào thành phố hoàng gia \"Ousvel\"!', 1, '2019-12-16');
INSERT INTO `sach` VALUES (94, 'Riku Và Chise – Chàng Trai Phân Chia Thế Giới Và Cô Gái Trong Biệt Thự', 4, 85, 30, 'Nomura Mizuki', '/assets/img/shop/ttn19.jpeg', 'Ba mẹ bất hòa và sắp sửa ly hôn, vì vậy Chise được gửi tới căn biệt thự tại vùng quê ấy để tạm lánh cho họ thu xếp thủ tục ra tòa. Dù vẫn luôn cố tươi cười để níu giữ hạnh phúc gia đình, nhưng rốt cuộc Chise cũng nhận ra nụ cười gượng của mình chỉ khiến t', 1, '2019-12-16');
INSERT INTO `sach` VALUES (95, 'Hẹn Ước Mùa Hè', 4, 109, 30, 'Goya Manaka', '/assets/img/shop/ttn20.jpeg', 'Thời gian bảy năm chênh lệch xuất hiện giữa hai con người vốn là bạn học cùng lớp. Mặc dù chênh lệch về tuổi tác nhưng giữa họ vẫn có sự đồng điệu trong tâm hồn. Tuy nhiên, ở đâu đó trong những \"kí ức ngày xưa\" mà cả hai đều nhớ có đôi chút khác nhau...', 1, '2019-12-16');
INSERT INTO `sach` VALUES (96, 'Diệt Slime Suốt 300 Năm, Tôi Levelmax Lúc Nào Chẳng Hay - Tập 6', 4, 105, 30, 'Morita Kisetsu', '/assets/img/shop/ttn21.jpeg', 'Mùa hè đã đến rồi, không bỏ qua cơ hội này, cả gia đình Azusa cùng nhau đi tắm biển. Nhưng rắc rối này là sao đây?Một đám cưới được diễn ra, một vụ bắt cóc nguy hiểm...Lại là một tập mới đầy màu sắc của gia đình Azusa.', 1, '2019-12-16');
INSERT INTO `sach` VALUES (97, 'Grimgar - Ảo Ảnh Và Tro Tàn - Tập 3', 4, 85, 30, 'Ao Jyurmonji', '/assets/img/shop/ttn22.jpeg', 'Haruhiro và các đồng đội trở nên nổi tiếng nhờ một thành công không ngờ tới. Những lính tình nguyện thuộc lứa đàn em xuất hiện bên cạnh một Haruhiro vẫn không ngừng phiền não và các đồng đội đã có được sự tự tin. Ngoài ra cũng có cả người con gái mang cái', 1, '2019-12-16');
INSERT INTO `sach` VALUES (98, 'Khúc Nguyền Ca Của Thánh Kiếm Sĩ - Tập 3', 4, 99, 30, 'Akamitsu Awamura', '/assets/img/shop/ttn23.jpeg', 'Haimura Moroha bước vào niên học đầu tiên tại Học viện Akane, ngôi trường đặc biệt chuyên đào tạo Đấng Cứu Thế - những học sinh mang kí ức tiền kiếp của các anh hùng hoặc người vĩ đại từ kiếp trước. Tuy nhiên, khác với họ, bản thân Moroha nắm giữ đến hai ', 1, '2019-12-16');
INSERT INTO `sach` VALUES (99, 'Công Việc Của Long Vương - Tập 2', 4, 110, 30, 'Shiratori Shirou', '/assets/img/shop/ttn24.jpeg', 'Sau khi bất đắc dĩ nhận thêm một cô bé đệ tử nữa là Yashajin Ai’, Long Vương Kuzuryuu cùng trải qua cuộc sống thường ngày dở khóc dở cười bên cạnh hai cô nhóc đệ tử. Và trong tập này, có rất nhiều nhân vật mới xuất hiện, cũng có vô số các thế cờ được khai', 1, '2019-12-16');
INSERT INTO `sach` VALUES (100, 'Tình Đầu Lúc Lâm Chung Với Thiếu Nữ Thần Chết', 4, 120, 30, 'Mizushiro Mizuki', '/assets/img/shop/ttn25.jpeg', '“Bảy ngày nữa anh sẽ chết”, Kyouka - một thiếu nữ xinh đẹp và kỳ lạ tự xưng là “thần chết” − đã nói với tôi như vậy. Vốn là kẻ sống mà không có mục đích lớn lao nào, tôi đã định kết thúc cuộc đời mình bằng cách sinh hoạt như thường lệ. Thế nhưng, trong kh', 1, '2019-12-16');
INSERT INTO `sach` VALUES (101, 'Cuộc Sống Bí Mật Của Các Nhà Văn', 1, 120, 30, 'Guillaume Musso', '/assets/img/shop/tt1.jpeg', 'Nathan Fawles là một nhà văn nổi tiếng, đã tuyên bố ngừng viết và đến ẩn mình trên đảo Beaumont nơi người dân sống tách biệt với phần còn lại của thế giới. Khát khao gặp gỡ thần tượng đời mình, Raphaël, một nhà văn tập sự, đã một ngày kia cập bến đảo, cùn', 1, '2019-12-16');
INSERT INTO `sach` VALUES (102, 'Cây Olive Màu Trắng (Tập 1 + 2)', 1, 279, 30, 'Cửu Nguyệt Hi', '/assets/img/shop/tt2.jpeg', 'Tỷ lệ người với người có duyên gặp gỡ là một phần bảy tỷ. Trong tỷ lệ hiếm hoi ấy, trong vài tích tắc ngắn ngủi trước khi quả bom phát nổ, số phận của nữ phóng viên Tống Nhiễm và chuyên gia gỡ bom Lý Toản bỗng gắn chặt với nhau bằng một sợi dây chỉ đỏ. Tr', 1, '2019-12-16');
INSERT INTO `sach` VALUES (103, 'Rất Nhớ, Rất Nhớ Anh (Tái Bản 2019) ', 1, 129, 30, 'Mặc Bảo Phi Bảo', '/assets/img/shop/tt3.jpeg', 'Chàng không chỉ đẹp trai, galang, biết nói những lời ong bướm, chàng còn có một giọng nói mê hoặc lòng người. Nhưng thật không ngờ, người được mệnh danh là “có giọng nói của thiên thần” khiến cả trăm nghìn người si mê ấy lại bị quyến rũ bởi một giọng hát ', 1, '2019-12-16');
INSERT INTO `sach` VALUES (104, 'Hồ Ly Biết Yêu (Tái Bản)', 1, 148, 30, 'Diệp Lạc Vô Tâm', '/assets/img/shop/tt4.jpeg', 'Liệu có một ngày, vầng dương kia thôi chiếu sáng, để trở thành một phu quân bình thường của hồ ly? Liệu có một ngày, hồ ly kia không còn chống lại số mệnh nữa, chấp nhận làm phu nhân của ma vương? Liệu có một ngày, ma giới kia không còn u ám nữa, để ánh d', 1, '2019-12-16');
INSERT INTO `sach` VALUES (105, 'Gió Ngừng Thổi, Tình Còn Vương', 1, 126, 30, 'Diệp Lạc Vô Tâm', '/assets/img/shop/tt5.jpeg', 'Chàng tên là Tần Phong - Gió là thứ vô tình nhất nhưng lại vì tình mà dừng bước, cuối cùng tan biến trong không khí... Người trong nhân thế đều biết tình ái nơi cõi trần là điều đau khổ nhưng có bao nhiêu người thực sự hiểu thấu được nó? Nếu đã bước vào h', 1, '2019-12-16');
INSERT INTO `sach` VALUES (106, 'Năm Đứa Trẻ Và Nó ', 1, 89, 30, 'E. Nesbit', '/assets/img/shop/tt6.jpeg', 'Một hôm, năm anh chị em gồm Cyril, Anthea, Robert, Jane và em bé Cừu đang chơi ở rìa mỏ đá lớn thì chúng phát hiện ra Tiên cát Psammead cục cằn, xấu xí với đôi mắt ốc sên có khả năng ban phát điều ước. Psammead nói rằng mỗi ngày lũ trẻ sẽ có được một điều', 1, '2019-12-16');
INSERT INTO `sach` VALUES (107, 'Cậu Bé Đưa Thư ', 1, 78, 30, 'Quách Khương Yến', '/assets/img/shop/tt7.jpeg', 'Truyện về chú bé Ai Lạc ở thị trấn vùng núi tình cờ trở thành người đưa thư cho mọi người và các loài vật trong rừng. Những câu chuyện bất ngờ, khó tin đã xảy ra…', 1, '2019-12-16');
INSERT INTO `sach` VALUES (108, 'Chúa Tể Những Chiếc Nhẫn - Đoàn Hộ Nhẫn (Tái Bản 2019)', 1, 145, 30, 'J. R. R. Tolkien', '/assets/img/shop/tt8.jpg', '“Tolkien may mắn được ban tặng tài đặt tên chính xác và con mắt quan sát diệu kỳ; kết thúc cuốn I, bạn đọc đã nắm rõ lịch sử Hobbit, người Tiên, Người Lùn cùng sông núi quê hương họ chẳng kém gì nắm rõ xứ sở tuổi thơ mình. Và nếu nhìn nhận một câu chuyện ', 1, '2019-12-16');
INSERT INTO `sach` VALUES (109, 'Người Đưa Thư Tình', 1, 160, 30, 'Nguyễn Hoàng Vũ', '/assets/img/shop/tt9.jpg', 'Người đưa thư tình chính là những mảnh vụn cuộc sống qua góc nhìn của tuổi trẻ. Mà tuổi trẻ, ấy là tuổi của những đổ vỡ và làm lại, tuổi của khát vọng và ảo tưởng, của sự nhâng nháo bất cần, của những tiếng thở dài và niềm thiết tha…', 1, '2019-12-19');
INSERT INTO `sach` VALUES (510, 'kakaka', 1, 120, 30, 'Guillaume Musso', '/assets/img/shop/tt1.jpeg', 'Nathan Fawles l??  m?t nh??  v?n n?i ti?ng, ???£ tuy??n b? ng?ng vi?t v??  ??n ?n m??¬nh tr??n ??o Beaumont n?i ng??i d??n s?ng t??ch bi?t v?i ph?n c??n l?i c?a th? gi?i. Kh??t khao g?p g? th?n t??ng ??i m??¬nh, Rapha??«l, m?t nh??  v?n t?p s?, ???£ m?t ng?? y kia c?p b?n ??o, c??n', 1, '1019-12-20');

-- ----------------------------
-- Table structure for salecode
-- ----------------------------
DROP TABLE IF EXISTS `salecode`;
CREATE TABLE `salecode`  (
  `idSale` int(11) NOT NULL AUTO_INCREMENT,
  `codeSale` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `khuyenMai` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`idSale`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of salecode
-- ----------------------------
INSERT INTO `salecode` VALUES (1, 'ABCDEFGH', 20);
INSERT INTO `salecode` VALUES (2, 'A12B3C4D', 10);
INSERT INTO `salecode` VALUES (3, 'XYZABCDF', 30);
INSERT INTO `salecode` VALUES (4, 'HHHHH10', 50);

-- ----------------------------
-- Table structure for theloaisach
-- ----------------------------
DROP TABLE IF EXISTS `theloaisach`;
CREATE TABLE `theloaisach`  (
  `maTheLoai` int(11) NOT NULL AUTO_INCREMENT,
  `tenTheLoai` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`maTheLoai`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of theloaisach
-- ----------------------------
INSERT INTO `theloaisach` VALUES (1, 'Tiểu Thuyết');
INSERT INTO `theloaisach` VALUES (2, 'Truyện Dài');
INSERT INTO `theloaisach` VALUES (3, 'Truyện Ngắn');
INSERT INTO `theloaisach` VALUES (4, 'Truyện Thiếu Nhi');
INSERT INTO `theloaisach` VALUES (8, 'Khac');

-- ----------------------------
-- Table structure for tinhtrangbill
-- ----------------------------
DROP TABLE IF EXISTS `tinhtrangbill`;
CREATE TABLE `tinhtrangbill`  (
  `idTinhTrang` int(255) NOT NULL,
  `kieuTinhTrang` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idTinhTrang`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tinhtrangbill
-- ----------------------------
INSERT INTO `tinhtrangbill` VALUES (1, 'Đặt hàng thành công');
INSERT INTO `tinhtrangbill` VALUES (2, 'Đang lấy hàng');
INSERT INTO `tinhtrangbill` VALUES (3, 'Đóng gói xong');
INSERT INTO `tinhtrangbill` VALUES (4, 'Bàn vận chuyển');
INSERT INTO `tinhtrangbill` VALUES (5, 'Giao hàng thành công');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `idUser` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `level` int(255) NULL DEFAULT 1,
  `active` int(255) NULL DEFAULT 1,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT 'ROLE_USER',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `gender` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `dateOfBirth` date NULL DEFAULT NULL,
  `request` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idUser`) USING BTREE,
  INDEX `email`(`email`) USING BTREE,
  INDEX `id`(`idUser`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (19, 'tantai11@gmail.com', '123456789', 1, 1, 'ROLE_USER', 'tantai11@gmail.com', '0972638746', 'Linh Trung, Thá»§ Ä?á»©c, TPHCM', 'Nam', '1999-01-01', '123456789');
INSERT INTO `user` VALUES (21, 'haha@gmail.com', '101a6ec9f938885df0a44f20458d2eb4', 2, 1, 'ROLE_ADMIN', 'haha@gmail.com', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (22, 'thnhlngtrung@gmail.com', 'a334ed15e6c4bc3cff677821df4a8960', 2, 1, 'ROLE_ADMIN', 'thnhlngtrung@gmail.com', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (23, 'taihandsomeno1@gmail.com.vn', '00381c9bbe44e602723c429e38ad55d3', 1, 1, 'ROLE_USER', 'taihandsomeno1@gmail.com.vn', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (25, 'taihandsomeno1@gmail.com', '4a54b1a620bf8cd997ba344e97e2c19d', 1, 1, 'ROLE_USER', 'taihandsomeno1@gmail.com', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (26, 'hoaitugl@gmail.com', '202cb962ac59075b964b07152d234b70', 2, 1, 'ROLE_ADMIN', 'hoaitugl@gmail.com', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (27, 'tutu@gmail.com', '202cb962ac59075b964b07152d234b70', 1, 1, 'ROLE_USER', 'tutu@gmail.com', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (34, 'tranghoang13199@gmail.com', '123456789', 1, 1, 'ROLE_USER', 'tranghoang13199@gmail.com', '0789644387', 'TP HCM', 'Nữ', '1999-01-13', NULL);
INSERT INTO `user` VALUES (37, 'hoaitugl123@gmail.com', '123456789', 2, 1, 'ROLE_ADMIN', 'hoaitugl123@gmail.com', '0346274563', 'Linh Trung, Thá»§ Ä?á»©c, TPHCM', 'Nam', '1999-10-10', NULL);
INSERT INTO `user` VALUES (40, 'hoaitu@gmail.com', '12345678', 1, 1, 'ROLE_USER', 'hoaitu@gmail.com', '0343726453', 'KTX E, DH Nong Lam, Thu Duc, TPHCM', 'Nam', '2000-10-20', '12345678');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `idUser` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `level` int(255) NULL DEFAULT 1,
  `active` int(255) NULL DEFAULT 1,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `gender` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `dateOfBirth` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`idUser`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for users_role
-- ----------------------------
DROP TABLE IF EXISTS `users_role`;
CREATE TABLE `users_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role` int(255) NULL DEFAULT NULL,
  `user` int(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `role`(`role`) USING BTREE,
  INDEX `user`(`user`) USING BTREE,
  CONSTRAINT `users_role_ibfk_1` FOREIGN KEY (`role`) REFERENCES `role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `users_role_ibfk_2` FOREIGN KEY (`user`) REFERENCES `user` (`idUser`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users_role
-- ----------------------------
INSERT INTO `users_role` VALUES (1, 1, 37);
INSERT INTO `users_role` VALUES (2, 2, 40);
INSERT INTO `users_role` VALUES (3, 1, 34);

-- ----------------------------
-- Table structure for wishlist
-- ----------------------------
DROP TABLE IF EXISTS `wishlist`;
CREATE TABLE `wishlist`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idSach` int(11) NULL DEFAULT NULL,
  `idUser` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_acase08g2temcmykhy4kun22n`(`idSach`) USING BTREE,
  INDEX `FK_lj67hlle2gf26adrfuoshcdiy`(`idUser`) USING BTREE,
  CONSTRAINT `FK_acase08g2temcmykhy4kun22n` FOREIGN KEY (`idSach`) REFERENCES `sach` (`maSach`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_lj67hlle2gf26adrfuoshcdiy` FOREIGN KEY (`idUser`) REFERENCES `user` (`idUser`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
