-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 30, 2022 lúc 10:28 AM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `thurac_mysq`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `baiviet`
--

CREATE TABLE `baiviet` (
  `id` int(10) NOT NULL,
  `ten` varchar(50) NOT NULL,
  `hinhanh` varchar(50) NOT NULL,
  `thoigian` varchar(50) NOT NULL,
  `banthan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `baiviet`
--

INSERT INTO `baiviet` (`id`, `ten`, `hinhanh`, `thoigian`, `banthan`) VALUES
(20, 'Văn Thùy Chi', '1653492021_vanthuychi.jpg', 'May 25, 2022 10:20:21 PM', 'Hôm Nay Vui Quá');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoidap`
--

CREATE TABLE `hoidap` (
  `id` int(10) NOT NULL,
  `hoi` varchar(50) NOT NULL,
  `dap` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_dangky`
--

CREATE TABLE `tbl_dangky` (
  `id` int(11) NOT NULL,
  `hovaten` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `dienthoai` varchar(50) NOT NULL,
  `diachi` varchar(50) NOT NULL,
  `matkhau` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_dangky`
--

INSERT INTO `tbl_dangky` (`id`, `hovaten`, `email`, `dienthoai`, `diachi`, `matkhau`) VALUES
(3, 'Lê Thành Nam', 'ltn@gmail.com', '0937458631', 'Đà Nẵng', '698d51a19d8a121ce581499d7b701668'),
(4, 'Trần Văn Quý', 'tvq@gmail.com', '0937458632', 'TP. Hồ Chí Minh', 'bcbe3365e6ac95ea2c0343a2395834dd'),
(5, 'Thiều Thị Vẽ', 'ttv@gmail.com', '0937458633', 'Đà Lạt, Lâm Đồng', '310dcbbf4cce62f762a2aaa148d556bd'),
(6, 'Nguyễn Phước', 'np@gmail.com', '0937458634', 'Kiên Giang', '550a141f12de6341fba65b0ad0433500'),
(7, 'Trần Thúy An', 'tta@gmail.com', '0937458635', 'Hà Nội', '15de21c670ae7c3f6f3f1f37029303c9'),
(8, 'Văn Thị Ngọc', 'vtn@gmail.com', '0937458636', 'Quận 1, Tp. Hồ Chí Minh', 'fae0b27c451c728867a567e8c1bb4e53'),
(9, 'Trịnh Văn Tư', 'tvt@gmail.com', '0937458637', 'Quảng Nam', '81dc9bdb52d04dc20036dbd8313ed055'),
(10, 'Mai Duy Khoa', 'mdk@gmail.com', '0937458638', 'Đà Nẵng', '0a113ef6b61820daa5611c870ed8d5ee'),
(11, 'Trần Thị Hợp', 'tth@gmail.com', '0937458639', 'Cà Mau', 'b706835de79a2b4e80506f582af3676a'),
(24, 'Văn Thùy chi', 'vtc@gmail.com', '0123456789', 'Đà Nãng', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_danhgia`
--

CREATE TABLE `tbl_danhgia` (
  `id` int(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `sosao1` int(50) NOT NULL,
  `sosao2` int(50) NOT NULL,
  `sosao3` int(50) NOT NULL,
  `sosao4` int(50) NOT NULL,
  `sosao5` int(50) NOT NULL,
  `danhgia` varchar(50) NOT NULL,
  `sosao` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_danhgia`
--

INSERT INTO `tbl_danhgia` (`id`, `email`, `sosao1`, `sosao2`, `sosao3`, `sosao4`, `sosao5`, `danhgia`, `sosao`) VALUES
(15, 'vtc@gmail.com', 0, 0, 0, 0, 0, 'rất là thú vị', 5),
(16, 'ltn@gmail.com', 0, 0, 0, 0, 0, 'trang web rất hay', 5),
(17, 'tvq@gmail.com', 0, 0, 0, 0, 0, 'rất tuyệt tôi đã có ny nhờ trang web này', 5),
(18, 'ttv@gmail.com', 0, 0, 0, 0, 0, 'rất hay và rất tuyệt vời, nên dùng', 5),
(19, 'TVT@GMAIL.COM', 0, 0, 0, 0, 0, 'RẤT HAY', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_sanpham`
--

CREATE TABLE `tbl_sanpham` (
  `id_sanpham` int(11) NOT NULL,
  `ten` varchar(50) NOT NULL,
  `tuoi` varchar(50) NOT NULL,
  `gioitinh` varchar(50) NOT NULL,
  `sdt` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `hinhanh` varchar(50) NOT NULL,
  `diachi` varchar(50) NOT NULL,
  `yeucau` varchar(50) NOT NULL,
  `banthan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_sanpham`
--

INSERT INTO `tbl_sanpham` (`id_sanpham`, `ten`, `tuoi`, `gioitinh`, `sdt`, `email`, `hinhanh`, `diachi`, `yeucau`, `banthan`) VALUES
(3, 'Lê Thành Nam', '20', 'Nam', '0937458631', 'ltn@gmail.com', '1636850830_thanhnam.jpg', 'Đà Nẵng', 'đẹp gái, học giỏi, duyên dáng', 'hòa đồng, vui vẻ'),
(4, 'Trần Văn Quý', '21', 'nam', '0937458632', 'tvq@gmail.com', '1636851315_vanquy.jpg', 'TP. Hồ Chí Minh', 'dễ thương. hòa đồng, vui vẻ, thông minh', 'đẹp trai, hòa đồng, vui vẻ'),
(5, 'Thiều Thị Vẽ', '19', 'nữ', '0937458633', 'ttv@gmail.com', '1636851431_thive.jpg', 'Đà Lạt, Lâm Đồng', 'đẹp trai, hòa đồng, vui tính', 'hòa đồng, có việc làm ổn định'),
(6, 'Nguyễn Phước', '28', ' đồng tính nam', '0937458634', 'np@gmail.com', '1636851574_nguyenphuoc.jpg', 'Kiên GIang', 'đẹp trai, dễ thương, vui tính, có việc làm ổn định', 'dễ nhìn, có công việc ổn định, hiền lành'),
(7, 'Trần Thúy An', '24', 'nữ', '0937458635', 'tta@gmail.com', '1636851696_thuyan.jpg', 'Hà Nội', 'đẹp trai, biết nấu ăn, vui tính', 'có công việc ổn định, hền lành, tốt bụng'),
(8, 'Văn Thị Ngọc', '23', 'đồng tính nữ', '0937458636', 'vtn@gmail.com', '1636852114_thingoc.jpg', 'Quận 1, Tp. Hồ Chí Minh', ' dễ thương, thông minh, hoạt ngôn', 'có công việc ổn định, vui vẻ, tốt bụng'),
(9, 'Trịnh Văn Tư', '29', 'Nam', '0937458637', 'tvt@gmail.com', '1636852219_vantu.jpg', 'Quảng Nam', 'dễ thương, hiền lành, Tốt bụng', 'hòa đồng, vui vẻ'),
(10, 'Mai Duy Khoa', '26', 'nam', '0937458638', 'mdk@gmail.com', '1636852364_duykhoa.jpg', 'Đà Nẵng', 'dễ thương, hiền lành, vui vẻ,có công việc ổn định', 'đẹp trai, vui vẻ, có công việc ổn định'),
(11, 'Trần Thị Hợp', '23', ' nữ', '0937458639', 'tth@gmail.com', '1636852535_thihop.jpg', 'Cà Mau', 'đẹp trai, dễ thương, vui vẻ, hoạt ngôn', 'dễ thương, vui vẻ, có công việc ổn định'),
(18, 'Văn Thùy Chi', '20', 'nữ', '0123456789', 'vtc@gmail.com', '1652086453_vanthuychi.jpg', 'Đà Nẵng', 'đẹp trai', 'xinh gái');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_tinnhan`
--

CREATE TABLE `tbl_tinnhan` (
  `id` int(11) NOT NULL,
  `tinnhan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tintuc`
--

CREATE TABLE `tintuc` (
  `id` int(11) NOT NULL,
  `ten` varchar(50) NOT NULL,
  `hinhanh` varchar(50) NOT NULL,
  `banthan` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `baiviet`
--
ALTER TABLE `baiviet`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `hoidap`
--
ALTER TABLE `hoidap`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_dangky`
--
ALTER TABLE `tbl_dangky`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_danhgia`
--
ALTER TABLE `tbl_danhgia`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD PRIMARY KEY (`id_sanpham`);

--
-- Chỉ mục cho bảng `tbl_tinnhan`
--
ALTER TABLE `tbl_tinnhan`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `baiviet`
--
ALTER TABLE `baiviet`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `hoidap`
--
ALTER TABLE `hoidap`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `tbl_dangky`
--
ALTER TABLE `tbl_dangky`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT cho bảng `tbl_danhgia`
--
ALTER TABLE `tbl_danhgia`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  MODIFY `id_sanpham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT cho bảng `tbl_tinnhan`
--
ALTER TABLE `tbl_tinnhan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
