-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 24, 2024 lúc 04:30 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `golfshops`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `attributes`
--

CREATE TABLE `attributes` (
  `attributesID` int(11) NOT NULL,
  `attributesName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `attributesvalues`
--

CREATE TABLE `attributesvalues` (
  `attributesValuesID` int(11) NOT NULL,
  `attributesValues` varchar(100) NOT NULL,
  `attributesID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `categoriesID` int(11) NOT NULL,
  `categoryName` varchar(100) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `parentID` int(11) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updationDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`categoriesID`, `categoryName`, `image`, `description`, `status`, `parentID`, `creationDate`, `updationDate`) VALUES
(1, 'Gậy Golf', NULL, NULL, 1, 0, '2024-03-17 04:38:35', '2024-03-17 04:38:35'),
(2, 'Túi Golf', NULL, NULL, 1, 0, '2024-03-17 04:38:35', '2024-03-17 04:38:35'),
(3, 'Giày Golf', NULL, NULL, 1, 0, '2024-03-17 04:38:35', '2024-03-17 04:38:35'),
(4, 'Mũ Golf', NULL, NULL, 1, 0, '2024-03-17 04:38:35', '2024-03-17 04:38:35'),
(5, 'Quần Áo Golf', NULL, NULL, 1, 0, '2024-03-17 04:38:35', '2024-03-17 04:38:35'),
(6, 'Găng Tay Golf', NULL, NULL, 1, 0, '2024-03-17 04:38:35', '2024-03-17 04:38:35'),
(7, 'Bóng Golf', NULL, NULL, 1, 0, '2024-03-17 04:38:35', '2024-03-17 04:38:35'),
(8, 'Kính Golf', NULL, NULL, 1, 0, '2024-03-17 04:38:35', '2024-03-17 04:38:35'),
(9, 'Tee Golf', NULL, NULL, 1, 0, '2024-03-17 04:38:35', '2024-03-17 04:38:35'),
(10, 'Dù Golf', NULL, NULL, 1, 0, '2024-03-17 04:38:35', '2024-03-17 04:38:35'),
(11, 'Máy Đo Khoảng Cách Golf', NULL, NULL, 1, 0, '2024-03-17 04:38:35', '2024-03-17 04:38:35'),
(12, 'Dụng Cụ Luyện Tập Golf', NULL, NULL, 1, 0, '2024-03-17 04:38:35', '2024-03-17 04:38:35'),
(13, 'Phụ Kiện Golf', NULL, NULL, 1, 0, '2024-03-17 04:38:35', '2024-03-17 04:38:35'),
(14, 'Bộ Gậy Golf | Full Set', NULL, NULL, 1, 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35'),
(15, 'Gậy Driver', NULL, NULL, 1, 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35'),
(16, 'Gậy Fairway', NULL, NULL, 1, 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35'),
(17, 'Gậy Wedge', NULL, NULL, 1, 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35'),
(18, 'Bộ Gậy sắt', NULL, NULL, 1, 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35'),
(19, 'Gậy Putter', NULL, NULL, 1, 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35'),
(20, 'Gậy Hybrid | Rescue', NULL, NULL, 1, 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35'),
(21, 'Gậy Sắt Utility | Crossover', NULL, NULL, 1, 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35'),
(22, 'Gậy Golf Trẻ Em', NULL, NULL, 1, 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35'),
(23, 'Túi Gậy Golf', NULL, NULL, 1, 2, '2024-03-17 04:38:35', '2024-03-17 04:38:35'),
(24, 'Túi Gậy Tập Golf', NULL, NULL, 1, 2, '2024-03-17 04:38:35', '2024-03-17 04:38:35'),
(25, 'Túi Golf Xách Tay', NULL, NULL, 1, 2, '2024-03-17 04:38:35', '2024-03-17 04:38:35'),
(26, 'Túi Đựng Giày', NULL, NULL, 1, 2, '2024-03-17 04:38:35', '2024-03-17 04:38:35'),
(27, 'Cover Gậy Golf', NULL, NULL, 1, 2, '2024-03-17 04:38:35', '2024-03-17 04:38:35'),
(28, 'Giày Golf Nam', NULL, NULL, 1, 3, '2024-03-17 04:38:35', '2024-03-17 04:38:35'),
(29, 'Giày Golf Nữ', NULL, NULL, 1, 3, '2024-03-17 04:38:35', '2024-03-17 04:38:35'),
(30, 'Giày Golf Junior', NULL, NULL, 1, 3, '2024-03-17 04:38:35', '2024-03-17 04:38:35'),
(31, 'Tất Vớ', NULL, NULL, 1, 3, '2024-03-17 04:38:35', '2024-03-17 04:38:35'),
(32, 'Nón Golf Nam', NULL, NULL, 1, 4, '2024-03-17 04:38:35', '2024-03-17 04:38:35'),
(33, 'Nón Golf Nữ', NULL, NULL, 1, 4, '2024-03-17 04:38:35', '2024-03-17 04:38:35'),
(34, 'Nón Thời Trang Nam', NULL, NULL, 1, 4, '2024-03-17 04:38:35', '2024-03-17 04:38:35'),
(35, 'Nón Thời Trang Nữ', NULL, NULL, 1, 4, '2024-03-17 04:38:35', '2024-03-17 04:38:35'),
(36, 'Nón Trẻ Em', NULL, NULL, 1, 4, '2024-03-17 04:38:35', '2024-03-17 04:38:35'),
(37, 'Áo Golf Nam', NULL, NULL, 1, 5, '2024-03-17 04:38:35', '2024-03-17 04:38:35'),
(38, 'Áo Golf Nữ', NULL, NULL, 1, 5, '2024-03-17 04:38:35', '2024-03-17 04:38:35'),
(39, 'Quần Golf Nam', NULL, NULL, 1, 5, '2024-03-17 04:38:35', '2024-03-17 04:38:35'),
(40, 'Váy Golf Nữ', NULL, NULL, 1, 5, '2024-03-17 04:38:35', '2024-03-17 04:38:35'),
(41, 'Đồ Đi Mưa', NULL, NULL, 1, 5, '2024-03-17 04:38:35', '2024-03-17 04:38:35'),
(42, 'Găng Tay Nam', NULL, NULL, 1, 6, '2024-03-17 04:38:35', '2024-03-17 04:38:35'),
(43, 'Găng Tay Nữ', NULL, NULL, 1, 6, '2024-03-17 04:38:35', '2024-03-17 04:38:35'),
(44, 'Găng Tay junior', NULL, NULL, 1, 6, '2024-03-17 04:38:35', '2024-03-17 04:38:35'),
(45, 'Găng Tay Đi Mưa', NULL, NULL, 1, 6, '2024-03-17 04:38:35', '2024-03-17 04:38:35'),
(46, 'Găng Tay Cadet', NULL, NULL, 1, 6, '2024-03-17 04:38:35', '2024-03-17 04:38:35'),
(47, 'Bóng Golf Trắng', NULL, NULL, 1, 7, '2024-03-17 04:38:35', '2024-03-17 04:38:35'),
(48, 'Bóng Golf Màu', NULL, NULL, 1, 7, '2024-03-17 04:38:35', '2024-03-17 04:38:35'),
(49, 'Bóng Golf 5 Lớp', NULL, NULL, 1, 7, '2024-03-17 04:38:35', '2024-03-17 04:38:35'),
(50, 'Bóng Golf 4 Lớp', NULL, NULL, 1, 7, '2024-03-17 04:38:35', '2024-03-17 04:38:35'),
(51, 'Bóng Golf 3 Lớp', NULL, NULL, 1, 7, '2024-03-17 04:38:35', '2024-03-17 04:38:35'),
(52, 'Bóng Golf 2 Lớp', NULL, NULL, 1, 7, '2024-03-17 04:38:35', '2024-03-17 04:38:35'),
(53, 'Polarized Chống Chói', NULL, NULL, 1, 8, '2024-03-17 04:38:35', '2024-03-17 04:38:35'),
(54, 'Siêu Nhẹ - Siêu Mỏng', NULL, NULL, 1, 8, '2024-03-17 04:38:35', '2024-03-17 04:38:35'),
(55, 'Kính Golf Thời Trang', NULL, NULL, 1, 8, '2024-03-17 04:38:35', '2024-03-17 04:38:35'),
(56, 'Kính PRIZM Lens', NULL, NULL, 1, 8, '2024-03-17 04:38:35', '2024-03-17 04:38:35'),
(57, 'Kính Thể Thao Tròng Cần', NULL, NULL, 1, 8, '2024-03-17 04:38:35', '2024-03-17 04:38:35'),
(58, 'Tee Gỗ', NULL, NULL, 1, 9, '2024-03-17 04:38:35', '2024-03-17 04:38:35'),
(59, 'Tee Nhựa', NULL, NULL, 1, 9, '2024-03-17 04:38:35', '2024-03-17 04:38:35'),
(60, 'Tee Cao Su', NULL, NULL, 1, 9, '2024-03-17 04:38:35', '2024-03-17 04:38:35'),
(61, 'Tee Lò Xo', NULL, NULL, 1, 9, '2024-03-17 04:38:35', '2024-03-17 04:38:35'),
(62, 'Tee Có Dây', NULL, NULL, 1, 9, '2024-03-17 04:38:35', '2024-03-17 04:38:35'),
(63, 'Dù Golf 1 Tầng', NULL, NULL, 1, 10, '2024-03-17 04:38:35', '2024-03-17 04:38:35'),
(64, 'Dù Golf 2 Tầng', NULL, NULL, 1, 10, '2024-03-17 04:38:35', '2024-03-17 04:38:35'),
(65, 'Thảm Tập Golf', NULL, NULL, 1, 12, '2024-03-17 04:38:35', '2024-03-17 04:38:35'),
(66, 'Lưới Tập Đánh Golf', NULL, NULL, 1, 12, '2024-03-17 04:38:35', '2024-03-17 04:38:35'),
(67, 'Bóng Tập Golf', NULL, NULL, 1, 12, '2024-03-17 04:38:35', '2024-03-17 04:38:35'),
(68, 'Dụng Cụ Tập Swing', NULL, NULL, 1, 12, '2024-03-17 04:38:35', '2024-03-17 04:38:35'),
(69, 'Dụng Cụ Tập Putting', NULL, NULL, 1, 12, '2024-03-17 04:38:35', '2024-03-17 04:38:35'),
(70, 'Thắt Lưng', NULL, NULL, 1, 13, '2024-03-17 04:38:35', '2024-03-17 04:38:35'),
(71, 'Khẩu Trang', NULL, NULL, 1, 13, '2024-03-17 04:38:35', '2024-03-17 04:38:35'),
(72, 'Băng Đô', NULL, NULL, 1, 13, '2024-03-17 04:38:35', '2024-03-17 04:38:35'),
(73, 'Ống Tay Chống Nắng', NULL, NULL, 1, 13, '2024-03-17 04:38:35', '2024-03-17 04:38:35'),
(74, 'Ball Markers', NULL, NULL, 1, 13, '2024-03-17 04:38:35', '2024-03-17 04:38:35'),
(75, 'Dụng Cụ Bảo Dưỡng Gậy', NULL, NULL, 1, 13, '2024-03-17 04:38:35', '2024-03-17 04:38:35'),
(76, 'Tee Holder', NULL, NULL, 1, 13, '2024-03-17 04:38:35', '2024-03-17 04:38:35'),
(77, 'Giá Để Gậy', NULL, NULL, 1, 13, '2024-03-17 04:38:35', '2024-03-17 04:38:35'),
(78, 'Pin CR2', NULL, NULL, 1, 13, '2024-03-17 04:38:35', '2024-03-17 04:38:35'),
(79, 'Túi Đựng Phụ Kiện', NULL, NULL, 1, 13, '2024-03-17 04:38:35', '2024-03-17 04:38:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `commentsID` int(11) NOT NULL,
  `content` text NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `usersID` int(11) NOT NULL,
  `productsID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orderdetails`
--

CREATE TABLE `orderdetails` (
  `orderDetailsID` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `discountAmount` int(11) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `odersID` int(11) NOT NULL,
  `productsID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `ordersID` int(11) NOT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `note` text DEFAULT NULL,
  `paymentMethod` tinyint(1) NOT NULL,
  `paymentStatus` tinyint(1) NOT NULL,
  `orderStatus` tinyint(1) NOT NULL,
  `usersID` int(11) NOT NULL,
  `voucherID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `productsID` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `promotionalPrice` int(11) DEFAULT NULL,
  `labelPromotion` varchar(10) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `brandProduct` varchar(100) NOT NULL,
  `codeProduct` varchar(50) NOT NULL,
  `typeName` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `hot` tinyint(1) NOT NULL,
  `categoriesID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`productsID`, `productName`, `image`, `price`, `promotionalPrice`, `labelPromotion`, `description`, `brandProduct`, `codeProduct`, `typeName`, `status`, `creationDate`, `updationDate`, `hot`, `categoriesID`) VALUES
(1, 'Bộ gậy golf Full set Callaway RH Warbird 19 | Callawayy ', 'https://product.hstatic.net/1000007560/product/bo_gay_golf_full_set_callaway_rh_warbird_6_callaway__1__fca4efac457140f4975f84ad9d67e0ba_1024x1024.jpg', 29900000, 23920000, '23%', NULL, 'Callaway', '884885937169', 'Gậy FullSet', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 1),
(2, 'BỘ GẬY GOLF FULL SET NAM RV-8 10 GẬY | Mizuno ', 'https://product.hstatic.net/1000007560/product/bo_gay_golf_fullset_nam_mizuno_rv-8_2_00f0eff7be5640a9a9598db160619238_1024x1024.jpg', 29800000, 19370000, '35%', NULL, 'Mizuno', '5KDFB17928R', 'Gậy FullSet', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 1),
(3, 'Bộ gậy golf nữ full set Fly XL Graphite L [12 gậy + cart bag] | Cobra', 'https://product.hstatic.net/1000007560/product/bo_gay_golf_nu_full_set_xl_graphite_l_cobra_km_t10_cf49cbd8776e4bd0b5ca7cfc36d0e1d8_1024x1024.jpg', 26825000, 21460000, '20%', NULL, 'Cobra', 'FSCBXL3Women', 'Gậy FullSet', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 1),
(4, 'Bộ 9 gậy golf nữ + cartbag chuyên nghiệp Full set REVA Black | Callaway', 'https://product.hstatic.net/1000007560/product/bo_gay_golf_nu_chuyen_nghiep_full_set_reva_black_9pc_callaway_f2dbc94acaa741efa875d5b3c2683be5_1024x1024.jpg', 43900000, 35120000, '20%', NULL, 'Callaway', '194518304085', 'Gậy FullSet', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 1),
(5, 'Bộ gậy golf nam full set Fly XL [12 gậy + cart bag] | Cobra', 'https://product.hstatic.net/1000007560/product/bo_gay_golf_nam_full_set_xl_graphite_r_cobra_km_t10_2959afc9112246459876c8af0c475141_1024x1024.jpg', 26825000, 21460000, '20%', NULL, 'Cobra', 'FSCBXL3men', 'Gậy FullSet', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 1),
(6, 'Bộ gậy golf nữ full set BLOOM 2023 9 gậy + cartbag | CleveLand', 'https://product.hstatic.net/1000007560/product/bo_gay_golf_full_set_bloom_2023_9_gay___cartbag_cleveland_5921c4bd013f4badb297b6f55fc66cea_1024x1024.jpg', 26140000, 20910000, '20%', NULL, 'CleveLand', 'FSWBLOOM', 'Gậy FullSet', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 1),
(7, 'Gậy Driver Qi10 MAX AS TM50 | TaylorMade', 'https://product.hstatic.net/1000007560/product/gay_driver_qi10_max_as_tm50_taylormade_c4712874413445c680bcb62c6028f6d4_1024x1024.jpg', 20880000, 16705000, '20%', NULL, ' TaylorMade', 'M16142', 'Gậy Driver', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 1),
(8, 'Gậy Driver XXPRE12 Prime | XXIO', 'https://product.hstatic.net/1000007560/product/gay_driver_xxpre12_prime_xxio__1__840b70b42d634ed780ac00e6944609e7_1024x1024.jpg', 25625000, 23065000, '10%', NULL, 'XXIO', 'SP1200DR-1', 'Gậy Driver', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 1),
(9, 'Gậy Driver XXPRE12 Royal Edition Prime | XXIO', 'https://product.hstatic.net/1000007560/product/driver_xxpre12_royal_edition_prime__1__923b37a7c27349cf8cacc0a79ead41b4_1024x1024.jpg', 33962000, 30565000, '10%', NULL, 'XXIO', 'SP1200KDR-1', 'Gậy Driver', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 1),
(10, 'Gậy Driver nữ AEROJET MAX 2023 | Cobra', 'https://product.hstatic.net/1000007560/product/gay_driver_nu_aerojet_max_2023_cobra__1__204fb35203e5439e8d1c8deb335f903c_1024x1024.jpg', 17880000, 14305000, '20%', NULL, 'Cobra', '915615', 'Gậy Driver', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 1),
(11, 'Gậy Driver AEROJET PALM TREE CREW 2023 | Cobra', 'https://product.hstatic.net/1000007560/product/gay_driver_aerojet_palm_tree_crew_2023_cobra__1__89341bc553ac4baea0da54def93b3e62_1024x1024.jpg', 19250000, 15400000, '20%', NULL, 'Cobra', '916098', 'Gậy Driver', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 1),
(12, 'Gậy Driver STEALTH 2 Plus AS | TaylorMade', 'https://product.hstatic.net/1000007560/product/gay_driver_stealth_2_plus_as_taylormade__1__0f58d3a6e54744048e55162803b89415_1024x1024.jpg', 22680000, 15875000, '30%', NULL, 'TaylorMade', 'N85313', 'Gậy Driver', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 1),
(13, 'Gậy Fairway G425 MAX ALTA J CB | PING', 'https://product.hstatic.net/1000007560/product/gay_fairway_g425_max_alta_j_cb_ping_9eca616f68b04c8781dc8b8728f3ebd0_1024x1024.jpg', 11500000, 6325000, '45%', NULL, 'PING', 'CA410003F', 'Gậy Fairway', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 1),
(14, 'Gậy Fairway STEALTH | TaylorMade', 'https://product.hstatic.net/1000007560/product/gay_fairway_nam_stealth_taylormade_1128c393e77e4adf8edb63b339acc6c3_1024x1024.jpg', 6475000, 10790182, '40%', NULL, 'TaylorMade', 'N93171	', 'Gậy Fairway', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 1),
(15, 'Gậy Fairway nữ AEROJET MAX 2023 | Cobra', 'https://product.hstatic.net/1000007560/product/gay_fairway_nu_aerojet_max_2023_cobra_384235ef09db4a898215802bec9d0fcf_1024x1024.jpg', 8615000, 10770000, '20%', NULL, 'Cobra', '915629', 'Gậy Fairway', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 1),
(16, 'Gậy golf Fairway Beres AIZU AQ AQ MX 5 sao | HONMA', 'https://product.hstatic.net/1000007560/product/gay_golf_fairway_beres_aizu_5_sao_honma_34c021897af04609bfc22603fc468eb6_1024x1024.jpg', 112455000, 132300000, '15%', NULL, 'HONMA', 'WOODAIZUAQ MX 5SARDR315', 'Gậy Fairway', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 1),
(17, 'Gậy golf Fairway Beres AIZU AQ AQ MX 4 sao | HONMA', 'https://product.hstatic.net/1000007560/product/gay_golf_fairway_beres_aizu_4_sao_honma_aa2a6e40f217456e8a24110c1bce8ef2_1024x1024.jpg', 42100000, 35785000, '15%', NULL, 'HONMA', 'WOODAIZUAQ MX 4SABKR315', 'Gậy Fairway', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 1),
(18, 'Gậy fairway LTDx Matte Black / Gold Fusion 2022 | Cobra', 'https://product.hstatic.net/1000007560/product/gay_fairway_ltdx_matte_black__gold_fusion_2022_cobra__1__e36467e6772b47e79a1c603050258289_1024x1024.jpg', 9999000, 5900000, '41%', NULL, 'Cobra', '915062_23_3', 'Gậy Fairway', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 1),
(19, 'Gậy Wedge Smart Sole Black Satin 4.0 | CleveLand', 'https://product.hstatic.net/1000007560/product/gay_wedge_smart_sole_black_satin_4.0_cleveland_bb3402268d4d4bc29fb4b5e3b451af67_1024x1024.jpg', 3090000, 2475000, '20%', NULL, 'CleveLand', 'SOLE4.0 42D', 'Gậy Wedge', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 1),
(20, 'Gậy Wedge RTX DEEP FORGED 2 DG | CleveLand', 'https://product.hstatic.net/1000007560/product/gay_wedge_rtx_deep_forged_2_dg_cleveland_6e59097678db48dcb186ad085bf36ae2_1024x1024.jpg', 4900000, 3920000, '20%', NULL, 'CleveLand', 'RTX48STD', 'Gậy Wedge', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 1),
(21, 'Gậy Wedge MILLED GRIND 3 MG3 Black | TaylorMade', 'https://product.hstatic.net/1000007560/product/gay_wedge_milled_grind_3_black_taylormade__2__7f0184f674d54a759ad98ac2e3068913_1024x1024.jpg', 5980000, 4780000, '20%', NULL, 'TaylorMade', 'N8008509', 'Gậy Wedge', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 1),
(22, 'Gậy golf wedge ChipR shaft Z-Z155 | PING', 'https://product.hstatic.net/1000007560/product/gay_golf_wedge_chipr_ping_ede8243b7be24899b88e665671536920_1024x1024.jpg', 5950000, 4760000, '20%', NULL, 'PING', 'CHIP R Z-Z155', 'Gậy Wedge', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 1),
(23, 'Gậy WEDGE HI-TOE 3 màu Cooper | TaylorMade', 'https://product.hstatic.net/1000007560/product/gay_wedge_hi-toe_3_mau_cooper_taylormade__1__98b52f71454c4a149123a59a9606ec30_1024x1024.jpg', 6091000, 4875000, '20%', NULL, 'TaylorMade', 'A93003', 'Gậy Wedge', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 1),
(24, 'Gậy Wedges Vokey SM9 Brushed Steel | Titleist', 'https://product.hstatic.net/1000007560/product/gay_wedges_vokey_sm9_brushed_steel_titleist_2db3274564c74fda8e99e5b60b053dee_1024x1024.jpg', 5683999, 4550000, '20%', NULL, 'Titleist', 'CHIP R Z-Z155', 'Gậy Wedge', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 1),
(25, 'Bộ gậy golf irons JPX921 HOT METAL | Mizuno', 'https://product.hstatic.net/1000007560/product/bo_gay_golf_irons_jpx921_hot_metal_mizuno_3cf8fa246f344093aad47b10760b3d49_1024x1024.jpg', 24500000, 19600000, '20%', NULL, 'Mizuno', '5KDFR35907L', 'Gậy sắt', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 1),
(26, 'Bộ gậy sắt XXPRE12 Royal Edition Prime | XXIO', 'https://product.hstatic.net/1000007560/product/irons_xxpre12_royal_edition_prime__1__a40777350534437fba385d78a59b66fc_1024x1024.jpg', 81992000, 73795000, '10%', NULL, 'XXIO', '5KDFR35907L', 'Gậy sắt', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 1),
(27, 'Bộ gậy sắt XXPRE12 Prime | XXIO', 'https://product.hstatic.net/1000007560/product/bo_gay_sat_xxpre12_prime_xxio__1__70aa412f7ba342f99a3258be2da467cc_1024x1024.jpg', 58573000, 52715000, '10%', NULL, 'XXIO', 'SP1200IR-1', 'Gậy sắt', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 1),
(28, 'Bộ gậy golf irons JPX921 HOT METAL | Mizuno', 'https://product.hstatic.net/1000007560/product/bo_gay_golf_irons_jpx921_hot_metal_mizuno_3cf8fa246f344093aad47b10760b3d49_1024x1024.jpg', 24500000, 19600000, '20%', NULL, 'Mizuno', '5KDFR35907L', 'Gậy sắt', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 1),
(29, 'Bộ 7 gậy golf Irons T350 FORGED III 2023 | Titleist', 'https://product.hstatic.net/1000007560/product/bo_7_gay_golf_irons_t350_forged_iii_2023_titleist__1__1788a10022ec4343a362c3395699e354_1024x1024.jpg', 40480000, 47628000, '15%', NULL, 'Titleist', '557RSR5WA', 'Gậy sắt', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 1),
(30, 'Bộ 7 gậy sắt AEROJET Irons SILVER Right Hand 5-PW,GW 2023 | Cobra', 'https://product.hstatic.net/1000007560/product/bo_gay_sat_aerojet_irons_2023_cobra__1__c17b86b24e374872a0a75e80af1b19ac_1024x1024.jpg', 37400000, 29920000, '20%', NULL, 'Cobra', '915669+915641', 'Gậy sắt', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 1),
(31, 'Gậy putters Scotty Cameron Super Select GOLO 6.5 2023 | Titleist', 'https://product.hstatic.net/1000007560/product/gay_putters_scotty_cameron_super_select_golo_6.5_2023_titleist__1__52aa4e36d8054c55b5986a29fbd48380_1024x1024.jpg', 14613135, 11690000, '20%', NULL, 'Titleist', '745RI33', 'Gậy Putter', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 1),
(32, 'Gậy putter HB SOFT Milled 8 34\" | CleveLand', 'https://product.hstatic.net/1000007560/product/gay_putter_hb_soft_milled_8_34cleveland__1__19b0297dd73d4768ab0cd82a8e70ef19_1024x1024.jpg', 5337000, 4270000, '20%', NULL, 'CleveLand', 'MILLED#8-34', 'Gậy Putter', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 1),
(33, 'Gậy Putter TP BLACK BANDON TM1 HYDRO BLAST TRUSS mới 2023 | TaylorMade', 'https://product.hstatic.net/1000007560/product/y_putter_tp_black_bandon_tm1_hydro_blast_truss_moi_2023_taylormade__1__9f7c235791104b3ba4ca3c7db54db768_1024x1024.jpg', 8325818, 7495000, '10%', NULL, 'TaylorMade', 'N07694', 'Gậy Putter', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 1),
(34, 'Gậy Putter TP BLACK DELMONTE TB1 HYDRO BLAST TRUSS mới 2023 | TaylorMade', 'https://product.hstatic.net/1000007560/product/putter_tp_black_delmonte_tb1_hydro_blast_truss_moi_2023_taylormade__1__13035d56f5484cdd92b1c7676429b9cc_1024x1024.jpg', 8325818, 7495000, '10%', NULL, 'TaylorMade', 'N07693', 'Gậy Putter', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 1),
(35, 'Gậy Putter SPIDER GT23 mới 2023 | TaylorMade', 'https://product.hstatic.net/1000007560/product/gay_putter_spider_gt23_moi_2023__taylormade__3__48ffda735d73427b8b73454e7f20a63c_1024x1024.jpg', 12351273, 11115000, '10%', NULL, 'TaylorMade', 'N07640', 'Gậy Putter', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 1),
(36, 'Gậy Putter SPIDER GT MAX có có chỉnh weight mới 2023 | TaylorMade', 'https://product.hstatic.net/1000007560/product/gay_putter_spider_gt_max_co_co_chinh_weight_moi_2023_taylormade__1__33ac8ee9176a4a14a1433bff0f347f9d_1024x1024.jpg', 15591273, 14030000, '10%', NULL, 'TaylorMade', 'M73093', 'Gậy Putter', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 1),
(37, 'Gậy Rescue STEALTH | TaylorMade', 'https://product.hstatic.net/1000007560/product/gay_rescue_nam_stealth__taylormade_ac1a137b74314959ae1627a037e2b5ab_1024x1024.jpg', 9111273, 5465000, '40%', NULL, 'TaylorMade', 'N93255', 'Gậy Hybrid', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 1),
(38, 'Gậy golf Hybrid Tour World GS GSB | HONMA', 'https://product.hstatic.net/1000007560/product/gay_golf_hybrid_tour_world_gs_gsb_honma__1__8eeea48dd44f45029bddd52f6a2b9f1f_1024x1024.jpg', 7540000, 6030000, '20%', NULL, 'HONMA', 'WOODTW-GSSpeed Tuned 48RUT18', 'Gậy Hybrid', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 1),
(39, 'Gậy Hybrid Irons JPX Fli-Hi 2023 | Mizuno', 'https://product.hstatic.net/1000007560/product/gay_hybrid_irons_jpx_fli-hi_2023_mizuno_ebaae6cb1c904dd48b38fd982d0ae91f_1024x1024.jpg', 3800000, 3040000, '40%', NULL, 'Mizuno', '5KDFT37774A', 'Gậy Hybrid', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 1),
(40, 'Gậy Rescue Qi10 MAX AS TM60 | TaylorMade', 'https://product.hstatic.net/1000007560/product/gay_rescue_qi10_max_as_tm60_taylormade__1__e8e6539819b54676b0fc4fdd58a09364_1024x1024.jpg', 10380000, 8305000, '20%', NULL, 'TaylorMade', 'M16065', 'Gậy Hybrid', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 1),
(41, 'Gậy Hybrid XXPRE12 Royal Edition Prime | XXIO', 'https://product.hstatic.net/1000007560/product/hybrid_xxpre12_royal_edition_prime__1__a4884542a98e4aeb9aa002bef32a18e4_1024x1024.jpg', 13646000, 12280000, '10%', NULL, 'XXIO', 'SP1200KHY-1', 'Gậy Hybrid', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 1),
(42, 'Gậy golf Hybrid Beres AIZU AQ MX 4 Sao | HONMA', 'https://product.hstatic.net/1000007560/product/gay_golf_hybrid_beres_aizu_aq_mx_4_sao_honma_b7f70984f9124d05bbf22d6ae20b27b0_1024x1024.jpg', 39700000, 33745000, '15%', NULL, 'HONMA', 'WOODU AIZUAQ MX 4SABKR519', 'Gậy Hybrid', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 1),
(43, 'Gậy sắt Utility Stealth DHY AS TM70 | TaylorMade', 'https://product.hstatic.net/1000007560/product/gay_sat_utility_stealth_dhy_as_tm70_taylormade_705bd31cc9cf4d16a865b974dbc57b33_1024x1024.jpg', 8841000, 7075000, '20%', NULL, 'TaylorMade', 'N93255', 'Gậy Utility', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 1),
(44, 'Gậy sắt Utility KING TEC Irons 2023 | Cobra', 'https://product.hstatic.net/1000007560/product/gay_sat_utility_king_tec_irons_cobra__1__70d57bac7fbe48b8ba934fa8bd6fe5f8_1024x1024.jpg', 7540000, 6030000, '20%', NULL, 'Cobra', '915500-1', 'Gậy Utility', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 1),
(45, 'Gậy sắt Utility U505 FORGED III 2023 | Titleist', 'https://product.hstatic.net/1000007560/product/gay_sat_utility_u505_forged_iii_2023_titleist_ef98a5167b2f4db689b702856e325bb3_1024x1024.jpg', 8930250, 7590000, '15%', NULL, 'Titleist', '558RGS1A', 'Gậy Utility', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 1),
(46, 'Gậy UTILITY ST-Z TOUR AD GM-210 U | Mizuno', 'https://product.hstatic.net/1000007560/product/gay_utility_st-z_shaft_tour_ad_gm-200_u_mizuno__1__197f39bd57e244f987f4bea059e43b7d_1024x1024.jpg', 6381818, 2600000, '59%', NULL, 'Mizuno', '5KDFT48764RSMU', 'Gậy Utility', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 1),
(47, 'Bộ gậy golf trẻ em Tour Series TS5-63 11 Club Stand Set Graphite, Navy/White Bag | US Kids Golf', 'https://product.hstatic.net/1000007560/product/tre_em_ts5-63_11_club_stand_set_graphite__navywhite_bag_uskidsgolf__1__f89197780a2d4475980d3c1528f95e61_1024x1024.jpg', 23100000, 18480000, '20%', NULL, 'TUS Kids Golf', '17102', 'Gậy Trẻ em', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 1),
(48, 'Bộ 11 gậy trẻ em cao 1m6 chuyên nghiệp TOUR SERIES TS3-63 | US Kids Golf', 'https://product.hstatic.net/1000007560/product/1_gay_tre_em_cao_1m6_chuyen_nghiep_tour_series_ts3-63_us_kids_golf__1__20178a5086c543d9b19bd4cbefab1e90_1024x1024.jpg', 20819000, 16655000, '20%', NULL, 'TUS Kids Golf', '171020', 'Gậy Trẻ em', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 1),
(49, 'Bộ 11 gậy trẻ em cao 1m45 chuyên nghiệp TOUR SERIES TS3-57 Graphite Shafts | US Kids Golf', 'https://product.hstatic.net/1000007560/product/1m45_chuyen_nghiep_tour_series_ts3-57_graphite_shafts_us_kids_golf__1__3eff5f5795494da5a9dee82a38984b18_1024x1024.jpg', 20819000, 16655000, '20%', NULL, 'TUS Kids Golf', '171023', 'Gậy Trẻ em', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 1),
(50, 'Bộ 11 gậy trẻ em cao 1m37 chuyên nghiệp TOUR SERIES TS3-54 | US Kids Golf', 'https://product.hstatic.net/1000007560/product/_gay_tre_em_cao_1m37_chuyen_nghiep_tour_series_ts3-54_us_kids_golf__1__7c63a42dbbbb4ccca96f148eb2249695_1024x1024.jpg', 20175000, 16140000, '20%', NULL, 'TUS Kids Golf', '171024', 'Gậy Trẻ em', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 1),
(51, 'Bộ 7 gậy golf thiếu niên Ultralight 63\" cho cháu cao khoảng 1m6 | US Kids Golf', 'https://product.hstatic.net/1000007560/product/golf_thieu_nien_ultralight_63_cho_chau_cao_khoang_1m6_us_kids_golf__1__0e8f4b3dc4864f3db7f5dbd33ed006af_1024x1024.jpg', 9187000, 7350000, '20%', NULL, 'TUS Kids Golf', '171025', 'Gậy Trẻ em', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 1),
(52, 'Bộ 7 gậy golf trẻ em Ultralight 51\" cho bé cao khoảng 1m3 | US Kids Golf', 'https://product.hstatic.net/1000007560/product/bo_5_gay_golf_tre_em_ultralight_51_cho_be_cao_khoang_1m3_us_kids_golf_f39a15e57353452a8e9c653431fd1bf7_1024x1024.jpg', 8151000, 6520000, '20%', NULL, 'TUS Kids Golf', '19763', 'Gậy Trẻ em', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 1),
(53, 'Túi gậy golf GGC-22017I Trắng-Đen 3KG | XXIO', 'https://product.hstatic.net/1000007560/product/tui_gay_golf_ggc-22017i_trang-den_3kg_xxio_ffd000438ab24260b04d9546f2b8208a_1024x1024.jpg', 6500000, 6175000, '20%', NULL, 'XXIO', 'GGC-22017', 'Clubs Bag', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 2),
(54, 'Túi gậy golf Ultralight Pro 90952604 Stand Bag Navy Ski Patrol-Black | Cobra', 'https://product.hstatic.net/1000007560/product/i_gay_golf_ultralight_pro_90952604_stand_bag_navy_ski_patrol-black__1__d19f8b9524f640e385f00f89b03c6fd8_1024x1024.jpg', 6000000, 5100000, '15%', NULL, 'Cobra', '90952604', 'Clubs Bag', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 2),
(55, 'Túi đựng gậy nữ QQCVJJ00V-WH00 2.8kg | Le Coq Sportif', 'https://product.hstatic.net/1000007560/product/tui_dung_gay_nu_qqcvjj00v-wh00_2.8kg_lecoq__1__0af66f4dd04c440bab3e9c7cc087e9cf_1024x1024.jpg', 7500000, 6000000, '20%', NULL, 'Le Coq Sportif', 'QQCVJJ00V-WH00', 'Clubs Bag', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 2),
(56, 'Túi đựng gậy nữ QQCUJJ01-WH00 3.1kg | Le Coq Sportif', 'https://product.hstatic.net/1000007560/product/tui_dung_gay_nu_qqcujj01-wh00_3.1kg_lecoq__1__b383070fd6e14e3ca3f2a1eb677ae90d_1024x1024.jpg', 6990000, 5590000, '20%', NULL, 'Le Coq Sportif', 'QQCUJJ01-WH00', 'Clubs Bag', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 2),
(57, 'Túi đựng gậy nam QQBVJJ06V-NV00 3kg | Le Coq Sportif', 'https://product.hstatic.net/1000007560/product/tui_gay_golf_ggc-22017i_trang-den_3kg_xxio_ffd000438ab24260b04d9546f2b8208a_1024x1024.jpg', 5590000, 4470000, '20%', NULL, 'Le Coq Sportif', 'QQBVJJ06V-NV00', 'Clubs Bag', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 2),
(58, 'Túi đựng gậy nam QQBVJJ06V-BK00 3kg | Le Coq Sportif', 'https://product.hstatic.net/1000007560/product/tui_dung_gay_nam_qqbvjj06v-bk00_3kg_lecoq_c9bfa2cd9cfb42d6be0b9d8f4c0ce464_1024x1024.jpg', 5590000, 4470000, '20%', NULL, 'Le Coq Sportif', 'QQBVJJ06V-BK00', 'Clubs Bag', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 2),
(59, 'Túi tập golf QQBVJA30V-RD00 form mềm | Le Coq Sportif', 'https://product.hstatic.net/1000007560/product/tui_tap_nam_qqbvja30v-rd00_form_mem_lecoq__1__ff6813d9dca94ffb813d84885259a91c_1024x1024.jpg', 1590000, 1270000, '20%', NULL, 'Le Coq Sportif', 'QQBVJA30V-RD00', 'Sunday Bag', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 2),
(60, 'Túi gậy tập golf Performance Sports Quarter TB22PSQBK-124 WHITE/ GRAY/ VINTAGE BLUE | Titleist', 'https://product.hstatic.net/1000007560/product/nce_sports_quarter_tb22psqbk-124_white_gray_vintage_blue__titleist__2__b876e4d9f9f64ef4a829c0bfb12aea93_1024x1024.jpg', 3307500, 2975000, '10%', NULL, 'Titleist', 'TB22PSQBK-124', 'Sunday Bag', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 2),
(61, 'Túi gậy tập golf 2MSCC-TJ110 WH/NV/RD N94752 | TaylorMade', 'https://product.hstatic.net/1000007560/product/tui_gay_tap_golf_2mscc-tj110_whnvrd_n94752_taylormade__1__4b7692c9ea7e458483218ccd66a6c093_1024x1024.jpg', 1680000, 1510000, '10%', NULL, 'TaylorMade', 'N94752', 'Sunday Bag', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 2),
(62, 'Túi gậy tập golf Range Bag 12118539 0.65kg | XXIO', 'https://product.hstatic.net/1000007560/product/tui_gay_tap_golf_range_bag_12118539_xxio_3440a1dfa150497b9d8d30e702ca37a6_1024x1024.jpg', 2180000, 2070000, '5%', NULL, 'XXIO', '12118539', 'Sunday Bag', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 2),
(63, 'Túi gậy tập golf TOUR CLUB STAND BAG 5LJK222101 | Mizuno', 'https://product.hstatic.net/1000007560/product/tui_gay_tap_golf_tour_club_stand_bag_5ljk222101_mizuno_6fbf4e9d2ffc42cbb92f1ec1a1d81bfe_1024x1024.jpg', 2061818, 1000000, '51%', NULL, 'Mizuno', '5LJK222101', 'Sunday Bag', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 2),
(64, 'Túi gậy tập golf HALF BAG 5LJC220701 Heathered White 1.6kg | Mizuno', 'https://product.hstatic.net/1000007560/product/tui_gay_tap_golf_half_bag_5ljc220701_heathered_white_mizuno_60e3b799fdc74d7e8080ef58bce1e7c4_1024x1024.jpg', 2544873, 1300000, '49%', NULL, 'Mizuno', '5LJC220701', 'Sunday Bag', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 2),
(65, 'Túi golf xách tay N92885 Đen | TaylorMade', 'https://product.hstatic.net/1000007560/product/tui_golf_xach_tay_2msbb-td268_den_taylormade_13031b94099647019caa844117d97ecb_1024x1024.jpg', 3036000, 2735000, '10%', NULL, 'TaylorMade', 'N92885', 'Boston Bag', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 2),
(66, 'Túi golf xách tay Basic Boston Bag 09009804 Ski Patrol | PUMA', 'https://product.hstatic.net/1000007560/product/tui_golf_xach_tay_basic_boston_bag_09009804_ski_patrol_puma__1__66fc1ef9e4644d0e9ae996e7b8d90ba6_1024x1024.jpg', 4400000, 3960000, '10%', NULL, 'PUMA', '09009804', 'Boston Bag', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 2),
(67, 'Túi golf xách tay BOSTON BAG 5LJB220501 White Melange | Mizuno', 'https://product.hstatic.net/1000007560/product/tui_golf_xach_tay_boston_bag_5ljb220501_white_mizuno__1__2a6dc8bdc95f4e87b4d55492d5a52b1d_1024x1024.jpg', 1944000, 1000000, '10%', NULL, 'Mizuno', '5LJB220501', 'Boston Bag', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 2),
(68, 'Túi golf đeo vai nữ Tote N92960 màu Hồng | TaylorMade', 'https://product.hstatic.net/1000007560/product/tui_golf_deo_vai_tote_2wspo-td294_mau_hong_taylormade__1__fd89b54c6c71491da3f4b38165e1240a_1024x1024.jpg', 1914815, 1725000, '10%', NULL, 'TaylorMade', 'N92960', 'Boston Bag', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 2),
(69, 'Vali thể thao có bánh xe và tay kéo N92952 Trắng | TaylorMade', 'https://product.hstatic.net/1000007560/product/vali_the_thao_co_banh_xe_va_tay_keo_2wsbb-td292_trang_taylormade_5492e14dc32e4be190eb69dd0b1a0138_1024x1024.jpg', 6091000, 5480000, '10%', NULL, 'TaylorMade', 'N92952', 'Boston Bag', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 2),
(70, 'Túi golf xách tay 2MSBB-TJ080 WH N94646 | TaylorMade', 'https://product.hstatic.net/1000007560/product/tui_golf_xach_tay_2msbb-tj080_wh_n94646_taylormade__1__40ec8c2b29fd4cce82f538da3ede0827_1024x1024.jpg', 4280000, 3850000, '10%', NULL, 'TaylorMade', 'N94646', 'Boston Bag', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 2),
(71, 'Túi golf cầm tay FA24TVBSP-0G | FootJoy', 'https://product.hstatic.net/1000007560/product/fa24tvbsp-0g_14e9db020fdd4dbda48e3095d31b0b03_1024x1024.jpg', 1405000, 1265000, '10%', NULL, 'FootJoy', 'FA24TVBSP-0G', 'Pouch Bag', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 2),
(72, 'Túi golf cầm tay 2USPO-UN06 U2196401 Đen | TaylorMade', 'https://product.hstatic.net/1000007560/product/tui_golf_cam_tay_2uspo-un06_u2196401_den_taylormade_9d4a541f17664c74948bf34716e06c8d_1024x1024.jpg', 1551273, 1320000, '15%', NULL, 'TaylorMade', 'U2196401', 'Pouch Bag', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 2),
(73, 'Túi cầm tay QQCTJA46V-BG00 Beige | Le Coq Sportif', 'https://product.hstatic.net/1000007560/product/tui_cam_tay_qqctja46v-bg00_beige_lecoq__1__f4d8783960184eb98dcbab2388fe76d4_1024x1024.jpg', 1690000, 1350000, '20%', NULL, 'Le Coq Sportif', 'QQCTJA46V-BG00', 'Pouch Bag', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 2),
(74, 'Túi cầm tay QQCVJA45V-LM00-F LIME | Le Coq Sportif', 'https://product.hstatic.net/1000007560/product/tui_cam_tay_qqcvja45v-lm00-f_lime_lecoq_2336d17910a44d15b3cc796b5185da24_1024x1024.jpg', 1490000, 1190000, '20%', NULL, 'Le Coq Sportif', 'QQCVJA45V-LM00-F', 'Pouch Bag', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 2),
(75, 'Túi cầm tay QQBVJA42V-NV00-F NAVY | Le Coq Sportif', 'https://product.hstatic.net/1000007560/product/tui_cam_tay_qqbvja42v-nv00-f_navy_lecoq_d4648f194d5a4399bca0113d97332d4c_1024x1024.jpg', 1390000, 1110000, '20%', NULL, 'Le Coq Sportif', 'QQBVJA42V-NV00-F', 'Pouch Bag', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 2),
(76, 'Túi cầm tay QQCVJA40V-WH00-F WHITE | Le Coq Sportif', 'https://product.hstatic.net/1000007560/product/tui_cam_tay_qqcvja40v-wh00-f_white_lecoq__2__c880788a59e7426e9c6f2aa76b7a572f_1024x1024.jpg', 1690000, 1350000, '20%', NULL, 'Le Coq Sportif', 'QQCVJA40V-WH00-F', 'Pouch Bag', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 2),
(77, 'Túi giày thể thao QQBVJA20V-YL00 Đen Vàng | Le Coq Sportif', 'https://product.hstatic.net/1000007560/product/tui_giay_the_thao_qqbvja20v-yl00_den_vang_le_coq_sportif__1__62d6e3ca18f848adaac040136c6a0af0_1024x1024.jpg', 750000, 600000, '20%', NULL, 'Le Coq Sportif', 'QQBVJA20V-YL00', 'Shoes Bag', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 2),
(78, 'Túi giày thể thao QQBVJA21V-BK00-F Đen | Le Coq Sportif', 'https://product.hstatic.net/1000007560/product/tui_giay_the_thao_qqbvja21v-bk00-f_den_le_coq_sportif__1__1544e28768e048da894c86c52550d94f_1024x1024.jpg', 690000, 550000, '20%', NULL, 'Le Coq Sportif', 'QQBVJA21V-BK00-F', 'Shoes Bag', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 2),
(79, 'Túi đựng giày golf SC12101 | HONMA', 'https://product.hstatic.net/1000007560/product/tui_dung_giay_golf_sc12101_honma__10__6aa96ef0c19049b79a8571871927159d_1024x1024.jpg', 1800000, 1170000, '35%', NULL, 'HONMA', 'SC12101-1', 'Shoes Bag', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 2),
(80, 'Túi giầy thể thao 2MSSC-TJ107 WH/BK N94742 | TaylorMade', 'https://product.hstatic.net/1000007560/product/tui_giay_the_thao_2mssc-tj107_whbk_n94742_taylormade_6d40e1a8ecdb463788ad5feedaf0bc6a_1024x1024.jpg', 750000, 675000, '10%', NULL, 'TaylorMade', 'N94742', 'Shoes Bag', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 2),
(81, 'Túi giày thể thao GGA-X144 trắng | XXIO', 'https://product.hstatic.net/1000007560/product/tui_giay_the_thao_gga-x144_rang_xxio_dbdb76fa4f8c4aa0b59e295d0789ce4b_1024x1024.jpg', 1565000, 1410000, '10%', NULL, 'XXIO', 'GGA-X144', 'Shoes Bag', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 2),
(82, 'Túi giày golf 5LJS220514 màu Navy Ichimatsu | Mizuno', 'https://product.hstatic.net/1000007560/product/tui_giay_golf_5ljs220514_mau_navy_ichimatsu_mizuno_3783bf2766c04c57a4878d42323f1fb2_1024x1024.jpg', 540000, 486000, '10%', NULL, 'Mizuno', '5LJS220514', 'Shoes Bag', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 2),
(83, 'Cover gậy gỗ BARREL STADRY HC | Titleist', 'https://product.hstatic.net/1000007560/product/cover_gay_go_barrel_stadry_hc_titleist_f2603d4dcd4a46f592ba7bae8d9d6642_1024x1024.jpg', 679000, 610000, '10%', NULL, 'Titleist', 'TA22BSDHC-00DR', 'Accessories Club', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 2),
(84, 'Bao Trùm đầu gậy Rescue 2MSHC-CCN15 BK M72395 | TaylorMade', 'https://product.hstatic.net/1000007560/product/bao_trum_dau_gay_rescue_2mshc-ccn15_bk_m72395_taylormade_80cc7c137b0240dd97c2ccd538ff069f_1024x1024.jpg', 1080000, 970000, '10%', NULL, 'TaylorMade', 'M72395', 'Accessories Club', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 2),
(85, 'Bao trùm đầu gậy Fairway 2MSHC-TD286	 BK/BK N92934 | TaylorMade', 'https://product.hstatic.net/1000007560/product/bao_trum_dau_gay_fairway_2mshc-td286_bkbk_n92934_taylormade_5a058cdad9684ce78e69c5468b59e08b_1024x1024.jpg', 1100000, 990000, '10%', NULL, 'Titleist', 'N92934', 'Accessories Club', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 2),
(86, 'Bao Trùm đầu gậy Driver 2MSHC-CCN13 BK M72385 | TaylorMade', 'https://product.hstatic.net/1000007560/product/bao_trum_dau_gay_driver_2mshc-ccn13_bk_m72385_taylormade_58d3d06a9df14a799bdf0a7de532b624_1024x1024.jpg', 1080000, 970000, '10%', NULL, 'TaylorMade', 'M72385', 'Accessories Club', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 2),
(87, 'Cover gậy UTILITY HEAD COVER 5LJH222309 | Mizuno', 'https://product.hstatic.net/1000007560/product/cover_gay_utility_head_cover_5ljh222309_mizuno_c6f30c4a4b7a479cbd027b0b680ee566_1024x1024.jpg', 687000, 620000, '10%', NULL, 'Mizuno', '5LJH222309', 'Accessories Club', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 2),
(88, 'Bao Trùm đầu gậy Putter 2MSHC-CCN21 BL M72412 | TaylorMade', 'https://product.hstatic.net/1000007560/product/bao_trum_dau_gay_putter_2mshc-ccn21_bl_m72412_taylormade_9a72bbd2c8b84081b5742364545cc499_1024x1024.jpg', 1080000, 970000, '10%', NULL, 'TaylorMade', 'M72412', 'Accessories Club', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 2),
(89, 'Giày golf nam BIOM G3 Spiked 13182401379 | ECCO', 'https://product.hstatic.net/1000007560/product/giay_golf_nam_biom_g3_spiked_13182401379_ecco__1__d6a7695bd66644a199d8e3237352e263_1024x1024.jpg', 8990000, 8090000, '10%', NULL, 'ECCO', '13182401379', 'Giày golf nam', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 3),
(90, 'Giày golf nam S-THREE | ECCO', 'https://product.hstatic.net/1000007560/product/white_black_102904-57370-main__2_f139a3d7635341f99a0df4bcbed1dcff_1024x1024.jpg', 7490000, 6740000, '10%', NULL, 'ECCO', '10290457370', 'Giày golf nam', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 3),
(91, 'Giày golf nam BIOM G3 BOA | ECCO', 'https://product.hstatic.net/1000007560/product/giay_golf_nam_biom_g3_13183451227_boa_spiked_trang_ecco_c00a046e642640aca297dc683db9642f_1024x1024.jpg', 9790000, 8810000, '10%', NULL, 'ECCO', '13183451227', 'Giày golf nam', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 3),
(92, 'Giày golf nam BIOM HYBRID | ECCO', 'https://product.hstatic.net/1000007560/product/concrete_13165401379_a__7__396a2_16fe9e8ea35146e6aa6c352181be7628_1024x1024.jpg', 6390000, 5755000, '10%', NULL, 'ECCO', '13165401379', 'Giày golf nam', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 3),
(93, 'Giày golf nam CORE | ECCO', 'https://product.hstatic.net/1000007560/product/night_sky_10080460483_giay_golf_21ba6f3df59b4eb3ac7eccd591c277f6_1024x1024.jpg', 6490000, 5840000, '10%', NULL, 'ECCO', '10080460483', 'Giày golf nam', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 3),
(94, 'Giày golf nam BIOM C4 | ECCO', 'https://product.hstatic.net/1000007560/product/magnet_13040401308_giay_golf_ecc_e239228619de4ce1901a18e0b618ca1d_1024x1024.jpg', 9390000, 8450000, '10%', NULL, 'ECCO', '13040401308', 'Giày golf nam', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 3),
(95, 'Giày golf nữ GS-FAST Wmns Puma White-Puma White 37658402 | PUMA', 'https://product.hstatic.net/1000007560/product/giay_golf_nu_gs-fast_wmns_puma_white-puma_white_37658402_puma__1__0517e494bd614ba8b1d879fbd2026b88_1024x1024.jpg', 4450000, 3785000, '15%', NULL, 'PUMA', '37658402', 'Giày golf nữ', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 3),
(96, 'Giày golf nữ FJ 98170 DS HYPERFLEX Spiked BOA WT/PPL/BLU | FootJoy', 'https://product.hstatic.net/1000007560/product/giay_golf_nu_footjoy_fj_98170__1__e5148429a03a470a91da304d931373d6_1024x1024.jpg', 6274709, 5020000, '20%', NULL, 'FootJoy', '98170W050', 'Giày golf nữ', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 3),
(97, 'Giày golf nữ BIOM G5 15252301007 Trắng Xám, đinh rời, nút vặn BOA | ECCO', 'https://product.hstatic.net/1000007560/product/_golf_nu_biom_g5_15252301007_trang_xam__dinh_roi__nut_van_boa_ecco__1__56ddb6eeec964272ac1a6e0a2e369d60_1024x1024.jpg', 10490000, 9440000, '10%', NULL, 'ECCO', '15252301007', 'Giày golf nữ', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 1, 3),
(98, 'Giày golf nữ BIOM G5 15250301007 BOA Spiked | ECCO', 'https://product.hstatic.net/1000007560/product/giay_golf_nu_biom_g5_15250301007_boa_spiked_ecco__1__710278912bbc4847aa39b46e0ba47406_1024x1024.jpg', 10490000, 9440000, '10%', NULL, 'ECCO', '15250301007', 'Giày golf nữ', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 3),
(99, 'Giày golf nữ CODECHAOS 22 GX3942 BOA đinh liền | Adidas', 'https://product.hstatic.net/1000007560/product/giay_golf_nu_gx3942_codechaos_22_boa_dinh_lien_adidas_f53e64138b3d4b068b725da3920e0b8c_1024x1024.jpg', 4400000, 2860000, '35%', NULL, 'Adidas', 'GX3942', 'Giày golf nữ', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 3),
(100, 'Giày golf nữ FUEL Spiked BOA 92370 WT/WT/PK | FootJoy', 'https://product.hstatic.net/1000007560/product/giay_golf_nu_footjoy_cf_fuel_spk_boa_92370__1__b7fa5f01adff4c97aa261910dd0a6544_1024x1024.jpg', 4736111, 3790000, '20%', NULL, 'FootJoy', '92370W055', 'Giày golf nữ', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 3),
(101, 'Giày golf trẻ em Fusion EVO Jr. High Rise-Pink Lady 19510103 | PUMA', 'https://product.hstatic.net/1000007560/product/giay_golf_tre_em_fusion_evo_jr._high_rise-pink_lady_19510103_puma__1__a459b792d3ee4bd3974378a16e718ab2_1024x1024.jpg', 2200000, 1870000, '20%', NULL, 'PUMA', '19510103', 'Giày golf Trẻ em', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 3),
(102, 'Giày golf trẻ em Fusion EVO Jr. Puma Black-Puma Black 19510101 | PUMA', 'https://product.hstatic.net/1000007560/product/iay_golf_tre_em_fusion_evo_jr._puma_black-puma_black_19510101_puma__1__b7cc1d87085148e29b3a6e339b677146_1024x1024.jpg', 2200000, 1870000, '15%', NULL, 'PUMA', '19510103', 'Giày golf Trẻ em', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 3),
(103, 'Combo 3 đôi vớ golf 85856203 PUMA ESSENTIAL ¼ CUT 3 PAIR PACK - Multi | PUMA', 'https://product.hstatic.net/1000007560/product/vo_golf_85856203_puma_essential___cut_3_pair_pack_-_multi_puma_8e6dd52e3f9b4cf0a132541427f02879_1024x1024.jpg', 475000, 405000, '15%', NULL, 'PUMA', '85856203', 'SOCKS', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 3),
(104, 'Combo 3 đôi vớ golf 85856201 PUMA ESSENTIAL ¼ CUT 3 PAIR PACK - Bright White | PUMA', 'https://product.hstatic.net/1000007560/product/vo_golf_85856201_puma_essential___cut_3_pair_pack_-_bright_white__puma_ac9e2b00194641a9a3c746087726047d_1024x1024.jpg', 475000, 405000, '15%', NULL, 'PUMA', '85856201', 'SOCKS', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 3),
(105, 'Combo 3 đôi vớ golf 85856105 PUMA ESSENTIAL LOW CUT 3 PAIR PACK FLAT GREY | PUMA', 'https://product.hstatic.net/1000007560/product/vo_golf_85856105_puma_essential_low_cut_3_pair_pack_flat_grey__puma_47add5fe86d34e06b1d515bbad25a033_1024x1024.jpg', 475000, 405000, '15%', NULL, 'PUMA', '85856105', 'SOCKS', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 3),
(106, 'Combo 3 đôi Vớ golf 85856102 PUMA ESSENTIAL LOW CUT 3 PAIR PACK - P.Blk | PUMA', 'https://product.hstatic.net/1000007560/product/vo_golf_85856102_puma_essential_low_cut_3_pair_pack_-_p.blk_puma_bf9a84f0b48045bda91984a0522e6621_1024x1024.jpg', 475000, 405000, '15%', NULL, 'PUMA', '85856102', 'SOCKS', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 3),
(107, 'Vớ thể thao cổ cao HALF LENGTH nhiều màu thời trang | SRIXON', 'https://product.hstatic.net/1000007560/product/vo_the_thao_co_cao_nhieu_mau_thoi_trang_srixon_be9605c78fa94229ba552bcf4ece1280_1024x1024.jpg', 155000, 140000, '10%', NULL, 'SRIXON', '12127500', 'SOCKS', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 3),
(108, 'Vớ thể thao cổ cao 956-734562 | HONMA', 'https://product.hstatic.net/1000007560/product/vo_the_thao_co_cao_956-734562_honma__1__df85cee97e574b2fbee791268cfa1c0b_1024x1024.jpg', 660000, 430000, '35%', NULL, 'HONMA', '956-734562', 'SOCKS', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 3),
(109, 'Mũ kết golf TH22ATP-4V1 | Titleist', 'https://product.hstatic.net/1000007560/product/th22atp-4v1_01_931766dae0ba4c05959befef7e5a2554_1024x1024.jpg', 553000, 500000, '10%', NULL, 'Titleist', 'TH22ATP-4V1', 'Nón Mũ', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 4),
(110, 'Mũ kết golf HEADWEAR HW-P2306 NAVY 36790-02 | PING', 'https://product.hstatic.net/1000007560/product/36790_02-ping_4c9471856d574aa19455835813a005ad_1024x1024.jpg', 1400000, 1190000, '15%', NULL, 'PING', 'CAP36790-02', 'Nón Mũ', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 4),
(111, 'Mũ kết golf DIRECT HEADWEAR PING PATCH 241 NAVY 37270-103 | PING', 'https://product.hstatic.net/1000007560/product/37270-103_f8e85fc9a4db462bbe12af07f8eebb13_1024x1024.jpg', 650000, 555000, '15%', NULL, 'PING', 'CAP37270-103', 'Nón Mũ', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 4),
(112, 'Mũ kết golf DIRECT HEADWEAR KARSTEN O.G. PERFORMANCE 241 WHITE 37276-101 | PING', 'https://product.hstatic.net/1000007560/product/37276-101_9bbcf6e994b940ae82db6ba16f316474_1024x1024.jpg', 650000, 555000, '15%', NULL, 'PING', 'CAP37276-101', 'Nón Mũ', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 4),
(113, 'Mũ kết golf DIRECT HEADWEAR OLD GLORY 241 WHITE 37275-101 | PING', 'https://product.hstatic.net/1000007560/product/37275-101-ping-cap_325dc32be89d401bad2b700952c8ce41_1024x1024.jpg', 650000, 555000, '15%', NULL, 'PING', 'CAP37275-101', 'Nón Mũ', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 4),
(114, 'Mũ kết golf DIRECT HEADWEAR STARS AND STRIPES TRUCKER 232 NAVY 36653-101 | PING', 'https://product.hstatic.net/1000007560/product/cap36653-101-cap-ping_4d4d3b55b3374b248ac03008cce25e78_1024x1024.jpg', 750000, 640000, '15%', NULL, 'PING', 'CAP36653-101', 'Nón Mũ', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 4),
(115, 'Nón nửa đầu TH8VTPS-408 | Titleist', 'https://product.hstatic.net/1000007560/product/th8vtps-408_01_8eecf4f98c6044beb5e483e3b936cf82_1024x1024.jpg', 526000, 475000, '10%', NULL, 'Titleist', 'TH8VTPS-408', 'Nón Mũ', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 4),
(116, 'Mũ nửa đầu E2MWA22249 WOMEN MIZUNO LOGO Visor | Mizuno', 'https://product.hstatic.net/1000007560/product/mu_nua_dau_e2mwa22249_women_s_mizuno_logo_visor_mizuno_f18861c4fd3945bfbfd7a1856ef59518_1024x1024.jpg', 1188000, 1070000, '10%', NULL, 'Mizuno', 'E2MWA22249', 'Nón Mũ', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 4),
(117, 'Mũ xô golf QGCVJC71V-BK00-F BUCKET HAT ĐEN | Le Coq Sportif', 'https://product.hstatic.net/1000007560/product/mu_xo_golf_qgcvjc71v-bk00-f_bucket_hat_den_lecoq__1__fb2e24930eaa43d5a0c3d3498f57711e_1024x1024.jpg', 1090000, 870000, '20%', NULL, 'Le Coq Sportif', 'QGCVJC71V-BK00-F', 'Nón Mũ', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 4),
(118, 'Mũ nửa đầu TOUR PERFORMANCE VISOR TH8VTPS-5C1 Purple Cloud/White | Titleist', 'https://product.hstatic.net/1000007560/product/_dau_tour_performance_visor_th8vtps-5c1_purple_cloudwhite_titleist__1__ffd369f9cf3b4dc29a14071e25ed766f_1024x1024.jpg', 517000, 465000, '10%', NULL, 'Titleist', 'TH8VTPS-5C1', 'Nón Mũ', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 4),
(119, 'Mũ kết golf nữ Ball Marker TH22AWPBM-3J1 Jade/White | Titleist', 'https://product.hstatic.net/1000007560/product/mu_ket_golf_nu_ball_marker_th22awpbm_jadewhite_titleist__1__18308c2f39af4e7db2a9b8e3d3a6d37d_1024x1024.jpg', 722000, 650000, '10%', NULL, 'Titleist', 'TH22AWPBM-3J1', 'Nón Mũ', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 4),
(120, 'Mũ kết golf nữ TH23AWBR-15P Women Boardwalk Rope | Titleist', 'https://product.hstatic.net/1000007560/product/mu_ket_golf_nu_th23awbr-15p_women_s_boardwalk_rope_titleist__1__13f890d94b4d4674823323bf09efb6d5_1024x1024.jpg', 624000, 560000, '10%', NULL, 'Titleist', 'TH23AWBR-15P', 'Nón Mũ', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 4),
(121, 'Mũ rộng vành 2 mặt Clear Creek Boonie WILD ORCHID/CINDER | Sunday Afternoons', 'https://product.hstatic.net/1000007560/product/vanh_2_mat_clear_creek_boonie_wild_orchid-cinder_sunday_afternoons-usa_9248d34b731e4a08880d34c3087a04df_1024x1024.jpg', 1000000, 850000, '15%', NULL, 'Sunday Afternoons', 'ESD4-416', 'Nón Mũ', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 4),
(122, 'Mũ rộng vành Bug-Free Charter Hat | Sunday Afternoons', 'https://product.hstatic.net/1000007560/product/non_rong_vanh_bug-free_charter_hat__sundayafternoons-usa-dark-khaki_48646d3d8e7e4342b4f7bc1be5a8558f_1024x1024.jpg', 2000000, 1700000, '15%', NULL, 'Sunday Afternoons', 'ESD80-259', 'Nón Mũ', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 4),
(123, 'Mũ rộng vành Charter Breeze Hat | Sunday Afternoons', 'https://product.hstatic.net/1000007560/product/non_rong_vanh_charter_breeze_hat__sunday_afternoons-cream_e1f52c2caa9c4cb5a7de01ab5b57f193_1024x1024.jpg', 2000000, 1550000, '12%', NULL, 'Sunday Afternoons', 'ESD91-235M', 'Nón Mũ', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 4),
(124, 'Mũ rộng vành Sol Seeker Sea Glass | Sunday Afternoons', 'https://product.hstatic.net/1000007560/product/sol_seeker_sea_glass_lr_f96832d9d89e4c2eaff513e8d4818170_1024x1024.jpg', 1000000, 850000, '15%', NULL, 'Sunday Afternoons', 'ESD4-416', 'Nón Mũ', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 4),
(125, 'Mũ rộng vành Tahoe Hat Natural Tea | Sunday Afternoons', 'https://product.hstatic.net/1000007560/product/non_rong_vanh_tahoe_hat_natural_tea_sunday_afternoons-usa_b148e02e5a6c42609ac60b2a90961bc7_1024x1024.jpg', 1500000, 1100000, '17%', NULL, 'Sunday Afternoons', 'ESD4-418', 'Nón Mũ', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 4),
(126, 'Mũ rộng vành World Tour Hat OS Scapstone | Sunday Afternoons', 'https://product.hstatic.net/1000007560/product/non_rong_vanh_world_tour_hat_os_scapstone_sunday_afternoons-usa_05114494f85e467d9904ec27d3b7e451_1024x1024.jpg', 1000000, 850000, '15%', NULL, 'Sunday Afternoons', 'ESD4-417', 'Nón Mũ', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 4),
(127, 'Mũ rộng vành che gáy trẻ em Kids Play | Sunday Afternoons', 'https://product.hstatic.net/1000007560/product/non-rong-vanh-che-gay-tre-em-play-sunday-afternoons-usa-08_2e04f84d506a4594b2743684c463e7e3_1024x1024.jpg', 1000000, 690000, '31%', NULL, 'Sunday Afternoons', 'ESD5-943M', 'Nón Mũ', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 4),
(128, 'Mũ rộng vành trẻ em Clear Creek Boonie Vivid Magenta | Sunday Afternoons', 'https://product.hstatic.net/1000007560/product/non_rong_vanh_world_tour_hat_os_scapstone_sunday_afternoons-usa_05114494f85e467d9904ec27d3b7e451_1024x1024.jpg', 1000000, 700000, '30%', NULL, 'Sunday Afternoons', 'S2D11395B44319', 'Nón Mũ', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 4),
(129, 'Mũ xô trẻ em trên 2 tuổi Fun Bucket | Sunday Afternoons', 'https://product.hstatic.net/1000007560/product/non-xo-tre-em-tren-2-tuoi-fun-bucket-sunday-afternoons-usa-09_a00fa5f3edf24770ab5dd38061b22fab_1024x1024.jpg', 1000000, 850000, '15%', NULL, 'Sunday Afternoons', 'ESD17-924M', 'Nón Mũ', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 4),
(130, 'áo golf nam tay ngắn 81795 | FootJoy', 'https://product.hstatic.net/1000007560/product/fj_81795_01_81aa15a1965f40df8613229a210184a3_1024x1024.jpg', 2046000, 1845000, '10%', NULL, 'FootJoy', '81795L', 'Áo tay ngắn nam', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 5),
(131, 'Áo golf nam tay ngắn 2MSPO-TL425 M19625 | TaylorMade', 'https://product.hstatic.net/1000007560/product/m19625_zoom_d2_3b11793a062d4dc88b708bf93b0aef53_1024x1024.jpg', 3038000, 2535000, '17%', NULL, 'TaylorMade', 'M1962570', 'Áo tay ngắn nam', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 5),
(132, 'Áo golf nam tay ngắn 2MSPO-TL418 M19600 | TaylorMade', 'https://product.hstatic.net/1000007560/product/m19600_zoom_d3_6f03570a2d8f4a6bb535666eff434f5f_1024x1024.jpg', 3726000, 3120000, '16%', NULL, 'TaylorMade', 'M1960070', 'Áo tay ngắn nam', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 5),
(133, 'Áo golf nam tay ngắn 2MSPO-TL418 M19598 | TaylorMade', 'https://product.hstatic.net/1000007560/product/m19598_zoom_d2_d36197589baf4762b2b02302d7d6eefc_1024x1024.jpg', 3726000, 3167000, '15%', NULL, 'TaylorMade', 'M1959870', 'Áo tay ngắn nam', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 5),
(134, 'Áo golf nam tay ngắn 2MSPO-TL393 M19519 | TaylorMade', 'https://product.hstatic.net/1000007560/product/m19519_zoom_d2_59949d96200444cfa252ae482181fa3a_1024x1024.jpg', 3431000, 2920000, '16%', NULL, 'TaylorMade', 'M1951970', 'Áo tay ngắn nam', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 5),
(135, 'Áo golf nam 52SA100335 | Mizuno', 'https://product.hstatic.net/1000007560/product/ao-golf-nam-mizuno-52sa100335_10a24cc49f53408cb0f0ae800382d77b_1024x1024.jpg', 810000, 400000, '51%', NULL, 'Mizuno', '52SA100335', 'Áo tay ngắn nam', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 5),
(136, 'Áo golf nữ tay ngắn 2WSPO-TL478 M19798 | TaylorMade', 'https://product.hstatic.net/1000007560/product/m19798_zoom_d2_a74803b841a14153bb8528ba9d9aa6fc_1024x1024.jpg', 3726000, 3170000, '15%', NULL, 'TaylorMade', 'M1979877', 'Áo tay ngắn nữ', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 5),
(137, 'Áo golf tay ngắn nữ 81920 | FootJoy', 'https://product.hstatic.net/1000007560/product/fj_81920_01_eef9aacda67a4dfbbea3bbea38876ff7_1024x1024.jpg', 2139000, 1925000, '10%', NULL, 'FootJoy', '81920S', 'Áo tay ngắn nữ', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 5),
(138, 'Áo golf nữ tay ngắn 2WSPO-TL487 M19829 | TaylorMade', 'https://product.hstatic.net/1000007560/product/m19829_zoom_d3_562caf53d2574401893c5d6f28468131_1024x1024.jpg', 3136000, 2670000, '10%', NULL, 'TaylorMade', 'M1982977', 'Áo tay ngắn nữ', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 5),
(139, 'Áo golf nữ tay ngắn 2WSPO-TL478 M19796 | TaylorMade', 'https://product.hstatic.net/1000007560/product/m19796_zoom_d3_eec2542ffdff4ef5a0c439228147d130_1024x1024.jpg', 3726000, 3170000, '10%', NULL, 'TaylorMade', 'M1979677', 'Áo tay ngắn nữ', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 5),
(140, 'Áo golf nữ tay dài 89774 Short Sleeve Stripe Women | FootJoy', 'https://product.hstatic.net/1000007560/product/ao_golf_nu_tay_dai_89774_short_sleeve_stripe_women_fj__1__2dd60cc8a6f94481874602d28445ba5d_1024x1024.jpg', 1581000, 1423000, '10%', NULL, 'FootJoy', '89774S', 'Áo tay ngắn nữ', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 5),
(141, 'Áo golf tay ngắn nữ PRINT POLO W 52SA370514 | Mizuno', 'https://product.hstatic.net/1000007560/product/ao_golf_tay_ngan_nu_print_polo_w_52sa370514_mizuno__1__f7f47ed2d49c4e068121bdb0d3427276_1024x1024.jpg', 1674000, 1510000, '10%', NULL, 'Mizuno', '52SA370514', 'Áo tay ngắn nữ', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 5),
(142, 'Váy thể thao nữ QGWVJE14V-WH00 | Le Coq Sportif', 'https://product.hstatic.net/1000007560/product/vay_the_thao_nu__qgwvje14v-wh00_lecoq__1__51342c73a4394e939f6c37c2566fd899_1024x1024.jpg', 2790000, 2230000, '10%', NULL, 'Le Coq Sportif', 'QGWVJE14V-WH00-5', 'Váy nữ', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 5),
(143, 'Váy thể thao nữ QGWUJE00-BG00 | Le Coq Sportif', 'https://product.hstatic.net/1000007560/product/vay_the_thao_nu__qgwuje00-bg00_lecoq__1__a3781896ea1f4a10a112e7bf61f388b0_1024x1024.jpg', 2490000, 1990000, '20%', NULL, 'Le Coq Sportif', 'QGWUJE00-BG00-7', 'Váy nữ', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 5),
(144, 'Váy thể thao nữ QGWVJE12V-WH00 | Le Coq Sportif', 'https://product.hstatic.net/1000007560/product/vay_the_thao_nu__qgwvje12v-wh00_lecoq__1__80c6c342cef84175bc12fdb81136a064_1024x1024.jpg', 2790000, 2230000, '20%', NULL, 'Le Coq Sportif', 'QGWVJE12V-WH00-5', 'Váy nữ', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 5),
(145, 'Váy thể thao nữ QGWUJE03-PK00 | Le Coq Sportif', 'https://product.hstatic.net/1000007560/product/vay_the_thao_nu__qgwuje03-pk00_lecoq__1__5f7ebd04a9bc4133aaa7b02e5bc3577a_1024x1024.jpg', 3090000, 2470000, '20%', NULL, 'Le Coq Sportif', 'QGWVJE14V-WH00-5', 'Váy nữ', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 5),
(146, 'Váy thể thao nữ QGWUJE03-NV00 | Le Coq Sportif', 'https://product.hstatic.net/1000007560/product/vay_the_thao_nu__qgwuje03-nv00_lecoq__1__f796422fb2864206b3bea7cff65f1c56_1024x1024.jpg', 3090000, 2470000, '20%', NULL, 'Le Coq Sportif', 'QGWUJE03-NV00-7', 'Váy nữ', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 5),
(147, 'Váy thể thao nữ QGWVJE02V-WH00 | Le Coq Sportif', 'https://product.hstatic.net/1000007560/product/vay_the_thao_nu__qgwvje02v-wh00_lecoq_38f1f56c91c84891823a036770f0373e_1024x1024.jpg', 2490000, 1990000, '20%', NULL, 'Le Coq Sportif', 'QGWVJE02V-WH00-7', 'Váy nữ', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 5),
(148, 'Quần dài nam LITE SLIM FIT 86584 Navy | FootJoy', 'https://product.hstatic.net/1000007560/product/_nam_lite_slim_fit_86584_navy_footjoy_706845d7d99143b59ad56f4673f2fc0d_817060b7544f408ea499d6cb3866dd33_1024x1024.jpg', 3032000, 2730000, '10%', NULL, 'FootJoy', '86584', 'Quần dài nam', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 5),
(149, 'Quần golf dài Performance Knit Pant 87625 Stone ATHLETIC FIT | FootJoy', 'https://product.hstatic.net/1000007560/product/an_golf_dai_performance_knit_pant_87625_stone_athletic_fit_footjoy__1__f12554b6eb294d46b1b618d282dd116d_1024x1024.jpg', 2353000, 2120000, '10%', NULL, 'FootJoy', '87625', 'Quần dài nam', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 5);
INSERT INTO `products` (`productsID`, `productName`, `image`, `price`, `promotionalPrice`, `labelPromotion`, `description`, `brandProduct`, `codeProduct`, `typeName`, `status`, `creationDate`, `updationDate`, `hot`, `categoriesID`) VALUES
(150, 'Quần golf dài Performance Knit Pant 87626 Grey ATHLETIC FIT | FootJoy', 'https://product.hstatic.net/1000007560/product/uan_golf_dai_performance_knit_pant_87626_grey_athletic_fit_footjoy__1__6aedfd2d72b4471f956680f2989a9dfe_1024x1024.jpg', 2353000, 2120000, '10%', NULL, 'FootJoy', '87626', 'Quần dài nam', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 5),
(151, 'Quần short nam BROKEN STRIPE WOVEN 82638 Hồng đậm | FootJoy', 'https://product.hstatic.net/1000007560/product/quan_short_nam_broken_stripe_woven_82638_hong_dam_footjoy__2__23d03920b37b44e1be685b1cc0203e27_1024x1024.jpg', 1800000, 1620000, '10%', NULL, 'FootJoy', '82638', 'Quần short nam', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 5),
(152, 'Quần shorts golf Jackpot 57818202 | PUMA', 'https://product.hstatic.net/1000007560/product/quan_shorts_golf_jackpot_578182_puma__3__5e13295835bc4019a41605a53c7d2746_1024x1024.jpg', 1970000, 1675000, '15%', NULL, 'PUMA', '57818202', 'Quần short nam', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 5),
(153, 'Quần short nam BROKEN STRIPE WOVEN 82639 Xanh | FootJoy', 'https://product.hstatic.net/1000007560/product/quan_short_nam_broken_stripe_woven_82639_xanh_footjoy__2__c47deaf4b8424cffa9c1576c7d8f9151_1024x1024.jpg', 1840000, 1655000, '10%', NULL, 'FootJoy', '87625', 'Quần short nam', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 5),
(154, 'Bộ áo+ quần mưa 2MSRN-TD131 N92512 | TaylorMade', 'https://product.hstatic.net/1000007560/product/bo_ao__quan_mua_2msrn-td131_n92512_taylor_made__1__8332ddd011e74f28bab3c3ab71807f73_1024x1024.jpg', 4395000, 3735000, '15%', NULL, 'TaylorMade', '87625', 'Áo mưa', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 5),
(155, 'Găng tay golf nam RAIN GRIP 66574 | FootJoy', 'https://product.hstatic.net/1000007560/product/gang-tay-golf-rain-grip-66574-footjoy-01_84b831266a0e40f4bc9c29c378ae78ce_1024x1024.jpg', 372000, 335000, '10%', NULL, 'FootJoy', '66574', 'Găng tay', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 6),
(156, 'Găng tay golf nam RAIN GRIP Xtreme 66562 | FootJoy', 'https://product.hstatic.net/1000007560/product/olf_rain_grip_xtreme_fj_66562_footjoy_1df09d79d08d42eb8afe07d43b74c4d5_e5f3684a93ef4eaf8ccca4f2e54c13b4_1024x1024.jpg', 434000, 395000, '9%', NULL, 'FootJoy', '66562', 'Găng tay', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 6),
(157, 'Găng tay golf nam WeatherSof 68264 | FootJoy', 'https://product.hstatic.net/1000007560/product/gang_tay_golf_weathersof_fj_68264_2020_footjoy__1__ffeb1c2795bf4e53b17132e8228099bf_1024x1024.jpg', 372000, 335000, '10%', NULL, 'FootJoy', '68264', 'Găng tay', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 6),
(158, 'Găng tay golf nam PLAYER FLEX màu ngọc trai | Titleist', 'https://product.hstatic.net/1000007560/product/gang-tay-golf-player-flex-mau-ngoc-trai-titleist-01_f431adb1e3cb4b8f98f64382426a0866_1024x1024.jpg', 673750, 605000, '10%', NULL, 'Titleist', '6190E', 'Găng tay', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 6),
(159, 'Găng tay golf 2MSGL-TD305 BK 22 N92987 ĐEN | TaylorMade', 'https://product.hstatic.net/1000007560/product/gang_tay_golf_2msgl-td305_bk_22_n92987_den_taylormade__1__65e28339965d46f1b5271a4fbe54efa3_1024x1024.jpg', 454000, 410000, '10%', NULL, 'TaylorMade', 'N92987', 'Găng tay', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 6),
(160, 'Găng tay golf 2MSGL-TD304 WH/SV 22 N92985 TRẮNG BẠC | TaylorMade', 'https://product.hstatic.net/1000007560/product/gang_tay_golf_2msgl-td304_whsv_22_n92984_trang_bac_taylormade__1__5edb4e048b6b4d4180fc7d2a1db55b5c_1024x1024.jpg', 454000, 410000, '10%', NULL, 'TaylorMade', 'N92985', 'Găng tay', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 6),
(161, 'Cặp găng tay golf nữ GTXTREME có Ball marker | FootJoy', 'https://product.hstatic.net/1000007560/product/cap_gang_tay_golf_nu_gtxtreme_co_ball_marker_footjoy_1c162dbdb77045f6b637ef91940ffbc5_1024x1024.jpg', 810000, 899000, '10%', NULL, 'FootJoy', '64835/64848', 'Găng tay', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 6),
(162, 'Cặp găng tay golf nữ WeatherSof 2-Pack Women 68266 | FootJoy', 'https://product.hstatic.net/1000007560/product/cap_gang_tay_golf_nu_weathersof_2-pack_women_fj_67475e_footjoy_4187841a1eb14a8da8da706baef96274_1024x1024.jpg', 682000, 615000, '10%', NULL, 'FootJoy', '68266', 'Găng tay', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 6),
(163, 'Găng tay golf nữ N94912 Trắng/ Bạc | TaylorMade', 'https://product.hstatic.net/1000007560/product/gang_tay_golf_nu_n94912_mau_trang_taylormade_2025da21b83a46f1aa018a9786217e2d_1024x1024.jpg', 417000, 375000, '10%', NULL, 'TaylorMade', 'N9491218', 'Găng tay', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 6),
(164, 'Găng tay golf nữ N94913 Trắng/ Hồng | TaylorMade', 'https://product.hstatic.net/1000007560/product/gang_tay_golf_nu_n94913_trang_hong_taylormade_45c83b3d0f4c4b948209796dafb0484b_1024x1024.jpg', 417000, 375000, '10%', NULL, 'TaylorMade', 'N9491318', 'Găng tay', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 6),
(165, 'Cặp găng tay golf TASHOKU SUEDE ADULT 5MJMP85109 Black | Mizuno', 'https://product.hstatic.net/1000007560/product/cap_gang_tay_golf_tashoku_suede_adult_5mjmo85101_black_mizuno_534b03f4768f4fe89410859ec9f573ab_1024x1024.jpg', 417000, 375000, '10%', NULL, 'Mizuno', '5MJMP85109', 'Găng tay', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 6),
(166, 'Cặp găng tay golf TASHOKU SUEDE ADULT 5MJMP85101 White | Mizuno', 'https://product.hstatic.net/1000007560/product/cap_gang_tay_golf_tashoku_suede_adult_5mjmp85101_white_mizuno_6acc5734a8ab4c949e6d7b790ae8c022_1024x1024.jpg', 417000, 375000, '10%', NULL, 'Mizuno', '5MJMP85101', 'Găng tay', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 6),
(167, 'Găng tay golf nữ N94912 Trắng/ Bạc | TaylorMade', 'https://product.hstatic.net/1000007560/product/gang_tay_golf_nu_n94912_mau_trang_taylormade_2025da21b83a46f1aa018a9786217e2d_1024x1024.jpg', 417000, 375000, '10%', NULL, 'TaylorMade', 'N9491218', 'Găng tay', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 6),
(168, 'Găng tay golf nam RAIN GRIP 66574 | FootJoy', 'https://product.hstatic.net/1000007560/product/gang-tay-golf-rain-grip-66574-footjoy-01_84b831266a0e40f4bc9c29c378ae78ce_1024x1024.jpg', 372000, 335000, '10%', NULL, 'FootJoy', '66574', 'Găng tay', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 6),
(169, 'Găng tay golf nam RAIN GRIP Xtreme 66562 | FootJoy', 'https://product.hstatic.net/1000007560/product/olf_rain_grip_xtreme_fj_66562_footjoy_1df09d79d08d42eb8afe07d43b74c4d5_e5f3684a93ef4eaf8ccca4f2e54c13b4_1024x1024.jpg', 434000, 395000, '9%', NULL, 'FootJoy', '66562', 'Găng tay', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 6),
(170, 'Găng tay cadet golf nam SPORT TECH ICE 34724 LH Trắng Xám | PING', 'https://product.hstatic.net/1000007560/product/g_tay_golf_nam_sport_direct_gloves_tech_ice_34724_lh_trang_xam_ping_2._fc050e0a953f4d06b796c39619e66ef7_1024x1024.jpg', 417000, 375000, '10%', NULL, 'PING', 'GLV34724-108', 'Găng tay', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 6),
(171, 'Găng tay cadet golf nam TOUR DIRECT 34723 LH Trắng | PING', 'https://product.hstatic.net/1000007560/product/gang_tay_golf_nam_tour_direct_gloves_white_34723_lh_trang_ping__1__8e9625acf6db4f32803df3fb9db64da4_1024x1024.jpg', 417000, 375000, '10%', NULL, 'PING', 'GLV34723-108', 'Găng tay', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 6),
(172, 'Hộp 12 bóng golf DISTANCE 2023 | SRIXON', 'https://product.hstatic.net/1000007560/product/hop_12_bong_golf_distance_2023_srixon_f33069aa14ce49938e2c81e3d7cc5285_1024x1024.jpg', 536000, 510000, '5%', NULL, 'SRIXON', 'AA530103W', 'Ball', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 7),
(173, 'Hộp 12 bóng golf Distance+ Designed for Speed | TaylorMade', 'https://product.hstatic.net/1000007560/product/hop_12_bong_golf_distance__designed_for_speed_taylormade_0e27b22117884e618a57ba23bead40b2_1024x1024.jpg', 693000, 625000, '10%', NULL, 'TaylorMade', 'N76086', 'Ball', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 7),
(174, 'Hộp 12 bóng golf Pro V1 2023 White | Titleist', 'https://product.hstatic.net/1000007560/product/bong_golf_pro_v1_2023_white_titleist_31c50e8d62fc48e4ae7cdf34a6d8fe29_1024x1024.jpg', 1810000, 1630000, '10%', NULL, 'Titleist', 'T2028S', 'Ball', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 7),
(175, 'Hộp 12 bóng golf TruFeel 2 lớp 2022 màu Trắng | Titleist', 'https://product.hstatic.net/1000007560/product/hop_12_bong_golf_trufeel_trang_2_lop_2022_titleist_b98e83f51867462ebf095a63651c76f5_1024x1024.jpg', 883000, 800000, '9%', NULL, 'Titleist', 'T6035S', 'Ball', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 7),
(176, 'Hộp 12 bóng golf TP5x 2021 | TaylorMade', 'https://product.hstatic.net/1000007560/product/bong_golf_tp5x_2021_taylormade_6e37af7efc79468b9fd35f52350a24c4_1024x1024.jpg', 1680000, 1510000, '10%', NULL, 'TaylorMade', 'AA530103E', 'Ball', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 7),
(177, 'Hộp 12 bóng golf TP5 2021 | TaylorMade', 'https://product.hstatic.net/1000007560/product/bong_golf_tp5_2021_taylormade__1__c9f1dfc92f8a4661a2ece0490e1383d3_1024x1024.jpg', 1680000, 1510000, '10%', NULL, 'TaylorMade', 'AA531103W', 'Ball', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 7),
(178, 'Hộp 15 bóng golf Rush Yellow | Pinnacle', 'https://product.hstatic.net/1000007560/product/bong_golf_rush-_hop_15_trai_pinnacle_yellow_b0c4f7c6b1194d0490be2561f11c2f0d_1024x1024.jpg', 751000, 6750000, '10%', NULL, 'Pinnacle', 'P4135S-15P', 'Ball', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 7),
(179, 'Hộp 12 bóng golf RB566 2 lớp màu cam | Mizuno', 'https://product.hstatic.net/1000007560/product/hop_12_bong_golf_rb566_mau_cam_mizuno_11fe78ff80a5462db4c9beb531778ada_1024x1024.jpg', 620000, 530000, '15%', NULL, 'Mizuno', '5NDBM72040', 'Ball', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 7),
(180, 'Bóng golf D1 Multi Color | HONMA', 'https://product.hstatic.net/1000007560/product/bong_golf_d1_multi_color_moi_2021_honma_6eeb541f362641339b173e1dd5d449b5_1024x1024.jpg', 445000, 400000, '10%', NULL, 'HONMA', 'D-1', 'Ball', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 7),
(181, 'Hộp 12 bóng golf Z-STAR DIVIDE 2 màu 3 lớp 2023 | SRIXON', 'https://product.hstatic.net/1000007560/product/bong_golf_z-star_divide_2_mau_3_lop_2023_srixon__1__d905c27660254cf2b214e37715072c1f_1024x1024.jpg', 1666000, 1500000, '10%', NULL, 'SRIXON', 'P4135S-16P', 'Ball', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 7),
(182, 'Hộp 12 bóng golf Soft Feel BRITE Green | SRIXON', 'https://product.hstatic.net/1000007560/product/hop_12_bong_golf_soft_feel_green_srixon_97451b61f9f44f0d94a8e04aa152e242_1024x1024.jpg', 776000, 740000, '5%', NULL, 'SRIXON', '1AA530100G', 'Ball', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 7),
(183, 'Hộp 12 bóng golf Soft Feel BRITE Red | SRIXON', 'https://product.hstatic.net/1000007560/product/hop_12_bong_golf_soft_feel_red_srixon__1__e45ad8f28c714ebdbf5a8d02cbffceea_1024x1024.jpg', 776000, 740000, '10%', NULL, 'SRIXON', '1AA530100R', 'Ball', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 7),
(184, 'Hộp 12 bóng golf TM20 TP5x PIX | TaylorMade', 'https://product.hstatic.net/1000007560/product/hop_12_bong_golf_tp5x_pix_limited_edition_taylormade__1__9db95ea80b374eab91712a61235063df_1024x1024.jpg', 1680000, 1510000, '10%', NULL, 'TaylorMade', 'P4135S-13P', 'Ball', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 7),
(185, 'Hộp 12 bóng golf TP5 2024 | TaylorMade', 'https://product.hstatic.net/1000007560/product/hop_12_bong_golf_tp5_2024_taylor_made_605f6bfab8f54141bf28a864b0b378da_1024x1024.jpg', 1845000, 1570000, '15%', NULL, 'TaylorMade', 'N7663401', 'Ball', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 7),
(186, 'Hộp 12 bóng golf TP5x 2021 màu vàng | TaylorMade', 'https://product.hstatic.net/1000007560/product/hop_12_bong_golf_tp5x_2021_mau_vang_taylormade__1__fbf35bf838f1459e99253207810ef457_1024x1024.jpg', 1649000, 1400000, '15%', NULL, 'TaylorMade', 'N7603701', 'Ball', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 7),
(187, 'Hộp 12 bóng Limited Edition Chrome Soft X LS 360 Triple Track | Callaway', 'https://product.hstatic.net/1000007560/product/hop_12_bong_golf_chrome_soft_x_ls_360_triple_track_2023_callaway_ef4bb1b11bd447e7889b13afc50d95d0_1024x1024.jpg', 1840000, 1656000, '15%', NULL, 'Callaway', 'N7603401', 'Ball', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 7),
(188, 'Hộp 12 bóng golf CHROME SOFT 3 sọc kẻ 2023 | Callaway', 'https://product.hstatic.net/1000007560/product/hop_12_bong_golf_chrome_soft_3_soc_ke_2023_callaway_8b11dabf19e247fc87841ba2811c5688_1024x1024.jpg', 1720000, 1548000, '10%', NULL, 'Callaway', 'CHROMESOFT3', 'Ball', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 7),
(189, 'Hộp 12 bóng golf Pro V1x 2023 White | Titleist', 'https://product.hstatic.net/1000007560/product/hop_12_bong_golf_pro_v1x_2023_white_titleist_219efa9609324fe3b4e22c9c342fd886_1024x1024.jpg', 1810866, 1630000, '10%', NULL, 'Titleist', 'T2048S', 'Ball', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 7),
(190, 'Hộp 12 bóng golf E.R.C Soft 360 Fade 2024 | Callaway', 'https://product.hstatic.net/1000007560/product/bong_golf_e.r.c_soft_360_fade_2024_callaway__b0a050fa4e374989889c318fb5e12b02_1024x1024.jpg', 1810000, 1630000, '10%', NULL, 'Callaway', 'ERCSOFT23', 'Ball', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 7),
(191, 'Hộp 12 bóng golf RB MAX 3 lớp White | Mizuno', 'https://product.hstatic.net/1000007560/product/hop_12_bong_golf_rb_max_3_lop_white_mizuno__1__7afe929baee343e7991977ab8f5d0a64_1024x1024.jpg', 883000, 795000, '10%', NULL, 'Mizuno', '5NJBT73310', 'Ball', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 7),
(192, 'Hộp 12 bóng golf Velocity 2 lớp trắng 2024 | Titleist', 'https://product.hstatic.net/1000007560/product/hop_12_bong_golf_velocity_2_lop_trang_2024_titleist_9400137e2a6e4a9ca4ddd2275b8f41b9_1024x1024.jpg', 1082000, 975000, '10%', NULL, 'Titleist', 'T8026S-2', 'Ball', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 7),
(193, 'Hộp 12 bóng golf TruFeel 2 lớp 2024 màu Trắng | Titleist', 'https://product.hstatic.net/1000007560/product/hop_12_bong_golf_trufeel_2_lop_2024_mau_trang_titleist_c096479832ff499ab53205f3b1cca602_1024x1024.jpg', 901000, 810000, '10%', NULL, 'Titleist', 'T6036S', 'Ball', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 7),
(194, 'Hộp 12 bóng golf Soft Feel Lady Passion Pink | SRIXON', 'https://product.hstatic.net/1000007560/product/hop_12_bong_golf_soft_feel_lady_passion_pink_srixon__1__3797dc6e549047b9b6325726f1628196_1024x1024.jpg', 776000, 740000, '5%', NULL, 'SRIXON', '1AA530109W', 'Ball', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 7),
(195, 'Kính râm ELLWOOD 52 POLARIZED 202200 Anti-UV | SUNDOG', 'https://product.hstatic.net/1000007560/product/kinh_ram_ellwood_52_polarized_202200_anti-uv_sundog_b1bccb53e0824b2fbd2455438160225f_1024x1024.jpg', 1850000, 1575000, '15%', NULL, 'SUNDOG', '202200', 'Sunglasses', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 8),
(196, 'Kính râm Fly 215123 Matte Black/Brown FM Polarized | SUNDOG', 'https://product.hstatic.net/1000007560/product/kinh_ram_fly_215123_matte_blackbrown_fm_polarized_sundog__1__81b896679ad94bee8f9df37eaf602172_1024x1024.jpg', 1850000, 1665000, '10%', NULL, 'SUNDOG', '202200', 'Sunglasses', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 8),
(197, 'Kính Polarized siêu nhẹ Hàn Quốc EAGLE EYE 02 (SPORTY) | M Sport', 'https://product.hstatic.net/1000007560/product/kinh_mat_sieu_nhe_han_quoc_eagle_eye_01_sporty_m-sport__1__2a23728668cc4fea8c0a59a73e2428cc_1024x1024.jpg', 1850000, 1700000, '10%', NULL, 'M Sport', 'EA02-SPO', 'Sunglasses', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 8),
(198, 'Kính Polarized đổi màu siêu nhẹ Hàn Quốc EAGLE EYE HYDRID 02 (SPORTY) | M Sport', 'https://product.hstatic.net/1000007560/product/kinh_mat_doi_mau_sieu_nhe_han_quoc_eagle_hybrid_02_sporty_m-sport__1__ab1166285daa4acfa6aab705ac2d0b0b_1024x1024.jpg', 2090000, 1575000, '25%', NULL, 'M Sport', '202200', 'Sunglasses', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 8),
(199, 'Kính Polarized UV400 MS-051P SHINY BLACK -Gương | FeelMorys', 'https://product.hstatic.net/1000007560/product/kinh_polarized_uv400_ms-051p_shiny_black_-guong_feelmorys__1__b76ab495de574472b96874453a66d63e_1024x1024.jpg', 2650000, 1575000, '41%', NULL, 'FeelMorys', '051P SHINY BLACK', 'Sunglasses', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 8),
(200, 'Kính Polarized UV400 MS-025P Orange | FeelMorys', 'https://product.hstatic.net/1000007560/product/kinh_polarized_uv400_ms-025p_orange_feelmorys__1__b23be1278f35497aa28558a25e253d8c_1024x1024.jpg', 2800000, 2575000, '9%', NULL, 'FeelMorys', '025P-OG', 'Sunglasses', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 8),
(201, 'Kính Polarized đổi màu siêu nhẹ Hàn Quốc EAGLE EYE HYDRID 01 (GENTLE) | M Sport', 'https://product.hstatic.net/1000007560/product/kinh_mat_doi_mau_sieu_nhe_han_quoc_eagle_hybrid_01_gentle_m-sport__1__19cd8b5989f7450390066faae1173b80_1024x1024.jpg', 2090000, 1850000, '15%', NULL, 'M Sport', 'EH01-GEN', 'Sunglasses', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 8),
(202, 'Kính Polarized đổi màu siêu nhẹ Hàn Quốc EAGLE EYE HYDRID 02 (SPORTY) | M Sport', 'https://product.hstatic.net/1000007560/product/kinh_mat_doi_mau_sieu_nhe_han_quoc_eagle_hybrid_02_sporty_m-sport__1__ab1166285daa4acfa6aab705ac2d0b0b_1024x1024.jpg', 2090000, 1850000, '15%', NULL, 'M Sport', 'EH02-SPO', 'Sunglasses', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 8),
(203, 'Kính Polarized siêu nhẹ Hàn Quốc EAGLE EYE 02 (SPORTY) | M Sport', 'https://product.hstatic.net/1000007560/product/kinh_mat_sieu_nhe_han_quoc_eagle_eye_01_sporty_m-sport__1__2a23728668cc4fea8c0a59a73e2428cc_1024x1024.jpg', 2090000, 1700000, '20%', NULL, 'M Sport', 'EA02-SPO', 'Sunglasses', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 8),
(204, 'Kính Polarized đổi màu siêu nhẹ Hàn Quốc EAGLE EYE HYDRID 02 (SPORTY) | M Sport', 'https://product.hstatic.net/1000007560/product/kinh_mat_doi_mau_sieu_nhe_han_quoc_eagle_hybrid_02_sporty_m-sport__1__ab1166285daa4acfa6aab705ac2d0b0b_1024x1024.jpg', 2090000, 1850000, '15%', NULL, 'M Sport', 'EH02-SPO', 'Sunglasses', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 8),
(205, 'Kính Polarized siêu nhẹ Hàn Quốc EAGLE EYE 01 (GENTLE) | M Sport', 'https://product.hstatic.net/1000007560/product/kinh_mat_sieu_nhe_han_quoc_eagle_eye_01_gentle_m-sport__1__035bb40af3894f1b9be86f785ccfb1e4_1024x1024.jpg', 2090000, 1700000, '20%', NULL, 'M Sport', 'EA01-GEN', 'Sunglasses', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 8),
(206, 'Kính Polarized tráng gương siêu nhẹ Hàn Quốc EAGLE MIRROR 01 (GENTLE-SLIVER) | M Sport', 'https://product.hstatic.net/1000007560/product/h_mat_trang_guong_sieu_nhe_han_quoc_eagle_mirror_01_genlte_m-sport__1__f5c41d9d137042da89b7947be9c53d79_1024x1024.jpg', 2090000, 1850000, '15%', NULL, 'M Sport', 'EH02-SPC', 'Sunglasses', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 8),
(207, 'Kính golf thời trang MS-054 BLACK/GREY | FeelMorys', 'https://product.hstatic.net/1000007560/product/kinh_mat_thoi_trang_ms-054_black_grey_feelmorys_2_6dac5e9a5cca466b9118bd48a73499aa_1024x1024.jpg', 2090000, 1900000, '10%', NULL, 'FeelMorys', 'EH12-SCO', 'Sunglasses', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 8),
(208, 'Kính golf thời trang MS-054 BLACK/White | FeelMorys', 'https://product.hstatic.net/1000007560/product/kinh_mat_thoi_trang_ms-054_black_white_feelmorys_945891a4c85c4fb78e5e8620c72cbb59_1024x1024.jpg', 2090000, 1900000, '10%', NULL, 'M FeelMorys', 'WG-054-K2', 'Sunglasses', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 8),
(209, 'Kính golf thời trang MS-054 gọng Black/Red | FeelMorys', 'https://product.hstatic.net/1000007560/product/kinh_golf_thoi_trang_ms-054_black_red_feelmorys_ecd47c1965ee4df18c3be6f40c05754d_1024x1024.jpg', 2090000, 1850000, '15%', NULL, 'FeelMorys', 'WG-054-K1', 'Sunglasses', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 8),
(210, 'Kính golf thời trang MS-054 UV400 Tráng gương | FeelMorys', 'https://product.hstatic.net/1000007560/product/nh-mat-thoi-trang-han-quoc-ms-054-uv400-trang-guong-uv400-feelmorys-00_91142820ef2a4a0d9d73c319c3273b11_1024x1024.jpg', 2090000, 1850000, '15%', NULL, 'FeelMorys', 'WG-054-K1', 'Sunglasses', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 8),
(211, 'Kính golf thời trang MS-066P có Polarized và UV400 Black Blue with Mirror lens | FeelMorys', 'https://product.hstatic.net/1000007560/product/ng_ms-066p_co_polarized_va_uv400_black_blue_with_mirror_lens_feelmorys_fdd2c6574592447db9027bcaf1dab4c6_1024x1024.jpg', 2650000, 2090000, '20%', NULL, 'FeelMorys', 'WG-054-K1', 'Sunglasses', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 8),
(212, 'Kính golf thời trang tráng gương UV Protect MS-N0025 Orange-Black | FeelMorys', 'https://product.hstatic.net/1000007560/product/golf_thoi_trang_trang_guong_uv_protect_ms-n0025_orange-black_feelmorys_686a8aae17064498afb0c5728962d39f_1024x1024.jpg', 2090000, 1650000, '20%', NULL, 'FeelMorys', 'N0025-OG', 'Sunglasses', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 8),
(213, 'Kính PRIZM Lens MS-0025PZ Jade Black/Red | FeelMorys', 'https://product.hstatic.net/1000007560/product/kinh_prizm_lens_0025pz_jade_black_red_feelmorys_867861344f274e459d3700a179fa8979_1024x1024.jpg', 2800000, 2090000, '25%', NULL, 'FeelMorys', 'MS-0025PZ', 'Sunglasses', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 8),
(214, 'Kính PRIZM Lens MS-0025PZ Torch Black/Yellow | FeelMorys', 'https://product.hstatic.net/1000007560/product/kinh_prizm_lens_0025pz_torch_black_yellow_feelmorys_12ba002595d34f708a9da78b6233b69b_1024x1024.jpg', 2800000, 2090000, '25%', NULL, 'FeelMorys', 'MS-0025PZ-K4', 'Sunglasses', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 8),
(215, 'Kính mát UV Protect MS-0025 WHITE/BLACK | FeelMorys', 'https://product.hstatic.net/1000007560/product/kinh_mat_uv_protect_0025_white_black_feelmorys-0_23dbc2941b884803a15f7c912170ccfc_1024x1024.jpg', 2090000, 1650000, '20%', NULL, 'FeelMorys', '0025 WHITE/ BLACK', 'Sunglasses', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 8),
(216, 'Kính mát thể thao MS-049 CLEAR/RED Tráng Gương Đỏ UV400 | FeelMorys', 'https://product.hstatic.net/1000007560/product/kinh_mat_the_thao_ms-049_clearred_trang_guong_do_uv400_feelmorys__1__5845200183554e4ba20b6c568cab3fec_1024x1024.jpg', 2250000, 1850000, '20%', NULL, 'FeelMorys', '049-CRD', 'Sunglasses', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 8),
(217, 'Kính mát thể thao UV400 MS-047U gọng Trắng Đỏ - tròng tráng gương đỏ | FeelMorys', 'https://product.hstatic.net/1000007560/product/kinh_mat_the_thao_047_uv400_gong_trang_den-_trong_den_feelmorys_ff5f9e3527324b5d86e90ad3b85bfe84_1024x1024.jpg', 2300000, 1850000, '21%', NULL, 'FeelMorys', 'WG-054-K3', 'Sunglasses', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 8),
(218, 'Hộp 10 cây Tee Bamboo Tee golf bằng tre | VENTI', 'https://product.hstatic.net/1000007560/product/bamboo_tee_golf_bang_tre_hop_10_cay_d5619bbd75f54da995d5cd4c31829672_1024x1024.jpg', 100000, 50000, '50%', NULL, 'VENTI', 'MW-11', 'TEE', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 9),
(219, 'Hộp 10 tee gỗ dài 80mm có chia vạch LT191 | KOVISS', 'https://product.hstatic.net/1000007560/product/hop_10_tee_go_dai_80mm_co_chia_vach_lt191_koviss__1__f22f79607c0f49b9aa9662867a132857_1024x1024.jpg', 150000, 120000, '20%', NULL, 'KOVISS', 'LT191', 'TEE', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 9),
(220, 'Hộp 20 HAW TEE gỗ dài 80mm có 3 ngấn HT176 | KOVISS', 'https://product.hstatic.net/1000007560/product/hop_20_haw_tee_go_dai_80mm_co_3_ngan_hw171_koviss_1466273d3053480caf8c092bd73ae423_1024x1024.jpg', 250000, 200000, '20%', NULL, 'KOVISS', 'HT176', 'TEE', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 9),
(221, 'Tee gỗ loại dài 70mm GV0507 | Tabata', 'https://product.hstatic.net/1000007560/product/tee_go_loai_dai_70mm_gv0507_tabata_fea2c67f4a9d4df7908d07bcb27edd21_1024x1024.jpg', 100000, 70000, '30%', NULL, 'Tabata', 'GV0507', 'TEE', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 9),
(222, 'Tee golf gỗ 70MM in hoa văn TE 124 Long Japan | DAIYA', 'https://product.hstatic.net/1000007560/product/tee-golf-in-hoa-van-te-124-long-70mm-japan-daiya-01_1f3587e03dd8475badc4740ff515db15_1024x1024.jpg', 100000, 80000, '20%', NULL, 'DAIYA', 'HW171', 'TEE', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 9),
(223, 'Túi 5 HAW TEE gỗ dài 80mm có 3 ngấn HW171 | KOVISS', 'https://product.hstatic.net/1000007560/product/tee_golf_nhua_co_moc_treo_th309_korea_koviss_2_6c8c84532a9149e68a2d635b5cc548d6_1024x1024.jpg', 350000, 280000, '20%', NULL, 'KOVISS', 'TH309', 'TEE', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 9),
(224, 'Gói 4 tee LIMITED EDITION TOUR TEE PRO 40mm Giúp bóng bay xa hơn | TOUR Tee', 'https://product.hstatic.net/1000007560/product/goi_4_tee_limited_edition_tour_tee_pro_40mm_black_tourtee__1__1fc2fa0e518b4cd5a7ed27788ebaa875_1024x1024.jpg', 250000, 200000, '20%', NULL, 'TOUR Tee', '9369998260898', 'TEE', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 9),
(225, 'Gói 5 tee LIMITED EDITION TOUR TEE PRO 23-50mm Giúp bóng bay xa hơn | TOUR Tee', 'https://product.hstatic.net/1000007560/product/goi_5_tee_limited_edition_tour_tee_pro_23-50mm_color_tourtee_2_8374791d938a41ddae6dd88db6371b6e_1024x1024.jpg', 250000, 200000, '50%', NULL, 'TOUR Tee', 'MW-12', 'TEE', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 9),
(226, 'Hộp 1 Tee golf nhựa 68MM lò xo xoay 360º có 2 ngấn VS1101 Korea | KOVISS', 'https://product.hstatic.net/1000007560/product/ay-360-co-2-ngan-vs11-korea-koviss-04_9e773116b7064056ba2de4885116936d_ce7b1f32fa774b5d8b341ccdd8aa56bb_1024x1024.jpg', 100000, 80000, '20%', NULL, 'KOVISS', 'VS1101', 'TEE', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 9),
(227, 'Hộp 10 tee nhựa dài 35mm màu trắng | OEM', 'https://product.hstatic.net/1000007560/product/hop_10_tee_nhua_dai_35mm_mau_trang_bong_oem_8fe29def898743a0801d45a3034ad467_1024x1024.jpg', 100000, 40000, '60%%', NULL, 'OEM', 'MA67010800', 'TEE', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 9),
(228, 'Hộp 15 tee nhựa 3 kiểu tròn, vuông, dẹp NEO STEP NS181 | KOVISS', 'https://product.hstatic.net/1000007560/product/hop_15_tee_nhua_3_kieu_tron__vuong__dep__neo_step_ns181_koviss_284787ccb0b94e27a9b3d2bc7d4559b1_1024x1024.jpg', 180000, 150000, '15%', NULL, 'KOVISS', 'NS181', 'TEE', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 9),
(229, 'Hộp 2 cây Tee golf nhựa 88mm + 35mm lò xo xoay 360º đế vuông VS140 Korea | KOVISS', 'https://product.hstatic.net/1000007560/product/_tee_golf_nhua_88mm___35mm_lo_xo_xoay_360__de_vuong_vs140_korea_koviss_b8b06fa6f78647afa4cd0577069863ad_1024x1024.jpg', 180000, 150000, '15%', NULL, 'OEM', 'VS140', 'TEE', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 9),
(230, 'Bộ 3 Tee cao su tập golf PERMANENT GV0290 30-35-46mm | Tabata', 'https://product.hstatic.net/1000007560/product/3_tee_cao_su_tap_danh_golf_permanent_gv0290__30-35-46mm_tabata_61c0d71a5e2c43ca84cf8b30a269741e_1024x1024.jpg', 220000, 200000, '9%', NULL, 'Tabata', 'GV0290', 'TEE', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 9),
(231, 'Tee cao su sử dụng cho đất cứng Octee Short 5,10cm GV1410 | Tabata', 'https://product.hstatic.net/1000007560/product/tee_cao_su_su_dung_cho_dat_cung_octee_short_5_10_gv1410_tabata_55acb21d56444c268f0d77fb79d5394f_1024x1024.jpg', 190000, 150000, '15%', NULL, 'Tabata', 'GV1410', 'TEE', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 9),
(232, 'Tee golf nhựa bọc cao su 83MM Yari Tee RT 188 | VENTI', 'https://product.hstatic.net/1000007560/product/tee-golf-nhua-boc-cao-su-yari-rt-188-venti_84507e5bcd044da7b2fc13fc3833b613_1024x1024.jpg', 100000, 80000, '20%', NULL, 'VENTI', 'RT-188', 'TEE', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 9),
(233, 'Hộp 1 Tee golf nhựa 68MM lò xo xoay 360º có 2 ngấn VS1101 Korea | KOVISS', 'https://product.hstatic.net/1000007560/product/ay-360-co-2-ngan-vs11-korea-koviss-04_9e773116b7064056ba2de4885116936d_ce7b1f32fa774b5d8b341ccdd8aa56bb_1024x1024.jpg', 100000, 90000, '10%', NULL, 'KOVISS', 'VS1101', 'TEE', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 9),
(234, 'Hộp 3 cây Tee golf nhựa 88MM lò xo xoay 360º đế vuông VS144 Korea | KOVISS', 'https://product.hstatic.net/1000007560/product/oay-360-de-vuong-vs14-korea-koviss-05_1e9c16a5268a414fb8da90112176361f_fa9660f2650e4c7c9fadc923c56c83f8_1024x1024.jpg', 220000, 180000, '15%', NULL, 'KOVISS', 'VS144', 'TEE', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 9),
(235, 'Hộp 3 Tee golf nhựa 60mm lò xo xoay 360º có 2 ngấn VS117A Korea | KOVISS', 'https://product.hstatic.net/1000007560/product/hop_3_tee_golf_nhua_60mm_lo_xo_xoay_360__co_2_ngan_vs117a_korea_koviss_0485f0c2f0d848619110c98dfb8332f5_1024x1024.jpg', 250000, 200000, '20%', NULL, 'KOVISS', 'VS117A', 'TEE', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 9),
(236, 'Hộp 5 Tee golf nhựa 84MM-76MM-68MM lò xo xoay 360º có 2 ngấn VS112 Korea | KOVISS', 'https://product.hstatic.net/1000007560/product/ay-360-co-2-ngan-vs11-korea-koviss-03_e7870acf04e7411fa4e669903ec72321_c00f47156aaa44af9c40894a32e017cd_1024x1024.jpg', 350000, 290000, '20%', NULL, 'KOVISS', 'VS112', 'TEE', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 9),
(237, 'Hộp 3 Tee golf nhựa 84mm lò xo xoay 360º có 2 ngấn VS117B Korea | KOVISS', 'https://product.hstatic.net/1000007560/product/hop_3_tee_golf_nhua_84mm_lo_xo_xoay_360__co_2_ngan_vs117b_korea_koviss_66cd1df0e52e4f4db3169afbb8248049_1024x1024.jpg', 250000, 20000, '20%', NULL, 'KOVISS', 'VS117B', 'TEE', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 9),
(238, 'Dù golf gấp gọn Professional Folding 44” TA8PROFU-0 | Titleist', 'https://product.hstatic.net/1000007560/product/du_golf_gap_gon_professional_folding_58__ta8profu-0_titleist__0__0f1c640a24944cea92861a7de8c76cdd_1024x1024.jpg', 2345000, 2230000, '5%', NULL, 'Titleist', 'TA8PROFU-0', 'Dù cầm tay', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 10),
(239, 'Dù golf Tour Single Canopy 68\" TA20TSCU-006 | Titleist', 'https://product.hstatic.net/1000007560/product/du_golf_gap_gon_professional_folding_58__ta8profu-0_titleist__0__0f1c640a24944cea92861a7de8c76cdd_1024x1024.jpg', 2345000, 2230000, '5%', NULL, 'Titleist', 'TA20TSCU-006', 'Dù cầm tay', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 10),
(240, 'Dù golf 1 tầng Capony Single 156cm-580gr B16008NS | TaylorMade', 'https://product.hstatic.net/1000007560/product/du-golf-capony-single-b16008-taylormade-02_ba3c605eb7844a4e969a4ae2fb471ca9_1024x1024.jpg', 1380000, 1240000, '5%', NULL, 'TaylorMade', 'B16008', 'Dù cầm tay', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 10),
(241, 'Ô dù golf UV UMBRELLA BLACK/WHITE TA22UVUK-01 142cm | Titleist', 'https://product.hstatic.net/1000007560/product/o_du_golf_uv_umbrella_blackwhite_ta22uvuk-01142cm__titleist___1__6a8517edb4c5461094707e33f51a42db_1024x1024.jpg', 1118000, 1065000, '5%', NULL, 'Titleist', 'TA22UVUK-01', 'Dù cầm tay', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 10),
(242, 'Dù golf Single Canopy 35952-101 62 Inch | PING', 'https://product.hstatic.net/1000007560/product/du_golf_single_canopy_ubr35952-101_ping_356b41d2cb0847d7a6f1ecdefa634661_1024x1024.jpg', 2345000, 1660000, '25%', NULL, 'PING', 'UBR35952-101', 'Dù cầm tay', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 10),
(243, 'Dù golf Single Canopy 65cm V9584201 | TaylorMade', 'https://product.hstatic.net/1000007560/product/v95842_zoom_d4_ce22d7a15c014c8e81be38d1de1bb133_1024x1024.jpg', 1747000, 1575000, '10%', NULL, 'TaylorMade', 'V95842', 'Dù cầm tay', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 10),
(244, 'Dù Golf 2 tầng DryJoys Umbrella 34977 68 inch | FootJoy', 'https://product.hstatic.net/1000007560/product/du-golf-dryjoys-umbrella-fj-34977-68-inch-2-tang-footjoy_48a05ab34b8c472e9508f6d30204583e_1024x1024.jpg', 1660000, 1302000, '10%', NULL, 'FootJoy', '34977', 'Dù cầm tay', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 10),
(245, 'Dù golf 2 tầng Double Canopy 64 inch (163cm) B16006NS | TaylorMade', 'https://product.hstatic.net/1000007560/product/du_golf_double_canopy_b16006_taylormade__1__ec0ece78aeaa4d2d91520726a8e0cc96_1024x1024.jpg', 1990000, 1790000, '10%', NULL, 'TaylorMade', 'B16006', 'Dù cầm tay', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 10),
(246, 'Dù golf TOUR DOUBLE CANOPY 68\" TA20TDCU-006 | Titleist', 'https://product.hstatic.net/1000007560/product/du_golf_tour_double_canopy_ta20tdcu-006_titleist__0__2a593f6709bd4ee5bf925d5de273cc32_1024x1024.jpg', 2489000, 2365000, '5%', NULL, 'Titleist', 'TA20TDCU-006', 'Dù cầm tay', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 10),
(247, 'Dù golf 2 tầng Tour 68\" (1m72) 12124134 | Srixon', 'https://product.hstatic.net/1000007560/product/du_golf_2_tang_tour_68_12124134_srixon__1__2832dc35c8524b99b1951894fe228b0a_1024x1024.jpg', 1552000, 1320000, '15%', NULL, 'Srixon', '12124134', 'Dù cầm tay', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 10),
(248, 'Dù golf LTDx Tour Umbrella 90959701 68 inchs | Cobra', 'https://product.hstatic.net/1000007560/product/du_golf_ltdx_tour_umbrella_90959701_cobra__1__8742a435e0494d6aa10c6ec76b8016d6_1024x1024.jpg', 3150000, 2680000, '15%', NULL, 'Cobra', '90959701', 'Dù cầm tay', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 10),
(249, 'Dù golf 2 tầng Branded Umbrella 90959801 | Cobra', 'https://product.hstatic.net/1000007560/product/du_golf_2_tang_branded_umbrella_90959801_cobra__1__ffa3f9821e204847a63bcaaa4aa49995_1024x1024.jpg', 2481000, 2110000, '15%', NULL, 'Cobra', '90959801', 'Dù cầm tay', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 10),
(250, 'Máy đo khoảng cách golf GolfBuddy GB Laser Lite2 có Slope và báo rung | GOLFBUDDY', 'https://product.hstatic.net/1000007560/product/oang_cach_golf_golfbuddy_gb_laser_lite2_co_slope_va_bao_rung_golfbuddy_e77627ed4f6c4925936f57cb6a06802c_1024x1024.jpg', 5900000, 4720000, '15%', NULL, 'GOLFBUDDY', 'GB LASER Lite2', 'Range Finder', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 11),
(251, 'Đồng hồ định vị GPS chuyên dụng chơi golf AIM W12 | GOLFBUDDY', 'https://product.hstatic.net/1000007560/product/dong_ho_dinh_vi_gps_chuyen_dung_choi_golf_aim_w12_golfbuddy_e5c6e4906edd4e5d8882d9fd5111d829_1024x1024.jpg', 9250000, 7400000, '20%', NULL, 'GOLFBUDDY', 'AIM W12', 'Range Finder', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 11),
(252, 'Máy đo khoảng cách golf Atom siêu nhỏ gọn pin sạc Type-C | GOLFBUDDY', 'https://product.hstatic.net/1000007560/product/y_do_khoang_cach_golf_atom_sieu_nho_gon_pin_sac_type-c_golfbuddy_white_c167d75600c640ffb151084f186dbee4_1024x1024.jpg', 10600000, 8480000, '20%', NULL, 'GOLFBUDDY', 'ATOM23-1', 'Range Finder', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 11),
(253, 'Máy đo khoảng cách golf AIM QUANTUM siêu gọn, Slope, Pin sạc C-type | GOLFBUDDY', 'https://product.hstatic.net/1000007560/product/lf_aim_quantum_sieu_gon__slope__gps__ban_dem__pin_sac_c-type_golfbuddy_3ac9b77878b5446686e37a6eff0da294_1024x1024.jpg', 11350000, 9080000, '20%', NULL, 'GOLFBUDDY', 'WA67022802', 'Range Finder', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 11),
(254, 'Máy đo khoảng cách golf TOUR V6 SHIFT 1300Yard Slope MAGNETIC | BUSHNELL', 'https://product.hstatic.net/1000007560/product/may_do_khoang_cach_golf_tour_v6_shift_bushnell__1__83832d5251de44c88f7d96fbe6e2df8f_1024x1024.jpg', 13900000, 11120000, '20%', NULL, 'GOLFBUDDY', 'TOURV6S', 'Range Finder', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 11),
(255, 'Máy đo khoảng cách golf TOUR V6 1300Yard MAGNETIC | BUSHNELL', 'https://product.hstatic.net/1000007560/product/may_do_khoang_cach_golf_tour_v6_bushnell__1__6dd4251e5dde48cab47fa5116b891f1c_1024x1024.jpg', 10900000, 8720000, '20%', NULL, 'BUSHNELL', 'TOURV6', 'Range Finder', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 11),
(256, 'Khung vải tập chip 2 hướng 2WAY APPROACH GV0371 | Tabata', 'https://product.hstatic.net/1000007560/product/khung_vai_tap_chip_2_huong_2way_approach_gv0371_tabata_8fb393744ed34c5b84c3336c64481d98_1024x1024.jpg', 2500000, 1950000, '21%', NULL, 'Tabata', 'GV0371', 'Training Chip Net', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 12),
(257, 'Lưới tập chip CHPPING NET GV0881 | Tabata', 'https://product.hstatic.net/1000007560/product/luoi_tap_chip_chpping_net_gv0881_tabata__1__17972e0208a8424ba4b755d455e9ff59_1024x1024.jpg', 1000000, 750000, '25%', NULL, 'Tabata', 'GV0881', 'Training Chip Net', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 12),
(258, 'Lưới tập chip NEAREST PIN APPROACH TR-407 | DAIYA', 'https://product.hstatic.net/1000007560/product/luoi_tap_chip_nearest_pin_approach_tr-407_daiya__1__d0cbeee34e3542db9f3c9c5aa22156b1_1024x1024.jpg', 1000000, 750000, '25%', NULL, 'DAIYA', 'TR-407', 'Training Chip Net', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 12),
(259, 'Lưới tập chip golf APPROACH ECPERT TR-410 | DAIYA', '//product.hstatic.net/1000007560/product/luoi_tap_chip_golf_approach_ecpert_tr-410_daiya__1__30eab1e4d62a498db704cd069ced7981_1024x1024.jpg', 2000000, 1750000, '21%', NULL, 'DAIYA', 'TR-410', 'Training Chip Net', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 12),
(260, 'Bộ dụng cụ tập chip tại nhà TR-445 | DAIYA', 'https://product.hstatic.net/1000007560/product/bo_dung_cu_tap_chip_tai_nha_tr-445_daiya_9d7b392e80654771a168c95294e9550c_1024x1024.jpg', 1450000, 1305000, '10%', NULL, 'DAIYA', 'TR-445', 'Training Chip Net', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 12),
(261, 'Bóng golf tập Putting Ball AS-096 | DAIYA', 'https://product.hstatic.net/1000007560/product/bong_golf_tap_putting_ball_as-096_daiya_01882b48532841dfb75171c33d16621c_1024x1024.jpg', 356000, 320000, '10%', NULL, 'DAIYA', 'AS-096', 'Training ', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 12),
(262, 'Gói 6 bóng tập swing trong nhà 30m GV0310 | Tabata', 'https://product.hstatic.net/1000007560/product/goi_6_bong_tap_swing_trong_nha_30m_gv0310_tabata_a1cc66b0de224a7989ef1751485ca432_1024x1024.jpg', 150000, 130000, '11%', NULL, 'Tabata', 'GV0310', 'Training', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 12),
(263, 'Bóng tập swing loại tay xoay TR-435 | DAIYA', 'https://product.hstatic.net/1000007560/product/tham_tap_swing_tai_nha_natural_shot_x_tr-427_daiya__1__b60f7a17196b4d6ab602c9f2d2fbf03a_large.jpg', 171000, 155000, '10%', NULL, 'DAIYA', 'TR-435', 'Training', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 12),
(264, 'Bóng tập swing có dây giữ BALL STRING PARTS GV0277 | Tabata', 'https://product.hstatic.net/1000007560/product/bong_tap_swing_co_day_giu_ball_string_parts_gv0277_daiya__1__5143caafddc14bba8d3d4245d7666a51_1024x1024.jpg', 100000, 90000, '10%', NULL, 'Tabata', 'GV0277', 'Training', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 12),
(265, 'Gói 6 bóng tập swing foam mềm 10m GV0304 | Tabata', 'https://product.hstatic.net/1000007560/product/61vgmdqwhwl_ddd822784929498db4434f5ff28bdd3c_1024x1024.jpg', 300000, 270000, '10%', NULL, 'Tabata', 'GV0304', 'Training', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 12),
(266, 'Gói 6 bóng tập swing foam mềm 5m GV0302 | Tabata', 'https://product.hstatic.net/1000007560/product/bong_tap_swing_foam_mem_gv0302_tabata__3__b68dab5189cd4b3aaf3ea9f8af3c7672_1024x1024.jpg', 300000, 240000, '20%', NULL, 'Tabata', 'GV0302', 'Training', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 12),
(267, 'Bộ 14 miếng Sticker áp lực cho Driver ghi nhớ vị trí tiếp xúc bóng SHOT CENSOR GV0332 | Tabata', 'https://product.hstatic.net/1000007560/product/-luc-cho-driver-ghi-nho-vi-tri-tiep-xuc-bong-shot-censor-gv0332-tabata_93363bdb29594cf691f4dc8a138fa580_1024x1024.jpg', 150000, 105000, '30%', NULL, 'Tabata', 'GV0332', 'Training', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 12),
(268, 'Bộ 14 miếng Sticker áp lực cho Fairway ghi nhớ vị trí tiếp xúc bóng SHOT CENSOR GV0337 | Tabata', 'https://product.hstatic.net/1000007560/product/luc_cho_fairway_ghi_nho_vi_tri_tiep_xuc_bong_shot_censor_gv0337_tabata_04516b249be74d4d945551c8477d80d1_1024x1024.jpg', 150000, 105000, '30%', NULL, 'Tabata', 'GV0337', 'Training', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 12),
(269, 'Bộ 16 miếng Sticker áp lực cho Driver và Iron ghi nhớ vị trí tiếp xúc bóng SHOT CENSOR GV0338 | Tabata', 'https://product.hstatic.net/1000007560/product/-luc-cho-driver-ghi-nho-vi-tri-tiep-xuc-bong-shot-censor-gv0332-tabata_93363bdb29594cf691f4dc8a138fa580_1024x1024.jpg', 150000, 105000, '30%', NULL, 'Tabata', 'GV0338', 'Training', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 12),
(270, 'Bộ 16 miếng Sticker áp lực cho Irons ghi nhớ vị trí tiếp xúc bóng SHOT CENSOR GV0334 | Tabata', 'https://product.hstatic.net/1000007560/product/p-luc-cho-irons-ghi-nho-vi-tri-tiep-xuc-bong-shot-censor-gv0334-tabata_004c30bbeee148eb89f87dddc4ef5b71_1024x1024.jpg', 150000, 105000, '30%', NULL, 'Tabata', 'GV0334', 'Training', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 12),
(271, 'Bộ thước inox canh line khi swing SWING MASTER TR-463 | DAIYA', 'https://product.hstatic.net/1000007560/product/bo_thuoc_inox_canh_line_khi_swing_swing_master_tr-463_daiya_0c5b40ecfe174b2da17ea17cbe1d5106_1024x1024.jpg', 1404000, 1265000, '10%', NULL, 'DAIYA', 'TR-463', 'Training', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 12),
(272, 'Cổ tay hỗ trợ tập swing golf TRAINING GAUNTLET GV0350 BK | Tabata', 'https://product.hstatic.net/1000007560/product/co_tay_ho_tro_tap_swing_golf_training_gauntlet_gv0350_bk_tabata__1__bc259faef5fb41d1a7f0097939a040fb_1024x1024.jpg', 400000, 360000, '10%', NULL, 'Tabata', 'GV0350', 'Training', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 12),
(273, 'Bộ thước tập đẩy bóng STROKE NAVI GV0187 | Tabata', 'https://product.hstatic.net/1000007560/product/bo_thuoc_tap_day_bong_stroke_navi_gv0187_tabata_5547cc0be16140cdb9c03b8245f122f8_1024x1024.jpg', 700000, 640000, '9%', NULL, 'Tabata', 'GV0187', 'Training', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 12),
(274, 'Đệm thăng bằng hỗ trợ tập đánh golf PATTING DISK GV0191 | Tabata', 'https://product.hstatic.net/1000007560/product/dem_thang_bang_ho_tro_tap_danh_golf_patting_disk_gv0191_tabata_e88a2c0c21aa443e8024a38120bcf944_1024x1024.jpg', 1500000, 1290000, '15%', NULL, 'Tabata', 'GV0191', 'Training', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 12),
(275, 'Dụng cụ kiểm soát chân Pro Putt Leg TR-466 | DAIYA', 'https://product.hstatic.net/1000007560/product/dung_cu_kiem_soat_chan_pro_putt_leg_tr-466_daiya__1__7e41c0f82dc5416ba9ab12a52bcda886_1024x1024.jpg', 1865000, 1680000, '10%', NULL, 'DAIYA', 'TR-466', 'Training', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 12),
(276, 'Gậy điều hướng Golf Alignment Stick | VENTI', 'https://product.hstatic.net/1000007560/product/gay_dieu_huong_golf_alignment-stick_d35bb7348e5d4e56b9b45d0409a8f3af_1024x1024.jpg', 250000, 200000, '20%', NULL, 'VENTI', 'WA670180', 'Training', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 12),
(277, 'Grip định vị ngón tay Miyazato Style Model Grip TR-460 | DAIYA', 'https://product.hstatic.net/1000007560/product/grip_dinh_vi_ngon_tay_miyazato_style_model_grip_tr-460_sm_daiya_39f30364e85d4f13948cfece0f6c0786_1024x1024.jpg', 962000, 865000, '10%', NULL, 'DAIYA', 'TR-460 SM', 'Training', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 12),
(278, 'Lỗ golf tập put di động ARRANGE CUP 360 GV0190 | Tabata', 'https://product.hstatic.net/1000007560/product/gv0190_b0d73586bf2f426bbe34f3a57067cfdc_1024x1024.jpg', 500000, 450000, '10%', NULL, 'Tabata', 'GV0190', 'Training', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 12),
(279, 'Thắt lưng 2 mặt HT7744 REVERS WEB BELT Rêu/Bơ | Adidas', 'https://product.hstatic.net/1000007560/product/that_lung_2_mat_ht7744_revers_web_belt_reubo_adidas__1__e3cc69b049c04d70b391946c77466015_1024x1024.jpg', 580000, 522000, '10%', NULL, 'Adidas', 'HT7744', 'Belt', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 13),
(280, 'Thắt lưng da HS5575 TROPHY TOUR Xám | Adidas', 'https://product.hstatic.net/1000007560/product/that_lung_da_hs5575_trophy_tour_xam_adidas__1__865f6757d5d3437fb16d01c28378e693_1024x1024.jpg', 1500000, 1350000, '10%', NULL, 'Adidas', 'HS5575', 'Belt', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 13),
(281, 'Thắt lưng nữ QGCSJH01-GD00 | Le Coq Sportif', 'https://product.hstatic.net/1000007560/product/that_lung_nu_qgcsjh01-gd00_lecoq_538d5446c4694e18b399adde36222df7_1024x1024.jpg', 1490000, 1190000, '20%', NULL, 'Le Coq Sportif', 'QGCSJH01-GD00', 'Belt', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 13),
(282, 'Thắt lưng nữ QGCVJH00V-WH00 | Le Coq Sportif', 'https://product.hstatic.net/1000007560/product/that_lung_nu_qgcvjh00v-wh00_lecoq_ddf70cad1a694578abe0676554381f13_1024x1024.jpg', 1490000, 1190000, '10%', NULL, 'Le Coq Sportif', 'QGCVJH00V-WH00', 'Belt', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 13),
(283, 'Thắt lưng nữ QGCVJH02WV-WH00 có ví da | Le Coq Sportif', 'https://product.hstatic.net/1000007560/product/that_lung_nu_qgcvjh02wv-wh00_co_vi_da_lecoq__1__920500c1121b446faf64ae24683fdd02_1024x1024.jpg', 1990000, 1590000, '20%', NULL, 'Le Coq Sportif', 'QGCVJH02WV-WH00', 'Belt', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 13),
(284, 'Thắt lưng nam QGBVJH02V-NV00 | Le Coq Sportif', 'https://product.hstatic.net/1000007560/product/that_lung_nam_qgbvjh02v-nv00_lecoq__3__606f50e8e9974c6491f2275e8869f33a_1024x1024.jpg', 1490000, 1190000, '20%', NULL, 'Le Coq Sportif', 'QGBVJH02V-NV00', 'Belt', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 13),
(285, 'Khẩu trang nguyên cổ F5 Chống gió- Điều nhiệt- Đeo tai- có thể đảo chiều BLACK | NAROO', 'https://product.hstatic.net/1000007560/product/yen_co_f5_chong_gio-_dieu_nhiet-_deo_tai-_co_the_dao_chieu_black_naroo_da4e821bf85a4e12826e9bccd9163f8c_1024x1024.jpg', 1000000, 875000, '11%', NULL, 'NAROO', 'SP244369', 'Mask ', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 13),
(286, 'Khẩu trang nguyên cổ X1 Mỏng- Khô nhanh- Thoáng khí- Có vòng tai-ORANGE | NAROO', 'https://product.hstatic.net/1000007560/product/ang_nguyen_co_x1_mong-_kho_nhanh-_thoang_khi-_co_vong_tai-orange_naroo_0d73b8bd2f3a49e09448c183d6e36fcb_1024x1024.jpg', 500000, 450000, '10%', NULL, 'NAROO', 'SP244390', 'Mask ', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 13),
(287, 'Khẩu trang nguyên cổ N0 Lưới 3D thoáng khí, chống bụi, mau khô Black | NAROO', 'https://product.hstatic.net/1000007560/product/_trang_nguyen_co_n0_luoi_3d_thoang_khi__chong_bui__mau_kho_black_naroo_1ab674d6dcfd40d4a7aa652d50266519_1024x1024.jpg', 1600000, 1500000, '9%', NULL, 'NAROO', 'SP244373', 'Mask ', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 13),
(288, 'Khăn chống nẳng sử dụng chung với mũ WB001 | PGM', 'https://product.hstatic.net/1000007560/product/khan_chong_nang_su_dung_chung_voi_mu_wb001_pgm_6cf03359fa894fa7bbae004c48725325_1024x1024.jpg', 400000, 300000, '22%', NULL, 'PGM', 'WB001-4', 'Mask ', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 13),
(289, 'Khẩu trang Face Cover UV Protection FC-101S Sakura | Stan', 'https://product.hstatic.net/1000007560/product/khau_trang_face_cover_uv_protection_fc-101s_sakura_stan_e9f4b45859514345a491712dbce47187_1024x1024.jpg', 630000, 535000, '15%', NULL, 'Stan', 'FC-101S', 'Mask ', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 13),
(290, 'Khẩu trang 2USOP-TD200 NV/NV N92706 màu Navi Hoa văn | TaylorMade', 'https://product.hstatic.net/1000007560/product/khau_trang_2usop-td200_nvnv_n92706_mau_navi_hoa_van_taylormade__1__970da88f6e4f42d9aecf44a330d7f9c0_1024x1024.jpg', 595000, 535000, '5%', NULL, 'TaylorMade', 'SP244389', 'Mask ', 1, '2024-03-17 04:38:35', '2024-03-17 04:38:35', 0, 13);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `productsimage`
--

CREATE TABLE `productsimage` (
  `productsImageID` int(11) NOT NULL,
  `imageName` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `productsID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `productsvariants`
--

CREATE TABLE `productsvariants` (
  `productsVariantsID` int(11) NOT NULL,
  `price` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `productsID` int(11) NOT NULL,
  `attributesID` int(11) NOT NULL,
  `attributeValuesID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `usersID` int(11) NOT NULL,
  `userName` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `fullName` varchar(50) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phoneNumber` varchar(20) NOT NULL,
  `admin` tinyint(1) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `gender` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updationDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vouchers`
--

CREATE TABLE `vouchers` (
  `voucherID` int(11) NOT NULL,
  `voucherCode` varchar(50) NOT NULL,
  `discountType` tinyint(1) NOT NULL,
  `discountValue` varchar(50) NOT NULL,
  `minimumPurchase` int(11) NOT NULL,
  `validFrom` timestamp NOT NULL DEFAULT current_timestamp(),
  `validUntil` timestamp NOT NULL DEFAULT current_timestamp(),
  `usageLimit` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

create table news(
	newsID int(11) primary key not null,
    title varchar(255) not null,
    content text not null,
    image varchar(255) not null,
	PublishDate DATETIME NOT NULL,
    author varchar(50) not null,
    category varchar(50) not null,
	Views INT(11) DEFAULT  null,
    Likes INT(11) DEFAULT  null,
    Shares INT(11) DEFAULT  null,
    status tinyint(1) not null
);


insert into (newsID, title, content, PublishDate, author, category, Views, Likes, Shares, status) value
(1, 'Cơn Sốt Giày Golf ECCO 2024: Thay Đổi Để Bắt Kịp Xu Hướng Mới', 'content', 'https://golfcity.com.vn/wp-content/uploads/2024/03/hinh-anh-tin-tuc-ecco-golf-lt1-2024-ra-mat-1.jpg', '2024-03-25 08:11:59', 'Hà Đỗ', 'Thể thao', null, null, null, 1),
(2, 'Đọ Sức Putter Mới Nhất 2024: Odyssey Ai-ONE và Titleist Phantom, Ai Hơn Ai?', 'content', 'https://golfcity.com.vn/wp-content/uploads/2024/03/hinh-anh-golfcity-so-sanh-putter-odyssey-phantom-2024-1-1.jpg', '2024-03-25 08:11:59', 'Hà Đỗ', 'Thể thao', null, null, null, 1),
(3, 'Ẵm Longest Drive Nhờ Callaway Paradym Ai Smoke, Đam Mê GolfBeer Chinh Phục Đỉnh Cao Golf', 'content', 'https://golfcity.com.vn/wp-content/uploads/2024/03/hinh-anh-tin-tuc-ecco-golf-lt1-2024-ra-mat-1.jpg', '2024-03-25 08:11:59', 'Hà Đỗ', 'Thể thao', null, null, null, 1),
(1, 'Cơn Sốt Giày Golf ECCO 2024: Thay Đổi Để Bắt Kịp Xu Hướng Mới', 'content', 'https://golfcity.com.vn/wp-content/uploads/2024/03/hinh-anh-tin-tuc-ecco-golf-lt1-2024-ra-mat-1.jpg', '2024-03-25 08:11:59', 'Hà Đỗ', 'Thể thao', null, null, null, 1),
(1, 'Cơn Sốt Giày Golf ECCO 2024: Thay Đổi Để Bắt Kịp Xu Hướng Mới', 'content', 'https://golfcity.com.vn/wp-content/uploads/2024/03/hinh-anh-tin-tuc-ecco-golf-lt1-2024-ra-mat-1.jpg', '2024-03-25 08:11:59', 'Hà Đỗ', 'Thể thao', null, null, null, 1),
(1, 'Cơn Sốt Giày Golf ECCO 2024: Thay Đổi Để Bắt Kịp Xu Hướng Mới', 'content', 'https://golfcity.com.vn/wp-content/uploads/2024/03/hinh-anh-tin-tuc-ecco-golf-lt1-2024-ra-mat-1.jpg', '2024-03-25 08:11:59', 'Hà Đỗ', 'Thể thao', null, null, null, 1),
;

create table newsDetail (
	
);

create table services (
	
);
--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`attributesID`);

--
-- Chỉ mục cho bảng `attributesvalues`
--
ALTER TABLE `attributesvalues`
  ADD PRIMARY KEY (`attributesValuesID`),
  ADD KEY `attribute_fk_1` (`attributesID`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categoriesID`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`commentsID`),
  ADD KEY `comment_fk_1` (`productsID`),
  ADD KEY `comment_fk_2` (`usersID`);

--
-- Chỉ mục cho bảng `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`orderDetailsID`),
  ADD KEY `oderdetail_fk_1` (`odersID`),
  ADD KEY `oderdetail_fk_2` (`productsID`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`ordersID`),
  ADD KEY `order_fk_1` (`voucherID`),
  ADD KEY `order_fk_2` (`usersID`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`productsID`),
  ADD KEY `product_fk_1` (`categoriesID`);

--
-- Chỉ mục cho bảng `productsimage`
--
ALTER TABLE `productsimage`
  ADD PRIMARY KEY (`productsImageID`),
  ADD KEY `productiamge_fk_1` (`productsID`);

--
-- Chỉ mục cho bảng `productsvariants`
--
ALTER TABLE `productsvariants`
  ADD PRIMARY KEY (`productsVariantsID`),
  ADD KEY `productvariant_fk_1` (`productsID`),
  ADD KEY `productvariant_fk_2` (`attributeValuesID`),
  ADD KEY `productvariant_fk_3` (`attributesID`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`usersID`);

--
-- Chỉ mục cho bảng `vouchers`
--
ALTER TABLE `vouchers`
  ADD PRIMARY KEY (`voucherID`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `attributesvalues`
--
ALTER TABLE `attributesvalues`
  ADD CONSTRAINT `attribute_fk_1` FOREIGN KEY (`attributesID`) REFERENCES `attributes` (`attributesID`);

--
-- Các ràng buộc cho bảng `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comment_fk_1` FOREIGN KEY (`productsID`) REFERENCES `products` (`productsID`),
  ADD CONSTRAINT `comment_fk_2` FOREIGN KEY (`usersID`) REFERENCES `users` (`usersID`);

--
-- Các ràng buộc cho bảng `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD CONSTRAINT `oderdetail_fk_1` FOREIGN KEY (`odersID`) REFERENCES `orders` (`ordersID`),
  ADD CONSTRAINT `oderdetail_fk_2` FOREIGN KEY (`productsID`) REFERENCES `products` (`productsID`);

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `order_fk_1` FOREIGN KEY (`voucherID`) REFERENCES `vouchers` (`voucherID`),
  ADD CONSTRAINT `order_fk_2` FOREIGN KEY (`usersID`) REFERENCES `users` (`usersID`);

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `product_fk_1` FOREIGN KEY (`categoriesID`) REFERENCES `categories` (`categoriesID`);

--
-- Các ràng buộc cho bảng `productsimage`
--
ALTER TABLE `productsimage`
  ADD CONSTRAINT `productiamge_fk_1` FOREIGN KEY (`productsID`) REFERENCES `products` (`productsID`);

--
-- Các ràng buộc cho bảng `productsvariants`
--
ALTER TABLE `productsvariants`
  ADD CONSTRAINT `productvariant_fk_1` FOREIGN KEY (`productsID`) REFERENCES `products` (`productsID`),
  ADD CONSTRAINT `productvariant_fk_2` FOREIGN KEY (`attributeValuesID`) REFERENCES `attributesvalues` (`attributesValuesID`),
  ADD CONSTRAINT `productvariant_fk_3` FOREIGN KEY (`attributesID`) REFERENCES `attributes` (`attributesID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
