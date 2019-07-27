-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2019 at 04:37 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web_phong`
--
CREATE DATABASE IF NOT EXISTS `web_phong` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `web_phong`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `ma_admin` int(10) UNSIGNED NOT NULL,
  `ten_admin` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mat_khau` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dia_chi` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sdt` char(13) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngay_sinh` date NOT NULL,
  `gioi_tinh` tinyint(1) NOT NULL,
  `cap_do` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ma_admin`, `ten_admin`, `email`, `mat_khau`, `dia_chi`, `sdt`, `ngay_sinh`, `gioi_tinh`, `cap_do`) VALUES
(1, 'admin', '', '123', 'Hậu lộc', '0978751451', '1999-10-30', 0, 0),
(4, 'spadmin', 'khanh@gmail.com', '123', 'Hà Nội', '0978751451', '2019-01-16', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `hop_dong`
--

CREATE TABLE `hop_dong` (
  `ma_phong_tro` int(10) UNSIGNED NOT NULL,
  `ma_khach_hang` int(10) UNSIGNED NOT NULL,
  `thoi_gian_bat_dau_thue` datetime NOT NULL,
  `so_thang_thue` int(10) UNSIGNED NOT NULL,
  `tien_dat_coc` int(10) UNSIGNED NOT NULL,
  `gia_thanh` int(10) UNSIGNED NOT NULL,
  `cmnd_khach_hang` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `khach_hang`
--

CREATE TABLE `khach_hang` (
  `ma_khach_hang` int(10) UNSIGNED NOT NULL,
  `ten_khach_hang` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mat_khau` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dia_chi` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sdt` char(13) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngay_sinh` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngay_tham_gia` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `khach_hang`
--

INSERT INTO `khach_hang` (`ma_khach_hang`, `ten_khach_hang`, `email`, `mat_khau`, `dia_chi`, `sdt`, `ngay_sinh`, `ngay_tham_gia`) VALUES
(1, 'khanh', '', '345', 'Thanh hóa', '0978751451', '1999-10-30', '2019-01-10 17:26:33'),
(2, 'abc', 'duykhanhth1999@gmail.com', '123', 'nam dinh', '0165', '1-1-1999', '2019-01-09 03:43:07'),
(5, 'hoai', 'hoai@gmail.com', '345', 'Thanh hóa', '0978751451', '2000-10-20', '2019-01-09 04:03:16'),
(6, 'hoaihmv', 'hoaihmv@gmail.com', '123', '', '', '0000-00-00', '2019-01-07 10:51:20'),
(7, 'khanhghgg', 'dgds@gmail.com', '123', '', '', '0000-00-00', '2019-01-07 10:51:20'),
(18, 'tuan', 'tuan@gmail.com', '123', 'Hoàng hóa', '0369785152', '2019-01-19', '2019-01-23 03:09:28'),
(19, 'khai', 'khai@gmail.com', '123456', '', '', '0000-00-00', '2019-01-07 10:51:20'),
(20, 'nammeo', 'nammeo@gmail.com', '123', 'Hà nội', '0202', '2019-01-19', '2019-01-21 15:43:07'),
(22, 'cuong', 'cuong@gmail.com', '123456', '', '', '0000-00-00', '2019-01-07 10:51:20'),
(23, 'hien', 'hien@gmail.com', '123456', '', '', '0000-00-00', '2019-01-07 10:51:20'),
(24, 'hungphuong', 'hungphuong@gmail.com', '123456', '', '', '0000-00-00', '2019-01-07 10:51:20'),
(25, 'phuong', 'phuong123@gmail.com', '123', 'học viện bách khoa ', '0923593625', '1998-05-03', '2019-01-24 15:35:25'),
(29, 'hocviebbkacad', 'hocvien@gmail.com', '123456', '', '', '', '2019-01-24 15:27:21');

-- --------------------------------------------------------

--
-- Table structure for table `phong_tro`
--

CREATE TABLE `phong_tro` (
  `ma_phong_tro` int(10) UNSIGNED NOT NULL,
  `dia_chi_phong` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gia` int(10) UNSIGNED NOT NULL,
  `dien_tich` float UNSIGNED NOT NULL,
  `so_luong_nguoi` int(10) UNSIGNED NOT NULL,
  `ma_quan` char(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ten_nguoi_dang` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sdt_nguoi_dang` char(13) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tieu_de` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `noi_dung_chi_tiet` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `anh_1` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ma_khach_hang` int(10) UNSIGNED NOT NULL,
  `anh_2` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `anh_3` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tinh_trang` int(11) NOT NULL,
  `ngay_dang` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `phong_tro`
--

INSERT INTO `phong_tro` (`ma_phong_tro`, `dia_chi_phong`, `gia`, `dien_tich`, `so_luong_nguoi`, `ma_quan`, `ten_nguoi_dang`, `sdt_nguoi_dang`, `tieu_de`, `noi_dung_chi_tiet`, `anh_1`, `ma_khach_hang`, `anh_2`, `anh_3`, `tinh_trang`, `ngay_dang`) VALUES
(92, 'số 44 ngách 74 ngõ 58 Nguyễn Khánh Toàn, Cầu Giấy', 3500000, 24, 3, '5', 'Phạm Đức Nam', '0978752654', 'Phòng trọ  đường Nguyễn Khánh Toàn - Quan Hoa - Cầu Giấy', '- có THANG MÁY\r\n- vệ sinh khép kín, bình nóng lạnh\r\n- tủ bếp mặt đá\r\n- quạt trần \r\n- Internet\r\n- tủ gỗ\r\n- giường\r\n- Ra vào có khoá vân tay, camera an ninh. \r\n- Dọn vệ sinh chung mỗi tuần, có người thu rác mỗi ngày. \r\n- Đường đi vào nhà hoàn toàn tiện lợi, oto có thể đi vào thoải mái. \r\n- Được hưởng ', '1547050915_anh_1.jpg', 20, '1547050915_anh_2.jpg', '1547050915_anh_3.jpg', 1, '2019-01-21 15:40:30'),
(93, ' 803 Giải Phóng, Hai Bà Trưng', 3000000, 25, 5, '4', 'Hoàng Văn Đức', '0963582675', 'Phòng cho thuê đường Giải Phóng', 'Hiện nhà mình đang có PHÒNG CHO THUÊ 100% \r\n\r\n- DIỆN TÍCH 20-30m2 - PHÒNG KHÉP KÍN.\r\n\r\nĐỊA CHỈ: 803 Giải Phóng ( Cách Đường Kim Đồng, Tân Mai 500m )\r\n\r\nNgõ cách đường lớn 100m, gần công viên, bến xe bus, gần nhiều trường ĐH Kinh Tế Quốc Dân, Xây Dựng, Bách Khoa, BV Bạch Mai...\r\n- Phòng nhiều cửa sổ ', '1547054013_anh_1.jpg', 20, '1547054013_anh_2.jpg', '1547054013_anh_3.jpg', 1, '2019-01-09 17:18:01'),
(94, ' Nguyễn Lương Bằng, Đống Đa', 1500000, 30, 6, '3', 'Bùi Hoàng Đạt', '0168752368', 'Phòng khi vực Nguyễn Lương Bằng - Xã Đàn', 'Phòng Rộng Rãi\r\n-  ĐỂ XE TẦNG 1 MIỄN PHÍ \r\n-  KHÔNG CHUNG CHỦ - GIỜ GIẤC TỰ DO \r\n-  Nhà Gần chợ tiện mua sắm, gần nhiều trường đại học, an ninh đảm bảo tuyệt đối\r\n-  Phù hợp với người đi làm, ở nhóm....\r\n-  CÓ NGƯỜI DỌN VỆ SINH THƯỜNG XUYÊN SẠCH SẼ', '1547055031_anh_1.jpg', 5, '1547055031_anh_2.jpg', '1547055031_anh_3.jpg', 1, '2019-01-11 16:50:00'),
(95, 'Hoàng Cầu, Đống Đa', 2500000, 25, 2, '3', 'Hoàng Thị Huyền', '0125876925', 'Phòng trọ Hoàng Cầu', '-Phòng đẹp có Giường Tủ, Sàn Gỗ, Nóng Lạnh đầy đủ\r\n- Không chung chủ, Thoải mái giờ giấc\r\n- Có camera an ninh\r\n- Wifi, truyền hình cab\r\n- Có chỗ để xe Bảo vệ trông coi rất cẩn thận', '1547055543_anh_1.jpg', 5, '1547055543_anh_2.jpg', '1547055543_anh_3.jpg', 1, '2019-01-11 16:32:02'),
(96, ' 22 Đê La Thành, Cát Linh, Đống Đa', 4500000, 35, 6, '3', 'Đinh Xuân Hùng', '198365779', 'Chính chủ cho thuê phòng khép kín, nhiều đồ đường Đê La Thành nhỏ', 'Chính chủ cho thuê phòng khép kín, nhiều đồ đường Đê La Thành nhỏ\r\n+Nhà ở số 22 phố Đê La Thành nhỏ, liền kề ngay phố Xã Đàn. Từ đây đi ra các phố như Khâm Thiên, Tôn Đức Thắng, Nguyễn Lương Bằng, Giải Phóng đều rất gần. \r\n+Tiện ích: Nhà được trang bị thang máy, hệ thống internet cáp quang, các wifi', '1547055696_anh_1.jpg', 19, '1547055696_anh_2.jpg', '1547055696_anh_3.jpg', 1, '2019-01-09 17:50:44'),
(97, '  Nhà số 10 ngõ 302 Đường Láng, Đống Đa', 3800000, 25, 1, '3', 'Phạm Văn Đức', '0325987562', 'Cho thuê phòng full đồ - khép kín - tiện nghi Ngã Tư Sở', 'Cho thuê phòng full đồ - khép kín - tiện nghi Ngã Tư Sở\r\n⛩ Nhà số 10 ngõ 302 Đường Láng (ngay đầu Láng - Ngã Tư Sở) - yên tĩnh, an ninh, thoáng mát', '1547055832_anh_1.jpg', 19, '1547055832_anh_2.jpg', '1547055832_anh_3.jpg', 1, '2019-01-09 17:50:48'),
(98, '302 Đường Láng, Đống Đa', 3100000, 15, 2, '3', 'Lê Văn Hợi', '0125879852', 'Cho thuê Phòng Trọ 302 Đường Láng Gần Yên Lãng Ngã Tư Sở', 'Cần Cho Thuê Phòng trọ thuộc nhà riêng Ngõ 302 đường láng nhà mới sạch sẽ, mỗi tầng có 2 phòng, vệ sinh khép kín, có ban công nho nhỏ.\r\nNhà đã có nóng lạnh , có giường, tủ quần áo, có điều hòa, sàn gỗ, kệ tivi, nhà vệ sinh rộng… \r\nPhòng Vệ Sinh Rộng có đầy đủ thiết bị \r\nThiết kế phong cách mới, trẻ ', '1547055963_anh_1.jpg', 19, '1547055963_anh_2.jpg', '1547055963_anh_3.jpg', 1, '2019-01-09 17:50:52'),
(99, ' ngõ 41 Trường Chinh, Đống Đa', 1500000, 22, 3, '11', 'Lê Trọng Hùng', '0987526351', ' Cho thuê Homestay Trường Chinh ', ' Cho thuê Homestay Trường Chinh \r\n- An ninh ổn định, khu ở dân trí cao, camera 24/24. Giờ giấc tự do thoải mái.\r\n- Phù hơp với các bạn muốn nâng cao kỹ năng phản xạ tiếng anh (được sống và sinh hoạt với người nước ngoài)\r\n- Những người bạn mới đáng yêu, thân thiện.\r\n- Điện nước giá dân siêu rẻ (cuối', '1547056139_anh_1.jpg', 19, '1547056139_anh_2.jpg', '1547056139_anh_3.jpg', 1, '2019-01-09 17:50:55'),
(101, 'Trần Xuân Soạn, Ngô Thì Nhậm, Hai Bà Trưng', 15000000, 80, 2, '4', 'Hoàng Ngọc Tuấn', '0126987562', 'Cho Thuê Nhà Phố Trần Xuân Soạn Hà Nội', 'Nhà Mặt Bằng 90m vuông Hướng Chính Đông Mặt Tiền 4,6m Nhà Đẹp Mới Các Ngõ rộng 4m cach mặt phô 35m Ô tô vào thoải mái ! Tầng 1 Cho Thuê Bán Hàng OnlineTầng 4 và 5 Căn Hộ hoăc Làm Văn Phòng  ( Yêu Cầu Người Thuê Văn Minh Lich Sự ) Các Tầng Thuê Lâu Dài', '1547118042_anh_1.jpg', 5, '1547118042_anh_2.jpg', '1547118042_anh_3.jpg', 1, '2019-01-21 15:40:35'),
(102, ' ngõ 76 Duy Tân, Cầu Giấy', 15000000, 20, 2, '14', 'Nguyễn Hữu Huân', '0978625631', 'Chung cư mini Duy Tân', '- Cho thuê phòng khu vực Quốc Gia, Xuân Thuỷ, Hồ Tùng Mậu, Trần Thái Tông, Duy Tân... \r\n- Phòng ngủ có: điều hoà 2 chiều, wc khép kín, có ban công, 2 cửa sổ. Cả nhà có 2 phòng ngủ, 1 phòng khách, 1 phòng bếp. Khu vực chung được sử dụng thoải mái.\r\n- Điện nước giá dân, giờ giấc tự do, an ninh 24/7. K', '1547121006_anh_1.jpg', 5, '1547121006_anh_2.jpg', '1547121006_anh_3.jpg', 1, '2019-01-21 15:40:37'),
(103, 'Thôn 1 , Công Đình, Đình Xuyên, Gia Lâm', 1200000, 13, 1, '11', 'Nguyễn Quốc Oai', '0126987526', 'Phòng trọ Thôn 1 , Công Đình, Đình Xuyên, Gia Lâm', 'Cho thuê phòng trọ mới xây ở sát ninh hiệp gia lâm \r\n\r\nPhòng mới xây, có gác xép\r\n\r\nGần chợ ninh hiệp\r\n\r\nKhông chung chủ, có sân chơi rộng rãi, có wifi\r\n\r\nGiá Điện: 3k/số, nước: 20k/ngưòi/tháng\r\n\r\nƯu tiên người đi làm và gia đình thuê lâu dài', '1547138238_anh_1.jpg', 22, '1547138238_anh_2.jpg', '1547138238_anh_3.jpg', 1, '2019-01-10 16:40:55'),
(104, ' 248 ngõ 192 Lê Trọng Tấn, Thanh Xuân', 4500000, 35, 4, '9', 'Đỗ Thị Thanh', '0965236785', 'Chung cư mini 248 ngõ 192 Lê Trọng Tấn - Thanh Xuân', 'TIỆN ÍCH: \r\n+ Tòa chung cư mini 6 tầng mới xây, có thang máy\r\n+ Diện tích phòng TỪ 35M2-50M2 khu bếp riêng\r\n+ TẤT CẢ CÁC PHÒNG ĐỀU THOÁNG,VIEW ĐẸP.. \r\n+ KHÔNG GIỚI HẠN NGƯỜI Ở, ĐƯỢC PHÉP NUÔI THÚ CƯNG\r\n+ĐƯỜNG RỘNG BÃI OTO GẦN NHÀ \r\n- Nội thất:FULL\r\n+ nóng lạnh, giường, tủ quần áo,điều hòa,máy giặt\r\n', '1547138422_anh_1.jpg', 22, '1547138422_anh_2.jpg', '1547138422_anh_3.jpg', 1, '2019-01-10 16:40:47'),
(105, ' Kim Giang, Hoàng Mai', 3000000, 26, 6, '6', 'Đỗ Văn Thuận', '0932569875', 'Chung cư mini 39 ngõ 122 Kim Giang', 'Cho thuê Chung Cư Mini mới 100% ( KO CHUNG CHỦ, GIỜ GIẤC TỰ) ,tại ngõ 168 Kim Giang.\r\nĐặc điểm: Các phòng thoáng, anh sáng luôn tràn ngập trong phòng, ban công đi lại rộng rãi. Riêng từng phòng đều lắp đặt toàn bộ cửa cách âm tốt.\r\nCăn hộ trang bị đầy đủ:\r\n* Điều Hòa 12.000 BTU.\r\n* Quạt trần.\r\n* Giư', '1547138783_anh_1.jpg', 22, '1547138783_anh_2.jpg', '1547138783_anh_3.jpg', 1, '2019-01-10 17:54:41'),
(106, ' 89, Huyền Kỳ, Phú Lãm, Hà Đông', 5000000, 22, 2, '7', 'Vũ Hoài Nam', '0975362153', 'Cho thuê phòng trọ khép ksin 500k/th ở Hà Đông 12m2', 'Hiện mình có dãy phòng trọ cấp 4 sạch sẽ thoáng mát muốn cho thuê. Phòng không khép kín dùng riêng một nhà vệ sinh 400 nghìn/th. Nhà mình chỉ có 1 phòng này là phòng không khép kín thôi 10m2. Hòng có nhà vệ sinh khép kín 500nghìn/th diện tích khoảng 10 - 15m2 tùy phòng. Phòng 25m2 giá 700nghìn/tháng', '1547172983_anh_1.jpg', 5, '1547172983_anh_2.jpg', '1547172983_anh_3.jpg', 1, '2019-01-11 16:32:08'),
(107, 'Số 24 ngõ 196/8 Cầu Giấy, Cầu Giấy', 15000000, 35, 5, '5', 'Bùi Đức Kiều', '0169875626', 'Căn hộ Số 24 ngõ 196/8 Cầu Giấy', 'CHÍNH CHỦ CHO THUÊ CĂN HỘ MỚI ĐẸP TẠI 196 CẦU GIẤY \r\n- Căn hộ rộng 45m2 , có 5 cửa sổ thoáng, ban công \r\n- Có nóng lạnh, điều hoà, giường, tủ quần áo, tủ kệ bếp, rèm.\r\n- Có ban công phơi đồ riêng từng phòng \r\n- Giờ giấc tự do\r\n- Có thang máy ', '1547173260_anh_1.jpg', 6, '1547173260_anh_2.jpg', '1547173260_anh_3.jpg', 1, '2019-01-11 02:24:25'),
(108, ' 166 Mỹ Đình, Nam Từ Liêm', 1500000, 15, 1, '14', 'Vũ Thị Thương', '0169785352', 'CCMN Xanh tại số 166 ĐƯỜNG MỸ ĐÌNH', 'CCMN Xanh tại số 166 ĐƯỜNG MỸ ĐÌNH.\r\n\r\n**Vị trí: Đối diện Trường Tiểu học và Mần Non MỸ ĐÌNH. Gần KeangNam, ra Graden, Golden Palace mất 3 phút.\r\nGần bến xe Mỹ Đình, Hồ Tùng Mậu, Xuân Thủy...Đh Thương Mại, ĐH Quốc Gia, CĐ Du Lịch..\r\n- Phòng đơn khép kín 25m\r\n- phòng đôi 40m có ban công, giếng trời r', '1547173442_anh_1.jpg', 6, '1547173442_anh_2.jpg', '1547173442_anh_3.jpg', 1, '2019-01-11 02:24:26'),
(109, ' ngõ 76 Duy Tân, Cầu Giấy', 22000000, 32, 5, '5', 'Hoài Văn Đức', '0123659875', 'Chung cư mini Duy Tân', '- Cho thuê phòng khu vực Quốc Gia, Xuân Thuỷ, Hồ Tùng Mậu, Trần Thái Tông, Duy Tân... \r\n- Phòng ngủ có: điều hoà 2 chiều, wc khép kín, có ban công, 2 cửa sổ. Cả nhà có 2 phòng ngủ, 1 phòng khách, 1 phòng bếp. Khu vực chung được sử dụng thoải mái.\r\n- Điện nước giá dân, giờ giấc tự do, an ninh 24/7. K', '1547173647_anh_1.jpg', 7, '1547173647_anh_2.jpg', '1547173647_anh_3.jpg', 1, '2019-01-11 02:37:19'),
(111, ' 8 Thợ Nhuộm, Hoàn Kiếm, Hà Nội', 15000000, 25, 1, '1', 'Kiều Văn Vũ', '0169875268', 'PHÒNG TRỌ TẠI CỬA NAM PHỐ CỔ, WIFI MIỄN PHÍ, GIỜ TỰ DO, AN NINH TỐT', 'Chào các bạn, \r\n\r\nHiện giờ nhà mình đang có 2 căn phòng cần cho thuê lâu dài, đều có gác xép, với thông tin như sau: \r\n\r\nCăn 1: Cách mặt đường 5m, diện tích rộng 14m2, gác xép rộng 8m2, khép kín tại tầng 1. Có nhà vệ sinh riêng. Thích hợp cho nhóm bạn 2-3 người. Giá: 3 triệu/tháng. \r\n\r\nCăn 2: Tầng 1', '1547174048_anh_1.jpg', 7, '1547174048_anh_2.jpg', '1547174048_anh_3.jpg', 1, '2019-01-11 02:37:21'),
(113, 'Hậu Lộc - Thanh Hóa - Hà Nội', 245, 53647600, 9, '17', 'Đinh Thị Hoài', '0369785215', 'Cho thuê phòng trọ giá rẻ nhất hà nội', 'Cho thuê phòng trọ giá rẻ nhất hà nội', '1547182571_anh_1.jpg', 5, '1547182571_anh_2.jpg', '1547182571_anh_3.jpg', 1, '2019-01-21 15:40:40'),
(114, 'Quảng Xương - Thanh Hóa', 245, 53647600, 7, '17', 'Phạm Duy Khánh', '0169875624', 'Cho thuê phòng trọ giá rẻ nhất hà nội', 'Cho thuê phòng trọ giá rẻ nhất hà nội', '1547226382_anh_1.jpg', 5, '1547226382_anh_2.jpg', '1547226382_anh_3.jpg', 1, '2019-01-11 17:07:44'),
(115, 'Hậu Lộc - Thanh Hóa - Hà Nội', 245, 53647600, 7, '3', 'Phạm Duy Khánh', '0987562356', 'Cho thuê phòng trọ giá rẻ nhất hà nội', 'Cho thuê phòng trọ giá rẻ nhất hà nội', '1547230651_anh_1.jpg', 22, '1547230651_anh_2.jpg', '1547230651_anh_3.jpg', 2, '2019-01-12 10:17:22'),
(116, 'Hậu Lộc - Thanh Hóa - Hà Nội', 245, 53647600, 1, '16', 'Phạm Duy Khánh', '0987562356', 'Cho Thuê Nhà Phố Trần Xuân Soạn Hà Nội', 'Cho Thuê Nhà Phố Trần Xuân Soạn Hà Nội', '1547315114_anh_1.jpg', 5, '1547315114_anh_2.jpg', '1547315114_anh_3.jpg', 1, '2019-01-17 02:06:14'),
(117, 'Hậu Lộc - Thanh Hóa - Hà Nội', 245, 53647600, 1, '17', 'Phạm Văn Dương', '0987562356', 'Cho thuê phòng trọ giá rẻ nhất hà nội', 'Cho thuê phòng trọ giá rẻ nhất hà nội', '1548084317_anh_1.jpg', 23, '1548084317_anh_2.jpg', '1548084317_anh_3.jpg', 3, '2019-01-21 15:40:47'),
(118, 'Hậu Lộc - Thanh Hóa - Hà Nội', 245, 53647600, 82, '19', 'Vũ Văn Toàn', '0987562356', 'Cho Thuê Nhà Phố Trần Xuân Soạn Hà Nội', 'Cho Thuê Nhà Phố Trần Xuân Soạn Hà Nội', '1548084379_anh_1.jpg', 20, '1548084379_anh_2.jpg', '1548084379_anh_3.jpg', 3, '2019-01-21 15:40:50'),
(120, 'Hậu Lộc - Thanh Hóa - Hà Nội', 245, 53647600, 1, '13', 'Phạm Văn Dương', '0987562356', 'Cho Thuê Nhà Phố Trần Xuân Soạn Hà Nội', 'Cho Thuê Nhà Phố Trần Xuân Soạn Hà Nội', '1548085020_anh_1.jpg', 22, '1548085020_anh_2.jpg', '1548085020_anh_3.jpg', 2, '2019-01-23 03:25:26'),
(121, 'Hậu Lộc - Thanh Hóa - Hà Nội', 245, 53647600, 1, '16', 'Phạm Văn Dương', '0987562356', 'Cho thuê phòng trọ giá rẻ nhất hà nội', 'Cho thuê phòng trọ giá rẻ nhất hà nội', '1548089338_anh_1.jpg', 1, '1548089338_anh_2.jpg', '1548089338_anh_3.jpg', 1, '2019-01-24 15:33:48'),
(122, ' 12 ngõ 12/48 Đào Tấn, Ba Đình', 3500000, 25, 6, '2', 'Hồng Thị Hà', '0987562356', 'Cho thuê nhà 12 ngõ 12/48 Đào Tấn', 'Cho thuê nhà số 12 ngõ 12/48 đào tấn, vị trí trung tâm đi bộ là ra lotte, chợ linh lang\r\n-  Có 2 phòng ngủ thông nhau\r\n-  Chỗ nấu ăn cạnh phòng, thông thoáng\r\n-  Vệ sinh khép kín có nóng lạnh\r\n-  Không chung chủ\r\n-  Điện giá dân\r\n-  Nước 85k/ng\r\n-  Chỗ để xe free\r\n-  Giá 3tr5 ( không mặc cả )', '1548213440_anh_1.jpg', 18, '1548213440_anh_2.jpg', '1548213440_anh_3.jpg', 1, '2019-01-23 03:25:23'),
(123, 'số 34 ngõ 195 Quan Hoa, Cầu Giấy', 5000000, 30, 3, '5', 'Đình Bá Khải', '0126978562', 'Hệ Thống CCMN Xanh tại Quan Hoa. Cầu Giấy', 'Hệ Thống CCMN Xanh có phòng tại Quan Hoa. Cầu Giấy\r\nCăn hộ cao cấp đủ đồ chỉ sách vali đến ở. Có thang máy. Điện giá nhà nước.\r\nNgay giáp đường Nguyễn Khánh Toàn, Hoàng Quốc Việt, Đào Tấn, Cầu Giấy...\r\nTự do 24/24 ', '1548213551_anh_1.jpg', 18, '1548213551_anh_2.jpg', '1548213551_anh_3.jpg', 1, '2019-01-23 03:25:21'),
(124, '41 ngõ 82 Phạm Ngọc Thạch, Đống Đa', 6000000, 50, 4, '3', 'Hoàng Ngọc Khải', '0985236251', 'Căn hộ chung cư mini 41 ngõ 82 Phạm Ngọc Thạch', 'Căn hộ chung cư mini đẹp thiết kế hiện đại gần Vincom Phạm Ngọc Thạch 1 phòng ngủ\r\nDiện tích 50m2\r\n1. Vị trí: \r\n- Mặt đường Ngõ 82 Phạm Ngọc Thạch, taxi đỗ tận cửa, địa điểm dễ tìm trung tâm đi lại thuận tiện, đoạn cắt với Tôn Thất Tùng, Đông Tác và chùa Bộc, tiện lợi đi lại, ô tô đỗ thoải mái, đi v', '1548213652_anh_1.jpg', 18, '1548213652_anh_2.jpg', '1548213652_anh_3.jpg', 1, '2019-01-23 03:25:19'),
(125, ' Nhà 5 tầng số 7 ngõ 1 Bùi Huy Bích, Hoàng Mai', 2500000, 24, 2, '6', 'Cường Ngọc Hồng', '0169875263', 'Cho thuê phòng đẹp tiện nghi Giải Phóng - gần Linh Đàm - Bến xe nước ngầm', 'Nhà 5 tầng số 7 ngõ 1 phố Bùi Huy Bích (đi từ ngõ 1295 hoặc 1333 Giải Phóng vào rất gần)\r\n Phòng 24m2 cửa sổ thoáng mát, vệ sinh chung\r\n Giá : 2tr5/ tháng\r\n----------------------------------\r\n- Chỗ để xe miễn phí, camera an ninh\r\n- Máy giặt, chỗ phơi quần áo thoáng tầng thượng\r\n- Nhà vệ sinh đẹp, rộ', '1548213765_anh_1.jpg', 18, '1548213765_anh_2.jpg', '1548213765_anh_3.jpg', 1, '2019-01-23 03:25:17'),
(126, 'Quảng Xương', 245, 53647600, 9, '15', 'Phạm Văn Dương', '0126978562', 'Cho thuê phòng trọ giá rẻ nhất hà nội', 'Cho thuê phòng trọ giá rẻ nhất hà nội', '1548342113_anh_1.jpg', 23, '1548342113_anh_2.jpg', '1548342113_anh_3.jpg', 1, '2019-01-24 15:33:55'),
(127, 'Hậu Lộc - Thanh Hóa - Hà Nội', 245, 1140, 9, '12', 'Phạm Duy Khánh', '0987562356', 'Cho thuê phòng trọ giá rẻ nhất hà nội', 'Cho thuê phòng trọ giá rẻ nhất hà nội', '1548342253_anh_1.jpg', 25, '1548342253_anh_2.jpg', '1548342253_anh_3.jpg', 3, '2019-01-25 02:10:32'),
(128, 'Hậu Lộc - Thanh Hóa - Hà Nội', 245, 53647600, 82, '19', 'Đinh Thị Hoài', '0987562356', 'Cho thuê phòng trọ giá rẻ nhất hà nội', 'Cho thuê phòng trọ giá rẻ nhất hà nội', '1548343946_anh_1.jpg', 25, '1548343946_anh_2.jpg', '1548343946_anh_3.jpg', 3, '2019-01-25 02:55:03'),
(129, 'Hậu Lộc - Thanh Hóa - Hà Nội', 245, 53647600, 6, '18', 'Phạm Duy Khánh', '0923593625', 'Cho thuê phòng trọ giá rẻ nhất hà nội', 'Cho thuê phòng trọ giá rẻ nhất hà nội', '1548384849_anh_1.jpg', 25, '1548384849_anh_2.jpg', '1548384849_anh_3.jpg', 1, '2019-01-25 02:54:27');

-- --------------------------------------------------------

--
-- Table structure for table `quan`
--

CREATE TABLE `quan` (
  `ma_quan` char(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ten_quan` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quan`
--

INSERT INTO `quan` (`ma_quan`, `ten_quan`) VALUES
('1', 'Hoàn Kiếm'),
('10', 'Tây Hồ'),
('11', 'Gia Lâm'),
('12', 'Sóc Sơn'),
('13', 'Thanh Trì'),
('14', 'Từ Liêm'),
('15', 'Sơn Tây'),
('16', 'Mê Linh'),
('17', 'Ba Vì'),
('18', 'Chương Mỹ'),
('19', 'Đan Phượng'),
('2', 'Ba Đình'),
('20', 'Đông Anh'),
('21', 'Hoài Đức'),
('22', 'Mỹ Đức'),
('23', 'Phú Xuyên'),
('24', 'Phúc Thọ'),
('25', 'Quốc Oai'),
('26', 'Thạch Thất'),
('27', 'Thanh Oai'),
('28', 'Thường Tín'),
('29', 'Ứng Hòa'),
('3', 'Đống Đa'),
('4', 'Hai Bà Trưng'),
('5', 'Cầu Giấy'),
('6', 'Hoàng Mai'),
('7', 'Hà Đông'),
('8', 'Long Biên'),
('9', 'Thanh Xuân');

-- --------------------------------------------------------

--
-- Table structure for table `quan_tam`
--

CREATE TABLE `quan_tam` (
  `ma_khach_hang` int(10) UNSIGNED NOT NULL,
  `ma_phong_tro` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quan_tam`
--

INSERT INTO `quan_tam` (`ma_khach_hang`, `ma_phong_tro`) VALUES
(5, 97),
(5, 98),
(5, 101),
(18, 94),
(22, 96),
(25, 92),
(25, 98);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ma_admin`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `hop_dong`
--
ALTER TABLE `hop_dong`
  ADD PRIMARY KEY (`ma_phong_tro`,`thoi_gian_bat_dau_thue`),
  ADD KEY `ma_khach_hang` (`ma_khach_hang`);

--
-- Indexes for table `khach_hang`
--
ALTER TABLE `khach_hang`
  ADD PRIMARY KEY (`ma_khach_hang`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `phong_tro`
--
ALTER TABLE `phong_tro`
  ADD PRIMARY KEY (`ma_phong_tro`),
  ADD KEY `ma_quan` (`ma_quan`),
  ADD KEY `ma_khach_hang` (`ma_khach_hang`);

--
-- Indexes for table `quan`
--
ALTER TABLE `quan`
  ADD PRIMARY KEY (`ma_quan`);

--
-- Indexes for table `quan_tam`
--
ALTER TABLE `quan_tam`
  ADD PRIMARY KEY (`ma_khach_hang`,`ma_phong_tro`),
  ADD KEY `ma_phong_tro` (`ma_phong_tro`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `ma_admin` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `khach_hang`
--
ALTER TABLE `khach_hang`
  MODIFY `ma_khach_hang` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `phong_tro`
--
ALTER TABLE `phong_tro`
  MODIFY `ma_phong_tro` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hop_dong`
--
ALTER TABLE `hop_dong`
  ADD CONSTRAINT `hop_dong_ibfk_1` FOREIGN KEY (`ma_phong_tro`) REFERENCES `phong_tro` (`ma_phong_tro`),
  ADD CONSTRAINT `hop_dong_ibfk_2` FOREIGN KEY (`ma_khach_hang`) REFERENCES `khach_hang` (`ma_khach_hang`);

--
-- Constraints for table `phong_tro`
--
ALTER TABLE `phong_tro`
  ADD CONSTRAINT `phong_tro_ibfk_1` FOREIGN KEY (`ma_quan`) REFERENCES `quan` (`ma_quan`),
  ADD CONSTRAINT `phong_tro_ibfk_2` FOREIGN KEY (`ma_khach_hang`) REFERENCES `khach_hang` (`ma_khach_hang`);

--
-- Constraints for table `quan_tam`
--
ALTER TABLE `quan_tam`
  ADD CONSTRAINT `quan_tam_ibfk_1` FOREIGN KEY (`ma_khach_hang`) REFERENCES `khach_hang` (`ma_khach_hang`),
  ADD CONSTRAINT `quan_tam_ibfk_2` FOREIGN KEY (`ma_phong_tro`) REFERENCES `phong_tro` (`ma_phong_tro`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
