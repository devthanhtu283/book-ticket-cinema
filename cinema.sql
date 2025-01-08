-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 22, 2024 lúc 11:48 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `cinema`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `account`
--

CREATE TABLE `account` (
  `id` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `role` int(11) NOT NULL,
  `created` date NOT NULL,
  `verify` int(1) NOT NULL,
  `email` varchar(250) NOT NULL,
  `phone` varchar(250) NOT NULL,
  `gender` varchar(250) NOT NULL,
  `birthday` date NOT NULL,
  `securitycode` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `account`
--

INSERT INTO `account` (`id`, `username`, `password`, `role`, `created`, `verify`, `email`, `phone`, `gender`, `birthday`, `securitycode`) VALUES
(1, 'acc1', '$2b$10$unp1mtvE6qd9HmvpgGZ/Re/k5Rsxw.TOhYBeqxek/jqTwfiL9z0Km', 1, '2001-01-03', 0, 'acc1@gmail.com', 'Phone', '', '0001-01-01', ''),
(2, 'admin', '$2b$10$7jw4vquQVGA/gf43YPmafeukY0uCrFBOz27AIo7hLx/Z9XjMjbCAm', 0, '2024-08-17', 1, 'admin@gmail.com', 'phone', 'Male', '2024-08-17', 'aaaaa'),
(3, 'acc2', '123', 1, '2024-03-30', 1, 'acc2@gmail.com', 'phone', 'gender', '2024-08-19', '123456'),
(4, 'Tú Lê Thanh', '$2b$10$z8KxRCus/CB8NzXjIApTW.YbDq.CTOeG2YeKu/JfF.9VWwcNyBq/K', 1, '2024-08-20', 1, 'devthanhtu283@gmail.com', '', '', '2024-08-20', '265121'),
(5, 'Lê Thanh Tú', '$2b$10$oEfeZ8tsKSNoDDEUK1oAEuLobT7sxlQylKIbXGQn6uPCV6OMPXepe', 1, '2024-08-20', 1, '21130594@st.hcmuaf.edu.vn', '', '', '2024-08-20', '264868'),
(6, 'Thành Phúc', '$2b$10$0vcA/WeSGpZB.M.anXFp0eUb0YsNJVbGmzjfKSNzYmVsGJcg6Z5IC', 1, '2024-08-22', 1, 'phucthanh2104@gmail.com', '', '', '2024-08-22', '262518');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `booking`
--

CREATE TABLE `booking` (
  `id` int(11) NOT NULL,
  `email` varchar(250) NOT NULL,
  `name` varchar(250) NOT NULL,
  `phone` varchar(250) NOT NULL,
  `showtimeID` int(11) NOT NULL,
  `created` date NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `booking`
--

INSERT INTO `booking` (`id`, `email`, `name`, `phone`, `showtimeID`, `created`, `status`) VALUES
(56, 'letu36592@gmail.com', 'Le Thanh Tu', '0948502190', 1, '0001-01-01', 0),
(57, 'aaa@gmail.com', 'Nguyen van a', '0948502190', 6, '0001-01-01', 0),
(58, 'aaa@gmail.com', 'Nguyen van a', '0948502190', 6, '2024-08-19', 0),
(59, 'aa@gmail.com', 'Le Thanh Tu', '0948502190', 1, '2024-08-20', 0),
(60, 'aa@gmail.com', 'Le Thanh Tu', '0948502190', 1, '2024-08-20', 0),
(61, 'aa@gmail.com', 'Nguyen van a', '0948502190', 1, '2024-08-20', 0),
(62, 'aa@gmail.com', 'Nguyen van a', '0948502190', 1, '2024-08-20', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `booking_details`
--

CREATE TABLE `booking_details` (
  `id` int(11) NOT NULL,
  `bookingID` int(11) NOT NULL,
  `seatID` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `booking_details`
--

INSERT INTO `booking_details` (`id`, `bookingID`, `seatID`, `status`) VALUES
(63, 56, 3, 1),
(64, 56, 1, 1),
(65, 56, 2, 1),
(66, 57, 11, 1),
(67, 57, 10, 1),
(68, 57, 12, 1),
(69, 58, 13, 1),
(70, 58, 14, 1),
(71, 59, 38, 1),
(72, 59, 39, 1),
(73, 60, 40, 1),
(74, 60, 41, 1),
(75, 61, 14, 1),
(76, 61, 13, 1),
(77, 62, 14, 1),
(78, 62, 13, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chat`
--

CREATE TABLE `chat` (
  `id` int(11) NOT NULL,
  `accountID` int(11) NOT NULL,
  `message` text NOT NULL,
  `role` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `chat`
--

INSERT INTO `chat` (`id`, `accountID`, `message`, `role`, `time`) VALUES
(1, 1, 'aaaa', 1, '2024-08-14 07:36:10'),
(2, 1, 'aaawerfefe', 0, '2024-08-14 07:36:20'),
(3, 1, 'alo', 1, '2024-08-14 08:01:13'),
(4, 1, 'alo', 1, '2024-08-14 08:02:56'),
(5, 1, 'ffff', 1, '2024-08-14 08:08:59'),
(6, 1, 'eeeee', 1, '2024-08-14 08:09:32'),
(7, 1, 'aaa', 0, '2024-08-14 08:21:07'),
(8, 1, 'aaaa', 1, '2024-08-14 08:21:21'),
(9, 1, 'eeee', 0, '2024-08-14 08:21:25'),
(10, 1, '1111', 1, '2024-08-14 08:21:28'),
(11, 1, '2222', 0, '2024-08-14 08:21:31'),
(12, 3, 'aaaa', 1, '2024-08-19 13:15:12'),
(13, 1, 'eeeee', 0, '2024-08-19 13:31:01'),
(14, 1, 'chao b', 0, '2024-08-19 13:32:16'),
(15, 1, 'dffff', 1, '2024-08-19 13:32:31'),
(16, 1, '1111', 1, '2024-08-19 13:33:30'),
(17, 1, '2222', 1, '2024-08-19 13:33:35'),
(18, 1, 'aaa', 0, '2024-08-19 13:35:40'),
(19, 1, 'aaaa', 1, '2024-08-19 13:35:52'),
(20, 1, 'eeee', 1, '2024-08-19 13:36:05'),
(21, 1, '333', 0, '2024-08-19 13:36:22'),
(22, 1, '1111', 1, '2024-08-19 13:37:49'),
(23, 1, '2222', 1, '2024-08-19 13:38:01'),
(24, 1, '3333', 0, '2024-08-19 13:38:17'),
(25, 1, '1212121', 1, '2024-08-19 13:38:28'),
(26, 1, 'xin chao b', 1, '2024-08-19 13:38:40'),
(27, 1, 'chao banj', 0, '2024-08-19 13:38:59'),
(28, 1, 'eeeee', 1, '2024-08-19 13:39:03'),
(29, 1, '1111', 1, '2024-08-19 13:40:15'),
(30, 1, '111', 1, '2024-08-19 13:40:22'),
(31, 1, '3333', 1, '2024-08-19 13:40:33'),
(32, 1, '555', 1, '2024-08-19 13:42:54'),
(33, 1, 'ffff', 1, '2024-08-19 13:45:45'),
(34, 1, 'bbbb', 1, '2024-08-19 13:46:29'),
(35, 1, 'eeee', 1, '2024-08-19 13:46:35'),
(36, 1, '1111', 1, '2024-08-19 13:46:56'),
(37, 1, 'uuuuu', 1, '2024-08-19 13:47:12'),
(38, 1, 'eeeeee', 0, '2024-08-19 13:47:18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cinema`
--

CREATE TABLE `cinema` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `district` varchar(500) NOT NULL,
  `city` varchar(500) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `cinema`
--

INSERT INTO `cinema` (`id`, `name`, `district`, `city`, `status`) VALUES
(1, 'CGV Gò vấp', 'Gò Vấp', 'Thành phố Hồ Chí Minh', 1),
(2, 'CGV Quận 1', 'Quận 1', 'Thành phố Hồ Chí Minh', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `combo`
--

CREATE TABLE `combo` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `price` double NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `combo`
--

INSERT INTO `combo` (`id`, `name`, `price`, `status`) VALUES
(1, 'Combo Nhà Gấu(2 nước 1 bắp tự chọn 1 Gấu)', 150000, 1),
(2, 'Combo Có Gấu(2 nước 2 bắp tự chọn 2 Gấu)', 200000, 1),
(3, 'Combo Couple(2 nước 2 bắp tự chọn)', 110000, 1),
(4, 'Combo Solo(1 nước 1 bắp tự chọn)', 55000, 1),
(5, 'Combo Sum Vầy(4 nước 2 bắp tự chọn)', 250000, 1),
(6, 'Combo Party(3 nước 3 bắp tự chọn)', 350000, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `combo_details`
--

CREATE TABLE `combo_details` (
  `id` int(11) NOT NULL,
  `comboID` int(11) NOT NULL,
  `bookingID` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `combo_details`
--

INSERT INTO `combo_details` (`id`, `comboID`, `bookingID`, `quantity`, `status`) VALUES
(19, 1, 56, 2, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `follow`
--

CREATE TABLE `follow` (
  `id` int(11) NOT NULL,
  `accountId` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `follow`
--

INSERT INTO `follow` (`id`, `accountId`, `status`) VALUES
(18, 1, 1),
(19, 4, 1),
(20, 6, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `language`
--

CREATE TABLE `language` (
  `id` int(11) NOT NULL,
  `countryID` varchar(250) NOT NULL,
  `countryName` varchar(250) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `movie`
--

CREATE TABLE `movie` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `photo` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `duration` varchar(250) NOT NULL,
  `genre` text NOT NULL,
  `releaseDate` date NOT NULL,
  `age` int(11) NOT NULL,
  `trailer` text NOT NULL,
  `director` text NOT NULL,
  `actor` text NOT NULL,
  `publisher` text NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `movie`
--

INSERT INTO `movie` (`id`, `title`, `photo`, `description`, `duration`, `genre`, `releaseDate`, `age`, `trailer`, `director`, `actor`, `publisher`, `status`) VALUES
(1, 'Phim Điện Ảnh Conan 27: Ngôi Sao 5 Cánh 1 Triệu Đô', 'https://cdn.moveek.com/storage/media/cache/short/669b4e8f391d8733674723.jpg', 'Trong khi đến Hakodate tham gia một giải kiếm đạo, Conan và Heiji đụng độ siêu trộm Kaito Kid - khi hắn đang nhắm tới một thanh kiếm Nhật được cất giấu trong nhà kho của một gia đình tài phiệt. Thi thể một tay buôn vũ khí khét tiếng được phát hiện với vết chém hình chữ thập, và trùng hợp thay, \"kho báu\" mà gã truy lùng dường như cũng có liên quan mật thiết đến thanh kiếm cổ mà Kid đang nhắm tới.', '111 phút', 'Action, Mystery, Animation, Crime', '2024-08-05', 13, 'https://www.youtube.com/embed/inIVdZSFfc0?si=EMw6Dihfk-RNAbP_', 'Tomoka Nagaoka', 'Minami Takayama, Wakana Yamazaki, Rikiya Koyama, Ryou Horikawa, Yûko Miyamura', 'Shuho Kondo, Takeshi Shioguchi, Yuhei Okada', 1),
(2, 'Deadpool 3: Deadpool & Wolverine', 'https://cdn.moveek.com/storage/media/cache/short/66a31dd941628497036893.jpg', 'Wolverine hợp sức với Deadpool để đánh bại kẻ thù chung.', '127 phút', 'Comedy, Action, Adventure, Science Fiction', '2024-08-05', 18, 'https://www.youtube.com/embed/inIVdZSFfc0?si=EMw6Dihfk-RNAbP_', 'Shawn Levy', 'Ryan Reynolds, Hugh Jackman, Emma Corrin', 'Kevin Feige, Ryan Reynolds, Shawn Levy', 1),
(11, 'Đẹp trai thấy sai sai', 'https://cdn.moveek.com/storage/media/cache/short/66ab4092261e7067687988.jpg', 'Hai người đàn ông thô lỗ nhưng giản dị, tự xưng là \'Những anh chàng đẹp trai\'. Họ có ước mơ được sống ở vùng nông thôn và cuối cùng giấc mơ của họ đã thành hiện thực. Tuy nhiên, vào ngày đầu tiên chuyển đến ngôi nhà mới, một bí mật bị phong ấn dưới tầng hầm của họ đã được đánh thức. Từ đây gây ra một loạt những hài kịch khó đỡ.', '101 phút', 'Comedy, Horror', '2024-08-18', 18, 'https://www.youtube.com/embed/mpTdWZgXtUI?si=D5aqYdXsHUby7OX3', 'Nam Dong-hyub', 'Lee Sung-Min, Lee Hee-joon, Gong Seung-yeon, Park Ji-hwan, Lee Kyoo-hyung', 'Nam Dong-hyub', 1),
(12, 'Ma Da', 'https://cdn.moveek.com/storage/media/cache/short/6684d276139ad087720074.jpg', 'Phim kể về hành trình của bà Lệ, người làm nghề vớt xác người chết trên sông để đưa về với gia đình. Trong quá trình làm nghề, bà Lệ đắc tội với Ma Da, một oan hồn sống dưới sông nước thường xuyên kéo chân người để thế mạng cho mình đi đầu thai. n oán của cả hai khiến cho Ma Da bắt mất bé Nhung, con gái của bà Lệ . Bà Lệ phải nhờ đến sự giúp đỡ của những người bên cạnh để cùng nhau lên đường tìm cách cứu bé Nhung và mở ra những bí mật đằng sau oan hồn Ma Da kia.', '95 phút', 'Horror', '2024-08-19', 18, 'https://www.youtube.com/embed/vC-KNlLNIso?si=9PXGBdTQcEK2Tjdg', 'Nguyễn Hữu Hoàng', 'NSUT Thành Lộc, Việt Hương, Trung Dân', 'NSUT Thành Lộc, Việt Hương, Trung Dân', 1),
(13, 'Shin Cậu Bé Bút Chì: Nhật Ký Khủng Long Của Chúng Mình', 'https://cdn.moveek.com/storage/media/cache/short/668fa30fa8b81007665610.jpg', 'Nhóc Shin trở lại, chính thức gia nhập đường đua hè “Búp măng non siêu quậy” với pet mới “Siêu to Khủng Long”', '105 phút', 'Comedy, Adventure, Animation, Family', '2024-08-21', 6, 'https://www.youtube.com/embed/vDbXjJRFgWM?si=F-c92kgtgu4wpyMS', 'Shinobu Sasaki', 'Yumiko Kobayashi, Miki Narahashi, Toshiyuki Morikawa, Satomi Kourogi, Mari Mashiba', 'Yumiko Kobayashi, Miki Narahashi, Toshiyuki Morikawa, Satomi Kourogi, Mari Mashiba', 1),
(14, 'Đả Nữ Báo Thù', 'https://cdn.moveek.com/storage/media/cache/short/66b9b717015a9213503773.jpg', 'Nữ cảnh sát Ha Soo Young (Jeon Do Yeon) chấp nhận ngồi tù oan vì giao kèo về khoản đền bù kếch xù từ Andy (Ji Chang Wook). Nhưng khi cô được trả tự do, những kẻ hứa hẹn ngày xưa đều mất dạng, chỉ có cô gái bí ẩn Jung Yoon Sun (Lim Ji Yeon) đến đón cô. Bất chấp tất cả, Ha Soo Young quyết tâm tập trung vào một mục tiêu duy nhất là truy tìm sự thật, lấy lại những gì thuộc về mình!', '115 phút', 'Drama, Crime', '2024-08-20', 16, 'https://www.youtube.com/embed/9H1v566AbQU?si=H8ZQCmiaSzONhBLA', 'Oh Seung-uk', 'Jeon Do-yeon, Ji Chang-Wook, Lim Ji-yeon, Kim Jun-han, Kim Jong-su', 'Jeon Do-yeon, Ji Chang-Wook, Lim Ji-yeon, Kim Jun-han, Kim Jong-su', 1),
(15, '\r\nQuái Vật Không Gian: Romulus', 'https://cdn.moveek.com/storage/media/cache/short/66ab461db9c63013081933.jpg', 'Phần phim mới nhất của thương hiệu phim quái vật gây ám ảnh nhất lịch sử điện ảnh theo chân một nhóm người khai hoang lục địa, đang tìm kiếm những gì còn sót lại trên một trạm vũ trụ bỏ hoang. Thế nhưng mọi chuyện trở thành một thảm kịch khi họ phải đối mặt với những thực thể quái vật ghê tởm nhất, và chuyến đi đầy hi vọng lại trở thành cơn ác mộng đối với tất cả mọi người.', '118 phút', 'Thriller, Horror, Science Fiction', '2024-08-20', 16, 'https://www.youtube.com/embed/-9QywS_ECp8?si=d8oiqYZ_ymqgazP-\"', 'Fede Alvarez', 'Cailee Spaeny, David Jonsson, Isabela Merced, Archie Renaux, Spike Fearn', 'Ridley Scott, Walter Hill, Michael A. Pruss', 1),
(16, 'Blue Lock The Movie: Episode Nagi', 'https://cdn.moveek.com/storage/media/cache/short/66adaeb173553048626203.jpg', 'Đừng bỏ lỡ cơ hội duy nhất được chứng kiến “Khoảnh Khắc Thiên Tài Thức Tỉnh” trong Anime Bóng Đá Điên Rồ và Mãnh Liệt Nhất trên màn ảnh rộng nhé!', '16', 'Action, Drama, Animation', '2024-08-08', 16, 'https://www.youtube.com/embed/6NCsj0anAt8?si=OsX305zuHcmWQgvi', 'Shunsuke Ishikawa', 'Nobunaga Shimazaki, Yuma Uchida, Kazuyuki Okitsu, Kazuki Ura, Tasuku Kaito', 'Shunsuke Ishikawa', 1),
(17, 'Giếng Quỷ', 'https://cdn.moveek.com/storage/media/cache/short/66bd80b925e64574276640.jpg', 'Một nhà phục chế nghệ thuật vừa chớm nở đi đến một ngôi làng nhỏ của Ý để mang một bức tranh thời trung cổ trở lại vinh quang trước đây của nó. Cô ấy không biết rằng cô ấy đang đặt cuộc sống của mình vào nguy hiểm từ một lời nguyền độc ác và một con quái vật sinh ra từ huyền thoại và nỗi đau tàn bạo.', '87 phút', 'The Well - Horror', '2024-08-24', 18, 'https://youtu.be/KoGw6UiOE_s', 'Federico Zampaglione', 'Lauren LaVera, Claudia Gerini, Giovanni Lombardo Radice, Linda Zampaglione, Jonathan Dylan King', 'Stefano Masi, Mario Pezzi', 1),
(18, 'Harold Và Cây Bút Phép Thuật', 'https://cdn.moveek.com/storage/media/cache/short/66c41ad3ba058964206197.jpg', 'Cốt truyện dựa trên bộ truyện cùng tên - được xuất bản vào năm 1955. Cuốn sách của Crockett Johnson kể về Harold, một cậu bé 4 tuổi, với sức mạnh của cây bút chì màu, đã tạo ra thế giới xung quanh mình. Harold sử dụng cây bút chì màu tím kì diệu của mình để vẽ một cánh cửa dẫn vào Thế giới Thực, nơi anh và những người bạn của mình dấn thân vào một cuộc phiêu lưu mới lạ.', '90 phút', 'Harold and the Purple Crayon - Adventure, Animation, Family, Fantasy', '2024-08-24', 1, 'https://youtu.be/sQl_D2ilbX4', 'Carlos Saldanha', 'Sarah Cool, Mike Benitez, Elizabeth Carlile, Marcia Adams, Elizabeth Becka', 'John Davis', 1),
(19, 'Kẻ Trộm Mặt Trăng 4', 'https://cdn.moveek.com/storage/media/cache/short/66667a07e5114575607897.jpg', 'Gru phải đối mặt với kẻ thù mới là Maxime Le Mal và Valentina đang lên kế hoạch trả thù anh, buộc gia đình anh phải lẩn trốn đi nơi khác. Bên cạnh việc đấu tranh bảo vệ gia đình, Gru đồng thời còn phải tìm ra điểm chung với thành viên mới nhất trong nhà đó là Gru Jr.', '94 phút', 'Despicable Me 4 - Comedy, Adventure, Animation, Family', '2024-07-05', 1, 'https://youtu.be/yWp2V6nbvVM', 'Chris Renaud', 'Dana Gaier, Steve Coogan, Miranda Cosgrove, Pierre Coffin, Kristen Wiig', 'Christopher Meledandri', 1),
(20, 'Borderlands: Trở Lại Pandora', 'https://cdn.moveek.com/storage/media/cache/short/6698911a5f5be045010928.jpg', 'Một bộ phim truyện dựa trên trò chơi điện tử nổi tiếng lấy bối cảnh trên hành tinh hư cấu Pandora bị bỏ hoang, nơi mọi người tìm kiếm một di tích bí ẩn.', '101 phút', 'Borderlands - Action, Adventure, Science Fiction', '2024-08-23', 13, 'https://youtu.be/Rdo4dqBxvWk', 'Eli Roth', 'Penn Jillette, Olivier Richters, Bobby Lee, Ryann Redmond, Steven Boyer', 'Ari Arad, Erik Feig, Avi Arad', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `movie_language`
--

CREATE TABLE `movie_language` (
  `id` int(11) NOT NULL,
  `movieID` int(11) NOT NULL,
  `languageID` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `duration` varchar(250) NOT NULL,
  `genre` text NOT NULL,
  `releaseDate` date NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `bookingID` int(11) NOT NULL,
  `paymentType` int(11) NOT NULL,
  `transactionNo` varchar(250) NOT NULL,
  `ticketNumber` int(11) NOT NULL,
  `QR` text NOT NULL,
  `created` datetime NOT NULL,
  `description` text NOT NULL,
  `price` double NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `payment`
--

INSERT INTO `payment` (`id`, `bookingID`, `paymentType`, `transactionNo`, `ticketNumber`, `QR`, `created`, `description`, `price`, `status`) VALUES
(21, 56, 1, '6DB716725B2668721', 173751, '173751', '2024-08-19 21:42:45', 'Thanh toán vé xem phim', 435000, 1),
(22, 57, 1, '3LD23696HD693990H', 507375, '507375', '2024-08-19 21:44:08', 'Thanh toán vé xem phim', 135000, 1),
(23, 58, 1, '5V4924154L721410U', 913395, '913395', '2024-08-19 21:59:06', 'Thanh toán vé xem phim', 90000, 1),
(24, 61, 1, 'aaaa', 11111, 'aaaa', '2024-08-20 16:33:50', '10/08/2024', 33, 1),
(25, 62, 1, '62622850BV912804G', 671319, '671319', '2024-08-20 16:34:07', 'Thanh toán vé xem phim', 180000, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rating`
--

CREATE TABLE `rating` (
  `id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `rate` int(11) NOT NULL,
  `accountID` int(11) NOT NULL,
  `movieID` int(11) NOT NULL,
  `created` date NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `rating`
--

INSERT INTO `rating` (`id`, `comment`, `rate`, `accountID`, `movieID`, `created`, `status`) VALUES
(1, 'alo', 0, 1, 1, '2024-08-15', 1),
(2, 'alo', 10, 1, 1, '2024-08-15', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `room`
--

CREATE TABLE `room` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `cinemaID` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `room`
--

INSERT INTO `room` (`id`, `name`, `cinemaID`, `quantity`, `status`) VALUES
(1, 'P1', 1, 112, 1),
(2, 'P2', 1, 112, 1),
(3, 'P3', 1, 112, 1),
(4, 'P1', 2, 112, 1),
(5, 'P2', 2, 112, 1),
(6, 'P3', 2, 112, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `seat`
--

CREATE TABLE `seat` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `roomID` int(11) NOT NULL,
  `seatType` int(11) NOT NULL,
  `price` double NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `seat`
--

INSERT INTO `seat` (`id`, `name`, `roomID`, `seatType`, `price`, `status`) VALUES
(1, 'A1', 1, 1, 45000, 1),
(2, 'A2', 1, 1, 45000, 1),
(3, 'A3', 1, 1, 45000, 1),
(4, 'A4', 1, 1, 45000, 1),
(5, 'A5', 1, 1, 45000, 1),
(6, 'A6', 1, 1, 45000, 1),
(7, 'A7', 1, 1, 45000, 1),
(8, 'A8', 1, 1, 45000, 1),
(9, 'A9', 1, 1, 45000, 1),
(10, 'A10', 1, 1, 45000, 1),
(11, 'A11', 1, 1, 45000, 1),
(12, 'A12', 1, 1, 45000, 1),
(13, 'A13', 1, 1, 45000, 1),
(14, 'A14', 1, 1, 45000, 1),
(15, 'A15', 1, 1, 45000, 1),
(16, 'B1', 1, 1, 45000, 1),
(17, 'B2', 1, 1, 45000, 1),
(18, 'B3', 1, 1, 45000, 1),
(19, 'B4', 1, 1, 45000, 1),
(20, 'B5', 1, 1, 45000, 1),
(21, 'B6', 1, 1, 45000, 1),
(22, 'B7', 1, 1, 45000, 1),
(23, 'B8', 1, 1, 45000, 1),
(24, 'B9', 1, 1, 45000, 1),
(25, 'B10', 1, 1, 45000, 1),
(26, 'B11', 1, 1, 45000, 1),
(27, 'B12', 1, 1, 45000, 1),
(28, 'B13', 1, 1, 45000, 1),
(29, 'B14', 1, 1, 45000, 1),
(30, 'B15', 1, 1, 45000, 1),
(31, 'C1', 1, 1, 45000, 1),
(32, 'C2', 1, 1, 45000, 1),
(33, 'C3', 1, 1, 45000, 1),
(34, 'C4', 1, 1, 45000, 1),
(35, 'C5', 1, 1, 45000, 1),
(36, 'C6', 1, 1, 45000, 1),
(37, 'C7', 1, 1, 45000, 1),
(38, 'C8', 1, 1, 45000, 1),
(39, 'C9', 1, 1, 45000, 1),
(40, 'C10', 1, 1, 45000, 1),
(41, 'C11', 1, 1, 45000, 1),
(42, 'C12', 1, 1, 45000, 1),
(43, 'C13', 1, 1, 45000, 1),
(44, 'C14', 1, 1, 45000, 1),
(45, 'C15', 1, 1, 45000, 1),
(46, 'D1', 1, 1, 45000, 1),
(47, 'D2', 1, 1, 45000, 1),
(48, 'D3', 1, 1, 45000, 1),
(49, 'D4', 1, 1, 45000, 1),
(50, 'D5', 1, 1, 45000, 1),
(51, 'D6', 1, 1, 45000, 1),
(52, 'D7', 1, 1, 45000, 1),
(53, 'D8', 1, 1, 45000, 1),
(54, 'D9', 1, 1, 45000, 1),
(55, 'D10', 1, 1, 45000, 1),
(56, 'D11', 1, 1, 45000, 1),
(57, 'D12', 1, 1, 45000, 1),
(58, 'D13', 1, 1, 45000, 1),
(59, 'D14', 1, 1, 45000, 1),
(60, 'D15', 1, 1, 45000, 1),
(61, 'E1', 1, 1, 45000, 1),
(62, 'E2', 1, 1, 45000, 1),
(63, 'E3', 1, 1, 45000, 1),
(64, 'E4', 1, 1, 45000, 1),
(65, 'E5', 1, 1, 45000, 1),
(66, 'E6', 1, 1, 45000, 1),
(67, 'E7', 1, 1, 45000, 1),
(68, 'E8', 1, 1, 45000, 1),
(69, 'E9', 1, 1, 45000, 1),
(70, 'E10', 1, 1, 45000, 1),
(71, 'E11', 1, 1, 45000, 1),
(72, 'E12', 1, 1, 45000, 1),
(73, 'E13', 1, 1, 45000, 1),
(74, 'E14', 1, 1, 45000, 1),
(75, 'E15', 1, 1, 45000, 1),
(76, 'F1', 1, 1, 45000, 1),
(77, 'F2', 1, 1, 45000, 1),
(78, 'F3', 1, 1, 45000, 1),
(79, 'F4', 1, 1, 45000, 1),
(80, 'F5', 1, 1, 45000, 1),
(81, 'F6', 1, 1, 45000, 1),
(82, 'F7', 1, 1, 45000, 1),
(83, 'F8', 1, 1, 45000, 1),
(84, 'F9', 1, 1, 45000, 1),
(85, 'F10', 1, 1, 45000, 1),
(86, 'F11', 1, 1, 45000, 1),
(87, 'F12', 1, 1, 45000, 1),
(88, 'F13', 1, 1, 45000, 1),
(89, 'F14', 1, 1, 45000, 1),
(90, 'F15', 1, 1, 45000, 1),
(91, 'G1', 1, 1, 45000, 1),
(92, 'G2', 1, 1, 45000, 1),
(93, 'G3', 1, 1, 45000, 1),
(94, 'G4', 1, 1, 45000, 1),
(95, 'G5', 1, 1, 45000, 1),
(96, 'G6', 1, 1, 45000, 1),
(97, 'G7', 1, 1, 45000, 1),
(98, 'G8', 1, 1, 45000, 1),
(99, 'G9', 1, 1, 45000, 1),
(100, 'G10', 1, 1, 45000, 1),
(101, 'G11', 1, 1, 45000, 1),
(102, 'G12', 1, 1, 45000, 1),
(103, 'G13', 1, 1, 45000, 1),
(104, 'G14', 1, 1, 45000, 1),
(105, 'G15', 1, 1, 45000, 1),
(106, 'H1-H2', 1, 2, 90000, 1),
(107, 'H3-H4', 1, 2, 90000, 1),
(108, 'H5-H6', 1, 2, 90000, 1),
(109, 'H7-H8', 1, 2, 90000, 1),
(110, 'H9-H10', 1, 2, 90000, 1),
(111, 'H11-H12', 1, 2, 90000, 1),
(112, 'H13-H14', 1, 1, 90000, 1),
(113, 'A1', 2, 1, 45000, 1),
(114, 'A2', 2, 1, 45000, 1),
(115, 'A3', 2, 1, 45000, 1),
(116, 'A4', 2, 1, 45000, 1),
(117, 'A5', 2, 1, 45000, 1),
(118, 'A6', 2, 1, 45000, 1),
(119, 'A7', 2, 1, 45000, 1),
(120, 'A8', 2, 1, 45000, 1),
(121, 'A9', 2, 1, 45000, 1),
(122, 'A10', 2, 1, 45000, 1),
(123, 'A11', 2, 1, 45000, 1),
(124, 'A12', 2, 1, 45000, 1),
(125, 'A13', 2, 1, 45000, 1),
(126, 'A14', 2, 1, 45000, 1),
(127, 'A15', 2, 1, 45000, 1),
(128, 'B1', 2, 1, 45000, 1),
(129, 'B2', 2, 1, 45000, 1),
(130, 'B3', 2, 1, 45000, 1),
(131, 'B4', 2, 1, 45000, 1),
(132, 'B5', 2, 1, 45000, 1),
(133, 'B6', 2, 1, 45000, 1),
(134, 'B7', 2, 1, 45000, 1),
(135, 'B8', 2, 1, 45000, 1),
(136, 'B9', 2, 1, 45000, 1),
(137, 'B10', 2, 1, 45000, 1),
(138, 'B11', 2, 1, 45000, 1),
(139, 'B12', 2, 1, 45000, 1),
(140, 'B13', 2, 1, 45000, 1),
(141, 'B14', 2, 1, 45000, 1),
(142, 'B15', 2, 1, 45000, 1),
(143, 'C1', 2, 1, 45000, 1),
(144, 'C2', 2, 1, 45000, 1),
(145, 'C3', 2, 1, 45000, 1),
(146, 'C4', 2, 1, 45000, 1),
(147, 'C5', 2, 1, 45000, 1),
(148, 'C6', 2, 1, 45000, 1),
(149, 'C7', 2, 1, 45000, 1),
(150, 'C8', 2, 1, 45000, 1),
(151, 'C9', 2, 1, 45000, 1),
(152, 'C10', 2, 1, 45000, 1),
(153, 'C11', 2, 1, 45000, 1),
(154, 'C12', 2, 1, 45000, 1),
(155, 'C13', 2, 1, 45000, 1),
(156, 'C14', 2, 1, 45000, 1),
(157, 'C15', 2, 1, 45000, 1),
(158, 'D1', 2, 1, 45000, 1),
(159, 'D2', 2, 1, 45000, 1),
(160, 'D3', 2, 1, 45000, 1),
(161, 'D4', 2, 1, 45000, 1),
(162, 'D5', 2, 1, 45000, 1),
(163, 'D6', 2, 1, 45000, 1),
(164, 'D7', 2, 1, 45000, 1),
(165, 'D8', 2, 1, 45000, 1),
(166, 'D9', 2, 1, 45000, 1),
(167, 'D10', 2, 1, 45000, 1),
(168, 'D11', 2, 1, 45000, 1),
(169, 'D12', 2, 1, 45000, 1),
(170, 'D13', 2, 1, 45000, 1),
(171, 'D14', 2, 1, 45000, 1),
(172, 'D15', 2, 1, 45000, 1),
(173, 'E1', 2, 1, 45000, 1),
(174, 'E2', 2, 1, 45000, 1),
(175, 'E3', 2, 1, 45000, 1),
(176, 'E4', 2, 1, 45000, 1),
(177, 'E5', 2, 1, 45000, 1),
(178, 'E6', 2, 1, 45000, 1),
(179, 'E7', 2, 1, 45000, 1),
(180, 'E8', 2, 1, 45000, 1),
(181, 'E9', 2, 1, 45000, 1),
(182, 'E10', 2, 1, 45000, 1),
(183, 'E11', 2, 1, 45000, 1),
(184, 'E12', 2, 1, 45000, 1),
(185, 'E13', 2, 1, 45000, 1),
(186, 'E14', 2, 1, 45000, 1),
(187, 'E15', 2, 1, 45000, 1),
(188, 'F1', 2, 1, 45000, 1),
(189, 'F2', 2, 1, 45000, 1),
(190, 'F3', 2, 1, 45000, 1),
(191, 'F4', 2, 1, 45000, 1),
(192, 'F5', 2, 1, 45000, 1),
(193, 'F6', 2, 1, 45000, 1),
(194, 'F7', 2, 1, 45000, 1),
(195, 'F8', 2, 1, 45000, 1),
(196, 'F9', 2, 1, 45000, 1),
(197, 'F10', 2, 1, 45000, 1),
(198, 'F11', 2, 1, 45000, 1),
(199, 'F12', 2, 1, 45000, 1),
(200, 'F13', 2, 1, 45000, 1),
(201, 'F14', 2, 1, 45000, 1),
(202, 'F15', 2, 1, 45000, 1),
(203, 'G1', 2, 1, 45000, 1),
(204, 'G2', 2, 1, 45000, 1),
(205, 'G3', 2, 1, 45000, 1),
(206, 'G4', 2, 1, 45000, 1),
(207, 'G5', 2, 1, 45000, 1),
(208, 'G6', 2, 1, 45000, 1),
(209, 'G7', 2, 1, 45000, 1),
(210, 'G8', 2, 1, 45000, 1),
(211, 'G9', 2, 1, 45000, 1),
(212, 'G10', 2, 1, 45000, 1),
(213, 'G11', 2, 1, 45000, 1),
(214, 'G12', 2, 1, 45000, 1),
(215, 'G13', 2, 1, 45000, 1),
(216, 'G14', 2, 1, 45000, 1),
(217, 'G15', 2, 1, 45000, 1),
(218, 'H1-H2', 2, 2, 90000, 1),
(219, 'H3-H4', 2, 2, 90000, 1),
(220, 'H5-H6', 2, 2, 90000, 1),
(221, 'H7-H8', 2, 2, 90000, 1),
(222, 'H9-H10', 2, 2, 90000, 1),
(223, 'H11-H12', 2, 2, 90000, 1),
(224, 'H13-H14', 2, 1, 90000, 1),
(225, 'A1', 3, 1, 45000, 1),
(226, 'A2', 3, 1, 45000, 1),
(227, 'A3', 3, 1, 45000, 1),
(228, 'A4', 3, 1, 45000, 1),
(229, 'A5', 3, 1, 45000, 1),
(230, 'A6', 3, 1, 45000, 1),
(231, 'A7', 3, 1, 45000, 1),
(232, 'A8', 3, 1, 45000, 1),
(233, 'A9', 3, 1, 45000, 1),
(234, 'A10', 3, 1, 45000, 1),
(235, 'A11', 3, 1, 45000, 1),
(236, 'A12', 3, 1, 45000, 1),
(237, 'A13', 3, 1, 45000, 1),
(238, 'A14', 3, 1, 45000, 1),
(239, 'A15', 3, 1, 45000, 1),
(240, 'B1', 3, 1, 45000, 1),
(241, 'B2', 3, 1, 45000, 1),
(242, 'B3', 3, 1, 45000, 1),
(243, 'B4', 3, 1, 45000, 1),
(244, 'B5', 3, 1, 45000, 1),
(245, 'B6', 3, 1, 45000, 1),
(246, 'B7', 3, 1, 45000, 1),
(247, 'B8', 3, 1, 45000, 1),
(248, 'B9', 3, 1, 45000, 1),
(249, 'B10', 3, 1, 45000, 1),
(250, 'B11', 3, 1, 45000, 1),
(251, 'B12', 3, 1, 45000, 1),
(252, 'B13', 3, 1, 45000, 1),
(253, 'B14', 3, 1, 45000, 1),
(254, 'B15', 3, 1, 45000, 1),
(255, 'C1', 3, 1, 45000, 1),
(256, 'C2', 3, 1, 45000, 1),
(257, 'C3', 3, 1, 45000, 1),
(258, 'C4', 3, 1, 45000, 1),
(259, 'C5', 3, 1, 45000, 1),
(260, 'C6', 3, 1, 45000, 1),
(261, 'C7', 3, 1, 45000, 1),
(262, 'C8', 3, 1, 45000, 1),
(263, 'C9', 3, 1, 45000, 1),
(264, 'C10', 3, 1, 45000, 1),
(265, 'C11', 3, 1, 45000, 1),
(266, 'C12', 3, 1, 45000, 1),
(267, 'C13', 3, 1, 45000, 1),
(268, 'C14', 3, 1, 45000, 1),
(269, 'C15', 3, 1, 45000, 1),
(270, 'D1', 3, 1, 45000, 1),
(271, 'D2', 3, 1, 45000, 1),
(272, 'D3', 3, 1, 45000, 1),
(273, 'D4', 3, 1, 45000, 1),
(274, 'D5', 3, 1, 45000, 1),
(275, 'D6', 3, 1, 45000, 1),
(276, 'D7', 3, 1, 45000, 1),
(277, 'D8', 3, 1, 45000, 1),
(278, 'D9', 3, 1, 45000, 1),
(279, 'D10', 3, 1, 45000, 1),
(280, 'D11', 3, 1, 45000, 1),
(281, 'D12', 3, 1, 45000, 1),
(282, 'D13', 3, 1, 45000, 1),
(283, 'D14', 3, 1, 45000, 1),
(284, 'D15', 3, 1, 45000, 1),
(285, 'E1', 3, 1, 45000, 1),
(286, 'E2', 3, 1, 45000, 1),
(287, 'E3', 3, 1, 45000, 1),
(288, 'E4', 3, 1, 45000, 1),
(289, 'E5', 3, 1, 45000, 1),
(290, 'E6', 3, 1, 45000, 1),
(291, 'E7', 3, 1, 45000, 1),
(292, 'E8', 3, 1, 45000, 1),
(293, 'E9', 3, 1, 45000, 1),
(294, 'E10', 3, 1, 45000, 1),
(295, 'E11', 3, 1, 45000, 1),
(296, 'E12', 3, 1, 45000, 1),
(297, 'E13', 3, 1, 45000, 1),
(298, 'E14', 3, 1, 45000, 1),
(299, 'E15', 3, 1, 45000, 1),
(300, 'F1', 3, 1, 45000, 1),
(301, 'F2', 3, 1, 45000, 1),
(302, 'F3', 3, 1, 45000, 1),
(303, 'F4', 3, 1, 45000, 1),
(304, 'F5', 3, 1, 45000, 1),
(305, 'F6', 3, 1, 45000, 1),
(306, 'F7', 3, 1, 45000, 1),
(307, 'F8', 3, 1, 45000, 1),
(308, 'F9', 3, 1, 45000, 1),
(309, 'F10', 3, 1, 45000, 1),
(310, 'F11', 3, 1, 45000, 1),
(311, 'F12', 3, 1, 45000, 1),
(312, 'F13', 3, 1, 45000, 1),
(313, 'F14', 3, 1, 45000, 1),
(314, 'F15', 3, 1, 45000, 1),
(315, 'G1', 3, 1, 45000, 1),
(316, 'G2', 3, 1, 45000, 1),
(317, 'G3', 3, 1, 45000, 1),
(318, 'G4', 3, 1, 45000, 1),
(319, 'G5', 3, 1, 45000, 1),
(320, 'G6', 3, 1, 45000, 1),
(321, 'G7', 3, 1, 45000, 1),
(322, 'G8', 3, 1, 45000, 1),
(323, 'G9', 3, 1, 45000, 1),
(324, 'G10', 3, 1, 45000, 1),
(325, 'G11', 3, 1, 45000, 1),
(326, 'G12', 3, 1, 45000, 1),
(327, 'G13', 3, 1, 45000, 1),
(328, 'G14', 3, 1, 45000, 1),
(329, 'G15', 3, 1, 45000, 1),
(330, 'H1-H2', 3, 2, 90000, 1),
(331, 'H3-H4', 3, 2, 90000, 1),
(332, 'H5-H6', 3, 2, 90000, 1),
(333, 'H7-H8', 3, 2, 90000, 1),
(334, 'H9-H10', 3, 2, 90000, 1),
(335, 'H11-H12', 3, 2, 90000, 1),
(336, 'H13-H14', 3, 1, 90000, 1),
(337, 'A1', 4, 1, 45000, 1),
(338, 'A2', 4, 1, 45000, 1),
(339, 'A3', 4, 1, 45000, 1),
(340, 'A4', 4, 1, 45000, 1),
(341, 'A5', 4, 1, 45000, 1),
(342, 'A6', 4, 1, 45000, 1),
(343, 'A7', 4, 1, 45000, 1),
(344, 'A8', 4, 1, 45000, 1),
(345, 'A9', 4, 1, 45000, 1),
(346, 'A10', 4, 1, 45000, 1),
(347, 'A11', 4, 1, 45000, 1),
(348, 'A12', 4, 1, 45000, 1),
(349, 'A13', 4, 1, 45000, 1),
(350, 'A14', 4, 1, 45000, 1),
(351, 'A15', 4, 1, 45000, 1),
(352, 'B1', 4, 1, 45000, 1),
(353, 'B2', 4, 1, 45000, 1),
(354, 'B3', 4, 1, 45000, 1),
(355, 'B4', 4, 1, 45000, 1),
(356, 'B5', 4, 1, 45000, 1),
(357, 'B6', 4, 1, 45000, 1),
(358, 'B7', 4, 1, 45000, 1),
(359, 'B8', 4, 1, 45000, 1),
(360, 'B9', 4, 1, 45000, 1),
(361, 'B10', 4, 1, 45000, 1),
(362, 'B11', 4, 1, 45000, 1),
(363, 'B12', 4, 1, 45000, 1),
(364, 'B13', 4, 1, 45000, 1),
(365, 'B14', 4, 1, 45000, 1),
(366, 'B15', 4, 1, 45000, 1),
(367, 'C1', 4, 1, 45000, 1),
(368, 'C2', 4, 1, 45000, 1),
(369, 'C3', 4, 1, 45000, 1),
(370, 'C4', 4, 1, 45000, 1),
(371, 'C5', 4, 1, 45000, 1),
(372, 'C6', 4, 1, 45000, 1),
(373, 'C7', 4, 1, 45000, 1),
(374, 'C8', 4, 1, 45000, 1),
(375, 'C9', 4, 1, 45000, 1),
(376, 'C10', 4, 1, 45000, 1),
(377, 'C11', 4, 1, 45000, 1),
(378, 'C12', 4, 1, 45000, 1),
(379, 'C13', 4, 1, 45000, 1),
(380, 'C14', 4, 1, 45000, 1),
(381, 'C15', 4, 1, 45000, 1),
(382, 'D1', 4, 1, 45000, 1),
(383, 'D2', 4, 1, 45000, 1),
(384, 'D3', 4, 1, 45000, 1),
(385, 'D4', 4, 1, 45000, 1),
(386, 'D5', 4, 1, 45000, 1),
(387, 'D6', 4, 1, 45000, 1),
(388, 'D7', 4, 1, 45000, 1),
(389, 'D8', 4, 1, 45000, 1),
(390, 'D9', 4, 1, 45000, 1),
(391, 'D10', 4, 1, 45000, 1),
(392, 'D11', 4, 1, 45000, 1),
(393, 'D12', 4, 1, 45000, 1),
(394, 'D13', 4, 1, 45000, 1),
(395, 'D14', 4, 1, 45000, 1),
(396, 'D15', 4, 1, 45000, 1),
(397, 'E1', 4, 1, 45000, 1),
(398, 'E2', 4, 1, 45000, 1),
(399, 'E3', 4, 1, 45000, 1),
(400, 'E4', 4, 1, 45000, 1),
(401, 'E5', 4, 1, 45000, 1),
(402, 'E6', 4, 1, 45000, 1),
(403, 'E7', 4, 1, 45000, 1),
(404, 'E8', 4, 1, 45000, 1),
(405, 'E9', 4, 1, 45000, 1),
(406, 'E10', 4, 1, 45000, 1),
(407, 'E11', 4, 1, 45000, 1),
(408, 'E12', 4, 1, 45000, 1),
(409, 'E13', 4, 1, 45000, 1),
(410, 'E14', 4, 1, 45000, 1),
(411, 'E15', 4, 1, 45000, 1),
(412, 'F1', 4, 1, 45000, 1),
(413, 'F2', 4, 1, 45000, 1),
(414, 'F3', 4, 1, 45000, 1),
(415, 'F4', 4, 1, 45000, 1),
(416, 'F5', 4, 1, 45000, 1),
(417, 'F6', 4, 1, 45000, 1),
(418, 'F7', 4, 1, 45000, 1),
(419, 'F8', 4, 1, 45000, 1),
(420, 'F9', 4, 1, 45000, 1),
(421, 'F10', 4, 1, 45000, 1),
(422, 'F11', 4, 1, 45000, 1),
(423, 'F12', 4, 1, 45000, 1),
(424, 'F13', 4, 1, 45000, 1),
(425, 'F14', 4, 1, 45000, 1),
(426, 'F15', 4, 1, 45000, 1),
(427, 'G1', 4, 1, 45000, 1),
(428, 'G2', 4, 1, 45000, 1),
(429, 'G3', 4, 1, 45000, 1),
(430, 'G4', 4, 1, 45000, 1),
(431, 'G5', 4, 1, 45000, 1),
(432, 'G6', 4, 1, 45000, 1),
(433, 'G7', 4, 1, 45000, 1),
(434, 'G8', 4, 1, 45000, 1),
(435, 'G9', 4, 1, 45000, 1),
(436, 'G10', 4, 1, 45000, 1),
(437, 'G11', 4, 1, 45000, 1),
(438, 'G12', 4, 1, 45000, 1),
(439, 'G13', 4, 1, 45000, 1),
(440, 'G14', 4, 1, 45000, 1),
(441, 'G15', 4, 1, 45000, 1),
(442, 'H1-H2', 4, 2, 90000, 1),
(443, 'H3-H4', 4, 2, 90000, 1),
(444, 'H5-H6', 4, 2, 90000, 1),
(445, 'H7-H8', 4, 2, 90000, 1),
(446, 'H9-H10', 4, 2, 90000, 1),
(447, 'H11-H12', 4, 2, 90000, 1),
(448, 'H13-H14', 4, 1, 90000, 1),
(449, 'A1', 5, 1, 45000, 1),
(450, 'A2', 5, 1, 45000, 1),
(451, 'A3', 5, 1, 45000, 1),
(452, 'A4', 5, 1, 45000, 1),
(453, 'A5', 5, 1, 45000, 1),
(454, 'A6', 5, 1, 45000, 1),
(455, 'A7', 5, 1, 45000, 1),
(456, 'A8', 4, 1, 45000, 1),
(457, 'A9', 5, 1, 45000, 1),
(458, 'A10', 5, 1, 45000, 1),
(459, 'A11', 5, 1, 45000, 1),
(460, 'A12', 5, 1, 45000, 1),
(461, 'A13', 5, 1, 45000, 1),
(462, 'A14', 5, 1, 45000, 1),
(463, 'A15', 5, 1, 45000, 1),
(464, 'B1', 5, 1, 45000, 1),
(465, 'B2', 5, 1, 45000, 1),
(466, 'B3', 5, 1, 45000, 1),
(467, 'B4', 5, 1, 45000, 1),
(468, 'B5', 5, 1, 45000, 1),
(469, 'B6', 5, 1, 45000, 1),
(470, 'B7', 5, 1, 45000, 1),
(471, 'B8', 5, 1, 45000, 1),
(472, 'B9', 5, 1, 45000, 1),
(473, 'B10', 5, 1, 45000, 1),
(474, 'B11', 5, 1, 45000, 1),
(475, 'B12', 5, 1, 45000, 1),
(476, 'B13', 5, 1, 45000, 1),
(477, 'B14', 5, 1, 45000, 1),
(478, 'B15', 5, 1, 45000, 1),
(479, 'C1', 5, 1, 45000, 1),
(480, 'C2', 5, 1, 45000, 1),
(481, 'C3', 5, 1, 45000, 1),
(482, 'C4', 5, 1, 45000, 1),
(483, 'C5', 5, 1, 45000, 1),
(484, 'C6', 5, 1, 45000, 1),
(485, 'C7', 5, 1, 45000, 1),
(486, 'C8', 5, 1, 45000, 1),
(487, 'C9', 5, 1, 45000, 1),
(488, 'C10', 5, 1, 45000, 1),
(489, 'C11', 5, 1, 45000, 1),
(490, 'C12', 5, 1, 45000, 1),
(491, 'C13', 5, 1, 45000, 1),
(492, 'C14', 5, 1, 45000, 1),
(493, 'C15', 5, 1, 45000, 1),
(494, 'D1', 5, 1, 45000, 1),
(495, 'D2', 5, 1, 45000, 1),
(496, 'D3', 5, 1, 45000, 1),
(497, 'D4', 5, 1, 45000, 1),
(498, 'D5', 5, 1, 45000, 1),
(499, 'D6', 5, 1, 45000, 1),
(500, 'D7', 5, 1, 45000, 1),
(501, 'D8', 5, 1, 45000, 1),
(502, 'D9', 5, 1, 45000, 1),
(503, 'D10', 5, 1, 45000, 1),
(504, 'D11', 5, 1, 45000, 1),
(505, 'D12', 5, 1, 45000, 1),
(506, 'D13', 5, 1, 45000, 1),
(507, 'D14', 5, 1, 45000, 1),
(508, 'D15', 5, 1, 45000, 1),
(509, 'E1', 5, 1, 45000, 1),
(510, 'E2', 5, 1, 45000, 1),
(511, 'E3', 5, 1, 45000, 1),
(512, 'E4', 5, 1, 45000, 1),
(513, 'E5', 5, 1, 45000, 1),
(514, 'E6', 5, 1, 45000, 1),
(515, 'E7', 5, 1, 45000, 1),
(516, 'E8', 5, 1, 45000, 1),
(517, 'E9', 5, 1, 45000, 1),
(518, 'E10', 5, 1, 45000, 1),
(519, 'E11', 5, 1, 45000, 1),
(520, 'E12', 5, 1, 45000, 1),
(521, 'E13', 5, 1, 45000, 1),
(522, 'E14', 5, 1, 45000, 1),
(523, 'E15', 5, 1, 45000, 1),
(524, 'F1', 5, 1, 45000, 1),
(525, 'F2', 5, 1, 45000, 1),
(526, 'F3', 5, 1, 45000, 1),
(527, 'F4', 5, 1, 45000, 1),
(528, 'F5', 5, 1, 45000, 1),
(529, 'F6', 5, 1, 45000, 1),
(530, 'F7', 5, 1, 45000, 1),
(531, 'F8', 5, 1, 45000, 1),
(532, 'F9', 5, 1, 45000, 1),
(533, 'F10', 5, 1, 45000, 1),
(534, 'F11', 5, 1, 45000, 1),
(535, 'F12', 5, 1, 45000, 1),
(536, 'F13', 5, 1, 45000, 1),
(537, 'F14', 5, 1, 45000, 1),
(538, 'F15', 5, 1, 45000, 1),
(539, 'G1', 5, 1, 45000, 1),
(540, 'G2', 5, 1, 45000, 1),
(541, 'G3', 5, 1, 45000, 1),
(542, 'G4', 5, 1, 45000, 1),
(543, 'G5', 5, 1, 45000, 1),
(544, 'G6', 5, 1, 45000, 1),
(545, 'G7', 5, 1, 45000, 1),
(546, 'G8', 5, 1, 45000, 1),
(547, 'G9', 5, 1, 45000, 1),
(548, 'G10', 5, 1, 45000, 1),
(549, 'G11', 5, 1, 45000, 1),
(550, 'G12', 5, 1, 45000, 1),
(551, 'G13', 5, 1, 45000, 1),
(552, 'G14', 5, 1, 45000, 1),
(553, 'G15', 5, 1, 45000, 1),
(554, 'H1-H2', 5, 2, 90000, 1),
(555, 'H3-H4', 5, 2, 90000, 1),
(556, 'H5-H6', 5, 2, 90000, 1),
(557, 'H7-H8', 5, 2, 90000, 1),
(558, 'H9-H10', 5, 2, 90000, 1),
(559, 'H11-H12', 5, 2, 90000, 1),
(560, 'H13-H14', 5, 1, 90000, 1),
(561, 'A1', 6, 1, 45000, 1),
(562, 'A2', 6, 1, 45000, 1),
(563, 'A3', 6, 1, 45000, 1),
(564, 'A4', 6, 1, 45000, 1),
(565, 'A5', 6, 1, 45000, 1),
(566, 'A6', 6, 1, 45000, 1),
(567, 'A7', 6, 1, 45000, 1),
(568, 'A8', 6, 1, 45000, 1),
(569, 'A9', 6, 1, 45000, 1),
(570, 'A10', 6, 1, 45000, 1),
(571, 'A11', 6, 1, 45000, 1),
(572, 'A12', 6, 1, 45000, 1),
(573, 'A13', 6, 1, 45000, 1),
(574, 'A14', 6, 1, 45000, 1),
(575, 'A15', 6, 1, 45000, 1),
(576, 'B1', 6, 1, 45000, 1),
(577, 'B2', 6, 1, 45000, 1),
(578, 'B3', 6, 1, 45000, 1),
(579, 'B4', 6, 1, 45000, 1),
(580, 'B5', 6, 1, 45000, 1),
(581, 'B6', 6, 1, 45000, 1),
(582, 'B7', 6, 1, 45000, 1),
(583, 'B8', 6, 1, 45000, 1),
(584, 'B9', 6, 1, 45000, 1),
(585, 'B10', 6, 1, 45000, 1),
(586, 'B11', 6, 1, 45000, 1),
(587, 'B12', 6, 1, 45000, 1),
(588, 'B13', 6, 1, 45000, 1),
(589, 'B14', 6, 1, 45000, 1),
(590, 'B15', 6, 1, 45000, 1),
(591, 'C1', 6, 1, 45000, 1),
(592, 'C2', 6, 1, 45000, 1),
(593, 'C3', 6, 1, 45000, 1),
(594, 'C4', 6, 1, 45000, 1),
(595, 'C5', 6, 1, 45000, 1),
(596, 'C6', 6, 1, 45000, 1),
(597, 'C7', 6, 1, 45000, 1),
(598, 'C8', 6, 1, 45000, 1),
(599, 'C9', 6, 1, 45000, 1),
(600, 'C10', 6, 1, 45000, 1),
(601, 'C11', 6, 1, 45000, 1),
(602, 'C12', 6, 1, 45000, 1),
(603, 'C13', 6, 1, 45000, 1),
(604, 'C14', 6, 1, 45000, 1),
(605, 'C15', 6, 1, 45000, 1),
(606, 'D1', 6, 1, 45000, 1),
(607, 'D2', 6, 1, 45000, 1),
(608, 'D3', 6, 1, 45000, 1),
(609, 'D4', 6, 1, 45000, 1),
(610, 'D5', 6, 1, 45000, 1),
(611, 'D6', 6, 1, 45000, 1),
(612, 'D7', 6, 1, 45000, 1),
(613, 'D8', 6, 1, 45000, 1),
(614, 'D9', 6, 1, 45000, 1),
(615, 'D10', 6, 1, 45000, 1),
(616, 'D11', 6, 1, 45000, 1),
(617, 'D12', 6, 1, 45000, 1),
(618, 'D13', 6, 1, 45000, 1),
(619, 'D14', 6, 1, 45000, 1),
(620, 'D15', 6, 1, 45000, 1),
(621, 'E1', 6, 1, 45000, 1),
(622, 'E2', 6, 1, 45000, 1),
(623, 'E3', 6, 1, 45000, 1),
(624, 'E4', 6, 1, 45000, 1),
(625, 'E5', 6, 1, 45000, 1),
(626, 'E6', 6, 1, 45000, 1),
(627, 'E7', 6, 1, 45000, 1),
(628, 'E8', 6, 1, 45000, 1),
(629, 'E9', 6, 1, 45000, 1),
(630, 'E10', 6, 1, 45000, 1),
(631, 'E11', 6, 1, 45000, 1),
(632, 'E12', 6, 1, 45000, 1),
(633, 'E13', 6, 1, 45000, 1),
(634, 'E14', 6, 1, 45000, 1),
(635, 'E15', 6, 1, 45000, 1),
(636, 'F1', 6, 1, 45000, 1),
(637, 'F2', 6, 1, 45000, 1),
(638, 'F3', 6, 1, 45000, 1),
(639, 'F4', 6, 1, 45000, 1),
(640, 'F5', 6, 1, 45000, 1),
(641, 'F6', 6, 1, 45000, 1),
(642, 'F7', 6, 1, 45000, 1),
(643, 'F8', 6, 1, 45000, 1),
(644, 'F9', 6, 1, 45000, 1),
(645, 'F10', 6, 1, 45000, 1),
(646, 'F11', 6, 1, 45000, 1),
(647, 'F12', 6, 1, 45000, 1),
(648, 'F13', 6, 1, 45000, 1),
(649, 'F14', 6, 1, 45000, 1),
(650, 'F15', 6, 1, 45000, 1),
(651, 'G1', 6, 1, 45000, 1),
(652, 'G2', 6, 1, 45000, 1),
(653, 'G3', 6, 1, 45000, 1),
(654, 'G4', 6, 1, 45000, 1),
(655, 'G5', 6, 1, 45000, 1),
(656, 'G6', 6, 1, 45000, 1),
(657, 'G7', 6, 1, 45000, 1),
(658, 'G8', 6, 1, 45000, 1),
(659, 'G9', 6, 1, 45000, 1),
(660, 'G10', 6, 1, 45000, 1),
(661, 'G11', 6, 1, 45000, 1),
(662, 'G12', 6, 1, 45000, 1),
(663, 'G13', 6, 1, 45000, 1),
(664, 'G14', 6, 1, 45000, 1),
(665, 'G15', 6, 1, 45000, 1),
(666, 'H1-H2', 6, 2, 90000, 1),
(667, 'H3-H4', 6, 2, 90000, 1),
(668, 'H5-H6', 6, 2, 90000, 1),
(669, 'H7-H8', 6, 2, 90000, 1),
(670, 'H9-H10', 6, 2, 90000, 1),
(671, 'H11-H12', 6, 2, 90000, 1),
(672, 'H13-H14', 6, 1, 90000, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `showtime`
--

CREATE TABLE `showtime` (
  `id` int(11) NOT NULL,
  `movieID` int(11) NOT NULL,
  `cinemaID` int(11) NOT NULL,
  `showDate` datetime NOT NULL,
  `subID` int(11) NOT NULL,
  `roomID` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `showtime`
--

INSERT INTO `showtime` (`id`, `movieID`, `cinemaID`, `showDate`, `subID`, `roomID`, `status`) VALUES
(1, 1, 1, '2024-08-20 20:10:00', 1, 1, 1),
(6, 2, 1, '2024-08-20 11:45:00', 1, 1, 1),
(17, 1, 1, '2024-08-23 13:25:00', 3, 1, 1),
(18, 1, 1, '2024-08-23 16:30:00', 3, 2, 1),
(19, 1, 1, '2024-08-23 19:45:00', 3, 3, 1),
(20, 11, 1, '2024-08-23 10:10:00', 3, 1, 1),
(21, 11, 1, '2024-08-23 14:30:00', 3, 2, 1),
(22, 11, 1, '2024-08-23 12:20:00', 1, 3, 1),
(23, 11, 1, '2024-08-23 15:35:00', 1, 1, 1),
(24, 11, 1, '2024-08-23 17:40:00', 1, 2, 1),
(25, 11, 1, '2024-08-23 21:50:00', 1, 3, 1),
(26, 12, 1, '2024-08-23 08:10:00', 5, 3, 1),
(27, 12, 1, '2024-08-23 10:10:00', 5, 2, 1),
(28, 12, 1, '2024-08-23 13:10:00', 5, 1, 1),
(29, 12, 1, '2024-08-23 16:10:00', 5, 3, 1),
(30, 12, 1, '2024-08-23 18:40:00', 5, 2, 1),
(31, 12, 1, '2024-08-23 21:10:00', 5, 1, 1),
(32, 12, 1, '2024-08-23 23:10:00', 5, 3, 1),
(33, 15, 1, '2024-08-23 08:30:00', 1, 2, 1),
(34, 15, 1, '2024-08-23 10:55:00', 1, 3, 1),
(35, 14, 1, '2024-08-23 22:40:00', 1, 1, 1),
(36, 2, 1, '2024-08-23 23:55:00', 1, 3, 1),
(38, 16, 1, '2024-08-23 08:20:00', 1, 2, 1),
(39, 13, 1, '2024-08-23 20:20:00', 3, 1, 1),
(40, 13, 1, '2024-08-23 21:40:00', 1, 3, 1),
(41, 12, 1, '2024-08-24 08:10:00', 5, 1, 1),
(42, 12, 1, '2024-08-24 12:10:00', 5, 2, 1),
(43, 12, 1, '2024-08-24 16:10:00', 5, 3, 1),
(44, 12, 1, '2024-08-24 19:10:00', 5, 2, 1),
(45, 12, 1, '2024-08-24 22:10:00', 5, 1, 1),
(46, 11, 1, '2024-08-24 17:40:00', 1, 2, 1),
(47, 11, 1, '2024-08-24 21:50:00', 1, 3, 1),
(48, 13, 1, '2024-08-24 08:30:00', 3, 3, 1),
(49, 13, 1, '2024-08-24 12:20:00', 3, 2, 1),
(50, 13, 1, '2024-08-24 15:35:00', 3, 1, 1),
(51, 15, 1, '2024-08-24 09:50:00', 1, 2, 1),
(53, 14, 1, '2024-08-24 10:40:00', 1, 3, 1),
(54, 14, 1, '2024-08-24 20:30:00', 1, 2, 1),
(55, 14, 1, '2024-08-24 23:59:00', 1, 1, 1),
(56, 1, 1, '2024-08-24 19:45:00', 3, 2, 1),
(57, 18, 1, '2024-08-24 08:00:00', 3, 3, 1),
(58, 18, 1, '2024-08-24 13:45:00', 3, 2, 1),
(59, 17, 1, '2024-08-24 16:50:00', 1, 1, 1),
(60, 17, 1, '2024-08-24 18:40:00', 1, 2, 1),
(61, 12, 2, '2024-08-23 08:50:00', 5, 4, 1),
(62, 12, 2, '2024-08-23 11:40:00', 5, 5, 1),
(63, 12, 2, '2024-08-23 14:50:00', 5, 6, 1),
(64, 12, 2, '2024-08-23 17:30:00', 5, 4, 1),
(65, 12, 2, '2024-08-23 19:40:00', 5, 5, 1),
(66, 12, 2, '2024-08-23 21:50:00', 5, 6, 1),
(67, 11, 2, '2024-08-23 12:00:00', 3, 5, 1),
(68, 11, 2, '2024-08-23 16:40:00', 3, 6, 1),
(69, 11, 2, '2024-08-23 18:30:00', 3, 4, 1),
(70, 11, 2, '2024-08-23 20:40:00', 3, 5, 1),
(71, 11, 2, '2024-08-23 22:50:00', 3, 6, 1),
(72, 13, 2, '2024-08-23 09:20:00', 3, 6, 1),
(73, 13, 2, '2024-08-23 13:00:00', 3, 4, 1),
(74, 13, 2, '2024-08-23 17:20:00', 3, 5, 1),
(75, 13, 2, '2024-08-23 19:30:00', 3, 6, 1),
(76, 20, 2, '2024-08-23 09:50:00', 1, 4, 1),
(77, 20, 2, '2024-08-23 14:10:00', 1, 5, 1),
(78, 15, 2, '2024-08-23 13:30:00', 1, 5, 1),
(79, 15, 2, '2024-08-23 13:40:00', 1, 6, 1),
(80, 18, 2, '2024-08-23 16:30:00', 3, 6, 1),
(81, 14, 2, '2024-08-23 11:10:00', 1, 4, 1),
(82, 14, 2, '2024-08-23 11:15:00', 5, 5, 1),
(83, 14, 2, '2024-08-23 21:45:00', 1, 4, 1),
(84, 2, 2, '2024-08-23 08:55:00', 1, 6, 1),
(85, 19, 2, '2024-08-23 13:55:00', 3, 5, 1),
(86, 1, 2, '2024-08-23 11:30:00', 3, 5, 1),
(87, 1, 2, '2024-08-23 16:00:00', 3, 6, 1),
(88, 1, 2, '2024-08-23 18:15:00', 3, 4, 1),
(89, 17, 2, '2024-08-23 09:00:00', 1, 5, 1),
(90, 17, 2, '2024-08-23 16:20:47', 1, 5, 1),
(91, 12, 2, '2024-08-24 10:30:00', 5, 4, 1),
(92, 12, 2, '2024-08-24 13:10:00', 5, 5, 1),
(93, 12, 2, '2024-08-24 15:55:00', 5, 6, 1),
(94, 12, 2, '2024-08-24 18:40:00', 5, 4, 1),
(95, 12, 2, '2024-08-24 20:50:00', 5, 5, 1),
(96, 12, 2, '2024-08-24 23:00:00', 5, 6, 1),
(104, 11, 2, '2024-08-24 12:00:00', 3, 5, 1),
(105, 11, 2, '2024-08-24 14:10:00', 3, 6, 1),
(106, 11, 2, '2024-08-24 18:30:00', 3, 4, 1),
(107, 11, 2, '2024-08-24 20:40:00', 3, 5, 1),
(108, 11, 2, '2024-08-24 22:50:00', 3, 6, 1),
(109, 13, 2, '2024-08-24 09:20:00', 3, 6, 1),
(110, 13, 2, '2024-08-24 10:50:00', 3, 4, 1),
(111, 13, 2, '2024-08-24 13:00:00', 3, 5, 1),
(112, 13, 2, '2024-08-24 15:10:00', 3, 6, 1),
(113, 13, 2, '2024-08-24 17:20:00', 3, 4, 1),
(114, 20, 2, '2024-08-24 09:50:00', 1, 4, 1),
(115, 16, 2, '2024-08-24 08:55:00', 1, 5, 1),
(116, 1, 2, '2024-08-24 11:30:00', 3, 3, 1),
(117, 1, 2, '2024-08-24 16:00:00', 3, 5, 1),
(118, 17, 2, '2024-08-24 09:00:00', 1, 4, 1),
(119, 19, 2, '2024-08-24 13:55:00', 3, 6, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sub`
--

CREATE TABLE `sub` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `created` date NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sub`
--

INSERT INTO `sub` (`id`, `name`, `created`, `status`) VALUES
(1, '2D Phụ Đề Việt', '2024-08-05', 1),
(2, '3D Phụ Đề Việt', '2024-08-05', 1),
(3, '2D Lồng Tiếng', '2024-08-05', 1),
(4, '3D Lồng Tiếng', '2024-08-05', 1),
(5, '2D Phụ Đề Anh', '2024-10-20', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`),
  ADD KEY `showtimeID` (`showtimeID`);

--
-- Chỉ mục cho bảng `booking_details`
--
ALTER TABLE `booking_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookingID` (`bookingID`),
  ADD KEY `seatID` (`seatID`);

--
-- Chỉ mục cho bảng `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accountID` (`accountID`);

--
-- Chỉ mục cho bảng `cinema`
--
ALTER TABLE `cinema`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `combo`
--
ALTER TABLE `combo`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `combo_details`
--
ALTER TABLE `combo_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookingID` (`bookingID`),
  ADD KEY `comboID` (`comboID`);

--
-- Chỉ mục cho bảng `follow`
--
ALTER TABLE `follow`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accountId` (`accountId`);

--
-- Chỉ mục cho bảng `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `movie_language`
--
ALTER TABLE `movie_language`
  ADD PRIMARY KEY (`id`),
  ADD KEY `languageID` (`languageID`),
  ADD KEY `movieID` (`movieID`);

--
-- Chỉ mục cho bảng `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookingID` (`bookingID`);

--
-- Chỉ mục cho bảng `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accountID` (`accountID`),
  ADD KEY `movieID` (`movieID`);

--
-- Chỉ mục cho bảng `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cinemaID` (`cinemaID`);

--
-- Chỉ mục cho bảng `seat`
--
ALTER TABLE `seat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `roomID` (`roomID`);

--
-- Chỉ mục cho bảng `showtime`
--
ALTER TABLE `showtime`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cinemaID` (`cinemaID`),
  ADD KEY `movieID` (`movieID`),
  ADD KEY `subID` (`subID`),
  ADD KEY `roomID` (`roomID`);

--
-- Chỉ mục cho bảng `sub`
--
ALTER TABLE `sub`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `account`
--
ALTER TABLE `account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT cho bảng `booking_details`
--
ALTER TABLE `booking_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT cho bảng `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT cho bảng `cinema`
--
ALTER TABLE `cinema`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `combo`
--
ALTER TABLE `combo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `combo_details`
--
ALTER TABLE `combo_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `follow`
--
ALTER TABLE `follow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `language`
--
ALTER TABLE `language`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `movie`
--
ALTER TABLE `movie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `movie_language`
--
ALTER TABLE `movie_language`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `room`
--
ALTER TABLE `room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `seat`
--
ALTER TABLE `seat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=674;

--
-- AUTO_INCREMENT cho bảng `showtime`
--
ALTER TABLE `showtime`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT cho bảng `sub`
--
ALTER TABLE `sub`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`showtimeID`) REFERENCES `showtime` (`id`);

--
-- Các ràng buộc cho bảng `booking_details`
--
ALTER TABLE `booking_details`
  ADD CONSTRAINT `booking_details_ibfk_1` FOREIGN KEY (`bookingID`) REFERENCES `booking` (`id`),
  ADD CONSTRAINT `booking_details_ibfk_2` FOREIGN KEY (`seatID`) REFERENCES `seat` (`id`);

--
-- Các ràng buộc cho bảng `chat`
--
ALTER TABLE `chat`
  ADD CONSTRAINT `chat_ibfk_1` FOREIGN KEY (`accountID`) REFERENCES `account` (`id`);

--
-- Các ràng buộc cho bảng `combo_details`
--
ALTER TABLE `combo_details`
  ADD CONSTRAINT `combo_details_ibfk_1` FOREIGN KEY (`bookingID`) REFERENCES `booking` (`id`),
  ADD CONSTRAINT `combo_details_ibfk_2` FOREIGN KEY (`comboID`) REFERENCES `combo` (`id`);

--
-- Các ràng buộc cho bảng `follow`
--
ALTER TABLE `follow`
  ADD CONSTRAINT `follow_ibfk_1` FOREIGN KEY (`accountId`) REFERENCES `account` (`id`);

--
-- Các ràng buộc cho bảng `movie_language`
--
ALTER TABLE `movie_language`
  ADD CONSTRAINT `movie_language_ibfk_1` FOREIGN KEY (`languageID`) REFERENCES `language` (`id`),
  ADD CONSTRAINT `movie_language_ibfk_2` FOREIGN KEY (`movieID`) REFERENCES `movie` (`id`);

--
-- Các ràng buộc cho bảng `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`bookingID`) REFERENCES `booking` (`id`);

--
-- Các ràng buộc cho bảng `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `rating_ibfk_1` FOREIGN KEY (`accountID`) REFERENCES `account` (`id`),
  ADD CONSTRAINT `rating_ibfk_2` FOREIGN KEY (`movieID`) REFERENCES `movie` (`id`);

--
-- Các ràng buộc cho bảng `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `room_ibfk_1` FOREIGN KEY (`cinemaID`) REFERENCES `cinema` (`id`);

--
-- Các ràng buộc cho bảng `seat`
--
ALTER TABLE `seat`
  ADD CONSTRAINT `seat_ibfk_1` FOREIGN KEY (`roomID`) REFERENCES `room` (`id`);

--
-- Các ràng buộc cho bảng `showtime`
--
ALTER TABLE `showtime`
  ADD CONSTRAINT `showtime_ibfk_1` FOREIGN KEY (`cinemaID`) REFERENCES `cinema` (`id`),
  ADD CONSTRAINT `showtime_ibfk_2` FOREIGN KEY (`movieID`) REFERENCES `movie` (`id`),
  ADD CONSTRAINT `showtime_ibfk_3` FOREIGN KEY (`subID`) REFERENCES `sub` (`id`),
  ADD CONSTRAINT `showtime_ibfk_4` FOREIGN KEY (`roomID`) REFERENCES `room` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
