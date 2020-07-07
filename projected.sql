-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Jul 07, 2020 at 10:48 AM
-- Server version: 8.0.18
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projected`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_user`
--

DROP TABLE IF EXISTS `admin_user`;
CREATE TABLE IF NOT EXISTS `admin_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `avartar` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `level` int(11) NOT NULL DEFAULT '1',
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `admin_user`
--

INSERT INTO `admin_user` (`id`, `name`, `password`, `email`, `phone`, `avartar`, `level`, `create_at`) VALUES
(10, 'trungvo010', '18e687f37da0fd44d120dd506500da03', 'trungksdoa@gmail.com', 335857134, 'anime.jpg', 1, '2020-06-18 14:50:37'),
(11, 'Student1208490', 'd43db3c2e9353997ffbf1acae06edbb8', 'Student1208490@gmail.com', 335857136, 'What.jpg', 2, '2020-06-18 14:52:12'),
(12, 'Tèo', '999fb92eea9877eef3e6c5957221a7c3', 'teo_020@gmail.com', 1264941005, 'What.jpg', 3, '2020-06-18 14:52:45'),
(13, 'trungtrungtrung1', '1204ee5a8f9b792213d59d87431b8099', 'vohoangtrung@gmail.com', 1133211456, 'Avatar.jpg', 4, '2020-06-18 14:54:10');

-- --------------------------------------------------------

--
-- Table structure for table `color_bike`
--

DROP TABLE IF EXISTS `color_bike`;
CREATE TABLE IF NOT EXISTS `color_bike` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `id_Bikes` int(11) NOT NULL,
  `price` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Con_frkkk` (`id_Bikes`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `color_bike`
--

INSERT INTO `color_bike` (`id`, `name_color`, `id_Bikes`, `price`) VALUES
(8, 'Đỏ - Đen.png', 25, '8991129'),
(9, 'Xám - Đen.png', 25, '8128878'),
(13, 'Đen_wave.png', 29, '8466538'),
(14, 'Đỏ.png', 29, '8265771'),
(15, 'Xanh da trời.png', 29, '8964890'),
(16, 'Xanh ngọc.png', 29, '8529465'),
(17, 'Đỏ - Nâu(V).png', 28, '8618682'),
(18, 'Đen - Nâu (V).png', 28, '8318585'),
(19, 'Vàng - Nâu(V).png', 28, '8460270'),
(20, 'Đen_SH.png', 25, '8755954'),
(21, 'Sirius-Red-Disk-004.png', 40, '21300000'),
(22, 'Sirius-RC-Grey-Orange-006.png', 40, '21300000'),
(23, 'Sirius-RC-White-004.png', 40, '21300000'),
(24, 'Bạc Xanh Đen.png', 1, '100000'),
(25, 'Đen Vàng đồng.png', 1, '100000'),
(26, 'Đỏ Đen Xám.png', 1, '100000'),
(27, 'Xanh Đen Xám.png', 1, '100000'),
(28, 'Jupiter-Mat-Black-004.png', 6, '60000'),
(29, 'Sirius-Red-Disk-004.png', 39, '16401000'),
(30, 'Sirius-Mat-Black-RC-004.png', 39, '16401000');

-- --------------------------------------------------------

--
-- Table structure for table `danhmuc`
--

DROP TABLE IF EXISTS `danhmuc`;
CREATE TABLE IF NOT EXISTS `danhmuc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `home` tinyint(4) NOT NULL DEFAULT '0',
  `logo` varchar(100) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `date_added` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `name`, `status`, `home`, `logo`, `date_added`) VALUES
(1, 'Honda', 1, 1, 'logo.png', '2020-05-20 18:52:09'),
(14, 'Yamaha', 1, 1, '', '2020-06-23 11:49:58');

-- --------------------------------------------------------

--
-- Table structure for table `danhmuc_tintuc`
--

DROP TABLE IF EXISTS `danhmuc_tintuc`;
CREATE TABLE IF NOT EXISTS `danhmuc_tintuc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `danhmuc_tintuc`
--

INSERT INTO `danhmuc_tintuc` (`id`, `name`) VALUES
(1, 'Đóng góp xã hội'),
(2, 'Tin tức chung'),
(3, 'Tin tức xe máy');

-- --------------------------------------------------------

--
-- Table structure for table `feed`
--

DROP TABLE IF EXISTS `feed`;
CREATE TABLE IF NOT EXISTS `feed` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `relpy` varchar(255) NOT NULL,
  `xe_id` int(11) NOT NULL,
  `content` varchar(255) NOT NULL,
  `date_reply` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_send` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `Con_OK` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=502 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `feed`
--

INSERT INTO `feed` (`id`, `id_user`, `relpy`, `xe_id`, `content`, `date_reply`) VALUES
(501, 15, 'hello admin', 38, 'Hello cái gì mà hello', '2020-07-06 07:44:47');

-- --------------------------------------------------------

--
-- Table structure for table `kythuat`
--

DROP TABLE IF EXISTS `kythuat`;
CREATE TABLE IF NOT EXISTS `kythuat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `picture_thumb` varchar(100) NOT NULL,
  `id_productssss` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Con_frkkk22` (`id_productssss`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `kythuat`
--

INSERT INTO `kythuat` (`id`, `picture_thumb`, `id_productssss`) VALUES
(1, 'SH125.jpg', 25),
(2, 'SH1251.jpg', 25),
(3, 'SH1252.jpg', 25),
(4, 'SH1253.jpg', 25),
(5, 'SH1254.jpg', 25),
(6, 'SH1255.jpg', 25),
(7, 'SH1256.jpg', 25),
(8, 'SH1257.jpg', 25),
(9, 'SH1258.jpg', 25),
(19, 'SH125i9.jpg', 25),
(20, 'SH125i10.jpg', 25),
(21, 'SH125i11.jpg', 25),
(22, 'SH125i12.jpg', 25),
(23, 'Exciter-Monster-0051.png', 37),
(24, 'Exciter-Monster-0051trai.png', 37),
(25, 'Exciter-Monster-0052.png', 37),
(26, 'Exciter-Monster-0054.png', 37),
(27, 'Exciter-Monster-0056.png', 37),
(28, 'Exciter-Monster-0057.png', 37),
(29, 'Exciter-Monster-00510.png', 37),
(30, 'Exciter-Monster-00542.png', 37),
(31, 'Exciter-Monster-0051.png', 37),
(32, 'Exciter-Monster-0051trai.png', 37),
(33, 'Exciter-Monster-0052.png', 37),
(34, 'Exciter-Monster-0054.png', 37),
(35, 'Exciter-Monster-0056.png', 37),
(36, 'Exciter-Monster-0057.png', 37),
(37, 'Exciter-Monster-00510.png', 37),
(38, 'Exciter-Monster-00542.png', 37),
(39, 'WinnerX1.png', 31),
(40, 'WinnerX2.jpg', 31),
(41, 'WinnerX3.jpg', 31),
(42, 'WinnerX4.jpg', 31),
(43, 'WinnerX5.jpg', 31),
(44, 'Air Blade1.png', 1),
(45, 'Air Blade2.png', 1),
(46, 'Air Blade3.png', 1),
(47, 'Wave RSX FI4.jpg', 30),
(48, 'Wave RSX FI3.jpg', 30),
(49, 'Wave RSX FI2.jpg', 30),
(50, 'Wave RSX FI1.jpg', 30),
(51, 'wave3.png', 29),
(52, 'wave2.png', 29),
(53, 'Wave Alpha.png', 29),
(54, 'Vision3.png', 28),
(55, 'Vision22.png', 28),
(56, 'Vision1.png', 28),
(57, 'vision505656.png', 28),
(58, 'vision5456.png', 28),
(59, 'vision112.png', 28),
(60, 'Super Cub C1251.png', 27),
(61, 'Super Cub C1252.png', 27),
(62, 'Super Cub C1253.png', 27),
(63, 'Super Cub C1254.png', 27),
(64, 'Super Cub C1255.png', 27),
(65, 'Super Cub C1256.png', 27),
(66, 'Super Cub C1258.png', 27),
(67, 'SH300i ABS.jpg', 26),
(68, 'SH300i ABS000.png', 26),
(69, 'SH300i ABS7223.jpg', 26),
(70, 'SH300i ABS77.png', 26),
(71, 'SH300i ABS4.png', 26),
(72, 'SH Mode 1256.jpg', 24),
(73, 'SH Mode 1255.jpg', 24),
(74, 'SH Mode 1254.jpg', 24),
(75, 'SH Mode 1253.jpg', 24),
(76, 'SH Mode 1252.jpg', 24),
(77, 'SH Mode 1251.jpg', 24),
(78, 'Sirius-Mat-Black-RC-004.png', 40),
(79, 'Sirius-RC-Grey-Orange-001.png', 40),
(80, 'Sirius-RC-Grey-Orange-002.png', 40),
(81, 'Sirius-RC-Grey-Orange-003.png', 40),
(82, 'Sirius-RC-Grey-Orange-004.png', 40),
(83, 'Sirius-RC-Grey-Orange-005.png', 40),
(84, 'Sirius-RC-Grey-Orange-006.png', 40),
(85, 'Sirius-Red-Disk-004.png', 39),
(86, 'Sirius-Red-Disk-005.png', 39),
(87, 'Sirius-Red-Disk-006.png', 39),
(88, 'Sirius-Red-Disk-007.png', 39),
(89, 'Sirius-Red-Disk-008.png', 39);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Post-day` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Title` varchar(100) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `File_image` varchar(100) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `Content` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `file_summery` int(11) NOT NULL,
  `Author` varchar(100) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `file_summary22` (`file_summery`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `Post-day`, `Title`, `File_image`, `Content`, `file_summery`, `Author`) VALUES
(2, '2020-07-01 10:43:49', 'Khuyến mãi 100% ', 'DSSwNyNuTYSbOhJcHxT6.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam gravida lacus sit amet imperdiet sollicitudin. Curabitur elementum aliquet hendrerit. Duis tincidunt eget nibh a dictum. Maecenas finibus nibh eros, eget venenatis arcu dapibus vitae. Nam in molestie nunc. Curabitur lobortis placerat magna id tincidunt. Maecenas fringilla elit sit amet enim ultrices tincidunt. Vestibulum tristique turpis eu diam egestas, in pharetra urna vulputate.\r\n\r\nNullam vestibulum non lorem nec porttitor. Duis venenatis varius dignissim. Vestibulum commodo ultrices aliquam. Integer sed justo ac sem sollicitudin efficitur congue et ligula. Etiam scelerisque lectus tellus, vel consectetur mauris sollicitudin a. Mauris orci risus, semper at consequat sed, convallis in leo. Suspendisse commodo in nulla in tristique. Aliquam ut pretium augue, ac faucibus velit. Vivamus pulvinar sodales quam ut auctor. Vestibulum gravida erat tellus, quis porttitor libero lacinia vitae. Fusce leo orci, accumsan eu neque eu, volutpat placerat eros. In hac habitasse platea dictumst. Vestibulum sed.>>>>', 2, 'TrungDepTrai'),
(4, '2020-07-01 13:42:26', 'Honda Việt Nam giới thiệu phiên bản mới mẫu xe Gold Wing', 'FE78QeSCIt1puP0k2Fna.jpg', 'Hà Nội, 25 tháng 6 năm 2020, Công ty Honda Việt Nam (HVN) giới thiệu phiên bản mới mẫu xe Gold Wing nhập khẩu từ Nhật Bản.\r\n\r\nHonda Gold Wing chính thức ra mắt tín đồ của xe đường trường vào năm 1975. Trong suốt 45 năm phát triển, mẫu xe luôn được coi là một cỗ máy tối ưu dẫn đầu trong các hành trình khám phá nhờ sở hữu sức mạnh đáng kinh ngạc nhưng vẫn tạo được sự thoải mái và đáng tin cậy cho người lái, kết hợp với đó là hàng loạt các trang bị tiện ích và công nghệ như trên một chiếc xe hơi. Mẫu xe được ưu ái với tên gọi “Ông vua đường trường”, đã khẳng định được vị thế không thể thay thế được của mình trong lịch sử phân khúc suốt gần nửa thế kỷ.\r\n\r\n \r\n\r\nDựa trên nền tảng phát triển từ phiên bản 2018, phiên bản cải tiến 2020 được tiếp tục nghiên cứu nhằm duy trì danh tiếng về một mẫu xe của sự sang trọng và tiện nghi, đồng thời đem lại trải nghiệm trọn vẹn nhất cho những chuyến ngao du trên chiếc phân khối lớn nhờ những giá trị đích thực thể hiện qua công năng sức mạnh và khả năng kiểm soát tuyệt vời.\r\n\r\nĐộng cơ của những chiếc ô tô thể thao tốt nhất trên thế giới\r\n\r\nĐược sinh ra trong hình hài của một chiếc phân khối lớn nhưng trái tim cùng sức mạnh tiềm ẩn của Gold Wing lại thuộc về một chiếc ô tô thể thao. Nếu như hộp số ly hợp kép 7 cấp số thường chỉ được trang bị trên các xe đua Công thức 1 thì Gold Wing tự hào là mẫu xe đường trường đầu tiên sở hữu kể từ phiên bản 2018. Hệ thống ly hợp kép DCT sử dụng trên Gold Wing là phiên bản ly hợp kép DCT cao cấp nhất dùng cho xe phân khối lớn - hệ thống đầu tiên có tới 7 cấp số. Hệ thống ly hợp kép có thể thiết lập chế độ “Walking”, giúp xe vận hành tiến về phía trước hoặc lùi về sau với tốc độ thấp, chế độ này vô cùng hữu ích khi phải đưa xe với người ngồi sau vào những bãi xe chật hẹp. “Ông vua đường trường” tiếp tục dẫn đầu phân khúc với động cơ 1833cc, 6 xy lanh, sử dụng bốn van trên mỗi xy lanh - một thiết kế dựa trên động cơ Unicam đi tiên phong trong việc mang lại hiệu suất cao. Động cơ với thiết kế gọn gàng từ mọi góc nhìn, cho phép vị trí ngồi của người lái và người ngồi sau có thể dịch lên trước một cách thoải mái hơn, mang đến cảm giác kiểm soát ưu việt, hoà hợp với toàn bộ không gian lái.\r\n\r\nThiết kế vàng tiên phong trên những hành trình khám phá vô tận\r\n\r\nKể từ phiên bản 2018, triết lý thiết kế của Gold Wing đã được định hình lại toàn bộ nhằm đem lại cái nhìn hoàn toàn mới về một mẫu xe đường trường. Các đường nét được thả lỏng hơn đem đến sự thoải mái, phóng khoáng nhưng không kém phần thể thao. Phiên bản 2020 vẫn giữ nguyên phong cách thiết kế với sự mài giũa tinh tế ở mặt trước cùng thân xe nhằm làm nổi bật các chức năng.\r\n\r\nGold Wing là mẫu xe của sự đột phá với tính độc đáo được thể hiện trong từng chi tiết. Sự tự hào sở hữu không chỉ nằm ở thiết kế cá tính mà còn ở sự sang trọng và cao cấp được bao trùm, nổi bật là hệ thống đèn được trang bị toàn bộ bằng bóng đèn LED. Phiên bản 2020 được bổ sung thêm đèn sương mù ở hai bên thành động cơ, giúp người lái có thêm tự tin và cảm hứng để trải nghiệm các hành trình với điều kiện đường sương mù hoặc thiếu ánh sáng.\r\n\r\nHệ thống treo thanh giằng kép trên Gold Wing sử dụng cấu trúc giảm xóc với hai khung chân vững chãi cùng kết cấu chữ “A” và một lò xo trụ đơn. Thiết kế này giúp thay đổi hướng di chuyển của bánh trước khi lò xo nén lại, đưa bánh xe di chuyển lên xuống theo phương thẳng đứng, giúp giảm thiểu rung chấn tác động lên xe và người lái, theo đó, đem lại cảm giác thoải mái tối đa khi vận hành. Với lần cải tiến này, hệ thống treo thanh giằng kép cũng đã được tinh chỉnh, mang lại khả năng vận hành êm ái và linh hoạt hơn cho xe.\r\n\r\nĐóng vai trò mấu chốt trong việc điều khiển xe ở các hành trình dài là tư thế lái với yên xe bản lớn phân hai tầng tách biệt cho người lái và người ngồi sau. Trong khi người lái có được sự tập trung cao với vị trí của riêng mình thì người đồng hành có thể tận hưởng được trọn vẹn cảm xúc chuyến đi hơn nhờ việc gia tăng kích thước cho tay nắm sau. Sự thoải mái và tiện nghi tối đa là mục tiêu mà Gold Wing nhắm tới cho những tín đồ đường trường trên phiên bản cải tiến này.\r\n\r\nGold Wing phiên bản mới được bổ sung bộ áo màu trắng ngọc, đem đến nhiều lựa chọn thú vị hơn cho khách hàng. Sự nổi bật trong tông màu trắng kết hợp với tổng thể thiết kế đồ sộ của xe giúp Gold Wing trở thành một chiếc xe “vàng” trong vai trò của người dẫn đoàn, đưa những người bạn đồng hành đến với hành trình phiêu lưu khám phá nhiều bất ngờ.\r\n\r\nTiện ích công nghệ cao cấp cho những chuyến đi xa\r\n\r\nGold Wing là giải pháp hoàn hảo cho những ai mong muốn một trải nghiệm đường trường ngoài mong đợi, tạo được sự phấn khích và cảm giác hứng khởi khi được lướt gió qua từng cung đường. Góp phần vào những trải nghiệm này, ngoài sức mạnh phi thường và thiết kế ấn tượng là các tiện ích và công nghệ cao nhằm đem lại sự thoải mái cao, đồng thời vẫn thân thiện với người sử dụng:\r\n\r\n·         Tích hợp Apple CarPlay nhằm kết nối mẫu xe với điện thoại iPhone. Người lái có thể sử dụng iPhone để truy cập Apple Maps, Apple Music cùng những dịch vụ hữu ích khác. Chế độ Bluetooth cho phép kết nối với tai nghe không dây giúp giao tiếp một cách dễ dàng. Tuyệt hơn cả là Apple CarPlay sẽ giúp mẫu xe luôn được cập nhật kịp thời những ứng dụng tân tiến nhất hiện nay\r\n\r\n·         Hệ thống tay ga điện tử mang đến khả năng kiểm soát tuyệt đối, hỗ trợ vận hành cho hệ thống kiểm soát lực kéo HSTC\r\n\r\n·         Hệ thống giảm xóc 4 chế độ lái phù hợp với từng cung đường khác nhau\r\n\r\n·         Hỗ trợ khởi hành ngang dốc giúp chiếc phân khối lớn giữ nguyên vị trí trên đoạn đường dốc khi nhả tay khỏi phanh và trước khi vặn ga, đem lại sự tiện lợi cao nếu phải lái xe từ một điểm dừng chân ở lưng chừng dốc hoặc đèo\r\n\r\n·         Hệ thống khoá thông minh SMART Key, giúp chủ sở hữu dễ dàng hơn khi định vị vị trí xe tại các bãi gửi xe đông đúc hay khi trời tối\r\n\r\n·         Dàn áo với khả năng chắn gió chống chịu thời tiết hoàn hảo nhưng vẫn đảm bảo sự gọn nhẹ và tính khí động học. Các đường dẫn khí trên xe giúp hành trình trên những cung đường vào ngày hè bớt nóng nực và thoải mái hơn\r\n\r\n·         2 cốp bên yên xe và 1 cốp đựng đồ trên đuôi xe có thiết kế đủ rộng cho những chuyến dã ngoại vào cuối tuần. Cốp đựng đồ tích hợp giảm chấn thuỷ lực để vận hành êm ái và bảo vệ đồ tốt hơn, được đóng và mở tiện lợi bằng cách bấm nút trên chìa khoá thông minh SMART Key.\r\n\r\nPhiên bản mới Gold Wing với hai màu Đỏ Đen Bạc và Trắng Đen nhập khẩu nguyên chiếc từ Nhật Bản sẽ chính thức được bán ra thị trường vào ngày 25 tháng 7 năm 2020 tại hệ thống Cửa hàng xe Phân khối lớn Honda với mức giá bán lẻ đề xuất là: 1,200,000,000 VNĐ (đã bao gồm VAT) và chế độ bảo hành 2 năm và không giới hạn km.\r\n\r\nHonda Việt Nam', 3, 'Trung'),
(9, '2020-07-01 13:44:32', 'Honda Việt Nam triển khai chiến dịch triệu hồi thay thế bơm nhiên liệu cho xe ô tô', 'DSSwNyNuTYSbOhJcHxT6.png', 'Hà Nội, ngày 18 tháng 5 năm 2020, Công ty Honda Việt Nam giới thiệu phiên bản mới Future FI 125cc.\r\n\r\nNgay từ khi được Honda Việt Nam giới thiệu vào năm 1999, Future đã khẳng định được vị thế là mẫu xe số cao cấp hàng đầu phân khúc. Với những lợi thế vượt trội nằm ở khả năng tiết kiệm nhiên liệu, động cơ mạnh mẽ, thiết kế thanh lịch cùng độ bền cao và dễ sử dụng, Honda Future đã để lại dấu ấn sâu đậm trong hành trình chinh phục trái tim của hàng triệu khách hàng Việt Nam, đem lại những cảm xúc và trải nghiệm khó quên.\r\n\r\nVới mục tiêu luôn đổi mới nhằm mang lại phong cách nổi bật và trải nghiệm tuyệt vời hơn cho người dùng, Honda Việt Nam đã nghiên cứu và chính thức cho ra đời Honda Future FI 125cc phiên bản mới, đem lại cho người dùng nhiều cung bậc cảm xúc mới và khác biệt.\r\n\r\nThiết kế vượt trội - Kiến tạo tương lai\r\n\r\nHonda Future FI 125cc được thiết kế trên ý tưởng “Đẳng cấp xe số Mạnh mẽ & Lịch lãm cho người đàn ông trưởng thành”, mang kiểu dáng cao cấp với sự trau chuốt đầy tinh tế trong từng đường nét.\r\n\r\nNhằm làm nổi bật thêm sức hút riêng khó cưỡng cho mẫu xe, các kỹ sư Honda đã khéo léo thay đổi chi tiết tem xe trên phiên bản vành nan hoa, logo \"Future” được thay mới với tạo hình 3D cùng lớp phủ chrome sang trọng, tạo điểm nhấn cho tổng thể mẫu xe về một hình ảnh cao cấp và mạnh mẽ. Trên cả hai phiên bản vành đúc và vành van hoa, hai màu mới lần lượt được bổ sung là Bạc Nâu Đen và Xanh Đen, giúp tăng thêm lựa chọn màu sắc cho khách hàng.\r\n\r\nNgoài những điểm thay đổi thú vị, phiên bản mới Future FI 125cc vẫn sở hữu hệ thống đèn pha LED mang lại nhiều lợi ích cho khách hàng sử dụng hàng ngày như: cường độ ánh sáng mạnh, tiết kiệm ắc quy hơn, an toàn khi đi vào ban đêm, nhìn rõ xe đi ngược chiều và tuổi thọ bóng dài hơn so với bóng đèn Halogen truyền thống; mặt đồng hồ với thiết kế cao cấp giúp Future FI 125cc mới khác biệt hoàn toàn so với những mẫu xe số thông thường khác.\r\n\r\nĐộng cơ với khả năng tăng tốc và tiết kiệm nhiên liệu tối ưu\r\n\r\nFuture FI 125cc tiếp tục sở hữu động cơ 125cc truyền thống của Honda đã được cải tiến với Hệ thống phun xăng điện tử (PGM-FI) và hệ thống trung hòa khí thải tiên tiến tri-meta đáp ứng nghiêm ngặt tiêu chuẩn khí thải Euro 3, đem lại khả năng tăng tốc tối ưu hóa, tiết kiệm nhiên liệu và bảo vệ môi trường.  \r\n\r\nTiện ích mang lại tiện nghi tối đa cho người sử dụng\r\n\r\nTiện ích là một trong những điều Honda chú trọng nhất khi phát triển các mẫu xe mới. Với phong cách mạnh mẽ và cao cấp, Future FI 125cc mới được tích hợp nhiều tiện ích hữu dụng, mang đến hành trình thoải mái và cảm giác an tâm hơn cho người lái. Hệ thống đèn chiếu sáng phía trước tự động được bổ sung giúp nâng cao khả năng nhận diện khi lưu thông trên đường phố vào cả ban ngày và ban đêm. Bên cạnh đó, xe tiếp tục được duy trì ổ khóa thiết kế hiện đại đa năng \"4 trong 1\" dễ sử dụng, an toàn và chống gỉ sét hiệu quả, bao gồm khóa điện, khóa từ, khóa cổ và khóa yên, hộc đựng đồ thân thiện với người sử dụng, mang lại sự tiện nghi tối đa trên mọi hành trình. \r\n\r\n \r\n\r\nFuture FI 125cc mới sẽ chính thức có mặt trên thị trường từ ngày 29 tháng 5 năm 2020 thông qua hệ thống Cửa hàng Bán xe và Dịch vụ do Honda Ủy nhiệm (HEAD) trên toàn quốc với chế độ bảo hành 3 năm hoặc 30.000 km (tùy theo điều kiện nào đến trước) và mức giá bán lẻ đề xuất hấp dẫn như sau:', 3, 'Trung'),
(14, '2020-07-01 14:16:19', 'Honda Việt Nam giới thiệu phiên bản Thể thao ABS tem màu mới -Lối riêng phá cách- & công bố đại sứ t', 'ssda.jpg', 'Ngày 13 tháng 7 năm 2019, HVN chính thức giới thiệu phiên bản hoàn toàn mới WINNER 150 với tên gọi “WINNER X”. Hậu tố X mang ý nghĩa về một sản phẩm vừa chứa đựng sự bí ẩn, khơi gợi khám phá cho người sử dụng vừa thể hiện tính vượt trội, mong muốn phá vỡ mọi giới hạn để đem lại cho người sử dụng những trải nghiệm đột phá. Sự “lột xác’ của WINNER được hy vọng sẽ tạo ra một thế hệ xe côn tay mới, thống lĩnh những đam mê và xúc cảm của khách hàng yêu thích phân khúc này. Dù mới chỉ ra mắt hơn 8 tháng nhưng WINNER X đã chứng tỏ được sức hút mạnh mẽ với hơn 391.000 mẫu xe được bán ra (tính từ 16 tháng 7 năm 2019 đến hết tháng 3 năm 2020), vươn lên trở thành một trong những mẫu xe bán chạy trong phân khúc xe tay côn Việt Nam.\r\n\r\nTiếp nối thành công siêu phẩm “X”, vào ngày 24 tháng 4, HVN tiếp tục giới thiệu phiên bản Thể thao ABS mới, giúp nổi bật phong cách siêu xe trẻ trung, đồng thời đem đến lựa chọn mua sắm đa dạng và hấp dẫn hơn cho khách hàng.>>>', 3, 'TrungDepTrai'),
(15, '2020-07-01 16:00:46', 'Khai trương Đại lý Honda Ôtô Hưng Yên – Phố Hiến', 'FE78QeSCIt1puP0k2Fna.jpg', 'Hưng Yên, ngày 22 tháng 6 năm 2020 – Hợp tác cùng Công ty TNHH Ngọc Huệ, Honda Việt Nam chính thức khai trương Đại lý thứ 39 nằm trong hệ thống Đại lý ôtô Đạt tiêu chuẩn 5S của Honda – Đại lý Honda Ôtô Hưng Yên – Phố Hiến.\r\n\r\nĐại lý Honda Ôtô Hưng Yên – Phố Hiến nằm trên địa giới của tỉnh Hưng Yên. Hưng Yên nằm trong khu vực kinh tế trọng điểm Bắc Bộ, giáp với thủ đô Hà Nội, tỉnh Bắc Ninh, tỉnh Hải Dương, tỉnh Thái Bình và tỉnh Hà Nam. Địa thế này là một lợi thế kinh tế rất lớn: tỉnh Hưng Yên được đầu tư cơ sở hạ tầng và giao thông thuận lợi, có nhiều đường quốc lộ và đường liên tỉnh chạy qua, thích hợp cho phát triển các ngành công nghiệp và dịch vụ. Đồng thời, trên địa bàn tỉnh có rất nhiều đô thị mới được xây dựng với quy hoạch hiện đại, văn minh, thu hút người dân làm việc tại thủ đô Hà Nội và các tỉnh lân cận đến định cư.\r\n\r\nNhận thấy những tiềm năng dồi dào về kinh tế và xã hội của tỉnh Hưng Yên, Honda Việt Nam phối hợp với Công ty TNHH Ngọc Huệ đưa Đại lý Honda Ôtô Hưng Yên - Phố Hiến đi vào hoạt động nhằm mang lại cơ hội cho các khách hàng ở Hưng Yên và các tỉnh, thành phố lân cận được trải nghiệm các dịch vụ và sản phẩm chính hãng của Honda. Đây cũng là một động thái nằm trong kế hoạch mở rộng thị trường kinh doanh ôtô tại miền Bắc của Honda Việt Nam.\r\n\r\nĐặt tại Số 288 Đường Phạm Bạch Hổ, Phường Lam Sơn, Thành phố Hưng Yên, tỉnh Hưng Yên, Đại lý Honda Ôtô Hưng Yên - Phố Hiến có tổng diện tích xây dựng hơn 4.000 m2, gồm 2 tầng nhà với 3 khu vực chính: Khu vực trưng bày xe, Xưởng dịch vụ và Khu vực văn phòng. Là Đại lý mới nhất trong hệ thống Đại lý Honda Ôtô Việt Nam, Honda Ôtô Hưng Yên - Phố Hiến được đầu tư cơ sở hạ tầng khang trang, hiện đại cùng các trang thiết bị tiên tiến bậc nhất, đúng theo tiêu chuẩn của Honda toàn cầu. Đồng thời, khi đến thăm Đại lý, khách hàng sẽ được phục vụ theo tiêu chuẩn 5S của Honda, bao gồm bán hàng (Sales), bảo hành bảo dưỡng (Service), cung cấp phụ tùng Honda chính hiệu (Genuine Spare-parts), hướng dẫn lái xe an toàn (Safety Driving) và hoạt động đóng góp xã hội (Social Contributions).\r\n\r\nVới tôn chỉ hoạt động “Trở thành một trong những đại lý hàng đầu tại thị trường Hưng Yên về mảng kinh doanh và dịch vụ các sản phẩm ôtô.”, Honda Ôtô Hưng Yên - Phố Hiến đã tập trung đào tạo đội ngũ nhân viên kỹ thuật có chuyên môn cao và đội ngũ nhân viên tư vấn nhiệt tình, chuyên nghiệp nhằm đem đến cho khách hàng những trải nghiệm tốt nhất.\r\n\r\nĐặc biệt, Honda Ôtô Hưng Yên - Phố Hiến là Đại lý được đầu tư bởi Công ty TNHH Ngọc Huệ, một đơn vị đã có 17 năm hoạt động trong lĩnh vực kinh doanh xe máy. Hiện nay, Công ty Ngọc Huệ đang quản lý 3 Cửa hàng Bán xe và Dịch vụ do Honda Ủy nhiệm (HEAD), trong đó có 2 HEAD ở tỉnh Hưng Yên. Bề dày kinh nghiệm này cộng với những thành tích tiêu biểu (đạt top 45 Công ty hoạt động xuất sắc qua nhiều năm, đạt top 5 HEAD năm 2017 về dịch vụ) là nền tảng vững chắc để Honda Ôtô Hưng Yên - Phố Hiến cam kết đem đến cho khách hàng những sản phẩm ưu việt với chất lượng dịch vụ hoàn hảo, vượt trên sự mong đợi.\r\n\r\nNhân dịp khai trương, Đại lý Honda Ôtô Hưng Yên - Phố Hiến triển khai nhiều chương trình ưu đãi hấp dẫn dành cho khách hàng đến mua xe mới và sử dụng dịch vụ chính hãng tại Đại lý. Để biết thêm thông tin chi tiết về chương trình, vui lòng liên hệ trực tiếp với Đại lý hoặc truy cập website: http://www.hondaotohungyenphohien.com/.     \r\n\r\nThông tin Đại lý\r\n\r\nĐịa chỉ: Số 288 Đường Phạm Bạch Hổ, Phường Lam Sơn, Thành phố Hưng Yên, tỉnh Hưng Yên\r\n\r\nHotline: 0221 652 8888\r\n\r\nWebsite: http://www.hondaotohungyenphohien.com/\r\n\r\nFanpage: https://www.facebook.com/hondaotongochue/>', 1, 'Trung'),
(16, '2020-07-01 16:03:11', 'Honda Việt Nam khôi phục hoạt động sản xuất ô tô và xe máy tại Việt Nam', 'DSSwNyNuTYSbOhJcHxT6.png', 'Ngày 22 tháng 4 năm 2020 – Công ty Honda Việt Nam (HVN) thông báo khôi phục hoạt động sản xuất ô tô và xe máy tại Việt Nam từ ngày 23 tháng 4 năm 2020. Trong quá trình sản xuất, HVN sẽ nỗ lực hết sức để đảm bảo sức khỏe và an toàn cho công nhân viên.\r\n\r\nNỗ lực từng bước khôi phục sản xuất kinh doanh được thực hiện trên cơ sở tình hình chung đã được cải thiện khi đại dịch COVID -19 đang được kiểm soát tốt và không có ca mắc mới nào trong 6 ngày vừa qua.\r\n\r\nHVN luôn thực hiện theo chỉ thị của Chính phủ cũng như nỗ lực chung tay cùng Chính phủ đẩy lùi dịch bênh; để từ đó góp phần tạo nên “Cuộc sống tự do, an toàn và thoải mái” nhằm nhân rộng niềm vui cho tất cả mọi người.\r\n\r\nĐể có thêm thông tin chi tiết, xin vui lòng truy cập website: www.honda.com.vn hoặc liên hệ số hotline của Công ty tại: 1800 8001 (miễn phí cho tất cả các thuê bao) hoặc gửi mail về địa chỉ: cr@honda.com.vn. Khách hàng cũng có thể liên hệ đến hotline của các HEAD hoặc Đại lý Ô tô Honda trong trường hợp cần thiết.\r\n\r\nTrân trọng cảm ơn.\r\n\r\nCông ty Honda Việt Nam', 3, 'Trung');

-- --------------------------------------------------------

--
-- Table structure for table `order_primary`
--

DROP TABLE IF EXISTS `order_primary`;
CREATE TABLE IF NOT EXISTS `order_primary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `User_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `price` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `product_id` int(11) NOT NULL,
  `User_id` int(11) NOT NULL,
  `phone` int(11) NOT NULL,
  `address` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `address2` text COLLATE utf8_vietnamese_ci,
  `True_delivery_date` date NOT NULL,
  `Qantity` int(11) NOT NULL,
  `quận` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `thànhphố` varchar(100) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `content_request` text COLLATE utf8_vietnamese_ci NOT NULL,
  `total` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `Name_card` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `Credit_number` int(16) NOT NULL,
  `Expiration` year(4) NOT NULL,
  `CVV` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `transction_status` tinyint(4) NOT NULL,
  `PaymentOption` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `Order_date_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Month` date NOT NULL,
  `Year` year(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_uuururu` (`User_id`)
) ENGINE=InnoDB AUTO_INCREMENT=179 DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `order_primary`
--

INSERT INTO `order_primary` (`id`, `product_name`, `User_name`, `price`, `product_id`, `User_id`, `phone`, `address`, `address2`, `True_delivery_date`, `Qantity`, `quận`, `thànhphố`, `content_request`, `total`, `Name_card`, `Credit_number`, `Expiration`, `CVV`, `status`, `transction_status`, `PaymentOption`, `date_created`, `Month`, `Year`) VALUES
(168, 'GRANDE', 'vohoangtrung', '50000000', 42, 15, 335857134, '49/12 phạm văn chiêu phường 14 gò vấp', '', '2020-10-25', 1, '', 'Hồ Chí Minh', 'sad2asd2sa5d5s6a5dsadsawq', '30000000', 'dasdsadsadsad', 2147483647, 0000, 127, 1, 1, 'Credit card', '2020-07-07 07:34:26', '2020-07-07', 2020),
(169, 'GRANDE', 'vohoangtrung', '50000000', 42, 15, 335857134, '49/12 phạm văn chiêu phường 14 gò vấp', '', '2020-10-16', 1, '', 'Hồ Chí Minh', 'das2d1sad15s6a1d56s145dsa', '30000000', 'dsadsadsads', 2147483647, 0000, 127, 1, 1, 'Credit card', '2020-07-07 09:37:57', '2020-07-07', 2020),
(170, 'GRANDE', 'vohoangtrung', '50000000', 42, 15, 335857134, '49/12 phạm văn chiêu phường 14 gò vấp', '', '2020-09-04', 1, '', 'Hồ Chí Minh', 'dsdsadsadsads', '30000000', 'tsadsdsadsa', 2147483647, 0000, 127, 1, 1, 'Credit card', '2020-07-07 09:46:56', '2020-07-07', 2020),
(173, 'SIRIUS FI', 'vohoangtrung', '21300000', 39, 15, 335857134, '49/12 phạm văn chiêu phường 14 gò vấp', '', '2020-12-04', 1, '', 'Hồ Chí Minh', 'd3sa5d4s5+dsadsa', '18531000', '21321sdsadsa', 2147483647, 0000, 127, 1, 1, 'Credit card', '2020-07-07 10:00:04', '2020-07-07', 2020),
(175, 'SIRIUS FI', 'vohoangtrung', '21300000', 39, 15, 335857134, '49/12 phạm văn chiêu phường 14 gò vấp', '', '2020-12-13', 1, '', 'Hồ Chí Minh', 'dasd59sa5d+sadsa', '18531000', 'dsadsadsa', 2147483647, 0000, 127, 1, 1, 'Credit card', '2020-07-07 10:35:21', '2020-07-07', 2020),
(176, 'GRANDE', 'vohoangtrung', '50000000', 42, 15, 335857134, '49/12 phạm văn chiêu phường 14 gò vấp', '', '2020-08-28', 1, '', 'Hồ Chí Minh', 'sads5ads4ad45s4d4sa5+ds', '30000000', 'trungdeptrai', 2147483647, 0000, 127, 1, 1, 'Credit card', '2020-07-07 10:35:49', '2020-07-07', 2020),
(177, 'SIRIUS FI', 'vohoangtrung', '21300000', 39, 15, 335857134, '49/12 phạm văn chiêu phường 14 gò vấp', '', '2020-12-19', 1, '', 'Hồ Chí Minh', 'dsadsdsa', '18531000', '32131232132132', 2147483647, 0000, 127, 1, 1, 'Credit card', '2020-07-07 10:38:07', '2020-07-07', 2020),
(178, 'SIRIUS FI', 'vohoangtrung', '21300000', 39, 15, 335857134, '49/12 phạm văn chiêu phường 14 gò vấp', '', '2020-09-03', 1, '', 'Hồ Chí Minh', 'dsadsdsadsadsafsa', '18531000', '23213213s', 2147483647, 0000, 127, 1, 1, 'Credit card', '2020-07-07 10:39:47', '2020-07-07', 2020);

-- --------------------------------------------------------

--
-- Table structure for table `productcatagory`
--

DROP TABLE IF EXISTS `productcatagory`;
CREATE TABLE IF NOT EXISTS `productcatagory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catagory_id` int(20) NOT NULL,
  `pname` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `Originprice` int(255) NOT NULL,
  `sale` tinyint(100) DEFAULT '0',
  `pimage` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '0',
  `so_luong_ban_ra` int(11) NOT NULL,
  `home` int(11) NOT NULL,
  `weight` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `L_W_H` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `Yen_altitude` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `danhmic_frk` (`catagory_id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `productcatagory`
--

INSERT INTO `productcatagory` (`id`, `catagory_id`, `pname`, `Originprice`, `sale`, `pimage`, `content`, `quantity`, `so_luong_ban_ra`, `home`, `weight`, `L_W_H`, `Yen_altitude`, `date_added`) VALUES
(1, 1, 'Air Blade', 41190000, 0, 'Air_blaeee.png', '112212132123', 0, 1, 1, '111-113 kg', '1870 x 687 x 1091 mm', '774-775 mm  ', '2020-05-21 17:00:00'),
(2, 1, 'CB300R', 140000000, 0, 'CB300R.png', 'Hả à ok :D', 12, 0, 1, '145 kg', '2020 x 805 x 1050 mm', '774-775 mm', '2020-05-22 17:00:00'),
(3, 1, 'CBR500R', 186990000, 10, 'CBR500R_news.png', 'Ok ghi thì ghi :(( ', 300, 4, 1, '192 kg', '2081 x 758 x 1145', '861 mm', '2020-05-28 17:00:00'),
(6, 1, 'Blade', 19000000, 0, 'Blade.png', 'Blade', 20, 0, 1, '111-113 kg', '1870 x 687 x 1091 mm', '774-775 mm', '2020-06-02 17:00:00'),
(7, 1, 'CB150R Exmotion', 105000000, 0, 'CB150R Exmotion_news.jpg', 'loream', 20, 0, 1, '157 kg', '2.019 x 719 x 1.039 mm', '797 mm', '2020-06-02 17:00:00'),
(8, 1, 'CB500F', 50000, 0, 'CB500F_news.png', 'loream', 10, 0, 1, '191 kg', '2.080 x 790 x 1.060 (mm)', '785 mm ', '2020-06-02 17:00:00'),
(9, 1, 'CB500X', 40000, 20, 'CB500X_news.png', '', 90, 4, 1, '196 kg', '2.095 x 830 x 1.360 (mm)', '810 mm', '2020-06-02 17:00:00'),
(10, 1, 'CB650R', 80000, 0, 'CB650R_news.png', '223', 45, 0, 1, '202 kg', '2.130 mm x 780 mm x 1.075 mm', '810 mm', '2020-06-02 17:00:00'),
(11, 1, 'CB1000R', 80000, 0, 'CB1000R_ss.jpg', '', 50, 0, 1, '220 kg', ' 2.120 _789 _1.090 mm', '830mm', '2020-06-02 17:00:00'),
(12, 1, 'CBR650R', 888888, 55, 'CBR650RSs.jpg', '', 61, 0, 1, '207kg', '2.130mm _750mm _1.150mm', '	810mm', '2020-06-02 17:00:00'),
(13, 1, 'CBR1000RR', 44444, 1, 'CBR1000RR_sss.png', '', 4, 0, 1, '196 Kg', '2.065mm_720mm _1.1125mm', '832mm', '2020-06-02 17:00:00'),
(14, 1, 'CBR1000RR-SP', 500000, 99, 'CBR1000RR-SPs.png', '', 23, 0, 1, '230kg', '2.033mm_700mm _1.225mm', '810 mm', '2020-06-02 17:00:00'),
(15, 1, 'Future 125i', 800000, 0, 'Future 125i23.png', '', 12, 0, 1, '160kg', '2.222mm_722mm _1.111mm', '800 mm', '2020-06-02 17:00:00'),
(16, 1, 'Goldwing', 3232132, 0, 'Goldwing_news.jpg', '', 2323, 0, 1, '250 kg', '1.989mm_602mm _1.000mm', '820 mm', '2020-06-02 17:00:00'),
(17, 1, 'Lead 125 FI', 324424, 22, 'Lead 125 Fi_news.png', '', 22, 0, 1, '165 kg', '1.559mm_562mm _1.100mm', '800 mm', '2020-06-02 17:00:00'),
(18, 1, 'Monkey', 242454, 0, 'Monkey_news.png', '', 23, 0, 1, '200 kg', '1.609mm_502mm _1.120mm', '800 mm', '2020-06-02 17:00:00'),
(19, 1, 'MSX125', 10000, 0, 'MSX125_news.png', '', 22, 0, 1, '104 kg', '1000 x 730 x 1755 mm', '760 mm', '2020-06-02 17:00:00'),
(20, 1, 'PCX 125-150', 98959, 2, 'PCX 125-155_news.png', '', 228, 0, 1, '130 kg', '1.931 x 737 x 1.103 mm', '761 mm', '2020-06-02 17:00:00'),
(21, 1, 'PCX Hybrid', 444455, 6, 'PCX Hybrid_news.png', '', 0, 0, 1, '134kg', '1.923 x 745 x 1.107mm', '764mm', '2020-06-02 17:00:00'),
(22, 1, 'Rebel 300', 45656, 0, 'Rebel 300_news.png', '', 1, 1, 1, '170 kg', '2,190mm x 820mm x 1,093mm', '690mm', '2020-06-02 17:00:00'),
(23, 1, 'Rebel500', 2323232, 0, 'Rebel500_news.jpg', 'OK CON Dê', 18, 0, 1, '190 kg', '1.931 x 737 x 1.103 mm', '690 mm', '2020-06-02 17:00:00'),
(24, 1, 'SH Mode 125', 999999, 0, 'SHmode.png', '', 99, 0, 1, '118 kg', '1.930 x 669 x 1.105 mm', '765 mm', '2020-06-02 17:00:00'),
(25, 1, 'SH125i', 255544, 23, 'SH125i_i.png', 'SH125i', 2, 0, 1, '120 kg', '1.930 x 669 x 1.105 mm', '775 mm', '2020-06-02 17:00:00'),
(26, 1, 'SH300i ABS', 8888888, 0, 'SH-300i.jpg', '1', 22, 2, 1, '120 kg', '1.930 x 669 x 1.105 mm', '765 mm', '2020-06-02 17:00:00'),
(27, 1, 'Super Cub C125', 777777, 0, 'super-cup.png', '', 15, 1, 1, '110 kg', '1000 x 720 x 1915', '780 mm', '2020-06-02 17:00:00'),
(28, 1, 'Vision', 535555, 0, 'Vission.png', '', 23, 0, 1, '96 kg', '1.863mm x 686mm x 1.088mm', '750mm', '2020-06-02 17:00:00'),
(29, 1, 'Wave Alpha', 600000, 1, 'wave_apha.png', 'Xe chạy tốt ', 17, 5, 1, '97 kg', '1.863mm x 686mm x 1.088mm', '769mm', '2020-06-02 17:00:00'),
(30, 1, 'Wave RSX FI', 500000, 3, 'Wave_rxfi.png', 'Xe mạnh chạy ngon', 94, 2, 1, '101 kg', '1.898mm x 709mm x 1.080mm', '764mm', '2020-06-02 17:00:00'),
(31, 1, 'WinnerX', 1300000, 0, 'winner.png', 'OK', 7, 2, 1, '117 kg	', '1.985× 670 × 1.100 mm	', '795 mm	', '2020-06-02 17:00:00'),
(37, 14, 'Exciter-Monster', 20000, 10, 'Exciter-Monster-0051.png', 'LIMITED', 94, 2, 1, '117 kg', '1985 mm × 670 mm × 1100 mm', '795 mm', '2020-06-22 17:00:00'),
(38, 14, 'JUPITER FI', 12874386, 42, 'Jupiter-GP-004-2.png', 'Xe mới', 98, 2, 1, '104kg', '1.935mm x 680mm x 1.065mm', '765mm', '2020-06-30 11:39:57'),
(39, 14, 'SIRIUS FI', 21300000, 23, 'Sirius-Red-Disk-004.png', 'OK?', 195, 5, 1, '99 kg', '1.940 mm×715 mm×1.075 mm', '775 mm', '2020-06-30 12:15:15'),
(40, 14, 'SIRIUS', 21300000, 0, 'Sirius-RC-Grey-Orange-004.png', 'OK ?', 0, 0, 1, '96kg', '1.890mm x 665mm x 1.035mm', '770mm', '2020-06-30 12:16:12'),
(42, 14, 'GRANDE', 50000000, 50, 'Grande-Pearl-White-002.png', 'Yamaha Grande là mẫu xe tay ga tiết kiệm xăng số 1 Việt Nam với mức tiêu thụ chỉ 1,69 lít/100km, theo số liệu thống kê và phân tích được Cục Đăng kiểm Việt Nam công bố, xác nhận bởi Báo Giao thông. Bên cạnh thiết kế thời trang, thanh lịch, ở phiên bản Gra', 96, 4, 1, '101 kg', '1.820mm x 685mm x 1.150mm', '790 mm', '2020-07-07 05:45:07');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comment`
--

DROP TABLE IF EXISTS `tbl_comment`;
CREATE TABLE IF NOT EXISTS `tbl_comment` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_comment_id` int(11) NOT NULL,
  `comment` varchar(200) NOT NULL,
  `Rating_Star` int(5) NOT NULL,
  `motorID` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_comment`
--

INSERT INTO `tbl_comment` (`comment_id`, `parent_comment_id`, `comment`, `Rating_Star`, `motorID`, `id_user`, `name`, `status`, `date`) VALUES
(98, 0, 'demo', 5, 31, 15, 'vohoangtrung', 0, '2020-07-04 08:58:24'),
(99, 0, 'demooo', 5, 31, 15, 'vohoangtrung', 0, '2020-07-04 08:58:31'),
(102, 0, 'test', 5, 39, 15, 'vohoangtrung', 0, '2020-07-05 16:16:37'),
(103, 0, 'test', 5, 39, 15, 'vohoangtrung', 0, '2020-07-05 16:20:21'),
(104, 0, 'test', 5, 39, 15, 'vohoangtrung', 0, '2020-07-05 16:22:07'),
(105, 0, 'test', 5, 39, 15, 'vohoangtrung', 0, '2020-07-05 16:22:28'),
(106, 0, 'test', 5, 39, 15, 'vohoangtrung', 0, '2020-07-05 16:23:12'),
(107, 0, 'demo\r\n', 5, 39, 15, 'vohoangtrung', 0, '2020-07-05 16:23:16'),
(108, 107, 'demo', 5, 39, 15, 'vohoangtrung', 0, '2020-07-05 16:23:20'),
(109, 0, 'demo', 5, 39, 15, 'vohoangtrung', 0, '2020-07-05 16:25:27'),
(110, 0, 'deeds', 5, 29, 15, 'vohoangtrung', 0, '2020-07-05 16:25:46'),
(111, 0, 'sao', 5, 40, 15, 'vohoangtrung', 0, '2020-07-07 03:09:00'),
(112, 111, 'sao', 5, 40, 15, 'vohoangtrung', 0, '2020-07-07 03:09:06'),
(113, 109, 'hello trung', 5, 39, 13, 'Student12084902', 0, '2020-07-07 05:30:41'),
(114, 109, 'hello trung', 5, 39, 13, 'Student12084902', 0, '2020-07-07 05:30:41'),
(115, 113, 'helo', 4, 39, 13, 'Student12084902', 0, '2020-07-07 05:30:52'),
(116, 113, 'hello', 5, 39, 13, 'Student12084902', 0, '2020-07-07 05:31:03');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `avartar` varchar(100) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `diachi` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `gender` tinyint(2) NOT NULL,
  `Born` date NOT NULL,
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `password`, `email`, `phone`, `status`, `avartar`, `diachi`, `gender`, `Born`, `create_at`) VALUES
(12, 'trungvo010', '87c4d3a7068efc9deaad79ce9f9376e5', 'trungvo010@gmail.com', 2147483647, 1, 'Avatar.jpg', '48/13/ campuchia singapor', 0, '0000-00-00', '2020-06-16 19:26:05'),
(13, 'Student12084902', 'ace11942fd2ba5f683246b9c7cf51786', 'Student12084902@gmail.com', 1264911005, 1, 'Avatar.jpg', '49/12 pham van chieu phuong 14 quan go vap', 0, '2000-07-11', '2020-06-22 14:29:01'),
(15, 'vohoangtrung', '1204ee5a8f9b792213d59d87431b8099', 'vohoangtrung@gmail.com', 335857134, 1, '14720536_1797565987159824_7956249866022643798_n_njek.jpg', '49/12 phạm văn chiêu phường 14 gò vấp', 0, '0000-00-00', '2020-07-02 15:14:39'),
(16, '123456789', 'ac80cae5a874b52cfce2e8c420e0afbb', 'trungdeptrai@gmail.com', 2147483647, 1, 'Avatar.jpg', '49/12 pham van chieu phuong 14 quan go vap', 1, '2000-02-01', '2020-07-07 12:34:23'),
(18, 'Student12084902', 'ace11942fd2ba5f683246b9c7cf51786', 'Student12084902@gmail.com', 335857131, 1, '14720536_1797565987159824_7956249866022643798_n_njek.jpg', '49/12 pham van chieu phuong 14 quan go vap', 1, '1998-03-05', '2020-07-07 12:37:17'),
(19, 'Student12084902', 'ace11942fd2ba5f683246b9c7cf51786', 'Student12084902@gmail.com', 335857131, 1, '14720536_1797565987159824_7956249866022643798_n_njek.jpg', '49/12 pham van chieu phuong 14 quan go vap', 1, '1998-03-05', '2020-07-07 12:37:17'),
(20, '23232132321', '04b856a5722e1e5f60817c9d1a21750d', '23232132321@gmail.com', 2147483647, 1, '14720536_1797565987159824_7956249866022643798_n_njek.jpg', '49/12 pham van chieu phuong 14 quan go vap', 1, '2001-06-13', '2020-07-07 12:40:10'),
(21, 'trungvo010', '566286c293c700c6631246dac793629e', 'Student12084923202@gmail.com', 333585113, 1, 'Avatar.jpg', '49/12 pham van chieu phuong 14 quan go vap', 1, '2006-01-27', '2020-07-07 13:20:42'),
(22, '335857134', '1859c32d437dc441a14b0ff8a0b3cc5a', 'Student122323084902@gmail.com', 2147483647, 1, 'Avatar.jpg', '49/12 pham van chieu phuong 14 quan go vap', 1, '2020-07-08', '2020-07-07 13:25:16'),
(23, '335857134', '133c102832bb8c51e3b541feb4609a33', 'Student321223230442184902@gmail.com', 2147483647, 1, 'Avatar.jpg', '49/12 pham van chieu phuong 14 quan go vap', 1, '2020-07-07', '2020-07-07 13:25:35');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `color_bike`
--
ALTER TABLE `color_bike`
  ADD CONSTRAINT `Con_frkkk` FOREIGN KEY (`id_Bikes`) REFERENCES `productcatagory` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

--
-- Constraints for table `feed`
--
ALTER TABLE `feed`
  ADD CONSTRAINT `Con_OK` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

--
-- Constraints for table `kythuat`
--
ALTER TABLE `kythuat`
  ADD CONSTRAINT `Con_frkkk22` FOREIGN KEY (`id_productssss`) REFERENCES `productcatagory` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `file_summary22` FOREIGN KEY (`file_summery`) REFERENCES `danhmuc_tintuc` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

--
-- Constraints for table `order_primary`
--
ALTER TABLE `order_primary`
  ADD CONSTRAINT `id_uuururu` FOREIGN KEY (`User_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `productcatagory`
--
ALTER TABLE `productcatagory`
  ADD CONSTRAINT `danhmic_frk` FOREIGN KEY (`catagory_id`) REFERENCES `danhmuc` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
