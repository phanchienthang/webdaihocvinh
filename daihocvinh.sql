-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 13, 2022 lúc 05:04 AM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `daihocvinh`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact`
--

CREATE TABLE `contact` (
  `RowID` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Phone` varchar(255) DEFAULT NULL,
  `Message` varchar(500) DEFAULT NULL,
  `IsViews` int(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `contact`
--

INSERT INTO `contact` (`RowID`, `Name`, `Email`, `Phone`, `Message`, `IsViews`, `created_at`, `updated_at`) VALUES
(1, 'Phan văn A', 'vana@gmail.com', '0', 'trang web tốt', 1, '2021-12-22 12:08:41', '2021-12-22 05:15:57');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `RowID` int(11) NOT NULL,
  `RowIDCat` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Alias` varchar(255) NOT NULL,
  `Images` varchar(255) DEFAULT NULL,
  `Status` int(1) NOT NULL DEFAULT 1,
  `MetaTitle` text NOT NULL,
  `MetaDescription` text NOT NULL,
  `SmallDescription` text NOT NULL,
  `MetaKeyword` text NOT NULL,
  `Description` text NOT NULL,
  `Views` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`RowID`, `RowIDCat`, `Name`, `Alias`, `Images`, `Status`, `MetaTitle`, `MetaDescription`, `SmallDescription`, `MetaKeyword`, `Description`, `Views`, `created_at`, `updated_at`) VALUES
(1, 1, 'Hội nghị khoa học toàn quốc về Ngư học lần thứ hai', 'hoi-nghi-khoa-hoc-toan-quoc-ve-ngu-hoc-lan-thu-hai', '20211227/860027716-hoi_nghi_hoi_ngu_hoc_10.jpg', 1, 'Hội nghị khoa học toàn quốc về Ngư học lần thứ hai', 'Hội nghị khoa học toàn quốc về Ngư học lần thứ hai', 'Sáng ngày 25/12/2021, Hội Ngư học Việt Nam thuộc Hội các ngành Sinh học Việt Nam phối hợp với Trường Đại học Vinh tổ chức Hội nghị khoa học toàn quốc về Ngư học lần thứ hai.', 'Hội nghị khoa học toàn quốc về Ngư học lần thứ hai', '<p>Tham dự c&oacute; &Ocirc;ng Trần Quốc Th&agrave;nh, Gi&aacute;m đốc sở KH&amp;CN tỉnh Nghệ An; &Ocirc;ng Đỗ Khoa Văn, Gi&aacute;m đốc sở KH&amp;CN tỉnh H&agrave; Tĩnh; đại diện l&atilde;nh đạo của c&aacute;c Chi cục, Trung t&acirc;m thuộc sở NN&amp;PTNT, sở KH&amp;CN của tỉnh Nghệ An, H&agrave; Tĩnh gồm: Chi cục thuỷ sản Nghệ An, Chi cục Th&uacute; y Nghệ An, Chi cục quản l&yacute; n&ocirc;ng l&acirc;m thuỷ sản Nghệ An, Trung t&acirc;m Khuyến n&ocirc;ng Nghệ An, Trung t&acirc;m giống thuỷ sản Nghệ an, Trung t&acirc;m ứng dụng KH&amp;CN tỉnh Nghệ An v&agrave; H&agrave; Tĩnh; đại diện c&aacute;c ph&ograve;ng N&ocirc;ng nghiệp của c&aacute;c huyện/thị x&atilde;: Quỳnh Lưu, Diễn Ch&acirc;u, Ho&agrave;ng Mai, Nghi Lộc của tỉnh Nghệ An, ph&ograve;ng N&ocirc;ng nghiệp huyện Nghi Xu&acirc;n, tỉnh H&agrave; Tĩnh. Về ph&iacute;a Hội Ngư học Việt Nam c&oacute; PGS.TS. Nguyễn Xu&acirc;n Huấn, Nguy&ecirc;n Trưởng Khoa Sinh học, Trường ĐH KHTN - ĐHQGHN, Chủ tịch Hội; PGS.TS. Trần Đức Hậu, Ph&oacute; Chủ tịch Hội; TS. Nguyễn Th&agrave;nh Nam, Tổng thư k&yacute;; c&aacute;c đồng ch&iacute; trong Ban Chấp h&agrave;nh Hội v&agrave; đ&ocirc;ng đảo hội vi&ecirc;n Hội Ngư học Việt Nam. Về ph&iacute;a Trường Đại học Vinh c&oacute; GS.TS. Nguyễn Huy Bằng, Hiệu trưởng, Chủ tịch Hội đồng Khoa học v&agrave; Đ&agrave;o tạo; TS. Nguyễn Thị Thu C&uacute;c, Ph&oacute; Hiệu trưởng; TS. Nguyễn Đ&igrave;nh Vinh, Viện trưởng Viện N&ocirc;ng nghiệp v&agrave; T&agrave;i nguy&ecirc;n; đại diện l&atilde;nh đạo c&aacute;c đơn vị thuộc v&agrave; trực thuộc của Trường Đại học Vinh v&agrave; to&agrave;n thể c&aacute;n bộ giảng vi&ecirc;n của Viện N&ocirc;ng nghiệp v&agrave; T&agrave;i nguy&ecirc;n. Tham dự Hội nghị c&ograve;n c&oacute; đại diện c&aacute;c doanh nghiệp, nh&agrave; t&agrave;i trợ ch&iacute;nh cho Hội nghị: C&ocirc;ng ty Cổ phần thức ăn chăn nu&ocirc;i CP Việt Nam; C&ocirc;ng ty Unipresident Việt Nam; C&ocirc;ng ty TNHH SITTO Việt Nam; C&ocirc;ng ty Grobest Việt Nam; C&ocirc;ng ty TNHH thủy sản To&agrave;n Cầu; C&ocirc;ng ty Cổ phần Thuỷ san Th&ocirc;ng Thuận; C&ocirc;ng ty Nước giải kh&aacute;t Coca Cola Việt Nam.</p>', 0, '2021-12-27 00:23:10', '2021-12-27 00:23:10'),
(4, 1, 'Hội nghị đại biểu viên chức, người lao động năm 2021', 'hoi-nghi-dai-bieu-vien-chuc-nguoi-lao-dong-nam-2021', '20211227/654382609-hn_vcnld_2021_1.jpg', 1, 'Hội nghị đại biểu viên chức, người lao động năm 2021', 'Hội nghị đại biểu viên chức, người lao động năm 2021', 'Thực hiện kế hoạch năm học 2021 - 2022 và Kế hoạch số 98/KH-ĐHV ngày 18/10/2021 về việc tổ chức Hội nghị cán bộ, viên chức và duyệt kế hoạch năm 2022, sáng ngày 24/12/2021, Trường Đại học Vinh tổ chức Hội nghị đại biểu viên chức, người lao động năm 2021.', 'Hội nghị đại biểu viên chức, người lao động năm 2021', '<p>Tham dự Hội nghị c&oacute; 220 đại biểu l&agrave; c&aacute;c đồng ch&iacute;: B&iacute; thư Đảng uỷ, Chủ tịch Hội đồng trường, Hiệu trưởng, Ph&oacute; Hiệu trưởng, Thư k&yacute; Hội đồng trường, Chủ tịch C&ocirc;ng đo&agrave;n trường, Trưởng ban Thanh tra nh&acirc;n d&acirc;n trường, B&iacute; thư Đo&agrave;n trường, Chủ tịch Hội Sinh vi&ecirc;n trường, Chủ tịch Hội Cựu chiến binh trường, Trưởng ban nữ c&ocirc;ng trường v&agrave; đại biểu bầu từ c&aacute;c đơn vị đại diện cho hơn 1.036 vi&ecirc;n chức, người lao động to&agrave;n trường về tham dự Hội nghị.</p>', 0, '2021-12-27 00:36:09', '2021-12-27 00:36:09'),
(5, 1, 'Đoàn Trường Đại học Vinh tuyên dương “Điển hình thanh niên dân tộc thiểu số, tôn giáo năm 2021”', 'doan-truong-dai-hoc-vinh-tuyen-duong-“dien-hinh-thanh-nien-dan-toc-thieu-so-ton-giao-nam-2021”', '20211228/486783582-116a5053.jpg', 1, 'Đoàn Trường Đại học Vinh tuyên dương “Điển hình thanh niên dân tộc thiểu số, tôn giáo năm 2021”', 'Đoàn Trường Đại học Vinh tuyên dương “Điển hình thanh niên dân tộc thiểu số, tôn giáo năm 2021”', 'Thiết thực chào mừng kỷ niệm 70 năm Ngày truyền thống học sinh sinh viên và Hội Sinh viên Việt Nam, chúc mừng giáng sinh 2021 và chào đón năm mới 2022, tối ngày 21/12/2021, Ban Thường vụ Đoàn Trường Đại học Vinh tổ chức Lễ tuyên dương “Điển hình thanh niên dân tộc thiểu số, tôn giáo năm 2021”.', 'Đoàn Trường Đại học Vinh tuyên dương “Điển hình thanh niên dân tộc thiểu số, tôn giáo năm 2021”', '<p>Tham dự c&oacute; ThS Nguyễn Hồng Soa - Ủy vi&ecirc;n Bn Thường vụ, Trưởng Ban Tuy&ecirc;n gi&aacute;o Đảng ủy trường, Trưởng Ph&ograve;ng H&agrave;nh ch&iacute;nh Tổng hợp; ThS Mai Xu&acirc;n Nguy&ecirc;n - Ph&oacute; Trưởng Ph&ograve;ng CTCT-HSSV; TS. Thiều Đ&igrave;nh Phong - UV BTV Tỉnh đo&agrave;n, Đảng ủy vi&ecirc;n, Trưởng ph&ograve;ng Tổ chức C&aacute;n bộ, B&iacute; thư Đo&agrave;n trường;&nbsp;ThS. Nguyễn Thị H&agrave; Giang - Ủy vi&ecirc;n BCH Tỉnh đo&agrave;n Nghệ An, Ph&oacute; Trưởng Ban D&acirc;n vận Đảng ủy trường; Ph&oacute; B&iacute; thư Đo&agrave;n Trường Đại học Vinh; ThS.&nbsp;&nbsp;Nguyễn Th&aacute;i Dũng - Ph&oacute; B&iacute; thư Đo&agrave;n trường; đồng ch&iacute; Kiều Kh&aacute;nh Linh - Ủy vi&ecirc;n BCH TW Hội Sinh vi&ecirc;n Việt Nam, Ph&oacute; Chủ tịch Hội Sinh vi&ecirc;n tỉnh, Chủ tịch Hội Sinh vi&ecirc;n trường; c&aacute;c đồng ch&iacute; l&agrave; Ủy vi&ecirc;n BTV Đo&agrave;n trường, Ban Thư k&yacute; Hội Sinh vi&ecirc;n trường, B&iacute; thư đo&agrave;n trường thuộc/trực thuộc, đo&agrave;n viện, li&ecirc;n chi đo&agrave;n, Chủ tịch Hội Sinh vi&ecirc;n c&aacute;c trường thuộc, Li&ecirc;n chi hội trưởng c&aacute;c khoa viện; c&aacute;c đồng ch&iacute; c&aacute;n bộ Đo&agrave;n - Hội chủ chốt c&aacute;c trường thuộc/trực thuộc, khoa viện đ&agrave;o tạo v&agrave; hơn 300 c&aacute;n bộ Đo&agrave;n - Hội kết nối tr&ecirc;n ứng dụng trực tuyến<em>&nbsp;</em>Microsoft Teams<em>&nbsp;</em>với điểm cầu ch&iacute;nh tại Hội Trường A - Trường Đại học Vinh.</p>\r\n\r\n<p>Lễ tuy&ecirc;n dương &ldquo;Điển h&igrave;nh thanh ni&ecirc;n d&acirc;n tộc thiểu số, t&ocirc;n gi&aacute;o năm 2021 nhằm động vi&ecirc;n, kh&iacute;ch lệ những tấm gương điển h&igrave;nh học sinh, sinh vi&ecirc;n d&acirc;n tộc, t&ocirc;n gi&aacute;o c&oacute; th&agrave;nh t&iacute;ch cao trong học tập, r&egrave;n luyện v&agrave; c&aacute;c hoạt động Đo&agrave;n - Hội, tạo sức lan tỏa để trở th&agrave;nh những học sinh sinh vi&ecirc;n ưu t&uacute;, những con người c&oacute; &iacute;ch cho x&atilde; hội.</p>\r\n\r\n<p>Ph&aacute;t biểu tại buổi lễ, ThS. Nguyễn Hồng Soa - Ủy vi&ecirc;n Ban Thường vụ, Trưởng Ban Tuy&ecirc;n gi&aacute;o Đảng ủy trường, Trưởng Ph&ograve;ng H&agrave;nh ch&iacute;nh Tổng hợp thay mặt Nh&agrave; trường ghi nhận v&agrave; biểu dương những th&agrave;nh t&iacute;ch v&agrave; đ&oacute;ng g&oacute;p t&iacute;ch cực của c&aacute;c điển h&igrave;nh thanh ni&ecirc;n d&acirc;n tộc thiểu số, t&ocirc;n gi&aacute;o đ&atilde; đạt được, đ&aacute;nh gi&aacute; cao c&ocirc;ng t&aacute;c tổ chức của Đo&agrave;n Thanh ni&ecirc;n - Hội Sinh vi&ecirc;n với việc quan t&acirc;m, đồng h&agrave;nh với ĐVTN trong học tập, r&egrave;n luyện v&agrave; nghi&ecirc;n cứu khoa học.</p>\r\n\r\n<p>Đồng ch&iacute; cũng mong muốn những điển h&igrave;nh thanh ni&ecirc;n d&acirc;n tộc thiểu số, t&ocirc;n gi&aacute;o được vinh danh trong lễ tuy&ecirc;n dương n&agrave;y, sẽ tiếp th&ecirc;m niềm tin, động lực với &yacute; thức tr&aacute;ch nhiệm, ra sức học tập v&agrave; r&egrave;n luyện hơn nữa, ph&aacute;t huy vai tr&ograve; xung k&iacute;ch t&igrave;nh nguyện của tuổi trẻ Nh&agrave; trường.</p>', 0, '2021-12-27 20:32:10', '2021-12-27 20:32:10'),
(6, 2, 'Giới thiệu', 'gioi-thieu', '20211228/705395497-Top web.jpg', 1, 'Giới thiệu', 'Giới thiệu', 'SỨ MẠNG: Trường Đại học Vinh là cơ sở giáo dục đại học đào tạo nguồn nhân lực chất lượng cao; là trung tâm đào tạo, bồi dưỡng giáo viên, nghiên cứu khoa học giáo dục, khoa học cơ bản, ứng dụng và chuyển giao công nghệ hàng đầu của khu vực Bắc Trung Bộ và cả nước, luôn hướng tới sự thành đạt của người học.', 'Giới thiệu', '<p><strong>TẦM NH&Igrave;N:</strong><strong>&nbsp;</strong>Trường Đại học Vinh trở th&agrave;nh Đại học Vinh trọng điểm quốc gia, th&agrave;nh vi&ecirc;n của Mạng lưới c&aacute;c trường đại học ASEAN.</p>\r\n\r\n<p><strong>&nbsp;</strong></p>\r\n\r\n<p><strong>MỤC TI&Ecirc;U TỔNG QU&Aacute;T:</strong><strong>&nbsp;</strong>Tạo dựng m&ocirc;i trường học thuật tốt để h&igrave;nh th&agrave;nh, ph&aacute;t triển phẩm chất v&agrave; năng lực c&aacute; nh&acirc;n, hướng tới sự th&agrave;nh c&ocirc;ng.</p>\r\n\r\n<p><strong>&nbsp;</strong></p>\r\n\r\n<p><strong>GI&Aacute; TRỊ CỐT L&Otilde;I</strong></p>\r\n\r\n<p><strong>&nbsp;</strong></p>\r\n\r\n<p><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Trung thực&nbsp;</strong><em>(Honesty)</em></p>\r\n\r\n<p><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tr&aacute;ch nhiệm&nbsp;</strong><em>(Accountability)</em></p>\r\n\r\n<p><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Say m&ecirc;&nbsp;</strong><em>(Passion)</em></p>\r\n\r\n<p><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; S&aacute;ng tạo&nbsp;</strong><em>(Creativity)</em></p>\r\n\r\n<p><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Hợp t&aacute;c&nbsp;</strong><em>(</em><em>Collaboration)</em></p>\r\n\r\n<p><em>&nbsp;</em></p>\r\n\r\n<p><strong>TRIẾT L&Yacute; GI&Aacute;O DỤC</strong></p>\r\n\r\n<p><strong>&nbsp;</strong></p>\r\n\r\n<p><strong>HỢP T&Aacute;C -&nbsp; S&Aacute;NG TẠO</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Trường Đại học Vinh x&aacute;c định&nbsp;<strong><em>Hợp t&aacute;c</em></strong><em>&nbsp;(Collaboration)</em>&nbsp;trong m&ocirc;i trường học thuật, đa văn h&oacute;a l&agrave; sự kết nối, tương t&aacute;c v&agrave; cộng hưởng năng lực giữa c&aacute;c c&aacute; nh&acirc;n v&agrave; giữa c&aacute;c đơn vị, tổ chức để tạo n&ecirc;n sự ph&aacute;t triển.&nbsp;<em>Hợp t&aacute;c</em>&nbsp;l&agrave; t&ocirc;n trọng sự kh&aacute;c biệt, sự ph&aacute;t triển tự do của mỗi con người, thể hiện t&iacute;nh nh&acirc;n văn.&nbsp;<em>Hợp t&aacute;c</em>&nbsp;l&agrave; con đường để c&ugrave;ng ph&aacute;t triển v&agrave; đảm bảo lợi &iacute;ch h&agrave;i h&ograve;a của c&aacute;c b&ecirc;n li&ecirc;n quan.</p>\r\n\r\n<p>Nh&agrave; trường tạo dựng m&ocirc;i trường hợp t&aacute;c để thực hiện c&aacute;c hoạt động đ&agrave;o tạo, nghi&ecirc;n cứu khoa học v&agrave; phục vụ cộng đồng. Người học được khuyến kh&iacute;ch ph&aacute;t triển năng lực hợp t&aacute;c th&ocirc;ng qua chương tr&igrave;nh đ&agrave;o tạo với c&aacute;c phương ph&aacute;p dạy học t&iacute;ch cực ch&uacute; trọng đến năng lực hợp t&aacute;c</p>\r\n\r\n<p>Trường Đại học Vinh coi&nbsp;<strong><em>S&aacute;ng tạo</em></strong><em>&nbsp;(Creativity)</em>&nbsp;l&agrave; năng lực cốt l&otilde;i nhất của mỗi c&aacute; nh&acirc;n, đảm bảo cho sự th&agrave;nh c&ocirc;ng trong nghề nghiệp v&agrave; cuộc sống trong bối cảnh thay đổi v&agrave; sự vận động của C&aacute;ch mạng c&ocirc;ng nghiệp 4.0, đảm bảo khả năng học suốt đời.&nbsp;<em>S&aacute;ng tạo</em>&nbsp;l&agrave; tạo ra những tri thức v&agrave; gi&aacute; trị mới.&nbsp;<em>S&aacute;ng tạo</em>&nbsp;l&agrave; d&aacute;m nghĩ, d&aacute;m l&agrave;m, say m&ecirc; nghi&ecirc;n cứu, kh&aacute;m ph&aacute;, v&agrave; kh&ocirc;ng ngừng cải tiến.</p>\r\n\r\n<p>Nh&agrave; trường đ&agrave;o tạo người học trở th&agrave;nh người lao động s&aacute;ng tạo th&ocirc;ng qua qu&aacute; tr&igrave;nh&nbsp;<em>&quot;h&igrave;nh th&agrave;nh &yacute; tưởng - thiết kế - triển khai - vận h&agrave;nh&quot;</em>&nbsp;trong c&aacute;c hoạt động nghề nghiệp, c&oacute; khả năng th&iacute;ch ứng cao trong thế giới việc l&agrave;m.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>CH&Iacute;NH S&Aacute;CH ĐẢM BẢO CHẤT LƯỢNG</strong></p>\r\n\r\n<p>Trường Đại học Vinh cam kết cung cấp cho x&atilde; hội nguồn nh&acirc;n lực chất lượng cao, đảm bảo c&aacute;c c&ocirc;ng tr&igrave;nh nghi&ecirc;n cứu khoa học c&oacute; chất lượng v&agrave; chuyển giao c&aacute;c kết quả nghi&ecirc;n cứu ứng dụng cho c&aacute;c tổ chức, địa phương bằng c&aacute;c biện ph&aacute;p:</p>\r\n\r\n<p>1. Kh&ocirc;ng ngừng cải tiến chất lượng tr&ecirc;n cơ sở đổi mới chương tr&igrave;nh đ&agrave;o tạo v&agrave; phương ph&aacute;p dạy học;&nbsp;</p>\r\n\r\n<p>2. Tạo m&ocirc;i trường học tập, nghi&ecirc;n cứu v&agrave; điều kiện l&agrave;m việc cho người học, giảng vi&ecirc;n v&agrave; c&aacute;n bộ vi&ecirc;n chức của Nh&agrave; trường, lấy người học l&agrave;m trung t&acirc;m, đội ngũ giảng vi&ecirc;n l&agrave; nguồn lực cốt l&otilde;i trong hoạt động đ&agrave;o tạo v&agrave; nghi&ecirc;n cứu khoa học;</p>\r\n\r\n<p>3. Thường xuy&ecirc;n đ&aacute;nh gi&aacute; v&agrave; cải tiến c&aacute;ch thức, phương ph&aacute;p quản l&yacute; nhằm n&acirc;ng cao hiệu lực, hiệu quả quản l&yacute; hoạt động của Nh&agrave; trường.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>*</p>\r\n\r\n<p>*&nbsp;&nbsp;&nbsp;&nbsp; *</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>TRƯỜNG ĐẠI HỌC VINH GIỚI THIỆU</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Trường Đại học Vinh được th&agrave;nh lập từ năm 1959. Trải qua 60 năm x&acirc;y dựng v&agrave; ph&aacute;t triển, từ một trường đại học sư phạm đến nay Trường đ&atilde; trở th&agrave;nh một trường đại học đa ng&agrave;nh v&agrave; đa lĩnh vực. Nh&agrave; trường vinh dự l&agrave; trường đại học đầu ti&ecirc;n của Trung ương đ&oacute;ng tr&ecirc;n qu&ecirc; hương Chủ tịch Hồ Ch&iacute; Minh vĩ đại, mảnh đất địa linh nh&acirc;n kiệt, c&oacute; truyền thống hiếu học, y&ecirc;u nước v&agrave; c&aacute;ch mạng.</p>\r\n\r\n<p>Ra đời trong những năm th&aacute;ng &aacute;c liệt của cuộc kh&aacute;ng chiến chống Mỹ cứu nước, Trường Đại học Vinh đ&atilde; trải qua những chặng đường ph&aacute;t triển v&ocirc; c&ugrave;ng gian khổ nhưng cũng rất đỗi vinh quang. Trong cuộc chiến tranh ph&aacute; hoại của Đế quốc Mỹ g&acirc;y ra đối với Miền Bắc, Nh&agrave; trường đ&atilde; trải qua 8 năm sơ t&aacute;n, gian nan tột bậc, chịu tổn thất nặng nề nhất trong hệ thống c&aacute;c trường đại học. Đến năm 1973, Nh&agrave; trường mới quay trở lại th&agrave;nh phố Vinh v&agrave; phải x&acirc;y dựng lại ho&agrave;n to&agrave;n. Trong những năm th&aacute;ng kh&oacute; khăn chung của đất nước trước đổi mới, Nh&agrave; trường đ&atilde; ra sức khắc phục mọi kh&oacute; khăn, thử th&aacute;ch, bằng &yacute; ch&iacute; tự lực tự cường, d&ugrave; trong bất cứ ho&agrave;n cảnh n&agrave;o cũng thi đua dạy tốt, học tốt. Từ những năm 1990, tiếp thu tinh thần đổi mới của Đảng, đường lối, ch&iacute;nh s&aacute;ch của Nh&agrave; nước, Nh&agrave; trường đ&atilde; từng bước ổn định v&agrave; mở rộng ph&aacute;t triển theo hướng đa ng&agrave;nh. Năm 2001, ghi nhận những nỗ lực v&agrave; cố gắng của tập thể Nh&agrave; trường trong việc chuyển từ một trường đại học sư phạm trở th&agrave;nh một trường đại học đa ng&agrave;nh, đ&agrave;o tạo nh&acirc;n lực, bồi dưỡng nh&acirc;n t&agrave;i cho khu vực Bắc Trung Bộ v&agrave; cả nước, Thủ tướng Ch&iacute;nh phủ đ&atilde; quyết định đổi t&ecirc;n Trường Đại học Sư phạm Vinh th&agrave;nh Trường Đại học Vinh. Th&aacute;ng 7 năm 2011, Thủ tướng Ch&iacute;nh phủ đ&atilde; bổ sung Trường Đại học Vinh v&agrave;o danh s&aacute;ch x&acirc;y dựng th&agrave;nh trường đại học trọng điểm Quốc gia. Hiện nay, Trường Đại học Vinh l&agrave; 1 trong 8 trung t&acirc;m đ&agrave;o tạo, bồi dưỡng gi&aacute;o vi&ecirc;n v&agrave; c&aacute;n bộ quản l&yacute; gi&aacute;o dục; l&agrave; 1 trong 5 trung t&acirc;m kiểm định chất lượng gi&aacute;o dục của cả nước; l&agrave; 1 trong 10 trường tham gia Đề &aacute;n Ngoại ngữ Quốc gia. Trường được c&ocirc;ng nhận đạt ti&ecirc;u chuẩn kiểm định chất lượng gi&aacute;o dục v&agrave;o năm 2017.</p>\r\n\r\n<p>Cơ cấu tổ chức của Trường hiện c&oacute; 6 viện, 7 khoa đ&agrave;o tạo, 12 ph&ograve;ng ban, 12 trung t&acirc;m, trạm, 2 văn ph&ograve;ng đại diện với 55 ng&agrave;nh đ&agrave;o tạo đại học;&nbsp;37 chuy&ecirc;n ng&agrave;nh đ&agrave;o tạo thạc sĩ v&agrave; 17 chuy&ecirc;n ng&agrave;nh đ&agrave;o tạo tiến sĩ&nbsp;với tr&ecirc;n 40.000 sinh vi&ecirc;n, học vi&ecirc;n, nghi&ecirc;n cứu sinh.&nbsp;Trường THPT Chuy&ecirc;n trực thuộc Trường Đại học Vinh l&agrave; 1 trong 20 trường trung học phổ th&ocirc;ng c&oacute; uy t&iacute;n nhất trong cả nước. Trường Thực h&agrave;nh Sư phạm Đại học Vinh với c&aacute;c cấp học mầm non, tiểu học v&agrave; trung học cơ sở l&agrave; một trong những cơ sở gi&aacute;o dục c&oacute; uy t&iacute;n nhất tr&ecirc;n địa b&agrave;n th&agrave;nh phố Vinh.</p>\r\n\r\n<p>Từ khi th&agrave;nh lập đến nay, Nhà trường đã đào tạo và cung c&acirc;́p cho khu vực Bắc Trung B&ocirc;̣ và cả nước tr&ecirc;n 180.000 cử nh&acirc;n sư phạm, cử nh&acirc;n khoa học, kỹ sư; 13.366 thạc sĩ v&agrave; 244 tiến sĩ.&nbsp;Tỷ lệ sinh vi&ecirc;n tốt nghiệp c&oacute; việc l&agrave;m chiếm tr&ecirc;n 80%. Sinh vi&ecirc;n tốt nghiệp từ Trường Đại học Vinh được đ&agrave;o tạo to&agrave;n diện về chuy&ecirc;n m&ocirc;n nghiệp vụ, kỹ năng l&agrave;m việc, kỹ năng sống... n&ecirc;n khi ra trường sớm khẳng định được năng lực chuy&ecirc;n m&ocirc;n, được c&aacute;c nh&agrave; tuyển dụng đ&aacute;nh gi&aacute; cao. Nhiều cựu sinh vi&ecirc;n của Trường đ&atilde; trở th&agrave;nh c&aacute;c nh&agrave; khoa học, chuy&ecirc;n gia đầu ng&agrave;nh, c&aacute;n bộ quản l&yacute; tại c&aacute;c cơ sở gi&aacute;o dục, đ&agrave;o tạo, c&aacute;c viện nghi&ecirc;n cứu, c&aacute;c trung t&acirc;m khoa học, c&ocirc;ng nghệ, kinh tế lớn trong nước v&agrave; quốc tế.</p>\r\n\r\n<p>C&ugrave;ng với hoạt động đ&agrave;o tạo,&nbsp;Nh&agrave; trường lu&ocirc;n quan t&acirc;m hoạt động nghi&ecirc;n cứu khoa học v&agrave; hợp t&aacute;c quốc tế.&nbsp;Đội ngũ giảng vi&ecirc;n t&iacute;ch cực tham gia c&aacute;c dự &aacute;n khoa học - c&ocirc;ng nghệ của Ch&iacute;nh phủ, c&aacute;c đề t&agrave;i, nhiệm vụ nghi&ecirc;n cứu cấp Bộ, cấp Nh&agrave; nước. Nh&agrave; trường c&oacute; quan hệ hợp t&aacute;c đ&agrave;o tạo, nghi&ecirc;n cứu khoa học, bồi dưỡng c&aacute;n bộ với h&agrave;ng chục cơ sở gi&aacute;o dục đại học, c&aacute;c tổ chức khoa học quốc tế từ Ch&acirc;u &Acirc;u, Ch&acirc;u &Aacute;, Ch&acirc;u Mỹ v&agrave; Ch&acirc;u &Uacute;c. Trong những năm gần đ&acirc;y, Nh&agrave; trường đ&atilde; chủ tr&igrave; tổ chức nhiều hội thảo khoa học khu vực v&agrave; quốc tế; tạo lập được c&aacute;c nh&oacute;m nghi&ecirc;n cứu với c&aacute;c nh&agrave; khoa học đầu ng&agrave;nh. Chỉ t&iacute;nh trong 5 năm gần đ&acirc;y, Trường triển khai h&agrave;ng trăm đề t&agrave;i khoa học c&aacute;c cấp; tổ chức tr&ecirc;n 100 hội thảo khoa học; c&oacute; tr&ecirc;n 2.000 b&agrave;i b&aacute;o của c&aacute;n bộ được c&ocirc;ng bố ở c&aacute;c tạp ch&iacute; khoa học trong v&agrave; ngo&agrave;i nước. Trường lu&ocirc;n nằm trong tốp 10 trường đại học c&oacute; b&agrave;i c&ocirc;ng bố quốc tế nhiều nhất ở Việt Nam.</p>\r\n\r\n<p>Với phương ch&acirc;m:&nbsp;<em>&quot;Nu&ocirc;i dưỡng say m&ecirc; - Khuyến kh&iacute;ch s&aacute;ng tạo - T&ocirc;n trọng kh&aacute;c biệt - Th&uacute;c đẩy hợp t&aacute;c&quot;</em>,&nbsp;trải qua 60 năm x&acirc;y dựng v&agrave; ph&aacute;t triển, từ 17 c&aacute;n bộ giảng dạy v&agrave; một số c&aacute;n bộ h&agrave;nh ch&iacute;nh đầu ti&ecirc;n, đến nay Trường c&oacute; 1.046 c&aacute;n bộ, vi&ecirc;n chức&nbsp;(trong đ&oacute; c&oacute; 731 c&aacute;n bộ giảng dạy), 56 giảng vi&ecirc;n cao cấp, 4 gi&aacute;o sư, 59 ph&oacute; gi&aacute;o sư, 256 tiến sĩ, 504 thạc sĩ. Chất lượng đội ngũ c&aacute;n bộ hiện nay của Nh&agrave; trường đ&aacute;p ứng v&agrave; vượt mức b&igrave;nh qu&acirc;n chung của cả nước.</p>\r\n\r\n<p>Về cơ sở vật chất, với sự quan t&acirc;m đầu tư của Ch&iacute;nh phủ, Bộ Gi&aacute;o dục v&agrave; Đ&agrave;o tạo v&agrave; sự gi&uacute;p đỡ của tỉnh Nghệ An, tỉnh H&agrave; Tĩnh, Trường Đại học Vinh hiện nay c&oacute; hệ thống cơ sở vật chất hiện đại, cơ bản đ&aacute;p ứng được y&ecirc;u cầu của Nh&agrave; trường trong thời kỳ hội nhập.</p>\r\n\r\n<p>Đảng bộ Trường Đại học Vinh l&agrave; đảng bộ cơ sở trực thuộc Đảng bộ tỉnh Nghệ An. Hiện nay, Đảng bộ c&oacute;&nbsp;10 đảng bộ bộ phận, 42 chi bộ (trong đ&oacute; c&oacute; 13 chi bộ c&aacute;n bộ, 10 chi bộ học vi&ecirc;n, sinh vi&ecirc;n trực thuộc đảng bộ bộ phận, 19 chi bộ trực thuộc Đảng bộ Trường). To&agrave;n Đảng bộ c&oacute; 923 đảng vi&ecirc;n, trong đ&oacute; c&oacute; 626 c&aacute;n bộ, 297 sinh vi&ecirc;n, học vi&ecirc;n cao học.&nbsp;Đảng bộ Nh&agrave; trường nhiều năm li&ecirc;n tục được c&ocirc;ng nhận l&agrave; Đảng bộ trong sạch, vững mạnh.</p>\r\n\r\n<p>Với những kết quả to&agrave;n diện trong 60 năm x&acirc;y dựng v&agrave; ph&aacute;t triển, tập thể Nh&agrave; trường, c&aacute;c đơn vị v&agrave; c&aacute; nh&acirc;n trong Trường đ&atilde; được tặng nhiều phần thưởng cao qu&yacute;: Danh hiệu Anh h&ugrave;ng Lao động trong thời kỳ đổi mới (năm 2004), Hu&acirc;n chương Độc lập hạng Nhất (năm 2009, năm 2014), Hu&acirc;n chương Lao động hạng Nhất (năm 1992, năm 2019), Hu&acirc;n chương Lao động hạng Ba của Nước Cộng ho&agrave; d&acirc;n chủ nh&acirc;n d&acirc;n L&agrave;o (năm 2019), Hu&acirc;n chương Hữu nghị của Nước Cộng ho&agrave; d&acirc;n chủ nh&acirc;n d&acirc;n L&agrave;o (năm 2009, năm 2011 v&agrave; năm 2017) v&agrave; nhiều phần thưởng cao qu&yacute; kh&aacute;c.</p>\r\n\r\n<p>Với bề d&agrave;y truyền thống 60 năm, Nh&agrave; trường lu&ocirc;n lấy chất lượng đ&agrave;o tạo gi&aacute;o vi&ecirc;n, chất lượng của một trường sư phạm mẫu mực l&agrave;m động lực cho sự ph&aacute;t triển. Nghị quyết Đại hội Đảng bộ Trường lần thứ XXXI đ&atilde; x&aacute;c định phương hướng ph&aacute;t triển của Nh&agrave; trường trong nhiệm kỳ 2015 - 2020 l&agrave;:&nbsp;<em>&quot;Tiếp tục đổi mới căn bản, to&agrave;n diện gi&aacute;o dục v&agrave; đ&agrave;o tạo; chủ động hội nhập quốc tế; x&acirc;y dựng đội ngũ c&aacute;n bộ đủ về số lượng, đảm bảo chất lượng, đồng bộ về cơ cấu; x&acirc;y dựng Trường Đại học Vinh th&agrave;nh trường đại học trọng điểm, c&oacute; một số ng&agrave;nh đạt ti&ecirc;u chuẩn quốc tế, l&agrave; th&agrave;nh vi&ecirc;n của Mạng lưới c&aacute;c trường đại học ASEAN&quot;.</em></p>\r\n\r\n<p>Hiện nay, Nh&agrave; trường đang đổi mới căn bản c&ocirc;ng t&aacute;c tổ chức v&agrave; quản l&yacute; Nh&agrave; trường;&nbsp;đẩy mạnh t&aacute;i cấu tr&uacute;c, ứng dụng c&ocirc;ng nghệ th&ocirc;ng tin v&agrave; truyền th&ocirc;ng trong c&aacute;c hoạt động;&nbsp;triển khai x&acirc;y dựng Chiến lược ph&aacute;t triển trường giai đoạn 2018 - 2025, tầm nh&igrave;n đến năm 2030; triển khai thực hiện Chiến lược ph&aacute;t triển&nbsp;Khoa học v&agrave; C&ocirc;ng nghệ&nbsp;Trường Đại học Vinh giai đoạn 2018 - 2025;&nbsp;tiếp tục tổ chức tốt c&aacute;c hoạt động đ&agrave;o tạo;&nbsp;tổ chức triển khai x&acirc;y dựng v&agrave; ph&aacute;t triển chương tr&igrave;nh đ&agrave;o tạo đại học ch&iacute;nh quy tiếp cận CDIO;&nbsp;phối hợp để c&aacute;c cơ sở sản xuất, doanh nghiệp, c&aacute;c nh&agrave; tuyển dụng&nbsp;tham gia v&agrave;o qu&aacute; tr&igrave;nh đ&agrave;o tạo; n&acirc;ng cao chất lượng c&ocirc;ng t&aacute;c thực h&agrave;nh, th&iacute; nghiệm, thực tập nghề nghiệp cho sinh vi&ecirc;n, học vi&ecirc;n;&nbsp;thực hiện phong tr&agrave;o&nbsp;thi đua&nbsp;<em>&quot;</em><em>Đ</em><em>ổi mới, s&aacute;ng tạo trong dạy v&agrave; học&quot;</em>; hướng tới tự chủ đại học.</p>\r\n\r\n<p>Trong những năm tới, mặc dầu t&igrave;nh h&igrave;nh kinh tế, x&atilde; hội của đất nước, khu vực v&agrave; tr&ecirc;n thế giới c&ograve;n gặp nhiều kh&oacute; khăn. Song tập thể c&aacute;n bộ, vi&ecirc;n chức v&agrave; học sinh, sinh vi&ecirc;n, học vi&ecirc;n Trường Đại học Vinh vẫn lu&ocirc;n tin tưởng rằng dưới sự l&atilde;nh đạo s&aacute;ng suốt của Đảng v&agrave; Nh&agrave; nước, nhất định đất nước ch&uacute;ng ta sẽ vượt qua mọi th&aacute;ch thức, kh&oacute; khăn, tiếp tục gi&agrave;nh được nhiều thắng lợi trong sự nghiệp c&aacute;ch mạng, phần đấu sớm đưa nước ta cơ bản trở th&agrave;nh nước c&ocirc;ng nghiệp theo hướng hiện đại. Tr&ecirc;n bước đường ph&aacute;t triển mạnh mẽ của đất nước, ph&aacute;t huy truyền thống tự lực tự cường, bằng tất cả tr&iacute; tuệ, s&aacute;ng tạo v&agrave; niềm tin, Trường Đại học Vinh muốn được đ&oacute;ng g&oacute;p nhiều hơn nữa cho sự nghiệp c&aacute;ch mạng của Đảng v&agrave; của to&agrave;n d&acirc;n tộc tr&ecirc;n vị thế của đại học trọng điểm, trung t&acirc;m văn ho&aacute;, khoa học, gi&aacute;o dục của khu vực v&agrave; cả nước, xứng đ&aacute;ng l&agrave;&nbsp;<em>&quot;Ngọn cờ hồng tr&ecirc;n qu&ecirc; hương X&ocirc; Viết&quot;./.</em></p>\r\n\r\n<p>&nbsp;</p>', 0, '2021-12-27 21:05:51', '2021-12-27 21:05:51'),
(7, 4, 'Kế hoạch thi và cấp chứng chỉ tiếng Anh Khung NLNN 6 bậc dùng cho Việt Nam, đợt thi ngày 08/01/2022 tại Trường Đại học Vinh', 'ke-hoach-thi-va-cap-chung-chi-tieng-anh-khung-nlnn-6-bac-dung-cho-viet-nam-dot-thi-ngay-08012022-tai-truong-dai-hoc-vinh', '20211230/201425311-lich_thi.jpg', 1, 'Kế hoạch thi và cấp chứng chỉ tiếng Anh Khung NLNN 6 bậc dùng cho Việt Nam, đợt thi ngày 08/01/2022 tại Trường Đại học Vinh', 'Kế hoạch thi và cấp chứng chỉ tiếng Anh Khung NLNN 6 bậc dùng cho Việt Nam, đợt thi ngày 08/01/2022 tại Trường Đại học Vinh', 'Kế hoạch thi và cấp chứng chỉ tiếng Anh Khung NLNN 6 bậc dùng cho Việt Nam, đợt thi ngày 08/01/2022 tại Trường Đại học Vinh', 'Kế hoạch thi và cấp chứng chỉ tiếng Anh Khung NLNN 6 bậc dùng cho Việt Nam, đợt thi ngày 08/01/2022 tại Trường Đại học Vinh', '<h2>Trường Đại học Vinh th&ocirc;ng b&aacute;o kế hoạch tổ chức thi v&agrave; cấp chứng chỉ tiếng Anh Khung năng lực ngoại ngữ 6 bậc d&ugrave;ng cho Việt Nam đợt thi ng&agrave;y 08/01/2022 như sau:</h2>\r\n\r\n<p><strong>1. Đối tượng:&nbsp;</strong>&nbsp;Tất cả mọi đối tượng c&oacute; nhu cầu thi cấp chứng chỉ.</p>\r\n\r\n<p><strong>2. Hồ sơ đăng k&yacute;</strong></p>\r\n\r\n<p>- Phiếu đăng k&yacute; dự thi c&oacute; d&aacute;n ảnh (theo mẫu của Trường Đại học Vinh):&nbsp;<a href=\"https://vinhuni.edu.vn/DATA/0/upload/1/documents/2021/12/mau_phieu_dang_ky_du_thi_tieng_anh.docx\"><strong>TẢI TẠI Đ&Acirc;Y</strong></a></p>\r\n\r\n<p>- 02 ảnh cỡ 4 x 6cm được chụp kh&ocirc;ng qu&aacute; 06 th&aacute;ng trước ng&agrave;y đăng k&yacute; dự thi, mặt sau của ảnh ghi r&otilde; họ v&agrave; t&ecirc;n, ng&agrave;y sinh, nơi sinh.</p>\r\n\r\n<p>- 01 bản sao c&ocirc;ng chứng một trong những loại giấy tờ t&ugrave;y th&acirc;n c&ograve;n hiệu lực: chứng minh nh&acirc;n d&acirc;n, thẻ căn cước c&ocirc;ng d&acirc;n.</p>\r\n\r\n<p><strong>3. Thời gian thi tổ chức thi:</strong>&nbsp;&nbsp;<strong><em>Ng&agrave;y 08 th&aacute;ng 01 năm 2022</em></strong></p>\r\n\r\n<p><strong>4. H&igrave;nh thức thi v&agrave; định dạng đề thi:</strong>&nbsp;Thi 4 kỹ năng Nghe, N&oacute;i, Đọc, Viết tr&ecirc;n m&aacute;y t&iacute;nh</p>\r\n\r\n<p>-&nbsp;<strong>Bậc 2</strong>&nbsp;(ban h&agrave;nh theo&nbsp;Quyết định số 1481/QĐ-BGDĐT ng&agrave;y 10/5/2016 của Bộ trưởng Bộ Gi&aacute;o dục v&agrave; Đ&agrave;o tạo)</p>\r\n\r\n<p>-&nbsp;<strong>Bậc 3 đến bậc 5</strong>&nbsp;(ban h&agrave;nh theo&nbsp;Quyết định số 729/QĐ-BGDĐT ng&agrave;y 11/03/2015 của Bộ trưởng Bộ Gi&aacute;o dục v&agrave; Đ&agrave;o tạo).</p>\r\n\r\n<p><strong>5.&nbsp;&nbsp;Kinh ph&iacute; dự thi:</strong></p>\r\n\r\n<p>- Th&iacute; sinh tự do: &nbsp;1.800.000 đồng/th&iacute; sinh</p>\r\n\r\n<p>- Học sinh, sinh vi&ecirc;n ch&iacute;nh quy, học vi&ecirc;n sau đại học, c&aacute;n bộ đang học tập v&agrave; c&ocirc;ng t&aacute;c tại Trường Đại học Vinh: 1.500.000 đồng/th&iacute; sinh</p>\r\n\r\n<p><strong>6. Thời gian, địa điểm thu hồ sơ</strong></p>\r\n\r\n<p>- Thời gian thu nhận hồ sơ đăng k&yacute;: &nbsp;c&aacute;c ng&agrave;y từ thứ 2 đến thứ 6 h&agrave;ng tuần trong giờ h&agrave;nh ch&iacute;nh. Thời hạn chốt hồ sơ đăng k&yacute; trước ng&agrave;y&nbsp;<strong>28/12/2021</strong>.</p>\r\n\r\n<p>- Địa điểm thu nhận hồ sơ v&agrave; nộp kinh ph&iacute; dự thi: Trung t&acirc;m GDTX, tầng 5, nh&agrave; điều h&agrave;nh Trường Đại học Vinh, số 182. L&ecirc; Duẩn, Th&agrave;nh phố Vinh, Nghệ An.</p>\r\n\r\n<p>Th&iacute; sinh đến nộp đơn trực tiếp hoặc gửi qua đường bưu điện qua địa chỉ tr&ecirc;n.</p>\r\n\r\n<p>Li&ecirc;n hệ điện thoại tổng đ&agrave;i: 0238.3855452, số m&aacute;y lẻ 398; Di động: 0943149997</p>\r\n\r\n<p>Email:&nbsp;<a href=\"about:blank\" target=\"_blank\">dgnlnn@vinhuni.edu.vn</a>; &nbsp;Website: &nbsp;<a href=\"about:blank\" target=\"_blank\">http://dgnlnn.vinhuni.edu.vn</a>.</p>\r\n\r\n<p><strong>7. Lưu &yacute;</strong></p>\r\n\r\n<p>- Th&iacute; sinh tham gia dự thi phải mang theo giấy tờ t&ugrave;y th&acirc;n c&ograve;n hiệu lực (CMND, thẻ căn cước c&ocirc;ng d&acirc;n) để đối chiếu nhận diện v&agrave;o ph&ograve;ng thi.</p>\r\n\r\n<p>- Nh&agrave; trường chỉ tổ chức thi khi số lượng đăng k&yacute; đạt y&ecirc;u cầu theo quy định.</p>\r\n\r\n<p>-&nbsp;Th&iacute; sinh t&igrave;m hiểu th&ocirc;ng tin về lịch thi v&agrave; tra cứu kết quả thi qua trang đ&aacute;nh gi&aacute; năng lực ngoại ngữ của Trường Đại học Vinh (<a href=\"about:blank\" target=\"_blank\">http://dgnlnn.vinhuni.edu.vn</a>).</p>\r\n\r\n<p>- Căn cứ v&agrave;o t&igrave;nh h&igrave;nh diễn biến của dich bệnh Covid-19, Nh&agrave; trường sẽ c&oacute; th&ocirc;ng b&aacute;o về việc thực hiện quy định về ph&ograve;ng chống dịch đối với thi sinh khi tham gia dự thi.</p>', 0, '2021-12-30 04:58:32', '2021-12-30 04:58:32');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news_cat`
--

CREATE TABLE `news_cat` (
  `RowID` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Alias` varchar(255) NOT NULL,
  `status` int(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `news_cat`
--

INSERT INTO `news_cat` (`RowID`, `Name`, `Alias`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Trang chủ', '', 1, '2021-12-27 07:21:30', '2021-12-27 07:21:30'),
(2, 'Giới thiệu', '', 0, '2021-12-28 05:29:54', '2021-12-27 22:29:54'),
(3, 'Tin tức', '', 1, '2021-12-27 07:21:52', '2021-12-27 07:21:52'),
(4, 'Đào tạo', '', 1, '2021-12-27 07:21:52', '2021-12-27 07:21:52'),
(6, 'Khoa học - Công nghệ', '', 1, '2022-01-05 09:07:24', '2022-01-05 09:07:24');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `notification`
--

CREATE TABLE `notification` (
  `id` int(11) NOT NULL,
  `newsID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `page`
--

CREATE TABLE `page` (
  `RowID` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Font` varchar(255) DEFAULT NULL,
  `Alias` varchar(255) NOT NULL,
  `Status` int(1) DEFAULT 1,
  `Sort` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `page`
--

INSERT INTO `page` (`RowID`, `Name`, `Font`, `Alias`, `Status`, `Sort`, `created_at`, `updated_at`) VALUES
(1, 'Trang chủ', '<i class=\"fas fa-home\"></i>', '/', 1, 1, '2021-12-22 09:50:18', '2021-12-25 08:18:56'),
(2, 'Giới thiệu', NULL, 'gioi-thieu', 1, 1, '2021-12-22 09:52:15', '2021-12-25 08:19:07'),
(4, 'Tuyển sinh', NULL, 'tuyen-sinh', 1, 1, '2021-12-22 09:53:09', '2021-12-25 08:19:30'),
(5, 'Đào tạo', NULL, 'dao-tao', 1, 1, '2021-12-22 09:53:09', '2021-12-25 08:19:38'),
(10, 'Khoa học - Công nghệ', NULL, 'khoa-hoc-cong-nghe', 1, 1, '2022-01-05 09:10:55', '2022-01-05 09:12:40'),
(11, 'Elearing', NULL, 'elearing', 1, 1, '2022-01-05 09:16:42', '2022-01-05 09:17:16'),
(12, 'Liên hệ', NULL, 'lien-he', 1, 1, '2022-01-05 09:16:42', '2022-01-05 09:17:19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `social`
--

CREATE TABLE `social` (
  `RowID` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Font` varchar(255) DEFAULT NULL,
  `Alias` varchar(255) NOT NULL,
  `Status` int(1) DEFAULT 1,
  `Sort` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `social`
--

INSERT INTO `social` (`RowID`, `Name`, `Font`, `Alias`, `Status`, `Sort`, `created_at`, `updated_at`) VALUES
(1, 'Facebook', '<i class=\"fab fa-facebook\"></i>', '', 1, 1, '2021-12-22 10:23:19', '2021-12-22 10:23:19'),
(2, 'Instagram', '<i class=\"fab fa-facebook\"></i>', '', 1, 2, '2021-12-22 10:23:19', '2021-12-22 10:25:54'),
(3, 'Twitter', '<i class=\"fab fa-twitter\"></i>', '', 1, 3, '2021-12-22 10:25:10', '2021-12-22 10:25:59'),
(4, 'Youtube', '<i class=\"fab fa-youtube\"></i>', '', 1, 4, '2021-12-22 10:25:10', '2021-12-22 10:26:51');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `system`
--

CREATE TABLE `system` (
  `RowID` int(11) NOT NULL,
  `Status` int(1) DEFAULT 1,
  `Code` varchar(255) DEFAULT NULL,
  `Description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `system`
--

INSERT INTO `system` (`RowID`, `Status`, `Code`, `Description`, `created_at`, `updated_at`) VALUES
(1, 1, 'logo', 'vu-logo.png', '2021-12-22 08:43:29', '2022-01-05 02:05:16'),
(2, 1, 'favicon', 'logo.png', '2021-12-22 08:43:29', '2021-12-26 22:42:12'),
(3, 1, 'name', 'Đại học Vinh', '2021-12-22 08:44:50', '2022-01-05 02:05:16'),
(4, 1, 'email', 'daihocvinh@gmail.com', '2021-12-22 08:44:50', '2022-01-05 02:05:16'),
(5, 1, 'phone', '0868433545', '2021-12-22 08:46:45', '2022-01-05 02:05:16'),
(6, 1, 'address', '182  Lê Duẩn - Thành Phố Vinh - Tỉnh Nghệ An', '2021-12-22 08:46:45', '2022-01-05 02:05:16'),
(7, 1, 'Copyright', 'Bản quyền thuộc nhóm 7 phát triển ứng dụng web và php', '2021-12-22 09:05:58', '2022-01-05 02:05:16');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `level` int(11) NOT NULL DEFAULT 1,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `address` varchar(500) NOT NULL,
  `email` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `level`, `username`, `password`, `fullname`, `address`, `email`, `status`, `phone`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', '$2y$10$xSugoyKv765TY8DsERJ2/.mPIOwLNdM5Iw1n3x1XNVymBlHNG4cX6', 'Administrator', 'Nghệ An', 'admin@gmail.com', 1, '0868433545', '2021-12-21 16:17:31', '2021-12-21 21:40:14'),
(2, 2, 'seocontent', '', 'Cộng tác viên seo', 'Nghệ an', 'seocontent@gmail.com', 0, '0868433546', '2021-12-22 04:57:27', '2021-12-22 04:57:27');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users_level`
--

CREATE TABLE `users_level` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `users_level`
--

INSERT INTO `users_level` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 1, '2021-12-22 04:55:01', '2021-12-22 04:55:01'),
(2, 'SeoContent', 1, '2021-12-22 04:55:01', '2021-12-22 04:55:01');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`RowID`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`RowID`);

--
-- Chỉ mục cho bảng `news_cat`
--
ALTER TABLE `news_cat`
  ADD PRIMARY KEY (`RowID`);

--
-- Chỉ mục cho bảng `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`RowID`);

--
-- Chỉ mục cho bảng `social`
--
ALTER TABLE `social`
  ADD PRIMARY KEY (`RowID`);

--
-- Chỉ mục cho bảng `system`
--
ALTER TABLE `system`
  ADD PRIMARY KEY (`RowID`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users_level`
--
ALTER TABLE `users_level`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `contact`
--
ALTER TABLE `contact`
  MODIFY `RowID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `RowID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `news_cat`
--
ALTER TABLE `news_cat`
  MODIFY `RowID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `page`
--
ALTER TABLE `page`
  MODIFY `RowID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `social`
--
ALTER TABLE `social`
  MODIFY `RowID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `system`
--
ALTER TABLE `system`
  MODIFY `RowID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `users_level`
--
ALTER TABLE `users_level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
