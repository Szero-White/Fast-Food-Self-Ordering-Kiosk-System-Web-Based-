-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2026 at 03:51 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web_sqli`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_status` int(11) NOT NULL,
  `security_question` varchar(255) DEFAULT 'Thú cưng yêu thích của bạn là gì?',
  `security_answer` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `username`, `password`, `admin_status`, `security_question`, `security_answer`) VALUES
(4, 'toan', 'e10adc3949ba59abbe56e057f20f883e', 2, 'Thú cưng yêu thích của bạn là gì?', 'd077f244def8a70e5ea758bd8352fcd8');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_baiviet`
--

CREATE TABLE `tbl_baiviet` (
  `id_bv` int(11) NOT NULL,
  `tenbaiviet` varchar(200) NOT NULL,
  `tomtat` longtext NOT NULL,
  `noidung` longtext NOT NULL,
  `hinhanh` varchar(100) NOT NULL,
  `id_danhmuc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_baiviet`
--

INSERT INTO `tbl_baiviet` (`id_bv`, `tenbaiviet`, `tomtat`, `noidung`, `hinhanh`, `id_danhmuc`) VALUES
(11, '[-50% MENU GÀ ĐẪM XỐT & FREESHIP]', '🥰 HÈ THANH NHẸ CÙNG MÓN CHAY THANH ĐẠM 🌱 Với Menu món chay phong phú, Domino’s tin rằng các tín đồ Pizza sẽ có được những bữa ăn thật ngon miệng mà vẫn đủ đầy dinh dưỡng!!!', '🍗 Các Combo tối no nê với Cơm, Burger, Mì Ý, Gà Rán,... giá chỉ từ 79K/ combo\n⏰ Ưu đãi chỉ áp dụng vào khung giờ tối 17h00 đến 20h30 mỗi ngày - Kéo dài đến hết 30/06/2024', '1716382944_444904528_848747063963804_6384847408864211872_n.jpg', 12),
(13, '🎈QUẨY TIỆC LỚN NHỎ, CÓ KFC LO! ️🎊', 'Ưu đãi rõ ràng thế này thì đơn giản thôi: Thứ 3 & Thứ 5 Mua 1 Tặng 1 Pizza Tụ tập gia đình hay hội ngộ bạn bè, có KFC, gặp mặt đã vui thưởng gà thêm nhiệt\n🎉 Chiết khấu lên đến 20%\n🎉 Miễn phí giao hàng', 'Tụ tập gia đình hay hội ngộ bạn bè, có KFC, gặp mặt đã vui thưởng gà thêm nhiệt\n🎉 Chiết khấu lên đến 20%\n🎉 Miễn phí giao hàng', '1716387211_443845123_845179787653865_6063365132974545575_n.jpg', 12),
(14, '🎊 BỪNG TIỆC GÀ RÁN, SINH NHẬT HOÀNH TRÁNG ️🎊', '🔥 QUẨY CÙNG CHEER TEAM\n🔥 CHỚP QUÀ SIÊU XỊNNN', '🔥 QUẨY CÙNG CHEER TEAM\n🔥 CHỚP QUÀ SIÊU XỊNNN\n🎊 Hè nắng nóng quá đi, nhưng vẫn không là gì so với độ nóng của đội Cheer Team nhà Hut. Đặc biệt, mỗi khi Cheer Team biểu diễn thì quà tặng sẽ tung khắp lối.', '1624437657500_540.png', 12),
(15, 'GIẢM 50% TỔNG HÓA ĐƠN & FREESHIP', '⏰ LAST CALL SUMMER DEAL\r\n CHILL TIỆC NHIỀU MÓN ĐỈNH 🔥🔥🔥', '💪 THỬ TÀI BÉ YÊU, TẾT THIẾU NHI Ý NGHĨA 💞\n🤩 Cơ hội để bé thỏa sức vui chơi & có thêm trải nghiệm mới dịp 1/6 này với chương trình “Bé Học Làm Đầu Bếp Pizza”', '1716389147_OIP.jpg', 10),
(16, '🌈 TIỆC BẾ GIẢNG, THÊM HOÀNH TRÁNG VỚI COMBO CHỈ TỪ 299K ', '🚨 CẢNH BÁO, HÌNH ẢNH NÀY PHÁT RA ĐỘ NGONNN\r\n🤤 Ăn Pizza là phải tươi rói & ngon lành cỡ này nè cả nhà ơi', '🚨 CẢNH BÁO, HÌNH ẢNH NÀY PHÁT RA ĐỘ NGONNN\r\n🤤 Ăn Pizza là phải tươi rói & ngon lành cỡ này nè cả nhà ơi', '441526081_848742820630895_3442272778759241973_n.jpg', 12),
(17, 'Menu CP Five Star – Gà rán, xúc xích và món ăn vặt hấp dẫn', 'Menu CP Five Star mang đến nhiều lựa chọn hấp dẫn như gà rán giòn, xúc xích, chả cá xiên que và các món ăn nhẹ. Giá cả hợp lý, phù hợp với học sinh, sinh viên và những ai yêu thích đồ ăn nhanh.', 'CP Five Star là thương hiệu đồ ăn nhanh quen thuộc với nhiều món ăn ngon, tiện lợi và giá cả phải chăng. Menu đa dạng từ các món xiên que đến gà rán giòn rụm, đáp ứng nhu cầu ăn nhanh và thưởng thức tại chỗ.\r\n\r\n🌭 Xúc xích và món xiên\r\nXúc xích SUMO: 10.000đ/que\r\nXúc xích HORAPA: 15.000đ/que\r\nXúc xích CORN-TORPEDO: 10.000đ/que\r\nXúc xích hồ lô: 10.000đ/que\r\nXúc xích phô mai: 8.000đ/que\r\nChả cá que: 8.000đ/que\r\nChả gà xiên que: 16.000đ/que\r\nChả kỳ cá: 15.000đ/que\r\nCá viên / bò viên / tàu hũ cá: 8.000đ/que\r\n🍗 Gà rán\r\nGà truyền thống:\r\nĐùi góc tư: 40.000đ\r\nCánh gà: 23.000đ\r\nSườn gà: 20.000đ\r\nĐùi Chicky: 24.000đ/cái\r\nGà giòn cay: 28.000đ/miếng\r\nCánh teen teen: 23.000đ/cái\r\nGà xù vàng: 25.000đ/miếng\r\nGà ZO ZO giòn: 28.000đ/miếng\r\nGà giòn giòn: 28.000đ/miếng\r\n🧀 Món đặc biệt\r\nGà phô mai: 45.000đ/miếng\r\nGà Taekbak: 25.000đ/miếng\r\n🍟 Món ăn nhẹ\r\nKhoai tây lắc (phô mai / rong biển): 15.000đ/phần\r\nBánh bao: từ 7.000đ – 15.000đ/cái\r\nChân gà chiên giòn: 10.000đ/cặp', '1777935659_foody-ga-ran-five-star-doi-can-357-637353448397244485.jpeg', 12),
(18, 'Combo siêu ngon siêu hấp dẫn thèm chảy nước miếng', 'Không ngon cũng lấy hết xiền, ăn mặc thả ga, ngồi cười la lết ', 'Không ngon cũng lấy hết xiền, ăn mặc thả ga, ngồi cười la lết thức ăn ngon hết sảy con bà bảy', '1777937895_1551666192189_540.png', 16),
(19, 'Freeship cả năm – 365 ngày hoàn tiền hấp dẫn từ VPBank Shopee', 'Chương trình ưu đãi từ VPBank Shopee mang đến nhiều quyền lợi hấp dẫn như hoàn tiền mọi chi tiêu, miễn phí vận chuyển cả năm và nhiều quà tặng online. Đăng ký nhanh chóng, mở thẻ miễn phí và tận hưởng ưu đãi dài hạn.', 'Chương trình ưu đãi từ VPBank kết hợp cùng Shopee mang đến trải nghiệm mua sắm tiện lợi và tiết kiệm hơn bao giờ hết. Với thông điệp “Freeship cả năm – 365 ngày hoàn tiền”, người dùng có thể tận hưởng hàng loạt lợi ích khi sử dụng thẻ.\r\n\r\n💳 Quyền lợi nổi bật\r\nHoàn tiền cho mọi chi tiêu\r\nMiễn phí vận chuyển suốt 365 ngày\r\nNhận nhiều quà tặng và ưu đãi online\r\nĐăng ký mở thẻ nhanh chóng, không mất phí\r\n🎁 Ưu đãi dành cho người dùng\r\n\r\nChủ thẻ có thể sử dụng để thanh toán mua sắm trực tuyến, đặc biệt trên nền tảng Shopee, và nhận được nhiều ưu đãi độc quyền. Đây là lựa chọn phù hợp cho những ai thường xuyên mua sắm online và muốn tối ưu chi phí.\r\n\r\n⚡ Đăng ký dễ dàng\r\n\r\nViệc mở thẻ được thực hiện nhanh chóng, thao tác đơn giản, không yêu cầu thủ tục phức tạp. Người dùng có thể bắt đầu sử dụng ngay sau khi đăng ký thành công.', '1778055658_1.jpg', 10);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_chatbot_history`
--

CREATE TABLE `tbl_chatbot_history` (
  `id` int(11) NOT NULL,
  `user_message` text NOT NULL,
  `bot_response` text NOT NULL,
  `matched_keyword` varchar(255) DEFAULT NULL,
  `response_type` varchar(50) DEFAULT 'static',
  `user_ip` varchar(45) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_chatbot_history`
--

INSERT INTO `tbl_chatbot_history` (`id`, `user_message`, `bot_response`, `matched_keyword`, `response_type`, `user_ip`, `user_agent`, `created_at`) VALUES
(1, 'Khuyến mãi', '🎊 Hiện tại không có khuyến mãi nào.', 'khuyen mai', 'api_promo', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36 Edg/147.0.0.0', '2026-05-06 10:20:24'),
(2, 'Địa chỉ', '📍 Cửa hàng của chúng tôi tại: Quận 7, Thành phố Hồ Chí Minh. Hotline: 1900 6099.', 'dia chi', 'static', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36 Edg/147.0.0.0', '2026-05-06 10:20:27'),
(3, 'Khuyến mãi', '🎉 Khuyến mãi:\n1. GIẢM 50% TỔNG HÓA ĐƠN & FREESHIP\n', 'khuyen mai', 'api_promo', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36 Edg/147.0.0.0', '2026-05-06 10:24:30'),
(4, 'Giá món ăn', '🍕 Hiện tại chúng tôi có 10 món đang bán:\n1. Rice - 25,000đ\n2. Pepsi - 25,000đ\n3. Pizza Hai San - 120,000đ\n4. Salat - 45,000đ\n5. Coca Cola - 15,000đ\n... và 5 món khác!', 'thuc don', 'api_products', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36 Edg/147.0.0.0', '2026-05-06 10:24:34'),
(5, 'Thực đơn có gì?', '🍕 Hiện tại chúng tôi có 10 món đang bán:\n1. Rice - 25,000đ\n2. Pepsi - 25,000đ\n3. Pizza Hai San - 120,000đ\n4. Salat - 45,000đ\n5. Coca Cola - 15,000đ\n... và 5 món khác!', 'thuc don', 'api_products', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36 Edg/147.0.0.0', '2026-05-06 10:24:36'),
(6, 'Địa chỉ', '📍 Cửa hàng của chúng tôi tại: Quận 7, Thành phố Hồ Chí Minh. Hotline: 1900 6099.', 'dia chi', 'static', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36 Edg/147.0.0.0', '2026-05-06 10:24:42'),
(7, 'Thực đơn có gì?', '🍕 Hiện tại chúng tôi có 10 món đang bán:\n1. Rice - 25,000đ\n2. Pepsi - 25,000đ\n3. Pizza Hai San - 120,000đ\n4. Salat - 45,000đ\n5. Coca Cola - 15,000đ\n... và 5 món khác!', 'thuc don', 'api_products', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36 Edg/147.0.0.0', '2026-05-06 10:25:26'),
(8, 'hi', 'Hi! 👋 FastFood AI đây. Bạn muốn hỏi gì?', 'hi', 'static', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36 Edg/147.0.0.0', '2026-05-06 10:34:10'),
(9, 'helo', 'Xin lỗi, tôi chưa hiểu ý bạn lắm 😅 Bạn thử hỏi bằng tiếng Việt không dấu hoặc dùng các từ khóa như:<br>• \"Thực đơn có gì?\"<br>• \"Giá pizza bao nhiêu?\"<br>• \"Còn gà rán không?\"<br>• \"Khuyến mãi hiện tại\"<br>• \"Địa chỉ cửa hàng\"<br>• \"Giờ mở cửa\"', '', 'fallback', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36 Edg/147.0.0.0', '2026-05-06 10:34:14'),
(10, 'salat', 'Xin lỗi, tôi chưa hiểu ý bạn lắm 😅 Bạn thử hỏi bằng tiếng Việt không dấu hoặc dùng các từ khóa như:<br>• \"Thực đơn có gì?\"<br>• \"Giá pizza bao nhiêu?\"<br>• \"Còn gà rán không?\"<br>• \"Khuyến mãi hiện tại\"<br>• \"Địa chỉ cửa hàng\"<br>• \"Giờ mở cửa\"', '', 'fallback', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36 Edg/147.0.0.0', '2026-05-06 10:34:24'),
(11, 'có món gì ngon', 'Xin lỗi, tôi chưa hiểu ý bạn lắm 😅 Bạn thử hỏi bằng tiếng Việt không dấu hoặc dùng các từ khóa như:<br>• \"Thực đơn có gì?\"<br>• \"Giá pizza bao nhiêu?\"<br>• \"Còn gà rán không?\"<br>• \"Khuyến mãi hiện tại\"<br>• \"Địa chỉ cửa hàng\"<br>• \"Giờ mở cửa\"', '', 'fallback', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36 Edg/147.0.0.0', '2026-05-06 10:34:32'),
(12, 'Giờ mở cửa', '⏰ Cửa hàng mở cửa từ 9:00 sáng đến 22:00 tối, cả tuần kể cả ngày lễ. Đến sớm để chọn món ngon nhé!', 'gio mo cua', 'static', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36 Edg/147.0.0.0', '2026-05-06 10:34:40'),
(13, 'Còn gà rán không', 'Không tìm thấy món này.', '', 'api_stock', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36 Edg/147.0.0.0', '2026-05-06 10:34:47'),
(14, 'mon gi ngon', 'Xin lỗi, tôi chưa hiểu ý bạn lắm 😅 Bạn thử hỏi bằng tiếng Việt không dấu hoặc dùng các từ khóa như:<br>• \"Thực đơn có gì?\"<br>• \"Giá pizza bao nhiêu?\"<br>• \"Còn gà rán không?\"<br>• \"Khuyến mãi hiện tại\"<br>• \"Địa chỉ cửa hàng\"<br>• \"Giờ mở cửa\"', '', 'fallback', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36 Edg/147.0.0.0', '2026-05-06 10:34:55'),
(15, 'Thực đơn có gì', '🍕 Hiện tại chúng tôi có 10 món đang bán:\n1. Rice - 25,000đ\n2. Pepsi - 25,000đ\n3. Pizza Hai San - 120,000đ\n4. Salat - 45,000đ\n5. Coca Cola - 15,000đ\n... và 5 món khác!', 'thuc don', 'api_products', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36 Edg/147.0.0.0', '2026-05-06 10:35:05'),
(16, 'Thực đơn có gì?', '🍕 Hiện tại chúng tôi có 10 món đang bán:\n1. Salad gà giòn tươi mát - 45,000đ\n2. Rice - 25,000đ\n3. Pepsi - 25,000đ\n4. Pizza Hai San - 120,000đ\n5. Salat - 45,000đ\n... và 5 món khác!', 'thuc don', 'api_products', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36 Edg/147.0.0.0', '2026-05-06 10:37:22'),
(17, '5 món khác', 'Xin lỗi, tôi chưa hiểu ý bạn lắm 😅 Bạn thử hỏi bằng tiếng Việt không dấu hoặc dùng các từ khóa như:<br>• \"Thực đơn có gì?\"<br>• \"Giá pizza bao nhiêu?\"<br>• \"Còn gà rán không?\"<br>• \"Khuyến mãi hiện tại\"<br>• \"Địa chỉ cửa hàng\"<br>• \"Giờ mở cửa\"', '', 'fallback', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36 Edg/147.0.0.0', '2026-05-06 10:37:36'),
(18, 'Địa chỉ', '📍 Cửa hàng của chúng tôi tại: Quận 7, Thành phố Hồ Chí Minh. Hotline: 1900 6099.', 'dia chi', 'static', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36 Edg/147.0.0.0', '2026-05-06 10:52:48'),
(19, 'Địa chỉ', '📍 Cửa hàng của chúng tôi tại: Quận 7, Thành phố Hồ Chí Minh. Hotline: 1900 1234.', 'dia chi', 'static', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36 Edg/147.0.0.0', '2026-05-07 05:21:29'),
(20, 'lien he', '📞 Hotline: 1900 1234 | 📍 Địa chỉ: Quận 7, TP.HCM | 📧 Email: congtoan2k4@gmail.com', 'lien he', 'static', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36 Edg/147.0.0.0', '2026-05-07 05:21:34'),
(21, 'Khuyến mãi', '🎉 Khuyến mãi:\n1. GIẢM 50% TỔNG HÓA ĐƠN & FREESHIP\n', 'khuyen mai', 'api_promo', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36 Edg/147.0.0.0', '2026-05-07 05:36:46'),
(22, 'Địa chỉ', '📍 Cửa hàng của chúng tôi tại: Quận 7, Thành phố Hồ Chí Minh. Hotline: 1900 1234.', 'dia chi', 'static', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36 Edg/147.0.0.0', '2026-05-07 05:36:48'),
(23, 'Thực đơn có gì?', '🍕 Hiện tại chúng tôi có 10 món đang bán:\n1. Salad gà giòn tươi mát - 45,000đ\n2. Rice - 25,000đ\n3. Pepsi - 25,000đ\n4. Pizza Hai San - 120,000đ\n5. Salat - 45,000đ\n... và 5 món khác!', 'thuc don', 'api_products', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36 Edg/147.0.0.0', '2026-05-07 05:36:50'),
(24, 'Địa chỉ', '📍 Cửa hàng của chúng tôi tại: Quận 7, Thành phố Hồ Chí Minh. Hotline: 1900 6099.', 'dia chi', 'static', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36 Edg/147.0.0.0', '2026-05-07 05:43:15'),
(25, 'so dien thoai', 'Xin lỗi, tôi chưa hiểu ý bạn lắm 😅 Bạn thử hỏi bằng tiếng Việt không dấu hoặc dùng các từ khóa như:<br>• \"Thực đơn có gì?\"<br>• \"Giá pizza bao nhiêu?\"<br>• \"Còn gà rán không?\"<br>• \"Khuyến mãi hiện tại\"<br>• \"Địa chỉ cửa hàng\"<br>• \"Giờ mở cửa\"', '', 'fallback', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36 Edg/147.0.0.0', '2026-05-07 05:43:21'),
(26, 'Khuyến mãi', '🎉 Khuyến mãi:\n1. GIẢM 50% TỔNG HÓA ĐƠN & FREESHIP\n', 'khuyen mai', 'api_promo', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36 Edg/147.0.0.0', '2026-05-07 05:43:24'),
(27, 'Giá món ăn', '🍕 Hiện tại chúng tôi có 10 món đang bán:\n1. Salad gà giòn tươi mát - 45,000đ\n2. Rice - 25,000đ\n3. Pepsi - 25,000đ\n4. Pizza Hai San - 120,000đ\n5. Salat - 45,000đ\n... và 5 món khác!', 'thuc don', 'api_products', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36 Edg/147.0.0.0', '2026-05-07 05:43:26'),
(28, 'Thực đơn có gì?', '🍕 Hiện tại chúng tôi có 10 món đang bán:\n1. Salad gà giòn tươi mát - 45,000đ\n2. Rice - 25,000đ\n3. Pepsi - 25,000đ\n4. Pizza Hai San - 120,000đ\n5. Salat - 45,000đ\n... và 5 món khác!', 'thuc don', 'api_products', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36 Edg/147.0.0.0', '2026-05-07 05:43:27'),
(29, 'Thực đơn có gì?', '🍕 Hiện tại chúng tôi có 10 món đang bán:\n1. Salad gà giòn tươi mát - 45,000đ\n2. Rice - 25,000đ\n3. Pepsi - 25,000đ\n4. Pizza Hai San - 120,000đ\n5. Salat - 45,000đ\n... và 5 món khác!', 'thuc don', 'api_products', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Code/1.118.1 Chrome/142.0.7444.265 Electron/39.8.8 Safari/537.36', '2026-05-07 06:01:23'),
(30, 'Thực đơn có gì?', '🍕 Hiện tại chúng tôi có 10 món đang bán:\n1. Salad gà giòn tươi mát - 45,000đ\n2. Rice - 25,000đ\n3. Pepsi - 25,000đ\n4. Pizza Hai San - 120,000đ\n5. Salat - 45,000đ\n... và 5 món khác!', 'thuc don', 'api_products', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Code/1.118.1 Chrome/142.0.7444.265 Electron/39.8.8 Safari/537.36', '2026-05-07 06:01:24'),
(31, 'Địa chỉ', '📍 Cửa hàng của chúng tôi tại: Quận 7, Thành phố Hồ Chí Minh. Hotline: 1900 6099.', 'dia chi', 'static', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Code/1.118.1 Chrome/142.0.7444.265 Electron/39.8.8 Safari/537.36', '2026-05-07 06:01:26'),
(32, 'Giá món ăn', '🍕 Hiện tại chúng tôi có 10 món đang bán:\n1. Salad gà giòn tươi mát - 45,000đ\n2. Rice - 25,000đ\n3. Pepsi - 25,000đ\n4. Pizza Hai San - 120,000đ\n5. Salat - 45,000đ\n... và 5 món khác!', 'thuc don', 'api_products', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Code/1.118.1 Chrome/142.0.7444.265 Electron/39.8.8 Safari/537.36', '2026-05-07 06:01:26'),
(33, 'Khuyến mãi', '🎉 Khuyến mãi:\n1. GIẢM 50% TỔNG HÓA ĐƠN & FREESHIP\n', 'khuyen mai', 'api_promo', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Code/1.118.1 Chrome/142.0.7444.265 Electron/39.8.8 Safari/537.36', '2026-05-07 06:01:26'),
(34, 'Giá món ăn', '🍕 Hiện tại chúng tôi có 10 món đang bán:\n1. Salad gà giòn tươi mát - 45,000đ\n2. Rice - 25,000đ\n3. Pepsi - 25,000đ\n4. Pizza Hai San - 120,000đ\n5. Salat - 45,000đ\n... và 5 món khác!', 'thuc don', 'api_products', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Code/1.118.1 Chrome/142.0.7444.265 Electron/39.8.8 Safari/537.36', '2026-05-07 06:01:27'),
(35, 'Khuyến mãi', '🎉 Khuyến mãi:\n1. GIẢM 50% TỔNG HÓA ĐƠN & FREESHIP\n', 'khuyen mai', 'api_promo', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Code/1.118.1 Chrome/142.0.7444.265 Electron/39.8.8 Safari/537.36', '2026-05-07 06:01:27'),
(36, 'Địa chỉ', '📍 Cửa hàng của chúng tôi tại: Quận 7, Thành phố Hồ Chí Minh. Hotline: 1900 6099.', 'dia chi', 'static', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Code/1.118.1 Chrome/142.0.7444.265 Electron/39.8.8 Safari/537.36', '2026-05-07 06:01:27'),
(37, 'Giá món ăn', '🍕 Hiện tại chúng tôi có 10 món đang bán:\n1. Salad gà giòn tươi mát - 45,000đ\n2. Rice - 25,000đ\n3. Pepsi - 25,000đ\n4. Pizza Hai San - 120,000đ\n5. Salat - 45,000đ\n... và 5 món khác!', 'thuc don', 'api_products', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Code/1.118.1 Chrome/142.0.7444.265 Electron/39.8.8 Safari/537.36', '2026-05-07 06:01:28'),
(38, 'Khuyến mãi', '🎉 Khuyến mãi:\n1. GIẢM 50% TỔNG HÓA ĐƠN & FREESHIP\n', 'khuyen mai', 'api_promo', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Code/1.118.1 Chrome/142.0.7444.265 Electron/39.8.8 Safari/537.36', '2026-05-07 06:01:28'),
(39, 'Địa chỉ', '📍 Cửa hàng của chúng tôi tại: Quận 7, Thành phố Hồ Chí Minh. Hotline: 1900 6099.', 'dia chi', 'static', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36 Edg/147.0.0.0', '2026-05-07 23:41:03'),
(40, 'Thực đơn có gì?', '🍕 Hiện tại chúng tôi có 10 món đang bán:\n1. Salad gà giòn tươi mát - 45,000đ\n2. Rice - 25,000đ\n3. Pepsi - 25,000đ\n4. Pizza Hai San - 120,000đ\n5. Salat - 45,000đ\n... và 5 món khác!', 'thuc don', 'api_products', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36 Edg/147.0.0.0', '2026-05-07 23:41:03'),
(41, 'Giá món ăn', '🍕 Hiện tại chúng tôi có 10 món đang bán:\n1. Salad gà giòn tươi mát - 45,000đ\n2. Rice - 25,000đ\n3. Pepsi - 25,000đ\n4. Pizza Hai San - 120,000đ\n5. Salat - 45,000đ\n... và 5 món khác!', 'thuc don', 'api_products', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36 Edg/147.0.0.0', '2026-05-07 23:41:03'),
(42, 'Thực đơn có gì?', '🍕 Hiện tại chúng tôi có 10 món đang bán:\n1. Salad gà giòn tươi mát - 45,000đ\n2. Rice - 25,000đ\n3. Pepsi - 25,000đ\n4. Pizza Hai San - 120,000đ\n5. Salat - 45,000đ\n... và 5 món khác!', 'thuc don', 'api_products', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36 Edg/147.0.0.0', '2026-05-07 23:41:04'),
(43, 'Khuyến mãi', '🎉 Khuyến mãi:\n1. GIẢM 50% TỔNG HÓA ĐƠN & FREESHIP\n', 'khuyen mai', 'api_promo', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36 Edg/147.0.0.0', '2026-05-07 23:41:04'),
(44, 'Giá món ăn', '🍕 Hiện tại chúng tôi có 10 món đang bán:\n1. Salad gà giòn tươi mát - 45,000đ\n2. Rice - 25,000đ\n3. Pepsi - 25,000đ\n4. Pizza Hai San - 120,000đ\n5. Salat - 45,000đ\n... và 5 món khác!', 'thuc don', 'api_products', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36 Edg/147.0.0.0', '2026-05-07 23:41:05'),
(45, 'Thực đơn có gì?', '🍕 Hiện tại chúng tôi có 10 món đang bán:\n1. Salad gà giòn tươi mát - 45,000đ\n2. Rice - 25,000đ\n3. Pepsi - 25,000đ\n4. Pizza Hai San - 120,000đ\n5. Salat - 45,000đ\n... và 5 món khác!', 'thuc don', 'api_products', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36 Edg/147.0.0.0', '2026-05-07 23:41:05'),
(46, 'Địa chỉ', '📍 Cửa hàng của chúng tôi tại: Quận 7, Thành phố Hồ Chí Minh. Hotline: 1900 6099.', 'dia chi', 'static', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36 Edg/147.0.0.0', '2026-05-07 23:41:06'),
(47, 'Khuyến mãi', '🎉 Khuyến mãi:\n1. GIẢM 50% TỔNG HÓA ĐƠN & FREESHIP\n', 'khuyen mai', 'api_promo', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36 Edg/147.0.0.0', '2026-05-07 23:41:06'),
(48, 'Giá món ăn', '🍕 Hiện tại chúng tôi có 10 món đang bán:\n1. Salad gà giòn tươi mát - 45,000đ\n2. Rice - 25,000đ\n3. Pepsi - 25,000đ\n4. Pizza Hai San - 120,000đ\n5. Salat - 45,000đ\n... và 5 món khác!', 'thuc don', 'api_products', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36 Edg/147.0.0.0', '2026-05-07 23:41:07'),
(49, 'Thực đơn có gì?', '🍕 Hiện tại chúng tôi có 10 món đang bán:\n1. Salad gà giòn tươi mát - 45,000đ\n2. Rice - 25,000đ\n3. Pepsi - 25,000đ\n4. Pizza Hai San - 120,000đ\n5. Salat - 45,000đ\n... và 5 món khác!', 'thuc don', 'api_products', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36 Edg/147.0.0.0', '2026-05-07 23:41:07'),
(50, 'Địa chỉ', '📍 Cửa hàng của chúng tôi tại: Quận 7, Thành phố Hồ Chí Minh. Hotline: 1900 6099.', 'dia chi', 'static', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36 Edg/147.0.0.0', '2026-05-07 23:41:07'),
(51, 'Thực đơn có gì?', '🍕 Hiện tại chúng tôi có 10 món đang bán:\n1. Salad gà giòn tươi mát - 45,000đ\n2. Rice - 25,000đ\n3. Pepsi - 25,000đ\n4. Pizza Hai San - 120,000đ\n5. Salat - 45,000đ\n... và 5 món khác!', 'thuc don', 'api_products', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36 Edg/147.0.0.0', '2026-05-09 00:25:13'),
(52, 'Khuyến mãi', '🎉 Khuyến mãi:\n1. GIẢM 50% TỔNG HÓA ĐƠN & FREESHIP\n', 'khuyen mai', 'api_promo', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36 Edg/147.0.0.0', '2026-05-09 00:25:23');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_chitietdonhang`
--

CREATE TABLE `tbl_chitietdonhang` (
  `id` int(11) NOT NULL,
  `id_donhang` int(11) NOT NULL,
  `id_sanpham` int(11) DEFAULT NULL,
  `ten_sanpham` varchar(200) NOT NULL,
  `gia` decimal(10,2) NOT NULL,
  `soluong` int(11) NOT NULL,
  `thanhtien` decimal(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_chitietdonhang`
--

INSERT INTO `tbl_chitietdonhang` (`id`, `id_donhang`, `id_sanpham`, `ten_sanpham`, `gia`, `soluong`, `thanhtien`) VALUES
(29, 15, 31, 'Salat', 45000.00, 1, 45000.00),
(30, 16, 31, 'Salat', 45000.00, 1, 45000.00),
(31, 16, 20, '5 - Tenders', 25000.00, 1, 25000.00),
(32, 16, 38, 'Rice', 25000.00, 1, 25000.00),
(33, 17, 21, 'Trà Đào', 25000.00, 1, 25000.00),
(34, 17, 3, '2 Viên Khoai Môn', 60000.00, 1, 60000.00),
(35, 18, 2, '1 Bánh Trứng', 6000.00, 6, 36000.00),
(36, 19, 39, 'Salad gà giòn tươi mát', 45000.00, 1, 45000.00),
(37, 19, 37, 'Pepsi', 25000.00, 1, 25000.00),
(38, 19, 32, 'Pizza Hai San', 120000.00, 1, 120000.00),
(39, 20, 39, 'Salad gà giòn tươi mát', 45000.00, 1, 45000.00),
(40, 20, 37, 'Pepsi', 25000.00, 7, 175000.00),
(41, 20, 22, 'Mì Ý Gà Viên', 25000.00, 1, 25000.00),
(42, 21, 37, 'Pepsi', 25000.00, 2, 50000.00),
(43, 22, 37, 'Pepsi', 25000.00, 1, 25000.00),
(44, 23, 37, 'Pepsi', 25000.00, 1, 25000.00),
(45, 24, 39, 'Salad gà giòn tươi mát', 45000.00, 1, 45000.00),
(46, 25, 18, 'ChoCoA', 225000.00, 1, 225000.00),
(47, 26, 10, '5 Gà Miếng Nuggets', 200000.00, 1, 200000.00),
(48, 27, 8, '4 - Cherrow', 25000.00, 1, 25000.00),
(58, 30, 21, 'Trà Đào', 25000.00, 1, 25000.00),
(59, 30, 12, 'CBO-A_HD', 250000.00, 6, 1500000.00),
(60, 30, 39, 'Salad gà giòn tươi mát', 45000.00, 1, 45000.00);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_danhmuc`
--

CREATE TABLE `tbl_danhmuc` (
  `id_danhmuc` int(11) NOT NULL,
  `tendanhmuc` varchar(100) NOT NULL,
  `thutu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_danhmuc`
--

INSERT INTO `tbl_danhmuc` (`id_danhmuc`, `tendanhmuc`, `thutu`) VALUES
(1, 'Pizza - Mì Ý', 0),
(2, 'Combo', 0),
(3, 'Thức Ăn Nhẹ', 0),
(4, 'Món Thêm', 0),
(12, 'Nước uống', 3),
(22, 'Món siêu hot', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_danhmucbaiviet`
--

CREATE TABLE `tbl_danhmucbaiviet` (
  `id_baiviet` int(11) NOT NULL,
  `tendanhmucbv` varchar(200) NOT NULL,
  `thutu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_danhmucbaiviet`
--

INSERT INTO `tbl_danhmucbaiviet` (`id_baiviet`, `tendanhmucbv`, `thutu`) VALUES
(10, 'Tin tức khuyến mãi', 0),
(12, 'Tin tức mới ', 0),
(16, 'Tin ăn chơi', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_donhang`
--

CREATE TABLE `tbl_donhang` (
  `id` int(11) NOT NULL,
  `madon` varchar(50) NOT NULL,
  `tenkhach` varchar(200) DEFAULT NULL,
  `sdt` varchar(20) DEFAULT NULL,
  `tongtien` decimal(15,2) DEFAULT 0.00,
  `phiship` decimal(10,2) DEFAULT 0.00,
  `ngaydat` datetime DEFAULT current_timestamp(),
  `trangthai` int(11) DEFAULT 0,
  `email` varchar(100) DEFAULT NULL,
  `diachi` text DEFAULT NULL,
  `phuongthuc` varchar(50) DEFAULT NULL,
  `ghichu` text DEFAULT NULL,
  `session_id` varchar(50) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_donhang`
--

INSERT INTO `tbl_donhang` (`id`, `madon`, `tenkhach`, `sdt`, `tongtien`, `phiship`, `ngaydat`, `trangthai`, `email`, `diachi`, `phuongthuc`, `ghichu`, `session_id`, `start_time`) VALUES
(15, 'FF20260504225626540', 'Khach Kiosk', NULL, 45000.00, 0.00, '2026-05-05 05:56:26', 1, NULL, NULL, 'transfer', NULL, NULL, NULL),
(16, 'FF20260504234049154', 'Khach Kiosk', NULL, 95000.00, 0.00, '2026-05-05 06:40:49', 2, NULL, NULL, 'cash', NULL, NULL, NULL),
(17, 'FF20260506103820731', 'Khach Kiosk', NULL, 85000.00, 0.00, '2026-05-06 17:38:20', 1, NULL, NULL, 'cash', NULL, NULL, NULL),
(18, 'FF20260507064950653', 'Khach Kiosk', NULL, 36000.00, 0.00, '2026-05-07 13:49:50', 0, NULL, NULL, 'transfer', NULL, NULL, NULL),
(30, 'FF20260509001620245', 'Khach Kiosk', NULL, 1570000.00, 0.00, '2026-05-09 07:16:20', 1, NULL, NULL, 'transfer', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gioithieu`
--

CREATE TABLE `tbl_gioithieu` (
  `id` int(11) NOT NULL,
  `noidung` text DEFAULT NULL,
  `hinhanh` varchar(255) DEFAULT NULL,
  `ngaycapnhat` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_gioithieu`
--

INSERT INTO `tbl_gioithieu` (`id`, `noidung`, `hinhanh`, `ngaycapnhat`) VALUES
(1, 'FastFood Restaurant là chuỗi nhà hàng thức ăn nhanh hàng đầu tại Thành phố Hồ Chí Minh. Chúng tôi tự hào mang đến cho khách hàng những món ăn ngon, chất lượng với giá cả hợp lý.\r\n\r\nVới hơn 10 năm kinh nghiệm trong ngành ẩm thực, chúng tôi đã phục vụ hàng triệu khách hàng và nhận được nhiều phản hồi tích cực. Cam kết của chúng tôi là luôn đặt chất lượng món ăn và sự hài lòng của khách hàng lên hàng đầu.', '1777938726_2-2.png', '2026-05-05 06:52:06');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_lienhe`
--

CREATE TABLE `tbl_lienhe` (
  `id_lienhe` int(11) NOT NULL,
  `thongtinlienhe` text NOT NULL,
  `hinhanh` varchar(100) NOT NULL,
  `ngaygui` datetime DEFAULT current_timestamp(),
  `trangthai` varchar(20) DEFAULT 'chua_xem',
  `ten` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `sodienthoai` varchar(20) DEFAULT NULL,
  `loai` varchar(50) DEFAULT NULL,
  `noidung` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_lienhe`
--

INSERT INTO `tbl_lienhe` (`id_lienhe`, `thongtinlienhe`, `hinhanh`, `ngaygui`, `trangthai`, `ten`, `email`, `sodienthoai`, `loai`, `noidung`) VALUES
(3, '', '', '2026-05-05 05:33:59', 'da_xem', 'huhu', 'abcd@gmail.com', '346364', 'hop_tac', 'ádghfgsdfgfd'),
(4, '', '', '2026-05-06 17:39:27', 'da_xem', 'kkkk', 'trinhgiathetttt@gmail.com', '434444444', 'khac', 'dsfsdgfvsfdsfvfdbfbdfbsfdvfbsdbsdbdfbbdbg'),
(5, '', '', '2026-05-07 12:47:09', 'da_xem', 'huhu', 'linhtruongquang2101@gmail.com', '33333333', 'gop_y', 'fdsfhdfgsdgdsgs'),
(6, '', '', '2026-05-07 12:51:25', 'da_xem', 'huhu', 'linhtruongquang2101@gmail.com', '33333333', 'gop_y', 'fdsfhdfgsdgdsgs'),
(7, '', '', '2026-05-07 14:59:20', 'chua_xem', 'haha', 'nct@gmail.com', '11111', 'hop_tac', 'Hợp tác không em hihi\r\n'),
(8, '', '', '2026-05-09 07:21:02', 'da_xem', 'Nguyen Cong Toan', 'congtoan2k4@gmail.com', '0000', 'hop_tac', 'Hi. Tôi muốn hợp tác kinh doanh với bạn.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_nguoidung`
--

CREATE TABLE `tbl_nguoidung` (
  `id_nguoidung` int(11) NOT NULL,
  `tendangnhap` varchar(100) NOT NULL,
  `matkhau` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `hoten` varchar(100) NOT NULL,
  `sodienthoai` varchar(20) DEFAULT NULL,
  `diachi` text DEFAULT NULL,
  `trangthai` int(11) DEFAULT 1 COMMENT '1: hoạt động, 0: khóa',
  `ngaytao` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_nguoidung`
--

INSERT INTO `tbl_nguoidung` (`id_nguoidung`, `tendangnhap`, `matkhau`, `email`, `hoten`, `sodienthoai`, `diachi`, `trangthai`, `ngaytao`) VALUES
(1, 'user1', 'e10adc3949ba59abbe56e057f20f883e', 'user1@example.com', 'Nguyễn Văn A', '0123456789', 'Hà Nội', 1, '2026-05-04 16:10:21'),
(2, 'user2', 'e10adc3949ba59abbe56e057f20f883e', 'user2@example.com', 'Trần Thị B', '0987654321', 'TP.HCM', 1, '2026-05-04 16:10:21');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sanpham`
--

CREATE TABLE `tbl_sanpham` (
  `id_sanpham` int(11) NOT NULL,
  `tensanpham` varchar(200) NOT NULL,
  `masp` varchar(200) NOT NULL,
  `giasp` varchar(200) NOT NULL,
  `soluong` int(11) NOT NULL,
  `tomtat` text NOT NULL,
  `noidung` text NOT NULL,
  `hinhanh` varchar(200) NOT NULL,
  `thutu` int(11) NOT NULL,
  `id_danhmuc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_sanpham`
--

INSERT INTO `tbl_sanpham` (`id_sanpham`, `tensanpham`, `masp`, `giasp`, `soluong`, `tomtat`, `noidung`, `hinhanh`, `thutu`, `id_danhmuc`) VALUES
(2, '1 Bánh Trứng', '01', '6000', 50, '1 Bánh Trứng', '', '1715133384_1-eggtart.jpg', 0, 4),
(3, '2 Viên Khoai Môn', '02', '60000', 50, '2 Viên Khoai Môn', '', '2-taro.jpg', 0, 4),
(4, '3 Gà Miếng Nuggets', '03', '62000', 50, '3 Gà Miếng Nuggets', '', '1715133611_3_Nuggests.jpg', 0, 4),
(5, '3 Cá Thanh', '04', '62000', 50, '3 Cá Thanh', '', '1715133641_3-Fishsticks.jpg', 0, 4),
(6, '3 Cánh Gà', '05', '20000', 50, '3 Cánh Gà', '', '3-HW.jpg', 0, 2),
(7, '3 - Tago', '06', '25000', 50, '3 - Tago', '', '3-taro.jpg', 0, 3),
(8, '4 - Cherrow', '07', '25000', 50, '4 - Cherrow', '', '5-TENDERS.jpg', 0, 3),
(9, '4 Bánh Trứng', '08', '250000', 50, '4 Bánh Trứng', '', '4-eggtart.jpg', 0, 4),
(10, '5 Gà Miếng Nuggets', '09', '200000', 50, '5 Gà Miếng Nuggets', '', 'Burger-Zinger.jpg', 0, 3),
(11, '5 - Pumcheese', '10', '204000', 50, '5 - Pumcheese', '', '5-Pumcheese.jpg', 0, 3),
(12, 'CBO-A_HD', '11', '250000', 50, 'CBO-A_HD', '', '1715133992_CBO-A_HD.jpg', 0, 2),
(13, 'CBO-B_HD', '12', '250000', 50, 'CBO-B_HD', '', 'CBO-B_HD.jpg', 0, 2),
(14, '7Up Lon', '13', '20000', 50, '7Up Lon', '', '1715134104_7UP_CAN.jpg', 0, 4),
(15, 'Pepsi Lon', '14', '20000', 50, 'Pepsi Lon', '', '1715134125_PEPSI_CAN.jpg', 0, 4),
(16, 'Pizza Ngập Vị Phô Mai', '15', '255000', 50, 'Pizza Ngập Vị Phô Mai Hảo Hạng - Cheesy Madness', '', 'CHEESY+MADNESS+NO+NEW+PC.jpg', 0, 1),
(17, 'Pizza Hải Sản Xốt', '16', '255000', 50, 'Pizza Hải Sản Xốt ', '', '1715134438_LIME+PESTO+-+ANH+SP+(2).png', 0, 1),
(18, 'ChoCoA', '17', '225000', 50, 'ChoCoA', '', '1715134560_ChoCoA.jpg', 0, 2),
(19, 'Pizza New York Bò', '18', '225000', 50, 'Pizza New York Bò ', '', '1715134612_Menu+BG+1.jpg', 0, 1),
(20, '5 - Tenders', '19', '25000', 50, '5 - Tenders', '', '1715134684_5-TENDERS.jpg', 0, 3),
(21, 'Trà Đào', '20', '25000', 50, 'Trà Đào', '', '1715137276_Peach-Tea.jpg', 0, 12),
(22, 'Mì Ý Gà Viên', '21', '25000', 50, 'Mì Ý Gà Viên', '', '1715137333_MI-Y-GA-ZINGER.jpg', 0, 1),
(26, 'NANBAN', '35', '23000', 23, 'Không biết nữa ', 'Có gì ăn nấy', '1777712104_NANBAN.jpg', 4, 9),
(27, 'BJ', '36', '37000', 2, 'Có không mà biết', 'Chưa ăn má\r\n', '1777712177_BJ.jpg', 34, 9),
(30, 'Coca Cola', 'DRINK001', '15000', 100, 'Nuoc ngot Coca Cola', 'Nuoc ngot co gas', '1714658200_AQUAFINA.jpg', 3, 12),
(31, 'Salat', 'BUR001', '45000', 50, 'Burger bo tuoi ngon', 'Burger bo voi thit bo 100% tuoi', '1777933524_Soup-Rong-Bien.jpg', 1, 1),
(32, 'Pizza Hai San', 'PIZ001', '120000', 30, 'Pizza hai san tuoi', 'Pizza voi hai san tuoi ngon', '1777933507_Pizza+Extra+Topping+(4).jpg', 2, 2),
(37, 'Pepsi', '200', '25000', 50, 'Pepsi uống là suy', 'Pepsi', '1777933988_pepsi-zero.jpg', 0, 12),
(38, 'Rice', '56', '25000', 50, 'Món không ăn không tốn tiền, ăn thì tốn cơm + tiền', 'Món không ăn không tốn tiền, ăn thì tốn cơm + tiền, nền trắng thấy hấp dẫn rồi ăn liền luôn nha, ăn nữa ăn mãi rồi cũng hợp thiếu sẽ đói', '1777938034_Rice.jpg', 67, 22),
(39, 'Salad gà giòn tươi mát', 'SALAD001', '45000', 50, 'Món salad gà giòn kết hợp rau xanh tươi mát, cà chua và hạt dinh dưỡng, mang đến hương vị thanh nhẹ nhưng vẫn đủ no.', 'Salad gà giòn là sự kết hợp hoàn hảo giữa rau xanh tươi, cà chua, các loại hạt và những miếng gà chiên giòn hấp dẫn. Món ăn không chỉ ngon miệng mà còn cung cấp đầy đủ dinh dưỡng, phù hợp cho bữa ăn nhẹ hoặc người yêu thích phong cách ăn uống lành mạnh.\r\n\r\nPhần rau được chọn lọc kỹ lưỡng, giữ được độ tươi và giòn tự nhiên. Gà chiên có lớp vỏ giòn rụm bên ngoài, bên trong mềm và đậm vị. Khi kết hợp cùng sốt salad nhẹ, món ăn tạo nên sự cân bằng giữa vị béo, giòn và thanh mát.\r\n\r\nĐây là lựa chọn lý tưởng cho những ai muốn ăn ngon nhưng không quá ngấy, phù hợp cho cả bữa trưa nhanh hoặc bữa tối nhẹ nhàng.', '1778063836_SALAD-HAT-GA-VIEN.jpg', 69, 22);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tbl_baiviet`
--
ALTER TABLE `tbl_baiviet`
  ADD PRIMARY KEY (`id_bv`);

--
-- Indexes for table `tbl_chatbot_history`
--
ALTER TABLE `tbl_chatbot_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_chitietdonhang`
--
ALTER TABLE `tbl_chitietdonhang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_donhang` (`id_donhang`);

--
-- Indexes for table `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  ADD PRIMARY KEY (`id_danhmuc`);

--
-- Indexes for table `tbl_danhmucbaiviet`
--
ALTER TABLE `tbl_danhmucbaiviet`
  ADD PRIMARY KEY (`id_baiviet`);

--
-- Indexes for table `tbl_donhang`
--
ALTER TABLE `tbl_donhang`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `madon` (`madon`);

--
-- Indexes for table `tbl_gioithieu`
--
ALTER TABLE `tbl_gioithieu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_lienhe`
--
ALTER TABLE `tbl_lienhe`
  ADD PRIMARY KEY (`id_lienhe`);

--
-- Indexes for table `tbl_nguoidung`
--
ALTER TABLE `tbl_nguoidung`
  ADD PRIMARY KEY (`id_nguoidung`),
  ADD UNIQUE KEY `tendangnhap` (`tendangnhap`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD PRIMARY KEY (`id_sanpham`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_baiviet`
--
ALTER TABLE `tbl_baiviet`
  MODIFY `id_bv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_chatbot_history`
--
ALTER TABLE `tbl_chatbot_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `tbl_chitietdonhang`
--
ALTER TABLE `tbl_chitietdonhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  MODIFY `id_danhmuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbl_danhmucbaiviet`
--
ALTER TABLE `tbl_danhmucbaiviet`
  MODIFY `id_baiviet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_donhang`
--
ALTER TABLE `tbl_donhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tbl_gioithieu`
--
ALTER TABLE `tbl_gioithieu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_lienhe`
--
ALTER TABLE `tbl_lienhe`
  MODIFY `id_lienhe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_nguoidung`
--
ALTER TABLE `tbl_nguoidung`
  MODIFY `id_nguoidung` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  MODIFY `id_sanpham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
